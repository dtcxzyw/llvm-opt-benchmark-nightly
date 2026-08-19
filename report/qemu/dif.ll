inline.NumInlined: 114
inline.NumDeleted: 41
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"../hw/nvme/dif.c\00", align 1
@__func__.nvme_dif_mangle_mdata = private unnamed_addr constant [22 x i8] c"nvme_dif_mangle_mdata\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"unable to get block status\00", align 1
@trace_events_enabled_count = external local_unnamed_addr global i32, align 4
@_TRACE_PCI_NVME_DIF_PRACT_GENERATE_DIF_CRC16_DSTATE = external local_unnamed_addr global i16, align 2
@.str.2 = private unnamed_addr constant [99 x i8] c"pci_nvme_dif_pract_generate_dif_crc16 len %zu lba_size %zu chksum_len %zu apptag 0x%x reftag 0x%x\0A\00", align 1
@qemu_loglevel = external local_unnamed_addr global i32, align 4
@crc16_t10dif_table = internal unnamed_addr constant [256 x i16] [i16 0, i16 -29769, i16 -25383, i16 5998, i16 -19963, i16 14770, i16 11996, i16 -23189, i16 -4163, i16 25610, i16 29540, i16 -1837, i16 23992, i16 -10737, i16 -16031, i16 19158, i16 21709, i16 -8326, i16 -14316, i16 17315, i16 -6456, i16 28031, i16 31249, i16 -3674, i16 -17552, i16 12487, i16 10153, i16 -21474, i16 2421, i16 -32062, i16 -27220, i16 7707, i16 -22118, i16 8749, i16 13635, i16 -16652, i16 7071, i16 -28632, i16 -30906, i16 3313, i16 17959, i16 -12912, i16 -9474, i16 20809, i16 -3038, i16 32661, i16 26875, i16 -7348, i16 -681, i16 30432, i16 24974, i16 -5575, i16 20306, i16 -15131, i16 -11381, i16 22588, i16 4842, i16 -26275, i16 -29133, i16 1412, i16 -24337, i16 11096, i16 15414, i16 -18559, i16 -10109, i16 21300, i16 17498, i16 -12307, i16 27270, i16 -7887, i16 -2465, i16 32232, i16 14142, i16 -17271, i16 -21529, i16 8272, i16 -31429, i16 3724, i16 6626, i16 -28075, i16 -29618, i16 2041, i16 4247, i16 -25824, i16 15947, i16 -18948, i16 -23918, i16 10533, i16 25587, i16 -6076, i16 -214, i16 29853, i16 -11786, i16 23105, i16 19759, i16 -14696, i16 28953, i16 -1362, i16 -4672, i16 26231, i16 -15588, i16 18603, i16 24517, i16 -11150, i16 -24924, i16 5395, i16 637, i16 -30262, i16 11425, i16 -22762, i16 -20360, i16 15311, i16 9684, i16 -20893, i16 -18163, i16 12986, i16 -26671, i16 7270, i16 2824, i16 -32577, i16 -13719, i16 16862, i16 22192, i16 -8953, i16 30828, i16 -3109, i16 -6987, i16 28418, i16 15025, i16 -20218, i16 -22936, i16 11743, i16 -30540, i16 771, i16 5229, i16 -24614, i16 -10996, i16 24251, i16 18901, i16 -15774, i16 26377, i16 -4930, i16 -1072, i16 28775, i16 28284, i16 -6709, i16 -3419, i16 30994, i16 -9095, i16 22478, i16 16544, i16 -13545, i16 -32319, i16 2678, i16 7448, i16 -26961, i16 13252, i16 -18317, i16 -20707, i16 9386, i16 -27861, i16 6300, i16 4082, i16 -31675, i16 8494, i16 -21863, i16 -16905, i16 13888, i16 31894, i16 -2271, i16 -8113, i16 27640, i16 -12653, i16 17700, i16 21066, i16 -9731, i16 -14362, i16 19537, i16 23359, i16 -12152, i16 30179, i16 -428, i16 -5830, i16 25229, i16 10331, i16 -23572, i16 -19326, i16 16181, i16 -26018, i16 4585, i16 1671, i16 -29392, i16 -7630, i16 27013, i16 32491, i16 -2724, i16 20535, i16 -9344, i16 -13074, i16 18265, i16 3471, i16 -31176, i16 -28330, i16 6881, i16 -16502, i16 13373, i16 9043, i16 -22300, i16 -18689, i16 15688, i16 10790, i16 -24175, i16 1274, i16 -28851, i16 -26589, i16 5012, i16 22850, i16 -11531, i16 -14949, i16 20012, i16 -5305, i16 24816, i16 30622, i16 -983, i16 19368, i16 -16353, i16 -10383, i16 23750, i16 -1619, i16 29210, i16 25972, i16 -4413, i16 -23531, i16 12194, i16 14540, i16 -19589, i16 5648, i16 -25177, i16 -30007, i16 382, i16 8037, i16 -27438, i16 -31812, i16 2059, i16 -21152, i16 9943, i16 12729, i16 -17906, i16 -3880, i16 31599, i16 27649, i16 -6218, i16 17117, i16 -13974, i16 -8700, i16 21939], align 16
@_TRACE_PCI_NVME_DIF_PRACT_GENERATE_DIF_CRC64_DSTATE = external local_unnamed_addr global i16, align 2
@.str.3 = private unnamed_addr constant [100 x i8] c"pci_nvme_dif_pract_generate_dif_crc64 len %zu lba_size %zu chksum_len %zu apptag 0x%x reftag 0x%lx\0A\00", align 1
@crc64_nvme_table = internal unnamed_addr constant [256 x i64] [i64 0, i64 9182541432847960441, i64 -81661208013630734, i64 -9100911350982468725, i64 -3935330839729949041, i64 -5328860363356880906, i64 4016934769805403261, i64 5247243509741595908, i64 -6477041904481141131, i64 -2778126699754064116, i64 6395407394255400071, i64 2859783479402063358, i64 8033869539610806522, i64 1157698950281609603, i64 -7952257054226359800, i64 -1239307248593022095, i64 8710242310496874369, i64 544390144406054648, i64 -8773822775353311885, i64 -480778622590716918, i64 -5655929285198751474, i64 -3536193771365838729, i64 5719566958804126716, i64 3472568952111055493, i64 -2379004994487938572, i64 -6804126189421127539, i64 2315397900563219206, i64 6867711082173303423, i64 1702069273413494651, i64 7561550595985681922, i64 -1638440086397766263, i64 -7625183901824729872, i64 -1026259452715802878, i64 -8165291385339423109, i64 1088780288812109296, i64 8102801665828209801, i64 4081135393624123789, i64 5174050811428790516, i64 -4143599089657414785, i64 -5111574183165038074, i64 6331237281917575543, i64 2932936320451717134, i64 -6268743143072255099, i64 -2995452737208534276, i64 -7007610156101298184, i64 -2174948929557487999, i64 6945137904222110986, i64 2237417001980464243, i64 -8565563587773157245, i64 -698073865129608710, i64 8646032624330580593, i64 617573780371024648, i64 4630795801126438412, i64 4552317850264964981, i64 -4711321909362944770, i64 -4471804605874987641, i64 3404138546826989302, i64 5788002041349785487, i64 -3323642881738187772, i64 -5868475497582111363, i64 -1846747927333570439, i64 -7407866943897440000, i64 1766230306223614603, i64 7488388675408585714, i64 -2928788100313371281, i64 -6326384893301644266, i64 2992425542307102621, i64 6262760941951170276, i64 2177560577624218592, i64 7014021097877803673, i64 -2241140742053132014, i64 -6950410375142506389, i64 8162270787248247578, i64 1020283848406030947, i64 -8098642450851970584, i64 -1083916905357227887, i64 -5177781148310608491, i64 -4086414461352612628, i64 5114174836390786919, i64 4149999036593995294, i64 -5784269509874400530, i64 -3398857284503876713, i64 5865872640903434268, i64 3317240731349735781, i64 7410885347125621857, i64 1852721336781405464, i64 -7492545687201323373, i64 -1771091486493937686, i64 695464411657452699, i64 8559154840590169570, i64 -613852243750310295, i64 -8640762356863195376, i64 -4556468265265329644, i64 -4635650384605445267, i64 4474834003960928486, i64 4717306313667482015, i64 2781857646629810797, i64 6482320345254034196, i64 -2862383522617106273, i64 -6401807968130799130, i64 -1154678825048390430, i64 -8027893446085259877, i64 1235147560742049296, i64 7947394159970475881, i64 -9185152471456674792, i64 -6411569270127263, i64 9104635700529929962, i64 86933051457181587, i64 5324711670898473623, i64 3930478940865573870, i64 -5244216787177002907, i64 -4010952078949539556, i64 6808277093653978604, i64 2383859105125700757, i64 -6870739991009980642, i64 -2321382777692223897, i64 -7558941769418855581, i64 -1695659916186312166, i64 7621461738281908625, i64 1633170428957798632, i64 -547408057865837671, i64 -8716216192247928096, i64 484936124168630635, i64 8778683483337193490, i64 3532460612447229206, i64 5650648632384052335, i64 -3469966722892380188, i64 -5713164198924038499, i64 -7319313487190308427, i64 -1944882268426321716, i64 7255706616989801287, i64 2008467384902701630, i64 5984851084614205242, i64 3197703697127700035, i64 -5921222189807211064, i64 -3261337295175490383, i64 4355121155248437184, i64 4836460649178119865, i64 -4418701877953944270, i64 -4772849385211843509, i64 -787396636298018481, i64 -8467776486107314122, i64 851034636706747325, i64 8404151993655892676, i64 -2122202499213056460, i64 -7069916004553314483, i64 2040567696812061894, i64 7151572492026068415, i64 3165618640958787771, i64 6089000465318648258, i64 -3084005931816648119, i64 -6170608539872359632, i64 4940590242968197185, i64 4323016312165290296, i64 -5022251124144846157, i64 -4241385903462825014, i64 -8218394400927977778, i64 -964732264542541897, i64 8299998073187990588, i64 883115153111807301, i64 7758977986698090167, i64 1496212771153551310, i64 -7678482544561748923, i64 -1576686450338329284, i64 -6714998791902683080, i64 -2476565394777495231, i64 6634481462699471562, i64 2557087418195393459, i64 -3624973379458307902, i64 -5557599020465626693, i64 3705442673562810928, i64 5477099193254114121, i64 347732205828726349, i64 8916445914979620660, i64 -428258640096834369, i64 -8835932996621253178, i64 1390928823314905398, i64 7792180275546222671, i64 -1328434392529212476, i64 -7854696400362675523, i64 -2724828310247256135, i64 -6538795793762138432, i64 2662355835449236811, i64 6601263643266274354, i64 -5381380642047162557, i64 -3873220914650280390, i64 5443901152145348017, i64 3810730869140954312, i64 8949668007921856972, i64 242468062084315317, i64 -9012131446374587586, i64 -179991176239994297, i64 5563715293259621594, i64 3627853308494900643, i64 -5482103383201483224, i64 -3709461082616922287, i64 -8911307653206748587, i64 -343861062487909588, i64 8829673718705766567, i64 425517318353373662, i64 -1501205965726213457, i64 -7762985400376454186, i64 1582809320479393885, i64 7681369070946451748, i64 2470295121484098592, i64 6712246474782352729, i64 -2551955753768599854, i64 -6630616916703692885, i64 3879488993349045083, i64 5384130764573901346, i64 -3815860330115851863, i64 -5447763494688190256, i64 -237472672649691692, i64 -8945658399380491091, i64 173866102914363174, i64 9009242716806358623, i64 -7797320731912604370, i64 -1394802161250272169, i64 7860957881731147740, i64 1331177917724618405, i64 6532681715831194529, i64 2721950576072674008, i64 -6596261656502349485, i64 -2658339629579610070, i64 -4830189886401594408, i64 -4352369310716611935, i64 4767718210251401514, i64 4414836859352883283, i64 8472769053991669079, i64 791404660239696942, i64 -8410275490468487259, i64 -853920552811358500, i64 1939744496674522541, i64 7315441871796849876, i64 -2002207616982919329, i64 -7252965767315759578, i64 -3203820597145734366, i64 -5987730403925296549, i64 3266340857915597264, i64 5925241208603601065, i64 -4316901623920634791, i64 -4937713135431525088, i64 4236384526995834539, i64 5018234291620532178, i64 969872248337261270, i64 8222268228363316143, i64 -889377107035164636, i64 -8302741108866647715, i64 7064921224894458412, i64 2118192263497917269, i64 -7145446808941446946, i64 -2037679594434383449, i64 -6095269016053343069, i64 -3168368273447741990, i64 6175737528828104273, i64 3087868764414052136], align 16
@_TRACE_PCI_NVME_DIF_CHECK_DSTATE = external local_unnamed_addr global i16, align 2
@.str.4 = private unnamed_addr constant [46 x i8] c"pci_nvme_dif_check prinfo 0x%x chksum_len %u\0A\00", align 1
@_TRACE_PCI_NVME_DIF_PRCHK_DISABLED_CRC16_DSTATE = external local_unnamed_addr global i16, align 2
@.str.5 = private unnamed_addr constant [59 x i8] c"pci_nvme_dif_prchk_disabled_crc16 apptag 0x%x reftag 0x%x\0A\00", align 1
@_TRACE_PCI_NVME_DIF_PRCHK_GUARD_CRC16_DSTATE = external local_unnamed_addr global i16, align 2
@.str.6 = private unnamed_addr constant [52 x i8] c"pci_nvme_dif_prchk_guard_crc16 guard 0x%x crc 0x%x\0A\00", align 1
@_TRACE_PCI_NVME_DIF_PRCHK_APPTAG_DSTATE = external local_unnamed_addr global i16, align 2
@.str.7 = private unnamed_addr constant [62 x i8] c"pci_nvme_dif_prchk_apptag apptag 0x%x elbat 0x%x elbatm 0x%x\0A\00", align 1
@_TRACE_PCI_NVME_DIF_PRCHK_REFTAG_CRC16_DSTATE = external local_unnamed_addr global i16, align 2
@.str.8 = private unnamed_addr constant [56 x i8] c"pci_nvme_dif_prchk_reftag_crc16 reftag 0x%x elbrt 0x%x\0A\00", align 1
@_TRACE_PCI_NVME_DIF_PRCHK_DISABLED_CRC64_DSTATE = external local_unnamed_addr global i16, align 2
@.str.9 = private unnamed_addr constant [60 x i8] c"pci_nvme_dif_prchk_disabled_crc64 apptag 0x%x reftag 0x%lx\0A\00", align 1
@_TRACE_PCI_NVME_DIF_PRCHK_GUARD_CRC64_DSTATE = external local_unnamed_addr global i16, align 2
@.str.10 = private unnamed_addr constant [54 x i8] c"pci_nvme_dif_prchk_guard_crc64 guard 0x%lx crc 0x%lx\0A\00", align 1
@_TRACE_PCI_NVME_DIF_PRCHK_REFTAG_CRC64_DSTATE = external local_unnamed_addr global i16, align 2
@.str.11 = private unnamed_addr constant [58 x i8] c"pci_nvme_dif_prchk_reftag_crc64 reftag 0x%lx elbrt 0x%lx\0A\00", align 1
@_TRACE_PCI_NVME_BLOCK_STATUS_DSTATE = external local_unnamed_addr global i16, align 2
@.str.12 = private unnamed_addr constant [72 x i8] c"pci_nvme_block_status offset %ld bytes %ld pnum %ld ret 0x%x zeroed %d\0A\00", align 1
@_TRACE_PCI_NVME_DIF_RW_DSTATE = external local_unnamed_addr global i16, align 2
@.str.13 = private unnamed_addr constant [40 x i8] c"pci_nvme_dif_rw pract 0x%x prinfo 0x%x\0A\00", align 1
@_TRACE_PCI_NVME_DIF_RW_MDATA_OUT_CB_DSTATE = external local_unnamed_addr global i16, align 2
@.str.14 = private unnamed_addr constant [46 x i8] c"pci_nvme_dif_rw_mdata_out_cb cid %u blk '%s'\0A\00", align 1
@_TRACE_PCI_NVME_DIF_RW_CB_DSTATE = external local_unnamed_addr global i16, align 2
@.str.15 = private unnamed_addr constant [36 x i8] c"pci_nvme_dif_rw_cb cid %u blk '%s'\0A\00", align 1
@_TRACE_PCI_NVME_DIF_RW_MDATA_IN_CB_DSTATE = external local_unnamed_addr global i16, align 2
@.str.16 = private unnamed_addr constant [45 x i8] c"pci_nvme_dif_rw_mdata_in_cb cid %u blk '%s'\0A\00", align 1
@_TRACE_PCI_NVME_DIF_RW_CHECK_CB_DSTATE = external local_unnamed_addr global i16, align 2
@.str.17 = private unnamed_addr constant [82 x i8] c"pci_nvme_dif_rw_check_cb cid %u prinfo 0x%x apptag 0x%x appmask 0x%x reftag 0x%x\0A\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"no_coroutine_fn\00", section "llvm.metadata"
@.str.19 = private unnamed_addr constant [51 x i8] c"/opt-bench/work/qemu/qemu/include/block/block-io.h\00", section "llvm.metadata"
@.str.20 = private unnamed_addr constant [19 x i8] c"coroutine_mixed_fn\00", section "llvm.metadata"
@llvm.global.annotations = appending global [2 x { ptr, ptr, ptr, i32, ptr }] [{ ptr, ptr, ptr, i32, ptr } { ptr @bdrv_block_status, ptr @.str.18, ptr @.str.19, i32 136, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_block_status, ptr @.str.20, ptr @.str.19, i32 136, ptr null }], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define dso_local zeroext range(i16 0, 16770) i16 @nvme_check_prinfo(ptr nofree noundef readonly captures(none) %0, i8 noundef zeroext %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12608
  %i.b = load i8, ptr %i.a, align 8
  %.not = icmp eq i8 %i.b, 0
  %i.c = select i1 %.not, i64 4294967295, i64 281474976710655
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 325
  %i.e = load i8, ptr %i.d, align 1
  %i.f = and i8 %i.e, 7                           ; 2 uses
  %i.g = icmp ne i8 %i.f, 1
  %i.h = and i8 %1, 1
  %.not8 = icmp eq i8 %i.h, 0                     ; 2 uses
  %or.cond = or i1 %.not8, %i.g
  %i.i = and i64 %i.c, %2
  %.not9 = icmp eq i64 %i.i, %3
  %or.cond11 = select i1 %or.cond, i1 true, i1 %.not9
  %i.j = icmp ne i8 %i.f, 3
  %or.cond12 = or i1 %.not8, %i.j
  %spec.select = select i1 %or.cond12, i16 0, i16 385
  %.0 = select i1 %or.cond11, i16 %spec.select, i16 16769
  ret i16 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @nvme_dif_pract_generate_dif(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address) %1, i64 noundef %2, ptr nofree noundef captures(none) %3, i64 %4, i16 noundef zeroext %5, ptr nofree noundef captures(none) %6) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12608
  %i.b = load i8, ptr %i.a, align 8
  switch i8 %i.b, label %bb.v [
    i8 0, label %bb.b
    i8 2, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 325 ; 3 uses
  %i.e = load i8, ptr %i.d, align 1
  %i.f = and i8 %i.e, 8
  %.not.i = icmp eq i8 %i.f, 0
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12584
  %i.h = load i16, ptr %i.g, align 8
  %i.i = add i16 %i.h, -8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.032.i = phi i16 [ 0, %bb.b ], [ %i.i, %bb.c ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12592 ; 4 uses
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %i.l = sext i16 %.032.i to i64                  ; 4 uses
  %i.m = add i64 %i.k, %i.l
  %i.n = load i64, ptr %6, align 8
  %i.o = trunc i64 %i.n to i32
  %i.p = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i37.i = icmp eq i32 %i.p, 0
  br i1 %.not.i37.i, label %trace_pci_nvme_dif_pract_generate_dif_crc16.exit.i, label %bb.e, !prof !7

bb.e:                                             ; preds = %bb.d
  %i.q = load i16, ptr @_TRACE_PCI_NVME_DIF_PRACT_GENERATE_DIF_CRC16_DSTATE, align 2
  %.not5.i.i = icmp eq i16 %i.q, 0
  br i1 %.not5.i.i, label %trace_pci_nvme_dif_pract_generate_dif_crc16.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load i32, ptr @qemu_loglevel, align 4
  %i.s = and i32 %i.r, 32768
  %.not6.i.i = icmp eq i32 %i.s, 0
  br i1 %.not6.i.i, label %trace_pci_nvme_dif_pract_generate_dif_crc16.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = zext i16 %5 to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.2, i64 noundef %2, i64 noundef %i.k, i64 noundef %i.m, i32 noundef %i.t, i32 noundef %i.o) #10
  br label %trace_pci_nvme_dif_pract_generate_dif_crc16.exit.i

trace_pci_nvme_dif_pract_generate_dif_crc16.exit.i: ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %.not49.i = icmp eq i64 %2, 0
  br i1 %.not49.i, label %nvme_dif_pract_generate_dif_crc16.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %trace_pci_nvme_dif_pract_generate_dif_crc16.exit.i
  %.not35.i = icmp eq i16 %.032.i, 0
  %i.u = tail call noundef i16 @llvm.bswap.i16(i16 %5) ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12584 ; 2 uses
  %.pre53.i = load i64, ptr %i.j, align 8         ; 2 uses
  br i1 %.not35.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %bb.i
  %i.w = phi i64 [ %i.at, %bb.i ], [ %.pre53.i, %.lr.ph.i ] ; 2 uses
  %.03348.us.i = phi ptr [ %i.au, %bb.i ], [ %1, %.lr.ph.i ] ; 2 uses
  %.03447.us.i = phi ptr [ %i.ax, %bb.i ], [ %3, %.lr.ph.i ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.03447.us.i, i64 %i.l ; 3 uses
  %.not.i38.us.i = icmp eq i64 %i.w, 0
  br i1 %.not.i38.us.i, label %crc16_t10dif.exit.us.i, label %.lr.ph.i.us.i

.lr.ph.i.us.i:                                    ; preds = %.lr.ph.split.us.i, %.lr.ph.i.us.i
  %indvars.iv.i.us.i = phi i64 [ %7, %.lr.ph.i.us.i ], [ 0, %.lr.ph.split.us.i ] ; 2 uses
  %.079.i.us.i = phi i16 [ %i.ah, %.lr.ph.i.us.i ], [ 0, %.lr.ph.split.us.i ] ; 2 uses
  %i.y = shl i16 %.079.i.us.i, 8
  %i.z = lshr i16 %.079.i.us.i, 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.03348.us.i, i64 %indvars.iv.i.us.i
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = zext i8 %i.ab to i16
  %i.ad = xor i16 %i.z, %i.ac
  %i.ae = zext nneg i16 %i.ad to i64
  %i.af = getelementptr inbounds nuw [2 x i8], ptr @crc16_t10dif_table, i64 %i.ae
  %i.ag = load i16, ptr %i.af, align 2
  %i.ah = xor i16 %i.ag, %i.y                     ; 2 uses
  %7 = add i64 %indvars.iv.i.us.i, 1              ; 2 uses
  %8 = and i64 %7, 4294967295
  %i.ai = icmp ugt i64 %i.w, %8
  br i1 %i.ai, label %.lr.ph.i.us.i, label %crc16_t10dif.exit.us.loopexit.i, !llvm.loop !8

crc16_t10dif.exit.us.loopexit.i:                  ; preds = %.lr.ph.i.us.i
  %i.aj = tail call i16 @llvm.bswap.i16(i16 %i.ah)
  br label %crc16_t10dif.exit.us.i

crc16_t10dif.exit.us.i:                           ; preds = %crc16_t10dif.exit.us.loopexit.i, %.lr.ph.split.us.i
  %.07.lcssa.i.us.i = phi i16 [ 0, %.lr.ph.split.us.i ], [ %i.aj, %crc16_t10dif.exit.us.loopexit.i ]
  store i16 %.07.lcssa.i.us.i, ptr %i.x, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  store i16 %i.u, ptr %i.ak, align 2
  %i.al = load i64, ptr %6, align 8
  %i.am = trunc i64 %i.al to i32
  %i.an = tail call noundef i32 @llvm.bswap.i32(i32 %i.am)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store i32 %i.an, ptr %i.ao, align 4
  %i.ap = load i8, ptr %i.d, align 1
  %i.aq = and i8 %i.ap, 7
  %.not36.us.i = icmp eq i8 %i.aq, 3
  br i1 %.not36.us.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %crc16_t10dif.exit.us.i
  %i.ar = load i64, ptr %6, align 8
  %i.as = add i64 %i.ar, 1
  store i64 %i.as, ptr %6, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %crc16_t10dif.exit.us.i
  %i.at = load i64, ptr %i.j, align 8             ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.03348.us.i, i64 %i.at ; 2 uses
  %i.av = load i16, ptr %i.v, align 8
  %i.aw = zext i16 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %.03447.us.i, i64 %i.aw
  %i.ay = icmp ult ptr %i.au, %i.c
  br i1 %i.ay, label %.lr.ph.split.us.i, label %nvme_dif_pract_generate_dif_crc16.exit, !llvm.loop !10

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.k
  %i.az = phi i64 [ %i.cg, %bb.k ], [ %.pre53.i, %.lr.ph.i ] ; 2 uses
  %.03348.i = phi ptr [ %i.ch, %bb.k ], [ %1, %.lr.ph.i ] ; 2 uses
  %.03447.i = phi ptr [ %i.ck, %bb.k ], [ %3, %.lr.ph.i ] ; 3 uses
  %i.ba = getelementptr inbounds i8, ptr %.03447.i, i64 %i.l ; 3 uses
  %.not.i38.i = icmp eq i64 %i.az, 0
  br i1 %.not.i38.i, label %.lr.ph.i40.i.preheader, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.split.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %9, %.lr.ph.i.i ], [ 0, %.lr.ph.split.i ] ; 2 uses
  %.079.i.i = phi i16 [ %i.bk, %.lr.ph.i.i ], [ 0, %.lr.ph.split.i ] ; 2 uses
  %i.bb = shl i16 %.079.i.i, 8
  %i.bc = lshr i16 %.079.i.i, 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.03348.i, i64 %indvars.iv.i.i
  %i.be = load i8, ptr %i.bd, align 1
  %i.bf = zext i8 %i.be to i16
  %i.bg = xor i16 %i.bc, %i.bf
  %i.bh = zext nneg i16 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr @crc16_t10dif_table, i64 %i.bh
  %i.bj = load i16, ptr %i.bi, align 2
  %i.bk = xor i16 %i.bj, %i.bb                    ; 2 uses
  %9 = add i64 %indvars.iv.i.i, 1                 ; 2 uses
  %10 = and i64 %9, 4294967295
  %i.bl = icmp ugt i64 %i.az, %10
  br i1 %i.bl, label %.lr.ph.i.i, label %.lr.ph.i40.i.preheader, !llvm.loop !8

.lr.ph.i40.i.preheader:                           ; preds = %.lr.ph.i.i, %.lr.ph.split.i
  %.079.i42.i.ph = phi i16 [ 0, %.lr.ph.split.i ], [ %i.bk, %.lr.ph.i.i ]
  br label %.lr.ph.i40.i

.lr.ph.i40.i:                                     ; preds = %.lr.ph.i40.i.preheader, %.lr.ph.i40.i
  %indvars.iv.i41.i = phi i64 [ %11, %.lr.ph.i40.i ], [ 0, %.lr.ph.i40.i.preheader ] ; 2 uses
  %.079.i42.i = phi i16 [ %i.bv, %.lr.ph.i40.i ], [ %.079.i42.i.ph, %.lr.ph.i40.i.preheader ] ; 2 uses
  %i.bm = shl i16 %.079.i42.i, 8
  %i.bn = lshr i16 %.079.i42.i, 8
  %i.bo = getelementptr inbounds nuw i8, ptr %.03447.i, i64 %indvars.iv.i41.i
  %i.bp = load i8, ptr %i.bo, align 1
  %i.bq = zext i8 %i.bp to i16
  %i.br = xor i16 %i.bn, %i.bq
  %i.bs = zext nneg i16 %i.br to i64
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr @crc16_t10dif_table, i64 %i.bs
  %i.bu = load i16, ptr %i.bt, align 2
  %i.bv = xor i16 %i.bu, %i.bm                    ; 2 uses
  %11 = add i64 %indvars.iv.i41.i, 1              ; 2 uses
  %12 = and i64 %11, 4294967295
  %13 = icmp ult i64 %12, %i.l
  br i1 %13, label %.lr.ph.i40.i, label %crc16_t10dif.exit45.loopexit.i, !llvm.loop !8

crc16_t10dif.exit45.loopexit.i:                   ; preds = %.lr.ph.i40.i
  %i.bw = tail call noundef i16 @llvm.bswap.i16(i16 %i.bv)
  store i16 %i.bw, ptr %i.ba, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ba, i64 2
  store i16 %i.u, ptr %i.bx, align 2
  %i.by = load i64, ptr %6, align 8
  %i.bz = trunc i64 %i.by to i32
  %i.ca = tail call noundef i32 @llvm.bswap.i32(i32 %i.bz)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  store i32 %i.ca, ptr %i.cb, align 4
  %i.cc = load i8, ptr %i.d, align 1
  %i.cd = and i8 %i.cc, 7
  %.not36.i = icmp eq i8 %i.cd, 3
  br i1 %.not36.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %crc16_t10dif.exit45.loopexit.i
  %i.ce = load i64, ptr %6, align 8
  %i.cf = add i64 %i.ce, 1
  store i64 %i.cf, ptr %6, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %crc16_t10dif.exit45.loopexit.i
  %i.cg = load i64, ptr %i.j, align 8             ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.03348.i, i64 %i.cg ; 2 uses
  %i.ci = load i16, ptr %i.v, align 8
  %i.cj = zext i16 %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %.03447.i, i64 %i.cj
  %i.cl = icmp ult ptr %i.ch, %i.c
  br i1 %i.cl, label %.lr.ph.split.i, label %nvme_dif_pract_generate_dif_crc16.exit, !llvm.loop !10

bb.l:                                             ; preds = %bb.a
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 325 ; 3 uses
  %i.co = load i8, ptr %i.cn, align 1
  %i.cp = and i8 %i.co, 8
  %.not.i14 = icmp eq i8 %i.cp, 0
  br i1 %.not.i14, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 12584
  %i.cr = load i16, ptr %i.cq, align 8
  %i.cs = add i16 %i.cr, -16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.041.i = phi i16 [ 0, %bb.l ], [ %i.cs, %bb.m ] ; 5 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 12592 ; 4 uses
  %i.cu = load i64, ptr %i.ct, align 8            ; 2 uses
  %i.cv = sext i16 %.041.i to i64                 ; 4 uses
  %i.cw = add i64 %i.cu, %i.cv
  %i.cx = load i64, ptr %6, align 8
  %i.cy = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i15 = icmp eq i32 %i.cy, 0
  br i1 %.not.i.i15, label %trace_pci_nvme_dif_pract_generate_dif_crc64.exit.i, label %bb.o, !prof !7

bb.o:                                             ; preds = %bb.n
  %i.cz = load i16, ptr @_TRACE_PCI_NVME_DIF_PRACT_GENERATE_DIF_CRC64_DSTATE, align 2
  %.not5.i.i16 = icmp eq i16 %i.cz, 0
  br i1 %.not5.i.i16, label %trace_pci_nvme_dif_pract_generate_dif_crc64.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.da = load i32, ptr @qemu_loglevel, align 4
  %i.db = and i32 %i.da, 32768
  %.not6.i.i17 = icmp eq i32 %i.db, 0
  br i1 %.not6.i.i17, label %trace_pci_nvme_dif_pract_generate_dif_crc64.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dc = zext i16 %5 to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.3, i64 noundef %2, i64 noundef %i.cu, i64 noundef %i.cw, i32 noundef %i.dc, i64 noundef %i.cx) #10
  br label %trace_pci_nvme_dif_pract_generate_dif_crc64.exit.i

trace_pci_nvme_dif_pract_generate_dif_crc64.exit.i: ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %.not57.i = icmp eq i64 %2, 0
  br i1 %.not57.i, label %nvme_dif_pract_generate_dif_crc16.exit, label %.lr.ph.i18

.lr.ph.i18:                                       ; preds = %trace_pci_nvme_dif_pract_generate_dif_crc64.exit.i
  %.not44.i = icmp eq i16 %.041.i, 0
  %i.dd = tail call noundef i16 @llvm.bswap.i16(i16 %5) ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 12584 ; 2 uses
  %.pre.i = load i64, ptr %i.ct, align 8          ; 2 uses
  br i1 %.not44.i, label %.lr.ph.i18.split.us, label %.lr.ph.i18.split.preheader

.lr.ph.i18.split.preheader:                       ; preds = %.lr.ph.i18
  %i.df = icmp eq i16 %.041.i, 1
  %unroll_iter72 = and i64 %i.cv, -2
  %i.dg = and i16 %.041.i, 1
  %lcmp.mod69.not = icmp eq i16 %i.dg, 0
  %lcmp.mod71 = trunc i16 %.041.i to i1
  br label %.lr.ph.i18.split

.lr.ph.i18.split.us:                              ; preds = %.lr.ph.i18, %bb.s
  %i.dh = phi i64 [ %i.fr, %bb.s ], [ %.pre.i, %.lr.ph.i18 ] ; 5 uses
  %.04256.i.us = phi ptr [ %i.fs, %bb.s ], [ %1, %.lr.ph.i18 ] ; 4 uses
  %.04355.i.us = phi ptr [ %i.fv, %bb.s ], [ %3, %.lr.ph.i18 ] ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.04355.i.us, i64 %i.cv ; 8 uses
  %.not.i46.i.us = icmp eq i64 %i.dh, 0
  br i1 %.not.i46.i.us, label %crc64_nvme.exit.i.us, label %.lr.ph.i.i19.us.preheader

.lr.ph.i.i19.us.preheader:                        ; preds = %.lr.ph.i18.split.us
  %xtraiter74 = and i64 %i.dh, 1
  %i.dj = icmp eq i64 %i.dh, 1
  br i1 %i.dj, label %.lr.ph.i.i19.us.epil.preheader, label %.lr.ph.i.i19.us.preheader.new

.lr.ph.i.i19.us.preheader.new:                    ; preds = %.lr.ph.i.i19.us.preheader
  %unroll_iter78 = and i64 %i.dh, -2
  br label %.lr.ph.i.i19.us

.lr.ph.i.i19.us:                                  ; preds = %.lr.ph.i.i19.us, %.lr.ph.i.i19.us.preheader.new
  %.09.i.i.us = phi i64 [ 0, %.lr.ph.i.i19.us.preheader.new ], [ %i.ed, %.lr.ph.i.i19.us ] ; 3 uses
  %.078.i.i.us = phi i64 [ -1, %.lr.ph.i.i19.us.preheader.new ], [ %i.ec, %.lr.ph.i.i19.us ] ; 2 uses
  %niter79 = phi i64 [ 0, %.lr.ph.i.i19.us.preheader.new ], [ %niter79.next.1, %.lr.ph.i.i19.us ]
  %i.dk = lshr i64 %.078.i.i.us, 8
  %i.dl = and i64 %.078.i.i.us, 255
  %i.dm = getelementptr inbounds nuw i8, ptr %.04256.i.us, i64 %.09.i.i.us
  %i.dn = load i8, ptr %i.dm, align 1
  %i.do = zext i8 %i.dn to i64
  %i.dp = xor i64 %i.dl, %i.do
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr @crc64_nvme_table, i64 %i.dp
  %i.dr = load i64, ptr %i.dq, align 8
  %i.ds = xor i64 %i.dr, %i.dk                    ; 2 uses
  %i.dt = lshr i64 %i.ds, 8
  %i.du = and i64 %i.ds, 255
  %i.dv = getelementptr inbounds nuw i8, ptr %.04256.i.us, i64 %.09.i.i.us
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 1
  %i.dx = load i8, ptr %i.dw, align 1
  %i.dy = zext i8 %i.dx to i64
  %i.dz = xor i64 %i.du, %i.dy
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr @crc64_nvme_table, i64 %i.dz
  %i.eb = load i64, ptr %i.ea, align 8
  %i.ec = xor i64 %i.eb, %i.dt                    ; 3 uses
  %i.ed = add nuw i64 %.09.i.i.us, 2              ; 2 uses
  %niter79.next.1 = add nuw i64 %niter79, 2       ; 2 uses
  %niter79.ncmp.1 = icmp eq i64 %niter79.next.1, %unroll_iter78
  br i1 %niter79.ncmp.1, label %crc64_nvme.exit.i.us.loopexit.unr-lcssa, label %.lr.ph.i.i19.us, !llvm.loop !11

crc64_nvme.exit.i.us.loopexit.unr-lcssa:          ; preds = %.lr.ph.i.i19.us
  %lcmp.mod75.not = icmp eq i64 %xtraiter74, 0
  br i1 %lcmp.mod75.not, label %crc64_nvme.exit.i.us.loopexit, label %.lr.ph.i.i19.us.epil.preheader

.lr.ph.i.i19.us.epil.preheader:                   ; preds = %crc64_nvme.exit.i.us.loopexit.unr-lcssa, %.lr.ph.i.i19.us.preheader
  %.09.i.i.us.epil.init = phi i64 [ 0, %.lr.ph.i.i19.us.preheader ], [ %i.ed, %crc64_nvme.exit.i.us.loopexit.unr-lcssa ]
  %.078.i.i.us.epil.init = phi i64 [ -1, %.lr.ph.i.i19.us.preheader ], [ %i.ec, %crc64_nvme.exit.i.us.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod77 = trunc i64 %i.dh to i1
  tail call void @llvm.assume(i1 %lcmp.mod77)
  %i.ee = lshr i64 %.078.i.i.us.epil.init, 8
  %i.ef = and i64 %.078.i.i.us.epil.init, 255
  %i.eg = getelementptr inbounds nuw i8, ptr %.04256.i.us, i64 %.09.i.i.us.epil.init
  %i.eh = load i8, ptr %i.eg, align 1
  %i.ei = zext i8 %i.eh to i64
  %i.ej = xor i64 %i.ef, %i.ei
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr @crc64_nvme_table, i64 %i.ej
  %i.el = load i64, ptr %i.ek, align 8
  %i.em = xor i64 %i.el, %i.ee
  br label %crc64_nvme.exit.i.us.loopexit

crc64_nvme.exit.i.us.loopexit:                    ; preds = %crc64_nvme.exit.i.us.loopexit.unr-lcssa, %.lr.ph.i.i19.us.epil.preheader
  %.lcssa62 = phi i64 [ %i.ec, %crc64_nvme.exit.i.us.loopexit.unr-lcssa ], [ %i.em, %.lr.ph.i.i19.us.epil.preheader ]
  %i.en = xor i64 %.lcssa62, -1
  %i.eo = tail call i64 @llvm.bswap.i64(i64 %i.en)
  br label %crc64_nvme.exit.i.us

crc64_nvme.exit.i.us:                             ; preds = %crc64_nvme.exit.i.us.loopexit, %.lr.ph.i18.split.us
  %.07.lcssa.i.i20.us = phi i64 [ 0, %.lr.ph.i18.split.us ], [ %i.eo, %crc64_nvme.exit.i.us.loopexit ]
  store i64 %.07.lcssa.i.i20.us, ptr %i.di, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  store i16 %i.dd, ptr %i.ep, align 8
  %i.eq = load i64, ptr %6, align 8
  %i.er = lshr i64 %i.eq, 40
  %i.es = trunc i64 %i.er to i8
  %i.et = getelementptr inbounds nuw i8, ptr %i.di, i64 10
  store i8 %i.es, ptr %i.et, align 2
  %i.eu = load i64, ptr %6, align 8
  %i.ev = lshr i64 %i.eu, 32
  %i.ew = trunc i64 %i.ev to i8
  %i.ex = getelementptr inbounds nuw i8, ptr %i.di, i64 11
  store i8 %i.ew, ptr %i.ex, align 1
  %i.ey = load i64, ptr %6, align 8
  %i.ez = lshr i64 %i.ey, 24
  %i.fa = trunc i64 %i.ez to i8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.di, i64 12
  store i8 %i.fa, ptr %i.fb, align 4
  %i.fc = load i64, ptr %6, align 8
  %i.fd = lshr i64 %i.fc, 16
  %i.fe = trunc i64 %i.fd to i8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.di, i64 13
  store i8 %i.fe, ptr %i.ff, align 1
  %i.fg = load i64, ptr %6, align 8
  %i.fh = lshr i64 %i.fg, 8
  %i.fi = trunc i64 %i.fh to i8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.di, i64 14
  store i8 %i.fi, ptr %i.fj, align 2
  %i.fk = load i64, ptr %6, align 8
  %i.fl = trunc i64 %i.fk to i8
  %i.fm = getelementptr inbounds nuw i8, ptr %i.di, i64 15
  store i8 %i.fl, ptr %i.fm, align 1
  %i.fn = load i8, ptr %i.cn, align 1
  %i.fo = and i8 %i.fn, 7
  %.not45.i.us = icmp eq i8 %i.fo, 3
end_hunk_0
begin_hunk_1_@nvme_dif_pract_generate_dif:bb.a
  %i.iv = lshr i64 %i.iu, 16
  %i.iw = trunc i64 %i.iv to i8
  %i.ix = getelementptr inbounds nuw i8, ptr %i.fy, i64 13
  store i8 %i.iw, ptr %i.ix, align 1
  %i.iy = load i64, ptr %6, align 8
  %i.iz = lshr i64 %i.iy, 8
  %i.ja = trunc i64 %i.iz to i8
  %i.jb = getelementptr inbounds nuw i8, ptr %i.fy, i64 14
  store i8 %i.ja, ptr %i.jb, align 2
  %i.jc = load i64, ptr %6, align 8
  %i.jd = trunc i64 %i.jc to i8
  %i.je = getelementptr inbounds nuw i8, ptr %i.fy, i64 15
  store i8 %i.jd, ptr %i.je, align 1
  %i.jf = load i8, ptr %i.cn, align 1
  %i.jg = and i8 %i.jf, 7
  %.not45.i = icmp eq i8 %i.jg, 3
  br i1 %.not45.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %crc64_nvme.exit53.i.loopexit
  %i.jh = load i64, ptr %6, align 8
  %i.ji = add i64 %i.jh, 1
  store i64 %i.ji, ptr %6, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %crc64_nvme.exit53.i.loopexit
  %i.jj = load i64, ptr %i.ct, align 8            ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %.04256.i, i64 %i.jj ; 2 uses
  %i.jl = load i16, ptr %i.de, align 8
  %i.jm = zext i16 %i.jl to i64
  %i.jn = getelementptr inbounds nuw i8, ptr %.04355.i, i64 %i.jm
  %i.jo = icmp ult ptr %i.jk, %i.cm
  br i1 %i.jo, label %.lr.ph.i18.split, label %nvme_dif_pract_generate_dif_crc16.exit, !llvm.loop !12

bb.v:                                             ; preds = %bb.a
  tail call void @abort() #11
  unreachable

nvme_dif_pract_generate_dif_crc16.exit:           ; preds = %bb.u, %bb.s, %bb.k, %bb.i, %trace_pci_nvme_dif_pract_generate_dif_crc64.exit.i, %trace_pci_nvme_dif_pract_generate_dif_crc16.exit.i
  ret void
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext range(i16 0, 16770) i16 @nvme_dif_check(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address) %1, i64 noundef %2, ptr noundef %3, i64 %4, i8 noundef zeroext %5, i64 noundef %6, i16 noundef zeroext %7, i16 noundef zeroext %8, ptr nofree noundef captures(none) %9) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.b = load i64, ptr %9, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12608 ; 3 uses
  %i.d = load i8, ptr %i.c, align 8
  %.not.i = icmp eq i8 %i.d, 0                    ; 2 uses
  %i.e = select i1 %.not.i, i64 4294967295, i64 281474976710655
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 325 ; 4 uses
  %i.g = load i8, ptr %i.f, align 1               ; 2 uses
  %i.h = and i8 %i.g, 7                           ; 2 uses
  %i.i = icmp ne i8 %i.h, 1
  %i.j = and i8 %5, 1
  %.not8.i = icmp eq i8 %i.j, 0                   ; 2 uses
  %or.cond.i = or i1 %.not8.i, %i.i
  %i.k = and i64 %i.e, %6
  %.not9.i = icmp eq i64 %i.k, %i.b
  %or.cond11.i = select i1 %or.cond.i, i1 true, i1 %.not9.i ; 2 uses
  %i.l = icmp ne i8 %i.h, 3
  %or.cond12.i = or i1 %.not8.i, %i.l             ; 2 uses
  %spec.select.i = select i1 %or.cond12.i, i16 0, i16 385
  %.0.i = select i1 %or.cond11.i, i16 %spec.select.i, i16 16769
  %.not = and i1 %or.cond12.i, %or.cond11.i
  br i1 %.not, label %bb.b, label %nvme_dif_prchk.exit.thread67

bb.b:                                             ; preds = %bb.a
  %i.m = and i8 %i.g, 8
  %.not54 = icmp eq i8 %i.m, 0
  br i1 %.not54, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 12584
  %i.o = load i16, ptr %i.n, align 8
  %.neg = select i1 %.not.i, i16 -8, i16 -16
  %i.p = add i16 %i.o, %.neg
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.048 = phi i16 [ 0, %bb.b ], [ %i.p, %bb.c ]   ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 12592 ; 6 uses
  %i.r = load i64, ptr %i.q, align 8
  %i.s = sext i16 %.048 to i64                    ; 3 uses
  %i.t = trunc i64 %i.r to i16
  %i.u = add i16 %.048, %i.t
  %i.v = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i61 = icmp eq i32 %i.v, 0
  br i1 %.not.i61, label %trace_pci_nvme_dif_check.exit, label %bb.e, !prof !7

bb.e:                                             ; preds = %bb.d
  %i.w = load i16, ptr @_TRACE_PCI_NVME_DIF_CHECK_DSTATE, align 2
  %.not2.i = icmp eq i16 %i.w, 0
  br i1 %.not2.i, label %trace_pci_nvme_dif_check.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = load i32, ptr @qemu_loglevel, align 4
  %i.y = and i32 %i.x, 32768
  %.not3.i = icmp eq i32 %i.y, 0
  br i1 %.not3.i, label %trace_pci_nvme_dif_check.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = zext i8 %5 to i32
  %i.aa = zext i16 %i.u to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.4, i32 noundef %i.z, i32 noundef %i.aa) #10
  br label %trace_pci_nvme_dif_check.exit

trace_pci_nvme_dif_check.exit:                    ; preds = %bb.d, %bb.e, %bb.f, %bb.g
  %.not90 = icmp eq i64 %2, 0
  br i1 %.not90, label %nvme_dif_prchk.exit.thread67, label %.lr.ph

.lr.ph:                                           ; preds = %trace_pci_nvme_dif_check.exit
  %i.ab = zext i8 %5 to i32                       ; 3 uses
  %i.ac = and i32 %i.ab, 4
  %.not46.i.i = icmp eq i32 %i.ac, 0              ; 2 uses
  %.not47.i.i = icmp eq i16 %.048, 0              ; 2 uses
  %i.ad = and i32 %i.ab, 2
  %.not49.i.i = icmp eq i32 %i.ad, 0              ; 2 uses
  %i.ae = zext i16 %7 to i32                      ; 2 uses
  %i.af = zext i16 %8 to i32                      ; 2 uses
  %i.ag = and i32 %i.ab, 1
  %.not51.i.i = icmp eq i32 %i.ag, 0              ; 2 uses
  %i.ah = icmp eq i64 %6, 0
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 12584
  %i.aj = icmp eq i16 %.048, 1
  %unroll_iter112 = and i64 %i.s, -2
  %i.ak = and i16 %.048, 1
  %lcmp.mod109.not = icmp eq i16 %i.ak, 0
  %lcmp.mod111 = trunc i16 %.048 to i1
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.bf
  %.04982 = phi ptr [ %1, %.lr.ph ], [ %i.ib, %bb.bf ] ; 6 uses
  %.05177 = phi ptr [ %3, %.lr.ph ], [ %i.ie, %bb.bf ] ; 6 uses
  %i.al = getelementptr inbounds i8, ptr %.05177, i64 %i.s ; 19 uses
  %i.am = load i64, ptr %9, align 8               ; 4 uses
  %i.an = load i8, ptr %i.c, align 8
  switch i8 %i.an, label %bb.ba [
    i8 0, label %bb.i
    i8 2, label %bb.ae
  ]

bb.i:                                             ; preds = %bb.h
  %i.ao = load i8, ptr %i.f, align 1
  %i.ap = and i8 %i.ao, 7
  switch i8 %i.ap, label %bb.p [
    i8 3, label %bb.j
    i8 1, label %bb.k
    i8 2, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.ar = load i32, ptr %i.aq, align 4
  %.not.i.i = icmp eq i32 %i.ar, -1
  br i1 %.not.i.i, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 2
  %i.at = load i16, ptr %i.as, align 2            ; 2 uses
  %i.au = tail call noundef i16 @llvm.bswap.i16(i16 %i.at)
  %.not33.i.i = icmp eq i16 %i.at, -1
  br i1 %.not33.i.i, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.av = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = tail call noundef i32 @llvm.bswap.i32(i32 %i.aw)
  %i.ay = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i.i = icmp eq i32 %i.ay, 0
  br i1 %.not.i.i.i, label %nvme_dif_prchk.exit.thread, label %bb.m, !prof !7

bb.m:                                             ; preds = %bb.l
  %i.az = load i16, ptr @_TRACE_PCI_NVME_DIF_PRCHK_DISABLED_CRC16_DSTATE, align 2
  %.not2.i.i.i = icmp eq i16 %i.az, 0
  br i1 %.not2.i.i.i, label %nvme_dif_prchk.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ba = load i32, ptr @qemu_loglevel, align 4
  %i.bb = and i32 %i.ba, 32768
  %.not3.i.i.i = icmp eq i32 %i.bb, 0
  br i1 %.not3.i.i.i, label %nvme_dif_prchk.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bc = zext i16 %i.au to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.5, i32 noundef %i.bc, i32 noundef %i.ax) #10
  br label %nvme_dif_prchk.exit.thread

bb.p:                                             ; preds = %bb.k, %bb.j, %bb.i
  br i1 %.not46.i.i, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bd = load i64, ptr %i.q, align 8             ; 2 uses
  %.not.i41.i.i = icmp eq i64 %i.bd, 0
  br i1 %.not.i41.i.i, label %crc16_t10dif.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.q, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %10, %.lr.ph.i.i.i ], [ 0, %bb.q ] ; 2 uses
  %.079.i.i.i = phi i16 [ %i.bn, %.lr.ph.i.i.i ], [ 0, %bb.q ] ; 2 uses
  %i.be = shl i16 %.079.i.i.i, 8
  %i.bf = lshr i16 %.079.i.i.i, 8
  %i.bg = getelementptr inbounds nuw i8, ptr %.04982, i64 %indvars.iv.i.i.i
  %i.bh = load i8, ptr %i.bg, align 1
  %i.bi = zext i8 %i.bh to i16
  %i.bj = xor i16 %i.bf, %i.bi
  %i.bk = zext nneg i16 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr @crc16_t10dif_table, i64 %i.bk
  %i.bm = load i16, ptr %i.bl, align 2
  %i.bn = xor i16 %i.bm, %i.be                    ; 2 uses
  %10 = add i64 %indvars.iv.i.i.i, 1              ; 2 uses
  %11 = and i64 %10, 4294967295
  %i.bo = icmp ugt i64 %i.bd, %11
  br i1 %i.bo, label %.lr.ph.i.i.i, label %crc16_t10dif.exit.i.i, !llvm.loop !8

crc16_t10dif.exit.i.i:                            ; preds = %.lr.ph.i.i.i, %bb.q
  %.07.lcssa.i.i.i = phi i16 [ 0, %bb.q ], [ %i.bn, %.lr.ph.i.i.i ] ; 2 uses
  br i1 %.not47.i.i, label %crc16_t10dif.exit48.i.i, label %.lr.ph.i43.i.i

.lr.ph.i43.i.i:                                   ; preds = %crc16_t10dif.exit.i.i, %.lr.ph.i43.i.i
  %indvars.iv.i44.i.i = phi i64 [ %12, %.lr.ph.i43.i.i ], [ 0, %crc16_t10dif.exit.i.i ] ; 2 uses
  %.079.i45.i.i = phi i16 [ %i.by, %.lr.ph.i43.i.i ], [ %.07.lcssa.i.i.i, %crc16_t10dif.exit.i.i ] ; 2 uses
  %i.bp = shl i16 %.079.i45.i.i, 8
  %i.bq = lshr i16 %.079.i45.i.i, 8
  %i.br = getelementptr inbounds nuw i8, ptr %.05177, i64 %indvars.iv.i44.i.i
  %i.bs = load i8, ptr %i.br, align 1
  %i.bt = zext i8 %i.bs to i16
  %i.bu = xor i16 %i.bq, %i.bt
  %i.bv = zext nneg i16 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr @crc16_t10dif_table, i64 %i.bv
  %i.bx = load i16, ptr %i.bw, align 2
  %i.by = xor i16 %i.bx, %i.bp                    ; 2 uses
  %12 = add i64 %indvars.iv.i44.i.i, 1            ; 2 uses
  %13 = and i64 %12, 4294967295
  %14 = icmp ult i64 %13, %i.s
  br i1 %14, label %.lr.ph.i43.i.i, label %crc16_t10dif.exit48.i.i, !llvm.loop !8

crc16_t10dif.exit48.i.i:                          ; preds = %.lr.ph.i43.i.i, %crc16_t10dif.exit.i.i
  %.030.i.i = phi i16 [ %.07.lcssa.i.i.i, %crc16_t10dif.exit.i.i ], [ %i.by, %.lr.ph.i43.i.i ] ; 2 uses
  %i.bz = load i16, ptr %i.al, align 8
  %i.ca = tail call noundef i16 @llvm.bswap.i16(i16 %i.bz) ; 4 uses
  %i.cb = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i49.i.i = icmp eq i32 %i.cb, 0
  br i1 %.not.i49.i.i, label %trace_pci_nvme_dif_prchk_guard_crc16.exit.i.i, label %bb.r, !prof !7

bb.r:                                             ; preds = %crc16_t10dif.exit48.i.i
  %i.cc = load i16, ptr @_TRACE_PCI_NVME_DIF_PRCHK_GUARD_CRC16_DSTATE, align 2
  %.not2.i50.i.i = icmp eq i16 %i.cc, 0
  br i1 %.not2.i50.i.i, label %trace_pci_nvme_dif_prchk_guard_crc16.exit.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cd = load i32, ptr @qemu_loglevel, align 4
  %i.ce = and i32 %i.cd, 32768
  %.not3.i51.i.i = icmp eq i32 %i.ce, 0
  br i1 %.not3.i51.i.i, label %trace_pci_nvme_dif_prchk_guard_crc16.exit.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cf = zext i16 %i.ca to i32
  %i.cg = zext i16 %.030.i.i to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.6, i32 noundef %i.cf, i32 noundef %i.cg) #10
  %.pre.i.i = load i16, ptr %i.al, align 8
  %.pre64.i.i = tail call noundef i16 @llvm.bswap.i16(i16 %.pre.i.i)
  br label %trace_pci_nvme_dif_prchk_guard_crc16.exit.i.i

trace_pci_nvme_dif_prchk_guard_crc16.exit.i.i:    ; preds = %bb.t, %bb.s, %bb.r, %crc16_t10dif.exit48.i.i
  %.pre-phi65.i.i = phi i16 [ %i.ca, %crc16_t10dif.exit48.i.i ], [ %i.ca, %bb.r ], [ %i.ca, %bb.s ], [ %.pre64.i.i, %bb.t ]
  %.not36.not.i.i = icmp eq i16 %.pre-phi65.i.i, %.030.i.i
  br i1 %.not36.not.i.i, label %bb.u, label %nvme_dif_prchk.exit

bb.u:                                             ; preds = %trace_pci_nvme_dif_prchk_guard_crc16.exit.i.i, %bb.p
  br i1 %.not49.i.i, label %bb.z, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ch = getelementptr inbounds nuw i8, ptr %i.al, i64 2 ; 2 uses
  %i.ci = load i16, ptr %i.ch, align 2
  %i.cj = tail call noundef i16 @llvm.bswap.i16(i16 %i.ci) ; 4 uses
  %i.ck = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i52.i.i = icmp eq i32 %i.ck, 0
  br i1 %.not.i52.i.i, label %trace_pci_nvme_dif_prchk_apptag.exit.i.i, label %bb.w, !prof !7

bb.w:                                             ; preds = %bb.v
  %i.cl = load i16, ptr @_TRACE_PCI_NVME_DIF_PRCHK_APPTAG_DSTATE, align 2
  %.not3.i53.i.i = icmp eq i16 %i.cl, 0
  br i1 %.not3.i53.i.i, label %trace_pci_nvme_dif_prchk_apptag.exit.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cm = load i32, ptr @qemu_loglevel, align 4
  %i.cn = and i32 %i.cm, 32768
  %.not4.i.i.i = icmp eq i32 %i.cn, 0
  br i1 %.not4.i.i.i, label %trace_pci_nvme_dif_prchk_apptag.exit.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.co = zext i16 %i.cj to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.7, i32 noundef %i.co, i32 noundef %i.ae, i32 noundef %i.af) #10
  %.pre59.i.i.a = load i16, ptr %i.ch, align 2
  %.pre62.i.i = tail call noundef i16 @llvm.bswap.i16(i16 %.pre59.i.i.a)
  br label %trace_pci_nvme_dif_prchk_apptag.exit.i.i

trace_pci_nvme_dif_prchk_apptag.exit.i.i:         ; preds = %bb.y, %bb.x, %bb.w, %bb.v
  %.pre-phi63.i.i = phi i16 [ %i.cj, %bb.v ], [ %i.cj, %bb.w ], [ %i.cj, %bb.x ], [ %.pre62.i.i, %bb.y ]
  %i.cp = xor i16 %.pre-phi63.i.i, %7
  %i.cq = and i16 %i.cp, %8
  %.not38.i.i = icmp eq i16 %i.cq, 0
  br i1 %.not38.i.i, label %bb.z, label %nvme_dif_prchk.exit.thread67

bb.z:                                             ; preds = %trace_pci_nvme_dif_prchk_apptag.exit.i.i, %bb.u
  br i1 %.not51.i.i, label %nvme_dif_prchk.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cr = getelementptr inbounds nuw i8, ptr %i.al, i64 4 ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 4
  %i.ct = tail call noundef i32 @llvm.bswap.i32(i32 %i.cs) ; 4 uses
  %i.cu = trunc i64 %i.am to i32
  %i.cv = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i54.i.i = icmp eq i32 %i.cv, 0
  br i1 %.not.i54.i.i, label %trace_pci_nvme_dif_prchk_reftag_crc16.exit.i.i, label %bb.ab, !prof !7

bb.ab:                                            ; preds = %bb.aa
  %i.cw = load i16, ptr @_TRACE_PCI_NVME_DIF_PRCHK_REFTAG_CRC16_DSTATE, align 2
  %.not2.i55.i.i = icmp eq i16 %i.cw, 0
  br i1 %.not2.i55.i.i, label %trace_pci_nvme_dif_prchk_reftag_crc16.exit.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cx = load i32, ptr @qemu_loglevel, align 4
  %i.cy = and i32 %i.cx, 32768
  %.not3.i56.i.i = icmp eq i32 %i.cy, 0
  br i1 %.not3.i56.i.i, label %trace_pci_nvme_dif_prchk_reftag_crc16.exit.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.8, i32 noundef %i.ct, i32 noundef %i.cu) #10
  %.pre60.i.i.a = load i32, ptr %i.cr, align 4
  %.pre61.i.i = tail call noundef i32 @llvm.bswap.i32(i32 %.pre60.i.i.a)
  br label %trace_pci_nvme_dif_prchk_reftag_crc16.exit.i.i

trace_pci_nvme_dif_prchk_reftag_crc16.exit.i.i:   ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.aa
  %.pre-phi.i.i = phi i32 [ %i.ct, %bb.aa ], [ %i.ct, %bb.ab ], [ %i.ct, %bb.ac ], [ %.pre61.i.i, %bb.ad ]
  %i.cz = zext i32 %.pre-phi.i.i to i64
  %.not40.i.i = icmp eq i64 %i.am, %i.cz
  br i1 %.not40.i.i, label %nvme_dif_prchk.exit.thread, label %nvme_dif_prchk.exit.thread67

bb.ae:                                            ; preds = %bb.h
  %i.da = getelementptr inbounds nuw i8, ptr %i.al, i64 10
  %i.db = load i8, ptr %i.da, align 2
  %i.dc = zext i8 %i.db to i64
  %i.dd = shl nuw nsw i64 %i.dc, 40
  %i.de = getelementptr inbounds nuw i8, ptr %i.al, i64 11
  %i.df = load i8, ptr %i.de, align 1
  %i.dg = zext i8 %i.df to i64
  %i.dh = shl nuw nsw i64 %i.dg, 32
  %i.di = or disjoint i64 %i.dh, %i.dd
  %i.dj = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  %i.dk = load i8, ptr %i.dj, align 2
  %i.dl = zext i8 %i.dk to i64
  %i.dm = shl nuw nsw i64 %i.dl, 24
  %i.dn = or disjoint i64 %i.di, %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %i.al, i64 13
  %i.dp = load i8, ptr %i.do, align 1
  %i.dq = zext i8 %i.dp to i64
  %i.dr = shl nuw nsw i64 %i.dq, 16
  %i.ds = or disjoint i64 %i.dn, %i.dr
  %i.dt = getelementptr inbounds nuw i8, ptr %i.al, i64 14
  %i.du = load i8, ptr %i.dt, align 2
  %i.dv = zext i8 %i.du to i64
  %i.dw = shl nuw nsw i64 %i.dv, 8
  %i.dx = or disjoint i64 %i.ds, %i.dw
  %i.dy = getelementptr inbounds nuw i8, ptr %i.al, i64 15
  %i.dz = load i8, ptr %i.dy, align 1
  %i.ea = zext i8 %i.dz to i64
  %i.eb = or disjoint i64 %i.dx, %i.ea            ; 4 uses
  %i.ec = load i8, ptr %i.f, align 1
  %i.ed = and i8 %i.ec, 7
  switch i8 %i.ed, label %bb.al [
    i8 3, label %bb.af
    i8 1, label %bb.ag
    i8 2, label %bb.ag
  ]

bb.af:                                            ; preds = %bb.ae
  %.not.i29.i = icmp eq i64 %i.eb, 281474976710655
  br i1 %.not.i29.i, label %bb.ag, label %bb.al

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ae
  %i.ee = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ef = load i16, ptr %i.ee, align 8
  %.not45.i.i = icmp eq i16 %i.ef, -1
  br i1 %.not45.i.i, label %bb.ah, label %bb.al

bb.ah:                                            ; preds = %bb.ag
  %i.eg = getelementptr inbounds nuw i8, ptr %i.al, i64 2
  %i.eh = load i16, ptr %i.eg, align 2
  %i.ei = tail call noundef i16 @llvm.bswap.i16(i16 %i.eh)
  %i.ej = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i26.i = icmp eq i32 %i.ej, 0
  br i1 %.not.i.i26.i, label %nvme_dif_prchk.exit.thread, label %bb.ai, !prof !7

bb.ai:                                            ; preds = %bb.ah
  %i.ek = load i16, ptr @_TRACE_PCI_NVME_DIF_PRCHK_DISABLED_CRC64_DSTATE, align 2
  %.not2.i.i27.i = icmp eq i16 %i.ek, 0
  br i1 %.not2.i.i27.i, label %nvme_dif_prchk.exit.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.el = load i32, ptr @qemu_loglevel, align 4
  %i.em = and i32 %i.el, 32768
  %.not3.i.i28.i = icmp eq i32 %i.em, 0
  br i1 %.not3.i.i28.i, label %nvme_dif_prchk.exit.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.en = zext i16 %i.ei to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.9, i32 noundef %i.en, i64 noundef range(i64 0, 281474976710656) %i.eb) #10
  br label %nvme_dif_prchk.exit.thread

bb.al:                                            ; preds = %bb.ag, %bb.af, %bb.ae
  br i1 %.not46.i.i, label %bb.aq, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.eo = load i64, ptr %i.q, align 8             ; 5 uses
  %.not.i53.i.i = icmp eq i64 %i.eo, 0
  br i1 %.not.i53.i.i, label %crc64_nvme.exit.i.i, label %.lr.ph.i.i19.i.preheader

.lr.ph.i.i19.i.preheader:                         ; preds = %bb.am
  %xtraiter = and i64 %i.eo, 1
  %i.ep = icmp eq i64 %i.eo, 1
  br i1 %i.ep, label %.lr.ph.i.i19.i.epil.preheader, label %.lr.ph.i.i19.i.preheader.new

.lr.ph.i.i19.i.preheader.new:                     ; preds = %.lr.ph.i.i19.i.preheader
  %unroll_iter = and i64 %i.eo, -2
  br label %.lr.ph.i.i19.i

.lr.ph.i.i19.i:                                   ; preds = %.lr.ph.i.i19.i, %.lr.ph.i.i19.i.preheader.new
  %.09.i.i.i = phi i64 [ 0, %.lr.ph.i.i19.i.preheader.new ], [ %i.fj, %.lr.ph.i.i19.i ] ; 3 uses
  %.078.i.i.i = phi i64 [ -1, %.lr.ph.i.i19.i.preheader.new ], [ %i.fi, %.lr.ph.i.i19.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i19.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i19.i ]
  %i.eq = lshr i64 %.078.i.i.i, 8
  %i.er = and i64 %.078.i.i.i, 255
  %i.es = getelementptr inbounds nuw i8, ptr %.04982, i64 %.09.i.i.i
end_hunk_1
