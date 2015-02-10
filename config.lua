--calculate the aspect ratio of the device:
local aspectRatio = display.pixelHeight / display.pixelWidth

application = {
   content = {
      width = aspectRatio > 1.5 and 320 or math.ceil( 480 / aspectRatio ),
      height = aspectRatio < 1.5 and 480 or math.ceil( 320 * aspectRatio ),
      scale = "letterBox",
      fps = 30,

      imageSuffix = {
         ["@2x"] = 1.5,
         ["@4x"] = 3.0,
      },
   },
   SpriteHelperSettings = 
        {
          imagesSubfolder = "Images",
        },
        license =
        {
          google =
          {
            key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAqHk1bCeeU0G43d1moRvtNPjfxe1kFwpgG8Ef7CUERUMEdspJF7dDvw9xr2fauQ73yazaA50HKTLjcGSKL+MGchlmLcEvVCMEVfiyv41iKgl4FcKhfVKAsReZJt02I33Q3FnFZ1yV7+M+xOvsP3mDXuyTNninLu090meqmigzgB+e8/w8Ai8c3cI5GVEr4GYrsYTkbba5tS9orbq1wXECIsxnHn+HDNYyZn+kc17rQ1QTB1RGxEP1MC3NFxlwFAsBFdb47tBOkuq5tFLYCW/kOE+3woDIb4SEJo/cJrmHE1Nup9yQA20u2+ZadJrzd0BUaE1ROYVrG3May2SVQ+LyVwIDAQAB",
            policy = "serverManaged",
          },
        }
}

-- if string.sub(system.getInfo("model"),1,4) == "iPad" then
--     application = 
--     {
--         content =
--         {
--             width = 360,
--             height = 480,
--             scale = "letterbox",
--             xAlign = "center",
--             yAlign = "center",
--             imageSuffix = 
--             {
--                 ["@2x"] = 1.5,
--                 ["@4x"] = 3.0,
--             },
--         },
--         SpriteHelperSettings = 
-- 		{
-- 			imagesSubfolder = "Images",
-- 		},
--         notification = 
--         {
--             iphone = {
--                 types = {
--                     "badge", "sound", "alert"
--                 }
--             }
--         }
--     }

-- elseif string.sub(system.getInfo("model"),1,2) == "iP" and display.pixelHeight > 960 then
--     application = 
--     {
--         content =
--         {
--             width = 320,
--             height = 568,
--             scale = "letterbox",
--             xAlign = "center",
--             yAlign = "center",
--             imageSuffix = 
--             {
--                 ["@2x"] = 1.5,
--                 ["@4x"] = 3.0,
--             },
--         },
--         SpriteHelperSettings = 
-- 		{
-- 			imagesSubfolder = "Images",
-- 		},
--         notification = 
--         {
--             iphone = {
--                 types = {
--                     "badge", "sound", "alert"
--                 }
--             }
--         }
--     }

-- elseif string.sub(system.getInfo("model"),1,2) == "iP" then
--     application = 
--     {
--         content =
--         {
--             width = 320,
--             height = 480,
--             scale = "letterbox",
--             xAlign = "center",
--             yAlign = "center",
--             imageSuffix = 
--             {
--                 ["@2x"] = 1.5,
--                 ["@4x"] = 3.0,
--             },
--         },
--         SpriteHelperSettings = 
-- 		{
-- 			imagesSubfolder = "Images",
-- 		},
--         notification = 
--         {
--             iphone = {
--                 types = {
--                     "badge", "sound", "alert"
--                 }
--             }
--         }
--     }
-- elseif display.pixelHeight / display.pixelWidth > 1.72 then
--     application = 
--     {
--         content =
--         {
--             width = 320,
--             height = 570,
--             scale = "letterbox",
--             xAlign = "center",
--             yAlign = "center",
--             imageSuffix = 
--             {
--                 ["@2x"] = 1.5,
--                 ["@4x"] = 3.0,
--             },
--         },
--         SpriteHelperSettings = 
--         {
--           imagesSubfolder = "Images",
--         },
--         license =
--         {
--           google =
--           {
--             key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAqHk1bCeeU0G43d1moRvtNPjfxe1kFwpgG8Ef7CUERUMEdspJF7dDvw9xr2fauQ73yazaA50HKTLjcGSKL+MGchlmLcEvVCMEVfiyv41iKgl4FcKhfVKAsReZJt02I33Q3FnFZ1yV7+M+xOvsP3mDXuyTNninLu090meqmigzgB+e8/w8Ai8c3cI5GVEr4GYrsYTkbba5tS9orbq1wXECIsxnHn+HDNYyZn+kc17rQ1QTB1RGxEP1MC3NFxlwFAsBFdb47tBOkuq5tFLYCW/kOE+3woDIb4SEJo/cJrmHE1Nup9yQA20u2+ZadJrzd0BUaE1ROYVrG3May2SVQ+LyVwIDAQAB",
--             policy = "serverManaged",
--           },
--         },
--     }
-- else
--     application = 
--     {
--       content =
--         {
--             width = 320,
--             height = 512,
--             scale = "letterbox",
--             xAlign = "center",
--             yAlign = "center",
--             imageSuffix = 
--             {
--                 ["@2x"] = 1.5,
--                 ["@4x"] = 3.0,
--             },
--         },
--       SpriteHelperSettings = 
--         {
--           imagesSubfolder = "Images",
--         },
--       notification = 
--         {
--             iphone = {
--                 types = {
--                     "badge", "sound", "alert"
--                     }
--                 }
--         },
--       license =
--         {
--           google =
--             {
--               key =  "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAqHk1bCeeU0G43d1moRvtNPjfxe1kFwpgG8Ef7CUERUMEdspJF7dDvw9xr2fauQ73yazaA50HKTLjcGSKL+MGchlmLcEvVCMEVfiyv41iKgl4FcKhfVKAsReZJt02I33Q3FnFZ1yV7+M+xOvsP3mDXuyTNninLu090meqmigzgB+e8/w8Ai8c3cI5GVEr4GYrsYTkbba5tS9orbq1wXECIsxnHn+HDNYyZn+kc17rQ1QTB1RGxEP1MC3NFxlwFAsBFdb47tBOkuq5tFLYCW/kOE+3woDIb4SEJo/cJrmHE1Nup9yQA20u2+ZadJrzd0BUaE1ROYVrG3May2SVQ+LyVwIDAQAB",
--               policy = "serverManaged",
--             },
--         },
--   }
-- end
