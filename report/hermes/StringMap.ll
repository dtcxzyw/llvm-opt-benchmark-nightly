Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/StringMap?download=true
inline.NumInlined: 24
inline.NumDeleted: 14
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN4llvh13StringMapImplC2Ejj:bb.a
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
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
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
  br label %bb.e

bb.e:                                             ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.thread, %_ZN4llvh7djbHashENS_9StringRefEj.exit
  %.0.lcssa.i.pn = phi i32 [ %.0.lcssa.i, %_ZN4llvh7djbHashENS_9StringRefEj.exit ], [ %i.by, %_ZNK4llvh9StringRef6equalsES0_.exit.thread ]
  %.042 = phi i32 [ 1, %_ZN4llvh7djbHashENS_9StringRefEj.exit ], [ %i.bz, %_ZNK4llvh9StringRef6equalsES0_.exit.thread ] ; 2 uses
  %.039 = phi i32 [ -1, %_ZN4llvh7djbHashENS_9StringRefEj.exit ], [ %.140, %_ZNK4llvh9StringRef6equalsES0_.exit.thread ] ; 8 uses
  %.044 = and i32 %.0.lcssa.i.pn, %i.bd           ; 6 uses
  %i.bj = zext i32 %.044 to i64                   ; 3 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bj
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !15 ; 3 uses
  %magicptr = ptrtoint ptr %i.bl to i64
  switch i64 %magicptr, label %bb.g [
    i64 0, label %.thread.sink.split
    i64 -8, label %bb.f
  ], !prof !21

.thread.sink.split:                               ; preds = %bb.e
  %.not48 = icmp eq i32 %.039, -1                 ; 2 uses
  %i.bm = sext i32 %.039 to i64
  %.sink73 = select i1 %.not48, i64 %i.bj, i64 %i.bm
  %.3.ph.ph = select i1 %.not48, i32 %.044, i32 %.039
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %.sink73
  store i32 %.0.lcssa.i, ptr %i.bn, align 4, !tbaa !3
  br label %.thread

bb.f:                                             ; preds = %bb.e
  %i.bo = icmp eq i32 %.039, -1
  %spec.select = select i1 %i.bo, i32 %.044, i32 %.039
  br label %_ZNK4llvh9StringRef6equalsES0_.exit.thread

bb.g:                                             ; preds = %bb.e
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.bj
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !3
  %i.br = icmp eq i32 %i.bq, %.0.lcssa.i
  br i1 %i.br, label %bb.h, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread, !prof !22

bb.h:                                             ; preds = %bb.g
  %i.bs = load i32, ptr %i.bi, align 4, !tbaa !7
  %i.bt = zext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bt
  %i.bv = load i64, ptr %i.bl, align 8, !tbaa !23
  %i.bw = icmp eq i64 %2, %i.bv
  br i1 %i.bw, label %bb.i, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread

bb.i:                                             ; preds = %bb.h
  br i1 %.not11.i, label %.thread, label %_ZNK4llvh9StringRef6equalsES0_.exit

_ZNK4llvh9StringRef6equalsES0_.exit:              ; preds = %bb.i
  %bcmp = tail call i32 @bcmp(ptr %1, ptr nonnull %i.bu, i64 %2)
  %i.bx = icmp eq i32 %bcmp, 0
  br i1 %i.bx, label %.thread, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread

_ZNK4llvh9StringRef6equalsES0_.exit.thread:       ; preds = %bb.h, %bb.g, %bb.f, %_ZNK4llvh9StringRef6equalsES0_.exit
  %.140 = phi i32 [ %.039, %bb.g ], [ %spec.select, %bb.f ], [ %.039, %_ZNK4llvh9StringRef6equalsES0_.exit ], [ %.039, %bb.h ]
  %i.by = add i32 %.044, %.042
  %i.bz = add i32 %.042, 1
  br label %bb.e, !llvm.loop !26

.thread:                                          ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit, %bb.i, %.thread.sink.split
  %.3.ph = phi i32 [ %.3.ph.ph, %.thread.sink.split ], [ %.044, %bb.i ], [ %.044, %_ZNK4llvh9StringRef6equalsES0_.exit ]
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
  %i.q = zext i8 %i.o to i32
  %i.r = add i32 %i.p, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %.0912.i, i64 3
  %i.t = load i8, ptr %i.s, align 1, !tbaa !18
  %i.u = mul i32 %i.r, 33
  %i.v = zext i8 %i.t to i32
  %i.w = add i32 %i.u, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %.0912.i, i64 4
  %i.y = load i8, ptr %i.x, align 1, !tbaa !18
  %i.z = mul i32 %i.w, 33
  %i.aa = zext i8 %i.y to i32
  %i.ab = add i32 %i.z, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %.0912.i, i64 5
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !18
  %i.ae = mul i32 %i.ab, 33
  %i.af = zext i8 %i.ad to i32
  %i.ag = add i32 %i.ae, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %.0912.i, i64 6
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !18
  %i.aj = mul i32 %i.ag, 33
  %i.ak = zext i8 %i.ai to i32
  %i.al = add i32 %i.aj, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %.0912.i, i64 7
  %i.an = load i8, ptr %i.am, align 1, !tbaa !18
  %i.ao = mul i32 %i.al, 33
  %i.ap = zext i8 %i.an to i32
  %i.aq = add i32 %i.ao, %i.ap                    ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.0912.i, i64 8 ; 2 uses
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN4llvh7djbHashENS_9StringRefEj.exit.loopexit.unr-lcssa, label %.lr.ph.i

_ZN4llvh7djbHashENS_9StringRefEj.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN4llvh7djbHashENS_9StringRefEj.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN4llvh7djbHashENS_9StringRefEj.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.013.i.epil.init = phi i32 [ 0, %.lr.ph.i.preheader ], [ %i.aq, %_ZN4llvh7djbHashENS_9StringRefEj.exit.loopexit.unr-lcssa ]
  %.0912.i.epil.init = phi ptr [ %1, %.lr.ph.i.preheader ], [ %i.ar, %_ZN4llvh7djbHashENS_9StringRefEj.exit.loopexit.unr-lcssa ]
  %lcmp.mod44 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod44)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.013.i.epil = phi i32 [ %i.av, %.lr.ph.i.epil ], [ %.013.i.epil.init, %.lr.ph.i.epil.preheader ]
  %.0912.i.epil = phi ptr [ %i.aw, %.lr.ph.i.epil ], [ %.0912.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.as = load i8, ptr %.0912.i.epil, align 1, !tbaa !18
  %i.at = mul i32 %.013.i.epil, 33
  %i.au = zext i8 %i.as to i32
  %i.av = add i32 %i.at, %i.au                    ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.0912.i.epil, i64 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN4llvh7djbHashENS_9StringRefEj.exit, label %.lr.ph.i.epil, !llvm.loop !28

_ZN4llvh7djbHashENS_9StringRefEj.exit:            ; preds = %_ZN4llvh7djbHashENS_9StringRefEj.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.b
  %.0.lcssa.i = phi i32 [ 0, %bb.b ], [ %i.aq, %_ZN4llvh7djbHashENS_9StringRefEj.exit.loopexit.unr-lcssa ], [ %i.av, %.lr.ph.i.epil ] ; 2 uses
  %i.ax = add i32 %i.b, -1
  %i.ay = load ptr, ptr %0, align 8, !tbaa !13    ; 2 uses
  %i.az = zext i32 %i.b to i64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bd = load i32, ptr %i.bc, align 4
  %i.be = zext i32 %i.bd to i64
  br label %bb.c

bb.c:                                             ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.thread, %_ZN4llvh7djbHashENS_9StringRefEj.exit
  %.0.lcssa.i.pn = phi i32 [ %.0.lcssa.i, %_ZN4llvh7djbHashENS_9StringRefEj.exit ], [ %i.bp, %_ZNK4llvh9StringRef6equalsES0_.exit.thread ]
  %.025 = phi i32 [ 1, %_ZN4llvh7djbHashENS_9StringRefEj.exit ], [ %i.bq, %_ZNK4llvh9StringRef6equalsES0_.exit.thread ] ; 2 uses
  %.027 = and i32 %.0.lcssa.i.pn, %i.ax           ; 4 uses
  %i.bf = zext i32 %.027 to i64                   ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bf
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !15 ; 3 uses
  %magicptr = ptrtoint ptr %i.bh to i64
  switch i64 %magicptr, label %bb.d [
    i64 0, label %.thread37
    i64 -8, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread
  ], !prof !21

bb.d:                                             ; preds = %bb.c
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.bf
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !3
  %i.bk = icmp eq i32 %i.bj, %.0.lcssa.i
  br i1 %i.bk, label %bb.e, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread, !prof !22

bb.e:                                             ; preds = %bb.d
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.be
  %i.bm = load i64, ptr %i.bh, align 8, !tbaa !23
  %i.bn = icmp eq i64 %2, %i.bm
  br i1 %i.bn, label %bb.f, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread

bb.f:                                             ; preds = %bb.e
  br i1 %.not11.i, label %.thread37, label %_ZNK4llvh9StringRef6equalsES0_.exit

_ZNK4llvh9StringRef6equalsES0_.exit:              ; preds = %bb.f
  %bcmp = tail call i32 @bcmp(ptr %1, ptr nonnull %i.bl, i64 %2)
  %i.bo = icmp eq i32 %bcmp, 0
  br i1 %i.bo, label %.thread37, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread

_ZNK4llvh9StringRef6equalsES0_.exit.thread:       ; preds = %bb.c, %bb.e, %bb.d, %_ZNK4llvh9StringRef6equalsES0_.exit
  %i.bp = add i32 %.027, %.025
  %i.bq = add i32 %.025, 1
  br label %bb.c, !llvm.loop !29

.thread37:                                        ; preds = %bb.c, %_ZNK4llvh9StringRef6equalsES0_.exit, %bb.f, %bb.a
  %.4 = phi i32 [ -1, %bb.a ], [ %.027, %_ZNK4llvh9StringRef6equalsES0_.exit ], [ %.027, %bb.f ], [ -1, %bb.c ]
  ret i32 %.4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN4llvh13StringMapImpl9RemoveKeyEPNS_18StringMapEntryBaseE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !7
  %i.c = zext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %i.c
  %i.e = load i64, ptr %1, align 8, !tbaa !23
  %i.f = tail call noundef ptr @_ZN4llvh13StringMapImpl9RemoveKeyENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nonnull %i.d, i64 %i.e) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @_ZN4llvh13StringMapImpl9RemoveKeyENS_9StringRefE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr nofree readonly captures(address) %1, i64 %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !14   ; 5 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZNK4llvh13StringMapImpl7FindKeyENS_9StringRefE.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not11.i.i = icmp eq i64 %2, 0
  br i1 %.not11.i.i, label %_ZN4llvh7djbHashENS_9StringRefEj.exit.i.split.us.preheader, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %xtraiter = and i64 %2, 7                       ; 3 uses
  %i.d = icmp ult i64 %2, 8
  br i1 %i.d, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %2, -8
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.013.i.i = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.aq, %.lr.ph.i.i ]
  %.0912.i.i = phi ptr [ %1, %.lr.ph.i.i.preheader.new ], [ %i.ar, %.lr.ph.i.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  %i.e = load i8, ptr %.0912.i.i, align 1, !tbaa !18
  %i.f = mul i32 %.013.i.i, 33
  %i.g = zext i8 %i.e to i32
  %i.h = add i32 %i.f, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %.0912.i.i, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !18
end_hunk_0
