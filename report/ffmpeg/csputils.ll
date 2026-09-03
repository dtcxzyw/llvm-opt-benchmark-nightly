Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/csputils?download=true
inline.NumInlined: 44
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.SwsMatrix3x3 = type { [3 x [3 x float]] }
%struct.AVColorPrimariesDesc = type { %struct.AVCIExy, %struct.AVPrimaryCoefficients }
%struct.AVCIExy = type { %struct.AVRational, %struct.AVRational }
%struct.AVRational = type { i32, i32 }
%struct.AVPrimaryCoefficients = type { %struct.AVCIExy, %struct.AVCIExy, %struct.AVCIExy }

@ff_pq_eotf_lut = local_unnamed_addr constant [1025 x float] [float 0.000000e+00, float f0x38298B90, float f0x39097B92, float f0x39898E79, float f0x39E23CF5, float f0x3A271BCF, float f0x3A66A3FA, float f0x3A97DA06, float f0x3AC12BEA, float f0x3AEF526D, float f0x3B112DDF, float f0x3B2D2C48, float f0x3B4BADC1, float f0x3B6CBC5F, float f0x3B88316C, float 4.740500e-03, float f0x3BAFD25A, float f0x3BC5ABEE, float f0x3BDCE91E, float f0x3BF5904F, float 8.290290e-03, float f0x3C159B6B, float f0x3C2421CA, float f0x3C336A93, float f0x3C437940, float f0x3C545167, float f0x3C65F69C, float 1.516260e-02, float 1.634000e-02, float f0x3C8FECC1, float f0x3C9A6C0A, float f0x3CA55B43, float f0x3CB0BC5C, float f0x3CBC9150, float f0x3CC8DC21, float f0x3CD59ED0, float f0x3CE2DB6A, float f0x3CF09401, float f0x3CFECAB0, float f0x3D06C0C7, float f0x3D0E5D60, float f0x3D163C39, float f0x3D1E5E6B, float f0x3D26C50C, float 4.283260e-02, float f0x3D38641E, float f0x3D419ED6, float f0x3D4B2287, float f0x3D54F05D, float f0x3D5F0986, float f0x3D696F34, float 5.960330e-02, float f0x3D7F24E8, float f0x3D853BB0, float f0x3D8B0DA0, float f0x3D9108E1, float f0x3D972E17, float f0x3D9D7DE5, float f0x3DA3F8F3, float f0x3DAA9FE3, float f0x3DB17361, float f0x3DB87416, float f0x3DBFA2B1, float 9.716770e-02, float f0x3DCE8C49, float f0x3DD648A8, float f0x3DDE35AE, float f0x3DE6540E, float f0x3DEEA485, float f0x3DF727C2, float f0x3DFFDE85, float f0x3E0464C5, float f0x3E08F4C8, float f0x3E0D9FAA, float f0x3E1265CE, float f0x3E174796, float f0x3E1C4566, float f0x3E215F9E, float f0x3E2696A6, float f0x3E2BEAE3, float f0x3E315CBE, float f0x3E36EC9C, float f0x3E3C9AE8, float f0x3E42680D, float f0x3E485476, float f0x3E4E608D, float f0x3E548CC1, float f0x3E5AD97F, float f0x3E614738, float f0x3E67D65C, float f0x3E6E875D, float f0x3E755AAD, float f0x3E7C50C5, float f0x3E81B509, float f0x3E855387, float f0x3E890418, float f0x3E8CC6F8, float f0x3E909C65, float f0x3E94849B, float f0x3E987FD9, float f0x3E9C8E60, float f0x3EA0B06A, float 3.220690e-01, float f0x3EA93010, float f0x3EAD8E2D, float f0x3EB200D3, float f0x3EB68844, float f0x3EBB24C4, float f0x3EBFD698, float f0x3EC49E00, float f0x3EC97B43, float 4.031880e-01, float f0x3ED37874, float f0x3ED898EE, float f0x3EDDD05F, float f0x3EE31F0E, float f0x3EE88546, float f0x3EEE034E, float f0x3EF39972, float f0x3EF947FC, float 4.981630e-01, float f0x3F0277BB, float f0x3F057480, float f0x3F087E12, float f0x3F0B949B, float f0x3F0EB83F, float f0x3F11E928, float f0x3F15277E, float f0x3F18736B, float f0x3F1BCD17, float f0x3F1F34AD, float f0x3F22AA56, float f0x3F262E3E, float f0x3F29C08E, float f0x3F2D6173, float 6.916670e-01, float f0x3F34CFAC, float f0x3F389D56, float f0x3F3C7A46, float f0x3F4066A9, float f0x3F4462AD, float f0x3F486E80, float f0x3F4C8A51, float f0x3F50B64F, float f0x3F54F2AA, float f0x3F593F92, float f0x3F5D9D36, float f0x3F620BC9, float f0x3F668B7C, float f0x3F6B1C80, float f0x3F6FBF07, float f0x3F747345, float f0x3F793972, float f0x3F7E11B7, float f0x3F817E26, float f0x3F83FCB6, float f0x3F8684A2, float f0x3F891607, float f0x3F8BB100, float f0x3F8E55A7, float f0x3F910419, float f0x3F93BC73, float f0x3F967ECE, float 1.197610e+00, float f0x3F9C21FF, float f0x3F9F030E, float f0x3FA1EE92, float f0x3FA4E4A9, float 1.311690e+00, float f0x3FAAF10C, float f0x3FAE0791, float f0x3FB12921, float f0x3FB455DB, float f0x3FB78DDE, float f0x3FBAD14B, float f0x3FBE2041, float f0x3FC17ADF, float f0x3FC4E145, float f0x3FC85395, float f0x3FCBD1EF, float f0x3FCF5C74, float f0x3FD2F347, float f0x3FD69688, float f0x3FDA4659, float f0x3FDE02E1, float f0x3FE1CC3B, float f0x3FE5A28E, float f0x3FE985FD, float f0x3FED76AB, float f0x3FF174BE, float f0x3FF58058, float f0x3FF9999F, float f0x3FFDC0B7, float f0x4000FAE3, float f0x40031C79, float f0x40054530, float f0x4007751C, float f0x4009AC4F, float f0x400BEADE, float f0x400E30DB, float f0x40107E5E, float f0x4012D375, float f0x40153037, float f0x401794B9, float f0x401A010F, float f0x401C754E, float f0x401EF18B, float f0x402175DA, float f0x40240252, float f0x40269708, float f0x40293412, float f0x402BD985, float f0x402E8778, float f0x40313E01, float 2.812330e+00, float f0x4036C52F, float f0x40399605, float f0x403C6FCA, float f0x403F5297, float f0x40423E84, float f0x404533AA, float f0x40483220, float f0x404B39FD, float f0x404E4B5C, float f0x40516654, float f0x40548AFE, float f0x4057B972, float f0x405AF1CC, float f0x405E3424, float f0x40618094, float f0x4064D735, float f0x40683822, float f0x406BA379, float f0x406F194E, float f0x407299BF, float f0x407624E7, float f0x4079BAE2, float f0x407D5BCB, float f0x408083DF, float f0x40825F6C, float f0x4084409A, float f0x40862778, float f0x40881414, float f0x408A067D, float f0x408BFEC1, float f0x408DFCF0, float f0x40900117, float f0x40920B47, float f0x40941B91, float f0x409631FF, float f0x40984EA4, float f0x409A7190, float f0x409C9AD0, float f0x409ECA77, float f0x40A10094, float f0x40A33D37, float f0x40A58070, float f0x40A7CA50, float f0x40AA1AE8, float f0x40AC7248, float f0x40AED081, float f0x40B135A5, float f0x40B3A1C4, float f0x40B614F0, float f0x40B88F3B, float 5.845790e+00, float f0x40BD9973, float f0x40C02985, float f0x40C2C0FC, float f0x40C55FED, float f0x40C80668, float f0x40CAB481, float f0x40CD6A50, float f0x40D027DD, float f0x40D2ED41, float f0x40D5BA8F, float 6.767560e+00, float f0x40DB6D36, float f0x40DE52B8, float f0x40E14073, float f0x40E4367A, float f0x40E734E3, float f0x40EA3BC2, float f0x40ED4B2C, float f0x40F06336, float f0x40F383F4, float f0x40F6AD7D, float f0x40F9DFE5, float f0x40FD1B42, float f0x41002FD5, float f0x4101D699, float f0x410381F9, float f0x41053200, float f0x4106E6B9, float f0x4108A02F, float f0x410A5E6F, float f0x410C2183, float f0x410DE977, float f0x410FB657, float f0x41118830, float f0x41135F0C, float f0x41153AF8, float f0x41171C01, float f0x41190233, float f0x411AED9D, float f0x411CDE46, float f0x411ED43C, float f0x4120CF8E, float f0x4122D048, float f0x4124D676, float f0x4126E227, float f0x4128F368, float f0x412B0A44, float f0x412D26CA, float f0x412F4909, float 1.109010e+01, float f0x41339EE2, float f0x4135D29B, float f0x41380C41, float f0x413A4BE5, float f0x413C9194, float f0x413EDD5D, float f0x41412F4F, float f0x41438778, float f0x4145E5E6, float f0x41484AAA, float f0x414AB5D2, float f0x414D276D, float f0x414F9F89, float f0x41521E37, float f0x4154A388, float f0x41572F89, float f0x4159C24B, float f0x415C5BDF, float f0x415EFC52, float f0x4161A3B8, float f0x41645224, float f0x4167079E, float f0x4169C43A, float f0x416C880B, float f0x416F5320, float f0x4172258B, float f0x4174FF5D, float f0x4177E0A8, float f0x417AC97E, float f0x417DB9EF, float f0x41805907, float f0x4181D8F7, float f0x41835CCF, float f0x4184E49A, float f0x41867060, float f0x4188002C, float f0x41899405, float f0x418B2BF6, float f0x418CC808, float f0x418E6846, float f0x41900CB8, float f0x4191B568, float f0x41936262, float f0x419513AD, float f0x4196C956, float f0x41988365, float f0x419A41E5, float f0x419C04E0, float f0x419DCC62, float f0x419F9873, float f0x41A16920, float f0x41A33E73, float f0x41A51879, float f0x41A6F737, float f0x41A8DABD, float f0x41AAC312, float f0x41ACB046, float f0x41AEA261, float f0x41B0996F, float f0x41B2957D, float f0x41B49694, float f0x41B69CC2, float f0x41B8A812, float f0x41BAB890, float f0x41BCCE47, float 2.386390e+01, float f0x41C10994, float f0x41C32F41, float f0x41C55A5A, float f0x41C78AE9, float f0x41C9C0FD, float f0x41CBFCA2, float f0x41CE3DE3, float f0x41D084D0, float f0x41D2D173, float f0x41D523DC, float f0x41D77C16, float f0x41D9DA30, float f0x41DC3E36, float f0x41DEA837, float f0x41E11841, float f0x41E38E61, float f0x41E60AA4, float f0x41E88D1A, float f0x41EB15D6, float f0x41EDA4DB, float f0x41F03A3E, float f0x41F2D60D, float f0x41F57856, float f0x41F82129, float f0x41FAD095, float f0x41FD86A8, float f0x420021B9, float f0x42018381, float f0x4202E8B4, float f0x4204515A, float f0x4205BD7B, float f0x42072D1E, float f0x4208A04B, float f0x420A170C, float f0x420B9167, float f0x420D0F65, float f0x420E910F, float f0x4210166C, float f0x42119F86, float f0x42132C65, float f0x4214BD11, float f0x42165193, float f0x4217E9F4, float f0x4219863C, float f0x421B2675, float f0x421CCAA7, float f0x421E72DC, float f0x42201F1D, float f0x4221CF73, float f0x422383E7, float f0x42253C86, float f0x4226F952, float f0x4228BA59, float f0x422A7FA5, float f0x422C493E, float f0x422E172F, float f0x422FE981, float f0x4231C03F, float f0x42339B72, float f0x42357B25, float f0x42375F62, float f0x42394833, float f0x423B35A3, float 4.728880e+01, float f0x423F1E88, float f0x42411A12, float f0x42431A66, float f0x42451F8D, float f0x42472994, float f0x42493884, float f0x424B4C69, float f0x424D654F, float f0x424F8340, float f0x4251A647, float f0x4253CE72, float f0x4255FBCB, float f0x42582E5D, float f0x425A6635, float f0x425CA35E, float f0x425EE5E6, float f0x42612DD7, float f0x42637B3E, float f0x4265CE2C, float f0x426826A4, float f0x426A84B7, float 5.922700e+01, float f0x426F51E3, float f0x4271C115, float f0x42743616, float 6.167280e+01, float f0x427931B8, float f0x427BB873, float f0x427E4533, float f0x42806C02, float f0x4281B87A, float f0x42830809, float f0x42845AB4, float f0x4285B085, float f0x42870980, float 6.819860e+01, float f0x4289C517, float f0x428B27C1, float f0x428C8DB2, float f0x428DF6F4, float f0x428F638D, float f0x4290D385, float f0x429246E4, float f0x4293BDB0, float f0x429537F3, float f0x4296B5B3, float f0x429836F8, float f0x4299BBCB, float 7.763320e+01, float f0x429CD039, float f0x429E5FE7, float 7.997510e+01, float f0x42A18A50, float f0x42A3251D, float f0x42A4C3B2, float f0x42A66616, float f0x42A80C51, float f0x42A9B66E, float f0x42AB6473, float f0x42AD166B, float f0x42AECC5E, float f0x42B08654, float f0x42B24458, float f0x42B40671, float f0x42B5CCAA, float f0x42B7970B, float f0x42B9659E, float f0x42BB386C, float f0x42BD0F7F, float f0x42BEEAE0, float f0x42C0CA99, float f0x42C2AEB4, float f0x42C4973B, float f0x42C68437, float f0x42C875B3, float f0x42CA6BB8, float f0x42CC6651, float f0x42CE6588, float f0x42D06968, float f0x42D271FA, float f0x42D47F4B, float f0x42D69163, float f0x42D8A84E, float f0x42DAC417, float f0x42DCE4C8, float f0x42DF0A6D, float f0x42E13512, float f0x42E364BF, float f0x42E59982, float f0x42E7D365, float f0x42EA1275, float f0x42EC56BD, float f0x42EEA048, float f0x42F0EF22, float f0x42F34358, float f0x42F59CF5, float f0x42F7FC06, float f0x42FA6095, float f0x42FCCABB, float f0x42FF3A6F, float f0x4300D7E4, float f0x4302156A, float f0x430355CF, float f0x43049919, float f0x4305DF50, float f0x43072879, float f0x4308749B, float f0x4309C3BD, float f0x430B15E7, float f0x430C6B1D, float f0x430DC368, float f0x430F1ECF, float f0x43107D57, float f0x4311DF09, float f0x431343EB, float f0x4314AC04, float f0x4316175D, float f0x431785FB, float f0x4318F7E7, float f0x431A6D27, float f0x431BE5C5, float f0x431D61C5, float f0x431EE131, float f0x43206410, float f0x4321EA69, float f0x43237446, float f0x432501AD, float f0x432692A6, float f0x4328273A, float f0x4329BF70, float f0x432B5B52, float f0x432CFAE6, float 1.746180e+02, float f0x43304548, float f0x4331F027, float f0x43339EDB, float f0x4335516C, float f0x433707E3, float f0x4338C248, float f0x433A80A5, float f0x433C4303, float f0x433E0969, float f0x433FD3E2, float f0x4341A277, float f0x43437530, float f0x43454C18, float f0x43472737, float f0x43490698, float f0x434AEA42, float f0x434CD241, float f0x434EBE9E, float f0x4350AF63, float f0x4352A499, float f0x43549E4B, float f0x43569C82, float f0x43589F4A, float f0x435AA6AB, float f0x435CB2B1, float f0x435EC366, float 2.248470e+02, float f0x4362F308, float f0x43651209, float f0x436735ED, float f0x43695EAD, float f0x436B8C5B, float f0x436DBF06, float f0x436FF6B5, float f0x43723376, float f0x43747554, float f0x4376BC59, float f0x43790893, float f0x437B5A0C, float f0x437DB0D0, float f0x43800675, float f0x43813735, float f0x43826AAC, float f0x4383A0E0, float f0x4384D9D9, float f0x4386159B, float f0x4387542F, float f0x43889599, float f0x4389D9E0, float f0x438B210B, float f0x438C6B20, float f0x438DB826, float f0x438F0824, float f0x43905B1F, float f0x4391B120, float f0x43930A2C, float f0x4394664A, float f0x4395C582, float f0x439727DB, float f0x43988D5B, float f0x4399F60A, float f0x439B61EE, float f0x439CD110, float f0x439E4376, float f0x439FB928, float 3.223920e+02, float f0x43A2AE8D, float f0x43A42E4F, float f0x43A5B17B, float f0x43A73819, float f0x43A8C230, float f0x43AA4FC9, float f0x43ABE0EB, float f0x43AD759F, float f0x43AF0DEB, float f0x43B0A9D9, float f0x43B24971, float f0x43B3ECBB, float f0x43B593BF, float f0x43B73E87, float f0x43B8ED19, float f0x43BA9F80, float 3.766700e+02, float f0x43BE0FEB, float f0x43BFCE01, float f0x43C1900F, float f0x43C3561D, float f0x43C52034, float f0x43C6EE5E, float f0x43C8C0A3, float f0x43CA970C, float f0x43CC71A4, float f0x43CE5074, float f0x43D0338D, float f0x43D21AE9, float f0x43D4069B, float f0x43D5F6AA, float f0x43D7EB22, float f0x43D9E40D, float f0x43DBE175, float f0x43DDE363, float f0x43DFE9E3, float 4.519140e+02, float f0x43E404BF, float f0x43E61931, float f0x43E8325E, float f0x43EA5052, float f0x43EC7316, float f0x43EE9AB6, float f0x43F0C73D, float f0x43F2F8B6, float f0x43F52F2C, float f0x43F76AAC, float f0x43F9AB3F, float f0x43FBF0F2, float f0x43FE3BD1, float 5.130930e+02, float f0x440170A1, float f0x44029DF5, float f0x4403CDF7, float f0x440500AD, float f0x4406361D, float f0x44076E4D, float f0x4408A943, float f0x4409E707, float f0x440B279D, float f0x440C6B0D, float f0x440DB15E, float f0x440EFA95, float f0x441046BA, float f0x441195D2, float f0x4412E7E6, float f0x44143CFB, float f0x44159519, float f0x4416F047, float f0x44184E8B, float f0x4419AFED, float f0x441B1473, float f0x441C7C26, float f0x441DE70B, float f0x441F552B, float f0x4420C68E, float f0x44223B3A, float f0x4423B337, float f0x44252E8C, float f0x4426AD42, float f0x44282F60, float 6.788270e+02, float 6.849680e+02, float f0x442CCA79, float f0x442E5A87, float f0x442FEE24, float f0x4431855A, float f0x44332030, float f0x4434BEAF, float f0x443660DF, float 7.361060e+02, float f0x4439B07C, float f0x443B5DF3, float f0x443D0F3E, float f0x443EC466, float f0x44407D73, float 7.769130e+02, float f0x4443FB62, float f0x4445C056, float f0x44478954, float f0x44495665, float f0x444B2793, float f0x444CFCE8, float f0x444ED66C, float 8.348150e+02, float f0x4452962A, float f0x44547C78, float f0x4456671D, float f0x44585624, float f0x445A4995, float f0x445C417D, float f0x445E3DE4, float f0x44603ED5, float f0x4462445C, float f0x44644E81, float f0x44665D52, float f0x446870D7, float f0x446A891C, float f0x446CA62C, float f0x446EC812, float f0x4470EEDA, float f0x44731A8F, float f0x44754B3B, float f0x447780EC, float f0x4479BBAC, float f0x447BFB87, float f0x447E408A, float f0x4480455F, float f0x44816D1A, float f0x4482977A, float f0x4483C486, float f0x4484F445, float f0x448626BC, float f0x44875BF0, float f0x448893EC, float f0x4489CEB2, float f0x448B0C4B, float f0x448C4CBC, float f0x448D900D, float f0x448ED644, float f0x44901F68, float f0x44916B80, float f0x4492BA93, float f0x44940CA7, float f0x449561C4, float f0x4496B9F1, float f0x44981535, float f0x44997397, float f0x449AD520, float f0x449C39D5, float f0x449DA1BE, float f0x449F0CE3, float f0x44A07B4D, float f0x44A1ED00, float f0x44A36208, float f0x44A4DA70, float f0x44A65635, float f0x44A7D565, float f0x44A95807, float f0x44AADE25, float f0x44AC67C5, float f0x44ADF4F1, float f0x44AF85B1, float f0x44B11A0C, float f0x44B2B20C, float f0x44B44DBA, float f0x44B5ED1D, float f0x44B79040, float f0x44B93729, float f0x44BAE1E4, float f0x44BC9078, float f0x44BE42EE, float f0x44BFF952, float f0x44C1B3A9, float f0x44C371FF, float f0x44C5345D, float f0x44C6FACD, float f0x44C8C558, float f0x44CA9408, float f0x44CC66E6, float f0x44CE3DFE, float f0x44D01958, float f0x44D1F8FF, float f0x44D3DCFD, float f0x44D5C55D, float f0x44D7B228, float f0x44D9A36A, float f0x44DB992D, float f0x44DD937A, float f0x44DF9260, float f0x44E195E7, float f0x44E39E19, float f0x44E5AB05, float f0x44E7BCB2, float f0x44E9D32E, float f0x44EBEE84, float f0x44EE0EBF, float f0x44F033EC, float f0x44F25E15, float f0x44F48D48, float f0x44F6C18E, float f0x44F8FAF7, float f0x44FB398C, float f0x44FD7D5C, float f0x44FFC672, float f0x45010A6D, float 2.083270e+03, float f0x450360EC, float f0x45049044, float f0x4505C25F, float f0x4506F744, float f0x45082EF9, float f0x45096987, float f0x450AA6F2, float f0x450BE744, float f0x450D2A81, float f0x450E70B2, float f0x450FB9DD, float f0x4511060A, float f0x45125545, float f0x4513A78B, float f0x4514FCE9, float f0x45165565, float f0x4517B109, float f0x45190FDA, float f0x451A71E2, float f0x451BD727, float f0x451D3FB3, float f0x451EAB8B, float f0x45201AB9, float f0x45218D45, float f0x45230336, float f0x45247C96, float f0x4525F96C, float f0x452779C1, float f0x4528FD9C, float f0x452A8508, float f0x452C100D, float f0x452D9EB3, float f0x452F3102, float f0x4530C705, float f0x453260C4, float f0x4533FE48, float f0x45359F9B, float f0x453744C6, float f0x4538EDD1, float f0x453A9AC7, float f0x453C4BB1, float f0x453E0099, float f0x453FB989, float f0x4541768A, float f0x454337A6, float f0x4544FCE8, float f0x4546C65A, float f0x45489405, float f0x454A65F5, float f0x454C3C33, float f0x454E16CB, float f0x454FF5C7, float f0x4551D932, float f0x4553C117, float f0x4555AD80, float f0x45579E79, float f0x4559940E, float f0x455B8E48, float f0x455D8D35, float f0x455F90E0, float f0x45619953, float f0x4563A69C, float f0x4565B8C6, float f0x4567CFDD, float f0x4569EBED, float f0x456C0D03, float f0x456E332B, float f0x45705E71, float f0x45728EE3, float f0x4574C48D, float f0x4576FF7C, float f0x45793FBD, float f0x457B855E, float f0x457DD06B, float f0x45801079, float f0x45813B81, float f0x45826958, float f0x458399FD, float f0x4584CD7A, float 4.288480e+03, float f0x45873D1B, float f0x4588794D, float f0x4589B875, float f0x458AFA9A, float f0x458C3FC4, float f0x458D87F9, float f0x458ED343, float f0x459021A8, float f0x4591732F, float f0x4592C7E2, float f0x45941FC8, float f0x45957AE9, float f0x4596D94D, float f0x45983AFC, float f0x45999FFF, float f0x459B085E, float f0x459C7421, float f0x459DE351, float f0x459F55F7, float f0x45A0CC1B, float f0x45A245C6, float f0x45A3C302, float f0x45A543D6, float f0x45A6C84C, float f0x45A8506E, float f0x45A9DC44, float f0x45AB6BD8, float f0x45ACFF34, float f0x45AE9661, float f0x45B03168, float f0x45B1D054, float f0x45B3732D, float 5.795250e+03, float f0x45B6C4D4, float f0x45B873B6, float f0x45BA26AE, float f0x45BBDDC7, float f0x45BD990C, float f0x45BF5888, float f0x45C11C45, float f0x45C2E44E, float f0x45C4B0AD, float f0x45C6816F, float f0x45C8569E, float f0x45CA3046, float f0x45CC0E72, float f0x45CDF12D, float f0x45CFD884, float f0x45D1C481, float f0x45D3B532, float f0x45D5AAA2, float f0x45D7A4DD, float f0x45D9A3EF, float f0x45DBA7E6, float 7.094100e+03, float f0x45DFBEB1, float f0x45E1D1A0, float f0x45E3E9A6, float f0x45E606CF, float f0x45E8292B, float f0x45EA50CE, float f0x45EC7DB5, float f0x45EEAFF6, float f0x45F0E79F, float f0x45F324BE, float f0x45F56761, float f0x45F7AF97, float f0x45F9FD6E, float f0x45FC50F4, float f0x45FEAA38, float f0x460084A5, float f0x4601B71C, float f0x4602EC88, float f0x460424F2, float f0x46056061, float f0x46069EDD, float f0x4607E06F, float f0x4609251D, float f0x460A6CF1, float f0x460BB7F2, float 9.025540e+03, float f0x460E579D, float f0x460FAC59, float f0x46110464, float f0x46125FC6, float f0x4613BE89, float f0x461520B6, float f0x46168655, float f0x4617EF6F, float f0x46195C0F, float f0x461ACC3C, float 1.000000e+04, float 1.000000e+04], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @ff_sws_matrix3x3_mul(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.c = add i64 %i.b, 36
  %i.d = add i64 %i.a, 36
  %rt.bound0 = icmp ugt i64 %i.d, %i.b
  %rt.bound1 = icmp ugt i64 %i.c, %i.a
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  br i1 %rt.conflict, label %.rtscalar, label %.rtvec, !prof !11

.rtvec:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.m = load float, ptr %1, align 4, !tbaa !10
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.u = load float, ptr %i.t, align 4, !tbaa !10
  %i.v = load <4 x float>, ptr %0, align 4, !tbaa !10 ; 3 uses
  %i.w = load float, ptr %i.e, align 4, !tbaa !10
  %i.x = load <2 x float>, ptr %i.f, align 4, !tbaa !10 ; 2 uses
  %i.y = load <2 x float>, ptr %1, align 4, !tbaa !10
  %i.z = load <2 x float>, ptr %i.k, align 4, !tbaa !10
  %i.aa = load <2 x float>, ptr %i.l, align 4, !tbaa !10
  %i.ab = load <2 x float>, ptr %i.r, align 4, !tbaa !10 ; 2 uses
  %i.ac = load <2 x float>, ptr %i.s, align 4, !tbaa !10 ; 2 uses
  %i.ad = shufflevector <2 x float> %i.x, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ae = shufflevector <4 x float> %i.v, <4 x float> %i.ad, <4 x i32> <i32 1, i32 1, i32 1, i32 4>
  %i.af = shufflevector <2 x float> %i.ac, <2 x float> %i.ab, <4 x i32> <i32 poison, i32 poison, i32 0, i32 3>
  %i.ag = shufflevector <2 x float> %i.z, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ah = shufflevector <4 x float> %i.ag, <4 x float> %i.af, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ai = fmul nsz <4 x float> %i.ae, %i.ah
  %i.aj = shufflevector <4 x float> %i.v, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.ak = shufflevector <2 x float> %i.ab, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 poison>
  %i.al = insertelement <4 x float> %i.ak, float %i.m, i64 3
  %i.am = shufflevector <2 x float> %i.y, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.an = shufflevector <4 x float> %i.am, <4 x float> %i.al, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ao = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aj, <4 x float> %i.an, <4 x float> %i.ai)
  %i.ap = shufflevector <4 x float> %i.v, <4 x float> %i.ad, <4 x i32> <i32 2, i32 2, i32 2, i32 5>
  %i.aq = insertelement <4 x float> poison, float %i.u, i64 2
  %i.ar = shufflevector <2 x float> %i.ac, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.as = shufflevector <4 x float> %i.aq, <4 x float> %i.ar, <4 x i32> <i32 poison, i32 poison, i32 2, i32 5>
  %i.at = shufflevector <2 x float> %i.aa, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.au = shufflevector <4 x float> %i.at, <4 x float> %i.as, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.av = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ap, <4 x float> %i.au, <4 x float> %i.ao)
  store <4 x float> %i.av, ptr %0, align 4, !tbaa !10
  %i.aw = load <2 x float>, ptr %1, align 4, !tbaa !10
  %i.ax = load <2 x float>, ptr %i.k, align 4, !tbaa !10
  %i.ay = load <2 x float>, ptr %i.l, align 4, !tbaa !10
  %i.az = load <4 x float>, ptr %i.g, align 4, !tbaa !10 ; 3 uses
  %i.ba = load float, ptr %i.j, align 4, !tbaa !10
  %i.bb = load float, ptr %i.i, align 4, !tbaa !10
  %i.bc = load float, ptr %i.h, align 4, !tbaa !10
  %i.bd = load <2 x float>, ptr %i.n, align 4, !tbaa !10
  %i.be = load <2 x float>, ptr %i.o, align 4, !tbaa !10
  %i.bf = shufflevector <4 x float> %i.az, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.bg = shufflevector <2 x float> %i.x, <2 x float> %i.bf, <4 x i32> <i32 0, i32 3, i32 0, i32 3>
  %i.bh = shufflevector <2 x float> %i.ax, <2 x float> %i.be, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.bi = fmul nsz <4 x float> %i.bg, %i.bh
  %i.bj = shufflevector <4 x float> %i.az, <4 x float> poison, <2 x i32> <i32 poison, i32 1>
  %i.bk = insertelement <2 x float> %i.bj, float %i.w, i64 0
  %i.bl = shufflevector <2 x float> %i.bk, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bm = shufflevector <2 x float> %i.aw, <2 x float> %i.bd, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.bn = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bl, <4 x float> %i.bm, <4 x float> %i.bi)
  %i.bo = load <2 x float>, ptr %i.p, align 4, !tbaa !10
  %i.bp = shufflevector <4 x float> %i.az, <4 x float> poison, <4 x i32> <i32 0, i32 3, i32 0, i32 3>
  %i.bq = shufflevector <2 x float> %i.ay, <2 x float> %i.bo, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.br = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bp, <4 x float> %i.bq, <4 x float> %i.bn)
  %i.bs = shufflevector <4 x float> %i.br, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %i.bs, ptr %i.q, align 4, !tbaa !10
  %i.bt = load float, ptr %i.r, align 4, !tbaa !10
  %i.bu = load float, ptr %i.s, align 4, !tbaa !10
  %i.bv = fmul nsz float %i.bb, %i.bu
  %i.bw = tail call nsz float @llvm.fmuladd.f32(float %i.bc, float %i.bt, float %i.bv)
  %i.bx = load float, ptr %i.t, align 4, !tbaa !10
  %i.by = tail call nsz float @llvm.fmuladd.f32(float %i.ba, float %i.bx, float %i.bw)
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.by, ptr %i.bz, align 4, !tbaa !10
  br label %.rtcont

.rtscalar:                                        ; preds = %bb.a
  %i.ca = load float, ptr %0, align 4, !tbaa !10  ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !10 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !10 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !10 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !10 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !10 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !10 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.co = load float, ptr %i.cn, align 4, !tbaa !10 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !10 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.ct = load float, ptr %1, align 4, !tbaa !10
  %i.cu = load float, ptr %i.cr, align 4, !tbaa !10
  %i.cv = fmul nsz float %i.cc, %i.cu
  %i.cw = tail call nsz float @llvm.fmuladd.f32(float %i.ca, float %i.ct, float %i.cv)
  %i.cx = load float, ptr %i.cs, align 4, !tbaa !10
  %i.cy = tail call nsz float @llvm.fmuladd.f32(float %i.ce, float %i.cx, float %i.cw)
  store float %i.cy, ptr %0, align 4, !tbaa !10
  %i.cz = load float, ptr %1, align 4, !tbaa !10
  %i.da = load float, ptr %i.cr, align 4, !tbaa !10
  %i.db = fmul nsz float %i.ci, %i.da
  %i.dc = tail call nsz float @llvm.fmuladd.f32(float %i.cg, float %i.cz, float %i.db)
  %i.dd = load float, ptr %i.cs, align 4, !tbaa !10
  %i.de = tail call nsz float @llvm.fmuladd.f32(float %i.ck, float %i.dd, float %i.dc)
  store float %i.de, ptr %i.cf, align 4, !tbaa !10
  %i.df = load float, ptr %1, align 4, !tbaa !10
  %i.dg = load float, ptr %i.cr, align 4, !tbaa !10
  %i.dh = fmul nsz float %i.co, %i.dg
  %i.di = tail call nsz float @llvm.fmuladd.f32(float %i.cm, float %i.df, float %i.dh)
  %i.dj = load float, ptr %i.cs, align 4, !tbaa !10
  %i.dk = tail call nsz float @llvm.fmuladd.f32(float %i.cq, float %i.dj, float %i.di)
  store float %i.dk, ptr %i.cl, align 4, !tbaa !10
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !10
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.do = load float, ptr %i.dn, align 4, !tbaa !10
  %i.dp = fmul nsz float %i.cc, %i.do
  %i.dq = tail call nsz float @llvm.fmuladd.f32(float %i.ca, float %i.dm, float %i.dp)
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 3 uses
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !10
  %i.dt = tail call nsz float @llvm.fmuladd.f32(float %i.ce, float %i.ds, float %i.dq)
  store float %i.dt, ptr %i.cb, align 4, !tbaa !10
  %i.du = load float, ptr %i.dl, align 4, !tbaa !10
  %i.dv = load float, ptr %i.dn, align 4, !tbaa !10
  %i.dw = fmul nsz float %i.ci, %i.dv
  %i.dx = tail call nsz float @llvm.fmuladd.f32(float %i.cg, float %i.du, float %i.dw)
  %i.dy = load float, ptr %i.dr, align 4, !tbaa !10
  %i.dz = tail call nsz float @llvm.fmuladd.f32(float %i.ck, float %i.dy, float %i.dx)
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.dz, ptr %i.ea, align 4, !tbaa !10
  %i.eb = load float, ptr %i.dl, align 4, !tbaa !10
  %i.ec = load float, ptr %i.dn, align 4, !tbaa !10
  %i.ed = fmul nsz float %i.co, %i.ec
  %i.ee = tail call nsz float @llvm.fmuladd.f32(float %i.cm, float %i.eb, float %i.ed)
  %i.ef = load float, ptr %i.dr, align 4, !tbaa !10
  %i.eg = tail call nsz float @llvm.fmuladd.f32(float %i.cq, float %i.ef, float %i.ee)
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float %i.eg, ptr %i.eh, align 4, !tbaa !10
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !10
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.el = load float, ptr %i.ek, align 4, !tbaa !10
  %i.em = fmul nsz float %i.cc, %i.el
  %i.en = tail call nsz float @llvm.fmuladd.f32(float %i.ca, float %i.ej, float %i.em)
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !10
  %i.eq = tail call nsz float @llvm.fmuladd.f32(float %i.ce, float %i.ep, float %i.en)
  store float %i.eq, ptr %i.cd, align 4, !tbaa !10
  %i.er = load float, ptr %i.ei, align 4, !tbaa !10
  %i.es = load float, ptr %i.ek, align 4, !tbaa !10
  %i.et = fmul nsz float %i.ci, %i.es
  %i.eu = tail call nsz float @llvm.fmuladd.f32(float %i.cg, float %i.er, float %i.et)
  %i.ev = load float, ptr %i.eo, align 4, !tbaa !10
  %i.ew = tail call nsz float @llvm.fmuladd.f32(float %i.ck, float %i.ev, float %i.eu)
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.ew, ptr %i.ex, align 4, !tbaa !10
  %i.ey = load float, ptr %i.ei, align 4, !tbaa !10
  %i.ez = load float, ptr %i.ek, align 4, !tbaa !10
  %i.fa = fmul nsz float %i.co, %i.ez
  %i.fb = tail call nsz float @llvm.fmuladd.f32(float %i.cm, float %i.ey, float %i.fa)
  %i.fc = load float, ptr %i.eo, align 4, !tbaa !10
  %i.fd = tail call nsz float @llvm.fmuladd.f32(float %i.cq, float %i.fc, float %i.fb)
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.fd, ptr %i.fe, align 4, !tbaa !10
  br label %.rtcont

.rtcont:                                          ; preds = %.rtscalar, %.rtvec
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @ff_sws_matrix3x3_invert(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load float, ptr %0, align 4, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load float, ptr %i.b, align 4, !tbaa !10
  %i.d = fpext nsz float %i.c to double           ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load float, ptr %i.f, align 4, !tbaa !10
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20
end_hunk_0
begin_hunk_1_@ff_sws_rgb2xyz:.preheader.preheader
  %i.bc = fdiv nsz <2 x double> %i.ba, %i.bb
  %i.bd = fptrunc <2 x double> %i.bc to <2 x float> ; 3 uses
  %i.be = fpext <2 x float> %i.bd to <2 x double> ; 5 uses
  %i.bf = extractelement <2 x double> %i.be, i64 1 ; 2 uses
  %i.bg = extractelement <2 x double> %i.be, i64 0 ; 2 uses
  %i.bh = fsub nsz double %i.bg, %i.bf            ; 2 uses
  %.sroa.0.0.extract.trunc.i47 = trunc i64 %i.r to i32
  %.sroa.0.0.extract.trunc.i59 = trunc i64 %i.au to i32
  %i.bi = insertelement <2 x i64> poison, i64 %i.au, i64 0
  %i.bj = insertelement <2 x i64> %i.bi, i64 %i.r, i64 1
  %i.bk = lshr <2 x i64> %i.bj, splat (i64 32)
  %i.bl = trunc nuw <2 x i64> %i.bk to <2 x i32>
  %i.bm = insertelement <2 x i32> poison, i32 %.sroa.0.0.extract.trunc.i59, i64 0
  %i.bn = insertelement <2 x i32> %i.bm, i32 %.sroa.0.0.extract.trunc.i47, i64 1
  %i.bo = sitofp <2 x i32> %i.bn to <2 x double>
  %i.bp = sitofp <2 x i32> %i.bl to <2 x double>
  %i.bq = fdiv nsz <2 x double> %i.bo, %i.bp
  %i.br = fptrunc <2 x double> %i.bq to <2 x float> ; 4 uses
  %i.bs = extractelement <2 x float> %i.br, i64 0
  %i.bt = insertelement <2 x i64> poison, i64 %i.u, i64 0
  %i.bu = insertelement <2 x i64> %i.bt, i64 %i.x, i64 1 ; 2 uses
  %i.bv = trunc <2 x i64> %i.bu to <2 x i32>
  %i.bw = lshr <2 x i64> %i.bu, splat (i64 32)
  %i.bx = trunc nuw <2 x i64> %i.bw to <2 x i32>
  %i.by = sitofp <2 x i32> %i.bv to <2 x double>
  %i.bz = sitofp <2 x i32> %i.bx to <2 x double>
  %i.ca = fdiv nsz <2 x double> %i.by, %i.bz
  %i.cb = fptrunc <2 x double> %i.ca to <2 x float> ; 2 uses
  %i.cc = fpext <2 x float> %i.cb to <2 x double> ; 6 uses
  %i.cd = extractelement <2 x double> %i.cc, i64 0
  %i.ce = extractelement <2 x double> %i.cc, i64 1
  %i.cf = insertelement <2 x float> poison, float %i.ar, i64 0
  %i.cg = shufflevector <2 x float> %i.cf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ch = insertelement <2 x float> %i.br, float %i.ap, i64 0
  %i.ci = fpext <2 x float> %i.ch to <2 x double> ; 7 uses
  %i.cj = extractelement <2 x double> %i.ci, i64 0
  %foldExtExtBinop = fsub nsz <2 x double> %i.ci, %i.be
  %i.ck = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.cl = extractelement <2 x double> %i.ci, i64 1
  %i.cm = shufflevector <2 x double> %i.be, <2 x double> %i.cc, <2 x i32> <i32 1, i32 2>
  %i.cn = fsub nsz <2 x double> %i.cm, %i.ci
  %i.co = shufflevector <2 x double> %i.cc, <2 x double> %i.ci, <2 x i32> <i32 1, i32 3>
  %i.cp = fsub nsz <2 x double> %i.co, %i.cc      ; 2 uses
  %i.cq = extractelement <2 x double> %i.cp, i64 0
  %i.cr = fneg nsz <2 x double> %i.be
  %i.cs = fneg nsz double %i.bf
  %i.ct = fmul nsz double %i.cd, %i.cs
  %i.cu = tail call nsz double @llvm.fmuladd.f64(double %i.bg, double %i.ce, double %i.ct)
  %i.cv = fneg nsz double %i.cu                   ; 2 uses
  %i.cw = shufflevector <2 x double> %i.ci, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cx = fmul nsz <2 x double> %i.cw, %i.cr
  %i.cy = shufflevector <2 x double> %i.ci, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cz = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cy, <2 x double> %i.cc, <2 x double> %i.cx) ; 2 uses
  %i.da = extractelement <2 x double> %i.cz, i64 0
  %i.db = fneg nsz double %i.da
  %i.dc = tail call nsz double @llvm.fmuladd.f64(double %i.cj, double %i.cq, double %i.cv)
  %i.dd = tail call nsz double @llvm.fmuladd.f64(double %i.cl, double %i.bh, double %i.dc)
  %i.de = fdiv nsz double 1.000000e+00, %i.dd     ; 4 uses
  %i.df = fmul nsz double %i.bh, %i.de
  %i.dg = fptrunc nsz double %i.df to float
  %i.dh = insertelement <2 x double> poison, double %i.de, i64 0
  %i.di = shufflevector <2 x double> %i.dh, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.dj = fmul nsz <2 x double> %i.cp, %i.di
  %i.dk = fptrunc <2 x double> %i.dj to <2 x float>
  %i.dl = fmul nsz <2 x double> %i.di, %i.cn
  %i.dm = fptrunc <2 x double> %i.dl to <2 x float>
  %i.dn = fmul nsz double %i.de, %i.db
  %i.do = fptrunc nsz double %i.dn to float
  %i.dp = insertelement <2 x double> %i.cz, double %i.cv, i64 0
  %i.dq = fmul nsz <2 x double> %i.di, %i.dp
  %i.dr = fmul nsz double %i.ck, %i.de
  %i.ds = fptrunc <2 x double> %i.dq to <2 x float>
  %i.dt = fptrunc nsz double %i.dr to float
  %i.du = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dk, <2 x float> %i.cg, <2 x float> %i.ds) ; 2 uses
  %i.dv = extractelement <2 x float> %i.du, i64 0
  %i.dw = tail call nsz float @llvm.fmuladd.f32(float %i.dg, float %i.bs, float %i.dv) ; 3 uses
  %i.dx = insertelement <2 x float> %i.br, float %i.ar, i64 1
  %i.dy = shufflevector <2 x float> %i.du, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.dz = insertelement <2 x float> %i.dy, float %i.do, i64 1
  %i.ea = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dm, <2 x float> %i.dx, <2 x float> %i.dz) ; 4 uses
  %i.eb = fmul nsz float %i.dw, %i.ap
  store float %i.eb, ptr %0, align 4, !tbaa !10
  store float %i.dw, ptr %i.ab, align 4, !tbaa !10
  %i.ec = insertelement <2 x float> poison, float %i.dt, i64 0
  %i.ed = insertelement <2 x float> %i.ec, float %i.dw, i64 1
  %i.ee = shufflevector <2 x float> <float poison, float -0.000000e+00>, <2 x float> %i.ea, <2 x i32> <i32 3, i32 1>
  %i.ef = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ed, <2 x float> %i.br, <2 x float> %i.ee) ; 3 uses
  %i.eg = extractelement <2 x float> %i.ea, i64 0
  %foldExtExtBinop75 = fmul nsz <2 x float> %i.ea, %i.bd
  %i.eh = extractelement <2 x float> %foldExtExtBinop75, i64 0
  store float %i.eh, ptr %.sroa.572.0..sroa_idx, align 4, !tbaa !10
  store float %i.eg, ptr %i.ac, align 4, !tbaa !10
  %shift = shufflevector <2 x float> %i.bd, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop77 = fmul nsz <2 x float> %i.ef, %shift
  %i.ei = extractelement <2 x float> %foldExtExtBinop77, i64 0
  store float %i.ei, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !10
  store <2 x float> %i.ef, ptr %i.ae, align 4, !tbaa !10
  %i.ej = shufflevector <2 x float> %i.ea, <2 x float> %i.ef, <2 x i32> <i32 0, i32 2>
  %i.ek = fmul nsz <2 x float> %i.ej, %i.cb
  store <2 x float> %i.ek, ptr %i.ad, align 4, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @ff_sws_xyz2rgb(ptr dead_on_unwind noalias nofree writable sret(%struct.SwsMatrix3x3) align 4 captures(none) initializes((0, 36)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 {
bb.a:
  tail call void @ff_sws_rgb2xyz(ptr dead_on_unwind writable sret(%struct.SwsMatrix3x3) align 4 %0, ptr noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = load <3 x float>, ptr %i.c, align 4, !tbaa !10
  %i.i = shufflevector <3 x float> %i.h, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1>
  %i.j = load float, ptr %i.b, align 4, !tbaa !10
  %i.k = load float, ptr %i.e, align 4, !tbaa !10
  %i.l = load float, ptr %i.g, align 4, !tbaa !10
  %i.m = fpext <4 x float> %i.i to <4 x double>   ; 5 uses
  %i.n = load float, ptr %i.f, align 4, !tbaa !10
  %i.o = load float, ptr %i.a, align 4, !tbaa !10
  %i.p = load <4 x float>, ptr %0, align 4
  %i.q = shufflevector <4 x float> %i.p, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.r = fpext nsz float %i.j to double           ; 2 uses
  %i.s = fpext nsz float %i.k to double           ; 5 uses
  %i.t = fpext nsz float %i.n to double           ; 4 uses
  %i.u = fpext nsz float %i.o to double           ; 3 uses
  %i.v = shufflevector <4 x double> %i.m, <4 x double> poison, <4 x i32> <i32 2, i32 0, i32 0, i32 1> ; 2 uses
  %i.w = insertelement <4 x double> %i.v, double %i.u, i64 0
  %i.x = insertelement <4 x double> %i.w, double %i.r, i64 1
  %i.y = fneg nsz <4 x double> %i.x               ; 3 uses
  %i.z = fneg nsz double %i.r                     ; 3 uses
  %i.aa = fmul nsz double %i.z, %i.t
  %i.ab = extractelement <4 x double> %i.m, i64 2
  %i.ac = fmul nsz double %i.z, %i.s
  %i.ad = extractelement <4 x double> %i.y, i64 0
  %i.ae = fmul nsz double %i.ad, %i.s
  %i.af = insertelement <4 x double> %i.v, double %i.s, i64 2
  %i.ag = insertelement <4 x double> %i.af, double %i.t, i64 3
  %i.ah = fmul nsz <4 x double> %i.ag, %i.y
  %i.ai = insertelement <2 x float> %i.q, float %i.l, i64 1
  %i.aj = fpext <2 x float> %i.ai to <2 x double> ; 4 uses
  %i.ak = extractelement <2 x double> %i.aj, i64 1 ; 2 uses
  %i.al = tail call nsz double @llvm.fmuladd.f64(double %i.u, double %i.ak, double %i.aa)
  %i.am = shufflevector <4 x double> %i.m, <4 x double> %i.y, <2 x i32> <i32 2, i32 7>
  %i.an = insertelement <2 x double> poison, double %i.z, i64 0
  %i.ao = insertelement <2 x double> %i.an, double %i.s, i64 1
  %i.ap = fmul nsz <2 x double> %i.am, %i.ao
  %i.aq = shufflevector <4 x double> %i.m, <4 x double> poison, <2 x i32> <i32 1, i32 2>
  %i.ar = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aq, <2 x double> %i.aj, <2 x double> %i.ap)
  %i.as = extractelement <2 x double> %i.aj, i64 0 ; 3 uses
  %i.at = tail call nsz double @llvm.fmuladd.f64(double %i.as, double %i.t, double %i.ae)
  %i.au = fneg nsz double %i.al                   ; 2 uses
  %i.av = fmul nsz double %i.ab, %i.au
  %i.aw = shufflevector <2 x double> %i.aj, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 1>
  %i.ax = insertelement <4 x double> %i.aw, double %i.u, i64 1
  %i.ay = insertelement <4 x double> %i.ax, double %i.t, i64 2
  %i.az = tail call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.m, <4 x double> %i.ay, <4 x double> %i.ah) ; 5 uses
  %i.ba = extractelement <4 x double> %i.az, i64 3
  %i.bb = tail call nsz double @llvm.fmuladd.f64(double %i.as, double %i.ba, double %i.av)
  %i.bc = extractelement <4 x double> %i.az, i64 1
  %i.bd = tail call nsz double @llvm.fmuladd.f64(double %i.s, double %i.bc, double %i.bb)
  %i.be = fdiv nsz double 1.000000e+00, %i.bd     ; 2 uses
  %i.bf = shufflevector <4 x double> %i.az, <4 x double> poison, <4 x i32> <i32 3, i32 poison, i32 1, i32 poison>
  %i.bg = insertelement <4 x double> %i.bf, double %i.au, i64 1
  %i.bh = fneg nsz <2 x double> %i.ar
  %i.bi = shufflevector <2 x double> %i.bh, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bj = shufflevector <4 x double> %i.bg, <4 x double> %i.bi, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.bk = insertelement <4 x double> poison, double %i.be, i64 0
  %i.bl = shufflevector <4 x double> %i.bk, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bm = fmul nsz <4 x double> %i.bj, %i.bl
  %i.bn = fptrunc <4 x double> %i.bm to <4 x float>
  store <4 x float> %i.bn, ptr %0, align 4, !tbaa !10
  %i.bo = fneg nsz double %i.at
  %i.bp = tail call nsz double @llvm.fmuladd.f64(double %i.as, double %i.ak, double %i.ac)
  %i.bq = insertelement <4 x double> poison, double %i.bp, i64 0
  %i.br = shufflevector <4 x double> %i.bq, <4 x double> %i.bi, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.bs = shufflevector <4 x double> %i.br, <4 x double> %i.az, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.bt = insertelement <4 x double> %i.bs, double %i.bo, i64 3
  %i.bu = fmul nsz <4 x double> %i.bt, %i.bl
  %i.bv = fptrunc <4 x double> %i.bu to <4 x float>
  store <4 x float> %i.bv, ptr %i.d, align 4, !tbaa !10
  %i.bw = extractelement <4 x double> %i.az, i64 0
  %i.bx = fmul nsz double %i.bw, %i.be
  %i.by = fptrunc nsz double %i.bx to float
  store float %i.by, ptr %i.g, align 4, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @ff_sws_get_adaptation(ptr dead_on_unwind noalias nofree writable sret(%struct.SwsMatrix3x3) align 4 captures(none) initializes((0, 36)) %0, ptr nofree noundef readonly captures(none) %1, i64 %2, i64 %3, i64 %4, i64 %5) local_unnamed_addr #3 {
bb.a:
  %6 = alloca %struct.AVColorPrimariesDesc, align 8 ; 7 uses
  %7 = alloca %struct.SwsMatrix3x3, align 16      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  store i64 %2, ptr %6, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %3, ptr %.sroa.3.0..sroa_idx, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 4 dereferenceable(48) %1, i64 48, i1 false), !tbaa.struct !13
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  call void @ff_sws_rgb2xyz(ptr dead_on_unwind nonnull writable sret(%struct.SwsMatrix3x3) align 4 %7, ptr noundef nonnull %6)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 4
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 12
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 28
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = load <3 x float>, ptr %7, align 16       ; 3 uses
  %i.i = shufflevector <3 x float> %i.h, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.j = load <4 x float>, ptr %.sroa.6.0..sroa_idx, align 4
  %i.k = load <3 x float>, ptr %.sroa.12.0..sroa_idx, align 4 ; 3 uses
  %i.l = shufflevector <3 x float> %i.k, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.m = load <4 x float>, ptr %.sroa.15.0..sroa_idx, align 16
  %i.n = load <3 x float>, ptr %.sroa.21.0..sroa_idx, align 8 ; 3 uses
  %i.o = shufflevector <3 x float> %i.n, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %.sroa.24.0.copyload = load float, ptr %.sroa.24.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  call void @ff_sws_xyz2rgb(ptr dead_on_unwind nonnull writable sret(%struct.SwsMatrix3x3) align 4 %0, ptr noundef nonnull %6)
  tail call fastcc void @apply_chromatic_adaptation(i64 %2, i64 %3, i64 %4, i64 %5, ptr noundef nonnull %0)
  %i.p = load <4 x float>, ptr %0, align 4, !tbaa !10 ; 3 uses
  %i.q = load float, ptr %i.b, align 4, !tbaa !10
  %i.r = load <2 x float>, ptr %i.c, align 4, !tbaa !10 ; 2 uses
  %i.s = shufflevector <2 x float> %i.r, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.t = shufflevector <4 x float> %i.p, <4 x float> %i.s, <4 x i32> <i32 1, i32 1, i32 1, i32 4>
  %i.u = fmul nsz <4 x float> %i.l, %i.t
  %i.v = shufflevector <4 x float> %i.p, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.w = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.v, <4 x float> %i.i, <4 x float> %i.u)
  %i.x = shufflevector <4 x float> %i.p, <4 x float> %i.s, <4 x i32> <i32 2, i32 2, i32 2, i32 5>
  %i.y = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.x, <4 x float> %i.o, <4 x float> %i.w)
  store <4 x float> %i.y, ptr %0, align 4, !tbaa !10
  %i.z = extractelement <3 x float> %i.k, i64 2
  %i.aa = extractelement <3 x float> %i.h, i64 2
  %i.ab = extractelement <3 x float> %i.n, i64 2
  %i.ac = load <4 x float>, ptr %i.d, align 4, !tbaa !10 ; 3 uses
  %i.ad = load float, ptr %i.g, align 4, !tbaa !10
  %i.ae = load float, ptr %i.f, align 4, !tbaa !10
  %i.af = load float, ptr %i.e, align 4, !tbaa !10
  %i.ag = shufflevector <3 x float> %i.k, <3 x float> poison, <4 x i32> <i32 poison, i32 0, i32 2, i32 poison>
  %i.ah = shufflevector <4 x float> %i.m, <4 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %i.ai = shufflevector <4 x float> %i.ah, <4 x float> %i.ag, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.aj = shufflevector <4 x float> %i.ac, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.ak = shufflevector <2 x float> %i.r, <2 x float> %i.aj, <4 x i32> <i32 0, i32 3, i32 0, i32 3>
  %i.al = fmul nsz <4 x float> %i.ai, %i.ak
  %i.am = shufflevector <4 x float> %i.ac, <4 x float> poison, <2 x i32> <i32 poison, i32 1>
  %i.an = insertelement <2 x float> %i.am, float %i.q, i64 0
  %i.ao = shufflevector <2 x float> %i.an, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ap = shufflevector <3 x float> %i.h, <3 x float> poison, <4 x i32> <i32 poison, i32 0, i32 2, i32 poison>
  %i.aq = shufflevector <4 x float> %i.j, <4 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %i.ar = shufflevector <4 x float> %i.aq, <4 x float> %i.ap, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.as = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ao, <4 x float> %i.ar, <4 x float> %i.al)
  %i.at = shufflevector <4 x float> %i.ac, <4 x float> poison, <4 x i32> <i32 0, i32 3, i32 0, i32 3>
  %i.au = shufflevector <3 x float> %i.n, <3 x float> poison, <4 x i32> <i32 poison, i32 0, i32 2, i32 poison>
  %i.av = insertelement <4 x float> poison, float %.sroa.24.0.copyload, i64 0
  %i.aw = shufflevector <4 x float> %i.av, <4 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %i.ax = shufflevector <4 x float> %i.aw, <4 x float> %i.au, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.ay = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.at, <4 x float> %i.ax, <4 x float> %i.as)
  %i.az = shufflevector <4 x float> %i.ay, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %i.az, ptr %i.c, align 4, !tbaa !10
  %i.ba = fmul nsz float %i.z, %i.ae
  %i.bb = tail call nsz float @llvm.fmuladd.f32(float %i.af, float %i.aa, float %i.ba)
  %i.bc = tail call nsz float @llvm.fmuladd.f32(float %i.ad, float %i.ab, float %i.bb)
  store float %i.bc, ptr %i.g, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @apply_chromatic_adaptation(i64 %0, i64 %1, i64 %2, i64 %3, ptr nofree noundef captures(none) %4) unnamed_addr #3 {
bb.a:
  %i.a = tail call i64 @av_div_q(i64 %0, i64 %1) #7
  %i.b = tail call i64 @av_sub_q(i64 4294967297, i64 %0) #7
  %i.c = tail call i64 @av_sub_q(i64 %i.b, i64 %1) #7
  %i.d = tail call i64 @av_div_q(i64 %i.c, i64 %1) #7
  %i.e = insertelement <2 x i64> poison, i64 %i.a, i64 0
  %i.f = insertelement <2 x i64> %i.e, i64 %i.d, i64 1 ; 2 uses
  %i.g = trunc <2 x i64> %i.f to <2 x i32>
  %i.h = lshr <2 x i64> %i.f, splat (i64 32)
  %i.i = trunc nuw <2 x i64> %i.h to <2 x i32>
  %i.j = sitofp <2 x i32> %i.g to <2 x double>
  %i.k = sitofp <2 x i32> %i.i to <2 x double>
  %i.l = fdiv nsz <2 x double> %i.j, %i.k
  %i.m = fptrunc <2 x double> %i.l to <2 x float> ; 2 uses
  %i.n = tail call i64 @av_div_q(i64 %2, i64 %3) #7
  %i.o = tail call i64 @av_sub_q(i64 4294967297, i64 %2) #7
  %i.p = tail call i64 @av_sub_q(i64 %i.o, i64 %3) #7
  %i.q = tail call i64 @av_div_q(i64 %i.p, i64 %3) #7
  %i.r = insertelement <2 x i64> poison, i64 %i.n, i64 0
  %i.s = insertelement <2 x i64> %i.r, i64 %i.q, i64 1 ; 2 uses
  %i.t = trunc <2 x i64> %i.s to <2 x i32>
  %i.u = lshr <2 x i64> %i.s, splat (i64 32)
  %i.v = trunc nuw <2 x i64> %i.u to <2 x i32>
  %i.w = sitofp <2 x i32> %i.t to <2 x double>
  %i.x = sitofp <2 x i32> %i.v to <2 x double>
  %i.y = fdiv nsz <2 x double> %i.w, %i.x
  %i.z = fptrunc <2 x double> %i.y to <2 x float> ; 2 uses
  %.not1.i.not.i.i = icmp eq i64 %0, 0
  %.not1.i6.not.i.i = icmp eq i64 %2, 0
  %or.cond.i.i = select i1 %.not1.i.not.i.i, i1 %.not1.i6.not.i.i, i1 false
  br i1 %or.cond.i.i, label %ff_q_equal.exit.thread17.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.011.0.extract.trunc.i.i.i = trunc i64 %0 to i32 ; 2 uses
  %.sroa.0.0.extract.trunc.i.i.i = trunc i64 %2 to i32 ; 2 uses
  %sext.i.i.i = shl i64 %0, 32
  %i.aa = ashr exact i64 %sext.i.i.i, 32
  %i.ab = ashr i64 %2, 32
  %i.ac = mul nsw i64 %i.ab, %i.aa
  %sext20.i.i.i = shl i64 %2, 32
  %i.ad = ashr exact i64 %sext20.i.i.i, 32
  %i.ae = ashr i64 %0, 32
  %i.af = mul nsw i64 %i.ad, %i.ae
  %.not.i.i.i = icmp eq i64 %i.ac, %i.af
  br i1 %.not.i.i.i, label %bb.c, label %.preheader46

bb.c:                                             ; preds = %bb.b
  %i.ag = icmp ugt i64 %2, 4294967295
  %i.ah = icmp ugt i64 %0, 4294967295
  %or.cond.i.i.i = and i1 %i.ah, %i.ag
  br i1 %or.cond.i.i.i, label %ff_q_equal.exit.thread17.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ai = icmp eq i32 %.sroa.011.0.extract.trunc.i.i.i, 0
  %i.aj = icmp eq i32 %.sroa.0.0.extract.trunc.i.i.i, 0
  %or.cond5.i.i.not20.i = or i1 %i.ai, %i.aj
  %.unshifted.i.i = xor i32 %.sroa.0.0.extract.trunc.i.i.i, %.sroa.011.0.extract.trunc.i.i.i
  %i.ak = icmp slt i32 %.unshifted.i.i, 0
  %or.cond.i = or i1 %or.cond5.i.i.not20.i, %i.ak
  br i1 %or.cond.i, label %.preheader46, label %ff_q_equal.exit.thread17.i

ff_q_equal.exit.thread17.i:                       ; preds = %bb.d, %bb.c, %bb.a
  %.not1.i.not.i3.i = icmp eq i64 %1, 0
  %.not1.i6.not.i4.i = icmp eq i64 %3, 0
  %or.cond.i5.i = select i1 %.not1.i.not.i3.i, i1 %.not1.i6.not.i4.i, i1 false
  br i1 %or.cond.i5.i, label %ff_cie_xy_equal.exit.thread, label %bb.e

bb.e:                                             ; preds = %ff_q_equal.exit.thread17.i
  %.sroa.011.0.extract.trunc.i.i6.i = trunc i64 %1 to i32 ; 2 uses
  %.sroa.0.0.extract.trunc.i.i7.i = trunc i64 %3 to i32 ; 2 uses
  %sext.i.i8.i = shl i64 %1, 32
  %i.al = ashr exact i64 %sext.i.i8.i, 32
  %i.am = ashr i64 %3, 32
  %i.an = mul nsw i64 %i.am, %i.al
  %sext20.i.i9.i = shl i64 %3, 32
  %i.ao = ashr exact i64 %sext20.i.i9.i, 32
  %i.ap = ashr i64 %1, 32
  %i.aq = mul nsw i64 %i.ao, %i.ap
  %.not.i.i10.i = icmp eq i64 %i.an, %i.aq
  br i1 %.not.i.i10.i, label %bb.f, label %.preheader46

bb.f:                                             ; preds = %bb.e
  %i.ar = icmp ugt i64 %3, 4294967295
  %i.as = icmp ugt i64 %1, 4294967295
  %or.cond.i.i11.i = and i1 %i.as, %i.ar
  br i1 %or.cond.i.i11.i, label %ff_cie_xy_equal.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.at = icmp eq i32 %.sroa.011.0.extract.trunc.i.i6.i, 0
  %i.au = icmp eq i32 %.sroa.0.0.extract.trunc.i.i7.i, 0
  %or.cond5.i.i12.i.not50 = or i1 %i.at, %i.au
  %.unshifted.i13.i = xor i32 %.sroa.0.0.extract.trunc.i.i7.i, %.sroa.011.0.extract.trunc.i.i6.i
  %i.av = icmp slt i32 %.unshifted.i13.i, 0
  %or.cond = or i1 %or.cond5.i.i12.i.not50, %i.av
  br i1 %or.cond, label %.preheader46, label %ff_cie_xy_equal.exit.thread

.preheader46:                                     ; preds = %bb.b, %bb.e, %bb.g, %bb.d
  %i.aw = shufflevector <2 x float> %i.m, <2 x float> poison, <3 x i32> zeroinitializer
  %i.ax = tail call nsz <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.aw, <3 x float> <float -2.079000e-03, float 4.012880e-01, float -2.502680e-01>, <3 x float> <float 4.895200e-02, float 6.501730e-01, float f0x3F9A2A3D>)
  %i.ay = shufflevector <2 x float> %i.z, <2 x float> poison, <3 x i32> zeroinitializer
  %i.az = tail call nsz <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ay, <3 x float> <float -2.079000e-03, float 4.012880e-01, float -2.502680e-01>, <3 x float> <float 4.895200e-02, float 6.501730e-01, float f0x3F9A2A3D>)
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !10 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.be = load float, ptr %i.bd, align 4, !tbaa !10 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !10 ; 3 uses
  %i.bh = fmul nsz float %i.be, 3.875270e-01
  %i.bi = fmul nsz float %i.be, 6.214470e-01
  %i.bj = fmul nsz float %i.be, -8.974000e-03
  %i.bk = shufflevector <2 x float> %i.m, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.bl = tail call nsz <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.bk, <3 x float> <float 9.531270e-01, float -5.146100e-02, float 4.585400e-02>, <3 x float> %i.ax)
  %i.bm = shufflevector <2 x float> %i.z, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.bn = tail call nsz <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.bm, <3 x float> <float 9.531270e-01, float -5.146100e-02, float 4.585400e-02>, <3 x float> %i.az)
  %i.bo = fdiv nsz <3 x float> %i.bn, %i.bl       ; 3 uses
  %i.bp = shufflevector <3 x float> %i.bo, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.bq = fmul nsz <4 x float> %i.bp, <float 4.012880e-01, float 6.501730e-01, float -5.146100e-02, float 4.012880e-01> ; 3 uses
  %i.br = shufflevector <3 x float> %i.bo, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.bs = fmul nsz <4 x float> %i.br, <float -2.502680e-01, float f0x3F9A2A3D, float 4.585400e-02, float -2.502680e-01> ; 3 uses
  %i.bt = shufflevector <3 x float> %i.bo, <3 x float> poison, <4 x i32> zeroinitializer
  %i.bu = fmul nsz <4 x float> %i.bt, <float -2.079000e-03, float 4.895200e-02, float 9.531270e-01, float -2.079000e-03> ; 3 uses
  %i.bv = load <4 x float>, ptr %4, align 4, !tbaa !10 ; 3 uses
end_hunk_1
begin_hunk_2_@ff_sws_ipt_lms2rgb:bb.a
  store <4 x float> %i.bn, ptr %0, align 4, !tbaa !10
  %i.bo = fneg nsz double %i.at
  %i.bp = tail call nsz double @llvm.fmuladd.f64(double %i.as, double %i.ak, double %i.ac)
  %i.bq = insertelement <4 x double> poison, double %i.bp, i64 0
  %i.br = shufflevector <4 x double> %i.bq, <4 x double> %i.bi, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.bs = shufflevector <4 x double> %i.br, <4 x double> %i.az, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.bt = insertelement <4 x double> %i.bs, double %i.bo, i64 3
  %i.bu = fmul nsz <4 x double> %i.bt, %i.bl
  %i.bv = fptrunc <4 x double> %i.bu to <4 x float>
  store <4 x float> %i.bv, ptr %i.d, align 4, !tbaa !10
  %i.bw = extractelement <4 x double> %i.az, i64 0
  %i.bx = fmul nsz double %i.bw, %i.be
  %i.by = fptrunc nsz double %i.bx to float
  store float %i.by, ptr %i.g, align 4, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(argmem: read) uwtable
define zeroext i1 @ff_prim_superset(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = load i64, ptr %1, align 4                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 4              ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %0, align 4                ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 4              ; 6 uses
  %i.h = load i64, ptr %i.d, align 4              ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load i64, ptr %i.i, align 4              ; 6 uses
  %i.k = tail call fastcc i32 @test_point_line(i64 %i.a, i64 %i.c, i64 %i.e, i64 %i.g, i64 %i.h, i64 %i.j) ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load i64, ptr %i.l, align 4              ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load i64, ptr %i.n, align 4              ; 6 uses
  %i.p = tail call fastcc i32 @test_point_line(i64 %i.a, i64 %i.c, i64 %i.h, i64 %i.j, i64 %i.m, i64 %i.o) ; 2 uses
  %i.q = tail call fastcc i32 @test_point_line(i64 %i.a, i64 %i.c, i64 %i.m, i64 %i.o, i64 %i.e, i64 %i.g) ; 2 uses
  %i.r = icmp sgt i32 %i.k, -1
  %i.s = icmp sgt i32 %i.p, -1
  %or.cond.not25.i = select i1 %i.r, i1 %i.s, i1 false
  %i.t = icmp sgt i32 %i.q, -1
  %.not23.i = select i1 %or.cond.not25.i, i1 %i.t, i1 false
  %i.u = icmp slt i32 %i.k, 1
  %i.v = icmp slt i32 %i.p, 1
  %or.cond3.not29.i = select i1 %i.u, i1 %i.v, i1 false
  %i.w = icmp slt i32 %i.q, 1
  %.not26.i = select i1 %or.cond3.not29.i, i1 %i.w, i1 false
  %.not21.i = select i1 %.not23.i, i1 true, i1 %.not26.i
  br i1 %.not21.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = load i64, ptr %i.x, align 4              ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = load i64, ptr %i.z, align 4             ; 3 uses
  %i.ab = tail call fastcc i32 @test_point_line(i64 %i.y, i64 %i.aa, i64 %i.e, i64 %i.g, i64 %i.h, i64 %i.j) ; 2 uses
  %i.ac = tail call fastcc i32 @test_point_line(i64 %i.y, i64 %i.aa, i64 %i.h, i64 %i.j, i64 %i.m, i64 %i.o) ; 2 uses
  %i.ad = tail call fastcc i32 @test_point_line(i64 %i.y, i64 %i.aa, i64 %i.m, i64 %i.o, i64 %i.e, i64 %i.g) ; 2 uses
  %i.ae = icmp sgt i32 %i.ab, -1
  %i.af = icmp sgt i32 %i.ac, -1
  %or.cond.not25.i6 = select i1 %i.ae, i1 %i.af, i1 false
  %i.ag = icmp sgt i32 %i.ad, -1
  %.not23.i7 = select i1 %or.cond.not25.i6, i1 %i.ag, i1 false
  %i.ah = icmp slt i32 %i.ab, 1
  %i.ai = icmp slt i32 %i.ac, 1
  %or.cond3.not29.i8 = select i1 %i.ah, i1 %i.ai, i1 false
  %i.aj = icmp slt i32 %i.ad, 1
  %.not26.i9 = select i1 %or.cond3.not29.i8, i1 %i.aj, i1 false
  %.not21.i10 = select i1 %.not23.i7, i1 true, i1 %.not26.i9
  br i1 %.not21.i10, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.al = load i64, ptr %i.ak, align 4            ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.an = load i64, ptr %i.am, align 4            ; 3 uses
  %i.ao = tail call fastcc i32 @test_point_line(i64 %i.al, i64 %i.an, i64 %i.e, i64 %i.g, i64 %i.h, i64 %i.j) ; 2 uses
  %i.ap = tail call fastcc i32 @test_point_line(i64 %i.al, i64 %i.an, i64 %i.h, i64 %i.j, i64 %i.m, i64 %i.o) ; 2 uses
  %i.aq = tail call fastcc i32 @test_point_line(i64 %i.al, i64 %i.an, i64 %i.m, i64 %i.o, i64 %i.e, i64 %i.g) ; 2 uses
  %i.ar = icmp sgt i32 %i.ao, -1
  %i.as = icmp sgt i32 %i.ap, -1
  %or.cond.not25.i11 = select i1 %i.ar, i1 %i.as, i1 false
  %i.at = icmp sgt i32 %i.aq, -1
  %.not23.i12 = select i1 %or.cond.not25.i11, i1 %i.at, i1 false
  %i.au = icmp slt i32 %i.ao, 1
  %i.av = icmp slt i32 %i.ap, 1
  %or.cond3.not29.i13 = select i1 %i.au, i1 %i.av, i1 false
  %i.aw = icmp slt i32 %i.aq, 1
  %.not26.i14 = select i1 %or.cond3.not29.i13, i1 %i.aw, i1 false
  %.not21.i15 = select i1 %.not23.i12, i1 true, i1 %.not26.i14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.ax = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %.not21.i15, %bb.c ]
  ret i1 %i.ax
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @av_div_q(i64, i64) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @av_sub_q(i64, i64) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define internal fastcc i32 @test_point_line(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5) unnamed_addr #6 {
bb.a:
  %i.a = tail call i64 @av_sub_q(i64 %0, i64 %4) #7
  %i.b = tail call i64 @av_sub_q(i64 %3, i64 %5) #7
  %i.c = tail call i64 @av_mul_q(i64 %i.a, i64 %i.b) #7 ; 4 uses
  %i.d = tail call i64 @av_sub_q(i64 %2, i64 %4) #7
  %i.e = tail call i64 @av_sub_q(i64 %1, i64 %5) #7
  %i.f = tail call i64 @av_mul_q(i64 %i.d, i64 %i.e) #7 ; 4 uses
  %.sroa.011.0.extract.trunc.i = trunc i64 %i.c to i32 ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.f to i32 ; 2 uses
  %sext.i = shl i64 %i.c, 32
  %i.g = ashr exact i64 %sext.i, 32
  %i.h = ashr i64 %i.f, 32                        ; 2 uses
  %i.i = mul nsw i64 %i.h, %i.g                   ; 2 uses
  %sext20.i = shl i64 %i.f, 32
  %i.j = ashr exact i64 %sext20.i, 32
  %i.k = ashr i64 %i.c, 32                        ; 2 uses
  %i.l = mul nsw i64 %i.j, %i.k                   ; 2 uses
  %.not.i = icmp eq i64 %i.i, %i.l
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = sub nsw i64 %i.i, %i.l
  %i.n = xor i64 %i.k, %i.m
  %i.o = xor i64 %i.n, %i.h
  %i.p = ashr i64 %i.o, 63
  %i.q = trunc nsw i64 %i.p to i32
  %i.r = or i32 %i.q, 1
  br label %av_cmp_q.exit

bb.c:                                             ; preds = %bb.a
  %i.s = icmp ugt i64 %i.f, 4294967295
  %i.t = icmp ugt i64 %i.c, 4294967295
  %or.cond.i = and i1 %i.t, %i.s
  br i1 %or.cond.i, label %av_cmp_q.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = icmp ne i32 %.sroa.011.0.extract.trunc.i, 0
  %i.v = icmp ne i32 %.sroa.0.0.extract.trunc.i, 0
  %or.cond5.i = and i1 %i.u, %i.v
  br i1 %or.cond5.i, label %bb.e, label %av_cmp_q.exit

bb.e:                                             ; preds = %bb.d
  %i.w = ashr i32 %.sroa.011.0.extract.trunc.i, 31
  %.neg.i = lshr i32 %.sroa.0.0.extract.trunc.i, 31
  %i.x = add nsw i32 %.neg.i, %i.w
  br label %av_cmp_q.exit

av_cmp_q.exit:                                    ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %.0.i = phi i32 [ %i.r, %bb.b ], [ 0, %bb.c ], [ %i.x, %bb.e ], [ -2147483648, %bb.d ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @av_mul_q(i64, i64) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <3 x float> @llvm.fmuladd.v3f32(<3 x float>, <3 x float>, <3 x float>) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind willreturn memory(none) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"float", !5, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"branch_weights", i32 1, i32 1048575}
!12 = !{!6, !6, i64 0}
!13 = !{i64 0, i64 4, !12, i64 4, i64 4, !12, i64 8, i64 4, !12, i64 12, i64 4, !12, i64 16, i64 4, !12, i64 20, i64 4, !12, i64 24, i64 4, !12, i64 28, i64 4, !12, i64 32, i64 4, !12, i64 36, i64 4, !12, i64 40, i64 4, !12, i64 44, i64 4, !12}
end_hunk_2
