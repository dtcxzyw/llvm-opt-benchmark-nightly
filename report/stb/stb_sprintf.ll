Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_sprintf?download=true
inline.NumInlined: 8
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 12
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.stbsp__context = type { ptr, i32, i32, [512 x i8] }

@stbsp__period = local_unnamed_addr global i8 46, align 1
@stbsp__comma = local_unnamed_addr global i8 44, align 1
@stbsp__digitpair = local_unnamed_addr global { i16, [201 x i8], i8 } { i16 0, [201 x i8] c"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00", i8 0 }, align 2
@__const.stbsp_vsprintfcb.hex = private unnamed_addr constant [19 x i8] c"0123456789abcdefxp\00", align 16
@__const.stbsp_vsprintfcb.hexu = private unnamed_addr constant [19 x i8] c"0123456789ABCDEFXP\00", align 16
@.str = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"_KMGT\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"_kMGT\00", align 1
@stbsp__bot = local_unnamed_addr constant [23 x double] [double 1.000000e+00, double 1.000000e+01, double 1.000000e+02, double 1.000000e+03, double 1.000000e+04, double 1.000000e+05, double 1.000000e+06, double 1.000000e+07, double 1.000000e+08, double 1.000000e+09, double 1.000000e+10, double 1.000000e+11, double 1.000000e+12, double 1.000000e+13, double 1.000000e+14, double 1.000000e+15, double 1.000000e+16, double 1.000000e+17, double 1.000000e+18, double 1.000000e+19, double 1.000000e+20, double 1.000000e+21, double 1.000000e+22], align 16
@stbsp__negbot = local_unnamed_addr constant [22 x double] [double 1.000000e-01, double 1.000000e-02, double 1.000000e-03, double 1.000000e-04, double 1.000000e-05, double f0x3EB0C6F7A0B5ED8D, double f0x3E7AD7F29ABCAF48, double 1.000000e-08, double 1.000000e-09, double 1.000000e-10, double f0x3DA5FD7FE1796495, double f0x3D719799812DEA11, double 1.000000e-13, double f0x3D06849B86A12B9B, double 1.000000e-15, double f0x3C9CD2B297D889BC, double 1.000000e-17, double 1.000000e-18, double f0x3BFD83C94FB6D2AC, double f0x3BC79CA10C924223, double f0x3B92E3B40A0E9B4F, double 1.000000e-22], align 16
@stbsp__negboterr = local_unnamed_addr constant [22 x double] [double f0xBC5999999999999A, double f0xBC0EB851EB851EB8, double f0xBBD89374BC6A7EFA, double f0xBBB6A161E4F765FE, double f0xBB8EE78183F91E64, double f0x3B4B5A63F9A49C2C, double f0x3B15E1E99483B023, double f0xBAD03023DF2D4C94, double f0xBAB34674BFABB83B, double f0xBA720A5465DF8D2C, double f0x3A47F7BC7B4D28AA, double f0x39F97F27F0F6E886, double f0xB9CECD79A5A0DF95, double f0x394EA70909833DE7, double f0xB97937831647F5A0, double f0x3925B4C2EBE68799, double f0xB90DB7B2080A3029, double f0xB8D7C628066E8CEE, double f0x388A52B31E9E3D07, double f0x38675447A5D8E536, double f0x383F769FB7E0B75E, double f0xB7FA7566D9CBA769], align 16
@stbsp__top = local_unnamed_addr constant [13 x double] [double f0x44B52D02C7E14AF6, double f0x497C06A5EC5433C6, double 1.000000e+69, double 1.000000e+92, double 1.000000e+115, double 1.000000e+138, double 1.000000e+161, double 1.000000e+184, double 1.000000e+207, double 1.000000e+230, double f0x7475D2CE55747A18, double 1.000000e+276, double 1.000000e+299], align 16
@stbsp__negtop = local_unnamed_addr constant [13 x double] [double f0x3B282DB34012B251, double 1.000000e-46, double 1.000000e-69, double f0x2CD4DBF7B3F71CB7, double 1.000000e-115, double 1.000000e-138, double 1.000000e-161, double 1.000000e-184, double f0x14F48C22CA71A1BD, double 1.000000e-230, double 1.000000e-253, double 1.000000e-276, double f0x01DAC9A7B3B7302F], align 16
@stbsp__toperr = local_unnamed_addr constant [13 x double] [double f0x4160000000000000, double f0x45EBB542C80DEB40, double f0xCAE83B80B9AAB60A, double f0xCFA32E22D17A166C, double f0xD4523606902E180E, double f0xD9296FB782462E87, double f0xDDF358952C0BD011, double f0xE2A78C1376A34B6C, double f0xE7817569FC243ADF, double f0xEC5D9365A897AAA6, double f0x7119050C256123A0, double f0xF5DB1799D76CC7A6, double f0xFAA213FE39571A38], align 16
@stbsp__negtoperr = local_unnamed_addr constant [13 x double] [double f0x37C13BADB829E079, double f0xB2EE46A98D3D9F64, double f0x2E3227C7218A2B65, double f0x2951D96999AA01E9, double f0xA4ACC2229EFC3962, double f0x9FECD04A2263407A, double f0x9B123B80F187A157, double f0x965C4E22914ED912, double f0x119BC296CDF42F82, double f0x8CC9F9E7F4E16FE1, double f0x880AEB0A72A8902A, double f0x834E228E12C13408, double f0x0000000000FA1259], align 16
@stbsp__powten = local_unnamed_addr constant [20 x i64] [i64 1, i64 10, i64 100, i64 1000, i64 10000, i64 100000, i64 1000000, i64 10000000, i64 100000000, i64 1000000000, i64 10000000000, i64 100000000000, i64 1000000000000, i64 10000000000000, i64 100000000000000, i64 1000000000000000, i64 10000000000000000, i64 100000000000000000, i64 1000000000000000000, i64 -8446744073709551616], align 16
@.str.3 = private unnamed_addr constant [4 x i8] c"NaN\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"Inf\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define void @stbsp_set_separators(i8 noundef signext %0, i8 noundef signext %1) local_unnamed_addr #0 {
bb.a:
  store i8 %1, ptr @stbsp__period, align 1, !tbaa !9
  store i8 %0, ptr @stbsp__comma, align 1, !tbaa !9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @stbsp__lead_sign(i32 noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %1) local_unnamed_addr #1 {
bb.a:
  store i8 0, ptr %1, align 1, !tbaa !9
  %i.a = and i32 %0, 128
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %.sink.split

bb.b:                                             ; preds = %bb.a
  %i.b = and i32 %0, 4
  %.not9 = icmp eq i32 %i.b, 0
  br i1 %.not9, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.c = and i32 %0, 2
  %.not10 = icmp eq i32 %i.c, 0
  br i1 %.not10, label %bb.d, label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.b, %bb.a
  %.sink = phi i8 [ 45, %bb.a ], [ 32, %bb.b ], [ 43, %bb.c ]
  store i8 1, ptr %1, align 1, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %.sink, ptr %i.d, align 1, !tbaa !9
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.c
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define i32 @stbsp__strlen_limited(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 4 uses
  %i.b = and i64 %i.a, 3
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %.not62 = icmp eq i32 %1, 0
  br i1 %.not62, label %.loopexit, label %.lr.ph65

.preheader:                                       ; preds = %bb.b, %bb.a
  %.022.lcssa = phi i32 [ %1, %bb.a ], [ %i.i, %bb.b ] ; 3 uses
  %.021.lcssa = phi ptr [ %0, %bb.a ], [ %i.h, %bb.b ] ; 2 uses
  %i.d = icmp ugt i32 %.022.lcssa, 3
  br i1 %i.d, label %.lr.ph69, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %.loopexit, label %.lr.ph65

.lr.ph65:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.0223464 = phi i32 [ %i.i, %.lr.ph ], [ %1, %.lr.ph.preheader ]
  %.0213563 = phi ptr [ %i.h, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 2 uses
  %i.e = phi i64 [ %i.j, %.lr.ph ], [ %i.a, %.lr.ph.preheader ]
  %i.f = load i8, ptr %.0213563, align 1, !tbaa !9
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.lr.ph65
  %i.h = getelementptr inbounds nuw i8, ptr %.0213563, i64 1 ; 3 uses
  %i.i = add i32 %.0223464, -1                    ; 3 uses
  %i.j = ptrtoint ptr %i.h to i64                 ; 3 uses
  %i.k = and i64 %i.j, 3
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %.preheader, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph69
  %i.m = getelementptr inbounds nuw i8, ptr %.168, i64 4 ; 2 uses
  %i.n = add i32 %.12367, -4                      ; 3 uses
  %i.o = icmp ugt i32 %i.n, 3
  br i1 %i.o, label %.lr.ph69, label %._crit_edge

.lr.ph69:                                         ; preds = %.preheader, %bb.c
  %.168 = phi ptr [ %i.m, %bb.c ], [ %.021.lcssa, %.preheader ] ; 3 uses
  %.12367 = phi i32 [ %i.n, %bb.c ], [ %.022.lcssa, %.preheader ] ; 2 uses
  %i.p = load i32, ptr %.168, align 4, !tbaa !10  ; 2 uses
  %i.q = sub i32 16843008, %i.p
  %i.r = or i32 %i.q, %i.p
  %i.s = and i32 %i.r, -2139062144
  %.not28 = icmp eq i32 %i.s, -2139062144
  br i1 %.not28, label %bb.c, label %.lr.ph40.preheader

._crit_edge:                                      ; preds = %bb.c, %.preheader
  %.123.lcssa = phi i32 [ %.022.lcssa, %.preheader ], [ %i.n, %bb.c ] ; 2 uses
  %.1.lcssa = phi ptr [ %.021.lcssa, %.preheader ], [ %i.m, %bb.c ] ; 2 uses
  %.not2937 = icmp eq i32 %.123.lcssa, 0
  br i1 %.not2937, label %.critedge, label %.lr.ph40.preheader

.lr.ph40.preheader:                               ; preds = %.lr.ph69, %._crit_edge
  %.439.ph = phi ptr [ %.1.lcssa, %._crit_edge ], [ %.168, %.lr.ph69 ]
  %.42638.ph = phi i32 [ %.123.lcssa, %._crit_edge ], [ %.12367, %.lr.ph69 ]
  br label %.lr.ph40

.lr.ph40:                                         ; preds = %.lr.ph40.preheader, %bb.d
  %.439 = phi ptr [ %i.u, %bb.d ], [ %.439.ph, %.lr.ph40.preheader ] ; 3 uses
  %.42638 = phi i32 [ %i.v, %bb.d ], [ %.42638.ph, %.lr.ph40.preheader ]
  %i.t = load i8, ptr %.439, align 1, !tbaa !9
  %.not30 = icmp eq i8 %i.t, 0
  br i1 %.not30, label %.critedge, label %bb.d

bb.d:                                             ; preds = %.lr.ph40
  %i.u = getelementptr inbounds nuw i8, ptr %.439, i64 1 ; 2 uses
  %i.v = add i32 %.42638, -1                      ; 2 uses
  %.not29 = icmp eq i32 %i.v, 0
  br i1 %.not29, label %.critedge, label %.lr.ph40, !llvm.loop !0

.critedge:                                        ; preds = %.lr.ph40, %bb.d, %._crit_edge
  %.4.lcssa = phi ptr [ %.1.lcssa, %._crit_edge ], [ %i.u, %bb.d ], [ %.439, %.lr.ph40 ]
  %i.w = ptrtoint ptr %.4.lcssa to i64
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph65, %.lr.ph, %.lr.ph.preheader, %.critedge
  %.pn = phi i64 [ %i.w, %.critedge ], [ %i.a, %.lr.ph.preheader ], [ %i.j, %.lr.ph ], [ %i.e, %.lr.ph65 ]
  %.027.in = sub i64 %.pn, %i.a
  %.027 = trunc i64 %.027.in to i32
  ret i32 %.027
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nounwind uwtable
define i32 @stbsp_vsprintfcb(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [512 x i8], align 16              ; 20 uses
  %i.b = ptrtoaddr ptr %i.a to i64                ; 3 uses
  %i.c = alloca [8 x i8], align 1                 ; 27 uses
  %i.d = alloca [8 x i8], align 1                 ; 26 uses
  %i.e = alloca i32, align 4                      ; 33 uses
  %i.f = alloca i32, align 4                      ; 17 uses
  %i.g = alloca ptr, align 8                      ; 55 uses
  %.not1077 = icmp eq ptr %0, null                ; 19 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 26 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 13 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 10 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 512 ; 3 uses
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 8 uses
  %i.p = ptrtoint ptr %i.o to i64                 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 65 ; 8 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 66 ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 2 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 511 ; 4 uses
  %i.v = sub i64 0, %i.b
  %scevgep = getelementptr i8, ptr %i.a, i64 %i.v
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 511 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.backedge2427, %bb.a
  %.1932 = phi ptr [ %2, %bb.a ], [ %.1932.be, %.backedge2427 ] ; 14 uses
  %.1881 = phi ptr [ %2, %bb.a ], [ %.1881.be, %.backedge2427 ] ; 5 uses
  %.1867 = phi ptr [ %3, %bb.a ], [ %.1867.be, %.backedge2427 ] ; 8 uses
  %.1828 = phi i32 [ 0, %bb.a ], [ %.1828.be, %.backedge2427 ] ; 11 uses
  %i.x = ptrtoint ptr %.1867 to i64
  %i.y = and i64 %i.x, 3
  %.not = icmp eq i64 %i.y, 0
  br i1 %.not, label %.preheader1462, label %..thread1274_crit_edge

..thread1274_crit_edge:                           ; preds = %bb.b
  %.pre = load i8, ptr %.1867, align 1, !tbaa !9
  br label %.thread1274

.preheader1462:                                   ; preds = %bb.b
  %i.z = load i32, ptr %.1867, align 4            ; 6 uses
  %i.aa = and i32 %i.z, -2139062144
  %i.ab = xor i32 %i.aa, -2139062144              ; 3 uses
  %i.ac = xor i32 %i.z, 623191333
  %i.ad = add i32 %i.ac, -16843009
  %i.ae = and i32 %i.ad, %i.ab
  %.not10751548 = icmp eq i32 %i.ae, 0
  %i.af = trunc i32 %i.z to i8                    ; 3 uses
  br i1 %.not10751548, label %.lr.ph, label %.thread1274

.lr.ph:                                           ; preds = %.preheader1462
  %i.ag = ptrtoint ptr %.1932 to i64
  br i1 %.not1077, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.ah = add i32 %i.z, -16843009
  %i.ai = and i32 %i.ab, %i.ah
  %.not1076.us2337 = icmp eq i32 %i.ai, 0
  br i1 %.not1076.us2337, label %.lr.ph2340, label %thread-pre-split

.lr.ph.split.us:                                  ; preds = %.lr.ph2340
  %i.aj = add i32 %i.ao, -16843009
  %i.ak = and i32 %i.aq, %i.aj
  %.not1076.us = icmp eq i32 %i.ak, 0
  br i1 %.not1076.us, label %.lr.ph2340, label %thread-pre-split.loopexit

.lr.ph2340:                                       ; preds = %.lr.ph.split.us.preheader, %.lr.ph.split.us
  %.78871549.us2339 = phi ptr [ %i.am, %.lr.ph.split.us ], [ %.1881, %.lr.ph.split.us.preheader ] ; 2 uses
  %.48701550.us2338 = phi ptr [ %i.an, %.lr.ph.split.us ], [ %.1867, %.lr.ph.split.us.preheader ]
  %i.al = phi i32 [ %i.ao, %.lr.ph.split.us ], [ %i.z, %.lr.ph.split.us.preheader ]
  store i32 %i.al, ptr %.78871549.us2339, align 4, !tbaa !10
  %i.am = getelementptr inbounds nuw i8, ptr %.78871549.us2339, i64 4 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.48701550.us2338, i64 4 ; 4 uses
  %i.ao = load i32, ptr %i.an, align 4            ; 6 uses
  %i.ap = and i32 %i.ao, -2139062144
  %i.aq = xor i32 %i.ap, -2139062144              ; 2 uses
  %i.ar = xor i32 %i.ao, 623191333
  %i.as = add i32 %i.ar, -16843009
  %i.at = and i32 %i.as, %i.aq
  %.not1075.us = icmp eq i32 %i.at, 0
  br i1 %.not1075.us, label %.lr.ph.split.us, label %.thread1274.loopexit

.thread1274.loopexit:                             ; preds = %.lr.ph2340
  %i.au = trunc i32 %i.ao to i8
  br label %.thread1274

.thread1274:                                      ; preds = %bb.g, %bb.f, %.thread1274.loopexit, %..thread1274_crit_edge, %.preheader1462
  %i.av = phi i8 [ %.pre, %..thread1274_crit_edge ], [ %i.af, %.preheader1462 ], [ %i.au, %.thread1274.loopexit ], [ %i.bk, %bb.f ], [ %i.ca, %bb.g ] ; 2 uses
  %.2882 = phi ptr [ %.1881, %..thread1274_crit_edge ], [ %.1881, %.preheader1462 ], [ %i.am, %.thread1274.loopexit ], [ %.78871549, %bb.f ], [ %i.bs, %bb.g ] ; 6 uses
  %.2868 = phi ptr [ %.1867, %..thread1274_crit_edge ], [ %.1867, %.preheader1462 ], [ %i.an, %.thread1274.loopexit ], [ %.48701550, %bb.f ], [ %i.bt, %bb.g ] ; 2 uses
  %i.aw = icmp eq i8 %i.av, 37
  br i1 %i.aw, label %.preheader2423, label %thread-pre-split

thread-pre-split.loopexit:                        ; preds = %.lr.ph.split.us
  %i.ax = trunc i32 %i.ao to i8
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %.lr.ph.split, %thread-pre-split.loopexit, %.lr.ph.split.us.preheader, %.thread1274
  %i.ay = phi i8 [ %i.av, %.thread1274 ], [ %i.ax, %thread-pre-split.loopexit ], [ %i.af, %.lr.ph.split.us.preheader ], [ %i.bk, %.lr.ph.split ] ; 3 uses
  %.3883 = phi ptr [ %.2882, %.thread1274 ], [ %i.am, %thread-pre-split.loopexit ], [ %.1881, %.lr.ph.split.us.preheader ], [ %.78871549, %.lr.ph.split ] ; 7 uses
  %.3869 = phi ptr [ %.2868, %.thread1274 ], [ %i.an, %thread-pre-split.loopexit ], [ %.1867, %.lr.ph.split.us.preheader ], [ %.48701550, %.lr.ph.split ] ; 2 uses
  %i.az = icmp eq i8 %i.ay, 0
  br i1 %i.az, label %bb.hj, label %bb.c

bb.c:                                             ; preds = %thread-pre-split
  br i1 %.not1077, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ba = ptrtoint ptr %.3883 to i64
  %i.bb = ptrtoint ptr %.1932 to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = trunc i64 %i.bc to i32                  ; 3 uses
  %i.be = icmp sgt i32 %i.bd, 510
  br i1 %i.be, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.bf = add nuw nsw i32 %.1828, %i.bd           ; 2 uses
  %i.bg = call ptr %0(ptr noundef %.1932, ptr noundef %1, i32 noundef %i.bd) #13 ; 3 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %.thread1427, label %..thread_crit_edge

..thread_crit_edge:                               ; preds = %bb.e
  %.pre2033 = load i8, ptr %.3869, align 1, !tbaa !9
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.d, %bb.c
  %i.bi = phi i8 [ %i.ay, %bb.c ], [ %i.ay, %bb.d ], [ %.pre2033, %..thread_crit_edge ]
  %.4935 = phi ptr [ %.1932, %bb.c ], [ %.1932, %bb.d ], [ %i.bg, %..thread_crit_edge ]
  %.6886 = phi ptr [ %.3883, %bb.c ], [ %.3883, %bb.d ], [ %i.bg, %..thread_crit_edge ] ; 2 uses
  %.4831 = phi i32 [ %.1828, %bb.c ], [ %.1828, %bb.d ], [ %i.bf, %..thread_crit_edge ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.6886, i64 1
  store i8 %i.bi, ptr %.6886, align 1, !tbaa !9
  br label %.backedge2427

.backedge2427:                                    ; preds = %._crit_edge1854, %bb.aw, %bb.hf, %.thread
  %.1932.be = phi ptr [ %.4935, %.thread ], [ %.1932, %bb.aw ], [ %.35966.lcssa, %._crit_edge1854 ], [ %.44975.ph, %bb.hf ]
  %.1881.be = phi ptr [ %i.bj, %.thread ], [ %.2882, %bb.aw ], [ %.54.lcssa, %._crit_edge1854 ], [ %.67.ph, %bb.hf ]
  %.3869.pn = phi ptr [ %.3869, %.thread ], [ %.12878, %bb.hf ], [ %.12878, %bb.aw ], [ %.12878, %._crit_edge1854 ]
  %.1828.be = phi i32 [ %.4831, %.thread ], [ %.1828, %bb.aw ], [ %.35862.lcssa, %._crit_edge1854 ], [ %.44.ph, %bb.hf ]
  %.1867.be = getelementptr inbounds nuw i8, ptr %.3869.pn, i64 1
  br label %bb.b, !llvm.loop !28

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.g
  %i.bk = phi i8 [ %i.ca, %bb.g ], [ %i.af, %.lr.ph ] ; 2 uses
  %i.bl = phi i32 [ %i.bw, %bb.g ], [ %i.ab, %.lr.ph ]
  %i.bm = phi i32 [ %i.bu, %bb.g ], [ %i.z, %.lr.ph ] ; 2 uses
  %.48701550 = phi ptr [ %i.bt, %bb.g ], [ %.1867, %.lr.ph ] ; 3 uses
  %.78871549 = phi ptr [ %i.bs, %bb.g ], [ %.1881, %.lr.ph ] ; 5 uses
  %i.bn = add i32 %i.bm, -16843009
  %i.bo = and i32 %i.bl, %i.bn
  %.not1076 = icmp eq i32 %i.bo, 0
  br i1 %.not1076, label %bb.f, label %thread-pre-split

bb.f:                                             ; preds = %.lr.ph.split
  %i.bp = ptrtoint ptr %.78871549 to i64
  %.neg = sub i64 %i.ag, %i.bp
  %.neg1078 = trunc i64 %.neg to i32
  %i.bq = add i32 %.neg1078, 512
  %i.br = icmp slt i32 %i.bq, 4
  br i1 %i.br, label %.thread1274, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 %i.bm, ptr %.78871549, align 4, !tbaa !10
  %i.bs = getelementptr inbounds nuw i8, ptr %.78871549, i64 4 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.48701550, i64 4 ; 3 uses
  %i.bu = load i32, ptr %i.bt, align 4            ; 4 uses
  %i.bv = and i32 %i.bu, -2139062144
  %i.bw = xor i32 %i.bv, -2139062144              ; 2 uses
  %i.bx = xor i32 %i.bu, 623191333
  %i.by = add i32 %i.bx, -16843009
  %i.bz = and i32 %i.by, %i.bw
  %.not1075 = icmp eq i32 %i.bz, 0
  %i.ca = trunc i32 %i.bu to i8                   ; 2 uses
  br i1 %.not1075, label %.lr.ph.split, label %.thread1274

.preheader2423:                                   ; preds = %.thread1274, %.backedge
  %.2868.pn = phi ptr [ %.6872, %.backedge ], [ %.2868, %.thread1274 ] ; 2 uses
  %.0778 = phi i32 [ %i.cc, %.backedge ], [ 0, %.thread1274 ] ; 5 uses
  %.6872 = getelementptr inbounds nuw i8, ptr %.2868.pn, i64 1 ; 3 uses
  %i.cb = load i8, ptr %.6872, align 1, !tbaa !9  ; 2 uses
  switch i8 %i.cb, label %.loopexit1488 [
    i8 45, label %bb.h
    i8 43, label %.backedge
    i8 32, label %bb.i
    i8 35, label %bb.j
    i8 39, label %bb.k
    i8 36, label %bb.l
    i8 95, label %bb.n
    i8 48, label %bb.o
  ]

bb.h:                                             ; preds = %.preheader2423
  br label %.backedge

.backedge:                                        ; preds = %bb.l, %bb.m, %.preheader2423, %bb.h, %bb.i, %bb.j, %bb.k, %bb.n
  %.sink = phi i32 [ 64, %bb.k ], [ 2, %.preheader2423 ], [ %., %bb.m ], [ 1, %bb.h ], [ 1024, %bb.n ], [ 4, %bb.i ], [ 8, %bb.j ], [ 256, %bb.l ]
  %i.cc = or i32 %.0778, %.sink
  br label %.preheader2423

bb.i:                                             ; preds = %.preheader2423
  br label %.backedge

end_hunk_0
begin_hunk_1_@stbsp_vsprintfcb:bb.a
  %i.hj = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.hk = getelementptr i8, ptr %i.hj, i64 8
  store ptr %i.hk, ptr %i.h, align 8
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.hl = phi ptr [ %i.hh, %bb.au ], [ %i.hj, %bb.av ]
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !72
  %i.hn = ptrtoint ptr %.2882 to i64
  %i.ho = ptrtoint ptr %.1932 to i64
  %i.hp = sub i64 %i.hn, %i.ho
  %i.hq = trunc i64 %i.hp to i32
  %i.hr = add nsw i32 %.1828, %i.hq
  store i32 %i.hr, ptr %i.hm, align 4, !tbaa !10
  br label %.backedge2427

bb.ax:                                            ; preds = %bb.ai, %bb.ai
  %i.hs = icmp eq i8 %i.ff, 65                    ; 2 uses
  %i.ht = select i1 %i.hs, ptr @__const.stbsp_vsprintfcb.hexu, ptr @__const.stbsp_vsprintfcb.hex ; 6 uses
  %i.hu = load i32, ptr %i.n, align 4             ; 3 uses
  %i.hv = icmp ult i32 %i.hu, 161
  br i1 %i.hv, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.hw = load ptr, ptr %i.i, align 8
  %i.hx = zext nneg i32 %i.hu to i64
  %i.hy = getelementptr i8, ptr %i.hw, i64 %i.hx
  %i.hz = add nuw nsw i32 %i.hu, 16
  store i32 %i.hz, ptr %i.n, align 4
  br label %bb.ba

bb.az:                                            ; preds = %bb.ax
  %i.ia = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.ib = getelementptr i8, ptr %i.ia, i64 8
  store ptr %i.ib, ptr %i.h, align 8
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.ic = phi ptr [ %i.hy, %bb.ay ], [ %i.ia, %bb.az ]
  %i.id = load i64, ptr %i.ic, align 8, !tbaa !16 ; 3 uses
  %i.ie = icmp eq i32 %.1803, -1
  %spec.store.select17 = select i1 %i.ie, i32 6, i32 %.1803 ; 7 uses
  %i.if = and i64 %i.id, 4503599627370495         ; 3 uses
  %i.ig = lshr i64 %i.id, 52
  %i.ih = trunc nuw nsw i64 %i.ig to i32
  %i.ii = and i32 %i.ih, 2047                     ; 2 uses
  %i.ij = add nsw i32 %i.ii, -1023
  %i.ik = or i32 %.3781, 128
  %.not11321444 = icmp slt i64 %i.id, 0
  %spec.select1187 = select i1 %.not11321444, i32 %i.ik, i32 %.3781 ; 4 uses
  %i.il = and i32 %spec.select1187, 128
  %.not.i1235 = icmp eq i32 %i.il, 0
  br i1 %.not.i1235, label %bb.bb, label %.sink.split.i

bb.bb:                                            ; preds = %bb.ba
  %i.im = and i32 %spec.select1187, 4
  %.not9.i = icmp eq i32 %i.im, 0
  br i1 %.not9.i, label %bb.bc, label %.sink.split.i

bb.bc:                                            ; preds = %bb.bb
  %i.in = and i32 %spec.select1187, 2
  %.not10.i = icmp eq i32 %i.in, 0
  br i1 %.not10.i, label %stbsp__lead_sign.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.bc, %bb.bb, %bb.ba
  %.sink.i = phi i8 [ 45, %bb.ba ], [ 32, %bb.bb ], [ 43, %bb.bc ]
  store i8 %.sink.i, ptr %i.j, align 1, !tbaa !9
  br label %stbsp__lead_sign.exit

stbsp__lead_sign.exit:                            ; preds = %bb.bc, %.sink.split.i
  %i.io = phi i8 [ 0, %bb.bc ], [ 1, %.sink.split.i ] ; 2 uses
  %i.ip = icmp eq i32 %i.ii, 0
  br i1 %i.ip, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %stbsp__lead_sign.exit
  %.not1133 = icmp eq i64 %i.if, 0
  %i.iq = select i1 %.not1133, i32 0, i32 -1022   ; 2 uses
  store i32 %i.iq, ptr %i.f, align 4, !tbaa !10
  br label %bb.bf

bb.be:                                            ; preds = %stbsp__lead_sign.exit
  %i.ir = or disjoint i64 %i.if, 4503599627370496
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.is = phi i32 [ %i.iq, %bb.bd ], [ %i.ij, %bb.be ] ; 3 uses
  %.0 = phi i64 [ %i.if, %bb.bd ], [ %i.ir, %bb.be ]
  %i.it = shl nuw nsw i64 %.0, 8
  %i.iu = icmp slt i32 %spec.store.select17, 15
  %i.iv = shl nsw i32 %spec.store.select17, 2
  %i.iw = zext nneg i32 %i.iv to i64
  %i.ix = lshr i64 576460752303423488, %i.iw
  %i.iy = select i1 %i.iu, i64 %i.ix, i64 0
  %storemerge1134 = add nuw nsw i64 %i.it, %i.iy  ; 3 uses
  %i.iz = zext nneg i8 %i.io to i64
  %i.ja = getelementptr i8, ptr %i.c, i64 %i.iz   ; 2 uses
  %i.jb = getelementptr i8, ptr %i.ja, i64 1
  store i8 48, ptr %i.jb, align 1, !tbaa !9
  %i.jc = getelementptr i8, ptr %i.ja, i64 2
  store i8 120, ptr %i.jc, align 1, !tbaa !9
  %i.jd = or disjoint i8 %i.io, 2
  store i8 %i.jd, ptr %i.c, align 1, !tbaa !9
  %i.je = lshr i64 %storemerge1134, 60
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ht, i64 %i.je
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !9
  store i8 %i.jg, ptr %i.o, align 16, !tbaa !9
  %.not1135 = icmp eq i32 %spec.store.select17, 0
  br i1 %.not1135, label %.thread2124, label %.lr.ph1683.preheader

.thread2124:                                      ; preds = %bb.bf
  store ptr %i.q, ptr %i.g, align 8, !tbaa !14
  br label %._crit_edge1684

.lr.ph1683.preheader:                             ; preds = %bb.bf
  %i.jh = load i8, ptr @stbsp__period, align 1, !tbaa !9
  store i8 %i.jh, ptr %i.q, align 1, !tbaa !9
  store ptr %i.r, ptr %i.g, align 8, !tbaa !14
  %spec.store.select18 = call i32 @llvm.umin.i32(i32 %spec.store.select17, i32 13) ; 5 uses
  %i.ji = icmp sgt i32 %spec.store.select17, %spec.store.select18
  %i.jj = sub i32 %spec.store.select17, %spec.store.select18
  %spec.select1188 = select i1 %i.ji, i32 %i.jj, i32 0 ; 2 uses
  %xtraiter2531 = and i32 %spec.store.select18, 3 ; 2 uses
  %lcmp.mod2532.not = icmp eq i32 %xtraiter2531, 0
  br i1 %lcmp.mod2532.not, label %.lr.ph1683.prol.loopexit, label %.lr.ph1683.prol

.lr.ph1683.prol:                                  ; preds = %.lr.ph1683.preheader, %.lr.ph1683.prol
  %.07201681.prol = phi i32 [ %i.jk, %.lr.ph1683.prol ], [ %spec.store.select18, %.lr.ph1683.preheader ]
  %.17391680.prol = phi ptr [ %i.jo, %.lr.ph1683.prol ], [ %i.r, %.lr.ph1683.preheader ] ; 2 uses
  %.11264.in1679.prol = phi i64 [ %.11264.prol, %.lr.ph1683.prol ], [ %storemerge1134, %.lr.ph1683.preheader ]
  %prol.iter2533 = phi i32 [ %prol.iter2533.next, %.lr.ph1683.prol ], [ 0, %.lr.ph1683.preheader ]
  %.11264.prol = shl i64 %.11264.in1679.prol, 4   ; 3 uses
  %i.jk = add nsw i32 %.07201681.prol, -1         ; 2 uses
  %i.jl = lshr i64 %.11264.prol, 60
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ht, i64 %i.jl
  %i.jn = load i8, ptr %i.jm, align 1, !tbaa !9
  %i.jo = getelementptr inbounds nuw i8, ptr %.17391680.prol, i64 1 ; 3 uses
  store i8 %i.jn, ptr %.17391680.prol, align 1, !tbaa !9
  %prol.iter2533.next = add i32 %prol.iter2533, 1 ; 2 uses
  %prol.iter2533.cmp.not = icmp eq i32 %prol.iter2533.next, %xtraiter2531
  br i1 %prol.iter2533.cmp.not, label %.lr.ph1683.prol.loopexit, label %.lr.ph1683.prol, !llvm.loop !31

.lr.ph1683.prol.loopexit:                         ; preds = %.lr.ph1683.prol, %.lr.ph1683.preheader
  %.lcssa2467.unr = phi ptr [ poison, %.lr.ph1683.preheader ], [ %i.jo, %.lr.ph1683.prol ]
  %.07201681.unr = phi i32 [ %spec.store.select18, %.lr.ph1683.preheader ], [ %i.jk, %.lr.ph1683.prol ]
  %.17391680.unr = phi ptr [ %i.r, %.lr.ph1683.preheader ], [ %i.jo, %.lr.ph1683.prol ]
  %.11264.in1679.unr = phi i64 [ %storemerge1134, %.lr.ph1683.preheader ], [ %.11264.prol, %.lr.ph1683.prol ]
  %i.jp = icmp ult i32 %spec.store.select17, 4
  br i1 %i.jp, label %._crit_edge1684, label %.lr.ph1683

.lr.ph1683:                                       ; preds = %.lr.ph1683.prol.loopexit, %.lr.ph1683
  %.07201681 = phi i32 [ %i.kf, %.lr.ph1683 ], [ %.07201681.unr, %.lr.ph1683.prol.loopexit ]
  %.17391680 = phi ptr [ %i.kj, %.lr.ph1683 ], [ %.17391680.unr, %.lr.ph1683.prol.loopexit ] ; 5 uses
  %.11264.in1679 = phi i64 [ %.11264.3, %.lr.ph1683 ], [ %.11264.in1679.unr, %.lr.ph1683.prol.loopexit ] ; 4 uses
  %i.jq = lshr i64 %.11264.in1679, 56
  %i.jr = and i64 %i.jq, 15
  %i.js = getelementptr inbounds nuw i8, ptr %i.ht, i64 %i.jr
  %i.jt = load i8, ptr %i.js, align 1, !tbaa !9
  %i.ju = getelementptr inbounds nuw i8, ptr %.17391680, i64 1
  store i8 %i.jt, ptr %.17391680, align 1, !tbaa !9
  %i.jv = lshr i64 %.11264.in1679, 52
  %i.jw = and i64 %i.jv, 15
  %i.jx = getelementptr inbounds nuw i8, ptr %i.ht, i64 %i.jw
  %i.jy = load i8, ptr %i.jx, align 1, !tbaa !9
  %i.jz = getelementptr inbounds nuw i8, ptr %.17391680, i64 2
  store i8 %i.jy, ptr %i.ju, align 1, !tbaa !9
  %i.ka = lshr i64 %.11264.in1679, 48
  %i.kb = and i64 %i.ka, 15
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ht, i64 %i.kb
  %i.kd = load i8, ptr %i.kc, align 1, !tbaa !9
  %i.ke = getelementptr inbounds nuw i8, ptr %.17391680, i64 3
  store i8 %i.kd, ptr %i.jz, align 1, !tbaa !9
  %.11264.3 = shl i64 %.11264.in1679, 16          ; 2 uses
  %i.kf = add nsw i32 %.07201681, -4              ; 2 uses
  %i.kg = lshr i64 %.11264.3, 60
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ht, i64 %i.kg
  %i.ki = load i8, ptr %i.kh, align 1, !tbaa !9
  %i.kj = getelementptr inbounds nuw i8, ptr %.17391680, i64 4 ; 2 uses
  store i8 %i.ki, ptr %i.ke, align 1, !tbaa !9
  %.not1136.3 = icmp eq i32 %i.kf, 0
  br i1 %.not1136.3, label %._crit_edge1684, label %.lr.ph1683, !llvm.loop !32

._crit_edge1684:                                  ; preds = %.lr.ph1683.prol.loopexit, %.lr.ph1683, %.thread2124
  %spec.select11882129 = phi i32 [ 0, %.thread2124 ], [ %spec.select1188, %.lr.ph1683 ], [ %spec.select1188, %.lr.ph1683.prol.loopexit ]
  %.07382128 = phi ptr [ %i.q, %.thread2124 ], [ %i.r, %.lr.ph1683 ], [ %i.r, %.lr.ph1683.prol.loopexit ]
  %.1739.lcssa = phi ptr [ %i.q, %.thread2124 ], [ %.lcssa2467.unr, %.lr.ph1683.prol.loopexit ], [ %i.kj, %.lr.ph1683 ]
  %i.kk = select i1 %i.hs, i8 80, i8 112
  store i8 %i.kk, ptr %i.s, align 1, !tbaa !9
  %i.kl = icmp slt i32 %i.is, 0
  br i1 %i.kl, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %._crit_edge1684
  store i8 45, ptr %i.t, align 1, !tbaa !9
  %i.km = sub nsw i32 0, %i.is
  br label %bb.bi

bb.bh:                                            ; preds = %._crit_edge1684
  store i8 43, ptr %i.t, align 1, !tbaa !9
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.promoted1686 = phi i32 [ %i.is, %bb.bh ], [ %i.km, %bb.bg ] ; 7 uses
  %i.kn = icmp samesign ult i32 %.promoted1686, 1000 ; 2 uses
  %i.ko = icmp samesign ugt i32 %.promoted1686, 99
  %i.kp = icmp samesign ugt i32 %.promoted1686, 9
  %i.kq = select i1 %i.kp, i32 4, i32 3
  %i.kr = select i1 %i.ko, i32 5, i32 %i.kq
  %i.ks = select i1 %i.kn, i32 %i.kr, i32 6       ; 4 uses
  %i.kt = trunc nuw nsw i32 %i.ks to i8
  store i8 %i.kt, ptr %i.d, align 1, !tbaa !9
  %.lhs.trunc = trunc nsw i32 %.promoted1686 to i16
  %i.ku = urem i16 %.lhs.trunc, 10
  %i.kv = trunc nuw nsw i16 %i.ku to i8
  %i.kw = or disjoint i8 %i.kv, 48
  %i.kx = zext nneg i32 %i.ks to i64              ; 4 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.kx
  store i8 %i.kw, ptr %i.ky, align 1, !tbaa !9
  %i.kz = icmp samesign ult i32 %i.ks, 4
  br i1 %i.kz, label %._crit_edge1691, label %.lr.ph1690

.lr.ph1690:                                       ; preds = %bb.bi
  %i.la = udiv i32 %.promoted1686, 10
  %i.lb = urem i32 %i.la, 10
  %i.lc = trunc nuw nsw i32 %i.lb to i8
  %i.ld = or disjoint i8 %i.lc, 48
  %i.le = getelementptr i8, ptr %i.d, i64 %i.kx
  %i.lf = getelementptr i8, ptr %i.le, i64 -1
  store i8 %i.ld, ptr %i.lf, align 1, !tbaa !9
  %i.lg = icmp eq i32 %i.ks, 4
  br i1 %i.lg, label %._crit_edge1691, label %.lr.ph1690.2.a

.lr.ph1690.2.a:                                   ; preds = %.lr.ph1690
  %i.lh = udiv i32 %.promoted1686, 100
  %i.li = urem i32 %i.lh, 10
  %i.lj = trunc nuw nsw i32 %i.li to i8
  %i.lk = or disjoint i8 %i.lj, 48
  %i.ll = getelementptr i8, ptr %i.d, i64 %i.kx
  %i.lm = getelementptr i8, ptr %i.ll, i64 -2
  store i8 %i.lk, ptr %i.lm, align 1, !tbaa !9
  br i1 %i.kn, label %._crit_edge1691, label %.lr.ph1690.3

.lr.ph1690.3:                                     ; preds = %.lr.ph1690.2.a
  %i.ln = udiv i32 %.promoted1686, 1000
  %i.lo = urem i32 %i.ln, 10
  %i.lp = trunc nuw nsw i32 %i.lo to i8
  %i.lq = or disjoint i8 %i.lp, 48
  %i.lr = getelementptr i8, ptr %i.d, i64 %i.kx
  %i.ls = getelementptr i8, ptr %i.lr, i64 -3
  store i8 %i.lq, ptr %i.ls, align 1, !tbaa !9
  br label %._crit_edge1691

._crit_edge1691:                                  ; preds = %.lr.ph1690, %.lr.ph1690.2.a, %.lr.ph1690.3, %bb.bi
  %i.lt = ptrtoint ptr %.1739.lcssa to i64        ; 2 uses
  %i.lu = ptrtoint ptr %.07382128 to i64
  %i.lv = sub i64 %i.lt, %i.lu
  %i.lw = trunc i64 %i.lv to i32
  store i32 %i.lw, ptr %i.f, align 4, !tbaa !10
  %i.lx = sub i64 %i.lt, %i.p
  %i.ly = trunc i64 %i.lx to i32
  store i32 %i.ly, ptr %i.e, align 4, !tbaa !10
  br label %bb.gg

bb.bj:                                            ; preds = %bb.ai, %bb.ai
  %i.lz = icmp eq i8 %i.ff, 71
  %i.ma = select i1 %i.lz, ptr @__const.stbsp_vsprintfcb.hexu, ptr @__const.stbsp_vsprintfcb.hex ; 2 uses
  %i.mb = load i32, ptr %i.n, align 4             ; 3 uses
  %i.mc = icmp ult i32 %i.mb, 161
  br i1 %i.mc, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.md = load ptr, ptr %i.i, align 8
  %i.me = zext nneg i32 %i.mb to i64
  %i.mf = getelementptr i8, ptr %i.md, i64 %i.me
  %i.mg = add nuw nsw i32 %i.mb, 16
  store i32 %i.mg, ptr %i.n, align 4
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bj
  %i.mh = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.mi = getelementptr i8, ptr %i.mh, i64 8
  store ptr %i.mi, ptr %i.h, align 8
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.mj = phi ptr [ %i.mf, %bb.bk ], [ %i.mh, %bb.bl ]
  %i.mk = load double, ptr %i.mj, align 8, !tbaa !16
  %i.ml = icmp eq i32 %.1803, -1
  %spec.store.select19 = call i32 @llvm.umax.i32(i32 %.1803, i32 1)
  %.2804 = select i1 %i.ml, i32 6, i32 %spec.store.select19 ; 6 uses
  %i.mm = add i32 %.2804, 2147483647
  %i.mn = or i32 %i.mm, -2147483648
  %i.mo = call i32 @stbsp__real_to_str(ptr noundef nonnull %i.g, ptr noundef nonnull %i.e, ptr noundef nonnull %i.a, ptr noundef nonnull %i.f, double noundef %i.mk, i32 noundef %i.mn)
  %.not1111 = icmp eq i32 %i.mo, 0
  %i.mp = or i32 %.3781, 128
  %.5783 = select i1 %.not1111, i32 %.3781, i32 %i.mp ; 4 uses
  %i.mq = load i32, ptr %i.e, align 4, !tbaa !10  ; 2 uses
  %spec.store.select1442 = call i32 @llvm.umin.i32(i32 %i.mq, i32 %.2804) ; 2 uses
  %i.mr = icmp ugt i32 %spec.store.select1442, 1
  br i1 %i.mr, label %.lr.ph1609, label %.critedge22

.lr.ph1609:                                       ; preds = %bb.bm
  %i.ms = load ptr, ptr %i.g, align 8, !tbaa !14
  %i.mt = call i32 @llvm.umin.i32(i32 %.2804, i32 %i.mq)
  %umin = zext i32 %i.mt to i64
  br label %bb.bn

bb.bn:                                            ; preds = %.lr.ph1609, %bb.bo
  %indvars.iv = phi i64 [ %umin, %.lr.ph1609 ], [ %indvars.iv.next, %bb.bo ] ; 2 uses
  %.38051607 = phi i32 [ %.2804, %.lr.ph1609 ], [ %i.na, %bb.bo ] ; 2 uses
  %i.mu = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %i.mv = add i32 %i.mu, -1                       ; 3 uses
  %i.mw = zext i32 %i.mv to i64
  %i.mx = getelementptr inbounds nuw i8, ptr %i.ms, i64 %i.mw
  %i.my = load i8, ptr %i.mx, align 1, !tbaa !9
  %i.mz = icmp eq i8 %i.my, 48
  br i1 %i.mz, label %bb.bo, label %.critedge22

bb.bo:                                            ; preds = %bb.bn
  %i.na = add nsw i32 %.38051607, -1              ; 3 uses
  %i.nb = icmp ugt i32 %i.mv, 1
  %i.nc = icmp ne i32 %i.na, 0
  %or.cond = select i1 %i.nb, i1 %i.nc, i1 false
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  br i1 %or.cond, label %bb.bn, label %.critedge22, !llvm.loop !33

.critedge22:                                      ; preds = %bb.bn, %bb.bo, %bb.bm
  %storemerge1443.lcssa1605 = phi i32 [ %spec.store.select1442, %bb.bm ], [ %i.mv, %bb.bo ], [ %i.mu, %bb.bn ] ; 6 uses
  %.3805.lcssa = phi i32 [ %.2804, %bb.bm ], [ %i.na, %bb.bo ], [ %.38051607, %bb.bn ] ; 3 uses
  store i32 %storemerge1443.lcssa1605, ptr %i.e, align 4
  %i.nd = load i32, ptr %i.f, align 4, !tbaa !10  ; 6 uses
  %i.ne = icmp slt i32 %i.nd, -3
  %i.nf = icmp sgt i32 %i.nd, %.2804
  %or.cond1189 = or i1 %i.ne, %i.nf
  br i1 %or.cond1189, label %bb.bp, label %bb.bs

bb.bp:                                            ; preds = %.critedge22
  %i.ng = icmp sgt i32 %.3805.lcssa, %storemerge1443.lcssa1605
  br i1 %i.ng, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.nh = add i32 %storemerge1443.lcssa1605, -1
  br label %bb.bz

bb.br:                                            ; preds = %bb.bp
  %spec.select1190 = call i32 @llvm.usub.sat.i32(i32 %.3805.lcssa, i32 1)
  br label %bb.bz

bb.bs:                                            ; preds = %.critedge22
  %i.ni = icmp sgt i32 %i.nd, 0
  br i1 %i.ni, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.nj = icmp slt i32 %i.nd, %storemerge1443.lcssa1605
  %i.nk = sub i32 %storemerge1443.lcssa1605, %i.nd
  %i.nl = select i1 %i.nj, i32 %i.nk, i32 0
  br label %bb.cx

bb.bu:                                            ; preds = %bb.bs
  %i.nm = call i32 @llvm.smin.i32(i32 %.3805.lcssa, i32 %storemerge1443.lcssa1605)
  %i.nn = sub nsw i32 %i.nm, %i.nd
  br label %bb.cx

bb.bv:                                            ; preds = %bb.ai, %bb.ai
  %i.no = icmp eq i8 %i.ff, 69
  %i.np = select i1 %i.no, ptr @__const.stbsp_vsprintfcb.hexu, ptr @__const.stbsp_vsprintfcb.hex
  %i.nq = load i32, ptr %i.n, align 4             ; 3 uses
  %i.nr = icmp ult i32 %i.nq, 161
  br i1 %i.nr, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.ns = load ptr, ptr %i.i, align 8
  %i.nt = zext nneg i32 %i.nq to i64
  %i.nu = getelementptr i8, ptr %i.ns, i64 %i.nt
  %i.nv = add nuw nsw i32 %i.nq, 16
  store i32 %i.nv, ptr %i.n, align 4
  br label %bb.by

bb.bx:                                            ; preds = %bb.bv
  %i.nw = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.nx = getelementptr i8, ptr %i.nw, i64 8
  store ptr %i.nx, ptr %i.h, align 8
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.ny = phi ptr [ %i.nu, %bb.bw ], [ %i.nw, %bb.bx ]
  %i.nz = load double, ptr %i.ny, align 8, !tbaa !16
  %i.oa = icmp eq i32 %.1803, -1
  %spec.store.select23 = select i1 %i.oa, i32 6, i32 %.1803 ; 2 uses
  %i.ob = or i32 %spec.store.select23, -2147483648
  %i.oc = call i32 @stbsp__real_to_str(ptr noundef nonnull %i.g, ptr noundef nonnull %i.e, ptr noundef nonnull %i.a, ptr noundef nonnull %i.f, double noundef %i.nz, i32 noundef %i.ob)
  %.not1110 = icmp eq i32 %i.oc, 0
  %i.od = or i32 %.3781, 128
  %spec.select1191 = select i1 %.not1110, i32 %.3781, i32 %i.od
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.br, %bb.bq
  %.4806 = phi i32 [ %i.nh, %bb.bq ], [ %spec.select1190, %bb.br ], [ %spec.store.select23, %bb.by ] ; 4 uses
  %.6784 = phi i32 [ %.5783, %bb.bq ], [ %.5783, %bb.br ], [ %spec.select1191, %bb.by ] ; 5 uses
  %.0736 = phi ptr [ %i.ma, %bb.bq ], [ %i.ma, %bb.br ], [ %i.np, %bb.by ]
  store i8 0, ptr %i.d, align 1, !tbaa !9
  store i8 0, ptr %i.c, align 1, !tbaa !9
  %i.oe = and i32 %.6784, 128
  %.not.i1236 = icmp eq i32 %i.oe, 0
  br i1 %.not.i1236, label %bb.ca, label %.sink.split.i1237

bb.ca:                                            ; preds = %bb.bz
  %i.of = and i32 %.6784, 4
  %.not9.i1239 = icmp eq i32 %i.of, 0
  br i1 %.not9.i1239, label %bb.cb, label %.sink.split.i1237

bb.cb:                                            ; preds = %bb.ca
  %i.og = and i32 %.6784, 2
  %.not10.i1240 = icmp eq i32 %i.og, 0
  br i1 %.not10.i1240, label %stbsp__lead_sign.exit1241, label %.sink.split.i1237

.sink.split.i1237:                                ; preds = %bb.cb, %bb.ca, %bb.bz
  %.sink.i1238 = phi i8 [ 45, %bb.bz ], [ 32, %bb.ca ], [ 43, %bb.cb ]
  store i8 1, ptr %i.c, align 1, !tbaa !9
  store i8 %.sink.i1238, ptr %i.j, align 1, !tbaa !9
  br label %stbsp__lead_sign.exit1241

stbsp__lead_sign.exit1241:                        ; preds = %bb.cb, %.sink.split.i1237
  %i.oh = load i32, ptr %i.f, align 4, !tbaa !10  ; 4 uses
  %i.oi = icmp eq i32 %i.oh, 28672
  %i.oj = load ptr, ptr %i.g, align 8, !tbaa !14  ; 14 uses
  %i.ok = ptrtoaddr ptr %i.oj to i64
  br i1 %i.oi, label %bb.gg, label %bb.cc

bb.cc:                                            ; preds = %stbsp__lead_sign.exit1241
  %i.ol = load i8, ptr %i.oj, align 1, !tbaa !9
  store i8 %i.ol, ptr %i.o, align 16, !tbaa !9
  %.not1131 = icmp eq i32 %.4806, 0
  br i1 %.not1131, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.om = load i8, ptr @stbsp__period, align 1, !tbaa !9
  store i8 %i.om, ptr %i.q, align 1, !tbaa !9
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %.2740 = phi ptr [ %i.r, %bb.cd ], [ %i.q, %bb.cc ] ; 8 uses
  %.27402382 = ptrtoaddr ptr %.2740 to i64
  %i.on = load i32, ptr %i.e, align 4, !tbaa !10  ; 2 uses
  %i.oo = add i32 %i.on, -1
  %i.op = icmp ugt i32 %i.oo, %.4806
  br i1 %i.op, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.oq = add nuw nsw i32 %.4806, 1               ; 2 uses
  store i32 %i.oq, ptr %i.e, align 4, !tbaa !10
  br label %bb.cg

end_hunk_1
