Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/bsdfs_test?download=true
inline.NumInlined: 3152
inline.NumDeleted: 1010
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN48BSDFEnergyConservation_LambertianReflection_Test8TestBodyEv:bb.a
bb.p:                                             ; preds = %bb.m
  %i.bj = landingpad { ptr, i32 }
          catch ptr null
  %i.bk = extractvalue { ptr, i32 } %i.bj, 0
  call void @__clang_call_terminate(ptr %i.bk) #34
  unreachable

_ZN7testing7MessageD2Ev.exit.i:                   ; preds = %bb.o, %bb.n, %.noexc.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #31
  %i.bl = load ptr, ptr %i.av, align 8, !tbaa !122
  %.not.i.i.i93.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i93.i, label %_ZN7testing15AssertionResultD2Ev.exit.i, label %bb.q

bb.q:                                             ; preds = %_ZN7testing7MessageD2Ev.exit.i
  %i.bm = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i94.i unwind label %bb.t

.noexc.i.i94.i:                                   ; preds = %bb.q
  br i1 %i.bm, label %bb.r, label %_ZN7testing15AssertionResultD2Ev.exit.i

bb.r:                                             ; preds = %.noexc.i.i94.i
  %i.bn = load ptr, ptr %i.av, align 8, !tbaa !122 ; 4 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %_ZN7testing15AssertionResultD2Ev.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bp = load ptr, ptr %i.bn, align 8, !tbaa !88 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 2 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.s
  %i.bs = load i64, ptr %i.bq, align 8, !tbaa !77
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bt) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef 32) #35
  br label %_ZN7testing15AssertionResultD2Ev.exit.i

bb.t:                                             ; preds = %bb.q
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  %i.bv = extractvalue { ptr, i32 } %i.bu, 0
  call void @__clang_call_terminate(ptr %i.bv) #34
  unreachable

_ZN7testing15AssertionResultD2Ev.exit.i:          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %bb.r, %.noexc.i.i94.i, %_ZN7testing7MessageD2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #31
  br label %.loopexit.i

bb.u:                                             ; preds = %bb.h
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.v:                                             ; preds = %bb.i
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97.i

bb.w:                                             ; preds = %bb.j
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.x:                                             ; preds = %bb.k
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #31
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.pn.i = phi { ptr, i32 } [ %i.bz, %bb.x ], [ %i.by, %bb.w ] ; 2 uses
  %i.ca = load ptr, ptr %21, align 8, !tbaa !88   ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.cc = icmp eq ptr %i.ca, %i.cb
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95.i: ; preds = %bb.y
  %i.cd = load i64, ptr %i.cb, align 8, !tbaa !77
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.ce) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97.i: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95.i, %bb.v
  %.pn.pn.i = phi { ptr, i32 } [ %i.bx, %bb.v ], [ %.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95.i ], [ %.pn.i, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #31
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #31
  br label %bb.z

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97.i, %bb.u
  %.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97.i ], [ %i.bw, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #31
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %18) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #31
  br label %bb.cd

_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit.i: ; preds = %.noexc91.i
  %i.cf = getelementptr inbounds nuw i8, ptr %10, i64 208
  %i.cg = getelementptr inbounds nuw i8, ptr %10, i64 192
  %i.ch = getelementptr inbounds nuw i8, ptr %10, i64 80
  %i.ci = getelementptr inbounds nuw i8, ptr %10, i64 72
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !110, !noalias !305
  %i.ck = load float, ptr %9, align 4, !tbaa !127, !noalias !305
  %i.cl = getelementptr inbounds nuw i8, ptr %17, i64 256 ; 2 uses
  store i8 1, ptr %i.cl, align 8, !tbaa !129, !alias.scope !305
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %17, ptr noundef nonnull align 8 dereferenceable(72) %10, i64 72, i1 false)
  %i.cm = getelementptr inbounds nuw i8, ptr %17, i64 72
  store i64 %i.cj, ptr %i.cm, align 8, !tbaa !110, !alias.scope !305
  %i.cn = getelementptr inbounds nuw i8, ptr %17, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.cn, ptr noundef nonnull align 8 dereferenceable(112) %i.ch, i64 112, i1 false)
  %i.co = getelementptr inbounds nuw i8, ptr %17, i64 192
  %i.cp = load <2 x i64>, ptr %i.cg, align 8, !tbaa !79, !noalias !305
  store <2 x i64> %i.cp, ptr %i.co, align 8, !tbaa !79, !alias.scope !305
  %i.cq = getelementptr inbounds nuw i8, ptr %17, i64 208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cq, ptr noundef nonnull align 8 dereferenceable(40) %i.cf, i64 40, i1 false)
  %i.cr = getelementptr inbounds nuw i8, ptr %17, i64 248
  store float %i.ck, ptr %i.cr, align 8, !tbaa !147, !alias.scope !305
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31, !noalias !305
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31, !noalias !305
  %i.cs = call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #31
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store ptr %i.cs, ptr %8, align 8
  %i.ct = load ptr, ptr %i.f, align 8, !tbaa !17
  %.not.i.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i.i.i, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit.i
  invoke void @_ZSt25__throw_bad_function_callv() #32
          to label %.noexc105.i unwind label %bb.ac

.noexc105.i:                                      ; preds = %bb.aa
  unreachable

bb.ab:                                            ; preds = %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit.i
  %i.cu = load ptr, ptr %i.g, align 8, !tbaa !149
  %i.cv = invoke noundef ptr %i.cu(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull align 8 dereferenceable(248) %17, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %_ZNKSt8functionIFPN4pbrt4BSDFERKNS0_18SurfaceInteractionEN4pstd3pmr21polymorphic_allocatorISt4byteEEEEclES5_SA_.exit.i unwind label %bb.ac, !inline_history !1 ; 8 uses

_ZNKSt8functionIFPN4pbrt4BSDFERKNS0_18SurfaceInteractionEN4pstd3pmr21polymorphic_allocatorISt4byteEEEEclES5_SA_.exit.i: ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8 ; 3 uses
  %.sroa.238.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cv, i64 16 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 20 ; 3 uses
  %.sroa.228.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cv, i64 28 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 32 ; 3 uses
  %.sroa.212.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cv, i64 40 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cz = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.db = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.dc = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.dd = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.de = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.df = getelementptr inbounds nuw i8, ptr %7, i64 28
  %i.dg = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.dh = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.di = getelementptr inbounds nuw i8, ptr %17, i64 40
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %17, i64 48
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 3 uses
  br label %bb.ad

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.ad:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit159.i, %_ZNKSt8functionIFPN4pbrt4BSDFERKNS0_18SurfaceInteractionEN4pstd3pmr21polymorphic_allocatorISt4byteEEEEclES5_SA_.exit.i
  %.06376.i = phi i32 [ 0, %_ZNKSt8functionIFPN4pbrt4BSDFERKNS0_18SurfaceInteractionEN4pstd3pmr21polymorphic_allocatorISt4byteEEEEclES5_SA_.exit.i ], [ %i.md, %_ZN7testing15AssertionResultD2Ev.exit159.i ]
  %.sroa.033.075.i = phi i64 [ -8846114313915602277, %_ZNKSt8functionIFPN4pbrt4BSDFERKNS0_18SurfaceInteractionEN4pstd3pmr21polymorphic_allocatorISt4byteEEEEclES5_SA_.exit.i ], [ %.sroa.033.1.i, %_ZN7testing15AssertionResultD2Ev.exit159.i ] ; 2 uses
  %i.dp = mul i64 %.sroa.033.075.i, 6364136223846793005
  %i.dq = add i64 %i.dp, -2720673578348880933     ; 2 uses
  %i.dr = insertelement <2 x i64> poison, i64 %i.dq, i64 0
  %i.ds = insertelement <2 x i64> %i.dr, i64 %.sroa.033.075.i, i64 1 ; 3 uses
  %i.dt = lshr <2 x i64> %i.ds, splat (i64 45)
  %i.du = lshr <2 x i64> %i.ds, splat (i64 27)
  %i.dv = xor <2 x i64> %i.dt, %i.du
  %i.dw = trunc <2 x i64> %i.dv to <2 x i32>      ; 2 uses
  %i.dx = lshr <2 x i64> %i.ds, splat (i64 59)
  %i.dy = trunc nuw nsw <2 x i64> %i.dx to <2 x i32>
  %i.dz = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.dw, <2 x i32> %i.dw, <2 x i32> %i.dy)
  %i.ea = uitofp <2 x i32> %i.dz to <2 x float>
  %i.eb = fmul nnan <2 x float> %i.ea, splat (float f0x2F800000) ; 3 uses
  %i.ec = fcmp olt <2 x float> %i.eb, splat (float f0x3F7FFFFF) ; 2 uses
  %i.ed = extractelement <2 x i1> %i.ec, i64 1
  %i.ee = extractelement <2 x float> %i.eb, i64 1
  %.sroa.speculated.i.i = select i1 %i.ed, float %i.ee, float f0x3F7FFFFF ; 4 uses
  %i.ef = extractelement <2 x i1> %i.ec, i64 0
  %i.eg = extractelement <2 x float> %i.eb, i64 0
  %i.eh = fmul nnan float %.sroa.speculated.i.i, %.sroa.speculated.i.i
  %i.ei = fsub float 1.000000e+00, %i.eh          ; 2 uses
  %i.ej = fcmp ogt float %i.ei, 0.000000e+00
  %.sroa.speculated.i.i.i = select i1 %i.ej, float %i.ei, float 0.000000e+00
  %sqrt.i.i.i = call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i.i.i) ; 2 uses
  %i.ek = fmul nnan float %i.eg, f0x40C90FDB
  %i.el = select i1 %i.ef, float %i.ek, float f0x40C90FDA ; 2 uses
  %i.em = call noundef float @cosf(float noundef %i.el) #31
  %i.en = call noundef float @sinf(float noundef %i.el) #31
  %.sroa.037.0.copyload.i.i.i = load <2 x float>, ptr %i.cw, align 4
  %.sroa.238.0.copyload.i.i.i = load float, ptr %.sroa.238.0..sroa_idx.i.i.i, align 4, !tbaa !28
  %.sroa.027.0.copyload.i.i.i = load <2 x float>, ptr %i.cx, align 4
  %.sroa.228.0.copyload.i.i.i = load float, ptr %.sroa.228.0..sroa_idx.i.i.i, align 4, !tbaa !28
  %.sroa.011.0.copyload.i.i.i = load <2 x float>, ptr %i.cy, align 4
  %.sroa.212.0.copyload.i.i.i = load float, ptr %.sroa.212.0..sroa_idx.i.i.i, align 4, !tbaa !28
  %27 = fmul float %i.en, %sqrt.i.i.i             ; 2 uses
  %28 = fmul float %i.em, %sqrt.i.i.i             ; 2 uses
  %i.eo = insertelement <2 x float> poison, float %28, i64 0
  %i.ep = shufflevector <2 x float> %i.eo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eq = fmul <2 x float> %.sroa.037.0.copyload.i.i.i, %i.ep
  %29 = fmul float %.sroa.238.0.copyload.i.i.i, %28
  %30 = insertelement <2 x float> poison, float %27, i64 0
  %i.er = shufflevector <2 x float> %30, <2 x float> poison, <2 x i32> zeroinitializer
  %i.es = fmul <2 x float> %.sroa.027.0.copyload.i.i.i, %i.er
  %i.et = fmul float %.sroa.228.0.copyload.i.i.i, %27
  %i.eu = fadd <2 x float> %i.eq, %i.es
  %i.ev = fadd float %29, %i.et
  %i.ew = insertelement <2 x float> poison, float %.sroa.speculated.i.i, i64 0
  %i.ex = shufflevector <2 x float> %i.ew, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ey = fmul <2 x float> %i.ex, %.sroa.011.0.copyload.i.i.i
  %i.ez = fmul float %.sroa.speculated.i.i, %.sroa.212.0.copyload.i.i.i
  %i.fa = fadd <2 x float> %i.ey, %i.eu           ; 5 uses
  %i.fb = fadd float %i.ez, %i.ev                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #31
  %.sroa.033.1.in71.i = mul i64 %i.dq, 6364136223846793005
  %.sroa.033.172.i = add i64 %.sroa.033.1.in71.i, -2720673578348880933
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %22, i8 0, i64 16, i1 false)
  %i.fc = insertelement <2 x float> poison, float %i.fb, i64 0
  %i.fd = shufflevector <2 x float> %i.fa, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.fe = shufflevector <2 x float> %i.fc, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.ae

bb.ae:                                            ; preds = %_ZNK4pbrt4BSDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread.i, %bb.ad
  %.sroa.033.174.i = phi i64 [ %.sroa.033.172.i, %bb.ad ], [ %.sroa.033.1.i, %_ZNK4pbrt4BSDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread.i ] ; 4 uses
  %.06473.i = phi i32 [ 0, %bb.ad ], [ %i.jc, %_ZNK4pbrt4BSDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread.i ]
  %i.ff = mul i64 %.sroa.033.174.i, 6364136223846793005
  %i.fg = lshr i64 %.sroa.033.174.i, 45
  %i.fh = lshr i64 %.sroa.033.174.i, 27
  %i.fi = xor i64 %i.fg, %i.fh
  %i.fj = trunc i64 %i.fi to i32                  ; 2 uses
  %i.fk = lshr i64 %.sroa.033.174.i, 59
  %i.fl = trunc nuw nsw i64 %i.fk to i32
  %i.fm = call noundef i32 @llvm.fshr.i32(i32 %i.fj, i32 %i.fj, i32 %i.fl)
  %i.fn = uitofp i32 %i.fm to float
  %i.fo = fmul nnan float %i.fn, f0x2F800000      ; 2 uses
  %i.fp = fcmp olt float %i.fo, f0x3F7FFFFF
  %.sroa.speculated.i109.i = select i1 %i.fp, float %i.fo, float f0x3F7FFFFF
  %i.fq = add i64 %i.ff, -2720673578348880933     ; 2 uses
  %i.fr = mul i64 %i.fq, 6364136223846793005
  %i.fs = add i64 %i.fr, -2720673578348880933     ; 2 uses
  %i.ft = insertelement <2 x i64> poison, i64 %i.fq, i64 0
  %i.fu = insertelement <2 x i64> %i.ft, i64 %i.fs, i64 1 ; 3 uses
  %i.fv = lshr <2 x i64> %i.fu, splat (i64 45)
  %i.fw = lshr <2 x i64> %i.fu, splat (i64 27)
  %i.fx = xor <2 x i64> %i.fv, %i.fw
  %i.fy = trunc <2 x i64> %i.fx to <2 x i32>      ; 2 uses
  %i.fz = lshr <2 x i64> %i.fu, splat (i64 59)
  %i.ga = trunc nuw nsw <2 x i64> %i.fz to <2 x i32>
  %i.gb = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.fy, <2 x i32> %i.fy, <2 x i32> %i.ga)
  %i.gc = uitofp <2 x i32> %i.gb to <2 x float>
  %i.gd = fmul nnan <2 x float> %i.gc, splat (float f0x2F800000) ; 2 uses
  %i.ge = fcmp olt <2 x float> %i.gd, splat (float f0x3F7FFFFF)
  %i.gf = select <2 x i1> %i.ge, <2 x float> %i.gd, <2 x float> splat (float f0x3F7FFFFF)
  %.sroa.021.0.copyload.i.i.i.i = load <2 x float>, ptr %i.cw, align 4, !noalias !306 ; 2 uses
  %.sroa.013.0.copyload.i.i.i.i = load <2 x float>, ptr %i.cx, align 4, !noalias !306 ; 2 uses
  %i.gg = call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 4 %.sroa.238.0..sroa_idx.i.i.i, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x float> poison), !noalias !306
  %i.gh = shufflevector <2 x float> %.sroa.013.0.copyload.i.i.i.i, <2 x float> %.sroa.021.0.copyload.i.i.i.i, <2 x i32> <i32 0, i32 3>
  %i.gi = fmul <2 x float> %i.fa, %i.gh
  %i.gj = shufflevector <2 x float> %.sroa.021.0.copyload.i.i.i.i, <2 x float> %.sroa.013.0.copyload.i.i.i.i, <2 x i32> <i32 3, i32 0>
  %i.gk = fmul <2 x float> %i.fd, %i.gj
  %i.gl = fadd <2 x float> %i.gi, %i.gk
  %i.gm = shufflevector <4 x float> %i.gg, <4 x float> poison, <2 x i32> <i32 3, i32 0>
  %i.gn = fmul <2 x float> %i.fe, %i.gm
  %i.go = fadd <2 x float> %i.gn, %i.gl
  %.sroa.05.0.copyload.i.i.i.i = load <2 x float>, ptr %i.cy, align 4, !noalias !306
  %.sroa.26.0.copyload.i.i.i.i = load float, ptr %.sroa.212.0..sroa_idx.i.i.i, align 4, !noalias !306
  %i.gp = fmul <2 x float> %i.fa, %.sroa.05.0.copyload.i.i.i.i ; 2 uses
  %shift = shufflevector <2 x float> %i.gp, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.gp, %shift
  %i.gq = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.gr = fmul float %i.fb, %.sroa.26.0.copyload.i.i.i.i
  %i.gs = fadd float %i.gr, %i.gq                 ; 2 uses
  %i.gt = shufflevector <2 x float> %i.go, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.gu = fcmp oeq float %i.gs, 0.000000e+00
  br i1 %i.gu, label %_ZNK4pbrt4BSDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31, !noalias !306
  %i.gv = load i64, ptr %i.cv, align 8, !tbaa !52, !noalias !306 ; 2 uses
  %i.gw = and i64 %i.gv, 144115188075855871
  %i.gx = inttoptr i64 %i.gw to ptr
  %i.gy = lshr i64 %i.gv, 57
  %i.gz = trunc nuw nsw i64 %i.gy to i32
  %i.ha = add nsw i32 %i.gz, -1
  %i.hb = invoke noundef i32 @_ZN4pbrt6detail8DispatchIRZNKS_4BxDF5FlagsEvEUlT_E_NS_9BxDFFlagsENS_23DiffuseTransmissionBxDFENS_11DiffuseBxDFENS_17CoatedDiffuseBxDFENS_19CoatedConductorBxDFENS_14DielectricBxDFENS_18ThinDielectricBxDFENS_8HairBxDFENS_12MeasuredBxDFEJNS_13ConductorBxDFENS_21NormalizedFresnelBxDFEEvEET0_OS3_PKvi(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %i.gx, i32 noundef %i.ha)
          to label %.noexc112.i unwind label %bb.ak

.noexc112.i:                                      ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31, !noalias !306
  %i.hc = and i32 %i.hb, 3
  %.not.i.i = icmp eq i32 %i.hc, 0
  br i1 %.not.i.i, label %_ZNK4pbrt4BSDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread.i, label %bb.ag

bb.ag:                                            ; preds = %.noexc112.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31, !noalias !306
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !306
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !306
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !306
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !306
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !306
  store <2 x float> %i.gt, ptr %3, align 8, !noalias !307
  store float %i.gs, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !noalias !307
  store <2 x float> %i.gf, ptr %4, align 8, !noalias !307
  store float %.sroa.speculated.i109.i, ptr %i.a, align 4, !tbaa !28, !noalias !307
  store i32 0, ptr %i.b, align 4, !tbaa !54, !noalias !307
  store i32 3, ptr %i.c, align 4, !tbaa !56, !noalias !307
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31, !noalias !307
  store ptr %3, ptr %5, align 8, !tbaa !58, !noalias !307
  store ptr %i.a, ptr %i.cz, align 8, !tbaa !34, !noalias !307
  store ptr %4, ptr %i.da, align 8, !tbaa !60, !noalias !307
  store ptr %i.b, ptr %i.db, align 8, !tbaa !24, !noalias !307
  store ptr %i.c, ptr %i.dc, align 8, !tbaa !24, !noalias !307
  %i.hd = load i64, ptr %i.cv, align 8, !tbaa !52, !noalias !308 ; 2 uses
  %i.he = and i64 %i.hd, 144115188075855871
  %i.hf = inttoptr i64 %i.he to ptr
  %i.hg = lshr i64 %i.hd, 57
  %i.hh = trunc nuw nsw i64 %i.hg to i32
  %i.hi = add nsw i32 %i.hh, -1
  invoke void @_ZN4pbrt6detail8DispatchIRZNKS_4BxDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsEEUlT_E_N4pstd8optionalINS_10BSDFSampleEEENS_23DiffuseTransmissionBxDFENS_11DiffuseBxDFENS_17CoatedDiffuseBxDFENS_19CoatedConductorBxDFENS_14DielectricBxDFENS_18ThinDielectricBxDFENS_8HairBxDFENS_12MeasuredBxDFEJNS_13ConductorBxDFENS_21NormalizedFresnelBxDFEEvEET0_OS9_PKvi(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional") align 4 %7, ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef %i.hf, i32 noundef %i.hi)
          to label %.noexc113.i unwind label %bb.ak

.noexc113.i:                                      ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31, !noalias !307
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !306
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !306
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !306
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !306
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !306
  %i.hj = load i8, ptr %i.dd, align 4, !tbaa !41, !range !42, !noalias !306, !noundef !43
  %i.hk = trunc nuw i8 %i.hj to i1
  br i1 %i.hk, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit.i.i, label %_ZNK4pbrt4BSDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.i

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit.i.i: ; preds = %.noexc113.i
  %i.hl = load <4 x float>, ptr %7, align 16, !noalias !306
  %.fr = freeze <4 x float> %i.hl
  %i.hm = fcmp une <4 x float> %.fr, zeroinitializer
  %i.hn = bitcast <4 x i1> %i.hm to i4
  %i.ho = icmp eq i4 %i.hn, 0
  %i.hp = load float, ptr %i.df, align 4, !noalias !306 ; 2 uses
  %i.hq = fcmp oeq float %i.hp, 0.000000e+00
  %or.cond.i.i = select i1 %i.ho, i1 true, i1 %i.hq
  br i1 %or.cond.i.i, label %_ZNK4pbrt4BSDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.i, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit36.i.i

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit36.i.i: ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit.i.i
  %i.hr = load float, ptr %i.dg, align 8, !tbaa !61, !noalias !306 ; 4 uses
  %i.hs = fcmp oeq float %i.hr, 0.000000e+00
  br i1 %i.hs, label %_ZNK4pbrt4BSDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.i, label %bb.ah

_ZNK4pbrt4BSDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.i: ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit36.i.i, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit.i.i, %.noexc113.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31, !noalias !306
  br label %_ZNK4pbrt4BSDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread.i

bb.ah:                                            ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit36.i.i
  %.sroa.03.0.copyload.i.i = load <2 x float>, ptr %i.dh, align 16, !noalias !306 ; 4 uses
  %.sroa.037.0.copyload.i.i172.i = load <2 x float>, ptr %i.cw, align 8 ; 2 uses
  %.sroa.238.0.copyload.i.i174.i = load float, ptr %.sroa.238.0..sroa_idx.i.i.i, align 8, !tbaa !28
  %.sroa.027.0.copyload.i.i178.i = load <2 x float>, ptr %i.cx, align 4 ; 2 uses
  %.sroa.228.0.copyload.i.i180.i = load float, ptr %.sroa.228.0..sroa_idx.i.i.i, align 4, !tbaa !28
  %.sroa.011.0.copyload.i.i183.i = load <2 x float>, ptr %i.cy, align 8 ; 2 uses
  %.sroa.212.0.copyload.i.i185.i = load float, ptr %.sroa.212.0..sroa_idx.i.i.i, align 8, !tbaa !28
  %.sroa.02.0.copyload.i = load <2 x float>, ptr %7, align 16
  %.sroa.7.0.copyload.i = load <2 x float>, ptr %i.de, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31, !noalias !306
  %i.ht = load i8, ptr %i.cl, align 8, !tbaa !129, !range !42, !noundef !43
  %i.hu = trunc nuw i8 %i.ht to i1
  br i1 %i.hu, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZN4pbrt8LogFatalIJRA4_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.78, i32 noundef 235, ptr noundef nonnull @.str.67, ptr noundef nonnull align 1 dereferenceable(4) @.str.79) #32
          to label %.noexc119.i unwind label %bb.al

.noexc119.i:                                      ; preds = %bb.ai
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %.sroa.041.0.vec.extract.i.i171.i = extractelement <2 x float> %.sroa.03.0.copyload.i.i, i64 0
  %i.hv = fmul float %.sroa.041.0.vec.extract.i.i171.i, %.sroa.238.0.copyload.i.i174.i
  %.sroa.041.4.vec.extract.i.i177.i = extractelement <2 x float> %.sroa.03.0.copyload.i.i, i64 1 ; 2 uses
  %i.hw = fmul float %.sroa.041.4.vec.extract.i.i177.i, %.sroa.228.0.copyload.i.i180.i
  %i.hx = fadd float %i.hv, %i.hw
  %i.hy = fmul float %i.hr, %.sroa.212.0.copyload.i.i185.i
  %i.hz = fadd float %i.hx, %i.hy                 ; 2 uses
  %i.ia = shufflevector <2 x float> %.sroa.037.0.copyload.i.i172.i, <2 x float> %.sroa.027.0.copyload.i.i178.i, <2 x i32> <i32 1, i32 3>
  %i.ib = fmul <2 x float> %.sroa.03.0.copyload.i.i, %i.ia ; 2 uses
  %shift33 = shufflevector <2 x float> %i.ib, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop34 = fadd <2 x float> %i.ib, %shift33
  %i.ic = extractelement <2 x float> %foldExtExtBinop34, i64 0
  %.sroa.0.4.vec.extract.i51.i.i187.i = extractelement <2 x float> %.sroa.011.0.copyload.i.i183.i, i64 1
  %i.id = fmul float %i.hr, %.sroa.0.4.vec.extract.i51.i.i187.i
  %i.ie = fadd float %i.ic, %i.id
  %foldExtExtBinop36 = fmul <2 x float> %.sroa.03.0.copyload.i.i, %.sroa.037.0.copyload.i.i172.i
  %i.if = extractelement <2 x float> %foldExtExtBinop36, i64 0
  %.sroa.0.0.vec.extract.i44.i.i181.i = extractelement <2 x float> %.sroa.027.0.copyload.i.i178.i, i64 0
  %i.ig = fmul float %.sroa.041.4.vec.extract.i.i177.i, %.sroa.0.0.vec.extract.i44.i.i181.i
  %i.ih = fadd float %i.if, %i.ig
  %.sroa.0.0.vec.extract.i50.i.i186.i = extractelement <2 x float> %.sroa.011.0.copyload.i.i183.i, i64 0
  %i.ii = fmul float %i.hr, %.sroa.0.0.vec.extract.i50.i.i186.i
  %i.ij = fadd float %i.ih, %i.ii
  %.sroa.03.0.copyload.i = load <2 x float>, ptr %i.di, align 8 ; 2 uses
  %.sroa.24.0.copyload.i = load float, ptr %.sroa.24.0..sroa_idx.i, align 8 ; 2 uses
  %.sroa.01.0.vec.extract.i.i.i = extractelement <2 x float> %.sroa.03.0.copyload.i, i64 0
  %.sroa.01.4.vec.extract.i.i.i = extractelement <2 x float> %.sroa.03.0.copyload.i, i64 1
  %i.ik = fmul float %i.hz, %.sroa.24.0.copyload.i ; 2 uses
  %i.il = call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i.i.i, float %i.ie, float %i.ik)
  %i.im = fneg float %i.ik
  %i.in = call noundef float @llvm.fma.f32(float %.sroa.24.0.copyload.i, float %i.hz, float %i.im)
  %i.io = fadd float %i.il, %i.in
end_hunk_0
begin_hunk_1_@"_ZNSt17_Function_handlerIFffEZ17AdaptiveSimpson2DRKSt8functionIFfffEEfffffiE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation":bb.a
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZ17AdaptiveSimpson2DRKSt8functionIFfffEEfffffiE3$_0", ptr %0, align 8, !tbaa !173
  br label %"_ZNSt14_Function_base13_Base_managerIZ17AdaptiveSimpson2DRKSt8functionIFfffEEfffffiE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !24
  store ptr %.val, ptr %0, align 8, !tbaa !24
  br label %"_ZNSt14_Function_base13_Base_managerIZ17AdaptiveSimpson2DRKSt8functionIFfffEEfffffiE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #33 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(40) %.val6, i64 40, i1 false), !tbaa.struct !421
  store ptr %i.a, ptr %0, align 8, !tbaa !24
  br label %"_ZNSt14_Function_base13_Base_managerIZ17AdaptiveSimpson2DRKSt8functionIFfffEEfffffiE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !24 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZ17AdaptiveSimpson2DRKSt8functionIFfffEEfffffiE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 40) #35
  br label %"_ZNSt14_Function_base13_Base_managerIZ17AdaptiveSimpson2DRKSt8functionIFfffEEfffffiE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZ17AdaptiveSimpson2DRKSt8functionIFfffEEfffffiE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef float @_ZNSt17_Function_handlerIFffESt5_BindIFSt8functionIFfffEESt12_PlaceholderILi1EEfEEE9_M_invokeERKSt9_Any_dataOf(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !177    ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load float, ptr %1, align 4, !tbaa !28
  %i.f = load float, ptr %i.d, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store float %i.e, ptr %i.a, align 4, !tbaa !28
  store float %i.f, ptr %i.b, align 4, !tbaa !28
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !17
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.b, label %_ZSt10__invoke_rIfRSt5_BindIFSt8functionIFfffEESt12_PlaceholderILi1EEfEEJfEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESA_E4typeEOSB_DpOSC_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt25__throw_bad_function_callv() #32
  unreachable

_ZSt10__invoke_rIfRSt5_BindIFSt8functionIFfffEESt12_PlaceholderILi1EEfEEJfEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESA_E4typeEOSB_DpOSC_.exit: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !175
  %i.k = call noundef float %i.j(ptr noundef nonnull align 8 dereferenceable(36) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b), !inline_history !422
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret float %i.k
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt17_Function_handlerIFffESt5_BindIFSt8functionIFfffEESt12_PlaceholderILi1EEfEEE10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #2 comdat align 2 {
bb.a:
  switch i32 %2, label %bb.d [
    i32 0, label %bb.b
    i32 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTISt5_BindIFSt8functionIFfffEESt12_PlaceholderILi1EEfEE, ptr %0, align 8, !tbaa !173
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !177
  store ptr %i.a, ptr %0, align 8, !tbaa !177
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZNSt14_Function_base13_Base_managerISt5_BindIFSt8functionIFfffEESt12_PlaceholderILi1EEfEEE10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt14_Function_base13_Base_managerISt5_BindIFSt8functionIFfffEESt12_PlaceholderILi1EEfEEE10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerISt5_BindIFSt8functionIFfffEESt12_PlaceholderILi1EEfEEE10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTISt5_BindIFSt8functionIFfffEESt12_PlaceholderILi1EEfEE, ptr %0, align 8, !tbaa !173
  br label %_ZNSt14_Function_base13_Base_managerISt5_BindIFSt8functionIFfffEESt12_PlaceholderILi1EEfEEE10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE.exit

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !177
  store ptr %i.a, ptr %0, align 8, !tbaa !177
  br label %_ZNSt14_Function_base13_Base_managerISt5_BindIFSt8functionIFfffEESt12_PlaceholderILi1EEfEEE10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !177    ; 3 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #33 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.c, i8 0, i64 32, i1 false)
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !17   ; 2 uses
  %.not.i.i.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.not.i.i.i.i, label %_ZNSt14_Function_base13_Base_managerISt5_BindIFSt8functionIFfffEESt12_PlaceholderILi1EEfEEE15_M_init_functorIRKS8_EEvRSt9_Any_dataOT_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = invoke noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(36) %i.c, ptr noundef nonnull align 8 dereferenceable(36) %i.b, i32 noundef 2)
          to label %bb.f unwind label %bb.g       ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.h = load <2 x ptr>, ptr %i.e, align 8, !tbaa !24
  store <2 x ptr> %i.h, ptr %i.d, align 8, !tbaa !24
  br label %_ZNSt14_Function_base13_Base_managerISt5_BindIFSt8functionIFfffEESt12_PlaceholderILi1EEfEEE15_M_init_functorIRKS8_EEvRSt9_Any_dataOT_.exit

bb.g:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !17   ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i, label %.body.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = invoke noundef zeroext i1 %i.j(ptr noundef nonnull align 8 dereferenceable(36) %i.c, ptr noundef nonnull align 8 dereferenceable(36) %i.c, i32 noundef 3)
          to label %.body.i.i unwind label %bb.i  ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #34
  unreachable

.body.i.i:                                        ; preds = %bb.h, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 40) #35
  resume { ptr, i32 } %i.i

_ZNSt14_Function_base13_Base_managerISt5_BindIFSt8functionIFfffEESt12_PlaceholderILi1EEfEEE15_M_init_functorIRKS8_EEvRSt9_Any_dataOT_.exit: ; preds = %bb.d, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.p = load i32, ptr %i.o, align 8
  store i32 %i.p, ptr %i.n, align 8
  store ptr %i.c, ptr %0, align 8, !tbaa !177
  br label %_ZNSt14_Function_base13_Base_managerISt5_BindIFSt8functionIFfffEESt12_PlaceholderILi1EEfEEE10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE.exit

bb.j:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %0, align 8, !tbaa !177    ; 5 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %_ZNSt14_Function_base13_Base_managerISt5_BindIFSt8functionIFfffEESt12_PlaceholderILi1EEfEEE10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !17   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i, label %_ZNSt5_BindIFSt8functionIFfffEESt12_PlaceholderILi1EEfEED2Ev.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = invoke noundef zeroext i1 %i.t(ptr noundef nonnull align 8 dereferenceable(36) %i.q, ptr noundef nonnull align 8 dereferenceable(36) %i.q, i32 noundef 3)
          to label %_ZNSt5_BindIFSt8functionIFfffEESt12_PlaceholderILi1EEfEED2Ev.exit.i unwind label %bb.m ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #34
  unreachable

_ZNSt5_BindIFSt8functionIFfffEESt12_PlaceholderILi1EEfEED2Ev.exit.i: ; preds = %bb.l, %bb.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef 40) #35
  br label %_ZNSt14_Function_base13_Base_managerISt5_BindIFSt8functionIFfffEESt12_PlaceholderILi1EEfEEE10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE.exit

_ZNSt14_Function_base13_Base_managerISt5_BindIFSt8functionIFfffEESt12_PlaceholderILi1EEfEEE10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE.exit: ; preds = %_ZNSt5_BindIFSt8functionIFfffEESt12_PlaceholderILi1EEfEED2Ev.exit.i, %bb.j, %_ZNSt14_Function_base13_Base_managerISt5_BindIFSt8functionIFfffEESt12_PlaceholderILi1EEfEEE15_M_init_functorIRKS8_EEvRSt9_Any_dataOT_.exit, %bb.c, %bb.b, %bb.a
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal noundef float @"_ZNSt17_Function_handlerIFfffEZ23IntegrateFrequencyTablePKN4pbrt4BSDFERKNS1_7Vector3IfEEiiiPfE3$_0E9_M_invokeERKSt9_Any_dataOfSF_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2) #6 align 2 {
bb.a:
  %3 = alloca %"class.pbrt::Vector3", align 8     ; 5 uses
  %4 = alloca %"class.pbrt::Vector3", align 8     ; 5 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %5 = alloca %class.anon.105, align 8            ; 7 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !424
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3 = load ptr, ptr %i.c, align 8, !tbaa !425 ; 2 uses
  %.val4 = load float, ptr %1, align 4, !tbaa !28 ; 2 uses
  %.val5 = load float, ptr %2, align 4, !tbaa !28 ; 2 uses
  %.val.val = load ptr, ptr %.val, align 8, !tbaa !63 ; 7 uses
  %i.d = tail call noundef float @cosf(float noundef %.val4) #31 ; 2 uses
  %i.e = tail call noundef float @sinf(float noundef %.val4) #31 ; 3 uses
  %i.f = tail call noundef float @cosf(float noundef %.val5) #31
  %i.g = tail call noundef float @sinf(float noundef %.val5) #31
  %.sroa.011.0.copyload.i.i.i = load <2 x float>, ptr %.val3, align 4 ; 3 uses
  %.sroa.212.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.val3, i64 8
  %.sroa.212.0.copyload.i.i.i = load float, ptr %.sroa.212.0..sroa_idx.i.i.i, align 4 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val.val, i64 32
  %.sroa.011.0.copyload.i.i.i.i.i = load <2 x float>, ptr %i.h, align 4 ; 3 uses
  %.sroa.212.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.val, i64 40
  %.sroa.212.0.copyload.i.i.i.i.i = load float, ptr %.sroa.212.0..sroa_idx.i.i.i.i.i, align 4, !tbaa !28 ; 3 uses
  %i.i = fmul <2 x float> %.sroa.011.0.copyload.i.i.i, %.sroa.011.0.copyload.i.i.i.i.i ; 2 uses
  %shift = shufflevector <2 x float> %i.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.i, %shift
  %i.j = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.k = fmul float %.sroa.212.0.copyload.i.i.i, %.sroa.212.0.copyload.i.i.i.i.i
  %i.l = fadd float %i.k, %i.j                    ; 2 uses
  %i.m = fcmp oeq float %i.l, 0.000000e+00
  br i1 %i.m, label %"_ZSt10__invoke_rIfRZ23IntegrateFrequencyTablePKN4pbrt4BSDFERKNS0_7Vector3IfEEiiiPfE3$_0JffEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %6 = fmul float %i.e, %i.f                      ; 2 uses
  %.sroa.238.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.val, i64 16
  %.sroa.238.0.copyload.i.i.i.i.i = load float, ptr %.sroa.238.0..sroa_idx.i.i.i.i.i, align 4, !tbaa !28 ; 3 uses
  %7 = fmul float %6, %.sroa.238.0.copyload.i.i.i.i.i
  %i.n = fmul float %i.e, %i.g                    ; 2 uses
  %.sroa.228.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.val, i64 28
  %.sroa.228.0.copyload.i.i.i.i.i = load float, ptr %.sroa.228.0..sroa_idx.i.i.i.i.i, align 4, !tbaa !28 ; 3 uses
  %i.o = fmul float %i.n, %.sroa.228.0.copyload.i.i.i.i.i
  %i.p = fadd float %7, %i.o
  %i.q = fmul float %i.d, %.sroa.212.0.copyload.i.i.i.i.i
  %i.r = fadd float %i.q, %i.p                    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val.val, i64 8
  %.sroa.037.0.copyload.i.i.i.i.i = load <2 x float>, ptr %i.s, align 4 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val.val, i64 20
  %.sroa.027.0.copyload.i.i.i.i.i = load <2 x float>, ptr %i.t, align 4 ; 3 uses
  %i.u = insertelement <2 x float> poison, float %i.d, i64 0
  %i.v = shufflevector <2 x float> %i.u, <2 x float> poison, <2 x i32> zeroinitializer
  %i.w = fmul <2 x float> %i.v, %.sroa.011.0.copyload.i.i.i.i.i
  %8 = insertelement <2 x float> poison, float %6, i64 0
  %9 = shufflevector <2 x float> %8, <2 x float> poison, <2 x i32> zeroinitializer
  %i.x = fmul <2 x float> %9, %.sroa.037.0.copyload.i.i.i.i.i
  %10 = insertelement <2 x float> poison, float %i.n, i64 0
  %i.y = shufflevector <2 x float> %10, <2 x float> poison, <2 x i32> zeroinitializer
  %i.z = fmul <2 x float> %i.y, %.sroa.027.0.copyload.i.i.i.i.i
  %i.aa = fadd <2 x float> %i.x, %i.z
  %i.ab = fadd <2 x float> %i.w, %i.aa            ; 3 uses
  %i.ac = insertelement <2 x float> poison, float %.sroa.228.0.copyload.i.i.i.i.i, i64 0
  %i.ad = insertelement <2 x float> %i.ac, float %.sroa.238.0.copyload.i.i.i.i.i, i64 1
  %i.ae = insertelement <2 x float> poison, float %i.r, i64 0
  %i.af = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ag = fmul <2 x float> %i.ad, %i.af
  %i.ah = shufflevector <2 x float> %.sroa.027.0.copyload.i.i.i.i.i, <2 x float> %.sroa.037.0.copyload.i.i.i.i.i, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.ai = fmul <2 x float> %i.ah, %i.ab
  %i.aj = shufflevector <2 x float> %.sroa.037.0.copyload.i.i.i.i.i, <2 x float> %.sroa.027.0.copyload.i.i.i.i.i, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.ak = fmul <2 x float> %i.aj, %i.ab
  %i.al = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.am = fadd <2 x float> %i.ai, %i.al
  %i.an = fadd <2 x float> %i.ag, %i.am
  %i.ao = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ap = fmul float %.sroa.212.0.copyload.i.i.i.i.i, %i.r
  %i.aq = fmul <2 x float> %.sroa.011.0.copyload.i.i.i.i.i, %i.ab ; 2 uses
  %shift7 = shufflevector <2 x float> %i.aq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop8 = fadd <2 x float> %i.aq, %shift7
  %i.ar = extractelement <2 x float> %foldExtExtBinop8, i64 0
  %i.as = fadd float %i.ap, %i.ar
  %i.at = insertelement <2 x float> poison, float %.sroa.212.0.copyload.i.i.i, i64 0
  %i.au = shufflevector <2 x float> %i.at, <2 x float> poison, <2 x i32> zeroinitializer
  %i.av = insertelement <2 x float> poison, float %.sroa.238.0.copyload.i.i.i.i.i, i64 0
  %i.aw = insertelement <2 x float> %i.av, float %.sroa.228.0.copyload.i.i.i.i.i, i64 1
  %i.ax = fmul <2 x float> %i.au, %i.aw
  %i.ay = fmul <2 x float> %.sroa.011.0.copyload.i.i.i, %i.ah
  %i.az = shufflevector <2 x float> %i.ay, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ba = fmul <2 x float> %.sroa.011.0.copyload.i.i.i, %i.aj
  %i.bb = fadd <2 x float> %i.az, %i.ba
  %i.bc = fadd <2 x float> %i.ax, %i.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store <2 x float> %i.bc, ptr %3, align 8
  %.sroa.22.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store float %i.l, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i, align 8
  store <2 x float> %i.ao, ptr %4, align 8
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float %i.as, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8
  store i32 0, ptr %i.a, align 4, !tbaa !54
  store i32 3, ptr %i.b, align 4, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  store ptr %3, ptr %5, align 8, !tbaa !58
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %4, ptr %i.bd, align 8, !tbaa !58
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.a, ptr %i.be, align 8, !tbaa !24
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.b, ptr %i.bf, align 8, !tbaa !24
  %i.bg = load i64, ptr %.val.val, align 8, !tbaa !52 ; 2 uses
  %i.bh = and i64 %i.bg, 144115188075855871
  %i.bi = inttoptr i64 %i.bh to ptr
  %i.bj = lshr i64 %i.bg, 57
  %i.bk = trunc nuw nsw i64 %i.bj to i32
  %i.bl = add nsw i32 %i.bk, -1
  %i.bm = call noundef float @_ZN4pbrt6detail8DispatchIRZNKS_4BxDF3PDFENS_7Vector3IfEES4_NS_13TransportModeENS_18BxDFReflTransFlagsEEUlT_E_fNS_23DiffuseTransmissionBxDFENS_11DiffuseBxDFENS_17CoatedDiffuseBxDFENS_19CoatedConductorBxDFENS_14DielectricBxDFENS_18ThinDielectricBxDFENS_8HairBxDFENS_12MeasuredBxDFEJNS_13ConductorBxDFENS_21NormalizedFresnelBxDFEEvEET0_OS7_PKvi(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %i.bi, i32 noundef %i.bl)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %"_ZSt10__invoke_rIfRZ23IntegrateFrequencyTablePKN4pbrt4BSDFERKNS0_7Vector3IfEEiiiPfE3$_0JffEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit"

"_ZSt10__invoke_rIfRZ23IntegrateFrequencyTablePKN4pbrt4BSDFERKNS0_7Vector3IfEEiiiPfE3$_0JffEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit": ; preds = %bb.a, %bb.b
  %.0.i.i.i.i = phi float [ %i.bm, %bb.b ], [ 0.000000e+00, %bb.a ]
  %i.bn = fmul float %i.e, %.0.i.i.i.i
  ret float %i.bn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFfffEZ23IntegrateFrequencyTablePKN4pbrt4BSDFERKNS1_7Vector3IfEEiiiPfE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #24 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZ23IntegrateFrequencyTablePKN4pbrt4BSDFERKNS1_7Vector3IfEEiiiPfE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZ23IntegrateFrequencyTablePKN4pbrt4BSDFERKNS_7Vector3IfEEiiiPfE3$_0", ptr %0, align 8, !tbaa !173
  br label %"_ZNSt14_Function_base13_Base_managerIZ23IntegrateFrequencyTablePKN4pbrt4BSDFERKNS1_7Vector3IfEEiiiPfE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !24
  br label %"_ZNSt14_Function_base13_Base_managerIZ23IntegrateFrequencyTablePKN4pbrt4BSDFERKNS1_7Vector3IfEEiiiPfE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull readonly align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !426
  br label %"_ZNSt14_Function_base13_Base_managerIZ23IntegrateFrequencyTablePKN4pbrt4BSDFERKNS1_7Vector3IfEEiiiPfE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZ23IntegrateFrequencyTablePKN4pbrt4BSDFERKNS1_7Vector3IfEEiiiPfE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef float @_ZN4pbrt6detail8DispatchIRZNKS_4BxDF3PDFENS_7Vector3IfEES4_NS_13TransportModeENS_18BxDFReflTransFlagsEEUlT_E_fNS_23DiffuseTransmissionBxDFENS_11DiffuseBxDFENS_17CoatedDiffuseBxDFENS_19CoatedConductorBxDFENS_14DielectricBxDFENS_18ThinDielectricBxDFENS_8HairBxDFENS_12MeasuredBxDFEJNS_13ConductorBxDFENS_21NormalizedFresnelBxDFEEvEET0_OS7_PKvi(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #6 comdat {
bb.a:
  switch i32 %2, label %bb.l [
    i32 0, label %bb.b
    i32 1, label %bb.f
    i32 2, label %bb.g
    i32 3, label %bb.h
    i32 4, label %bb.i
    i32 5, label %_ZZNK4pbrt4BxDF3PDFENS_7Vector3IfEES2_NS_13TransportModeENS_18BxDFReflTransFlagsEENKUlT_E_clIPKNS_23DiffuseTransmissionBxDFEEEDaS5_.exit
    i32 6, label %bb.j
    i32 7, label %bb.k
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !428, !nonnull !43, !align !157
  %i.c = load i32, ptr %i.b, align 4, !tbaa !56   ; 2 uses
  %i.d = load float, ptr %1, align 4, !tbaa !28   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load float, ptr %i.e, align 4, !tbaa !28 ; 2 uses
  %i.g = fcmp olt float %i.d, %i.f
  %.sroa.speculated.i.i.i = select i1 %i.g, float %i.f, float %i.d ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load float, ptr %i.h, align 4, !tbaa !28 ; 2 uses
  %i.j = fcmp olt float %.sroa.speculated.i.i.i, %i.i
  %.sroa.speculated.1.i.i.i = select i1 %i.j, float %i.i, float %.sroa.speculated.i.i.i ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.l = load float, ptr %i.k, align 4, !tbaa !28 ; 2 uses
  %i.m = fcmp olt float %.sroa.speculated.1.i.i.i, %i.l
  %.sroa.speculated.2.i.i.i = select i1 %i.m, float %i.l, float %.sroa.speculated.1.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load float, ptr %i.n, align 4, !tbaa !28 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.q = load float, ptr %i.p, align 4, !tbaa !28 ; 2 uses
  %i.r = fcmp olt float %i.o, %i.q
  %.sroa.speculated.i38.i.i = select i1 %i.r, float %i.q, float %i.o ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = load float, ptr %i.s, align 4, !tbaa !28 ; 2 uses
  %i.u = fcmp olt float %.sroa.speculated.i38.i.i, %i.t
  %.sroa.speculated.1.i39.i.i = select i1 %i.u, float %i.t, float %.sroa.speculated.i38.i.i ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.w = load float, ptr %i.v, align 4, !tbaa !28 ; 2 uses
  %i.x = fcmp olt float %.sroa.speculated.1.i39.i.i, %i.w
  %.sroa.speculated.2.i40.i.i = select i1 %i.x, float %i.w, float %.sroa.speculated.1.i39.i.i
  %i.y = and i32 %i.c, 1
  %.not.i.i = icmp eq i32 %i.y, 0
  %spec.select.i.i = select i1 %.not.i.i, float 0.000000e+00, float %.sroa.speculated.2.i.i.i ; 3 uses
  %i.z = and i32 %i.c, 2
  %.not37.i.i = icmp eq i32 %i.z, 0
  %.036.i.i = select i1 %.not37.i.i, float 0.000000e+00, float %.sroa.speculated.2.i40.i.i ; 3 uses
  %i.aa = fcmp oeq float %spec.select.i.i, 0.000000e+00
  %i.ab = fcmp oeq float %.036.i.i, 0.000000e+00
  %or.cond.i.i = and i1 %i.aa, %i.ab
  br i1 %or.cond.i.i, label %_ZZNK4pbrt4BxDF3PDFENS_7Vector3IfEES2_NS_13TransportModeENS_18BxDFReflTransFlagsEENKUlT_E_clIPKNS_23DiffuseTransmissionBxDFEEEDaS5_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !429, !nonnull !43, !align !157
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.24.0.copyload.i = load float, ptr %.sroa.24.0..sroa_idx.i, align 4 ; 2 uses
  %i.ae = load ptr, ptr %0, align 8, !tbaa !430, !nonnull !43, !align !157
  %.sroa.26.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.26.0.copyload.i = load float, ptr %.sroa.26.0..sroa_idx.i, align 4
  %i.af = fmul float %.sroa.24.0.copyload.i, %.sroa.26.0.copyload.i
  %i.ag = fcmp ogt float %i.af, 0.000000e+00
  %i.ah = fadd float %spec.select.i.i, %.036.i.i  ; 2 uses
  %i.ai = tail call noundef float @llvm.fabs.f32(float %.sroa.24.0.copyload.i)
  %i.aj = fmul float %i.ai, f0x3EA2F983           ; 2 uses
  br i1 %i.ag, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ak = fdiv float %spec.select.i.i, %i.ah
  %i.al = fmul float %i.ak, %i.aj
  br label %_ZZNK4pbrt4BxDF3PDFENS_7Vector3IfEES2_NS_13TransportModeENS_18BxDFReflTransFlagsEENKUlT_E_clIPKNS_23DiffuseTransmissionBxDFEEEDaS5_.exit

bb.e:                                             ; preds = %bb.c
  %i.am = fdiv float %.036.i.i, %i.ah
  %i.an = fmul float %i.am, %i.aj
  br label %_ZZNK4pbrt4BxDF3PDFENS_7Vector3IfEES2_NS_13TransportModeENS_18BxDFReflTransFlagsEENKUlT_E_clIPKNS_23DiffuseTransmissionBxDFEEEDaS5_.exit

bb.f:                                             ; preds = %bb.a
  %i.ao = load ptr, ptr %0, align 8, !tbaa !430, !nonnull !43, !align !157
  %.sroa.26.0..sroa_idx.i20 = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.26.0.copyload.i21 = load float, ptr %.sroa.26.0..sroa_idx.i20, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !429, !nonnull !43, !align !157
  %.sroa.24.0..sroa_idx.i22 = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.sroa.24.0.copyload.i23 = load float, ptr %.sroa.24.0..sroa_idx.i22, align 4 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !428, !nonnull !43, !align !157
  %i.at = load i32, ptr %i.as, align 4, !tbaa !56
  %.not.i.i24 = trunc i32 %i.at to i1
  %i.au = fmul float %.sroa.26.0.copyload.i21, %.sroa.24.0.copyload.i23
  %i.av = fcmp ogt float %i.au, 0.000000e+00
  %or.cond.i.i25 = select i1 %.not.i.i24, i1 %i.av, i1 false
  %i.aw = tail call float @llvm.fabs.f32(float %.sroa.24.0.copyload.i23)
  %i.ax = fmul float %i.aw, f0x3EA2F983
  %.0.i.i26 = select i1 %or.cond.i.i25, float %i.ax, float 0.000000e+00
  br label %_ZZNK4pbrt4BxDF3PDFENS_7Vector3IfEES2_NS_13TransportModeENS_18BxDFReflTransFlagsEENKUlT_E_clIPKNS_23DiffuseTransmissionBxDFEEEDaS5_.exit

bb.g:                                             ; preds = %bb.a
end_hunk_1
