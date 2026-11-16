Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/atrac3plusdsp?download=true
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 9
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@ff_atrac3p_qu_to_spec_pos = local_unnamed_addr constant [33 x i16] [i16 0, i16 16, i16 32, i16 48, i16 64, i16 80, i16 96, i16 112, i16 128, i16 160, i16 192, i16 224, i16 256, i16 288, i16 320, i16 352, i16 384, i16 448, i16 512, i16 576, i16 640, i16 704, i16 768, i16 896, i16 1024, i16 1152, i16 1280, i16 1408, i16 1536, i16 1664, i16 1792, i16 1920, i16 2048], align 16
@ff_atrac3p_sf_tab = local_unnamed_addr constant [64 x float] [float f0x3CE42A00, float 3.509140e-02, float f0x3D351800, float f0x3D642A00, float 7.018280e-02, float f0x3DB51800, float f0x3DE42A00, float f0x3E0FBC00, float f0x3E351800, float f0x3E642A00, float f0x3E8FBC00, float f0x3EB51800, float f0x3EE42A00, float f0x3F0FBC00, float f0x3F351800, float f0x3F642A00, float f0x3F8FBC00, float f0x3FB51800, float f0x3FE42A00, float f0x400FBC00, float f0x40351800, float f0x40642A00, float f0x408FBC00, float f0x40B51800, float f0x40E42A00, float f0x410FBC00, float f0x41351800, float f0x41642A00, float f0x418FBC00, float f0x41B51800, float f0x41E42A00, float f0x420FBC00, float f0x42351800, float f0x42642A00, float f0x428FBC00, float f0x42B51800, float f0x42E42A00, float f0x430FBC00, float f0x43351800, float f0x43642A00, float f0x438FBC00, float f0x43B51800, float f0x43E42A00, float f0x440FBC00, float 7.243750e+02, float f0x44642A00, float f0x448FBC00, float 1.448750e+03, float f0x44E42A00, float 2.299750e+03, float 2.897500e+03, float f0x45642A00, float 4.599500e+03, float 5.795000e+03, float 7.301250e+03, float 9.199000e+03, float 1.159000e+04, float 1.460250e+04, float 1.839800e+04, float 2.318000e+04, float 2.920500e+04, float 3.679600e+04, float 4.636000e+04, float 5.841000e+04], align 16
@ff_atrac3p_mant_tab = local_unnamed_addr constant [8 x float] [float 0.000000e+00, float f0x3F3F7E00, float f0x3EE5CC00, float f0x3EA42400, float f0x3E50E600, float f0x3E193200, float f0x3D944200, float f0x3D11E600], align 16
@sine_table = internal unnamed_addr global [2048 x float] zeroinitializer, align 16
@hann_window = internal global [256 x float] zeroinitializer, align 16
@amp_sf_tab = internal unnamed_addr global [64 x float] zeroinitializer, align 16
@subband_to_powgrp = internal unnamed_addr constant [16 x i8] c"\00\01\01\02\02\02\03\03\03\03\03\04\04\04\04\04", align 16
@noise_tab = internal unnamed_addr constant [1024 x float] [float f0xBC5E7FFE, float f0xBD652000, float f0x3C8AFFFE, float f0xBE184800, float f0xBE873C00, float f0xBDCAA000, float f0x3E83B400, float f0x3CA48002, float f0xBF38EC00, float f0xBEE31400, float f0xBE6B6000, float f0x3E2C6000, float f0x3EF02400, float f0x3D725FFF, float f0xBE1B7000, float f0x3ED37400, float f0xBC530002, float f0x3E08D000, float f0x3EDF0400, float f0xBDC33000, float f0xBF159000, float f0x3EC90C00, float f0xBDAAE000, float f0xBE831800, float f0x3E69F800, float f0x3E853000, float f0xBF27E800, float f0x3E310800, float f0xBDB1A000, float f0xBD552000, float f0x3D958000, float f0xBE92C400, float f0xBEB75400, float f0x3D863000, float f0xBDC04000, float f0x3E581000, float f0xBE912400, float f0xBF395A00, float f0x3D4EE000, float f0xBDD9D000, float f0xBE411000, float f0x3E983000, float f0x3E540000, float f0xBE988800, float f0xBEC0B000, float f0x3EF59C00, float f0xBDCC5000, float f0x3EA72000, float f0xBE95C000, float f0xBE909400, float f0x3E854400, float f0xBEB92000, float f0x3E61B800, float f0xBD03FFFF, float f0xBEBED000, float f0xBD1A0001, float f0x3DCAF001, float f0x3E6E7000, float f0x3E45D800, float f0x3E140000, float f0xBCAF3FFF, float f0xBE49C000, float f0x3EA17400, float f0xBE2B7000, float f0x3EB35C00, float f0xBEB69000, float f0xBF294A00, float -7.019040e-03, float f0x3E560000, float f0x3E896800, float f0xBEAC9400, float f0xBD3B1FFF, float f0x3E010800, float f0x3DD2A000, float f0x3D95F000, float f0xBE3B3000, float f0x3EC31400, float f0x3E5A2000, float f0x3D3A0001, float f0x3C3D7FFE, float f0xBE872000, float f0xBCC04001, float f0xBE629000, float f0x3E986000, float f0xBEB98400, float f0xBEA05400, float f0xBE0F0800, float f0xBDE6F000, float f0xBE470000, float f0x3EB09800, float 2.343750e-02, float f0x3E60E800, float -2.777100e-02, float f0xBF2D4200, float f0xBDB85000, float f0x3E11C000, float f0xBE8DD000, float f0x3F03A400, float f0xBD4EBFFF, float f0x3EF77000, float f0x3EBE4C00, float f0xBF1BAA00, float f0x3E3FC800, float f0xBE1B9000, float 6.378170e-03, float f0x3CE7FFFF, float f0xBE1FF000, float f0x3F1B4000, float f0x3E5F8000, float f0x3D82C000, float f0xBEA32400, float f0x3DB49000, float f0x3E1E3000, float f0xBD8FB000, float f0xBDA70000, float f0xBED1C000, float f0xBECBB400, float f0xBDEFD000, float f0x3E61D000, float f0x3E3D1800, float f0xBE30B800, float f0x3D1A0001, float f0xBD7DBFFF, float 4.333500e-03, float f0x3DF96000, float f0x3EAE2400, float f0x3E832000, float -5.294800e-02, float f0x3ED21800, float f0x3E2C9800, float f0xBF430A00, float f0x3E0DC800, float f0xBE46D800, float f0xBE5C6800, float f0xBEE36400, float f0xBDA71FFF, float f0xBE905C00, float f0xBC997FFE, float f0x3E1EF800, float f0xBEBFB000, float f0xBEE5B000, float f0x3EDCA800, float f0xBE7D6800, float f0x3EFF4400, float f0x3E182800, float f0x3EC36000, float f0x3E525800, float f0xBEC89400, float f0xBF289400, float f0xBEDFD400, float f0x3E058000, float f0xBD515FFF, float f0x3ECC9400, float f0x3E5BA000, float -4.861450e-02, float f0x3EAC5000, float 1.058960e-01, float f0xBF618000, float f0xBE9DD000, float f0x3EC58400, float f0x3E99D800, float f0x3EC6D800, float f0x3DBAC000, float f0xBEBAC400, float f0xBC868002, float f0xBE6BD800, float f0x3E856C00, float f0x3E412000, float f0xBE5FF000, float f0xBE36E800, float f0xBE985800, float f0x3DC84000, float f0x3DDD4FFF, float f0xBF041C00, float 7.629400e-04, float f0x3E07C800, float f0x3DE32000, float f0xBE76A000, float f0x3E7F9000, float f0x3C620005, float f0xBD299FFF, float f0xBD4A4000, float f0x3F12EE00, float f0x3E8C5800, float f0x3E8D4000, float f0x3EE67800, float f0xBEA6E000, float f0x3DE49000, float f0xBC1F0000, float f0x3E94F400, float f0x3D098001, float f0xBF359200, float f0x3D47FFFF, float f0x3EDEB800, float f0x3D9E2000, float f0xBE8D1400, float f0xBC8EC002, float f0xBDAC5000, float -4.028320e-02, float f0xBF074C00, float f0xBD962000, float f0x3D544001, float f0x3E5AC000, float f0xBE402800, float f0x3D909000, float f0xBCF67FFF, float f0x3EA73C00, float f0x3E8A5C00, float f0xBE8F6000, float f0x3E33E800, float f0x3D08C000, float f0x3E9AD800, float f0xBD20A001, float f0x3EA4BC00, float f0xBE730800, float f0x3DAF9FFF, float f0xBEC3F000, float f0x3DBC5000, float -7.238770e-02, float f0x3E37B800, float f0xBF034600, float f0xBE80C000, float f0x3E4AA800, float f0xBE449000, float f0x3E297800, float f0x3ED96000, float f0x3EC85800, float f0xBCEAFFFE, float f0x3E382000, float f0x3E7F0000, float f0xBF440E00, float f0xBE56A000, float f0x3F1C3200, float f0x3EBD8000, float f0x3EBCB800, float f0xBD37C000, float f0x3DDAB001, float f0xBE23C800, float f0xBD5A4000, float f0x3E91BC00, float f0xBD837FFF, float f0xBEBD6000, float f0xBE8F6800, float f0xBDF0F000, float f0x3D30A001, float -8.038330e-02, float f0x3D481FFF, float f0xBCFB4002, float -4.272500e-04, float f0x3EAF9000, float -9.887700e-03, float f0x3EB26000, float f0x3EA67C00, float f0xBE26A000, float f0x3EC3F000, float f0x3D04C001, float f0x3DFE5001, float f0xBE12C000, float f0xBEB2B400, float f0xBE3BA800, float f0x3E96A400, float f0x3EE2BC00, float f0x3F407000, float f0xBF2C2600, float f0xBDF96000, float f0x3E8EEC00, float f0xBE989C00, float f0x3E4B6800, float f0x3E9A0C00, float f0x3E684000, float -3.663330e-01, float f0xBEA69400, float -5.755310e-01, float f0xBE2A6800, float f0x3EE05000, float f0x3DAAA000, float f0x3E234000, float f0x3E87C400, float f0xBE783800, float f0xBDF0E001, float f0xBE2C5000, float f0xBE120800, float f0x3EED4800, float f0x3DF1C000, float f0xBF0E1E00, float f0xBCCE8000, float f0xBE128800, float 4.486080e-03, float f0x3CE14001, float f0xBE9C6400, float f0x3F35AC00, float f0x3EE6F400, float f0x3F2A1600, float f0xBF2EBC00, float f0xBDFFF000, float f0x3DBB5000, float f0xBE582800, float f0xBE73A000, float f0x3F4CA800, float f0xBEB44000, float f0xBE7FA000, float f0x3E3FB000, float f0xBE436000, float f0x3D98C000, float f0x3D9C2000, float f0xBE935C00, float f0xBEBE1000, float f0xBE488000, float f0xBC913FFE, float f0xBE2B3000, float f0x3E058800, float f0x3E164000, float f0x3ED8FC00, float f0x3D12C001, float f0x3DEA2000, float f0x3D52C001, float f0x3EE4E000, float f0x3DB79000, float f0x3C600005, float f0xBF0B9200, float f0xBE01F800, float f0x3E58D800, float f0x3D49C000, float f0x3E9D0800, float f0xBDE1E000, float f0x3E484000, float f0xBE8E0800, float f0x3E6BF800, float f0x3E1F4800, float f0xBE45A000, float f0xBE83BC00, float f0x3E364800, float f0xBD12A000, float f0xBD4F8000, float f0xBD8E0000, float f0xBDC29000, float f0xBDA03000, float f0x3E74A000, float f0xBEA35400, float 3.073120e-02, float -4.150390e-03, float f0x3F1CF800, float f0x3EBE5800, float f0xBE09A800, float f0xBE1F1800, float f0xBE44C800, float f0xBEC20C00, float f0x3E4CB800, float f0x3CD77FFF, float f0xBE00C000, float f0x3E84C000, float -2.447510e-02, float f0x3E97B400, float f0xBED08C00, float f0xBE318000, float f0x3E78F000, float f0xBDD94000, float f0x3E17D800, float f0x3DB41000, float f0xBE3FF000, float -5.572510e-02, float f0xBD45FFFF, float f0x3DD68000, float f0xBE94A000, float f0xBF2D4800, float f0xBE903C00, float f0xBED57000, float f0x3D5DBFFF, float f0xBE6E7000, float f0x3DC3B000, float f0xBDB7B000, float f0xBE1AC000, float f0x3E027000, float f0x3EB84000, float f0x3E943800, float f0x3E9D2400, float f0x3E755000, float f0x3D8ED001, float f0xBE9FBC00, float f0xBE3CF000, float f0x3E642800, float f0xBE5D3000, float f0x3E70E000, float f0xBF1E5000, float f0xBE054000, float f0x3E873C00, float f0x3EF24800, float f0xBE876000, float f0x3EC67000, float f0x3E31B000, float f0xBE85A800, float -2.586670e-01, float f0xBDFB6000, float f0xBE983C00, float f0x3D9D7000, float f0x3E3E5800, float f0xBDB5E000, float f0x3E9FAC00, float 5.313110e-02, float f0xBDDEF000, float f0xBE189800, float f0xBE649800, float f0xBDAEE000, float f0x3E4AE000, float f0x3E4A1000, float f0xBE41D000, float f0x3E94C800, float f0x3E82D800, float f0xBEF8D400, float f0x3E403000, float f0x3C5C7FFE, float f0x3EB2A000, float f0x3E5C7800, float f0x3E4B5800, float f0x3E3F1800, float f0xBC647FFD, float f0xBDB9A000, float f0xBEC69000, float f0x3E8B1000, float f0xBE50B000, float f0xBEA47400, float f0xBE74A000, float f0x3E8ABC00, float f0x3E7F8000, float f0x3DA24000, float f0x3D992FFF, float f0xBF026C00, float f0x3DD15000, float f0x3F156A00, float f0xBE47B800, float f0xBE3E1000, float f0xBC3EFFFB, float f0x3EF1A400, float f0x3E65B000, float f0xBEC5D000, float -3.732300e-02, float f0xBDBC0001, float f0x3D8F3000, float f0x3E1AB000, float f0x3E530000, float f0xBD747FFF, float f0xBED62000, float f0x3DFA8000, float f0xBD3F5FFF, float f0xBD51A000, float f0xBDEC0001, float f0xBF04BC00, float f0xBD26FFFF, float f0x3EE2BC00, float f0xBF241000, float f0x3E2E4800, float f0x3CB73FFD, float f0x3E69F800, float f0xBE6DB800, float f0xBEA5A800, float f0xBE101000, float f0xBE980400, float f0xBE4BB000, float f0x3CE34001, float f0xBE56B000, float f0xBF059C00, float f0xBE45A000, float f0xBD954FFF, float f0x3EFB2800, float f0xBE646000, float 5.642700e-02, float f0x3E066000, float f0xBE553000, float f0xBF55FE00, float f0xBDA79000, float f0x3E893400, float -9.155300e-04, float f0xBDC1AFFF, float f0x3E2F0000, float f0xBE8A5800, float f0x3E9AFC00, float f0x3D612000, float f0x3DC3E000, float f0xBDAFF000, float f0x3CAE8000, float f0x3EB7F800, float f0x3E5E8000, float f0xBE1DA800, float f0xBD4F0000, float f0x3CDEBFFF, float f0x3E26F000, float f0x3EDD4000, float f0x3DD18000, float f0xBED10000, float f0x3E5DA800, float f0x3DACC001, float f0xBDE44001, float f0xBECC9C00, float f0xBD662000, float f0xBDD16000, float f0xBF1BC000, float f0x3EACAC00, float f0xBD81E000, float f0xBEF28800, float f0xBEA83400, float 5.242920e-02, float f0x3E491000, float f0xBE43F800, float f0xBF2DD400, float f0x3E25B000, float f0x3D524001, float f0xBE643000, float f0x3DC58FFF, float f0x3E78B800, float f0xBEE67000, float f0x3DB45000, float f0x3E0FE800, float f0x3E67A000, float f0xBC240005, float f0x3EBA2400, float f0xBE4B6800, float f0xBE9B7800, float f0xBE76F800, float f0xBF131A00, float f0x3E87AC00, float f0x3D320000, float f0xBDC8A001, float f0xBEF44C00, float f0xBE731800, float f0x3E3FE000, float f0x3DB6D001, float -2.795410e-02, float 3.051760e-03, float f0xBDB23001, float f0xBEC63400, float f0x3D03FFFF, float f0x3DE01000, float f0xBED69000, float f0xBC84BFFE, float f0xBEF0F400, float f0x3EC27C00, float f0xBE5D7000, float f0x3EF5A400, float f0xBE4D4800, float f0xBF201600, float f0xBE89C400, float f0xBCEBC002, float 6.713870e-03, float f0xBE94D800, float f0xBE7CC800, float f0xBE210000, float f0xBE856800, float f0x3E997000, float f0x3E908400, float f0xBDB82001, float f0xBE2B8000, float f0xBEEF6800, float f0xBE805800, float f0xBE80F000, float f0xBEEB2C00, float f0x3D6EBFFF, float f0x3E948400, float f0x3E742000, float f0xBE381000, float f0x3E89E400, float f0x3DDB1000, float f0xBD8C4001, float f0xBE2F6000, float f0xBDD78000, float f0xBF0DCA00, float f0xBED89C00, float f0xBD9BD000, float f0x3E79A800, float f0x3EC59000, float f0x3E2CE000, float f0x3E88F800, float f0x3E313000, float f0x3EB75800, float f0xBE624000, float f0xBE9D3400, float f0xBE91E800, float f0xBD310000, float f0x3E1BD800, float f0xBE2ED000, float f0xBEC96400, float f0x3D0CE000, float f0xBDDD6000, float f0xBE9CA000, float f0x3E876C00, float f0xBD97D000, float f0x3E0BA800, float f0xBC2E0003, float f0x3E8F5800, float f0x3D342000, float f0xBD63A000, float f0xBF11C000, float f0x3D09C000, float -9.490970e-03, float f0x3F06C400, float f0xBEE2F800, float f0x3E90F000, float f0xBD614001, float f0xBE6EB800, float f0xBE98F000, float f0xBD51DFFF, float f0x3E896000, float f0xBEB46C00, float f0xBE9EB000, float f0x3EB16400, float f0xBE4A8000, float f0x3EE45400, float f0x3E0D0000, float f0x3EE83C00, float f0x3E4C6800, float f0x3EDA8800, float f0x3E210000, float 1.281740e-03, float f0x3E734800, float f0x3ED1DC00, float f0x3E80D800, float -7.324220e-03, float f0xBDFE1001, float f0xBEDE5000, float -4.028320e-03, float f0x3EAF5400, float f0x3EB9AC00, float f0x3E409800, float f0xBDBE8000, float f0xBDD2E000, float f0x3D62A000, float f0xBEA21000, float f0x3E12D000, float f0x3EB36800, float f0x3EA69C00, float f0x3D6A9FFF, float f0xBDF66000, float f0xBE84D400, float -2.031250e-01, float f0xBE28E000, float f0xBEEBC800, float f0xBDA3F000, float f0x3F01FA00, float f0x3E259000, float f0x3E919C00, float f0x3DA60000, float f0xBE43A000, float f0x3EC59400, float f0xBE27F000, float f0xBE825400, float f0x3E4FB000, float f0xBE544800, float f0xBD814000, float f0x3EA8A400, float f0x3E19F000, float f0xBD5AC000, float f0x3E9C1800, float f0xBDEE9001, float f0x3EC29C00, float f0xBE4D7000, float f0x3EDE8C00, float f0x3C3C8003, float f0x3EB71000, float f0xBE06A000, float f0x3F2CC600, float f0x3D557FFF, float f0x3E8EEC00, float f0xBEC9E400, float f0x3F40CA00, float f0xBE08E000, float f0x3E7A6800, float f0x3ED85000, float f0xBF28B800, float -5.462650e-03, float f0xBD0F0000, float f0xBE0BE000, float f0xBDA9E000, float f0xBEE9D000, float f0x3E8B3400, float f0x3E026000, float f0x3F1C8A00, float f0x3DD60000, float f0xBE93A400, float 9.155300e-04, float f0x3E7C1800, float f0x3E065800, float f0x3D68E001, float f0x3E31B800, float f0x3ED73800, float f0x3DAE6000, float f0x3E7B4000, float f0x3E421000, float f0xBE43A800, float f0xBE19F800, float f0x3CBF4001, float f0x3F0CC400, float f0x3EA57C00, float f0xBE24E800, float -3.054810e-02, float f0x3EDF3400, float f0x3E314000, float f0x3F1C4C00, float f0x3E7D4000, float f0x3EAAAC00, float f0x3E1C1000, float f0x3E1FA000, float f0x3EBA8000, float f0xBE9BB000, float f0xBE083800, float 4.272460e-03, float f0x3D2AE000, float f0xBEA9E000, float f0x3EAF3000, float f0xBDFF4000, float f0xBCE28002, float f0x3D71DFFF, float f0xBEA0F400, float f0x3E294800, float f0x3EB0DC00, float f0xBD06E001, float f0x3E004800, float f0xBDFC3000, float f0xBE06E000, float 4.757690e-02, float f0xBEE6E400, float f0xBE437000, float f0x3EB4F400, float f0xBE6DF800, float f0xBEB01000, float f0x3DE6B000, float f0xBE213000, float f0x3D580001, float f0x3F3FDA00, float f0x3E5C3800, float f0x3DAE6000, float f0xBED90C00, float f0xBE480000, float f0x3EB4B400, float f0x3E819000, float f0x3E211800, float f0xBF340800, float f0xBE5D1800, float f0x3EB64C00, float f0x3E10B800, float f0x3DF02001, float f0x3E225800, float f0xBE7BE000, float f0x3D8FC000, float f0x3CAE3FFF, float f0x3E01A000, float f0x3D82E000, float f0xBDFBBFFF, float f0x3E1E2000, float f0xBEF3EC00, float f0x3D7DBFFF, float f0x3F16FE00, float f0xBE1B2800, float f0xBD13A000, float f0xBEE6B400, float f0xBC88FFFE, float f0xBEF0A000, float f0x3E83D800, float f0x3E393000, float f0x3D887000, float f0x3E07B800, float f0x3F2DA400, float f0x3DE8E001, float f0x3DE7F000, float f0xBD3CE000, float f0xBD9F9000, float -3.654480e-01, float f0xBD8A3001, float f0xBEA1C400, float f0x3E253000, float f0x3ED6F400, float f0x3DE2C000, float f0xBEBCE000, float f0x3E9E8800, float f0xBEC1EC00, float 5.850830e-01, float 3.936770e-03, float f0x3DFCB000, float f0x3D0C3FFF, float f0xBE5E8000, float f0xBE037800, float f0xBEF08C00, float 5.868530e-02, float f0xBE801400, float f0x3E8C5400, float f0x3F270400, float f0xBEB04800, float f0xBE1B7000, float f0x3E0FF000, float f0x3EAB8C00, float f0x3E939800, float f0x3DCB3000, float f0x3EB01400, float f0x3E0BD800, float f0xBE71C000, float 8.636470e-03, float f0x3CD73FFD, float f0xBE43C800, float f0x3E4A8000, float f0xBD93BFFF, float f0x3D9FF000, float 3.454590e-02, float f0xBD0C0001, float 3.356900e-04, float f0xBE6C8000, float f0x3E3F3800, float f0x3D6D8000, float f0x3D1C3FFF, float f0xBD30DFFF, float f0x3D60C001, float f0x3DB0D000, float f0x3F0F3C00, float f0xBD820000, float f0x3DD3A000, float f0x3E819000, float f0x3D6FBFFF, float f0x3DFAD000, float f0xBE82C800, float f0xBEAF6C00, float f0xBEBA9000, float f0xBE5A2800, float f0xBD50A001, float 2.777100e-02, float f0x3D9C1000, float f0xBE594000, float f0xBDBF0000, float f0x3E42C800, float f0xBECFC400, float f0xBC437FFD, float f0x3E4B3800, float f0xBEB4EC00, float f0xBD978000, float f0x3E4DE000, float f0x3DB07000, float f0xBEE33400, float f0x3DE9E000, float f0x3E7A6800, float f0xBE298800, float f0xBD502001, float -1.406860e-02, float f0x3E8ED000, float f0xBE3F6800, float f0x3D991000, float f0x3D0D6000, float f0xBECB7000, float f0x3E5CA800, float f0xBE66C000, float f0xBECB0400, float f0xBD4C6000, float f0xBF139E00, float f0x3D82E000, float f0x3F1EC600, float f0xBE09F000, float f0x3D320000, float f0xBE5FE000, float f0xBCE48002, float f0x3F045800, float f0xBE8D4000, float f0x3EC7B400, float f0x3DC9E000, float -7.385250e-03, float f0x3EA05800, float 4.882800e-04, float f0xBEEE7400, float f0x3E973400, float f0xBDCD0001, float f0xBE8EA000, float f0x3D134001, float f0x3E804000, float f0xBF3EF000, float f0xBE81CC00, float f0xBD074000, float f0x3E9FB000, float f0x3C80BFFF, float f0x3EEF2800, float f0x3E5D1800, float f0x3D94B000, float f0xBED7B800, float f0xBF09FC00, float f0xBE0C0800, float f0xBE29B000, float f0xBEB06800, float f0x3DFD2000, float f0xBDE50FFF, float 9.674070e-03, float f0x3EB10800, float f0xBD6C0001, float f0x3EB26C00, float f0x3E34B000, float f0xBEC9B400, float f0x3DD3BFFF, float f0x3E3A8800, float f0x3E53F000, float f0x3F175200, float f0xBDECC001, float f0xBD974000, float f0x3DD4F000, float f0x3EB57000, float f0xBE6A2000, float f0x3C930002, float f0x3E33D000, float f0xBE332800, float f0x3DF8B000, float f0x3DDFD000, float -1.000000e+00, float f0xBC620005, float f0x3E597800, float f0xBE8A6C00, float f0x3E8BE000, float f0xBEBDC800, float f0x3ED3BC00, float f0xBECD1400, float 6.896970e-03, float f0x3E86C400, float f0x3EC90C00, float f0x3F272A00, float f0x3ED52000, float f0xBE0E7000, float f0x3F48A400, float f0xBE9E6C00, float f0x3E4E8800, float f0xBEC99000, float f0x3F70B200, float f0xBE767000, float f0x3D63A000, float f0xBE7B3800, float f0xBD5F0000, float f0xBF447E00, float f0xBE466800, float f0xBDE22000, float f0xBE338800, float f0x3E23E800, float 2.188110e-02, float f0x3E32D800, float f0xBD31DFFF, float f0xBF115A00, float f0xBED1DC00, float f0x3E88A400, float f0x3DEF9FFF, float -3.448490e-03, float f0xBD5D0001, float f0x3EBFA000, float f0xBED07C00, float f0xBE19F000, float f0xBC87FFFF, float f0x3D2BE000, float f0xBD3AC000, float f0xBE04D000, float f0x3DF60000, float f0x3DAC7000, float f0xBDE56000, float f0x3EB41800, float f0x3DD27001, float f0xBE838400, float f0x3EF80C00, float f0x3D042000, float f0x3E917400, float f0xBE3F8000, float f0x3EB9C400, float -3.280640e-02, float f0x3EA56400, float f0x3E307800, float f0x3EF72400, float f0x3E9F4C00, float f0xBD4A9FFF, float f0x3E02D000, float f0x3F06E000, float f0x3DD12000, float f0x3D73DFFF, float f0x3D75C000, float f0x3E4E4800, float 7.446290e-03, float f0x3E8BDC00, float f0x3E79A000, float f0x3ECB2000, float f0x3C8B8001, float f0xBEB5D400, float f0x3DE8C000, float f0xBE0AD000, float f0x3EFA4400, float f0xBE1DE000, float f0xBDBB6000, float f0xBCD63FFE, float f0x3EECC800, float f0xBF38F600, float f0x3E64B000, float f0x3E743800, float f0xBE838400, float f0xBDAE6000, float f0xBCA8FFFE, float f0xBEB09C00, float f0xBCBC4002, float f0xBF4DCA00, float f0xBDA56000, float f0xBE01F000, float f0xBD8D4000, float f0x3E76C800, float f0xBEB68800, float f0xBDC3BFFF, float f0x3E95C800, float f0x3E6CE000, float f0xBE2B4800, float 0.000000e+00, float f0xBE783000, float f0x3E9E3400, float f0x3E971000, float f0xBE560000, float f0x3E2EB000, float f0xBD9D2000, float f0xBE136800, float 5.572510e-02, float f0x3E52F800, float f0xBF03F800, float f0xBD01C001, float f0xBEFA1000, float f0xBE512800, float f0x3E10D800, float f0x3D950001, float f0xBF444600, float f0xBE664800, float f0x3E537800, float f0x3D057FFF, float f0x3A5FFFDA, float f0x3CF90001, float f0x3EF37C00, float f0x3EC45C00], align 16
@pwc_levs = internal unnamed_addr constant [16 x float] [float 3.968750e+00, float 3.156250e+00, float 2.500000e+00, float 2.000000e+00, float 1.593750e+00, float 1.250000e+00, float 1.000000e+00, float 7.812500e-01, float 6.250000e-01, float 5.000000e-01, float 4.062500e-01, float 3.125000e-01, float 2.500000e-01, float 1.875000e-01, float 1.562500e-01, float 0.000000e+00], align 16
@subband_to_qu = internal unnamed_addr constant [17 x i8] c"\00\08\0C\10\12\14\16\17\18\19\1A\1B\1C\1D\1E\1F ", align 16
@ff_sine_64 = external global [64 x float], align 16
@ff_sine_128 = external global [128 x float], align 16
@mod23_lut = internal unnamed_addr constant [26 x i32] [i32 23, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 0], align 16
@ipqf_coeffs1 = internal unnamed_addr constant [12 x [16 x float]] [[16 x float] [float f0xB51C9856, float f0xB5585ECE, float f0xB4E183CC, float f0xB33EB2F2, float f0x330A90F6, float f0x3317A62C, float f0x325980ED, float f0x3730713D, float f0xB7469E7A, float f0x352134B8, float f0x35C06267, float f0x361B146B, float f0x365A9264, float f0x369AFEFD, float f0x36D664C0, float f0x36EBE5CB], [16 x float] [float f0xB719B7B4, float f0xB73035C3, float f0xB704E5A2, float f0xB68BF65B, float f0xB630BDFC, float f0xB5CF231A, float f0xB51975F9, float f0x35F31833, float f0x37C5641E, float f0x37E9401D, float f0x38077C5B, float f0x381B0F13, float f0x382E617A, float f0x383E2924, float f0x38411F50, float f0x384BC85F], [16 x float] [float f0xB8873124, float f0xB88F4004, float f0xB8994351, float f0xB89FA6D4, float f0xB89CF931, float f0xB8933CE8, float f0xB8829F16, float f0xB8746769, float f0xB86C1FB9, float f0xB8513FB4, float f0xB81561AA, float f0xB79B7731, float f0x35DF923B, float f0x37DAFDEE, float f0x385FF6AA, float f0x38A970D7], [16 x float] [float f0xBA0ED6A6, float f0xBA09B923, float f0xBA025E1A, float -4.577800e-04, float f0xB9D4ED06, float f0xB9B3D6CC, float f0xB98CDB63, float -1.824890e-04, float f0xB8B0CE79, float f0x37D26560, float f0x391438EB, float f0x398BB8F6, float f0x39D16D59, float f0x3A0D5EC5, float f0x3A335DCF, float f0x3A59D33F], [16 x float] [float f0xBAC19CB3, float f0xBAA831F4, float f0xBA8A805E, float f0xBA5123F0, float f0xBA051F7F, float f0xB945B7F5, float f0x39256063, float f0x3A0A54FB, float f0x3A70CFB1, float f0x3AADD928, float f0x3AE4F9DC, float f0x3B0E928A, float f0x3B2AD651, float f0x3B46EBB4, float f0x3B626C44, float f0x3B7CE995], [16 x float] [float f0xBB16B372, float f0xBABD355E, float f0xBA01263C, float f0x3A105C2C, float f0x3ADC9496, float f0x3B3E01F8, float f0x3B897077, float f0x3BB63D06, float f0x3BE529D5, float f0x3C0AF995, float f0x3C242694, float f0x3C3DF42F, float f0x3C5837B1, float f0x3C72C44C, float f0x3C86B5A8, float f0x3C93FE2B], [16 x float] [float f0xBD0D0293, float f0xBD0C6AB1, float f0xBD0B3C3B, float f0xBD09799E, float f0xBD072692, float f0xBD044800, float f0xBD00E3EC, float f0xBCFA02C7, float f0xBCF15131, float f0xBCE7C487, float f0xBCDD70AC, float f0xBCD26A7D, float f0xBCC6C825, float f0xBCBAA0D7, float f0xBCAE0C7A, float f0xBCA12352], [16 x float] [float f0xBB487418, float f0xBB73D09F, float f0xBB8C6761, float f0xBB9BBEDB, float f0xBBA7FEFB, float f0xBBB13F38, float f0xBBB79CEC, float f0xBBBB3EB2, float f0xBBBC3D15, float f0xBBBADCCC, float f0xBBB73D30, float f0xBBB195EE, float f0xBBAA1D18, float f0xBBA10B14, float f0xBB969994, float f0xBB8AFF06], [16 x float] [float f0xBAD6A7A2, float f0xBAE75DF2, float f0xBAF3E79C, float f0xBAFC5777, float f0xBB0068ED, float f0xBB00CC8D, float f0xBAFEF172, float f0xBAF8E807, float -1.838080e-03, float f0xBAE56604, float f0xBAD80552, float f0xBAC8CFE1, float f0xBAB81D96, float f0xBAA64563, float f0xBA93900D, float f0xBA806076], [16 x float] [float f0xBA11500A, float f0xBA116B40, float f0xBA0F9C8F, float f0xBA0BA989, float f0xBA060CA6, float f0xB9FE1A0C, float f0xB9EDCFB9, float f0xB9DED21E, float f0xB9C1AF9D, float f0xB9B1DEF6, float f0xB99D4BB6, float f0xB9883E3A, float f0xB96664BF, float f0xB93DF637, float f0xB91A0CCE, float f0xB8EC8BFD], [16 x float] [float f0xB88686DE, float f0xB8817F12, float f0xB8639D98, float f0xB845B18F, float f0xB8340D24, float f0xB8259470, float f0xB8186C94, float f0xB7F90975, float f0xB850D32D, float f0xB82E63EB, float f0xB80E09FE, float f0xB7DE96F0, float f0xB7A670E1, float f0xB778205C, float f0xB75C4E01, float f0xB7266D97], [16 x float] [float f0xB6D35C2D, float f0xB6F3F1E8, float f0xB7490F1D, float f0xB79186B9, float f0xB7A6FE2F, float f0xB7B31624, float f0xB7B83AF6, float f0xB74CBDF6, float f0xB735E1B5, float f0x34F8919C, float f0x350D2AB9, float f0x349535FA, float f0xB47DEFD0, float f0xB5924480, float f0xB57631B6, float -5.226820e-07]], align 16
@ipqf_coeffs2 = internal unnamed_addr constant [12 x [16 x float]] [[16 x float] [float 5.226820e-07, float f0x357631B6, float f0x35924480, float f0x347DEFD0, float f0xB49535FA, float f0xB50D2AB9, float f0xB4F8919C, float f0x3735E1B5, float f0xB74CBDF6, float f0xB7B83AF6, float f0xB7B31624, float f0xB7A6FE2F, float f0xB79186B9, float f0xB7490F1D, float f0xB6F3F1E8, float f0xB6D35C2D], [16 x float] [float f0x37266D97, float f0x375C4E01, float f0x3778205C, float f0x37A670E1, float f0x37DE96F0, float f0x380E09FE, float f0x382E63EB, float f0x3850D32D, float f0xB7F90975, float f0xB8186C94, float f0xB8259470, float f0xB8340D24, float f0xB845B18F, float f0xB8639D98, float f0xB8817F12, float f0xB88686DE], [16 x float] [float f0x38EC8BFD, float f0x391A0CCE, float f0x393DF637, float f0x396664BF, float f0x39883E3A, float f0x399D4BB6, float f0x39B1DEF6, float f0x39C1AF9D, float f0xB9DED21E, float f0xB9EDCFB9, float f0xB9FE1A0C, float f0xBA060CA6, float f0xBA0BA989, float f0xBA0F9C8F, float f0xBA116B40, float f0xBA11500A], [16 x float] [float f0x3A806076, float f0x3A93900D, float f0x3AA64563, float f0x3AB81D96, float f0x3AC8CFE1, float f0x3AD80552, float f0x3AE56604, float 1.838080e-03, float f0xBAF8E807, float f0xBAFEF172, float f0xBB00CC8D, float f0xBB0068ED, float f0xBAFC5777, float f0xBAF3E79C, float f0xBAE75DF2, float f0xBAD6A7A2], [16 x float] [float f0x3B8AFF06, float f0x3B969994, float f0x3BA10B14, float f0x3BAA1D18, float f0x3BB195EE, float f0x3BB73D30, float f0x3BBADCCC, float f0x3BBC3D15, float f0xBBBB3EB2, float f0xBBB79CEC, float f0xBBB13F38, float f0xBBA7FEFB, float f0xBB9BBEDB, float f0xBB8C6761, float f0xBB73D09F, float f0xBB487418], [16 x float] [float f0x3CA12352, float f0x3CAE0C7A, float f0x3CBAA0D7, float f0x3CC6C825, float f0x3CD26A7D, float f0x3CDD70AC, float f0x3CE7C487, float f0x3CF15131, float f0xBCFA02C7, float f0xBD00E3EC, float f0xBD044800, float f0xBD072692, float f0xBD09799E, float f0xBD0B3C3B, float f0xBD0C6AB1, float f0xBD0D0293], [16 x float] [float f0xBC93FE2B, float f0xBC86B5A8, float f0xBC72C44C, float f0xBC5837B1, float f0xBC3DF42F, float f0xBC242694, float f0xBC0AF995, float f0xBBE529D5, float f0x3BB63D06, float f0x3B897077, float f0x3B3E01F8, float f0x3ADC9496, float f0x3A105C2C, float f0xBA01263C, float f0xBABD355E, float f0xBB16B372], [16 x float] [float f0xBB7CE995, float f0xBB626C44, float f0xBB46EBB4, float f0xBB2AD651, float f0xBB0E928A, float f0xBAE4F9DC, float f0xBAADD928, float f0xBA70CFB1, float f0x3A0A54FB, float f0x39256063, float f0xB945B7F5, float f0xBA051F7F, float f0xBA5123F0, float f0xBA8A805E, float f0xBAA831F4, float f0xBAC19CB3], [16 x float] [float f0xBA59D33F, float f0xBA335DCF, float f0xBA0D5EC5, float f0xB9D16D59, float f0xB98BB8F6, float f0xB91438EB, float f0xB7D26560, float f0x38B0CE79, float -1.824890e-04, float f0xB98CDB63, float f0xB9B3D6CC, float f0xB9D4ED06, float -4.577800e-04, float f0xBA025E1A, float f0xBA09B923, float f0xBA0ED6A6], [16 x float] [float f0xB8A970D7, float f0xB85FF6AA, float f0xB7DAFDEE, float f0xB5DF923B, float f0x379B7731, float f0x381561AA, float f0x38513FB4, float f0x386C1FB9, float f0xB8746769, float f0xB8829F16, float f0xB8933CE8, float f0xB89CF931, float f0xB89FA6D4, float f0xB8994351, float f0xB88F4004, float f0xB8873124], [16 x float] [float f0xB84BC85F, float f0xB8411F50, float f0xB83E2924, float f0xB82E617A, float f0xB81B0F13, float f0xB8077C5B, float f0xB7E9401D, float f0xB7C5641E, float f0x35F31833, float f0xB51975F9, float f0xB5CF231A, float f0xB630BDFC, float f0xB68BF65B, float f0xB704E5A2, float f0xB73035C3, float f0xB719B7B4], [16 x float] [float f0xB6EBE5CB, float f0xB6D664C0, float f0xB69AFEFD, float f0xB65A9264, float f0xB61B146B, float f0xB5C06267, float f0xB52134B8, float f0x37469E7A, float f0x3730713D, float f0x325980ED, float f0x3317A62C, float f0x330A90F6, float f0xB33EB2F2, float f0xB4E183CC, float f0xB5585ECE, float f0xB51C9856]], align 16

; Function Attrs: cold nounwind optsize uwtable
define void @ff_atrac3p_init_dsp_static() local_unnamed_addr #0 {
vector.ph:
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.a = uitofp nneg <4 x i32> %vec.ind to <4 x double>
  %i.b = fmul nnan nsz <4 x double> %i.a, splat (double f0x401921FB54442D18)
  %i.c = fmul nnan nsz <4 x double> %i.b, splat (double f0x3F40000000000000)
  %i.d = tail call nsz <4 x double> @llvm.sin.v4f64(<4 x double> %i.c)
  %i.e = fptrunc nsz <4 x double> %i.d to <4 x float>
  %i.f = getelementptr inbounds nuw [4 x i8], ptr @sine_table, i64 %index
  store <4 x float> %i.e, ptr %i.f, align 16, !tbaa !10
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
  %i.g = icmp eq i64 %index.next, 2048
  br i1 %i.g, label %vector.body26, label %vector.body, !llvm.loop !28

vector.body26:                                    ; preds = %vector.body, %vector.body26
  %index27 = phi i64 [ %index.next29, %vector.body26 ], [ 0, %vector.body ] ; 2 uses
  %vec.ind28 = phi <4 x i32> [ %vec.ind.next30, %vector.body26 ], [ <i32 0, i32 1, i32 2, i32 3>, %vector.body ] ; 2 uses
  %i.h = uitofp nneg <4 x i32> %vec.ind28 to <4 x double>
  %i.i = fmul nnan nsz <4 x double> %i.h, splat (double f0x401921FB54442D18)
  %i.j = fmul nnan nsz <4 x double> %i.i, splat (double 3.906250e-03)
  %i.k = tail call nsz <4 x double> @llvm.cos.v4f64(<4 x double> %i.j)
  %i.l = fsub nsz <4 x double> splat (double 1.000000e+00), %i.k
  %i.m = fmul nsz <4 x double> %i.l, splat (double 5.000000e-01)
  %i.n = fptrunc nsz <4 x double> %i.m to <4 x float>
  %i.o = getelementptr inbounds nuw [4 x i8], ptr @hann_window, i64 %index27
  store <4 x float> %i.n, ptr %i.o, align 16, !tbaa !10
  %index.next29 = add nuw i64 %index27, 4         ; 2 uses
  %vec.ind.next30 = add <4 x i32> %vec.ind28, splat (i32 4)
  %i.p = icmp eq i64 %index.next29, 256
  br i1 %i.p, label %vector.body33, label %vector.body26, !llvm.loop !29

vector.body33:                                    ; preds = %vector.body26, %vector.body33
  %index34 = phi i64 [ %index.next36, %vector.body33 ], [ 0, %vector.body26 ] ; 2 uses
  %vec.ind35 = phi <4 x i32> [ %vec.ind.next37, %vector.body33 ], [ <i32 0, i32 1, i32 2, i32 3>, %vector.body26 ] ; 2 uses
  %i.q = add <4 x i32> %vec.ind35, splat (i32 -3)
  %i.r = sitofp nsz <4 x i32> %i.q to <4 x float>
  %i.s = fmul nnan nsz <4 x float> %i.r, splat (float 2.500000e-01)
  %i.t = tail call nsz <4 x float> @llvm.exp2.v4f32(<4 x float> %i.s)
  %i.u = getelementptr inbounds nuw [4 x i8], ptr @amp_sf_tab, i64 %index34
  store <4 x float> %i.t, ptr %i.u, align 16, !tbaa !10
  %index.next36 = add nuw i64 %index34, 4         ; 2 uses
  %vec.ind.next37 = add <4 x i32> %vec.ind35, splat (i32 4)
  %i.v = icmp eq i64 %index.next36, 64
  br i1 %i.v, label %middle.block38, label %vector.body33, !llvm.loop !30

middle.block38:                                   ; preds = %vector.body33
  tail call void @ff_init_ff_sine_windows(i32 noundef 7) #7
  tail call void @ff_init_ff_sine_windows(i32 noundef 6) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @ff_init_ff_sine_windows(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define void @ff_atrac3p_generate_tones(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [128 x float], align 16           ; 40 uses
  %i.b = alloca [128 x float], align 16           ; 38 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.a, i8 0, i64 512, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.b, i8 0, i64 512, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = sext i32 %2 to i64
  %i.e = getelementptr inbounds [7800 x i8], ptr %i.c, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 7792
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !31
  %i.h = sext i32 %3 to i64                       ; 4 uses
  %i.i = getelementptr inbounds [40 x i8], ptr %i.g, i64 %i.h ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 7784
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !32
  %i.l = getelementptr inbounds [40 x i8], ptr %i.k, i64 %i.h ; 14 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !33
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = load i32, ptr %i.n, align 4, !tbaa !34   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.q = load i32, ptr %i.p, align 4, !tbaa !35
  %i.r = icmp slt i32 %i.o, %i.q
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i32 1, ptr %i.s, align 4, !tbaa !36
  %i.t = add nsw i32 %i.o, 32
  br label %bb.g

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.u = load i32, ptr %i.i, align 4, !tbaa !33
  %.not74 = icmp eq i32 %i.u, 0
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  br i1 %.not74, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 1, ptr %i.v, align 4, !tbaa !36
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.x = load i32, ptr %i.w, align 4, !tbaa !34
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  store i32 0, ptr %i.v, align 4, !tbaa !36
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.c
  %.sink = phi i32 [ %i.x, %bb.e ], [ 0, %bb.f ], [ %i.t, %bb.c ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i32 %.sink, ptr %i.y, align 4, !tbaa !37
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !38
  %.not75 = icmp eq i32 %i.aa, 0
  br i1 %.not75, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !35 ; 2 uses
  %.not76 = icmp slt i32 %i.ac, %.sink
  br i1 %.not76, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  store i32 1, ptr %i.ad, align 4, !tbaa !39
  br label %bb.m

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !38
  %.not77 = icmp eq i32 %i.af, 0
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 20 ; 2 uses
  br i1 %.not77, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 1, ptr %i.ag, align 4, !tbaa !39
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !35
  %i.aj = add nsw i32 %i.ai, 32
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  store i32 0, ptr %i.ag, align 4, !tbaa !39
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.i
  %.sink89 = phi i32 [ %i.aj, %bb.k ], [ 64, %bb.l ], [ %i.ac, %bb.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 28
  store i32 %.sink89, ptr %i.ak, align 4, !tbaa !40
  %i.al = getelementptr inbounds nuw i8, ptr %i.i, i64 28
  %i.am = load i32, ptr %i.al, align 4, !tbaa !40
  %i.an = icmp sgt i32 %i.am, 31                  ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.ap = icmp slt i32 %.sink, 32                 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !21
  %i.as = icmp ne i32 %i.ar, 0
  %or.cond = select i1 %i.as, i1 %i.an, i1 false
  br i1 %or.cond, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.at = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 17344
  %i.av = load ptr, ptr %i.au, align 16, !tbaa !41 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 44
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 %i.h
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !24
  %i.az = zext i8 %i.ay to i32
  %i.ba = and i32 %2, %i.az
  call fastcc void @waves_synth(ptr noundef %i.av, ptr noundef nonnull %i.i, ptr noundef nonnull %i.at, ptr noundef %1, i32 noundef %i.ba, i32 noundef 128, ptr noundef %i.a)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bb = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 3 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !21 ; 2 uses
  %i.bd = icmp ne i32 %i.bc, 0
  %or.cond3 = select i1 %i.bd, i1 %i.ap, i1 false
  br i1 %or.cond3, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 17336
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !42 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 44
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 %i.h
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !24
  %i.bj = zext i8 %i.bi to i32
  %i.bk = and i32 %2, %i.bj
  call fastcc void @waves_synth(ptr noundef %i.bf, ptr noundef nonnull %i.l, ptr noundef nonnull %i.ao, ptr noundef %1, i32 noundef %i.bk, i32 noundef 0, ptr noundef %i.b)
  %.pre85.pre = load i32, ptr %i.bb, align 4, !tbaa !21
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pre85 = phi i32 [ %.pre85.pre, %bb.p ], [ %i.bc, %bb.o ] ; 3 uses
  %i.bl = load i32, ptr %i.aq, align 4, !tbaa !21
  %.not78 = icmp eq i32 %i.bl, 0
  br i1 %.not78, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bm = icmp ne i32 %.pre85, 0
  %or.cond5 = select i1 %i.bm, i1 %i.an, i1 false
  %or.cond7 = select i1 %or.cond5, i1 %i.ap, i1 false
  br i1 %or.cond7, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bn = load ptr, ptr %1, align 8, !tbaa !26
  call void %i.bn(ptr noundef nonnull %i.a, ptr noundef nonnull %i.a, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @hann_window, i64 512), i32 noundef 128) #7
  br label %.sink.split

bb.t:                                             ; preds = %bb.r
  %i.bo = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !39
  %.not80 = icmp eq i32 %i.bp, 0
  br i1 %.not80, label %bb.u, label %.thread

bb.u:                                             ; preds = %bb.t
  %i.bq = load ptr, ptr %1, align 8, !tbaa !26
  call void %i.bq(ptr noundef nonnull %i.a, ptr noundef nonnull %i.a, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @hann_window, i64 512), i32 noundef 128) #7
  %.pre = load i32, ptr %i.bb, align 4, !tbaa !21
  br label %.thread

.thread:                                          ; preds = %bb.q, %bb.u, %bb.t
  %i.br = phi i32 [ %.pre85, %bb.q ], [ %.pre, %bb.u ], [ %.pre85, %bb.t ]
  %.not81 = icmp eq i32 %i.br, 0
  br i1 %.not81, label %vector.body, label %bb.v

bb.v:                                             ; preds = %.thread
  %i.bs = load i32, ptr %i.ao, align 4, !tbaa !36
  %.not82 = icmp eq i32 %i.bs, 0
  br i1 %.not82, label %.sink.split, label %vector.body

.sink.split:                                      ; preds = %bb.v, %bb.s
  %i.bt = load ptr, ptr %1, align 8, !tbaa !26
  call void %i.bt(ptr noundef nonnull %i.b, ptr noundef nonnull %i.b, ptr noundef nonnull @hann_window, i32 noundef 128) #7
  br label %vector.body

vector.body:                                      ; preds = %.sink.split, %.thread, %bb.v
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %wide.load = load <4 x float>, ptr %i.a, align 16, !tbaa !10
  %wide.load92 = load <4 x float>, ptr %i.bu, align 16, !tbaa !10
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %wide.load93 = load <4 x float>, ptr %i.b, align 16, !tbaa !10
  %wide.load94 = load <4 x float>, ptr %i.bv, align 16, !tbaa !10
  %i.bw = fadd nsz <4 x float> %wide.load, %wide.load93
  %i.bx = fadd nsz <4 x float> %wide.load92, %wide.load94
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %wide.load95 = load <4 x float>, ptr %4, align 4, !tbaa !10
  %wide.load96 = load <4 x float>, ptr %i.by, align 4, !tbaa !10
  %i.bz = fadd nsz <4 x float> %wide.load95, %i.bw
  %i.ca = fadd nsz <4 x float> %wide.load96, %i.bx
  store <4 x float> %i.bz, ptr %4, align 4, !tbaa !10
  store <4 x float> %i.ca, ptr %i.by, align 4, !tbaa !10
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %wide.load.1 = load <4 x float>, ptr %i.cb, align 16, !tbaa !10
  %wide.load92.1 = load <4 x float>, ptr %i.cc, align 16, !tbaa !10
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %wide.load93.1 = load <4 x float>, ptr %i.cd, align 16, !tbaa !10
  %wide.load94.1 = load <4 x float>, ptr %i.ce, align 16, !tbaa !10
  %i.cf = fadd nsz <4 x float> %wide.load.1, %wide.load93.1
  %i.cg = fadd nsz <4 x float> %wide.load92.1, %wide.load94.1
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %wide.load95.1 = load <4 x float>, ptr %i.ch, align 4, !tbaa !10
  %wide.load96.1 = load <4 x float>, ptr %i.ci, align 4, !tbaa !10
  %i.cj = fadd nsz <4 x float> %wide.load95.1, %i.cf
  %i.ck = fadd nsz <4 x float> %wide.load96.1, %i.cg
  store <4 x float> %i.cj, ptr %i.ch, align 4, !tbaa !10
  store <4 x float> %i.ck, ptr %i.ci, align 4, !tbaa !10
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %wide.load.2 = load <4 x float>, ptr %i.cl, align 16, !tbaa !10
  %wide.load92.2 = load <4 x float>, ptr %i.cm, align 16, !tbaa !10
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %wide.load93.2 = load <4 x float>, ptr %i.cn, align 16, !tbaa !10
  %wide.load94.2 = load <4 x float>, ptr %i.co, align 16, !tbaa !10
  %i.cp = fadd nsz <4 x float> %wide.load.2, %wide.load93.2
  %i.cq = fadd nsz <4 x float> %wide.load92.2, %wide.load94.2
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %wide.load95.2 = load <4 x float>, ptr %i.cr, align 4, !tbaa !10
  %wide.load96.2 = load <4 x float>, ptr %i.cs, align 4, !tbaa !10
  %i.ct = fadd nsz <4 x float> %wide.load95.2, %i.cp
  %i.cu = fadd nsz <4 x float> %wide.load96.2, %i.cq
  store <4 x float> %i.ct, ptr %i.cr, align 4, !tbaa !10
  store <4 x float> %i.cu, ptr %i.cs, align 4, !tbaa !10
  %i.cv = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.cw = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %wide.load.3 = load <4 x float>, ptr %i.cv, align 16, !tbaa !10
  %wide.load92.3 = load <4 x float>, ptr %i.cw, align 16, !tbaa !10
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.cy = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %wide.load93.3 = load <4 x float>, ptr %i.cx, align 16, !tbaa !10
  %wide.load94.3 = load <4 x float>, ptr %i.cy, align 16, !tbaa !10
  %i.cz = fadd nsz <4 x float> %wide.load.3, %wide.load93.3
  %i.da = fadd nsz <4 x float> %wide.load92.3, %wide.load94.3
  %i.db = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 2 uses
  %wide.load95.3 = load <4 x float>, ptr %i.db, align 4, !tbaa !10
  %wide.load96.3 = load <4 x float>, ptr %i.dc, align 4, !tbaa !10
  %i.dd = fadd nsz <4 x float> %wide.load95.3, %i.cz
  %i.de = fadd nsz <4 x float> %wide.load96.3, %i.da
  store <4 x float> %i.dd, ptr %i.db, align 4, !tbaa !10
  store <4 x float> %i.de, ptr %i.dc, align 4, !tbaa !10
  %i.df = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.dg = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %wide.load.4 = load <4 x float>, ptr %i.df, align 16, !tbaa !10
  %wide.load92.4 = load <4 x float>, ptr %i.dg, align 16, !tbaa !10
  %i.dh = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.di = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %wide.load93.4 = load <4 x float>, ptr %i.dh, align 16, !tbaa !10
  %wide.load94.4 = load <4 x float>, ptr %i.di, align 16, !tbaa !10
  %i.dj = fadd nsz <4 x float> %wide.load.4, %wide.load93.4
  %i.dk = fadd nsz <4 x float> %wide.load92.4, %wide.load94.4
  %i.dl = getelementptr inbounds nuw i8, ptr %4, i64 128 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 144 ; 2 uses
  %wide.load95.4 = load <4 x float>, ptr %i.dl, align 4, !tbaa !10
  %wide.load96.4 = load <4 x float>, ptr %i.dm, align 4, !tbaa !10
  %i.dn = fadd nsz <4 x float> %wide.load95.4, %i.dj
  %i.do = fadd nsz <4 x float> %wide.load96.4, %i.dk
  store <4 x float> %i.dn, ptr %i.dl, align 4, !tbaa !10
  store <4 x float> %i.do, ptr %i.dm, align 4, !tbaa !10
  %i.dp = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.dq = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %wide.load.5 = load <4 x float>, ptr %i.dp, align 16, !tbaa !10
  %wide.load92.5 = load <4 x float>, ptr %i.dq, align 16, !tbaa !10
  %i.dr = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.ds = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %wide.load93.5 = load <4 x float>, ptr %i.dr, align 16, !tbaa !10
  %wide.load94.5 = load <4 x float>, ptr %i.ds, align 16, !tbaa !10
  %i.dt = fadd nsz <4 x float> %wide.load.5, %wide.load93.5
  %i.du = fadd nsz <4 x float> %wide.load92.5, %wide.load94.5
  %i.dv = getelementptr inbounds nuw i8, ptr %4, i64 160 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %4, i64 176 ; 2 uses
  %wide.load95.5 = load <4 x float>, ptr %i.dv, align 4, !tbaa !10
  %wide.load96.5 = load <4 x float>, ptr %i.dw, align 4, !tbaa !10
  %i.dx = fadd nsz <4 x float> %wide.load95.5, %i.dt
  %i.dy = fadd nsz <4 x float> %wide.load96.5, %i.du
  store <4 x float> %i.dx, ptr %i.dv, align 4, !tbaa !10
  store <4 x float> %i.dy, ptr %i.dw, align 4, !tbaa !10
  %i.dz = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.ea = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  %wide.load.6 = load <4 x float>, ptr %i.dz, align 16, !tbaa !10
  %wide.load92.6 = load <4 x float>, ptr %i.ea, align 16, !tbaa !10
  %i.eb = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.ec = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %wide.load93.6 = load <4 x float>, ptr %i.eb, align 16, !tbaa !10
  %wide.load94.6 = load <4 x float>, ptr %i.ec, align 16, !tbaa !10
  %i.ed = fadd nsz <4 x float> %wide.load.6, %wide.load93.6
  %i.ee = fadd nsz <4 x float> %wide.load92.6, %wide.load94.6
  %i.ef = getelementptr inbounds nuw i8, ptr %4, i64 192 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %4, i64 208 ; 2 uses
  %wide.load95.6 = load <4 x float>, ptr %i.ef, align 4, !tbaa !10
  %wide.load96.6 = load <4 x float>, ptr %i.eg, align 4, !tbaa !10
  %i.eh = fadd nsz <4 x float> %wide.load95.6, %i.ed
  %i.ei = fadd nsz <4 x float> %wide.load96.6, %i.ee
  store <4 x float> %i.eh, ptr %i.ef, align 4, !tbaa !10
  store <4 x float> %i.ei, ptr %i.eg, align 4, !tbaa !10
  %i.ej = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.ek = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  %wide.load.7 = load <4 x float>, ptr %i.ej, align 16, !tbaa !10
  %wide.load92.7 = load <4 x float>, ptr %i.ek, align 16, !tbaa !10
  %i.el = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %i.em = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  %wide.load93.7 = load <4 x float>, ptr %i.el, align 16, !tbaa !10
  %wide.load94.7 = load <4 x float>, ptr %i.em, align 16, !tbaa !10
  %i.en = fadd nsz <4 x float> %wide.load.7, %wide.load93.7
  %i.eo = fadd nsz <4 x float> %wide.load92.7, %wide.load94.7
  %i.ep = getelementptr inbounds nuw i8, ptr %4, i64 224 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %4, i64 240 ; 2 uses
  %wide.load95.7 = load <4 x float>, ptr %i.ep, align 4, !tbaa !10
  %wide.load96.7 = load <4 x float>, ptr %i.eq, align 4, !tbaa !10
  %i.er = fadd nsz <4 x float> %wide.load95.7, %i.en
  %i.es = fadd nsz <4 x float> %wide.load96.7, %i.eo
  store <4 x float> %i.er, ptr %i.ep, align 4, !tbaa !10
  store <4 x float> %i.es, ptr %i.eq, align 4, !tbaa !10
  %i.et = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.eu = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  %wide.load.8 = load <4 x float>, ptr %i.et, align 16, !tbaa !10
  %wide.load92.8 = load <4 x float>, ptr %i.eu, align 16, !tbaa !10
  %i.ev = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.ew = getelementptr inbounds nuw i8, ptr %i.b, i64 272
  %wide.load93.8 = load <4 x float>, ptr %i.ev, align 16, !tbaa !10
  %wide.load94.8 = load <4 x float>, ptr %i.ew, align 16, !tbaa !10
  %i.ex = fadd nsz <4 x float> %wide.load.8, %wide.load93.8
  %i.ey = fadd nsz <4 x float> %wide.load92.8, %wide.load94.8
  %i.ez = getelementptr inbounds nuw i8, ptr %4, i64 256 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %4, i64 272 ; 2 uses
  %wide.load95.8 = load <4 x float>, ptr %i.ez, align 4, !tbaa !10
  %wide.load96.8 = load <4 x float>, ptr %i.fa, align 4, !tbaa !10
  %i.fb = fadd nsz <4 x float> %wide.load95.8, %i.ex
  %i.fc = fadd nsz <4 x float> %wide.load96.8, %i.ey
  store <4 x float> %i.fb, ptr %i.ez, align 4, !tbaa !10
  store <4 x float> %i.fc, ptr %i.fa, align 4, !tbaa !10
  %i.fd = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  %i.fe = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  %wide.load.9 = load <4 x float>, ptr %i.fd, align 16, !tbaa !10
  %wide.load92.9 = load <4 x float>, ptr %i.fe, align 16, !tbaa !10
  %i.ff = getelementptr inbounds nuw i8, ptr %i.b, i64 288
  %i.fg = getelementptr inbounds nuw i8, ptr %i.b, i64 304
  %wide.load93.9 = load <4 x float>, ptr %i.ff, align 16, !tbaa !10
  %wide.load94.9 = load <4 x float>, ptr %i.fg, align 16, !tbaa !10
  %i.fh = fadd nsz <4 x float> %wide.load.9, %wide.load93.9
  %i.fi = fadd nsz <4 x float> %wide.load92.9, %wide.load94.9
  %i.fj = getelementptr inbounds nuw i8, ptr %4, i64 288 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %4, i64 304 ; 2 uses
  %wide.load95.9 = load <4 x float>, ptr %i.fj, align 4, !tbaa !10
  %wide.load96.9 = load <4 x float>, ptr %i.fk, align 4, !tbaa !10
  %i.fl = fadd nsz <4 x float> %wide.load95.9, %i.fh
  %i.fm = fadd nsz <4 x float> %wide.load96.9, %i.fi
  store <4 x float> %i.fl, ptr %i.fj, align 4, !tbaa !10
  store <4 x float> %i.fm, ptr %i.fk, align 4, !tbaa !10
  %i.fn = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  %i.fo = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  %wide.load.10 = load <4 x float>, ptr %i.fn, align 16, !tbaa !10
  %wide.load92.10 = load <4 x float>, ptr %i.fo, align 16, !tbaa !10
  %i.fp = getelementptr inbounds nuw i8, ptr %i.b, i64 320
  %i.fq = getelementptr inbounds nuw i8, ptr %i.b, i64 336
  %wide.load93.10 = load <4 x float>, ptr %i.fp, align 16, !tbaa !10
  %wide.load94.10 = load <4 x float>, ptr %i.fq, align 16, !tbaa !10
  %i.fr = fadd nsz <4 x float> %wide.load.10, %wide.load93.10
  %i.fs = fadd nsz <4 x float> %wide.load92.10, %wide.load94.10
  %i.ft = getelementptr inbounds nuw i8, ptr %4, i64 320 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %4, i64 336 ; 2 uses
  %wide.load95.10 = load <4 x float>, ptr %i.ft, align 4, !tbaa !10
  %wide.load96.10 = load <4 x float>, ptr %i.fu, align 4, !tbaa !10
  %i.fv = fadd nsz <4 x float> %wide.load95.10, %i.fr
  %i.fw = fadd nsz <4 x float> %wide.load96.10, %i.fs
  store <4 x float> %i.fv, ptr %i.ft, align 4, !tbaa !10
  store <4 x float> %i.fw, ptr %i.fu, align 4, !tbaa !10
  %i.fx = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  %i.fy = getelementptr inbounds nuw i8, ptr %i.a, i64 368
  %wide.load.11 = load <4 x float>, ptr %i.fx, align 16, !tbaa !10
  %wide.load92.11 = load <4 x float>, ptr %i.fy, align 16, !tbaa !10
  %i.fz = getelementptr inbounds nuw i8, ptr %i.b, i64 352
  %i.ga = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  %wide.load93.11 = load <4 x float>, ptr %i.fz, align 16, !tbaa !10
  %wide.load94.11 = load <4 x float>, ptr %i.ga, align 16, !tbaa !10
  %i.gb = fadd nsz <4 x float> %wide.load.11, %wide.load93.11
  %i.gc = fadd nsz <4 x float> %wide.load92.11, %wide.load94.11
  %i.gd = getelementptr inbounds nuw i8, ptr %4, i64 352 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %4, i64 368 ; 2 uses
  %wide.load95.11 = load <4 x float>, ptr %i.gd, align 4, !tbaa !10
  %wide.load96.11 = load <4 x float>, ptr %i.ge, align 4, !tbaa !10
  %i.gf = fadd nsz <4 x float> %wide.load95.11, %i.gb
  %i.gg = fadd nsz <4 x float> %wide.load96.11, %i.gc
  store <4 x float> %i.gf, ptr %i.gd, align 4, !tbaa !10
  store <4 x float> %i.gg, ptr %i.ge, align 4, !tbaa !10
  %i.gh = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  %i.gi = getelementptr inbounds nuw i8, ptr %i.a, i64 400
  %wide.load.12 = load <4 x float>, ptr %i.gh, align 16, !tbaa !10
  %wide.load92.12 = load <4 x float>, ptr %i.gi, align 16, !tbaa !10
  %i.gj = getelementptr inbounds nuw i8, ptr %i.b, i64 384
  %i.gk = getelementptr inbounds nuw i8, ptr %i.b, i64 400
  %wide.load93.12 = load <4 x float>, ptr %i.gj, align 16, !tbaa !10
  %wide.load94.12 = load <4 x float>, ptr %i.gk, align 16, !tbaa !10
  %i.gl = fadd nsz <4 x float> %wide.load.12, %wide.load93.12
  %i.gm = fadd nsz <4 x float> %wide.load92.12, %wide.load94.12
  %i.gn = getelementptr inbounds nuw i8, ptr %4, i64 384 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %4, i64 400 ; 2 uses
  %wide.load95.12 = load <4 x float>, ptr %i.gn, align 4, !tbaa !10
  %wide.load96.12 = load <4 x float>, ptr %i.go, align 4, !tbaa !10
  %i.gp = fadd nsz <4 x float> %wide.load95.12, %i.gl
  %i.gq = fadd nsz <4 x float> %wide.load96.12, %i.gm
  store <4 x float> %i.gp, ptr %i.gn, align 4, !tbaa !10
  store <4 x float> %i.gq, ptr %i.go, align 4, !tbaa !10
  %i.gr = getelementptr inbounds nuw i8, ptr %i.a, i64 416
  %i.gs = getelementptr inbounds nuw i8, ptr %i.a, i64 432
  %wide.load.13 = load <4 x float>, ptr %i.gr, align 16, !tbaa !10
  %wide.load92.13 = load <4 x float>, ptr %i.gs, align 16, !tbaa !10
  %i.gt = getelementptr inbounds nuw i8, ptr %i.b, i64 416
  %i.gu = getelementptr inbounds nuw i8, ptr %i.b, i64 432
  %wide.load93.13 = load <4 x float>, ptr %i.gt, align 16, !tbaa !10
  %wide.load94.13 = load <4 x float>, ptr %i.gu, align 16, !tbaa !10
  %i.gv = fadd nsz <4 x float> %wide.load.13, %wide.load93.13
  %i.gw = fadd nsz <4 x float> %wide.load92.13, %wide.load94.13
  %i.gx = getelementptr inbounds nuw i8, ptr %4, i64 416 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %4, i64 432 ; 2 uses
  %wide.load95.13 = load <4 x float>, ptr %i.gx, align 4, !tbaa !10
  %wide.load96.13 = load <4 x float>, ptr %i.gy, align 4, !tbaa !10
  %i.gz = fadd nsz <4 x float> %wide.load95.13, %i.gv
  %i.ha = fadd nsz <4 x float> %wide.load96.13, %i.gw
  store <4 x float> %i.gz, ptr %i.gx, align 4, !tbaa !10
  store <4 x float> %i.ha, ptr %i.gy, align 4, !tbaa !10
  %i.hb = getelementptr inbounds nuw i8, ptr %i.a, i64 448
  %i.hc = getelementptr inbounds nuw i8, ptr %i.a, i64 464
  %wide.load.14 = load <4 x float>, ptr %i.hb, align 16, !tbaa !10
  %wide.load92.14 = load <4 x float>, ptr %i.hc, align 16, !tbaa !10
  %i.hd = getelementptr inbounds nuw i8, ptr %i.b, i64 448
  %i.he = getelementptr inbounds nuw i8, ptr %i.b, i64 464
  %wide.load93.14 = load <4 x float>, ptr %i.hd, align 16, !tbaa !10
  %wide.load94.14 = load <4 x float>, ptr %i.he, align 16, !tbaa !10
  %i.hf = fadd nsz <4 x float> %wide.load.14, %wide.load93.14
  %i.hg = fadd nsz <4 x float> %wide.load92.14, %wide.load94.14
  %i.hh = getelementptr inbounds nuw i8, ptr %4, i64 448 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %4, i64 464 ; 2 uses
  %wide.load95.14 = load <4 x float>, ptr %i.hh, align 4, !tbaa !10
  %wide.load96.14 = load <4 x float>, ptr %i.hi, align 4, !tbaa !10
  %i.hj = fadd nsz <4 x float> %wide.load95.14, %i.hf
  %i.hk = fadd nsz <4 x float> %wide.load96.14, %i.hg
  store <4 x float> %i.hj, ptr %i.hh, align 4, !tbaa !10
  store <4 x float> %i.hk, ptr %i.hi, align 4, !tbaa !10
  %i.hl = getelementptr inbounds nuw i8, ptr %i.a, i64 480
  %i.hm = getelementptr inbounds nuw i8, ptr %i.a, i64 496
  %wide.load.15 = load <4 x float>, ptr %i.hl, align 16, !tbaa !10
  %wide.load92.15 = load <4 x float>, ptr %i.hm, align 16, !tbaa !10
  %i.hn = getelementptr inbounds nuw i8, ptr %i.b, i64 480
  %i.ho = getelementptr inbounds nuw i8, ptr %i.b, i64 496
  %wide.load93.15 = load <4 x float>, ptr %i.hn, align 16, !tbaa !10
  %wide.load94.15 = load <4 x float>, ptr %i.ho, align 16, !tbaa !10
  %i.hp = fadd nsz <4 x float> %wide.load.15, %wide.load93.15
  %i.hq = fadd nsz <4 x float> %wide.load92.15, %wide.load94.15
  %i.hr = getelementptr inbounds nuw i8, ptr %4, i64 480 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %4, i64 496 ; 2 uses
  %wide.load95.15 = load <4 x float>, ptr %i.hr, align 4, !tbaa !10
  %wide.load96.15 = load <4 x float>, ptr %i.hs, align 4, !tbaa !10
  %i.ht = fadd nsz <4 x float> %wide.load95.15, %i.hp
  %i.hu = fadd nsz <4 x float> %wide.load96.15, %i.hq
  store <4 x float> %i.ht, ptr %i.hr, align 4, !tbaa !10
  store <4 x float> %i.hu, ptr %i.hs, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define internal fastcc void @waves_synth(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef range(i32 0, 256) %4, i32 noundef range(i32 0, 129) %5, ptr noundef nonnull %6) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i32, ptr %i.a, align 4, !tbaa !21   ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.f = load i32, ptr %i.e, align 4, !tbaa !48
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [16 x i8], ptr %i.d, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !50
  %.not70 = icmp eq i32 %i.j, 0
  %i.k = xor i32 %5, 128                          ; 4 uses
  br i1 %.not70, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %middle.block102
  %.074.us = phi ptr [ %i.az, %middle.block102 ], [ %i.h, %.lr.ph ] ; 5 uses
  %.06273.us = phi i32 [ %i.ay, %middle.block102 ], [ 0, %.lr.ph ]
  %i.l = getelementptr inbounds nuw i8, ptr %.074.us, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !52
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds [4 x i8], ptr @amp_sf_tab, i64 %i.n
  %i.p = load float, ptr %i.o, align 4, !tbaa !10
  %i.q = getelementptr inbounds nuw i8, ptr %.074.us, i64 8
  %i.r = load i32, ptr %i.q, align 4, !tbaa !53
  %i.s = add nsw i32 %i.r, 1
  %i.t = sitofp nsz i32 %i.s to float
  %i.u = fdiv nnan nsz float %i.t, 1.513000e+01
  %i.v = fmul nsz float %i.p, %i.u
  %i.w = fpext nsz float %i.v to double           ; 3 uses
  %i.x = load i32, ptr %.074.us, align 4, !tbaa !54 ; 10 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.074.us, i64 12
  %i.z = load i32, ptr %i.y, align 4, !tbaa !55   ; 2 uses
  %i.aa = shl i32 %i.z, 6
  %7 = mul i32 %i.x, %i.k
  %8 = sub i32 %i.aa, %7                          ; 3 uses
  %9 = trunc i32 %i.x to i11                      ; 2 uses
  %10 = trunc i32 %i.z to i11
  %11 = shl i11 %10, 6
  %i.ab = mul i32 %i.k, %i.x
  %i.ac = sub i32 0, %i.ab
  %12 = trunc i32 %i.ac to i11
  %13 = add i11 %11, %12                          ; 2 uses
  %14 = icmp sgt i11 %9, -1
  %15 = tail call i11 @llvm.abs.i11(i11 %9, i1 false)
  %mul89 = tail call { i11, i1 } @llvm.umul.with.overflow.i11(i11 %15, i11 127) ; 2 uses
  %mul.result90 = extractvalue { i11, i1 } %mul89, 0
  %mul.overflow91 = extractvalue { i11, i1 } %mul89, 1
  %16 = sext i1 %14 to i11
  %.v104 = xor i11 %13, %16
  %17 = icmp ugt i11 %mul.result90, %.v104
  %18 = or i1 %17, %mul.overflow91
  %19 = zext i11 %13 to i32
  %ident.check92 = icmp ne i32 %8, %19
  %20 = add i32 %i.x, -1024
  %ident.check93 = icmp ult i32 %20, -2048
  %21 = or i1 %18, %ident.check92
  %22 = or i1 %21, %ident.check93
  br i1 %22, label %scalar.ph94, label %vector.ph95

vector.ph95:                                      ; preds = %.lr.ph.split.us
  %broadcast.splatinsert96 = insertelement <4 x double> poison, double %i.w, i64 0
  %broadcast.splat97 = shufflevector <4 x double> %broadcast.splatinsert96, <4 x double> poison, <4 x i32> zeroinitializer
  %23 = shl i32 %i.x, 1
  %24 = mul i32 %i.x, 3
  br label %vector.body98

vector.body98:                                    ; preds = %vector.body98, %vector.ph95
  %index99 = phi i64 [ 0, %vector.ph95 ], [ %index.next101, %vector.body98 ] ; 3 uses
  %25 = trunc i64 %index99 to i32
  %26 = mul i32 %i.x, %25
  %27 = add i32 %8, %26                           ; 4 uses
  %28 = add i32 %27, %i.x
  %29 = add i32 %27, %23
  %30 = add i32 %27, %24
  %31 = zext nneg i32 %27 to i64
  %32 = zext nneg i32 %28 to i64
  %33 = zext nneg i32 %29 to i64
  %34 = zext nneg i32 %30 to i64
  %35 = getelementptr inbounds nuw [4 x i8], ptr @sine_table, i64 %31
  %36 = getelementptr inbounds nuw [4 x i8], ptr @sine_table, i64 %32
  %37 = getelementptr inbounds nuw [4 x i8], ptr @sine_table, i64 %33
  %38 = getelementptr inbounds nuw [4 x i8], ptr @sine_table, i64 %34
  %39 = load float, ptr %35, align 4, !tbaa !10
  %40 = load float, ptr %36, align 4, !tbaa !10
  %41 = load float, ptr %37, align 4, !tbaa !10
  %42 = load float, ptr %38, align 4, !tbaa !10
  %43 = insertelement <4 x float> poison, float %39, i64 0
  %44 = insertelement <4 x float> %43, float %40, i64 1
  %45 = insertelement <4 x float> %44, float %41, i64 2
  %46 = insertelement <4 x float> %45, float %42, i64 3
  %47 = fpext nsz <4 x float> %46 to <4 x double>
  %48 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %index99 ; 2 uses
  %wide.load100 = load <4 x float>, ptr %48, align 4, !tbaa !10
  %49 = fpext nsz <4 x float> %wide.load100 to <4 x double>
  %50 = tail call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %47, <4 x double> %broadcast.splat97, <4 x double> %49)
  %51 = fptrunc nsz <4 x double> %50 to <4 x float>
  store <4 x float> %51, ptr %48, align 4, !tbaa !10
  %index.next101 = add nuw i64 %index99, 4        ; 2 uses
  %52 = icmp eq i64 %index.next101, 128
  br i1 %52, label %middle.block102, label %vector.body98, !llvm.loop !43

scalar.ph94:                                      ; preds = %.lr.ph.split.us, %scalar.ph94
  %indvars.iv78 = phi i64 [ %indvars.iv.next79.1, %scalar.ph94 ], [ 0, %.lr.ph.split.us ] ; 3 uses
  %.061.in72.us = phi i32 [ %i.ax, %scalar.ph94 ], [ %8, %.lr.ph.split.us ] ; 2 uses
  %.061.us = and i32 %.061.in72.us, 2047
  %i.ad = zext nneg i32 %.061.us to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr @sine_table, i64 %i.ad
  %i.af = load float, ptr %i.ae, align 4, !tbaa !10
  %i.ag = fpext nsz float %i.af to double
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv78 ; 2 uses
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !10
  %i.aj = fpext nsz float %i.ai to double
  %i.ak = tail call nsz double @llvm.fmuladd.f64(double %i.ag, double %i.w, double %i.aj)
  %i.al = fptrunc nsz double %i.ak to float
  store float %i.al, ptr %i.ah, align 4, !tbaa !10
  %i.am = add i32 %.061.in72.us, %i.x
  %.061.us.1 = and i32 %i.am, 2047                ; 2 uses
  %i.an = zext nneg i32 %.061.us.1 to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr @sine_table, i64 %i.an
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !10
  %i.aq = fpext nsz float %i.ap to double
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv78
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4 ; 2 uses
  %i.at = load float, ptr %i.as, align 4, !tbaa !10
  %i.au = fpext nsz float %i.at to double
  %i.av = tail call nsz double @llvm.fmuladd.f64(double %i.aq, double %i.w, double %i.au)
  %i.aw = fptrunc nsz double %i.av to float
  store float %i.aw, ptr %i.as, align 4, !tbaa !10
  %i.ax = add nsw i32 %.061.us.1, %i.x
  %indvars.iv.next79.1 = add nuw nsw i64 %indvars.iv78, 2 ; 2 uses
  %exitcond81.not.1 = icmp eq i64 %indvars.iv.next79.1, 128
  br i1 %exitcond81.not.1, label %middle.block102, label %scalar.ph94, !llvm.loop !44

middle.block102:                                  ; preds = %vector.body98, %scalar.ph94
  %i.ay = add nuw nsw i32 %.06273.us, 1           ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.074.us, i64 16
  %exitcond82.not = icmp eq i32 %i.ay, %i.b
  br i1 %exitcond82.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !45

.lr.ph.split:                                     ; preds = %.lr.ph, %middle.block
  %.074 = phi ptr [ %i.ci, %middle.block ], [ %i.h, %.lr.ph ] ; 4 uses
  %.06273 = phi i32 [ %i.ch, %middle.block ], [ 0, %.lr.ph ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.074, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !52
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds [4 x i8], ptr @amp_sf_tab, i64 %i.bc
  %i.be = load float, ptr %i.bd, align 4, !tbaa !10
  %i.bf = fpext nsz float %i.be to double         ; 3 uses
  %i.bg = load i32, ptr %.074, align 4, !tbaa !54 ; 10 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.074, i64 12
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !55 ; 2 uses
  %i.bj = shl i32 %i.bi, 6
  %53 = mul i32 %i.bg, %i.k
  %54 = sub i32 %i.bj, %53                        ; 3 uses
  %55 = trunc i32 %i.bg to i11                    ; 2 uses
  %56 = trunc i32 %i.bi to i11
  %57 = shl i11 %56, 6
  %i.bk = mul i32 %i.k, %i.bg
  %i.bl = sub i32 0, %i.bk
  %58 = trunc i32 %i.bl to i11
  %59 = add i11 %57, %58                          ; 2 uses
  %60 = icmp sgt i11 %55, -1
  %61 = tail call i11 @llvm.abs.i11(i11 %55, i1 false)
  %mul = tail call { i11, i1 } @llvm.umul.with.overflow.i11(i11 %61, i11 127) ; 2 uses
  %mul.result = extractvalue { i11, i1 } %mul, 0
  %mul.overflow = extractvalue { i11, i1 } %mul, 1
  %62 = sext i1 %60 to i11
  %.v = xor i11 %59, %62
  %63 = icmp ugt i11 %mul.result, %.v
  %64 = or i1 %63, %mul.overflow
  %65 = zext i11 %59 to i32
  %ident.check = icmp ne i32 %54, %65
  %66 = add i32 %i.bg, -1024
  %ident.check87 = icmp ult i32 %66, -2048
  %67 = or i1 %64, %ident.check
  %68 = or i1 %67, %ident.check87
  br i1 %68, label %scalar.ph, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.bf, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer
  %69 = shl i32 %i.bg, 1
  %70 = mul i32 %i.bg, 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %71 = trunc i64 %index to i32
  %72 = mul i32 %i.bg, %71
  %73 = add i32 %54, %72                          ; 4 uses
  %74 = add i32 %73, %i.bg
  %75 = add i32 %73, %69
  %76 = add i32 %73, %70
  %77 = zext nneg i32 %73 to i64
  %78 = zext nneg i32 %74 to i64
  %79 = zext nneg i32 %75 to i64
  %80 = zext nneg i32 %76 to i64
  %81 = getelementptr inbounds nuw [4 x i8], ptr @sine_table, i64 %77
  %82 = getelementptr inbounds nuw [4 x i8], ptr @sine_table, i64 %78
  %83 = getelementptr inbounds nuw [4 x i8], ptr @sine_table, i64 %79
  %84 = getelementptr inbounds nuw [4 x i8], ptr @sine_table, i64 %80
  %85 = load float, ptr %81, align 4, !tbaa !10
  %86 = load float, ptr %82, align 4, !tbaa !10
  %87 = load float, ptr %83, align 4, !tbaa !10
  %88 = load float, ptr %84, align 4, !tbaa !10
  %89 = insertelement <4 x float> poison, float %85, i64 0
  %90 = insertelement <4 x float> %89, float %86, i64 1
  %91 = insertelement <4 x float> %90, float %87, i64 2
  %92 = insertelement <4 x float> %91, float %88, i64 3
  %93 = fpext nsz <4 x float> %92 to <4 x double>
  %94 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %index ; 2 uses
  %wide.load = load <4 x float>, ptr %94, align 4, !tbaa !10
  %95 = fpext nsz <4 x float> %wide.load to <4 x double>
  %96 = tail call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %93, <4 x double> %broadcast.splat, <4 x double> %95)
  %97 = fptrunc nsz <4 x double> %96 to <4 x float>
  store <4 x float> %97, ptr %94, align 4, !tbaa !10
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %98 = icmp eq i64 %index.next, 128
  br i1 %98, label %middle.block, label %vector.body, !llvm.loop !46

scalar.ph:                                        ; preds = %.lr.ph.split, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ 0, %.lr.ph.split ] ; 3 uses
  %.061.in72 = phi i32 [ %i.cg, %scalar.ph ], [ %54, %.lr.ph.split ] ; 2 uses
  %.061 = and i32 %.061.in72, 2047
  %i.bm = zext nneg i32 %.061 to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr @sine_table, i64 %i.bm
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !10
  %i.bp = fpext nsz float %i.bo to double
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv ; 2 uses
  %i.br = load float, ptr %i.bq, align 4, !tbaa !10
  %i.bs = fpext nsz float %i.br to double
  %i.bt = tail call nsz double @llvm.fmuladd.f64(double %i.bp, double %i.bf, double %i.bs)
  %i.bu = fptrunc nsz double %i.bt to float
  store float %i.bu, ptr %i.bq, align 4, !tbaa !10
  %i.bv = add i32 %.061.in72, %i.bg
  %.061.1 = and i32 %i.bv, 2047                   ; 2 uses
  %i.bw = zext nneg i32 %.061.1 to i64
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr @sine_table, i64 %i.bw
  %i.by = load float, ptr %i.bx, align 4, !tbaa !10
  %i.bz = fpext nsz float %i.by to double
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 4 ; 2 uses
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !10
  %i.cd = fpext nsz float %i.cc to double
  %i.ce = tail call nsz double @llvm.fmuladd.f64(double %i.bz, double %i.bf, double %i.cd)
  %i.cf = fptrunc nsz double %i.ce to float
  store float %i.cf, ptr %i.cb, align 4, !tbaa !10
  %i.cg = add nsw i32 %.061.1, %i.bg
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 128
  br i1 %exitcond.not.1, label %middle.block, label %scalar.ph, !llvm.loop !47

middle.block:                                     ; preds = %vector.body, %scalar.ph
  %i.ch = add nuw nsw i32 %.06273, 1              ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.074, i64 16
  %exitcond77.not = icmp eq i32 %i.ch, %i.b
  br i1 %exitcond77.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !45

._crit_edge:                                      ; preds = %middle.block, %middle.block102, %bb.a
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !56
  tail call void %i.ck(ptr noundef nonnull %6, ptr noundef nonnull %6, float noundef -1.000000e+00, i32 noundef 128) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %i.cl = load i32, ptr %2, align 4, !tbaa !57
  %.not66 = icmp eq i32 %i.cl, 0
  br i1 %.not66, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !58
  %i.co = shl i32 %i.cn, 2
  %i.cp = sub nsw i32 %i.co, %5                   ; 2 uses
  %i.cq = add i32 %i.cp, -1
  %or.cond = icmp ult i32 %i.cq, 128
  br i1 %or.cond, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.cr = zext nneg i32 %i.cp to i64              ; 2 uses
  %i.cs = shl nuw nsw i64 %i.cr, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %6, i8 0, i64 %i.cs, i1 false)
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !59
  %.not67 = icmp eq i32 %i.cu, 0
  br i1 %.not67, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cv = load i32, ptr %i.cm, align 4, !tbaa !58
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !60
  %.not68 = icmp eq i32 %i.cv, %i.cx
  br i1 %.not68, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.cy = load float, ptr @hann_window, align 16, !tbaa !10
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.cr ; 5 uses
  %i.da = load float, ptr %i.cz, align 4, !tbaa !10
  %i.db = fmul nsz float %i.cy, %i.da
  store float %i.db, ptr %i.cz, align 4, !tbaa !10
  %i.dc = load float, ptr getelementptr inbounds nuw (i8, ptr @hann_window, i64 128), align 16, !tbaa !10
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 4 ; 2 uses
  %i.de = load float, ptr %i.dd, align 4, !tbaa !10
  %i.df = fmul nsz float %i.dc, %i.de
  store float %i.df, ptr %i.dd, align 4, !tbaa !10
  %i.dg = load float, ptr getelementptr inbounds nuw (i8, ptr @hann_window, i64 256), align 16, !tbaa !10
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 2 uses
  %i.di = load float, ptr %i.dh, align 4, !tbaa !10
  %i.dj = fmul nsz float %i.dg, %i.di
  store float %i.dj, ptr %i.dh, align 4, !tbaa !10
  %i.dk = load float, ptr getelementptr inbounds nuw (i8, ptr @hann_window, i64 384), align 16, !tbaa !10
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cz, i64 12 ; 2 uses
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !10
  %i.dn = fmul nsz float %i.dk, %i.dm
  store float %i.dn, ptr %i.dl, align 4, !tbaa !10
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.g, %bb.f, %bb.c
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !59
  %.not69 = icmp eq i32 %i.dp, 0
  br i1 %.not69, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !60
  %i.ds = shl i32 %i.dr, 2
  %reass.sub = sub i32 %i.ds, %5                  ; 2 uses
  %i.dt = add i32 %reass.sub, 3
  %or.cond3 = icmp ult i32 %i.dt, 128
  br i1 %or.cond3, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.du = add nsw i32 %reass.sub, 4               ; 2 uses
  %i.dv = load float, ptr getelementptr inbounds nuw (i8, ptr @hann_window, i64 384), align 16, !tbaa !10
  %i.dw = zext nneg i32 %i.du to i64
  %i.dx = getelementptr [4 x i8], ptr %6, i64 %i.dw ; 5 uses
  %i.dy = getelementptr i8, ptr %i.dx, i64 -16    ; 2 uses
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !10
  %i.ea = fmul nsz float %i.dv, %i.dz
  store float %i.ea, ptr %i.dy, align 4, !tbaa !10
  %i.eb = load float, ptr getelementptr inbounds nuw (i8, ptr @hann_window, i64 256), align 16, !tbaa !10
  %i.ec = getelementptr i8, ptr %i.dx, i64 -12    ; 2 uses
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !10
  %i.ee = fmul nsz float %i.eb, %i.ed
  store float %i.ee, ptr %i.ec, align 4, !tbaa !10
  %i.ef = load float, ptr getelementptr inbounds nuw (i8, ptr @hann_window, i64 128), align 16, !tbaa !10
  %i.eg = getelementptr i8, ptr %i.dx, i64 -8     ; 2 uses
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !10
  %i.ei = fmul nsz float %i.ef, %i.eh
  store float %i.ei, ptr %i.eg, align 4, !tbaa !10
  %i.ej = load float, ptr @hann_window, align 16, !tbaa !10
  %i.ek = getelementptr i8, ptr %i.dx, i64 -4     ; 2 uses
  %i.el = load float, ptr %i.ek, align 4, !tbaa !10
  %i.em = fmul nsz float %i.ej, %i.el
  store float %i.em, ptr %i.ek, align 4, !tbaa !10
  %i.en = shl nuw nsw i32 %i.du, 2
  %i.eo = sub nuw nsw i32 512, %i.en
  %i.ep = zext nneg i32 %i.eo to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.dx, i8 0, i64 %i.ep, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.h
  ret void
}

; Function Attrs: nounwind uwtable
define void @ff_atrac3p_power_compensation(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [128 x float], align 16           ; 39 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = load i32, ptr %0, align 16, !tbaa !67
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %._crit_edge109

._crit_edge109:                                   ; preds = %bb.a
  %.pre = sext i32 %5 to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = sext i32 %5 to i64                       ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %i.d, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !24
  %i.h = icmp ne i8 %i.g, 0
  %i.i = zext i1 %i.h to i32
  %i.j = xor i32 %2, %i.i
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge109, %bb.b
  %.pre-phi = phi i64 [ %.pre, %._crit_edge109 ], [ %i.e, %bb.b ] ; 4 uses
  %i.k = phi i32 [ %2, %._crit_edge109 ], [ %i.j, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.m = sext i32 %i.k to i64
  %i.n = getelementptr inbounds [7800 x i8], ptr %i.l, i64 %i.m ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4500
  %i.p = getelementptr inbounds i8, ptr @subband_to_powgrp, i64 %.pre-phi
  %i.q = load i8, ptr %i.p, align 1, !tbaa !24
  %i.r = zext i8 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !24    ; 2 uses
  %i.u = icmp eq i8 %i.t, 15
  br i1 %i.u, label %.loopexit, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %bb.c
  %i.v = trunc i32 %4 to i10
  %i.w = icmp ugt i10 %i.v, -128
  br i1 %i.w, label %.preheader82, label %vector.body

vector.body:                                      ; preds = %vector.scevcheck
  %i.x = and i32 %4, 1023
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr @noise_tab, i64 %i.y ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %wide.load = load <4 x float>, ptr %i.z, align 4, !tbaa !10
  %wide.load114 = load <4 x float>, ptr %i.aa, align 4, !tbaa !10
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store <4 x float> %wide.load, ptr %i.a, align 16, !tbaa !10
  store <4 x float> %wide.load114, ptr %i.ab, align 16, !tbaa !10
  %i.ac = add i32 %4, 8
  %i.ad = and i32 %i.ac, 1023
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr @noise_tab, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %wide.load.1 = load <4 x float>, ptr %i.af, align 4, !tbaa !10
  %wide.load114.1 = load <4 x float>, ptr %i.ag, align 4, !tbaa !10
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store <4 x float> %wide.load.1, ptr %i.ah, align 16, !tbaa !10
  store <4 x float> %wide.load114.1, ptr %i.ai, align 16, !tbaa !10
  %i.aj = add i32 %4, 16
  %i.ak = and i32 %i.aj, 1023
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr @noise_tab, i64 %i.al ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %wide.load.2 = load <4 x float>, ptr %i.am, align 4, !tbaa !10
  %wide.load114.2 = load <4 x float>, ptr %i.an, align 4, !tbaa !10
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store <4 x float> %wide.load.2, ptr %i.ao, align 16, !tbaa !10
  store <4 x float> %wide.load114.2, ptr %i.ap, align 16, !tbaa !10
  %i.aq = add i32 %4, 24
  %i.ar = and i32 %i.aq, 1023
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr @noise_tab, i64 %i.as ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %wide.load.3 = load <4 x float>, ptr %i.at, align 4, !tbaa !10
  %wide.load114.3 = load <4 x float>, ptr %i.au, align 4, !tbaa !10
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store <4 x float> %wide.load.3, ptr %i.av, align 16, !tbaa !10
  store <4 x float> %wide.load114.3, ptr %i.aw, align 16, !tbaa !10
  %i.ax = add i32 %4, 32
  %i.ay = and i32 %i.ax, 1023
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr @noise_tab, i64 %i.az ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %wide.load.4 = load <4 x float>, ptr %i.ba, align 4, !tbaa !10
  %wide.load114.4 = load <4 x float>, ptr %i.bb, align 4, !tbaa !10
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store <4 x float> %wide.load.4, ptr %i.bc, align 16, !tbaa !10
  store <4 x float> %wide.load114.4, ptr %i.bd, align 16, !tbaa !10
  %i.be = add i32 %4, 40
  %i.bf = and i32 %i.be, 1023
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr @noise_tab, i64 %i.bg ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %wide.load.5 = load <4 x float>, ptr %i.bh, align 4, !tbaa !10
  %wide.load114.5 = load <4 x float>, ptr %i.bi, align 4, !tbaa !10
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store <4 x float> %wide.load.5, ptr %i.bj, align 16, !tbaa !10
  store <4 x float> %wide.load114.5, ptr %i.bk, align 16, !tbaa !10
  %i.bl = add i32 %4, 48
  %i.bm = and i32 %i.bl, 1023
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr @noise_tab, i64 %i.bn ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %wide.load.6 = load <4 x float>, ptr %i.bo, align 4, !tbaa !10
  %wide.load114.6 = load <4 x float>, ptr %i.bp, align 4, !tbaa !10
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  store <4 x float> %wide.load.6, ptr %i.bq, align 16, !tbaa !10
  store <4 x float> %wide.load114.6, ptr %i.br, align 16, !tbaa !10
  %i.bs = add i32 %4, 56
  %i.bt = and i32 %i.bs, 1023
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr @noise_tab, i64 %i.bu ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %wide.load.7 = load <4 x float>, ptr %i.bv, align 4, !tbaa !10
  %wide.load114.7 = load <4 x float>, ptr %i.bw, align 4, !tbaa !10
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  store <4 x float> %wide.load.7, ptr %i.bx, align 16, !tbaa !10
  store <4 x float> %wide.load114.7, ptr %i.by, align 16, !tbaa !10
  %i.bz = add i32 %4, 64
  %i.ca = and i32 %i.bz, 1023
  %i.cb = zext nneg i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr @noise_tab, i64 %i.cb ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %wide.load.8 = load <4 x float>, ptr %i.cc, align 4, !tbaa !10
  %wide.load114.8 = load <4 x float>, ptr %i.cd, align 4, !tbaa !10
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  store <4 x float> %wide.load.8, ptr %i.ce, align 16, !tbaa !10
  store <4 x float> %wide.load114.8, ptr %i.cf, align 16, !tbaa !10
  %i.cg = add i32 %4, 72
  %i.ch = and i32 %i.cg, 1023
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr @noise_tab, i64 %i.ci ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %wide.load.9 = load <4 x float>, ptr %i.cj, align 4, !tbaa !10
  %wide.load114.9 = load <4 x float>, ptr %i.ck, align 4, !tbaa !10
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  store <4 x float> %wide.load.9, ptr %i.cl, align 16, !tbaa !10
  store <4 x float> %wide.load114.9, ptr %i.cm, align 16, !tbaa !10
  %i.cn = add i32 %4, 80
  %i.co = and i32 %i.cn, 1023
  %i.cp = zext nneg i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr @noise_tab, i64 %i.cp ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %wide.load.10 = load <4 x float>, ptr %i.cq, align 4, !tbaa !10
  %wide.load114.10 = load <4 x float>, ptr %i.cr, align 4, !tbaa !10
  %i.cs = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  store <4 x float> %wide.load.10, ptr %i.cs, align 16, !tbaa !10
  store <4 x float> %wide.load114.10, ptr %i.ct, align 16, !tbaa !10
  %i.cu = add i32 %4, 88
  %i.cv = and i32 %i.cu, 1023
  %i.cw = zext nneg i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr @noise_tab, i64 %i.cw ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %wide.load.11 = load <4 x float>, ptr %i.cx, align 4, !tbaa !10
  %wide.load114.11 = load <4 x float>, ptr %i.cy, align 4, !tbaa !10
  %i.cz = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  %i.da = getelementptr inbounds nuw i8, ptr %i.a, i64 368
  store <4 x float> %wide.load.11, ptr %i.cz, align 16, !tbaa !10
  store <4 x float> %wide.load114.11, ptr %i.da, align 16, !tbaa !10
  %i.db = add i32 %4, 96
  %i.dc = and i32 %i.db, 1023
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw [4 x i8], ptr @noise_tab, i64 %i.dd ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %wide.load.12 = load <4 x float>, ptr %i.de, align 4, !tbaa !10
  %wide.load114.12 = load <4 x float>, ptr %i.df, align 4, !tbaa !10
  %i.dg = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  %i.dh = getelementptr inbounds nuw i8, ptr %i.a, i64 400
  store <4 x float> %wide.load.12, ptr %i.dg, align 16, !tbaa !10
  store <4 x float> %wide.load114.12, ptr %i.dh, align 16, !tbaa !10
  %i.di = add i32 %4, 104
  %i.dj = and i32 %i.di, 1023
  %i.dk = zext nneg i32 %i.dj to i64
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr @noise_tab, i64 %i.dk ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %wide.load.13 = load <4 x float>, ptr %i.dl, align 4, !tbaa !10
  %wide.load114.13 = load <4 x float>, ptr %i.dm, align 4, !tbaa !10
  %i.dn = getelementptr inbounds nuw i8, ptr %i.a, i64 416
  %i.do = getelementptr inbounds nuw i8, ptr %i.a, i64 432
  store <4 x float> %wide.load.13, ptr %i.dn, align 16, !tbaa !10
  store <4 x float> %wide.load114.13, ptr %i.do, align 16, !tbaa !10
  %i.dp = add i32 %4, 112
  %i.dq = and i32 %i.dp, 1023
  %i.dr = zext nneg i32 %i.dq to i64
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr @noise_tab, i64 %i.dr ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %wide.load.14 = load <4 x float>, ptr %i.ds, align 4, !tbaa !10
  %wide.load114.14 = load <4 x float>, ptr %i.dt, align 4, !tbaa !10
  %i.du = getelementptr inbounds nuw i8, ptr %i.a, i64 448
  %i.dv = getelementptr inbounds nuw i8, ptr %i.a, i64 464
  store <4 x float> %wide.load.14, ptr %i.du, align 16, !tbaa !10
  store <4 x float> %wide.load114.14, ptr %i.dv, align 16, !tbaa !10
  %i.dw = add i32 %4, 120
  %i.dx = and i32 %i.dw, 1023
  %i.dy = zext nneg i32 %i.dx to i64
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr @noise_tab, i64 %i.dy ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %wide.load.15 = load <4 x float>, ptr %i.dz, align 4, !tbaa !10
  %wide.load114.15 = load <4 x float>, ptr %i.ea, align 4, !tbaa !10
  %i.eb = getelementptr inbounds nuw i8, ptr %i.a, i64 480
  %i.ec = getelementptr inbounds nuw i8, ptr %i.a, i64 496
  store <4 x float> %wide.load.15, ptr %i.eb, align 16, !tbaa !10
  store <4 x float> %wide.load114.15, ptr %i.ec, align 16, !tbaa !10
  br label %middle.block

.preheader82:                                     ; preds = %vector.scevcheck, %.preheader82
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader82 ], [ 0, %vector.scevcheck ] ; 5 uses
  %.07783 = phi i32 [ %i.fd, %.preheader82 ], [ %4, %vector.scevcheck ] ; 5 uses
  %i.ed = and i32 %.07783, 1023
  %i.ee = zext nneg i32 %i.ed to i64
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr @noise_tab, i64 %i.ee
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !10
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  store float %i.eg, ptr %i.eh, align 16, !tbaa !10
  %i.ei = add nsw i32 %.07783, 1
  %i.ej = and i32 %i.ei, 1023
  %i.ek = zext nneg i32 %i.ej to i64
  %i.el = getelementptr inbounds nuw [4 x i8], ptr @noise_tab, i64 %i.ek
  %i.em = load float, ptr %i.el, align 4, !tbaa !10
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  store float %i.em, ptr %i.eo, align 4, !tbaa !10
  %i.ep = add nsw i32 %.07783, 2
  %i.eq = and i32 %i.ep, 1023
  %i.er = zext nneg i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw [4 x i8], ptr @noise_tab, i64 %i.er
  %i.et = load float, ptr %i.es, align 4, !tbaa !10
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  store float %i.et, ptr %i.ev, align 8, !tbaa !10
  %i.ew = add nsw i32 %.07783, 3
  %i.ex = and i32 %i.ew, 1023
  %i.ey = zext nneg i32 %i.ex to i64
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr @noise_tab, i64 %i.ey
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !10
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 12
  store float %i.fa, ptr %i.fc, align 4, !tbaa !10
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.fd = add nsw i32 %.07783, 4
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, 128
  br i1 %exitcond.not.3, label %middle.block, label %.preheader82, !llvm.loop !61

middle.block:                                     ; preds = %.preheader82, %vector.body
  %i.fe = getelementptr inbounds nuw i8, ptr %i.n, i64 6480
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !68
  %i.fg = getelementptr inbounds [60 x i8], ptr %i.ff, i64 %.pre-phi ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.n, i64 6488
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !69
  %i.fj = getelementptr inbounds [60 x i8], ptr %i.fi, i64 %.pre-phi ; 2 uses
  %i.fk = load i32, ptr %i.fg, align 4, !tbaa !71 ; 3 uses
  %i.fl = icmp sgt i32 %i.fk, 0                   ; 2 uses
  br i1 %i.fl, label %bb.d, label %bb.e

bb.d:                                             ; preds = %middle.block
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fg, i64 4
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !27
  %i.fo = sub i32 12, %i.fn
  br label %bb.e

bb.e:                                             ; preds = %middle.block, %bb.d
  %.neg81 = phi i32 [ %i.fo, %bb.d ], [ 6, %middle.block ] ; 2 uses
  %i.fp = load i32, ptr %i.fj, align 4, !tbaa !71 ; 3 uses
  %i.fq = icmp sgt i32 %i.fp, 0
  br i1 %i.fq, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.e
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fj, i64 4 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.fp to i64   ; 3 uses
  %min.iters.check = icmp ult i32 %i.fp, 8
  br i1 %min.iters.check, label %scalar.ph115.preheader, label %vector.ph116

vector.ph116:                                     ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.neg81, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body117

vector.body117:                                   ; preds = %vector.body117, %vector.ph116
  %index118 = phi i64 [ 0, %vector.ph116 ], [ %index.next122, %vector.body117 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph116 ], [ %i.fw, %vector.body117 ]
  %vec.phi119 = phi <4 x i32> [ zeroinitializer, %vector.ph116 ], [ %i.fx, %vector.body117 ]
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %index118 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  %wide.load120 = load <4 x i32>, ptr %i.fs, align 4, !tbaa !27
  %wide.load121 = load <4 x i32>, ptr %i.ft, align 4, !tbaa !27
  %i.fu = sub <4 x i32> %broadcast.splat, %wide.load120
  %i.fv = sub <4 x i32> %broadcast.splat, %wide.load121
  %i.fw = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi, <4 x i32> %i.fu) ; 2 uses
  %i.fx = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi119, <4 x i32> %i.fv) ; 2 uses
  %index.next122 = add nuw i64 %index118, 8       ; 2 uses
  %i.fy = icmp eq i64 %index.next122, %n.vec
  br i1 %i.fy, label %middle.block123, label %vector.body117, !llvm.loop !62

middle.block123:                                  ; preds = %vector.body117
  %rdx.minmax = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.fw, <4 x i32> %i.fx)
  %i.fz = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader, label %scalar.ph115.preheader

scalar.ph115.preheader:                           ; preds = %.lr.ph, %middle.block123
  %indvars.iv95.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block123 ]
  %.07486.ph = phi i32 [ 0, %.lr.ph ], [ %i.fz, %middle.block123 ]
  br label %scalar.ph115

.preheader:                                       ; preds = %scalar.ph115, %middle.block123, %bb.e
  %.074.lcssa = phi i32 [ 0, %bb.e ], [ %i.fz, %middle.block123 ], [ %.074., %scalar.ph115 ] ; 3 uses
  br i1 %i.fl, label %.lr.ph89, label %._crit_edge

.lr.ph89:                                         ; preds = %.preheader
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fg, i64 4 ; 2 uses
  %wide.trip.count102 = zext nneg i32 %i.fk to i64 ; 3 uses
  %min.iters.check125 = icmp ult i32 %i.fk, 8
  br i1 %min.iters.check125, label %scalar.ph124.preheader, label %vector.ph126

vector.ph126:                                     ; preds = %.lr.ph89
  %n.vec127 = and i64 %wide.trip.count102, 2147483640 ; 3 uses
  %broadcast.splatinsert128 = insertelement <4 x i32> poison, i32 %.074.lcssa, i64 0
  %broadcast.splat129 = shufflevector <4 x i32> %broadcast.splatinsert128, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body130

vector.body130:                                   ; preds = %vector.body130, %vector.ph126
  %index131 = phi i64 [ 0, %vector.ph126 ], [ %index.next136, %vector.body130 ] ; 2 uses
  %vec.phi132 = phi <4 x i32> [ %broadcast.splat129, %vector.ph126 ], [ %i.gf, %vector.body130 ]
  %vec.phi133 = phi <4 x i32> [ %broadcast.splat129, %vector.ph126 ], [ %i.gg, %vector.body130 ]
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %index131 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  %wide.load134 = load <4 x i32>, ptr %i.gb, align 4, !tbaa !27
  %wide.load135 = load <4 x i32>, ptr %i.gc, align 4, !tbaa !27
  %i.gd = sub nsw <4 x i32> splat (i32 6), %wide.load134
  %i.ge = sub nsw <4 x i32> splat (i32 6), %wide.load135
  %i.gf = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi132, <4 x i32> %i.gd) ; 2 uses
  %i.gg = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi133, <4 x i32> %i.ge) ; 2 uses
  %index.next136 = add nuw i64 %index131, 8       ; 2 uses
  %i.gh = icmp eq i64 %index.next136, %n.vec127
  br i1 %i.gh, label %middle.block137, label %vector.body130, !llvm.loop !63

middle.block137:                                  ; preds = %vector.body130
  %rdx.minmax138 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.gf, <4 x i32> %i.gg)
  %i.gi = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax138) ; 2 uses
  %cmp.n139 = icmp eq i64 %n.vec127, %wide.trip.count102
  br i1 %cmp.n139, label %._crit_edge, label %scalar.ph124.preheader

scalar.ph124.preheader:                           ; preds = %.lr.ph89, %middle.block137
  %indvars.iv99.ph = phi i64 [ 0, %.lr.ph89 ], [ %n.vec127, %middle.block137 ]
  %.188.ph = phi i32 [ %.074.lcssa, %.lr.ph89 ], [ %i.gi, %middle.block137 ]
  br label %scalar.ph124

scalar.ph115:                                     ; preds = %scalar.ph115.preheader, %scalar.ph115
  %indvars.iv95 = phi i64 [ %indvars.iv.next96, %scalar.ph115 ], [ %indvars.iv95.ph, %scalar.ph115.preheader ] ; 2 uses
  %.07486 = phi i32 [ %.074., %scalar.ph115 ], [ %.07486.ph, %scalar.ph115.preheader ]
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %indvars.iv95
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !27
  %i.gl = sub i32 %.neg81, %i.gk
  %.074. = tail call i32 @llvm.smax.i32(i32 %.07486, i32 %i.gl) ; 2 uses
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1 ; 2 uses
  %exitcond98.not = icmp eq i64 %indvars.iv.next96, %wide.trip.count
  br i1 %exitcond98.not, label %.preheader, label %scalar.ph115, !llvm.loop !64

scalar.ph124:                                     ; preds = %scalar.ph124.preheader, %scalar.ph124
  %indvars.iv99 = phi i64 [ %indvars.iv.next100, %scalar.ph124 ], [ %indvars.iv99.ph, %scalar.ph124.preheader ] ; 2 uses
  %.188 = phi i32 [ %.1., %scalar.ph124 ], [ %.188.ph, %scalar.ph124.preheader ]
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %indvars.iv99
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !27
  %i.go = sub nsw i32 6, %i.gn
  %.1. = tail call i32 @llvm.smax.i32(i32 %.188, i32 %i.go) ; 2 uses
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1 ; 2 uses
  %exitcond103.not = icmp eq i64 %indvars.iv.next100, %wide.trip.count102
  br i1 %exitcond103.not, label %._crit_edge, label %scalar.ph124, !llvm.loop !65

._crit_edge:                                      ; preds = %scalar.ph124, %middle.block137, %.preheader
  %.1.lcssa = phi i32 [ %.074.lcssa, %.preheader ], [ %i.gi, %middle.block137 ], [ %.1., %scalar.ph124 ]
  %i.gp = zext i8 %i.t to i64
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr @pwc_levs, i64 %i.gp
  %i.gr = load float, ptr %i.gq, align 4, !tbaa !10
  %i.gs = shl nuw i32 1, %.1.lcssa
  %i.gt = sitofp nsz i32 %i.gs to float
  %i.gu = fdiv nsz float %i.gr, %i.gt
  %i.gv = getelementptr inbounds i8, ptr @subband_to_qu, i64 %.pre-phi ; 2 uses
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !24  ; 2 uses
  %i.gx = zext i8 %i.gw to i32
  %.not = icmp eq i32 %5, 0
  %i.gy = select i1 %.not, i32 2, i32 0           ; 2 uses
  %i.gz = add nuw nsw i32 %i.gy, %i.gx
  %i.ha = getelementptr i8, ptr %i.gv, i64 1
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !24  ; 2 uses
  %i.hc = zext i8 %i.hb to i32
  %i.hd = icmp samesign ult i32 %i.gz, %i.hc
  br i1 %i.hd, label %.lr.ph93, label %.loopexit

.lr.ph93:                                         ; preds = %._crit_edge
  %i.he = sext i32 %2 to i64
  %i.hf = getelementptr inbounds [7800 x i8], ptr %i.l, i64 %i.he ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 20
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hf, i64 148
  %i.hi = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.hj = zext nneg i32 %i.gy to i64
  %i.hk = zext i8 %i.gw to i64
  %i.hl = add nuw nsw i64 %i.hj, %i.hk
  %wide.trip.count107 = zext i8 %i.hb to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph93, %bb.h
  %indvars.iv104 = phi i64 [ %i.hl, %.lr.ph93 ], [ %indvars.iv.next105, %bb.h ] ; 4 uses
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %indvars.iv104
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !27 ; 3 uses
  %i.ho = icmp slt i32 %i.hn, 1
  br i1 %i.ho, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %indvars.iv104
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !27
  %i.hr = sext i32 %i.hq to i64
  %i.hs = getelementptr inbounds [4 x i8], ptr @ff_atrac3p_sf_tab, i64 %i.hr
  %i.ht = load float, ptr %i.hs, align 4, !tbaa !10
  %i.hu = zext nneg i32 %i.hn to i64
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr @ff_atrac3p_mant_tab, i64 %i.hu
  %i.hw = load float, ptr %i.hv, align 4, !tbaa !10
  %i.hx = fmul nsz float %i.ht, %i.hw
  %i.hy = shl nuw i32 1, %i.hn
  %i.hz = sitofp nsz i32 %i.hy to float
  %i.ia = fdiv nsz float %i.hx, %i.hz
  %i.ib = fmul nsz float %i.gu, %i.ia
  %i.ic = getelementptr inbounds nuw [2 x i8], ptr @ff_atrac3p_qu_to_spec_pos, i64 %indvars.iv104 ; 2 uses
  %i.id = load i16, ptr %i.ic, align 2, !tbaa !73 ; 2 uses
  %i.ie = zext i16 %i.id to i64
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ie
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ic, i64 2
  %i.ih = load i16, ptr %i.ig, align 2, !tbaa !73
  %i.ii = zext i16 %i.ih to i32
  %i.ij = zext i16 %i.id to i32
  %i.ik = sub nsw i32 %i.ii, %i.ij
  %i.il = load ptr, ptr %i.hi, align 8, !tbaa !74
  call void %i.il(ptr noundef %i.if, ptr noundef nonnull %i.a, float noundef %i.ib, i32 noundef %i.ik) #7
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, 1 ; 2 uses
  %exitcond108.not = icmp eq i64 %indvars.iv.next105, %wide.trip.count107
  br i1 %exitcond108.not, label %.loopexit, label %bb.f, !llvm.loop !66

.loopexit:                                        ; preds = %bb.h, %._crit_edge, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: nounwind uwtable
define void @ff_atrac3p_imdct(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #3 {
bb.a:
  %i.a = and i32 %6, 1
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %.loopexit, label %vector.body

vector.body:                                      ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 496 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 480 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.b, align 4, !tbaa !10
  %wide.load35 = load <4 x float>, ptr %i.c, align 4, !tbaa !10
  %reverse = shufflevector <4 x float> %wide.load, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse36 = shufflevector <4 x float> %wide.load35, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %wide.load37 = load <4 x float>, ptr %3, align 4, !tbaa !10
  %wide.load38 = load <4 x float>, ptr %i.d, align 4, !tbaa !10
  %reverse39 = shufflevector <4 x float> %wide.load37, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse40 = shufflevector <4 x float> %wide.load38, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x float> %reverse39, ptr %i.b, align 4, !tbaa !10
  store <4 x float> %reverse40, ptr %i.c, align 4, !tbaa !10
  store <4 x float> %reverse, ptr %3, align 4, !tbaa !10
  store <4 x float> %reverse36, ptr %i.d, align 4, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 464 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 448 ; 2 uses
  %wide.load.1 = load <4 x float>, ptr %i.e, align 4, !tbaa !10
  %wide.load35.1 = load <4 x float>, ptr %i.f, align 4, !tbaa !10
  %reverse.1 = shufflevector <4 x float> %wide.load.1, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse36.1 = shufflevector <4 x float> %wide.load35.1, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %wide.load37.1 = load <4 x float>, ptr %i.g, align 4, !tbaa !10
  %wide.load38.1 = load <4 x float>, ptr %i.h, align 4, !tbaa !10
  %reverse39.1 = shufflevector <4 x float> %wide.load37.1, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse40.1 = shufflevector <4 x float> %wide.load38.1, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x float> %reverse39.1, ptr %i.e, align 4, !tbaa !10
  store <4 x float> %reverse40.1, ptr %i.f, align 4, !tbaa !10
  store <4 x float> %reverse.1, ptr %i.g, align 4, !tbaa !10
  store <4 x float> %reverse36.1, ptr %i.h, align 4, !tbaa !10
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 432 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 416 ; 2 uses
  %wide.load.2 = load <4 x float>, ptr %i.i, align 4, !tbaa !10
  %wide.load35.2 = load <4 x float>, ptr %i.j, align 4, !tbaa !10
  %reverse.2 = shufflevector <4 x float> %wide.load.2, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse36.2 = shufflevector <4 x float> %wide.load35.2, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  %wide.load37.2 = load <4 x float>, ptr %i.k, align 4, !tbaa !10
  %wide.load38.2 = load <4 x float>, ptr %i.l, align 4, !tbaa !10
  %reverse39.2 = shufflevector <4 x float> %wide.load37.2, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse40.2 = shufflevector <4 x float> %wide.load38.2, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x float> %reverse39.2, ptr %i.i, align 4, !tbaa !10
  store <4 x float> %reverse40.2, ptr %i.j, align 4, !tbaa !10
  store <4 x float> %reverse.2, ptr %i.k, align 4, !tbaa !10
  store <4 x float> %reverse36.2, ptr %i.l, align 4, !tbaa !10
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 400 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 384 ; 2 uses
  %wide.load.3 = load <4 x float>, ptr %i.m, align 4, !tbaa !10
  %wide.load35.3 = load <4 x float>, ptr %i.n, align 4, !tbaa !10
  %reverse.3 = shufflevector <4 x float> %wide.load.3, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse36.3 = shufflevector <4 x float> %wide.load35.3, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 2 uses
  %wide.load37.3 = load <4 x float>, ptr %i.o, align 4, !tbaa !10
  %wide.load38.3 = load <4 x float>, ptr %i.p, align 4, !tbaa !10
  %reverse39.3 = shufflevector <4 x float> %wide.load37.3, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse40.3 = shufflevector <4 x float> %wide.load38.3, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x float> %reverse39.3, ptr %i.m, align 4, !tbaa !10
  store <4 x float> %reverse40.3, ptr %i.n, align 4, !tbaa !10
  store <4 x float> %reverse.3, ptr %i.o, align 4, !tbaa !10
  store <4 x float> %reverse36.3, ptr %i.p, align 4, !tbaa !10
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 368 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 352 ; 2 uses
  %wide.load.4 = load <4 x float>, ptr %i.q, align 4, !tbaa !10
  %wide.load35.4 = load <4 x float>, ptr %i.r, align 4, !tbaa !10
  %reverse.4 = shufflevector <4 x float> %wide.load.4, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse36.4 = shufflevector <4 x float> %wide.load35.4, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 144 ; 2 uses
  %wide.load37.4 = load <4 x float>, ptr %i.s, align 4, !tbaa !10
  %wide.load38.4 = load <4 x float>, ptr %i.t, align 4, !tbaa !10
  %reverse39.4 = shufflevector <4 x float> %wide.load37.4, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse40.4 = shufflevector <4 x float> %wide.load38.4, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x float> %reverse39.4, ptr %i.q, align 4, !tbaa !10
  store <4 x float> %reverse40.4, ptr %i.r, align 4, !tbaa !10
  store <4 x float> %reverse.4, ptr %i.s, align 4, !tbaa !10
  store <4 x float> %reverse36.4, ptr %i.t, align 4, !tbaa !10
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 336 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 320 ; 2 uses
  %wide.load.5 = load <4 x float>, ptr %i.u, align 4, !tbaa !10
  %wide.load35.5 = load <4 x float>, ptr %i.v, align 4, !tbaa !10
  %reverse.5 = shufflevector <4 x float> %wide.load.5, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse36.5 = shufflevector <4 x float> %wide.load35.5, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 160 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 176 ; 2 uses
  %wide.load37.5 = load <4 x float>, ptr %i.w, align 4, !tbaa !10
  %wide.load38.5 = load <4 x float>, ptr %i.x, align 4, !tbaa !10
  %reverse39.5 = shufflevector <4 x float> %wide.load37.5, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse40.5 = shufflevector <4 x float> %wide.load38.5, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x float> %reverse39.5, ptr %i.u, align 4, !tbaa !10
  store <4 x float> %reverse40.5, ptr %i.v, align 4, !tbaa !10
  store <4 x float> %reverse.5, ptr %i.w, align 4, !tbaa !10
  store <4 x float> %reverse36.5, ptr %i.x, align 4, !tbaa !10
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 304 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 288 ; 2 uses
  %wide.load.6 = load <4 x float>, ptr %i.y, align 4, !tbaa !10
  %wide.load35.6 = load <4 x float>, ptr %i.z, align 4, !tbaa !10
  %reverse.6 = shufflevector <4 x float> %wide.load.6, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse36.6 = shufflevector <4 x float> %wide.load35.6, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 192 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 208 ; 2 uses
  %wide.load37.6 = load <4 x float>, ptr %i.aa, align 4, !tbaa !10
  %wide.load38.6 = load <4 x float>, ptr %i.ab, align 4, !tbaa !10
  %reverse39.6 = shufflevector <4 x float> %wide.load37.6, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse40.6 = shufflevector <4 x float> %wide.load38.6, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x float> %reverse39.6, ptr %i.y, align 4, !tbaa !10
  store <4 x float> %reverse40.6, ptr %i.z, align 4, !tbaa !10
  store <4 x float> %reverse.6, ptr %i.aa, align 4, !tbaa !10
  store <4 x float> %reverse36.6, ptr %i.ab, align 4, !tbaa !10
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 272 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 256 ; 2 uses
  %wide.load.7 = load <4 x float>, ptr %i.ac, align 4, !tbaa !10
  %wide.load35.7 = load <4 x float>, ptr %i.ad, align 4, !tbaa !10
  %reverse.7 = shufflevector <4 x float> %wide.load.7, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse36.7 = shufflevector <4 x float> %wide.load35.7, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 224 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 240 ; 2 uses
  %wide.load37.7 = load <4 x float>, ptr %i.ae, align 4, !tbaa !10
  %wide.load38.7 = load <4 x float>, ptr %i.af, align 4, !tbaa !10
  %reverse39.7 = shufflevector <4 x float> %wide.load37.7, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse40.7 = shufflevector <4 x float> %wide.load38.7, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x float> %reverse39.7, ptr %i.ac, align 4, !tbaa !10
  store <4 x float> %reverse40.7, ptr %i.ad, align 4, !tbaa !10
  store <4 x float> %reverse.7, ptr %i.ae, align 4, !tbaa !10
  store <4 x float> %reverse36.7, ptr %i.af, align 4, !tbaa !10
  br label %.loopexit

.loopexit:                                        ; preds = %vector.body, %bb.a
  tail call void %2(ptr noundef %1, ptr noundef %4, ptr noundef %3, i64 noundef 4) #7
  %i.ag = and i32 %5, 2
  %.not31 = icmp eq i32 %i.ag, 0
  br i1 %.not31, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.loopexit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %4, i8 0, i64 128, i1 false)
  %i.ah = load ptr, ptr %0, align 8, !tbaa !26
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 128 ; 2 uses
  tail call void %i.ah(ptr noundef nonnull %i.ai, ptr noundef nonnull %i.ai, ptr noundef nonnull @ff_sine_64, i32 noundef 64) #7
  br label %bb.d

bb.c:                                             ; preds = %.loopexit
  %i.aj = load ptr, ptr %0, align 8, !tbaa !26
  tail call void %i.aj(ptr noundef %4, ptr noundef %4, ptr noundef nonnull @ff_sine_128, i32 noundef 128) #7
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ak = and i32 %5, 1
  %.not32 = icmp eq i32 %i.ak, 0
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !75 ; 2 uses
  br i1 %.not32, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 640 ; 2 uses
  tail call void %i.am(ptr noundef nonnull %i.an, ptr noundef nonnull %i.an, ptr noundef nonnull @ff_sine_64, i32 noundef 64) #7
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 896
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.ao, i8 0, i64 128, i1 false)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 512 ; 2 uses
  tail call void %i.am(ptr noundef nonnull %i.ap, ptr noundef nonnull %i.ap, ptr noundef nonnull @ff_sine_128, i32 noundef 128) #7
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: nounwind uwtable
define void @ff_atrac3p_ipqf(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) initializes((0, 8192)) %4) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [16 x float], align 16            ; 19 uses
  %i.b = alloca [16 x float], align 16            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(8192) %4, i8 0, i64 8192, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 1536 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 768 ; 2 uses
  %scevgep = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %.preheader67

.preheader67:                                     ; preds = %bb.a, %bb.b
  %indvars.iv84 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next85, %bb.b ] ; 18 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv84
  %i.v = load float, ptr %i.u, align 4, !tbaa !10
  store float %i.v, ptr %i.a, align 16, !tbaa !10
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv84
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 512
  %i.y = load float, ptr %i.x, align 4, !tbaa !10
  store float %i.y, ptr %i.e, align 4, !tbaa !10
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv84
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 1024
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !10
  store float %i.ab, ptr %i.f, align 8, !tbaa !10
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv84
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 1536
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !10
  store float %i.ae, ptr %i.g, align 4, !tbaa !10
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv84
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 2048
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !10
  store float %i.ah, ptr %i.h, align 16, !tbaa !10
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv84
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 2560
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !10
  store float %i.ak, ptr %i.i, align 4, !tbaa !10
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv84
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 3072
  %i.an = load float, ptr %i.am, align 4, !tbaa !10
  store float %i.an, ptr %i.j, align 8, !tbaa !10
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv84
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 3584
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !10
  store float %i.aq, ptr %i.k, align 4, !tbaa !10
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv84
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4096
  %i.at = load float, ptr %i.as, align 4, !tbaa !10
  store float %i.at, ptr %i.l, align 16, !tbaa !10
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv84
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4608
  %i.aw = load float, ptr %i.av, align 4, !tbaa !10
  store float %i.aw, ptr %i.m, align 4, !tbaa !10
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv84
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 5120
  %i.az = load float, ptr %i.ay, align 4, !tbaa !10
  store float %i.az, ptr %i.n, align 8, !tbaa !10
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv84
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 5632
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !10
  store float %i.bc, ptr %i.o, align 4, !tbaa !10
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv84
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 6144
  %i.bf = load float, ptr %i.be, align 4, !tbaa !10
  store float %i.bf, ptr %i.p, align 16, !tbaa !10
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv84
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 6656
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !10
  store float %i.bi, ptr %i.q, align 4, !tbaa !10
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv84
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 7168
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !10
  store float %i.bl, ptr %i.r, align 8, !tbaa !10
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv84
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 7680
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !10
  store float %i.bo, ptr %i.s, align 4, !tbaa !10
  call void %1(ptr noundef %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i64 noundef 4) #7
  %i.bp = load i32, ptr %i.c, align 16, !tbaa !79
  %i.bq = sext i32 %i.bp to i64                   ; 2 uses
  %i.br = getelementptr inbounds [32 x i8], ptr %2, i64 %i.bq
  %i.bs = getelementptr inbounds [32 x i8], ptr %i.d, i64 %i.bq ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.br, ptr noundef nonnull align 16 dereferenceable(32) %scevgep, i64 32, i1 false), !tbaa !10
  %i.bt = load <4 x float>, ptr %i.t, align 16, !tbaa !10
  %i.bu = shufflevector <4 x float> %i.bt, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x float> %i.bu, ptr %i.bs, align 4, !tbaa !10
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bw = load <4 x float>, ptr %i.b, align 16, !tbaa !10
  %i.bx = shufflevector <4 x float> %i.bw, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x float> %i.bx, ptr %i.bv, align 4, !tbaa !10
  %i.by = shl nuw nsw i64 %indvars.iv84, 4        ; 8 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.by ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 32 ; 2 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.by ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 4 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 36 ; 2 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.by ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 40 ; 2 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.by ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 12 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 44 ; 2 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.by ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 48 ; 2 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.by ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 20 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 52 ; 2 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.by ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 24 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 56 ; 2 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.by ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 28 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 60 ; 2 uses
  %.promoted = load float, ptr %i.bz, align 4, !tbaa !10
  %.promoted88 = load float, ptr %i.ca, align 4, !tbaa !10
  %.promoted89 = load float, ptr %i.cc, align 4, !tbaa !10
  %.promoted90 = load float, ptr %i.cd, align 4, !tbaa !10
  %.promoted91 = load float, ptr %i.cf, align 4, !tbaa !10
  %.promoted92 = load float, ptr %i.cg, align 4, !tbaa !10
  %.promoted93 = load float, ptr %i.ci, align 4, !tbaa !10
  %.promoted94 = load float, ptr %i.cj, align 4, !tbaa !10
  %.promoted95 = load float, ptr %i.cl, align 4, !tbaa !10
  %.promoted96 = load float, ptr %i.cm, align 4, !tbaa !10
  %.promoted97 = load float, ptr %i.co, align 4, !tbaa !10
  %.promoted98 = load float, ptr %i.cp, align 4, !tbaa !10
  %.promoted99 = load float, ptr %i.cr, align 4, !tbaa !10
  %.promoted100 = load float, ptr %i.cs, align 4, !tbaa !10
  %.promoted101 = load float, ptr %i.cu, align 4, !tbaa !10
  %.promoted102 = load float, ptr %i.cv, align 4, !tbaa !10
  br label %.preheader

.preheader:                                       ; preds = %.preheader67, %.preheader
  %i.cw = phi float [ %.promoted102, %.preheader67 ], [ %i.jq, %.preheader ]
  %i.cx = phi float [ %.promoted101, %.preheader67 ], [ %i.jh, %.preheader ]
  %i.cy = phi float [ %.promoted100, %.preheader67 ], [ %i.iy, %.preheader ]
  %i.cz = phi float [ %.promoted99, %.preheader67 ], [ %i.ip, %.preheader ]
  %i.da = phi float [ %.promoted98, %.preheader67 ], [ %i.ig, %.preheader ]
  %i.db = phi float [ %.promoted97, %.preheader67 ], [ %i.hx, %.preheader ]
  %i.dc = phi float [ %.promoted96, %.preheader67 ], [ %i.ho, %.preheader ]
  %i.dd = phi float [ %.promoted95, %.preheader67 ], [ %i.hf, %.preheader ]
  %i.de = phi float [ %.promoted94, %.preheader67 ], [ %i.gw, %.preheader ]
  %i.df = phi float [ %.promoted93, %.preheader67 ], [ %i.gl, %.preheader ]
  %i.dg = phi float [ %.promoted92, %.preheader67 ], [ %i.ga, %.preheader ]
  %i.dh = phi float [ %.promoted91, %.preheader67 ], [ %i.fp, %.preheader ]
  %i.di = phi float [ %.promoted90, %.preheader67 ], [ %i.fe, %.preheader ]
  %i.dj = phi float [ %.promoted89, %.preheader67 ], [ %i.et, %.preheader ]
  %i.dk = phi float [ %.promoted88, %.preheader67 ], [ %i.ei, %.preheader ]
  %i.dl = phi float [ %.promoted, %.preheader67 ], [ %i.dx, %.preheader ]
  %indvars.iv = phi i64 [ 0, %.preheader67 ], [ %indvars.iv.next, %.preheader ] ; 3 uses
  %.pn6677.in.in = phi ptr [ %i.c, %.preheader67 ], [ %i.js, %.preheader ]
  %.pn6677.in = load i32, ptr %.pn6677.in.in, align 4, !tbaa !27
  %.pn6677 = sext i32 %.pn6677.in to i64          ; 2 uses
  %.pn73.pn = getelementptr [4 x i8], ptr @mod23_lut, i64 %.pn6677
  %.078.in = getelementptr i8, ptr %.pn73.pn, i64 8
  %.078 = load i32, ptr %.078.in, align 4, !tbaa !27
  %i.dm = getelementptr inbounds [32 x i8], ptr %2, i64 %.pn6677 ; 9 uses
  %i.dn = getelementptr inbounds nuw [64 x i8], ptr @ipqf_coeffs1, i64 %indvars.iv ; 16 uses
  %i.do = sext i32 %.078 to i64                   ; 2 uses
  %i.dp = getelementptr inbounds [32 x i8], ptr %i.d, i64 %i.do ; 9 uses
  %i.dq = getelementptr inbounds nuw [64 x i8], ptr @ipqf_coeffs2, i64 %indvars.iv ; 16 uses
  %i.dr = load float, ptr %i.dm, align 4, !tbaa !10
  %i.ds = load float, ptr %i.dn, align 16, !tbaa !10
  %i.dt = load float, ptr %i.dp, align 4, !tbaa !10
  %i.du = load float, ptr %i.dq, align 16, !tbaa !10
  %i.dv = fmul nsz float %i.dt, %i.du
  %i.dw = call nsz float @llvm.fmuladd.f32(float %i.dr, float %i.ds, float %i.dv)
  %i.dx = fadd nsz float %i.dl, %i.dw             ; 2 uses
  store float %i.dx, ptr %i.bz, align 4, !tbaa !10
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dm, i64 28 ; 2 uses
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !10
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dn, i64 32
  %i.eb = load float, ptr %i.ea, align 16, !tbaa !10
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dp, i64 28 ; 2 uses
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !10
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dq, i64 32
  %i.ef = load float, ptr %i.ee, align 16, !tbaa !10
  %i.eg = fmul nsz float %i.ed, %i.ef
  %i.eh = call nsz float @llvm.fmuladd.f32(float %i.dz, float %i.eb, float %i.eg)
  %i.ei = fadd nsz float %i.dk, %i.eh             ; 2 uses
  store float %i.ei, ptr %i.ca, align 4, !tbaa !10
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dm, i64 4 ; 2 uses
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !10
  %i.el = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  %i.em = load float, ptr %i.el, align 4, !tbaa !10
  %i.en = getelementptr inbounds nuw i8, ptr %i.dp, i64 4 ; 2 uses
  %i.eo = load float, ptr %i.en, align 4, !tbaa !10
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dq, i64 4
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !10
  %i.er = fmul nsz float %i.eo, %i.eq
  %i.es = call nsz float @llvm.fmuladd.f32(float %i.ek, float %i.em, float %i.er)
  %i.et = fadd nsz float %i.dj, %i.es             ; 2 uses
  store float %i.et, ptr %i.cc, align 4, !tbaa !10
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dm, i64 24 ; 2 uses
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !10
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dn, i64 36
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !10
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dp, i64 24 ; 2 uses
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !10
  %i.fa = getelementptr inbounds nuw i8, ptr %i.dq, i64 36
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !10
  %i.fc = fmul nsz float %i.ez, %i.fb
  %i.fd = call nsz float @llvm.fmuladd.f32(float %i.ev, float %i.ex, float %i.fc)
  %i.fe = fadd nsz float %i.di, %i.fd             ; 2 uses
  store float %i.fe, ptr %i.cd, align 4, !tbaa !10
  %i.ff = getelementptr inbounds nuw i8, ptr %i.dm, i64 8 ; 2 uses
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !10
  %i.fh = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.fi = load float, ptr %i.fh, align 8, !tbaa !10
  %i.fj = getelementptr inbounds nuw i8, ptr %i.dp, i64 8 ; 2 uses
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !10
  %i.fl = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.fm = load float, ptr %i.fl, align 8, !tbaa !10
  %i.fn = fmul nsz float %i.fk, %i.fm
  %i.fo = call nsz float @llvm.fmuladd.f32(float %i.fg, float %i.fi, float %i.fn)
  %i.fp = fadd nsz float %i.dh, %i.fo             ; 2 uses
  store float %i.fp, ptr %i.cf, align 4, !tbaa !10
  %i.fq = getelementptr inbounds nuw i8, ptr %i.dm, i64 20 ; 2 uses
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !10
  %i.fs = getelementptr inbounds nuw i8, ptr %i.dn, i64 40
  %i.ft = load float, ptr %i.fs, align 8, !tbaa !10
  %i.fu = getelementptr inbounds nuw i8, ptr %i.dp, i64 20 ; 2 uses
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !10
  %i.fw = getelementptr inbounds nuw i8, ptr %i.dq, i64 40
  %i.fx = load float, ptr %i.fw, align 8, !tbaa !10
  %i.fy = fmul nsz float %i.fv, %i.fx
  %i.fz = call nsz float @llvm.fmuladd.f32(float %i.fr, float %i.ft, float %i.fy)
  %i.ga = fadd nsz float %i.dg, %i.fz             ; 2 uses
  store float %i.ga, ptr %i.cg, align 4, !tbaa !10
  %i.gb = getelementptr inbounds nuw i8, ptr %i.dm, i64 12 ; 2 uses
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !10
  %i.gd = getelementptr inbounds nuw i8, ptr %i.dn, i64 12
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !10
  %i.gf = getelementptr inbounds nuw i8, ptr %i.dp, i64 12 ; 2 uses
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !10
  %i.gh = getelementptr inbounds nuw i8, ptr %i.dq, i64 12
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !10
  %i.gj = fmul nsz float %i.gg, %i.gi
  %i.gk = call nsz float @llvm.fmuladd.f32(float %i.gc, float %i.ge, float %i.gj)
  %i.gl = fadd nsz float %i.df, %i.gk             ; 2 uses
  store float %i.gl, ptr %i.ci, align 4, !tbaa !10
  %i.gm = getelementptr inbounds nuw i8, ptr %i.dm, i64 16 ; 2 uses
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !10
  %i.go = getelementptr inbounds nuw i8, ptr %i.dn, i64 44
  %i.gp = load float, ptr %i.go, align 4, !tbaa !10
  %i.gq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16 ; 2 uses
  %i.gr = load float, ptr %i.gq, align 4, !tbaa !10
  %i.gs = getelementptr inbounds nuw i8, ptr %i.dq, i64 44
  %i.gt = load float, ptr %i.gs, align 4, !tbaa !10
  %i.gu = fmul nsz float %i.gr, %i.gt
  %i.gv = call nsz float @llvm.fmuladd.f32(float %i.gn, float %i.gp, float %i.gu)
  %i.gw = fadd nsz float %i.de, %i.gv             ; 2 uses
  store float %i.gw, ptr %i.cj, align 4, !tbaa !10
  %i.gx = load float, ptr %i.gm, align 4, !tbaa !10
  %i.gy = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.gz = load float, ptr %i.gy, align 16, !tbaa !10
  %i.ha = load float, ptr %i.gq, align 4, !tbaa !10
  %i.hb = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.hc = load float, ptr %i.hb, align 16, !tbaa !10
  %i.hd = fmul nsz float %i.ha, %i.hc
  %i.he = call nsz float @llvm.fmuladd.f32(float %i.gx, float %i.gz, float %i.hd)
  %i.hf = fadd nsz float %i.dd, %i.he             ; 2 uses
  store float %i.hf, ptr %i.cl, align 4, !tbaa !10
  %i.hg = load float, ptr %i.gb, align 4, !tbaa !10
  %i.hh = getelementptr inbounds nuw i8, ptr %i.dn, i64 48
  %i.hi = load float, ptr %i.hh, align 16, !tbaa !10
  %i.hj = load float, ptr %i.gf, align 4, !tbaa !10
  %i.hk = getelementptr inbounds nuw i8, ptr %i.dq, i64 48
  %i.hl = load float, ptr %i.hk, align 16, !tbaa !10
  %i.hm = fmul nsz float %i.hj, %i.hl
  %i.hn = call nsz float @llvm.fmuladd.f32(float %i.hg, float %i.hi, float %i.hm)
  %i.ho = fadd nsz float %i.dc, %i.hn             ; 2 uses
  store float %i.ho, ptr %i.cm, align 4, !tbaa !10
  %i.hp = load float, ptr %i.fq, align 4, !tbaa !10
  %i.hq = getelementptr inbounds nuw i8, ptr %i.dn, i64 20
  %i.hr = load float, ptr %i.hq, align 4, !tbaa !10
  %i.hs = load float, ptr %i.fu, align 4, !tbaa !10
  %i.ht = getelementptr inbounds nuw i8, ptr %i.dq, i64 20
  %i.hu = load float, ptr %i.ht, align 4, !tbaa !10
  %i.hv = fmul nsz float %i.hs, %i.hu
  %i.hw = call nsz float @llvm.fmuladd.f32(float %i.hp, float %i.hr, float %i.hv)
  %i.hx = fadd nsz float %i.db, %i.hw             ; 2 uses
  store float %i.hx, ptr %i.co, align 4, !tbaa !10
  %i.hy = load float, ptr %i.ff, align 4, !tbaa !10
  %i.hz = getelementptr inbounds nuw i8, ptr %i.dn, i64 52
  %i.ia = load float, ptr %i.hz, align 4, !tbaa !10
  %i.ib = load float, ptr %i.fj, align 4, !tbaa !10
  %i.ic = getelementptr inbounds nuw i8, ptr %i.dq, i64 52
  %i.id = load float, ptr %i.ic, align 4, !tbaa !10
  %i.ie = fmul nsz float %i.ib, %i.id
  %i.if = call nsz float @llvm.fmuladd.f32(float %i.hy, float %i.ia, float %i.ie)
  %i.ig = fadd nsz float %i.da, %i.if             ; 2 uses
  store float %i.ig, ptr %i.cp, align 4, !tbaa !10
  %i.ih = load float, ptr %i.eu, align 4, !tbaa !10
  %i.ii = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  %i.ij = load float, ptr %i.ii, align 8, !tbaa !10
  %i.ik = load float, ptr %i.ey, align 4, !tbaa !10
  %i.il = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.im = load float, ptr %i.il, align 8, !tbaa !10
  %i.in = fmul nsz float %i.ik, %i.im
  %i.io = call nsz float @llvm.fmuladd.f32(float %i.ih, float %i.ij, float %i.in)
  %i.ip = fadd nsz float %i.cz, %i.io             ; 2 uses
  store float %i.ip, ptr %i.cr, align 4, !tbaa !10
  %i.iq = load float, ptr %i.ej, align 4, !tbaa !10
  %i.ir = getelementptr inbounds nuw i8, ptr %i.dn, i64 56
  %i.is = load float, ptr %i.ir, align 8, !tbaa !10
  %i.it = load float, ptr %i.en, align 4, !tbaa !10
  %i.iu = getelementptr inbounds nuw i8, ptr %i.dq, i64 56
  %i.iv = load float, ptr %i.iu, align 8, !tbaa !10
  %i.iw = fmul nsz float %i.it, %i.iv
  %i.ix = call nsz float @llvm.fmuladd.f32(float %i.iq, float %i.is, float %i.iw)
  %i.iy = fadd nsz float %i.cy, %i.ix             ; 2 uses
  store float %i.iy, ptr %i.cs, align 4, !tbaa !10
  %i.iz = load float, ptr %i.dy, align 4, !tbaa !10
  %i.ja = getelementptr inbounds nuw i8, ptr %i.dn, i64 28
  %i.jb = load float, ptr %i.ja, align 4, !tbaa !10
  %i.jc = load float, ptr %i.ec, align 4, !tbaa !10
  %i.jd = getelementptr inbounds nuw i8, ptr %i.dq, i64 28
  %i.je = load float, ptr %i.jd, align 4, !tbaa !10
  %i.jf = fmul nsz float %i.jc, %i.je
  %i.jg = call nsz float @llvm.fmuladd.f32(float %i.iz, float %i.jb, float %i.jf)
  %i.jh = fadd nsz float %i.cx, %i.jg             ; 2 uses
  store float %i.jh, ptr %i.cu, align 4, !tbaa !10
  %i.ji = load float, ptr %i.dm, align 4, !tbaa !10
  %i.jj = getelementptr inbounds nuw i8, ptr %i.dn, i64 60
  %i.jk = load float, ptr %i.jj, align 4, !tbaa !10
  %i.jl = load float, ptr %i.dp, align 4, !tbaa !10
  %i.jm = getelementptr inbounds nuw i8, ptr %i.dq, i64 60
  %i.jn = load float, ptr %i.jm, align 4, !tbaa !10
  %i.jo = fmul nsz float %i.jl, %i.jn
  %i.jp = call nsz float @llvm.fmuladd.f32(float %i.ji, float %i.jk, float %i.jo)
  %i.jq = fadd nsz float %i.cw, %i.jp             ; 2 uses
  store float %i.jq, ptr %i.cv, align 4, !tbaa !10
  %i.jr = getelementptr [4 x i8], ptr @mod23_lut, i64 %i.do
  %i.js = getelementptr i8, ptr %i.jr, i64 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 12
  br i1 %exitcond.not, label %bb.b, label %.preheader, !llvm.loop !76

bb.b:                                             ; preds = %.preheader
  %i.jt = load i32, ptr %i.c, align 16, !tbaa !79
  %i.ju = sext i32 %i.jt to i64
  %i.jv = getelementptr inbounds [4 x i8], ptr @mod23_lut, i64 %i.ju
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !27
  store i32 %i.jw, ptr %i.c, align 16, !tbaa !79
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1 ; 2 uses
  %exitcond87.not = icmp eq i64 %indvars.iv.next85, 128
  br i1 %exitcond87.not, label %bb.c, label %.preheader67, !llvm.loop !77

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.sin.v4f64(<4 x double>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.cos.v4f64(<4 x double>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.exp2.v4f32(<4 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i11, i1 } @llvm.umul.with.overflow.i11(i11, i11) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i11 @llvm.abs.i11(i11, i1 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #5

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

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
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = !{!"any pointer", !5, i64 0}
!15 = !{!"p1 omnipotent char", !14, i64 0}
!16 = !{!"p1 _ZTS13AtracGainInfo", !14, i64 0}
!17 = !{!"p1 _ZTS16Atrac3pWavesData", !14, i64 0}
!18 = !{!"Atrac3pChanParams", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !5, i64 20, !5, i64 148, !5, i64 276, !5, i64 404, !5, i64 4500, !5, i64 4505, !15, i64 4544, !15, i64 4552, !5, i64 4560, !16, i64 6480, !16, i64 6488, !6, i64 6496, !5, i64 6500, !17, i64 7784, !17, i64 7792}
!19 = !{!"Atrac3pWaveEnvelope", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12}
!20 = !{!"Atrac3pWavesData", !19, i64 0, !19, i64 16, !6, i64 32, !6, i64 36}
!21 = !{!20, !6, i64 32}
!22 = !{!"p1 _ZTS22Atrac3pWaveSynthParams", !14, i64 0}
!23 = !{!"Atrac3pChanUnitCtx", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !5, i64 40, !5, i64 56, !5, i64 72, !5, i64 15672, !22, i64 17336, !22, i64 17344, !5, i64 17360, !5, i64 20464}
!24 = !{!5, !5, i64 0}
!25 = !{!"AVFloatDSPContext", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !14, i64 88}
!26 = !{!25, !14, i64 0}
!27 = !{!6, !6, i64 0}
!28 = distinct !{!28, !11, !12, !13}
!29 = distinct !{!29, !11, !12, !13}
!30 = distinct !{!30, !11, !12, !13}
!31 = !{!18, !17, i64 7792}
!32 = !{!18, !17, i64 7784}
!33 = !{!20, !6, i64 0}
!34 = !{!20, !6, i64 8}
!35 = !{!20, !6, i64 12}
!36 = !{!20, !6, i64 16}
!37 = !{!20, !6, i64 24}
!38 = !{!20, !6, i64 4}
!39 = !{!20, !6, i64 20}
!40 = !{!20, !6, i64 28}
!41 = !{!23, !22, i64 17344}
!42 = !{!23, !22, i64 17336}
!43 = distinct !{!43, !11, !12, !13}
!44 = distinct !{!44, !11, !12}
!45 = distinct !{!45, !11}
!46 = distinct !{!46, !11, !12, !13}
!47 = distinct !{!47, !11, !12}
!48 = !{!20, !6, i64 36}
!49 = !{!"Atrac3pWaveSynthParams", !6, i64 0, !6, i64 4, !6, i64 8, !5, i64 12, !5, i64 28, !5, i64 44, !6, i64 60, !5, i64 64}
!50 = !{!49, !6, i64 4}
!51 = !{!"Atrac3pWaveParam", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12}
!52 = !{!51, !6, i64 4}
!53 = !{!51, !6, i64 8}
!54 = !{!51, !6, i64 0}
!55 = !{!51, !6, i64 12}
!56 = !{!25, !14, i64 24}
!57 = !{!19, !6, i64 0}
!58 = !{!19, !6, i64 8}
!59 = !{!19, !6, i64 4}
!60 = !{!19, !6, i64 12}
!61 = distinct !{!61, !11, !12}
!62 = distinct !{!62, !11, !12, !13}
!63 = distinct !{!63, !11, !12, !13}
!64 = distinct !{!64, !11, !13, !12}
!65 = distinct !{!65, !11, !13, !12}
!66 = distinct !{!66, !11}
!67 = !{!23, !6, i64 0}
!68 = !{!18, !16, i64 6480}
!69 = !{!18, !16, i64 6488}
!70 = !{!"AtracGainInfo", !6, i64 0, !5, i64 4, !5, i64 32}
!71 = !{!70, !6, i64 0}
!72 = !{!"short", !5, i64 0}
!73 = !{!72, !72, i64 0}
!74 = !{!25, !14, i64 8}
!75 = !{!25, !14, i64 56}
!76 = distinct !{!76, !11}
!77 = distinct !{!77, !11}
!78 = !{!"Atrac3pIPQFChannelCtx", !5, i64 0, !5, i64 768, !6, i64 1536}
!79 = !{!78, !6, i64 1536}
end_hunk_0
