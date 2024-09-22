import { registerPlugin } from '@capacitor/core';

import type { SMSPlugin } from './definitions';

const SMS = registerPlugin<SMSPlugin>('SMS', {
  web: () => import('./web').then(m => new m.SMSWeb()),
});

export * from './definitions';
export { SMS };
