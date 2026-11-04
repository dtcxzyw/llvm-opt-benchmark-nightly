Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/transform_test?download=true
inline.NumInlined: 468
inline.NumDeleted: 185
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN24RotateFromTo_Simple_Test8TestBodyEv:bb.a
  %i.cu = getelementptr inbounds nuw i8, ptr %13, i64 8
  store float 0.000000e+00, ptr %i.cu, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  call void @_ZN4pbrt12RotateFromToENS_7Vector3IfEES1_(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Transform") align 4 %14, <2 x float> zeroinitializer, float 1.000000e+00, <2 x float> <float 0.000000e+00, float 1.000000e+00>, float 0.000000e+00)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  %i.cv = getelementptr inbounds nuw i8, ptr %14, i64 20
  %i.cw = load <5 x float>, ptr %14, align 4, !tbaa !16 ; 3 uses
  %i.cx = shufflevector <5 x float> %i.cw, <5 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.cy = fmul <2 x float> %i.cx, zeroinitializer
  %i.cz = load <2 x float>, ptr %i.cv, align 4, !tbaa !16
  %i.da = shufflevector <2 x float> %i.cz, <2 x float> poison, <5 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.db = shufflevector <5 x float> %i.cw, <5 x float> %i.da, <2 x i32> <i32 1, i32 5>
  %i.dc = fmul <2 x float> %i.db, zeroinitializer
  %i.dd = fadd <2 x float> %i.cy, %i.dc
  %i.de = shufflevector <5 x float> %i.cw, <5 x float> %i.da, <2 x i32> <i32 2, i32 6>
  %i.df = fadd <2 x float> %i.de, %i.dd
  %i.dg = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.dh = load <2 x float>, ptr %i.dg, align 4, !tbaa !16
  %i.di = fmul <2 x float> %i.dh, zeroinitializer ; 2 uses
  %shift125 = shufflevector <2 x float> %i.di, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop126 = fadd <2 x float> %i.di, %shift125
  %i.dj = extractelement <2 x float> %foldExtExtBinop126, i64 0
  %i.dk = getelementptr inbounds nuw i8, ptr %14, i64 40
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !16
  %i.dm = fadd float %i.dl, %i.dj
  store <2 x float> %i.df, ptr %15, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 8
  store float %i.dm, ptr %.sroa.2.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  call void @_ZN7testing8internal11CmpHelperEQIN4pbrt7Vector3IfEES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %16, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, ptr noundef nonnull align 4 dereferenceable(12) %13, ptr noundef nonnull align 4 dereferenceable(12) %15)
  %i.dn = load i8, ptr %16, align 8, !tbaa !22, !range !23, !noundef !24
  %i.do = trunc nuw i8 %i.dn to i1
  br i1 %i.do, label %bb.bb, label %bb.an

bb.an:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit79
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %bb.ao unwind label %bb.aw

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  %i.dp = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !25 ; 2 uses
  %.not.i.i86 = icmp eq ptr %i.dq, null
  br i1 %.not.i.i86, label %_ZNK7testing15AssertionResult15failure_messageEv.exit87, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !29
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit87

_ZNK7testing15AssertionResult15failure_messageEv.exit87: ; preds = %bb.ap, %bb.ao
  %i.ds = phi ptr [ %i.dr, %bb.ap ], [ @.str.27, %bb.ao ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %18, i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef 94, ptr noundef %i.ds)
          to label %bb.aq unwind label %bb.ax

bb.aq:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit87
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %bb.ar unwind label %bb.ay

bb.ar:                                            ; preds = %bb.aq
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  %i.dt = load ptr, ptr %17, align 8, !tbaa !32
  %.not.i.i.i88 = icmp eq ptr %i.dt, null
  br i1 %.not.i.i.i88, label %_ZN7testing7MessageD2Ev.exit90, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.du = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i89 unwind label %bb.av

.noexc.i.i89:                                     ; preds = %bb.as
  br i1 %i.du, label %bb.at, label %_ZN7testing7MessageD2Ev.exit90

bb.at:                                            ; preds = %.noexc.i.i89
  %i.dv = load ptr, ptr %17, align 8, !tbaa !32   ; 3 uses
  %i.dw = icmp eq ptr %i.dv, null
  br i1 %i.dw, label %_ZN7testing7MessageD2Ev.exit90, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.dx = load ptr, ptr %i.dv, align 8, !tbaa !34
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8
  call void %i.dz(ptr noundef nonnull align 8 dereferenceable(128) %i.dv) #19, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit90

bb.av:                                            ; preds = %bb.as
  %i.ea = landingpad { ptr, i32 }
          catch ptr null
  %i.eb = extractvalue { ptr, i32 } %i.ea, 0
  call void @__clang_call_terminate(ptr %i.eb) #20
  unreachable

_ZN7testing7MessageD2Ev.exit90:                   ; preds = %bb.ar, %.noexc.i.i89, %bb.at, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  br label %bb.bb

bb.aw:                                            ; preds = %bb.an
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.ax:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit87
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.ay:                                            ; preds = %bb.aq
  %i.ee = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #19
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.pn57 = phi { ptr, i32 } [ %i.ee, %bb.ay ], [ %i.ed, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #19
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.aw
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
  %.fr210 = freeze <2 x float> %i.e
  %5 = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %.fr210)
  %6 = fcmp uge <2 x float> %5, splat (float 7.200000e-01)
  %7 = bitcast <2 x i1> %6 to i2
  %or.cond166 = icmp eq i2 %7, 0                  ; 2 uses
  %spec.select = select i1 %or.cond166, float 1.000000e+00, float 0.000000e+00
  %spec.select167 = select i1 %or.cond166, float 0.000000e+00, float 1.000000e+00
  %i.f = insertelement <2 x float> <float 0.000000e+00, float poison>, float %spec.select, i64 1
  br label %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit107.2.2

_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit107.2.2:   ; preds = %..preheader_crit_edge, %bb.b
  %.sroa.03.4.vec.extract.i77.pre-phi = phi float [ %.pre202, %..preheader_crit_edge ], [ %.sroa.068.4.vec.extract, %bb.b ] ; 2 uses
  %.sroa.14162.0 = phi float [ 0.000000e+00, %..preheader_crit_edge ], [ %spec.select167, %bb.b ] ; 3 uses
  %i.g = phi <2 x float> [ <float 1.000000e+00, float 0.000000e+00>, %..preheader_crit_edge ], [ %i.f, %bb.b ] ; 2 uses
  %i.h = fsub float %.sroa.14162.0, %2            ; 7 uses
  %i.i = insertelement <5 x float> <float poison, float poison, float poison, float 1.000000e+00, float 1.000000e+00>, float %.sroa.14162.0, i64 2
  %i.j = shufflevector <2 x float> %i.g, <2 x float> poison, <5 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison>
  %i.k = shufflevector <5 x float> %i.j, <5 x float> %i.i, <5 x i32> <i32 0, i32 1, i32 7, i32 8, i32 9> ; 2 uses
  %i.l = shufflevector <2 x float> %1, <2 x float> poison, <5 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison>
  %i.m = shufflevector <5 x float> %i.l, <5 x float> <float poison, float poison, float poison, float 0.000000e+00, float 0.000000e+00>, <5 x i32> <i32 0, i32 1, i32 poison, i32 8, i32 9>
  %i.n = insertelement <5 x float> %i.m, float %2, i64 2
  %i.o = fsub <5 x float> %i.k, %i.n
  %i.p = shufflevector <5 x float> %i.o, <5 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 4> ; 2 uses
  %i.q = fsub float %.sroa.14162.0, %4            ; 7 uses
  %i.r = shufflevector <2 x float> %3, <2 x float> poison, <5 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.s = shufflevector <5 x float> %i.r, <5 x float> <float poison, float poison, float poison, float 0.000000e+00, float 0.000000e+00>, <5 x i32> <i32 0, i32 poison, i32 poison, i32 8, i32 9>
  %i.t = insertelement <5 x float> %i.s, float %.sroa.03.4.vec.extract.i77.pre-phi, i64 1
  %i.u = insertelement <5 x float> %i.t, float %4, i64 2
  %i.v = fsub <5 x float> %i.k, %i.u
  %i.w = shufflevector <5 x float> %i.v, <5 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 4>
  %i.x = fmul float %i.h, %i.q
  %i.y = shufflevector <2 x float> %i.g, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.z = shufflevector <4 x float> %i.y, <4 x float> <float poison, float 1.000000e+00, float poison, float 1.000000e+00>, <4 x i32> <i32 0, i32 5, i32 2, i32 7> ; 2 uses
  %i.aa = shufflevector <2 x float> %1, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.ab = shufflevector <4 x float> %i.aa, <4 x float> <float poison, float 0.000000e+00, float poison, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.ac = fsub <4 x float> %i.z, %i.ab            ; 3 uses
  %i.ad = shufflevector <4 x float> %i.ac, <4 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 2, i32 2, i32 2, i32 3> ; 4 uses
  %i.ae = shufflevector <2 x float> %3, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.af = shufflevector <4 x float> %i.ae, <4 x float> <float poison, float 0.000000e+00, float poison, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 poison, i32 7>
  %i.ag = insertelement <4 x float> %i.af, float %.sroa.03.4.vec.extract.i77.pre-phi, i64 2
  %i.ah = fsub <4 x float> %i.z, %i.ag            ; 3 uses
  %i.ai = shufflevector <4 x float> %i.ah, <4 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 2, i32 2, i32 2, i32 3> ; 5 uses
  %foldExtExtBinop = fmul <8 x float> %i.ad, %i.ai
  %i.aj = extractelement <8 x float> %foldExtExtBinop, i64 0
  %i.ak = extractelement <4 x float> %i.ac, i64 2 ; 3 uses
  %i.al = extractelement <4 x float> %i.ah, i64 2 ; 3 uses
  %i.am = fmul float %i.ak, %i.al
  %i.an = fadd float %i.aj, %i.am
  %i.ao = fadd float %i.x, %i.an
  %i.ap = fmul float %i.ao, 4.000000e+00
  %i.aq = fmul float %i.h, %i.h
  %foldExtExtBinop204 = fmul <8 x float> %i.ad, %i.ad
  %i.ar = extractelement <8 x float> %foldExtExtBinop204, i64 0
  %i.as = fmul float %i.ak, %i.ak
  %i.at = fadd float %i.ar, %i.as
  %i.au = fadd float %i.aq, %i.at                 ; 2 uses
  %i.av = fmul float %i.q, %i.q
  %foldExtExtBinop206 = fmul <8 x float> %i.ai, %i.ai
  %i.aw = extractelement <8 x float> %foldExtExtBinop206, i64 0
  %i.ax = fmul float %i.al, %i.al
  %i.ay = fadd float %i.aw, %i.ax
  %i.az = fadd float %i.av, %i.ay                 ; 2 uses
  %i.ba = fmul float %i.au, %i.az
  %.scalar = fdiv float %i.ap, %i.ba              ; 2 uses
  %i.bb = insertelement <3 x float> <float poison, float -0.000000e+00, float -0.000000e+00>, float %.scalar, i64 0 ; 2 uses
  %i.bc = shufflevector <3 x float> %i.bb, <3 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 2>
  %i.bd = fmul float %.scalar, %i.q
  %.scalar208 = fdiv float 2.000000e+00, %i.au    ; 2 uses
  %i.be = insertelement <3 x float> <float poison, float 0.000000e+00, float 0.000000e+00>, float %.scalar208, i64 0 ; 2 uses
  %i.bf = shufflevector <3 x float> %i.be, <3 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 2>
  %i.bg = fmul float %.scalar208, %i.h
  %i.bh = fmul float %i.bg, %i.h
  %i.bi = fsub float 1.000000e+00, %i.bh
  %.scalar209 = fdiv float 2.000000e+00, %i.az    ; 2 uses
  %i.bj = insertelement <3 x float> <float poison, float 0.000000e+00, float 0.000000e+00>, float %.scalar209, i64 0 ; 2 uses
  %i.bk = shufflevector <3 x float> %i.bj, <3 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 2>
  %i.bl = fmul float %.scalar209, %i.q
  %i.bm = fmul float %i.bl, %i.q
  %i.bn = fsub float %i.bi, %i.bm
  %i.bo = fmul <8 x float> %i.bf, %i.ad
  %i.bp = fmul <8 x float> %i.bo, %i.p
  %i.bq = fsub <8 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, %i.bp
  %i.br = fmul <8 x float> %i.bk, %i.ai
  %i.bs = fmul <8 x float> %i.br, %i.w
  %i.bt = fsub <8 x float> %i.bq, %i.bs
  %i.bu = fmul <8 x float> %i.bc, %i.ai
  %i.bv = fmul <8 x float> %i.bu, %i.p
  %i.bw = fadd <8 x float> %i.bt, %i.bv           ; 4 uses
  %i.bx = fmul float %i.bd, %i.h
  %i.by = fadd float %i.bn, %i.bx                 ; 2 uses
  store <8 x float> %i.bw, ptr %0, align 4
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bz = shufflevector <3 x float> %i.be, <3 x float> poison, <2 x i32> zeroinitializer
  %i.ca = insertelement <2 x float> poison, float %i.h, i64 0
  %i.cb = shufflevector <2 x float> %i.ca, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cc = fmul <2 x float> %i.bz, %i.cb
  %i.cd = shufflevector <4 x float> %i.ac, <4 x float> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ce = fmul <2 x float> %i.cc, %i.cd
  %i.cf = fsub <2 x float> zeroinitializer, %i.ce
  %i.cg = shufflevector <3 x float> %i.bj, <3 x float> poison, <2 x i32> zeroinitializer
  %i.ch = insertelement <2 x float> poison, float %i.q, i64 0
  %i.ci = shufflevector <2 x float> %i.ch, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cj = fmul <2 x float> %i.cg, %i.ci
  %i.ck = shufflevector <4 x float> %i.ah, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.cl = fmul <2 x float> %i.cj, %i.ck
  %i.cm = fsub <2 x float> %i.cf, %i.cl
  %i.cn = shufflevector <3 x float> %i.bb, <3 x float> poison, <2 x i32> zeroinitializer
  %i.co = fmul <2 x float> %i.cn, %i.ci
  %i.cp = fmul <2 x float> %i.co, %i.cd
  %i.cq = fadd <2 x float> %i.cm, %i.cp           ; 3 uses
  store <2 x float> %i.cq, ptr %.sroa.21.0..sroa_idx, align 4
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float %i.by, ptr %.sroa.25.0..sroa_idx, align 4
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  %.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.28.0..sroa_idx, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %.sroa.33.0..sroa_idx, align 4, !tbaa !35
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cs = shufflevector <8 x float> %i.bw, <8 x float> poison, <2 x i32> <i32 0, i32 4>
  store <2 x float> %i.cs, ptr %i.cr, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ct = insertelement <2 x float> %i.cq, float 0.000000e+00, i64 1
  store <2 x float> %i.ct, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.cu = shufflevector <8 x float> %i.bw, <8 x float> poison, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.cu, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cv = shufflevector <2 x float> %i.cq, <2 x float> <float poison, float 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  store <2 x float> %i.cv, ptr %.sroa.9.0..sroa_idx, align 4
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cw = shufflevector <8 x float> %i.bw, <8 x float> poison, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.cw, ptr %.sroa.11.0..sroa_idx, align 4
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store float %i.by, ptr %.sroa.13.0..sroa_idx, align 4
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
  %.092 = phi i32 [ 0, %bb.a ], [ %i.ey, %_ZN7testing15AssertionResultD2Ev.exit80 ]
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
end_hunk_0
begin_hunk_1_@_ZN7testing15AssertionResult13AppendMessageERKNS_7MessageE:bb.a
  %i.v = icmp ult i64 %i.u, %i.r
  br i1 %i.v, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

bb.g:                                             ; preds = %_ZN7testing8internal10scoped_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5resetEPS7_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #23
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.g
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %_ZN7testing8internal10scoped_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5resetEPS7_.exit
  %i.w = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull %i.q, i64 noundef %i.r)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit unwind label %bb.h ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.x = load ptr, ptr %2, align 8, !tbaa !29     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !35
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i, %bb.g
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = load ptr, ptr %2, align 8, !tbaa !29    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.h
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !35
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  resume { ptr, i32 } %i.ac
}

declare void @_ZNK7testing7Message9GetStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #15

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing13PrintToStringIfEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = load float, ptr %1, align 4, !tbaa !16
  %i.c = fpext float %i.b to double
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, double noundef %i.c)
          to label %_ZN7testing8internal21UniversalTersePrinterIfE5PrintERKfPSo.exit unwind label %bb.e ; 0 uses

_ZN7testing8internal21UniversalTersePrinterIfE5PrintERKfPSo.exit: ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !67)
  call void @llvm.experimental.noalias.scope.decl(metadata !68)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !40, !alias.scope !69
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !39, !alias.scope !69
  store i8 0, ptr %i.e, align 8, !tbaa !35, !alias.scope !69
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !44, !noalias !69 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.h, null
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !noalias !69 ; 2 uses
  %i.k = icmp ugt ptr %i.h, %i.j
  %.08.i.i.i = select i1 %i.k, ptr %i.h, ptr %i.j ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZN7testing8internal21UniversalTersePrinterIfE5PrintERKfPSo.exit
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !45, !noalias !69 ; 2 uses
  %i.n = ptrtoint ptr %.08.i.i.i to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.m, i64 noundef %i.p)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = load ptr, ptr %0, align 8, !tbaa !29, !alias.scope !69 ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.e
  br i1 %i.t, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.u = load i64, ptr %i.e, align 8, !tbaa !35, !alias.scope !69
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.v) #21
  br label %.body

bb.d:                                             ; preds = %_ZN7testing8internal21UniversalTersePrinterIfE5PrintERKfPSo.exit
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.w)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.b
  %i.x = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.x, ptr %2, align 8, !tbaa !34
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.z = getelementptr i8, ptr %i.x, i64 -24
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = getelementptr inbounds i8, ptr %2, i64 %i.aa
  store ptr %i.y, ptr %i.ab, align 8, !tbaa !34
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !34
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ad, align 8, !tbaa !34
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !29 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !35
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #21
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ad, align 8, !tbaa !34
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ak) #19
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.al, ptr %2, align 8, !tbaa !34
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.an = getelementptr i8, ptr %i.al, i64 -24
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = getelementptr inbounds i8, ptr %2, i64 %i.ao
  store ptr %i.am, ptr %i.ap, align 8, !tbaa !34
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.aq, align 8, !tbaa !47
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ar) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void

bb.e:                                             ; preds = %bb.a
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.as, %bb.e ], [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.r, %bb.c ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #6 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #2 align 2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing8internal11CmpHelperEQIN4pbrt7Vector3IfEES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 4 dereferenceable(12) %4) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %.sroa.01.0.copyload = load <2 x float>, ptr %4, align 4
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.22.0.copyload = load float, ptr %.sroa.22.0..sroa_idx, align 4
  %i.a = load <2 x float>, ptr %3, align 4
  %i.b = fcmp oeq <2 x float> %i.a, %.sroa.01.0.copyload
  %7 = freeze <2 x i1> %i.b
  %8 = bitcast <2 x i1> %7 to i2
  %or.cond.i = icmp eq i2 %8, -1
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = load float, ptr %i.c, align 4
  %i.e = fcmp oeq float %i.d, %.sroa.22.0.copyload
  %or.cond = select i1 %or.cond.i, i1 %i.e, i1 false
  br i1 %or.cond, label %bb.b, label %_ZNK4pbrt6Tuple3INS_7Vector3EfEeqENS1_IfEE.exit.thread

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0)
  br label %bb.f

_ZNK4pbrt6Tuple3INS_7Vector3EfEeqENS1_IfEE.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @_ZN7testing13PrintToStringIN4pbrt7Vector3IfEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 4 dereferenceable(12) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  invoke void @_ZN7testing13PrintToStringIN4pbrt7Vector3IfEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 4 dereferenceable(12) %4)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageIN4pbrt7Vector3IfEES4_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit unwind label %bb.d

_ZN7testing8internal33FormatForComparisonFailureMessageIN4pbrt7Vector3IfEES4_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit: ; preds = %_ZNK4pbrt6Tuple3INS_7Vector3EfEeqENS1_IfEE.exit.thread
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i1 noundef zeroext false)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIN4pbrt7Vector3IfEES4_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit
  %i.f = load ptr, ptr %6, align 8, !tbaa !29     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.i = load i64, ptr %i.g, align 8, !tbaa !35
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.k = load ptr, ptr %5, align 8, !tbaa !29     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.n = load i64, ptr %i.l, align 8, !tbaa !35
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.f

bb.d:                                             ; preds = %_ZNK4pbrt6Tuple3INS_7Vector3EfEeqENS1_IfEE.exit.thread
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

bb.e:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIN4pbrt7Vector3IfEES4_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = load ptr, ptr %6, align 8, !tbaa !29     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %bb.e
  %i.u = load i64, ptr %i.s, align 8, !tbaa !35
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16, %bb.d
  %.pn = phi { ptr, i32 } [ %i.p, %bb.d ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16 ], [ %i.q, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.w = load ptr, ptr %5, align 8, !tbaa !29     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18
  %i.z = load i64, ptr %i.x, align 8, !tbaa !35
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  resume { ptr, i32 } %.pn

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, %bb.b
  ret void
}

declare void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing13PrintToStringIN4pbrt7Vector3IfEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 4 dereferenceable(12) %1) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.b = load float, ptr %1, align 4, !tbaa !76, !noalias !77
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load float, ptr %i.c, align 4, !tbaa !78, !noalias !77
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load float, ptr %i.e, align 4, !tbaa !38, !noalias !77
  invoke void @_ZN4pbrt8internal9ToString3IfEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_S8_S8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, float noundef %i.b, float noundef %i.d, float noundef %i.f)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.a
  %i.g = load ptr, ptr %2, align 8, !tbaa !29
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !39
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.g, i64 noundef %i.i)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i.i.i.i unwind label %bb.b ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i.i.i.i: ; preds = %.noexc
  %i.k = load ptr, ptr %2, align 8, !tbaa !29     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i.i.i.i
  %i.n = load i64, ptr %i.l, align 8, !tbaa !35
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #21
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i

bb.b:                                             ; preds = %.noexc
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %2, align 8, !tbaa !29     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.t = load i64, ptr %i.r, align 8, !tbaa !35
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i.i.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !79)
  call void @llvm.experimental.noalias.scope.decl(metadata !80)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.v, ptr %0, align 8, !tbaa !40, !alias.scope !81
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.w, align 8, !tbaa !39, !alias.scope !81
  store i8 0, ptr %i.v, align 8, !tbaa !35, !alias.scope !81
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !44, !noalias !81 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.y, null
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !81 ; 2 uses
  %i.ab = icmp ugt ptr %i.y, %i.aa
  %.08.i.i.i = select i1 %i.ab, ptr %i.y, ptr %i.aa ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !45, !noalias !81 ; 2 uses
  %i.ae = ptrtoint ptr %.08.i.i.i to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.ad, i64 noundef %i.ag)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aj = load ptr, ptr %0, align 8, !tbaa !29, !alias.scope !81 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.v
  br i1 %i.ak, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.al = load i64, ptr %i.v, align 8, !tbaa !35, !alias.scope !81
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #21
  br label %.body

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.an)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.e, %bb.c
  %i.ao = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ao, ptr %3, align 8, !tbaa !34
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.aq = getelementptr i8, ptr %i.ao, i64 -24
  %i.ar = load i64, ptr %i.aq, align 8
end_hunk_1
