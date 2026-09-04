Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gausstransform?download=true
inline.NumInlined: 628
inline.NumDeleted: 335
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN3gmx16GaussTransform3D4ImplC2ERKNS_7extentsIJLln1ELln1ELln1EEEERKNS_30GaussianSpreadKernelParameters5ShapeE:bb.a
  %i.ae = phi ptr [ %.pre.i.i, %.noexc.i ], [ null, %bb.a ]
  store <4 x i64> %i.q, ptr %i.r, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.ae, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !28
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.af, i8 0, i64 24, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, i8 0, i64 32, i1 false)
  %.ptr = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ah = load double, ptr %0, align 8, !tbaa !49
  %i.ai = fptrunc double %i.ah to float
  invoke void @_ZN3gmx19GaussianOn1DLatticeC1Eif(ptr noundef nonnull align 8 dereferenceable(8) %.ptr, i32 noundef %i.ad, float noundef %i.ai)
          to label %bb.e unwind label %.thread

.thread:                                          ; preds = %bb.d
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

bb.e:                                             ; preds = %bb.d
  %.ptr8 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !25
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = load double, ptr %i.am, align 8, !tbaa !49
  %i.ao = fptrunc double %i.an to float
  invoke void @_ZN3gmx19GaussianOn1DLatticeC1Eif(ptr noundef nonnull align 8 dereferenceable(8) %.ptr8, i32 noundef %i.al, float noundef %i.ao)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %.ptr9 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ap = load i32, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !25
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !49
  %i.as = fptrunc double %i.ar to float
  invoke void @_ZN3gmx19GaussianOn1DLatticeC1Eif(ptr noundef nonnull align 8 dereferenceable(8) %.ptr9, i32 noundef %i.ap, float noundef %i.as)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  ret void

bb.h:                                             ; preds = %bb.f, %bb.e
  %.0.idx = phi i64 [ 192, %bb.f ], [ 184, %bb.e ]
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.i
  %.idx = phi i64 [ %.0.idx, %bb.h ], [ %.add, %bb.i ]
  %.add = add nsw i64 %.idx, -8                   ; 3 uses
  %.ptr11 = getelementptr inbounds i8, ptr %0, i64 %.add
  tail call void @_ZN3gmx19GaussianOn1DLatticeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.ptr11) #20
  %i.au = icmp eq i64 %.add, 176
  br i1 %i.au, label %.loopexit, label %bb.i

.loopexit:                                        ; preds = %bb.i, %.thread
  %i.av = phi { ptr, i32 } [ %i.aj, %.thread ], [ %i.at, %bb.i ] ; 2 uses
  %i.aw = load ptr, ptr %i.af, align 8, !tbaa !20 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i.i.i, label %_ZN3gmx21OuterProductEvaluatorD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %.loopexit
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !21
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.aw to i64
  %i.bb = sub i64 %i.az, %i.ba
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.bb) #21
  br label %_ZN3gmx21OuterProductEvaluatorD2Ev.exit

_ZN3gmx21OuterProductEvaluatorD2Ev.exit:          ; preds = %bb.j, %.loopexit
  %i.bc = load ptr, ptr %i.p, align 8, !tbaa !20  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i.i, label %common.resume, label %common.resume.sink.split
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx16GaussTransform3D4Impl3addERKNS_30GaussianSpreadKernelParameters20PositionAndAmplitudeE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.gmx::BasicVector", align 8  ; 5 uses
  %3 = alloca %"class.gmx::BasicVector", align 8  ; 5 uses
  %4 = alloca %"class.gmx::IntegerBox", align 4   ; 10 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !86, !nonnull !87, !align !88 ; 2 uses
  %i.b = load float, ptr %i.a, align 4, !tbaa !23
  %i.c = tail call float @llvm.rint.f32(float %i.b)
  %i.d = fptosi float %i.c to i32                 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.f = load <2 x float>, ptr %i.e, align 4, !tbaa !23
  %i.g = tail call <2 x float> @llvm.rint.v2f32(<2 x float> %i.f)
  %i.h = fptosi <2 x float> %i.g to <2 x i32>     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %.sroa.470.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %.sroa.470.0.copyload = load i64, ptr %.sroa.470.0..sroa_idx, align 8, !tbaa !34
  %.sroa.571.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %.sroa.571.0.copyload = load i64, ptr %.sroa.571.0..sroa_idx, align 8, !tbaa !34
  %.sroa.672.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.sroa.672.0.copyload = load i64, ptr %.sroa.672.0..sroa_idx, align 8, !tbaa !34
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.022.0.copyload = load i64, ptr %i.i, align 8 ; 2 uses
  %.sroa.223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.223.0.copyload = load i32, ptr %.sroa.223.0..sroa_idx, align 8, !tbaa !44 ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.022.0.copyload to i32 ; 2 uses
  %.sroa.3.0.extract.shift.i = lshr i64 %.sroa.022.0.copyload, 32
  %.sroa.3.0.extract.trunc.i = trunc nuw i64 %.sroa.3.0.extract.shift.i to i32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20, !noalias !89
  %i.j = sub nsw i32 %i.d, %.sroa.0.0.extract.trunc.i
  %i.k = extractelement <2 x i32> %i.h, i64 0     ; 2 uses
  %i.l = sub nsw i32 %i.k, %.sroa.3.0.extract.trunc.i
  %i.m = extractelement <2 x i32> %i.h, i64 1     ; 2 uses
  %i.n = sub nsw i32 %i.m, %.sroa.223.0.copyload
  %.sroa.speculated16.i.i.i = tail call i32 @llvm.smax.i32(i32 %i.j, i32 0)
  %.sroa.speculated11.i.i.i = tail call i32 @llvm.smax.i32(i32 %i.l, i32 0)
  %.sroa.speculated.i.i.i = tail call i32 @llvm.smax.i32(i32 %i.n, i32 0)
  %.sroa.2.0.insert.ext.i10.i.i = zext nneg i32 %.sroa.speculated11.i.i.i to i64
  %.sroa.2.0.insert.shift.i11.i.i = shl nuw nsw i64 %.sroa.2.0.insert.ext.i10.i.i, 32
  %.sroa.0.0.insert.ext.i12.i.i = zext nneg i32 %.sroa.speculated16.i.i.i to i64
  %.sroa.0.0.insert.insert.i13.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i11.i.i, %.sroa.0.0.insert.ext.i12.i.i
  store i64 %.sroa.0.0.insert.insert.i13.i.i, ptr %2, align 8, !noalias !89
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %.sroa.speculated.i.i.i, ptr %.sroa.24.0..sroa_idx.i, align 8, !noalias !89
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20, !noalias !89
  %i.o = trunc i64 %.sroa.470.0.copyload to i32
  %i.p = trunc i64 %.sroa.571.0.copyload to i32
  %i.q = trunc i64 %.sroa.672.0.copyload to i32
  %i.r = add nsw i32 %i.d, %.sroa.0.0.extract.trunc.i
  %i.s = add nsw i32 %i.k, %.sroa.3.0.extract.trunc.i
  %i.t = add nsw i32 %.sroa.223.0.copyload, %i.m
  %.sroa.speculated16.i.i8.i = tail call i32 @llvm.smin.i32(i32 %i.r, i32 %i.o)
  %.sroa.speculated11.i.i9.i = tail call i32 @llvm.smin.i32(i32 %i.s, i32 %i.p)
  %.sroa.speculated.i.i10.i = tail call i32 @llvm.smin.i32(i32 %i.t, i32 %i.q)
  %.sroa.2.0.insert.ext.i13.i.i = zext i32 %.sroa.speculated11.i.i9.i to i64
  %.sroa.2.0.insert.shift.i14.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i13.i.i, 32
  %.sroa.0.0.insert.ext.i15.i.i = zext i32 %.sroa.speculated16.i.i8.i to i64
  %.sroa.0.0.insert.insert.i16.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i14.i.i, %.sroa.0.0.insert.ext.i15.i.i
  store i64 %.sroa.0.0.insert.insert.i16.i.i, ptr %3, align 8, !noalias !89
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.sroa.speculated.i.i10.i, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !89
  call void @_ZN3gmx10IntegerBoxC1ERKNS_11BasicVectorIiEES4_(ptr noundef nonnull align 4 dereferenceable(24) %4, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(12) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20, !noalias !89
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20, !noalias !89
  %i.u = load i32, ptr %4, align 4, !tbaa !25
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !25
  %i.x = icmp slt i32 %i.u, %i.w
  br i1 %i.x, label %bb.b, label %_ZNK3gmx10IntegerBox5emptyEv.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !25
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !25
  %i.ac = icmp slt i32 %i.z, %i.ab
  br i1 %i.ac, label %_ZNK3gmx10IntegerBox5emptyEv.exit, label %_ZNK3gmx10IntegerBox5emptyEv.exit.thread

_ZNK3gmx10IntegerBox5emptyEv.exit:                ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !25
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !25
  %.not73 = icmp slt i32 %i.ae, %i.ag
  br i1 %.not73, label %bb.f, label %_ZNK3gmx10IntegerBox5emptyEv.exit.thread

bb.c:                                             ; preds = %bb.f
  %i.ah = sub nuw i64 %i.fn, %i.fu
  call void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(64) %i.eu, i64 noundef %i.ah), !noalias !90
  %.pre.i.i = load ptr, ptr %i.eu, align 8, !tbaa !20, !noalias !90
  br label %_ZN3gmx13MultiDimArrayISt6vectorIfSaIfEENS_7extentsIJLln1ELln1EEEENS_12layout_rightEE6resizeIJllEEEvDpT_.exit.i

bb.d:                                             ; preds = %bb.f
  %i.ai = icmp ult i64 %i.fn, %i.fu
  br i1 %i.ai, label %bb.e, label %_ZN3gmx13MultiDimArrayISt6vectorIfSaIfEENS_7extentsIJLln1ELln1EEEENS_12layout_rightEE6resizeIJllEEEvDpT_.exit.i

bb.e:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %i.fn ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.fp, %i.aj
  br i1 %.not.i.i.i.i, label %_ZN3gmx13MultiDimArrayISt6vectorIfSaIfEENS_7extentsIJLln1ELln1EEEENS_12layout_rightEE6resizeIJllEEEvDpT_.exit.i, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i.i:    ; preds = %bb.e
  store ptr %i.aj, ptr %i.fo, align 8, !tbaa !24, !noalias !90
  br label %_ZN3gmx13MultiDimArrayISt6vectorIfSaIfEENS_7extentsIJLln1ELln1EEEENS_12layout_rightEE6resizeIJllEEEvDpT_.exit.i

_ZN3gmx13MultiDimArrayISt6vectorIfSaIfEENS_7extentsIJLln1ELln1EEEENS_12layout_rightEE6resizeIJllEEEvDpT_.exit.i: ; preds = %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i.i, %bb.e, %bb.d, %bb.c
  %i.ak = phi ptr [ %.pre.i.i, %bb.c ], [ %i.fq, %bb.d ], [ %i.fq, %bb.e ], [ %i.fq, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i.i ] ; 4 uses
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  store i64 %i.fm, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !tbaa !34, !noalias !90
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 %i.fl, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !34, !noalias !90
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %i.ak, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !28, !noalias !90
  %i.al = icmp slt i64 %i.fl, 1
  %.not7.i.i = icmp eq ptr %i.ff, %i.fh
  %or.cond.i = or i1 %i.al, %.not7.i.i
  br i1 %or.cond.i, label %_ZN3gmx21OuterProductEvaluatorclENS_8ArrayRefIKfEES3_.exit, label %.lr.ph.i.preheader.i.preheader

.lr.ph.i.preheader.i.preheader:                   ; preds = %_ZN3gmx13MultiDimArrayISt6vectorIfSaIfEENS_7extentsIJLln1ELln1EEEENS_12layout_rightEE6resizeIJllEEEvDpT_.exit.i
  %i.am = ptrtoaddr ptr %i.ak to i64
  %i.an = sub i64 %i.am, %i.fj
  %i.ao = add i64 %i.fi, -4
  %i.ap = sub i64 %i.ao, %i.fj                    ; 3 uses
  %i.aq = lshr i64 %i.ap, 2
  %i.ar = add nuw nsw i64 %i.aq, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.ap, 28
  %invariant.op = add i64 %i.an, -1
  %min.iters.check123 = icmp ult i64 %i.ap, 124
  %i.as = and i64 %i.ar, 24
  %n.vec = and i64 %i.ar, 9223372036854775776     ; 4 uses
  %i.at = shl i64 %n.vec, 2                       ; 2 uses
  %i.au = getelementptr i8, ptr %i.ff, i64 %i.at
  %cmp.n = icmp eq i64 %i.ar, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.as, 0
  %n.vec129 = and i64 %i.ar, 9223372036854775800  ; 3 uses
  %i.av = shl i64 %n.vec129, 2                    ; 2 uses
  %i.aw = getelementptr i8, ptr %i.ff, i64 %i.av
  %cmp.n137 = icmp eq i64 %i.ar, %n.vec129
  br label %iter.check

iter.check:                                       ; preds = %.lr.ph.i.preheader.i.preheader, %"_ZSt9transformIN3gmx12ArrayRefIterIKfEEPfZNS0_21OuterProductEvaluatorclENS0_8ArrayRefIS2_EES7_E3$_0ET0_T_SA_S9_T1_.exit.loopexit.i"
  %.018.i = phi i64 [ %i.bx, %"_ZSt9transformIN3gmx12ArrayRefIterIKfEEPfZNS0_21OuterProductEvaluatorclENS0_8ArrayRefIS2_EES7_E3$_0ET0_T_SA_S9_T1_.exit.loopexit.i" ], [ 0, %.lr.ph.i.preheader.i.preheader ] ; 4 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %.018.i
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !23, !noalias !90 ; 3 uses
  %i.az = mul nsw i64 %.018.i, %i.fm
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.az ; 6 uses
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bb = mul i64 %i.fk, %.018.i
  %.reass181 = add i64 %i.bb, %invariant.op
  %diff.check = icmp ult i64 %.reass181, 127
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check123, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bc = getelementptr i8, ptr %i.ba, i64 %i.at
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.ay, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bd = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ba, i64 %i.bd ; 4 uses
  %next.gep124 = getelementptr i8, ptr %i.ff, i64 %i.bd ; 4 uses
  %i.be = getelementptr i8, ptr %next.gep124, i64 32
  %i.bf = getelementptr i8, ptr %next.gep124, i64 64
  %i.bg = getelementptr i8, ptr %next.gep124, i64 96
  %wide.load = load <8 x float>, ptr %next.gep124, align 4, !tbaa !23, !noalias !90
  %wide.load125 = load <8 x float>, ptr %i.be, align 4, !tbaa !23, !noalias !90
  %wide.load126 = load <8 x float>, ptr %i.bf, align 4, !tbaa !23, !noalias !90
  %wide.load127 = load <8 x float>, ptr %i.bg, align 4, !tbaa !23, !noalias !90
  %i.bh = fmul <8 x float> %broadcast.splat, %wide.load
  %i.bi = fmul <8 x float> %broadcast.splat, %wide.load125
  %i.bj = fmul <8 x float> %broadcast.splat, %wide.load126
  %i.bk = fmul <8 x float> %broadcast.splat, %wide.load127
  %i.bl = getelementptr i8, ptr %next.gep, i64 32
  %i.bm = getelementptr i8, ptr %next.gep, i64 64
  %i.bn = getelementptr i8, ptr %next.gep, i64 96
  store <8 x float> %i.bh, ptr %next.gep, align 4, !tbaa !23, !noalias !90
  store <8 x float> %i.bi, ptr %i.bl, align 4, !tbaa !23, !noalias !90
  store <8 x float> %i.bj, ptr %i.bm, align 4, !tbaa !23, !noalias !90
  store <8 x float> %i.bk, ptr %i.bn, align 4, !tbaa !23, !noalias !90
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bo = icmp eq i64 %index.next, %n.vec
  br i1 %i.bo, label %middle.block, label %vector.body, !llvm.loop !72

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %"_ZSt9transformIN3gmx12ArrayRefIterIKfEEPfZNS0_21OuterProductEvaluatorclENS0_8ArrayRefIS2_EES7_E3$_0ET0_T_SA_S9_T1_.exit.loopexit.i", label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !43

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.bp = getelementptr i8, ptr %i.ba, i64 %i.av
  %broadcast.splatinsert130 = insertelement <8 x float> poison, float %i.ay, i64 0
  %broadcast.splat131 = shufflevector <8 x float> %broadcast.splatinsert130, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index132 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next136, %vec.epilog.vector.body ] ; 2 uses
  %i.bq = shl i64 %index132, 2                    ; 2 uses
  %next.gep133 = getelementptr i8, ptr %i.ba, i64 %i.bq
  %next.gep134 = getelementptr i8, ptr %i.ff, i64 %i.bq
  %wide.load135 = load <8 x float>, ptr %next.gep134, align 4, !tbaa !23, !noalias !90
  %i.br = fmul <8 x float> %broadcast.splat131, %wide.load135
  store <8 x float> %i.br, ptr %next.gep133, align 4, !tbaa !23, !noalias !90
  %index.next136 = add nuw i64 %index132, 8       ; 2 uses
  %i.bs = icmp eq i64 %index.next136, %n.vec129
  br i1 %i.bs, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !73

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n137, label %"_ZSt9transformIN3gmx12ArrayRefIterIKfEEPfZNS0_21OuterProductEvaluatorclENS0_8ArrayRefIS2_EES7_E3$_0ET0_T_SA_S9_T1_.exit.loopexit.i", label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.09.i.i.ph = phi ptr [ %i.ba, %iter.check ], [ %i.ba, %vector.memcheck ], [ %i.bc, %vec.epilog.iter.check ], [ %i.bp, %vec.epilog.middle.block ]
  %.sroa.05.08.i.i.ph = phi ptr [ %i.ff, %iter.check ], [ %i.ff, %vector.memcheck ], [ %i.au, %vec.epilog.iter.check ], [ %i.aw, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.bw, %.lr.ph.i.i ], [ %.09.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.sroa.05.08.i.i = phi ptr [ %i.bv, %.lr.ph.i.i ], [ %.sroa.05.08.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.bt = load float, ptr %.sroa.05.08.i.i, align 4, !tbaa !23, !noalias !90
  %i.bu = fmul float %i.ay, %i.bt
  store float %i.bu, ptr %.09.i.i, align 4, !tbaa !23, !noalias !90
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i, i64 4 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 4
  %.not.i.i = icmp eq ptr %i.bv, %i.fh
  br i1 %.not.i.i, label %"_ZSt9transformIN3gmx12ArrayRefIterIKfEEPfZNS0_21OuterProductEvaluatorclENS0_8ArrayRefIS2_EES7_E3$_0ET0_T_SA_S9_T1_.exit.loopexit.i", label %.lr.ph.i.i, !llvm.loop !74

"_ZSt9transformIN3gmx12ArrayRefIterIKfEEPfZNS0_21OuterProductEvaluatorclENS0_8ArrayRefIS2_EES7_E3$_0ET0_T_SA_S9_T1_.exit.loopexit.i": ; preds = %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %i.bx = add nuw nsw i64 %.018.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bx, %i.fl
  br i1 %exitcond.not.i, label %_ZN3gmx21OuterProductEvaluatorclENS_8ArrayRefIKfEES3_.exit.loopexit, label %iter.check, !llvm.loop !0

_ZN3gmx21OuterProductEvaluatorclENS_8ArrayRefIKfEES3_.exit.loopexit: ; preds = %"_ZSt9transformIN3gmx12ArrayRefIterIKfEEPfZNS0_21OuterProductEvaluatorclENS0_8ArrayRefIS2_EES7_E3$_0ET0_T_SA_S9_T1_.exit.loopexit.i"
  %.sroa.360.8.copyload.pre = load i64, ptr %.sroa.3.0..sroa_idx.i.i, align 8
  br label %_ZN3gmx21OuterProductEvaluatorclENS_8ArrayRefIKfEES3_.exit

_ZN3gmx21OuterProductEvaluatorclENS_8ArrayRefIKfEES3_.exit: ; preds = %_ZN3gmx21OuterProductEvaluatorclENS_8ArrayRefIKfEES3_.exit.loopexit, %_ZN3gmx13MultiDimArrayISt6vectorIfSaIfEENS_7extentsIJLln1ELln1EEEENS_12layout_rightEE6resizeIJllEEEvDpT_.exit.i
  %.sroa.360.8.copyload = phi i64 [ %.sroa.360.8.copyload.pre, %_ZN3gmx21OuterProductEvaluatorclENS_8ArrayRefIKfEES3_.exit.loopexit ], [ %i.fm, %_ZN3gmx13MultiDimArrayISt6vectorIfSaIfEENS_7extentsIJLln1ELln1EEEENS_12layout_rightEE6resizeIJllEEEvDpT_.exit.i ]
  %i.by = load ptr, ptr %i.dw, align 8, !tbaa !30
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !20 ; 3 uses
  %i.cb = load i32, ptr %i.i, align 8, !tbaa !25
  %i.cc = sub i32 %i.cb, %i.d
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ce = load <2 x i32>, ptr %i.cd, align 4, !tbaa !25
  %i.cf = sub <2 x i32> %i.ce, %i.h               ; 2 uses
  %i.cg = load i32, ptr %i.ad, align 4, !tbaa !25 ; 2 uses
  %i.ch = load i32, ptr %i.af, align 4, !tbaa !25 ; 2 uses
  %i.ci = icmp slt i32 %i.cg, %i.ch
  br i1 %i.ci, label %.lr.ph83, label %_ZNK3gmx10IntegerBox5emptyEv.exit.thread

.lr.ph83:                                         ; preds = %_ZN3gmx21OuterProductEvaluatorclENS_8ArrayRefIKfEES3_.exit
  %.sroa.4.0.copyload = load i64, ptr %.sroa.470.0..sroa_idx, align 8, !tbaa !34 ; 6 uses
  %.sroa.5.0.copyload = load i64, ptr %.sroa.571.0..sroa_idx, align 8, !tbaa !34 ; 4 uses
  %.sroa.650.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !28 ; 3 uses
  %factor.op.mul = mul i64 %.sroa.4.0.copyload, %.sroa.5.0.copyload
  %i.cj = load i32, ptr %i.y, align 4, !tbaa !25  ; 2 uses
  %i.ck = load i32, ptr %i.aa, align 4, !tbaa !25 ; 2 uses
  %i.cl = icmp sge i32 %i.cj, %i.ck
  %i.cm = load i32, ptr %4, align 4               ; 2 uses
  %i.cn = load i32, ptr %i.v, align 4             ; 2 uses
  %i.co = icmp sge i32 %i.cm, %i.cn
  %brmerge = select i1 %i.cl, i1 true, i1 %i.co
  br i1 %brmerge, label %_ZNK3gmx10IntegerBox5emptyEv.exit.thread, label %.lr.ph80.preheader

.lr.ph80.preheader:                               ; preds = %.lr.ph83
  %i.cp = sext i32 %i.cm to i64                   ; 8 uses
  %i.cq = sext i32 %i.cc to i64                   ; 3 uses
  %i.cr = sext i32 %i.cj to i64                   ; 2 uses
  %i.cs = extractelement <2 x i32> %i.cf, i64 0
  %i.ct = sext i32 %i.cs to i64
  %i.cu = sext i32 %i.cg to i64                   ; 3 uses
  %i.cv = extractelement <2 x i32> %i.cf, i64 1
  %i.cw = sext i32 %i.cv to i64
  %wide.trip.count97 = sext i32 %i.ch to i64
  %wide.trip.count92 = sext i32 %i.ck to i64      ; 2 uses
  %invariant.gep121 = getelementptr [4 x i8], ptr %i.ak, i64 %i.ct
  %wide.trip.count = sext i32 %i.cn to i64        ; 6 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.ca, i64 %i.cq ; 11 uses
  %i.cx = mul i64 %.sroa.5.0.copyload, %i.cu
  %i.cy = add i64 %i.cx, %i.cr
  %i.cz = shl i64 %i.cy, 2
  %i.da = mul i64 %.sroa.4.0.copyload, %i.cz
  %i.db = shl nsw i64 %i.cp, 2
  %i.dc = mul i64 %.sroa.4.0.copyload, %.sroa.5.0.copyload
  %i.dd = shl i64 %i.dc, 2
  %i.de = mul i64 %.sroa.5.0.copyload, %i.cu
  %i.df = add i64 %i.de, %wide.trip.count92
  %i.dg = shl i64 %i.df, 2
  %i.dh = add i64 %i.dg, -4
  %i.di = mul i64 %.sroa.4.0.copyload, %i.dh
  %i.dj = shl nsw i64 %wide.trip.count, 2
  %i.dk = add nsw i64 %i.cp, %i.cq
  %i.dl = shl nsw i64 %i.dk, 2
  %scevgep142 = getelementptr i8, ptr %i.ca, i64 %i.dl
  %i.dm = add nsw i64 %wide.trip.count, %i.cq
  %i.dn = shl nsw i64 %i.dm, 2
  %scevgep143 = getelementptr i8, ptr %i.ca, i64 %i.dn
  %i.do = sub nsw i64 %wide.trip.count, %i.cp     ; 7 uses
  %i.dp = getelementptr i8, ptr %.sroa.650.0.copyload, i64 %i.da
  %i.dq = getelementptr i8, ptr %i.dp, i64 %i.db
  %i.dr = getelementptr i8, ptr %.sroa.650.0.copyload, i64 %i.di
  %i.ds = getelementptr i8, ptr %i.dr, i64 %i.dj
  %min.iters.check144 = icmp ult i64 %i.do, 8
  %.mask = and i64 %.sroa.4.0.copyload, 2305843009213693952
  %stride.check = icmp ne i64 %.mask, 0
  %min.iters.check146 = icmp ult i64 %i.do, 32
  %i.dt = and i64 %i.do, 24
  %n.vec148 = and i64 %i.do, -32                  ; 4 uses
  %i.du = add nsw i64 %n.vec148, %i.cp
  %cmp.n163 = icmp eq i64 %i.do, %n.vec148
  %min.epilog.iters.check168 = icmp eq i64 %i.dt, 0
  %n.vec170 = and i64 %i.do, -8                   ; 3 uses
  %i.dv = add nsw i64 %n.vec170, %i.cp
  %cmp.n179 = icmp eq i64 %i.do, %n.vec170
  br label %.lr.ph80

bb.f:                                             ; preds = %_ZNK3gmx10IntegerBox5emptyEv.exit
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dy = load float, ptr %i.dx, align 8, !tbaa !91
  %i.dz = fpext float %i.dy to double
  %i.ea = load ptr, ptr %1, align 8, !tbaa !86, !nonnull !87, !align !88
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !23
  %i.ec = sitofp i32 %i.d to float
  %i.ed = fsub float %i.eb, %i.ec
  %i.ee = load ptr, ptr %i.dw, align 8, !tbaa !30
  call void @_ZN3gmx19GaussianOn1DLattice4Impl6spreadEdf(ptr noundef nonnull align 8 dereferenceable(64) %i.ee, double noundef %i.dz, float noundef %i.ed)
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.eg = load ptr, ptr %1, align 8, !tbaa !86, !nonnull !87, !align !88
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 4
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !23
  %i.ej = load ptr, ptr %i.ef, align 8, !tbaa !30
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.el = sitofp <2 x i32> %i.h to <2 x float>    ; 2 uses
  %i.em = extractelement <2 x float> %i.el, i64 0
  %i.en = fsub float %i.ei, %i.em
  call void @_ZN3gmx19GaussianOn1DLattice4Impl6spreadEdf(ptr noundef nonnull align 8 dereferenceable(64) %i.ej, double noundef 1.000000e+00, float noundef %i.en)
  %i.eo = load ptr, ptr %1, align 8, !tbaa !86, !nonnull !87, !align !88
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !23
  %i.er = extractelement <2 x float> %i.el, i64 1
  %i.es = fsub float %i.eq, %i.er
  %i.et = load ptr, ptr %i.ek, align 8, !tbaa !30
  call void @_ZN3gmx19GaussianOn1DLattice4Impl6spreadEdf(ptr noundef nonnull align 8 dereferenceable(64) %i.et, double noundef 1.000000e+00, float noundef %i.es)
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !30 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !20 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 24
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !24
  %5 = ptrtoint ptr %i.fa to i64
  %i.fb = ptrtoint ptr %i.ey to i64
  %6 = sub i64 %5, %i.fb
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !30 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !20 ; 8 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 24
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !24 ; 3 uses
  %i.fi = ptrtoint ptr %i.fh to i64               ; 2 uses
  %i.fj = ptrtoint ptr %i.ff to i64               ; 3 uses
  %i.fk = sub i64 %i.fi, %i.fj                    ; 2 uses
  %i.fl = ashr exact i64 %6, 2                    ; 4 uses
  %i.fm = ashr exact i64 %i.fk, 2                 ; 4 uses
  %i.fn = mul nsw i64 %i.fm, %i.fl                ; 4 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !24, !noalias !90 ; 2 uses
  %i.fq = load ptr, ptr %i.eu, align 8, !tbaa !20, !noalias !90 ; 5 uses
  %i.fr = ptrtoint ptr %i.fp to i64
  %i.fs = ptrtoint ptr %i.fq to i64
  %i.ft = sub i64 %i.fr, %i.fs
  %i.fu = ashr exact i64 %i.ft, 2                 ; 3 uses
  %i.fv = icmp ugt i64 %i.fn, %i.fu
  br i1 %i.fv, label %bb.c, label %bb.d

.lr.ph80:                                         ; preds = %.lr.ph80.preheader, %._crit_edge81
  %indvar = phi i64 [ 0, %.lr.ph80.preheader ], [ %indvar.next, %._crit_edge81 ] ; 2 uses
  %indvars.iv94 = phi i64 [ %i.cu, %.lr.ph80.preheader ], [ %indvars.iv.next95, %._crit_edge81 ] ; 3 uses
  %i.fw = mul i64 %i.dd, %indvar                  ; 2 uses
  %scevgep = getelementptr i8, ptr %i.dq, i64 %i.fw
  %scevgep141 = getelementptr i8, ptr %i.ds, i64 %i.fw
  %.reass = mul i64 %factor.op.mul, %indvars.iv94
  %i.fx = getelementptr inbounds [4 x i8], ptr %.sroa.650.0.copyload, i64 %.reass
  %i.fy = add nsw i64 %indvars.iv94, %i.cw
  %i.fz = mul nsw i64 %.sroa.360.8.copyload, %i.fy
  %gep122 = getelementptr [4 x i8], ptr %invariant.gep121, i64 %i.fz
  %bound0 = icmp ult ptr %scevgep, %scevgep143
  %bound1 = icmp ult ptr %scevgep142, %scevgep141
  %found.conflict = and i1 %bound0, %bound1
  %i.ga = or i1 %found.conflict, %stride.check
  br label %iter.check165

._crit_edge81:                                    ; preds = %._crit_edge
  %indvars.iv.next95 = add nsw i64 %indvars.iv94, 1 ; 2 uses
  %exitcond98.not = icmp eq i64 %indvars.iv.next95, %wide.trip.count97
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond98.not, label %_ZNK3gmx10IntegerBox5emptyEv.exit.thread, label %.lr.ph80, !llvm.loop !75

iter.check165:                                    ; preds = %.lr.ph80, %._crit_edge
  %indvars.iv89 = phi i64 [ %i.cr, %.lr.ph80 ], [ %indvars.iv.next90, %._crit_edge ] ; 3 uses
  %i.gb = mul nsw i64 %.sroa.4.0.copyload, %indvars.iv89
  %i.gc = getelementptr inbounds [4 x i8], ptr %i.fx, i64 %i.gb ; 11 uses
  %gep120 = getelementptr [4 x i8], ptr %gep122, i64 %indvars.iv89
  %i.gd = load float, ptr %gep120, align 4, !tbaa !23 ; 11 uses
  %brmerge182 = select i1 %min.iters.check144, i1 true, i1 %i.ga
  br i1 %brmerge182, label %vec.epilog.scalar.ph166.preheader, label %vector.main.loop.iter.check145

vector.main.loop.iter.check145:                   ; preds = %iter.check165
  br i1 %min.iters.check146, label %vec.epilog.ph169, label %vector.ph147

vector.ph147:                                     ; preds = %vector.main.loop.iter.check145
  %broadcast.splatinsert149 = insertelement <8 x float> poison, float %i.gd, i64 0
  %broadcast.splat150 = shufflevector <8 x float> %broadcast.splatinsert149, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body151

vector.body151:                                   ; preds = %vector.body151, %vector.ph147
  %index152 = phi i64 [ 0, %vector.ph147 ], [ %index.next161, %vector.body151 ] ; 2 uses
  %i.ge = add i64 %index152, %i.cp                ; 2 uses
  %i.gf = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ge ; 4 uses
  %i.gg = getelementptr i8, ptr %i.gf, i64 32
  %i.gh = getelementptr i8, ptr %i.gf, i64 64
  %i.gi = getelementptr i8, ptr %i.gf, i64 96
  %wide.load153 = load <8 x float>, ptr %i.gf, align 4, !tbaa !23, !alias.scope !92
  %wide.load154 = load <8 x float>, ptr %i.gg, align 4, !tbaa !23, !alias.scope !92
  %wide.load155 = load <8 x float>, ptr %i.gh, align 4, !tbaa !23, !alias.scope !92
  %wide.load156 = load <8 x float>, ptr %i.gi, align 4, !tbaa !23, !alias.scope !92
  %i.gj = getelementptr inbounds [4 x i8], ptr %i.gc, i64 %i.ge ; 5 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 32 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gj, i64 64 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gj, i64 96 ; 2 uses
  %wide.load157 = load <8 x float>, ptr %i.gj, align 4, !tbaa !23, !alias.scope !93, !noalias !92
  %wide.load158 = load <8 x float>, ptr %i.gk, align 4, !tbaa !23, !alias.scope !93, !noalias !92
  %wide.load159 = load <8 x float>, ptr %i.gl, align 4, !tbaa !23, !alias.scope !93, !noalias !92
  %wide.load160 = load <8 x float>, ptr %i.gm, align 4, !tbaa !23, !alias.scope !93, !noalias !92
  %i.gn = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat150, <8 x float> %wide.load153, <8 x float> %wide.load157)
  %i.go = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat150, <8 x float> %wide.load154, <8 x float> %wide.load158)
  %i.gp = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat150, <8 x float> %wide.load155, <8 x float> %wide.load159)
  %i.gq = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat150, <8 x float> %wide.load156, <8 x float> %wide.load160)
  store <8 x float> %i.gn, ptr %i.gj, align 4, !tbaa !23, !alias.scope !93, !noalias !92
  store <8 x float> %i.go, ptr %i.gk, align 4, !tbaa !23, !alias.scope !93, !noalias !92
  store <8 x float> %i.gp, ptr %i.gl, align 4, !tbaa !23, !alias.scope !93, !noalias !92
  store <8 x float> %i.gq, ptr %i.gm, align 4, !tbaa !23, !alias.scope !93, !noalias !92
  %index.next161 = add nuw i64 %index152, 32      ; 2 uses
  %i.gr = icmp eq i64 %index.next161, %n.vec148
  br i1 %i.gr, label %middle.block162, label %vector.body151, !llvm.loop !79

middle.block162:                                  ; preds = %vector.body151
  br i1 %cmp.n163, label %._crit_edge, label %vec.epilog.iter.check167

vec.epilog.iter.check167:                         ; preds = %middle.block162
  br i1 %min.epilog.iters.check168, label %vec.epilog.scalar.ph166.preheader, label %vec.epilog.ph169, !prof !43

vec.epilog.ph169:                                 ; preds = %vector.main.loop.iter.check145, %vec.epilog.iter.check167
  %vec.epilog.resume.val164 = phi i64 [ %n.vec148, %vec.epilog.iter.check167 ], [ 0, %vector.main.loop.iter.check145 ]
  %broadcast.splatinsert171 = insertelement <8 x float> poison, float %i.gd, i64 0
  %broadcast.splat172 = shufflevector <8 x float> %broadcast.splatinsert171, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body173

vec.epilog.vector.body173:                        ; preds = %vec.epilog.vector.body173, %vec.epilog.ph169
  %index174 = phi i64 [ %vec.epilog.resume.val164, %vec.epilog.ph169 ], [ %index.next177, %vec.epilog.vector.body173 ] ; 2 uses
  %i.gs = add i64 %index174, %i.cp                ; 2 uses
  %i.gt = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.gs
  %wide.load175 = load <8 x float>, ptr %i.gt, align 4, !tbaa !23, !alias.scope !92
  %i.gu = getelementptr inbounds [4 x i8], ptr %i.gc, i64 %i.gs ; 2 uses
  %wide.load176 = load <8 x float>, ptr %i.gu, align 4, !tbaa !23, !alias.scope !93, !noalias !92
  %i.gv = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat172, <8 x float> %wide.load175, <8 x float> %wide.load176)
  store <8 x float> %i.gv, ptr %i.gu, align 4, !tbaa !23, !alias.scope !93, !noalias !92
  %index.next177 = add nuw i64 %index174, 8       ; 2 uses
  %i.gw = icmp eq i64 %index.next177, %n.vec170
  br i1 %i.gw, label %vec.epilog.middle.block178, label %vec.epilog.vector.body173, !llvm.loop !80

vec.epilog.middle.block178:                       ; preds = %vec.epilog.vector.body173
  br i1 %cmp.n179, label %._crit_edge, label %vec.epilog.scalar.ph166.preheader

vec.epilog.scalar.ph166.preheader:                ; preds = %iter.check165, %vec.epilog.iter.check167, %vec.epilog.middle.block178
  %indvars.iv.ph = phi i64 [ %i.cp, %iter.check165 ], [ %i.dv, %vec.epilog.middle.block178 ], [ %i.du, %vec.epilog.iter.check167 ] ; 4 uses
  %i.gx = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %xtraiter = and i64 %i.gx, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph166.prol.loopexit, label %vec.epilog.scalar.ph166.prol

vec.epilog.scalar.ph166.prol:                     ; preds = %vec.epilog.scalar.ph166.preheader, %vec.epilog.scalar.ph166.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph166.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph166.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph166.prol ], [ 0, %vec.epilog.scalar.ph166.preheader ]
  %gep.prol = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.prol
  %i.gy = load float, ptr %gep.prol, align 4, !tbaa !23
  %i.gz = getelementptr inbounds [4 x i8], ptr %i.gc, i64 %indvars.iv.prol ; 2 uses
  %i.ha = load float, ptr %i.gz, align 4, !tbaa !23
  %i.hb = call float @llvm.fmuladd.f32(float %i.gd, float %i.gy, float %i.ha)
  store float %i.hb, ptr %i.gz, align 4, !tbaa !23
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph166.prol.loopexit, label %vec.epilog.scalar.ph166.prol, !llvm.loop !81

vec.epilog.scalar.ph166.prol.loopexit:            ; preds = %vec.epilog.scalar.ph166.prol, %vec.epilog.scalar.ph166.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph166.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph166.prol ]
  %i.hc = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.hd = icmp ugt i64 %i.hc, -8
  br i1 %i.hd, label %._crit_edge, label %vec.epilog.scalar.ph166

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph166.prol.loopexit, %vec.epilog.scalar.ph166, %vec.epilog.middle.block178, %middle.block162
  %indvars.iv.next90 = add nsw i64 %indvars.iv89, 1 ; 2 uses
  %exitcond93.not = icmp eq i64 %indvars.iv.next90, %wide.trip.count92
  br i1 %exitcond93.not, label %._crit_edge81, label %iter.check165, !llvm.loop !82

vec.epilog.scalar.ph166:                          ; preds = %vec.epilog.scalar.ph166.prol.loopexit, %vec.epilog.scalar.ph166
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %vec.epilog.scalar.ph166 ], [ %indvars.iv.unr, %vec.epilog.scalar.ph166.prol.loopexit ] ; 10 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.he = load float, ptr %gep, align 4, !tbaa !23
  %i.hf = getelementptr inbounds [4 x i8], ptr %i.gc, i64 %indvars.iv ; 2 uses
  %i.hg = load float, ptr %i.hf, align 4, !tbaa !23
  %i.hh = call float @llvm.fmuladd.f32(float %i.gd, float %i.he, float %i.hg)
  store float %i.hh, ptr %i.hf, align 4, !tbaa !23
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.hi = load float, ptr %gep.1, align 4, !tbaa !23
  %i.hj = getelementptr inbounds [4 x i8], ptr %i.gc, i64 %indvars.iv.next ; 2 uses
  %i.hk = load float, ptr %i.hj, align 4, !tbaa !23
  %i.hl = call float @llvm.fmuladd.f32(float %i.gd, float %i.hi, float %i.hk)
  store float %i.hl, ptr %i.hj, align 4, !tbaa !23
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %gep.2 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next.1
  %i.hm = load float, ptr %gep.2, align 4, !tbaa !23
  %i.hn = getelementptr inbounds [4 x i8], ptr %i.gc, i64 %indvars.iv.next.1 ; 2 uses
  %i.ho = load float, ptr %i.hn, align 4, !tbaa !23
  %i.hp = call float @llvm.fmuladd.f32(float %i.gd, float %i.hm, float %i.ho)
  store float %i.hp, ptr %i.hn, align 4, !tbaa !23
  %indvars.iv.next.2 = add nsw i64 %indvars.iv, 3 ; 2 uses
  %gep.3 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next.2
  %i.hq = load float, ptr %gep.3, align 4, !tbaa !23
  %i.hr = getelementptr inbounds [4 x i8], ptr %i.gc, i64 %indvars.iv.next.2 ; 2 uses
  %i.hs = load float, ptr %i.hr, align 4, !tbaa !23
  %i.ht = call float @llvm.fmuladd.f32(float %i.gd, float %i.hq, float %i.hs)
  store float %i.ht, ptr %i.hr, align 4, !tbaa !23
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, 4 ; 2 uses
  %gep.4 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next.3
  %i.hu = load float, ptr %gep.4, align 4, !tbaa !23
  %i.hv = getelementptr inbounds [4 x i8], ptr %i.gc, i64 %indvars.iv.next.3 ; 2 uses
  %i.hw = load float, ptr %i.hv, align 4, !tbaa !23
  %i.hx = call float @llvm.fmuladd.f32(float %i.gd, float %i.hu, float %i.hw)
  store float %i.hx, ptr %i.hv, align 4, !tbaa !23
  %indvars.iv.next.4 = add nsw i64 %indvars.iv, 5 ; 2 uses
  %gep.5 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next.4
  %i.hy = load float, ptr %gep.5, align 4, !tbaa !23
  %i.hz = getelementptr inbounds [4 x i8], ptr %i.gc, i64 %indvars.iv.next.4 ; 2 uses
  %i.ia = load float, ptr %i.hz, align 4, !tbaa !23
  %i.ib = call float @llvm.fmuladd.f32(float %i.gd, float %i.hy, float %i.ia)
  store float %i.ib, ptr %i.hz, align 4, !tbaa !23
  %indvars.iv.next.5 = add nsw i64 %indvars.iv, 6 ; 2 uses
  %gep.6 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next.5
  %i.ic = load float, ptr %gep.6, align 4, !tbaa !23
  %i.id = getelementptr inbounds [4 x i8], ptr %i.gc, i64 %indvars.iv.next.5 ; 2 uses
  %i.ie = load float, ptr %i.id, align 4, !tbaa !23
  %i.if = call float @llvm.fmuladd.f32(float %i.gd, float %i.ic, float %i.ie)
  store float %i.if, ptr %i.id, align 4, !tbaa !23
  %indvars.iv.next.6 = add nsw i64 %indvars.iv, 7 ; 2 uses
  %gep.7 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next.6
  %i.ig = load float, ptr %gep.7, align 4, !tbaa !23
  %i.ih = getelementptr inbounds [4 x i8], ptr %i.gc, i64 %indvars.iv.next.6 ; 2 uses
  %i.ii = load float, ptr %i.ih, align 4, !tbaa !23
  %i.ij = call float @llvm.fmuladd.f32(float %i.gd, float %i.ig, float %i.ii)
  store float %i.ij, ptr %i.ih, align 4, !tbaa !23
  %indvars.iv.next.7 = add nsw i64 %indvars.iv, 8 ; 2 uses
end_hunk_0
