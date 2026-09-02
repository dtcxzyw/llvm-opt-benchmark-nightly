Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/shapes_test?download=true
inline.NumInlined: 2888
inline.NumDeleted: 834
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN24Triangle_SolidAngle_Test8TestBodyEv:bb.a
  %i.iu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.is, i32 noundef %i.it)
          to label %_ZN7testing7MessagelsIiEERS0_RKT_.exit unwind label %bb.bu ; 0 uses

_ZN7testing7MessagelsIiEERS0_RKT_.exit:           ; preds = %_ZN7testing7MessagelsIA13_cEERS0_RKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #29
  %i.iv = load ptr, ptr %i.v, align 8, !tbaa !55  ; 2 uses
  %.not.i.i106 = icmp eq ptr %i.iv, null
  br i1 %.not.i.i106, label %_ZNK7testing15AssertionResult15failure_messageEv.exit107, label %bb.bm

bb.bm:                                            ; preds = %_ZN7testing7MessagelsIiEERS0_RKT_.exit
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !56
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit107

_ZNK7testing15AssertionResult15failure_messageEv.exit107: ; preds = %bb.bm, %_ZN7testing7MessagelsIiEERS0_RKT_.exit
  %i.ix = phi ptr [ %i.iw, %bb.bm ], [ @.str.48, %_ZN7testing7MessagelsIiEERS0_RKT_.exit ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %15, i32 noundef 1, ptr noundef nonnull @.str.5, i32 noundef 247, ptr noundef %i.ix)
          to label %bb.bn unwind label %bb.bv

bb.bn:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit107
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.bo unwind label %bb.bw

bb.bo:                                            ; preds = %bb.bn
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29
  %i.iy = load ptr, ptr %14, align 8, !tbaa !60
  %.not.i.i.i108 = icmp eq ptr %i.iy, null
  br i1 %.not.i.i.i108, label %_ZN7testing7MessageD2Ev.exit110, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.iz = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i109 unwind label %bb.bs

.noexc.i.i109:                                    ; preds = %bb.bp
  br i1 %i.iz, label %bb.bq, label %_ZN7testing7MessageD2Ev.exit110

bb.bq:                                            ; preds = %.noexc.i.i109
  %i.ja = load ptr, ptr %14, align 8, !tbaa !60   ; 3 uses
  %i.jb = icmp eq ptr %i.ja, null
  br i1 %i.jb, label %_ZN7testing7MessageD2Ev.exit110, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.jc = load ptr, ptr %i.ja, align 8, !tbaa !63
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  %i.je = load ptr, ptr %i.jd, align 8
  call void %i.je(ptr noundef nonnull align 8 dereferenceable(128) %i.ja) #29, !inline_history !65
  br label %_ZN7testing7MessageD2Ev.exit110

bb.bs:                                            ; preds = %bb.bp
  %i.jf = landingpad { ptr, i32 }
          catch ptr null
  %i.jg = extractvalue { ptr, i32 } %i.jf, 0
  call void @__clang_call_terminate(ptr %i.jg) #32
  unreachable

_ZN7testing7MessageD2Ev.exit110:                  ; preds = %bb.bo, %.noexc.i.i109, %bb.bq, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  br label %bb.bz

bb.bt:                                            ; preds = %bb.bj
  %i.jh = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.bu:                                            ; preds = %_ZN7testing7MessagelsIA13_cEERS0_RKT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %_ZN7testing7MessagelsIA8_cEERS0_RKT_.exit, %_ZN7testing7MessagelsIdEERS0_RKT_.exit, %_ZN7testing7MessagelsIA17_cEERS0_RKT_.exit100, %_ZN7testing7MessagelsIfEERS0_RKT_.exit, %_ZN7testing7MessagelsIA17_cEERS0_RKT_.exit, %bb.bk
  %i.ji = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bv:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit107
  %i.jj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bn
  %i.jk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #29
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %.pn51 = phi { ptr, i32 } [ %i.jk, %bb.bw ], [ %i.jj, %bb.bv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29
  br label %.body

.body:                                            ; preds = %bb.bu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i, %bb.bx
  %.pn51.pn = phi { ptr, i32 } [ %.pn51, %bb.bx ], [ %i.ji, %bb.bu ], [ %i.ij, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i ]
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #29
  br label %bb.by

bb.by:                                            ; preds = %.body, %bb.bt
  %.pn51.pn.pn = phi { ptr, i32 } [ %.pn51.pn, %.body ], [ %i.jh, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  br label %bb.cf

bb.bz:                                            ; preds = %"_ZZN24Triangle_SolidAngle_Test8TestBodyEvENK3$_1clEff.exit", %_ZN7testing7MessageD2Ev.exit110
  %i.jl = load ptr, ptr %i.v, align 8, !tbaa !55
  %.not.i.i.i111 = icmp eq ptr %i.jl, null
  br i1 %.not.i.i.i111, label %bb.ce, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.jm = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i112 unwind label %bb.cd

.noexc.i.i112:                                    ; preds = %bb.ca
  br i1 %i.jm, label %bb.cb, label %bb.ce

bb.cb:                                            ; preds = %.noexc.i.i112
  %i.jn = load ptr, ptr %i.v, align 8, !tbaa !55  ; 4 uses
  %i.jo = icmp eq ptr %i.jn, null
  br i1 %i.jo, label %bb.ce, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.jp = load ptr, ptr %i.jn, align 8, !tbaa !56 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jn, i64 16 ; 2 uses
  %i.jr = icmp eq ptr %i.jp, %i.jq
  br i1 %i.jr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i114, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i113

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i113: ; preds = %bb.cc
  %i.js = load i64, ptr %i.jq, align 8, !tbaa !66
  %i.jt = add i64 %i.js, 1
  call void @_ZdlPvm(ptr noundef %i.jp, i64 noundef %i.jt) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i114

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i114: ; preds = %bb.cc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i113
  call void @_ZdlPvm(ptr noundef nonnull %i.jn, i64 noundef 32) #31
  br label %bb.ce

bb.cd:                                            ; preds = %bb.ca
  %i.ju = landingpad { ptr, i32 }
          catch ptr null
  %i.jv = extractvalue { ptr, i32 } %i.ju, 0
  call void @__clang_call_terminate(ptr %i.jv) #32
  unreachable

bb.ce:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i114, %bb.cb, %.noexc.i.i112, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0128)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  br label %.thread148

.thread148:                                       ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %indvars.iv.next209 = add nuw nsw i64 %indvars.iv208, 1 ; 2 uses
  %exitcond211.not = icmp eq i64 %indvars.iv.next209, 50
  br i1 %exitcond211.not, label %.loopexit, label %bb.b, !llvm.loop !140

bb.cf:                                            ; preds = %bb.by, %bb.be
  %.pn51.pn.pn.pn = phi { ptr, i32 } [ %.pn51.pn.pn, %bb.by ], [ %.pn49, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0128)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  br label %_ZNSt14_Function_baseD2Ev.exit60

_ZNSt14_Function_baseD2Ev.exit60:                 ; preds = %bb.g, %bb.f, %bb.cf
  %.pn51.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn51.pn.pn.pn, %bb.cf ], [ %i.ap, %bb.f ], [ %i.ap, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  resume { ptr, i32 } %.pn51.pn.pn.pn.pn

.loopexit:                                        ; preds = %.thread148, %.thread154
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4pbrt8Triangle6SampleERKNS_18ShapeSampleContextENS_6Point2IfEE(ptr dead_on_unwind noalias writable sret(%"class.pstd::optional") align 8 %0, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(52) %2, <2 x float> %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.pstd::optional", align 16   ; 14 uses
  %i.a = alloca float, align 4                    ; 4 uses
  %5 = alloca %"class.pstd::array.78", align 8    ; 9 uses
  %i.b = load ptr, ptr @_ZN4pbrt8Triangle9allMeshesE, align 8, !tbaa !141
  %i.c = load i32, ptr %1, align 4, !tbaa !143
  %i.d = sext i32 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !145
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.d
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !150  ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !152
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !154
  %i.m = mul nsw i32 %i.l, 3
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.n ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !155  ; 3 uses
  %i.r = load i32, ptr %i.o, align 4, !tbaa !40
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds [12 x i8], ptr %i.q, i64 %i.s ; 2 uses
  %.sroa.0922.0.copyload = load <2 x float>, ptr %i.t, align 4 ; 7 uses
  %.sroa.11928.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.11928.0.copyload = load float, ptr %.sroa.11928.0..sroa_idx, align 4 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 4 ; 3 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !40
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [12 x i8], ptr %i.q, i64 %i.w ; 2 uses
  %.sroa.0910.0.copyload = load <2 x float>, ptr %i.x, align 4 ; 7 uses
  %.sroa.11918.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.11918.0.copyload = load float, ptr %.sroa.11918.0..sroa_idx, align 4 ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !40
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [12 x i8], ptr %i.q, i64 %i.aa ; 2 uses
  %.sroa.0898.0.copyload = load <2 x float>, ptr %i.ab, align 4 ; 7 uses
  %.sroa.11906.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.11906.0.copyload = load float, ptr %.sroa.11906.0..sroa_idx, align 4 ; 5 uses
  %.sroa.0.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %.sroa.0.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.0.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %.sroa.0.sroa.5.0.copyload.i = load float, ptr %.sroa.0.sroa.5.0..sroa_idx.i, align 4
  %.sroa.0.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 3 uses
  %.sroa.0.sroa.6.0.copyload.i = load float, ptr %.sroa.0.sroa.6.0..sroa_idx.i, align 4
  %i.ac = load <2 x float>, ptr %.sroa.0.sroa.2.0..sroa_idx.i, align 4
  %i.ad = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 4 %2, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x float> poison)
  %i.ae = shufflevector <4 x float> %i.ad, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.af = fadd <2 x float> %i.ac, %i.ae
  %i.ag = fmul <2 x float> %i.af, splat (float 5.000000e-01)
  %i.ah = fadd float %.sroa.0.sroa.5.0.copyload.i, %.sroa.0.sroa.6.0.copyload.i
  %i.ai = fmul float %i.ah, 5.000000e-01
  %i.aj = tail call noundef float @_ZNK4pbrt8Triangle10SolidAngleENS_6Point3IfEE(ptr noundef nonnull align 4 dereferenceable(8) %1, <2 x float> %i.ag, float %i.ai) ; 2 uses
  %i.ak = fcmp olt float %i.aj, 3.000000e-04
  %i.al = fcmp ogt float %i.aj, 6.220000e+00
  %or.cond = or i1 %i.ak, %i.al
  br i1 %or.cond, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @_ZNK4pbrt8Triangle6SampleENS_6Point2IfEE(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional") align 8 %4, ptr noundef nonnull align 4 dereferenceable(8) %1, <2 x float> %3)
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.an = load i8, ptr %i.am, align 8, !tbaa !83, !range !53, !noundef !54
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.c, label %.noexc

.noexc:                                           ; preds = %bb.b
  call void @_ZN4pbrt8LogFatalIJRA4_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.49, i32 noundef 235, ptr noundef nonnull @.str.50, ptr noundef nonnull align 1 dereferenceable(4) @.str.51) #28
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !156
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 24
  store float %i.aq, ptr %i.ar, align 8, !tbaa !158
  %.sroa.0.sroa.2.0..sroa_idx.i474 = getelementptr inbounds nuw i8, ptr %4, i64 4
  %.sroa.0.sroa.5.0..sroa_idx.i480 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.0.sroa.5.0.copyload.i481 = load float, ptr %.sroa.0.sroa.5.0..sroa_idx.i480, align 16
  %.sroa.0.sroa.6.0..sroa_idx.i482 = getelementptr inbounds nuw i8, ptr %4, i64 20
  %.sroa.0.sroa.6.0.copyload.i483 = load float, ptr %.sroa.0.sroa.6.0..sroa_idx.i482, align 4
  %i.as = fadd float %.sroa.0.sroa.5.0.copyload.i481, %.sroa.0.sroa.6.0.copyload.i483
  %i.at = fmul float %i.as, 5.000000e-01          ; 2 uses
  %.sroa.0.sroa.5.0.copyload.i496 = load float, ptr %.sroa.0.sroa.5.0..sroa_idx.i, align 4
  %.sroa.0.sroa.6.0.copyload.i498 = load float, ptr %.sroa.0.sroa.6.0..sroa_idx.i, align 4
  %i.au = load <2 x float>, ptr %.sroa.0.sroa.2.0..sroa_idx.i474, align 4
  %i.av = load <4 x float>, ptr %4, align 16
  %i.aw = shufflevector <4 x float> %i.av, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.ax = fadd <2 x float> %i.au, %i.aw
  %i.ay = fmul <2 x float> %i.ax, splat (float 5.000000e-01) ; 2 uses
  %i.az = load <2 x float>, ptr %.sroa.0.sroa.2.0..sroa_idx.i, align 4
  %i.ba = call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 4 %2, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x float> poison)
  %i.bb = shufflevector <4 x float> %i.ba, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.bc = fadd <2 x float> %i.az, %i.bb
  %i.bd = fmul <2 x float> %i.bc, splat (float 5.000000e-01) ; 2 uses
  %i.be = fadd float %.sroa.0.sroa.5.0.copyload.i496, %.sroa.0.sroa.6.0.copyload.i498
  %i.bf = fmul float %i.be, 5.000000e-01          ; 2 uses
  %i.bg = fsub float %i.at, %i.bf                 ; 3 uses
  %i.bh = fsub <2 x float> %i.ay, %i.bd           ; 4 uses
  %i.bi = fmul <2 x float> %i.bh, %i.bh           ; 2 uses
  %shift = shufflevector <2 x float> %i.bi, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.bi, %shift
  %i.bj = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.bk = fmul float %i.bg, %i.bg
  %i.bl = fadd float %i.bj, %i.bk                 ; 2 uses
  %i.bm = fcmp oeq float %i.bl, 0.000000e+00
  br i1 %i.bm, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, i8 0, i64 96, i1 false)
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.bl) ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 40
  %.sroa.0380.0.copyload = load <2 x float>, ptr %i.bn, align 8 ; 2 uses
  %.sroa.2381.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 48
  %.sroa.2381.0.copyload = load float, ptr %.sroa.2381.0..sroa_idx, align 16 ; 2 uses
  %i.bo = extractelement <2 x float> %i.bh, i64 0
  %i.bp = fneg float %i.bo
  %i.bq = fdiv float %i.bp, %sqrt.i.i
  %i.br = extractelement <2 x float> %i.bh, i64 1
  %i.bs = fneg float %i.br
  %i.bt = fdiv float %i.bs, %sqrt.i.i
  %i.bu = fneg float %i.bg
  %i.bv = fdiv float %i.bu, %sqrt.i.i             ; 2 uses
  %.sroa.04.0.vec.extract.i.i = extractelement <2 x float> %.sroa.0380.0.copyload, i64 0
  %.sroa.04.4.vec.extract.i.i = extractelement <2 x float> %.sroa.0380.0.copyload, i64 1
  %i.bw = fmul float %i.bv, %.sroa.2381.0.copyload ; 2 uses
  %i.bx = call noundef float @llvm.fma.f32(float %.sroa.04.4.vec.extract.i.i, float %i.bt, float %i.bw)
  %i.by = fneg float %i.bw
  %i.bz = call noundef float @llvm.fma.f32(float %.sroa.2381.0.copyload, float %i.bv, float %i.by)
  %i.ca = fadd float %i.bx, %i.bz
  %i.cb = call noundef float @llvm.fma.f32(float %.sroa.04.0.vec.extract.i.i, float %i.bq, float %i.ca)
  %i.cc = call noundef float @llvm.fabs.f32(float %i.cb)
  %i.cd = fsub <2 x float> %i.bd, %i.ay           ; 2 uses
  %i.ce = fsub float %i.bf, %i.at                 ; 2 uses
  %i.cf = fmul <2 x float> %i.cd, %i.cd           ; 2 uses
  %shift979 = shufflevector <2 x float> %i.cf, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop980 = fadd <2 x float> %i.cf, %shift979
  %i.cg = extractelement <2 x float> %foldExtExtBinop980, i64 0
  %i.ch = fmul float %i.ce, %i.ce
  %i.ci = fadd float %i.cg, %i.ch
  %i.cj = fdiv float %i.cc, %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.cl = load float, ptr %i.ck, align 16, !tbaa !134
  %i.cm = fdiv float %i.cl, %i.cj                 ; 2 uses
  %i.cn = call float @llvm.fabs.f32(float %i.cm)
  %i.co = fcmp oeq float %i.cn, +inf
  br i1 %i.co, label %bb.f, label %_ZN4pstd8optionalIN4pbrt11ShapeSampleEEC2EOS3_.exit

bb.f:                                             ; preds = %bb.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, i8 0, i64 96, i1 false)
  br label %bb.g

_ZN4pstd8optionalIN4pbrt11ShapeSampleEEC2EOS3_.exit: ; preds = %bb.e
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 1, ptr %i.cp, align 8, !tbaa !83
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(89) %0, ptr noundef nonnull align 16 dereferenceable(89) %4, i64 72, i1 false)
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !93
  store i64 %i.cs, ptr %i.cq, align 8, !tbaa !93
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 80
  store float %i.cm, ptr %i.ct, align 8, !tbaa !134
  br label %bb.g

bb.g:                                             ; preds = %_ZN4pstd8optionalIN4pbrt11ShapeSampleEEC2EOS3_.exit, %bb.f, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.ad

bb.h:                                             ; preds = %bb.a
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !159
  %i.cw = fcmp une float %i.cv, 0.000000e+00
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.cy = load float, ptr %i.cx, align 4
  %i.cz = fcmp une float %i.cy, 0.000000e+00
  %or.cond.i = select i1 %i.cw, i1 true, i1 %i.cz
  %.sroa.2289.0..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 44
  %.sroa.2289.0.copyload.pre = load float, ptr %.sroa.2289.0..sroa_idx.phi.trans.insert, align 4 ; 5 uses
  %i.da = fcmp une float %.sroa.2289.0.copyload.pre, 0.000000e+00
  %or.cond977 = select i1 %or.cond.i, i1 true, i1 %i.da
  br i1 %or.cond977, label %_ZN4pbrt12SampleLinearEfff.exit.i, label %_ZN4pstd5arrayIN4pbrt6Point3IfEELi3EEC2ESt16initializer_listIS3_E.exit

_ZN4pbrt12SampleLinearEfff.exit.i:                ; preds = %bb.h
  %.sroa.0898.0.vec.extract = extractelement <2 x float> %.sroa.0898.0.copyload, i64 0 ; 2 uses
  %.sroa.0898.4.vec.extract = extractelement <2 x float> %.sroa.0898.0.copyload, i64 1 ; 3 uses
  %.sroa.0288.0.copyload = load <2 x float>, ptr %i.cu, align 4 ; 3 uses
  %6 = load <2 x float>, ptr %.sroa.0.sroa.4.0..sroa_idx.i, align 4 ; 3 uses
  %7 = tail call <6 x float> @llvm.masked.load.v6f32.p0(ptr nonnull align 4 %2, <6 x i1> <i1 true, i1 true, i1 true, i1 false, i1 false, i1 true>, <6 x float> poison) ; 4 uses
  %8 = shufflevector <6 x float> %7, <6 x float> poison, <2 x i32> <i32 poison, i32 2>
  %9 = shufflevector <2 x float> %8, <2 x float> <float 1.000000e+00, float poison>, <4 x i32> <i32 2, i32 1, i32 1, i32 1>
  %10 = shufflevector <2 x float> %6, <2 x float> <float -0.000000e+00, float poison>, <4 x i32> <i32 2, i32 0, i32 0, i32 0>
  %11 = fadd <4 x float> %9, %10
  %12 = shufflevector <2 x float> %6, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0>
  %13 = shufflevector <6 x float> %7, <6 x float> poison, <4 x i32> <i32 2, i32 5, i32 2, i32 2>
  %14 = fadd <4 x float> %12, %13
  %15 = shufflevector <2 x float> %6, <2 x float> poison, <6 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison>
  %16 = shufflevector <6 x float> %15, <6 x float> %7, <4 x i32> <i32 1, i32 6, i32 6, i32 6>
  %17 = shufflevector <6 x float> %7, <6 x float> poison, <4 x i32> <i32 5, i32 1, i32 1, i32 1>
  %18 = fadd <4 x float> %16, %17
  %19 = fmul <4 x float> %11, <float 0.000000e+00, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01> ; 3 uses
  %20 = fmul <4 x float> %18, splat (float 5.000000e-01) ; 3 uses
  %i.db = fmul <4 x float> %14, splat (float 5.000000e-01)
  %i.dc = shufflevector <2 x float> %.sroa.0910.0.copyload, <2 x float> %.sroa.0922.0.copyload, <4 x i32> <i32 0, i32 0, i32 2, i32 poison> ; 2 uses
  %i.dd = insertelement <4 x float> %i.dc, float %.sroa.0898.0.vec.extract, i64 3
  %i.de = shufflevector <4 x float> %20, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.df = fsub <4 x float> %i.dd, %i.de
  %i.dg = insertelement <4 x float> %i.dc, float %.sroa.11918.0.copyload, i64 0
  %i.dh = insertelement <4 x float> %i.dg, float %.sroa.0898.0.vec.extract, i64 3
  %i.di = fsub <4 x float> %i.dh, %20             ; 2 uses
  %21 = shufflevector <2 x float> %.sroa.0910.0.copyload, <2 x float> %.sroa.0922.0.copyload, <4 x i32> <i32 1, i32 1, i32 3, i32 poison> ; 3 uses
  %22 = insertelement <4 x float> %21, float -0.000000e+00, i64 0
  %23 = insertelement <4 x float> %22, float %.sroa.0898.4.vec.extract, i64 3
  %24 = fsub <4 x float> %23, %19
  %i.dj = insertelement <4 x float> %21, float 1.000000e+00, i64 0
  %i.dk = insertelement <4 x float> %i.dj, float %.sroa.0898.4.vec.extract, i64 3
  %i.dl = fsub <4 x float> %i.dk, %19
  %i.dm = insertelement <4 x float> %21, float %.sroa.11918.0.copyload, i64 1
  %i.dn = insertelement <4 x float> %i.dm, float %.sroa.0898.4.vec.extract, i64 3
  %i.do = fsub <4 x float> %i.dn, %i.db
  %25 = shufflevector <2 x float> %.sroa.0910.0.copyload, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %26 = insertelement <4 x float> %25, float %.sroa.11918.0.copyload, i64 0
  %27 = insertelement <4 x float> %26, float %.sroa.11928.0.copyload, i64 2
  %28 = insertelement <4 x float> %27, float %.sroa.11906.0.copyload, i64 3
  %29 = shufflevector <4 x float> %20, <4 x float> %19, <4 x i32> <i32 0, i32 5, i32 0, i32 0>
  %30 = fsub <4 x float> %28, %29                 ; 2 uses
  %i.dp = fmul <4 x float> %i.di, %i.di
  %i.dq = fmul <4 x float> %24, %i.dl
  %i.dr = fadd <4 x float> %i.dp, %i.dq           ; 2 uses
  %31 = shufflevector <4 x float> %30, <4 x float> poison, <2 x i32> <i32 2, i32 3> ; 2 uses
  %i.ds = fmul <2 x float> %31, %31
  %i.dt = shufflevector <4 x float> %i.dr, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.du = shufflevector <2 x float> %i.ds, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dv = shufflevector <4 x float> %i.dt, <4 x float> %i.du, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.dw = fadd <4 x float> %i.dr, %i.dv
  %i.dx = tail call <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.dw) ; 3 uses
  %i.dy = fdiv <4 x float> %i.df, %i.dx
  %i.dz = fdiv <4 x float> %i.do, %i.dx           ; 2 uses
  %i.ea = fdiv <4 x float> %30, %i.dx             ; 2 uses
  %i.eb = extractelement <4 x float> %i.dz, i64 1
  %i.ec = fmul float %.sroa.2289.0.copyload.pre, %i.eb ; 2 uses
  %i.ed = fneg float %i.ec
  %i.ee = insertelement <2 x float> poison, float %.sroa.2289.0.copyload.pre, i64 0
  %i.ef = shufflevector <2 x float> %i.ee, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eg = shufflevector <4 x float> %i.ea, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.eh = fmul <2 x float> %i.ef, %i.eg           ; 2 uses
  %i.ei = shufflevector <2 x float> %.sroa.0288.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ej = insertelement <2 x float> %i.ei, float %.sroa.2289.0.copyload.pre, i64 1
  %i.ek = shufflevector <2 x float> %i.ej, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0>
  %i.el = shufflevector <2 x float> %i.eh, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 1>
  %i.em = insertelement <4 x float> %i.el, float %i.ec, i64 0
  %i.en = insertelement <4 x float> %i.em, float %i.ed, i64 1 ; 2 uses
  %i.eo = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %i.ek, <4 x float> %i.dz, <4 x float> %i.en)
  %i.ep = fneg <2 x float> %i.eh
  %i.eq = insertelement <2 x float> %.sroa.0288.0.copyload, float %.sroa.2289.0.copyload.pre, i64 0
  %i.er = shufflevector <2 x float> %i.eq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0>
  %i.es = shufflevector <4 x float> %i.en, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.et = shufflevector <2 x float> %i.ep, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.eu = shufflevector <4 x float> %i.es, <4 x float> %i.et, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ev = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %i.er, <4 x float> %i.ea, <4 x float> %i.eu)
  %i.ew = fadd <4 x float> %i.eo, %i.ev
  %i.ex = shufflevector <2 x float> %.sroa.0288.0.copyload, <2 x float> poison, <4 x i32> zeroinitializer
  %i.ey = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %i.ex, <4 x float> %i.dy, <4 x float> %i.ew)
  %i.ez = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ey) ; 2 uses
  %i.fa = fcmp ogt <4 x float> %i.ez, splat (float f0x3C23D70A)
  %i.fb = select <4 x i1> %i.fa, <4 x float> %i.ez, <4 x float> splat (float f0x3C23D70A) ; 5 uses
  %i.fc = extractelement <4 x float> %i.fb, i64 0 ; 3 uses
  %foldExtExtBinop982 = fadd <4 x float> %i.fb, %i.fb ; 3 uses
  %i.fd = extractelement <4 x float> %foldExtExtBinop982, i64 0 ; 3 uses
  %.sroa.012.4.vec.extract.i = extractelement <2 x float> %3, i64 1 ; 3 uses
  %i.fe = extractelement <4 x float> %i.fb, i64 2 ; 4 uses
  %i.ff = extractelement <4 x float> %i.fb, i64 3 ; 4 uses
  %i.fg = fadd float %i.fe, %i.ff                 ; 3 uses
  %i.fh = fadd nnan float %i.fd, %i.fg
  %i.fi = fmul float %.sroa.012.4.vec.extract.i, %i.fh
  %foldExtExtBinop984 = fmul <4 x float> %foldExtExtBinop982, %foldExtExtBinop982
  %i.fj = extractelement <4 x float> %foldExtExtBinop984, i64 0
  %i.fk = fmul float %i.fg, %i.fg
  %i.fl = fsub float 1.000000e+00, %.sroa.012.4.vec.extract.i
  %i.fm = fmul float %i.fl, %i.fj
  %i.fn = fmul float %.sroa.012.4.vec.extract.i, %i.fk
  %i.fo = fadd float %i.fm, %i.fn
  %i.fp = tail call noundef float @sqrtf(float noundef %i.fo) #29
  %i.fq = fadd float %i.fd, %i.fp
  %i.fr = fdiv float %i.fi, %i.fq                 ; 2 uses
  %i.fs = fcmp ogt float %i.fr, f0x3F7FFFFF
  %.sroa.speculated.i.i = select i1 %i.fs, float f0x3F7FFFFF, float %i.fr ; 8 uses
  %.sroa.012.0.vec.extract.i = extractelement <2 x float> %3, i64 0 ; 4 uses
  %i.ft = fsub float 1.000000e+00, %.sroa.speculated.i.i ; 3 uses
  %i.fu = fmul float %i.fc, %i.ft                 ; 2 uses
  %i.fv = fmul float %i.fe, %.sroa.speculated.i.i
  %i.fw = fadd float %i.fv, %i.fu                 ; 5 uses
  %i.fx = fcmp oeq float %.sroa.012.0.vec.extract.i, 0.000000e+00
  %i.fy = fcmp oeq float %i.fw, 0.000000e+00
  %or.cond.i1.i = and i1 %i.fx, %i.fy
  br i1 %or.cond.i1.i, label %_ZN4pbrt14SampleBilinearENS_6Point2IfEEN4pstd4spanIKfEE.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4pbrt12SampleLinearEfff.exit.i
  %i.fz = fmul float %i.ff, %.sroa.speculated.i.i
  %i.ga = fadd float %i.fz, %i.fu                 ; 3 uses
  %i.gb = fadd float %i.fw, %i.ga
  %i.gc = fmul float %.sroa.012.0.vec.extract.i, %i.gb
  %i.gd = fmul float %i.fw, %i.fw
  %i.ge = fmul float %i.ga, %i.ga
  %i.gf = fsub float 1.000000e+00, %.sroa.012.0.vec.extract.i
  %i.gg = fmul float %i.gf, %i.gd
  %i.gh = fmul float %.sroa.012.0.vec.extract.i, %i.ge
  %i.gi = fadd float %i.gg, %i.gh
  %i.gj = tail call noundef float @sqrtf(float noundef %i.gi) #29
  %i.gk = fadd float %i.fw, %i.gj
  %i.gl = fdiv float %i.gc, %i.gk                 ; 2 uses
  %i.gm = fcmp ogt float %i.gl, f0x3F7FFFFF
  %.sroa.speculated.i2.i = select i1 %i.gm, float f0x3F7FFFFF, float %i.gl
  br label %_ZN4pbrt14SampleBilinearENS_6Point2IfEEN4pstd4spanIKfEE.exit

_ZN4pbrt14SampleBilinearENS_6Point2IfEEN4pstd4spanIKfEE.exit: ; preds = %_ZN4pbrt12SampleLinearEfff.exit.i, %bb.i
  %.0.i3.i = phi float [ %.sroa.speculated.i2.i, %bb.i ], [ 0.000000e+00, %_ZN4pbrt12SampleLinearEfff.exit.i ] ; 6 uses
  %i.gn = insertelement <2 x float> poison, float %.0.i3.i, i64 0
  %.sroa.013.0.vec.insert.i = insertelement <2 x float> %i.gn, float %.sroa.speculated.i.i, i64 1 ; 2 uses
  %i.go = fcmp olt float %.0.i3.i, 0.000000e+00
  %i.gp = fcmp ogt float %.0.i3.i, 1.000000e+00
  %or.cond.i622 = or i1 %i.go, %i.gp
  %i.gq = fcmp olt float %.sroa.speculated.i.i, 0.000000e+00
  %i.gr = fcmp ogt float %.sroa.speculated.i.i, 1.000000e+00
  %i.gs = or i1 %i.gq, %i.gr
  %or.cond8.i = or i1 %i.gs, %or.cond.i622
  br i1 %or.cond8.i, label %_ZN4pstd5arrayIN4pbrt6Point3IfEELi3EEC2ESt16initializer_listIS3_E.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4pbrt14SampleBilinearENS_6Point2IfEEN4pstd4spanIKfEE.exit
  %i.gt = fadd float %i.fd, %i.fe
  %i.gu = fadd float %i.gt, %i.ff
  %i.gv = fsub float 1.000000e+00, %.0.i3.i       ; 2 uses
  %i.gw = fmul float %i.ft, %i.gv
  %i.gx = fmul float %i.fc, %i.gw
  %i.gy = fmul float %i.ft, %.0.i3.i
  %i.gz = fmul float %i.fc, %i.gy
  %i.ha = fadd float %i.gz, %i.gx
  %i.hb = fmul float %.sroa.speculated.i.i, %i.gv
  %i.hc = fmul float %i.fe, %i.hb
  %i.hd = fadd float %i.hc, %i.ha
  %i.he = fmul float %.sroa.speculated.i.i, %.0.i3.i
  %i.hf = fmul float %i.ff, %i.he
  %i.hg = fadd float %i.hf, %i.hd
  %i.hh = fmul float %i.hg, 4.000000e+00
  %i.hi = fdiv float %i.hh, %i.gu
  br label %_ZN4pstd5arrayIN4pbrt6Point3IfEELi3EEC2ESt16initializer_listIS3_E.exit

_ZN4pstd5arrayIN4pbrt6Point3IfEELi3EEC2ESt16initializer_listIS3_E.exit: ; preds = %bb.h, %bb.j, %_ZN4pbrt14SampleBilinearENS_6Point2IfEEN4pstd4spanIKfEE.exit
  %.0465 = phi float [ 1.000000e+00, %bb.h ], [ %i.hi, %bb.j ], [ 0.000000e+00, %_ZN4pbrt14SampleBilinearENS_6Point2IfEEN4pstd4spanIKfEE.exit ]
  %.sroa.0459.0 = phi <2 x float> [ %3, %bb.h ], [ %.sroa.013.0.vec.insert.i, %bb.j ], [ %.sroa.013.0.vec.insert.i, %_ZN4pbrt14SampleBilinearENS_6Point2IfEEN4pstd4spanIKfEE.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  store <2 x float> %.sroa.0922.0.copyload, ptr %5, align 8
  %.sroa.4951.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store float %.sroa.11928.0.copyload, ptr %.sroa.4951.0..sroa_idx, align 8
  %.sroa.5952.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 12
  store <2 x float> %.sroa.0910.0.copyload, ptr %.sroa.5952.0..sroa_idx, align 4
  %.sroa.6953.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 20
  store float %.sroa.11918.0.copyload, ptr %.sroa.6953.0..sroa_idx, align 4
  %.sroa.7954.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24
  store <2 x float> %.sroa.0898.0.copyload, ptr %.sroa.7954.0..sroa_idx, align 8
  %.sroa.8955.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 32
  store float %.sroa.11906.0.copyload, ptr %.sroa.8955.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0.copyload.i635 = load float, ptr %.sroa.0.sroa.5.0..sroa_idx.i, align 4
  %.sroa.0.sroa.6.0.copyload.i637 = load float, ptr %.sroa.0.sroa.6.0..sroa_idx.i, align 4
  %i.hj = load <2 x float>, ptr %.sroa.0.sroa.2.0..sroa_idx.i, align 4
  %i.hk = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 4 %2, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x float> poison)
  %i.hl = shufflevector <4 x float> %i.hk, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.hm = fadd <2 x float> %i.hj, %i.hl
  %i.hn = fmul <2 x float> %i.hm, splat (float 5.000000e-01)
  %i.ho = fadd float %.sroa.0.sroa.5.0.copyload.i635, %.sroa.0.sroa.6.0.copyload.i637
  %i.hp = fmul float %i.ho, 5.000000e-01
  %i.hq = call { <2 x float>, float } @_ZN4pbrt23SampleSphericalTriangleERKN4pstd5arrayINS_6Point3IfEELi3EEES3_NS_6Point2IfEEPf(ptr noundef nonnull align 4 dereferenceable(36) %5, <2 x float> %i.hn, float %i.hp, <2 x float> %.sroa.0459.0, ptr noundef nonnull %i.a) ; 2 uses
  %.fca.1.extract241 = extractvalue { <2 x float>, float } %i.hq, 1 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %i.hr = load float, ptr %i.a, align 4, !tbaa !16 ; 2 uses
  %i.hs = fcmp oeq float %i.hr, 0.000000e+00
  br i1 %i.hs, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN4pstd5arrayIN4pbrt6Point3IfEELi3EEC2ESt16initializer_listIS3_E.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, i8 0, i64 96, i1 false)
  br label %bb.ac

bb.l:                                             ; preds = %_ZN4pstd5arrayIN4pbrt6Point3IfEELi3EEC2ESt16initializer_listIS3_E.exit
  %.fca.0.extract240 = extractvalue { <2 x float>, float } %i.hq, 0 ; 10 uses
  %i.ht = fmul float %.0465, %i.hr
  %.sroa.0849.0.vec.extract = extractelement <2 x float> %.fca.0.extract240, i64 0 ; 3 uses
  %foldExtExtBinop986 = fmul <2 x float> %.sroa.0922.0.copyload, %.fca.0.extract240
  %i.hu = extractelement <2 x float> %foldExtExtBinop986, i64 0 ; 2 uses
  %shift988 = shufflevector <2 x float> %.sroa.0922.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop989 = fmul <2 x float> %shift988, %.fca.0.extract240
  %i.hv = extractelement <2 x float> %foldExtExtBinop989, i64 0 ; 2 uses
  %i.hw = fmul float %.sroa.11928.0.copyload, %.sroa.0849.0.vec.extract ; 2 uses
  %i.hx = call noundef float @llvm.fabs.f32(float %i.hu)
  %i.hy = call noundef float @llvm.fabs.f32(float %i.hv)
  %i.hz = call noundef float @llvm.fabs.f32(float %i.hw)
  %.sroa.0849.4.vec.extract = extractelement <2 x float> %.fca.0.extract240, i64 1 ; 4 uses
  %.sroa.0.0.vec.extract.i654 = extractelement <2 x float> %.sroa.0910.0.copyload, i64 0
  %i.ia = fmul float %.sroa.0.0.vec.extract.i654, %.sroa.0849.4.vec.extract ; 2 uses
  %i.ib = call noundef float @llvm.fabs.f32(float %i.ia)
  %i.ic = fadd float %i.ib, %i.hx
  %i.id = fsub float 1.000000e+00, %.sroa.0849.0.vec.extract
  %i.ie = fsub float %i.id, %.sroa.0849.4.vec.extract ; 5 uses
  %.sroa.0.0.vec.extract.i672 = extractelement <2 x float> %.sroa.0898.0.copyload, i64 0
  %.sroa.0.4.vec.extract.i673 = extractelement <2 x float> %.sroa.0898.0.copyload, i64 1
  %i.if = fmul float %.sroa.11906.0.copyload, %i.ie
  %i.ig = shufflevector <2 x float> %.sroa.0910.0.copyload, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.ih = insertelement <4 x float> %i.ig, float %.sroa.11918.0.copyload, i64 1
  %i.ii = insertelement <4 x float> %i.ih, float %i.ie, i64 2
  %i.ij = shufflevector <4 x float> %i.ii, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.ik = shufflevector <2 x float> %.fca.0.extract240, <2 x float> %.sroa.0898.0.copyload, <4 x i32> <i32 1, i32 1, i32 2, i32 3>
  %i.il = fmul <4 x float> %i.ij, %i.ik           ; 3 uses
  %i.im = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.il) ; 4 uses
  %i.in = extractelement <4 x float> %i.im, i64 0
  %i.io = fadd float %i.in, %i.hy
  %i.ip = extractelement <4 x float> %i.im, i64 1
  %i.iq = fadd float %i.ip, %i.hz
  %i.ir = call noundef float @llvm.fabs.f32(float %i.if)
  %i.is = extractelement <4 x float> %i.im, i64 2
  %i.it = fadd float %i.ic, %i.is
  %i.iu = extractelement <4 x float> %i.im, i64 3
  %i.iv = fadd float %i.io, %i.iu
  %i.iw = fadd float %i.iq, %i.ir
  %i.ix = fmul float %i.it, 3.576280e-07          ; 3 uses
  %i.iy = fmul float %i.iv, 3.576280e-07          ; 3 uses
  %i.iz = fmul float %i.iw, 3.576280e-07          ; 3 uses
  %i.ja = fadd float %i.ia, %i.hu
  %i.jb = extractelement <4 x float> %i.il, i64 0
  %i.jc = fadd float %i.jb, %i.hv
  %i.jd = extractelement <4 x float> %i.il, i64 1
  %i.je = fadd float %i.jd, %i.hw
  %i.jf = fmul float %.sroa.0.0.vec.extract.i672, %.fca.1.extract241
  %i.jg = fmul float %.sroa.0.4.vec.extract.i673, %.fca.1.extract241
  %i.jh = fmul float %.sroa.11906.0.copyload, %.fca.1.extract241
  %i.ji = fadd float %i.jf, %i.ja                 ; 3 uses
  %i.jj = fadd float %i.jg, %i.jc                 ; 3 uses
  %i.jk = fadd float %i.jh, %i.je                 ; 3 uses
  %.sroa.0.0.vec.insert.i724 = insertelement <2 x float> poison, float %i.ji, i64 0
  %i.jl = fsub <2 x float> %.sroa.0910.0.copyload, %.sroa.0922.0.copyload ; 3 uses
end_hunk_0
begin_hunk_1_@"_ZNSt17_Function_handlerIFvlEZN25Cylinder_Reintersect_Test8TestBodyEvE3$_0E9_M_invokeERKSt9_Any_dataOl":bb.a
          cleanup
  br label %bb.an

bb.ai:                                            ; preds = %bb.z
  %i.gq = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.aj:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit37.i.i.i
  %i.gr = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.ak:                                            ; preds = %bb.ab
  %i.gs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #29
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.pn19.i.i.i = phi { ptr, i32 } [ %i.gs, %bb.ak ], [ %i.gr, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ai
  %.pn19.pn.i.i.i = phi { ptr, i32 } [ %.pn19.i.i.i, %bb.al ], [ %i.gq, %bb.ai ]
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #29
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.ah
  %.pn19.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn19.pn.i.i.i, %bb.am ], [ %i.gp, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  br label %bb.at

bb.ao:                                            ; preds = %_ZN7testing7MessageD2Ev.exit40.i.i.i, %_ZN7testing15AssertionResultD2Ev.exit.i.i.i
  %i.gt = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !55
  %.not.i.i.i41.i.i.i = icmp eq ptr %i.gu, null
  br i1 %.not.i.i.i41.i.i.i, label %"_ZSt10__invoke_rIvRZN25Cylinder_Reintersect_Test8TestBodyEvE3$_0JlEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit", label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gv = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i42.i.i.i unwind label %bb.as

.noexc.i.i42.i.i.i:                               ; preds = %bb.ap
  br i1 %i.gv, label %bb.aq, label %"_ZSt10__invoke_rIvRZN25Cylinder_Reintersect_Test8TestBodyEvE3$_0JlEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"

bb.aq:                                            ; preds = %.noexc.i.i42.i.i.i
  %i.gw = load ptr, ptr %i.gt, align 8, !tbaa !55 ; 4 uses
  %i.gx = icmp eq ptr %i.gw, null
  br i1 %i.gx, label %"_ZSt10__invoke_rIvRZN25Cylinder_Reintersect_Test8TestBodyEvE3$_0JlEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit", label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gy = load ptr, ptr %i.gw, align 8, !tbaa !56 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gw, i64 16 ; 2 uses
  %i.ha = icmp eq ptr %i.gy, %i.gz
  br i1 %i.ha, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i44.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i43.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i43.i.i.i: ; preds = %bb.ar
  %i.hb = load i64, ptr %i.gz, align 8, !tbaa !66
  %i.hc = add i64 %i.hb, 1
  call void @_ZdlPvm(ptr noundef %i.gy, i64 noundef %i.hc) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i44.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i44.i.i.i: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i43.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.gw, i64 noundef 32) #31
  br label %"_ZSt10__invoke_rIvRZN25Cylinder_Reintersect_Test8TestBodyEvE3$_0JlEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"

bb.as:                                            ; preds = %bb.ap
  %i.hd = landingpad { ptr, i32 }
          catch ptr null
  %i.he = extractvalue { ptr, i32 } %i.hd, 0
  call void @__clang_call_terminate(ptr %i.he) #32
  unreachable

bb.at:                                            ; preds = %bb.an, %bb.s
  %.pn19.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn19.pn.pn.i.i.i, %bb.an ], [ %.pn.pn.pn.i.i.i, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  resume { ptr, i32 } %.pn19.pn.pn.pn.i.i.i

"_ZSt10__invoke_rIvRZN25Cylinder_Reintersect_Test8TestBodyEvE3$_0JlEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit": ; preds = %bb.ao, %.noexc.i.i42.i.i.i, %bb.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i44.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvlEZN25Cylinder_Reintersect_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #24 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN25Cylinder_Reintersect_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit" [
    i32 0, label %"_ZNSt14_Function_base13_Base_managerIZN25Cylinder_Reintersect_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit.sink.split"
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %"_ZNSt14_Function_base13_Base_managerIZN25Cylinder_Reintersect_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit.sink.split"

"_ZNSt14_Function_base13_Base_managerIZN25Cylinder_Reintersect_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit.sink.split": ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %1, %bb.b ], [ @"_ZTIZN25Cylinder_Reintersect_Test8TestBodyEvE3$_0", %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !308
  br label %"_ZNSt14_Function_base13_Base_managerIZN25Cylinder_Reintersect_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN25Cylinder_Reintersect_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit": ; preds = %"_ZNSt14_Function_base13_Base_managerIZN25Cylinder_Reintersect_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit.sink.split", %bb.a
  ret i1 false
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_shapes_test.cpp() #25 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  store <8 x float> <float f0x3F652546, float 2.664000e-01, float -1.614000e-01, float f0xBF400D1B, float 1.713500e+00, float 3.670000e-02, float 3.890000e-02, float -6.850000e-02>, ptr @_ZN4pbrtL10LMSFromXYZE, align 32, !tbaa !16
  store float 1.029600e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZN4pbrtL10LMSFromXYZE, i64 32), align 32, !tbaa !16
  %i.a = tail call ptr @llvm.invariant.start.p0(i64 36, ptr nonnull @_ZN4pbrtL10LMSFromXYZE) ; 0 uses
  store <8 x float> <float 9.869930e-01, float -1.470540e-01, float 1.599630e-01, float 4.323050e-01, float 5.183600e-01, float 4.929120e-02, float -8.528660e-03, float 4.004280e-02>, ptr @_ZN4pbrtL10XYZFromLMSE, align 32, !tbaa !16
  store float 9.684870e-01, ptr getelementptr inbounds nuw (i8, ptr @_ZN4pbrtL10XYZFromLMSE, i64 32), align 32, !tbaa !16
  %i.b = tail call ptr @llvm.invariant.start.p0(i64 36, ptr nonnull @_ZN4pbrtL10XYZFromLMSE) ; 0 uses
  tail call void @_ZN4pbrt14StatRegistererC1EPFvRNS_16StatsAccumulatorEEPFvNS_6Point2IiEEiRNS_21PixelStatsAccumulatorEE(ptr noundef nonnull align 1 dereferenceable(1) @_ZN4pbrtL29STATS_REGredundantBufferBytesE, ptr noundef nonnull @"_ZN4pbrt3$_08__invokeERNS_16StatsAccumulatorE", ptr noundef null)
  tail call void @_ZN4pbrt14StatRegistererC1EPFvRNS_16StatsAccumulatorEEPFvNS_6Point2IiEEiRNS_21PixelStatsAccumulatorEE(ptr noundef nonnull align 1 dereferenceable(1) @_ZN4pbrtL25STATS_REGnBufferCacheHitsE, ptr noundef nonnull @"_ZN4pbrt3$_18__invokeERNS_16StatsAccumulatorE", ptr noundef null)
  %i.c = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.d = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #30 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI25Triangle_Reintersect_TestEE, i64 16), ptr %i.d, align 8, !tbaa !63
  %i.e = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, ptr noundef null, ptr noundef null, ptr noundef %i.c, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.d)
  store ptr %i.e, ptr @_ZN25Triangle_Reintersect_Test10test_info_E, align 8, !tbaa !387
  %i.f = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN25Triangle_Reintersect_Test10test_info_E) ; 0 uses
  %i.g = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.h = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #30 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI24Triangle_SolidAngle_TestEE, i64 16), ptr %i.h, align 8, !tbaa !63
  %i.i = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.17, ptr noundef null, ptr noundef null, ptr noundef %i.g, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.h)
  store ptr %i.i, ptr @_ZN24Triangle_SolidAngle_Test10test_info_E, align 8, !tbaa !387
  %i.j = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN24Triangle_SolidAngle_Test10test_info_E) ; 0 uses
  %i.k = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.l = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #30 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI27FullSphere_Reintersect_TestEE, i64 16), ptr %i.l, align 8, !tbaa !63
  %i.m = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.8, ptr noundef null, ptr noundef null, ptr noundef %i.k, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.l)
  store ptr %i.m, ptr @_ZN27FullSphere_Reintersect_Test10test_info_E, align 8, !tbaa !387
  %i.n = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN27FullSphere_Reintersect_Test10test_info_E) ; 0 uses
  %i.o = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.p = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #30 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI24ParialSphere_Normal_TestEE, i64 16), ptr %i.p, align 8, !tbaa !63
  %i.q = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, ptr noundef null, ptr noundef null, ptr noundef %i.o, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.p)
  store ptr %i.q, ptr @_ZN24ParialSphere_Normal_Test10test_info_E, align 8, !tbaa !387
  %i.r = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN24ParialSphere_Normal_Test10test_info_E) ; 0 uses
  %i.s = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.t = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #30 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI30PartialSphere_Reintersect_TestEE, i64 16), ptr %i.t, align 8, !tbaa !63
  %i.u = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.8, ptr noundef null, ptr noundef null, ptr noundef %i.s, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.t)
  store ptr %i.u, ptr @_ZN30PartialSphere_Reintersect_Test10test_info_E, align 8, !tbaa !387
  %i.v = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN30PartialSphere_Reintersect_Test10test_info_E) ; 0 uses
  %i.w = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.x = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #30 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI25Cylinder_Reintersect_TestEE, i64 16), ptr %i.x, align 8, !tbaa !63
  %i.y = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.8, ptr noundef null, ptr noundef null, ptr noundef %i.w, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.x)
  store ptr %i.y, ptr @_ZN25Cylinder_Reintersect_Test10test_info_E, align 8, !tbaa !387
  %i.z = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN25Cylinder_Reintersect_Test10test_info_E) ; 0 uses
  %i.aa = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.ab = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #30 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI22Triangle_BadCases_TestEE, i64 16), ptr %i.ab, align 8, !tbaa !63
  %i.ac = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.39, ptr noundef null, ptr noundef null, ptr noundef %i.aa, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.ab)
  store ptr %i.ac, ptr @_ZN22Triangle_BadCases_Test10test_info_E, align 8, !tbaa !387
  %i.ad = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN22Triangle_BadCases_Test10test_info_E) ; 0 uses
  %i.ae = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.af = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #30 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI25BilinearPatch_Offset_TestEE, i64 16), ptr %i.af, align 8, !tbaa !63
  %i.ag = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, ptr noundef null, ptr noundef null, ptr noundef %i.ae, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.af)
  store ptr %i.ag, ptr @_ZN25BilinearPatch_Offset_Test10test_info_E, align 8, !tbaa !387
  %i.ah = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN25BilinearPatch_Offset_Test10test_info_E) ; 0 uses
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshr.i32(i32, i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.fshr.v2i32(<2 x i32>, <2 x i32>, <2 x i32>) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <4 x float> @llvm.masked.load.v4f32.p0(ptr captures(none), <4 x i1>, <4 x float>) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fma.v2f32(<2 x float>, <2 x float>, <2 x float>) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <6 x float> @llvm.masked.load.v6f32.p0(ptr captures(none), <6 x i1>, <6 x float>) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.sqrt.v4f32(<4 x float>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fma.v4f32(<4 x float>, <4 x float>, <4 x float>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <3 x float> @llvm.sqrt.v3f32(<3 x float>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.fshr.v4i32(<4 x i32>, <4 x i32>, <4 x i32>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <5 x float> @llvm.masked.load.v5f32.p0(ptr captures(none), <5 x i1>, <5 x float>) #27

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { nofree nounwind }
attributes #4 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { inlinehint mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { cold nofree noreturn }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #19 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #20 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #21 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #24 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #25 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #28 = { noreturn }
attributes #29 = { nounwind }
attributes #30 = { builtin allocsize(0) }
attributes #31 = { builtin nounwind }
attributes #32 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !11, i64 16}
!10 = !{!"_ZTSSt14_Function_base", !7, i64 0, !11, i64 16}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!13, !11, i64 24}
!13 = !{!"_ZTSSt8functionIFfvEE", !10, i64 0, !11, i64 24}
!14 = distinct !{null}
!15 = !{!"branch_weights", i32 1, i32 1048575}
!16 = !{!17, !17, i64 0}
!17 = !{!"float", !7, i64 0}
!18 = !{!19, !20, i64 0}
!19 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !20, i64 0, !20, i64 8, !20, i64 16}
!20 = !{!"p1 int", !11, i64 0}
!21 = !{!19, !20, i64 16}
!22 = !{!19, !20, i64 8}
!23 = !{!24, !25, i64 0}
!24 = !{!"_ZTSNSt12_Vector_baseIN4pbrt6Point3IfEESaIS2_EE17_Vector_impl_dataE", !25, i64 0, !25, i64 8, !25, i64 16}
!25 = !{!"p1 _ZTSN4pbrt6Point3IfEE", !11, i64 0}
!26 = !{!24, !25, i64 16}
!27 = !{!24, !25, i64 8}
!28 = !{!29, !30, i64 0}
!29 = !{!"_ZTSNSt12_Vector_baseIN4pbrt6Point2IfEESaIS2_EE17_Vector_impl_dataE", !30, i64 0, !30, i64 8, !30, i64 16}
!30 = !{!"p1 _ZTSN4pbrt6Point2IfEE", !11, i64 0}
!31 = !{!29, !30, i64 16}
!32 = !{!33, !34, i64 0}
!33 = !{!"_ZTSNSt12_Vector_baseIN4pbrt7Normal3IfEESaIS2_EE17_Vector_impl_dataE", !34, i64 0, !34, i64 8, !34, i64 16}
!34 = !{!"p1 _ZTSN4pbrt7Normal3IfEE", !11, i64 0}
!35 = !{!33, !34, i64 16}
!36 = !{!37, !38, i64 0}
!37 = !{!"_ZTSNSt12_Vector_baseIN4pbrt7Vector3IfEESaIS2_EE17_Vector_impl_dataE", !38, i64 0, !38, i64 8, !38, i64 16}
!38 = !{!"p1 _ZTSN4pbrt7Vector3IfEE", !11, i64 0}
!39 = !{!37, !38, i64 16}
!40 = !{!6, !6, i64 0}
!41 = !{!42, !46, i64 24}
!42 = !{!"_ZTSN4pstd6vectorIN4pbrt5ShapeENS_3pmr21polymorphic_allocatorIS2_EEEE", !43, i64 0, !45, i64 8, !46, i64 16, !46, i64 24}
!43 = !{!"_ZTSN4pstd3pmr21polymorphic_allocatorIN4pbrt5ShapeEEE", !44, i64 0}
!44 = !{!"p1 _ZTSN4pstd3pmr15memory_resourceE", !11, i64 0}
!45 = !{!"p1 _ZTSN4pbrt5ShapeE", !11, i64 0}
!46 = !{!"long", !7, i64 0}
!47 = !{!46, !46, i64 0}
!48 = !{!49, !50, i64 0}
!49 = !{!"_ZTSN7testing15AssertionResultE", !50, i64 0, !51, i64 8}
!50 = !{!"bool", !7, i64 0}
!51 = !{!"_ZTSN7testing8internal10scoped_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !52, i64 0}
!52 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !11, i64 0}
!53 = !{i8 0, i8 2}
!54 = !{}
!55 = !{!51, !52, i64 0}
!56 = !{!57, !59, i64 0}
!57 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !58, i64 0, !46, i64 8, !7, i64 16}
!58 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !59, i64 0}
!59 = !{!"p1 omnipotent char", !11, i64 0}
!60 = !{!61, !62, i64 0}
!61 = !{!"_ZTSN7testing8internal10scoped_ptrINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEE", !62, i64 0}
!62 = !{!"p1 _ZTSNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE", !11, i64 0}
!63 = !{!64, !64, i64 0}
!64 = !{!"vtable pointer", !8, i64 0}
!65 = distinct !{ptr @_ZN7testing7MessageD2Ev, null, null}
!66 = !{!7, !7, i64 0}
!67 = !{!42, !45, i64 8}
!68 = !{!69, !46, i64 0}
!69 = !{!"_ZTSN4pbrt13TaggedPointerIJNS_6SphereENS_8CylinderENS_4DiskENS_8TriangleENS_13BilinearPatchENS_5CurveEEEE", !46, i64 0}
!70 = !{!42, !46, i64 16}
!71 = !{!43, !44, i64 0}
!72 = distinct !{null}
!73 = distinct !{null, null}
!74 = !{!75, !46, i64 8}
!75 = !{!"_ZTSN4pbrt3RNGE", !46, i64 0, !46, i64 8}
!76 = !{!75, !46, i64 0}
!77 = !{!78, !78, i64 0}
!78 = !{!"p1 _ZTSN4pbrt3RNGE", !11, i64 0}
!79 = !{!80}
!80 = distinct !{!80, !81, !"_ZNK4pbrt5Shape6SampleENS_6Point2IfEE: argument 0"}
!81 = distinct !{!81, !"_ZNK4pbrt5Shape6SampleENS_6Point2IfEE"}
!82 = !{!30, !30, i64 0}
!83 = !{!84, !50, i64 88}
!84 = !{!"_ZTSN4pstd8optionalIN4pbrt11ShapeSampleEEE", !7, i64 0, !50, i64 88}
!85 = !{!86, !17, i64 24}
!86 = !{!"_ZTSN4pbrt3RayE", !87, i64 0, !89, i64 12, !17, i64 24, !91, i64 32}
!87 = !{!"_ZTSN4pbrt6Point3IfEE", !88, i64 0}
!88 = !{!"_ZTSN4pbrt6Tuple3INS_6Point3EfEE", !17, i64 0, !17, i64 4, !17, i64 8}
!89 = !{!"_ZTSN4pbrt7Vector3IfEE", !90, i64 0}
!90 = !{!"_ZTSN4pbrt6Tuple3INS_7Vector3EfEE", !17, i64 0, !17, i64 4, !17, i64 8}
!91 = !{!"_ZTSN4pbrt6MediumE", !92, i64 0}
!92 = !{!"_ZTSN4pbrt13TaggedPointerIJNS_17HomogeneousMediumENS_10GridMediumENS_13RGBGridMediumENS_11CloudMediumENS_13NanoVDBMediumEEEE", !46, i64 0}
!93 = !{!92, !46, i64 0}
!94 = !{!95}
!95 = distinct !{!95, !96, !"_ZNK4pbrt5Shape9IntersectERKNS_3RayEf: argument 0"}
!96 = distinct !{!96, !"_ZNK4pbrt5Shape9IntersectERKNS_3RayEf"}
!97 = !{!98, !98, i64 0}
!98 = !{!"p1 _ZTSN4pbrt3RayE", !11, i64 0}
!99 = !{!100, !100, i64 0}
!100 = !{!"p1 float", !11, i64 0}
!101 = !{!102, !50, i64 256}
!102 = !{!"_ZTSN4pstd8optionalIN4pbrt17ShapeIntersectionEEE", !7, i64 0, !50, i64 256}
!103 = !{!104}
!104 = distinct !{!104, !105, !"_ZNK4pbrt11Interaction8SpawnRayENS_7Vector3IfEE: argument 0"}
!105 = distinct !{!105, !"_ZNK4pbrt11Interaction8SpawnRayENS_7Vector3IfEE"}
!106 = !{!107, !17, i64 24}
!107 = !{!"_ZTSN4pbrt11InteractionE", !108, i64 0, !17, i64 24, !89, i64 28, !112, i64 40, !114, i64 52, !116, i64 64, !91, i64 72}
!108 = !{!"_ZTSN4pbrt8Point3fiE", !109, i64 0}
!109 = !{!"_ZTSN4pbrt6Point3INS_8IntervalEEE", !110, i64 0}
!110 = !{!"_ZTSN4pbrt6Tuple3INS_6Point3ENS_8IntervalEEE", !111, i64 0, !111, i64 8, !111, i64 16}
!111 = !{!"_ZTSN4pbrt8IntervalE", !17, i64 0, !17, i64 4}
!112 = !{!"_ZTSN4pbrt7Normal3IfEE", !113, i64 0}
!113 = !{!"_ZTSN4pbrt6Tuple3INS_7Normal3EfEE", !17, i64 0, !17, i64 4, !17, i64 8}
!114 = !{!"_ZTSN4pbrt6Point2IfEE", !115, i64 0}
!115 = !{!"_ZTSN4pbrt6Tuple2INS_6Point2EfEE", !17, i64 0, !17, i64 4}
!116 = !{!"p1 _ZTSN4pbrt15MediumInterfaceE", !11, i64 0}
!117 = !{!107, !116, i64 64}
!118 = !{!119, !104}
!119 = distinct !{!119, !120, !"_ZNK4pbrt11Interaction9GetMediumENS_7Vector3IfEE: argument 0"}
!120 = distinct !{!120, !"_ZNK4pbrt11Interaction9GetMediumENS_7Vector3IfEE"}
!121 = !{!122, !124}
!122 = distinct !{!122, !123, !"_ZNK4pbrt11Interaction9GetMediumENS_7Vector3IfEE: argument 0"}
!123 = distinct !{!123, !"_ZNK4pbrt11Interaction9GetMediumENS_7Vector3IfEE"}
!124 = distinct !{!124, !125, !"_ZNK4pbrt11Interaction10SpawnRayToENS_6Point3IfEE: argument 0"}
!125 = distinct !{!125, !"_ZNK4pbrt11Interaction10SpawnRayToENS_6Point3IfEE"}
!126 = !{!124}
!127 = distinct !{!127, !128}
!128 = !{!"llvm.loop.mustprogress"}
!129 = distinct !{!129, !128}
!130 = !{!88, !17, i64 8}
!131 = !{!88, !17, i64 0}
!132 = !{!88, !17, i64 4}
!133 = distinct !{!133, !128}
!134 = !{!135, !17, i64 80}
!135 = !{!"_ZTSN4pbrt11ShapeSampleE", !107, i64 0, !17, i64 80}
!136 = distinct !{!136, !128}
!137 = !{!138, !138, i64 0}
!138 = !{!"double", !7, i64 0}
!139 = !{!57, !46, i64 8}
!140 = distinct !{!140, !128}
end_hunk_1
