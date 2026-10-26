Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/threads_pthread?download=true
inline.NumInlined: 9
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"crypto/threads_pthread.c\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"assertion failed: ret != UINT64_MAX\00", align 1

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ossl_rcu_read_lock(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.c = tail call ptr @CRYPTO_THREAD_get_local_ex(i32 noundef 0, ptr noundef %i.b) #10 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noalias ptr @CRYPTO_zalloc(i64 noundef 240, ptr noundef nonnull @.str, i32 noundef 338) #10 ; 5 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.s, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.h = tail call i32 @CRYPTO_THREAD_set_local_ex(i32 noundef 0, ptr noundef %i.g, ptr noundef nonnull %i.e) #10
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @CRYPTO_free(ptr noundef nonnull %i.e, ptr noundef nonnull @.str, i32 noundef 343) #10
  br label %bb.s

bb.e:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.j = tail call i32 @ossl_init_thread_start(ptr noundef null, ptr noundef %i.i, ptr noundef nonnull @ossl_rcu_free_local_data) #10
  %.not34 = icmp eq i32 %i.j, 0
  br i1 %.not34, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @CRYPTO_free(ptr noundef nonnull %i.e, ptr noundef nonnull @.str, i32 noundef 347) #10
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.l = tail call i32 @CRYPTO_THREAD_set_local_ex(i32 noundef 0, ptr noundef %i.k, ptr noundef null) #10 ; 0 uses
  br label %bb.s

bb.g:                                             ; preds = %bb.e, %bb.a
  %.030 = phi ptr [ %i.e, %bb.e ], [ %i.c, %bb.a ] ; 22 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.030, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !16
  %i.o = icmp eq ptr %i.n, %0
  br i1 %i.o, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.g
  %.lcssa39 = phi ptr [ %.030, %bb.g ], [ %i.s, %bb.i ], [ %i.w, %bb.j ], [ %i.aa, %bb.k ], [ %i.ae, %bb.l ], [ %i.ai, %bb.m ], [ %i.am, %bb.n ], [ %i.aq, %bb.o ], [ %i.au, %bb.p ], [ %i.ay, %bb.q ]
  %i.p = getelementptr inbounds nuw i8, ptr %.lcssa39, i64 8 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !17
  %i.r = add i32 %i.q, 1
  store i32 %i.r, ptr %i.p, align 8, !tbaa !17
  br label %bb.s

bb.i:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %.030, i64 24 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.030, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !16
  %i.v = icmp eq ptr %i.u, %0
  br i1 %i.v, label %bb.h, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %.030, i64 48 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.030, i64 64
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !16
  %i.z = icmp eq ptr %i.y, %0
  br i1 %i.z, label %bb.h, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %.030, i64 72 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.030, i64 88
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !16
  %i.ad = icmp eq ptr %i.ac, %0
  br i1 %i.ad, label %bb.h, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = getelementptr inbounds nuw i8, ptr %.030, i64 96 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.030, i64 112
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !16
  %i.ah = icmp eq ptr %i.ag, %0
  br i1 %i.ah, label %bb.h, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %.030, i64 120 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.030, i64 136
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !16
  %i.al = icmp eq ptr %i.ak, %0
  br i1 %i.al, label %bb.h, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.am = getelementptr inbounds nuw i8, ptr %.030, i64 144 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.030, i64 160
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !16
  %i.ap = icmp eq ptr %i.ao, %0
  br i1 %i.ap, label %bb.h, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aq = getelementptr inbounds nuw i8, ptr %.030, i64 168 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.030, i64 184
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !16
  %i.at = icmp eq ptr %i.as, %0
  br i1 %i.at, label %bb.h, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.au = getelementptr inbounds nuw i8, ptr %.030, i64 192 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.030, i64 208
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !16
  %i.ax = icmp eq ptr %i.aw, %0
  br i1 %i.ax, label %bb.h, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ay = getelementptr inbounds nuw i8, ptr %.030, i64 216 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.030, i64 232
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !16
  %i.bb = icmp eq ptr %i.ba, %0
  br i1 %i.bb, label %bb.h, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bc = load ptr, ptr %i.au, align 8, !tbaa !18
  %i.bd = icmp eq ptr %i.bc, null
  %i.be = load ptr, ptr %i.aq, align 8, !tbaa !18
  %i.bf = icmp eq ptr %i.be, null
  %i.bg = load ptr, ptr %i.am, align 8, !tbaa !18
  %i.bh = icmp eq ptr %i.bg, null
  %i.bi = load ptr, ptr %i.ai, align 8, !tbaa !18
  %i.bj = icmp eq ptr %i.bi, null
  %i.bk = load ptr, ptr %i.ae, align 8, !tbaa !18
  %i.bl = icmp eq ptr %i.bk, null
  %i.bm = load ptr, ptr %i.aa, align 8, !tbaa !18
  %i.bn = icmp eq ptr %i.bm, null
  %i.bo = load ptr, ptr %i.w, align 8, !tbaa !18
  %i.bp = icmp eq ptr %i.bo, null
  %i.bq = load ptr, ptr %i.s, align 8, !tbaa !18
  %i.br = icmp eq ptr %i.bq, null                 ; 2 uses
  %1 = xor i1 %i.br, true
  %2 = select i1 %i.bp, i1 %1, i1 false
  %3 = load ptr, ptr %.030, align 8, !tbaa !18
  %4 = icmp ne ptr %3, null                       ; 3 uses
  %i.bs = select i1 %2, i1 %4, i1 false
  %or.cond.2 = select i1 %i.br, i1 %4, i1 false
  %spec.select = sext i1 %4 to i32
  %spec.select.1 = select i1 %or.cond.2, i32 1, i32 %spec.select
  %spec.select.2 = select i1 %i.bs, i32 2, i32 %spec.select.1 ; 2 uses
  %i.bt = icmp eq i32 %spec.select.2, -1
  %or.cond.3 = select i1 %i.bn, i1 %i.bt, i1 false
  %spec.select.3 = select i1 %or.cond.3, i32 3, i32 %spec.select.2 ; 2 uses
  %i.bu = icmp eq i32 %spec.select.3, -1
  %or.cond.4 = select i1 %i.bl, i1 %i.bu, i1 false
  %spec.select.4 = select i1 %or.cond.4, i32 4, i32 %spec.select.3 ; 2 uses
  %i.bv = icmp eq i32 %spec.select.4, -1
  %or.cond.5 = select i1 %i.bj, i1 %i.bv, i1 false
  %spec.select.5 = select i1 %or.cond.5, i32 5, i32 %spec.select.4 ; 2 uses
  %i.bw = icmp eq i32 %spec.select.5, -1
  %or.cond.6 = select i1 %i.bh, i1 %i.bw, i1 false
  %spec.select.6 = select i1 %or.cond.6, i32 6, i32 %spec.select.5 ; 2 uses
  %i.bx = icmp eq i32 %spec.select.6, -1
  %or.cond.7 = select i1 %i.bf, i1 %i.bx, i1 false
  %spec.select.7 = select i1 %or.cond.7, i32 7, i32 %spec.select.6 ; 2 uses
  %i.by = icmp eq i32 %spec.select.7, -1
  %or.cond.8 = select i1 %i.bd, i1 %i.by, i1 false
  %spec.select.8 = select i1 %or.cond.8, i32 8, i32 %spec.select.7 ; 2 uses
  %i.bz = load ptr, ptr %i.ay, align 8, !tbaa !18
  %i.ca = icmp eq ptr %i.bz, null
  %i.cb = icmp eq i32 %spec.select.8, -1
  %or.cond.9 = select i1 %i.ca, i1 %i.cb, i1 false
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.ce = load atomic i32, ptr %i.cc monotonic, align 8 ; 2 uses
  %i.cf = load ptr, ptr %i.cd, align 8, !tbaa !19
  %i.cg = zext i32 %i.ce to i64                   ; 3 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.cg
  %i.ci = atomicrmw add ptr %i.ch, i64 1 acquire, align 8 ; 0 uses
  %i.cj = load atomic i32, ptr %i.cc acquire, align 8
  %i.ck = icmp eq i32 %i.ce, %i.cj
  br i1 %i.ck, label %get_hold_current_qp.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.r, %.lr.ph.i
  %i.cl = phi i64 [ %i.cr, %.lr.ph.i ], [ %i.cg, %bb.r ]
  %i.cm = load ptr, ptr %i.cd, align 8, !tbaa !19
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cl
  %i.co = atomicrmw add ptr %i.cn, i64 -1 monotonic, align 8 ; 0 uses
  %i.cp = load atomic i32, ptr %i.cc monotonic, align 8 ; 2 uses
  %i.cq = load ptr, ptr %i.cd, align 8, !tbaa !19
  %i.cr = zext i32 %i.cp to i64                   ; 3 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.cr
  %i.ct = atomicrmw add ptr %i.cs, i64 1 acquire, align 8 ; 0 uses
  %i.cu = load atomic i32, ptr %i.cc acquire, align 8
  %i.cv = icmp eq i32 %i.cp, %i.cu
  br i1 %i.cv, label %get_hold_current_qp.exit, label %.lr.ph.i

get_hold_current_qp.exit:                         ; preds = %.lr.ph.i, %bb.r
  %.lcssa.i = phi i64 [ %i.cg, %bb.r ], [ %i.cr, %.lr.ph.i ]
  %i.cw = load ptr, ptr %i.cd, align 8, !tbaa !19
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %.lcssa.i
  %i.cy = sext i32 %spec.select.8 to i64
  %i.cz = select i1 %or.cond.9, i64 9, i64 %i.cy
  %i.da = getelementptr inbounds [24 x i8], ptr %.030, i64 %i.cz ; 3 uses
  store ptr %i.cx, ptr %i.da, align 8, !tbaa !18
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store i32 1, ptr %i.db, align 8, !tbaa !17
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  store ptr %0, ptr %i.dc, align 8, !tbaa !16
  br label %bb.s

bb.s:                                             ; preds = %bb.b, %get_hold_current_qp.exit, %bb.h, %bb.f, %bb.d
  %.031 = phi i32 [ 0, %bb.d ], [ 1, %bb.h ], [ 1, %get_hold_current_qp.exit ], [ 0, %bb.f ], [ 0, %bb.b ]
  ret i32 %.031
}

declare ptr @CRYPTO_THREAD_get_local_ex(i32 noundef, ptr noundef) local_unnamed_addr #1

declare noalias ptr @CRYPTO_zalloc(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @CRYPTO_THREAD_set_local_ex(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @CRYPTO_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @ossl_init_thread_start(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @ossl_rcu_free_local_data(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @CRYPTO_THREAD_get_local_ex(i32 noundef 0, ptr noundef %0) #10
  %i.b = tail call i32 @CRYPTO_THREAD_set_local_ex(i32 noundef 0, ptr noundef %0, ptr noundef null) #10 ; 0 uses
  tail call void @CRYPTO_free(ptr noundef %i.a, ptr noundef nonnull @.str, i32 noundef 323) #10
  ret void
}

; Function Attrs: nounwind uwtable
define void @ossl_rcu_read_unlock(ptr nofree noundef readonly captures(address) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.c = tail call ptr @CRYPTO_THREAD_get_local_ex(i32 noundef 0, ptr noundef %i.b) #10 ; 20 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16
  %i.f = icmp eq ptr %i.e, %0
  br i1 %i.f, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !16
  %i.j = icmp eq ptr %i.i, %0
  br i1 %i.j, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !16
  %i.n = icmp eq ptr %i.m, %0
  br i1 %i.n, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !16
  %i.r = icmp eq ptr %i.q, %0
  br i1 %i.r, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !16
  %i.v = icmp eq ptr %i.u, %0
  br i1 %i.v, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !16
  %i.z = icmp eq ptr %i.y, %0
  br i1 %i.z, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !16
  %i.ad = icmp eq ptr %i.ac, %0
  br i1 %i.ad, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 184
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !16
  %i.ah = icmp eq ptr %i.ag, %0
  br i1 %i.ah, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !16
  %i.al = icmp eq ptr %i.ak, %0
  br i1 %i.al, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 216
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 232
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !16
  %i.ap = icmp eq ptr %i.ao, %0
  br i1 %i.ap, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.lcssa = phi ptr [ %i.c, %bb.a ], [ %i.g, %bb.b ], [ %i.k, %bb.c ], [ %i.o, %bb.d ], [ %i.s, %bb.e ], [ %i.w, %bb.f ], [ %i.aa, %bb.g ], [ %i.ae, %bb.h ], [ %i.ai, %bb.i ], [ %i.am, %bb.j ] ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.lcssa, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %.lcssa, i64 8 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !17
  %i.at = add i32 %i.as, -1                       ; 2 uses
  store i32 %i.at, ptr %i.ar, align 8, !tbaa !17
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %bb.k
  %i.av = load ptr, ptr %.lcssa, align 8, !tbaa !18
  %i.aw = atomicrmw add ptr %i.av, i64 -1 release, align 8
  %.not = icmp eq i64 %i.aw, 0
  br i1 %.not, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @OPENSSL_die(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 393) #11
  unreachable

bb.n:                                             ; preds = %bb.l
  store ptr null, ptr %.lcssa, align 8, !tbaa !18
  store ptr null, ptr %i.aq, align 8, !tbaa !16
  br label %.loopexit

.loopexit:                                        ; preds = %bb.j, %bb.k, %bb.n
  ret void
}

; Function Attrs: noreturn
declare void @OPENSSL_die(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @ossl_rcu_write_lock(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.a) #10 ; 0 uses
  ret void
}

; Function Attrs: nounwind
end_hunk_0
