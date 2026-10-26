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
  %scevgep.a = getelementptr i8, ptr %i.a, i64 %i.v
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 511 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.backedge2429, %bb.a
  %.1932 = phi ptr [ %2, %bb.a ], [ %.1932.be, %.backedge2429 ] ; 14 uses
  %.1881 = phi ptr [ %2, %bb.a ], [ %.1881.be, %.backedge2429 ] ; 5 uses
  %.1867 = phi ptr [ %3, %bb.a ], [ %.1867.be, %.backedge2429 ] ; 8 uses
  %.1828 = phi i32 [ 0, %bb.a ], [ %.1828.be, %.backedge2429 ] ; 11 uses
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
  br i1 %i.aw, label %.preheader2425, label %thread-pre-split

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
  %.pre2038 = load i8, ptr %.3869, align 1, !tbaa !9
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.d, %bb.c
  %i.bi = phi i8 [ %i.ay, %bb.c ], [ %i.ay, %bb.d ], [ %.pre2038, %..thread_crit_edge ]
  %.4935 = phi ptr [ %.1932, %bb.c ], [ %.1932, %bb.d ], [ %i.bg, %..thread_crit_edge ]
  %.6886 = phi ptr [ %.3883, %bb.c ], [ %.3883, %bb.d ], [ %i.bg, %..thread_crit_edge ] ; 2 uses
  %.4831 = phi i32 [ %.1828, %bb.c ], [ %.1828, %bb.d ], [ %i.bf, %..thread_crit_edge ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.6886, i64 1
  store i8 %i.bi, ptr %.6886, align 1, !tbaa !9
  br label %.backedge2429

.backedge2429:                                    ; preds = %._crit_edge1858, %bb.aw, %bb.hf, %.thread
  %.1932.be = phi ptr [ %.4935, %.thread ], [ %.1932, %bb.aw ], [ %.35966.lcssa, %._crit_edge1858 ], [ %.44975.ph, %bb.hf ]
  %.1881.be = phi ptr [ %i.bj, %.thread ], [ %.2882, %bb.aw ], [ %.54.lcssa, %._crit_edge1858 ], [ %.67.ph, %bb.hf ]
  %.3869.pn = phi ptr [ %.3869, %.thread ], [ %.12878, %bb.hf ], [ %.12878, %bb.aw ], [ %.12878, %._crit_edge1858 ]
  %.1828.be = phi i32 [ %.4831, %.thread ], [ %.1828, %bb.aw ], [ %.35862.lcssa, %._crit_edge1858 ], [ %.44.ph, %bb.hf ]
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

.preheader2425:                                   ; preds = %.thread1274, %.backedge
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

bb.h:                                             ; preds = %.preheader2425
  br label %.backedge

.backedge:                                        ; preds = %bb.l, %bb.m, %.preheader2425, %bb.h, %bb.i, %bb.j, %bb.k, %bb.n
  %.sink = phi i32 [ 64, %bb.k ], [ 2, %.preheader2425 ], [ %., %bb.m ], [ 1, %bb.h ], [ 1024, %bb.n ], [ 4, %bb.i ], [ 8, %bb.j ], [ 256, %bb.l ]
  %i.cc = or i32 %.0778, %.sink
  br label %.preheader2425

bb.i:                                             ; preds = %.preheader2425
  br label %.backedge

bb.j:                                             ; preds = %.preheader2425
  br label %.backedge

bb.k:                                             ; preds = %.preheader2425
  br label %.backedge

bb.l:                                             ; preds = %.preheader2425
  %i.cd = and i32 %.0778, 256
  %.not1080 = icmp eq i32 %i.cd, 0
  br i1 %.not1080, label %.backedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ce = and i32 %.0778, 2048
  %. = add nuw nsw i32 %i.ce, 2048
  br label %.backedge

bb.n:                                             ; preds = %.preheader2425
  br label %.backedge

bb.o:                                             ; preds = %.preheader2425
  %i.cf = or disjoint i32 %.0778, 16
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
  br label %.backedge2429

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
  br i1 %.not1135, label %.thread2130, label %.lr.ph1687.preheader

.thread2130:                                      ; preds = %bb.bf
  store ptr %i.q, ptr %i.g, align 8, !tbaa !14
  br label %._crit_edge1688

.lr.ph1687.preheader:                             ; preds = %bb.bf
  %i.jh = load i8, ptr @stbsp__period, align 1, !tbaa !9
  store i8 %i.jh, ptr %i.q, align 1, !tbaa !9
  store ptr %i.r, ptr %i.g, align 8, !tbaa !14
  %spec.store.select18 = call i32 @llvm.umin.i32(i32 %spec.store.select17, i32 13) ; 5 uses
  %i.ji = icmp sgt i32 %spec.store.select17, %spec.store.select18
  %i.jj = sub i32 %spec.store.select17, %spec.store.select18
  %spec.select1188 = select i1 %i.ji, i32 %i.jj, i32 0 ; 2 uses
  %xtraiter2533 = and i32 %spec.store.select18, 3 ; 2 uses
  %lcmp.mod2534.not = icmp eq i32 %xtraiter2533, 0
  br i1 %lcmp.mod2534.not, label %.lr.ph1687.prol.loopexit, label %.lr.ph1687.prol

.lr.ph1687.prol:                                  ; preds = %.lr.ph1687.preheader, %.lr.ph1687.prol
  %.07201685.prol = phi i32 [ %i.jk, %.lr.ph1687.prol ], [ %spec.store.select18, %.lr.ph1687.preheader ]
  %.17391684.prol = phi ptr [ %i.jo, %.lr.ph1687.prol ], [ %i.r, %.lr.ph1687.preheader ] ; 2 uses
  %.11264.in1683.prol = phi i64 [ %.11264.prol, %.lr.ph1687.prol ], [ %storemerge1134, %.lr.ph1687.preheader ]
  %prol.iter2535 = phi i32 [ %prol.iter2535.next, %.lr.ph1687.prol ], [ 0, %.lr.ph1687.preheader ]
  %.11264.prol = shl i64 %.11264.in1683.prol, 4   ; 3 uses
  %i.jk = add nsw i32 %.07201685.prol, -1         ; 2 uses
  %i.jl = lshr i64 %.11264.prol, 60
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ht, i64 %i.jl
  %i.jn = load i8, ptr %i.jm, align 1, !tbaa !9
  %i.jo = getelementptr inbounds nuw i8, ptr %.17391684.prol, i64 1 ; 3 uses
  store i8 %i.jn, ptr %.17391684.prol, align 1, !tbaa !9
  %prol.iter2535.next = add i32 %prol.iter2535, 1 ; 2 uses
  %prol.iter2535.cmp.not = icmp eq i32 %prol.iter2535.next, %xtraiter2533
  br i1 %prol.iter2535.cmp.not, label %.lr.ph1687.prol.loopexit, label %.lr.ph1687.prol, !llvm.loop !31

.lr.ph1687.prol.loopexit:                         ; preds = %.lr.ph1687.prol, %.lr.ph1687.preheader
  %.lcssa2469.unr = phi ptr [ poison, %.lr.ph1687.preheader ], [ %i.jo, %.lr.ph1687.prol ]
  %.07201685.unr = phi i32 [ %spec.store.select18, %.lr.ph1687.preheader ], [ %i.jk, %.lr.ph1687.prol ]
  %.17391684.unr = phi ptr [ %i.r, %.lr.ph1687.preheader ], [ %i.jo, %.lr.ph1687.prol ]
  %.11264.in1683.unr = phi i64 [ %storemerge1134, %.lr.ph1687.preheader ], [ %.11264.prol, %.lr.ph1687.prol ]
  %i.jp = icmp ult i32 %spec.store.select17, 4
  br i1 %i.jp, label %._crit_edge1688, label %.lr.ph1687

.lr.ph1687:                                       ; preds = %.lr.ph1687.prol.loopexit, %.lr.ph1687
  %.07201685 = phi i32 [ %i.kf, %.lr.ph1687 ], [ %.07201685.unr, %.lr.ph1687.prol.loopexit ]
  %.17391684 = phi ptr [ %i.kj, %.lr.ph1687 ], [ %.17391684.unr, %.lr.ph1687.prol.loopexit ] ; 5 uses
  %.11264.in1683 = phi i64 [ %.11264.3, %.lr.ph1687 ], [ %.11264.in1683.unr, %.lr.ph1687.prol.loopexit ] ; 4 uses
  %i.jq = lshr i64 %.11264.in1683, 56
  %i.jr = and i64 %i.jq, 15
  %i.js = getelementptr inbounds nuw i8, ptr %i.ht, i64 %i.jr
  %i.jt = load i8, ptr %i.js, align 1, !tbaa !9
  %i.ju = getelementptr inbounds nuw i8, ptr %.17391684, i64 1
  store i8 %i.jt, ptr %.17391684, align 1, !tbaa !9
  %i.jv = lshr i64 %.11264.in1683, 52
  %i.jw = and i64 %i.jv, 15
  %i.jx = getelementptr inbounds nuw i8, ptr %i.ht, i64 %i.jw
  %i.jy = load i8, ptr %i.jx, align 1, !tbaa !9
  %i.jz = getelementptr inbounds nuw i8, ptr %.17391684, i64 2
  store i8 %i.jy, ptr %i.ju, align 1, !tbaa !9
  %i.ka = lshr i64 %.11264.in1683, 48
  %i.kb = and i64 %i.ka, 15
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ht, i64 %i.kb
  %i.kd = load i8, ptr %i.kc, align 1, !tbaa !9
  %i.ke = getelementptr inbounds nuw i8, ptr %.17391684, i64 3
  store i8 %i.kd, ptr %i.jz, align 1, !tbaa !9
  %.11264.3 = shl i64 %.11264.in1683, 16          ; 2 uses
  %i.kf = add nsw i32 %.07201685, -4              ; 2 uses
  %i.kg = lshr i64 %.11264.3, 60
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ht, i64 %i.kg
  %i.ki = load i8, ptr %i.kh, align 1, !tbaa !9
  %i.kj = getelementptr inbounds nuw i8, ptr %.17391684, i64 4 ; 2 uses
  store i8 %i.ki, ptr %i.ke, align 1, !tbaa !9
  %.not1136.3 = icmp eq i32 %i.kf, 0
  br i1 %.not1136.3, label %._crit_edge1688, label %.lr.ph1687, !llvm.loop !32

._crit_edge1688:                                  ; preds = %.lr.ph1687.prol.loopexit, %.lr.ph1687, %.thread2130
  %spec.select11882135 = phi i32 [ 0, %.thread2130 ], [ %spec.select1188, %.lr.ph1687 ], [ %spec.select1188, %.lr.ph1687.prol.loopexit ]
  %.07382134 = phi ptr [ %i.q, %.thread2130 ], [ %i.r, %.lr.ph1687 ], [ %i.r, %.lr.ph1687.prol.loopexit ]
  %.1739.lcssa = phi ptr [ %i.q, %.thread2130 ], [ %.lcssa2469.unr, %.lr.ph1687.prol.loopexit ], [ %i.kj, %.lr.ph1687 ]
  %i.kk = select i1 %i.hs, i8 80, i8 112
  store i8 %i.kk, ptr %i.s, align 1, !tbaa !9
  %i.kl = icmp slt i32 %i.is, 0
  br i1 %i.kl, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %._crit_edge1688
  store i8 45, ptr %i.t, align 1, !tbaa !9
  %i.km = sub nsw i32 0, %i.is
  br label %bb.bi

bb.bh:                                            ; preds = %._crit_edge1688
  store i8 43, ptr %i.t, align 1, !tbaa !9
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.promoted1690 = phi i32 [ %i.is, %bb.bh ], [ %i.km, %bb.bg ] ; 7 uses
  %i.kn = icmp samesign ult i32 %.promoted1690, 1000 ; 2 uses
  %i.ko = icmp samesign ugt i32 %.promoted1690, 99
  %i.kp = icmp samesign ugt i32 %.promoted1690, 9
  %i.kq = select i1 %i.kp, i32 4, i32 3
  %i.kr = select i1 %i.ko, i32 5, i32 %i.kq
  %i.ks = select i1 %i.kn, i32 %i.kr, i32 6       ; 4 uses
  %i.kt = trunc nuw nsw i32 %i.ks to i8
  store i8 %i.kt, ptr %i.d, align 1, !tbaa !9
  %.lhs.trunc = trunc nsw i32 %.promoted1690 to i16
  %i.ku = urem i16 %.lhs.trunc, 10
  %i.kv = trunc nuw nsw i16 %i.ku to i8
  %i.kw = or disjoint i8 %i.kv, 48
  %i.kx = zext nneg i32 %i.ks to i64              ; 4 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.kx
  store i8 %i.kw, ptr %i.ky, align 1, !tbaa !9
  %i.kz = icmp samesign ult i32 %i.ks, 4
  br i1 %i.kz, label %._crit_edge1695, label %.lr.ph1694

.lr.ph1694:                                       ; preds = %bb.bi
  %5 = udiv i32 %.promoted1690, 10
  %6 = urem i32 %5, 10
  %i.la = trunc nuw nsw i32 %6 to i8
  %i.lb = or disjoint i8 %i.la, 48
  %i.lc = getelementptr i8, ptr %i.d, i64 %i.kx
  %i.ld = getelementptr i8, ptr %i.lc, i64 -1
  store i8 %i.lb, ptr %i.ld, align 1, !tbaa !9
  %i.le = icmp eq i32 %i.ks, 4
  br i1 %i.le, label %._crit_edge1695, label %.lr.ph1694.1

.lr.ph1694.1:                                     ; preds = %.lr.ph1694
  %7 = udiv i32 %.promoted1690, 100
  %8 = urem i32 %7, 10
  %9 = trunc nuw nsw i32 %8 to i8
  %i.lf = or disjoint i8 %9, 48
  %i.lg = getelementptr i8, ptr %i.d, i64 %i.kx
  %i.lh = getelementptr i8, ptr %i.lg, i64 -2
  store i8 %i.lf, ptr %i.lh, align 1, !tbaa !9
  br i1 %i.kn, label %._crit_edge1695, label %.lr.ph1694.2

.lr.ph1694.2:                                     ; preds = %.lr.ph1694.1
  %10 = udiv i32 %.promoted1690, 1000
  %11 = urem i32 %10, 10
  %12 = trunc nuw nsw i32 %11 to i8
  %i.li = or disjoint i8 %12, 48
  %i.lj = getelementptr i8, ptr %i.d, i64 %i.kx
  %i.lk = getelementptr i8, ptr %i.lj, i64 -3
  store i8 %i.li, ptr %i.lk, align 1, !tbaa !9
  br label %._crit_edge1695

._crit_edge1695:                                  ; preds = %.lr.ph1694, %.lr.ph1694.1, %.lr.ph1694.2, %bb.bi
  %i.ll = ptrtoint ptr %.1739.lcssa to i64        ; 2 uses
  %i.lm = ptrtoint ptr %.07382134 to i64
  %i.ln = sub i64 %i.ll, %i.lm
  %i.lo = trunc i64 %i.ln to i32
  store i32 %i.lo, ptr %i.f, align 4, !tbaa !10
  %i.lp = sub i64 %i.ll, %i.p
  %i.lq = trunc i64 %i.lp to i32
  store i32 %i.lq, ptr %i.e, align 4, !tbaa !10
  br label %bb.gg

bb.bj:                                            ; preds = %bb.ai, %bb.ai
  %i.lr = icmp eq i8 %i.ff, 71
  %i.ls = select i1 %i.lr, ptr @__const.stbsp_vsprintfcb.hexu, ptr @__const.stbsp_vsprintfcb.hex ; 2 uses
  %i.lt = load i32, ptr %i.n, align 4             ; 3 uses
  %i.lu = icmp ult i32 %i.lt, 161
  br i1 %i.lu, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.lv = load ptr, ptr %i.i, align 8
  %i.lw = zext nneg i32 %i.lt to i64
  %i.lx = getelementptr i8, ptr %i.lv, i64 %i.lw
  %i.ly = add nuw nsw i32 %i.lt, 16
  store i32 %i.ly, ptr %i.n, align 4
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bj
  %i.lz = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.ma = getelementptr i8, ptr %i.lz, i64 8
  store ptr %i.ma, ptr %i.h, align 8
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.mb = phi ptr [ %i.lx, %bb.bk ], [ %i.lz, %bb.bl ]
  %i.mc = load double, ptr %i.mb, align 8, !tbaa !16
  %i.md = icmp eq i32 %.1803, -1
  %spec.store.select19 = call i32 @llvm.umax.i32(i32 %.1803, i32 1)
  %.2804 = select i1 %i.md, i32 6, i32 %spec.store.select19 ; 6 uses
  %i.me = add i32 %.2804, 2147483647
  %i.mf = or i32 %i.me, -2147483648
  %i.mg = call i32 @stbsp__real_to_str(ptr noundef nonnull %i.g, ptr noundef nonnull %i.e, ptr noundef nonnull %i.a, ptr noundef nonnull %i.f, double noundef %i.mc, i32 noundef %i.mf)
  %.not1111 = icmp eq i32 %i.mg, 0
  %i.mh = or i32 %.3781, 128
  %.5783 = select i1 %.not1111, i32 %.3781, i32 %i.mh ; 4 uses
  %i.mi = load i32, ptr %i.e, align 4, !tbaa !10  ; 2 uses
  %spec.store.select1442 = call i32 @llvm.umin.i32(i32 %i.mi, i32 %.2804) ; 2 uses
  %i.mj = icmp ugt i32 %spec.store.select1442, 1
  br i1 %i.mj, label %.lr.ph1613, label %.critedge22

.lr.ph1613:                                       ; preds = %bb.bm
  %i.mk = load ptr, ptr %i.g, align 8, !tbaa !14
  %i.ml = call i32 @llvm.umin.i32(i32 %.2804, i32 %i.mi)
  %umin = zext i32 %i.ml to i64
  br label %bb.bn

bb.bn:                                            ; preds = %.lr.ph1613, %bb.bo
  %indvars.iv = phi i64 [ %umin, %.lr.ph1613 ], [ %indvars.iv.next, %bb.bo ] ; 2 uses
  %.38051611 = phi i32 [ %.2804, %.lr.ph1613 ], [ %i.ms, %bb.bo ] ; 2 uses
  %i.mm = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %i.mn = add i32 %i.mm, -1                       ; 3 uses
  %i.mo = zext i32 %i.mn to i64
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mk, i64 %i.mo
  %i.mq = load i8, ptr %i.mp, align 1, !tbaa !9
  %i.mr = icmp eq i8 %i.mq, 48
  br i1 %i.mr, label %bb.bo, label %.critedge22

bb.bo:                                            ; preds = %bb.bn
  %i.ms = add nsw i32 %.38051611, -1              ; 3 uses
  %i.mt = icmp ugt i32 %i.mn, 1
  %i.mu = icmp ne i32 %i.ms, 0
  %or.cond = select i1 %i.mt, i1 %i.mu, i1 false
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  br i1 %or.cond, label %bb.bn, label %.critedge22, !llvm.loop !33

.critedge22:                                      ; preds = %bb.bn, %bb.bo, %bb.bm
  %storemerge1443.lcssa1609 = phi i32 [ %spec.store.select1442, %bb.bm ], [ %i.mn, %bb.bo ], [ %i.mm, %bb.bn ] ; 6 uses
  %.3805.lcssa = phi i32 [ %.2804, %bb.bm ], [ %i.ms, %bb.bo ], [ %.38051611, %bb.bn ] ; 3 uses
  store i32 %storemerge1443.lcssa1609, ptr %i.e, align 4, !tbaa !10
  %i.mv = load i32, ptr %i.f, align 4, !tbaa !10  ; 6 uses
  %i.mw = icmp slt i32 %i.mv, -3
  %i.mx = icmp sgt i32 %i.mv, %.2804
  %or.cond1189 = or i1 %i.mw, %i.mx
  br i1 %or.cond1189, label %bb.bp, label %bb.bs

bb.bp:                                            ; preds = %.critedge22
  %i.my = icmp sgt i32 %.3805.lcssa, %storemerge1443.lcssa1609
  br i1 %i.my, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.mz = add i32 %storemerge1443.lcssa1609, -1
  br label %bb.bz

bb.br:                                            ; preds = %bb.bp
  %spec.select1190 = call i32 @llvm.usub.sat.i32(i32 %.3805.lcssa, i32 1)
  br label %bb.bz

bb.bs:                                            ; preds = %.critedge22
  %i.na = icmp sgt i32 %i.mv, 0
  br i1 %i.na, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.nb = icmp slt i32 %i.mv, %storemerge1443.lcssa1609
  %i.nc = sub i32 %storemerge1443.lcssa1609, %i.mv
  %i.nd = select i1 %i.nb, i32 %i.nc, i32 0
  br label %bb.cx

bb.bu:                                            ; preds = %bb.bs
  %i.ne = call i32 @llvm.smin.i32(i32 %.3805.lcssa, i32 %storemerge1443.lcssa1609)
  %i.nf = sub nsw i32 %i.ne, %i.mv
  br label %bb.cx

bb.bv:                                            ; preds = %bb.ai, %bb.ai
  %i.ng = icmp eq i8 %i.ff, 69
  %i.nh = select i1 %i.ng, ptr @__const.stbsp_vsprintfcb.hexu, ptr @__const.stbsp_vsprintfcb.hex
  %i.ni = load i32, ptr %i.n, align 4             ; 3 uses
  %i.nj = icmp ult i32 %i.ni, 161
  br i1 %i.nj, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.nk = load ptr, ptr %i.i, align 8
  %i.nl = zext nneg i32 %i.ni to i64
  %i.nm = getelementptr i8, ptr %i.nk, i64 %i.nl
  %i.nn = add nuw nsw i32 %i.ni, 16
  store i32 %i.nn, ptr %i.n, align 4
  br label %bb.by

bb.bx:                                            ; preds = %bb.bv
  %i.no = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.np = getelementptr i8, ptr %i.no, i64 8
  store ptr %i.np, ptr %i.h, align 8
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.nq = phi ptr [ %i.nm, %bb.bw ], [ %i.no, %bb.bx ]
  %i.nr = load double, ptr %i.nq, align 8, !tbaa !16
  %i.ns = icmp eq i32 %.1803, -1
  %spec.store.select23 = select i1 %i.ns, i32 6, i32 %.1803 ; 2 uses
  %i.nt = or i32 %spec.store.select23, -2147483648
  %i.nu = call i32 @stbsp__real_to_str(ptr noundef nonnull %i.g, ptr noundef nonnull %i.e, ptr noundef nonnull %i.a, ptr noundef nonnull %i.f, double noundef %i.nr, i32 noundef %i.nt)
  %.not1110 = icmp eq i32 %i.nu, 0
  %i.nv = or i32 %.3781, 128
  %spec.select1191 = select i1 %.not1110, i32 %.3781, i32 %i.nv
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.br, %bb.bq
  %.4806 = phi i32 [ %i.mz, %bb.bq ], [ %spec.select1190, %bb.br ], [ %spec.store.select23, %bb.by ] ; 4 uses
  %.6784 = phi i32 [ %.5783, %bb.bq ], [ %.5783, %bb.br ], [ %spec.select1191, %bb.by ] ; 5 uses
  %.0736 = phi ptr [ %i.ls, %bb.bq ], [ %i.ls, %bb.br ], [ %i.nh, %bb.by ]
  store i8 0, ptr %i.d, align 1, !tbaa !9
  store i8 0, ptr %i.c, align 1, !tbaa !9
  %i.nw = and i32 %.6784, 128
  %.not.i1236 = icmp eq i32 %i.nw, 0
  br i1 %.not.i1236, label %bb.ca, label %.sink.split.i1237

bb.ca:                                            ; preds = %bb.bz
  %i.nx = and i32 %.6784, 4
  %.not9.i1239 = icmp eq i32 %i.nx, 0
  br i1 %.not9.i1239, label %bb.cb, label %.sink.split.i1237

bb.cb:                                            ; preds = %bb.ca
  %i.ny = and i32 %.6784, 2
  %.not10.i1240 = icmp eq i32 %i.ny, 0
  br i1 %.not10.i1240, label %stbsp__lead_sign.exit1241, label %.sink.split.i1237

.sink.split.i1237:                                ; preds = %bb.cb, %bb.ca, %bb.bz
  %.sink.i1238 = phi i8 [ 45, %bb.bz ], [ 32, %bb.ca ], [ 43, %bb.cb ]
  store i8 1, ptr %i.c, align 1, !tbaa !9
  store i8 %.sink.i1238, ptr %i.j, align 1, !tbaa !9
  br label %stbsp__lead_sign.exit1241

stbsp__lead_sign.exit1241:                        ; preds = %bb.cb, %.sink.split.i1237
  %i.nz = load i32, ptr %i.f, align 4, !tbaa !10  ; 4 uses
  %i.oa = icmp eq i32 %i.nz, 28672
  %i.ob = load ptr, ptr %i.g, align 8, !tbaa !14  ; 14 uses
  %i.oc = ptrtoaddr ptr %i.ob to i64
  br i1 %i.oa, label %bb.gg, label %bb.cc

bb.cc:                                            ; preds = %stbsp__lead_sign.exit1241
  %i.od = load i8, ptr %i.ob, align 1, !tbaa !9
  store i8 %i.od, ptr %i.o, align 16, !tbaa !9
  %.not1131 = icmp eq i32 %.4806, 0
  br i1 %.not1131, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.oe = load i8, ptr @stbsp__period, align 1, !tbaa !9
  store i8 %i.oe, ptr %i.q, align 1, !tbaa !9
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %.2740 = phi ptr [ %i.r, %bb.cd ], [ %i.q, %bb.cc ] ; 8 uses
  %.27402385 = ptrtoaddr ptr %.2740 to i64
  %i.of = load i32, ptr %i.e, align 4, !tbaa !10  ; 2 uses
  %i.og = add i32 %i.of, -1
  %i.oh = icmp ugt i32 %i.og, %.4806
  br i1 %i.oh, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.oi = add nuw nsw i32 %.4806, 1               ; 2 uses
  store i32 %i.oi, ptr %i.e, align 4, !tbaa !10
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %i.oj = phi i32 [ %i.oi, %bb.cf ], [ %i.of, %bb.ce ] ; 5 uses
  %i.ok = icmp ugt i32 %i.oj, 1
  br i1 %i.ok, label %iter.check2400, label %._crit_edge1677

iter.check2400:                                   ; preds = %bb.cg
  %wide.trip.count = zext i32 %i.oj to i64        ; 4 uses
  %i.ol = add nsw i64 %wide.trip.count, -1        ; 5 uses
  %min.iters.check2387 = icmp ult i32 %i.oj, 9
  br i1 %min.iters.check2387, label %.lr.ph1676.preheader, label %vector.memcheck2384

vector.memcheck2384:                              ; preds = %iter.check2400
  %i.om = sub i64 %.27402385, %i.oc
  %i.on = add i64 %i.om, -2
  %diff.check2386 = icmp ult i64 %i.on, 31
  br i1 %diff.check2386, label %.lr.ph1676.preheader, label %vector.main.loop.iter.check2388

vector.main.loop.iter.check2388:                  ; preds = %vector.memcheck2384
  %min.iters.check2389 = icmp ult i32 %i.oj, 33
  br i1 %min.iters.check2389, label %vec.epilog.ph2404, label %vector.ph2390

vector.ph2390:                                    ; preds = %vector.main.loop.iter.check2388
  %i.oo = and i64 %i.ol, 24
  %n.vec2391 = and i64 %i.ol, -32                 ; 5 uses
  %i.op = or disjoint i64 %n.vec2391, 1
  %i.oq = getelementptr i8, ptr %.2740, i64 %n.vec2391 ; 2 uses
  br label %vector.body2392

vector.body2392:                                  ; preds = %vector.ph2390, %vector.body2392
  %index2393 = phi i64 [ 0, %vector.ph2390 ], [ %index.next2397, %vector.body2392 ] ; 3 uses
  %next.gep2394 = getelementptr i8, ptr %.2740, i64 %index2393 ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.ob, i64 %index2393 ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 1
  %i.ot = getelementptr inbounds nuw i8, ptr %i.or, i64 17
  %wide.load2395 = load <16 x i8>, ptr %i.os, align 1, !tbaa !9
  %wide.load2396 = load <16 x i8>, ptr %i.ot, align 1, !tbaa !9
  %i.ou = getelementptr i8, ptr %next.gep2394, i64 16
  store <16 x i8> %wide.load2395, ptr %next.gep2394, align 1, !tbaa !9
  store <16 x i8> %wide.load2396, ptr %i.ou, align 1, !tbaa !9
  %index.next2397 = add nuw i64 %index2393, 32    ; 2 uses
  %i.ov = icmp eq i64 %index.next2397, %n.vec2391
  br i1 %i.ov, label %middle.block2398, label %vector.body2392, !llvm.loop !34

middle.block2398:                                 ; preds = %vector.body2392
  %cmp.n2399 = icmp eq i64 %i.ol, %n.vec2391
  br i1 %cmp.n2399, label %._crit_edge1677, label %vec.epilog.iter.check2401

vec.epilog.iter.check2401:                        ; preds = %middle.block2398
  %min.epilog.iters.check2403 = icmp eq i64 %i.oo, 0
  br i1 %min.epilog.iters.check2403, label %.lr.ph1676.preheader, label %vec.epilog.ph2404, !prof !19

vec.epilog.ph2404:                                ; preds = %vector.main.loop.iter.check2388, %vec.epilog.iter.check2401
  %vec.epilog.resume.val2405 = phi i64 [ %n.vec2391, %vec.epilog.iter.check2401 ], [ 0, %vector.main.loop.iter.check2388 ]
  %n.vec2406 = and i64 %i.ol, -8                  ; 4 uses
  %i.ow = or disjoint i64 %n.vec2406, 1
  %i.ox = getelementptr i8, ptr %.2740, i64 %n.vec2406 ; 2 uses
  br label %vec.epilog.vector.body2407

vec.epilog.vector.body2407:                       ; preds = %vec.epilog.vector.body2407, %vec.epilog.ph2404
  %index2408 = phi i64 [ %vec.epilog.resume.val2405, %vec.epilog.ph2404 ], [ %index.next2411, %vec.epilog.vector.body2407 ] ; 3 uses
  %next.gep2409 = getelementptr i8, ptr %.2740, i64 %index2408
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ob, i64 %index2408
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 1
  %wide.load2410 = load <8 x i8>, ptr %i.oz, align 1, !tbaa !9
  store <8 x i8> %wide.load2410, ptr %next.gep2409, align 1, !tbaa !9
  %index.next2411 = add nuw i64 %index2408, 8     ; 2 uses
  %i.pa = icmp eq i64 %index.next2411, %n.vec2406
  br i1 %i.pa, label %vec.epilog.middle.block2412, label %vec.epilog.vector.body2407, !llvm.loop !35

vec.epilog.middle.block2412:                      ; preds = %vec.epilog.vector.body2407
  %cmp.n2413 = icmp eq i64 %i.ol, %n.vec2406
  br i1 %cmp.n2413, label %._crit_edge1677, label %.lr.ph1676.preheader

.lr.ph1676.preheader:                             ; preds = %iter.check2400, %vector.memcheck2384, %vec.epilog.iter.check2401, %vec.epilog.middle.block2412
  %indvars.iv2000.ph = phi i64 [ 1, %iter.check2400 ], [ 1, %vector.memcheck2384 ], [ %i.op, %vec.epilog.iter.check2401 ], [ %i.ow, %vec.epilog.middle.block2412 ] ; 4 uses
  %.37411673.ph = phi ptr [ %.2740, %iter.check2400 ], [ %.2740, %vector.memcheck2384 ], [ %i.oq, %vec.epilog.iter.check2401 ], [ %i.ox, %vec.epilog.middle.block2412 ] ; 2 uses
  %i.pb = sub nsw i64 %wide.trip.count, %indvars.iv2000.ph
  %xtraiter2530 = and i64 %i.pb, 7                ; 2 uses
  %lcmp.mod2531.not = icmp eq i64 %xtraiter2530, 0
  br i1 %lcmp.mod2531.not, label %.lr.ph1676.prol.loopexit, label %.lr.ph1676.prol

.lr.ph1676.prol:                                  ; preds = %.lr.ph1676.preheader, %.lr.ph1676.prol
  %indvars.iv2000.prol = phi i64 [ %indvars.iv.next2001.prol, %.lr.ph1676.prol ], [ %indvars.iv2000.ph, %.lr.ph1676.preheader ] ; 2 uses
  %.37411673.prol = phi ptr [ %i.pe, %.lr.ph1676.prol ], [ %.37411673.ph, %.lr.ph1676.preheader ] ; 2 uses
  %prol.iter2532 = phi i64 [ %prol.iter2532.next, %.lr.ph1676.prol ], [ 0, %.lr.ph1676.preheader ]
  %i.pc = getelementptr inbounds nuw i8, ptr %i.ob, i64 %indvars.iv2000.prol
  %i.pd = load i8, ptr %i.pc, align 1, !tbaa !9
  %i.pe = getelementptr inbounds nuw i8, ptr %.37411673.prol, i64 1 ; 3 uses
  store i8 %i.pd, ptr %.37411673.prol, align 1, !tbaa !9
  %indvars.iv.next2001.prol = add nuw nsw i64 %indvars.iv2000.prol, 1 ; 2 uses
  %prol.iter2532.next = add i64 %prol.iter2532, 1 ; 2 uses
  %prol.iter2532.cmp.not = icmp eq i64 %prol.iter2532.next, %xtraiter2530
  br i1 %prol.iter2532.cmp.not, label %.lr.ph1676.prol.loopexit, label %.lr.ph1676.prol, !llvm.loop !36

.lr.ph1676.prol.loopexit:                         ; preds = %.lr.ph1676.prol, %.lr.ph1676.preheader
  %.lcssa2467.unr = phi ptr [ poison, %.lr.ph1676.preheader ], [ %i.pe, %.lr.ph1676.prol ]
  %indvars.iv2000.unr = phi i64 [ %indvars.iv2000.ph, %.lr.ph1676.preheader ], [ %indvars.iv.next2001.prol, %.lr.ph1676.prol ]
  %.37411673.unr = phi ptr [ %.37411673.ph, %.lr.ph1676.preheader ], [ %i.pe, %.lr.ph1676.prol ]
  %i.pf = sub nsw i64 %indvars.iv2000.ph, %wide.trip.count
  %i.pg = icmp ugt i64 %i.pf, -8
  br i1 %i.pg, label %._crit_edge1677, label %.lr.ph1676

.lr.ph1676:                                       ; preds = %.lr.ph1676.prol.loopexit, %.lr.ph1676
  %indvars.iv2000 = phi i64 [ %indvars.iv.next2001.7, %.lr.ph1676 ], [ %indvars.iv2000.unr, %.lr.ph1676.prol.loopexit ] ; 9 uses
  %.37411673 = phi ptr [ %i.ql, %.lr.ph1676 ], [ %.37411673.unr, %.lr.ph1676.prol.loopexit ] ; 9 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %i.ob, i64 %indvars.iv2000
  %i.pi = load i8, ptr %i.ph, align 1, !tbaa !9
  %i.pj = getelementptr inbounds nuw i8, ptr %.37411673, i64 1
  store i8 %i.pi, ptr %.37411673, align 1, !tbaa !9
  %i.pk = getelementptr inbounds nuw i8, ptr %i.ob, i64 %indvars.iv2000
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 1
  %i.pm = load i8, ptr %i.pl, align 1, !tbaa !9
  %i.pn = getelementptr inbounds nuw i8, ptr %.37411673, i64 2
  store i8 %i.pm, ptr %i.pj, align 1, !tbaa !9
  %i.po = getelementptr inbounds nuw i8, ptr %i.ob, i64 %indvars.iv2000
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 2
  %i.pq = load i8, ptr %i.pp, align 1, !tbaa !9
  %i.pr = getelementptr inbounds nuw i8, ptr %.37411673, i64 3
  store i8 %i.pq, ptr %i.pn, align 1, !tbaa !9
  %i.ps = getelementptr inbounds nuw i8, ptr %i.ob, i64 %indvars.iv2000
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 3
  %i.pu = load i8, ptr %i.pt, align 1, !tbaa !9
  %i.pv = getelementptr inbounds nuw i8, ptr %.37411673, i64 4
  store i8 %i.pu, ptr %i.pr, align 1, !tbaa !9
  %i.pw = getelementptr inbounds nuw i8, ptr %i.ob, i64 %indvars.iv2000
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 4
  %i.py = load i8, ptr %i.px, align 1, !tbaa !9
  %i.pz = getelementptr inbounds nuw i8, ptr %.37411673, i64 5
  store i8 %i.py, ptr %i.pv, align 1, !tbaa !9
  %i.qa = getelementptr inbounds nuw i8, ptr %i.ob, i64 %indvars.iv2000
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 5
  %i.qc = load i8, ptr %i.qb, align 1, !tbaa !9
  %i.qd = getelementptr inbounds nuw i8, ptr %.37411673, i64 6
  store i8 %i.qc, ptr %i.pz, align 1, !tbaa !9
  %i.qe = getelementptr inbounds nuw i8, ptr %i.ob, i64 %indvars.iv2000
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 6
  %i.qg = load i8, ptr %i.qf, align 1, !tbaa !9
  %i.qh = getelementptr inbounds nuw i8, ptr %.37411673, i64 7
  store i8 %i.qg, ptr %i.qd, align 1, !tbaa !9
  %i.qi = getelementptr inbounds nuw i8, ptr %i.ob, i64 %indvars.iv2000
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 7
  %i.qk = load i8, ptr %i.qj, align 1, !tbaa !9
  %i.ql = getelementptr inbounds nuw i8, ptr %.37411673, i64 8 ; 2 uses
  store i8 %i.qk, ptr %i.qh, align 1, !tbaa !9
  %indvars.iv.next2001.7 = add nuw nsw i64 %indvars.iv2000, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next2001.7, %wide.trip.count
  br i1 %exitcond.not.7, label %._crit_edge1677, label %.lr.ph1676, !llvm.loop !37

._crit_edge1677:                                  ; preds = %.lr.ph1676.prol.loopexit, %.lr.ph1676, %middle.block2398, %vec.epilog.middle.block2412, %bb.cg
  %.3741.lcssa = phi ptr [ %.2740, %bb.cg ], [ %i.ox, %vec.epilog.middle.block2412 ], [ %i.oq, %middle.block2398 ], [ %.lcssa2467.unr, %.lr.ph1676.prol.loopexit ], [ %i.ql, %.lr.ph1676 ]
  %.neg1449 = add i32 %.4806, 1
  %i.qm = sub i32 %.neg1449, %i.oj
  %i.qn = getelementptr inbounds nuw i8, ptr %.0736, i64 14
  %i.qo = load i8, ptr %i.qn, align 1, !tbaa !9
  store i8 %i.qo, ptr %i.s, align 1, !tbaa !9
  %i.qp = icmp slt i32 %i.nz, 1
  br i1 %i.qp, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %._crit_edge1677
  store i8 45, ptr %i.t, align 1, !tbaa !9
  %i.qq = sub nsw i32 1, %i.nz
  br label %bb.cj

bb.ci:                                            ; preds = %._crit_edge1677
  %i.qr = add nsw i32 %i.nz, -1
  store i8 43, ptr %i.t, align 1, !tbaa !9
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %i.qs = phi i32 [ %i.qr, %bb.ci ], [ %i.qq, %bb.ch ] ; 4 uses
  %i.qt = icmp samesign ugt i32 %i.qs, 99         ; 2 uses
  %i.qu = select i1 %i.qt, i32 5, i32 4           ; 2 uses
  %i.qv = trunc nuw nsw i32 %i.qu to i8
  store i8 %i.qv, ptr %i.d, align 1, !tbaa !9
  %i.qw = urem i32 %i.qs, 10
  %i.qx = trunc nuw nsw i32 %i.qw to i8
  %i.qy = or disjoint i8 %i.qx, 48
  %i.qz = zext nneg i32 %i.qu to i64              ; 3 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.qz
  store i8 %i.qy, ptr %i.ra, align 1, !tbaa !9
  %13 = sdiv i32 %i.qs, 10                        ; 2 uses
  %14 = srem i32 %13, 10
  %i.rb = trunc nsw i32 %14 to i8
  %15 = add nsw i8 %i.rb, 48
  %i.rc = getelementptr i8, ptr %i.d, i64 %i.qz
  %i.rd = getelementptr i8, ptr %i.rc, i64 -1
  store i8 %15, ptr %i.rd, align 1, !tbaa !9
  br i1 %i.qt, label %bb.ck, label %.loopexit1476

bb.ck:                                            ; preds = %bb.cj
  %16 = sdiv i32 %i.qs, 100                       ; 2 uses
  %17 = srem i32 %16, 10
  %i.re = trunc nsw i32 %17 to i8
  %18 = add nsw i8 %i.re, 48
  %19 = getelementptr i8, ptr %i.d, i64 %i.qz
  %20 = getelementptr i8, ptr %19, i64 -2
  store i8 %18, ptr %20, align 1, !tbaa !9
  br label %.loopexit1476

bb.cl:                                            ; preds = %bb.ai
  %i.rf = load i32, ptr %i.n, align 4             ; 3 uses
  %i.rg = icmp ult i32 %i.rf, 161
  br i1 %i.rg, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.rh = load ptr, ptr %i.i, align 8
  %i.ri = zext nneg i32 %i.rf to i64
  %i.rj = getelementptr i8, ptr %i.rh, i64 %i.ri
  %i.rk = add nuw nsw i32 %i.rf, 16
  store i32 %i.rk, ptr %i.n, align 4
  br label %bb.co

bb.cn:                                            ; preds = %bb.cl
  %i.rl = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.rm = getelementptr i8, ptr %i.rl, i64 8
  store ptr %i.rm, ptr %i.h, align 8
  br label %bb.co

bb.co:                                            ; preds = %bb.cm, %bb.cn
  %i.rn = phi ptr [ %i.rj, %bb.cm ], [ %i.rl, %bb.cn ]
  %i.ro = load double, ptr %i.rn, align 8, !tbaa !16 ; 2 uses
  %.pre2047 = and i32 %.3781, 256
  %i.rp = icmp eq i32 %.pre2047, 0
  br i1 %i.rp, label %.loopexit1485, label %bb.cp

bb.cp:                                            ; preds = %.thread2136, %bb.co
  %.07032144 = phi double [ %i.acv, %.thread2136 ], [ %i.ro, %bb.co ] ; 5 uses
  %.77852143 = phi i32 [ %.16794, %.thread2136 ], [ %.3781, %bb.co ] ; 11 uses
  %.58072141 = phi i32 [ %.10812, %.thread2136 ], [ %.1803, %bb.co ] ; 9 uses
  %i.rq = and i32 %.77852143, 2048
  %.not1108 = icmp eq i32 %i.rq, 0
  %spec.store.select24 = select i1 %.not1108, double 1.000000e+03, double 1.024000e+03 ; 9 uses
  %i.rr = icmp ult i32 %.77852143, 67108864
  br i1 %i.rr, label %.lr.ph1603, label %.loopexit1485

.lr.ph1603:                                       ; preds = %bb.cp
  %i.rs = fneg double %spec.store.select24        ; 4 uses
  %i.rt = fcmp olt double %.07032144, %spec.store.select24
  %i.ru = fcmp ogt double %.07032144, %i.rs
  %or.cond1193 = and i1 %i.rt, %i.ru
  br i1 %or.cond1193, label %.loopexit1485, label %bb.cq

bb.cq:                                            ; preds = %.lr.ph1603
  %i.rv = fdiv double %.07032144, %spec.store.select24 ; 5 uses
  %i.rw = add nuw nsw i32 %.77852143, 16777216    ; 2 uses
  %i.rx = icmp ult i32 %.77852143, 50331648
  br i1 %i.rx, label %bb.cr, label %.loopexit1485

bb.cr:                                            ; preds = %bb.cq
  %i.ry = fcmp olt double %i.rv, %spec.store.select24
  %i.rz = fcmp ogt double %i.rv, %i.rs
  %or.cond1193.1 = and i1 %i.ry, %i.rz
  br i1 %or.cond1193.1, label %.loopexit1485, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.sa = fdiv double %i.rv, %spec.store.select24 ; 5 uses
  %i.sb = add nuw nsw i32 %.77852143, 33554432    ; 2 uses
  %i.sc = icmp ult i32 %.77852143, 33554432
  br i1 %i.sc, label %bb.ct, label %.loopexit1485

bb.ct:                                            ; preds = %bb.cs
  %i.sd = fcmp olt double %i.sa, %spec.store.select24
  %i.se = fcmp ogt double %i.sa, %i.rs
  %or.cond1193.2 = and i1 %i.sd, %i.se
  br i1 %or.cond1193.2, label %.loopexit1485, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.sf = fdiv double %i.sa, %spec.store.select24 ; 5 uses
  %i.sg = add nuw nsw i32 %.77852143, 50331648    ; 2 uses
  %i.sh = icmp ult i32 %.77852143, 16777216
  br i1 %i.sh, label %bb.cv, label %.loopexit1485

bb.cv:                                            ; preds = %bb.cu
  %i.si = fcmp olt double %i.sf, %spec.store.select24
  %i.sj = fcmp ogt double %i.sf, %i.rs
  %or.cond1193.3 = and i1 %i.si, %i.sj
  br i1 %or.cond1193.3, label %.loopexit1485, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.sk = fdiv double %i.sf, %spec.store.select24
  %i.sl = or disjoint i32 %.77852143, 67108864
  br label %.loopexit1485

.loopexit1485:                                    ; preds = %.lr.ph1603, %bb.cq, %bb.cr, %bb.cs, %bb.ct, %bb.cu, %bb.cv, %bb.cw, %bb.cp, %bb.co
  %.58072142 = phi i32 [ %.1803, %bb.co ], [ %.58072141, %bb.cp ], [ %.58072141, %bb.cw ], [ %.58072141, %bb.cv ], [ %.58072141, %bb.cu ], [ %.58072141, %bb.ct ], [ %.58072141, %bb.cs ], [ %.58072141, %bb.cr ], [ %.58072141, %bb.cq ], [ %.58072141, %.lr.ph1603 ] ; 2 uses
  %.9787 = phi i32 [ %.3781, %bb.co ], [ %.77852143, %bb.cp ], [ %.77852143, %.lr.ph1603 ], [ %i.rw, %bb.cq ], [ %i.rw, %bb.cr ], [ %i.sb, %bb.cs ], [ %i.sb, %bb.ct ], [ %i.sg, %bb.cu ], [ %i.sg, %bb.cv ], [ %i.sl, %bb.cw ] ; 2 uses
  %.2705 = phi double [ %i.ro, %bb.co ], [ %.07032144, %bb.cp ], [ %.07032144, %.lr.ph1603 ], [ %i.rv, %bb.cq ], [ %i.rv, %bb.cr ], [ %i.sa, %bb.cs ], [ %i.sa, %bb.ct ], [ %i.sf, %bb.cu ], [ %i.sf, %bb.cv ], [ %i.sk, %bb.cw ]
  %i.sm = icmp eq i32 %.58072142, -1
  %spec.store.select25 = select i1 %i.sm, i32 6, i32 %.58072142 ; 2 uses
  %i.sn = call i32 @stbsp__real_to_str(ptr noundef nonnull %i.g, ptr noundef nonnull %i.e, ptr noundef nonnull %i.a, ptr noundef nonnull %i.f, double noundef %.2705, i32 noundef %spec.store.select25)
  %.not1109 = icmp eq i32 %i.sn, 0
  %i.so = or i32 %.9787, 128
  %spec.select1194 = select i1 %.not1109, i32 %.9787, i32 %i.so
  br label %bb.cx

bb.cx:                                            ; preds = %.loopexit1485, %bb.bt, %bb.bu
  %.6808 = phi i32 [ %i.nd, %bb.bt ], [ %i.nf, %bb.bu ], [ %spec.store.select25, %.loopexit1485 ] ; 12 uses
  %.10788 = phi i32 [ %.5783, %bb.bt ], [ %.5783, %bb.bu ], [ %spec.select1194, %.loopexit1485 ] ; 13 uses
  store i8 0, ptr %i.d, align 1, !tbaa !9
  store i8 0, ptr %i.c, align 1, !tbaa !9
  %i.sp = and i32 %.10788, 128
  %.not.i1242 = icmp eq i32 %i.sp, 0
  br i1 %.not.i1242, label %bb.cy, label %.sink.split.i1243

bb.cy:                                            ; preds = %bb.cx
  %i.sq = and i32 %.10788, 4
  %.not9.i1245 = icmp eq i32 %i.sq, 0
  br i1 %.not9.i1245, label %bb.cz, label %.sink.split.i1243

bb.cz:                                            ; preds = %bb.cy
  %i.sr = and i32 %.10788, 2
  %.not10.i1246 = icmp eq i32 %i.sr, 0
  br i1 %.not10.i1246, label %stbsp__lead_sign.exit1247, label %.sink.split.i1243

.sink.split.i1243:                                ; preds = %bb.cz, %bb.cy, %bb.cx
  %.sink.i1244 = phi i8 [ 45, %bb.cx ], [ 32, %bb.cy ], [ 43, %bb.cz ]
  store i8 1, ptr %i.c, align 1, !tbaa !9
  store i8 %.sink.i1244, ptr %i.j, align 1, !tbaa !9
  br label %stbsp__lead_sign.exit1247

stbsp__lead_sign.exit1247:                        ; preds = %bb.cz, %.sink.split.i1243
  %i.ss = load i32, ptr %i.f, align 4, !tbaa !10  ; 5 uses
  %i.st = icmp eq i32 %i.ss, 28672
  br i1 %i.st, label %bb.da, label %bb.db

bb.da:                                            ; preds = %stbsp__lead_sign.exit1247
  %i.su = load ptr, ptr %i.g, align 8, !tbaa !14
  br label %bb.gg

bb.db:                                            ; preds = %stbsp__lead_sign.exit1247
  %i.sv = icmp slt i32 %i.ss, 1
  br i1 %i.sv, label %bb.dc, label %bb.dh

bb.dc:                                            ; preds = %bb.db
  store i8 48, ptr %i.o, align 16, !tbaa !9
  %.not1121 = icmp eq i32 %.6808, 0
  br i1 %.not1121, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.sw = load i8, ptr @stbsp__period, align 1, !tbaa !9
  store i8 %i.sw, ptr %i.q, align 1, !tbaa !9
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc
  %.4742 = phi ptr [ %i.r, %bb.dd ], [ %i.q, %bb.dc ] ; 3 uses
  %i.sx = sub nsw i32 0, %i.ss
  %spec.select1195 = call i32 @llvm.smin.i32(i32 %.6808, i32 %i.sx) ; 7 uses
  %.not11221647 = icmp eq i32 %spec.select1195, 0
  %i.sy = ptrtoint ptr %.4742 to i64
  %i.sz = and i64 %i.sy, 3
  %i.ta = icmp eq i64 %i.sz, 0
  %or.cond11981648 = select i1 %.not11221647, i1 true, i1 %i.ta
  br i1 %or.cond11981648, label %.preheader1478, label %.lr.ph1652

.preheader1478:                                   ; preds = %.lr.ph1652, %bb.de
  %.5743.lcssa = phi ptr [ %.4742, %bb.de ], [ %i.tk, %.lr.ph1652 ] ; 3 uses
  %.0699.lcssa = phi i32 [ %spec.select1195, %bb.de ], [ %i.tl, %.lr.ph1652 ] ; 4 uses
  %i.tb = icmp sgt i32 %.0699.lcssa, 3
  br i1 %i.tb, label %.lr.ph1657.preheader, label %.preheader1477

.lr.ph1657.preheader:                             ; preds = %.preheader1478
  %i.tc = call i32 @llvm.usub.sat.i32(i32 %.0699.lcssa, i32 7)
  %i.td = add nuw i32 %i.tc, 3                    ; 2 uses
  %i.te = and i32 %i.td, 2147483644
  %i.tf = zext nneg i32 %i.te to i64              ; 2 uses
  %i.tg = add nuw nsw i64 %i.tf, 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %.5743.lcssa, i8 48, i64 %i.tg, i1 false), !tbaa !10
  %scevgep1994 = getelementptr i8, ptr %.5743.lcssa, i64 4
  %scevgep1996 = getelementptr i8, ptr %scevgep1994, i64 %i.tf
  %i.th = add nsw i32 %.0699.lcssa, -4
  %i.ti = and i32 %i.td, -4
  %i.tj = sub nsw i32 %i.th, %i.ti
  br label %.preheader1477

.lr.ph1652:                                       ; preds = %bb.de, %.lr.ph1652
  %.06991650 = phi i32 [ %i.tl, %.lr.ph1652 ], [ %spec.select1195, %bb.de ]
  %.57431649 = phi ptr [ %i.tk, %.lr.ph1652 ], [ %.4742, %bb.de ] ; 2 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %.57431649, i64 1 ; 3 uses
  store i8 48, ptr %.57431649, align 1, !tbaa !9
  %i.tl = add nsw i32 %.06991650, -1              ; 3 uses
  %.not1122 = icmp eq i32 %i.tl, 0
  %i.tm = ptrtoint ptr %i.tk to i64
  %i.tn = and i64 %i.tm, 3
  %i.to = icmp eq i64 %i.tn, 0
  %or.cond1198 = select i1 %.not1122, i1 true, i1 %i.to
  br i1 %or.cond1198, label %.preheader1478, label %.lr.ph1652, !llvm.loop !38

.preheader1477:                                   ; preds = %.lr.ph1657.preheader, %.preheader1478
  %.6744.lcssa = phi ptr [ %.5743.lcssa, %.preheader1478 ], [ %scevgep1996, %.lr.ph1657.preheader ] ; 3 uses
  %.1700.lcssa = phi i32 [ %.0699.lcssa, %.preheader1478 ], [ %i.tj, %.lr.ph1657.preheader ] ; 3 uses
  %.not11231660 = icmp eq i32 %.1700.lcssa, 0
  br i1 %.not11231660, label %._crit_edge1664, label %.lr.ph1663.preheader

.lr.ph1663.preheader:                             ; preds = %.preheader1477
  %i.tp = zext i32 %.1700.lcssa to i64
  call void @llvm.memset.p0.i64(ptr align 1 %.6744.lcssa, i8 48, i64 %i.tp, i1 false), !tbaa !9
  %scevgep1997 = getelementptr i8, ptr %.6744.lcssa, i64 1
  %i.tq = add i32 %.1700.lcssa, -1
  %i.tr = zext i32 %i.tq to i64
  %scevgep1998 = getelementptr i8, ptr %scevgep1997, i64 %i.tr
  br label %._crit_edge1664

._crit_edge1664:                                  ; preds = %.lr.ph1663.preheader, %.preheader1477
  %.7745.lcssa = phi ptr [ %.6744.lcssa, %.preheader1477 ], [ %scevgep1998, %.lr.ph1663.preheader ] ; 3 uses
  %i.ts = load i32, ptr %i.e, align 4, !tbaa !10  ; 2 uses
  %i.tt = add i32 %i.ts, %spec.select1195         ; 2 uses
  %i.tu = icmp sgt i32 %i.tt, %.6808
  br i1 %i.tu, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %._crit_edge1664
  %i.tv = sub i32 %.6808, %spec.select1195        ; 2 uses
  store i32 %i.tv, ptr %i.e, align 4, !tbaa !10
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %._crit_edge1664
  %i.tw = phi i32 [ %i.tv, %bb.df ], [ %i.ts, %._crit_edge1664 ] ; 5 uses
  %.not11241666 = icmp eq i32 %i.tw, 0
  br i1 %.not11241666, label %._crit_edge1671, label %.lr.ph1670.preheader

.lr.ph1670.preheader:                             ; preds = %bb.dg
  %smin = call i32 @llvm.smin.i32(i32 %.6808, i32 %i.tt)
  %xtraiter = and i32 %i.tw, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph1670.prol.loopexit, label %.lr.ph1670.prol

.lr.ph1670.prol:                                  ; preds = %.lr.ph1670.preheader, %.lr.ph1670.prol
  %.37021668.prol = phi i32 [ %i.ub, %.lr.ph1670.prol ], [ %i.tw, %.lr.ph1670.preheader ]
  %.87461667.prol = phi ptr [ %i.ua, %.lr.ph1670.prol ], [ %.7745.lcssa, %.lr.ph1670.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph1670.prol ], [ 0, %.lr.ph1670.preheader ]
  %i.tx = load ptr, ptr %i.g, align 8, !tbaa !14  ; 2 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tx, i64 1
  store ptr %i.ty, ptr %i.g, align 8, !tbaa !14
  %i.tz = load i8, ptr %i.tx, align 1, !tbaa !9
  %i.ua = getelementptr inbounds nuw i8, ptr %.87461667.prol, i64 1 ; 3 uses
  store i8 %i.tz, ptr %.87461667.prol, align 1, !tbaa !9
  %i.ub = add nsw i32 %.37021668.prol, -1         ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph1670.prol.loopexit, label %.lr.ph1670.prol, !llvm.loop !39

.lr.ph1670.prol.loopexit:                         ; preds = %.lr.ph1670.prol, %.lr.ph1670.preheader
  %.lcssa2466.unr = phi ptr [ poison, %.lr.ph1670.preheader ], [ %i.ua, %.lr.ph1670.prol ]
  %.37021668.unr = phi i32 [ %i.tw, %.lr.ph1670.preheader ], [ %i.ub, %.lr.ph1670.prol ]
  %.87461667.unr = phi ptr [ %.7745.lcssa, %.lr.ph1670.preheader ], [ %i.ua, %.lr.ph1670.prol ]
  %i.uc = sub i32 %spec.select1195, %smin
  %i.ud = icmp ugt i32 %i.uc, -4
  br i1 %i.ud, label %._crit_edge1671, label %.lr.ph1670

.lr.ph1670:                                       ; preds = %.lr.ph1670.prol.loopexit, %.lr.ph1670
  %.37021668 = phi i32 [ %i.uu, %.lr.ph1670 ], [ %.37021668.unr, %.lr.ph1670.prol.loopexit ]
  %.87461667 = phi ptr [ %i.ut, %.lr.ph1670 ], [ %.87461667.unr, %.lr.ph1670.prol.loopexit ] ; 5 uses
  %i.ue = load ptr, ptr %i.g, align 8, !tbaa !14  ; 2 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ue, i64 1
  store ptr %i.uf, ptr %i.g, align 8, !tbaa !14
  %i.ug = load i8, ptr %i.ue, align 1, !tbaa !9
  %i.uh = getelementptr inbounds nuw i8, ptr %.87461667, i64 1
  store i8 %i.ug, ptr %.87461667, align 1, !tbaa !9
  %i.ui = load ptr, ptr %i.g, align 8, !tbaa !14  ; 2 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ui, i64 1
  store ptr %i.uj, ptr %i.g, align 8, !tbaa !14
  %i.uk = load i8, ptr %i.ui, align 1, !tbaa !9
  %i.ul = getelementptr inbounds nuw i8, ptr %.87461667, i64 2
  store i8 %i.uk, ptr %i.uh, align 1, !tbaa !9
  %i.um = load ptr, ptr %i.g, align 8, !tbaa !14  ; 2 uses
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 1
  store ptr %i.un, ptr %i.g, align 8, !tbaa !14
  %i.uo = load i8, ptr %i.um, align 1, !tbaa !9
  %i.up = getelementptr inbounds nuw i8, ptr %.87461667, i64 3
  store i8 %i.uo, ptr %i.ul, align 1, !tbaa !9
  %i.uq = load ptr, ptr %i.g, align 8, !tbaa !14  ; 2 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uq, i64 1
  store ptr %i.ur, ptr %i.g, align 8, !tbaa !14
  %i.us = load i8, ptr %i.uq, align 1, !tbaa !9
  %i.ut = getelementptr inbounds nuw i8, ptr %.87461667, i64 4 ; 2 uses
  store i8 %i.us, ptr %i.up, align 1, !tbaa !9
  %i.uu = add nsw i32 %.37021668, -4              ; 2 uses
  %.not1124.3 = icmp eq i32 %i.uu, 0
  br i1 %.not1124.3, label %._crit_edge1671, label %.lr.ph1670, !llvm.loop !40

._crit_edge1671:                                  ; preds = %.lr.ph1670.prol.loopexit, %.lr.ph1670, %bb.dg
  %.8746.lcssa = phi ptr [ %.7745.lcssa, %bb.dg ], [ %.lcssa2466.unr, %.lr.ph1670.prol.loopexit ], [ %i.ut, %.lr.ph1670 ]
  %i.uv = add i32 %spec.select1195, %i.tw
  %i.uw = sub i32 %.6808, %i.uv
  br label %bb.ea

bb.dh:                                            ; preds = %bb.db
  %i.ux = and i32 %.10788, 64
  %.not1112 = icmp eq i32 %i.ux, 0                ; 5 uses
  br i1 %.not1112, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.uy = sub nsw i32 600, %i.ss
  %i.uz = urem i32 %i.uy, 3
  br label %bb.dj

bb.dj:                                            ; preds = %bb.dh, %bb.di
  %i.va = phi i32 [ %i.uz, %bb.di ], [ 0, %bb.dh ] ; 2 uses
  %i.vb = load i32, ptr %i.e, align 4, !tbaa !10
  %.not1113 = icmp ult i32 %i.ss, %i.vb
  br i1 %.not1113, label %.preheader1479.outer, label %.preheader1484.outer

bb.dk:                                            ; preds = %.preheader1484.peel.next, %bb.dl, %.preheader1484.outer
  %.9747.lcssa = phi ptr [ %.9747.ph, %.preheader1484.outer ], [ %.9747.ph, %bb.dl ], [ %i.vm, %.preheader1484.peel.next ] ; 2 uses
  %.1707 = phi i32 [ %.0706.ph, %.preheader1484.outer ], [ %i.vj, %bb.dl ], [ 1, %.preheader1484.peel.next ] ; 2 uses
  %i.vc = load ptr, ptr %i.g, align 8, !tbaa !14
  %i.vd = zext i32 %.5725.ph to i64
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vc, i64 %i.vd
  %i.vf = load i8, ptr %i.ve, align 1, !tbaa !9
  %i.vg = getelementptr inbounds nuw i8, ptr %.9747.lcssa, i64 1 ; 6 uses
  store i8 %i.vf, ptr %.9747.lcssa, align 1, !tbaa !9
  %i.vh = add i32 %.5725.ph, 1                    ; 4 uses
  %i.vi = load i32, ptr %i.e, align 4, !tbaa !10
  %.not1117 = icmp ult i32 %i.vh, %i.vi
  br i1 %.not1117, label %.preheader1484.outer, label %bb.dm

.preheader1484.outer:                             ; preds = %bb.dj, %bb.dk
  %.9747.ph = phi ptr [ %i.vg, %bb.dk ], [ %i.o, %bb.dj ] ; 4 uses
  %.5725.ph = phi i32 [ %i.vh, %bb.dk ], [ 0, %bb.dj ] ; 2 uses
  %.0706.ph = phi i32 [ %.1707, %bb.dk ], [ %i.va, %bb.dj ] ; 2 uses
  br i1 %.not1112, label %bb.dk, label %bb.dl

bb.dl:                                            ; preds = %.preheader1484.outer
  %i.vj = add nuw nsw i32 %.0706.ph, 1            ; 2 uses
  %i.vk = icmp eq i32 %i.vj, 4
  br i1 %i.vk, label %.preheader1484.peel.next, label %bb.dk

.preheader1484.peel.next:                         ; preds = %bb.dl
  %i.vl = load i8, ptr @stbsp__comma, align 1, !tbaa !9
  %i.vm = getelementptr inbounds nuw i8, ptr %.9747.ph, i64 1
  store i8 %i.vl, ptr %.9747.ph, align 1, !tbaa !9
  br label %bb.dk

bb.dm:                                            ; preds = %bb.dk
  %i.vn = load i32, ptr %i.f, align 4, !tbaa !10  ; 2 uses
  %i.vo = icmp ult i32 %i.vh, %i.vn
  br i1 %i.vo, label %bb.dn, label %.loopexit1480

bb.dn:                                            ; preds = %bb.dm
  %i.vp = sub nuw i32 %i.vn, %i.vh                ; 4 uses
  br i1 %.not1112, label %.preheader1483, label %.loopexit1482

.preheader1483:                                   ; preds = %bb.dn
  %.not11181621 = icmp eq i32 %i.vp, 0
  %i.vq = ptrtoint ptr %i.vg to i64
  %i.vr = and i64 %i.vq, 3
  %i.vs = icmp eq i64 %i.vr, 0
  %or.cond12011622 = select i1 %.not11181621, i1 true, i1 %i.vs
  br i1 %or.cond12011622, label %.preheader1481, label %.lr.ph1625

.preheader1481:                                   ; preds = %.lr.ph1625, %.preheader1483
  %.11749.lcssa = phi ptr [ %i.vg, %.preheader1483 ], [ %i.vz, %.lr.ph1625 ] ; 3 uses
  %.7727.lcssa = phi i32 [ %i.vp, %.preheader1483 ], [ %i.wa, %.lr.ph1625 ] ; 4 uses
  %i.vt = icmp ugt i32 %.7727.lcssa, 3
  br i1 %i.vt, label %.lr.ph1630.preheader, label %.loopexit1482

.lr.ph1630.preheader:                             ; preds = %.preheader1481
  %i.vu = and i32 %.7727.lcssa, -4
  %i.vv = add i32 %i.vu, -4
  %i.vw = zext i32 %i.vv to i64                   ; 2 uses
  %i.vx = add nuw nsw i64 %i.vw, 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %.11749.lcssa, i8 48, i64 %i.vx, i1 false), !tbaa !10
  %scevgep1989 = getelementptr i8, ptr %.11749.lcssa, i64 4
  %scevgep1990 = getelementptr i8, ptr %scevgep1989, i64 %i.vw
  %i.vy = and i32 %.7727.lcssa, 3
  br label %.loopexit1482

.lr.ph1625:                                       ; preds = %.preheader1483, %.lr.ph1625
  %.77271624 = phi i32 [ %i.wa, %.lr.ph1625 ], [ %i.vp, %.preheader1483 ]
  %.117491623 = phi ptr [ %i.vz, %.lr.ph1625 ], [ %i.vg, %.preheader1483 ] ; 2 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %.117491623, i64 1 ; 3 uses
  store i8 48, ptr %.117491623, align 1, !tbaa !9
end_hunk_1
begin_hunk_2_@stbsp_vsprintfcb:bb.a
  %.13751 = phi ptr [ %i.vg, %bb.dn ], [ %.11749.lcssa, %.preheader1481 ], [ %scevgep1990, %.lr.ph1630.preheader ] ; 2 uses
  %.9729 = phi i32 [ %i.vp, %bb.dn ], [ %.7727.lcssa, %.preheader1481 ], [ %i.vy, %.lr.ph1630.preheader ] ; 2 uses
  %.not11191633 = icmp eq i32 %.9729, 0
  br i1 %.not11191633, label %.loopexit1480, label %.lr.ph1638

.lr.ph1638:                                       ; preds = %.loopexit1482, %bb.dr
  %.37091636 = phi i32 [ %.5711, %bb.dr ], [ %.1707, %.loopexit1482 ] ; 2 uses
  %.107301635 = phi i32 [ %.11731, %bb.dr ], [ %.9729, %.loopexit1482 ] ; 2 uses
  %.147521634 = phi ptr [ %.15753, %bb.dr ], [ %.13751, %.loopexit1482 ] ; 3 uses
  br i1 %.not1112, label %bb.dq, label %bb.do

bb.do:                                            ; preds = %.lr.ph1638
  %i.we = add nuw nsw i32 %.37091636, 1           ; 2 uses
  %i.wf = icmp eq i32 %i.we, 4
  br i1 %i.wf, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  %i.wg = load i8, ptr @stbsp__comma, align 1, !tbaa !9
  store i8 %i.wg, ptr %.147521634, align 1, !tbaa !9
  br label %bb.dr

bb.dq:                                            ; preds = %bb.do, %.lr.ph1638
  %.4710 = phi i32 [ %i.we, %bb.do ], [ %.37091636, %.lr.ph1638 ]
  store i8 48, ptr %.147521634, align 1, !tbaa !9
  %i.wh = add i32 %.107301635, -1
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp
  %.11731 = phi i32 [ %.107301635, %bb.dp ], [ %i.wh, %bb.dq ] ; 2 uses
  %.5711 = phi i32 [ 0, %bb.dp ], [ %.4710, %bb.dq ]
  %.15753 = getelementptr inbounds nuw i8, ptr %.147521634, i64 1 ; 2 uses
  %.not1119 = icmp eq i32 %.11731, 0
  br i1 %.not1119, label %.loopexit1480, label %.lr.ph1638, !llvm.loop !42

.loopexit1480:                                    ; preds = %bb.dr, %.loopexit1482, %bb.dm
  %.16754 = phi ptr [ %i.vg, %bb.dm ], [ %.13751, %.loopexit1482 ], [ %.15753, %bb.dr ] ; 4 uses
  %i.wi = ptrtoint ptr %.16754 to i64
  %i.wj = sub i64 %i.wi, %i.p
  %i.wk = trunc i64 %i.wj to i32
  %i.wl = add nsw i32 %i.wk, 50331648             ; 2 uses
  %.not1120 = icmp eq i32 %.6808, 0
  br i1 %.not1120, label %bb.ea, label %bb.ds

bb.ds:                                            ; preds = %.loopexit1480
  %i.wm = load i8, ptr @stbsp__period, align 1, !tbaa !9
  %i.wn = getelementptr inbounds nuw i8, ptr %.16754, i64 1
  store i8 %i.wm, ptr %.16754, align 1, !tbaa !9
  br label %bb.ea

bb.dt:                                            ; preds = %.preheader1479.peel.next, %bb.du, %.preheader1479.outer
  %.17755.lcssa = phi ptr [ %.17755.ph, %.preheader1479.outer ], [ %.17755.ph, %bb.du ], [ %i.wy, %.preheader1479.peel.next ] ; 3 uses
  %.7713 = phi i32 [ %.6712.ph, %.preheader1479.outer ], [ %i.wv, %bb.du ], [ 1, %.preheader1479.peel.next ]
  %i.wo = load ptr, ptr %i.g, align 8, !tbaa !14
  %i.wp = zext i32 %.12732.ph to i64
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wo, i64 %i.wp
  %i.wr = load i8, ptr %i.wq, align 1, !tbaa !9
  %i.ws = getelementptr inbounds nuw i8, ptr %.17755.lcssa, i64 1 ; 4 uses
  store i8 %i.wr, ptr %.17755.lcssa, align 1, !tbaa !9
  %i.wt = add i32 %.12732.ph, 1                   ; 4 uses
  %i.wu = load i32, ptr %i.f, align 4, !tbaa !10  ; 2 uses
  %.not1114 = icmp ult i32 %i.wt, %i.wu
  br i1 %.not1114, label %.preheader1479.outer, label %bb.dv

.preheader1479.outer:                             ; preds = %bb.dj, %bb.dt
  %.17755.ph = phi ptr [ %i.ws, %bb.dt ], [ %i.o, %bb.dj ] ; 4 uses
  %.12732.ph = phi i32 [ %i.wt, %bb.dt ], [ 0, %bb.dj ] ; 2 uses
  %.6712.ph = phi i32 [ %.7713, %bb.dt ], [ %i.va, %bb.dj ] ; 2 uses
  br i1 %.not1112, label %bb.dt, label %bb.du

bb.du:                                            ; preds = %.preheader1479.outer
  %i.wv = add nuw nsw i32 %.6712.ph, 1            ; 2 uses
  %i.ww = icmp eq i32 %i.wv, 4
  br i1 %i.ww, label %.preheader1479.peel.next, label %bb.dt

.preheader1479.peel.next:                         ; preds = %bb.du
  %i.wx = load i8, ptr @stbsp__comma, align 1, !tbaa !9
  %i.wy = getelementptr inbounds nuw i8, ptr %.17755.ph, i64 1
  store i8 %i.wx, ptr %.17755.ph, align 1, !tbaa !9
  br label %bb.dt

bb.dv:                                            ; preds = %bb.dt
  %i.wz = ptrtoint ptr %i.ws to i64
  %i.xa = sub i64 %i.wz, %i.p
  %i.xb = trunc i64 %i.xa to i32
  %i.xc = add nsw i32 %i.xb, 50331648
  %.not1115 = icmp eq i32 %.6808, 0
  br i1 %.not1115, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.xd = load i8, ptr @stbsp__period, align 1, !tbaa !9
  %i.xe = getelementptr inbounds nuw i8, ptr %.17755.lcssa, i64 2
  store i8 %i.xd, ptr %i.ws, align 1, !tbaa !9
  %.pre2042 = load i32, ptr %i.f, align 4, !tbaa !10
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv
  %i.xf = phi i32 [ %.pre2042, %bb.dw ], [ %i.wu, %bb.dv ] ; 3 uses
  %.19757 = phi ptr [ %i.xe, %bb.dw ], [ %i.ws, %bb.dv ] ; 2 uses
  %i.xg = load i32, ptr %i.e, align 4, !tbaa !10  ; 2 uses
  %i.xh = sub i32 %i.xg, %i.xf
  %i.xi = icmp ugt i32 %i.xh, %.6808
  br i1 %i.xi, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  %i.xj = add nsw i32 %i.xf, %.6808               ; 2 uses
  store i32 %i.xj, ptr %i.e, align 4, !tbaa !10
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dx
  %i.xk = phi i32 [ %i.xj, %bb.dy ], [ %i.xg, %bb.dx ] ; 2 uses
  %i.xl = icmp ult i32 %i.wt, %i.xk
  br i1 %i.xl, label %.lr.ph1643.preheader, label %._crit_edge1644

.lr.ph1643.preheader:                             ; preds = %bb.dz
  %i.xm = zext i32 %i.wt to i64
  br label %.lr.ph1643

.lr.ph1643:                                       ; preds = %.lr.ph1643.preheader, %.lr.ph1643
  %indvars.iv1991 = phi i64 [ %i.xm, %.lr.ph1643.preheader ], [ %indvars.iv.next1992, %.lr.ph1643 ] ; 2 uses
  %.207581640 = phi ptr [ %.19757, %.lr.ph1643.preheader ], [ %i.xq, %.lr.ph1643 ] ; 2 uses
  %i.xn = load ptr, ptr %i.g, align 8, !tbaa !14
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xn, i64 %indvars.iv1991
  %i.xp = load i8, ptr %i.xo, align 1, !tbaa !9
  %i.xq = getelementptr inbounds nuw i8, ptr %.207581640, i64 1 ; 2 uses
  store i8 %i.xp, ptr %.207581640, align 1, !tbaa !9
  %indvars.iv.next1992 = add nuw nsw i64 %indvars.iv1991, 1 ; 2 uses
  %i.xr = load i32, ptr %i.e, align 4, !tbaa !10  ; 2 uses
  %i.xs = zext i32 %i.xr to i64
  %i.xt = icmp samesign ult i64 %indvars.iv.next1992, %i.xs
  br i1 %i.xt, label %.lr.ph1643, label %._crit_edge1644.loopexit, !llvm.loop !43

._crit_edge1644.loopexit:                         ; preds = %.lr.ph1643
  %.pre2043 = load i32, ptr %i.f, align 4, !tbaa !10
  br label %._crit_edge1644

._crit_edge1644:                                  ; preds = %._crit_edge1644.loopexit, %bb.dz
  %i.xu = phi i32 [ %i.xf, %bb.dz ], [ %.pre2043, %._crit_edge1644.loopexit ]
  %.20758.lcssa = phi ptr [ %.19757, %bb.dz ], [ %i.xq, %._crit_edge1644.loopexit ]
  %.lcssa1510 = phi i32 [ %i.xk, %bb.dz ], [ %i.xr, %._crit_edge1644.loopexit ]
  %.neg1116 = sub i32 %.6808, %.lcssa1510
  %i.xv = add i32 %.neg1116, %i.xu
  br label %bb.ea

bb.ea:                                            ; preds = %._crit_edge1644, %bb.ds, %.loopexit1480, %._crit_edge1671
  %.1798 = phi i32 [ %i.uw, %._crit_edge1671 ], [ %.6808, %bb.ds ], [ 0, %.loopexit1480 ], [ %i.xv, %._crit_edge1644 ] ; 3 uses
  %.21 = phi ptr [ %.8746.lcssa, %._crit_edge1671 ], [ %i.wn, %bb.ds ], [ %.16754, %.loopexit1480 ], [ %.20758.lcssa, %._crit_edge1644 ] ; 3 uses
  %.9715 = phi i32 [ 50331649, %._crit_edge1671 ], [ %i.wl, %bb.ds ], [ %i.wl, %.loopexit1480 ], [ %i.xc, %._crit_edge1644 ] ; 3 uses
  %i.xw = and i32 %.10788, 256
  %.not1125 = icmp eq i32 %i.xw, 0
  br i1 %.not1125, label %bb.eg, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.xx = and i32 %.10788, 1024                   ; 2 uses
  %.not1126 = icmp eq i32 %i.xx, 0                ; 2 uses
  %spec.store.select26 = zext i1 %.not1126 to i8
  store i8 %spec.store.select26, ptr %i.d, align 1, !tbaa !9
  store i8 32, ptr %i.s, align 1, !tbaa !9
  %i.xy = lshr i32 %.10788, 24                    ; 2 uses
  %.not1127 = icmp eq i32 %i.xy, 0
  br i1 %.not1127, label %bb.eg, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.xz = and i32 %.10788, 2048
  %.not1128 = icmp eq i32 %i.xz, 0
  %i.ya = zext nneg i32 %i.xy to i64              ; 2 uses
  %.lobit = lshr exact i32 %i.xx, 10
  %i.yb = sub nuw nsw i32 2, %.lobit
  %i.yc = zext nneg i32 %i.yb to i64
  %i.yd = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.yc ; 2 uses
  %i.ye = select i1 %.not1126, i8 2, i8 1         ; 4 uses
  br i1 %.not1128, label %.thread1288, label %bb.ed

.thread1288:                                      ; preds = %bb.ec
  %i.yf = getelementptr inbounds nuw i8, ptr @.str.2, i64 %i.ya
  %i.yg = load i8, ptr %i.yf, align 1, !tbaa !9
  store i8 %i.yg, ptr %i.yd, align 1, !tbaa !9
  br label %bb.ef

bb.ed:                                            ; preds = %bb.ec
  %i.yh = getelementptr inbounds nuw i8, ptr @.str.1, i64 %i.ya
  %i.yi = load i8, ptr %i.yh, align 1, !tbaa !9
  store i8 %i.yi, ptr %i.yd, align 1, !tbaa !9
  %i.yj = and i32 %.10788, 4096
  %.not1130 = icmp eq i32 %i.yj, 0
  br i1 %.not1130, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %bb.ed
  %i.yk = zext nneg i8 %i.ye to i64
  %i.yl = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.yk
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yl, i64 1
  store i8 105, ptr %i.ym, align 1, !tbaa !9
  %i.yn = add nuw nsw i8 %i.ye, 1
  br label %bb.ef

bb.ef:                                            ; preds = %.thread1288, %bb.ee, %bb.ed
  %.0698 = phi i8 [ %i.ye, %bb.ed ], [ %i.yn, %bb.ee ], [ %i.ye, %.thread1288 ]
  store i8 %.0698, ptr %i.d, align 1, !tbaa !9
  br label %bb.eg

.loopexit1476:                                    ; preds = %bb.ck, %bb.cj
  %.lcssa2468 = phi i32 [ %13, %bb.cj ], [ %16, %bb.ck ]
  store i32 %.lcssa2468, ptr %i.f, align 4, !tbaa !10
  br label %bb.eg

bb.eg:                                            ; preds = %.loopexit1476, %bb.eb, %bb.ef, %bb.ea
  %.2799 = phi i32 [ %.1798, %bb.ea ], [ %.1798, %bb.eb ], [ %.1798, %bb.ef ], [ %i.qm, %.loopexit1476 ]
  %.11789 = phi i32 [ %.10788, %bb.ea ], [ %.10788, %bb.eb ], [ %.10788, %bb.ef ], [ %.6784, %.loopexit1476 ]
  %.22 = phi ptr [ %.21, %bb.ea ], [ %.21, %bb.eb ], [ %.21, %bb.ef ], [ %.3741.lcssa, %.loopexit1476 ]
  %.10716 = phi i32 [ %.9715, %bb.ea ], [ %.9715, %bb.eb ], [ %.9715, %bb.ef ], [ 50331649, %.loopexit1476 ]
  %i.yo = ptrtoint ptr %.22 to i64
  %i.yp = sub i64 %i.yo, %i.p
  %i.yq = trunc i64 %i.yp to i32
  store i32 %i.yq, ptr %i.e, align 4, !tbaa !10
  br label %bb.gg

bb.eh:                                            ; preds = %bb.ai, %bb.ai
  %i.yr = icmp eq i8 %i.ff, 66                    ; 2 uses
  %i.ys = select i1 %i.yr, ptr @__const.stbsp_vsprintfcb.hexu, ptr @__const.stbsp_vsprintfcb.hex
  store i8 0, ptr %i.c, align 1, !tbaa !9
  %i.yt = and i32 %.3781, 8
  %.not1101 = icmp eq i32 %i.yt, 0
  br i1 %.not1101, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  store i8 2, ptr %i.c, align 1, !tbaa !9
  store i8 48, ptr %i.j, align 1, !tbaa !9
  %i.yu = select i1 %i.yr, i8 66, i8 98
  store i8 %i.yu, ptr %i.k, align 1, !tbaa !9
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %bb.eh
  store i32 384, ptr %i.e, align 4, !tbaa !10
  br label %bb.eq

bb.ek:                                            ; preds = %bb.ai
  store i8 0, ptr %i.c, align 1, !tbaa !9
  %i.yv = and i32 %.3781, 8
  %.not1100 = icmp eq i32 %i.yv, 0
  br i1 %.not1100, label %bb.em, label %bb.el

bb.el:                                            ; preds = %bb.ek
  store i8 1, ptr %i.c, align 1, !tbaa !9
  store i8 48, ptr %i.j, align 1, !tbaa !9
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %bb.ek
  store i32 816, ptr %i.e, align 4, !tbaa !10
  br label %bb.eq

bb.en:                                            ; preds = %bb.ai
  %i.yw = and i32 %.3781, -49
  %i.yx = or disjoint i32 %i.yw, 32
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %bb.ai, %bb.ai
  %.8810 = phi i32 [ 16, %bb.en ], [ %.1803, %bb.ai ], [ %.1803, %bb.ai ] ; 2 uses
  %.12790 = phi i32 [ %i.yx, %bb.en ], [ %.3781, %bb.ai ], [ %.3781, %bb.ai ] ; 3 uses
  %i.yy = icmp eq i8 %i.ff, 88                    ; 2 uses
  %i.yz = select i1 %i.yy, ptr @__const.stbsp_vsprintfcb.hexu, ptr @__const.stbsp_vsprintfcb.hex ; 2 uses
  store i32 1088, ptr %i.e, align 4, !tbaa !10
  store i8 0, ptr %i.c, align 1, !tbaa !9
  %i.za = and i32 %.12790, 8
  %.not1098 = icmp eq i32 %i.za, 0
  br i1 %.not1098, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  store i8 2, ptr %i.c, align 1, !tbaa !9
  store i8 48, ptr %i.j, align 1, !tbaa !9
  %i.zb = select i1 %i.yy, i8 88, i8 120
  store i8 %i.zb, ptr %i.k, align 1, !tbaa !9
  br label %bb.eq

bb.eq:                                            ; preds = %bb.eo, %bb.ep, %bb.em, %bb.ej
  %.pre2041 = phi i32 [ 1, %bb.ej ], [ 3, %bb.em ], [ 4, %bb.ep ], [ 4, %bb.eo ]
  %.9811 = phi i32 [ %.1803, %bb.ej ], [ %.1803, %bb.em ], [ %.8810, %bb.ep ], [ %.8810, %bb.eo ] ; 4 uses
  %.13791 = phi i32 [ %.3781, %bb.ej ], [ %.3781, %bb.em ], [ %.12790, %bb.ep ], [ %.12790, %bb.eo ] ; 4 uses
  %.1737 = phi ptr [ %i.ys, %bb.ej ], [ @__const.stbsp_vsprintfcb.hexu, %bb.em ], [ %i.yz, %bb.ep ], [ %i.yz, %bb.eo ] ; 2 uses
  %i.zc = and i32 %.13791, 32
  %.not1103 = icmp eq i32 %i.zc, 0
  %i.zd = load i32, ptr %4, align 8               ; 5 uses
  %i.ze = icmp ult i32 %i.zd, 41                  ; 2 uses
  br i1 %.not1103, label %bb.ev, label %bb.er

bb.er:                                            ; preds = %bb.eq
  br i1 %i.ze, label %bb.es, label %bb.et

bb.es:                                            ; preds = %bb.er
  %i.zf = load ptr, ptr %i.i, align 8
  %i.zg = zext nneg i32 %i.zd to i64
  %i.zh = getelementptr i8, ptr %i.zf, i64 %i.zg
  %i.zi = add nuw nsw i32 %i.zd, 8
  store i32 %i.zi, ptr %4, align 8
  br label %bb.eu

bb.et:                                            ; preds = %bb.er
  %i.zj = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.zk = getelementptr i8, ptr %i.zj, i64 8
  store ptr %i.zk, ptr %i.h, align 8
  br label %bb.eu

bb.eu:                                            ; preds = %bb.et, %bb.es
  %i.zl = phi ptr [ %i.zh, %bb.es ], [ %i.zj, %bb.et ]
  %i.zm = load i64, ptr %i.zl, align 8, !tbaa !21
  br label %bb.ez

bb.ev:                                            ; preds = %bb.eq
  br i1 %i.ze, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %bb.ev
  %i.zn = load ptr, ptr %i.i, align 8
  %i.zo = zext nneg i32 %i.zd to i64
  %i.zp = getelementptr i8, ptr %i.zn, i64 %i.zo
  %i.zq = add nuw nsw i32 %i.zd, 8
  store i32 %i.zq, ptr %4, align 8
  br label %bb.ey

bb.ex:                                            ; preds = %bb.ev
  %i.zr = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.zs = getelementptr i8, ptr %i.zr, i64 8
  store ptr %i.zs, ptr %i.h, align 8
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %bb.ew
  %i.zt = phi ptr [ %i.zp, %bb.ew ], [ %i.zr, %bb.ex ]
  %i.zu = load i32, ptr %i.zt, align 4, !tbaa !10
  %i.zv = zext i32 %i.zu to i64
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %bb.eu
  %storemerge1104 = phi i64 [ %i.zv, %bb.ey ], [ %i.zm, %bb.eu ] ; 3 uses
  store i32 0, ptr %i.f, align 4, !tbaa !10
  store i8 0, ptr %i.d, align 1, !tbaa !9
  %i.zw = icmp eq i64 %storemerge1104, 0
  br i1 %i.zw, label %bb.fa, label %bb.fc

bb.fa:                                            ; preds = %bb.ez
  store i8 0, ptr %i.c, align 1, !tbaa !9
  %i.zx = icmp eq i32 %.9811, 0
  br i1 %i.zx, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  store i32 0, ptr %i.e, align 4, !tbaa !10
  br label %bb.gg

bb.fc:                                            ; preds = %bb.fa, %bb.ez
  %i.zy = and i32 %.13791, 64
  %.not1106 = icmp eq i32 %i.zy, 0
  %notmask2349 = shl nsw i32 -1, %.pre2041
  %i.zz = xor i32 %notmask2349, -1
  %i.aaa = zext nneg i32 %i.zz to i64
  %i.aab = and i64 %storemerge1104, %i.aaa
  %i.aac = getelementptr inbounds nuw i8, ptr %.1737, i64 %i.aab
  %i.aad = load i8, ptr %i.aac, align 1, !tbaa !9
  store i8 %i.aad, ptr %i.w, align 1, !tbaa !9
  %i.aae = load i32, ptr %i.e, align 4, !tbaa !10 ; 3 uses
  %i.aaf = lshr i32 %i.aae, 8
  %i.aag = zext nneg i32 %i.aaf to i64
  %i.aah = lshr i64 %storemerge1104, %i.aag       ; 2 uses
  %.not11052350 = icmp ne i64 %i.aah, 0
  %i.aai = icmp sgt i32 %.9811, 1
  %or.cond18842351 = select i1 %.not11052350, i1 true, i1 %i.aai
  br i1 %or.cond18842351, label %.lr.ph2354, label %._crit_edge2355

.lr.ph2354:                                       ; preds = %bb.fc, %bb.ff
  %i.aaj = phi i64 [ %i.abf, %bb.ff ], [ %i.aah, %bb.fc ] ; 2 uses
  %i.aak = phi i32 [ %i.abc, %bb.ff ], [ %i.aae, %bb.fc ] ; 2 uses
  %i.aal = phi ptr [ %i.abb, %bb.ff ], [ %i.w, %bb.fc ] ; 2 uses
  %.232352 = phi ptr [ %.24, %bb.ff ], [ %i.l, %bb.fc ]
  br i1 %.not1106, label %bb.ff, label %bb.fd

bb.fd:                                            ; preds = %.lr.ph2354
  %i.aam = add i32 %i.aak, 1                      ; 5 uses
  store i32 %i.aam, ptr %i.e, align 4, !tbaa !10
  %i.aan = lshr i32 %i.aam, 4
  %i.aao = xor i32 %i.aan, %i.aam
  %i.aap = and i32 %i.aao, 15
  %i.aaq = icmp eq i32 %i.aap, 0
  br i1 %i.aaq, label %bb.fe, label %bb.ff

bb.fe:                                            ; preds = %bb.fd
  %i.aar = and i32 %i.aam, -16
  store i32 %i.aar, ptr %i.e, align 4, !tbaa !10
  %i.aas = load i8, ptr @stbsp__comma, align 1, !tbaa !9
  %i.aat = getelementptr inbounds i8, ptr %.232352, i64 -2 ; 2 uses
  store i8 %i.aas, ptr %i.aat, align 1, !tbaa !9
  %.pre2040 = load i32, ptr %i.e, align 4, !tbaa !10
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fd, %bb.fe, %.lr.ph2354
  %i.aau = phi i32 [ %.pre2040, %bb.fe ], [ %i.aam, %bb.fd ], [ %i.aak, %.lr.ph2354 ]
  %.24 = phi ptr [ %i.aat, %bb.fe ], [ %i.aal, %bb.fd ], [ %i.aal, %.lr.ph2354 ] ; 2 uses
  %i.aav = lshr i32 %i.aau, 8
  %notmask = shl nsw i32 -1, %i.aav
  %i.aaw = xor i32 %notmask, -1
  %i.aax = zext nneg i32 %i.aaw to i64
  %i.aay = and i64 %i.aaj, %i.aax
  %i.aaz = getelementptr inbounds nuw i8, ptr %.1737, i64 %i.aay
  %i.aba = load i8, ptr %i.aaz, align 1, !tbaa !9
  %i.abb = getelementptr inbounds i8, ptr %.24, i64 -1 ; 4 uses
  store i8 %i.aba, ptr %i.abb, align 1, !tbaa !9
  %i.abc = load i32, ptr %i.e, align 4, !tbaa !10 ; 3 uses
  %i.abd = lshr i32 %i.abc, 8
  %i.abe = zext nneg i32 %i.abd to i64
  %i.abf = lshr i64 %i.aaj, %i.abe                ; 2 uses
  %.not1105 = icmp ne i64 %i.abf, 0
  %i.abg = ptrtoint ptr %i.abb to i64
  %i.abh = sub i64 %i.m, %i.abg
  %i.abi = trunc i64 %i.abh to i32                ; 2 uses
  %i.abj = icmp sgt i32 %.9811, %i.abi
  %or.cond1884 = select i1 %.not1105, i1 true, i1 %i.abj
  br i1 %or.cond1884, label %.lr.ph2354, label %._crit_edge2355

._crit_edge2355:                                  ; preds = %bb.ff, %bb.fc
  %.lcssa2295 = phi ptr [ %i.w, %bb.fc ], [ %i.abb, %bb.ff ]
  %.lcssa2294 = phi i32 [ %i.aae, %bb.fc ], [ %i.abc, %bb.ff ]
  %.lcssa2293 = phi i32 [ 1, %bb.fc ], [ %i.abi, %bb.ff ] ; 2 uses
  %i.abk = shl i32 %.lcssa2294, 20
  %i.abl = and i32 %i.abk, 251658240
  %i.abm = add i32 %i.abl, %.lcssa2293
  store i32 %.lcssa2293, ptr %i.e, align 4, !tbaa !10
  br label %bb.gg

bb.fg:                                            ; preds = %bb.ai, %bb.ai, %bb.ai
  %i.abn = and i32 %.3781, 32
  %.not1082 = icmp eq i32 %i.abn, 0
  %i.abo = load i32, ptr %4, align 8              ; 5 uses
  %i.abp = icmp ult i32 %i.abo, 41                ; 2 uses
  br i1 %.not1082, label %bb.fm, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  br i1 %i.abp, label %bb.fi, label %bb.fj

bb.fi:                                            ; preds = %bb.fh
  %i.abq = load ptr, ptr %i.i, align 8
  %i.abr = zext nneg i32 %i.abo to i64
  %i.abs = getelementptr i8, ptr %i.abq, i64 %i.abr
  %i.abt = add nuw nsw i32 %i.abo, 8
  store i32 %i.abt, ptr %4, align 8
  br label %bb.fk

bb.fj:                                            ; preds = %bb.fh
  %i.abu = load ptr, ptr %i.h, align 8            ; 2 uses
  %i.abv = getelementptr i8, ptr %i.abu, i64 8
  store ptr %i.abv, ptr %i.h, align 8
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %bb.fi
  %i.abw = phi ptr [ %i.abs, %bb.fi ], [ %i.abu, %bb.fj ]
  %i.abx = load i64, ptr %i.abw, align 8, !tbaa !21 ; 3 uses
  %i.aby = load i8, ptr %.12878, align 1, !tbaa !9
  %i.abz = icmp ne i8 %i.aby, 117
  %i.aca = icmp slt i64 %i.abx, 0
  %or.cond28 = select i1 %i.abz, i1 %i.aca, i1 false
  br i1 %or.cond28, label %bb.fl, label %bb.fr

bb.fl:                                            ; preds = %bb.fk
  %i.acb = sub nsw i64 0, %i.abx
  %i.acc = or i32 %.3781, 128
  br label %bb.fr

bb.fm:                                            ; preds = %bb.fg
  br i1 %i.abp, label %bb.fn, label %bb.fo

bb.fn:                                            ; preds = %bb.fm
  %i.acd = load ptr, ptr %i.i, align 8
  %i.ace = zext nneg i32 %i.abo to i64
  %i.acf = getelementptr i8, ptr %i.acd, i64 %i.ace
  %i.acg = add nuw nsw i32 %i.abo, 8
  store i32 %i.acg, ptr %4, align 8
  br label %bb.fp

bb.fo:                                            ; preds = %bb.fm
  %i.ach = load ptr, ptr %i.h, align 8            ; 2 uses
  %i.aci = getelementptr i8, ptr %i.ach, i64 8
  store ptr %i.aci, ptr %i.h, align 8
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %bb.fn
  %i.acj = phi ptr [ %i.acf, %bb.fn ], [ %i.ach, %bb.fo ]
  %i.ack = load i32, ptr %i.acj, align 4, !tbaa !10 ; 3 uses
  %i.acl = zext i32 %i.ack to i64
  %i.acm = load i8, ptr %.12878, align 1, !tbaa !9
  %i.acn = icmp ne i8 %i.acm, 117
  %i.aco = icmp slt i32 %i.ack, 0
  %or.cond30 = select i1 %i.acn, i1 %i.aco, i1 false
  br i1 %or.cond30, label %bb.fq, label %bb.fr

bb.fq:                                            ; preds = %bb.fp
  %i.acp = sub nsw i32 0, %i.ack
  %i.acq = zext nneg i32 %i.acp to i64
  %i.acr = or i32 %.3781, 128
  br label %bb.fr

bb.fr:                                            ; preds = %bb.fp, %bb.fq, %bb.fk, %bb.fl
  %.31266 = phi i64 [ %i.acq, %bb.fq ], [ %i.acl, %bb.fp ], [ %i.acb, %bb.fl ], [ %i.abx, %bb.fk ] ; 3 uses
  %.16794 = phi i32 [ %i.acr, %bb.fq ], [ %.3781, %bb.fp ], [ %i.acc, %bb.fl ], [ %.3781, %bb.fk ] ; 7 uses
  %i.acs = and i32 %.16794, 256
  %.not1083 = icmp eq i32 %i.acs, 0
  br i1 %.not1083, label %bb.fs, label %.thread2136

.thread2136:                                      ; preds = %bb.fr
  %i.act = icmp ult i64 %.31266, 1024
  %i.acu = icmp eq i32 %.1803, -1
  %spec.store.select31 = select i1 %i.acu, i32 1, i32 %.1803
  %.10812 = select i1 %i.act, i32 0, i32 %spec.store.select31
  %i.acv = sitofp i64 %.31266 to double
  br label %bb.cp

bb.fs:                                            ; preds = %bb.fr
  %i.acw = and i32 %.16794, 64
  %i.acx = icmp eq i32 %i.acw, 0                  ; 2 uses
  %i.acy = load i8, ptr @stbsp__comma, align 1    ; 2 uses
  br label %.loopexit1459

.loopexit1459:                                    ; preds = %.loopexit1459.backedge, %bb.fs
  %.lcssa15881599 = phi i32 [ 0, %bb.fs ], [ %.lcssa15881599.be, %.loopexit1459.backedge ] ; 3 uses
  %.41267 = phi i64 [ %.31266, %bb.fs ], [ %storemerge, %.loopexit1459.backedge ] ; 4 uses
  %.25.idx = phi i64 [ 512, %bb.fs ], [ %.25.idx.be, %.loopexit1459.backedge ] ; 4 uses
  %.25.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.25.idx
  %i.acz = getelementptr inbounds i8, ptr %.25.ptr, i64 -8 ; 3 uses
  %i.ada = icmp ugt i64 %.41267, 99999999
  br i1 %i.ada, label %bb.ft, label %bb.fu

bb.ft:                                            ; preds = %.loopexit1459
  %i.adb = urem i64 %.41267, 100000000
  %i.adc = udiv i64 %.41267, 100000000
  br label %bb.fu

bb.fu:                                            ; preds = %.loopexit1459, %bb.ft
  %storemerge = phi i64 [ %i.adc, %bb.ft ], [ 0, %.loopexit1459 ] ; 2 uses
  %.15735.in = phi i64 [ %i.adb, %bb.ft ], [ %.41267, %.loopexit1459 ] ; 2 uses
  %.15735 = trunc nuw nsw i64 %.15735.in to i32   ; 2 uses
  br i1 %i.acx, label %.preheader1460, label %.loopexit1461

.preheader1460:                                   ; preds = %bb.fu, %.preheader1460
  %.26.idx = phi i64 [ %.26.add, %.preheader1460 ], [ %.25.idx, %bb.fu ]
  %.16 = phi i32 [ %i.adi, %.preheader1460 ], [ %.15735, %bb.fu ] ; 3 uses
  %.26.add = add nsw i64 %.26.idx, -2             ; 3 uses
  %.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.26.add
  %i.add = urem i32 %.16, 100
  %i.ade = shl nuw nsw i32 %i.add, 1
  %i.adf = zext nneg i32 %i.ade to i64
  %i.adg = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @stbsp__digitpair, i64 2), i64 %i.adf
  %i.adh = load i16, ptr %i.adg, align 2, !tbaa !23
  store i16 %i.adh, ptr %.ptr, align 2, !tbaa !23
  %i.adi = udiv i32 %.16, 100
  %.not1084 = icmp samesign ult i32 %.16, 100
  br i1 %.not1084, label %._crit_edge, label %.preheader1460, !llvm.loop !44

.loopexit1461:                                    ; preds = %bb.fu
  %.not10851574 = icmp eq i64 %.15735.in, 0
  br i1 %.not10851574, label %._crit_edge, label %.lr.ph1578.split

.lr.ph1578.split:                                 ; preds = %.loopexit1461, %bb.fx
  %.06941577 = phi ptr [ %.1695, %bb.fx ], [ %i.acz, %.loopexit1461 ] ; 2 uses
  %.181576 = phi i32 [ %.19, %bb.fx ], [ %.15735, %.loopexit1461 ] ; 3 uses
  %.28.idx1575 = phi i64 [ %.29.idx, %bb.fx ], [ %.25.idx, %.loopexit1461 ] ; 2 uses
  %i.adj = phi i32 [ %i.adr, %bb.fx ], [ %.lcssa15881599, %.loopexit1461 ] ; 2 uses
  %i.adk = icmp eq i32 %i.adj, 3
  br i1 %i.adk, label %bb.fv, label %bb.fw

bb.fv:                                            ; preds = %.lr.ph1578.split
  %.28.add1088 = add nsw i64 %.28.idx1575, -1     ; 2 uses
  %.ptr1092 = getelementptr inbounds i8, ptr %i.a, i64 %.28.add1088
  store i8 %i.acy, ptr %.ptr1092, align 1, !tbaa !9
  %i.adl = getelementptr inbounds i8, ptr %.06941577, i64 -1
  br label %bb.fx

bb.fw:                                            ; preds = %.lr.ph1578.split
  %i.adm = add i32 %i.adj, 1
  %i.adn = urem i32 %.181576, 10
  %i.ado = trunc nuw nsw i32 %i.adn to i8
  %i.adp = or disjoint i8 %i.ado, 48
  %.28.add = add nsw i64 %.28.idx1575, -1         ; 2 uses
  %.ptr1091 = getelementptr inbounds i8, ptr %i.a, i64 %.28.add
  store i8 %i.adp, ptr %.ptr1091, align 1, !tbaa !9
  %i.adq = udiv i32 %.181576, 10
  br label %bb.fx

bb.fx:                                            ; preds = %bb.fw, %bb.fv
  %i.adr = phi i32 [ 0, %bb.fv ], [ %i.adm, %bb.fw ] ; 2 uses
  %.29.idx = phi i64 [ %.28.add1088, %bb.fv ], [ %.28.add, %bb.fw ] ; 2 uses
  %.19 = phi i32 [ %.181576, %bb.fv ], [ %i.adq, %bb.fw ] ; 2 uses
  %.1695 = phi ptr [ %i.adl, %bb.fv ], [ %.06941577, %bb.fw ] ; 2 uses
  %.not1085 = icmp eq i32 %.19, 0
  br i1 %.not1085, label %._crit_edge, label %.lr.ph1578.split, !llvm.loop !45

._crit_edge:                                      ; preds = %bb.fx, %.preheader1460, %.loopexit1461
  %.lcssa1573 = phi i32 [ %.lcssa15881599, %.loopexit1461 ], [ %.lcssa15881599, %.preheader1460 ], [ %i.adr, %bb.fx ] ; 3 uses
  %.28.idx.lcssa1572 = phi i64 [ %.25.idx, %.loopexit1461 ], [ %.26.add, %.preheader1460 ], [ %.29.idx, %bb.fx ] ; 6 uses
  %.0694.lcssa = phi ptr [ %i.acz, %.loopexit1461 ], [ %i.acz, %.preheader1460 ], [ %.1695, %bb.fx ] ; 3 uses
  %.0694.lcssa1987 = ptrtoaddr ptr %.0694.lcssa to i64 ; 3 uses
  %i.ads = icmp eq i64 %storemerge, 0
  %.28.ptr.le.le = getelementptr inbounds i8, ptr %i.a, i64 %.28.idx.lcssa1572 ; 2 uses
  br i1 %i.ads, label %bb.gb, label %.preheader1458

.preheader1458:                                   ; preds = %._crit_edge
  %.not10861590 = icmp eq ptr %.28.ptr.le.le, %.0694.lcssa
  br i1 %.not10861590, label %.loopexit1459.backedge, label %.lr.ph1593

.lr.ph1593:                                       ; preds = %.preheader1458
  br i1 %i.acx, label %.lr.ph1593.split.us.preheader, label %.lr.ph1593.split

.lr.ph1593.split.us.preheader:                    ; preds = %.lr.ph1593
  %scevgep1988 = getelementptr i8, ptr %scevgep.a, i64 %.0694.lcssa1987
  %i.adt = add i64 %.28.idx.lcssa1572, %i.b
  %i.adu = sub i64 %i.adt, %.0694.lcssa1987
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep1988, i8 48, i64 %i.adu, i1 false), !tbaa !9
  %i.adv = sub i64 %.0694.lcssa1987, %i.b
  br label %.loopexit1459.backedge

.loopexit1459.backedge:                           ; preds = %bb.ga, %.lr.ph1593.split.us.preheader, %.preheader1458
  %.lcssa15881599.be = phi i32 [ %.lcssa1573, %.preheader1458 ], [ %.lcssa1573, %.lr.ph1593.split.us.preheader ], [ %i.aea, %bb.ga ]
  %.25.idx.be = phi i64 [ %.28.idx.lcssa1572, %.preheader1458 ], [ %i.adv, %.lr.ph1593.split.us.preheader ], [ %.32.idx, %bb.ga ]
  br label %.loopexit1459

.lr.ph1593.split:                                 ; preds = %.lr.ph1593, %bb.ga
  %.26961592 = phi ptr [ %.3697, %bb.ga ], [ %.0694.lcssa, %.lr.ph1593 ] ; 2 uses
  %.31.idx1591 = phi i64 [ %.32.idx, %bb.ga ], [ %.28.idx.lcssa1572, %.lr.ph1593 ] ; 2 uses
  %i.adw = phi i32 [ %i.aea, %bb.ga ], [ %.lcssa1573, %.lr.ph1593 ] ; 2 uses
  %i.adx = icmp eq i32 %i.adw, 3
  br i1 %i.adx, label %bb.fy, label %bb.fz

bb.fy:                                            ; preds = %.lr.ph1593.split
  %.31.add1090 = add nsw i64 %.31.idx1591, -1     ; 2 uses
  %.ptr1096 = getelementptr inbounds i8, ptr %i.a, i64 %.31.add1090
  store i8 %i.acy, ptr %.ptr1096, align 1, !tbaa !9
  %i.ady = getelementptr inbounds i8, ptr %.26961592, i64 -1
  br label %bb.ga

bb.fz:                                            ; preds = %.lr.ph1593.split
  %i.adz = add i32 %i.adw, 1
  %.31.add = add nsw i64 %.31.idx1591, -1         ; 2 uses
  %.ptr1095 = getelementptr inbounds i8, ptr %i.a, i64 %.31.add
  store i8 48, ptr %.ptr1095, align 1, !tbaa !9
  br label %bb.ga

bb.ga:                                            ; preds = %bb.fz, %bb.fy
  %i.aea = phi i32 [ 0, %bb.fy ], [ %i.adz, %bb.fz ] ; 2 uses
  %.32.idx = phi i64 [ %.31.add1090, %bb.fy ], [ %.31.add, %bb.fz ] ; 3 uses
  %.3697 = phi ptr [ %i.ady, %bb.fy ], [ %.26961592, %bb.fz ] ; 2 uses
  %.31.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.32.idx
  %.not1086 = icmp eq ptr %.31.ptr, %.3697
  br i1 %.not1086, label %.loopexit1459.backedge, label %.lr.ph1593.split, !llvm.loop !46

bb.gb:                                            ; preds = %._crit_edge
  %i.aeb = load i8, ptr %.28.ptr.le.le, align 1, !tbaa !9
  %i.aec = icmp eq i8 %i.aeb, 48
  %i.aed = icmp ne i64 %.28.idx.lcssa1572, 512
  %or.cond35 = and i1 %i.aed, %i.aec
  %.28.add1089 = zext i1 %or.cond35 to i64
  %spec.select1203 = add nsw i64 %.28.idx.lcssa1572, %.28.add1089 ; 2 uses
  %.33.ptr1295 = getelementptr inbounds i8, ptr %i.a, i64 %spec.select1203 ; 2 uses
  store i8 0, ptr %i.d, align 1, !tbaa !9
  store i8 0, ptr %i.c, align 1, !tbaa !9
  %i.aee = and i32 %.16794, 128
  %.not.i1248 = icmp eq i32 %i.aee, 0
  br i1 %.not.i1248, label %bb.gc, label %.sink.split.i1249

bb.gc:                                            ; preds = %bb.gb
  %i.aef = and i32 %.16794, 4
  %.not9.i1251 = icmp eq i32 %i.aef, 0
  br i1 %.not9.i1251, label %bb.gd, label %.sink.split.i1249

bb.gd:                                            ; preds = %bb.gc
  %i.aeg = and i32 %.16794, 2
  %.not10.i1252 = icmp eq i32 %i.aeg, 0
  br i1 %.not10.i1252, label %stbsp__lead_sign.exit1253, label %.sink.split.i1249

.sink.split.i1249:                                ; preds = %bb.gd, %bb.gc, %bb.gb
  %.sink.i1250 = phi i8 [ 45, %bb.gb ], [ 32, %bb.gc ], [ 43, %bb.gd ]
  store i8 1, ptr %i.c, align 1, !tbaa !9
  store i8 %.sink.i1250, ptr %i.j, align 1, !tbaa !9
  br label %stbsp__lead_sign.exit1253

stbsp__lead_sign.exit1253:                        ; preds = %bb.gd, %.sink.split.i1249
  %i.aeh = trunc i64 %spec.select1203 to i32      ; 2 uses
  %i.aei = sub i32 512, %i.aeh                    ; 2 uses
  store i32 %i.aei, ptr %i.e, align 4, !tbaa !10
  %i.aej = icmp eq i32 %i.aeh, 512
  br i1 %i.aej, label %bb.ge, label %bb.gf

bb.ge:                                            ; preds = %stbsp__lead_sign.exit1253
  %i.aek = getelementptr inbounds i8, ptr %.33.ptr1295, i64 -1 ; 2 uses
  store i8 48, ptr %i.aek, align 1, !tbaa !9
  store i32 1, ptr %i.e, align 4, !tbaa !10
  br label %bb.gf

bb.gf:                                            ; preds = %bb.ge, %stbsp__lead_sign.exit1253
  %i.ael = phi i32 [ 1, %bb.ge ], [ %i.aei, %stbsp__lead_sign.exit1253 ]
  %.34 = phi ptr [ %i.aek, %bb.ge ], [ %.33.ptr1295, %stbsp__lead_sign.exit1253 ]
  %i.aem = add i32 %i.ael, 50331648
  %spec.store.select36 = call i32 @llvm.smax.i32(i32 %.1803, i32 0)
  br label %bb.gg

bb.gg:                                            ; preds = %stbsp__lead_sign.exit1241, %bb.hi, %bb.gf, %._crit_edge2355, %bb.fb, %bb.eg, %bb.da, %._crit_edge1695, %bb.as, %stbsp__strlen_limited.exit
  %.2819 = phi i32 [ 0, %bb.hi ], [ %.1818, %stbsp__strlen_limited.exit ], [ %.1818, %bb.as ], [ %.1818, %._crit_edge1695 ], [ %.1818, %bb.gf ], [ %.1818, %bb.eg ], [ %.1818, %bb.da ], [ %.1818, %bb.fb ], [ %.1818, %._crit_edge2355 ], [ %.1818, %stbsp__lead_sign.exit1241 ]
  %.11813 = phi i32 [ 0, %bb.hi ], [ 0, %stbsp__strlen_limited.exit ], [ 0, %bb.as ], [ 0, %._crit_edge1695 ], [ %spec.store.select36, %bb.gf ], [ 0, %bb.eg ], [ 0, %bb.da ], [ 0, %bb.fb ], [ %.9811, %._crit_edge2355 ], [ 0, %stbsp__lead_sign.exit1241 ]
  %.3800 = phi i32 [ 0, %bb.hi ], [ 0, %stbsp__strlen_limited.exit ], [ 0, %bb.as ], [ %spec.select11882135, %._crit_edge1695 ], [ 0, %bb.gf ], [ %.2799, %bb.eg ], [ 0, %bb.da ], [ 0, %bb.fb ], [ 0, %._crit_edge2355 ], [ 0, %stbsp__lead_sign.exit1241 ] ; 3 uses
  %.17795 = phi i32 [ 0, %bb.hi ], [ %.3781, %stbsp__strlen_limited.exit ], [ %.3781, %bb.as ], [ %spec.select1187, %._crit_edge1695 ], [ %.16794, %bb.gf ], [ %.11789, %bb.eg ], [ %.10788, %bb.da ], [ %.13791, %bb.fb ], [ %.13791, %._crit_edge2355 ], [ %.6784, %stbsp__lead_sign.exit1241 ] ; 4 uses
  %.35 = phi ptr [ %i.u, %bb.hi ], [ %spec.store.select, %stbsp__strlen_limited.exit ], [ %i.u, %bb.as ], [ %i.o, %._crit_edge1695 ], [ %.34, %bb.gf ], [ %i.o, %bb.eg ], [ %i.su, %bb.da ], [ %i.l, %bb.fb ], [ %.lcssa2295, %._crit_edge2355 ], [ %i.ob, %stbsp__lead_sign.exit1241 ]
  %.11717 = phi i32 [ 0, %bb.hi ], [ 0, %stbsp__strlen_limited.exit ], [ 0, %bb.as ], [ 50331649, %._crit_edge1695 ], [ %i.aem, %bb.gf ], [ %.10716, %bb.eg ], [ 0, %bb.da ], [ 0, %bb.fb ], [ %i.abm, %._crit_edge2355 ], [ 0, %stbsp__lead_sign.exit1241 ] ; 2 uses
  %i.aen = load i32, ptr %i.e, align 4, !tbaa !10 ; 2 uses
  %spec.select1204 = call i32 @llvm.smax.i32(i32 %.11813, i32 %i.aen) ; 2 uses
  %i.aeo = load i8, ptr %i.c, align 1, !tbaa !9   ; 3 uses
  %i.aep = sext i8 %i.aeo to i32
  %i.aeq = load i8, ptr %i.d, align 1, !tbaa !9
  %i.aer = sext i8 %i.aeq to i32
  %i.aes = add i32 %spec.select1204, %.3800
  %i.aet = add i32 %i.aes, %i.aep
  %i.aeu = add i32 %i.aet, %i.aer                 ; 2 uses
  %.3820 = call i32 @llvm.smax.i32(i32 %.2819, i32 %i.aeu)
  %i.aev = sub i32 %.3820, %i.aeu                 ; 3 uses
  %i.aew = sub i32 %spec.select1204, %i.aen       ; 3 uses
  %i.aex = and i32 %.17795, 1
  %i.aey = icmp eq i32 %i.aex, 0
  br i1 %i.aey, label %bb.gh, label %bb.gj

bb.gh:                                            ; preds = %bb.gg
  %i.aez = and i32 %.17795, 16
  %.not1138 = icmp eq i32 %i.aez, 0
  br i1 %.not1138, label %bb.gj, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.afa = call i32 @llvm.smax.i32(i32 %i.aev, i32 %i.aew)
  br label %bb.gj

bb.gj:                                            ; preds = %bb.gh, %bb.gi, %bb.gg
  %.4821 = phi i32 [ 0, %bb.gi ], [ %i.aev, %bb.gg ], [ %i.aev, %bb.gh ] ; 5 uses
  %.13815 = phi i32 [ %i.afa, %bb.gi ], [ %i.aew, %bb.gg ], [ %i.aew, %bb.gh ] ; 4 uses
  %.18796 = phi i32 [ %.17795, %bb.gi ], [ %.17795, %bb.gg ], [ 0, %bb.gh ] ; 3 uses
  %i.afb = sub i32 0, %.13815
  %.not1139 = icmp eq i32 %.4821, %i.afb
  br i1 %.not1139, label %.loopexit1470, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.afc = and i32 %.18796, 1
  %i.afd = icmp eq i32 %i.afc, 0
  %i.afe = icmp sgt i32 %.4821, 0
  %or.cond38 = and i1 %i.afe, %i.afd
  br i1 %or.cond38, label %.preheader1473, label %.loopexit1475

.preheader1473:                                   ; preds = %bb.gk, %.thread1299
  %.5936 = phi ptr [ %.8939, %.thread1299 ], [ %.1932, %bb.gk ] ; 4 uses
  %.9889 = phi ptr [ %.15895, %.thread1299 ], [ %.2882, %bb.gk ] ; 3 uses
  %.5832 = phi i32 [ %.8835, %.thread1299 ], [ %.1828, %bb.gk ] ; 3 uses
  %.5822 = phi i32 [ %i.afi, %.thread1299 ], [ %.4821, %bb.gk ] ; 3 uses
  %i.aff = ptrtoint ptr %.9889 to i64             ; 2 uses
  %i.afg = ptrtoint ptr %.5936 to i64             ; 2 uses
  %.neg1141 = sub i64 %i.afg, %i.aff
  %.neg1142 = trunc i64 %.neg1141 to i32
  %i.afh = add i32 %.neg1142, 512
  %spec.select1205 = call i32 @llvm.smin.i32(i32 %.5822, i32 %i.afh)
  %.1690 = select i1 %.not1077, i32 %.5822, i32 %spec.select1205 ; 4 uses
  %i.afi = sub nsw i32 %.5822, %.1690             ; 3 uses
  %.not11431703 = icmp eq i32 %.1690, 0
  %i.afj = and i64 %i.aff, 3
  %i.afk = icmp eq i64 %i.afj, 0
  %or.cond12081704 = select i1 %.not11431703, i1 true, i1 %i.afk
  br i1 %or.cond12081704, label %.preheader1457, label %.lr.ph1708

.preheader1457:                                   ; preds = %.lr.ph1708, %.preheader1473
  %.10890.lcssa = phi ptr [ %.9889, %.preheader1473 ], [ %i.afu, %.lr.ph1708 ] ; 3 uses
  %.2691.lcssa = phi i32 [ %.1690, %.preheader1473 ], [ %i.afv, %.lr.ph1708 ] ; 4 uses
  %i.afl = icmp sgt i32 %.2691.lcssa, 3
  br i1 %i.afl, label %.lr.ph1713.preheader, label %.preheader1456

.lr.ph1713.preheader:                             ; preds = %.preheader1457
  %i.afm = call i32 @llvm.usub.sat.i32(i32 %.2691.lcssa, i32 7)
  %i.afn = add nuw i32 %i.afm, 3                  ; 2 uses
  %i.afo = and i32 %i.afn, 2147483644
  %i.afp = zext nneg i32 %i.afo to i64            ; 2 uses
  %i.afq = add nuw nsw i64 %i.afp, 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %.10890.lcssa, i8 32, i64 %i.afq, i1 false), !tbaa !10
  %scevgep2012 = getelementptr i8, ptr %.10890.lcssa, i64 4
  %scevgep2014 = getelementptr i8, ptr %scevgep2012, i64 %i.afp
  %i.afr = add nsw i32 %.2691.lcssa, -4
  %i.afs = and i32 %i.afn, -4
  %i.aft = sub nsw i32 %i.afr, %i.afs
  br label %.preheader1456

.lr.ph1708:                                       ; preds = %.preheader1473, %.lr.ph1708
  %.26911706 = phi i32 [ %i.afv, %.lr.ph1708 ], [ %.1690, %.preheader1473 ]
  %.108901705 = phi ptr [ %i.afu, %.lr.ph1708 ], [ %.9889, %.preheader1473 ] ; 2 uses
  %i.afu = getelementptr inbounds nuw i8, ptr %.108901705, i64 1 ; 3 uses
  store i8 32, ptr %.108901705, align 1, !tbaa !9
  %i.afv = add nsw i32 %.26911706, -1             ; 3 uses
  %.not1143 = icmp eq i32 %i.afv, 0
  %i.afw = ptrtoint ptr %i.afu to i64
  %i.afx = and i64 %i.afw, 3
  %i.afy = icmp eq i64 %i.afx, 0
  %or.cond1208 = select i1 %.not1143, i1 true, i1 %i.afy
  br i1 %or.cond1208, label %.preheader1457, label %.lr.ph1708, !llvm.loop !47

.preheader1456:                                   ; preds = %.lr.ph1713.preheader, %.preheader1457
  %.11891.lcssa = phi ptr [ %.10890.lcssa, %.preheader1457 ], [ %scevgep2014, %.lr.ph1713.preheader ] ; 3 uses
  %.3692.lcssa = phi i32 [ %.2691.lcssa, %.preheader1457 ], [ %i.aft, %.lr.ph1713.preheader ] ; 3 uses
  %.not11441716 = icmp eq i32 %.3692.lcssa, 0
  br i1 %.not11441716, label %._crit_edge1720, label %.lr.ph1719.preheader

.lr.ph1719.preheader:                             ; preds = %.preheader1456
  %i.afz = zext i32 %.3692.lcssa to i64
  call void @llvm.memset.p0.i64(ptr align 1 %.11891.lcssa, i8 32, i64 %i.afz, i1 false), !tbaa !9
  %scevgep2015 = getelementptr i8, ptr %.11891.lcssa, i64 1
  %i.aga = add i32 %.3692.lcssa, -1
  %i.agb = zext i32 %i.aga to i64
  %scevgep2016 = getelementptr i8, ptr %scevgep2015, i64 %i.agb
  br label %._crit_edge1720

._crit_edge1720:                                  ; preds = %.lr.ph1719.preheader, %.preheader1456
  %.12892.lcssa = phi ptr [ %.11891.lcssa, %.preheader1456 ], [ %scevgep2016, %.lr.ph1719.preheader ] ; 3 uses
  br i1 %.not1077, label %.thread1299, label %bb.gl

bb.gl:                                            ; preds = %._crit_edge1720
  %i.agc = ptrtoint ptr %.12892.lcssa to i64
  %i.agd = sub i64 %i.agc, %i.afg
  %i.age = trunc i64 %i.agd to i32                ; 3 uses
  %i.agf = icmp sgt i32 %i.age, 510
  br i1 %i.agf, label %bb.gm, label %.thread1299

bb.gm:                                            ; preds = %bb.gl
  %i.agg = add nuw nsw i32 %.5832, %i.age         ; 2 uses
  %i.agh = call ptr %0(ptr noundef %.5936, ptr noundef %1, i32 noundef %i.age) #13 ; 3 uses
  %i.agi = icmp eq ptr %i.agh, null
  br i1 %i.agi, label %.thread1427, label %.thread1299

.thread1299:                                      ; preds = %bb.gm, %bb.gl, %._crit_edge1720
  %.8939 = phi ptr [ %.5936, %._crit_edge1720 ], [ %.5936, %bb.gl ], [ %i.agh, %bb.gm ] ; 2 uses
  %.15895 = phi ptr [ %.12892.lcssa, %._crit_edge1720 ], [ %.12892.lcssa, %bb.gl ], [ %i.agh, %bb.gm ] ; 2 uses
  %.8835 = phi i32 [ %.5832, %._crit_edge1720 ], [ %.5832, %bb.gl ], [ %i.agg, %bb.gm ] ; 2 uses
  %.old37 = icmp sgt i32 %i.afi, 0
  br i1 %.old37, label %.preheader1473, label %.loopexit1475.loopexit

.loopexit1475.loopexit:                           ; preds = %.thread1299
  %.pre2044 = load i8, ptr %i.c, align 1, !tbaa !9
  br label %.loopexit1475

.loopexit1475:                                    ; preds = %.loopexit1475.loopexit, %bb.gk
  %i.agj = phi i8 [ %i.aeo, %bb.gk ], [ %.pre2044, %.loopexit1475.loopexit ] ; 2 uses
  %.9940 = phi ptr [ %.1932, %bb.gk ], [ %.8939, %.loopexit1475.loopexit ] ; 2 uses
  %.16896 = phi ptr [ %.2882, %bb.gk ], [ %.15895, %.loopexit1475.loopexit ] ; 2 uses
  %.9836 = phi i32 [ %.1828, %bb.gk ], [ %.8835, %.loopexit1475.loopexit ] ; 2 uses
  %.6823 = phi i32 [ %.4821, %bb.gk ], [ %i.afi, %.loopexit1475.loopexit ] ; 2 uses
  store ptr %i.j, ptr %i.g, align 8, !tbaa !14
  %.not11451729 = icmp eq i8 %i.agj, 0
  br i1 %.not11451729, label %._crit_edge1735, label %.lr.ph1734

.lr.ph1734:                                       ; preds = %.loopexit1475, %.thread1306
  %i.agk = phi i8 [ %i.ahv, %.thread1306 ], [ %i.agj, %.loopexit1475 ] ; 2 uses
  %.108371732 = phi i32 [ %.13840, %.thread1306 ], [ %.9836, %.loopexit1475 ] ; 3 uses
  %.178971731 = phi ptr [ %.21901, %.thread1306 ], [ %.16896, %.loopexit1475 ] ; 4 uses
  %.109411730 = phi ptr [ %.13944, %.thread1306 ], [ %.9940, %.loopexit1475 ] ; 4 uses
  %i.agl = sext i8 %i.agk to i32                  ; 2 uses
  %i.agm = ptrtoint ptr %.178971731 to i64
  %i.agn = ptrtoint ptr %.109411730 to i64        ; 2 uses
  %.neg1154 = sub i64 %i.agn, %i.agm
  %.neg1155 = trunc i64 %.neg1154 to i32
  %i.ago = add i32 %.neg1155, 512
  %spec.select1209 = call i32 @llvm.smin.i32(i32 %i.ago, i32 %i.agl)
  %.6 = select i1 %.not1077, i32 %i.agl, i32 %spec.select1209 ; 6 uses
  %i.agp = trunc i32 %.6 to i8
  %i.agq = sub i8 %i.agk, %i.agp
  store i8 %i.agq, ptr %i.c, align 1, !tbaa !9
  %.not11561722 = icmp eq i32 %.6, 0
  br i1 %.not11561722, label %._crit_edge1727, label %.lr.ph1726.preheader

.lr.ph1726.preheader:                             ; preds = %.lr.ph1734
  %xtraiter2536 = and i32 %.6, 3                  ; 2 uses
  %lcmp.mod2537.not = icmp eq i32 %xtraiter2536, 0
  br i1 %lcmp.mod2537.not, label %.lr.ph1726.prol.loopexit, label %.lr.ph1726.prol

.lr.ph1726.prol:                                  ; preds = %.lr.ph1726.preheader, %.lr.ph1726.prol
  %.71724.prol = phi i32 [ %i.agv, %.lr.ph1726.prol ], [ %.6, %.lr.ph1726.preheader ]
  %.188981723.prol = phi ptr [ %i.agu, %.lr.ph1726.prol ], [ %.178971731, %.lr.ph1726.preheader ] ; 2 uses
  %prol.iter2538 = phi i32 [ %prol.iter2538.next, %.lr.ph1726.prol ], [ 0, %.lr.ph1726.preheader ]
  %i.agr = load ptr, ptr %i.g, align 8, !tbaa !14 ; 2 uses
  %i.ags = getelementptr inbounds nuw i8, ptr %i.agr, i64 1
  store ptr %i.ags, ptr %i.g, align 8, !tbaa !14
  %i.agt = load i8, ptr %i.agr, align 1, !tbaa !9
  %i.agu = getelementptr inbounds nuw i8, ptr %.188981723.prol, i64 1 ; 3 uses
  store i8 %i.agt, ptr %.188981723.prol, align 1, !tbaa !9
  %i.agv = add nsw i32 %.71724.prol, -1           ; 2 uses
  %prol.iter2538.next = add i32 %prol.iter2538, 1 ; 2 uses
  %prol.iter2538.cmp.not = icmp eq i32 %prol.iter2538.next, %xtraiter2536
  br i1 %prol.iter2538.cmp.not, label %.lr.ph1726.prol.loopexit, label %.lr.ph1726.prol, !llvm.loop !48

.lr.ph1726.prol.loopexit:                         ; preds = %.lr.ph1726.prol, %.lr.ph1726.preheader
  %.lcssa2485.unr = phi ptr [ poison, %.lr.ph1726.preheader ], [ %i.agu, %.lr.ph1726.prol ]
  %.71724.unr = phi i32 [ %.6, %.lr.ph1726.preheader ], [ %i.agv, %.lr.ph1726.prol ]
  %.188981723.unr = phi ptr [ %.178971731, %.lr.ph1726.preheader ], [ %i.agu, %.lr.ph1726.prol ]
  %i.agw = icmp ult i32 %.6, 4
  br i1 %i.agw, label %._crit_edge1727, label %.lr.ph1726

.lr.ph1726:                                       ; preds = %.lr.ph1726.prol.loopexit, %.lr.ph1726
  %.71724 = phi i32 [ %i.ahn, %.lr.ph1726 ], [ %.71724.unr, %.lr.ph1726.prol.loopexit ]
  %.188981723 = phi ptr [ %i.ahm, %.lr.ph1726 ], [ %.188981723.unr, %.lr.ph1726.prol.loopexit ] ; 5 uses
  %i.agx = load ptr, ptr %i.g, align 8, !tbaa !14 ; 2 uses
  %i.agy = getelementptr inbounds nuw i8, ptr %i.agx, i64 1
  store ptr %i.agy, ptr %i.g, align 8, !tbaa !14
  %i.agz = load i8, ptr %i.agx, align 1, !tbaa !9
  %i.aha = getelementptr inbounds nuw i8, ptr %.188981723, i64 1
  store i8 %i.agz, ptr %.188981723, align 1, !tbaa !9
  %i.ahb = load ptr, ptr %i.g, align 8, !tbaa !14 ; 2 uses
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.ahb, i64 1
  store ptr %i.ahc, ptr %i.g, align 8, !tbaa !14
  %i.ahd = load i8, ptr %i.ahb, align 1, !tbaa !9
  %i.ahe = getelementptr inbounds nuw i8, ptr %.188981723, i64 2
  store i8 %i.ahd, ptr %i.aha, align 1, !tbaa !9
  %i.ahf = load ptr, ptr %i.g, align 8, !tbaa !14 ; 2 uses
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.ahf, i64 1
  store ptr %i.ahg, ptr %i.g, align 8, !tbaa !14
  %i.ahh = load i8, ptr %i.ahf, align 1, !tbaa !9
  %i.ahi = getelementptr inbounds nuw i8, ptr %.188981723, i64 3
  store i8 %i.ahh, ptr %i.ahe, align 1, !tbaa !9
  %i.ahj = load ptr, ptr %i.g, align 8, !tbaa !14 ; 2 uses
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.ahj, i64 1
  store ptr %i.ahk, ptr %i.g, align 8, !tbaa !14
  %i.ahl = load i8, ptr %i.ahj, align 1, !tbaa !9
  %i.ahm = getelementptr inbounds nuw i8, ptr %.188981723, i64 4 ; 2 uses
  store i8 %i.ahl, ptr %i.ahi, align 1, !tbaa !9
  %i.ahn = add nsw i32 %.71724, -4                ; 2 uses
  %.not1156.3 = icmp eq i32 %i.ahn, 0
  br i1 %.not1156.3, label %._crit_edge1727, label %.lr.ph1726, !llvm.loop !49

._crit_edge1727:                                  ; preds = %.lr.ph1726.prol.loopexit, %.lr.ph1726, %.lr.ph1734
  %.18898.lcssa = phi ptr [ %.178971731, %.lr.ph1734 ], [ %.lcssa2485.unr, %.lr.ph1726.prol.loopexit ], [ %i.ahm, %.lr.ph1726 ] ; 3 uses
  br i1 %.not1077, label %.thread1306, label %bb.gn

bb.gn:                                            ; preds = %._crit_edge1727
  %i.aho = ptrtoint ptr %.18898.lcssa to i64
  %i.ahp = sub i64 %i.aho, %i.agn
  %i.ahq = trunc i64 %i.ahp to i32                ; 3 uses
  %i.ahr = icmp sgt i32 %i.ahq, 510
  br i1 %i.ahr, label %bb.go, label %.thread1306

bb.go:                                            ; preds = %bb.gn
  %i.ahs = add nuw nsw i32 %.108371732, %i.ahq    ; 2 uses
  %i.aht = call ptr %0(ptr noundef %.109411730, ptr noundef %1, i32 noundef %i.ahq) #13 ; 3 uses
  %i.ahu = icmp eq ptr %i.aht, null
  br i1 %i.ahu, label %.thread1427, label %.thread1306

.thread1306:                                      ; preds = %bb.go, %bb.gn, %._crit_edge1727
  %.13944 = phi ptr [ %.109411730, %._crit_edge1727 ], [ %.109411730, %bb.gn ], [ %i.aht, %bb.go ] ; 2 uses
  %.21901 = phi ptr [ %.18898.lcssa, %._crit_edge1727 ], [ %.18898.lcssa, %bb.gn ], [ %i.aht, %bb.go ] ; 2 uses
  %.13840 = phi i32 [ %.108371732, %._crit_edge1727 ], [ %.108371732, %bb.gn ], [ %i.ahs, %bb.go ] ; 2 uses
  %i.ahv = load i8, ptr %i.c, align 1, !tbaa !9   ; 2 uses
  %.not1145 = icmp eq i8 %i.ahv, 0
  br i1 %.not1145, label %._crit_edge1735, label %.lr.ph1734, !llvm.loop !50

._crit_edge1735:                                  ; preds = %.thread1306, %.loopexit1475
  %.10941.lcssa = phi ptr [ %.9940, %.loopexit1475 ], [ %.13944, %.thread1306 ] ; 2 uses
  %.17897.lcssa = phi ptr [ %.16896, %.loopexit1475 ], [ %.21901, %.thread1306 ] ; 2 uses
  %.10837.lcssa = phi i32 [ %.9836, %.loopexit1475 ], [ %.13840, %.thread1306 ] ; 2 uses
  %i.ahw = lshr i32 %.11717, 24                   ; 5 uses
  %i.ahx = and i32 %.18796, 64
  %.not1146 = icmp eq i32 %i.ahx, 0               ; 2 uses
  br i1 %.not1146, label %bb.gq, label %bb.gp

bb.gp:                                            ; preds = %._crit_edge1735
  %i.ahy = and i32 %.11717, 16777215
  %i.ahz = add i32 %.13815, %i.ahy
  %i.aia = add nuw nsw i32 %i.ahw, 1
  %i.aib = urem i32 %i.ahz, %i.aia
  %i.aic = sub nsw i32 %i.ahw, %i.aib
  br label %bb.gq

bb.gq:                                            ; preds = %._crit_edge1735, %bb.gp
  %i.aid = phi i32 [ %i.aic, %bb.gp ], [ 0, %._crit_edge1735 ]
  %i.aie = icmp sgt i32 %.13815, 0
  br i1 %i.aie, label %.lr.ph1768, label %.loopexit1470.thread

.loopexit1470.thread:                             ; preds = %bb.gq
  store ptr %i.j, ptr %i.g, align 8, !tbaa !14
  br label %._crit_edge1785

.lr.ph1768:                                       ; preds = %bb.gq, %.thread1313
  %.127181766 = phi i32 [ %.13719.lcssa, %.thread1313 ], [ %i.aid, %bb.gq ] ; 6 uses
  %.148161765 = phi i32 [ %i.aii, %.thread1313 ], [ %.13815, %bb.gq ] ; 3 uses
  %.148411764 = phi i32 [ %.17844, %.thread1313 ], [ %.10837.lcssa, %bb.gq ] ; 3 uses
  %.229021763 = phi ptr [ %.30910, %.thread1313 ], [ %.17897.lcssa, %bb.gq ] ; 7 uses
  %.149451762 = phi ptr [ %.17948, %.thread1313 ], [ %.10941.lcssa, %bb.gq ] ; 4 uses
  %i.aif = ptrtoint ptr %.229021763 to i64        ; 2 uses
  %i.aig = ptrtoint ptr %.149451762 to i64        ; 2 uses
  %.neg1148 = sub i64 %i.aig, %i.aif
  %.neg1149 = trunc i64 %.neg1148 to i32
  %i.aih = add i32 %.neg1149, 512
  %spec.select1210 = call i32 @llvm.smin.i32(i32 %.148161765, i32 %i.aih)
  %.9 = select i1 %.not1077, i32 %.148161765, i32 %spec.select1210 ; 8 uses
  %i.aii = sub nsw i32 %.148161765, %.9           ; 2 uses
  %.not11501739 = icmp eq i32 %.9, 0              ; 2 uses
  br i1 %.not1146, label %.preheader1455, label %.loopexit.thread

.preheader1455:                                   ; preds = %.lr.ph1768
  %i.aij = and i64 %i.aif, 3
  %i.aik = icmp eq i64 %i.aij, 0
  %or.cond12131740 = select i1 %.not11501739, i1 true, i1 %i.aik
  br i1 %or.cond12131740, label %.preheader1454, label %.lr.ph1743

.preheader1454:                                   ; preds = %.lr.ph1743, %.preheader1455
  %.23903.lcssa = phi ptr [ %.229021763, %.preheader1455 ], [ %i.aiu, %.lr.ph1743 ] ; 3 uses
  %.10.lcssa = phi i32 [ %.9, %.preheader1455 ], [ %i.aiv, %.lr.ph1743 ] ; 4 uses
  %i.ail = icmp sgt i32 %.10.lcssa, 3
  br i1 %i.ail, label %.lr.ph1748.preheader, label %.loopexit

.lr.ph1748.preheader:                             ; preds = %.preheader1454
  %i.aim = call i32 @llvm.usub.sat.i32(i32 %.10.lcssa, i32 7)
  %i.ain = add nuw i32 %i.aim, 3                  ; 2 uses
  %i.aio = and i32 %i.ain, 2147483644
  %i.aip = zext nneg i32 %i.aio to i64            ; 2 uses
  %i.aiq = add nuw nsw i64 %i.aip, 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %.23903.lcssa, i8 48, i64 %i.aiq, i1 false), !tbaa !10
  %scevgep2018 = getelementptr i8, ptr %.23903.lcssa, i64 4
  %scevgep2020 = getelementptr i8, ptr %scevgep2018, i64 %i.aip
  %i.air = add nsw i32 %.10.lcssa, -4
  %i.ais = and i32 %i.ain, -4
  %i.ait = sub nsw i32 %i.air, %i.ais
  br label %.loopexit

.lr.ph1743:                                       ; preds = %.preheader1455, %.lr.ph1743
  %.101742 = phi i32 [ %i.aiv, %.lr.ph1743 ], [ %.9, %.preheader1455 ]
  %.239031741 = phi ptr [ %i.aiu, %.lr.ph1743 ], [ %.229021763, %.preheader1455 ] ; 2 uses
  %i.aiu = getelementptr inbounds nuw i8, ptr %.239031741, i64 1 ; 3 uses
  store i8 48, ptr %.239031741, align 1, !tbaa !9
  %i.aiv = add nsw i32 %.101742, -1               ; 3 uses
  %.not1150 = icmp eq i32 %i.aiv, 0
  %i.aiw = ptrtoint ptr %i.aiu to i64
  %i.aix = and i64 %i.aiw, 3
  %i.aiy = icmp eq i64 %i.aix, 0
  %or.cond1213 = select i1 %.not1150, i1 true, i1 %i.aiy
  br i1 %or.cond1213, label %.preheader1454, label %.lr.ph1743, !llvm.loop !51

.loopexit:                                        ; preds = %.lr.ph1748.preheader, %.preheader1454
  %.25905 = phi ptr [ %scevgep2020, %.lr.ph1748.preheader ], [ %.23903.lcssa, %.preheader1454 ] ; 3 uses
  %.12 = phi i32 [ %i.ait, %.lr.ph1748.preheader ], [ %.10.lcssa, %.preheader1454 ] ; 3 uses
  %.not11511751 = icmp eq i32 %.12, 0
  br i1 %.not11511751, label %._crit_edge1757, label %.lr.ph1756.split.us.preheader

.loopexit.thread:                                 ; preds = %.lr.ph1768
  br i1 %.not11501739, label %._crit_edge1757, label %.lr.ph1756.split.preheader

.lr.ph1756.split.preheader:                       ; preds = %.loopexit.thread
  %xtraiter2539 = and i32 %.9, 1
  %lcmp.mod2540.not = icmp eq i32 %xtraiter2539, 0
  br i1 %lcmp.mod2540.not, label %.lr.ph1756.split.prol.loopexit, label %.lr.ph1756.split.prol

.lr.ph1756.split.prol:                            ; preds = %.lr.ph1756.split.preheader
  %i.aiz = add i32 %.127181766, 1
  %i.aja = icmp eq i32 %.127181766, %i.ahw        ; 2 uses
  %i.ajb = load i8, ptr @stbsp__comma, align 1
  %spec.select1226.prol = select i1 %i.aja, i8 %i.ajb, i8 48
  %spec.select1227.prol = select i1 %i.aja, i32 0, i32 %i.aiz ; 2 uses
  %.27907.prol = getelementptr inbounds nuw i8, ptr %.229021763, i64 1 ; 2 uses
  store i8 %spec.select1226.prol, ptr %.229021763, align 1, !tbaa !9
  %i.ajc = add nsw i32 %.9, -1
  br label %.lr.ph1756.split.prol.loopexit

.lr.ph1756.split.prol.loopexit:                   ; preds = %.lr.ph1756.split.prol, %.lr.ph1756.split.preheader
  %spec.select1227.lcssa.unr = phi i32 [ poison, %.lr.ph1756.split.preheader ], [ %spec.select1227.prol, %.lr.ph1756.split.prol ]
  %.27907.lcssa.unr = phi ptr [ poison, %.lr.ph1756.split.preheader ], [ %.27907.prol, %.lr.ph1756.split.prol ]
  %.131754.unr = phi i32 [ %.9, %.lr.ph1756.split.preheader ], [ %i.ajc, %.lr.ph1756.split.prol ]
  %.137191753.unr = phi i32 [ %.127181766, %.lr.ph1756.split.preheader ], [ %spec.select1227.prol, %.lr.ph1756.split.prol ]
  %.269061752.unr = phi ptr [ %.229021763, %.lr.ph1756.split.preheader ], [ %.27907.prol, %.lr.ph1756.split.prol ]
  %i.ajd = icmp eq i32 %.9, 1
  br i1 %i.ajd, label %._crit_edge1757, label %.lr.ph1756.split

.lr.ph1756.split.us.preheader:                    ; preds = %.loopexit
  %i.aje = zext i32 %.12 to i64
  call void @llvm.memset.p0.i64(ptr align 1 %.25905, i8 48, i64 %i.aje, i1 false), !tbaa !9
  %scevgep2021 = getelementptr i8, ptr %.25905, i64 1
  %i.ajf = add i32 %.12, -1
  %i.ajg = zext i32 %i.ajf to i64
  %scevgep2022 = getelementptr i8, ptr %scevgep2021, i64 %i.ajg
  br label %._crit_edge1757

.lr.ph1756.split:                                 ; preds = %.lr.ph1756.split.prol.loopexit, %.lr.ph1756.split
  %.131754 = phi i32 [ %i.ajn, %.lr.ph1756.split ], [ %.131754.unr, %.lr.ph1756.split.prol.loopexit ]
  %.137191753 = phi i32 [ %spec.select1227.1, %.lr.ph1756.split ], [ %.137191753.unr, %.lr.ph1756.split.prol.loopexit ] ; 2 uses
  %.269061752 = phi ptr [ %.27907.1, %.lr.ph1756.split ], [ %.269061752.unr, %.lr.ph1756.split.prol.loopexit ] ; 3 uses
  %i.ajh = add i32 %.137191753, 1
  %i.aji = icmp eq i32 %.137191753, %i.ahw        ; 2 uses
  %i.ajj = load i8, ptr @stbsp__comma, align 1
  %spec.select1226 = select i1 %i.aji, i8 %i.ajj, i8 48
  %spec.select1227 = select i1 %i.aji, i32 0, i32 %i.ajh ; 2 uses
  %.27907 = getelementptr inbounds nuw i8, ptr %.269061752, i64 1
  store i8 %spec.select1226, ptr %.269061752, align 1, !tbaa !9
  %i.ajk = add i32 %spec.select1227, 1
  %i.ajl = icmp eq i32 %spec.select1227, %i.ahw   ; 2 uses
  %i.ajm = load i8, ptr @stbsp__comma, align 1
  %spec.select1226.1 = select i1 %i.ajl, i8 %i.ajm, i8 48
  %spec.select1227.1 = select i1 %i.ajl, i32 0, i32 %i.ajk ; 2 uses
  %.27907.1 = getelementptr inbounds nuw i8, ptr %.269061752, i64 2 ; 2 uses
  store i8 %spec.select1226.1, ptr %.27907, align 1, !tbaa !9
  %i.ajn = add nsw i32 %.131754, -2               ; 2 uses
  %.not1151.1 = icmp eq i32 %i.ajn, 0
  br i1 %.not1151.1, label %._crit_edge1757, label %.lr.ph1756.split, !llvm.loop !52

._crit_edge1757:                                  ; preds = %.lr.ph1756.split.prol.loopexit, %.lr.ph1756.split, %.loopexit.thread, %.lr.ph1756.split.us.preheader, %.loopexit
  %.26906.lcssa = phi ptr [ %.25905, %.loopexit ], [ %scevgep2022, %.lr.ph1756.split.us.preheader ], [ %.229021763, %.loopexit.thread ], [ %.27907.lcssa.unr, %.lr.ph1756.split.prol.loopexit ], [ %.27907.1, %.lr.ph1756.split ] ; 3 uses
  %.13719.lcssa = phi i32 [ %.127181766, %.loopexit ], [ %.127181766, %.lr.ph1756.split.us.preheader ], [ %.127181766, %.loopexit.thread ], [ %spec.select1227.lcssa.unr, %.lr.ph1756.split.prol.loopexit ], [ %spec.select1227.1, %.lr.ph1756.split ]
  br i1 %.not1077, label %.thread1313, label %bb.gr

bb.gr:                                            ; preds = %._crit_edge1757
  %i.ajo = ptrtoint ptr %.26906.lcssa to i64
  %i.ajp = sub i64 %i.ajo, %i.aig
  %i.ajq = trunc i64 %i.ajp to i32                ; 3 uses
  %i.ajr = icmp sgt i32 %i.ajq, 510
  br i1 %i.ajr, label %bb.gs, label %.thread1313

bb.gs:                                            ; preds = %bb.gr
  %i.ajs = add nuw nsw i32 %.148411764, %i.ajq    ; 2 uses
  %i.ajt = call ptr %0(ptr noundef %.149451762, ptr noundef %1, i32 noundef %i.ajq) #13 ; 3 uses
  %i.aju = icmp eq ptr %i.ajt, null
  br i1 %i.aju, label %.thread1427, label %.thread1313

.thread1313:                                      ; preds = %bb.gs, %bb.gr, %._crit_edge1757
  %.17948 = phi ptr [ %.149451762, %._crit_edge1757 ], [ %.149451762, %bb.gr ], [ %i.ajt, %bb.gs ] ; 2 uses
  %.30910 = phi ptr [ %.26906.lcssa, %._crit_edge1757 ], [ %.26906.lcssa, %bb.gr ], [ %i.ajt, %bb.gs ] ; 2 uses
  %.17844 = phi i32 [ %.148411764, %._crit_edge1757 ], [ %.148411764, %bb.gr ], [ %i.ajs, %bb.gs ] ; 2 uses
  %i.ajv = icmp sgt i32 %i.aii, 0
  br i1 %i.ajv, label %.lr.ph1768, label %.loopexit1470.loopexit, !llvm.loop !53

.loopexit1470.loopexit:                           ; preds = %.thread1313
  %.pre2045 = load i8, ptr %i.c, align 1, !tbaa !9
  br label %.loopexit1470

.loopexit1470:                                    ; preds = %.loopexit1470.loopexit, %bb.gj
  %i.ajw = phi i8 [ %i.aeo, %bb.gj ], [ %.pre2045, %.loopexit1470.loopexit ] ; 2 uses
  %.19950 = phi ptr [ %.1932, %bb.gj ], [ %.17948, %.loopexit1470.loopexit ] ; 2 uses
  %.32912 = phi ptr [ %.2882, %bb.gj ], [ %.30910, %.loopexit1470.loopexit ] ; 2 uses
  %.19846 = phi i32 [ %.1828, %bb.gj ], [ %.17844, %.loopexit1470.loopexit ] ; 2 uses
  %.8825 = phi i32 [ %.4821, %bb.gj ], [ %.6823, %.loopexit1470.loopexit ] ; 2 uses
  store ptr %i.j, ptr %i.g, align 8, !tbaa !14
  %.not11571779 = icmp eq i8 %i.ajw, 0
  br i1 %.not11571779, label %._crit_edge1785, label %.lr.ph1784

.lr.ph1784:                                       ; preds = %.loopexit1470, %bb.gv
  %i.ajx = phi i8 [ %i.ali, %bb.gv ], [ %i.ajw, %.loopexit1470 ] ; 2 uses
  %.208471782 = phi i32 [ %.24851, %bb.gv ], [ %.19846, %.loopexit1470 ] ; 3 uses
  %.339131781 = phi ptr [ %.38918, %bb.gv ], [ %.32912, %.loopexit1470 ] ; 4 uses
  %.209511780 = phi ptr [ %.24955, %bb.gv ], [ %.19950, %.loopexit1470 ] ; 4 uses
  %i.ajy = sext i8 %i.ajx to i32                  ; 2 uses
  %i.ajz = ptrtoint ptr %.339131781 to i64
  %i.aka = ptrtoint ptr %.209511780 to i64        ; 2 uses
  %.neg1180 = sub i64 %i.aka, %i.ajz
  %.neg1181 = trunc i64 %.neg1180 to i32
  %i.akb = add i32 %.neg1181, 512
  %spec.select1214 = call i32 @llvm.smin.i32(i32 %i.akb, i32 %i.ajy)
  %.1687 = select i1 %.not1077, i32 %i.ajy, i32 %spec.select1214 ; 6 uses
  %i.akc = trunc i32 %.1687 to i8
  %i.akd = sub i8 %i.ajx, %i.akc
  store i8 %i.akd, ptr %i.c, align 1, !tbaa !9
  %.not11821772 = icmp eq i32 %.1687, 0
  br i1 %.not11821772, label %._crit_edge1777, label %.lr.ph1776.preheader

.lr.ph1776.preheader:                             ; preds = %.lr.ph1784
  %xtraiter2542 = and i32 %.1687, 3               ; 2 uses
  %lcmp.mod2543.not = icmp eq i32 %xtraiter2542, 0
  br i1 %lcmp.mod2543.not, label %.lr.ph1776.prol.loopexit, label %.lr.ph1776.prol

.lr.ph1776.prol:                                  ; preds = %.lr.ph1776.preheader, %.lr.ph1776.prol
  %.26881774.prol = phi i32 [ %i.aki, %.lr.ph1776.prol ], [ %.1687, %.lr.ph1776.preheader ]
  %.349141773.prol = phi ptr [ %i.akh, %.lr.ph1776.prol ], [ %.339131781, %.lr.ph1776.preheader ] ; 2 uses
  %prol.iter2544 = phi i32 [ %prol.iter2544.next, %.lr.ph1776.prol ], [ 0, %.lr.ph1776.preheader ]
  %i.ake = load ptr, ptr %i.g, align 8, !tbaa !14 ; 2 uses
  %i.akf = getelementptr inbounds nuw i8, ptr %i.ake, i64 1
  store ptr %i.akf, ptr %i.g, align 8, !tbaa !14
  %i.akg = load i8, ptr %i.ake, align 1, !tbaa !9
  %i.akh = getelementptr inbounds nuw i8, ptr %.349141773.prol, i64 1 ; 3 uses
  store i8 %i.akg, ptr %.349141773.prol, align 1, !tbaa !9
  %i.aki = add nsw i32 %.26881774.prol, -1        ; 2 uses
  %prol.iter2544.next = add i32 %prol.iter2544, 1 ; 2 uses
  %prol.iter2544.cmp.not = icmp eq i32 %prol.iter2544.next, %xtraiter2542
  br i1 %prol.iter2544.cmp.not, label %.lr.ph1776.prol.loopexit, label %.lr.ph1776.prol, !llvm.loop !54

.lr.ph1776.prol.loopexit:                         ; preds = %.lr.ph1776.prol, %.lr.ph1776.preheader
  %.lcssa2490.unr = phi ptr [ poison, %.lr.ph1776.preheader ], [ %i.akh, %.lr.ph1776.prol ]
  %.26881774.unr = phi i32 [ %.1687, %.lr.ph1776.preheader ], [ %i.aki, %.lr.ph1776.prol ]
  %.349141773.unr = phi ptr [ %.339131781, %.lr.ph1776.preheader ], [ %i.akh, %.lr.ph1776.prol ]
  %i.akj = icmp ult i32 %.1687, 4
  br i1 %i.akj, label %._crit_edge1777, label %.lr.ph1776

.lr.ph1776:                                       ; preds = %.lr.ph1776.prol.loopexit, %.lr.ph1776
  %.26881774 = phi i32 [ %i.ala, %.lr.ph1776 ], [ %.26881774.unr, %.lr.ph1776.prol.loopexit ]
  %.349141773 = phi ptr [ %i.akz, %.lr.ph1776 ], [ %.349141773.unr, %.lr.ph1776.prol.loopexit ] ; 5 uses
  %i.akk = load ptr, ptr %i.g, align 8, !tbaa !14 ; 2 uses
  %i.akl = getelementptr inbounds nuw i8, ptr %i.akk, i64 1
  store ptr %i.akl, ptr %i.g, align 8, !tbaa !14
  %i.akm = load i8, ptr %i.akk, align 1, !tbaa !9
  %i.akn = getelementptr inbounds nuw i8, ptr %.349141773, i64 1
  store i8 %i.akm, ptr %.349141773, align 1, !tbaa !9
  %i.ako = load ptr, ptr %i.g, align 8, !tbaa !14 ; 2 uses
  %i.akp = getelementptr inbounds nuw i8, ptr %i.ako, i64 1
  store ptr %i.akp, ptr %i.g, align 8, !tbaa !14
  %i.akq = load i8, ptr %i.ako, align 1, !tbaa !9
  %i.akr = getelementptr inbounds nuw i8, ptr %.349141773, i64 2
  store i8 %i.akq, ptr %i.akn, align 1, !tbaa !9
  %i.aks = load ptr, ptr %i.g, align 8, !tbaa !14 ; 2 uses
  %i.akt = getelementptr inbounds nuw i8, ptr %i.aks, i64 1
  store ptr %i.akt, ptr %i.g, align 8, !tbaa !14
  %i.aku = load i8, ptr %i.aks, align 1, !tbaa !9
  %i.akv = getelementptr inbounds nuw i8, ptr %.349141773, i64 3
  store i8 %i.aku, ptr %i.akr, align 1, !tbaa !9
  %i.akw = load ptr, ptr %i.g, align 8, !tbaa !14 ; 2 uses
  %i.akx = getelementptr inbounds nuw i8, ptr %i.akw, i64 1
  store ptr %i.akx, ptr %i.g, align 8, !tbaa !14
  %i.aky = load i8, ptr %i.akw, align 1, !tbaa !9
  %i.akz = getelementptr inbounds nuw i8, ptr %.349141773, i64 4 ; 2 uses
  store i8 %i.aky, ptr %i.akv, align 1, !tbaa !9
  %i.ala = add nsw i32 %.26881774, -4             ; 2 uses
  %.not1182.3 = icmp eq i32 %i.ala, 0
  br i1 %.not1182.3, label %._crit_edge1777, label %.lr.ph1776, !llvm.loop !55

._crit_edge1777:                                  ; preds = %.lr.ph1776.prol.loopexit, %.lr.ph1776, %.lr.ph1784
  %.34914.lcssa = phi ptr [ %.339131781, %.lr.ph1784 ], [ %.lcssa2490.unr, %.lr.ph1776.prol.loopexit ], [ %i.akz, %.lr.ph1776 ] ; 3 uses
  br i1 %.not1077, label %bb.gv, label %bb.gt
end_hunk_2
begin_hunk_3_@stbsp_vsprintfcb:bb.a
  store <16 x i8> %wide.load2374, ptr %i.amf, align 1, !tbaa !9
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.amg = icmp eq i64 %index.next, %n.vec
  br i1 %i.amg, label %middle.block, label %vector.body, !llvm.loop !58

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.alx
  br i1 %cmp.n, label %._crit_edge1802, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.alz, 0
  br i1 %min.epilog.iters.check, label %.lr.ph1801.preheader, label %vec.epilog.ph, !prof !74

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec2375 = and i64 %i.alx, 4294967292         ; 5 uses
  %i.amh = trunc nuw i64 %n.vec2375 to i32
  %i.ami = sub i32 %.2684.lcssa, %i.amh
  %i.amj = getelementptr i8, ptr %.37.lcssa, i64 %n.vec2375 ; 2 uses
  %i.amk = getelementptr i8, ptr %.40920.lcssa, i64 %n.vec2375 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index2376 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next2380, %vec.epilog.vector.body ] ; 3 uses
  %next.gep2377 = getelementptr i8, ptr %.37.lcssa, i64 %index2376
  %next.gep2378 = getelementptr i8, ptr %.40920.lcssa, i64 %index2376
  %wide.load2379 = load <4 x i8>, ptr %next.gep2377, align 1, !tbaa !9
  store <4 x i8> %wide.load2379, ptr %next.gep2378, align 1, !tbaa !9
  %index.next2380 = add nuw i64 %index2376, 4     ; 2 uses
  %i.aml = icmp eq i64 %index.next2380, %n.vec2375
  br i1 %i.aml, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !59

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n2381 = icmp eq i64 %n.vec2375, %i.alx
  br i1 %cmp.n2381, label %._crit_edge1802, label %.lr.ph1801.preheader

.lr.ph1801.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.36851800.ph = phi i32 [ %.2684.lcssa, %iter.check ], [ %i.amb, %vec.epilog.iter.check ], [ %i.ami, %vec.epilog.middle.block ] ; 4 uses
  %.381799.ph = phi ptr [ %.37.lcssa, %iter.check ], [ %i.amc, %vec.epilog.iter.check ], [ %i.amj, %vec.epilog.middle.block ] ; 2 uses
  %.419211798.ph = phi ptr [ %.40920.lcssa, %iter.check ], [ %i.amd, %vec.epilog.iter.check ], [ %i.amk, %vec.epilog.middle.block ] ; 2 uses
  %i.amm = add nsw i32 %.36851800.ph, -1
  %xtraiter2548 = and i32 %.36851800.ph, 7        ; 2 uses
  %lcmp.mod2549.not = icmp eq i32 %xtraiter2548, 0
  br i1 %lcmp.mod2549.not, label %.lr.ph1801.prol.loopexit, label %.lr.ph1801.prol

.lr.ph1801.prol:                                  ; preds = %.lr.ph1801.preheader, %.lr.ph1801.prol
  %.36851800.prol = phi i32 [ %i.amq, %.lr.ph1801.prol ], [ %.36851800.ph, %.lr.ph1801.preheader ]
  %.381799.prol = phi ptr [ %i.amn, %.lr.ph1801.prol ], [ %.381799.ph, %.lr.ph1801.preheader ] ; 2 uses
  %.419211798.prol = phi ptr [ %i.amp, %.lr.ph1801.prol ], [ %.419211798.ph, %.lr.ph1801.preheader ] ; 2 uses
  %prol.iter2550 = phi i32 [ %prol.iter2550.next, %.lr.ph1801.prol ], [ 0, %.lr.ph1801.preheader ]
  %i.amn = getelementptr inbounds nuw i8, ptr %.381799.prol, i64 1 ; 3 uses
  %i.amo = load i8, ptr %.381799.prol, align 1, !tbaa !9
  %i.amp = getelementptr inbounds nuw i8, ptr %.419211798.prol, i64 1 ; 3 uses
  store i8 %i.amo, ptr %.419211798.prol, align 1, !tbaa !9
  %i.amq = add nsw i32 %.36851800.prol, -1        ; 2 uses
  %prol.iter2550.next = add i32 %prol.iter2550, 1 ; 2 uses
  %prol.iter2550.cmp.not = icmp eq i32 %prol.iter2550.next, %xtraiter2548
  br i1 %prol.iter2550.cmp.not, label %.lr.ph1801.prol.loopexit, label %.lr.ph1801.prol, !llvm.loop !60

.lr.ph1801.prol.loopexit:                         ; preds = %.lr.ph1801.prol, %.lr.ph1801.preheader
  %.lcssa2496.unr = phi ptr [ poison, %.lr.ph1801.preheader ], [ %i.amn, %.lr.ph1801.prol ]
  %.lcssa2495.unr = phi ptr [ poison, %.lr.ph1801.preheader ], [ %i.amp, %.lr.ph1801.prol ]
  %.36851800.unr = phi i32 [ %.36851800.ph, %.lr.ph1801.preheader ], [ %i.amq, %.lr.ph1801.prol ]
  %.381799.unr = phi ptr [ %.381799.ph, %.lr.ph1801.preheader ], [ %i.amn, %.lr.ph1801.prol ]
  %.419211798.unr = phi ptr [ %.419211798.ph, %.lr.ph1801.preheader ], [ %i.amp, %.lr.ph1801.prol ]
  %i.amr = icmp ult i32 %i.amm, 7
  br i1 %i.amr, label %._crit_edge1802, label %.lr.ph1801

.lr.ph1793:                                       ; preds = %.lr.ph1793.prol.loopexit, %.lr.ph1793
  %.26841791 = phi i32 [ %i.anq, %.lr.ph1793 ], [ %.26841791.unr, %.lr.ph1793.prol.loopexit ] ; 2 uses
  %.371790 = phi ptr [ %i.anp, %.lr.ph1793 ], [ %.371790.unr, %.lr.ph1793.prol.loopexit ] ; 9 uses
  %.409201789 = phi ptr [ %i.ano, %.lr.ph1793 ], [ %.409201789.unr, %.lr.ph1793.prol.loopexit ] ; 9 uses
  %i.ams = load volatile i32, ptr %.371790, align 4, !tbaa !10
  store volatile i32 %i.ams, ptr %.409201789, align 4, !tbaa !10
  %i.amt = getelementptr inbounds nuw i8, ptr %.409201789, i64 4
  %i.amu = getelementptr inbounds nuw i8, ptr %.371790, i64 4
  %i.amv = load volatile i32, ptr %i.amu, align 4, !tbaa !10
  store volatile i32 %i.amv, ptr %i.amt, align 4, !tbaa !10
  %i.amw = getelementptr inbounds nuw i8, ptr %.409201789, i64 8
  %i.amx = getelementptr inbounds nuw i8, ptr %.371790, i64 8
  %i.amy = load volatile i32, ptr %i.amx, align 4, !tbaa !10
  store volatile i32 %i.amy, ptr %i.amw, align 4, !tbaa !10
  %i.amz = getelementptr inbounds nuw i8, ptr %.409201789, i64 12
  %i.ana = getelementptr inbounds nuw i8, ptr %.371790, i64 12
  %i.anb = load volatile i32, ptr %i.ana, align 4, !tbaa !10
  store volatile i32 %i.anb, ptr %i.amz, align 4, !tbaa !10
  %i.anc = getelementptr inbounds nuw i8, ptr %.409201789, i64 16
  %i.and = getelementptr inbounds nuw i8, ptr %.371790, i64 16
  %i.ane = load volatile i32, ptr %i.and, align 4, !tbaa !10
  store volatile i32 %i.ane, ptr %i.anc, align 4, !tbaa !10
  %i.anf = getelementptr inbounds nuw i8, ptr %.409201789, i64 20
  %i.ang = getelementptr inbounds nuw i8, ptr %.371790, i64 20
  %i.anh = load volatile i32, ptr %i.ang, align 4, !tbaa !10
  store volatile i32 %i.anh, ptr %i.anf, align 4, !tbaa !10
  %i.ani = getelementptr inbounds nuw i8, ptr %.409201789, i64 24
  %i.anj = getelementptr inbounds nuw i8, ptr %.371790, i64 24
  %i.ank = load volatile i32, ptr %i.anj, align 4, !tbaa !10
  store volatile i32 %i.ank, ptr %i.ani, align 4, !tbaa !10
  %i.anl = getelementptr inbounds nuw i8, ptr %.409201789, i64 28
  %i.anm = getelementptr inbounds nuw i8, ptr %.371790, i64 28
  %i.ann = load volatile i32, ptr %i.anm, align 4, !tbaa !10
  store volatile i32 %i.ann, ptr %i.anl, align 4, !tbaa !10
  %i.ano = getelementptr inbounds nuw i8, ptr %.409201789, i64 32 ; 2 uses
  %i.anp = getelementptr inbounds nuw i8, ptr %.371790, i64 32 ; 2 uses
  %i.anq = add nsw i32 %.26841791, -32            ; 2 uses
  %i.anr = icmp sgt i32 %.26841791, 35
  br i1 %i.anr, label %.lr.ph1793, label %.preheader1453, !llvm.loop !61

.lr.ph1801:                                       ; preds = %.lr.ph1801.prol.loopexit, %.lr.ph1801
  %.36851800 = phi i32 [ %i.aoq, %.lr.ph1801 ], [ %.36851800.unr, %.lr.ph1801.prol.loopexit ]
  %.381799 = phi ptr [ %i.aon, %.lr.ph1801 ], [ %.381799.unr, %.lr.ph1801.prol.loopexit ] ; 9 uses
  %.419211798 = phi ptr [ %i.aop, %.lr.ph1801 ], [ %.419211798.unr, %.lr.ph1801.prol.loopexit ] ; 9 uses
  %i.ans = getelementptr inbounds nuw i8, ptr %.381799, i64 1
  %i.ant = load i8, ptr %.381799, align 1, !tbaa !9
  %i.anu = getelementptr inbounds nuw i8, ptr %.419211798, i64 1
  store i8 %i.ant, ptr %.419211798, align 1, !tbaa !9
  %i.anv = getelementptr inbounds nuw i8, ptr %.381799, i64 2
  %i.anw = load i8, ptr %i.ans, align 1, !tbaa !9
  %i.anx = getelementptr inbounds nuw i8, ptr %.419211798, i64 2
  store i8 %i.anw, ptr %i.anu, align 1, !tbaa !9
  %i.any = getelementptr inbounds nuw i8, ptr %.381799, i64 3
  %i.anz = load i8, ptr %i.anv, align 1, !tbaa !9
  %i.aoa = getelementptr inbounds nuw i8, ptr %.419211798, i64 3
  store i8 %i.anz, ptr %i.anx, align 1, !tbaa !9
  %i.aob = getelementptr inbounds nuw i8, ptr %.381799, i64 4
  %i.aoc = load i8, ptr %i.any, align 1, !tbaa !9
  %i.aod = getelementptr inbounds nuw i8, ptr %.419211798, i64 4
  store i8 %i.aoc, ptr %i.aoa, align 1, !tbaa !9
  %i.aoe = getelementptr inbounds nuw i8, ptr %.381799, i64 5
  %i.aof = load i8, ptr %i.aob, align 1, !tbaa !9
  %i.aog = getelementptr inbounds nuw i8, ptr %.419211798, i64 5
  store i8 %i.aof, ptr %i.aod, align 1, !tbaa !9
  %i.aoh = getelementptr inbounds nuw i8, ptr %.381799, i64 6
  %i.aoi = load i8, ptr %i.aoe, align 1, !tbaa !9
  %i.aoj = getelementptr inbounds nuw i8, ptr %.419211798, i64 6
  store i8 %i.aoi, ptr %i.aog, align 1, !tbaa !9
  %i.aok = getelementptr inbounds nuw i8, ptr %.381799, i64 7
  %i.aol = load i8, ptr %i.aoh, align 1, !tbaa !9
  %i.aom = getelementptr inbounds nuw i8, ptr %.419211798, i64 7
  store i8 %i.aol, ptr %i.aoj, align 1, !tbaa !9
  %i.aon = getelementptr inbounds nuw i8, ptr %.381799, i64 8 ; 2 uses
  %i.aoo = load i8, ptr %i.aok, align 1, !tbaa !9
  %i.aop = getelementptr inbounds nuw i8, ptr %.419211798, i64 8 ; 2 uses
  store i8 %i.aoo, ptr %i.aom, align 1, !tbaa !9
  %i.aoq = add nsw i32 %.36851800, -8             ; 2 uses
  %.not1178.7 = icmp eq i32 %i.aoq, 0
  br i1 %.not1178.7, label %._crit_edge1802, label %.lr.ph1801, !llvm.loop !62

._crit_edge1802:                                  ; preds = %.lr.ph1801.prol.loopexit, %.lr.ph1801, %middle.block, %vec.epilog.middle.block, %.preheader1453
  %.41921.lcssa = phi ptr [ %.40920.lcssa, %.preheader1453 ], [ %i.amk, %vec.epilog.middle.block ], [ %i.amd, %middle.block ], [ %.lcssa2495.unr, %.lr.ph1801.prol.loopexit ], [ %i.aop, %.lr.ph1801 ] ; 3 uses
  %.38.lcssa = phi ptr [ %.37.lcssa, %.preheader1453 ], [ %i.amj, %vec.epilog.middle.block ], [ %i.amc, %middle.block ], [ %.lcssa2496.unr, %.lr.ph1801.prol.loopexit ], [ %i.aon, %.lr.ph1801 ]
  br i1 %.not1077, label %bb.gy, label %bb.gw

bb.gw:                                            ; preds = %._crit_edge1802
  %i.aor = ptrtoint ptr %.41921.lcssa to i64
  %i.aos = sub i64 %i.aor, %i.all
  %i.aot = trunc i64 %i.aos to i32                ; 3 uses
  %i.aou = icmp sgt i32 %i.aot, 510
  br i1 %i.aou, label %bb.gx, label %bb.gy

bb.gx:                                            ; preds = %bb.gw
  %i.aov = add nuw nsw i32 %.258521808, %i.aot    ; 2 uses
  %i.aow = call ptr %0(ptr noundef %.259561806, ptr noundef %1, i32 noundef %i.aot) #13 ; 3 uses
  %i.aox = icmp eq ptr %i.aow, null
  br i1 %i.aox, label %.thread1427, label %bb.gy

bb.gy:                                            ; preds = %bb.gx, %bb.gw, %._crit_edge1802
  %.29960 = phi ptr [ %.259561806, %._crit_edge1802 ], [ %.259561806, %bb.gw ], [ %i.aow, %bb.gx ] ; 2 uses
  %.45925 = phi ptr [ %.41921.lcssa, %._crit_edge1802 ], [ %.41921.lcssa, %bb.gw ], [ %i.aow, %bb.gx ] ; 2 uses
  %.29856 = phi i32 [ %.258521808, %._crit_edge1802 ], [ %.258521808, %bb.gw ], [ %i.aov, %bb.gx ] ; 2 uses
  %.not1158 = icmp eq i32 %i.aln, 0
  br i1 %.not1158, label %.preheader1466, label %.lr.ph1812, !llvm.loop !63

.lr.ph1840:                                       ; preds = %.preheader1466, %bb.hb
  %.48011839 = phi i32 [ %i.apb, %bb.hb ], [ %.3800, %.preheader1466 ] ; 3 uses
  %.308571838 = phi i32 [ %.34861, %bb.hb ], [ %.25852.lcssa, %.preheader1466 ] ; 3 uses
  %.469261837 = phi ptr [ %.53, %bb.hb ], [ %.39919.lcssa, %.preheader1466 ] ; 3 uses
  %.309611836 = phi ptr [ %.34965, %bb.hb ], [ %.25956.lcssa, %.preheader1466 ] ; 4 uses
  %i.aoy = ptrtoint ptr %.469261837 to i64        ; 2 uses
  %i.aoz = ptrtoint ptr %.309611836 to i64        ; 2 uses
  %.neg1171 = sub i64 %i.aoz, %i.aoy
  %.neg1172 = trunc i64 %.neg1171 to i32
  %i.apa = add i32 %.neg1172, 512
  %spec.select1216 = call i32 @llvm.smin.i32(i32 %.48011839, i32 %i.apa)
  %.1678 = select i1 %.not1077, i32 %.48011839, i32 %spec.select1216 ; 4 uses
  %i.apb = sub nsw i32 %.48011839, %.1678         ; 2 uses
  %.not11731816 = icmp eq i32 %.1678, 0
  %i.apc = and i64 %i.aoy, 3
  %i.apd = icmp eq i64 %i.apc, 0
  %or.cond12191817 = select i1 %.not11731816, i1 true, i1 %i.apd
  br i1 %or.cond12191817, label %.preheader1452, label %.lr.ph1821

.preheader1452:                                   ; preds = %.lr.ph1821, %.lr.ph1840
  %.47927.lcssa = phi ptr [ %.469261837, %.lr.ph1840 ], [ %i.apn, %.lr.ph1821 ] ; 3 uses
  %.2679.lcssa = phi i32 [ %.1678, %.lr.ph1840 ], [ %i.apo, %.lr.ph1821 ] ; 4 uses
  %i.ape = icmp sgt i32 %.2679.lcssa, 3
  br i1 %i.ape, label %.lr.ph1826.preheader, label %.preheader1451

.lr.ph1826.preheader:                             ; preds = %.preheader1452
  %i.apf = call i32 @llvm.usub.sat.i32(i32 %.2679.lcssa, i32 7)
  %i.apg = add nuw i32 %i.apf, 3                  ; 2 uses
  %i.aph = and i32 %i.apg, 2147483644
  %i.api = zext nneg i32 %i.aph to i64            ; 2 uses
  %i.apj = add nuw nsw i64 %i.api, 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %.47927.lcssa, i8 48, i64 %i.apj, i1 false), !tbaa !10
  %scevgep2024 = getelementptr i8, ptr %.47927.lcssa, i64 4
  %scevgep2026 = getelementptr i8, ptr %scevgep2024, i64 %i.api
  %i.apk = add nsw i32 %.2679.lcssa, -4
  %i.apl = and i32 %i.apg, -4
  %i.apm = sub nsw i32 %i.apk, %i.apl
  br label %.preheader1451

.lr.ph1821:                                       ; preds = %.lr.ph1840, %.lr.ph1821
  %.26791819 = phi i32 [ %i.apo, %.lr.ph1821 ], [ %.1678, %.lr.ph1840 ]
  %.479271818 = phi ptr [ %i.apn, %.lr.ph1821 ], [ %.469261837, %.lr.ph1840 ] ; 2 uses
  %i.apn = getelementptr inbounds nuw i8, ptr %.479271818, i64 1 ; 3 uses
  store i8 48, ptr %.479271818, align 1, !tbaa !9
  %i.apo = add nsw i32 %.26791819, -1             ; 3 uses
  %.not1173 = icmp eq i32 %i.apo, 0
  %i.app = ptrtoint ptr %i.apn to i64
  %i.apq = and i64 %i.app, 3
  %i.apr = icmp eq i64 %i.apq, 0
  %or.cond1219 = select i1 %.not1173, i1 true, i1 %i.apr
  br i1 %or.cond1219, label %.preheader1452, label %.lr.ph1821, !llvm.loop !64

.preheader1451:                                   ; preds = %.lr.ph1826.preheader, %.preheader1452
  %.48928.lcssa = phi ptr [ %.47927.lcssa, %.preheader1452 ], [ %scevgep2026, %.lr.ph1826.preheader ] ; 3 uses
  %.3680.lcssa = phi i32 [ %.2679.lcssa, %.preheader1452 ], [ %i.apm, %.lr.ph1826.preheader ] ; 3 uses
  %.not11741829 = icmp eq i32 %.3680.lcssa, 0
  br i1 %.not11741829, label %._crit_edge1833, label %.lr.ph1832.preheader

.lr.ph1832.preheader:                             ; preds = %.preheader1451
  %i.aps = zext i32 %.3680.lcssa to i64
  call void @llvm.memset.p0.i64(ptr align 1 %.48928.lcssa, i8 48, i64 %i.aps, i1 false), !tbaa !9
  %scevgep2027 = getelementptr i8, ptr %.48928.lcssa, i64 1
  %i.apt = add i32 %.3680.lcssa, -1
  %i.apu = zext i32 %i.apt to i64
  %scevgep2028 = getelementptr i8, ptr %scevgep2027, i64 %i.apu
  br label %._crit_edge1833

._crit_edge1833:                                  ; preds = %.lr.ph1832.preheader, %.preheader1451
  %.49929.lcssa = phi ptr [ %.48928.lcssa, %.preheader1451 ], [ %scevgep2028, %.lr.ph1832.preheader ] ; 3 uses
  br i1 %.not1077, label %bb.hb, label %bb.gz

bb.gz:                                            ; preds = %._crit_edge1833
  %i.apv = ptrtoint ptr %.49929.lcssa to i64
  %i.apw = sub i64 %i.apv, %i.aoz
  %i.apx = trunc i64 %i.apw to i32                ; 3 uses
  %i.apy = icmp sgt i32 %i.apx, 510
  br i1 %i.apy, label %bb.ha, label %bb.hb

bb.ha:                                            ; preds = %bb.gz
  %i.apz = add nuw nsw i32 %.308571838, %i.apx    ; 2 uses
  %i.aqa = call ptr %0(ptr noundef %.309611836, ptr noundef %1, i32 noundef %i.apx) #13 ; 3 uses
  %i.aqb = icmp eq ptr %i.aqa, null
  br i1 %i.aqb, label %.thread1427, label %bb.hb

bb.hb:                                            ; preds = %bb.ha, %bb.gz, %._crit_edge1833
  %.34965 = phi ptr [ %.309611836, %._crit_edge1833 ], [ %.309611836, %bb.gz ], [ %i.aqa, %bb.ha ] ; 2 uses
  %.53 = phi ptr [ %.49929.lcssa, %._crit_edge1833 ], [ %.49929.lcssa, %bb.gz ], [ %i.aqa, %bb.ha ] ; 2 uses
  %.34861 = phi i32 [ %.308571838, %._crit_edge1833 ], [ %.308571838, %bb.gz ], [ %i.apz, %bb.ha ] ; 2 uses
  %.not1159 = icmp eq i32 %i.apb, 0
  br i1 %.not1159, label %._crit_edge1841, label %.lr.ph1840, !llvm.loop !65

._crit_edge1841:                                  ; preds = %bb.hb, %.preheader1466
  %.30961.lcssa = phi ptr [ %.25956.lcssa, %.preheader1466 ], [ %.34965, %bb.hb ] ; 2 uses
  %.46926.lcssa = phi ptr [ %.39919.lcssa, %.preheader1466 ], [ %.53, %bb.hb ] ; 2 uses
  %.30857.lcssa = phi i32 [ %.25852.lcssa, %.preheader1466 ], [ %.34861, %bb.hb ] ; 2 uses
  store ptr %i.s, ptr %i.g, align 8, !tbaa !14
  %i.aqc = load i8, ptr %i.d, align 1, !tbaa !9   ; 2 uses
  %.not11601852 = icmp eq i8 %i.aqc, 0
  br i1 %.not11601852, label %._crit_edge1858, label %.lr.ph1857

.lr.ph1857:                                       ; preds = %._crit_edge1841, %bb.he
  %i.aqd = phi i8 [ %i.aro, %bb.he ], [ %i.aqc, %._crit_edge1841 ] ; 2 uses
  %.358621855 = phi i32 [ %.39, %bb.he ], [ %.30857.lcssa, %._crit_edge1841 ] ; 3 uses
  %.541854 = phi ptr [ %.59, %bb.he ], [ %.46926.lcssa, %._crit_edge1841 ] ; 4 uses
  %.359661853 = phi ptr [ %.39970, %bb.he ], [ %.30961.lcssa, %._crit_edge1841 ] ; 4 uses
  %i.aqe = sext i8 %i.aqd to i32                  ; 2 uses
  %i.aqf = ptrtoint ptr %.541854 to i64
  %i.aqg = ptrtoint ptr %.359661853 to i64        ; 2 uses
  %.neg1167 = sub i64 %i.aqg, %i.aqf
  %.neg1168 = trunc i64 %.neg1167 to i32
  %i.aqh = add i32 %.neg1168, 512
  %spec.select1220 = call i32 @llvm.smin.i32(i32 %i.aqh, i32 %i.aqe)
  %.1675 = select i1 %.not1077, i32 %i.aqe, i32 %spec.select1220 ; 6 uses
  %i.aqi = trunc i32 %.1675 to i8
  %i.aqj = sub i8 %i.aqd, %i.aqi
  store i8 %i.aqj, ptr %i.d, align 1, !tbaa !9
  %.not11691845 = icmp eq i32 %.1675, 0
  br i1 %.not11691845, label %._crit_edge1850, label %.lr.ph1849.preheader

.lr.ph1849.preheader:                             ; preds = %.lr.ph1857
  %xtraiter2551 = and i32 %.1675, 3               ; 2 uses
  %lcmp.mod2552.not = icmp eq i32 %xtraiter2551, 0
  br i1 %lcmp.mod2552.not, label %.lr.ph1849.prol.loopexit, label %.lr.ph1849.prol

.lr.ph1849.prol:                                  ; preds = %.lr.ph1849.preheader, %.lr.ph1849.prol
  %.26761847.prol = phi i32 [ %i.aqo, %.lr.ph1849.prol ], [ %.1675, %.lr.ph1849.preheader ]
  %.551846.prol = phi ptr [ %i.aqn, %.lr.ph1849.prol ], [ %.541854, %.lr.ph1849.preheader ] ; 2 uses
  %prol.iter2553 = phi i32 [ %prol.iter2553.next, %.lr.ph1849.prol ], [ 0, %.lr.ph1849.preheader ]
  %i.aqk = load ptr, ptr %i.g, align 8, !tbaa !14 ; 2 uses
  %i.aql = getelementptr inbounds nuw i8, ptr %i.aqk, i64 1
  store ptr %i.aql, ptr %i.g, align 8, !tbaa !14
  %i.aqm = load i8, ptr %i.aqk, align 1, !tbaa !9
  %i.aqn = getelementptr inbounds nuw i8, ptr %.551846.prol, i64 1 ; 3 uses
  store i8 %i.aqm, ptr %.551846.prol, align 1, !tbaa !9
  %i.aqo = add nsw i32 %.26761847.prol, -1        ; 2 uses
  %prol.iter2553.next = add i32 %prol.iter2553, 1 ; 2 uses
  %prol.iter2553.cmp.not = icmp eq i32 %prol.iter2553.next, %xtraiter2551
  br i1 %prol.iter2553.cmp.not, label %.lr.ph1849.prol.loopexit, label %.lr.ph1849.prol, !llvm.loop !66

.lr.ph1849.prol.loopexit:                         ; preds = %.lr.ph1849.prol, %.lr.ph1849.preheader
  %.lcssa2501.unr = phi ptr [ poison, %.lr.ph1849.preheader ], [ %i.aqn, %.lr.ph1849.prol ]
  %.26761847.unr = phi i32 [ %.1675, %.lr.ph1849.preheader ], [ %i.aqo, %.lr.ph1849.prol ]
  %.551846.unr = phi ptr [ %.541854, %.lr.ph1849.preheader ], [ %i.aqn, %.lr.ph1849.prol ]
  %i.aqp = icmp ult i32 %.1675, 4
  br i1 %i.aqp, label %._crit_edge1850, label %.lr.ph1849

.lr.ph1849:                                       ; preds = %.lr.ph1849.prol.loopexit, %.lr.ph1849
  %.26761847 = phi i32 [ %i.arg, %.lr.ph1849 ], [ %.26761847.unr, %.lr.ph1849.prol.loopexit ]
  %.551846 = phi ptr [ %i.arf, %.lr.ph1849 ], [ %.551846.unr, %.lr.ph1849.prol.loopexit ] ; 5 uses
  %i.aqq = load ptr, ptr %i.g, align 8, !tbaa !14 ; 2 uses
  %i.aqr = getelementptr inbounds nuw i8, ptr %i.aqq, i64 1
  store ptr %i.aqr, ptr %i.g, align 8, !tbaa !14
  %i.aqs = load i8, ptr %i.aqq, align 1, !tbaa !9
  %i.aqt = getelementptr inbounds nuw i8, ptr %.551846, i64 1
  store i8 %i.aqs, ptr %.551846, align 1, !tbaa !9
  %i.aqu = load ptr, ptr %i.g, align 8, !tbaa !14 ; 2 uses
  %i.aqv = getelementptr inbounds nuw i8, ptr %i.aqu, i64 1
  store ptr %i.aqv, ptr %i.g, align 8, !tbaa !14
  %i.aqw = load i8, ptr %i.aqu, align 1, !tbaa !9
  %i.aqx = getelementptr inbounds nuw i8, ptr %.551846, i64 2
  store i8 %i.aqw, ptr %i.aqt, align 1, !tbaa !9
  %i.aqy = load ptr, ptr %i.g, align 8, !tbaa !14 ; 2 uses
  %i.aqz = getelementptr inbounds nuw i8, ptr %i.aqy, i64 1
  store ptr %i.aqz, ptr %i.g, align 8, !tbaa !14
  %i.ara = load i8, ptr %i.aqy, align 1, !tbaa !9
  %i.arb = getelementptr inbounds nuw i8, ptr %.551846, i64 3
  store i8 %i.ara, ptr %i.aqx, align 1, !tbaa !9
  %i.arc = load ptr, ptr %i.g, align 8, !tbaa !14 ; 2 uses
  %i.ard = getelementptr inbounds nuw i8, ptr %i.arc, i64 1
  store ptr %i.ard, ptr %i.g, align 8, !tbaa !14
  %i.are = load i8, ptr %i.arc, align 1, !tbaa !9
  %i.arf = getelementptr inbounds nuw i8, ptr %.551846, i64 4 ; 2 uses
  store i8 %i.are, ptr %i.arb, align 1, !tbaa !9
  %i.arg = add nsw i32 %.26761847, -4             ; 2 uses
  %.not1169.3 = icmp eq i32 %i.arg, 0
  br i1 %.not1169.3, label %._crit_edge1850, label %.lr.ph1849, !llvm.loop !67

._crit_edge1850:                                  ; preds = %.lr.ph1849.prol.loopexit, %.lr.ph1849, %.lr.ph1857
  %.55.lcssa = phi ptr [ %.541854, %.lr.ph1857 ], [ %.lcssa2501.unr, %.lr.ph1849.prol.loopexit ], [ %i.arf, %.lr.ph1849 ] ; 3 uses
  br i1 %.not1077, label %bb.he, label %bb.hc

bb.hc:                                            ; preds = %._crit_edge1850
  %i.arh = ptrtoint ptr %.55.lcssa to i64
  %i.ari = sub i64 %i.arh, %i.aqg
  %i.arj = trunc i64 %i.ari to i32                ; 3 uses
  %i.ark = icmp sgt i32 %i.arj, 510
  br i1 %i.ark, label %bb.hd, label %bb.he

bb.hd:                                            ; preds = %bb.hc
  %i.arl = add nuw nsw i32 %.358621855, %i.arj    ; 2 uses
  %i.arm = call ptr %0(ptr noundef %.359661853, ptr noundef %1, i32 noundef %i.arj) #13 ; 3 uses
  %i.arn = icmp eq ptr %i.arm, null
  br i1 %i.arn, label %.thread1427, label %bb.he

bb.he:                                            ; preds = %bb.hd, %bb.hc, %._crit_edge1850
  %.39970 = phi ptr [ %.359661853, %._crit_edge1850 ], [ %.359661853, %bb.hc ], [ %i.arm, %bb.hd ] ; 2 uses
  %.59 = phi ptr [ %.55.lcssa, %._crit_edge1850 ], [ %.55.lcssa, %bb.hc ], [ %i.arm, %bb.hd ] ; 2 uses
  %.39 = phi i32 [ %.358621855, %._crit_edge1850 ], [ %.358621855, %bb.hc ], [ %i.arl, %bb.hd ] ; 2 uses
  %i.aro = load i8, ptr %i.d, align 1, !tbaa !9   ; 2 uses
  %.not1160 = icmp eq i8 %i.aro, 0
  br i1 %.not1160, label %._crit_edge1858, label %.lr.ph1857, !llvm.loop !68

._crit_edge1858:                                  ; preds = %bb.he, %._crit_edge1841
  %.35966.lcssa = phi ptr [ %.30961.lcssa, %._crit_edge1841 ], [ %.39970, %bb.he ] ; 2 uses
  %.54.lcssa = phi ptr [ %.46926.lcssa, %._crit_edge1841 ], [ %.59, %bb.he ] ; 2 uses
  %.35862.lcssa = phi i32 [ %.30857.lcssa, %._crit_edge1841 ], [ %.39, %bb.he ] ; 2 uses
  %i.arp = trunc i32 %.18796 to i1
  %i.arq = icmp sgt i32 %.88252162, 0
  %or.cond44 = select i1 %i.arp, i1 %i.arq, i1 false
  br i1 %or.cond44, label %.preheader1463, label %.backedge2429

bb.hf:                                            ; preds = %bb.hh, %._crit_edge1879, %bb.hg
  %.44975.ph = phi ptr [ %.40971, %bb.hg ], [ %.40971, %._crit_edge1879 ], [ %i.ast, %bb.hh ] ; 2 uses
  %.67.ph = phi ptr [ %.63.lcssa, %bb.hg ], [ %.63.lcssa, %._crit_edge1879 ], [ %i.ast, %bb.hh ] ; 2 uses
  %.44.ph = phi i32 [ %.40, %bb.hg ], [ %.40, %._crit_edge1879 ], [ %i.ass, %bb.hh ] ; 2 uses
  %.old43.not = icmp eq i32 %i.aru, 0
  br i1 %.old43.not, label %.backedge2429, label %.preheader1463

.preheader1463:                                   ; preds = %._crit_edge1858, %bb.hf
  %.40971 = phi ptr [ %.44975.ph, %bb.hf ], [ %.35966.lcssa, %._crit_edge1858 ] ; 4 uses
  %.60 = phi ptr [ %.67.ph, %bb.hf ], [ %.54.lcssa, %._crit_edge1858 ] ; 3 uses
  %.40 = phi i32 [ %.44.ph, %bb.hf ], [ %.35862.lcssa, %._crit_edge1858 ] ; 3 uses
  %.9826 = phi i32 [ %i.aru, %bb.hf ], [ %.88252162, %._crit_edge1858 ] ; 3 uses
  %i.arr = ptrtoint ptr %.60 to i64               ; 2 uses
  %i.ars = ptrtoint ptr %.40971 to i64            ; 2 uses
  %.neg1162 = sub i64 %i.ars, %i.arr
  %.neg1163 = trunc i64 %.neg1162 to i32
  %i.art = add i32 %.neg1163, 512
  %spec.select1221 = call i32 @llvm.smin.i32(i32 %.9826, i32 %i.art)
  %.1 = select i1 %.not1077, i32 %.9826, i32 %spec.select1221 ; 4 uses
  %i.aru = sub nsw i32 %.9826, %.1                ; 2 uses
  %.not11641862 = icmp eq i32 %.1, 0
  %i.arv = and i64 %i.arr, 3
  %i.arw = icmp eq i64 %i.arv, 0
  %or.cond12241863 = select i1 %.not11641862, i1 true, i1 %i.arw
  br i1 %or.cond12241863, label %.preheader1450, label %.lr.ph1867

.preheader1450:                                   ; preds = %.lr.ph1867, %.preheader1463
  %.61.lcssa = phi ptr [ %.60, %.preheader1463 ], [ %i.asg, %.lr.ph1867 ] ; 3 uses
  %.2.lcssa = phi i32 [ %.1, %.preheader1463 ], [ %i.ash, %.lr.ph1867 ] ; 4 uses
  %i.arx = icmp sgt i32 %.2.lcssa, 3
  br i1 %i.arx, label %.lr.ph1872.preheader, label %.preheader

.lr.ph1872.preheader:                             ; preds = %.preheader1450
  %i.ary = call i32 @llvm.usub.sat.i32(i32 %.2.lcssa, i32 7)
  %i.arz = add nuw i32 %i.ary, 3                  ; 2 uses
  %i.asa = and i32 %i.arz, 2147483644
  %i.asb = zext nneg i32 %i.asa to i64            ; 2 uses
  %i.asc = add nuw nsw i64 %i.asb, 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %.61.lcssa, i8 32, i64 %i.asc, i1 false), !tbaa !10
  %scevgep2030 = getelementptr i8, ptr %.61.lcssa, i64 4
  %scevgep2032 = getelementptr i8, ptr %scevgep2030, i64 %i.asb
  %i.asd = add nsw i32 %.2.lcssa, -4
  %i.ase = and i32 %i.arz, -4
  %i.asf = sub nsw i32 %i.asd, %i.ase
  br label %.preheader

.lr.ph1867:                                       ; preds = %.preheader1463, %.lr.ph1867
  %.21865 = phi i32 [ %i.ash, %.lr.ph1867 ], [ %.1, %.preheader1463 ]
  %.611864 = phi ptr [ %i.asg, %.lr.ph1867 ], [ %.60, %.preheader1463 ] ; 2 uses
  %i.asg = getelementptr inbounds nuw i8, ptr %.611864, i64 1 ; 3 uses
  store i8 32, ptr %.611864, align 1, !tbaa !9
  %i.ash = add nsw i32 %.21865, -1                ; 3 uses
  %.not1164 = icmp eq i32 %i.ash, 0
  %i.asi = ptrtoint ptr %i.asg to i64
  %i.asj = and i64 %i.asi, 3
  %i.ask = icmp eq i64 %i.asj, 0
  %or.cond1224 = select i1 %.not1164, i1 true, i1 %i.ask
  br i1 %or.cond1224, label %.preheader1450, label %.lr.ph1867, !llvm.loop !69

.preheader:                                       ; preds = %.lr.ph1872.preheader, %.preheader1450
  %.62.lcssa = phi ptr [ %.61.lcssa, %.preheader1450 ], [ %scevgep2032, %.lr.ph1872.preheader ] ; 3 uses
  %.3.lcssa = phi i32 [ %.2.lcssa, %.preheader1450 ], [ %i.asf, %.lr.ph1872.preheader ] ; 3 uses
  %.not11651875 = icmp eq i32 %.3.lcssa, 0
  br i1 %.not11651875, label %._crit_edge1879, label %.lr.ph1878.preheader

.lr.ph1878.preheader:                             ; preds = %.preheader
  %i.asl = zext i32 %.3.lcssa to i64
  call void @llvm.memset.p0.i64(ptr align 1 %.62.lcssa, i8 32, i64 %i.asl, i1 false), !tbaa !9
  %scevgep2033 = getelementptr i8, ptr %.62.lcssa, i64 1
  %i.asm = add i32 %.3.lcssa, -1
  %i.asn = zext i32 %i.asm to i64
  %scevgep2034 = getelementptr i8, ptr %scevgep2033, i64 %i.asn
  br label %._crit_edge1879

._crit_edge1879:                                  ; preds = %.lr.ph1878.preheader, %.preheader
  %.63.lcssa = phi ptr [ %.62.lcssa, %.preheader ], [ %scevgep2034, %.lr.ph1878.preheader ] ; 3 uses
  br i1 %.not1077, label %bb.hf, label %bb.hg

bb.hg:                                            ; preds = %._crit_edge1879
  %i.aso = ptrtoint ptr %.63.lcssa to i64
  %i.asp = sub i64 %i.aso, %i.ars
  %i.asq = trunc i64 %i.asp to i32                ; 3 uses
  %i.asr = icmp sgt i32 %i.asq, 510
  br i1 %i.asr, label %bb.hh, label %bb.hf

bb.hh:                                            ; preds = %bb.hg
  %i.ass = add nuw nsw i32 %.40, %i.asq           ; 2 uses
  %i.ast = call ptr %0(ptr noundef %.40971, ptr noundef %1, i32 noundef %i.asq) #13 ; 3 uses
  %i.asu = icmp eq ptr %i.ast, null
  br i1 %i.asu, label %.thread1427, label %bb.hf, !llvm.loop !70

bb.hi:                                            ; preds = %bb.ai
  store i8 %i.ff, ptr %i.u, align 1, !tbaa !9
  store i32 1, ptr %i.e, align 4, !tbaa !10
  store i8 0, ptr %i.c, align 1, !tbaa !9
  store i8 0, ptr %i.d, align 1, !tbaa !9
  store i32 0, ptr %i.f, align 4, !tbaa !10
  br label %bb.gg

bb.hj:                                            ; preds = %thread-pre-split
  br i1 %.not1077, label %bb.hk, label %bb.hl

bb.hk:                                            ; preds = %bb.hj
  store i8 0, ptr %.3883, align 1, !tbaa !9
  br label %.thread1427

bb.hl:                                            ; preds = %bb.hj
  %i.asv = ptrtoint ptr %.3883 to i64
  %i.asw = ptrtoint ptr %.1932 to i64
  %i.asx = sub i64 %i.asv, %i.asw
  %i.asy = trunc i64 %i.asx to i32                ; 3 uses
  %i.asz = icmp sgt i32 %i.asy, 0
  br i1 %i.asz, label %bb.hm, label %.thread1427

bb.hm:                                            ; preds = %bb.hl
  %i.ata = add nuw nsw i32 %.1828, %i.asy
  %i.atb = call ptr %0(ptr noundef %.1932, ptr noundef %1, i32 noundef %i.asy) #13 ; 2 uses
  br label %.thread1427

.thread1427:                                      ; preds = %bb.e, %bb.gm, %bb.go, %bb.gs, %bb.gu, %bb.gx, %bb.ha, %bb.hd, %bb.hh, %bb.hm, %bb.hl, %bb.hk
  %.49980 = phi ptr [ %.1932, %bb.hl ], [ %.1932, %bb.hk ], [ %i.atb, %bb.hm ], [ null, %bb.go ], [ null, %bb.gm ], [ null, %bb.gs ], [ null, %bb.gu ], [ null, %bb.gx ], [ null, %bb.ha ], [ null, %bb.hd ], [ null, %bb.hh ], [ null, %bb.e ]
  %.72 = phi ptr [ %.3883, %bb.hl ], [ %.3883, %bb.hk ], [ %i.atb, %bb.hm ], [ null, %bb.go ], [ null, %bb.gm ], [ null, %bb.gs ], [ null, %bb.gu ], [ null, %bb.gx ], [ null, %bb.ha ], [ null, %bb.hd ], [ null, %bb.hh ], [ null, %bb.e ]
  %.49 = phi i32 [ %.1828, %bb.hl ], [ %.1828, %bb.hk ], [ %i.ata, %bb.hm ], [ %i.ahs, %bb.go ], [ %i.agg, %bb.gm ], [ %i.ajs, %bb.gs ], [ %i.alf, %bb.gu ], [ %i.aov, %bb.gx ], [ %i.apz, %bb.ha ], [ %i.arl, %bb.hd ], [ %i.ass, %bb.hh ], [ %i.bf, %bb.e ]
  %i.atc = ptrtoint ptr %.72 to i64
  %i.atd = ptrtoint ptr %.49980 to i64
  %i.ate = sub i64 %i.atc, %i.atd
  %i.atf = trunc i64 %i.ate to i32
  %i.atg = add nsw i32 %.49, %i.atf
  ret i32 %i.atg
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define range(i32 0, 2) i32 @stbsp__real_to_parts(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1, double noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = bitcast double %2 to i64                 ; 3 uses
  %i.b = and i64 %i.a, 4503599627370495
  store i64 %i.b, ptr %0, align 8, !tbaa !21
  %i.c = lshr i64 %i.a, 52
  %i.d = trunc nuw nsw i64 %i.c to i32
  %i.e = and i32 %i.d, 2047
  %i.f = add nsw i32 %i.e, -1023
  store i32 %i.f, ptr %1, align 4, !tbaa !10
  %i.g = lshr i64 %i.a, 63
  %i.h = trunc nuw nsw i64 %i.g to i32
  ret i32 %i.h
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @stbsp__real_to_str(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) %3, double noundef %4, i32 noundef %5) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca double, align 8                   ; 5 uses
  %i.b = alloca double, align 8                   ; 5 uses
  %i.c = bitcast double %4 to i64                 ; 5 uses
  %i.d = lshr i64 %i.c, 52
  %i.e = trunc nuw nsw i64 %i.d to i32
  %i.f = and i32 %i.e, 2047                       ; 2 uses
  %i.g = tail call double @llvm.fabs.f64(double %4)
  switch i32 %i.f, label %.loopexit132 [
    i32 2047, label %bb.b
    i32 0, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.h = and i64 %i.c, 4503599627370495
  %.not120 = icmp eq i64 %i.h, 0
  %i.i = select i1 %.not120, ptr @.str.4, ptr @.str.3
  store ptr %i.i, ptr %0, align 8, !tbaa !14
  store i32 28672, ptr %3, align 4, !tbaa !10
  br label %bb.s

bb.c:                                             ; preds = %bb.a
  %i.j = fcmp oeq double %4, 0.000000e+00
  br i1 %i.j, label %bb.d, label %.preheader131

.preheader131:                                    ; preds = %bb.c
  %i.k = and i64 %i.c, 2251799813685248
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %.lr.ph, label %.loopexit132.thread

.loopexit132.thread:                              ; preds = %.preheader131
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr %3, align 4, !tbaa !10
  store ptr %2, ptr %0, align 8, !tbaa !14
  store i8 48, ptr %2, align 1, !tbaa !9
  br label %bb.s

.lr.ph:                                           ; preds = %.preheader131, %.lr.ph
  %.085139 = phi i32 [ %i.m, %.lr.ph ], [ 0, %.preheader131 ]
  %.087138 = phi i64 [ %i.n, %.lr.ph ], [ 2251799813685248, %.preheader131 ]
  %i.m = add nsw i32 %.085139, -1                 ; 2 uses
  %i.n = lshr i64 %.087138, 1                     ; 2 uses
  %i.o = and i64 %i.n, %i.c
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %.lr.ph, label %.loopexit132, !llvm.loop !75

.loopexit132:                                     ; preds = %.lr.ph, %bb.a
  %.186 = phi i32 [ %i.f, %bb.a ], [ %i.m, %.lr.ph ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.q = add nsw i32 %.186, -1023                 ; 2 uses
  %i.r = icmp slt i32 %.186, 1023
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.loopexit132.thread, %.loopexit132
  %i.s = phi i32 [ -1023, %.loopexit132.thread ], [ %i.q, %.loopexit132 ]
  %.neg129 = mul i32 %i.s, -617
  %i.t = lshr i32 %.neg129, 11
  %.neg = sub nsw i32 0, %i.t
  br label %bb.g

bb.f:                                             ; preds = %.loopexit132
  %i.u = mul nuw nsw i32 %i.q, 1233
  %i.v = lshr i32 %i.u, 12
  %i.w = add nuw nsw i32 %i.v, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.x = phi i32 [ %.neg, %bb.e ], [ %i.w, %bb.f ] ; 2 uses
  %i.y = sub nsw i32 18, %i.x
  call void @stbsp__raise_to_power10(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, double noundef %i.g, i32 noundef %i.y)
  %i.z = load double, ptr %i.a, align 8, !tbaa !16 ; 4 uses
  %i.aa = fptosi double %i.z to i64               ; 2 uses
  %i.ab = sitofp i64 %i.aa to double              ; 2 uses
  %i.ac = fsub double %i.z, %i.ab                 ; 3 uses
  %i.ad = fsub double %i.ac, %i.z                 ; 2 uses
  %i.ae = fsub double %i.ac, %i.ad
  %i.af = fsub double %i.z, %i.ae
  %i.ag = fadd double %i.ad, %i.ab
  %i.ah = fsub double %i.af, %i.ag
  %i.ai = fadd double %i.ac, %i.ah
  %i.aj = load double, ptr %i.b, align 8, !tbaa !16
  %i.ak = fadd double %i.aj, %i.ai
  %i.al = fptosi double %i.ak to i64
  %i.am = add nsw i64 %i.al, %i.aa                ; 7 uses
  %i.an = icmp ugt i64 %i.am, 999999999999999999
  %i.ao = zext i1 %i.an to i32
  %spec.select = add nsw i32 %i.x, %i.ao          ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.ap = and i32 %5, 134217727
  %i.aq = add nuw nsw i32 %i.ap, 1
  %i.ar = add i32 %spec.select, %5
  %.not111130 = icmp slt i32 %5, 0
  %i.as = select i1 %.not111130, i32 %i.aq, i32 %i.ar ; 3 uses
  %i.at = icmp ult i32 %i.as, 24
  br i1 %i.at, label %bb.h, label %thread-pre-split

bb.h:                                             ; preds = %bb.g
  %i.au = icmp ugt i64 %i.am, 999999999
  %i.av = select i1 %i.au, i64 10, i64 1
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %bb.h
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.j ], [ %i.av, %bb.h ] ; 3 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr @stbsp__powten, i64 %indvars.iv
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !21 ; 2 uses
  %.not112 = icmp ult i64 %i.am, %i.ax
  br i1 %.not112, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ay = icmp eq i64 %indvars.iv.next, 20
  br i1 %i.ay, label %thread-pre-split, label %bb.i, !llvm.loop !76

bb.k:                                             ; preds = %bb.i
  %i.az = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.ba = icmp ult i32 %i.as, %i.az
  br i1 %i.ba, label %bb.l, label %thread-pre-split

bb.l:                                             ; preds = %bb.k
  %i.bb = sub nuw i32 %i.az, %i.as
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr @stbsp__powten, i64 %i.bc
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !21 ; 2 uses
  %i.bf = lshr i64 %i.be, 1
  %i.bg = add i64 %i.bf, %i.am                    ; 2 uses
  %.not113 = icmp uge i64 %i.bg, %i.ax
  %i.bh = zext i1 %.not113 to i32
  %spec.select121 = add nsw i32 %spec.select, %i.bh
  %i.bi = udiv i64 %i.bg, %i.be
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.j, %bb.k, %bb.g, %bb.l
  %.0186 = phi i64 [ %i.bi, %bb.l ], [ %i.am, %bb.k ], [ %i.am, %bb.g ], [ %i.am, %bb.j ] ; 4 uses
  %.494 = phi i32 [ %spec.select121, %bb.l ], [ %spec.select, %bb.k ], [ %spec.select, %bb.g ], [ %spec.select, %bb.j ]
  %.not114 = icmp eq i64 %.0186, 0
  br i1 %.not114, label %.loopexit, label %thread-pre-split122

thread-pre-split122:                              ; preds = %thread-pre-split
  %i.bj = icmp slt i64 %.0186, 4294967296
  br i1 %i.bj, label %._crit_edge, label %.lr.ph142

.lr.ph142:                                        ; preds = %thread-pre-split122, %bb.m
  %i.bk = phi i64 [ %i.bm, %bb.m ], [ %.0186, %thread-pre-split122 ] ; 4 uses
  %i.bl = urem i64 %i.bk, 1000
  %i.bm = udiv i64 %i.bk, 1000                    ; 2 uses
  %.not115 = icmp eq i64 %i.bl, 0
  br i1 %.not115, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %.lr.ph142
  %i.bn = icmp samesign ult i64 %i.bk, 4294967296000
  br i1 %i.bn, label %._crit_edge, label %.lr.ph142

._crit_edge:                                      ; preds = %bb.m, %thread-pre-split122
  %.lcssa = phi i64 [ %.0186, %thread-pre-split122 ], [ %i.bm, %bb.m ]
  %i.bo = trunc i64 %.lcssa to i32                ; 3 uses
  %i.bp = urem i32 %i.bo, 1000
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %.lr.ph147, label %._crit_edge148

.lr.ph147:                                        ; preds = %._crit_edge, %.lr.ph147
  %.080145 = phi i32 [ %i.br, %.lr.ph147 ], [ %i.bo, %._crit_edge ]
  %i.br = udiv i32 %.080145, 1000                 ; 3 uses
  %i.bs = urem i32 %i.br, 1000
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %.lr.ph147, label %._crit_edge148, !llvm.loop !77

._crit_edge148:                                   ; preds = %.lr.ph147, %._crit_edge
  %.080.lcssa = phi i32 [ %i.bo, %._crit_edge ], [ %i.br, %.lr.ph147 ]
  %i.bu = zext i32 %.080.lcssa to i64
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph142, %._crit_edge148, %thread-pre-split
  %.1 = phi i64 [ 0, %thread-pre-split ], [ %i.bu, %._crit_edge148 ], [ %i.bk, %.lr.ph142 ]
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 64
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge165, %.loopexit
  %storemerge169 = phi i64 [ %.1, %.loopexit ], [ %storemerge208, %._crit_edge165 ] ; 5 uses
  %.095 = phi i32 [ 0, %.loopexit ], [ %.398.lcssa, %._crit_edge165 ] ; 3 uses
  %.083 = phi ptr [ %i.bv, %.loopexit ], [ %.3.ptr, %._crit_edge165 ] ; 4 uses
  %i.bw = icmp samesign ugt i64 %storemerge169, 99999999
  br i1 %i.bw, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.bx = urem i64 %storemerge169, 100000000      ; 2 uses
  %i.by = udiv i64 %storemerge169, 100000000      ; 2 uses
  %.not116151 = icmp eq i64 %i.bx, 0
  br i1 %.not116151, label %.lr.ph164.preheader, label %.lr.ph156.preheader

.thread:                                          ; preds = %bb.n
  %.not116151206 = icmp eq i64 %storemerge169, 0
  br i1 %.not116151206, label %._crit_edge157.thread.thread, label %.lr.ph156.preheader

.lr.ph156.preheader:                              ; preds = %.thread, %bb.o
  %.0211.in = phi i64 [ %storemerge169, %.thread ], [ %i.bx, %bb.o ]
  %storemerge207 = phi i64 [ 0, %.thread ], [ %i.by, %bb.o ] ; 3 uses
  %.0211 = trunc nuw i64 %.0211.in to i32
  br label %.lr.ph156

.lr.ph156:                                        ; preds = %.lr.ph156.preheader, %.lr.ph156
  %.1154 = phi i32 [ %i.ce, %.lr.ph156 ], [ %.0211, %.lr.ph156.preheader ] ; 3 uses
  %.184.idx153 = phi i64 [ %.184.add, %.lr.ph156 ], [ 0, %.lr.ph156.preheader ]
  %.196152 = phi i32 [ %i.cf, %.lr.ph156 ], [ %.095, %.lr.ph156.preheader ]
  %.184.add = add nsw i64 %.184.idx153, -2        ; 5 uses
  %.ptr118 = getelementptr inbounds i8, ptr %.083, i64 %.184.add
  %i.bz = urem i32 %.1154, 100
  %i.ca = shl nuw nsw i32 %i.bz, 1
  %i.cb = zext nneg i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @stbsp__digitpair, i64 2), i64 %i.cb
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !23
  store i16 %i.cd, ptr %.ptr118, align 2, !tbaa !23
  %i.ce = udiv i32 %.1154, 100
  %i.cf = add nsw i32 %.196152, 2                 ; 4 uses
  %.not116 = icmp ult i32 %.1154, 100
  br i1 %.not116, label %._crit_edge157, label %.lr.ph156, !llvm.loop !78

._crit_edge157:                                   ; preds = %.lr.ph156
  %i.cg = icmp eq i64 %storemerge207, 0
  br i1 %i.cg, label %._crit_edge157.thread.thread, label %.preheader

.preheader:                                       ; preds = %._crit_edge157
  %.not117161 = icmp eq i64 %.184.add, -8
  br i1 %.not117161, label %._crit_edge165, label %.lr.ph164.preheader

.lr.ph164.preheader:                              ; preds = %bb.o, %.preheader
  %storemerge209 = phi i64 [ %storemerge207, %.preheader ], [ %i.by, %bb.o ]
  %.184.idx.lcssa150194202 = phi i64 [ %.184.add, %.preheader ], [ 0, %bb.o ] ; 2 uses
  %.196.lcssa196201 = phi i32 [ %i.cf, %.preheader ], [ %.095, %bb.o ]
  %scevgep = getelementptr i8, ptr %.083, i64 -8
  %i.ch = add nsw i64 %.184.idx.lcssa150194202, 8
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep, i8 48, i64 %i.ch, i1 false), !tbaa !9
  %i.ci = add i32 %.196.lcssa196201, 8
  %i.cj = trunc i64 %.184.idx.lcssa150194202 to i32
  %i.ck = add i32 %i.ci, %i.cj
  br label %._crit_edge165

._crit_edge157.thread.thread:                     ; preds = %.thread, %._crit_edge157
  %.196.lcssa197 = phi i32 [ %.095, %.thread ], [ %i.cf, %._crit_edge157 ] ; 3 uses
  %.184.idx.lcssa150195 = phi i64 [ 0, %.thread ], [ %.184.add, %._crit_edge157 ]
  %.184.ptr.le.le = getelementptr inbounds i8, ptr %.083, i64 %.184.idx.lcssa150195 ; 4 uses
  %.not119 = icmp eq i32 %.196.lcssa197, 0
  br i1 %.not119, label %bb.r, label %bb.p

bb.p:                                             ; preds = %._crit_edge157.thread.thread
  %i.cl = load i8, ptr %.184.ptr.le.le, align 1, !tbaa !9
  %i.cm = icmp eq i8 %i.cl, 48
  br i1 %i.cm, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cn = getelementptr inbounds nuw i8, ptr %.184.ptr.le.le, i64 1
  %i.co = add nsw i32 %.196.lcssa197, -1
  br label %bb.r

._crit_edge165:                                   ; preds = %.lr.ph164.preheader, %.preheader
  %storemerge208 = phi i64 [ %storemerge207, %.preheader ], [ %storemerge209, %.lr.ph164.preheader ]
  %.398.lcssa = phi i32 [ %i.cf, %.preheader ], [ %i.ck, %.lr.ph164.preheader ]
  %.3.ptr = getelementptr inbounds i8, ptr %.083, i64 -8
  br label %bb.n

bb.r:                                             ; preds = %bb.q, %bb.p, %._crit_edge157.thread.thread
  %.499.ph = phi i32 [ 0, %._crit_edge157.thread.thread ], [ %.196.lcssa197, %bb.p ], [ %i.co, %bb.q ]
  %.4.ph = phi ptr [ %.184.ptr.le.le, %._crit_edge157.thread.thread ], [ %.184.ptr.le.le, %bb.p ], [ %i.cn, %bb.q ]
  store i32 %.494, ptr %3, align 4, !tbaa !10
  store ptr %.4.ph, ptr %0, align 8, !tbaa !14
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.d, %bb.b
  %.499.ph.sink = phi i32 [ %.499.ph, %bb.r ], [ 1, %bb.d ], [ 3, %bb.b ]
  store i32 %.499.ph.sink, ptr %1, align 4, !tbaa !10
  %i.cp = lshr i64 %i.c, 63
  %i.cq = trunc nuw nsw i64 %i.cp to i32
  ret i32 %i.cq
}

; Function Attrs: nounwind uwtable
define i32 @stbsp_sprintf(ptr noundef %0, ptr noundef %1, ...) local_unnamed_addr #4 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.a = call i32 @stbsp_vsprintfcb(ptr noundef null, ptr noundef null, ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2)
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret i32 %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #6

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define ptr @stbsp__clamp_callback(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef captures(ret: address, provenance) %1, i32 noundef %2) #7 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !25
  %i.d = add nsw i32 %i.c, %2
  store i32 %i.d, ptr %i.b, align 4, !tbaa !25
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !26   ; 3 uses
  %spec.select = tail call i32 @llvm.smin.i32(i32 %2, i32 %i.f) ; 3 uses
  %.not = icmp eq i32 %spec.select, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !27     ; 8 uses
  %.not34 = icmp eq ptr %0, %i.g
  %.pre36 = sext i32 %spec.select to i64          ; 3 uses
  br i1 %.not34, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %bb.b
  %i.h = ptrtoaddr ptr %i.g to i64
  %i.i = getelementptr inbounds i8, ptr %0, i64 %.pre36
  %i.j = add i64 %i.a, %.pre36
  %i.k = add i64 %i.a, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.j, i64 %i.k)
  %i.l = sub i64 %umax, %i.a                      ; 7 uses
  %min.iters.check = icmp ult i64 %i.l, 8
  %i.m = sub i64 %i.a, %i.h
  %diff.check = icmp ugt i64 %i.m, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check40 = icmp ult i64 %i.l, 32
  br i1 %min.iters.check40, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.n = and i64 %i.l, 24
  %n.vec = and i64 %i.l, -32                      ; 5 uses
  %i.o = getelementptr i8, ptr %0, i64 %n.vec
  %i.p = getelementptr i8, ptr %i.g, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %0, i64 %index ; 2 uses
  %next.gep41 = getelementptr i8, ptr %i.g, i64 %index ; 2 uses
  %i.q = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !9
  %wide.load42 = load <16 x i8>, ptr %i.q, align 1, !tbaa !9
  %i.r = getelementptr i8, ptr %next.gep41, i64 16
  store <16 x i8> %wide.load, ptr %next.gep41, align 1, !tbaa !9
  store <16 x i8> %wide.load42, ptr %i.r, align 1, !tbaa !9
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !79

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %.loopexit.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.n, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !19

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec43 = and i64 %i.l, -8                     ; 4 uses
  %i.t = getelementptr i8, ptr %0, i64 %n.vec43
  %i.u = getelementptr i8, ptr %i.g, i64 %n.vec43
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index44 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next48, %vec.epilog.vector.body ] ; 3 uses
  %next.gep45 = getelementptr i8, ptr %0, i64 %index44
  %next.gep46 = getelementptr i8, ptr %i.g, i64 %index44
  %wide.load47 = load <8 x i8>, ptr %next.gep45, align 1, !tbaa !9
  store <8 x i8> %wide.load47, ptr %next.gep46, align 1, !tbaa !9
  %index.next48 = add nuw i64 %index44, 8         ; 2 uses
  %i.v = icmp eq i64 %index.next48, %n.vec43
  br i1 %i.v, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !80

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n49 = icmp eq i64 %i.l, %n.vec43
  br i1 %cmp.n49, label %.loopexit.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.026.ph = phi ptr [ %0, %iter.check ], [ %i.o, %vec.epilog.iter.check ], [ %i.t, %vec.epilog.middle.block ]
  %.0.ph = phi ptr [ %i.g, %iter.check ], [ %i.p, %vec.epilog.iter.check ], [ %i.u, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.026 = phi ptr [ %i.w, %vec.epilog.scalar.ph ], [ %.026.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.0 = phi ptr [ %i.y, %vec.epilog.scalar.ph ], [ %.0.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.026, i64 1 ; 2 uses
  %i.x = load i8, ptr %.026, align 1, !tbaa !9
  %i.y = getelementptr inbounds nuw i8, ptr %.0, i64 1
  store i8 %i.x, ptr %.0, align 1, !tbaa !9
  %i.z = icmp ult ptr %i.w, %i.i
  br i1 %i.z, label %vec.epilog.scalar.ph, label %.loopexit.loopexit, !llvm.loop !81

.loopexit.loopexit:                               ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.pre = load ptr, ptr %1, align 8, !tbaa !27
  %.pre35 = load i32, ptr %i.e, align 8, !tbaa !26
end_hunk_3
