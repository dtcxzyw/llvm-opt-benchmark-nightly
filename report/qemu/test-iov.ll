inline.NumInlined: 86
inline.NumDeleted: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.fd_set = type { [16 x i64] }
%struct.IOVDiscardUndo = type { ptr, %struct.iovec }
%struct.iovec = type { ptr, i64 }

@.str = private unnamed_addr constant [23 x i8] c"/basic/iov/from-to-buf\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"/basic/iov/io\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"/basic/iov/discard-front\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"/basic/iov/discard-back\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"/basic/iov/discard-front-undo\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"/basic/iov/discard-back-undo\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"../tests/unit/test-iov.c\00", align 1
@__func__.test_to_from_buf_1 = private unnamed_addr constant [19 x i8] c"test_to_from_buf_1\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"n == sz\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"n == sz - i\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"memcmp(ibuf, obuf, sz) == 0\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"n == (i < sz)\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"obuf[i] == (i & 255)\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"n == j - i\00", align 1
@.str.17 = private unnamed_addr constant [58 x i8] c"!memcmp(ibuf-4, \22aaaa\22, 4) && !memcmp(ibuf+sz, \22bbbb\22, 4)\00", align 1
@.str.18 = private unnamed_addr constant [58 x i8] c"!memcmp(obuf-4, \22xxxx\22, 4) && !memcmp(obuf+sz, \22yyyy\22, 4)\00", align 1
@__func__.test_iov_bytes = private unnamed_addr constant [15 x i8] c"test_iov_bytes\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"b[j] == (o & 255)\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"b[j] == 0xff\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"socketpair\00", align 1
@error_abort = external global ptr, align 8
@__func__.test_io = private unnamed_addr constant [8 x i8] c"test_io\00", align 1
@.str.22 = private unnamed_addr constant [42 x i8] c"memcmp(iov, siov, sizeof(*iov)*niov) == 0\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"send\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"recv\00", align 1
@__func__.test_discard_front = private unnamed_addr constant [19 x i8] c"test_discard_front\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"ret == 0\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"iov_tmp == iov\00", align 1
@.str.27 = private unnamed_addr constant [23 x i8] c"iov_cnt_tmp == iov_cnt\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"ret == size\00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c"iov_cnt_tmp == 0\00", align 1
@.str.30 = private unnamed_addr constant [37 x i8] c"iov_tmp->iov_base == old_base + size\00", align 1
@.str.31 = private unnamed_addr constant [20 x i8] c"ret == iov->iov_len\00", align 1
@.str.32 = private unnamed_addr constant [19 x i8] c"iov_tmp == iov + 1\00", align 1
@.str.33 = private unnamed_addr constant [27 x i8] c"iov_cnt_tmp == iov_cnt - 1\00", align 1
@.str.34 = private unnamed_addr constant [54 x i8] c"iov_tmp->iov_base == old_base + (size - iov->iov_len)\00", align 1
@__func__.test_discard_back = private unnamed_addr constant [18 x i8] c"test_discard_back\00", align 1
@.str.35 = private unnamed_addr constant [38 x i8] c"iov[iov_cnt - 1].iov_base == old_base\00", align 1
@.str.36 = private unnamed_addr constant [38 x i8] c"iov[iov_cnt - 2].iov_base == old_base\00", align 1
@.str.37 = private unnamed_addr constant [35 x i8] c"iov_equals(iov, iov_orig, iov_cnt)\00", align 1
@__PRETTY_FUNCTION__.test_discard_front_undo = private unnamed_addr constant [35 x i8] c"void test_discard_front_undo(void)\00", align 1
@__PRETTY_FUNCTION__.test_discard_back_undo = private unnamed_addr constant [34 x i8] c"void test_discard_back_undo(void)\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  store i32 %0, ptr %i.a, align 4
  store ptr %1, ptr %i.b, align 8
  call void (ptr, ptr, ...) @g_test_init(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef null) #15
  %i.c = call i32 @g_test_rand_int() #15          ; 0 uses
  call void @g_test_add_func(ptr noundef nonnull @.str, ptr noundef nonnull @test_to_from_buf) #15
  call void @g_test_add_func(ptr noundef nonnull @.str.1, ptr noundef nonnull @test_io) #15
  call void @g_test_add_func(ptr noundef nonnull @.str.2, ptr noundef nonnull @test_discard_front) #15
  call void @g_test_add_func(ptr noundef nonnull @.str.3, ptr noundef nonnull @test_discard_back) #15
  call void @g_test_add_func(ptr noundef nonnull @.str.4, ptr noundef nonnull @test_discard_front_undo) #15
  call void @g_test_add_func(ptr noundef nonnull @.str.5, ptr noundef nonnull @test_discard_back_undo) #15
  %i.d = call i32 @g_test_run() #15
  ret i32 %i.d
}

declare void @g_test_init(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare i32 @g_test_rand_int() local_unnamed_addr #1

declare void @g_test_add_func(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @test_to_from_buf() #2 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %test_to_from_buf_1.exit
  %.02 = phi i32 [ 0, %bb.a ], [ %i.cr, %test_to_from_buf_1.exit ]
  %i.a = tail call i32 @g_test_rand_int_range(i32 noundef 3, i32 noundef 8) #15 ; 11 uses
  %i.b = zext i32 %i.a to i64                     ; 4 uses
  %i.c = shl nuw nsw i64 %i.b, 4
  %i.d = tail call noalias ptr @g_malloc(i64 noundef %i.c) #16 ; 14 uses
  %.not.i.i = icmp eq i32 %i.a, 0                 ; 3 uses
  br i1 %.not.i.i, label %iov_random.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.e = tail call i32 @g_test_rand_int_range(i32 noundef 5, i32 noundef 20) #15
  %i.f = sext i32 %i.e to i64                     ; 2 uses
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv.i.i ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %i.f, ptr %i.h, align 8
  %i.i = tail call noalias ptr @g_malloc(i64 noundef %i.f) #16
  store ptr %i.i, ptr %i.g, align 8
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.b
  br i1 %exitcond.not.i.i, label %iov_random.exit.i, label %.lr.ph.i.i, !llvm.loop !7

iov_random.exit.i:                                ; preds = %.lr.ph.i.i, %bb.b
  %i.j = tail call i64 @iov_size(ptr noundef %i.d, i32 noundef %i.a) #15 ; 25 uses
  %i.k = add i64 %i.j, 8                          ; 2 uses
  %i.l = tail call noalias ptr @g_malloc(i64 noundef %i.k) #16 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 7 uses
  store i32 1633771873, ptr %i.l, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.j ; 2 uses
  store i32 1650614882, ptr %i.n, align 1
  %i.o = tail call noalias ptr @g_malloc(i64 noundef %i.k) #16 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4 ; 4 uses
  store i32 2021161080, ptr %i.o, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.j ; 2 uses
  store i32 2038004089, ptr %i.q, align 1
  %.not231.i = icmp eq i64 %i.j, 0
  br i1 %.not231.i, label %.preheader.i, label %iter.check

iter.check:                                       ; preds = %iov_random.exit.i
  %min.iters.check = icmp ult i64 %i.j, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.r = add i64 %i.j, -1                         ; 2 uses
  %i.s = and i64 %i.r, 4294967295
  %i.t = icmp eq i64 %i.s, 4294967295
  %i.u = icmp ugt i64 %i.r, 4294967295
  %i.v = or i1 %i.t, %i.u
  br i1 %i.v, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check14 = icmp ult i64 %i.j, 32
  br i1 %min.iters.check14, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.w = and i64 %i.j, 28
  %n.vec = and i64 %i.j, 8589934560               ; 5 uses
  %0 = trunc i64 %n.vec to i32                    ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <16 x i8> [ <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <16 x i8> %vec.ind, splat (i8 16)
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store <16 x i8> %vec.ind, ptr %i.x, align 1
  store <16 x i8> %step.add, ptr %i.y, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add <16 x i8> %vec.ind, splat (i8 32)
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !9

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %.preheader.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.w, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !12

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i32 [ %0, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec15 = and i64 %i.j, 8589934588             ; 4 uses
  %1 = trunc i64 %n.vec15 to i32
  %i.aa = trunc i32 %bc.resume.val to i8
  %broadcast.splatinsert = insertelement <4 x i8> poison, i8 %i.aa, i64 0
  %broadcast.splat = shufflevector <4 x i8> %broadcast.splatinsert, <4 x i8> poison, <4 x i32> zeroinitializer
  %induction = add <4 x i8> %broadcast.splat, <i8 0, i8 1, i8 2, i8 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index16 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next18, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind17 = phi <4 x i8> [ %induction, %vec.epilog.ph ], [ %vec.ind.next19, %vec.epilog.vector.body ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.m, i64 %index16
  store <4 x i8> %vec.ind17, ptr %i.ab, align 1
  %index.next18 = add nuw i64 %index16, 4         ; 2 uses
  %vec.ind.next19 = add <4 x i8> %vec.ind17, splat (i8 4)
  %i.ac = icmp eq i64 %index.next18, %n.vec15
  br i1 %i.ac, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !13

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n20 = icmp eq i64 %i.j, %n.vec15
  br i1 %cmp.n20, label %.preheader.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec15, %vec.epilog.middle.block ]
  %.0119226.i.ph = phi i32 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ %0, %vec.epilog.iter.check ], [ %1, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.preheader.i:                                     ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %iov_random.exit.i
  %.not = icmp eq i32 %i.a, 0
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.c

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %3, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ]
  %.0119226.i = phi i32 [ %2, %.lr.ph.i ], [ %.0119226.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.ae = trunc i32 %.0119226.i to i8
  %i.af = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv.i
  store i8 %i.ae, ptr %i.af, align 1
  %2 = add i32 %.0119226.i, 1                     ; 2 uses
  %3 = zext i32 %2 to i64                         ; 2 uses
  %i.ag = icmp ugt i64 %i.j, %3
  br i1 %i.ag, label %.lr.ph.i, label %.preheader.i, !llvm.loop !14

bb.c:                                             ; preds = %._crit_edge.i, %.preheader.i
  %i.ah = phi i64 [ 0, %.preheader.i ], [ %i.cc, %._crit_edge.i ] ; 14 uses
  %.1230.i = phi i32 [ 0, %.preheader.i ], [ %i.cb, %._crit_edge.i ] ; 5 uses
  %i.ai = tail call i64 @iov_memset(ptr noundef %i.d, i32 noundef %i.a, i64 noundef 0, i32 noundef 255, i64 noundef %i.j) #15
  %i.aj = and i64 %i.ai, 4294967295
  %.not143.i = icmp eq i64 %i.aj, %i.j
  br i1 %.not143.i, label %iov_from_buf.exit.i, label %bb.d, !prof !15

bb.d:                                             ; preds = %bb.c
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 91, ptr noundef nonnull @__func__.test_to_from_buf_1, ptr noundef nonnull @.str.11) #17
  unreachable

iov_from_buf.exit.i:                              ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ah ; 2 uses
  %i.al = sub nsw i64 %i.j, %i.ah                 ; 5 uses
  %i.am = tail call i64 @iov_from_buf_full(ptr noundef %i.d, i32 noundef %i.a, i64 noundef range(i64 0, 4294967296) %i.ah, ptr noundef nonnull %i.ak, i64 noundef range(i64 -4294967295, 4294967296) %i.al) #15
  %i.an = and i64 %i.am, 4294967295
  %.not145.i = icmp eq i64 %i.an, %i.al
  br i1 %.not145.i, label %iov_to_buf.exit.i, label %bb.e, !prof !15

bb.e:                                             ; preds = %iov_from_buf.exit.i
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 95, ptr noundef nonnull @__func__.test_to_from_buf_1, ptr noundef nonnull @.str.12) #17
  unreachable

iov_to_buf.exit.i:                                ; preds = %iov_from_buf.exit.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.ah ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.ao, i8 noundef 0, i64 noundef range(i64 -4294967295, 4294967296) %i.al, i1 noundef false) #15
  %i.ap = tail call i64 @iov_to_buf_full(ptr noundef %i.d, i32 noundef %i.a, i64 noundef range(i64 0, 4294967296) %i.ah, ptr noundef nonnull %i.ao, i64 noundef range(i64 -4294967295, 4294967296) %i.al) #15
  %i.aq = and i64 %i.ap, 4294967295
  %.not147.i = icmp eq i64 %i.aq, %i.al
  br i1 %.not147.i, label %bb.g, label %bb.f, !prof !15

bb.f:                                             ; preds = %iov_to_buf.exit.i
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 101, ptr noundef nonnull @__func__.test_to_from_buf_1, ptr noundef nonnull @.str.12) #17
  unreachable

bb.g:                                             ; preds = %iov_to_buf.exit.i
  %bcmp148.i = tail call i32 @bcmp(ptr nonnull %i.m, ptr nonnull %i.p, i64 %i.j)
  %.not150.i = icmp eq i32 %bcmp148.i, 0
  br i1 %.not150.i, label %bb.i, label %bb.h, !prof !15

bb.h:                                             ; preds = %bb.g
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 104, ptr noundef nonnull @__func__.test_to_from_buf_1, ptr noundef nonnull @.str.13) #17
  unreachable

bb.i:                                             ; preds = %bb.g
  br i1 %.not, label %iov_to_buf.exit179.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ar = load i64, ptr %i.ad, align 8
  %or.cond22.i178.not.i = icmp ugt i64 %i.ar, %i.ah
  br i1 %or.cond22.i178.not.i, label %iov_to_buf.exit179.thread.i, label %iov_to_buf.exit179.i

iov_to_buf.exit179.i:                             ; preds = %bb.j, %bb.i
  %i.as = tail call i64 @iov_to_buf_full(ptr noundef %i.d, i32 noundef %i.a, i64 noundef range(i64 0, 4294967296) %i.ah, ptr noundef nonnull %i.ao, i64 noundef 1) #15
  %i.at = trunc i64 %i.as to i32                  ; 2 uses
  %i.au = icmp samesign ugt i64 %i.j, %i.ah
  %i.av = zext i1 %i.au to i32
  %.not152.i = icmp eq i32 %i.at, %i.av
  br i1 %.not152.i, label %bb.l, label %bb.k, !prof !15

iov_to_buf.exit179.thread.i:                      ; preds = %bb.j
  %i.aw = load ptr, ptr %i.d, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ah
  %i.ay = load i8, ptr %i.ax, align 1
  store i8 %i.ay, ptr %i.ao, align 1
  %i.az = icmp samesign ugt i64 %i.j, %i.ah
  br i1 %i.az, label %.thread.i, label %bb.k, !prof !15

bb.k:                                             ; preds = %iov_to_buf.exit179.thread.i, %iov_to_buf.exit179.i
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 108, ptr noundef nonnull @__func__.test_to_from_buf_1, ptr noundef nonnull @.str.14) #17
  unreachable

bb.l:                                             ; preds = %iov_to_buf.exit179.i
  %.not153.i = icmp eq i32 %i.at, 0
  br i1 %.not153.i, label %bb.n, label %.thread.i

.thread.i:                                        ; preds = %bb.l, %iov_to_buf.exit179.thread.i
  %i.ba = load i8, ptr %i.ao, align 1
  %i.bb = trunc i32 %.1230.i to i8
  %.not155.i = icmp eq i8 %i.ba, %i.bb
  br i1 %.not155.i, label %bb.n, label %bb.m, !prof !15

bb.m:                                             ; preds = %.thread.i
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 110, ptr noundef nonnull @__func__.test_to_from_buf_1, ptr noundef nonnull @.str.15) #17
  unreachable

bb.n:                                             ; preds = %.thread.i, %bb.l
  %i.bc = zext i32 %.1230.i to i64
  %.not156227.i = icmp samesign ult i64 %i.j, %i.bc
  br i1 %.not156227.i, label %._crit_edge.i, label %.lr.ph229.i

.lr.ph229.i:                                      ; preds = %bb.n, %test_iov_bytes.exit.i
  %.0121228.i = phi i32 [ %i.bz, %test_iov_bytes.exit.i ], [ %.1230.i, %bb.n ] ; 2 uses
  %i.bd = tail call i64 @iov_memset(ptr noundef %i.d, i32 noundef %i.a, i64 noundef 0, i32 noundef 255, i64 noundef %i.j) #15
  %i.be = and i64 %i.bd, 4294967295
  %.not158.i = icmp eq i64 %i.be, %i.j
  br i1 %.not158.i, label %iov_from_buf.exit185.i, label %bb.o, !prof !15

bb.o:                                             ; preds = %.lr.ph229.i
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 119, ptr noundef nonnull @__func__.test_to_from_buf_1, ptr noundef nonnull @.str.11) #17
  unreachable

iov_from_buf.exit185.i:                           ; preds = %.lr.ph229.i
  %i.bf = sub i32 %.0121228.i, %.1230.i           ; 3 uses
  %i.bg = zext i32 %i.bf to i64                   ; 4 uses
  %i.bh = tail call i64 @iov_from_buf_full(ptr noundef %i.d, i32 noundef %i.a, i64 noundef range(i64 0, 4294967296) %i.ah, ptr noundef nonnull %i.ak, i64 noundef range(i64 -4294967295, 4294967296) %i.bg) #15
  %i.bi = trunc i64 %i.bh to i32
  %i.bj = icmp eq i32 %i.bf, %i.bi
  br i1 %i.bj, label %iov_to_buf.exit191.i, label %bb.p, !prof !15

bb.p:                                             ; preds = %iov_from_buf.exit185.i
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 123, ptr noundef nonnull @__func__.test_to_from_buf_1, ptr noundef nonnull @.str.16) #17
  unreachable

iov_to_buf.exit191.i:                             ; preds = %iov_from_buf.exit185.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.ao, i8 noundef 0, i64 noundef range(i64 -4294967295, 4294967296) %i.bg, i1 noundef false) #15
  %i.bk = tail call i64 @iov_to_buf_full(ptr noundef %i.d, i32 noundef %i.a, i64 noundef range(i64 0, 4294967296) %i.ah, ptr noundef nonnull %i.ao, i64 noundef range(i64 -4294967295, 4294967296) %i.bg) #15
  %i.bl = trunc i64 %i.bk to i32
  %i.bm = icmp eq i32 %i.bf, %i.bl
  br i1 %i.bm, label %bb.r, label %bb.q, !prof !15

bb.q:                                             ; preds = %iov_to_buf.exit191.i
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 130, ptr noundef nonnull @__func__.test_to_from_buf_1, ptr noundef nonnull @.str.16) #17
  unreachable

bb.r:                                             ; preds = %iov_to_buf.exit191.i
  %bcmp163.i = tail call i32 @bcmp(ptr nonnull %i.m, ptr nonnull %i.p, i64 %i.j)
  %.not165.i = icmp eq i32 %bcmp163.i, 0
  br i1 %.not165.i, label %bb.t, label %bb.s, !prof !15

bb.s:                                             ; preds = %bb.r
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 133, ptr noundef nonnull @__func__.test_to_from_buf_1, ptr noundef nonnull @.str.13) #17
  unreachable

bb.t:                                             ; preds = %bb.r
  br i1 %.not.i.i, label %test_iov_bytes.exit.i, label %.lr.ph40.i.i

.lr.ph40.i.i:                                     ; preds = %bb.t
  %i.bn = add nuw nsw i64 %i.ah, %i.bg
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge.i.i, %.lr.ph40.i.i
  %indvars.iv.i192.i = phi i64 [ 0, %.lr.ph40.i.i ], [ %indvars.iv.next.i197.i, %._crit_edge.i.i ] ; 2 uses
  %.02637.i.i = phi i64 [ 0, %.lr.ph40.i.i ], [ %.1.lcssa.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv.i192.i ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.br = load i64, ptr %i.bq, align 8            ; 3 uses
  %.not43.i.i = icmp eq i64 %i.br, 0
  br i1 %.not43.i.i, label %._crit_edge.i.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.u
  %i.bs = add i64 %i.br, %.02637.i.i
  br label %.lr.ph.i193.i

.lr.ph.i193.i:                                    ; preds = %bb.z, %.lr.ph.preheader.i.i
  %.02436.i.i = phi i64 [ %i.by, %bb.z ], [ 0, %.lr.ph.preheader.i.i ] ; 2 uses
  %.135.i.i = phi i64 [ %i.bx, %bb.z ], [ %.02637.i.i, %.lr.ph.preheader.i.i ] ; 4 uses
  %.not.i194.i = icmp uge i64 %.135.i.i, %i.ah
  %i.bt = icmp ult i64 %.135.i.i, %i.bn
  %or.cond.i195.i = select i1 %.not.i194.i, i1 %i.bt, i1 false
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.02436.i.i
  %i.bv = load i8, ptr %i.bu, align 1             ; 2 uses
  br i1 %or.cond.i195.i, label %bb.v, label %bb.x

bb.v:                                             ; preds = %.lr.ph.i193.i
  %i.bw = trunc i64 %.135.i.i to i8
  %.not31.i.i = icmp eq i8 %i.bv, %i.bw
  br i1 %.not31.i.i, label %bb.z, label %bb.w, !prof !15

bb.w:                                             ; preds = %bb.v
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 52, ptr noundef nonnull @__func__.test_iov_bytes, ptr noundef nonnull @.str.19) #17
  unreachable

bb.x:                                             ; preds = %.lr.ph.i193.i
  %.not29.i.i = icmp eq i8 %i.bv, -1
  br i1 %.not29.i.i, label %bb.z, label %bb.y, !prof !15

bb.y:                                             ; preds = %bb.x
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 54, ptr noundef nonnull @__func__.test_iov_bytes, ptr noundef nonnull @.str.20) #17
  unreachable

bb.z:                                             ; preds = %bb.x, %bb.v
  %i.bx = add i64 %.135.i.i, 1
  %i.by = add nuw i64 %.02436.i.i, 1              ; 2 uses
  %exitcond.not.i196.i = icmp eq i64 %i.by, %i.br
  br i1 %exitcond.not.i196.i, label %._crit_edge.i.i, label %.lr.ph.i193.i, !llvm.loop !16

._crit_edge.i.i:                                  ; preds = %bb.z, %bb.u
  %.1.lcssa.i.i = phi i64 [ %.02637.i.i, %bb.u ], [ %i.bs, %bb.z ]
  %indvars.iv.next.i197.i = add nuw nsw i64 %indvars.iv.i192.i, 1 ; 2 uses
  %exitcond45.not.i.i = icmp eq i64 %indvars.iv.next.i197.i, %i.b
  br i1 %exitcond45.not.i.i, label %test_iov_bytes.exit.i, label %bb.u, !llvm.loop !17

test_iov_bytes.exit.i:                            ; preds = %._crit_edge.i.i, %bb.t
  %i.bz = add i32 %.0121228.i, 1                  ; 2 uses
  %i.ca = zext i32 %i.bz to i64
  %.not156.i = icmp ult i64 %i.j, %i.ca
  br i1 %.not156.i, label %._crit_edge.i, label %.lr.ph229.i, !llvm.loop !18

._crit_edge.i:                                    ; preds = %test_iov_bytes.exit.i, %bb.n
  %i.cb = add i32 %.1230.i, 1                     ; 2 uses
  %i.cc = zext i32 %i.cb to i64                   ; 2 uses
  %.not.i = icmp samesign ult i64 %i.j, %i.cc
  br i1 %.not.i, label %bb.aa, label %bb.c, !llvm.loop !19

bb.aa:                                            ; preds = %._crit_edge.i
  %i.cd = load i32, ptr %i.l, align 1
  %i.ce = icmp ne i32 %i.cd, 1633771873
  %i.cf = zext i1 %i.ce to i32
  %.not133.i = icmp eq i32 %i.cf, 0
  br i1 %.not133.i, label %bb.ab, label %.critedge.i

bb.ab:                                            ; preds = %bb.aa
  %i.cg = load i32, ptr %i.n, align 1
  %i.ch = icmp ne i32 %i.cg, 1650614882
  %i.ci = zext i1 %i.ch to i32
  %.not135.i = icmp eq i32 %i.ci, 0
  br i1 %.not135.i, label %bb.ac, label %.critedge.i

.critedge.i:                                      ; preds = %bb.ab, %bb.aa
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 139, ptr noundef nonnull @__func__.test_to_from_buf_1, ptr noundef nonnull @.str.17) #17
  unreachable

bb.ac:                                            ; preds = %bb.ab
  tail call void @g_free(ptr noundef nonnull %i.l) #15
  %i.cj = load i32, ptr %i.o, align 1
  %i.ck = icmp ne i32 %i.cj, 2021161080
  %i.cl = zext i1 %i.ck to i32
  %.not138.i = icmp eq i32 %i.cl, 0
  br i1 %.not138.i, label %bb.ad, label %.critedge167.i

bb.ad:                                            ; preds = %bb.ac
  %i.cm = load i32, ptr %i.q, align 1
  %i.cn = icmp ne i32 %i.cm, 2038004089
  %i.co = zext i1 %i.cn to i32
  %.not140.i = icmp eq i32 %i.co, 0
  br i1 %.not140.i, label %bb.ae, label %.critedge167.i

.critedge167.i:                                   ; preds = %bb.ad, %bb.ac
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 141, ptr noundef nonnull @__func__.test_to_from_buf_1, ptr noundef nonnull @.str.18) #17
  unreachable

bb.ae:                                            ; preds = %bb.ad
  tail call void @g_free(ptr noundef nonnull %i.o) #15
  br i1 %.not.i.i, label %test_to_from_buf_1.exit, label %.lr.ph.i201.i

.lr.ph.i201.i:                                    ; preds = %bb.ae, %.lr.ph.i201.i
  %indvars.iv.i202.i = phi i64 [ %indvars.iv.next.i203.i, %.lr.ph.i201.i ], [ 0, %bb.ae ] ; 2 uses
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv.i202.i
  %i.cq = load ptr, ptr %i.cp, align 8
  tail call void @g_free(ptr noundef %i.cq) #15
  %indvars.iv.next.i203.i = add nuw nsw i64 %indvars.iv.i202.i, 1 ; 2 uses
  %exitcond.not.i204.i = icmp eq i64 %indvars.iv.next.i203.i, %i.b
  br i1 %exitcond.not.i204.i, label %test_to_from_buf_1.exit, label %.lr.ph.i201.i, !llvm.loop !20

test_to_from_buf_1.exit:                          ; preds = %.lr.ph.i201.i, %bb.ae
  tail call void @g_free(ptr noundef %i.d) #15
  %i.cr = add nuw nsw i32 %.02, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.cr, 4
  br i1 %exitcond.not, label %bb.af, label %bb.b, !llvm.loop !21

bb.af:                                            ; preds = %test_to_from_buf_1.exit
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @test_io() #2 {
bb.a:
  %i.a = alloca [2 x i32], align 8                ; 12 uses
  %i.b = alloca i32, align 4                      ; 10 uses
  %0 = alloca %struct.fd_set, align 8             ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #15
  %i.c = tail call i32 @g_test_rand_int_range(i32 noundef 3, i32 noundef 8) #15 ; 8 uses
  %i.d = zext i32 %i.c to i64                     ; 4 uses
  %i.e = shl nuw nsw i64 %i.d, 4                  ; 4 uses
  %i.f = tail call noalias ptr @g_malloc(i64 noundef %i.e) #16 ; 13 uses
  %.not.i = icmp eq i32 %i.c, 0                   ; 3 uses
  br i1 %.not.i, label %iov_random.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = tail call i32 @g_test_rand_int_range(i32 noundef 5, i32 noundef 20) #15
  %i.h = sext i32 %i.g to i64                     ; 2 uses
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %indvars.iv.i ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %i.h, ptr %i.j, align 8
  %i.k = tail call noalias ptr @g_malloc(i64 noundef %i.h) #16
  store ptr %i.k, ptr %i.i, align 8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.d
  br i1 %exitcond.not.i, label %iov_random.exit, label %.lr.ph.i, !llvm.loop !7

iov_random.exit:                                  ; preds = %.lr.ph.i, %bb.a
  %i.l = tail call i64 @iov_size(ptr noundef %i.f, i32 noundef %i.c) #15 ; 21 uses
  %i.m = tail call noalias ptr @g_malloc(i64 noundef %i.l) #16 ; 6 uses
  %.not156 = icmp eq i64 %i.l, 0
  br i1 %.not156, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %iov_random.exit
  %min.iters.check = icmp ult i64 %i.l, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.n = add i64 %i.l, -1                         ; 2 uses
  %i.o = and i64 %i.n, 4294967295
  %i.p = icmp eq i64 %i.o, 4294967295
  %i.q = icmp ugt i64 %i.n, 4294967295
  %i.r = or i1 %i.p, %i.q
  br i1 %i.r, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check169 = icmp ult i64 %i.l, 32
  br i1 %min.iters.check169, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.s = and i64 %i.l, 28
  %n.vec = and i64 %i.l, 8589934560               ; 5 uses
  %1 = trunc i64 %n.vec to i32                    ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <16 x i8> [ <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <16 x i8> %vec.ind, splat (i8 16)
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <16 x i8> %vec.ind, ptr %i.t, align 1
  store <16 x i8> %step.add, ptr %i.u, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add <16 x i8> %vec.ind, splat (i8 32)
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !22

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.s, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !12

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i32 [ %1, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec170 = and i64 %i.l, 8589934588            ; 4 uses
  %2 = trunc i64 %n.vec170 to i32
  %i.w = trunc i32 %bc.resume.val to i8
  %broadcast.splatinsert = insertelement <4 x i8> poison, i8 %i.w, i64 0
  %broadcast.splat = shufflevector <4 x i8> %broadcast.splatinsert, <4 x i8> poison, <4 x i32> zeroinitializer
  %induction = add <4 x i8> %broadcast.splat, <i8 0, i8 1, i8 2, i8 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index171 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next173, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind172 = phi <4 x i8> [ %induction, %vec.epilog.ph ], [ %vec.ind.next174, %vec.epilog.vector.body ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 %index171
  store <4 x i8> %vec.ind172, ptr %i.x, align 1
  %index.next173 = add nuw i64 %index171, 4       ; 2 uses
  %vec.ind.next174 = add <4 x i8> %vec.ind172, splat (i8 4)
  %i.y = icmp eq i64 %index.next173, %n.vec170
  br i1 %i.y, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !23

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n175 = icmp eq i64 %i.l, %n.vec170
  br i1 %cmp.n175, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec170, %vec.epilog.middle.block ]
  %.0145.ph = phi i32 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ %1, %vec.epilog.iter.check ], [ %2, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %4, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ]
  %.0145 = phi i32 [ %3, %.lr.ph ], [ %.0145.ph, %.lr.ph.preheader ] ; 2 uses
  %i.z = trunc i32 %.0145 to i8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv
  store i8 %i.z, ptr %i.aa, align 1
  %3 = add i32 %.0145, 1                          ; 2 uses
  %4 = zext i32 %3 to i64                         ; 2 uses
  %i.ab = icmp ugt i64 %i.l, %4
  br i1 %i.ab, label %.lr.ph, label %._crit_edge, !llvm.loop !24

._crit_edge:                                      ; preds = %.lr.ph, %iov_random.exit, %vec.epilog.middle.block, %middle.block
  %i.ac = tail call i64 @iov_from_buf_full(ptr noundef %i.f, i32 noundef %i.c, i64 noundef 0, ptr noundef %i.m, i64 noundef range(i64 -4294967295, 4294967296) %i.l) #15 ; 0 uses
  store i64 0, ptr %i.a, align 8, !annotation !25
  store i32 0, ptr %i.b, align 4, !annotation !25
  %i.ad = tail call ptr @g_memdup2(ptr noundef %i.f, i64 noundef range(i64 0, 68719476721) %i.e) #18 ; 4 uses
  %i.ae = call i32 @socketpair(i32 noundef 1, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.a) #15
  %i.af = icmp slt i32 %i.ae, 0
  br i1 %i.af, label %bb.b, label %.preheader144.preheader

.preheader144.preheader:                          ; preds = %._crit_edge
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, i8 0, i64 128, i1 false)
  %i.ag = call i32 @fork() #15
  %i.ah = icmp eq i32 %i.ag, 0
  %i.ai = lshr i64 %i.l, 1
  %i.aj = trunc nuw nsw i64 %i.ai to i32          ; 2 uses
  %i.ak = trunc nuw i64 %i.l to i32               ; 2 uses
  br i1 %i.ah, label %bb.c, label %bb.m

bb.b:                                             ; preds = %._crit_edge
  call void @perror(ptr noundef nonnull @.str.21) #19
  call void @exit(i32 noundef 1) #20
  unreachable

bb.c:                                             ; preds = %.preheader144.preheader
  %i.al = load i32, ptr %i.a, align 8
  %i.am = call i32 @close(i32 noundef %i.al) #15  ; 0 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 5 uses
  %i.ao = load i32, ptr %i.an, align 4            ; 2 uses
  %i.ap = srem i32 %i.ao, 64
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = shl nuw i64 1, %i.aq
  %i.as = sext i32 %i.ao to i64
  %i.at = call i64 @__fdelt_chk(i64 noundef %i.as) #15
  %i.au = getelementptr inbounds [8 x i8], ptr %0, i64 %i.at ; 2 uses
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = or i64 %i.av, %i.ar
  store i64 %i.aw, ptr %i.au, align 8
  %i.ax = load i32, ptr %i.an, align 4
  %i.ay = call zeroext i1 @qemu_set_blocking(i32 noundef %i.ax, i1 noundef zeroext false, ptr noundef nonnull @error_abort) #15 ; 0 uses
  %i.az = call i32 @g_test_rand_int_range(i32 noundef %i.aj, i32 noundef %i.ak) #15
  store i32 %i.az, ptr %i.b, align 4
  %i.ba = load i32, ptr %i.an, align 4
  %i.bb = call i32 @setsockopt(i32 noundef %i.ba, i32 noundef 1, i32 noundef 7, ptr noundef nonnull %i.b, i32 noundef 4) #15 ; 0 uses
  br label %.preheader142

.preheader142:                                    ; preds = %bb.c, %._crit_edge154
  %.1155 = phi i32 [ 0, %bb.c ], [ %i.bw, %._crit_edge154 ] ; 4 uses
  %i.bc = zext i32 %.1155 to i64
  %.not103152 = icmp samesign ult i64 %i.l, %i.bc
  br i1 %.not103152, label %._crit_edge154, label %.preheader

.preheader:                                       ; preds = %.preheader142, %.critedge
  %.081153 = phi i32 [ %i.bd, %.critedge ], [ %.1155, %.preheader142 ] ; 2 uses
  %i.bd = add i32 %.081153, 1                     ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %bb.k
  %.083 = phi i32 [ %i.bq, %bb.k ], [ %.1155, %.preheader ] ; 3 uses
  %i.be = sub i32 %i.bd, %.083
  %i.bf = call i32 @g_test_rand_int_range(i32 noundef 0, i32 noundef %i.be) #15
  %i.bg = load i32, ptr %i.an, align 4
  %i.bh = zext i32 %.083 to i64
  %i.bi = zext i32 %i.bf to i64
  %i.bj = call i64 @iov_send_recv(i32 noundef %i.bg, ptr noundef %i.f, i32 noundef %i.c, i64 noundef %i.bh, i64 noundef %i.bi, i1 noundef zeroext true) #15
  %i.bk = trunc i64 %i.bj to i32                  ; 3 uses
  store i32 %i.bk, ptr %i.b, align 4
  %bcmp104 = call i32 @bcmp(ptr %i.f, ptr %i.ad, i64 %i.e)
  %.not106 = icmp eq i32 %bcmp104, 0
  br i1 %.not106, label %bb.f, label %bb.e, !prof !15

bb.e:                                             ; preds = %bb.d
  call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 200, ptr noundef nonnull @__func__.test_io, ptr noundef nonnull @.str.22) #17
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.bl = icmp slt i32 %i.bk, 0
  br i1 %i.bl, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.bm = tail call ptr @__errno_location() #21
  %i.bn = load i32, ptr %i.bm, align 4
  %i.bo = icmp eq i32 %i.bn, 11
  br i1 %i.bo, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.b, align 4
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  call void @perror(ptr noundef nonnull @.str.23) #19
  call void @exit(i32 noundef 1) #20
  unreachable

bb.j:                                             ; preds = %bb.h, %bb.f
  %i.bp = phi i32 [ 0, %bb.h ], [ %i.bk, %bb.f ]
  %i.bq = add i32 %i.bp, %.083                    ; 2 uses
  %i.br = icmp ult i32 %i.bq, %.081153
  br i1 %i.br, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.bs = load i32, ptr %i.an, align 4
  %i.bt = add i32 %i.bs, 1
  %i.bu = call i32 @select(i32 noundef %i.bt, ptr noundef null, ptr noundef nonnull %0, ptr noundef null, ptr noundef null) #15 ; 0 uses
  br label %bb.d, !llvm.loop !26

.critedge:                                        ; preds = %bb.j
  %i.bv = zext i32 %i.bd to i64
  %.not103 = icmp ult i64 %i.l, %i.bv
  br i1 %.not103, label %._crit_edge154, label %.preheader, !llvm.loop !27

._crit_edge154:                                   ; preds = %.critedge, %.preheader142
  %i.bw = add i32 %.1155, 1                       ; 2 uses
  %i.bx = zext i32 %i.bw to i64
  %.not102 = icmp samesign ult i64 %i.l, %i.bx
  br i1 %.not102, label %bb.l, label %.preheader142, !llvm.loop !28

bb.l:                                             ; preds = %._crit_edge154
  call fastcc void @iov_free(ptr noundef %i.f, i32 noundef %i.c)
  call void @g_free(ptr noundef %i.m) #15
  call void @g_free(ptr noundef %i.ad) #15
  call void @exit(i32 noundef 0) #17
  unreachable

bb.m:                                             ; preds = %.preheader144.preheader
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.bz = load i32, ptr %i.by, align 4
  %i.ca = call i32 @close(i32 noundef %i.bz) #15  ; 0 uses
  %i.cb = load i32, ptr %i.a, align 8             ; 2 uses
  %i.cc = srem i32 %i.cb, 64
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = shl nuw i64 1, %i.cd
  %i.cf = sext i32 %i.cb to i64
  %i.cg = call i64 @__fdelt_chk(i64 noundef %i.cf) #15
  %i.ch = getelementptr inbounds [8 x i8], ptr %0, i64 %i.cg ; 2 uses
  %i.ci = load i64, ptr %i.ch, align 8
  %i.cj = or i64 %i.ci, %i.ce
  store i64 %i.cj, ptr %i.ch, align 8
  %i.ck = load i32, ptr %i.a, align 8
  %i.cl = call zeroext i1 @qemu_set_blocking(i32 noundef %i.ck, i1 noundef zeroext false, ptr noundef nonnull @error_abort) #15 ; 0 uses
  %i.cm = call i32 @g_test_rand_int_range(i32 noundef %i.aj, i32 noundef %i.ak) #15
  store i32 %i.cm, ptr %i.b, align 4
  %i.cn = load i32, ptr %i.a, align 8
  %i.co = call i32 @setsockopt(i32 noundef %i.cn, i32 noundef 1, i32 noundef 8, ptr noundef nonnull %i.b, i32 noundef 4) #15 ; 0 uses
  %i.cp = call i32 @usleep(i32 noundef 500000) #15 ; 0 uses
  br label %.preheader143

.preheader143:                                    ; preds = %bb.m, %._crit_edge150
  %i.cq = phi i64 [ 0, %bb.m ], [ %i.ea, %._crit_edge150 ] ; 2 uses
  %.2151 = phi i32 [ 0, %bb.m ], [ %i.dz, %._crit_edge150 ] ; 5 uses
  %i.cr = zext i32 %.2151 to i64
  %.not97147 = icmp ult i64 %i.l, %i.cr
  br i1 %.not97147, label %._crit_edge150, label %.lr.ph149

.lr.ph149:                                        ; preds = %.preheader143, %test_iov_bytes.exit
  %.182148 = phi i32 [ %i.ct, %test_iov_bytes.exit ], [ %.2151, %.preheader143 ] ; 3 uses
  %i.cs = call i64 @iov_memset(ptr noundef %i.f, i32 noundef %i.c, i64 noundef 0, i32 noundef 255, i64 noundef %i.l) #15 ; 0 uses
  %i.ct = add i32 %.182148, 1                     ; 3 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.w, %.lr.ph149
  %.184 = phi i32 [ %.2151, %.lr.ph149 ], [ %.285, %bb.w ] ; 5 uses
  %i.cu = sub i32 %i.ct, %.184
  %i.cv = call i32 @g_test_rand_int_range(i32 noundef 0, i32 noundef %i.cu) #15 ; 2 uses
  %i.cw = load i32, ptr %i.a, align 8
  %i.cx = zext i32 %.184 to i64
  %i.cy = zext i32 %i.cv to i64
  %i.cz = call i64 @iov_send_recv(i32 noundef %i.cw, ptr noundef %i.f, i32 noundef %i.c, i64 noundef %i.cx, i64 noundef %i.cy, i1 noundef zeroext false) #15
  %i.da = trunc i64 %i.cz to i32                  ; 4 uses
  store i32 %i.da, ptr %i.b, align 4
  %bcmp = call i32 @bcmp(ptr %i.f, ptr %i.ad, i64 %i.e)
  %.not99 = icmp eq i32 %bcmp, 0
  br i1 %.not99, label %bb.p, label %bb.o, !prof !15

bb.o:                                             ; preds = %bb.n
  call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 238, ptr noundef nonnull @__func__.test_io, ptr noundef nonnull @.str.22) #17
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.db = icmp sgt i32 %i.da, 0
  br i1 %i.db, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.dc = add i32 %.184, %i.da
  br label %bb.w

bb.r:                                             ; preds = %bb.p
  %.not100 = icmp eq i32 %i.da, 0
  br i1 %.not100, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %.not101 = icmp eq i32 %i.cv, 0
  br i1 %.not101, label %bb.w, label %bb.x

bb.t:                                             ; preds = %bb.r
  %i.dd = tail call ptr @__errno_location() #21
  %i.de = load i32, ptr %i.dd, align 4
  %i.df = icmp eq i32 %i.de, 11
  br i1 %i.df, label %bb.u, label %bb.v
end_hunk_0
