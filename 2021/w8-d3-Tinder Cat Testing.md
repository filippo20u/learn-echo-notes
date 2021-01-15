Point testing


Behaviour testing

When you test you don't wanto execute external API


import React from 'react';
import { render } from '@testing-library/react';
import App from './App';

test('renders learn react link', () => {

  <!-- Arrange -->
  render(<App />);

  # inquiring the DOM

  <!-- Act -->
  const linkElement = getByText(/learn react/i);
  # set expectantions, user be able to see the react link

<!-- Assert -->
  expect(linkElement).toBeInTheDocument();


});