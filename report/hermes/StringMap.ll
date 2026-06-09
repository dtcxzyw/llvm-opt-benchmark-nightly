inline.NumInlined: 24
inline.NumDeleted: 14
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZN4llvh11safe_callocEmm = comdat any

@.str = private unnamed_addr constant [18 x i8] c"Allocation failed\00", align 1

@_ZN4llvh13StringMapImplC1Ejj = hidden unnamed_addr alias void (ptr, i32, i32), ptr @_ZN4llvh13StringMapImplC2Ejj

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh13StringMapImplC2Ejj(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store i32 %2, ptr %i.b, align 4, !tbaa !7
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = shl i32 %1, 2
  %i.e = udiv i32 %i.d, 3
  %i.f = add nuw nsw i32 %i.e, 1
  %i.g = zext nneg i32 %i.f to i64                ; 2 uses
  %i.h = lshr i64 %i.g, 1
  %i.i = or i64 %i.h, %i.g                        ; 2 uses
  %i.j = lshr i64 %i.i, 2
  %i.k = or i64 %i.j, %i.i                        ; 2 uses
  %i.l = lshr i64 %i.k, 4
  %i.m = or i64 %i.l, %i.k                        ; 2 uses
  %i.n = lshr i64 %i.m, 8
  %i.o = or i64 %i.n, %i.m                        ; 2 uses
  %i.p = lshr i64 %i.o, 16
  %i.q = or i64 %i.p, %i.o                        ; 2 uses
  %i.r = trunc nuw nsw i64 %i.q to i32
  %i.s = add nuw i32 %i.r, 1                      ; 2 uses
  store i32 0, ptr %i.c, align 8, !tbaa !12
  %i.t = add nuw nsw i64 %i.q, 2
  %i.u = tail call noalias ptr @calloc(i64 noundef %i.t, i64 noundef 12) #10 ; 3 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.c, label %_ZN4llvh13StringMapImpl4initEj.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvh22report_bad_alloc_errorEPKcb(ptr noundef nonnull @.str, i1 noundef zeroext true) #11
  br label %_ZN4llvh13StringMapImpl4initEj.exit

_ZN4llvh13StringMapImpl4initEj.exit:              ; preds = %bb.b, %bb.c
  store ptr %i.u, ptr %0, align 8, !tbaa !13
  store i32 %i.s, ptr %i.a, align 8, !tbaa !14
  %i.w = zext i32 %i.s to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.w
  store ptr inttoptr (i64 2 to ptr), ptr %i.x, align 8, !tbaa !15
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, i8 0, i64 20, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN4llvh13StringMapImpl4initEj.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh13StringMapImpl4initEj(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 20)) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %.not = icmp eq i32 %1, 0
  %i.a = select i1 %.not, i32 16, i32 %1          ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.b, align 4, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.c, align 8, !tbaa !12
  %i.d = add i32 %i.a, 1
  %i.e = zext i32 %i.d to i64
  %i.f = tail call noalias ptr @calloc(i64 noundef %i.e, i64 noundef 12) #10 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %_ZN4llvh11safe_callocEmm.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvh22report_bad_alloc_errorEPKcb(ptr noundef nonnull @.str, i1 noundef zeroext true) #11
  br label %_ZN4llvh11safe_callocEmm.exit

_ZN4llvh11safe_callocEmm.exit:                    ; preds = %bb.a, %bb.b
  store ptr %i.f, ptr %0, align 8, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.a, ptr %i.h, align 8, !tbaa !14
  %i.i = zext i32 %i.a to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.i
  store ptr inttoptr (i64 2 to ptr), ptr %i.j, align 8, !tbaa !15
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull ptr @_ZN4llvh11safe_callocEmm(i64 noundef %0, i64 noundef %1) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #10 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvh22report_bad_alloc_errorEPKcb(ptr noundef nonnull @.str, i1 noundef zeroext true) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 0, -1) i32 @_ZN4llvh13StringMapImpl15LookupBucketForENS_9StringRefE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr nofree readonly captures(address) %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.d, align 4, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.e, align 8, !tbaa !12
  %i.f = tail call noalias dereferenceable_or_null(204) ptr @calloc(i64 noundef 17, i64 noundef 12) #10 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %_ZN4llvh13StringMapImpl4initEj.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvh22report_bad_alloc_errorEPKcb(ptr noundef nonnull @.str, i1 noundef zeroext true) #11
  br label %_ZN4llvh13StringMapImpl4initEj.exit

_ZN4llvh13StringMapImpl4initEj.exit:              ; preds = %bb.b, %bb.c
  store ptr %i.f, ptr %0, align 8, !tbaa !13
  store i32 16, ptr %i.a, align 8, !tbaa !14
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  store ptr inttoptr (i64 2 to ptr), ptr %i.h, align 8, !tbaa !15
  br label %bb.d

bb.d:                                             ; preds = %_ZN4llvh13StringMapImpl4initEj.exit, %bb.a
  %i.i = phi i32 [ 16, %_ZN4llvh13StringMapImpl4initEj.exit ], [ %i.b, %bb.a ] ; 2 uses
  %.not11.i = icmp eq i64 %2, 0                   ; 2 uses
  br i1 %.not11.i, label %_ZN4llvh7djbHashENS_9StringRefEj.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.d
  %xtraiter = and i64 %2, 7                       ; 3 uses
  %i.j = icmp ult i64 %2, 8
  br i1 %i.j, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %2, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.013.i = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %i.aw, %.lr.ph.i ]
  %.0912.i = phi ptr [ %1, %.lr.ph.i.preheader.new ], [ %i.ax, %.lr.ph.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.k = load i8, ptr %.0912.i, align 1, !tbaa !18
  %i.l = mul i32 %.013.i, 33
  %i.m = zext i8 %i.k to i32
  %i.n = add i32 %i.l, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %.0912.i, i64 1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !18
  %i.q = mul i32 %i.n, 33
  %i.r = zext i8 %i.p to i32
  %i.s = add i32 %i.q, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %.0912.i, i64 2
  %i.u = load i8, ptr %i.t, align 1, !tbaa !18
  %i.v = mul i32 %i.s, 33
  %i.w = zext i8 %i.u to i32
  %i.x = add i32 %i.v, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %.0912.i, i64 3
  %i.z = load i8, ptr %i.y, align 1, !tbaa !18
  %i.aa = mul i32 %i.x, 33
  %i.ab = zext i8 %i.z to i32
  %i.ac = add i32 %i.aa, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %.0912.i, i64 4
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !18
  %i.af = mul i32 %i.ac, 33
  %i.ag = zext i8 %i.ae to i32
  %i.ah = add i32 %i.af, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %.0912.i, i64 5
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !18
  %i.ak = mul i32 %i.ah, 33
  %i.al = zext i8 %i.aj to i32
  %i.am = add i32 %i.ak, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %.0912.i, i64 6
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !18
  %i.ap = mul i32 %i.am, 33
  %i.aq = zext i8 %i.ao to i32
  %i.ar = add i32 %i.ap, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %.0912.i, i64 7
  %i.at = load i8, ptr %i.as, align 1, !tbaa !18
  %i.au = mul i32 %i.ar, 33
  %i.av = zext i8 %i.at to i32
  %i.aw = add i32 %i.au, %i.av                    ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.0912.i, i64 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN4llvh7djbHashENS_9StringRefEj.exit.loopexit.unr-lcssa, label %.lr.ph.i

_ZN4llvh7djbHashENS_9StringRefEj.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN4llvh7djbHashENS_9StringRefEj.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN4llvh7djbHashENS_9StringRefEj.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.013.i.epil.init = phi i32 [ 0, %.lr.ph.i.preheader ], [ %i.aw, %_ZN4llvh7djbHashENS_9StringRefEj.exit.loopexit.unr-lcssa ]
  %.0912.i.epil.init = phi ptr [ %1, %.lr.ph.i.preheader ], [ %i.ax, %_ZN4llvh7djbHashENS_9StringRefEj.exit.loopexit.unr-lcssa ]
  %lcmp.mod83 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod83)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.013.i.epil = phi i32 [ %i.bb, %.lr.ph.i.epil ], [ %.013.i.epil.init, %.lr.ph.i.epil.preheader ]
  %.0912.i.epil = phi ptr [ %i.bc, %.lr.ph.i.epil ], [ %.0912.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.ay = load i8, ptr %.0912.i.epil, align 1, !tbaa !18
  %i.az = mul i32 %.013.i.epil, 33
  %i.ba = zext i8 %i.ay to i32
  %i.bb = add i32 %i.az, %i.ba                    ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.0912.i.epil, i64 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN4llvh7djbHashENS_9StringRefEj.exit, label %.lr.ph.i.epil, !llvm.loop !19

_ZN4llvh7djbHashENS_9StringRefEj.exit:            ; preds = %_ZN4llvh7djbHashENS_9StringRefEj.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.d
  %.0.lcssa.i = phi i32 [ 0, %bb.d ], [ %i.aw, %_ZN4llvh7djbHashENS_9StringRefEj.exit.loopexit.unr-lcssa ], [ %i.bb, %.lr.ph.i.epil ] ; 3 uses
  %i.bd = add i32 %i.i, -1
  %i.be = load ptr, ptr %0, align 8, !tbaa !13    ; 2 uses
  %i.bf = zext i32 %i.i to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bj = load i32, ptr %i.bi, align 4
  %i.bk = zext i32 %i.bj to i64
  br label %bb.e

bb.e:                                             ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.thread, %_ZN4llvh7djbHashENS_9StringRefEj.exit
  %.043 = phi i32 [ -1, %_ZN4llvh7djbHashENS_9StringRefEj.exit ], [ %.144, %_ZNK4llvh9StringRef6equalsES0_.exit.thread ] ; 8 uses
  %.041 = phi i32 [ 1, %_ZN4llvh7djbHashENS_9StringRefEj.exit ], [ %i.bz, %_ZNK4llvh9StringRef6equalsES0_.exit.thread ] ; 2 uses
  %.0.lcssa.i.pn = phi i32 [ %.0.lcssa.i, %_ZN4llvh7djbHashENS_9StringRefEj.exit ], [ %i.by, %_ZNK4llvh9StringRef6equalsES0_.exit.thread ]
  %.037 = and i32 %.0.lcssa.i.pn, %i.bd           ; 6 uses
  %i.bl = zext i32 %.037 to i64                   ; 3 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bl
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !15 ; 3 uses
  %magicptr = ptrtoint ptr %i.bn to i64
  switch i64 %magicptr, label %bb.g [
    i64 0, label %.thread.sink.split
    i64 -8, label %bb.f
  ], !prof !21

.thread.sink.split:                               ; preds = %bb.e
  %.not48 = icmp eq i32 %.043, -1                 ; 2 uses
  %i.bo = sext i32 %.043 to i64
  %.sink73 = select i1 %.not48, i64 %i.bl, i64 %i.bo
  %.3.ph.ph = select i1 %.not48, i32 %.037, i32 %.043
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %.sink73
  store i32 %.0.lcssa.i, ptr %i.bp, align 4, !tbaa !3
  br label %.thread

bb.f:                                             ; preds = %bb.e
  %i.bq = icmp eq i32 %.043, -1
  %spec.select = select i1 %i.bq, i32 %.037, i32 %.043
  br label %_ZNK4llvh9StringRef6equalsES0_.exit.thread

bb.g:                                             ; preds = %bb.e
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.bl
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !3
  %i.bt = icmp eq i32 %i.bs, %.0.lcssa.i
  br i1 %i.bt, label %bb.h, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread, !prof !22

bb.h:                                             ; preds = %bb.g
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bk
  %i.bv = load i64, ptr %i.bn, align 8, !tbaa !23
  %i.bw = icmp eq i64 %2, %i.bv
  br i1 %i.bw, label %bb.i, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread

bb.i:                                             ; preds = %bb.h
  br i1 %.not11.i, label %.thread, label %_ZNK4llvh9StringRef6equalsES0_.exit

_ZNK4llvh9StringRef6equalsES0_.exit:              ; preds = %bb.i
  %bcmp = tail call i32 @bcmp(ptr %1, ptr nonnull %i.bu, i64 %2)
  %i.bx = icmp eq i32 %bcmp, 0
  br i1 %i.bx, label %.thread, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread

_ZNK4llvh9StringRef6equalsES0_.exit.thread:       ; preds = %bb.h, %bb.g, %bb.f, %_ZNK4llvh9StringRef6equalsES0_.exit
  %.144 = phi i32 [ %.043, %bb.g ], [ %spec.select, %bb.f ], [ %.043, %_ZNK4llvh9StringRef6equalsES0_.exit ], [ %.043, %bb.h ]
  %i.by = add i32 %.037, %.041
  %i.bz = add i32 %.041, 1
  br label %bb.e, !llvm.loop !26

.thread:                                          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit, %bb.i, %.thread.sink.split
  %.3.ph = phi i32 [ %.3.ph.ph, %.thread.sink.split ], [ %.037, %bb.i ], [ %.037, %_ZNK4llvh9StringRef6equalsES0_.exit ]
  ret i32 %.3.ph
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i32 @_ZNK4llvh13StringMapImpl7FindKeyENS_9StringRefE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree readonly captures(address) %1, i64 %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !14   ; 3 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %.thread37, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not11.i = icmp eq i64 %2, 0                   ; 2 uses
  br i1 %.not11.i, label %_ZN4llvh7djbHashENS_9StringRefEj.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %xtraiter = and i64 %2, 7                       ; 3 uses
  %i.d = icmp ult i64 %2, 8
  br i1 %i.d, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %2, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.013.i = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %i.aq, %.lr.ph.i ]
  %.0912.i = phi ptr [ %1, %.lr.ph.i.preheader.new ], [ %i.ar, %.lr.ph.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.e = load i8, ptr %.0912.i, align 1, !tbaa !18
  %i.f = mul i32 %.013.i, 33
  %i.g = zext i8 %i.e to i32
  %i.h = add i32 %i.f, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %.0912.i, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !18
  %i.k = mul i32 %i.h, 33
  %i.l = zext i8 %i.j to i32
  %i.m = add i32 %i.k, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %.0912.i, i64 2
  %i.o = load i8, ptr %i.n, align 1, !tbaa !18
  %i.p = mul i32 %i.m, 33
end_hunk_0
begin_hunk_1_@_ZN4llvh13StringMapImpl9RemoveKeyENS_9StringRefE:bb.a
  ], !prof !21

bb.c:                                             ; preds = %_ZN4llvh7djbHashENS_9StringRefEj.exit.i.split.us
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.bk
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !3
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %bb.d, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread.i.us, !prof !22

bb.d:                                             ; preds = %bb.c
  %i.bq = load i64, ptr %i.bm, align 8, !tbaa !23
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %_ZNK4llvh13StringMapImpl7FindKeyENS_9StringRefE.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread.i.us

_ZNK4llvh9StringRef6equalsES0_.exit.thread.i.us:  ; preds = %bb.d, %bb.c, %_ZN4llvh7djbHashENS_9StringRefEj.exit.i.split.us
  %i.bs = add i32 %.027.i.us, %.029.i.us
  %i.bt = add i32 %.029.i.us, 1
  br label %_ZN4llvh7djbHashENS_9StringRefEj.exit.i.split.us, !llvm.loop !29

_ZN4llvh7djbHashENS_9StringRefEj.exit.i.split:    ; preds = %_ZN4llvh7djbHashENS_9StringRefEj.exit.i.split.preheader, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.i
  %.029.i = phi i32 [ %i.cf, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.i ], [ 1, %_ZN4llvh7djbHashENS_9StringRefEj.exit.i.split.preheader ] ; 2 uses
  %.0.lcssa.i.pn.i = phi i32 [ %i.ce, %_ZNK4llvh9StringRef6equalsES0_.exit.thread.i ], [ %.lcssa, %_ZN4llvh7djbHashENS_9StringRefEj.exit.i.split.preheader ]
  %.027.i = and i32 %.0.lcssa.i.pn.i, %i.ax       ; 3 uses
  %i.bu = zext i32 %.027.i to i64                 ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bu
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !15 ; 3 uses
  %magicptr.i = ptrtoint ptr %i.bw to i64
  switch i64 %magicptr.i, label %bb.e [
    i64 0, label %_ZNK4llvh13StringMapImpl7FindKeyENS_9StringRefE.exit.thread
    i64 -8, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread.i
  ], !prof !21

bb.e:                                             ; preds = %_ZN4llvh7djbHashENS_9StringRefEj.exit.i.split
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.bu
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !3
  %i.bz = icmp eq i32 %i.by, %.lcssa
  br i1 %i.bz, label %bb.f, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread.i, !prof !22

bb.f:                                             ; preds = %bb.e
  %i.ca = load i64, ptr %i.bw, align 8, !tbaa !23
  %i.cb = icmp eq i64 %2, %i.ca
  br i1 %i.cb, label %_ZNK4llvh9StringRef6equalsES0_.exit.i, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread.i

_ZNK4llvh9StringRef6equalsES0_.exit.i:            ; preds = %bb.f
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.be
  %bcmp.i = tail call i32 @bcmp(ptr readonly %1, ptr nonnull %i.cc, i64 %2)
  %i.cd = icmp eq i32 %bcmp.i, 0
  br i1 %i.cd, label %_ZNK4llvh13StringMapImpl7FindKeyENS_9StringRefE.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread.i

_ZNK4llvh9StringRef6equalsES0_.exit.thread.i:     ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.i, %bb.f, %bb.e, %_ZN4llvh7djbHashENS_9StringRefEj.exit.i.split
  %i.ce = add i32 %.027.i, %.029.i
  %i.cf = add i32 %.029.i, 1
  br label %_ZN4llvh7djbHashENS_9StringRefEj.exit.i.split, !llvm.loop !29

_ZNK4llvh13StringMapImpl7FindKeyENS_9StringRefE.exit: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.i, %bb.d
  %i.cg = phi ptr [ %i.bg, %bb.d ], [ %i.ay, %_ZNK4llvh9StringRef6equalsES0_.exit.i ]
  %.us-phi = phi i32 [ %.027.i.us, %bb.d ], [ %.027.i, %_ZNK4llvh9StringRef6equalsES0_.exit.i ]
  %i.ch = sext i32 %.us-phi to i64
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.cg, i64 %i.ch ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !15
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ci, align 8, !tbaa !15
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.cl = load <2 x i32>, ptr %i.ck, align 4, !tbaa !3
  %i.cm = add <2 x i32> %i.cl, <i32 -1, i32 1>
  store <2 x i32> %i.cm, ptr %i.ck, align 4, !tbaa !3
  br label %_ZNK4llvh13StringMapImpl7FindKeyENS_9StringRefE.exit.thread

_ZNK4llvh13StringMapImpl7FindKeyENS_9StringRefE.exit.thread: ; preds = %_ZN4llvh7djbHashENS_9StringRefEj.exit.i.split, %_ZN4llvh7djbHashENS_9StringRefEj.exit.i.split.us, %bb.a, %_ZNK4llvh13StringMapImpl7FindKeyENS_9StringRefE.exit
  %.0 = phi ptr [ %i.cj, %_ZNK4llvh13StringMapImpl7FindKeyENS_9StringRefE.exit ], [ null, %_ZN4llvh7djbHashENS_9StringRefEj.exit.i.split.us ], [ null, %bb.a ], [ null, %_ZN4llvh7djbHashENS_9StringRefEj.exit.i.split ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN4llvh13StringMapImpl11RehashTableEj(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !14   ; 6 uses
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !17   ; 2 uses
  %i.i = shl i32 %i.h, 2
  %i.j = mul i32 %i.c, 3
  %i.k = icmp ugt i32 %i.i, %i.j
  br i1 %i.k, label %bb.b, label %bb.c, !prof !31

bb.b:                                             ; preds = %bb.a
  %i.l = shl i32 %i.c, 1                          ; 2 uses
  %.pre72 = zext i32 %i.l to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load i32, ptr %i.m, align 8, !tbaa !12
  %i.o = add i32 %i.h, %i.n
  %i.p = sub i32 %i.c, %i.o
  %i.q = lshr i32 %i.c, 3
  %.not = icmp ugt i32 %i.p, %i.q
  br i1 %.not, label %bb.j, label %bb.d, !prof !22

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pre-phi = phi i64 [ %i.d, %bb.c ], [ %.pre72, %bb.b ]
  %.051 = phi i32 [ %i.c, %bb.c ], [ %i.l, %bb.b ] ; 3 uses
  %i.r = add i32 %.051, 1
  %i.s = zext i32 %i.r to i64
  %i.t = tail call noundef nonnull ptr @_ZN4llvh11safe_callocEmm(i64 noundef %i.s, i64 noundef 12) ; 5 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.pre-phi ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.u, align 8, !tbaa !15
  %i.w = load i32, ptr %i.b, align 8, !tbaa !14   ; 2 uses
  %.not5667 = icmp eq i32 %i.w, 0
  %.pre = load ptr, ptr %0, align 8, !tbaa !13    ; 2 uses
  br i1 %.not5667, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.x = add i32 %.051, -1                        ; 2 uses
  %i.y = zext i32 %1 to i64
  %i.z = zext i32 %i.w to i64
  br label %bb.e

._crit_edge:                                      ; preds = %bb.i, %bb.d
  %.054.lcssa = phi i32 [ %1, %bb.d ], [ %.5, %bb.i ]
  tail call void @free(ptr noundef %.pre) #11
  store ptr %i.t, ptr %0, align 8, !tbaa !13
  store i32 %.051, ptr %i.b, align 8, !tbaa !14
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.aa, align 8, !tbaa !12
  br label %bb.j

bb.e:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 4 uses
  %.05468 = phi i32 [ %1, %.lr.ph ], [ %.5, %bb.i ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %indvars.iv
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !15 ; 3 uses
  %magicptr = ptrtoint ptr %i.ac to i64
  switch i64 %magicptr, label %bb.f [
    i64 0, label %bb.i
    i64 -8, label %bb.i
  ]

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !3  ; 2 uses
  %i.af = and i32 %i.ae, %i.x                     ; 3 uses
  %i.ag = zext i32 %i.af to i64                   ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.ag ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !15
  %.not59.not = icmp eq ptr %i.ai, null
  br i1 %.not59.not, label %bb.g, label %.preheader

bb.g:                                             ; preds = %bb.f
  store ptr %i.ac, ptr %i.ah, align 8, !tbaa !15
  br label %.sink.split

.preheader:                                       ; preds = %bb.f, %.preheader
  %.049 = phi i32 [ %i.al, %.preheader ], [ %i.af, %bb.f ]
  %.0 = phi i32 [ %i.aj, %.preheader ], [ 1, %bb.f ] ; 2 uses
  %i.aj = add i32 %.0, 1
  %i.ak = add i32 %.0, %.049
  %i.al = and i32 %i.ak, %i.x                     ; 3 uses
  %i.am = zext i32 %i.al to i64                   ; 3 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.am
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !15
  %.not60 = icmp eq ptr %i.ao, null
  br i1 %.not60, label %bb.h, label %.preheader, !llvm.loop !32

bb.h:                                             ; preds = %.preheader
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.am
  store ptr %i.ac, ptr %i.ap, align 8, !tbaa !15
  br label %.sink.split

.sink.split:                                      ; preds = %bb.h, %bb.g
  %.sink78 = phi i64 [ %i.ag, %bb.g ], [ %i.am, %bb.h ]
  %.sink77 = phi i32 [ %i.af, %bb.g ], [ %i.al, %bb.h ]
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %.sink78
  store i32 %i.ae, ptr %i.aq, align 4, !tbaa !3
  %i.ar = icmp eq i64 %indvars.iv, %i.y
  %spec.select = select i1 %i.ar, i32 %.sink77, i32 %.05468
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.e, %bb.e
  %.5 = phi i32 [ %.05468, %bb.e ], [ %.05468, %bb.e ], [ %spec.select, %.sink.split ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not56 = icmp eq i64 %indvars.iv.next, %i.z
  br i1 %.not56, label %._crit_edge, label %bb.e, !llvm.loop !33

bb.j:                                             ; preds = %bb.c, %._crit_edge
  %.050 = phi i32 [ %.054.lcssa, %._crit_edge ], [ %1, %bb.c ]
  ret i32 %.050
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #5

declare void @_ZN4llvh22report_bad_alloc_errorEPKcb(ptr noundef, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind allocsize(0,1) }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !4, i64 20}
!8 = !{!"_ZTSN4llvh13StringMapImplE", !9, i64 0, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20}
!9 = !{!"p2 _ZTSN4llvh18StringMapEntryBaseE", !10, i64 0}
!10 = !{!"any p2 pointer", !11, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!8, !4, i64 16}
!13 = !{!8, !9, i64 0}
!14 = !{!8, !4, i64 8}
!15 = !{!16, !16, i64 0}
!16 = !{!"p1 _ZTSN4llvh18StringMapEntryBaseE", !11, i64 0}
!17 = !{!8, !4, i64 12}
!18 = !{!5, !5, i64 0}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.unroll.disable"}
!21 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!22 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!23 = !{!24, !25, i64 0}
!24 = !{!"_ZTSN4llvh18StringMapEntryBaseE", !25, i64 0}
!25 = !{!"long", !5, i64 0}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.mustprogress"}
!28 = distinct !{!28, !20}
!29 = distinct !{!29, !27}
!30 = distinct !{!30, !20}
!31 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!32 = distinct !{!32, !27}
!33 = distinct !{!33, !27}
end_hunk_1
