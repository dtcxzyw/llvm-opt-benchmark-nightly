Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/tap-rlcltestat?download=true
inline.NumInlined: 4
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"rlc-3gpp,stat\00", align 1
@rlc_lte_stat_ui = internal global { i32, [4 x i8], ptr, ptr, ptr, i64, ptr } { i32 3, [4 x i8] zeroinitializer, ptr null, ptr @.str, ptr @rlc_lte_stat_init, i64 0, ptr null }, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"rlc-3gpp,stat,\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"rlc-3gpp\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"Common Data:\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"==============\0A\00", align 1
@.str.6 = private unnamed_addr constant [70 x i8] c"BCCH Frames: %u   BCCH Bytes: %u   PCCH Frames: %u   PCCH Bytes: %u\0A\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"Per UE Data - %u UEs (%u frames)\0A\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"==========================================\0A\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"%s  \00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.11 = private unnamed_addr constant [63 x i8] c"%s  %5u %10u %9u %10f %8u %9u %10u %10u %9u %10f %8u %9u %10u\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"LTE\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"NR \00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"RAT\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c" UEId\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"UL Frames\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"UL Bytes\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"   UL Mbs\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"UL ACKs\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"UL NACKs\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"UL Missed\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"DL Frames\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"DL Bytes\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"   DL Mbs\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"DL ACKs\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"DL NACKs\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"DL Missed\00", align 1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @register_tap_listener_rlc_lte_stat() local_unnamed_addr #0 {
bb.a:
  tail call void @register_stat_tap_ui(ptr noundef nonnull @rlc_lte_stat_ui, ptr noundef null)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @register_stat_tap_ui(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef zeroext i1 @rlc_lte_stat_init(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call i32 @strncmp(ptr noundef %0, ptr noundef nonnull dereferenceable(15) @.str.2, i64 noundef 14) #7
  %i.b = icmp eq i32 %i.a, 0
  %i.c = getelementptr i8, ptr %0, i64 14
  %.021 = select i1 %i.b, ptr %i.c, ptr null
  %i.d = tail call noalias dereferenceable_or_null(32) ptr @g_malloc0(i64 noundef 32) #8 ; 3 uses
  store ptr null, ptr %i.d, align 8
  %i.e = tail call ptr @register_tap_listener(ptr noundef nonnull @.str.3, ptr noundef %i.d, ptr noundef %.021, i32 noundef 0, ptr noundef nonnull @rlc_lte_stat_reset, ptr noundef nonnull @rlc_lte_stat_packet, ptr noundef nonnull @rlc_lte_stat_draw, ptr noundef nonnull @rlc_lte_stat_finish) ; 2 uses
  %.not = icmp eq ptr %i.e, null                  ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @g_string_free(ptr noundef nonnull %i.e, i32 noundef 1) ; 0 uses
  tail call void @g_free(ptr noundef %i.d)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %.not
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare noalias ptr @g_malloc0(i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @register_tap_listener(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @rlc_lte_stat_reset(ptr noundef initializes((8, 12)) %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 8
  store i32 0, ptr %i.b, align 8
  %i.c = getelementptr i8, ptr %0, i64 12
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %i.c, i8 noundef 0, i64 noundef 16, i1 noundef false) #9
  %.not9 = icmp eq ptr %i.a, null
  br i1 %.not9, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.010 = phi ptr [ %i.d, %.lr.ph ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.010, align 8             ; 2 uses
  tail call void @g_free(ptr noundef nonnull %.010)
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !8

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal range(i32 0, 2) i32 @rlc_lte_stat_packet(ptr nofree noundef captures(address_is_null) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree noundef readonly captures(address_is_null) %3, i32 %4) #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.thread92, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8
  %i.d = getelementptr i8, ptr %3, i64 6
  %i.e = load i16, ptr %i.d, align 2
  switch i16 %i.e, label %bb.e [
    i16 2, label %bb.c
    i16 6, label %bb.c
    i16 3, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.f = getelementptr i8, ptr %0, i64 12         ; 2 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = add i32 %i.g, 1
  store i32 %i.h, ptr %i.f, align 4
  %i.i = getelementptr i8, ptr %3, i64 10
  %i.j = load i16, ptr %i.i, align 2
  %i.k = zext i16 %i.j to i32
  %i.l = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.m = load i32, ptr %i.l, align 8
  %i.n = add i32 %i.m, %i.k
  store i32 %i.n, ptr %i.l, align 8
  br label %.thread92

bb.d:                                             ; preds = %bb.b
  %i.o = getelementptr i8, ptr %0, i64 20         ; 2 uses
  %i.p = load i32, ptr %i.o, align 4
  %i.q = add i32 %i.p, 1
  store i32 %i.q, ptr %i.o, align 4
  %i.r = getelementptr i8, ptr %3, i64 10
  %i.s = load i16, ptr %i.r, align 2
  %i.t = zext i16 %i.s to i32
  %i.u = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.v = load i32, ptr %i.u, align 8
  %i.w = add i32 %i.v, %i.t
  store i32 %i.w, ptr %i.u, align 8
  br label %.thread92

bb.e:                                             ; preds = %bb.b
  %i.x = load ptr, ptr %0, align 8                ; 2 uses
  %.not74 = icmp eq ptr %i.x, null
  br i1 %.not74, label %bb.f, label %.preheader

.preheader:                                       ; preds = %bb.e
  %i.y = load i8, ptr %3, align 8
  %i.z = getelementptr i8, ptr %3, i64 4
  br label %bb.h

bb.f:                                             ; preds = %bb.e
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %.thread96, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = tail call noalias dereferenceable_or_null(128) ptr @g_malloc(i64 noundef 128) #8 ; 9 uses
  %.not33.i = icmp eq ptr %i.aa, null
  br i1 %.not33.i, label %.thread96, label %bb.p

bb.h:                                             ; preds = %.preheader, %bb.j
  %.067100 = phi ptr [ %i.x, %.preheader ], [ %i.ai, %bb.j ] ; 4 uses
  %i.ab = getelementptr i8, ptr %.067100, i64 8
  %i.ac = load i8, ptr %i.ab, align 8
  %i.ad = icmp eq i8 %i.ac, %i.y
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr i8, ptr %.067100, i64 10
  %i.af = load i16, ptr %i.ae, align 2
  %i.ag = load i16, ptr %i.z, align 4
  %i.ah = icmp eq i16 %i.af, %i.ag
  br i1 %i.ah, label %.thread88, label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.ai = load ptr, ptr %.067100, align 8         ; 2 uses
  %.not75 = icmp eq ptr %i.ai, null
  br i1 %.not75, label %bb.k, label %bb.h, !llvm.loop !9

bb.k:                                             ; preds = %bb.j
  %.not.i81 = icmp eq ptr %3, null
  br i1 %.not.i81, label %.thread92, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = tail call noalias dereferenceable_or_null(128) ptr @g_malloc(i64 noundef 128) #8 ; 9 uses
  %.not33.i82 = icmp eq ptr %i.aj, null
  br i1 %.not33.i82, label %.thread92, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = load i8, ptr %3, align 8
  %i.al = getelementptr i8, ptr %i.aj, i64 8
  store i8 %i.ak, ptr %i.al, align 8
  %i.am = getelementptr i8, ptr %i.aj, i64 16
  store i32 0, ptr %i.am, align 8
  %i.an = getelementptr i8, ptr %i.aj, i64 20
  store i32 0, ptr %i.an, align 4
  %i.ao = getelementptr i8, ptr %i.aj, i64 80
  %i.ap = getelementptr i8, ptr %i.aj, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(20) %i.ap, i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(44) %i.ao, i8 0, i64 44, i1 false)
  %i.aq = load ptr, ptr %0, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %bb.m
  %.0 = phi ptr [ %i.aq, %bb.m ], [ %i.ar, %bb.n ] ; 2 uses
  %i.ar = load ptr, ptr %.0, align 8              ; 2 uses
  %.not77 = icmp eq ptr %i.ar, null
  br i1 %.not77, label %bb.o, label %bb.n, !llvm.loop !10

bb.o:                                             ; preds = %bb.n
  store ptr %i.aj, ptr %.0, align 8
  store ptr null, ptr %i.aj, align 8
  br label %.thread88

.thread96:                                        ; preds = %bb.f, %bb.g
  store ptr null, ptr %0, align 8
  br label %.thread92

bb.p:                                             ; preds = %bb.g
  %i.as = load i8, ptr %3, align 8
  %i.at = getelementptr i8, ptr %i.aa, i64 8
  store i8 %i.as, ptr %i.at, align 8
  %i.au = getelementptr i8, ptr %i.aa, i64 16
  store i32 0, ptr %i.au, align 8
  %i.av = getelementptr i8, ptr %i.aa, i64 20
  store i32 0, ptr %i.av, align 4
  %i.aw = getelementptr i8, ptr %i.aa, i64 80
  %i.ax = getelementptr i8, ptr %i.aa, i64 56
  store ptr null, ptr %i.aa, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(20) %i.ax, i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(44) %i.aw, i8 0, i64 44, i1 false)
  store ptr %i.aa, ptr %0, align 8
  br label %.thread88

.thread88:                                        ; preds = %bb.i, %bb.o, %bb.p
  %.191 = phi ptr [ %i.aa, %bb.p ], [ %i.aj, %bb.o ], [ %.067100, %bb.i ] ; 15 uses
  %i.ay = getelementptr i8, ptr %3, i64 4
  %i.az = load i16, ptr %i.ay, align 4
  %i.ba = getelementptr i8, ptr %.191, i64 10
  store i16 %i.az, ptr %i.ba, align 2
  %i.bb = getelementptr i8, ptr %3, i64 2         ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 2
  %i.bd = icmp eq i8 %i.bc, 0
  br i1 %i.bd, label %bb.q, label %bb.t

bb.q:                                             ; preds = %.thread88
  %i.be = getelementptr i8, ptr %.191, i64 16     ; 2 uses
  %i.bf = load i32, ptr %i.be, align 8            ; 2 uses
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bh = getelementptr i8, ptr %.191, i64 24
  %i.bi = getelementptr i8, ptr %3, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(16) %i.bh, ptr noundef align 8 dereferenceable(16) %i.bi, i64 16, i1 false)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bj = getelementptr i8, ptr %.191, i64 40
  %i.bk = getelementptr i8, ptr %3, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(16) %i.bj, ptr noundef align 8 dereferenceable(16) %i.bk, i64 16, i1 false)
  %i.bl = add i32 %i.bf, 1
  store i32 %i.bl, ptr %i.be, align 8
  %i.bm = getelementptr i8, ptr %3, i64 10
  %i.bn = load i16, ptr %i.bm, align 2
  %i.bo = zext i16 %i.bn to i32
  %i.bp = getelementptr i8, ptr %.191, i64 20     ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4
  %i.br = add i32 %i.bq, %i.bo
  store i32 %i.br, ptr %i.bp, align 4
  br label %bb.w

bb.t:                                             ; preds = %.thread88
  %i.bs = getelementptr i8, ptr %.191, i64 68     ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4            ; 2 uses
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bv = getelementptr i8, ptr %.191, i64 80
  %i.bw = getelementptr i8, ptr %3, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(16) %i.bv, ptr noundef align 8 dereferenceable(16) %i.bw, i64 16, i1 false)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bx = getelementptr i8, ptr %.191, i64 96
  %i.by = getelementptr i8, ptr %3, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(16) %i.bx, ptr noundef align 8 dereferenceable(16) %i.by, i64 16, i1 false)
  %i.bz = add i32 %i.bt, 1
  store i32 %i.bz, ptr %i.bs, align 4
  %i.ca = getelementptr i8, ptr %3, i64 10
  %i.cb = load i16, ptr %i.ca, align 2
  %i.cc = zext i16 %i.cb to i32
  %i.cd = getelementptr i8, ptr %.191, i64 72     ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 8
  %i.cf = add i32 %i.ce, %i.cc
  store i32 %i.cf, ptr %i.cd, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.s
  %i.cg = load i8, ptr %i.bb, align 2
  %i.ch = icmp eq i8 %i.cg, 0
  %i.ci = getelementptr i8, ptr %3, i64 41
  %i.cj = load i8, ptr %i.ci, align 1
  %.not80 = icmp eq i8 %i.cj, 0                   ; 2 uses
  br i1 %i.ch, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  br i1 %.not80, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ck = getelementptr i8, ptr %.191, i64 56     ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 8
  %i.cm = add i32 %i.cl, 1
  store i32 %i.cm, ptr %i.ck, align 8
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.cn = getelementptr i8, ptr %3, i64 48
  %i.co = load i16, ptr %i.cn, align 8
  %i.cp = zext i16 %i.co to i32
  %i.cq = getelementptr i8, ptr %.191, i64 60     ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4
  %i.cs = add i32 %i.cr, %i.cp
  store i32 %i.cs, ptr %i.cq, align 4
  %i.ct = getelementptr i8, ptr %3, i64 2100
  %i.cu = load i16, ptr %i.ct, align 4
  %i.cv = zext i16 %i.cu to i32
  %i.cw = getelementptr i8, ptr %.191, i64 64     ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 8
  %i.cy = add i32 %i.cx, %i.cv
  store i32 %i.cy, ptr %i.cw, align 8
  br label %.thread92

bb.aa:                                            ; preds = %bb.w
  br i1 %.not80, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cz = getelementptr i8, ptr %.191, i64 112    ; 2 uses
  %i.da = load i32, ptr %i.cz, align 8
  %i.db = add i32 %i.da, 1
  store i32 %i.db, ptr %i.cz, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.dc = getelementptr i8, ptr %3, i64 48
  %i.dd = load i16, ptr %i.dc, align 8
  %i.de = zext i16 %i.dd to i32
  %i.df = getelementptr i8, ptr %.191, i64 116    ; 2 uses
  %i.dg = load i32, ptr %i.df, align 4
  %i.dh = add i32 %i.dg, %i.de
  store i32 %i.dh, ptr %i.df, align 4
  %i.di = getelementptr i8, ptr %3, i64 2100
  %i.dj = load i16, ptr %i.di, align 4
  %i.dk = zext i16 %i.dj to i32
  %i.dl = getelementptr i8, ptr %.191, i64 120    ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 8
  %i.dn = add i32 %i.dm, %i.dk
  store i32 %i.dn, ptr %i.dl, align 8
  br label %.thread92

.thread92:                                        ; preds = %bb.k, %bb.l, %.thread96, %bb.z, %bb.ac, %bb.a, %bb.d, %bb.c
  %.068 = phi i32 [ 0, %.thread96 ], [ 0, %bb.a ], [ 1, %bb.c ], [ 1, %bb.d ], [ 1, %bb.ac ], [ 1, %bb.z ], [ 0, %bb.l ], [ 0, %bb.k ]
  ret i32 %.068
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @rlc_lte_stat_draw(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.4) ; 0 uses
  %i.c = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.5) ; 0 uses
  %i.d = getelementptr i8, ptr %0, i64 12
  %i.e = load i32, ptr %i.d, align 4
  %i.f = getelementptr i8, ptr %0, i64 16
  %i.g = load i32, ptr %i.f, align 8
  %i.h = getelementptr i8, ptr %0, i64 20
  %i.i = load i32, ptr %i.h, align 4
  %i.j = getelementptr i8, ptr %0, i64 24
  %i.k = load i32, ptr %i.j, align 8
  %i.l = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.6, i32 noundef %i.e, i32 noundef %i.g, i32 noundef %i.i, i32 noundef %i.k) ; 0 uses
  %.not45 = icmp eq ptr %i.a, null                ; 2 uses
  br i1 %.not45, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.047 = phi i16 [ %i.n, %.lr.ph ], [ 0, %bb.a ]
  %.03846 = phi ptr [ %i.m, %.lr.ph ], [ %i.a, %bb.a ]
  %i.m = load ptr, ptr %.03846, align 8           ; 2 uses
  %i.n = add i16 %.047, 1                         ; 2 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !11

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.o = zext i16 %i.n to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.o, %._crit_edge.loopexit ]
  %i.p = getelementptr i8, ptr %0, i64 8
  %i.q = load i32, ptr %i.p, align 8
  %i.r = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.7, i32 noundef %.0.lcssa, i32 noundef %i.q) ; 0 uses
  %i.s = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.8) ; 0 uses
  %i.t = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.14) ; 0 uses
  %i.u = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.15) ; 0 uses
  %i.v = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.16) ; 0 uses
  %i.w = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.17) ; 0 uses
  %i.x = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.18) ; 0 uses
  %i.y = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.19) ; 0 uses
  %i.z = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.20) ; 0 uses
  %i.aa = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.21) ; 0 uses
  %i.ab = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.22) ; 0 uses
  %i.ac = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.23) ; 0 uses
  %i.ad = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.24) ; 0 uses
  %i.ae = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.25) ; 0 uses
  %i.af = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.26) ; 0 uses
  %i.ag = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.27) ; 0 uses
  %i.ah = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.10) ; 0 uses
  br i1 %.not45, label %._crit_edge53, label %.lr.ph52

.lr.ph52:                                         ; preds = %._crit_edge, %calculate_bw.exit44
  %.150 = phi ptr [ %i.dk, %calculate_bw.exit44 ], [ %i.a, %._crit_edge ] ; 21 uses
  %i.ai = getelementptr i8, ptr %.150, i64 8
end_hunk_0
