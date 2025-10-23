// Flask Lab Project - Main JavaScript

document.addEventListener('DOMContentLoaded', function() {
    // Test the /data endpoint
    const testForm = document.getElementById('testForm');
    const responseDiv = document.getElementById('response');
    
    if (testForm) {
        testForm.addEventListener('submit', async function(e) {
            e.preventDefault();
            
            const name = document.getElementById('name').value;
            const message = document.getElementById('message').value;
            
            const data = {
                name: name,
                message: message,
                timestamp: new Date().toISOString()
            };
            
            try {
                const response = await fetch('/data', {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/json',
                    },
                    body: JSON.stringify(data)
                });
                
                const result = await response.json();
                
                responseDiv.className = 'response';
                responseDiv.innerHTML = '<h4>Response:</h4><pre>' + 
                    JSON.stringify(result, null, 2) + '</pre>';
                responseDiv.style.display = 'block';
                
                // Scroll to response
                responseDiv.scrollIntoView({ behavior: 'smooth' });
                
            } catch (error) {
                responseDiv.className = 'response error';
                responseDiv.innerHTML = '<h4>Error:</h4><pre>' + 
                    error.message + '</pre>';
                responseDiv.style.display = 'block';
            }
        });
    }
    
    // Health check button
    const healthBtn = document.getElementById('healthCheck');
    if (healthBtn) {
        healthBtn.addEventListener('click', async function() {
            try {
                const response = await fetch('/health');
                const text = await response.text();
                
                alert('Health Check Status: ' + response.status + '\nResponse: ' + text);
            } catch (error) {
                alert('Health check failed: ' + error.message);
            }
        });
    }
    
    // Add smooth scrolling to all links
    document.querySelectorAll('a[href^="#"]').forEach(anchor => {
        anchor.addEventListener('click', function (e) {
            e.preventDefault();
            const target = document.querySelector(this.getAttribute('href'));
            if (target) {
                target.scrollIntoView({
                    behavior: 'smooth'
                });
            }
        });
    });
});

// Console welcome message
console.log('%c🚀 Flask Lab Project', 'color: #667eea; font-size: 24px; font-weight: bold;');
console.log('%cBuilt with Flask, Docker, and CI/CD', 'color: #764ba2; font-size: 14px;');
console.log('API Endpoints:');
console.log('  GET  /       - Homepage');
console.log('  GET  /health - Health check');
console.log('  POST /data   - JSON data endpoint');
