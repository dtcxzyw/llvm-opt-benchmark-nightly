Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/transform_test?download=true
inline.NumInlined: 468
inline.NumDeleted: 185
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN24RotateFromTo_Simple_Test8TestBodyEv:bb.a
  %.pn57.pn = phi { ptr, i32 } [ %.pn57, %bb.az ], [ %i.ec, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %16) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  br label %bb.bg

bb.bb:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit79, %_ZN7testing7MessageD2Ev.exit90
  %i.ef = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !25
  %.not.i.i.i91 = icmp eq ptr %i.eg, null
  br i1 %.not.i.i.i91, label %_ZN7testing15AssertionResultD2Ev.exit96, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.eh = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i92 unwind label %bb.bf

.noexc.i.i92:                                     ; preds = %bb.bc
  br i1 %i.eh, label %bb.bd, label %_ZN7testing15AssertionResultD2Ev.exit96

bb.bd:                                            ; preds = %.noexc.i.i92
  %i.ei = load ptr, ptr %i.ef, align 8, !tbaa !25 ; 4 uses
  %i.ej = icmp eq ptr %i.ei, null
  br i1 %i.ej, label %_ZN7testing15AssertionResultD2Ev.exit96, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ek = load ptr, ptr %i.ei, align 8, !tbaa !29 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 16 ; 2 uses
  %i.em = icmp eq ptr %i.ek, %i.el
  br i1 %i.em, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i94, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i93

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i93: ; preds = %bb.be
  %i.en = load i64, ptr %i.el, align 8, !tbaa !35
  %i.eo = add i64 %i.en, 1
  call void @_ZdlPvm(ptr noundef %i.ek, i64 noundef %i.eo) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i94

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i94: ; preds = %bb.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i93
  call void @_ZdlPvm(ptr noundef nonnull %i.ei, i64 noundef 32) #21
  br label %_ZN7testing15AssertionResultD2Ev.exit96

bb.bf:                                            ; preds = %bb.bc
  %i.ep = landingpad { ptr, i32 }
          catch ptr null
  %i.eq = extractvalue { ptr, i32 } %i.ep, 0
  call void @__clang_call_terminate(ptr %i.eq) #20
  unreachable

_ZN7testing15AssertionResultD2Ev.exit96:          ; preds = %bb.bb, %.noexc.i.i92, %bb.bd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i94
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  ret void

bb.bg:                                            ; preds = %bb.ba, %bb.ah, %bb.o
  %.pn57.pn.pn = phi { ptr, i32 } [ %.pn57.pn, %bb.ba ], [ %.pn54.pn, %bb.ah ], [ %.pn.pn, %bb.o ]
  resume { ptr, i32 } %.pn57.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN4pbrt12RotateFromToENS_7Vector3IfEES1_(ptr dead_on_unwind noalias writable sret(%"class.pbrt::Transform") align 4 %0, <2 x float> %1, float %2, <2 x float> %3, float %4) local_unnamed_addr #9 comdat {
bb.a:
  %.sroa.072.0.vec.extract = extractelement <2 x float> %1, i64 0
  %i.a = tail call noundef float @llvm.fabs.f32(float %.sroa.072.0.vec.extract)
  %i.b = fcmp olt float %i.a, 7.200000e-01
  %.sroa.068.0.vec.extract = extractelement <2 x float> %3, i64 0
  %i.c = tail call float @llvm.fabs.f32(float %.sroa.068.0.vec.extract)
  %i.d = fcmp olt float %i.c, 7.200000e-01
  %or.cond = select i1 %i.b, i1 %i.d, i1 false
  br i1 %or.cond, label %..preheader_crit_edge, label %bb.b

..preheader_crit_edge:                            ; preds = %bb.a
  %.pre202 = extractelement <2 x float> %3, i64 1
  br label %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit107.2.2

bb.b:                                             ; preds = %bb.a
  %.sroa.068.4.vec.extract = extractelement <2 x float> %3, i64 1
  %i.e = shufflevector <2 x float> %3, <2 x float> %1, <2 x i32> <i32 1, i32 3>
  %i.f = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.e)
  %i.g = fcmp olt <2 x float> %i.f, splat (float 7.200000e-01) ; 2 uses
  %i.h = extractelement <2 x i1> %i.g, i64 0
  %i.i = extractelement <2 x i1> %i.g, i64 1
  %or.cond166 = select i1 %i.i, i1 %i.h, i1 false ; 2 uses
  %spec.select = select i1 %or.cond166, float 1.000000e+00, float 0.000000e+00
  %spec.select167 = select i1 %or.cond166, float 0.000000e+00, float 1.000000e+00
  %i.j = insertelement <2 x float> <float 0.000000e+00, float poison>, float %spec.select, i64 1
  br label %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit107.2.2

_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit107.2.2:   ; preds = %..preheader_crit_edge, %bb.b
  %.sroa.03.4.vec.extract.i77.pre-phi = phi float [ %.pre202, %..preheader_crit_edge ], [ %.sroa.068.4.vec.extract, %bb.b ] ; 2 uses
  %.sroa.14162.0 = phi float [ 0.000000e+00, %..preheader_crit_edge ], [ %spec.select167, %bb.b ] ; 3 uses
  %i.k = phi <2 x float> [ <float 1.000000e+00, float 0.000000e+00>, %..preheader_crit_edge ], [ %i.j, %bb.b ] ; 2 uses
  %i.l = fsub float %.sroa.14162.0, %2            ; 7 uses
  %i.m = insertelement <5 x float> <float poison, float poison, float poison, float 1.000000e+00, float 1.000000e+00>, float %.sroa.14162.0, i64 2
  %i.n = shufflevector <2 x float> %i.k, <2 x float> poison, <5 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison>
  %i.o = shufflevector <5 x float> %i.n, <5 x float> %i.m, <5 x i32> <i32 0, i32 1, i32 7, i32 8, i32 9> ; 2 uses
  %i.p = shufflevector <2 x float> %1, <2 x float> poison, <5 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison>
  %i.q = shufflevector <5 x float> %i.p, <5 x float> <float poison, float poison, float poison, float 0.000000e+00, float 0.000000e+00>, <5 x i32> <i32 0, i32 1, i32 poison, i32 8, i32 9>
  %i.r = insertelement <5 x float> %i.q, float %2, i64 2
  %i.s = fsub <5 x float> %i.o, %i.r
  %i.t = shufflevector <5 x float> %i.s, <5 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 4> ; 2 uses
  %i.u = fsub float %.sroa.14162.0, %4            ; 7 uses
  %i.v = shufflevector <2 x float> %3, <2 x float> poison, <5 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.w = shufflevector <5 x float> %i.v, <5 x float> <float poison, float poison, float poison, float 0.000000e+00, float 0.000000e+00>, <5 x i32> <i32 0, i32 poison, i32 poison, i32 8, i32 9>
  %i.x = insertelement <5 x float> %i.w, float %.sroa.03.4.vec.extract.i77.pre-phi, i64 1
  %i.y = insertelement <5 x float> %i.x, float %4, i64 2
  %i.z = fsub <5 x float> %i.o, %i.y
  %i.aa = shufflevector <5 x float> %i.z, <5 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 4>
  %i.ab = fmul float %i.l, %i.u
  %i.ac = shufflevector <2 x float> %i.k, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.ad = shufflevector <4 x float> %i.ac, <4 x float> <float poison, float 1.000000e+00, float poison, float 1.000000e+00>, <4 x i32> <i32 0, i32 5, i32 2, i32 7> ; 2 uses
  %i.ae = shufflevector <2 x float> %1, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.af = shufflevector <4 x float> %i.ae, <4 x float> <float poison, float 0.000000e+00, float poison, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.ag = fsub <4 x float> %i.ad, %i.af           ; 3 uses
  %i.ah = shufflevector <4 x float> %i.ag, <4 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 2, i32 2, i32 2, i32 3> ; 4 uses
  %i.ai = shufflevector <2 x float> %3, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.aj = shufflevector <4 x float> %i.ai, <4 x float> <float poison, float 0.000000e+00, float poison, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 poison, i32 7>
  %i.ak = insertelement <4 x float> %i.aj, float %.sroa.03.4.vec.extract.i77.pre-phi, i64 2
  %i.al = fsub <4 x float> %i.ad, %i.ak           ; 3 uses
  %i.am = shufflevector <4 x float> %i.al, <4 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 2, i32 2, i32 2, i32 3> ; 5 uses
  %foldExtExtBinop = fmul <8 x float> %i.ah, %i.am
  %i.an = extractelement <8 x float> %foldExtExtBinop, i64 0
  %i.ao = extractelement <4 x float> %i.ag, i64 2 ; 3 uses
  %i.ap = extractelement <4 x float> %i.al, i64 2 ; 3 uses
  %i.aq = fmul float %i.ao, %i.ap
  %i.ar = fadd float %i.an, %i.aq
  %i.as = fadd float %i.ab, %i.ar
  %i.at = fmul float %i.as, 4.000000e+00
  %i.au = fmul float %i.l, %i.l
  %foldExtExtBinop204 = fmul <8 x float> %i.ah, %i.ah
  %i.av = extractelement <8 x float> %foldExtExtBinop204, i64 0
  %i.aw = fmul float %i.ao, %i.ao
  %i.ax = fadd float %i.av, %i.aw
  %i.ay = fadd float %i.au, %i.ax                 ; 2 uses
  %i.az = fmul float %i.u, %i.u
  %foldExtExtBinop206 = fmul <8 x float> %i.am, %i.am
  %i.ba = extractelement <8 x float> %foldExtExtBinop206, i64 0
  %i.bb = fmul float %i.ap, %i.ap
  %i.bc = fadd float %i.ba, %i.bb
  %i.bd = fadd float %i.az, %i.bc                 ; 2 uses
  %i.be = fmul float %i.ay, %i.bd
  %.scalar = fdiv float %i.at, %i.be              ; 2 uses
  %i.bf = insertelement <3 x float> <float poison, float -0.000000e+00, float -0.000000e+00>, float %.scalar, i64 0 ; 2 uses
  %i.bg = shufflevector <3 x float> %i.bf, <3 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 2>
  %i.bh = fmul float %.scalar, %i.u
  %.scalar208 = fdiv float 2.000000e+00, %i.ay    ; 2 uses
  %i.bi = insertelement <3 x float> <float poison, float 0.000000e+00, float 0.000000e+00>, float %.scalar208, i64 0 ; 2 uses
  %i.bj = shufflevector <3 x float> %i.bi, <3 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 2>
  %i.bk = fmul float %.scalar208, %i.l
  %i.bl = fmul float %i.bk, %i.l
  %i.bm = fsub float 1.000000e+00, %i.bl
  %.scalar209 = fdiv float 2.000000e+00, %i.bd    ; 2 uses
  %i.bn = insertelement <3 x float> <float poison, float 0.000000e+00, float 0.000000e+00>, float %.scalar209, i64 0 ; 2 uses
  %i.bo = shufflevector <3 x float> %i.bn, <3 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 2>
  %i.bp = fmul float %.scalar209, %i.u
  %i.bq = fmul float %i.bp, %i.u
  %i.br = fsub float %i.bm, %i.bq
  %i.bs = fmul <8 x float> %i.bj, %i.ah
  %i.bt = fmul <8 x float> %i.bs, %i.t
  %i.bu = fsub <8 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, %i.bt
  %i.bv = fmul <8 x float> %i.bo, %i.am
  %i.bw = fmul <8 x float> %i.bv, %i.aa
  %i.bx = fsub <8 x float> %i.bu, %i.bw
  %i.by = fmul <8 x float> %i.bg, %i.am
  %i.bz = fmul <8 x float> %i.by, %i.t
  %i.ca = fadd <8 x float> %i.bx, %i.bz           ; 4 uses
  %i.cb = fmul float %i.bh, %i.l
  %i.cc = fadd float %i.br, %i.cb                 ; 2 uses
  store <8 x float> %i.ca, ptr %0, align 4
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cd = shufflevector <3 x float> %i.bi, <3 x float> poison, <2 x i32> zeroinitializer
  %i.ce = insertelement <2 x float> poison, float %i.l, i64 0
  %i.cf = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cg = fmul <2 x float> %i.cd, %i.cf
  %i.ch = shufflevector <4 x float> %i.ag, <4 x float> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ci = fmul <2 x float> %i.cg, %i.ch
  %i.cj = fsub <2 x float> zeroinitializer, %i.ci
  %i.ck = shufflevector <3 x float> %i.bn, <3 x float> poison, <2 x i32> zeroinitializer
  %i.cl = insertelement <2 x float> poison, float %i.u, i64 0
  %i.cm = shufflevector <2 x float> %i.cl, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cn = fmul <2 x float> %i.ck, %i.cm
  %i.co = shufflevector <4 x float> %i.al, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.cp = fmul <2 x float> %i.cn, %i.co
  %i.cq = fsub <2 x float> %i.cj, %i.cp
  %i.cr = shufflevector <3 x float> %i.bf, <3 x float> poison, <2 x i32> zeroinitializer
  %i.cs = fmul <2 x float> %i.cr, %i.cm
  %i.ct = fmul <2 x float> %i.cs, %i.ch
  %i.cu = fadd <2 x float> %i.cq, %i.ct           ; 3 uses
  store <2 x float> %i.cu, ptr %.sroa.21.0..sroa_idx, align 4
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float %i.cc, ptr %.sroa.25.0..sroa_idx, align 4
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  %.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.28.0..sroa_idx, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %.sroa.33.0..sroa_idx, align 4, !tbaa !35
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cw = shufflevector <8 x float> %i.ca, <8 x float> poison, <2 x i32> <i32 0, i32 4>
  store <2 x float> %i.cw, ptr %i.cv, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cx = insertelement <2 x float> %i.cu, float 0.000000e+00, i64 1
  store <2 x float> %i.cx, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.cy = shufflevector <8 x float> %i.ca, <8 x float> poison, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.cy, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %5 = shufflevector <2 x float> %i.cu, <2 x float> <float poison, float 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  store <2 x float> %5, ptr %.sroa.9.0..sroa_idx, align 4
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cz = shufflevector <8 x float> %i.ca, <8 x float> poison, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.cz, ptr %.sroa.11.0..sroa_idx, align 4
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store float %i.cc, ptr %.sroa.13.0..sroa_idx, align 4
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 108
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 124
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.14.0..sroa_idx, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %.sroa.18.0..sroa_idx, align 4, !tbaa !35
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN25RotateFromTo_Randoms_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.pbrt::Transform", align 4   ; 8 uses
  %2 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %3 = alloca %"class.testing::Message", align 8  ; 8 uses
  %4 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %5 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %i.c = alloca float, align 4                    ; 4 uses
  %i.d = alloca float, align 4                    ; 4 uses
  %6 = alloca %"class.testing::Message", align 8  ; 8 uses
  %7 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  br label %bb.c

bb.b:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit80
  ret void

bb.c:                                             ; preds = %bb.a, %_ZN7testing15AssertionResultD2Ev.exit80
  %.092 = phi i32 [ 0, %bb.a ], [ %i.ez, %_ZN7testing15AssertionResultD2Ev.exit80 ]
  %.sroa.084.091 = phi i64 [ -8846114313915602277, %bb.a ], [ %i.ac, %_ZN7testing15AssertionResultD2Ev.exit80 ] ; 2 uses
  %i.j = mul i64 %.sroa.084.091, 6364136223846793005
  %i.k = add i64 %i.j, -2720673578348880933       ; 2 uses
  %i.l = mul i64 %i.k, 6364136223846793005
  %i.m = add i64 %i.l, -2720673578348880933       ; 2 uses
  %i.n = mul i64 %i.m, 6364136223846793005
  %i.o = add i64 %i.n, -2720673578348880933       ; 2 uses
  %i.p = insertelement <2 x i64> poison, i64 %i.o, i64 0
  %i.q = insertelement <2 x i64> %i.p, i64 %i.k, i64 1 ; 3 uses
  %i.r = lshr <2 x i64> %i.q, splat (i64 45)
  %i.s = lshr <2 x i64> %i.q, splat (i64 27)
  %i.t = xor <2 x i64> %i.r, %i.s
  %i.u = trunc <2 x i64> %i.t to <2 x i32>        ; 2 uses
  %i.v = lshr <2 x i64> %i.q, splat (i64 59)
  %i.w = trunc nuw nsw <2 x i64> %i.v to <2 x i32>
  %i.x = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.u, <2 x i32> %i.u, <2 x i32> %i.w)
  %i.y = uitofp <2 x i32> %i.x to <2 x float>
  %i.z = fmul nnan <2 x float> %i.y, splat (float f0x2F800000) ; 2 uses
  %i.aa = fcmp olt <2 x float> %i.z, splat (float f0x3F7FFFFF)
  %i.ab = mul i64 %i.o, 6364136223846793005
  %i.ac = add i64 %i.ab, -2720673578348880933
  %i.ad = select <2 x i1> %i.aa, <2 x float> %i.z, <2 x float> splat (float f0x3F7FFFFF)
  %i.ae = fmul nnan <2 x float> %i.ad, splat (float f0x40C90FDB) ; 2 uses
  %i.af = extractelement <2 x float> %i.ae, i64 1 ; 2 uses
  %i.ag = call noundef float @cosf(float noundef %i.af) #19
  %i.ah = call noundef float @sinf(float noundef %i.af) #19
  %i.ai = extractelement <2 x float> %i.ae, i64 0 ; 2 uses
  %i.aj = call noundef float @cosf(float noundef %i.ai) #19
  %i.ak = call noundef float @sinf(float noundef %i.ai) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  %i.al = insertelement <2 x i64> poison, i64 %i.m, i64 0
  %i.am = insertelement <2 x i64> %i.al, i64 %.sroa.084.091, i64 1 ; 3 uses
  %i.an = lshr <2 x i64> %i.am, splat (i64 45)
  %i.ao = lshr <2 x i64> %i.am, splat (i64 27)
  %i.ap = xor <2 x i64> %i.an, %i.ao
  %i.aq = trunc <2 x i64> %i.ap to <2 x i32>      ; 2 uses
  %i.ar = lshr <2 x i64> %i.am, splat (i64 59)
  %i.as = trunc nuw nsw <2 x i64> %i.ar to <2 x i32>
  %i.at = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.aq, <2 x i32> %i.aq, <2 x i32> %i.as)
  %i.au = uitofp <2 x i32> %i.at to <2 x float>
  %i.av = fmul nnan <2 x float> %i.au, splat (float f0x2F800000) ; 2 uses
  %i.aw = fcmp olt <2 x float> %i.av, splat (float f0x3F7FFFFF)
  %i.ax = select <2 x i1> %i.aw, <2 x float> %i.av, <2 x float> splat (float f0x3F7FFFFF)
  %i.ay = fmul nnan <2 x float> %i.ax, splat (float 2.000000e+00)
  %i.az = fsub <2 x float> splat (float 1.000000e+00), %i.ay ; 5 uses
  %i.ba = fmul <2 x float> %i.az, %i.az
  %i.bb = fsub <2 x float> splat (float 1.000000e+00), %i.ba ; 2 uses
  %i.bc = fcmp ogt <2 x float> %i.bb, zeroinitializer
  %i.bd = select <2 x i1> %i.bc, <2 x float> %i.bb, <2 x float> zeroinitializer
  %i.be = call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.bd) ; 2 uses
  %i.bf = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bg = insertelement <2 x float> poison, float %i.ah, i64 0
  %i.bh = insertelement <2 x float> %i.bg, float %i.ag, i64 1
  %i.bi = fmul <2 x float> %i.bf, %i.bh           ; 3 uses
  %i.bj = shufflevector <2 x float> %i.bi, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bk = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bl = insertelement <2 x float> poison, float %i.aj, i64 0
  %i.bm = insertelement <2 x float> %i.bl, float %i.ak, i64 1
  %i.bn = fmul <2 x float> %i.bk, %i.bm           ; 2 uses
  %i.bo = extractelement <2 x float> %i.az, i64 0 ; 2 uses
  %i.bp = extractelement <2 x float> %i.az, i64 1 ; 2 uses
  call void @_ZN4pbrt12RotateFromToENS_7Vector3IfEES1_(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Transform") align 4 %1, <2 x float> %i.bj, float %i.bp, <2 x float> %i.bn, float %i.bo)
  %i.bq = load <5 x float>, ptr %1, align 4, !tbaa !16 ; 3 uses
  %i.br = shufflevector <5 x float> %i.bq, <5 x float> poison, <2 x i32> <i32 1, i32 4>
  %i.bs = fmul <2 x float> %i.bi, %i.br
  %i.bt = load <2 x float>, ptr %i.e, align 4, !tbaa !16 ; 2 uses
  %i.bu = shufflevector <2 x float> %i.bt, <2 x float> poison, <5 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bv = shufflevector <2 x float> %i.bi, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bw = shufflevector <5 x float> %i.bu, <5 x float> %i.bq, <2 x i32> <i32 5, i32 0>
  %i.bx = fmul <2 x float> %i.bv, %i.bw
  %i.by = fadd <2 x float> %i.bs, %i.bx
  %i.bz = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ca = shufflevector <2 x float> %i.bt, <2 x float> poison, <5 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison>
  %i.cb = shufflevector <5 x float> %i.bq, <5 x float> %i.ca, <2 x i32> <i32 2, i32 6>
  %i.cc = fmul <2 x float> %i.bz, %i.cb
  %i.cd = fadd <2 x float> %i.by, %i.cc           ; 3 uses
  %i.ce = load <2 x float>, ptr %i.f, align 4, !tbaa !16
  %i.cf = fmul <2 x float> %i.bj, %i.ce           ; 2 uses
  %shift = shufflevector <2 x float> %i.cf, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.cf, %shift
  %i.cg = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ch = load float, ptr %i.g, align 4, !tbaa !16
  %i.ci = fmul float %i.bp, %i.ch
  %i.cj = fadd float %i.cg, %i.ci                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.ck = fmul <2 x float> %i.cd, %i.cd           ; 2 uses
  %shift104 = shufflevector <2 x float> %i.ck, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop105 = fadd <2 x float> %i.ck, %shift104
  %i.cl = extractelement <2 x float> %foldExtExtBinop105, i64 0
  %i.cm = fmul float %i.cj, %i.cj
  %i.cn = fadd float %i.cl, %i.cm
  %i.co = call noundef float @sqrtf(float noundef %i.cn) #19
  %i.cp = fadd float %i.co, -1.000000e+00
  %i.cq = call noundef float @llvm.fabs.f32(float %i.cp)
  store float %i.cq, ptr %i.a, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store float 1.000000e-03, ptr %i.b, align 4, !tbaa !16
  call void @_ZN7testing8internal11CmpHelperLTIffEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %2, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.cr = load i8, ptr %2, align 8, !tbaa !22, !range !23, !noundef !24
  %i.cs = trunc nuw i8 %i.cr to i1
  br i1 %i.cs, label %bb.r, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.ct = load ptr, ptr %i.h, align 8, !tbaa !25  ; 2 uses
  %.not.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !29
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.f, %bb.e
  %i.cv = phi ptr [ %i.cu, %bb.f ], [ @.str.27, %bb.e ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef 106, ptr noundef %i.cv)
          to label %bb.g unwind label %bb.n

bb.g:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.h unwind label %bb.o

bb.h:                                             ; preds = %bb.g
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.cw = load ptr, ptr %3, align 8, !tbaa !32
  %.not.i.i.i = icmp eq ptr %i.cw, null
  br i1 %.not.i.i.i, label %_ZN7testing7MessageD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cx = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i unwind label %bb.l

.noexc.i.i:                                       ; preds = %bb.i
  br i1 %i.cx, label %bb.j, label %_ZN7testing7MessageD2Ev.exit

bb.j:                                             ; preds = %.noexc.i.i
  %i.cy = load ptr, ptr %3, align 8, !tbaa !32    ; 3 uses
  %i.cz = icmp eq ptr %i.cy, null
  br i1 %i.cz, label %_ZN7testing7MessageD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.da = load ptr, ptr %i.cy, align 8, !tbaa !34
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dc = load ptr, ptr %i.db, align 8
  call void %i.dc(ptr noundef nonnull align 8 dereferenceable(128) %i.cy) #19, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

bb.l:                                             ; preds = %bb.i
  %i.dd = landingpad { ptr, i32 }
          catch ptr null
  %i.de = extractvalue { ptr, i32 } %i.dd, 0
  call void @__clang_call_terminate(ptr %i.de) #20
  unreachable

end_hunk_0
