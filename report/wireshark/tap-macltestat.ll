inline.NumInlined: 6
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"mac-3gpp,stat\00", align 1
@mac_lte_stat_ui = internal global { i32, [4 x i8], ptr, ptr, ptr, i64, ptr } { i32 3, [4 x i8] zeroinitializer, ptr null, ptr @.str, ptr @mac_lte_stat_init, i64 0, ptr null }, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"mac-3gpp,stat,\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"mac-3gpp\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"System data:\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"============\0A\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"Max UL UEs/TTI: %u     Max DL UEs/TTI: %u\0A\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"Common channel data:\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"====================\0A\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"MIBs: %u    \00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"SIB Frames: %u    \00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"SIB Bytes: %u    \00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"PCH Frames: %u    \00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"PCH Bytes: %u    \00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"PCH Paging IDs: %u    \00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"RAR Frames: %u    \00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"RAR Entries: %u\0A\0A\00", align 1
@.str.17 = private unnamed_addr constant [65 x i8] c"UL/DL-SCH data (%u entries - %u unique RNTIs, %u unique UEIds):\0A\00", align 1
@.str.18 = private unnamed_addr constant [68 x i8] c"==================================================================\0A\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"%s  \00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.21 = private unnamed_addr constant [67 x i8] c"%s %5u %7s %5u %10u %9u %10f %10f %8u %10u %9u %10f %10f %12u %8u\0A\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"LTE \00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"NR  \00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"C-RNTI\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"SPS-RNTI\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"RAT\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c" RNTI\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"  Type\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"UEId\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"UL Frames\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"UL Bytes\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"UL Mb/sec\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c" UL Pad %\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"UL ReTX\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"DL Frames\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"DL Bytes\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"DL Mb/sec\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c" DL Pad %\00", align 1
@.str.39 = private unnamed_addr constant [12 x i8] c"DL CRC Fail\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"DL ReTX\00", align 1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @register_tap_listener_mac_lte_stat() local_unnamed_addr #0 {
bb.a:
  tail call void @register_stat_tap_ui(ptr noundef nonnull @mac_lte_stat_ui, ptr noundef null)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @register_stat_tap_ui(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef zeroext i1 @mac_lte_stat_init(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call i32 @strncmp(ptr noundef %0, ptr noundef nonnull dereferenceable(15) @.str.2, i64 noundef 14) #7
  %i.b = icmp eq i32 %i.a, 0
  %i.c = getelementptr i8, ptr %0, i64 14
  %.021 = select i1 %i.b, ptr %i.c, ptr null
  %i.d = tail call noalias dereferenceable_or_null(131128) ptr @g_malloc0(i64 noundef 131128) #8 ; 3 uses
  %i.e = getelementptr i8, ptr %i.d, i64 131120
  store ptr null, ptr %i.e, align 8
  %i.f = tail call ptr @register_tap_listener(ptr noundef nonnull @.str.3, ptr noundef %i.d, ptr noundef %.021, i32 noundef 0, ptr noundef nonnull @mac_lte_stat_reset, ptr noundef nonnull @mac_lte_stat_packet, ptr noundef nonnull @mac_lte_stat_draw, ptr noundef nonnull @mac_lte_stat_finish) ; 2 uses
  %.not = icmp eq ptr %i.f, null                  ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @g_string_free(ptr noundef nonnull %i.f, i32 noundef 1) ; 0 uses
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
define internal void @mac_lte_stat_reset(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 131120     ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(65535) %i.c, i8 noundef 0, i64 noundef 65535, i1 noundef false) #9
  %i.d = getelementptr i8, ptr %0, i64 131110
  store i16 0, ptr %i.d, align 2
  %i.e = getelementptr i8, ptr %0, i64 65575
  tail call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(65535) %i.e, i8 noundef 0, i64 noundef 65535, i1 noundef false) #9
  %i.f = getelementptr i8, ptr %0, i64 131112
  store i16 0, ptr %i.f, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(40) %0, i8 noundef 0, i64 noundef 40, i1 noundef false) #9
  %.not12 = icmp eq ptr %i.b, null
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.013 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = load ptr, ptr %.013, align 8             ; 2 uses
  tail call void @g_free(ptr noundef nonnull %.013)
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !7

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  store ptr null, ptr %i.a, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal range(i32 0, 2) i32 @mac_lte_stat_packet(ptr nofree noundef captures(address_is_null) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree noundef readonly captures(address_is_null) %3, i32 %4) #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %update_ueid_rnti_counts.exit.thread153, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %0, align 8
  %i.b = add i32 %i.a, 1
  store i32 %i.b, ptr %0, align 8
  %i.c = getelementptr i8, ptr %3, i64 6          ; 3 uses
  %i.d = load i8, ptr %i.c, align 2
  switch i8 %i.d, label %update_ueid_rnti_counts.exit.thread153 [
    i8 1, label %bb.c
    i8 4, label %bb.d
    i8 0, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.g
    i8 5, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %i.h = getelementptr i8, ptr %3, i64 40
  %i.i = load i32, ptr %i.h, align 8
  %i.j = getelementptr i8, ptr %0, i64 20         ; 2 uses
  %i.k = load i32, ptr %i.j, align 4
  %i.l = add i32 %i.k, %i.i
  store i32 %i.l, ptr %i.j, align 4
  %i.m = getelementptr i8, ptr %3, i64 309
  %i.n = load i8, ptr %i.m, align 1
  %i.o = zext i8 %i.n to i32
  %i.p = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.q = load i32, ptr %i.p, align 8
  %i.r = add i32 %i.q, %i.o
  store i32 %i.r, ptr %i.p, align 8
  br label %update_ueid_rnti_counts.exit.thread153

bb.d:                                             ; preds = %bb.b
  %i.s = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.t = load i32, ptr %i.s, align 8
  %i.u = add i32 %i.t, 1
  store i32 %i.u, ptr %i.s, align 8
  %i.v = getelementptr i8, ptr %3, i64 40
  %i.w = load i32, ptr %i.v, align 8
  %i.x = getelementptr i8, ptr %0, i64 12         ; 2 uses
  %i.y = load i32, ptr %i.x, align 4
  %i.z = add i32 %i.y, %i.w
  store i32 %i.z, ptr %i.x, align 4
  br label %update_ueid_rnti_counts.exit.thread153

bb.e:                                             ; preds = %bb.b
  %i.aa = getelementptr i8, ptr %0, i64 4         ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = add i32 %i.ab, 1
  store i32 %i.ac, ptr %i.aa, align 4
  br label %update_ueid_rnti_counts.exit.thread153

bb.f:                                             ; preds = %bb.b
  %i.ad = getelementptr i8, ptr %0, i64 28        ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = add i32 %i.ae, 1
  store i32 %i.af, ptr %i.ad, align 4
  %i.ag = getelementptr i8, ptr %3, i64 308
  %i.ah = load i8, ptr %i.ag, align 4
  %i.ai = zext i8 %i.ah to i32
  %i.aj = getelementptr i8, ptr %0, i64 32        ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 8
  %i.al = add i32 %i.ak, %i.ai
  store i32 %i.al, ptr %i.aj, align 8
  br label %update_ueid_rnti_counts.exit.thread153

bb.g:                                             ; preds = %bb.b, %bb.b
  %i.am = getelementptr i8, ptr %3, i64 16        ; 2 uses
  %i.an = load i8, ptr %i.am, align 8
  switch i8 %i.an, label %bb.j [
    i8 0, label %bb.h
    i8 1, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %5 = getelementptr i8, ptr %0, i64 36           ; 2 uses
  %6 = load i16, ptr %5, align 4
  %7 = getelementptr i8, ptr %3, i64 18
  %8 = load i16, ptr %7, align 2
  %. = tail call i16 @llvm.umax.i16(i16 %6, i16 %8)
  store i16 %., ptr %5, align 4
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ao = getelementptr i8, ptr %0, i64 38        ; 2 uses
  %i.ap = load i16, ptr %i.ao, align 2
  %i.aq = getelementptr i8, ptr %3, i64 18
  %i.ar = load i16, ptr %i.aq, align 2
  %.138 = tail call i16 @llvm.umax.i16(i16 %i.ap, i16 %i.ar)
  store i16 %.138, ptr %i.ao, align 2
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.as = getelementptr i8, ptr %0, i64 131120    ; 3 uses
  %i.at = load ptr, ptr %i.as, align 8            ; 2 uses
  %.not127 = icmp eq ptr %i.at, null
  br i1 %.not127, label %bb.k, label %.preheader158

.preheader158:                                    ; preds = %bb.j
  %i.au = load i8, ptr %3, align 8
  %i.av = getelementptr i8, ptr %3, i64 2         ; 3 uses
  %i.aw = getelementptr i8, ptr %3, i64 4         ; 3 uses
  br label %bb.s

bb.k:                                             ; preds = %bb.j
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %alloc_mac_lte_ep.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ax = tail call noalias dereferenceable_or_null(136) ptr @g_malloc(i64 noundef 136) #8 ; 13 uses
  %.not35.i = icmp eq ptr %i.ax, null
  br i1 %.not35.i, label %alloc_mac_lte_ep.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = getelementptr i8, ptr %3, i64 2
  %i.az = load i16, ptr %i.ay, align 2
  %i.ba = getelementptr i8, ptr %i.ax, i64 10
  store i16 %i.az, ptr %i.ba, align 2
  %i.bb = load i8, ptr %i.c, align 2
  %i.bc = getelementptr i8, ptr %i.ax, i64 12
  store i8 %i.bb, ptr %i.bc, align 4
  %i.bd = getelementptr i8, ptr %3, i64 4
  %i.be = load i16, ptr %i.bd, align 4
  %i.bf = getelementptr i8, ptr %i.ax, i64 14
  store i16 %i.be, ptr %i.bf, align 2
  %i.bg = getelementptr i8, ptr %i.ax, i64 20
  store i32 0, ptr %i.bg, align 4
  %i.bh = getelementptr i8, ptr %i.ax, i64 28
  store i32 0, ptr %i.bh, align 4
  %i.bi = getelementptr i8, ptr %i.ax, i64 24
  store i32 0, ptr %i.bi, align 8
  %i.bj = getelementptr i8, ptr %i.ax, i64 64
  %i.bk = getelementptr i8, ptr %i.ax, i64 120
  store i32 0, ptr %i.bk, align 8
  %i.bl = getelementptr i8, ptr %i.ax, i64 124
  store i32 0, ptr %i.bl, align 4
  %i.bm = getelementptr i8, ptr %i.ax, i64 128
  store i32 0, ptr %i.bm, align 8
  store ptr null, ptr %i.ax, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(24) %i.bj, i8 0, i64 24, i1 false)
  br label %alloc_mac_lte_ep.exit

alloc_mac_lte_ep.exit:                            ; preds = %bb.k, %bb.l, %bb.m
  %.0.i = phi ptr [ %i.ax, %bb.m ], [ null, %bb.k ], [ null, %bb.l ] ; 3 uses
  store ptr %.0.i, ptr %i.as, align 8
  %i.bn = getelementptr i8, ptr %3, i64 2
  %i.bo = load i16, ptr %i.bn, align 2
  %i.bp = getelementptr i8, ptr %3, i64 4
  %i.bq = load i16, ptr %i.bp, align 4
  %i.br = getelementptr i8, ptr %0, i64 131110    ; 2 uses
  %i.bs = load i16, ptr %i.br, align 2            ; 2 uses
  %i.bt = icmp eq i16 %i.bs, -1
  br i1 %i.bt, label %update_ueid_rnti_counts.exit, label %bb.n

bb.n:                                             ; preds = %alloc_mac_lte_ep.exit
  %i.bu = getelementptr i8, ptr %0, i64 131112    ; 2 uses
  %i.bv = load i16, ptr %i.bu, align 8            ; 2 uses
  %i.bw = icmp eq i16 %i.bv, -1
  br i1 %i.bw, label %update_ueid_rnti_counts.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bx = getelementptr i8, ptr %0, i64 40
  %i.by = zext i16 %i.bq to i64
  %i.bz = getelementptr i8, ptr %i.bx, i64 %i.by  ; 2 uses
  %i.ca = load i8, ptr %i.bz, align 1
  %.not.i139 = icmp eq i8 %i.ca, 0
  br i1 %.not.i139, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i8 1, ptr %i.bz, align 1
  %i.cb = add nuw i16 %i.bs, 1
  store i16 %i.cb, ptr %i.br, align 2
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.cc = getelementptr i8, ptr %0, i64 65575
  %i.cd = zext i16 %i.bo to i64
  %i.ce = getelementptr i8, ptr %i.cc, i64 %i.cd  ; 2 uses
  %i.cf = load i8, ptr %i.ce, align 1
  %.not11.i = icmp eq i8 %i.cf, 0
  br i1 %.not11.i, label %bb.r, label %update_ueid_rnti_counts.exit

bb.r:                                             ; preds = %bb.q
  store i8 1, ptr %i.ce, align 1
  %i.cg = add nuw i16 %i.bv, 1
  store i16 %i.cg, ptr %i.bu, align 8
  br label %update_ueid_rnti_counts.exit

bb.s:                                             ; preds = %.preheader158, %bb.v
  %.0116160 = phi ptr [ %i.at, %.preheader158 ], [ %i.cs, %bb.v ] ; 5 uses
  %i.ch = getelementptr i8, ptr %.0116160, i64 8
  %i.ci = load i8, ptr %i.ch, align 8
  %i.cj = icmp eq i8 %i.ci, %i.au
  br i1 %i.cj, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.ck = getelementptr i8, ptr %.0116160, i64 10
  %i.cl = load i16, ptr %i.ck, align 2
  %i.cm = load i16, ptr %i.av, align 2
  %i.cn = icmp eq i16 %i.cl, %i.cm
  br i1 %i.cn, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.co = getelementptr i8, ptr %.0116160, i64 14
  %i.cp = load i16, ptr %i.co, align 2
  %i.cq = load i16, ptr %i.aw, align 4
  %i.cr = icmp eq i16 %i.cp, %i.cq
  br i1 %i.cr, label %update_ueid_rnti_counts.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.s, %bb.t, %bb.u
  %i.cs = load ptr, ptr %.0116160, align 8        ; 2 uses
  %.not128 = icmp eq ptr %i.cs, null
  br i1 %.not128, label %bb.w, label %bb.s, !llvm.loop !9

bb.w:                                             ; preds = %bb.v
  %.not.i140 = icmp eq ptr %3, null
  br i1 %.not.i140, label %update_ueid_rnti_counts.exit.thread153, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ct = tail call noalias dereferenceable_or_null(136) ptr @g_malloc(i64 noundef 136) #8 ; 18 uses
  %.not35.i141 = icmp eq ptr %i.ct, null
  br i1 %.not35.i141, label %update_ueid_rnti_counts.exit.thread153, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cu = load i16, ptr %i.av, align 2
  %i.cv = getelementptr i8, ptr %i.ct, i64 10
  store i16 %i.cu, ptr %i.cv, align 2
  %i.cw = load i8, ptr %i.c, align 2
  %i.cx = getelementptr i8, ptr %i.ct, i64 12
  store i8 %i.cw, ptr %i.cx, align 4
  %i.cy = load i16, ptr %i.aw, align 4
  %i.cz = getelementptr i8, ptr %i.ct, i64 14
  store i16 %i.cy, ptr %i.cz, align 2
  %i.da = getelementptr i8, ptr %i.ct, i64 20
  store i32 0, ptr %i.da, align 4
  %i.db = getelementptr i8, ptr %i.ct, i64 28
  store i32 0, ptr %i.db, align 4
  %i.dc = getelementptr i8, ptr %i.ct, i64 24
  store i32 0, ptr %i.dc, align 8
  %i.dd = getelementptr i8, ptr %i.ct, i64 64
  %i.de = getelementptr i8, ptr %i.ct, i64 120
  store i32 0, ptr %i.de, align 8
  %i.df = getelementptr i8, ptr %i.ct, i64 124
  store i32 0, ptr %i.df, align 4
  %i.dg = getelementptr i8, ptr %i.ct, i64 128
  store i32 0, ptr %i.dg, align 8
  store ptr null, ptr %i.ct, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(24) %i.dd, i8 0, i64 24, i1 false)
  %i.dh = load ptr, ptr %i.as, align 8
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %bb.y
  %.0 = phi ptr [ %i.dh, %bb.y ], [ %i.di, %bb.z ] ; 2 uses
  %i.di = load ptr, ptr %.0, align 8              ; 2 uses
  %.not130 = icmp eq ptr %i.di, null
  br i1 %.not130, label %bb.aa, label %bb.z, !llvm.loop !10

bb.aa:                                            ; preds = %bb.z
  store ptr %i.ct, ptr %.0, align 8
  store ptr null, ptr %i.ct, align 8
  %i.dj = load i16, ptr %i.av, align 2
  %i.dk = load i16, ptr %i.aw, align 4
  %i.dl = getelementptr i8, ptr %0, i64 131110    ; 2 uses
  %i.dm = load i16, ptr %i.dl, align 2            ; 2 uses
  %i.dn = icmp eq i16 %i.dm, -1
  br i1 %i.dn, label %update_ueid_rnti_counts.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.do = getelementptr i8, ptr %0, i64 131112    ; 2 uses
  %i.dp = load i16, ptr %i.do, align 8            ; 2 uses
  %i.dq = icmp eq i16 %i.dp, -1
  br i1 %i.dq, label %update_ueid_rnti_counts.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dr = getelementptr i8, ptr %0, i64 40
  %i.ds = zext i16 %i.dk to i64
  %i.dt = getelementptr i8, ptr %i.dr, i64 %i.ds  ; 2 uses
  %i.du = load i8, ptr %i.dt, align 1
  %.not.i144 = icmp eq i8 %i.du, 0
  br i1 %.not.i144, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i8 1, ptr %i.dt, align 1
  %i.dv = add nuw i16 %i.dm, 1
  store i16 %i.dv, ptr %i.dl, align 2
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.dw = getelementptr i8, ptr %0, i64 65575
  %i.dx = zext i16 %i.dj to i64
  %i.dy = getelementptr i8, ptr %i.dw, i64 %i.dx  ; 2 uses
  %i.dz = load i8, ptr %i.dy, align 1
  %.not11.i145 = icmp eq i8 %i.dz, 0
end_hunk_0
