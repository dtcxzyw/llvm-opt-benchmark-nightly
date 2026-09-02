Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/mesh_boolean?download=true
inline.NumInlined: 2199
inline.NumDeleted: 1039
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 41
begin_hunk_0_@_ZN3igl8copyleft4cgal12mesh_booleanIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENS4_IiLin1ELi3ELi0ELin1ELi3EEENS4_ImLi2ELi1ELi0ELi2ELi1EEENS4_ISK_Lin1ELin1ELi1ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEEEEbRKNS3_10MatrixBaseIT_EERKNSR_IT0_EERKNSR_IT1_EERKSt8functionIFiNS4_IiLi1ELin1ELi1ELi1ELin1EEEEERKS14_IFiiiEERNS3_15PlainObjectBaseIT2_EERNS1E_IT3_EERNS1E_IT4_EE:bb.a
  %i.ee = load i32, ptr %i.eb, align 4, !tbaa !107
  store i32 %i.ee, ptr %i.ec, align 4, !tbaa !107
  %i.ef = getelementptr [4 x i8], ptr %i.eb, i64 %i.ea
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !107
  store i32 %i.eg, ptr %i.ed, align 4, !tbaa !107
  %.idx452 = shl i64 %i.ea, 3
  %i.eh = getelementptr i8, ptr %i.eb, i64 %.idx452
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !107
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  store i32 %i.ei, ptr %i.ej, align 4, !tbaa !107
  %.idx453 = mul i64 %i.ea, 12
  %i.ek = getelementptr i8, ptr %i.eb, i64 %.idx453
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !107
  %i.em = getelementptr inbounds nuw i8, ptr %i.ed, i64 4
  store i32 %i.el, ptr %i.em, align 4, !tbaa !107
  %i.en = load i64, ptr %i.dq, align 8, !tbaa !111 ; 4 uses
  %i.eo = icmp eq i64 %i.en, 0
  br i1 %i.eo, label %_ZN5Eigen8internal28conditional_aligned_new_autoIiLb1EEEPT_m.exit.thread.i.i.i, label %bb.ag

bb.af:                                            ; preds = %_ZN5Eigen6MatrixIiLi1ELin1ELi1ELi1ELin1EEC2IimEERKT_RKT0_.exit
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %.body157

_ZN5Eigen8internal28conditional_aligned_new_autoIiLb1EEEPT_m.exit.thread.i.i.i: ; preds = %_ZN5Eigen6MatrixIiLi1ELin1ELi1ELi1ELin1EEC2IimEERKT_RKT0_.exit159.preheader
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %27, i8 0, i64 16, i1 false)
  br label %_ZN5Eigen6MatrixIiLi1ELin1ELi1ELi1ELin1EEC2ERKS1_.exit

bb.ag:                                            ; preds = %_ZN5Eigen6MatrixIiLi1ELin1ELi1ELi1ELin1EEC2IimEERKT_RKT0_.exit159.preheader
  %i.eq = icmp ugt i64 %i.en, 4611686018427387903
  br i1 %i.eq, label %.invoke510, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i: ; preds = %bb.ag
  %i.er = shl nuw i64 %i.en, 2                    ; 2 uses
  %i.es = call noalias ptr @malloc(i64 noundef %i.er) #33 ; 3 uses
  %i.et = icmp eq ptr %i.es, null
  br i1 %i.et, label %.invoke510, label %bb.ah

bb.ah:                                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i
  store ptr %i.es, ptr %27, align 8, !tbaa !110
  store i64 %i.en, ptr %i.dr, align 8, !tbaa !111
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.es, ptr nonnull align 4 %i.ec, i64 %i.er, i1 false)
  br label %_ZN5Eigen6MatrixIiLi1ELin1ELi1ELi1ELin1EEC2ERKS1_.exit

_ZN5Eigen6MatrixIiLi1ELin1ELi1ELi1ELin1EEC2ERKS1_.exit: ; preds = %bb.ah, %_ZN5Eigen8internal28conditional_aligned_new_autoIiLb1EEEPT_m.exit.thread.i.i.i
  %i.eu = load ptr, ptr %i.ds, align 8, !tbaa !26
  %.not.i.i161 = icmp eq ptr %i.eu, null
  br i1 %.not.i.i161, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %_ZN5Eigen6MatrixIiLi1ELin1ELi1ELi1ELin1EEC2ERKS1_.exit
  invoke void @_ZSt25__throw_bad_function_callv() #34
          to label %.noexc162 unwind label %.loopexit.split-lp334

.noexc162:                                        ; preds = %bb.ai
  unreachable

bb.aj:                                            ; preds = %_ZN5Eigen6MatrixIiLi1ELin1ELi1ELi1ELin1EEC2ERKS1_.exit
  %i.ev = load ptr, ptr %i.dt, align 8, !tbaa !113
  %i.ew = invoke noundef i32 %i.ev(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(16) %27)
          to label %bb.ak unwind label %.loopexit333, !inline_history !2

bb.ak:                                            ; preds = %bb.aj
  %i.ex = getelementptr [4 x i8], ptr %.sroa.0277.0.ph, i64 %.098383 ; 2 uses
  store i32 %i.ew, ptr %i.ex, align 4, !tbaa !107
  %i.ey = load ptr, ptr %27, align 8, !tbaa !110
  call void @free(ptr noundef %i.ey) #12
  %i.ez = load i64, ptr %i.du, align 8, !tbaa !111 ; 4 uses
  %i.fa = icmp eq i64 %i.ez, 0
  br i1 %i.fa, label %_ZN5Eigen8internal28conditional_aligned_new_autoIiLb1EEEPT_m.exit.thread.i.i.i165, label %bb.al

_ZN5Eigen8internal28conditional_aligned_new_autoIiLb1EEEPT_m.exit.thread.i.i.i165: ; preds = %bb.ak
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %28, i8 0, i64 16, i1 false)
  br label %_ZN5Eigen6MatrixIiLi1ELin1ELi1ELi1ELin1EEC2ERKS1_.exit168

bb.al:                                            ; preds = %bb.ak
  %i.fb = icmp ugt i64 %i.ez, 4611686018427387903
  br i1 %i.fb, label %.invoke510, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i164

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i164: ; preds = %bb.al
  %i.fc = shl nuw i64 %i.ez, 2                    ; 2 uses
  %i.fd = call noalias ptr @malloc(i64 noundef %i.fc) #33 ; 3 uses
  %i.fe = icmp eq ptr %i.fd, null
  br i1 %i.fe, label %.invoke510, label %bb.am

.invoke510:                                       ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i164, %bb.al, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i, %bb.ag
  %i.ff = call ptr @__cxa_allocate_exception(i64 8) #12 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ff, align 8, !tbaa !46
  invoke void @__cxa_throw(ptr nonnull %i.ff, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
          to label %.cont511 unwind label %bb.aq

.cont511:                                         ; preds = %.invoke510
  unreachable

bb.am:                                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i164
  store ptr %i.fd, ptr %28, align 8, !tbaa !110
  store i64 %i.ez, ptr %i.dv, align 8, !tbaa !111
  %i.fg = load ptr, ptr %26, align 8, !tbaa !110
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.fd, ptr align 4 %i.fg, i64 %i.fc, i1 false)
  br label %_ZN5Eigen6MatrixIiLi1ELin1ELi1ELi1ELin1EEC2ERKS1_.exit168

_ZN5Eigen6MatrixIiLi1ELin1ELi1ELi1ELin1EEC2ERKS1_.exit168: ; preds = %bb.am, %_ZN5Eigen8internal28conditional_aligned_new_autoIiLb1EEEPT_m.exit.thread.i.i.i165
  %i.fh = load ptr, ptr %i.ds, align 8, !tbaa !26
  %.not.i.i169 = icmp eq ptr %i.fh, null
  br i1 %.not.i.i169, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %_ZN5Eigen6MatrixIiLi1ELin1ELi1ELi1ELin1EEC2ERKS1_.exit168
  invoke void @_ZSt25__throw_bad_function_callv() #34
          to label %.noexc170 unwind label %.loopexit.split-lp339

.noexc170:                                        ; preds = %bb.an
  unreachable

bb.ao:                                            ; preds = %_ZN5Eigen6MatrixIiLi1ELin1ELi1ELi1ELin1EEC2ERKS1_.exit168
  %i.fi = load ptr, ptr %i.dt, align 8, !tbaa !113
  %i.fj = invoke noundef i32 %i.fi(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(16) %28)
          to label %bb.ap unwind label %.loopexit338, !inline_history !2

bb.ap:                                            ; preds = %bb.ao
  %i.fk = getelementptr [4 x i8], ptr %i.ex, i64 %i.k
  store i32 %i.fj, ptr %i.fk, align 4, !tbaa !107
  %i.fl = load ptr, ptr %28, align 8, !tbaa !110
  call void @free(ptr noundef %i.fl) #12
  %i.fm = load ptr, ptr %26, align 8, !tbaa !110
  call void @free(ptr noundef %i.fm) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #12
  %i.fn = load ptr, ptr %25, align 8, !tbaa !110
  call void @free(ptr noundef %i.fn) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #12
  %i.fo = add nuw i64 %.098383, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.fo, %i.k
  br i1 %exitcond.not, label %.lr.ph388, label %bb.ad, !llvm.loop !228

bb.aq:                                            ; preds = %.invoke510
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %.body157

.loopexit333:                                     ; preds = %bb.aj
  %lpad.loopexit335 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

.loopexit.split-lp334:                            ; preds = %bb.ai
  %lpad.loopexit.split-lp336 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.ar:                                            ; preds = %.loopexit.split-lp334, %.loopexit333
  %lpad.phi337 = phi { ptr, i32 } [ %lpad.loopexit335, %.loopexit333 ], [ %lpad.loopexit.split-lp336, %.loopexit.split-lp334 ]
  %i.fq = load ptr, ptr %27, align 8, !tbaa !110
  call void @free(ptr noundef %i.fq) #12
  br label %.body157

.loopexit338:                                     ; preds = %bb.ao
  %lpad.loopexit340 = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

.loopexit.split-lp339:                            ; preds = %bb.an
  %lpad.loopexit.split-lp341 = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.as:                                            ; preds = %.loopexit.split-lp339, %.loopexit338
  %lpad.phi342 = phi { ptr, i32 } [ %lpad.loopexit340, %.loopexit338 ], [ %lpad.loopexit.split-lp341, %.loopexit.split-lp339 ]
  %i.fr = load ptr, ptr %28, align 8, !tbaa !110
  call void @free(ptr noundef %i.fr) #12
  br label %.body157

.body157:                                         ; preds = %bb.aq, %bb.ar, %bb.as, %bb.af
  %.pn128.pn = phi { ptr, i32 } [ %i.ep, %bb.af ], [ %lpad.phi337, %bb.ar ], [ %lpad.phi342, %bb.as ], [ %i.fp, %bb.aq ]
  %i.fs = load ptr, ptr %26, align 8, !tbaa !110
  call void @free(ptr noundef %i.fs) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #12
  br label %.body155

.body155:                                         ; preds = %bb.ae, %.body157
  %.pn128.pn.pn = phi { ptr, i32 } [ %.pn128.pn, %.body157 ], [ %i.dy, %bb.ae ]
  %i.ft = load ptr, ptr %25, align 8, !tbaa !110
  call void @free(ptr noundef %i.ft) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #12
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit212

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i174: ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %i.fu = ptrtoint ptr %.sroa.13.1 to i64
  %i.fv = ptrtoint ptr %.sroa.0259.1 to i64       ; 3 uses
  %i.fw = sub i64 %i.fu, %i.fv
  %i.fx = ashr exact i64 %i.fw, 2                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %29, i8 0, i64 24, i1 false)
  %i.fy = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  %.not.i218 = icmp eq ptr %.sroa.13.1, %.sroa.0259.1
  br i1 %.not.i218, label %bb.bn, label %bb.at

bb.at:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i174
  %i.ga = icmp sgt i64 %i.fx, 0
  br i1 %i.ga, label %bb.au, label %.sink.split.i219

bb.au:                                            ; preds = %bb.at
  %i.gb = icmp samesign ugt i64 %i.fx, 1537228672809129301
  br i1 %i.gb, label %.invoke512, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i221

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i221: ; preds = %bb.au
  %i.gc = mul nuw i64 %i.fx, 12
  %i.gd = call noalias ptr @malloc(i64 noundef %i.gc) #33 ; 2 uses
  %i.ge = icmp eq ptr %i.gd, null
  br i1 %i.ge, label %.invoke512, label %.sink.split.i219

.invoke512:                                       ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i221, %bb.au
  %i.gf = call ptr @__cxa_allocate_exception(i64 8) #12 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.gf, align 8, !tbaa !46
  invoke void @__cxa_throw(ptr nonnull %i.gf, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
          to label %.cont513 unwind label %bb.av

.cont513:                                         ; preds = %.invoke512
  unreachable

.sink.split.i219:                                 ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i221, %bb.at
  %.sink.i220 = phi ptr [ %i.gd, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i221 ], [ null, %bb.at ]
  store ptr %.sink.i220, ptr %29, align 8, !tbaa !62
  br label %bb.bn

bb.av:                                            ; preds = %.invoke512
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %.body176

bb.aw:                                            ; preds = %.lr.ph388, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %.096387 = phi i64 [ 0, %.lr.ph388 ], [ %i.ia, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 4 uses
  %.sroa.20.0386 = phi ptr [ null, %.lr.ph388 ], [ %.sroa.20.1, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 13 uses
  %.sroa.13.0385 = phi ptr [ null, %.lr.ph388 ], [ %.sroa.13.1, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 7 uses
  %.sroa.0259.0384 = phi ptr [ null, %.lr.ph388 ], [ %.sroa.0259.1, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 17 uses
  %i.gh = getelementptr [4 x i8], ptr %.sroa.0277.0.ph, i64 %.096387 ; 2 uses
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !107
  %i.gj = getelementptr [4 x i8], ptr %i.gh, i64 %i.k
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !107
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.gi, ptr %i.a, align 4, !tbaa !107
  store i32 %i.gk, ptr %i.b, align 4, !tbaa !107
  %i.gl = load ptr, ptr %i.dw, align 8, !tbaa !26
  %.not.i.i179 = icmp eq ptr %i.gl, null
  br i1 %.not.i.i179, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  invoke void @_ZSt25__throw_bad_function_callv() #34
          to label %.noexc180 unwind label %.loopexit.split-lp

.noexc180:                                        ; preds = %bb.ax
  unreachable

bb.ay:                                            ; preds = %bb.aw
  %i.gm = load ptr, ptr %i.dx, align 8, !tbaa !115
  %i.gn = invoke noundef i32 %i.gm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.az unwind label %.loopexit322, !inline_history !3 ; 2 uses

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.go = icmp sgt i32 %i.gn, 0
  br i1 %i.go, label %bb.ba, label %bb.bg

bb.ba:                                            ; preds = %bb.az
  %i.gp = trunc i64 %.096387 to i32
  %i.gq = add i32 %i.gp, 1                        ; 2 uses
  %.not.i.i182 = icmp eq ptr %.sroa.13.0385, %.sroa.20.0386
  br i1 %.not.i.i182, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  store i32 %i.gq, ptr %.sroa.13.0385, align 4, !tbaa !107
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.13.0385, i64 4
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.bc:                                            ; preds = %bb.ba
  %i.gs = ptrtoint ptr %.sroa.20.0386 to i64
  %i.gt = ptrtoint ptr %.sroa.0259.0384 to i64
  %i.gu = sub i64 %i.gs, %i.gt                    ; 6 uses
  %i.gv = icmp eq i64 %i.gu, 9223372036854775804
  br i1 %i.gv, label %bb.bd, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.bd:                                            ; preds = %bb.bc
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #34
          to label %.noexc184 unwind label %.loopexit.split-lp329

.noexc184:                                        ; preds = %bb.bd
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.bc
  %i.gw = ashr exact i64 %i.gu, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.gw, i64 1)
  %i.gx = add nsw i64 %.sroa.speculated.i.i.i.i, %i.gw ; 2 uses
  %i.gy = icmp ult i64 %i.gx, %i.gw
  %i.gz = call i64 @llvm.umin.i64(i64 %i.gx, i64 2305843009213693951)
  %i.ha = select i1 %i.gy, i64 2305843009213693951, i64 %i.gz ; 3 uses
  %.not.i.i.i.i183 = icmp ne i64 %i.ha, 0
  call void @llvm.assume(i1 %.not.i.i.i.i183)
  %i.hb = shl nuw nsw i64 %i.ha, 2
  %i.hc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hb) #32
          to label %.noexc185 unwind label %.loopexit328 ; 4 uses

.noexc185:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.hd = getelementptr inbounds i8, ptr %i.hc, i64 %i.gu ; 2 uses
  store i32 %i.gq, ptr %i.hd, align 4, !tbaa !107
  %i.he = icmp sgt i64 %i.gu, 0
  br i1 %i.he, label %bb.be, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.be:                                            ; preds = %.noexc185
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.hc, ptr align 4 %.sroa.0259.0384, i64 %i.gu, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.be, %.noexc185
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hd, i64 4
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0259.0384, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0259.0384, i64 noundef %i.gu) #31
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.bf, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %i.ha
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

.loopexit322:                                     ; preds = %bb.ay
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

.loopexit.split-lp:                               ; preds = %bb.ax
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

.loopexit328:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit330 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

.loopexit.split-lp329:                            ; preds = %bb.bd
  %lpad.loopexit.split-lp331 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.bg:                                            ; preds = %bb.az
  %i.hh = icmp slt i32 %i.gn, 0
  br i1 %i.hh, label %bb.bh, label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.bh:                                            ; preds = %bb.bg
  %i.hi = trunc i64 %.096387 to i32
  %i.hj = xor i32 %i.hi, -1                       ; 2 uses
  %.not.i.i186 = icmp eq ptr %.sroa.13.0385, %.sroa.20.0386
  br i1 %.not.i.i186, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  store i32 %i.hj, ptr %.sroa.13.0385, align 4, !tbaa !107
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.13.0385, i64 4
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.bj:                                            ; preds = %bb.bh
  %i.hl = ptrtoint ptr %.sroa.20.0386 to i64
  %i.hm = ptrtoint ptr %.sroa.0259.0384 to i64
  %i.hn = sub i64 %i.hl, %i.hm                    ; 6 uses
  %i.ho = icmp eq i64 %i.hn, 9223372036854775804
  br i1 %i.ho, label %bb.bk, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i187

bb.bk:                                            ; preds = %bb.bj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #34
          to label %.noexc193 unwind label %.loopexit.split-lp324

.noexc193:                                        ; preds = %bb.bk
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i187: ; preds = %bb.bj
  %i.hp = ashr exact i64 %i.hn, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i188 = call i64 @llvm.umax.i64(i64 %i.hp, i64 1)
  %i.hq = add nsw i64 %.sroa.speculated.i.i.i.i188, %i.hp ; 2 uses
  %i.hr = icmp ult i64 %i.hq, %i.hp
  %i.hs = call i64 @llvm.umin.i64(i64 %i.hq, i64 2305843009213693951)
  %i.ht = select i1 %i.hr, i64 2305843009213693951, i64 %i.hs ; 3 uses
  %.not.i.i.i.i189 = icmp ne i64 %i.ht, 0
  call void @llvm.assume(i1 %.not.i.i.i.i189)
  %i.hu = shl nuw nsw i64 %i.ht, 2
  %i.hv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hu) #32
          to label %.noexc194 unwind label %.loopexit323 ; 4 uses

.noexc194:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i187
  %i.hw = getelementptr inbounds i8, ptr %i.hv, i64 %i.hn ; 2 uses
  store i32 %i.hj, ptr %i.hw, align 4, !tbaa !107
  %i.hx = icmp sgt i64 %i.hn, 0
  br i1 %i.hx, label %bb.bl, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i190

bb.bl:                                            ; preds = %.noexc194
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.hv, ptr align 4 %.sroa.0259.0384, i64 %i.hn, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i190

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i190: ; preds = %bb.bl, %.noexc194
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hw, i64 4
  %.not.i17.i.i.i191 = icmp eq ptr %.sroa.0259.0384, null
  br i1 %.not.i17.i.i.i191, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i192, label %bb.bm

bb.bm:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i190
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0259.0384, i64 noundef %i.hn) #31
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i192

end_hunk_0
begin_hunk_1_@_ZN3igl8copyleft4cgal12mesh_booleanIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENS4_IiLin1ELi3ELi0ELin1ELi3EEENS4_ImLi2ELi1ELi0ELi2ELi1EEESL_NS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEEEEbRKNS3_10MatrixBaseIT_EERKNSQ_IT0_EERKNSQ_IT1_EERKSt8functionIFiNS4_IiLi1ELin1ELi1ELi1ELin1EEEEERKS13_IFiiiEERNS3_15PlainObjectBaseIT2_EERNS1D_IT3_EERNS1D_IT4_EE:bb.a
  %i.ee = load i32, ptr %i.eb, align 4, !tbaa !107
  store i32 %i.ee, ptr %i.ec, align 4, !tbaa !107
  %i.ef = getelementptr [4 x i8], ptr %i.eb, i64 %i.ea
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !107
  store i32 %i.eg, ptr %i.ed, align 4, !tbaa !107
  %.idx446 = shl i64 %i.ea, 3
  %i.eh = getelementptr i8, ptr %i.eb, i64 %.idx446
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !107
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  store i32 %i.ei, ptr %i.ej, align 4, !tbaa !107
  %.idx447 = mul i64 %i.ea, 12
  %i.ek = getelementptr i8, ptr %i.eb, i64 %.idx447
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !107
  %i.em = getelementptr inbounds nuw i8, ptr %i.ed, i64 4
  store i32 %i.el, ptr %i.em, align 4, !tbaa !107
  %i.en = load i64, ptr %i.dq, align 8, !tbaa !111 ; 4 uses
  %i.eo = icmp eq i64 %i.en, 0
  br i1 %i.eo, label %_ZN5Eigen8internal28conditional_aligned_new_autoIiLb1EEEPT_m.exit.thread.i.i.i, label %bb.ag

bb.af:                                            ; preds = %_ZN5Eigen6MatrixIiLi1ELin1ELi1ELi1ELin1EEC2IimEERKT_RKT0_.exit
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %.body157

_ZN5Eigen8internal28conditional_aligned_new_autoIiLb1EEEPT_m.exit.thread.i.i.i: ; preds = %_ZN5Eigen6MatrixIiLi1ELin1ELi1ELi1ELin1EEC2IimEERKT_RKT0_.exit159.preheader
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %27, i8 0, i64 16, i1 false)
  br label %_ZN5Eigen6MatrixIiLi1ELin1ELi1ELi1ELin1EEC2ERKS1_.exit

bb.ag:                                            ; preds = %_ZN5Eigen6MatrixIiLi1ELin1ELi1ELi1ELin1EEC2IimEERKT_RKT0_.exit159.preheader
  %i.eq = icmp ugt i64 %i.en, 4611686018427387903
  br i1 %i.eq, label %.invoke502, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i: ; preds = %bb.ag
  %i.er = shl nuw i64 %i.en, 2                    ; 2 uses
  %i.es = call noalias ptr @malloc(i64 noundef %i.er) #33 ; 3 uses
  %i.et = icmp eq ptr %i.es, null
  br i1 %i.et, label %.invoke502, label %bb.ah

bb.ah:                                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i
  store ptr %i.es, ptr %27, align 8, !tbaa !110
  store i64 %i.en, ptr %i.dr, align 8, !tbaa !111
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.es, ptr nonnull align 4 %i.ec, i64 %i.er, i1 false)
  br label %_ZN5Eigen6MatrixIiLi1ELin1ELi1ELi1ELin1EEC2ERKS1_.exit

_ZN5Eigen6MatrixIiLi1ELin1ELi1ELi1ELin1EEC2ERKS1_.exit: ; preds = %bb.ah, %_ZN5Eigen8internal28conditional_aligned_new_autoIiLb1EEEPT_m.exit.thread.i.i.i
  %i.eu = load ptr, ptr %i.ds, align 8, !tbaa !26
  %.not.i.i161 = icmp eq ptr %i.eu, null
  br i1 %.not.i.i161, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %_ZN5Eigen6MatrixIiLi1ELin1ELi1ELi1ELin1EEC2ERKS1_.exit
  invoke void @_ZSt25__throw_bad_function_callv() #34
          to label %.noexc162 unwind label %.loopexit.split-lp331

.noexc162:                                        ; preds = %bb.ai
  unreachable

bb.aj:                                            ; preds = %_ZN5Eigen6MatrixIiLi1ELin1ELi1ELi1ELin1EEC2ERKS1_.exit
  %i.ev = load ptr, ptr %i.dt, align 8, !tbaa !113
  %i.ew = invoke noundef i32 %i.ev(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(16) %27)
          to label %bb.ak unwind label %.loopexit330, !inline_history !2

bb.ak:                                            ; preds = %bb.aj
  %i.ex = getelementptr [4 x i8], ptr %.sroa.0275.0.ph, i64 %.098378 ; 2 uses
  store i32 %i.ew, ptr %i.ex, align 4, !tbaa !107
  %i.ey = load ptr, ptr %27, align 8, !tbaa !110
  call void @free(ptr noundef %i.ey) #12
  %i.ez = load i64, ptr %i.du, align 8, !tbaa !111 ; 4 uses
  %i.fa = icmp eq i64 %i.ez, 0
  br i1 %i.fa, label %_ZN5Eigen8internal28conditional_aligned_new_autoIiLb1EEEPT_m.exit.thread.i.i.i165, label %bb.al

_ZN5Eigen8internal28conditional_aligned_new_autoIiLb1EEEPT_m.exit.thread.i.i.i165: ; preds = %bb.ak
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %28, i8 0, i64 16, i1 false)
  br label %_ZN5Eigen6MatrixIiLi1ELin1ELi1ELi1ELin1EEC2ERKS1_.exit168

bb.al:                                            ; preds = %bb.ak
  %i.fb = icmp ugt i64 %i.ez, 4611686018427387903
  br i1 %i.fb, label %.invoke502, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i164

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i164: ; preds = %bb.al
  %i.fc = shl nuw i64 %i.ez, 2                    ; 2 uses
  %i.fd = call noalias ptr @malloc(i64 noundef %i.fc) #33 ; 3 uses
  %i.fe = icmp eq ptr %i.fd, null
  br i1 %i.fe, label %.invoke502, label %bb.am

.invoke502:                                       ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i164, %bb.al, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i, %bb.ag
  %i.ff = call ptr @__cxa_allocate_exception(i64 8) #12 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ff, align 8, !tbaa !46
  invoke void @__cxa_throw(ptr nonnull %i.ff, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
          to label %.cont503 unwind label %bb.aq

.cont503:                                         ; preds = %.invoke502
  unreachable

bb.am:                                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i164
  store ptr %i.fd, ptr %28, align 8, !tbaa !110
  store i64 %i.ez, ptr %i.dv, align 8, !tbaa !111
  %i.fg = load ptr, ptr %26, align 8, !tbaa !110
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.fd, ptr align 4 %i.fg, i64 %i.fc, i1 false)
  br label %_ZN5Eigen6MatrixIiLi1ELin1ELi1ELi1ELin1EEC2ERKS1_.exit168

_ZN5Eigen6MatrixIiLi1ELin1ELi1ELi1ELin1EEC2ERKS1_.exit168: ; preds = %bb.am, %_ZN5Eigen8internal28conditional_aligned_new_autoIiLb1EEEPT_m.exit.thread.i.i.i165
  %i.fh = load ptr, ptr %i.ds, align 8, !tbaa !26
  %.not.i.i169 = icmp eq ptr %i.fh, null
  br i1 %.not.i.i169, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %_ZN5Eigen6MatrixIiLi1ELin1ELi1ELi1ELin1EEC2ERKS1_.exit168
  invoke void @_ZSt25__throw_bad_function_callv() #34
          to label %.noexc170 unwind label %.loopexit.split-lp336

.noexc170:                                        ; preds = %bb.an
  unreachable

bb.ao:                                            ; preds = %_ZN5Eigen6MatrixIiLi1ELin1ELi1ELi1ELin1EEC2ERKS1_.exit168
  %i.fi = load ptr, ptr %i.dt, align 8, !tbaa !113
  %i.fj = invoke noundef i32 %i.fi(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(16) %28)
          to label %bb.ap unwind label %.loopexit335, !inline_history !2

bb.ap:                                            ; preds = %bb.ao
  %i.fk = getelementptr [4 x i8], ptr %i.ex, i64 %i.k
  store i32 %i.fj, ptr %i.fk, align 4, !tbaa !107
  %i.fl = load ptr, ptr %28, align 8, !tbaa !110
  call void @free(ptr noundef %i.fl) #12
  %i.fm = load ptr, ptr %26, align 8, !tbaa !110
  call void @free(ptr noundef %i.fm) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #12
  %i.fn = load ptr, ptr %25, align 8, !tbaa !110
  call void @free(ptr noundef %i.fn) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #12
  %i.fo = add nuw i64 %.098378, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.fo, %i.k
  br i1 %exitcond.not, label %.lr.ph383, label %bb.ad, !llvm.loop !422

bb.aq:                                            ; preds = %.invoke502
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %.body157

.loopexit330:                                     ; preds = %bb.aj
  %lpad.loopexit332 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

.loopexit.split-lp331:                            ; preds = %bb.ai
  %lpad.loopexit.split-lp333 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.ar:                                            ; preds = %.loopexit.split-lp331, %.loopexit330
  %lpad.phi334 = phi { ptr, i32 } [ %lpad.loopexit332, %.loopexit330 ], [ %lpad.loopexit.split-lp333, %.loopexit.split-lp331 ]
  %i.fq = load ptr, ptr %27, align 8, !tbaa !110
  call void @free(ptr noundef %i.fq) #12
  br label %.body157

.loopexit335:                                     ; preds = %bb.ao
  %lpad.loopexit337 = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

.loopexit.split-lp336:                            ; preds = %bb.an
  %lpad.loopexit.split-lp338 = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.as:                                            ; preds = %.loopexit.split-lp336, %.loopexit335
  %lpad.phi339 = phi { ptr, i32 } [ %lpad.loopexit337, %.loopexit335 ], [ %lpad.loopexit.split-lp338, %.loopexit.split-lp336 ]
  %i.fr = load ptr, ptr %28, align 8, !tbaa !110
  call void @free(ptr noundef %i.fr) #12
  br label %.body157

.body157:                                         ; preds = %bb.aq, %bb.ar, %bb.as, %bb.af
  %.pn128.pn = phi { ptr, i32 } [ %i.ep, %bb.af ], [ %lpad.phi334, %bb.ar ], [ %lpad.phi339, %bb.as ], [ %i.fp, %bb.aq ]
  %i.fs = load ptr, ptr %26, align 8, !tbaa !110
  call void @free(ptr noundef %i.fs) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #12
  br label %.body155

.body155:                                         ; preds = %bb.ae, %.body157
  %.pn128.pn.pn = phi { ptr, i32 } [ %.pn128.pn, %.body157 ], [ %i.dy, %bb.ae ]
  %i.ft = load ptr, ptr %25, align 8, !tbaa !110
  call void @free(ptr noundef %i.ft) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #12
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit210

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i174: ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %i.fu = ptrtoint ptr %.sroa.13.1 to i64
  %i.fv = ptrtoint ptr %.sroa.0257.1 to i64       ; 3 uses
  %i.fw = sub i64 %i.fu, %i.fv
  %i.fx = ashr exact i64 %i.fw, 2                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %29, i8 0, i64 24, i1 false)
  %i.fy = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  %.not.i216 = icmp eq ptr %.sroa.13.1, %.sroa.0257.1
  br i1 %.not.i216, label %bb.bn, label %bb.at

bb.at:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i174
  %i.ga = icmp sgt i64 %i.fx, 0
  br i1 %i.ga, label %bb.au, label %.sink.split.i217

bb.au:                                            ; preds = %bb.at
  %i.gb = icmp samesign ugt i64 %i.fx, 1537228672809129301
  br i1 %i.gb, label %.invoke504, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i219

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i219: ; preds = %bb.au
  %i.gc = mul nuw i64 %i.fx, 12
  %i.gd = call noalias ptr @malloc(i64 noundef %i.gc) #33 ; 2 uses
  %i.ge = icmp eq ptr %i.gd, null
  br i1 %i.ge, label %.invoke504, label %.sink.split.i217

.invoke504:                                       ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i219, %bb.au
  %i.gf = call ptr @__cxa_allocate_exception(i64 8) #12 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.gf, align 8, !tbaa !46
  invoke void @__cxa_throw(ptr nonnull %i.gf, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
          to label %.cont505 unwind label %bb.av

.cont505:                                         ; preds = %.invoke504
  unreachable

.sink.split.i217:                                 ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i219, %bb.at
  %.sink.i218 = phi ptr [ %i.gd, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i219 ], [ null, %bb.at ]
  store ptr %.sink.i218, ptr %29, align 8, !tbaa !62
  br label %bb.bn

bb.av:                                            ; preds = %.invoke504
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %.body176

bb.aw:                                            ; preds = %.lr.ph383, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %.096382 = phi i64 [ 0, %.lr.ph383 ], [ %i.ia, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 4 uses
  %.sroa.20.0381 = phi ptr [ null, %.lr.ph383 ], [ %.sroa.20.1, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 13 uses
  %.sroa.13.0380 = phi ptr [ null, %.lr.ph383 ], [ %.sroa.13.1, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 7 uses
  %.sroa.0257.0379 = phi ptr [ null, %.lr.ph383 ], [ %.sroa.0257.1, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 17 uses
  %i.gh = getelementptr [4 x i8], ptr %.sroa.0275.0.ph, i64 %.096382 ; 2 uses
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !107
  %i.gj = getelementptr [4 x i8], ptr %i.gh, i64 %i.k
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !107
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.gi, ptr %i.a, align 4, !tbaa !107
  store i32 %i.gk, ptr %i.b, align 4, !tbaa !107
  %i.gl = load ptr, ptr %i.dw, align 8, !tbaa !26
  %.not.i.i179 = icmp eq ptr %i.gl, null
  br i1 %.not.i.i179, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  invoke void @_ZSt25__throw_bad_function_callv() #34
          to label %.noexc180 unwind label %.loopexit.split-lp

.noexc180:                                        ; preds = %bb.ax
  unreachable

bb.ay:                                            ; preds = %bb.aw
  %i.gm = load ptr, ptr %i.dx, align 8, !tbaa !115
  %i.gn = invoke noundef i32 %i.gm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.az unwind label %.loopexit319, !inline_history !3 ; 2 uses

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.go = icmp sgt i32 %i.gn, 0
  br i1 %i.go, label %bb.ba, label %bb.bg

bb.ba:                                            ; preds = %bb.az
  %i.gp = trunc i64 %.096382 to i32
  %i.gq = add i32 %i.gp, 1                        ; 2 uses
  %.not.i.i182 = icmp eq ptr %.sroa.13.0380, %.sroa.20.0381
  br i1 %.not.i.i182, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  store i32 %i.gq, ptr %.sroa.13.0380, align 4, !tbaa !107
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.13.0380, i64 4
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.bc:                                            ; preds = %bb.ba
  %i.gs = ptrtoint ptr %.sroa.20.0381 to i64
  %i.gt = ptrtoint ptr %.sroa.0257.0379 to i64
  %i.gu = sub i64 %i.gs, %i.gt                    ; 6 uses
  %i.gv = icmp eq i64 %i.gu, 9223372036854775804
  br i1 %i.gv, label %bb.bd, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.bd:                                            ; preds = %bb.bc
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #34
          to label %.noexc184 unwind label %.loopexit.split-lp326

.noexc184:                                        ; preds = %bb.bd
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.bc
  %i.gw = ashr exact i64 %i.gu, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.gw, i64 1)
  %i.gx = add nsw i64 %.sroa.speculated.i.i.i.i, %i.gw ; 2 uses
  %i.gy = icmp ult i64 %i.gx, %i.gw
  %i.gz = call i64 @llvm.umin.i64(i64 %i.gx, i64 2305843009213693951)
  %i.ha = select i1 %i.gy, i64 2305843009213693951, i64 %i.gz ; 3 uses
  %.not.i.i.i.i183 = icmp ne i64 %i.ha, 0
  call void @llvm.assume(i1 %.not.i.i.i.i183)
  %i.hb = shl nuw nsw i64 %i.ha, 2
  %i.hc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hb) #32
          to label %.noexc185 unwind label %.loopexit325 ; 4 uses

.noexc185:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.hd = getelementptr inbounds i8, ptr %i.hc, i64 %i.gu ; 2 uses
  store i32 %i.gq, ptr %i.hd, align 4, !tbaa !107
  %i.he = icmp sgt i64 %i.gu, 0
  br i1 %i.he, label %bb.be, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.be:                                            ; preds = %.noexc185
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.hc, ptr align 4 %.sroa.0257.0379, i64 %i.gu, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.be, %.noexc185
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hd, i64 4
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0257.0379, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0257.0379, i64 noundef %i.gu) #31
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.bf, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %i.ha
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

.loopexit319:                                     ; preds = %bb.ay
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

.loopexit.split-lp:                               ; preds = %bb.ax
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

.loopexit325:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit327 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

.loopexit.split-lp326:                            ; preds = %bb.bd
  %lpad.loopexit.split-lp328 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.bg:                                            ; preds = %bb.az
  %i.hh = icmp slt i32 %i.gn, 0
  br i1 %i.hh, label %bb.bh, label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.bh:                                            ; preds = %bb.bg
  %i.hi = trunc i64 %.096382 to i32
  %i.hj = xor i32 %i.hi, -1                       ; 2 uses
  %.not.i.i186 = icmp eq ptr %.sroa.13.0380, %.sroa.20.0381
  br i1 %.not.i.i186, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  store i32 %i.hj, ptr %.sroa.13.0380, align 4, !tbaa !107
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.13.0380, i64 4
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.bj:                                            ; preds = %bb.bh
  %i.hl = ptrtoint ptr %.sroa.20.0381 to i64
  %i.hm = ptrtoint ptr %.sroa.0257.0379 to i64
  %i.hn = sub i64 %i.hl, %i.hm                    ; 6 uses
  %i.ho = icmp eq i64 %i.hn, 9223372036854775804
  br i1 %i.ho, label %bb.bk, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i187

bb.bk:                                            ; preds = %bb.bj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #34
          to label %.noexc193 unwind label %.loopexit.split-lp321

.noexc193:                                        ; preds = %bb.bk
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i187: ; preds = %bb.bj
  %i.hp = ashr exact i64 %i.hn, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i188 = call i64 @llvm.umax.i64(i64 %i.hp, i64 1)
  %i.hq = add nsw i64 %.sroa.speculated.i.i.i.i188, %i.hp ; 2 uses
  %i.hr = icmp ult i64 %i.hq, %i.hp
  %i.hs = call i64 @llvm.umin.i64(i64 %i.hq, i64 2305843009213693951)
  %i.ht = select i1 %i.hr, i64 2305843009213693951, i64 %i.hs ; 3 uses
  %.not.i.i.i.i189 = icmp ne i64 %i.ht, 0
  call void @llvm.assume(i1 %.not.i.i.i.i189)
  %i.hu = shl nuw nsw i64 %i.ht, 2
  %i.hv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hu) #32
          to label %.noexc194 unwind label %.loopexit320 ; 4 uses

.noexc194:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i187
  %i.hw = getelementptr inbounds i8, ptr %i.hv, i64 %i.hn ; 2 uses
  store i32 %i.hj, ptr %i.hw, align 4, !tbaa !107
  %i.hx = icmp sgt i64 %i.hn, 0
  br i1 %i.hx, label %bb.bl, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i190

bb.bl:                                            ; preds = %.noexc194
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.hv, ptr align 4 %.sroa.0257.0379, i64 %i.hn, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i190

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i190: ; preds = %bb.bl, %.noexc194
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hw, i64 4
  %.not.i17.i.i.i191 = icmp eq ptr %.sroa.0257.0379, null
  br i1 %.not.i17.i.i.i191, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i192, label %bb.bm

bb.bm:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i190
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0257.0379, i64 noundef %i.hn) #31
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i192

end_hunk_1
begin_hunk_2_@_ZN3igl8copyleft4cgal12mesh_booleanIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS4_IiLin1ELi3ELi0ELin1ELi3EEENS4_ImLi2ELi1ELi0ELi2ELi1EEENS4_IdLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEEEEbRKNS3_10MatrixBaseIT_EERKNSB_IT0_EERKNSB_IT1_EERKSt8functionIFiNS4_IiLi1ELin1ELi1ELi1ELin1EEEEERKSO_IFiiiEERNS3_15PlainObjectBaseIT2_EERNSY_IT3_EERNSY_IT4_EE:bb.a
  %i.ee = load i32, ptr %i.eb, align 4, !tbaa !107
  store i32 %i.ee, ptr %i.ec, align 4, !tbaa !107
  %i.ef = getelementptr [4 x i8], ptr %i.eb, i64 %i.ea
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !107
  store i32 %i.eg, ptr %i.ed, align 4, !tbaa !107
  %.idx452 = shl i64 %i.ea, 3
  %i.eh = getelementptr i8, ptr %i.eb, i64 %.idx452
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !107
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  store i32 %i.ei, ptr %i.ej, align 4, !tbaa !107
  %.idx453 = mul i64 %i.ea, 12
  %i.ek = getelementptr i8, ptr %i.eb, i64 %.idx453
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !107
  %i.em = getelementptr inbounds nuw i8, ptr %i.ed, i64 4
  store i32 %i.el, ptr %i.em, align 4, !tbaa !107
  %i.en = load i64, ptr %i.dq, align 8, !tbaa !111 ; 4 uses
  %i.eo = icmp eq i64 %i.en, 0
  br i1 %i.eo, label %_ZN5Eigen8internal28conditional_aligned_new_autoIiLb1EEEPT_m.exit.thread.i.i.i, label %bb.ag

bb.af:                                            ; preds = %_ZN5Eigen6MatrixIiLi1ELin1ELi1ELi1ELin1EEC2IimEERKT_RKT0_.exit
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %.body157

_ZN5Eigen8internal28conditional_aligned_new_autoIiLb1EEEPT_m.exit.thread.i.i.i: ; preds = %_ZN5Eigen6MatrixIiLi1ELin1ELi1ELi1ELin1EEC2IimEERKT_RKT0_.exit159.preheader
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %27, i8 0, i64 16, i1 false)
  br label %_ZN5Eigen6MatrixIiLi1ELin1ELi1ELi1ELin1EEC2ERKS1_.exit

bb.ag:                                            ; preds = %_ZN5Eigen6MatrixIiLi1ELin1ELi1ELi1ELin1EEC2IimEERKT_RKT0_.exit159.preheader
  %i.eq = icmp ugt i64 %i.en, 4611686018427387903
  br i1 %i.eq, label %.invoke510, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i: ; preds = %bb.ag
  %i.er = shl nuw i64 %i.en, 2                    ; 2 uses
  %i.es = call noalias ptr @malloc(i64 noundef %i.er) #33 ; 3 uses
  %i.et = icmp eq ptr %i.es, null
  br i1 %i.et, label %.invoke510, label %bb.ah

bb.ah:                                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i
  store ptr %i.es, ptr %27, align 8, !tbaa !110
  store i64 %i.en, ptr %i.dr, align 8, !tbaa !111
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.es, ptr nonnull align 4 %i.ec, i64 %i.er, i1 false)
  br label %_ZN5Eigen6MatrixIiLi1ELin1ELi1ELi1ELin1EEC2ERKS1_.exit

_ZN5Eigen6MatrixIiLi1ELin1ELi1ELi1ELin1EEC2ERKS1_.exit: ; preds = %bb.ah, %_ZN5Eigen8internal28conditional_aligned_new_autoIiLb1EEEPT_m.exit.thread.i.i.i
  %i.eu = load ptr, ptr %i.ds, align 8, !tbaa !26
  %.not.i.i161 = icmp eq ptr %i.eu, null
  br i1 %.not.i.i161, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %_ZN5Eigen6MatrixIiLi1ELin1ELi1ELi1ELin1EEC2ERKS1_.exit
  invoke void @_ZSt25__throw_bad_function_callv() #34
          to label %.noexc162 unwind label %.loopexit.split-lp334

.noexc162:                                        ; preds = %bb.ai
  unreachable

bb.aj:                                            ; preds = %_ZN5Eigen6MatrixIiLi1ELin1ELi1ELi1ELin1EEC2ERKS1_.exit
  %i.ev = load ptr, ptr %i.dt, align 8, !tbaa !113
  %i.ew = invoke noundef i32 %i.ev(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(16) %27)
          to label %bb.ak unwind label %.loopexit333, !inline_history !2

bb.ak:                                            ; preds = %bb.aj
  %i.ex = getelementptr [4 x i8], ptr %.sroa.0277.0.ph, i64 %.098383 ; 2 uses
  store i32 %i.ew, ptr %i.ex, align 4, !tbaa !107
  %i.ey = load ptr, ptr %27, align 8, !tbaa !110
  call void @free(ptr noundef %i.ey) #12
  %i.ez = load i64, ptr %i.du, align 8, !tbaa !111 ; 4 uses
  %i.fa = icmp eq i64 %i.ez, 0
  br i1 %i.fa, label %_ZN5Eigen8internal28conditional_aligned_new_autoIiLb1EEEPT_m.exit.thread.i.i.i165, label %bb.al

_ZN5Eigen8internal28conditional_aligned_new_autoIiLb1EEEPT_m.exit.thread.i.i.i165: ; preds = %bb.ak
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %28, i8 0, i64 16, i1 false)
  br label %_ZN5Eigen6MatrixIiLi1ELin1ELi1ELi1ELin1EEC2ERKS1_.exit168

bb.al:                                            ; preds = %bb.ak
  %i.fb = icmp ugt i64 %i.ez, 4611686018427387903
  br i1 %i.fb, label %.invoke510, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i164

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i164: ; preds = %bb.al
  %i.fc = shl nuw i64 %i.ez, 2                    ; 2 uses
  %i.fd = call noalias ptr @malloc(i64 noundef %i.fc) #33 ; 3 uses
  %i.fe = icmp eq ptr %i.fd, null
  br i1 %i.fe, label %.invoke510, label %bb.am

.invoke510:                                       ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i164, %bb.al, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i, %bb.ag
  %i.ff = call ptr @__cxa_allocate_exception(i64 8) #12 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ff, align 8, !tbaa !46
  invoke void @__cxa_throw(ptr nonnull %i.ff, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
          to label %.cont511 unwind label %bb.aq

.cont511:                                         ; preds = %.invoke510
  unreachable

bb.am:                                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i164
  store ptr %i.fd, ptr %28, align 8, !tbaa !110
  store i64 %i.ez, ptr %i.dv, align 8, !tbaa !111
  %i.fg = load ptr, ptr %26, align 8, !tbaa !110
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.fd, ptr align 4 %i.fg, i64 %i.fc, i1 false)
  br label %_ZN5Eigen6MatrixIiLi1ELin1ELi1ELi1ELin1EEC2ERKS1_.exit168

_ZN5Eigen6MatrixIiLi1ELin1ELi1ELi1ELin1EEC2ERKS1_.exit168: ; preds = %bb.am, %_ZN5Eigen8internal28conditional_aligned_new_autoIiLb1EEEPT_m.exit.thread.i.i.i165
  %i.fh = load ptr, ptr %i.ds, align 8, !tbaa !26
  %.not.i.i169 = icmp eq ptr %i.fh, null
  br i1 %.not.i.i169, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %_ZN5Eigen6MatrixIiLi1ELin1ELi1ELi1ELin1EEC2ERKS1_.exit168
  invoke void @_ZSt25__throw_bad_function_callv() #34
          to label %.noexc170 unwind label %.loopexit.split-lp339

.noexc170:                                        ; preds = %bb.an
  unreachable

bb.ao:                                            ; preds = %_ZN5Eigen6MatrixIiLi1ELin1ELi1ELi1ELin1EEC2ERKS1_.exit168
  %i.fi = load ptr, ptr %i.dt, align 8, !tbaa !113
  %i.fj = invoke noundef i32 %i.fi(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(16) %28)
          to label %bb.ap unwind label %.loopexit338, !inline_history !2

bb.ap:                                            ; preds = %bb.ao
  %i.fk = getelementptr [4 x i8], ptr %i.ex, i64 %i.k
  store i32 %i.fj, ptr %i.fk, align 4, !tbaa !107
  %i.fl = load ptr, ptr %28, align 8, !tbaa !110
  call void @free(ptr noundef %i.fl) #12
  %i.fm = load ptr, ptr %26, align 8, !tbaa !110
  call void @free(ptr noundef %i.fm) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #12
  %i.fn = load ptr, ptr %25, align 8, !tbaa !110
  call void @free(ptr noundef %i.fn) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #12
  %i.fo = add nuw i64 %.098383, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.fo, %i.k
  br i1 %exitcond.not, label %.lr.ph388, label %bb.ad, !llvm.loop !505

bb.aq:                                            ; preds = %.invoke510
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %.body157

.loopexit333:                                     ; preds = %bb.aj
  %lpad.loopexit335 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

.loopexit.split-lp334:                            ; preds = %bb.ai
  %lpad.loopexit.split-lp336 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.ar:                                            ; preds = %.loopexit.split-lp334, %.loopexit333
  %lpad.phi337 = phi { ptr, i32 } [ %lpad.loopexit335, %.loopexit333 ], [ %lpad.loopexit.split-lp336, %.loopexit.split-lp334 ]
  %i.fq = load ptr, ptr %27, align 8, !tbaa !110
  call void @free(ptr noundef %i.fq) #12
  br label %.body157

.loopexit338:                                     ; preds = %bb.ao
  %lpad.loopexit340 = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

.loopexit.split-lp339:                            ; preds = %bb.an
  %lpad.loopexit.split-lp341 = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.as:                                            ; preds = %.loopexit.split-lp339, %.loopexit338
  %lpad.phi342 = phi { ptr, i32 } [ %lpad.loopexit340, %.loopexit338 ], [ %lpad.loopexit.split-lp341, %.loopexit.split-lp339 ]
  %i.fr = load ptr, ptr %28, align 8, !tbaa !110
  call void @free(ptr noundef %i.fr) #12
  br label %.body157

.body157:                                         ; preds = %bb.aq, %bb.ar, %bb.as, %bb.af
  %.pn128.pn = phi { ptr, i32 } [ %i.ep, %bb.af ], [ %lpad.phi337, %bb.ar ], [ %lpad.phi342, %bb.as ], [ %i.fp, %bb.aq ]
  %i.fs = load ptr, ptr %26, align 8, !tbaa !110
  call void @free(ptr noundef %i.fs) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #12
  br label %.body155

.body155:                                         ; preds = %bb.ae, %.body157
  %.pn128.pn.pn = phi { ptr, i32 } [ %.pn128.pn, %.body157 ], [ %i.dy, %bb.ae ]
  %i.ft = load ptr, ptr %25, align 8, !tbaa !110
  call void @free(ptr noundef %i.ft) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #12
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit212

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i174: ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %i.fu = ptrtoint ptr %.sroa.13.1 to i64
  %i.fv = ptrtoint ptr %.sroa.0259.1 to i64       ; 3 uses
  %i.fw = sub i64 %i.fu, %i.fv
  %i.fx = ashr exact i64 %i.fw, 2                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %29, i8 0, i64 24, i1 false)
  %i.fy = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  %.not.i218 = icmp eq ptr %.sroa.13.1, %.sroa.0259.1
  br i1 %.not.i218, label %bb.bn, label %bb.at

bb.at:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i174
  %i.ga = icmp sgt i64 %i.fx, 0
  br i1 %i.ga, label %bb.au, label %.sink.split.i219

bb.au:                                            ; preds = %bb.at
  %i.gb = icmp samesign ugt i64 %i.fx, 1537228672809129301
  br i1 %i.gb, label %.invoke512, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i221

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i221: ; preds = %bb.au
  %i.gc = mul nuw i64 %i.fx, 12
  %i.gd = call noalias ptr @malloc(i64 noundef %i.gc) #33 ; 2 uses
  %i.ge = icmp eq ptr %i.gd, null
  br i1 %i.ge, label %.invoke512, label %.sink.split.i219

.invoke512:                                       ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i221, %bb.au
  %i.gf = call ptr @__cxa_allocate_exception(i64 8) #12 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.gf, align 8, !tbaa !46
  invoke void @__cxa_throw(ptr nonnull %i.gf, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
          to label %.cont513 unwind label %bb.av

.cont513:                                         ; preds = %.invoke512
  unreachable

.sink.split.i219:                                 ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i221, %bb.at
  %.sink.i220 = phi ptr [ %i.gd, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i221 ], [ null, %bb.at ]
  store ptr %.sink.i220, ptr %29, align 8, !tbaa !62
  br label %bb.bn

bb.av:                                            ; preds = %.invoke512
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %.body176

bb.aw:                                            ; preds = %.lr.ph388, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %.096387 = phi i64 [ 0, %.lr.ph388 ], [ %i.ia, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 4 uses
  %.sroa.20.0386 = phi ptr [ null, %.lr.ph388 ], [ %.sroa.20.1, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 13 uses
  %.sroa.13.0385 = phi ptr [ null, %.lr.ph388 ], [ %.sroa.13.1, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 7 uses
  %.sroa.0259.0384 = phi ptr [ null, %.lr.ph388 ], [ %.sroa.0259.1, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 17 uses
  %i.gh = getelementptr [4 x i8], ptr %.sroa.0277.0.ph, i64 %.096387 ; 2 uses
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !107
  %i.gj = getelementptr [4 x i8], ptr %i.gh, i64 %i.k
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !107
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.gi, ptr %i.a, align 4, !tbaa !107
  store i32 %i.gk, ptr %i.b, align 4, !tbaa !107
  %i.gl = load ptr, ptr %i.dw, align 8, !tbaa !26
  %.not.i.i179 = icmp eq ptr %i.gl, null
  br i1 %.not.i.i179, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  invoke void @_ZSt25__throw_bad_function_callv() #34
          to label %.noexc180 unwind label %.loopexit.split-lp

.noexc180:                                        ; preds = %bb.ax
  unreachable

bb.ay:                                            ; preds = %bb.aw
  %i.gm = load ptr, ptr %i.dx, align 8, !tbaa !115
  %i.gn = invoke noundef i32 %i.gm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.az unwind label %.loopexit322, !inline_history !3 ; 2 uses

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.go = icmp sgt i32 %i.gn, 0
  br i1 %i.go, label %bb.ba, label %bb.bg

bb.ba:                                            ; preds = %bb.az
  %i.gp = trunc i64 %.096387 to i32
  %i.gq = add i32 %i.gp, 1                        ; 2 uses
  %.not.i.i182 = icmp eq ptr %.sroa.13.0385, %.sroa.20.0386
  br i1 %.not.i.i182, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  store i32 %i.gq, ptr %.sroa.13.0385, align 4, !tbaa !107
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.13.0385, i64 4
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.bc:                                            ; preds = %bb.ba
  %i.gs = ptrtoint ptr %.sroa.20.0386 to i64
  %i.gt = ptrtoint ptr %.sroa.0259.0384 to i64
  %i.gu = sub i64 %i.gs, %i.gt                    ; 6 uses
  %i.gv = icmp eq i64 %i.gu, 9223372036854775804
  br i1 %i.gv, label %bb.bd, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.bd:                                            ; preds = %bb.bc
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #34
          to label %.noexc184 unwind label %.loopexit.split-lp329

.noexc184:                                        ; preds = %bb.bd
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.bc
  %i.gw = ashr exact i64 %i.gu, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.gw, i64 1)
  %i.gx = add nsw i64 %.sroa.speculated.i.i.i.i, %i.gw ; 2 uses
  %i.gy = icmp ult i64 %i.gx, %i.gw
  %i.gz = call i64 @llvm.umin.i64(i64 %i.gx, i64 2305843009213693951)
  %i.ha = select i1 %i.gy, i64 2305843009213693951, i64 %i.gz ; 3 uses
  %.not.i.i.i.i183 = icmp ne i64 %i.ha, 0
  call void @llvm.assume(i1 %.not.i.i.i.i183)
  %i.hb = shl nuw nsw i64 %i.ha, 2
  %i.hc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hb) #32
          to label %.noexc185 unwind label %.loopexit328 ; 4 uses

.noexc185:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.hd = getelementptr inbounds i8, ptr %i.hc, i64 %i.gu ; 2 uses
  store i32 %i.gq, ptr %i.hd, align 4, !tbaa !107
  %i.he = icmp sgt i64 %i.gu, 0
  br i1 %i.he, label %bb.be, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.be:                                            ; preds = %.noexc185
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.hc, ptr align 4 %.sroa.0259.0384, i64 %i.gu, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.be, %.noexc185
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hd, i64 4
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0259.0384, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0259.0384, i64 noundef %i.gu) #31
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.bf, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %i.ha
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

.loopexit322:                                     ; preds = %bb.ay
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

.loopexit.split-lp:                               ; preds = %bb.ax
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

.loopexit328:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit330 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

.loopexit.split-lp329:                            ; preds = %bb.bd
  %lpad.loopexit.split-lp331 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.bg:                                            ; preds = %bb.az
  %i.hh = icmp slt i32 %i.gn, 0
  br i1 %i.hh, label %bb.bh, label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.bh:                                            ; preds = %bb.bg
  %i.hi = trunc i64 %.096387 to i32
  %i.hj = xor i32 %i.hi, -1                       ; 2 uses
  %.not.i.i186 = icmp eq ptr %.sroa.13.0385, %.sroa.20.0386
  br i1 %.not.i.i186, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  store i32 %i.hj, ptr %.sroa.13.0385, align 4, !tbaa !107
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.13.0385, i64 4
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.bj:                                            ; preds = %bb.bh
  %i.hl = ptrtoint ptr %.sroa.20.0386 to i64
  %i.hm = ptrtoint ptr %.sroa.0259.0384 to i64
  %i.hn = sub i64 %i.hl, %i.hm                    ; 6 uses
  %i.ho = icmp eq i64 %i.hn, 9223372036854775804
  br i1 %i.ho, label %bb.bk, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i187

bb.bk:                                            ; preds = %bb.bj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #34
          to label %.noexc193 unwind label %.loopexit.split-lp324

.noexc193:                                        ; preds = %bb.bk
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i187: ; preds = %bb.bj
  %i.hp = ashr exact i64 %i.hn, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i188 = call i64 @llvm.umax.i64(i64 %i.hp, i64 1)
  %i.hq = add nsw i64 %.sroa.speculated.i.i.i.i188, %i.hp ; 2 uses
  %i.hr = icmp ult i64 %i.hq, %i.hp
  %i.hs = call i64 @llvm.umin.i64(i64 %i.hq, i64 2305843009213693951)
  %i.ht = select i1 %i.hr, i64 2305843009213693951, i64 %i.hs ; 3 uses
  %.not.i.i.i.i189 = icmp ne i64 %i.ht, 0
  call void @llvm.assume(i1 %.not.i.i.i.i189)
  %i.hu = shl nuw nsw i64 %i.ht, 2
  %i.hv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hu) #32
          to label %.noexc194 unwind label %.loopexit323 ; 4 uses

.noexc194:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i187
  %i.hw = getelementptr inbounds i8, ptr %i.hv, i64 %i.hn ; 2 uses
  store i32 %i.hj, ptr %i.hw, align 4, !tbaa !107
  %i.hx = icmp sgt i64 %i.hn, 0
  br i1 %i.hx, label %bb.bl, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i190

bb.bl:                                            ; preds = %.noexc194
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.hv, ptr align 4 %.sroa.0259.0384, i64 %i.hn, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i190

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i190: ; preds = %bb.bl, %.noexc194
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hw, i64 4
  %.not.i17.i.i.i191 = icmp eq ptr %.sroa.0259.0384, null
  br i1 %.not.i17.i.i.i191, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i192, label %bb.bm

bb.bm:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i190
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0259.0384, i64 noundef %i.hn) #31
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i192

end_hunk_2
