Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/cameras?download=true
inline.NumInlined: 4489
inline.NumDeleted: 964
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZN4pbrt5ImageD2Ev:bb.a
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  tail call void @__clang_call_terminate(ptr %i.al) #32
  unreachable

_ZN4pstd6vectorIhNS_3pmr21polymorphic_allocatorIhEEED2Ev.exit: ; preds = %_ZN4pstd6vectorIN4pbrt4HalfENS_3pmr21polymorphic_allocatorIS2_EEED2Ev.exit, %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !99 ; 2 uses
  %.not.i.i = icmp eq i64 %i.ao, 0
  br i1 %.not.i.i, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4pstd6vectorIhNS_3pmr21polymorphic_allocatorIhEEED2Ev.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.h

bb.h:                                             ; preds = %_ZN4pstd3pmr21polymorphic_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7destroyIS7_EEvPT_.exit.i.i, %.lr.ph.i.i
  %i.aq = phi i64 [ %i.ao, %.lr.ph.i.i ], [ %i.ay, %_ZN4pstd3pmr21polymorphic_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7destroyIS7_EEvPT_.exit.i.i ]
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %_ZN4pstd3pmr21polymorphic_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7destroyIS7_EEvPT_.exit.i.i ] ; 2 uses
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !126
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %i.ar, i64 %indvars.iv.i.i ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !35 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZN4pstd3pmr21polymorphic_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7destroyIS7_EEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.h
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !25
  %i.ax = add i64 %i.aw, 1
  tail call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #31
  %.pre.i.i = load i64, ptr %i.an, align 8, !tbaa !99
  br label %_ZN4pstd3pmr21polymorphic_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7destroyIS7_EEvPT_.exit.i.i

_ZN4pstd3pmr21polymorphic_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7destroyIS7_EEvPT_.exit.i.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.ay = phi i64 [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.aq, %bb.h ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.az = icmp ugt i64 %i.ay, %indvars.iv.next.i.i
  br i1 %i.az, label %bb.h, label %.loopexit.i, !llvm.loop !1

.loopexit.i:                                      ; preds = %_ZN4pstd3pmr21polymorphic_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7destroyIS7_EEvPT_.exit.i.i, %_ZN4pstd6vectorIhNS_3pmr21polymorphic_allocatorIhEEED2Ev.exit
  store i64 0, ptr %i.an, align 8, !tbaa !99
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !126 ; 2 uses
  %.not.i.i.i.i3 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i.i3, label %_ZN4pstd6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_3pmr21polymorphic_allocatorIS6_EEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %.loopexit.i
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !169
  %i.be = shl i64 %i.bd, 5
  %i.bf = load ptr, ptr %i.am, align 8, !tbaa !170 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !73
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8
  invoke void %i.bi(ptr noundef nonnull align 8 dereferenceable(8) %i.bf, ptr noundef nonnull %i.bb, i64 noundef %i.be, i64 noundef 8)
          to label %_ZN4pstd6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_3pmr21polymorphic_allocatorIS6_EEED2Ev.exit unwind label %bb.j, !inline_history !406

bb.j:                                             ; preds = %bb.i
  %i.bj = landingpad { ptr, i32 }
          catch ptr null
  %i.bk = extractvalue { ptr, i32 } %i.bj, 0
  tail call void @__clang_call_terminate(ptr %i.bk) #32
  unreachable

_ZN4pstd6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_3pmr21polymorphic_allocatorIS6_EEED2Ev.exit: ; preds = %.loopexit.i, %bb.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4pstd6vectorIN4pbrt15RealisticCamera20LensElementInterfaceENS_3pmr21polymorphic_allocatorIS3_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.a, align 8, !tbaa !140
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !142  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZN4pstd3pmr21polymorphic_allocatorIN4pbrt15RealisticCamera20LensElementInterfaceEE17deallocate_objectIS4_EEvPT_m.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !139
  %i.f = shl i64 %i.e, 4
  %i.g = load ptr, ptr %0, align 8, !tbaa !141    ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !73
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  invoke void %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull %i.c, i64 noundef %i.f, i64 noundef 4)
          to label %_ZN4pstd3pmr21polymorphic_allocatorIN4pbrt15RealisticCamera20LensElementInterfaceEE17deallocate_objectIS4_EEvPT_m.exit unwind label %bb.c, !inline_history !407

_ZN4pstd3pmr21polymorphic_allocatorIN4pbrt15RealisticCamera20LensElementInterfaceEE17deallocate_objectIS4_EEvPT_m.exit: ; preds = %bb.a, %bb.b
  ret void

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #32
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local noundef float @_ZNK4pbrt15RealisticCamera19TraceLensesFromFilmERKNS_3RayEPS1_(ptr noundef nonnull align 8 dereferenceable(1128) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %3 = alloca %"class.pbrt::Ray", align 16        ; 13 uses
  %i.a = alloca float, align 4                    ; 6 uses
  %4 = alloca %"class.pbrt::Normal3", align 8     ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.b = load <4 x float>, ptr %1, align 8        ; 3 uses
  %i.c = extractelement <4 x float> %i.b, i64 2
  %i.d = fneg float %i.c                          ; 2 uses
  %.sroa.0116.4.vec.insert = shufflevector <4 x float> %i.b, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.f = load <4 x float>, ptr %i.e, align 4      ; 3 uses
  %i.g = extractelement <4 x float> %i.f, i64 2
  %i.h = fneg float %i.g
  %.sroa.0113.4.vec.insert = shufflevector <4 x float> %i.f, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.i = extractelement <4 x float> %i.f, i64 3
  store <2 x float> %.sroa.0116.4.vec.insert, ptr %3, align 16
  %.sroa.27.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store float %i.d, ptr %.sroa.27.0..sroa_idx.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 4 uses
  store <2 x float> %.sroa.0113.4.vec.insert, ptr %i.j, align 4
  %.sroa.23.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 4 uses
  store float %i.h, ptr %.sroa.23.0..sroa_idx.i, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 24
  store float %i.i, ptr %i.k, align 8, !tbaa !65
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 0, ptr %i.l, align 16, !tbaa !54
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 936
  %i.n = load i64, ptr %i.m, align 8, !tbaa !140  ; 2 uses
  %i.o = trunc i64 %i.n to i32
  %.085130 = add i32 %i.o, -1                     ; 2 uses
  %i.p = icmp slt i32 %.085130, 0
  br i1 %i.p, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 920 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 948
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 944 ; 4 uses
  %i.u = zext nneg i32 %.085130 to i64
  %i.v = and i64 %i.n, 4294967295
  %i.w = shufflevector <4 x float> %i.b, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.critedge
  %i.x = phi float [ %i.d, %.lr.ph ], [ %i.ax, %.critedge ] ; 2 uses
  %indvars.iv135 = phi i64 [ %i.v, %.lr.ph ], [ %indvars.iv.next136, %.critedge ] ; 2 uses
  %indvars.iv = phi i64 [ %i.u, %.lr.ph ], [ %indvars.iv.next, %.critedge ] ; 4 uses
  %.079133 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.ad, %.critedge ]
  %.080132 = phi float [ 1.000000e+00, %.lr.ph ], [ %.383, %.critedge ] ; 2 uses
  %i.y = phi <2 x float> [ %i.w, %.lr.ph ], [ %i.aw, %.critedge ]
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !142
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %indvars.iv ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !144
  %i.ad = fsub float %.079133, %i.ac              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  store <2 x float> zeroinitializer, ptr %4, align 8, !tbaa !14
  store float 0.000000e+00, ptr %i.r, align 8, !tbaa !171
  %i.ae = load float, ptr %i.aa, align 4, !tbaa !172 ; 3 uses
  %i.af = fcmp oeq float %i.ae, 0.000000e+00      ; 3 uses
  br i1 %i.af, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ag = fsub float %i.ad, %i.x
  %i.ah = load float, ptr %.sroa.23.0..sroa_idx.i, align 4, !tbaa !122 ; 2 uses
  %i.ai = fdiv float %i.ag, %i.ah                 ; 3 uses
  store float %i.ai, ptr %i.a, align 4, !tbaa !14
  %i.aj = fcmp olt float %i.ai, 0.000000e+00
  br i1 %i.aj, label %bb.p, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ak = fadd float %i.ad, %i.ae
  %i.al = call noundef zeroext i1 @_ZN4pbrt15RealisticCamera25IntersectSphericalElementEffRKNS_3RayEPfPNS_7Normal3IfEE(float noundef %i.ae, float noundef %i.ak, ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull %i.a, ptr noundef nonnull %4)
  br i1 %i.al, label %._crit_edge140, label %bb.p

._crit_edge140:                                   ; preds = %bb.d
  %.pre = load float, ptr %i.a, align 4, !tbaa !14
  %.pre141 = load float, ptr %.sroa.23.0..sroa_idx.i, align 4, !tbaa !122
  %i.am = load <2 x float>, ptr %3, align 16, !tbaa !14
  %.pre144 = load float, ptr %.sroa.27.0..sroa_idx.i, align 8, !tbaa !66
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge140, %bb.c
  %i.an = phi float [ %.pre144, %._crit_edge140 ], [ %i.x, %bb.c ]
  %i.ao = phi float [ %.pre141, %._crit_edge140 ], [ %i.ah, %bb.c ] ; 4 uses
  %i.ap = phi float [ %.pre, %._crit_edge140 ], [ %i.ai, %bb.c ] ; 2 uses
  %i.aq = phi <2 x float> [ %i.am, %._crit_edge140 ], [ %i.y, %bb.c ]
  %i.ar = fmul float %i.ap, %i.ao
  %i.as = load <2 x float>, ptr %i.j, align 4, !tbaa !14 ; 4 uses
  %i.at = insertelement <2 x float> poison, float %i.ap, i64 0
  %i.au = shufflevector <2 x float> %i.at, <2 x float> poison, <2 x i32> zeroinitializer
  %i.av = fmul <2 x float> %i.au, %i.as
  %i.aw = fadd <2 x float> %i.av, %i.aq           ; 6 uses
  %i.ax = fadd float %i.ar, %i.an                 ; 3 uses
  br i1 %i.af, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ay = load <2 x i32>, ptr %i.s, align 4
  %.fr = freeze <2 x i32> %i.ay                   ; 2 uses
  %5 = icmp slt <2 x i32> %.fr, splat (i32 1)
  %6 = bitcast <2 x i1> %5 to i2
  %7 = icmp eq i2 %6, 0
  br i1 %7, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  %i.ba = load float, ptr %i.az, align 4, !tbaa !173
  %i.bb = uitofp nneg <2 x i32> %.fr to <2 x float>
  %i.bc = insertelement <2 x float> poison, float %i.ba, i64 0
  %i.bd = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.be = fdiv <2 x float> %i.aw, %i.bd
  %i.bf = fadd <2 x float> %i.be, splat (float 1.000000e+00)
  %i.bg = fmul <2 x float> %i.bf, splat (float 5.000000e-01)
  %i.bh = fmul <2 x float> %i.bg, %i.bb
  %i.bi = fadd <2 x float> %i.bh, splat (float -5.000000e-01) ; 2 uses
  %i.bj = call <2 x float> @llvm.floor.v2f32(<2 x float> %i.bi)
  %i.bk = fptosi <2 x float> %i.bj to <2 x i32>   ; 4 uses
  %i.bl = extractelement <2 x i32> %i.bk, i64 1   ; 2 uses
  %.sroa.239.0.insert.ext.i = zext i32 %i.bl to i64
  %.sroa.239.0.insert.shift.i = shl nuw i64 %.sroa.239.0.insert.ext.i, 32
  %i.bm = extractelement <2 x i32> %i.bk, i64 0   ; 2 uses
  %.sroa.038.0.insert.ext.i = zext i32 %i.bm to i64
  %.sroa.038.0.insert.insert.i = bitcast <2 x i32> %i.bk to i64
  %i.bn = call noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %i.t, i64 %.sroa.038.0.insert.insert.i, i32 noundef 0, i64 0)
  %i.bo = add nsw i32 %i.bm, 1
  %.sroa.036.0.insert.ext.i = zext i32 %i.bo to i64 ; 2 uses
  %.sroa.036.0.insert.insert.i = or disjoint i64 %.sroa.239.0.insert.shift.i, %.sroa.036.0.insert.ext.i
  %i.bp = call noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %i.t, i64 %.sroa.036.0.insert.insert.i, i32 noundef 0, i64 0)
  %i.bq = add nsw i32 %i.bl, 1
  %.sroa.235.0.insert.ext.i = zext i32 %i.bq to i64
  %.sroa.235.0.insert.shift.i = shl nuw i64 %.sroa.235.0.insert.ext.i, 32 ; 2 uses
  %.sroa.034.0.insert.insert.i = or disjoint i64 %.sroa.235.0.insert.shift.i, %.sroa.038.0.insert.ext.i
  %i.br = call noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %i.t, i64 %.sroa.034.0.insert.insert.i, i32 noundef 0, i64 0)
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.235.0.insert.shift.i, %.sroa.036.0.insert.ext.i
  %i.bs = call noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %i.t, i64 %.sroa.0.0.insert.insert.i, i32 noundef 0, i64 0)
  %i.bt = sitofp <2 x i32> %i.bk to <2 x float>
  %i.bu = fsub <2 x float> %i.bi, %i.bt           ; 2 uses
  %i.bv = extractelement <2 x float> %i.bu, i64 0 ; 3 uses
  %i.bw = fsub float 1.000000e+00, %i.bv          ; 2 uses
  %i.bx = extractelement <2 x float> %i.bu, i64 1 ; 3 uses
  %i.by = fsub float 1.000000e+00, %i.bx          ; 2 uses
  %i.bz = fmul float %i.bw, %i.by
  %i.ca = fmul float %i.bn, %i.bz
  %i.cb = fmul float %i.bv, %i.by
  %i.cc = fmul float %i.bp, %i.cb
  %i.cd = fadd float %i.ca, %i.cc
  %i.ce = fmul float %i.bx, %i.bw
  %i.cf = fmul float %i.br, %i.ce
  %i.cg = fadd float %i.cf, %i.cd
  %i.ch = fmul float %i.bv, %i.bx
  %i.ci = fmul float %i.bs, %i.ch
  %i.cj = fadd float %i.ci, %i.cg                 ; 2 uses
  %i.ck = fcmp une float %i.cj, 0.000000e+00
  br i1 %i.ck, label %.thread, label %bb.p

.thread:                                          ; preds = %bb.g
  store <2 x float> %i.aw, ptr %3, align 16
  store float %i.ax, ptr %.sroa.27.0..sroa_idx.i, align 8
  br label %.critedge

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.cl = fmul <2 x float> %i.aw, %i.aw           ; 2 uses
  %shift = shufflevector <2 x float> %i.cl, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.cl, %shift
  %i.cm = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.cn = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  %i.co = load float, ptr %i.cn, align 4, !tbaa !173 ; 2 uses
  %i.cp = fmul float %i.co, %i.co
  %i.cq = fcmp ogt float %i.cm, %i.cp
  br i1 %i.cq, label %bb.p, label %bb.i

bb.i:                                             ; preds = %bb.h
  store <2 x float> %i.aw, ptr %3, align 16
  store float %i.ax, ptr %.sroa.27.0..sroa_idx.i, align 8
  br i1 %i.af, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cr = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !174
  %.not = icmp eq i64 %indvars.iv, 0
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ct = add i64 %indvars.iv135, 4294967294
  %i.cu = and i64 %i.ct, 4294967295
  %i.cv = load ptr, ptr %i.q, align 8, !tbaa !142
  %i.cw = getelementptr inbounds nuw [16 x i8], ptr %i.cv, i64 %i.cu
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !174 ; 2 uses
  %i.cz = fcmp une float %i.cy, 0.000000e+00
  %spec.select = select i1 %i.cz, float %i.cy, float 1.000000e+00
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.da = phi float [ 1.000000e+00, %bb.j ], [ %spec.select, %bb.k ]
  %i.db = fneg float %i.ao
  %i.dc = fmul <2 x float> %i.as, %i.as           ; 2 uses
  %shift165 = shufflevector <2 x float> %i.dc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop166 = fadd <2 x float> %i.dc, %shift165
  %i.dd = extractelement <2 x float> %foldExtExtBinop166, i64 0
  %i.de = fmul float %i.ao, %i.ao
  %i.df = fadd float %i.de, %i.dd
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.df) ; 2 uses
  %i.dg = fneg <2 x float> %i.as
  %i.dh = insertelement <2 x float> poison, float %sqrt.i.i, i64 0
  %i.di = shufflevector <2 x float> %i.dh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dj = fdiv <2 x float> %i.dg, %i.di           ; 3 uses
  %i.dk = fdiv float %i.db, %sqrt.i.i             ; 3 uses
  %.sroa.011.0.copyload = load <2 x float>, ptr %4, align 8 ; 4 uses
  %.sroa.212.0.copyload = load float, ptr %i.r, align 8 ; 4 uses
  %i.dl = fdiv float %i.da, %i.cs                 ; 2 uses
  %.sroa.04.0.vec.extract.i.i = extractelement <2 x float> %.sroa.011.0.copyload, i64 0
  %.sroa.04.4.vec.extract.i.i = extractelement <2 x float> %.sroa.011.0.copyload, i64 1
  %i.dm = fmul float %.sroa.212.0.copyload, %i.dk ; 2 uses
  %i.dn = extractelement <2 x float> %i.dj, i64 1
  %i.do = call noundef float @llvm.fma.f32(float %.sroa.04.4.vec.extract.i.i, float %i.dn, float %i.dm)
  %i.dp = fneg float %i.dm
  %i.dq = call noundef float @llvm.fma.f32(float %.sroa.212.0.copyload, float %i.dk, float %i.dp)
  %i.dr = fadd float %i.do, %i.dq
  %i.ds = extractelement <2 x float> %i.dj, i64 0
  %i.dt = call noundef float @llvm.fma.f32(float %.sroa.04.0.vec.extract.i.i, float %i.ds, float %i.dr) ; 3 uses
  %i.du = fcmp olt float %i.dt, 0.000000e+00
  br i1 %i.du, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.dv = fdiv float 1.000000e+00, %i.dl
  %i.dw = fneg float %i.dt
  %i.dx = fneg <2 x float> %.sroa.011.0.copyload
  %i.dy = fneg float %.sroa.212.0.copyload
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.084.0.i = phi <2 x float> [ %i.dx, %bb.m ], [ %.sroa.011.0.copyload, %bb.l ]
  %.sroa.586.0.i = phi float [ %i.dy, %bb.m ], [ %.sroa.212.0.copyload, %bb.l ]
  %.061.i = phi float [ %i.dw, %bb.m ], [ %i.dt, %bb.l ] ; 3 uses
  %.060.i = phi float [ %i.dv, %bb.m ], [ %i.dl, %bb.l ] ; 5 uses
  %i.dz = fmul float %.061.i, %.061.i
  %i.ea = fsub float 1.000000e+00, %i.dz          ; 2 uses
  %i.eb = fcmp ogt float %i.ea, 0.000000e+00
  %.sroa.speculated.i = select i1 %i.eb, float %i.ea, float 0.000000e+00
  %i.ec = fmul float %.060.i, %.060.i
  %i.ed = fdiv float %.sroa.speculated.i, %i.ec   ; 2 uses
  %i.ee = fcmp ult float %i.ed, 1.000000e+00
  br i1 %i.ee, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ef = fsub float 1.000000e+00, %i.ed
  %i.eg = call noundef float @sqrtf(float noundef %i.ef) #29
  %i.eh = fdiv float %.061.i, %.060.i
  %i.ei = fsub float %i.eh, %i.eg                 ; 2 uses
  %i.ej = fmul float %.sroa.586.0.i, %i.ei
  %i.ek = insertelement <2 x float> poison, float %.060.i, i64 0
  %i.el = shufflevector <2 x float> %i.ek, <2 x float> poison, <2 x i32> zeroinitializer
  %i.em = fdiv <2 x float> %i.dj, %i.el
  %i.en = insertelement <2 x float> poison, float %i.ei, i64 0
  %i.eo = shufflevector <2 x float> %i.en, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ep = fmul <2 x float> %.sroa.084.0.i, %i.eo
  %i.eq = fsub <2 x float> %i.ep, %i.em
  %i.er = fdiv float %i.dk, %.060.i
  %i.es = fsub float %i.ej, %i.er
  store <2 x float> %i.eq, ptr %i.j, align 4
  store float %i.es, ptr %.sroa.23.0..sroa_idx.i, align 4
  br label %.critedge

.critedge:                                        ; preds = %.thread, %bb.i, %bb.o
  %.383 = phi float [ %i.cj, %.thread ], [ %.080132, %bb.i ], [ %.080132, %bb.o ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.et = icmp slt i64 %indvars.iv, 1
  %indvars.iv.next136 = add nsw i64 %indvars.iv135, -1
  br i1 %i.et, label %._crit_edge, label %bb.b, !llvm.loop !408

bb.p:                                             ; preds = %bb.d, %bb.c, %bb.h, %bb.g, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %bb.r

._crit_edge:                                      ; preds = %.critedge, %bb.a
  %.080.lcssa = phi float [ 1.000000e+00, %bb.a ], [ %.383, %.critedge ] ; 2 uses
  %.not94 = icmp eq ptr %2, null
  br i1 %.not94, label %bb.r, label %bb.q

bb.q:                                             ; preds = %._crit_edge
  %i.eu = load <4 x float>, ptr %3, align 16      ; 2 uses
  %i.ev = extractelement <4 x float> %i.eu, i64 2
  %i.ew = fneg float %i.ev
  %.sroa.0102.4.vec.insert = shufflevector <4 x float> %i.eu, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.ex = load <4 x float>, ptr %i.j, align 4     ; 3 uses
  %i.ey = extractelement <4 x float> %i.ex, i64 2
  %i.ez = fneg float %i.ey
  %.sroa.0100.4.vec.insert = shufflevector <4 x float> %i.ex, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.fa = extractelement <4 x float> %i.ex, i64 3
  store <2 x float> %.sroa.0102.4.vec.insert, ptr %2, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %i.ew, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 12
  store <2 x float> %.sroa.0100.4.vec.insert, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 20
  store float %i.ez, ptr %.sroa.6.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  store float %i.fa, ptr %.sroa.7.0..sroa_idx, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 0, ptr %i.fb, align 8, !tbaa !54
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %._crit_edge, %bb.q
  %.10 = phi float [ 0.000000e+00, %bb.p ], [ %.080.lcssa, %bb.q ], [ %.080.lcssa, %._crit_edge ]
end_hunk_0
begin_hunk_1_@_ZNK4pbrt15RealisticCamera20TraceLensesFromSceneERKNS_3RayEPS1_:bb.a
  %i.kn = extractelement <4 x float> %i.kh, i64 0
  %i.ko = extractelement <4 x float> %i.kh, i64 1
  %i.kp = shufflevector <4 x float> %i.kh, <4 x float> poison, <2 x i32> <i32 3, i32 2>
  br i1 %.not, label %bb.l, label %.critedge79, !llvm.loop !413

.critedge77:                                      ; preds = %bb.s, %bb.o, %bb.m, %bb.n, %bb.i, %bb.e, %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %bb.w

.critedge79:                                      ; preds = %bb.u, %bb.k, %_ZNK4pbrt9TransformclERKNS_3RayEPf.exit
  %.not75 = icmp eq ptr %2, null
  br i1 %.not75, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.critedge79
  %i.kq = load <4 x float>, ptr %6, align 16      ; 2 uses
  %i.kr = extractelement <4 x float> %i.kq, i64 2
  %i.ks = fneg float %i.kr
  %.sroa.085.4.vec.insert = shufflevector <4 x float> %i.kq, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.kt = load <4 x float>, ptr %i.dl, align 4    ; 3 uses
  %i.ku = extractelement <4 x float> %i.kt, i64 2
  %i.kv = fneg float %i.ku
  %.sroa.083.4.vec.insert = shufflevector <4 x float> %i.kt, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.kw = extractelement <4 x float> %i.kt, i64 3
  store <2 x float> %.sroa.085.4.vec.insert, ptr %2, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %i.ks, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 12
  store <2 x float> %.sroa.083.4.vec.insert, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 20
  store float %i.kv, ptr %.sroa.6.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  store float %i.kw, ptr %.sroa.7.0..sroa_idx, align 8
  %i.kx = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 0, ptr %i.kx, align 8, !tbaa !54
  br label %bb.w

bb.w:                                             ; preds = %.critedge77, %.critedge79, %bb.v
  %.8 = phi float [ 0.000000e+00, %.critedge77 ], [ 1.000000e+00, %bb.v ], [ 1.000000e+00, %.critedge79 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  ret float %.8
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZN4pbrt9ErrorExitIJEEEvPKcDpOT_(ptr noundef %0) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.a, ptr %1, align 8, !tbaa !31, !alias.scope !417
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !34, !alias.scope !417
  store i8 0, ptr %i.a, align 8, !tbaa !25, !alias.scope !417
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 %1, ptr noundef %0)
          to label %_ZN4pbrt12StringPrintfIJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !35, !alias.scope !417 ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !25, !alias.scope !417
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #31
  br label %common.resume

common.resume:                                    ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.c, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_ZN4pbrt12StringPrintfIJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %1, align 8, !tbaa !35
  invoke void @_ZN4pbrt9ErrorExitEPKNS_7FileLocEPKc(ptr noundef null, ptr noundef %i.h) #30
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN4pbrt12StringPrintfIJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit
  unreachable

bb.d:                                             ; preds = %_ZN4pbrt12StringPrintfIJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %1, align 8, !tbaa !35     ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.a
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.l = load i64, ptr %i.a, align 8, !tbaa !25
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZN4pbrt9ErrorExitIJRfEEEvPKcDpOT_(ptr noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !31, !alias.scope !420
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !34, !alias.scope !420
  store i8 0, ptr %i.a, align 8, !tbaa !25, !alias.scope !420
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRfJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_(ptr noundef nonnull align 8 %2, ptr noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1)
          to label %_ZN4pbrt12StringPrintfIJRfEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !35, !alias.scope !420 ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !25, !alias.scope !420
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #31
  br label %common.resume

common.resume:                                    ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.c, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_ZN4pbrt12StringPrintfIJRfEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %2, align 8, !tbaa !35
  invoke void @_ZN4pbrt9ErrorExitEPKNS_7FileLocEPKc(ptr noundef null, ptr noundef %i.h) #30
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN4pbrt12StringPrintfIJRfEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit
  unreachable

bb.d:                                             ; preds = %_ZN4pbrt12StringPrintfIJRfEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %2, align 8, !tbaa !35     ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.a
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.l = load i64, ptr %i.a, align 8, !tbaa !25
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define dso_local { <2 x float>, <2 x float> } @_ZNK4pbrt15RealisticCamera14BoundExitPupilEff(ptr noundef nonnull align 8 dereferenceable(1128) %0, float noundef %1, float noundef %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.a = alloca float, align 4                    ; 2 uses
  %i.b = alloca float, align 4                    ; 2 uses
  %4 = alloca %"class.pbrt::Ray", align 8         ; 10 uses
  store float %1, ptr %i.a, align 4, !tbaa !14
  store float %2, ptr %i.b, align 4, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 920 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !142
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 936 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !140
  %i.g = getelementptr [16 x i8], ptr %i.d, i64 %i.f
  %i.h = getelementptr i8, ptr %i.g, i64 -4
  %i.i = load float, ptr %i.h, align 4, !tbaa !173
  %i.j = insertelement <2 x float> poison, float %i.i, i64 0
  %i.k = shufflevector <2 x float> %i.j, <2 x float> poison, <2 x i32> zeroinitializer
  %i.l = fmul <2 x float> %i.k, <float 1.500000e+00, float -1.500000e+00> ; 4 uses
  %i.m = shufflevector <2 x float> %i.l, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.n = fcmp olt <2 x float> %i.l, %i.m
  %i.o = shufflevector <2 x float> %i.l, <2 x float> poison, <2 x i32> zeroinitializer
  %i.p = shufflevector <2 x float> %i.l, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.q = select <2 x i1> %i.n, <2 x float> %i.o, <2 x float> %i.p ; 4 uses
  %i.r = load <2 x i32>, ptr @_ZN4pbrt6PrimesE, align 16, !tbaa !77 ; 3 uses
  %i.s = extractelement <2 x i32> %i.r, i64 0
  %i.t = zext i32 %i.s to i64                     ; 5 uses
  %i.u = udiv i64 -1, %i.t
  %i.v = sub nuw i64 %i.u, %i.t
  %i.w = uitofp <2 x i32> %i.r to <2 x float>
  %i.x = extractelement <2 x i32> %i.r, i64 1
  %i.y = zext i32 %i.x to i64                     ; 5 uses
  %i.z = udiv i64 -1, %i.y
  %i.aa = sub nuw i64 %i.z, %i.y
  %i.ab = fdiv nnan <2 x float> splat (float 1.000000e+00), %i.w ; 2 uses
  %.sroa.27.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 12
  %.sroa.23.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ae = extractelement <2 x float> %i.ab, i64 0
  %i.af = extractelement <2 x float> %i.ab, i64 1
  br label %bb.c

bb.b:                                             ; preds = %bb.f
  %i.ag = fcmp ogt <2 x float> %.sroa.075.1, %.sroa.12.1
  %5 = freeze <2 x i1> %i.ag
  %6 = bitcast <2 x i1> %5 to i2
  %.not = icmp eq i2 %6, 0
  br i1 %.not, label %bb.l, label %bb.g

bb.c:                                             ; preds = %bb.a, %bb.f
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.f ] ; 5 uses
  %.sroa.12.0104 = phi <2 x float> [ splat (float f0xFF7FFFFF), %bb.a ], [ %.sroa.12.1, %bb.f ] ; 6 uses
  %.sroa.075.0103 = phi <2 x float> [ splat (float f0x7F7FFFFF), %bb.a ], [ %.sroa.075.1, %bb.f ] ; 6 uses
  %i.ah = trunc nuw nsw i64 %indvars.iv to i32
  %i.ai = uitofp nneg i32 %i.ah to float
  %i.aj = fadd nnan float %i.ai, 5.000000e-01
  %i.ak = fmul nnan float %i.aj, f0x35800000      ; 2 uses
  %i.al = fsub nnan float 1.000000e+00, %i.ak
  %i.am = fmul float %i.al, %1
  %i.an = fmul float %i.ak, %2
  %i.ao = fadd float %i.am, %i.an                 ; 2 uses
  %.sroa.062.4.vec.insert = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ao, i64 0
  %.not.i = icmp eq i64 %indvars.iv, 0
  br i1 %.not.i, label %_ZN4pbrt14RadicalInverseEim.exit36, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.023.i = phi i64 [ %i.ap, %.lr.ph.i ], [ %indvars.iv, %bb.c ] ; 3 uses
  %.01922.i = phi i64 [ %i.aq, %.lr.ph.i ], [ 0, %bb.c ]
  %.02021.i = phi float [ %i.ar, %.lr.ph.i ], [ 1.000000e+00, %bb.c ]
  %i.ap = udiv i64 %.023.i, %i.t                  ; 2 uses
  %reass.add.i = sub i64 %.01922.i, %i.ap
  %reass.mul.i = mul i64 %reass.add.i, %i.t
  %i.aq = add i64 %reass.mul.i, %.023.i           ; 3 uses
  %i.ar = fmul float %i.ae, %.02021.i             ; 2 uses
  %i.as = icmp samesign uge i64 %.023.i, %i.t
  %i.at = icmp ult i64 %i.aq, %i.v
  %i.au = select i1 %i.as, i1 %i.at, i1 false
  br i1 %i.au, label %.lr.ph.i, label %.lr.ph.i28.preheader, !llvm.loop !421

.lr.ph.i28.preheader:                             ; preds = %.lr.ph.i
  %i.av = uitofp i64 %i.aq to float
  %i.aw = fmul float %i.ar, %i.av                 ; 2 uses
  %i.ax = fcmp ogt float %i.aw, f0x3F7FFFFF
  %.sroa.speculated.i = select i1 %i.ax, float f0x3F7FFFFF, float %i.aw
  br label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %.lr.ph.i28.preheader, %.lr.ph.i28
  %.023.i29 = phi i64 [ %i.ay, %.lr.ph.i28 ], [ %indvars.iv, %.lr.ph.i28.preheader ] ; 3 uses
  %.01922.i30 = phi i64 [ %i.az, %.lr.ph.i28 ], [ 0, %.lr.ph.i28.preheader ]
  %.02021.i31 = phi float [ %i.ba, %.lr.ph.i28 ], [ 1.000000e+00, %.lr.ph.i28.preheader ]
  %i.ay = udiv i64 %.023.i29, %i.y                ; 2 uses
  %reass.add.i32 = sub i64 %.01922.i30, %i.ay
  %reass.mul.i33 = mul i64 %reass.add.i32, %i.y
  %i.az = add i64 %reass.mul.i33, %.023.i29       ; 3 uses
  %i.ba = fmul float %i.af, %.02021.i31           ; 2 uses
  %i.bb = icmp samesign uge i64 %.023.i29, %i.y
  %i.bc = icmp ult i64 %i.az, %i.aa
  %i.bd = select i1 %i.bb, i1 %i.bc, i1 false
  br i1 %i.bd, label %.lr.ph.i28, label %._crit_edge.loopexit.i34, !llvm.loop !421

._crit_edge.loopexit.i34:                         ; preds = %.lr.ph.i28
  %i.be = uitofp i64 %i.az to float
  %i.bf = fmul float %i.ba, %i.be
  br label %_ZN4pbrt14RadicalInverseEim.exit36

_ZN4pbrt14RadicalInverseEim.exit36:               ; preds = %bb.c, %._crit_edge.loopexit.i34
  %.sroa.speculated.i115 = phi float [ %.sroa.speculated.i, %._crit_edge.loopexit.i34 ], [ 0.000000e+00, %bb.c ] ; 2 uses
  %i.bg = phi float [ %i.bf, %._crit_edge.loopexit.i34 ], [ 0.000000e+00, %bb.c ] ; 2 uses
  %i.bh = fcmp ogt float %i.bg, f0x3F7FFFFF
  %.sroa.speculated.i35 = select i1 %i.bh, float f0x3F7FFFFF, float %i.bg ; 2 uses
  %i.bi = fsub float 1.000000e+00, %.sroa.speculated.i115
  %i.bj = fsub float 1.000000e+00, %.sroa.speculated.i35
  %i.bk = insertelement <2 x float> poison, float %i.bj, i64 0
  %i.bl = insertelement <2 x float> %i.bk, float %.sroa.speculated.i115, i64 1
  %i.bm = fmul <2 x float> %i.q, %i.bl
  %i.bn = shufflevector <2 x float> %i.bm, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bo = insertelement <2 x float> poison, float %i.bi, i64 0
  %i.bp = insertelement <2 x float> %i.bo, float %.sroa.speculated.i35, i64 1
  %i.bq = fmul <2 x float> %i.q, %i.bp
  %i.br = fadd <2 x float> %i.bq, %i.bn           ; 10 uses
  %i.bs = load ptr, ptr %i.c, align 8, !tbaa !142
  %i.bt = load i64, ptr %i.e, align 8, !tbaa !140
  %i.bu = getelementptr [16 x i8], ptr %i.bs, i64 %i.bt
  %i.bv = getelementptr i8, ptr %i.bu, i64 -12
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !144
  %i.bx = extractelement <2 x float> %i.br, i64 0
  %i.by = fcmp ult <2 x float> %i.br, %.sroa.075.0103
  %i.bz = extractelement <2 x i1> %i.by, i64 0
  %i.ca = fcmp ugt <2 x float> %i.br, %.sroa.12.0104
  %i.cb = extractelement <2 x i1> %i.ca, i64 0
  %or.cond.i = select i1 %i.bz, i1 true, i1 %i.cb
  %i.cc = fcmp ult <2 x float> %i.br, %.sroa.075.0103
  %i.cd = extractelement <2 x i1> %i.cc, i64 1
  %or.cond = select i1 %or.cond.i, i1 true, i1 %i.cd
  br i1 %or.cond, label %_ZN4pbrt6InsideIfEEbNS_6Point2IT_EERKNS_7Bounds2IS2_EE.exit.thread, label %_ZN4pbrt6InsideIfEEbNS_6Point2IT_EERKNS_7Bounds2IS2_EE.exit

_ZN4pbrt6InsideIfEEbNS_6Point2IT_EERKNS_7Bounds2IS2_EE.exit.thread: ; preds = %_ZN4pbrt14RadicalInverseEim.exit36
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  br label %bb.d

_ZN4pbrt6InsideIfEEbNS_6Point2IT_EERKNS_7Bounds2IS2_EE.exit: ; preds = %_ZN4pbrt14RadicalInverseEim.exit36
  %i.ce = fcmp ugt <2 x float> %i.br, %.sroa.12.0104
  %i.cf = extractelement <2 x i1> %i.ce, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  br i1 %i.cf, label %bb.d, label %.critedge

bb.d:                                             ; preds = %_ZN4pbrt6InsideIfEEbNS_6Point2IT_EERKNS_7Bounds2IS2_EE.exit.thread, %_ZN4pbrt6InsideIfEEbNS_6Point2IT_EERKNS_7Bounds2IS2_EE.exit
  %i.cg = fsub float %i.bx, %i.ao
  %i.ch = insertelement <2 x float> %i.br, float %i.cg, i64 0
  store <2 x float> %.sroa.062.4.vec.insert, ptr %4, align 8
  store float 0.000000e+00, ptr %.sroa.27.0..sroa_idx.i, align 8
  store <2 x float> %i.ch, ptr %i.ac, align 4
  %i.ci = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bw, i64 0
  store <2 x float> %i.ci, ptr %.sroa.23.0..sroa_idx.i, align 4
  store i64 0, ptr %i.ad, align 8, !tbaa !54
  %i.cj = call noundef float @_ZNK4pbrt15RealisticCamera19TraceLensesFromFilmERKNS_3RayEPS1_(ptr noundef nonnull align 8 dereferenceable(1128) %0, ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef null)
  %i.ck = fcmp une float %i.cj, 0.000000e+00
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br i1 %i.ck, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.cl = fcmp olt <2 x float> %i.br, %.sroa.075.0103
  %i.cm = select <2 x i1> %i.cl, <2 x float> %i.br, <2 x float> %.sroa.075.0103
  %i.cn = fcmp olt <2 x float> %.sroa.12.0104, %i.br
  %i.co = select <2 x i1> %i.cn, <2 x float> %i.br, <2 x float> %.sroa.12.0104
  br label %bb.f

.critedge:                                        ; preds = %_ZN4pbrt6InsideIfEEbNS_6Point2IT_EERKNS_7Bounds2IS2_EE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.f

bb.f:                                             ; preds = %.critedge, %bb.e, %bb.d
  %.sroa.075.1 = phi <2 x float> [ %.sroa.075.0103, %.critedge ], [ %i.cm, %bb.e ], [ %.sroa.075.0103, %bb.d ] ; 5 uses
  %.sroa.12.1 = phi <2 x float> [ %.sroa.12.0104, %.critedge ], [ %i.co, %bb.e ], [ %.sroa.12.0104, %bb.d ] ; 5 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 1048576
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !422

bb.g:                                             ; preds = %bb.b
  %i.cp = load i32, ptr @_ZN4pbrt7logging8logLevelE, align 4, !tbaa !28
  %i.cq = icmp slt i32 %i.cp, 1
  br i1 %i.cq, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  store ptr %i.cr, ptr %3, align 8, !tbaa !31, !alias.scope !425
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.cs, align 8, !tbaa !34, !alias.scope !425
  store i8 0, ptr %i.cr, align 8, !tbaa !25, !alias.scope !425
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRfJS2_EEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_(ptr noundef nonnull align 8 %3, ptr noundef nonnull @.str.43, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %_ZN4pbrt12StringPrintfIJRfS1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ct = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cu = load ptr, ptr %3, align 8, !tbaa !35, !alias.scope !425 ; 2 uses
  %i.cv = icmp eq ptr %i.cu, %i.cr
  br i1 %i.cv, label %common.resume.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.i
  %i.cw = load i64, ptr %i.cr, align 8, !tbaa !25, !alias.scope !425
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cx) #31
  br label %common.resume.i

common.resume.i:                                  ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.dd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i ], [ %i.ct, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.ct, %bb.i ]
  resume { ptr, i32 } %common.resume.op.i

_ZN4pbrt12StringPrintfIJRfS1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i: ; preds = %bb.h
  %i.cy = load ptr, ptr %3, align 8, !tbaa !35
  invoke void @_ZN4pbrt3LogENS_8LogLevelEPKciS2_(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 886, ptr noundef %i.cy)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %_ZN4pbrt12StringPrintfIJRfS1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i
  %i.cz = load ptr, ptr %3, align 8, !tbaa !35    ; 2 uses
  %i.da = icmp eq ptr %i.cz, %i.cr
  br i1 %i.da, label %_ZN4pbrt3LogIJRfS1_EEEvNS_8LogLevelEPKciS4_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.j
  %i.db = load i64, ptr %i.cr, align 8, !tbaa !25
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dc) #31
  br label %_ZN4pbrt3LogIJRfS1_EEEvNS_8LogLevelEPKciS4_DpOT_.exit

bb.k:                                             ; preds = %_ZN4pbrt12StringPrintfIJRfS1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i
  %i.dd = landingpad { ptr, i32 }
          cleanup
  %i.de = load ptr, ptr %3, align 8, !tbaa !35    ; 2 uses
  %i.df = icmp eq ptr %i.de, %i.cr
  br i1 %i.df, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i: ; preds = %bb.k
  %i.dg = load i64, ptr %i.cr, align 8, !tbaa !25
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.dh) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %common.resume.i

_ZN4pbrt3LogIJRfS1_EEEvNS_8LogLevelEPKciS4_DpOT_.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.m

bb.l:                                             ; preds = %bb.b
  %shift = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %shift, %i.q ; 2 uses
  %foldExtExtBinop123 = fmul <2 x float> %foldExtExtBinop, %foldExtExtBinop ; 2 uses
  %foldExtExtBinop125 = fadd <2 x float> %foldExtExtBinop123, %foldExtExtBinop123
  %i.di = extractelement <2 x float> %foldExtExtBinop125, i64 0
  %sqrt.i = tail call noundef float @llvm.sqrt.f32(float %i.di)
  %i.dj = fmul float %sqrt.i, 2.000000e+00
  %i.dk = fmul float %i.dj, f0x3A800000
  %i.dl = insertelement <2 x float> poison, float %i.dk, i64 0
  %i.dm = shufflevector <2 x float> %i.dl, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dn = fsub <2 x float> %.sroa.075.1, %i.dm
  %i.do = fadd <2 x float> %i.dm, %.sroa.12.1
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %_ZN4pbrt3LogIJRfS1_EEEvNS_8LogLevelEPKciS4_DpOT_.exit, %bb.l
  %.sroa.075.2 = phi <2 x float> [ %.sroa.075.1, %_ZN4pbrt3LogIJRfS1_EEEvNS_8LogLevelEPKciS4_DpOT_.exit ], [ %.sroa.075.1, %bb.g ], [ %i.dn, %bb.l ]
  %.sroa.12.2 = phi <2 x float> [ %.sroa.12.1, %_ZN4pbrt3LogIJRfS1_EEEvNS_8LogLevelEPKciS4_DpOT_.exit ], [ %.sroa.12.1, %bb.g ], [ %i.do, %bb.l ]
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.075.2, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.12.2, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZNK4pbrt15RealisticCamera15SampleExitPupilENS_6Point2IfEES2_(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.pstd::optional.67") align 4 captures(none) initializes((0, 17)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1128) %1, <2 x float> %2, <2 x float> %3) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = fmul <2 x float> %2, %2                  ; 2 uses
  %shift = shufflevector <2 x float> %i.a, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.a, %shift
  %i.b = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %sqrt = tail call float @llvm.sqrt.f32(float %i.b) ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 832
  %i.d = load i64, ptr %i.c, align 8, !tbaa !53
  %i.e = and i64 %i.d, 144115188075855871
  %i.f = inttoptr i64 %i.e to ptr
  %.0.in.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.0.i.i.i = load float, ptr %.0.in.i.i.i, align 8, !tbaa !135
  %i.g = fmul float %.0.i.i.i, 5.000000e-01
  %i.h = fdiv float %sqrt, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 1120
  %i.j = load i64, ptr %i.i, align 8, !tbaa !148  ; 2 uses
  %i.k = uitofp i64 %i.j to float
  %i.l = fmul float %i.h, %i.k
  %i.m = fptosi float %i.l to i32
  %i.n = trunc i64 %i.j to i32
  %i.o = add i32 %i.n, -1
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.o, i32 %i.m)
  %i.p = sext i32 %.sroa.speculated to i64
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 1104
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !151
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.p ; 2 uses
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.s, align 4 ; 3 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.t = load <2 x float>, ptr %.sroa.8.0..sroa_idx, align 4 ; 3 uses
  %i.u = fcmp ogt <2 x float> %.sroa.0.0.copyload, %i.t
  %4 = freeze <2 x i1> %i.u
  %5 = bitcast <2 x i1> %4 to i2
  %.not = icmp eq i2 %5, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %0, i8 0, i64 20, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.v = fsub <2 x float> %i.t, %.sroa.0.0.copyload ; 2 uses
  %shift37 = shufflevector <2 x float> %i.v, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop38 = fmul <2 x float> %i.v, %shift37
  %i.w = extractelement <2 x float> %foldExtExtBinop38, i64 0
  %i.x = fdiv float 1.000000e+00, %i.w
  %i.y = fcmp une float %i.b, 0.000000e+00
  %i.z = insertelement <2 x float> poison, float %sqrt, i64 0
  %i.aa = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ab = fdiv <2 x float> %2, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 920
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !142
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 936
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !140
  %i.ag = getelementptr [16 x i8], ptr %i.ad, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.ag, i64 -12
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !144
  %i.aj = fsub <2 x float> splat (float 1.000000e+00), %3
  %i.ak = fmul <2 x float> %i.aj, %.sroa.0.0.copyload
  %i.al = fmul <2 x float> %3, %i.t
  %i.am = fadd <2 x float> %i.ak, %i.al           ; 2 uses
  %i.an = insertelement <2 x i1> poison, i1 %i.y, i64 0
  %i.ao = shufflevector <2 x i1> %i.an, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.ap = select <2 x i1> %i.ao, <2 x float> %i.ab, <2 x float> <float 1.000000e+00, float 0.000000e+00> ; 2 uses
  %i.aq = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ar = fmul <2 x float> %i.ap, %i.aq           ; 2 uses
  %i.as = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.at = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.au = fmul <2 x float> %i.as, %i.at           ; 2 uses
  %i.av = fsub <2 x float> %i.ar, %i.au
  %i.aw = fadd <2 x float> %i.ar, %i.au
  %i.ax = shufflevector <2 x float> %i.av, <2 x float> %i.aw, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.ax, ptr %0, align 4
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.ai, ptr %.sroa.0.sroa.5.0..sroa_idx, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.x, ptr %.sroa.4.0..sroa_idx, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i8 [ 0, %bb.b ], [ 1, %bb.c ]
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.ay, align 4, !tbaa !427
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4pbrt15RealisticCamera11GenerateRayENS_12CameraSampleERNS_18SampledWavelengthsE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.pstd::optional.26") align 8 captures(none) initializes((0, 28), (32, 57)) %0, ptr noundef nonnull align 8 dereferenceable(1128) %1, ptr nofree noundef readonly byval(%"struct.pbrt::CameraSample") align 8 captures(none) %2, ptr nofree nonnull readnone align 4 captures(none) %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.pbrt::Ray", align 8         ; 8 uses
  %5 = alloca %"class.pbrt::Ray", align 8         ; 11 uses
  %6 = alloca %"class.pbrt::Ray", align 8         ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 832
  %i.b = load i64, ptr %i.a, align 8, !tbaa !53
  %i.c = and i64 %i.b, 144115188075855871
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 896
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 904
  %.0.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.0.i.i.i.i = load float, ptr %.0.in.i.i.i.i, align 8, !tbaa !135, !noalias !430
  %i.g = fmul float %.0.i.i.i.i, 5.000000e-01
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 1120
  %i.i = load i64, ptr %i.h, align 8, !tbaa !148, !noalias !430 ; 2 uses
  %i.j = uitofp i64 %i.i to float
  %i.k = trunc i64 %i.i to i32
  %i.l = add i32 %i.k, -1
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 1104
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !151, !noalias !430
  %.sroa.0.0.copyload.i.i7.i.i.i = load i64, ptr %i.d, align 8
  %i.o = load <2 x float>, ptr %2, align 8, !tbaa !14
  %i.p = insertelement <2 x i64> poison, i64 %.sroa.0.0.copyload.i.i7.i.i.i, i64 0
  %i.q = shufflevector <2 x i64> %i.p, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.r = lshr <2 x i64> %i.q, <i64 0, i64 32>
  %i.s = trunc <2 x i64> %i.r to <2 x i32>
  %i.t = sitofp <2 x i32> %i.s to <2 x float>
  %i.u = fdiv <2 x float> %i.o, %i.t              ; 2 uses
  %i.v = load <2 x float>, ptr %i.e, align 8, !tbaa !14
  %i.w = load <2 x float>, ptr %i.f, align 8, !tbaa !14
  %i.x = fsub <2 x float> splat (float 1.000000e+00), %i.u
  %i.y = fmul <2 x float> %i.v, %i.x
  %i.z = fmul <2 x float> %i.u, %i.w
  %i.aa = fadd <2 x float> %i.y, %i.z             ; 7 uses
  %i.ab = fmul <2 x float> %i.aa, %i.aa           ; 2 uses
  %shift = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.ab, %shift
  %i.ac = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.ac) ; 2 uses
  %i.ad = fdiv float %sqrt.i, %i.g
  %i.ae = fmul float %i.ad, %i.j
  %i.af = fptosi float %i.ae to i32
  %.sroa.speculated.i = tail call i32 @llvm.smin.i32(i32 %i.l, i32 %i.af)
  %i.ag = sext i32 %.sroa.speculated.i to i64
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %i.ag ; 2 uses
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %i.ah, align 4, !noalias !430 ; 4 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.ai = load <2 x float>, ptr %.sroa.8.0..sroa_idx.i, align 4, !noalias !430 ; 4 uses
  %i.aj = fcmp ogt <2 x float> %.sroa.0.0.copyload.i, %i.ai
  %i.ak = extractelement <2 x i1> %i.aj, i64 0
  %.sroa.0.4.vec.extract.i53 = extractelement <2 x float> %.sroa.0.0.copyload.i, i64 1 ; 2 uses
  %i.al = extractelement <2 x float> %i.ai, i64 1 ; 2 uses
  %i.am = fcmp ogt float %.sroa.0.4.vec.extract.i53, %i.al
  %i.an = select i1 %i.ak, i1 true, i1 %i.am
  br i1 %i.an, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, i8 0, i64 64, i1 false)
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.035.0.copyload = load <2 x float>, ptr %i.ao, align 8 ; 2 uses
  %i.ap = extractelement <2 x float> %i.aa, i64 0
  %i.aq = fneg float %i.ap                        ; 2 uses
  %i.ar = insertelement <2 x float> %i.aa, float %i.aq, i64 0
  %i.as = fcmp une float %i.ac, 0.000000e+00
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 920 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !142, !noalias !430
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 936 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !140, !noalias !430
  %i.ax = getelementptr [16 x i8], ptr %i.au, i64 %i.aw
  %i.ay = getelementptr i8, ptr %i.ax, i64 -12
  %i.az = load float, ptr %i.ay, align 4, !tbaa !144, !noalias !430 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.ba = fsub <2 x float> splat (float 1.000000e+00), %.sroa.035.0.copyload
  %i.bb = fmul <2 x float> %i.ba, %.sroa.0.0.copyload.i
  %i.bc = fmul <2 x float> %.sroa.035.0.copyload, %i.ai
  %i.bd = fadd <2 x float> %i.bb, %i.bc           ; 2 uses
  %i.be = insertelement <2 x float> %i.aa, float %i.aq, i64 0
  %i.bf = insertelement <2 x float> poison, float %sqrt.i, i64 0
  %i.bg = shufflevector <2 x float> %i.bf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bh = fdiv <2 x float> %i.be, %i.bg
  %i.bi = insertelement <2 x i1> poison, i1 %i.as, i64 0
  %i.bj = shufflevector <2 x i1> %i.bi, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.bk = select <2 x i1> %i.bj, <2 x float> %i.bh, <2 x float> <float 1.000000e+00, float 0.000000e+00> ; 2 uses
  %i.bl = shufflevector <2 x float> %i.bd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bm = fmul <2 x float> %i.bk, %i.bl           ; 2 uses
  %i.bn = shufflevector <2 x float> %i.bk, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bo = shufflevector <2 x float> %i.bd, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bp = fmul <2 x float> %i.bn, %i.bo           ; 2 uses
  %i.bq = fsub <2 x float> %i.bm, %i.bp
  %i.br = fadd <2 x float> %i.bm, %i.bp
  %i.bs = shufflevector <2 x float> %i.bq, <2 x float> %i.br, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.bt = fadd <2 x float> %i.bs, %i.aa
  %i.bu = fsub <2 x float> %i.bs, %i.aa
  %i.bv = shufflevector <2 x float> %i.bt, <2 x float> %i.bu, <2 x i32> <i32 0, i32 3> ; 3 uses
  store <2 x float> %i.ar, ptr %4, align 8
  %.sroa.27.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float 0.000000e+00, ptr %.sroa.27.0..sroa_idx.i, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 12
  store <2 x float> %i.bv, ptr %i.bw, align 4
  %.sroa.23.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.bx = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.az, i64 0
  store <2 x float> %i.bx, ptr %.sroa.23.0..sroa_idx.i, align 4
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 0, ptr %i.by, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %5, i8 0, i64 24, i1 false)
  %i.bz = call noundef float @_ZNK4pbrt15RealisticCamera19TraceLensesFromFilmERKNS_3RayEPS1_(ptr noundef nonnull align 8 dereferenceable(1128) %1, ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull %5) ; 2 uses
  %i.ca = fcmp oeq float %i.bz, 0.000000e+00
  br i1 %i.ca, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, i8 0, i64 64, i1 false)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 32
  %foldExtExtBinop94 = fsub <2 x float> %i.ai, %.sroa.0.0.copyload.i
  %i.cc = extractelement <2 x float> %foldExtExtBinop94, i64 0
  %i.cd = fsub float %i.al, %.sroa.0.4.vec.extract.i53
  %i.ce = fmul float %i.cc, %i.cd
  %i.cf = fdiv float 1.000000e+00, %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ch = load float, ptr %i.cg, align 8, !tbaa !112 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 824
  %i.cj = load float, ptr %i.ci, align 8, !tbaa !48
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 828
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !113
  %i.cm = fsub float 1.000000e+00, %i.ch
  %i.cn = fmul float %i.cm, %i.cj
  %i.co = fmul float %i.ch, %i.cl
  %i.cp = fadd float %i.cn, %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 24
  store float %i.cp, ptr %i.cq, align 8, !tbaa !65
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 840
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !54
  store i64 %i.cs, ptr %i.cb, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  call void @_ZNK4pbrt17AnimatedTransformclERKNS_3RayEPf(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Ray") align 8 %6, ptr noundef nonnull align 8 dereferenceable(896) %1, ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef null)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 8 dereferenceable(40) %6, i64 28, i1 false)
  %i.ct = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  %i.cv = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %.sroa.012.0.copyload = load <2 x float>, ptr %i.cv, align 4 ; 3 uses
end_hunk_1
