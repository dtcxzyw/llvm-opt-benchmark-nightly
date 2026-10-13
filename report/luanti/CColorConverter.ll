Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/CColorConverter?download=true
inline.NumInlined: 21
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZN5video15CColorConverter19convert32BitTo32BitEPKiPiiiib:bb.a
  %.2.epil = getelementptr inbounds [4 x i8], ptr %.126.epil, i64 %.2.idx ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %.2.epil, ptr align 4 %.02227.epil, i64 %i.h, i1 false)
  %.3.epil = getelementptr inbounds [4 x i8], ptr %.2.epil, i64 %.3.idx
  %i.s = getelementptr inbounds [4 x i8], ptr %.02227.epil, i64 %i.f
  %i.t = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.i
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.c, !llvm.loop !42

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN5video15CColorConverter24convert_A1R5G5B5toR8G8B8EPKviPv(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i32 %1, 1
  %i.b = icmp eq i32 %1, 1
  br i1 %i.b, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %1, 2147483646
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.01215.epil.init = phi ptr [ %2, %.lr.ph.preheader ], [ %i.ap, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %.01314.epil.init = phi ptr [ %0, %.lr.ph.preheader ], [ %i.ao, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod17 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod17)
  %i.c = load i16, ptr %.01314.epil.init, align 2, !tbaa !19
  %i.d = lshr i16 %i.c, 7
  %i.e = trunc i16 %i.d to i8
  %i.f = and i8 %i.e, -8
  %i.g = getelementptr inbounds nuw i8, ptr %.01215.epil.init, i64 2
  store i8 %i.f, ptr %i.g, align 1, !tbaa !12
  %i.h = load i16, ptr %.01314.epil.init, align 2, !tbaa !19
  %i.i = lshr i16 %i.h, 2
  %i.j = trunc i16 %i.i to i8
  %i.k = and i8 %i.j, -8
  %i.l = getelementptr inbounds nuw i8, ptr %.01215.epil.init, i64 1
  store i8 %i.k, ptr %i.l, align 1, !tbaa !12
  %i.m = load i16, ptr %.01314.epil.init, align 2, !tbaa !19
  %.tr.epil = trunc i16 %i.m to i8
  %i.n = shl i8 %.tr.epil, 3
  store i8 %i.n, ptr %.01215.epil.init, align 1, !tbaa !12
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.01215 = phi ptr [ %2, %.lr.ph.preheader.new ], [ %i.ap, %.lr.ph ] ; 7 uses
  %.01314 = phi ptr [ %0, %.lr.ph.preheader.new ], [ %i.ao, %.lr.ph ] ; 5 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.o = load i16, ptr %.01314, align 2, !tbaa !19
  %i.p = lshr i16 %i.o, 7
  %i.q = trunc i16 %i.p to i8
  %i.r = and i8 %i.q, -8
  %i.s = getelementptr inbounds nuw i8, ptr %.01215, i64 2
  store i8 %i.r, ptr %i.s, align 1, !tbaa !12
  %i.t = load i16, ptr %.01314, align 2, !tbaa !19
  %i.u = lshr i16 %i.t, 2
  %i.v = trunc i16 %i.u to i8
  %i.w = and i8 %i.v, -8
  %i.x = getelementptr inbounds nuw i8, ptr %.01215, i64 1
  store i8 %i.w, ptr %i.x, align 1, !tbaa !12
  %i.y = load i16, ptr %.01314, align 2, !tbaa !19
  %.tr = trunc i16 %i.y to i8
  %i.z = shl i8 %.tr, 3
  store i8 %i.z, ptr %.01215, align 1, !tbaa !12
  %i.aa = getelementptr inbounds nuw i8, ptr %.01314, i64 2 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.01215, i64 3
  %i.ac = load i16, ptr %i.aa, align 2, !tbaa !19
  %i.ad = lshr i16 %i.ac, 7
  %i.ae = trunc i16 %i.ad to i8
  %i.af = and i8 %i.ae, -8
  %i.ag = getelementptr inbounds nuw i8, ptr %.01215, i64 5
  store i8 %i.af, ptr %i.ag, align 1, !tbaa !12
  %i.ah = load i16, ptr %i.aa, align 2, !tbaa !19
  %i.ai = lshr i16 %i.ah, 2
  %i.aj = trunc i16 %i.ai to i8
  %i.ak = and i8 %i.aj, -8
  %i.al = getelementptr inbounds nuw i8, ptr %.01215, i64 4
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !12
  %i.am = load i16, ptr %i.aa, align 2, !tbaa !19
  %.tr.1 = trunc i16 %i.am to i8
  %i.an = shl i8 %.tr.1, 3
  store i8 %i.an, ptr %i.ab, align 1, !tbaa !12
  %i.ao = getelementptr inbounds nuw i8, ptr %.01314, i64 4 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.01215, i64 6 ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN5video15CColorConverter24convert_A1R5G5B5toB8G8R8EPKviPv(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i32 %1, 1
  %i.b = icmp eq i32 %1, 1
  br i1 %i.b, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %1, 2147483646
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.01215.epil.init = phi ptr [ %2, %.lr.ph.preheader ], [ %i.ap, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %.01314.epil.init = phi ptr [ %0, %.lr.ph.preheader ], [ %i.ao, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod17 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod17)
  %i.c = load i16, ptr %.01314.epil.init, align 2, !tbaa !19
  %i.d = lshr i16 %i.c, 7
  %i.e = trunc i16 %i.d to i8
  %i.f = and i8 %i.e, -8
  store i8 %i.f, ptr %.01215.epil.init, align 1, !tbaa !12
  %i.g = load i16, ptr %.01314.epil.init, align 2, !tbaa !19
  %i.h = lshr i16 %i.g, 2
  %i.i = trunc i16 %i.h to i8
  %i.j = and i8 %i.i, -8
  %i.k = getelementptr inbounds nuw i8, ptr %.01215.epil.init, i64 1
  store i8 %i.j, ptr %i.k, align 1, !tbaa !12
  %i.l = load i16, ptr %.01314.epil.init, align 2, !tbaa !19
  %.tr.epil = trunc i16 %i.l to i8
  %i.m = shl i8 %.tr.epil, 3
  %i.n = getelementptr inbounds nuw i8, ptr %.01215.epil.init, i64 2
  store i8 %i.m, ptr %i.n, align 1, !tbaa !12
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.01215 = phi ptr [ %2, %.lr.ph.preheader.new ], [ %i.ap, %.lr.ph ] ; 7 uses
  %.01314 = phi ptr [ %0, %.lr.ph.preheader.new ], [ %i.ao, %.lr.ph ] ; 5 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.o = load i16, ptr %.01314, align 2, !tbaa !19
  %i.p = lshr i16 %i.o, 7
  %i.q = trunc i16 %i.p to i8
  %i.r = and i8 %i.q, -8
  store i8 %i.r, ptr %.01215, align 1, !tbaa !12
  %i.s = load i16, ptr %.01314, align 2, !tbaa !19
  %i.t = lshr i16 %i.s, 2
  %i.u = trunc i16 %i.t to i8
  %i.v = and i8 %i.u, -8
  %i.w = getelementptr inbounds nuw i8, ptr %.01215, i64 1
  store i8 %i.v, ptr %i.w, align 1, !tbaa !12
  %i.x = load i16, ptr %.01314, align 2, !tbaa !19
  %.tr = trunc i16 %i.x to i8
  %i.y = shl i8 %.tr, 3
  %i.z = getelementptr inbounds nuw i8, ptr %.01215, i64 2
  store i8 %i.y, ptr %i.z, align 1, !tbaa !12
  %i.aa = getelementptr inbounds nuw i8, ptr %.01314, i64 2 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.01215, i64 3
  %i.ac = load i16, ptr %i.aa, align 2, !tbaa !19
  %i.ad = lshr i16 %i.ac, 7
  %i.ae = trunc i16 %i.ad to i8
  %i.af = and i8 %i.ae, -8
  store i8 %i.af, ptr %i.ab, align 1, !tbaa !12
  %i.ag = load i16, ptr %i.aa, align 2, !tbaa !19
  %i.ah = lshr i16 %i.ag, 2
  %i.ai = trunc i16 %i.ah to i8
  %i.aj = and i8 %i.ai, -8
  %i.ak = getelementptr inbounds nuw i8, ptr %.01215, i64 4
  store i8 %i.aj, ptr %i.ak, align 1, !tbaa !12
  %i.al = load i16, ptr %i.aa, align 2, !tbaa !19
  %.tr.1 = trunc i16 %i.al to i8
  %i.am = shl i8 %.tr.1, 3
  %i.an = getelementptr inbounds nuw i8, ptr %.01215, i64 5
  store i8 %i.am, ptr %i.an, align 1, !tbaa !12
  %i.ao = getelementptr inbounds nuw i8, ptr %.01314, i64 4 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.01215, i64 6 ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !43
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN5video15CColorConverter26convert_A1R5G5B5toR5G5B5A1EPKviPv(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.a
  %i.b = ptrtoaddr ptr %2 to i64
  %i.c = ptrtoaddr ptr %0 to i64
  %i.d = zext nneg i32 %1 to i64                  ; 5 uses
  %min.iters.check = icmp ult i32 %1, 4
  %i.e = sub i64 %i.c, %i.b
  %diff.check = icmp ugt i64 %i.e, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check14 = icmp ult i32 %1, 16
  br i1 %min.iters.check14, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.f = and i64 %i.d, 12
  %n.vec = and i64 %i.d, 2147483632               ; 5 uses
  %i.g = trunc nuw nsw i64 %n.vec to i32
  %i.h = shl nuw nsw i64 %n.vec, 1                ; 2 uses
  %i.i = getelementptr i8, ptr %2, i64 %i.h
  %i.j = getelementptr i8, ptr %0, i64 %i.h
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.k = shl i64 %index, 1                        ; 2 uses
  %next.gep = getelementptr i8, ptr %2, i64 %i.k  ; 2 uses
  %next.gep15 = getelementptr i8, ptr %0, i64 %i.k ; 2 uses
  %i.l = getelementptr i8, ptr %next.gep15, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep15, align 2, !tbaa !19 ; 2 uses
  %wide.load16 = load <8 x i16>, ptr %i.l, align 2, !tbaa !19 ; 2 uses
  %i.m = tail call <8 x i16> @llvm.fshl.v8i16(<8 x i16> %wide.load, <8 x i16> %wide.load, <8 x i16> splat (i16 1))
  %i.n = tail call <8 x i16> @llvm.fshl.v8i16(<8 x i16> %wide.load16, <8 x i16> %wide.load16, <8 x i16> splat (i16 1))
  %i.o = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %i.m, ptr %next.gep, align 2, !tbaa !19
  store <8 x i16> %i.n, ptr %i.o, align 2, !tbaa !19
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !44

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.d
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.f, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !20

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec19 = and i64 %i.d, 2147483644             ; 4 uses
  %i.q = trunc nuw nsw i64 %n.vec19 to i32
  %i.r = shl nuw nsw i64 %n.vec19, 1              ; 2 uses
  %i.s = getelementptr i8, ptr %2, i64 %i.r
  %i.t = getelementptr i8, ptr %0, i64 %i.r
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index20 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next24, %vec.epilog.vector.body ] ; 2 uses
  %i.u = shl i64 %index20, 1                      ; 2 uses
  %next.gep21 = getelementptr i8, ptr %2, i64 %i.u
  %next.gep22 = getelementptr i8, ptr %0, i64 %i.u
  %wide.load23 = load <4 x i16>, ptr %next.gep22, align 2, !tbaa !19 ; 2 uses
  %i.v = tail call <4 x i16> @llvm.fshl.v4i16(<4 x i16> %wide.load23, <4 x i16> %wide.load23, <4 x i16> splat (i16 1))
  store <4 x i16> %i.v, ptr %next.gep21, align 2, !tbaa !19
  %index.next24 = add nuw i64 %index20, 4         ; 2 uses
  %i.w = icmp eq i64 %index.next24, %n.vec19
  br i1 %i.w, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !45

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n25 = icmp eq i64 %n.vec19, %i.d
  br i1 %cmp.n25, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.013.ph = phi i32 [ 0, %iter.check ], [ %i.g, %vec.epilog.iter.check ], [ %i.q, %vec.epilog.middle.block ] ; 4 uses
  %.0912.ph = phi ptr [ %2, %iter.check ], [ %i.i, %vec.epilog.iter.check ], [ %i.s, %vec.epilog.middle.block ] ; 2 uses
  %.01011.ph = phi ptr [ %0, %iter.check ], [ %i.j, %vec.epilog.iter.check ], [ %i.t, %vec.epilog.middle.block ] ; 2 uses
  %i.x = sub i32 %1, %.013.ph
  %xtraiter = and i32 %i.x, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.013.prol = phi i32 [ %i.ac, %.lr.ph.prol ], [ %.013.ph, %.lr.ph.preheader ]
  %.0912.prol = phi ptr [ %i.ab, %.lr.ph.prol ], [ %.0912.ph, %.lr.ph.preheader ] ; 2 uses
  %.01011.prol = phi ptr [ %i.aa, %.lr.ph.prol ], [ %.01011.ph, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.y = load i16, ptr %.01011.prol, align 2, !tbaa !19 ; 2 uses
  %i.z = tail call i16 @llvm.fshl.i16(i16 %i.y, i16 %i.y, i16 1)
  store i16 %i.z, ptr %.0912.prol, align 2, !tbaa !19
  %i.aa = getelementptr inbounds nuw i8, ptr %.01011.prol, i64 2 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.0912.prol, i64 2 ; 2 uses
  %i.ac = add nuw nsw i32 %.013.prol, 1           ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !46

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.013.unr = phi i32 [ %.013.ph, %.lr.ph.preheader ], [ %i.ac, %.lr.ph.prol ]
  %.0912.unr = phi ptr [ %.0912.ph, %.lr.ph.preheader ], [ %i.ab, %.lr.ph.prol ]
  %.01011.unr = phi ptr [ %.01011.ph, %.lr.ph.preheader ], [ %i.aa, %.lr.ph.prol ]
  %i.ad = sub i32 %.013.ph, %1
  %i.ae = icmp ugt i32 %i.ad, -4
  br i1 %i.ae, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.013 = phi i32 [ %i.av, %.lr.ph ], [ %.013.unr, %.lr.ph.prol.loopexit ]
  %.0912 = phi ptr [ %i.au, %.lr.ph ], [ %.0912.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.01011 = phi ptr [ %i.at, %.lr.ph ], [ %.01011.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.af = load i16, ptr %.01011, align 2, !tbaa !19 ; 2 uses
  %i.ag = tail call i16 @llvm.fshl.i16(i16 %i.af, i16 %i.af, i16 1)
  store i16 %i.ag, ptr %.0912, align 2, !tbaa !19
  %i.ah = getelementptr inbounds nuw i8, ptr %.01011, i64 2
  %i.ai = getelementptr inbounds nuw i8, ptr %.0912, i64 2
  %i.aj = load i16, ptr %i.ah, align 2, !tbaa !19 ; 2 uses
  %i.ak = tail call i16 @llvm.fshl.i16(i16 %i.aj, i16 %i.aj, i16 1)
  store i16 %i.ak, ptr %i.ai, align 2, !tbaa !19
  %i.al = getelementptr inbounds nuw i8, ptr %.01011, i64 4
  %i.am = getelementptr inbounds nuw i8, ptr %.0912, i64 4
  %i.an = load i16, ptr %i.al, align 2, !tbaa !19 ; 2 uses
  %i.ao = tail call i16 @llvm.fshl.i16(i16 %i.an, i16 %i.an, i16 1)
  store i16 %i.ao, ptr %i.am, align 2, !tbaa !19
  %i.ap = getelementptr inbounds nuw i8, ptr %.01011, i64 6
  %i.aq = getelementptr inbounds nuw i8, ptr %.0912, i64 6
  %i.ar = load i16, ptr %i.ap, align 2, !tbaa !19 ; 2 uses
  %i.as = tail call i16 @llvm.fshl.i16(i16 %i.ar, i16 %i.ar, i16 1)
  store i16 %i.as, ptr %i.aq, align 2, !tbaa !19
  %i.at = getelementptr inbounds nuw i8, ptr %.01011, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %.0912, i64 8
  %i.av = add nuw nsw i32 %.013, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i32 %i.av, %1
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !47
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN5video15CColorConverter26convert_A1R5G5B5toA8R8G8B8EPKviPv(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = zext nneg i32 %1 to i64                  ; 2 uses
  %min.iters.check = icmp ult i32 %1, 4
  br i1 %min.iters.check, label %.lr.ph.preheader14, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.b, 2147483644               ; 5 uses
  %i.c = trunc nuw nsw i64 %n.vec to i32
  %i.d = shl nuw nsw i64 %n.vec, 2
  %i.e = getelementptr i8, ptr %2, i64 %i.d
  %i.f = shl nuw nsw i64 %n.vec, 1
  %i.g = getelementptr i8, ptr %0, i64 %i.f
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.h = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %2, i64 %i.h
  %i.i = shl i64 %index, 1
  %next.gep11 = getelementptr i8, ptr %0, i64 %i.i
  %wide.load = load <4 x i16>, ptr %next.gep11, align 2, !tbaa !19 ; 2 uses
  %i.j = zext <4 x i16> %wide.load to <4 x i32>   ; 6 uses
  %i.k = sext <4 x i16> %wide.load to <4 x i32>
  %i.l = and <4 x i32> %i.k, splat (i32 -16777216)
  %i.m = shl nuw nsw <4 x i32> %i.j, splat (i32 9)
  %i.n = and <4 x i32> %i.m, splat (i32 16252928)
  %i.o = or disjoint <4 x i32> %i.n, %i.l
  %i.p = shl nuw nsw <4 x i32> %i.j, splat (i32 4)
  %i.q = and <4 x i32> %i.p, splat (i32 458752)
  %i.r = or disjoint <4 x i32> %i.o, %i.q
  %i.s = shl nuw nsw <4 x i32> %i.j, splat (i32 6)
  %i.t = and <4 x i32> %i.s, splat (i32 63488)
  %i.u = or disjoint <4 x i32> %i.r, %i.t
  %i.v = shl nuw nsw <4 x i32> %i.j, splat (i32 1)
  %i.w = and <4 x i32> %i.v, splat (i32 1792)
  %i.x = or disjoint <4 x i32> %i.u, %i.w
  %i.y = shl nuw nsw <4 x i32> %i.j, splat (i32 3)
  %i.z = and <4 x i32> %i.y, splat (i32 248)
  %i.aa = or disjoint <4 x i32> %i.x, %i.z
  %i.ab = lshr <4 x i32> %i.j, splat (i32 2)
  %i.ac = and <4 x i32> %i.ab, splat (i32 7)
  %i.ad = or <4 x i32> %i.aa, %i.ac
  store <4 x i32> %i.ad, ptr %next.gep, align 4, !tbaa !14
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !48

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.b
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader14

.lr.ph.preheader14:                               ; preds = %.lr.ph.preheader, %middle.block
  %.010.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.c, %middle.block ]
  %.069.ph = phi ptr [ %2, %.lr.ph.preheader ], [ %i.e, %middle.block ]
  %.078.ph = phi ptr [ %0, %.lr.ph.preheader ], [ %i.g, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader14, %.lr.ph
  %.010 = phi i32 [ %i.bd, %.lr.ph ], [ %.010.ph, %.lr.ph.preheader14 ]
  %.069 = phi ptr [ %i.bc, %.lr.ph ], [ %.069.ph, %.lr.ph.preheader14 ] ; 2 uses
  %.078 = phi ptr [ %i.af, %.lr.ph ], [ %.078.ph, %.lr.ph.preheader14 ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.078, i64 2
  %i.ag = load i16, ptr %.078, align 2, !tbaa !19 ; 2 uses
  %i.ah = zext i16 %i.ag to i32                   ; 6 uses
  %i.ai = sext i16 %i.ag to i32
  %i.aj = and i32 %i.ai, -16777216
  %i.ak = shl nuw nsw i32 %i.ah, 9
  %i.al = and i32 %i.ak, 16252928
  %i.am = or disjoint i32 %i.al, %i.aj
  %i.an = shl nuw nsw i32 %i.ah, 4
  %i.ao = and i32 %i.an, 458752
  %i.ap = or disjoint i32 %i.am, %i.ao
  %i.aq = shl nuw nsw i32 %i.ah, 6
  %i.ar = and i32 %i.aq, 63488
  %i.as = or disjoint i32 %i.ap, %i.ar
  %i.at = shl nuw nsw i32 %i.ah, 1
  %i.au = and i32 %i.at, 1792
  %i.av = or disjoint i32 %i.as, %i.au
  %i.aw = shl nuw nsw i32 %i.ah, 3
  %i.ax = and i32 %i.aw, 248
  %i.ay = or disjoint i32 %i.av, %i.ax
  %i.az = lshr i32 %i.ah, 2
  %i.ba = and i32 %i.az, 7
  %i.bb = or i32 %i.ay, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %.069, i64 4
  store i32 %i.bb, ptr %.069, align 4, !tbaa !14
  %i.bd = add nuw nsw i32 %.010, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.bd, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !49
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN5video15CColorConverter26convert_A1R5G5B5toA1R5G5B5EPKviPv(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = shl nsw i32 %1, 1
  %i.b = sext i32 %i.a to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr align 1 %0, i64 %i.b, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN5video15CColorConverter24convert_A1R5G5B5toR5G6B5EPKviPv(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.a
  %i.b = ptrtoaddr ptr %2 to i64
  %i.c = ptrtoaddr ptr %0 to i64
  %i.d = zext nneg i32 %1 to i64                  ; 5 uses
  %min.iters.check = icmp ult i32 %1, 4
  %i.e = sub i64 %i.c, %i.b
  %diff.check = icmp ugt i64 %i.e, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check11 = icmp ult i32 %1, 16
  br i1 %min.iters.check11, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.f = and i64 %i.d, 12
  %n.vec = and i64 %i.d, 2147483632               ; 5 uses
  %i.g = trunc nuw nsw i64 %n.vec to i32
  %i.h = shl nuw nsw i64 %n.vec, 1                ; 2 uses
  %i.i = getelementptr i8, ptr %2, i64 %i.h
  %i.j = getelementptr i8, ptr %0, i64 %i.h
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.k = shl i64 %index, 1                        ; 2 uses
  %next.gep = getelementptr i8, ptr %2, i64 %i.k  ; 2 uses
  %next.gep12 = getelementptr i8, ptr %0, i64 %i.k ; 2 uses
  %i.l = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep12, align 2, !tbaa !19 ; 2 uses
  %wide.load13 = load <8 x i16>, ptr %i.l, align 2, !tbaa !19 ; 2 uses
  %i.m = shl <8 x i16> %wide.load, splat (i16 1)
  %i.n = shl <8 x i16> %wide.load13, splat (i16 1)
  %i.o = and <8 x i16> %i.m, splat (i16 -64)
  %i.p = and <8 x i16> %i.n, splat (i16 -64)
  %i.q = and <8 x i16> %wide.load, splat (i16 31)
  %i.r = and <8 x i16> %wide.load13, splat (i16 31)
  %i.s = or disjoint <8 x i16> %i.o, %i.q
  %i.t = or disjoint <8 x i16> %i.p, %i.r
  %i.u = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %i.s, ptr %next.gep, align 2, !tbaa !19
  store <8 x i16> %i.t, ptr %i.u, align 2, !tbaa !19
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !50

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.d
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.f, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !20

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec16 = and i64 %i.d, 2147483644             ; 4 uses
  %i.w = trunc nuw nsw i64 %n.vec16 to i32
  %i.x = shl nuw nsw i64 %n.vec16, 1              ; 2 uses
  %i.y = getelementptr i8, ptr %2, i64 %i.x
  %i.z = getelementptr i8, ptr %0, i64 %i.x
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index17 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next21, %vec.epilog.vector.body ] ; 2 uses
  %i.aa = shl i64 %index17, 1                     ; 2 uses
  %next.gep18 = getelementptr i8, ptr %2, i64 %i.aa
  %next.gep19 = getelementptr i8, ptr %0, i64 %i.aa
  %wide.load20 = load <4 x i16>, ptr %next.gep19, align 2, !tbaa !19 ; 2 uses
  %i.ab = shl <4 x i16> %wide.load20, splat (i16 1)
  %i.ac = and <4 x i16> %i.ab, splat (i16 -64)
  %i.ad = and <4 x i16> %wide.load20, splat (i16 31)
  %i.ae = or disjoint <4 x i16> %i.ac, %i.ad
  store <4 x i16> %i.ae, ptr %next.gep18, align 2, !tbaa !19
  %index.next21 = add nuw i64 %index17, 4         ; 2 uses
  %i.af = icmp eq i64 %index.next21, %n.vec16
  br i1 %i.af, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !51

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n22 = icmp eq i64 %n.vec16, %i.d
  br i1 %cmp.n22, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.010.ph = phi i32 [ 0, %iter.check ], [ %i.g, %vec.epilog.iter.check ], [ %i.w, %vec.epilog.middle.block ] ; 4 uses
  %.069.ph = phi ptr [ %2, %iter.check ], [ %i.i, %vec.epilog.iter.check ], [ %i.y, %vec.epilog.middle.block ] ; 3 uses
  %.078.ph = phi ptr [ %0, %iter.check ], [ %i.j, %vec.epilog.iter.check ], [ %i.z, %vec.epilog.middle.block ] ; 3 uses
  %i.ag = sub i32 %1, %.010.ph
  %.neg = add i32 %.010.ph, 1
  %xtraiter = and i32 %i.ag, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.ah = getelementptr inbounds nuw i8, ptr %.078.ph, i64 2
  %i.ai = load i16, ptr %.078.ph, align 2, !tbaa !19 ; 2 uses
  %i.aj = shl i16 %i.ai, 1
  %i.ak = and i16 %i.aj, -64
  %i.al = and i16 %i.ai, 31
  %i.am = or disjoint i16 %i.ak, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %.069.ph, i64 2
  store i16 %i.am, ptr %.069.ph, align 2, !tbaa !19
  %i.ao = add nuw nsw i32 %.010.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.010.unr = phi i32 [ %.010.ph, %.lr.ph.preheader ], [ %i.ao, %.lr.ph.prol ]
  %.069.unr = phi ptr [ %.069.ph, %.lr.ph.preheader ], [ %i.an, %.lr.ph.prol ]
  %.078.unr = phi ptr [ %.078.ph, %.lr.ph.preheader ], [ %i.ah, %.lr.ph.prol ]
  %i.ap = icmp eq i32 %1, %.neg
  br i1 %i.ap, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.010 = phi i32 [ %i.be, %.lr.ph ], [ %.010.unr, %.lr.ph.prol.loopexit ]
  %.069 = phi ptr [ %i.bd, %.lr.ph ], [ %.069.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.078 = phi ptr [ %i.ax, %.lr.ph ], [ %.078.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.078, i64 2
  %i.ar = load i16, ptr %.078, align 2, !tbaa !19 ; 2 uses
  %i.as = shl i16 %i.ar, 1
  %i.at = and i16 %i.as, -64
  %i.au = and i16 %i.ar, 31
  %i.av = or disjoint i16 %i.at, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %.069, i64 2
  store i16 %i.av, ptr %.069, align 2, !tbaa !19
  %i.ax = getelementptr inbounds nuw i8, ptr %.078, i64 4
  %i.ay = load i16, ptr %i.aq, align 2, !tbaa !19 ; 2 uses
  %i.az = shl i16 %i.ay, 1
  %i.ba = and i16 %i.az, -64
  %i.bb = and i16 %i.ay, 31
  %i.bc = or disjoint i16 %i.ba, %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %.069, i64 4
  store i16 %i.bc, ptr %i.aw, align 2, !tbaa !19
  %i.be = add nuw nsw i32 %.010, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.be, %1
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !52
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN5video15CColorConverter24convert_A8R8G8B8toR8G8B8EPKviPv(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i32 %1, 1
  %i.b = icmp eq i32 %1, 1
  br i1 %i.b, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %1, 2147483646
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.01215.epil.init = phi ptr [ %2, %.lr.ph.preheader ], [ %i.aa, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %.01314.epil.init = phi ptr [ %0, %.lr.ph.preheader ], [ %i.z, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod17 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod17)
  %i.c = getelementptr inbounds nuw i8, ptr %.01314.epil.init, i64 2
  %i.d = load i8, ptr %i.c, align 1, !tbaa !12
  store i8 %i.d, ptr %.01215.epil.init, align 1, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %.01314.epil.init, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !12
  %i.g = getelementptr inbounds nuw i8, ptr %.01215.epil.init, i64 1
  store i8 %i.f, ptr %i.g, align 1, !tbaa !12
  %i.h = load i8, ptr %.01314.epil.init, align 1, !tbaa !12
  %i.i = getelementptr inbounds nuw i8, ptr %.01215.epil.init, i64 2
  store i8 %i.h, ptr %i.i, align 1, !tbaa !12
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.01215 = phi ptr [ %2, %.lr.ph.preheader.new ], [ %i.aa, %.lr.ph ] ; 7 uses
  %.01314 = phi ptr [ %0, %.lr.ph.preheader.new ], [ %i.z, %.lr.ph ] ; 7 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.j = getelementptr inbounds nuw i8, ptr %.01314, i64 2
  %i.k = load i8, ptr %i.j, align 1, !tbaa !12
  store i8 %i.k, ptr %.01215, align 1, !tbaa !12
  %i.l = getelementptr inbounds nuw i8, ptr %.01314, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !12
  %i.n = getelementptr inbounds nuw i8, ptr %.01215, i64 1
  store i8 %i.m, ptr %i.n, align 1, !tbaa !12
  %i.o = load i8, ptr %.01314, align 1, !tbaa !12
  %i.p = getelementptr inbounds nuw i8, ptr %.01215, i64 2
  store i8 %i.o, ptr %i.p, align 1, !tbaa !12
  %i.q = getelementptr inbounds nuw i8, ptr %.01314, i64 4
  %i.r = getelementptr inbounds nuw i8, ptr %.01215, i64 3
  %i.s = getelementptr inbounds nuw i8, ptr %.01314, i64 6
  %i.t = load i8, ptr %i.s, align 1, !tbaa !12
  store i8 %i.t, ptr %i.r, align 1, !tbaa !12
  %i.u = getelementptr inbounds nuw i8, ptr %.01314, i64 5
  %i.v = load i8, ptr %i.u, align 1, !tbaa !12
  %i.w = getelementptr inbounds nuw i8, ptr %.01215, i64 4
  store i8 %i.v, ptr %i.w, align 1, !tbaa !12
  %i.x = load i8, ptr %i.q, align 1, !tbaa !12
  %i.y = getelementptr inbounds nuw i8, ptr %.01215, i64 5
  store i8 %i.x, ptr %i.y, align 1, !tbaa !12
  %i.z = getelementptr inbounds nuw i8, ptr %.01314, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.01215, i64 6 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN5video15CColorConverter22convert_R5G6B5toR8G8B8EPKviPv:bb.a
  %.tr.1 = trunc i16 %i.al to i8
  %i.am = shl i8 %.tr.1, 3
  %i.an = getelementptr inbounds nuw i8, ptr %.01215, i64 5
  store i8 %i.am, ptr %i.an, align 1, !tbaa !12
  %i.ao = getelementptr inbounds nuw i8, ptr %.01314, i64 4 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.01215, i64 6 ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN5video15CColorConverter22convert_R5G6B5toB8G8R8EPKviPv(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i32 %1, 1
  %i.b = icmp eq i32 %1, 1
  br i1 %i.b, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %1, 2147483646
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.01215.epil.init = phi ptr [ %2, %.lr.ph.preheader ], [ %i.ap, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %.01314.epil.init = phi ptr [ %0, %.lr.ph.preheader ], [ %i.ao, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod17 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod17)
  %i.c = load i16, ptr %.01314.epil.init, align 2, !tbaa !19
  %i.d = lshr i16 %i.c, 8
  %i.e = trunc nuw i16 %i.d to i8
  %i.f = and i8 %i.e, -8
  %i.g = getelementptr inbounds nuw i8, ptr %.01215.epil.init, i64 2
  store i8 %i.f, ptr %i.g, align 1, !tbaa !12
  %i.h = load i16, ptr %.01314.epil.init, align 2, !tbaa !19
  %i.i = lshr i16 %i.h, 3
  %i.j = trunc i16 %i.i to i8
  %i.k = and i8 %i.j, -4
  %i.l = getelementptr inbounds nuw i8, ptr %.01215.epil.init, i64 1
  store i8 %i.k, ptr %i.l, align 1, !tbaa !12
  %i.m = load i16, ptr %.01314.epil.init, align 2, !tbaa !19
  %.tr.epil = trunc i16 %i.m to i8
  %i.n = shl i8 %.tr.epil, 3
  store i8 %i.n, ptr %.01215.epil.init, align 1, !tbaa !12
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.01215 = phi ptr [ %2, %.lr.ph.preheader.new ], [ %i.ap, %.lr.ph ] ; 7 uses
  %.01314 = phi ptr [ %0, %.lr.ph.preheader.new ], [ %i.ao, %.lr.ph ] ; 5 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.o = load i16, ptr %.01314, align 2, !tbaa !19
  %i.p = lshr i16 %i.o, 8
  %i.q = trunc nuw i16 %i.p to i8
  %i.r = and i8 %i.q, -8
  %i.s = getelementptr inbounds nuw i8, ptr %.01215, i64 2
  store i8 %i.r, ptr %i.s, align 1, !tbaa !12
  %i.t = load i16, ptr %.01314, align 2, !tbaa !19
  %i.u = lshr i16 %i.t, 3
  %i.v = trunc i16 %i.u to i8
  %i.w = and i8 %i.v, -4
  %i.x = getelementptr inbounds nuw i8, ptr %.01215, i64 1
  store i8 %i.w, ptr %i.x, align 1, !tbaa !12
  %i.y = load i16, ptr %.01314, align 2, !tbaa !19
  %.tr = trunc i16 %i.y to i8
  %i.z = shl i8 %.tr, 3
  store i8 %i.z, ptr %.01215, align 1, !tbaa !12
  %i.aa = getelementptr inbounds nuw i8, ptr %.01314, i64 2 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.01215, i64 3
  %i.ac = load i16, ptr %i.aa, align 2, !tbaa !19
  %i.ad = lshr i16 %i.ac, 8
  %i.ae = trunc nuw i16 %i.ad to i8
  %i.af = and i8 %i.ae, -8
  %i.ag = getelementptr inbounds nuw i8, ptr %.01215, i64 5
  store i8 %i.af, ptr %i.ag, align 1, !tbaa !12
  %i.ah = load i16, ptr %i.aa, align 2, !tbaa !19
  %i.ai = lshr i16 %i.ah, 3
  %i.aj = trunc i16 %i.ai to i8
  %i.ak = and i8 %i.aj, -4
  %i.al = getelementptr inbounds nuw i8, ptr %.01215, i64 4
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !12
  %i.am = load i16, ptr %i.aa, align 2, !tbaa !19
  %.tr.1 = trunc i16 %i.am to i8
  %i.an = shl i8 %.tr.1, 3
  store i8 %i.an, ptr %i.ab, align 1, !tbaa !12
  %i.ao = getelementptr inbounds nuw i8, ptr %.01314, i64 4 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.01215, i64 6 ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !99
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN5video15CColorConverter24convert_R5G6B5toA8R8G8B8EPKviPv(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = zext nneg i32 %1 to i64                  ; 2 uses
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.lr.ph.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.b, 2147483640               ; 5 uses
  %i.c = trunc nuw nsw i64 %n.vec to i32
  %i.d = shl nuw nsw i64 %n.vec, 2
  %i.e = getelementptr i8, ptr %2, i64 %i.d
  %i.f = shl nuw nsw i64 %n.vec, 1
  %i.g = getelementptr i8, ptr %0, i64 %i.f
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.h = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %2, i64 %i.h  ; 2 uses
  %i.i = shl i64 %index, 1
  %next.gep11 = getelementptr i8, ptr %0, i64 %i.i ; 2 uses
  %i.j = getelementptr i8, ptr %next.gep11, i64 8
  %wide.load = load <4 x i16>, ptr %next.gep11, align 2, !tbaa !19
  %wide.load12 = load <4 x i16>, ptr %i.j, align 2, !tbaa !19
  %i.k = zext <4 x i16> %wide.load to <4 x i32>   ; 3 uses
  %i.l = zext <4 x i16> %wide.load12 to <4 x i32> ; 3 uses
  %i.m = shl nuw nsw <4 x i32> %i.k, splat (i32 8)
  %i.n = shl nuw nsw <4 x i32> %i.l, splat (i32 8)
  %i.o = and <4 x i32> %i.m, splat (i32 16252928)
  %i.p = and <4 x i32> %i.n, splat (i32 16252928)
  %i.q = shl nuw nsw <4 x i32> %i.k, splat (i32 5)
  %i.r = shl nuw nsw <4 x i32> %i.l, splat (i32 5)
  %i.s = and <4 x i32> %i.q, splat (i32 64512)
  %i.t = and <4 x i32> %i.r, splat (i32 64512)
  %i.u = shl nuw nsw <4 x i32> %i.k, splat (i32 3)
  %i.v = shl nuw nsw <4 x i32> %i.l, splat (i32 3)
  %i.w = and <4 x i32> %i.u, splat (i32 248)
  %i.x = and <4 x i32> %i.v, splat (i32 248)
  %i.y = or disjoint <4 x i32> %i.o, %i.s
  %i.z = or disjoint <4 x i32> %i.p, %i.t
  %i.aa = or disjoint <4 x i32> %i.y, %i.w
  %i.ab = or disjoint <4 x i32> %i.z, %i.x
  %i.ac = or disjoint <4 x i32> %i.aa, splat (i32 -16777216)
  %i.ad = or disjoint <4 x i32> %i.ab, splat (i32 -16777216)
  %i.ae = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %i.ac, ptr %next.gep, align 4, !tbaa !14
  store <4 x i32> %i.ad, ptr %i.ae, align 4, !tbaa !14
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !100

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.b
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader15

.lr.ph.preheader15:                               ; preds = %.lr.ph.preheader, %middle.block
  %.010.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.c, %middle.block ]
  %.069.ph = phi ptr [ %2, %.lr.ph.preheader ], [ %i.e, %middle.block ]
  %.078.ph = phi ptr [ %0, %.lr.ph.preheader ], [ %i.g, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader15, %.lr.ph
  %.010 = phi i32 [ %i.at, %.lr.ph ], [ %.010.ph, %.lr.ph.preheader15 ]
  %.069 = phi ptr [ %i.as, %.lr.ph ], [ %.069.ph, %.lr.ph.preheader15 ] ; 2 uses
  %.078 = phi ptr [ %i.ag, %.lr.ph ], [ %.078.ph, %.lr.ph.preheader15 ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.078, i64 2
  %i.ah = load i16, ptr %.078, align 2, !tbaa !19
  %i.ai = zext i16 %i.ah to i32                   ; 3 uses
  %i.aj = shl nuw nsw i32 %i.ai, 8
  %i.ak = and i32 %i.aj, 16252928
  %i.al = shl nuw nsw i32 %i.ai, 5
  %i.am = and i32 %i.al, 64512
  %i.an = shl nuw nsw i32 %i.ai, 3
  %i.ao = and i32 %i.an, 248
  %i.ap = or disjoint i32 %i.ak, %i.am
  %i.aq = or disjoint i32 %i.ap, %i.ao
  %i.ar = or disjoint i32 %i.aq, -16777216
  %i.as = getelementptr inbounds nuw i8, ptr %.069, i64 4
  store i32 %i.ar, ptr %.069, align 4, !tbaa !14
  %i.at = add nuw nsw i32 %.010, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.at, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !101
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN5video15CColorConverter24convert_R5G6B5toA1R5G5B5EPKviPv(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.a
  %i.b = ptrtoaddr ptr %2 to i64
  %i.c = ptrtoaddr ptr %0 to i64
  %i.d = zext nneg i32 %1 to i64                  ; 5 uses
  %min.iters.check = icmp ult i32 %1, 4
  %i.e = sub i64 %i.c, %i.b
  %diff.check = icmp ugt i64 %i.e, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check11 = icmp ult i32 %1, 16
  br i1 %min.iters.check11, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.f = and i64 %i.d, 12
  %n.vec = and i64 %i.d, 2147483632               ; 5 uses
  %i.g = trunc nuw nsw i64 %n.vec to i32
  %i.h = shl nuw nsw i64 %n.vec, 1                ; 2 uses
  %i.i = getelementptr i8, ptr %2, i64 %i.h
  %i.j = getelementptr i8, ptr %0, i64 %i.h
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.k = shl i64 %index, 1                        ; 2 uses
  %next.gep = getelementptr i8, ptr %2, i64 %i.k  ; 2 uses
  %next.gep12 = getelementptr i8, ptr %0, i64 %i.k ; 2 uses
  %i.l = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep12, align 2, !tbaa !19 ; 2 uses
  %wide.load13 = load <8 x i16>, ptr %i.l, align 2, !tbaa !19 ; 2 uses
  %i.m = lshr <8 x i16> %wide.load, splat (i16 1)
  %i.n = lshr <8 x i16> %wide.load13, splat (i16 1)
  %i.o = and <8 x i16> %i.m, splat (i16 32736)
  %i.p = and <8 x i16> %i.n, splat (i16 32736)
  %i.q = and <8 x i16> %wide.load, splat (i16 31)
  %i.r = and <8 x i16> %wide.load13, splat (i16 31)
  %i.s = or disjoint <8 x i16> %i.q, %i.o
  %i.t = or disjoint <8 x i16> %i.r, %i.p
  %i.u = or disjoint <8 x i16> %i.s, splat (i16 -32768)
  %i.v = or disjoint <8 x i16> %i.t, splat (i16 -32768)
  %i.w = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %i.u, ptr %next.gep, align 2, !tbaa !19
  store <8 x i16> %i.v, ptr %i.w, align 2, !tbaa !19
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !102

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.d
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.f, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !20

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec16 = and i64 %i.d, 2147483644             ; 4 uses
  %i.y = trunc nuw nsw i64 %n.vec16 to i32
  %i.z = shl nuw nsw i64 %n.vec16, 1              ; 2 uses
  %i.aa = getelementptr i8, ptr %2, i64 %i.z
  %i.ab = getelementptr i8, ptr %0, i64 %i.z
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index17 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next21, %vec.epilog.vector.body ] ; 2 uses
  %i.ac = shl i64 %index17, 1                     ; 2 uses
  %next.gep18 = getelementptr i8, ptr %2, i64 %i.ac
  %next.gep19 = getelementptr i8, ptr %0, i64 %i.ac
  %wide.load20 = load <4 x i16>, ptr %next.gep19, align 2, !tbaa !19 ; 2 uses
  %i.ad = lshr <4 x i16> %wide.load20, splat (i16 1)
  %i.ae = and <4 x i16> %i.ad, splat (i16 32736)
  %i.af = and <4 x i16> %wide.load20, splat (i16 31)
  %i.ag = or disjoint <4 x i16> %i.af, %i.ae
  %i.ah = or disjoint <4 x i16> %i.ag, splat (i16 -32768)
  store <4 x i16> %i.ah, ptr %next.gep18, align 2, !tbaa !19
  %index.next21 = add nuw i64 %index17, 4         ; 2 uses
  %i.ai = icmp eq i64 %index.next21, %n.vec16
  br i1 %i.ai, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !103

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n22 = icmp eq i64 %n.vec16, %i.d
  br i1 %cmp.n22, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.010.ph = phi i32 [ 0, %iter.check ], [ %i.g, %vec.epilog.iter.check ], [ %i.y, %vec.epilog.middle.block ] ; 4 uses
  %.069.ph = phi ptr [ %2, %iter.check ], [ %i.i, %vec.epilog.iter.check ], [ %i.aa, %vec.epilog.middle.block ] ; 3 uses
  %.078.ph = phi ptr [ %0, %iter.check ], [ %i.j, %vec.epilog.iter.check ], [ %i.ab, %vec.epilog.middle.block ] ; 3 uses
  %i.aj = sub i32 %1, %.010.ph
  %.neg = add i32 %.010.ph, 1
  %xtraiter = and i32 %i.aj, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.ak = getelementptr inbounds nuw i8, ptr %.078.ph, i64 2
  %i.al = load i16, ptr %.078.ph, align 2, !tbaa !19 ; 2 uses
  %i.am = lshr i16 %i.al, 1
  %i.an = and i16 %i.am, 32736
  %i.ao = and i16 %i.al, 31
  %i.ap = or disjoint i16 %i.ao, %i.an
  %i.aq = or disjoint i16 %i.ap, -32768
  %i.ar = getelementptr inbounds nuw i8, ptr %.069.ph, i64 2
  store i16 %i.aq, ptr %.069.ph, align 2, !tbaa !19
  %i.as = add nuw nsw i32 %.010.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.010.unr = phi i32 [ %.010.ph, %.lr.ph.preheader ], [ %i.as, %.lr.ph.prol ]
  %.069.unr = phi ptr [ %.069.ph, %.lr.ph.preheader ], [ %i.ar, %.lr.ph.prol ]
  %.078.unr = phi ptr [ %.078.ph, %.lr.ph.preheader ], [ %i.ak, %.lr.ph.prol ]
  %i.at = icmp eq i32 %1, %.neg
  br i1 %i.at, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.010 = phi i32 [ %i.bk, %.lr.ph ], [ %.010.unr, %.lr.ph.prol.loopexit ]
  %.069 = phi ptr [ %i.bj, %.lr.ph ], [ %.069.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.078 = phi ptr [ %i.bc, %.lr.ph ], [ %.078.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.078, i64 2
  %i.av = load i16, ptr %.078, align 2, !tbaa !19 ; 2 uses
  %i.aw = lshr i16 %i.av, 1
  %i.ax = and i16 %i.aw, 32736
  %i.ay = and i16 %i.av, 31
  %i.az = or disjoint i16 %i.ay, %i.ax
  %i.ba = or disjoint i16 %i.az, -32768
  %i.bb = getelementptr inbounds nuw i8, ptr %.069, i64 2
  store i16 %i.ba, ptr %.069, align 2, !tbaa !19
  %i.bc = getelementptr inbounds nuw i8, ptr %.078, i64 4
  %i.bd = load i16, ptr %i.au, align 2, !tbaa !19 ; 2 uses
  %i.be = lshr i16 %i.bd, 1
  %i.bf = and i16 %i.be, 32736
  %i.bg = and i16 %i.bd, 31
  %i.bh = or disjoint i16 %i.bg, %i.bf
  %i.bi = or disjoint i16 %i.bh, -32768
  %i.bj = getelementptr inbounds nuw i8, ptr %.069, i64 4
  store i16 %i.bi, ptr %i.bb, align 2, !tbaa !19
  %i.bk = add nuw nsw i32 %.010, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.bk, %1
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !104
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @_ZN5video15CColorConverter16canConvertFormatENS_13ECOLOR_FORMATES1_(i32 noundef %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  switch i32 %0, label %bb.f [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.d
    i32 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %switch = icmp ult i32 %1, 4
  br i1 %switch, label %bb.g, label %bb.f

bb.c:                                             ; preds = %bb.a
  %switch5 = icmp ult i32 %1, 4
  br i1 %switch5, label %bb.g, label %bb.f

bb.d:                                             ; preds = %bb.a
  %switch6 = icmp ult i32 %1, 4
  br i1 %switch6, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.a
  %switch7 = icmp ult i32 %1, 4
  br i1 %switch7, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.f
  %.0 = phi i1 [ false, %bb.f ], [ true, %bb.d ], [ true, %bb.b ], [ true, %bb.c ], [ true, %bb.e ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN5video15CColorConverter17convert_viaFormatEPKvNS_13ECOLOR_FORMATEiPvS3_(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %3 to i64                  ; 2 uses
  switch i32 %1, label %_ZN5video15CColorConverter24convert_A1R5G5B5toR5G6B5EPKviPv.exit [
    i32 0, label %bb.b
    i32 1, label %bb.g
    i32 3, label %bb.l
    i32 2, label %bb.q
  ]

bb.b:                                             ; preds = %bb.a
  switch i32 %4, label %_ZN5video15CColorConverter24convert_A1R5G5B5toR5G6B5EPKviPv.exit [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 3, label %bb.e
    i32 2, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  %i.c = shl nsw i32 %2, 1
  br label %_ZN5video15CColorConverter24convert_A1R5G5B5toR5G6B5EPKviPv.exit.sink.split

bb.d:                                             ; preds = %bb.b
  %i.d = icmp sgt i32 %2, 0
  br i1 %i.d, label %iter.check308, label %_ZN5video15CColorConverter24convert_A1R5G5B5toR5G6B5EPKviPv.exit

iter.check308:                                    ; preds = %bb.d
  %i.e = zext nneg i32 %2 to i64                  ; 5 uses
  %min.iters.check290 = icmp ult i32 %2, 4
  %i.f = sub i64 %i.a, %i.b
  %diff.check288 = icmp ugt i64 %i.f, -32
  %or.cond = or i1 %min.iters.check290, %diff.check288
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check291

vector.main.loop.iter.check291:                   ; preds = %iter.check308
  %min.iters.check292 = icmp ult i32 %2, 16
  br i1 %min.iters.check292, label %vec.epilog.ph312, label %vector.ph293

vector.ph293:                                     ; preds = %vector.main.loop.iter.check291
  %i.g = and i64 %i.e, 12
  %n.vec294 = and i64 %i.e, 2147483632            ; 5 uses
  %i.h = trunc nuw nsw i64 %n.vec294 to i32
  %i.i = shl nuw nsw i64 %n.vec294, 1             ; 2 uses
  %i.j = getelementptr i8, ptr %3, i64 %i.i
  %i.k = getelementptr i8, ptr %0, i64 %i.i
  br label %vector.body295

vector.body295:                                   ; preds = %vector.ph293, %vector.body295
  %index296 = phi i64 [ 0, %vector.ph293 ], [ %index.next301, %vector.body295 ] ; 2 uses
  %i.l = shl i64 %index296, 1                     ; 2 uses
  %next.gep297 = getelementptr i8, ptr %3, i64 %i.l ; 2 uses
  %next.gep298 = getelementptr i8, ptr %0, i64 %i.l ; 2 uses
  %i.m = getelementptr i8, ptr %next.gep298, i64 16
  %wide.load299 = load <8 x i16>, ptr %next.gep298, align 2, !tbaa !19 ; 2 uses
  %wide.load300 = load <8 x i16>, ptr %i.m, align 2, !tbaa !19 ; 2 uses
  %i.n = shl <8 x i16> %wide.load299, splat (i16 1)
  %i.o = shl <8 x i16> %wide.load300, splat (i16 1)
  %i.p = and <8 x i16> %i.n, splat (i16 -64)
  %i.q = and <8 x i16> %i.o, splat (i16 -64)
  %i.r = and <8 x i16> %wide.load299, splat (i16 31)
  %i.s = and <8 x i16> %wide.load300, splat (i16 31)
  %i.t = or disjoint <8 x i16> %i.p, %i.r
  %i.u = or disjoint <8 x i16> %i.q, %i.s
  %i.v = getelementptr i8, ptr %next.gep297, i64 16
  store <8 x i16> %i.t, ptr %next.gep297, align 2, !tbaa !19
  store <8 x i16> %i.u, ptr %i.v, align 2, !tbaa !19
  %index.next301 = add nuw i64 %index296, 16      ; 2 uses
  %i.w = icmp eq i64 %index.next301, %n.vec294
  br i1 %i.w, label %middle.block302, label %vector.body295, !llvm.loop !105

middle.block302:                                  ; preds = %vector.body295
  %cmp.n303 = icmp eq i64 %n.vec294, %i.e
  br i1 %cmp.n303, label %_ZN5video15CColorConverter24convert_A1R5G5B5toR5G6B5EPKviPv.exit, label %vec.epilog.iter.check310

vec.epilog.iter.check310:                         ; preds = %middle.block302
  %min.epilog.iters.check311 = icmp eq i64 %i.g, 0
  br i1 %min.epilog.iters.check311, label %.lr.ph.i.preheader, label %vec.epilog.ph312, !prof !20

vec.epilog.ph312:                                 ; preds = %vector.main.loop.iter.check291, %vec.epilog.iter.check310
  %vec.epilog.resume.val304 = phi i64 [ %n.vec294, %vec.epilog.iter.check310 ], [ 0, %vector.main.loop.iter.check291 ]
  %n.vec313 = and i64 %i.e, 2147483644            ; 4 uses
  %i.x = trunc nuw nsw i64 %n.vec313 to i32
  %i.y = shl nuw nsw i64 %n.vec313, 1             ; 2 uses
  %i.z = getelementptr i8, ptr %3, i64 %i.y
  %i.aa = getelementptr i8, ptr %0, i64 %i.y
  br label %vec.epilog.vector.body314

vec.epilog.vector.body314:                        ; preds = %vec.epilog.vector.body314, %vec.epilog.ph312
  %index315 = phi i64 [ %vec.epilog.resume.val304, %vec.epilog.ph312 ], [ %index.next319, %vec.epilog.vector.body314 ] ; 2 uses
  %i.ab = shl i64 %index315, 1                    ; 2 uses
  %next.gep316 = getelementptr i8, ptr %3, i64 %i.ab
  %next.gep317 = getelementptr i8, ptr %0, i64 %i.ab
  %wide.load318 = load <4 x i16>, ptr %next.gep317, align 2, !tbaa !19 ; 2 uses
  %i.ac = shl <4 x i16> %wide.load318, splat (i16 1)
  %i.ad = and <4 x i16> %i.ac, splat (i16 -64)
  %i.ae = and <4 x i16> %wide.load318, splat (i16 31)
  %i.af = or disjoint <4 x i16> %i.ad, %i.ae
  store <4 x i16> %i.af, ptr %next.gep316, align 2, !tbaa !19
  %index.next319 = add nuw i64 %index315, 4       ; 2 uses
  %i.ag = icmp eq i64 %index.next319, %n.vec313
  br i1 %i.ag, label %vec.epilog.middle.block320, label %vec.epilog.vector.body314, !llvm.loop !106

vec.epilog.middle.block320:                       ; preds = %vec.epilog.vector.body314
  %cmp.n321 = icmp eq i64 %n.vec313, %i.e
  br i1 %cmp.n321, label %_ZN5video15CColorConverter24convert_A1R5G5B5toR5G6B5EPKviPv.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check308, %vec.epilog.iter.check310, %vec.epilog.middle.block320
  %.010.i.ph = phi i32 [ 0, %iter.check308 ], [ %i.h, %vec.epilog.iter.check310 ], [ %i.x, %vec.epilog.middle.block320 ] ; 4 uses
  %.069.i.ph = phi ptr [ %3, %iter.check308 ], [ %i.j, %vec.epilog.iter.check310 ], [ %i.z, %vec.epilog.middle.block320 ] ; 3 uses
  %.078.i.ph = phi ptr [ %0, %iter.check308 ], [ %i.k, %vec.epilog.iter.check310 ], [ %i.aa, %vec.epilog.middle.block320 ] ; 3 uses
  %i.ah = sub i32 %2, %.010.i.ph
  %.neg364 = add i32 %.010.i.ph, 1
  %xtraiter362 = and i32 %i.ah, 1
  %lcmp.mod363.not = icmp eq i32 %xtraiter362, 0
  br i1 %lcmp.mod363.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.ai = getelementptr inbounds nuw i8, ptr %.078.i.ph, i64 2
  %i.aj = load i16, ptr %.078.i.ph, align 2, !tbaa !19 ; 2 uses
  %i.ak = shl i16 %i.aj, 1
  %i.al = and i16 %i.ak, -64
  %i.am = and i16 %i.aj, 31
  %i.an = or disjoint i16 %i.al, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %.069.i.ph, i64 2
  store i16 %i.an, ptr %.069.i.ph, align 2, !tbaa !19
  %i.ap = add nuw nsw i32 %.010.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.010.i.unr = phi i32 [ %.010.i.ph, %.lr.ph.i.preheader ], [ %i.ap, %.lr.ph.i.prol ]
  %.069.i.unr = phi ptr [ %.069.i.ph, %.lr.ph.i.preheader ], [ %i.ao, %.lr.ph.i.prol ]
  %.078.i.unr = phi ptr [ %.078.i.ph, %.lr.ph.i.preheader ], [ %i.ai, %.lr.ph.i.prol ]
  %i.aq = icmp eq i32 %2, %.neg364
  br i1 %i.aq, label %_ZN5video15CColorConverter24convert_A1R5G5B5toR5G6B5EPKviPv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.010.i = phi i32 [ %i.bf, %.lr.ph.i ], [ %.010.i.unr, %.lr.ph.i.prol.loopexit ]
  %.069.i = phi ptr [ %i.be, %.lr.ph.i ], [ %.069.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %.078.i = phi ptr [ %i.ay, %.lr.ph.i ], [ %.078.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.078.i, i64 2
  %i.as = load i16, ptr %.078.i, align 2, !tbaa !19 ; 2 uses
  %i.at = shl i16 %i.as, 1
  %i.au = and i16 %i.at, -64
  %i.av = and i16 %i.as, 31
  %i.aw = or disjoint i16 %i.au, %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %.069.i, i64 2
  store i16 %i.aw, ptr %.069.i, align 2, !tbaa !19
  %i.ay = getelementptr inbounds nuw i8, ptr %.078.i, i64 4
  %i.az = load i16, ptr %i.ar, align 2, !tbaa !19 ; 2 uses
  %i.ba = shl i16 %i.az, 1
  %i.bb = and i16 %i.ba, -64
  %i.bc = and i16 %i.az, 31
  %i.bd = or disjoint i16 %i.bb, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %.069.i, i64 4
  store i16 %i.bd, ptr %i.ax, align 2, !tbaa !19
  %i.bf = add nuw nsw i32 %.010.i, 2              ; 2 uses
  %exitcond.not.i.1 = icmp eq i32 %i.bf, %2
  br i1 %exitcond.not.i.1, label %_ZN5video15CColorConverter24convert_A1R5G5B5toR5G6B5EPKviPv.exit, label %.lr.ph.i, !llvm.loop !107

bb.e:                                             ; preds = %bb.b
  %i.bg = icmp sgt i32 %2, 0
  br i1 %i.bg, label %.lr.ph.i52.preheader, label %_ZN5video15CColorConverter24convert_A1R5G5B5toR5G6B5EPKviPv.exit

.lr.ph.i52.preheader:                             ; preds = %bb.e
  %i.bh = zext nneg i32 %2 to i64                 ; 2 uses
  %min.iters.check273 = icmp ult i32 %2, 4
  br i1 %min.iters.check273, label %.lr.ph.i52.preheader327, label %vector.ph274

vector.ph274:                                     ; preds = %.lr.ph.i52.preheader
  %n.vec275 = and i64 %i.bh, 2147483644           ; 5 uses
  %i.bi = trunc nuw nsw i64 %n.vec275 to i32
  %i.bj = shl nuw nsw i64 %n.vec275, 2
  %i.bk = getelementptr i8, ptr %3, i64 %i.bj
  %i.bl = shl nuw nsw i64 %n.vec275, 1
  %i.bm = getelementptr i8, ptr %0, i64 %i.bl
  br label %vector.body276

vector.body276:                                   ; preds = %vector.body276, %vector.ph274
  %index277 = phi i64 [ 0, %vector.ph274 ], [ %index.next281, %vector.body276 ] ; 3 uses
  %i.bn = shl i64 %index277, 2
  %next.gep278 = getelementptr i8, ptr %3, i64 %i.bn
  %i.bo = shl i64 %index277, 1
  %next.gep279 = getelementptr i8, ptr %0, i64 %i.bo
  %wide.load280 = load <4 x i16>, ptr %next.gep279, align 2, !tbaa !19 ; 2 uses
  %i.bp = zext <4 x i16> %wide.load280 to <4 x i32> ; 6 uses
  %i.bq = sext <4 x i16> %wide.load280 to <4 x i32>
  %i.br = and <4 x i32> %i.bq, splat (i32 -16777216)
  %i.bs = shl nuw nsw <4 x i32> %i.bp, splat (i32 9)
  %i.bt = and <4 x i32> %i.bs, splat (i32 16252928)
  %i.bu = or disjoint <4 x i32> %i.bt, %i.br
  %i.bv = shl nuw nsw <4 x i32> %i.bp, splat (i32 4)
  %i.bw = and <4 x i32> %i.bv, splat (i32 458752)
  %i.bx = or disjoint <4 x i32> %i.bu, %i.bw
  %i.by = shl nuw nsw <4 x i32> %i.bp, splat (i32 6)
  %i.bz = and <4 x i32> %i.by, splat (i32 63488)
  %i.ca = or disjoint <4 x i32> %i.bx, %i.bz
  %i.cb = shl nuw nsw <4 x i32> %i.bp, splat (i32 1)
  %i.cc = and <4 x i32> %i.cb, splat (i32 1792)
  %i.cd = or disjoint <4 x i32> %i.ca, %i.cc
  %i.ce = shl nuw nsw <4 x i32> %i.bp, splat (i32 3)
  %i.cf = and <4 x i32> %i.ce, splat (i32 248)
  %i.cg = or disjoint <4 x i32> %i.cd, %i.cf
  %i.ch = lshr <4 x i32> %i.bp, splat (i32 2)
  %i.ci = and <4 x i32> %i.ch, splat (i32 7)
  %i.cj = or <4 x i32> %i.cg, %i.ci
  store <4 x i32> %i.cj, ptr %next.gep278, align 4, !tbaa !14
  %index.next281 = add nuw i64 %index277, 4       ; 2 uses
  %i.ck = icmp eq i64 %index.next281, %n.vec275
  br i1 %i.ck, label %middle.block282, label %vector.body276, !llvm.loop !108

middle.block282:                                  ; preds = %vector.body276
  %cmp.n283 = icmp eq i64 %n.vec275, %i.bh
  br i1 %cmp.n283, label %_ZN5video15CColorConverter24convert_A1R5G5B5toR5G6B5EPKviPv.exit, label %.lr.ph.i52.preheader327

.lr.ph.i52.preheader327:                          ; preds = %.lr.ph.i52.preheader, %middle.block282
  %.010.i53.ph = phi i32 [ 0, %.lr.ph.i52.preheader ], [ %i.bi, %middle.block282 ]
  %.069.i54.ph = phi ptr [ %3, %.lr.ph.i52.preheader ], [ %i.bk, %middle.block282 ]
  %.078.i55.ph = phi ptr [ %0, %.lr.ph.i52.preheader ], [ %i.bm, %middle.block282 ]
  br label %.lr.ph.i52

.lr.ph.i52:                                       ; preds = %.lr.ph.i52.preheader327, %.lr.ph.i52
  %.010.i53 = phi i32 [ %i.dj, %.lr.ph.i52 ], [ %.010.i53.ph, %.lr.ph.i52.preheader327 ]
  %.069.i54 = phi ptr [ %i.di, %.lr.ph.i52 ], [ %.069.i54.ph, %.lr.ph.i52.preheader327 ] ; 2 uses
  %.078.i55 = phi ptr [ %i.cl, %.lr.ph.i52 ], [ %.078.i55.ph, %.lr.ph.i52.preheader327 ] ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.078.i55, i64 2
  %i.cm = load i16, ptr %.078.i55, align 2, !tbaa !19 ; 2 uses
  %i.cn = zext i16 %i.cm to i32                   ; 6 uses
  %i.co = sext i16 %i.cm to i32
  %i.cp = and i32 %i.co, -16777216
  %i.cq = shl nuw nsw i32 %i.cn, 9
  %i.cr = and i32 %i.cq, 16252928
  %i.cs = or disjoint i32 %i.cr, %i.cp
  %i.ct = shl nuw nsw i32 %i.cn, 4
  %i.cu = and i32 %i.ct, 458752
  %i.cv = or disjoint i32 %i.cs, %i.cu
  %i.cw = shl nuw nsw i32 %i.cn, 6
  %i.cx = and i32 %i.cw, 63488
  %i.cy = or disjoint i32 %i.cv, %i.cx
  %i.cz = shl nuw nsw i32 %i.cn, 1
  %i.da = and i32 %i.cz, 1792
  %i.db = or disjoint i32 %i.cy, %i.da
  %i.dc = shl nuw nsw i32 %i.cn, 3
  %i.dd = and i32 %i.dc, 248
  %i.de = or disjoint i32 %i.db, %i.dd
  %i.df = lshr i32 %i.cn, 2
  %i.dg = and i32 %i.df, 7
  %i.dh = or i32 %i.de, %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %.069.i54, i64 4
  store i32 %i.dh, ptr %.069.i54, align 4, !tbaa !14
  %i.dj = add nuw nsw i32 %.010.i53, 1            ; 2 uses
  %exitcond.not.i56 = icmp eq i32 %i.dj, %2
  br i1 %exitcond.not.i56, label %_ZN5video15CColorConverter24convert_A1R5G5B5toR5G6B5EPKviPv.exit, label %.lr.ph.i52, !llvm.loop !109

bb.f:                                             ; preds = %bb.b
  %i.dk = icmp sgt i32 %2, 0
  br i1 %i.dk, label %.lr.ph.i57.preheader, label %_ZN5video15CColorConverter24convert_A1R5G5B5toR5G6B5EPKviPv.exit

.lr.ph.i57.preheader:                             ; preds = %bb.f
  %xtraiter357 = and i32 %2, 1
  %i.dl = icmp eq i32 %2, 1
  br i1 %i.dl, label %.lr.ph.i57.epil.preheader, label %.lr.ph.i57.preheader.new

.lr.ph.i57.preheader.new:                         ; preds = %.lr.ph.i57.preheader
  %unroll_iter360 = and i32 %2, 2147483646
  br label %.lr.ph.i57

.lr.ph.i57:                                       ; preds = %.lr.ph.i57, %.lr.ph.i57.preheader.new
  %.01215.i = phi ptr [ %3, %.lr.ph.i57.preheader.new ], [ %i.en, %.lr.ph.i57 ] ; 7 uses
  %.01314.i = phi ptr [ %0, %.lr.ph.i57.preheader.new ], [ %i.em, %.lr.ph.i57 ] ; 5 uses
  %niter361 = phi i32 [ 0, %.lr.ph.i57.preheader.new ], [ %niter361.next.1, %.lr.ph.i57 ]
  %i.dm = load i16, ptr %.01314.i, align 2, !tbaa !19
  %i.dn = lshr i16 %i.dm, 7
  %i.do = trunc i16 %i.dn to i8
  %i.dp = and i8 %i.do, -8
  %i.dq = getelementptr inbounds nuw i8, ptr %.01215.i, i64 2
  store i8 %i.dp, ptr %i.dq, align 1, !tbaa !12
  %i.dr = load i16, ptr %.01314.i, align 2, !tbaa !19
  %i.ds = lshr i16 %i.dr, 2
  %i.dt = trunc i16 %i.ds to i8
  %i.du = and i8 %i.dt, -8
  %i.dv = getelementptr inbounds nuw i8, ptr %.01215.i, i64 1
  store i8 %i.du, ptr %i.dv, align 1, !tbaa !12
  %i.dw = load i16, ptr %.01314.i, align 2, !tbaa !19
  %.tr.i = trunc i16 %i.dw to i8
  %i.dx = shl i8 %.tr.i, 3
  store i8 %i.dx, ptr %.01215.i, align 1, !tbaa !12
  %i.dy = getelementptr inbounds nuw i8, ptr %.01314.i, i64 2 ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.01215.i, i64 3
  %i.ea = load i16, ptr %i.dy, align 2, !tbaa !19
  %i.eb = lshr i16 %i.ea, 7
  %i.ec = trunc i16 %i.eb to i8
  %i.ed = and i8 %i.ec, -8
  %i.ee = getelementptr inbounds nuw i8, ptr %.01215.i, i64 5
  store i8 %i.ed, ptr %i.ee, align 1, !tbaa !12
  %i.ef = load i16, ptr %i.dy, align 2, !tbaa !19
  %i.eg = lshr i16 %i.ef, 2
  %i.eh = trunc i16 %i.eg to i8
  %i.ei = and i8 %i.eh, -8
  %i.ej = getelementptr inbounds nuw i8, ptr %.01215.i, i64 4
  store i8 %i.ei, ptr %i.ej, align 1, !tbaa !12
  %i.ek = load i16, ptr %i.dy, align 2, !tbaa !19
  %.tr.i.1 = trunc i16 %i.ek to i8
  %i.el = shl i8 %.tr.i.1, 3
  store i8 %i.el, ptr %i.dz, align 1, !tbaa !12
  %i.em = getelementptr inbounds nuw i8, ptr %.01314.i, i64 4 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.01215.i, i64 6 ; 2 uses
  %niter361.next.1 = add nuw nsw i32 %niter361, 2 ; 2 uses
  %niter361.ncmp.1 = icmp eq i32 %niter361.next.1, %unroll_iter360
  br i1 %niter361.ncmp.1, label %_ZN5video15CColorConverter24convert_A1R5G5B5toR5G6B5EPKviPv.exit.loopexit329.unr-lcssa, label %.lr.ph.i57, !llvm.loop !0

bb.g:                                             ; preds = %bb.a
  switch i32 %4, label %_ZN5video15CColorConverter24convert_A1R5G5B5toR5G6B5EPKviPv.exit [
    i32 0, label %bb.h
    i32 1, label %bb.i
    i32 3, label %bb.j
    i32 2, label %bb.k
  ]

bb.h:                                             ; preds = %bb.g
  %i.eo = icmp sgt i32 %2, 0
  br i1 %i.eo, label %iter.check, label %_ZN5video15CColorConverter24convert_A1R5G5B5toR5G6B5EPKviPv.exit

iter.check:                                       ; preds = %bb.h
  %i.ep = zext nneg i32 %2 to i64                 ; 5 uses
  %min.iters.check246 = icmp ult i32 %2, 4
  %i.eq = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.eq, -32
  %or.cond325 = or i1 %min.iters.check246, %diff.check
  br i1 %or.cond325, label %.lr.ph.i59.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check247 = icmp ult i32 %2, 16
  br i1 %min.iters.check247, label %vec.epilog.ph, label %vector.ph248

vector.ph248:                                     ; preds = %vector.main.loop.iter.check
  %i.er = and i64 %i.ep, 12
  %n.vec249 = and i64 %i.ep, 2147483632           ; 5 uses
  %i.es = trunc nuw nsw i64 %n.vec249 to i32
  %i.et = shl nuw nsw i64 %n.vec249, 1            ; 2 uses
  %i.eu = getelementptr i8, ptr %3, i64 %i.et
  %i.ev = getelementptr i8, ptr %0, i64 %i.et
  br label %vector.body250

vector.body250:                                   ; preds = %vector.ph248, %vector.body250
  %index251 = phi i64 [ 0, %vector.ph248 ], [ %index.next256, %vector.body250 ] ; 2 uses
  %i.ew = shl i64 %index251, 1                    ; 2 uses
  %next.gep252 = getelementptr i8, ptr %3, i64 %i.ew ; 2 uses
  %next.gep253 = getelementptr i8, ptr %0, i64 %i.ew ; 2 uses
  %i.ex = getelementptr i8, ptr %next.gep253, i64 16
  %wide.load254 = load <8 x i16>, ptr %next.gep253, align 2, !tbaa !19 ; 2 uses
  %wide.load255 = load <8 x i16>, ptr %i.ex, align 2, !tbaa !19 ; 2 uses
  %i.ey = lshr <8 x i16> %wide.load254, splat (i16 1)
  %i.ez = lshr <8 x i16> %wide.load255, splat (i16 1)
  %i.fa = and <8 x i16> %i.ey, splat (i16 32736)
  %i.fb = and <8 x i16> %i.ez, splat (i16 32736)
  %i.fc = and <8 x i16> %wide.load254, splat (i16 31)
  %i.fd = and <8 x i16> %wide.load255, splat (i16 31)
  %i.fe = or disjoint <8 x i16> %i.fc, %i.fa
  %i.ff = or disjoint <8 x i16> %i.fd, %i.fb
  %i.fg = or disjoint <8 x i16> %i.fe, splat (i16 -32768)
  %i.fh = or disjoint <8 x i16> %i.ff, splat (i16 -32768)
  %i.fi = getelementptr i8, ptr %next.gep252, i64 16
  store <8 x i16> %i.fg, ptr %next.gep252, align 2, !tbaa !19
  store <8 x i16> %i.fh, ptr %i.fi, align 2, !tbaa !19
  %index.next256 = add nuw i64 %index251, 16      ; 2 uses
  %i.fj = icmp eq i64 %index.next256, %n.vec249
  br i1 %i.fj, label %middle.block257, label %vector.body250, !llvm.loop !110

middle.block257:                                  ; preds = %vector.body250
  %cmp.n258 = icmp eq i64 %n.vec249, %i.ep
  br i1 %cmp.n258, label %_ZN5video15CColorConverter24convert_A1R5G5B5toR5G6B5EPKviPv.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block257
  %min.epilog.iters.check = icmp eq i64 %i.er, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i59.preheader, label %vec.epilog.ph, !prof !20

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec249, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec262 = and i64 %i.ep, 2147483644           ; 4 uses
  %i.fk = trunc nuw nsw i64 %n.vec262 to i32
  %i.fl = shl nuw nsw i64 %n.vec262, 1            ; 2 uses
  %i.fm = getelementptr i8, ptr %3, i64 %i.fl
  %i.fn = getelementptr i8, ptr %0, i64 %i.fl
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index263 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next267, %vec.epilog.vector.body ] ; 2 uses
  %i.fo = shl i64 %index263, 1                    ; 2 uses
  %next.gep264 = getelementptr i8, ptr %3, i64 %i.fo
  %next.gep265 = getelementptr i8, ptr %0, i64 %i.fo
  %wide.load266 = load <4 x i16>, ptr %next.gep265, align 2, !tbaa !19 ; 2 uses
  %i.fp = lshr <4 x i16> %wide.load266, splat (i16 1)
  %i.fq = and <4 x i16> %i.fp, splat (i16 32736)
  %i.fr = and <4 x i16> %wide.load266, splat (i16 31)
  %i.fs = or disjoint <4 x i16> %i.fr, %i.fq
  %i.ft = or disjoint <4 x i16> %i.fs, splat (i16 -32768)
  store <4 x i16> %i.ft, ptr %next.gep264, align 2, !tbaa !19
  %index.next267 = add nuw i64 %index263, 4       ; 2 uses
  %i.fu = icmp eq i64 %index.next267, %n.vec262
  br i1 %i.fu, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !111

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n268 = icmp eq i64 %n.vec262, %i.ep
  br i1 %cmp.n268, label %_ZN5video15CColorConverter24convert_A1R5G5B5toR5G6B5EPKviPv.exit, label %.lr.ph.i59.preheader

.lr.ph.i59.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.010.i60.ph = phi i32 [ 0, %iter.check ], [ %i.es, %vec.epilog.iter.check ], [ %i.fk, %vec.epilog.middle.block ] ; 4 uses
  %.069.i61.ph = phi ptr [ %3, %iter.check ], [ %i.eu, %vec.epilog.iter.check ], [ %i.fm, %vec.epilog.middle.block ] ; 3 uses
  %.078.i62.ph = phi ptr [ %0, %iter.check ], [ %i.ev, %vec.epilog.iter.check ], [ %i.fn, %vec.epilog.middle.block ] ; 3 uses
  %i.fv = sub i32 %2, %.010.i60.ph
  %.neg = add i32 %.010.i60.ph, 1
  %xtraiter355 = and i32 %i.fv, 1
  %lcmp.mod356.not = icmp eq i32 %xtraiter355, 0
  br i1 %lcmp.mod356.not, label %.lr.ph.i59.prol.loopexit, label %.lr.ph.i59.prol

.lr.ph.i59.prol:                                  ; preds = %.lr.ph.i59.preheader
  %i.fw = getelementptr inbounds nuw i8, ptr %.078.i62.ph, i64 2
  %i.fx = load i16, ptr %.078.i62.ph, align 2, !tbaa !19 ; 2 uses
  %i.fy = lshr i16 %i.fx, 1
  %i.fz = and i16 %i.fy, 32736
  %i.ga = and i16 %i.fx, 31
  %i.gb = or disjoint i16 %i.ga, %i.fz
  %i.gc = or disjoint i16 %i.gb, -32768
  %i.gd = getelementptr inbounds nuw i8, ptr %.069.i61.ph, i64 2
  store i16 %i.gc, ptr %.069.i61.ph, align 2, !tbaa !19
  %i.ge = add nuw nsw i32 %.010.i60.ph, 1
  br label %.lr.ph.i59.prol.loopexit

.lr.ph.i59.prol.loopexit:                         ; preds = %.lr.ph.i59.prol, %.lr.ph.i59.preheader
  %.010.i60.unr = phi i32 [ %.010.i60.ph, %.lr.ph.i59.preheader ], [ %i.ge, %.lr.ph.i59.prol ]
  %.069.i61.unr = phi ptr [ %.069.i61.ph, %.lr.ph.i59.preheader ], [ %i.gd, %.lr.ph.i59.prol ]
  %.078.i62.unr = phi ptr [ %.078.i62.ph, %.lr.ph.i59.preheader ], [ %i.fw, %.lr.ph.i59.prol ]
  %i.gf = icmp eq i32 %2, %.neg
  br i1 %i.gf, label %_ZN5video15CColorConverter24convert_A1R5G5B5toR5G6B5EPKviPv.exit, label %.lr.ph.i59

.lr.ph.i59:                                       ; preds = %.lr.ph.i59.prol.loopexit, %.lr.ph.i59
  %.010.i60 = phi i32 [ %i.gw, %.lr.ph.i59 ], [ %.010.i60.unr, %.lr.ph.i59.prol.loopexit ]
  %.069.i61 = phi ptr [ %i.gv, %.lr.ph.i59 ], [ %.069.i61.unr, %.lr.ph.i59.prol.loopexit ] ; 3 uses
  %.078.i62 = phi ptr [ %i.go, %.lr.ph.i59 ], [ %.078.i62.unr, %.lr.ph.i59.prol.loopexit ] ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.078.i62, i64 2
  %i.gh = load i16, ptr %.078.i62, align 2, !tbaa !19 ; 2 uses
  %i.gi = lshr i16 %i.gh, 1
  %i.gj = and i16 %i.gi, 32736
  %i.gk = and i16 %i.gh, 31
  %i.gl = or disjoint i16 %i.gk, %i.gj
  %i.gm = or disjoint i16 %i.gl, -32768
  %i.gn = getelementptr inbounds nuw i8, ptr %.069.i61, i64 2
  store i16 %i.gm, ptr %.069.i61, align 2, !tbaa !19
  %i.go = getelementptr inbounds nuw i8, ptr %.078.i62, i64 4
  %i.gp = load i16, ptr %i.gg, align 2, !tbaa !19 ; 2 uses
  %i.gq = lshr i16 %i.gp, 1
  %i.gr = and i16 %i.gq, 32736
  %i.gs = and i16 %i.gp, 31
  %i.gt = or disjoint i16 %i.gs, %i.gr
  %i.gu = or disjoint i16 %i.gt, -32768
  %i.gv = getelementptr inbounds nuw i8, ptr %.069.i61, i64 4
  store i16 %i.gu, ptr %i.gn, align 2, !tbaa !19
  %i.gw = add nuw nsw i32 %.010.i60, 2            ; 2 uses
  %exitcond.not.i63.1 = icmp eq i32 %i.gw, %2
  br i1 %exitcond.not.i63.1, label %_ZN5video15CColorConverter24convert_A1R5G5B5toR5G6B5EPKviPv.exit, label %.lr.ph.i59, !llvm.loop !112

bb.i:                                             ; preds = %bb.g
  %i.gx = shl nsw i32 %2, 1
  br label %_ZN5video15CColorConverter24convert_A1R5G5B5toR5G6B5EPKviPv.exit.sink.split

bb.j:                                             ; preds = %bb.g
  %i.gy = icmp sgt i32 %2, 0
  br i1 %i.gy, label %.lr.ph.i64.preheader, label %_ZN5video15CColorConverter24convert_A1R5G5B5toR5G6B5EPKviPv.exit

.lr.ph.i64.preheader:                             ; preds = %bb.j
  %i.gz = zext nneg i32 %2 to i64                 ; 2 uses
  %min.iters.check229 = icmp ult i32 %2, 8
  br i1 %min.iters.check229, label %.lr.ph.i64.preheader331, label %vector.ph230

vector.ph230:                                     ; preds = %.lr.ph.i64.preheader
  %n.vec231 = and i64 %i.gz, 2147483640           ; 5 uses
  %i.ha = trunc nuw nsw i64 %n.vec231 to i32
  %i.hb = shl nuw nsw i64 %n.vec231, 2
  %i.hc = getelementptr i8, ptr %3, i64 %i.hb
  %i.hd = shl nuw nsw i64 %n.vec231, 1
  %i.he = getelementptr i8, ptr %0, i64 %i.hd
  br label %vector.body232

vector.body232:                                   ; preds = %vector.body232, %vector.ph230
  %index233 = phi i64 [ 0, %vector.ph230 ], [ %index.next238, %vector.body232 ] ; 3 uses
  %i.hf = shl i64 %index233, 2
  %next.gep234 = getelementptr i8, ptr %3, i64 %i.hf ; 2 uses
  %i.hg = shl i64 %index233, 1
  %next.gep235 = getelementptr i8, ptr %0, i64 %i.hg ; 2 uses
  %i.hh = getelementptr i8, ptr %next.gep235, i64 8
  %wide.load236 = load <4 x i16>, ptr %next.gep235, align 2, !tbaa !19
  %wide.load237 = load <4 x i16>, ptr %i.hh, align 2, !tbaa !19
  %i.hi = zext <4 x i16> %wide.load236 to <4 x i32> ; 3 uses
  %i.hj = zext <4 x i16> %wide.load237 to <4 x i32> ; 3 uses
  %i.hk = shl nuw nsw <4 x i32> %i.hi, splat (i32 8)
  %i.hl = shl nuw nsw <4 x i32> %i.hj, splat (i32 8)
  %i.hm = and <4 x i32> %i.hk, splat (i32 16252928)
  %i.hn = and <4 x i32> %i.hl, splat (i32 16252928)
  %i.ho = shl nuw nsw <4 x i32> %i.hi, splat (i32 5)
  %i.hp = shl nuw nsw <4 x i32> %i.hj, splat (i32 5)
  %i.hq = and <4 x i32> %i.ho, splat (i32 64512)
  %i.hr = and <4 x i32> %i.hp, splat (i32 64512)
  %i.hs = shl nuw nsw <4 x i32> %i.hi, splat (i32 3)
  %i.ht = shl nuw nsw <4 x i32> %i.hj, splat (i32 3)
  %i.hu = and <4 x i32> %i.hs, splat (i32 248)
  %i.hv = and <4 x i32> %i.ht, splat (i32 248)
  %i.hw = or disjoint <4 x i32> %i.hq, %i.hm
  %i.hx = or disjoint <4 x i32> %i.hr, %i.hn
  %i.hy = or disjoint <4 x i32> %i.hw, %i.hu
  %i.hz = or disjoint <4 x i32> %i.hx, %i.hv
  %i.ia = or disjoint <4 x i32> %i.hy, splat (i32 -16777216)
  %i.ib = or disjoint <4 x i32> %i.hz, splat (i32 -16777216)
  %i.ic = getelementptr i8, ptr %next.gep234, i64 16
  store <4 x i32> %i.ia, ptr %next.gep234, align 4, !tbaa !14
  store <4 x i32> %i.ib, ptr %i.ic, align 4, !tbaa !14
  %index.next238 = add nuw i64 %index233, 8       ; 2 uses
  %i.id = icmp eq i64 %index.next238, %n.vec231
  br i1 %i.id, label %middle.block239, label %vector.body232, !llvm.loop !113

middle.block239:                                  ; preds = %vector.body232
  %cmp.n240 = icmp eq i64 %n.vec231, %i.gz
  br i1 %cmp.n240, label %_ZN5video15CColorConverter24convert_A1R5G5B5toR5G6B5EPKviPv.exit, label %.lr.ph.i64.preheader331

.lr.ph.i64.preheader331:                          ; preds = %.lr.ph.i64.preheader, %middle.block239
  %.010.i65.ph = phi i32 [ 0, %.lr.ph.i64.preheader ], [ %i.ha, %middle.block239 ]
  %.069.i66.ph = phi ptr [ %3, %.lr.ph.i64.preheader ], [ %i.hc, %middle.block239 ]
end_hunk_1
