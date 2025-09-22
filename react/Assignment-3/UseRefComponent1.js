import React, { useState, useRef } from 'react';

const ColorBoxHighlighter = () => {
  
  const redBoxRef = useRef(null);
  const greenBoxRef = useRef(null);
  const blueBoxRef = useRef(null);

  
  const [highlightIndex, setHighlightIndex] = useState(0);

  const boxRefs = [redBoxRef, greenBoxRef, blueBoxRef];

  const highlightNextBox = () => {
    boxRefs.forEach(ref => {
      if (ref.current) {
        ref.current.style.border = 'none';
      }
    });

    if (boxRefs[highlightIndex]) {
      boxRefs[highlightIndex].current.style.border = '5px solid yellow';
    }

    setHighlightIndex((prevIndex) => (prevIndex + 1) % boxRefs.length);
  };

  return (
    <div>
      <div style={{ display: 'flex', gap: '10px', marginBottom: '20px' }}>
        {/* Red box */}
        <div
          ref={redBoxRef}
          style={{
            width: '100px',
            height: '100px',
            backgroundColor: 'red',
            border: '3px solid black',
          }}
        ></div>
        {/* Green box */}
        <div
          ref={greenBoxRef}
          style={{
            width: '100px',
            height: '100px',
            backgroundColor: 'green',
            border: '3px solid black',
          }}
        ></div>
        {/* Blue box */}
        <div
          ref={blueBoxRef}
          style={{
            width: '100px',
            height: '100px',
            backgroundColor: 'blue',
            border: '3px solid black',
          }}
        ></div>
      </div>

      {/* Button to highlight next box */}
      <button onClick={highlightNextBox}>Highlight Next Box</button>
    </div>
  );
};

export default ColorBoxHighlighter;
