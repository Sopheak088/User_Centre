﻿using Microsoft.AspNet.Identity;
using System.Threading.Tasks;

namespace iThinking.UserCenter.IdentityServices
{
    public class SmsService : IIdentityMessageService
    {
        public Task SendAsync(IdentityMessage message)
        {
            // Plug in your sms service here to send a text message.
            return Task.FromResult(0);
        }
    }
}