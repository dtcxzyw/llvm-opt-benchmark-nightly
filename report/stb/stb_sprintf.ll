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
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 3
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %.not62 = icmp eq i32 %1, 0
  br i1 %.not62, label %.loopexit, label %.lr.ph65

.preheader:                                       ; preds = %bb.b, %bb.a
  %.022.lcssa = phi i32 [ %1, %bb.a ], [ %i.h, %bb.b ] ; 3 uses
  %.021.lcssa = phi ptr [ %0, %bb.a ], [ %i.g, %bb.b ] ; 2 uses
  %i.d = icmp ugt i32 %.022.lcssa, 3
  br i1 %i.d, label %.lr.ph69, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %.loopexit, label %.lr.ph65

.lr.ph65:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.0223464 = phi i32 [ %i.h, %.lr.ph ], [ %1, %.lr.ph.preheader ]
  %.0213563 = phi ptr [ %i.g, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 3 uses
  %i.e = load i8, ptr %.0213563, align 1, !tbaa !9
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.lr.ph65
  %i.g = getelementptr inbounds nuw i8, ptr %.0213563, i64 1 ; 4 uses
  %i.h = add i32 %.0223464, -1                    ; 3 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = and i64 %i.i, 3
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %.preheader, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph69
  %i.l = getelementptr inbounds nuw i8, ptr %.168, i64 4 ; 2 uses
  %i.m = add i32 %.12367, -4                      ; 3 uses
  %i.n = icmp ugt i32 %i.m, 3
  br i1 %i.n, label %.lr.ph69, label %._crit_edge

.lr.ph69:                                         ; preds = %.preheader, %bb.c
  %.168 = phi ptr [ %i.l, %bb.c ], [ %.021.lcssa, %.preheader ] ; 3 uses
  %.12367 = phi i32 [ %i.m, %bb.c ], [ %.022.lcssa, %.preheader ] ; 2 uses
  %i.o = load i32, ptr %.168, align 4, !tbaa !10  ; 2 uses
  %i.p = sub i32 16843008, %i.o
  %i.q = or i32 %i.p, %i.o
  %i.r = and i32 %i.q, -2139062144
  %.not28 = icmp eq i32 %i.r, -2139062144
  br i1 %.not28, label %bb.c, label %.lr.ph40.preheader

._crit_edge:                                      ; preds = %bb.c, %.preheader
  %.123.lcssa = phi i32 [ %.022.lcssa, %.preheader ], [ %i.m, %bb.c ] ; 2 uses
  %.1.lcssa = phi ptr [ %.021.lcssa, %.preheader ], [ %i.l, %bb.c ] ; 2 uses
  %.not2937 = icmp eq i32 %.123.lcssa, 0
  br i1 %.not2937, label %.loopexit, label %.lr.ph40.preheader

.lr.ph40.preheader:                               ; preds = %.lr.ph69, %._crit_edge
  %.439.ph = phi ptr [ %.1.lcssa, %._crit_edge ], [ %.168, %.lr.ph69 ]
  %.42638.ph = phi i32 [ %.123.lcssa, %._crit_edge ], [ %.12367, %.lr.ph69 ]
  br label %.lr.ph40

.lr.ph40:                                         ; preds = %.lr.ph40.preheader, %bb.d
  %.439 = phi ptr [ %i.t, %bb.d ], [ %.439.ph, %.lr.ph40.preheader ] ; 3 uses
  %.42638 = phi i32 [ %i.u, %bb.d ], [ %.42638.ph, %.lr.ph40.preheader ]
  %i.s = load i8, ptr %.439, align 1, !tbaa !9
  %.not30 = icmp eq i8 %i.s, 0
  br i1 %.not30, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.lr.ph40
  %i.t = getelementptr inbounds nuw i8, ptr %.439, i64 1 ; 2 uses
  %i.u = add i32 %.42638, -1                      ; 2 uses
  %.not29 = icmp eq i32 %i.u, 0
  br i1 %.not29, label %.loopexit, label %.lr.ph40, !llvm.loop !0

.loopexit:                                        ; preds = %.lr.ph65, %.lr.ph, %bb.d, %.lr.ph40, %.lr.ph.preheader, %._crit_edge
  %.pn.in = phi ptr [ %.1.lcssa, %._crit_edge ], [ %0, %.lr.ph.preheader ], [ %.439, %.lr.ph40 ], [ %i.t, %bb.d ], [ %i.g, %.lr.ph ], [ %.0213563, %.lr.ph65 ]
  %.pn = ptrtoint ptr %.pn.in to i64
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

bb.b:                                             ; preds = %.backedge2434, %bb.a
  %.1932 = phi ptr [ %2, %bb.a ], [ %.1932.be, %.backedge2434 ] ; 14 uses
  %.1881 = phi ptr [ %2, %bb.a ], [ %.1881.be, %.backedge2434 ] ; 5 uses
  %.1867 = phi ptr [ %3, %bb.a ], [ %.1867.be, %.backedge2434 ] ; 8 uses
  %.1828 = phi i32 [ 0, %bb.a ], [ %.1828.be, %.backedge2434 ] ; 11 uses
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
  %.not1076.us2343 = icmp eq i32 %i.ai, 0
  br i1 %.not1076.us2343, label %.lr.ph2346, label %thread-pre-split

.lr.ph.split.us:                                  ; preds = %.lr.ph2346
  %i.aj = add i32 %i.ao, -16843009
  %i.ak = and i32 %i.aq, %i.aj
  %.not1076.us = icmp eq i32 %i.ak, 0
  br i1 %.not1076.us, label %.lr.ph2346, label %thread-pre-split.loopexit

.lr.ph2346:                                       ; preds = %.lr.ph.split.us.preheader, %.lr.ph.split.us
  %.78871549.us2345 = phi ptr [ %i.am, %.lr.ph.split.us ], [ %.1881, %.lr.ph.split.us.preheader ] ; 2 uses
  %.48701550.us2344 = phi ptr [ %i.an, %.lr.ph.split.us ], [ %.1867, %.lr.ph.split.us.preheader ]
  %i.al = phi i32 [ %i.ao, %.lr.ph.split.us ], [ %i.z, %.lr.ph.split.us.preheader ]
  store i32 %i.al, ptr %.78871549.us2345, align 4, !tbaa !10
  %i.am = getelementptr inbounds nuw i8, ptr %.78871549.us2345, i64 4 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.48701550.us2344, i64 4 ; 4 uses
  %i.ao = load i32, ptr %i.an, align 4            ; 6 uses
  %i.ap = and i32 %i.ao, -2139062144
  %i.aq = xor i32 %i.ap, -2139062144              ; 2 uses
  %i.ar = xor i32 %i.ao, 623191333
  %i.as = add i32 %i.ar, -16843009
  %i.at = and i32 %i.as, %i.aq
  %.not1075.us = icmp eq i32 %i.at, 0
  br i1 %.not1075.us, label %.lr.ph.split.us, label %.thread1274.loopexit

.thread1274.loopexit:                             ; preds = %.lr.ph2346
  %i.au = trunc i32 %i.ao to i8
  br label %.thread1274

.thread1274:                                      ; preds = %bb.g, %bb.f, %.thread1274.loopexit, %..thread1274_crit_edge, %.preheader1462
  %i.av = phi i8 [ %.pre, %..thread1274_crit_edge ], [ %i.af, %.preheader1462 ], [ %i.au, %.thread1274.loopexit ], [ %i.bk, %bb.f ], [ %i.ca, %bb.g ] ; 2 uses
  %.2882 = phi ptr [ %.1881, %..thread1274_crit_edge ], [ %.1881, %.preheader1462 ], [ %i.am, %.thread1274.loopexit ], [ %.78871549, %bb.f ], [ %i.bs, %bb.g ] ; 6 uses
  %.2868 = phi ptr [ %.1867, %..thread1274_crit_edge ], [ %.1867, %.preheader1462 ], [ %i.an, %.thread1274.loopexit ], [ %.48701550, %bb.f ], [ %i.bt, %bb.g ] ; 2 uses
  %i.aw = icmp eq i8 %i.av, 37
  br i1 %i.aw, label %.preheader2430, label %thread-pre-split

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
  %.pre2038.a = load i8, ptr %.3869, align 1, !tbaa !9
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.d, %bb.c
  %i.bi = phi i8 [ %i.ay, %bb.c ], [ %i.ay, %bb.d ], [ %.pre2038.a, %..thread_crit_edge ]
  %.4935 = phi ptr [ %.1932, %bb.c ], [ %.1932, %bb.d ], [ %i.bg, %..thread_crit_edge ]
  %.6886 = phi ptr [ %.3883, %bb.c ], [ %.3883, %bb.d ], [ %i.bg, %..thread_crit_edge ] ; 2 uses
  %.4831 = phi i32 [ %.1828, %bb.c ], [ %.1828, %bb.d ], [ %i.bf, %..thread_crit_edge ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.6886, i64 1
  store i8 %i.bi, ptr %.6886, align 1, !tbaa !9
  br label %.backedge2434

.backedge2434:                                    ; preds = %._crit_edge1858, %bb.aw, %bb.hf, %.thread
  %.1932.be = phi ptr [ %.4935, %.thread ], [ %.1932, %bb.aw ], [ %.35966.lcssa, %._crit_edge1858 ], [ %.44975.ph, %bb.hf ]
  %.1881.be = phi ptr [ %i.bj, %.thread ], [ %.2882, %bb.aw ], [ %.54.lcssa, %._crit_edge1858 ], [ %.67.ph, %bb.hf ]
  %.3869.pn = phi ptr [ %.3869, %.thread ], [ %.12878, %bb.hf ], [ %.12878, %bb.aw ], [ %.12878, %._crit_edge1858 ]
  %.1828.be = phi i32 [ %.4831, %.thread ], [ %.1828, %bb.aw ], [ %.35862.lcssa, %._crit_edge1858 ], [ %.44.ph, %bb.hf ]
  %.1867.be = getelementptr inbounds nuw i8, ptr %.3869.pn, i64 1
  br label %bb.b

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

.preheader2430:                                   ; preds = %.thread1274, %.backedge
  %.2868.pn = phi ptr [ %.6872, %.backedge ], [ %.2868, %.thread1274 ] ; 2 uses
  %.0778 = phi i32 [ %i.cc, %.backedge ], [ 0, %.thread1274 ] ; 5 uses
  %.6872 = getelementptr inbounds nuw i8, ptr %.2868.pn, i64 1 ; 3 uses
  %i.cb = load i8, ptr %.6872, align 1, !tbaa !9  ; 2 uses
  switch i8 %i.cb, label %.loopexit1488 [
    i8 45, label %bb.h
    i8 43, label %.backedge
    i8 32, label %bb.i
end_hunk_0
begin_hunk_1_@stbsp_vsprintfcb:bb.a
  %i.cv = phi i8 [ %i.db, %.lr.ph1561 ], [ %i.ch, %.preheader1487.a ]
  %.08171560 = phi i32 [ %i.cz, %.lr.ph1561 ], [ 0, %.preheader1487.a ]
  %.88741559 = phi ptr [ %i.da, %.lr.ph1561 ], [ %.7873, %.preheader1487.a ]
  %i.cw = zext nneg i8 %i.cv to i32
  %i.cx = mul nsw i32 %.08171560, 10
  %i.cy = add i32 %i.cx, -48
  %i.cz = add i32 %i.cy, %i.cw                    ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.88741559, i64 1 ; 3 uses
  %i.db = load i8, ptr %i.da, align 1, !tbaa !9   ; 3 uses
  %i.dc = add i8 %i.db, -48
  %or.cond1184 = icmp ult i8 %i.dc, 10
  br i1 %or.cond1184, label %.lr.ph1561, label %.critedge, !llvm.loop !28

.critedge:                                        ; preds = %.lr.ph1561, %.preheader1487.a, %bb.s
  %i.dd = phi i8 [ %.pr1285, %bb.s ], [ %i.ch, %.preheader1487.a ], [ %i.db, %.lr.ph1561 ] ; 2 uses
  %.9875 = phi ptr [ %i.cu, %bb.s ], [ %.7873, %.preheader1487.a ], [ %i.da, %.lr.ph1561 ] ; 3 uses
  %.1818 = phi i32 [ %i.ct, %bb.s ], [ 0, %.preheader1487.a ], [ %i.cz, %.lr.ph1561 ] ; 9 uses
  %i.de = icmp eq i8 %i.dd, 46
  br i1 %i.de, label %bb.t, label %.critedge16

bb.t:                                             ; preds = %.critedge
  %i.df = getelementptr inbounds nuw i8, ptr %.9875, i64 1 ; 3 uses
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !9   ; 4 uses
  %i.dh = icmp eq i8 %i.dg, 42
  br i1 %i.dh, label %bb.u, label %.preheader1486

.preheader1486:                                   ; preds = %bb.t
  %i.di = add i8 %i.dg, -48
  %or.cond11851565 = icmp ult i8 %i.di, 10
  br i1 %or.cond11851565, label %.lr.ph1568, label %.critedge16

bb.u:                                             ; preds = %bb.t
  %i.dj = load i32, ptr %4, align 8               ; 3 uses
  %i.dk = icmp ult i32 %i.dj, 41
  br i1 %i.dk, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dl = load ptr, ptr %i.i, align 8
  %i.dm = zext nneg i32 %i.dj to i64
  %i.dn = getelementptr i8, ptr %i.dl, i64 %i.dm
  %i.do = add nuw nsw i32 %i.dj, 8
  store i32 %i.do, ptr %4, align 8
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.dp = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.dq = getelementptr i8, ptr %i.dp, i64 8
  store ptr %i.dq, ptr %i.h, align 8
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.dr = phi ptr [ %i.dn, %bb.v ], [ %i.dp, %bb.w ]
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !10
  %i.dt = getelementptr inbounds nuw i8, ptr %.9875, i64 2 ; 2 uses
  %.pr1286.pre = load i8, ptr %i.dt, align 1, !tbaa !9
  br label %.critedge16

.lr.ph1568:                                       ; preds = %.preheader1486, %.lr.ph1568
  %i.du = phi i8 [ %i.ea, %.lr.ph1568 ], [ %i.dg, %.preheader1486 ]
  %.08021567 = phi i32 [ %i.dy, %.lr.ph1568 ], [ 0, %.preheader1486 ]
  %.108761566 = phi ptr [ %i.dz, %.lr.ph1568 ], [ %i.df, %.preheader1486 ]
  %i.dv = zext nneg i8 %i.du to i32
  %i.dw = mul nsw i32 %.08021567, 10
  %i.dx = add i32 %i.dw, -48
  %i.dy = add i32 %i.dx, %i.dv                    ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.108761566, i64 1 ; 3 uses
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !9   ; 3 uses
  %i.eb = add i8 %i.ea, -48
  %or.cond1185 = icmp ult i8 %i.eb, 10
  br i1 %or.cond1185, label %.lr.ph1568, label %.critedge16, !llvm.loop !29

.critedge16:                                      ; preds = %.lr.ph1568, %bb.x, %.critedge, %.preheader1486
  %i.ec = phi i8 [ %.pr1286.pre, %bb.x ], [ %i.dg, %.preheader1486 ], [ %i.dd, %.critedge ], [ %i.ea, %.lr.ph1568 ]
  %.11877 = phi ptr [ %i.dt, %bb.x ], [ %i.df, %.preheader1486 ], [ %.9875, %.critedge ], [ %i.dz, %.lr.ph1568 ] ; 13 uses
  %.1803 = phi i32 [ %i.ds, %bb.x ], [ 0, %.preheader1486 ], [ -1, %.critedge ], [ %i.dy, %.lr.ph1568 ] ; 17 uses
  switch i8 %i.ec, label %bb.ai [
    i8 104, label %bb.y
    i8 108, label %bb.z
    i8 106, label %bb.aa
    i8 122, label %bb.ab
    i8 116, label %bb.ac
    i8 73, label %bb.ad
  ]

bb.y:                                             ; preds = %.critedge16
  %i.ed = or i32 %.2780, 512
  %i.ee = getelementptr inbounds nuw i8, ptr %.11877, i64 1 ; 2 uses
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !9
  %i.eg = icmp eq i8 %i.ef, 104
  %i.eh = getelementptr inbounds nuw i8, ptr %.11877, i64 2
  %spec.select = select i1 %i.eg, ptr %i.eh, ptr %i.ee
  br label %bb.ai

bb.z:                                             ; preds = %.critedge16
  %i.ei = or i32 %.2780, 32
  %i.ej = getelementptr inbounds nuw i8, ptr %.11877, i64 1 ; 2 uses
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !9
  %i.el = icmp eq i8 %i.ek, 108
  %i.em = getelementptr inbounds nuw i8, ptr %.11877, i64 2
  %spec.select1186 = select i1 %i.el, ptr %i.em, ptr %i.ej
  br label %bb.ai

bb.aa:                                            ; preds = %.critedge16
  %i.en = or i32 %.2780, 32
  %i.eo = getelementptr inbounds nuw i8, ptr %.11877, i64 1
  br label %bb.ai

bb.ab:                                            ; preds = %.critedge16
  %i.ep = or i32 %.2780, 32
  %i.eq = getelementptr inbounds nuw i8, ptr %.11877, i64 1
  br label %bb.ai

bb.ac:                                            ; preds = %.critedge16
  %i.er = or i32 %.2780, 32
  %i.es = getelementptr inbounds nuw i8, ptr %.11877, i64 1
  br label %bb.ai

bb.ad:                                            ; preds = %.critedge16
  %i.et = getelementptr inbounds nuw i8, ptr %.11877, i64 1 ; 2 uses
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !9
  switch i8 %i.eu, label %.thread1287 [
    i8 54, label %bb.ae
    i8 51, label %bb.ag
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.ev = getelementptr inbounds nuw i8, ptr %.11877, i64 2
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !9
  %i.ex = icmp eq i8 %i.ew, 52
  br i1 %i.ex, label %bb.af, label %.thread1287

bb.af:                                            ; preds = %bb.ae
  %i.ey = or i32 %.2780, 32
  %i.ez = getelementptr inbounds nuw i8, ptr %.11877, i64 3
  br label %bb.ai

bb.ag:                                            ; preds = %bb.ad
  %i.fa = getelementptr inbounds nuw i8, ptr %.11877, i64 2
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !9
  %i.fc = icmp eq i8 %i.fb, 50
  br i1 %i.fc, label %bb.ah, label %.thread1287

bb.ah:                                            ; preds = %bb.ag
  %i.fd = getelementptr inbounds nuw i8, ptr %.11877, i64 3
  br label %bb.ai

.thread1287:                                      ; preds = %bb.ad, %bb.ae, %bb.ag
  %i.fe = or i32 %.2780, 32
  br label %bb.ai

bb.ai:                                            ; preds = %bb.z, %bb.y, %.critedge16, %bb.af, %.thread1287, %bb.ah, %bb.ac, %bb.ab, %bb.aa
  %.12878 = phi ptr [ %.11877, %.critedge16 ], [ %i.et, %.thread1287 ], [ %i.fd, %bb.ah ], [ %spec.select, %bb.y ], [ %spec.select1186, %bb.z ], [ %i.eo, %bb.aa ], [ %i.eq, %bb.ab ], [ %i.es, %bb.ac ], [ %i.ez, %bb.af ] ; 6 uses
  %.3781 = phi i32 [ %.2780, %.critedge16 ], [ %i.fe, %.thread1287 ], [ %.2780, %bb.ah ], [ %i.ed, %bb.y ], [ %i.ei, %bb.z ], [ %i.en, %bb.aa ], [ %i.ep, %bb.ab ], [ %i.er, %bb.ac ], [ %i.ey, %bb.af ] ; 23 uses
  %i.ff = load i8, ptr %.12878, align 1, !tbaa !9 ; 7 uses
  switch i8 %i.ff, label %bb.hi [
    i8 115, label %bb.aj
    i8 99, label %bb.ap
    i8 110, label %bb.at
    i8 65, label %bb.ax
    i8 97, label %bb.ax
    i8 71, label %bb.bj
    i8 103, label %bb.bj
    i8 69, label %bb.bv
    i8 101, label %bb.bv
    i8 102, label %bb.cl
    i8 66, label %bb.eh
    i8 98, label %bb.eh
    i8 111, label %bb.ek
    i8 112, label %bb.en
    i8 88, label %bb.eo
    i8 120, label %bb.eo
    i8 117, label %bb.fg
    i8 105, label %bb.fg
    i8 100, label %bb.fg
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.fg = load i32, ptr %4, align 8               ; 3 uses
  %i.fh = icmp ult i32 %i.fg, 41
  br i1 %i.fh, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.fi = load ptr, ptr %i.i, align 8
  %i.fj = zext nneg i32 %i.fg to i64
  %i.fk = getelementptr i8, ptr %i.fi, i64 %i.fj
  %i.fl = add nuw nsw i32 %i.fg, 8
  store i32 %i.fl, ptr %4, align 8
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.fm = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.fn = getelementptr i8, ptr %i.fm, i64 8
  store ptr %i.fn, ptr %i.h, align 8
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.fo = phi ptr [ %i.fk, %bb.ak ], [ %i.fm, %bb.al ]
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !14 ; 2 uses
  %i.fq = icmp eq ptr %i.fp, null
  %spec.store.select = select i1 %i.fq, ptr @.str, ptr %i.fp ; 5 uses
  %i.fr = call i32 @llvm.smax.i32(i32 %.1803, i32 -1) ; 3 uses
  %i.fs = ptrtoint ptr %spec.store.select to i64  ; 2 uses
  %i.ft = and i64 %i.fs, 3
  %i.fu = icmp eq i64 %i.ft, 0
  br i1 %i.fu, label %.preheader.i, label %.lr.ph1700.preheader

.lr.ph1700.preheader:                             ; preds = %bb.am
  %5 = zext i32 %i.fr to i64
  %scevgep2005 = getelementptr i8, ptr %spec.store.select, i64 %5 ; 2 uses
  %i.fv = icmp eq i32 %.1803, 0
  br i1 %i.fv, label %stbsp__strlen_limited.exit, label %.lr.ph1700

.preheader.i:                                     ; preds = %.lr.ph2361, %bb.am
  %.022.lcssa.i = phi i32 [ %i.fr, %bb.am ], [ %i.ga, %.lr.ph2361 ] ; 3 uses
  %.021.lcssa.i = phi ptr [ %spec.store.select, %bb.am ], [ %i.fz, %.lr.ph2361 ] ; 2 uses
  %i.fw = icmp ugt i32 %.022.lcssa.i, 3
  br i1 %i.fw, label %.lr.ph2366, label %._crit_edge2367

.lr.ph.i:                                         ; preds = %.lr.ph2361
  %.not.i = icmp eq i32 %i.ga, 0
  br i1 %.not.i, label %stbsp__strlen_limited.exit, label %.lr.ph1700

.lr.ph1700:                                       ; preds = %.lr.ph1700.preheader, %.lr.ph.i
  %.02234.i2361 = phi i32 [ %i.ga, %.lr.ph.i ], [ %i.fr, %.lr.ph1700.preheader ]
  %.02135.i2360 = phi ptr [ %i.fz, %.lr.ph.i ], [ %spec.store.select, %.lr.ph1700.preheader ] ; 3 uses
  %i.fx = load i8, ptr %.02135.i2360, align 1, !tbaa !9
  %i.fy = icmp eq i8 %i.fx, 0
  br i1 %i.fy, label %stbsp__strlen_limited.exit, label %.lr.ph2361

.lr.ph2361:                                       ; preds = %.lr.ph1700
  %i.fz = getelementptr inbounds nuw i8, ptr %.02135.i2360, i64 1 ; 3 uses
  %i.ga = add i32 %.02234.i2361, -1               ; 3 uses
  %i.gb = ptrtoint ptr %i.fz to i64
  %i.gc = and i64 %i.gb, 3
  %i.gd = icmp eq i64 %i.gc, 0
  br i1 %i.gd, label %.preheader.i, label %.lr.ph.i

bb.an:                                            ; preds = %.lr.ph2366
  %i.ge = getelementptr inbounds nuw i8, ptr %.1.i2365, i64 4 ; 2 uses
  %i.gf = add i32 %.123.i2364, -4                 ; 3 uses
  %i.gg = icmp ugt i32 %i.gf, 3
  br i1 %i.gg, label %.lr.ph2366, label %._crit_edge2367

.lr.ph2366:                                       ; preds = %.preheader.i, %bb.an
  %.1.i2365 = phi ptr [ %i.ge, %bb.an ], [ %.021.lcssa.i, %.preheader.i ] ; 3 uses
  %.123.i2364 = phi i32 [ %i.gf, %bb.an ], [ %.022.lcssa.i, %.preheader.i ] ; 2 uses
  %i.gh = load i32, ptr %.1.i2365, align 4, !tbaa !10 ; 2 uses
  %i.gi = sub i32 16843008, %i.gh
  %i.gj = or i32 %i.gi, %i.gh
  %i.gk = and i32 %i.gj, -2139062144
  %.not28.i = icmp eq i32 %i.gk, -2139062144
  br i1 %.not28.i, label %bb.an, label %.lr.ph40.preheader.i

._crit_edge2367:                                  ; preds = %bb.an, %.preheader.i
  %.123.i.lcssa = phi i32 [ %.022.lcssa.i, %.preheader.i ], [ %i.gf, %bb.an ] ; 2 uses
  %.1.i.lcssa = phi ptr [ %.021.lcssa.i, %.preheader.i ], [ %i.ge, %bb.an ] ; 2 uses
  %.not2937.i = icmp eq i32 %.123.i.lcssa, 0
  br i1 %.not2937.i, label %stbsp__strlen_limited.exit, label %.lr.ph40.preheader.i

.lr.ph40.preheader.i:                             ; preds = %.lr.ph2366, %._crit_edge2367
  %.123.i2316 = phi i32 [ %.123.i.lcssa, %._crit_edge2367 ], [ %.123.i2364, %.lr.ph2366 ] ; 2 uses
  %.1.i2314 = phi ptr [ %.1.i.lcssa, %._crit_edge2367 ], [ %.1.i2365, %.lr.ph2366 ] ; 2 uses
  %scevgep2009.a = getelementptr i8, ptr %.1.i2314, i64 1
  %i.gl = add i32 %.123.i2316, -1
  %i.gm = zext i32 %i.gl to i64
  %scevgep2010 = getelementptr i8, ptr %scevgep2009.a, i64 %i.gm
  br label %.lr.ph40.i

.lr.ph40.i:                                       ; preds = %bb.ao, %.lr.ph40.preheader.i
  %.439.i = phi ptr [ %i.go, %bb.ao ], [ %.1.i2314, %.lr.ph40.preheader.i ] ; 3 uses
  %.42638.i = phi i32 [ %i.gp, %bb.ao ], [ %.123.i2316, %.lr.ph40.preheader.i ]
  %i.gn = load i8, ptr %.439.i, align 1, !tbaa !9
  %.not30.i = icmp eq i8 %i.gn, 0
  br i1 %.not30.i, label %stbsp__strlen_limited.exit, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph40.i
  %i.go = getelementptr inbounds nuw i8, ptr %.439.i, i64 1
  %i.gp = add i32 %.42638.i, -1                   ; 2 uses
  %.not29.i = icmp eq i32 %i.gp, 0
  br i1 %.not29.i, label %stbsp__strlen_limited.exit, label %.lr.ph40.i, !llvm.loop !0

stbsp__strlen_limited.exit:                       ; preds = %.lr.ph1700, %.lr.ph.i, %.lr.ph40.i, %bb.ao, %.lr.ph1700.preheader, %._crit_edge2367
  %.pn.in.i = phi ptr [ %.1.i.lcssa, %._crit_edge2367 ], [ %scevgep2005, %.lr.ph1700.preheader ], [ %.439.i, %.lr.ph40.i ], [ %scevgep2010, %bb.ao ], [ %scevgep2005, %.lr.ph.i ], [ %.02135.i2360, %.lr.ph1700 ]
  %.pn.i = ptrtoint ptr %.pn.in.i to i64
  %.027.in.i = sub i64 %.pn.i, %i.fs
  %.027.i = trunc i64 %.027.in.i to i32
  store i32 %.027.i, ptr %i.e, align 4, !tbaa !10
  store i8 0, ptr %i.c, align 1, !tbaa !9
  store i8 0, ptr %i.d, align 1, !tbaa !9
  store i32 0, ptr %i.f, align 4, !tbaa !10
  br label %bb.gg

bb.ap:                                            ; preds = %bb.ai
  %i.gq = load i32, ptr %4, align 8               ; 3 uses
  %i.gr = icmp ult i32 %i.gq, 41
  br i1 %i.gr, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.gs = load ptr, ptr %i.i, align 8
  %i.gt = zext nneg i32 %i.gq to i64
  %i.gu = getelementptr i8, ptr %i.gs, i64 %i.gt
  %i.gv = add nuw nsw i32 %i.gq, 8
  store i32 %i.gv, ptr %4, align 8
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %i.gw = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.gx = getelementptr i8, ptr %i.gw, i64 8
  store ptr %i.gx, ptr %i.h, align 8
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.gy = phi ptr [ %i.gu, %bb.aq ], [ %i.gw, %bb.ar ]
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !10
  %i.ha = trunc i32 %i.gz to i8
  store i8 %i.ha, ptr %i.u, align 1, !tbaa !9
  store i32 1, ptr %i.e, align 4, !tbaa !10
  store i8 0, ptr %i.c, align 1, !tbaa !9
  store i8 0, ptr %i.d, align 1, !tbaa !9
  store i32 0, ptr %i.f, align 4, !tbaa !10
  br label %bb.gg

bb.at:                                            ; preds = %bb.ai
  %i.hb = load i32, ptr %4, align 8               ; 3 uses
  %i.hc = icmp ult i32 %i.hb, 41
  br i1 %i.hc, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.hd = load ptr, ptr %i.i, align 8
  %i.he = zext nneg i32 %i.hb to i64
  %i.hf = getelementptr i8, ptr %i.hd, i64 %i.he
  %i.hg = add nuw nsw i32 %i.hb, 8
  store i32 %i.hg, ptr %4, align 8
  br label %bb.aw

bb.av:                                            ; preds = %bb.at
  %i.hh = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.hi = getelementptr i8, ptr %i.hh, i64 8
  store ptr %i.hi, ptr %i.h, align 8
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.hj = phi ptr [ %i.hf, %bb.au ], [ %i.hh, %bb.av ]
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !71
  %i.hl = ptrtoint ptr %.2882 to i64
  %i.hm = ptrtoint ptr %.1932 to i64
  %i.hn = sub i64 %i.hl, %i.hm
  %i.ho = trunc i64 %i.hn to i32
  %i.hp = add nsw i32 %.1828, %i.ho
  store i32 %i.hp, ptr %i.hk, align 4, !tbaa !10
  br label %.backedge2434

bb.ax:                                            ; preds = %bb.ai, %bb.ai
  %i.hq = icmp eq i8 %i.ff, 65                    ; 2 uses
  %i.hr = select i1 %i.hq, ptr @__const.stbsp_vsprintfcb.hexu, ptr @__const.stbsp_vsprintfcb.hex ; 6 uses
  %i.hs = load i32, ptr %i.n, align 4             ; 3 uses
  %i.ht = icmp ult i32 %i.hs, 161
  br i1 %i.ht, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.hu = load ptr, ptr %i.i, align 8
  %i.hv = zext nneg i32 %i.hs to i64
  %i.hw = getelementptr i8, ptr %i.hu, i64 %i.hv
  %i.hx = add nuw nsw i32 %i.hs, 16
  store i32 %i.hx, ptr %i.n, align 4
  br label %bb.ba

bb.az:                                            ; preds = %bb.ax
  %i.hy = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.hz = getelementptr i8, ptr %i.hy, i64 8
  store ptr %i.hz, ptr %i.h, align 8
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.ia = phi ptr [ %i.hw, %bb.ay ], [ %i.hy, %bb.az ]
  %i.ib = load i64, ptr %i.ia, align 8, !tbaa !16 ; 3 uses
  %i.ic = icmp eq i32 %.1803, -1
  %spec.store.select17 = select i1 %i.ic, i32 6, i32 %.1803 ; 7 uses
  %i.id = and i64 %i.ib, 4503599627370495         ; 3 uses
  %i.ie = lshr i64 %i.ib, 52
  %i.if = trunc nuw nsw i64 %i.ie to i32
  %i.ig = and i32 %i.if, 2047                     ; 2 uses
  %i.ih = add nsw i32 %i.ig, -1023
  %i.ii = or i32 %.3781, 128
  %.not11321444 = icmp slt i64 %i.ib, 0
  %spec.select1187 = select i1 %.not11321444, i32 %i.ii, i32 %.3781 ; 4 uses
  %i.ij = and i32 %spec.select1187, 128
  %.not.i1235 = icmp eq i32 %i.ij, 0
  br i1 %.not.i1235, label %bb.bb, label %.sink.split.i

bb.bb:                                            ; preds = %bb.ba
  %i.ik = and i32 %spec.select1187, 4
  %.not9.i = icmp eq i32 %i.ik, 0
  br i1 %.not9.i, label %bb.bc, label %.sink.split.i

bb.bc:                                            ; preds = %bb.bb
  %i.il = and i32 %spec.select1187, 2
  %.not10.i = icmp eq i32 %i.il, 0
  br i1 %.not10.i, label %stbsp__lead_sign.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.bc, %bb.bb, %bb.ba
  %.sink.i = phi i8 [ 45, %bb.ba ], [ 32, %bb.bb ], [ 43, %bb.bc ]
  store i8 %.sink.i, ptr %i.j, align 1, !tbaa !9
  br label %stbsp__lead_sign.exit

stbsp__lead_sign.exit:                            ; preds = %bb.bc, %.sink.split.i
  %i.im = phi i8 [ 0, %bb.bc ], [ 1, %.sink.split.i ] ; 2 uses
  %i.in = icmp eq i32 %i.ig, 0
  br i1 %i.in, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %stbsp__lead_sign.exit
  %.not1133 = icmp eq i64 %i.id, 0
  %i.io = select i1 %.not1133, i32 0, i32 -1022   ; 2 uses
  store i32 %i.io, ptr %i.f, align 4, !tbaa !10
  br label %bb.bf

bb.be:                                            ; preds = %stbsp__lead_sign.exit
  %i.ip = or disjoint i64 %i.id, 4503599627370496
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.iq = phi i32 [ %i.io, %bb.bd ], [ %i.ih, %bb.be ] ; 3 uses
  %.0 = phi i64 [ %i.id, %bb.bd ], [ %i.ip, %bb.be ]
  %i.ir = shl nuw nsw i64 %.0, 8
  %i.is = icmp slt i32 %spec.store.select17, 15
  %i.it = shl nsw i32 %spec.store.select17, 2
  %i.iu = zext nneg i32 %i.it to i64
  %i.iv = lshr i64 576460752303423488, %i.iu
  %i.iw = select i1 %i.is, i64 %i.iv, i64 0
  %storemerge1134 = add nuw nsw i64 %i.ir, %i.iw  ; 3 uses
  %i.ix = zext nneg i8 %i.im to i64
  %i.iy = getelementptr i8, ptr %i.c, i64 %i.ix   ; 2 uses
  %i.iz = getelementptr i8, ptr %i.iy, i64 1
  store i8 48, ptr %i.iz, align 1, !tbaa !9
  %i.ja = getelementptr i8, ptr %i.iy, i64 2
  store i8 120, ptr %i.ja, align 1, !tbaa !9
  %i.jb = or disjoint i8 %i.im, 2
  store i8 %i.jb, ptr %i.c, align 1, !tbaa !9
  %i.jc = lshr i64 %storemerge1134, 60
  %i.jd = getelementptr inbounds nuw i8, ptr %i.hr, i64 %i.jc
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !9
  store i8 %i.je, ptr %i.o, align 16, !tbaa !9
  %.not1135 = icmp eq i32 %spec.store.select17, 0
  br i1 %.not1135, label %.thread2130, label %.lr.ph1687.preheader

.thread2130:                                      ; preds = %bb.bf
  store ptr %i.q, ptr %i.g, align 8, !tbaa !14
  br label %._crit_edge1688

.lr.ph1687.preheader:                             ; preds = %bb.bf
  %i.jf = load i8, ptr @stbsp__period, align 1, !tbaa !9
  store i8 %i.jf, ptr %i.q, align 1, !tbaa !9
  store ptr %i.r, ptr %i.g, align 8, !tbaa !14
  %spec.store.select18 = call i32 @llvm.umin.i32(i32 %spec.store.select17, i32 13) ; 5 uses
  %i.jg = icmp sgt i32 %spec.store.select17, %spec.store.select18
  %i.jh = sub i32 %spec.store.select17, %spec.store.select18
  %spec.select1188 = select i1 %i.jg, i32 %i.jh, i32 0 ; 2 uses
  %xtraiter2538 = and i32 %spec.store.select18, 3 ; 2 uses
  %lcmp.mod2539.not = icmp eq i32 %xtraiter2538, 0
  br i1 %lcmp.mod2539.not, label %.lr.ph1687.prol.loopexit, label %.lr.ph1687.prol

.lr.ph1687.prol:                                  ; preds = %.lr.ph1687.preheader, %.lr.ph1687.prol
  %.07201685.prol = phi i32 [ %i.ji, %.lr.ph1687.prol ], [ %spec.store.select18, %.lr.ph1687.preheader ]
  %.17391684.prol = phi ptr [ %i.jm, %.lr.ph1687.prol ], [ %i.r, %.lr.ph1687.preheader ] ; 2 uses
  %.11264.in1683.prol = phi i64 [ %.11264.prol, %.lr.ph1687.prol ], [ %storemerge1134, %.lr.ph1687.preheader ]
  %prol.iter2540 = phi i32 [ %prol.iter2540.next, %.lr.ph1687.prol ], [ 0, %.lr.ph1687.preheader ]
  %.11264.prol = shl i64 %.11264.in1683.prol, 4   ; 3 uses
  %i.ji = add nsw i32 %.07201685.prol, -1         ; 2 uses
  %i.jj = lshr i64 %.11264.prol, 60
  %i.jk = getelementptr inbounds nuw i8, ptr %i.hr, i64 %i.jj
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !9
  %i.jm = getelementptr inbounds nuw i8, ptr %.17391684.prol, i64 1 ; 3 uses
  store i8 %i.jl, ptr %.17391684.prol, align 1, !tbaa !9
  %prol.iter2540.next = add i32 %prol.iter2540, 1 ; 2 uses
  %prol.iter2540.cmp.not = icmp eq i32 %prol.iter2540.next, %xtraiter2538
  br i1 %prol.iter2540.cmp.not, label %.lr.ph1687.prol.loopexit, label %.lr.ph1687.prol, !llvm.loop !30

.lr.ph1687.prol.loopexit:                         ; preds = %.lr.ph1687.prol, %.lr.ph1687.preheader
  %.lcssa2474.unr.a = phi ptr [ poison, %.lr.ph1687.preheader ], [ %i.jm, %.lr.ph1687.prol ]
  %.07201685.unr = phi i32 [ %spec.store.select18, %.lr.ph1687.preheader ], [ %i.ji, %.lr.ph1687.prol ]
  %.17391684.unr = phi ptr [ %i.r, %.lr.ph1687.preheader ], [ %i.jm, %.lr.ph1687.prol ]
  %.11264.in1683.unr = phi i64 [ %storemerge1134, %.lr.ph1687.preheader ], [ %.11264.prol, %.lr.ph1687.prol ]
  %i.jn = icmp ult i32 %spec.store.select17, 4
  br i1 %i.jn, label %._crit_edge1688, label %.lr.ph1687
end_hunk_1
