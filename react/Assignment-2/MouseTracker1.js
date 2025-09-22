import React, { useState, useEffect } from 'react';

const MouseTracker = () => {
  // State to store mouse coordinates
  const [mousePosition, setMousePosition] = useState({ x: 0, y: 0 });

  // useEffect to add the event listener and clean up on unmount
  useEffect(() => {
    // Function to update mouse position in the state
    const updateMousePosition = (e) => {
      setMousePosition({ x: e.clientX, y: e.clientY });
    };

    // Add the mousemove event listener
    window.addEventListener('mousemove', updateMousePosition);

    // Cleanup function to remove the event listener
    return () => {
      window.removeEventListener('mousemove', updateMousePosition);
    };
  }, []); // Empty dependency array ensures the effect runs only once on mount

  return (
    <div style={{ padding: '20px' }}>
      <h2>Mouse Position Tracker</h2>
      <p>Move your mouse around!</p>
      <p>
        <strong>Mouse X:</strong> {mousePosition.x}
      </p>
      <p>
        <strong>Mouse Y:</strong> {mousePosition.y}
      </p>
    </div>
  );
};

export default MouseTracker;
