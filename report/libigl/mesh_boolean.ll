inline.NumInlined: 2199
inline.NumDeleted: 1039
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 41
begin_hunk_0_@_ZN3igl8copyleft4cgal12mesh_booleanIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENS4_IiLin1ELi3ELi0ELin1ELi3EEENS4_ImLi2ELi1ELi0ELi2ELi1EEENS4_ISK_Lin1ELin1ELi1ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEEEEbRKNS3_10MatrixBaseIT_EERKNSR_IT0_EERKNSR_IT1_EERKSt8functionIFiNS4_IiLi1ELin1ELi1ELi1ELin1EEEEERKS14_IFiiiEERNS3_15PlainObjectBaseIT2_EERNS1E_IT3_EERNS1E_IT4_EE:bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %26, i8 0, i64 16, i1 false)
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLi1ELin1ELi1ELi1ELin1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %26, i64 noundef 1, i64 noundef 2)
          to label %_ZN5Eigen6MatrixIiLi1ELin1ELi1ELi1ELin1EEC2IimEERKT_RKT0_.exit159.preheader unwind label %bb.af

_ZN5Eigen6MatrixIiLi1ELin1ELi1ELi1ELin1EEC2IimEERKT_RKT0_.exit159.preheader: ; preds = %_ZN5Eigen6MatrixIiLi1ELin1ELi1ELi1ELin1EEC2IimEERKT_RKT0_.exit
  %i.dz = load ptr, ptr %22, align 8, !tbaa !53
  %i.ea = load i64, ptr %i.dp, align 8, !tbaa !12 ; 3 uses
  %i.eb = getelementptr [4 x i8], ptr %i.dz, i64 %.097381 ; 4 uses
  %i.ec = load ptr, ptr %25, align 8, !tbaa !140  ; 3 uses
  %i.ed = load ptr, ptr %26, align 8, !tbaa !140  ; 2 uses
  %i.ee = load i32, ptr %i.eb, align 4, !tbaa !134
  store i32 %i.ee, ptr %i.ec, align 4, !tbaa !134
  %i.ef = getelementptr [4 x i8], ptr %i.eb, i64 %i.ea
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !134
  store i32 %i.eg, ptr %i.ed, align 4, !tbaa !134
  %.idx450 = shl i64 %i.ea, 3
  %i.eh = getelementptr i8, ptr %i.eb, i64 %.idx450
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !134
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  store i32 %i.ei, ptr %i.ej, align 4, !tbaa !134
  %.idx451 = mul i64 %i.ea, 12
  %i.ek = getelementptr i8, ptr %i.eb, i64 %.idx451
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !134
  %i.em = getelementptr inbounds nuw i8, ptr %i.ed, i64 4
  store i32 %i.el, ptr %i.em, align 4, !tbaa !134
  %i.en = load i64, ptr %i.dq, align 8, !tbaa !142 ; 4 uses
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
  br i1 %i.eq, label %.invoke514, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i: ; preds = %bb.ag
  %i.er = shl nuw i64 %i.en, 2                    ; 2 uses
  %i.es = call noalias ptr @malloc(i64 noundef %i.er) #33 ; 3 uses
  %i.et = icmp eq ptr %i.es, null
  br i1 %i.et, label %.invoke514, label %bb.ah

bb.ah:                                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i
  store ptr %i.es, ptr %27, align 8, !tbaa !140
  store i64 %i.en, ptr %i.dr, align 8, !tbaa !142
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.es, ptr nonnull align 4 %i.ec, i64 %i.er, i1 false)
  br label %_ZN5Eigen6MatrixIiLi1ELin1ELi1ELi1ELin1EEC2ERKS1_.exit

_ZN5Eigen6MatrixIiLi1ELin1ELi1ELi1ELin1EEC2ERKS1_.exit: ; preds = %bb.ah, %_ZN5Eigen8internal28conditional_aligned_new_autoIiLb1EEEPT_m.exit.thread.i.i.i
  %i.eu = load ptr, ptr %i.ds, align 8, !tbaa !9
  %.not.i.i161 = icmp eq ptr %i.eu, null
  br i1 %.not.i.i161, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %_ZN5Eigen6MatrixIiLi1ELin1ELi1ELi1ELin1EEC2ERKS1_.exit
  invoke void @_ZSt25__throw_bad_function_callv() #34
          to label %.noexc162 unwind label %.loopexit.split-lp332

.noexc162:                                        ; preds = %bb.ai
  unreachable

bb.aj:                                            ; preds = %_ZN5Eigen6MatrixIiLi1ELin1ELi1ELi1ELin1EEC2ERKS1_.exit
  %i.ev = load ptr, ptr %i.dt, align 8, !tbaa !143
  %i.ew = invoke noundef i32 %i.ev(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(16) %27)
          to label %bb.ak unwind label %.loopexit331, !inline_history !145

bb.ak:                                            ; preds = %bb.aj
  %i.ex = getelementptr [4 x i8], ptr %.sroa.0275.0.ph, i64 %.097381 ; 2 uses
  store i32 %i.ew, ptr %i.ex, align 4, !tbaa !134
  %i.ey = load ptr, ptr %27, align 8, !tbaa !140
  call void @free(ptr noundef %i.ey) #12
  %i.ez = load i64, ptr %i.du, align 8, !tbaa !142 ; 4 uses
  %i.fa = icmp eq i64 %i.ez, 0
  br i1 %i.fa, label %_ZN5Eigen8internal28conditional_aligned_new_autoIiLb1EEEPT_m.exit.thread.i.i.i165, label %bb.al

_ZN5Eigen8internal28conditional_aligned_new_autoIiLb1EEEPT_m.exit.thread.i.i.i165: ; preds = %bb.ak
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %28, i8 0, i64 16, i1 false)
  br label %_ZN5Eigen6MatrixIiLi1ELin1ELi1ELi1ELin1EEC2ERKS1_.exit168

bb.al:                                            ; preds = %bb.ak
  %i.fb = icmp ugt i64 %i.ez, 4611686018427387903
  br i1 %i.fb, label %.invoke514, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i164

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i164: ; preds = %bb.al
  %i.fc = shl nuw i64 %i.ez, 2                    ; 2 uses
  %i.fd = call noalias ptr @malloc(i64 noundef %i.fc) #33 ; 3 uses
  %i.fe = icmp eq ptr %i.fd, null
  br i1 %i.fe, label %.invoke514, label %bb.am

.invoke514:                                       ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i164, %bb.al, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i, %bb.ag
  %i.ff = call ptr @__cxa_allocate_exception(i64 8) #12 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ff, align 8, !tbaa !30
  invoke void @__cxa_throw(ptr nonnull %i.ff, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
          to label %.cont515 unwind label %bb.aq

.cont515:                                         ; preds = %.invoke514
  unreachable

bb.am:                                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i164
  store ptr %i.fd, ptr %28, align 8, !tbaa !140
  store i64 %i.ez, ptr %i.dv, align 8, !tbaa !142
  %i.fg = load ptr, ptr %26, align 8, !tbaa !140
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.fd, ptr align 4 %i.fg, i64 %i.fc, i1 false)
  br label %_ZN5Eigen6MatrixIiLi1ELin1ELi1ELi1ELin1EEC2ERKS1_.exit168

_ZN5Eigen6MatrixIiLi1ELin1ELi1ELi1ELin1EEC2ERKS1_.exit168: ; preds = %bb.am, %_ZN5Eigen8internal28conditional_aligned_new_autoIiLb1EEEPT_m.exit.thread.i.i.i165
  %i.fh = load ptr, ptr %i.ds, align 8, !tbaa !9
  %.not.i.i169 = icmp eq ptr %i.fh, null
  br i1 %.not.i.i169, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %_ZN5Eigen6MatrixIiLi1ELin1ELi1ELi1ELin1EEC2ERKS1_.exit168
  invoke void @_ZSt25__throw_bad_function_callv() #34
          to label %.noexc170 unwind label %.loopexit.split-lp337

.noexc170:                                        ; preds = %bb.an
  unreachable

bb.ao:                                            ; preds = %_ZN5Eigen6MatrixIiLi1ELin1ELi1ELi1ELin1EEC2ERKS1_.exit168
  %i.fi = load ptr, ptr %i.dt, align 8, !tbaa !143
  %i.fj = invoke noundef i32 %i.fi(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(16) %28)
          to label %bb.ap unwind label %.loopexit336, !inline_history !145

bb.ap:                                            ; preds = %bb.ao
  %i.fk = getelementptr [4 x i8], ptr %i.ex, i64 %i.k
  store i32 %i.fj, ptr %i.fk, align 4, !tbaa !134
  %i.fl = load ptr, ptr %28, align 8, !tbaa !140
  call void @free(ptr noundef %i.fl) #12
  %i.fm = load ptr, ptr %26, align 8, !tbaa !140
  call void @free(ptr noundef %i.fm) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #12
  %i.fn = load ptr, ptr %25, align 8, !tbaa !140
  call void @free(ptr noundef %i.fn) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #12
  %i.fo = add nuw i64 %.097381, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.fo, %i.k
  br i1 %exitcond.not, label %.lr.ph386, label %bb.ad, !llvm.loop !146

bb.aq:                                            ; preds = %.invoke514
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %.body157

.loopexit331:                                     ; preds = %bb.aj
  %lpad.loopexit333 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

.loopexit.split-lp332:                            ; preds = %bb.ai
  %lpad.loopexit.split-lp334 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.ar:                                            ; preds = %.loopexit.split-lp332, %.loopexit331
  %lpad.phi335 = phi { ptr, i32 } [ %lpad.loopexit333, %.loopexit331 ], [ %lpad.loopexit.split-lp334, %.loopexit.split-lp332 ]
  %i.fq = load ptr, ptr %27, align 8, !tbaa !140
  call void @free(ptr noundef %i.fq) #12
  br label %.body157

.loopexit336:                                     ; preds = %bb.ao
  %lpad.loopexit338 = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

.loopexit.split-lp337:                            ; preds = %bb.an
  %lpad.loopexit.split-lp339 = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.as:                                            ; preds = %.loopexit.split-lp337, %.loopexit336
  %lpad.phi340 = phi { ptr, i32 } [ %lpad.loopexit338, %.loopexit336 ], [ %lpad.loopexit.split-lp339, %.loopexit.split-lp337 ]
  %i.fr = load ptr, ptr %28, align 8, !tbaa !140
  call void @free(ptr noundef %i.fr) #12
  br label %.body157

.body157:                                         ; preds = %bb.aq, %bb.ar, %bb.as, %bb.af
  %.pn128.pn = phi { ptr, i32 } [ %i.ep, %bb.af ], [ %lpad.phi335, %bb.ar ], [ %lpad.phi340, %bb.as ], [ %i.fp, %bb.aq ]
  %i.fs = load ptr, ptr %26, align 8, !tbaa !140
  call void @free(ptr noundef %i.fs) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #12
  br label %.body155

.body155:                                         ; preds = %bb.ae, %.body157
  %.pn128.pn.pn = phi { ptr, i32 } [ %.pn128.pn, %.body157 ], [ %i.dy, %bb.ae ]
  %i.ft = load ptr, ptr %25, align 8, !tbaa !140
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
  %37 = mul nsw i64 %i.fx, 3
  %i.fy = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  %.not.i218 = icmp eq ptr %.sroa.13.1, %.sroa.0259.1
  br i1 %.not.i218, label %bb.bn, label %bb.at

bb.at:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i174
  %i.ga = icmp sgt i64 %i.fx, 0
  br i1 %i.ga, label %bb.au, label %.sink.split.i219

bb.au:                                            ; preds = %bb.at
  %i.gb = icmp samesign ugt i64 %37, 4611686018427387903
  br i1 %i.gb, label %.invoke516, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i221

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i221: ; preds = %bb.au
  %i.gc = mul i64 %i.fx, 12
  %i.gd = call noalias ptr @malloc(i64 noundef %i.gc) #33 ; 2 uses
  %i.ge = icmp eq ptr %i.gd, null
  br i1 %i.ge, label %.invoke516, label %.sink.split.i219

.invoke516:                                       ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i221, %bb.au
  %i.gf = call ptr @__cxa_allocate_exception(i64 8) #12 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.gf, align 8, !tbaa !30
  invoke void @__cxa_throw(ptr nonnull %i.gf, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
          to label %.cont517 unwind label %bb.av

.cont517:                                         ; preds = %.invoke516
  unreachable

.sink.split.i219:                                 ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i221, %bb.at
  %.sink.i220 = phi ptr [ %i.gd, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i221 ], [ null, %bb.at ]
  store ptr %.sink.i220, ptr %29, align 8, !tbaa !53
  br label %bb.bn

bb.av:                                            ; preds = %.invoke516
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %.body176

bb.aw:                                            ; preds = %.lr.ph386, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %.098385 = phi i64 [ 0, %.lr.ph386 ], [ %i.ia, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 4 uses
  %.sroa.0259.0384 = phi ptr [ null, %.lr.ph386 ], [ %.sroa.0259.1, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 17 uses
  %.sroa.13.0383 = phi ptr [ null, %.lr.ph386 ], [ %.sroa.13.1, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 13 uses
  %.sroa.20.0382 = phi ptr [ null, %.lr.ph386 ], [ %.sroa.20.1, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 7 uses
  %i.gh = getelementptr [4 x i8], ptr %.sroa.0275.0.ph, i64 %.098385 ; 2 uses
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !134
  %i.gj = getelementptr [4 x i8], ptr %i.gh, i64 %i.k
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !134
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.gi, ptr %i.a, align 4, !tbaa !134
  store i32 %i.gk, ptr %i.b, align 4, !tbaa !134
  %i.gl = load ptr, ptr %i.dw, align 8, !tbaa !9
  %.not.i.i179 = icmp eq ptr %i.gl, null
  br i1 %.not.i.i179, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  invoke void @_ZSt25__throw_bad_function_callv() #34
          to label %.noexc180 unwind label %.loopexit.split-lp

.noexc180:                                        ; preds = %bb.ax
  unreachable

bb.ay:                                            ; preds = %bb.aw
  %i.gm = load ptr, ptr %i.dx, align 8, !tbaa !147
  %i.gn = invoke noundef i32 %i.gm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.az unwind label %.loopexit320, !inline_history !149 ; 2 uses

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.go = icmp sgt i32 %i.gn, 0
  br i1 %i.go, label %bb.ba, label %bb.bg

bb.ba:                                            ; preds = %bb.az
  %i.gp = trunc i64 %.098385 to i32
  %i.gq = add i32 %i.gp, 1                        ; 2 uses
  %.not.i.i182 = icmp eq ptr %.sroa.13.0383, %.sroa.20.0382
  br i1 %.not.i.i182, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  store i32 %i.gq, ptr %.sroa.13.0383, align 4, !tbaa !134
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.13.0383, i64 4
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.bc:                                            ; preds = %bb.ba
  %i.gs = ptrtoint ptr %.sroa.13.0383 to i64
  %i.gt = ptrtoint ptr %.sroa.0259.0384 to i64
  %i.gu = sub i64 %i.gs, %i.gt                    ; 6 uses
  %i.gv = icmp eq i64 %i.gu, 9223372036854775804
  br i1 %i.gv, label %bb.bd, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.bd:                                            ; preds = %bb.bc
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #34
          to label %.noexc184 unwind label %.loopexit.split-lp327

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
          to label %.noexc185 unwind label %.loopexit326 ; 4 uses

.noexc185:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.hd = getelementptr inbounds i8, ptr %i.hc, i64 %i.gu ; 2 uses
  store i32 %i.gq, ptr %i.hd, align 4, !tbaa !134
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

.loopexit320:                                     ; preds = %bb.ay
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

.loopexit.split-lp:                               ; preds = %bb.ax
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

.loopexit326:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit328 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

.loopexit.split-lp327:                            ; preds = %bb.bd
  %lpad.loopexit.split-lp329 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.bg:                                            ; preds = %bb.az
  %i.hh = icmp slt i32 %i.gn, 0
  br i1 %i.hh, label %bb.bh, label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.bh:                                            ; preds = %bb.bg
  %i.hi = trunc i64 %.098385 to i32
  %i.hj = xor i32 %i.hi, -1                       ; 2 uses
  %.not.i.i186 = icmp eq ptr %.sroa.13.0383, %.sroa.20.0382
  br i1 %.not.i.i186, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  store i32 %i.hj, ptr %.sroa.13.0383, align 4, !tbaa !134
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.13.0383, i64 4
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.bj:                                            ; preds = %bb.bh
  %i.hl = ptrtoint ptr %.sroa.13.0383 to i64
  %i.hm = ptrtoint ptr %.sroa.0259.0384 to i64
  %i.hn = sub i64 %i.hl, %i.hm                    ; 6 uses
  %i.ho = icmp eq i64 %i.hn, 9223372036854775804
  br i1 %i.ho, label %bb.bk, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i187

bb.bk:                                            ; preds = %bb.bj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #34
          to label %.noexc193 unwind label %.loopexit.split-lp322

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
          to label %.noexc194 unwind label %.loopexit321 ; 4 uses

.noexc194:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i187
  %i.hw = getelementptr inbounds i8, ptr %i.hv, i64 %i.hn ; 2 uses
  store i32 %i.hj, ptr %i.hw, align 4, !tbaa !134
  %i.hx = icmp sgt i64 %i.hn, 0
  br i1 %i.hx, label %bb.bl, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i190

bb.bl:                                            ; preds = %.noexc194
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.hv, ptr align 4 %.sroa.0259.0384, i64 %i.hn, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i190

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i190: ; preds = %bb.bl, %.noexc194
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hw, i64 4
  %.not.i17.i.i.i191 = icmp eq ptr %.sroa.0259.0384, null
  br i1 %.not.i17.i.i.i191, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i192, label %bb.bm

end_hunk_0
begin_hunk_1_@_ZN3igl8copyleft4cgal12mesh_booleanIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENS4_IiLin1ELi3ELi0ELin1ELi3EEENS4_ImLi2ELi1ELi0ELi2ELi1EEESL_NS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEEEEbRKNS3_10MatrixBaseIT_EERKNSQ_IT0_EERKNSQ_IT1_EERKSt8functionIFiNS4_IiLi1ELin1ELi1ELi1ELin1EEEEERKS13_IFiiiEERNS3_15PlainObjectBaseIT2_EERNS1D_IT3_EERNS1D_IT4_EE:bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %26, i8 0, i64 16, i1 false)
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLi1ELin1ELi1ELi1ELin1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %26, i64 noundef 1, i64 noundef 2)
          to label %_ZN5Eigen6MatrixIiLi1ELin1ELi1ELi1ELin1EEC2IimEERKT_RKT0_.exit159.preheader unwind label %bb.af

_ZN5Eigen6MatrixIiLi1ELin1ELi1ELi1ELin1EEC2IimEERKT_RKT0_.exit159.preheader: ; preds = %_ZN5Eigen6MatrixIiLi1ELin1ELi1ELi1ELin1EEC2IimEERKT_RKT0_.exit
  %i.dz = load ptr, ptr %22, align 8, !tbaa !53
  %i.ea = load i64, ptr %i.dp, align 8, !tbaa !12 ; 3 uses
  %i.eb = getelementptr [4 x i8], ptr %i.dz, i64 %.097376 ; 4 uses
  %i.ec = load ptr, ptr %25, align 8, !tbaa !140  ; 3 uses
  %i.ed = load ptr, ptr %26, align 8, !tbaa !140  ; 2 uses
  %i.ee = load i32, ptr %i.eb, align 4, !tbaa !134
  store i32 %i.ee, ptr %i.ec, align 4, !tbaa !134
  %i.ef = getelementptr [4 x i8], ptr %i.eb, i64 %i.ea
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !134
  store i32 %i.eg, ptr %i.ed, align 4, !tbaa !134
  %.idx444 = shl i64 %i.ea, 3
  %i.eh = getelementptr i8, ptr %i.eb, i64 %.idx444
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !134
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  store i32 %i.ei, ptr %i.ej, align 4, !tbaa !134
  %.idx445 = mul i64 %i.ea, 12
  %i.ek = getelementptr i8, ptr %i.eb, i64 %.idx445
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !134
  %i.em = getelementptr inbounds nuw i8, ptr %i.ed, i64 4
  store i32 %i.el, ptr %i.em, align 4, !tbaa !134
  %i.en = load i64, ptr %i.dq, align 8, !tbaa !142 ; 4 uses
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
  br i1 %i.eq, label %.invoke506, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i: ; preds = %bb.ag
  %i.er = shl nuw i64 %i.en, 2                    ; 2 uses
  %i.es = call noalias ptr @malloc(i64 noundef %i.er) #33 ; 3 uses
  %i.et = icmp eq ptr %i.es, null
  br i1 %i.et, label %.invoke506, label %bb.ah

bb.ah:                                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i
  store ptr %i.es, ptr %27, align 8, !tbaa !140
  store i64 %i.en, ptr %i.dr, align 8, !tbaa !142
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.es, ptr nonnull align 4 %i.ec, i64 %i.er, i1 false)
  br label %_ZN5Eigen6MatrixIiLi1ELin1ELi1ELi1ELin1EEC2ERKS1_.exit

_ZN5Eigen6MatrixIiLi1ELin1ELi1ELi1ELin1EEC2ERKS1_.exit: ; preds = %bb.ah, %_ZN5Eigen8internal28conditional_aligned_new_autoIiLb1EEEPT_m.exit.thread.i.i.i
  %i.eu = load ptr, ptr %i.ds, align 8, !tbaa !9
  %.not.i.i161 = icmp eq ptr %i.eu, null
  br i1 %.not.i.i161, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %_ZN5Eigen6MatrixIiLi1ELin1ELi1ELi1ELin1EEC2ERKS1_.exit
  invoke void @_ZSt25__throw_bad_function_callv() #34
          to label %.noexc162 unwind label %.loopexit.split-lp329

.noexc162:                                        ; preds = %bb.ai
  unreachable

bb.aj:                                            ; preds = %_ZN5Eigen6MatrixIiLi1ELin1ELi1ELi1ELin1EEC2ERKS1_.exit
  %i.ev = load ptr, ptr %i.dt, align 8, !tbaa !143
  %i.ew = invoke noundef i32 %i.ev(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(16) %27)
          to label %bb.ak unwind label %.loopexit328, !inline_history !145

bb.ak:                                            ; preds = %bb.aj
  %i.ex = getelementptr [4 x i8], ptr %.sroa.0273.0.ph, i64 %.097376 ; 2 uses
  store i32 %i.ew, ptr %i.ex, align 4, !tbaa !134
  %i.ey = load ptr, ptr %27, align 8, !tbaa !140
  call void @free(ptr noundef %i.ey) #12
  %i.ez = load i64, ptr %i.du, align 8, !tbaa !142 ; 4 uses
  %i.fa = icmp eq i64 %i.ez, 0
  br i1 %i.fa, label %_ZN5Eigen8internal28conditional_aligned_new_autoIiLb1EEEPT_m.exit.thread.i.i.i165, label %bb.al

_ZN5Eigen8internal28conditional_aligned_new_autoIiLb1EEEPT_m.exit.thread.i.i.i165: ; preds = %bb.ak
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %28, i8 0, i64 16, i1 false)
  br label %_ZN5Eigen6MatrixIiLi1ELin1ELi1ELi1ELin1EEC2ERKS1_.exit168

bb.al:                                            ; preds = %bb.ak
  %i.fb = icmp ugt i64 %i.ez, 4611686018427387903
  br i1 %i.fb, label %.invoke506, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i164

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i164: ; preds = %bb.al
  %i.fc = shl nuw i64 %i.ez, 2                    ; 2 uses
  %i.fd = call noalias ptr @malloc(i64 noundef %i.fc) #33 ; 3 uses
  %i.fe = icmp eq ptr %i.fd, null
  br i1 %i.fe, label %.invoke506, label %bb.am

.invoke506:                                       ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i164, %bb.al, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i, %bb.ag
  %i.ff = call ptr @__cxa_allocate_exception(i64 8) #12 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ff, align 8, !tbaa !30
  invoke void @__cxa_throw(ptr nonnull %i.ff, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
          to label %.cont507 unwind label %bb.aq

.cont507:                                         ; preds = %.invoke506
  unreachable

bb.am:                                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i164
  store ptr %i.fd, ptr %28, align 8, !tbaa !140
  store i64 %i.ez, ptr %i.dv, align 8, !tbaa !142
  %i.fg = load ptr, ptr %26, align 8, !tbaa !140
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.fd, ptr align 4 %i.fg, i64 %i.fc, i1 false)
  br label %_ZN5Eigen6MatrixIiLi1ELin1ELi1ELi1ELin1EEC2ERKS1_.exit168

_ZN5Eigen6MatrixIiLi1ELin1ELi1ELi1ELin1EEC2ERKS1_.exit168: ; preds = %bb.am, %_ZN5Eigen8internal28conditional_aligned_new_autoIiLb1EEEPT_m.exit.thread.i.i.i165
  %i.fh = load ptr, ptr %i.ds, align 8, !tbaa !9
  %.not.i.i169 = icmp eq ptr %i.fh, null
  br i1 %.not.i.i169, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %_ZN5Eigen6MatrixIiLi1ELin1ELi1ELi1ELin1EEC2ERKS1_.exit168
  invoke void @_ZSt25__throw_bad_function_callv() #34
          to label %.noexc170 unwind label %.loopexit.split-lp334

.noexc170:                                        ; preds = %bb.an
  unreachable

bb.ao:                                            ; preds = %_ZN5Eigen6MatrixIiLi1ELin1ELi1ELi1ELin1EEC2ERKS1_.exit168
  %i.fi = load ptr, ptr %i.dt, align 8, !tbaa !143
  %i.fj = invoke noundef i32 %i.fi(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(16) %28)
          to label %bb.ap unwind label %.loopexit333, !inline_history !145

bb.ap:                                            ; preds = %bb.ao
  %i.fk = getelementptr [4 x i8], ptr %i.ex, i64 %i.k
  store i32 %i.fj, ptr %i.fk, align 4, !tbaa !134
  %i.fl = load ptr, ptr %28, align 8, !tbaa !140
  call void @free(ptr noundef %i.fl) #12
  %i.fm = load ptr, ptr %26, align 8, !tbaa !140
  call void @free(ptr noundef %i.fm) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #12
  %i.fn = load ptr, ptr %25, align 8, !tbaa !140
  call void @free(ptr noundef %i.fn) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #12
  %i.fo = add nuw i64 %.097376, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.fo, %i.k
  br i1 %exitcond.not, label %.lr.ph381, label %bb.ad, !llvm.loop !387

bb.aq:                                            ; preds = %.invoke506
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %.body157

.loopexit328:                                     ; preds = %bb.aj
  %lpad.loopexit330 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

.loopexit.split-lp329:                            ; preds = %bb.ai
  %lpad.loopexit.split-lp331 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.ar:                                            ; preds = %.loopexit.split-lp329, %.loopexit328
  %lpad.phi332 = phi { ptr, i32 } [ %lpad.loopexit330, %.loopexit328 ], [ %lpad.loopexit.split-lp331, %.loopexit.split-lp329 ]
  %i.fq = load ptr, ptr %27, align 8, !tbaa !140
  call void @free(ptr noundef %i.fq) #12
  br label %.body157

.loopexit333:                                     ; preds = %bb.ao
  %lpad.loopexit335 = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

.loopexit.split-lp334:                            ; preds = %bb.an
  %lpad.loopexit.split-lp336 = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.as:                                            ; preds = %.loopexit.split-lp334, %.loopexit333
  %lpad.phi337 = phi { ptr, i32 } [ %lpad.loopexit335, %.loopexit333 ], [ %lpad.loopexit.split-lp336, %.loopexit.split-lp334 ]
  %i.fr = load ptr, ptr %28, align 8, !tbaa !140
  call void @free(ptr noundef %i.fr) #12
  br label %.body157

.body157:                                         ; preds = %bb.aq, %bb.ar, %bb.as, %bb.af
  %.pn128.pn = phi { ptr, i32 } [ %i.ep, %bb.af ], [ %lpad.phi332, %bb.ar ], [ %lpad.phi337, %bb.as ], [ %i.fp, %bb.aq ]
  %i.fs = load ptr, ptr %26, align 8, !tbaa !140
  call void @free(ptr noundef %i.fs) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #12
  br label %.body155

.body155:                                         ; preds = %bb.ae, %.body157
  %.pn128.pn.pn = phi { ptr, i32 } [ %.pn128.pn, %.body157 ], [ %i.dy, %bb.ae ]
  %i.ft = load ptr, ptr %25, align 8, !tbaa !140
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
  %37 = mul nsw i64 %i.fx, 3
  %i.fy = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  %.not.i216 = icmp eq ptr %.sroa.13.1, %.sroa.0257.1
  br i1 %.not.i216, label %bb.bn, label %bb.at

bb.at:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i174
  %i.ga = icmp sgt i64 %i.fx, 0
  br i1 %i.ga, label %bb.au, label %.sink.split.i217

bb.au:                                            ; preds = %bb.at
  %i.gb = icmp samesign ugt i64 %37, 4611686018427387903
  br i1 %i.gb, label %.invoke508, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i219

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i219: ; preds = %bb.au
  %i.gc = mul i64 %i.fx, 12
  %i.gd = call noalias ptr @malloc(i64 noundef %i.gc) #33 ; 2 uses
  %i.ge = icmp eq ptr %i.gd, null
  br i1 %i.ge, label %.invoke508, label %.sink.split.i217

.invoke508:                                       ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i219, %bb.au
  %i.gf = call ptr @__cxa_allocate_exception(i64 8) #12 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.gf, align 8, !tbaa !30
  invoke void @__cxa_throw(ptr nonnull %i.gf, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
          to label %.cont509 unwind label %bb.av

.cont509:                                         ; preds = %.invoke508
  unreachable

.sink.split.i217:                                 ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i219, %bb.at
  %.sink.i218 = phi ptr [ %i.gd, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i219 ], [ null, %bb.at ]
  store ptr %.sink.i218, ptr %29, align 8, !tbaa !53
  br label %bb.bn

bb.av:                                            ; preds = %.invoke508
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %.body176

bb.aw:                                            ; preds = %.lr.ph381, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %.098380 = phi i64 [ 0, %.lr.ph381 ], [ %i.ia, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 4 uses
  %.sroa.0257.0379 = phi ptr [ null, %.lr.ph381 ], [ %.sroa.0257.1, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 17 uses
  %.sroa.13.0378 = phi ptr [ null, %.lr.ph381 ], [ %.sroa.13.1, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 13 uses
  %.sroa.20.0377 = phi ptr [ null, %.lr.ph381 ], [ %.sroa.20.1, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 7 uses
  %i.gh = getelementptr [4 x i8], ptr %.sroa.0273.0.ph, i64 %.098380 ; 2 uses
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !134
  %i.gj = getelementptr [4 x i8], ptr %i.gh, i64 %i.k
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !134
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.gi, ptr %i.a, align 4, !tbaa !134
  store i32 %i.gk, ptr %i.b, align 4, !tbaa !134
  %i.gl = load ptr, ptr %i.dw, align 8, !tbaa !9
  %.not.i.i179 = icmp eq ptr %i.gl, null
  br i1 %.not.i.i179, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  invoke void @_ZSt25__throw_bad_function_callv() #34
          to label %.noexc180 unwind label %.loopexit.split-lp

.noexc180:                                        ; preds = %bb.ax
  unreachable

bb.ay:                                            ; preds = %bb.aw
  %i.gm = load ptr, ptr %i.dx, align 8, !tbaa !147
  %i.gn = invoke noundef i32 %i.gm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.az unwind label %.loopexit317, !inline_history !149 ; 2 uses

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.go = icmp sgt i32 %i.gn, 0
  br i1 %i.go, label %bb.ba, label %bb.bg

bb.ba:                                            ; preds = %bb.az
  %i.gp = trunc i64 %.098380 to i32
  %i.gq = add i32 %i.gp, 1                        ; 2 uses
  %.not.i.i182 = icmp eq ptr %.sroa.13.0378, %.sroa.20.0377
  br i1 %.not.i.i182, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  store i32 %i.gq, ptr %.sroa.13.0378, align 4, !tbaa !134
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.13.0378, i64 4
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.bc:                                            ; preds = %bb.ba
  %i.gs = ptrtoint ptr %.sroa.13.0378 to i64
  %i.gt = ptrtoint ptr %.sroa.0257.0379 to i64
  %i.gu = sub i64 %i.gs, %i.gt                    ; 6 uses
  %i.gv = icmp eq i64 %i.gu, 9223372036854775804
  br i1 %i.gv, label %bb.bd, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.bd:                                            ; preds = %bb.bc
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #34
          to label %.noexc184 unwind label %.loopexit.split-lp324

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
          to label %.noexc185 unwind label %.loopexit323 ; 4 uses

.noexc185:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.hd = getelementptr inbounds i8, ptr %i.hc, i64 %i.gu ; 2 uses
  store i32 %i.gq, ptr %i.hd, align 4, !tbaa !134
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

.loopexit317:                                     ; preds = %bb.ay
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

.loopexit.split-lp:                               ; preds = %bb.ax
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

.loopexit323:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit325 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

.loopexit.split-lp324:                            ; preds = %bb.bd
  %lpad.loopexit.split-lp326 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.bg:                                            ; preds = %bb.az
  %i.hh = icmp slt i32 %i.gn, 0
  br i1 %i.hh, label %bb.bh, label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.bh:                                            ; preds = %bb.bg
  %i.hi = trunc i64 %.098380 to i32
  %i.hj = xor i32 %i.hi, -1                       ; 2 uses
  %.not.i.i186 = icmp eq ptr %.sroa.13.0378, %.sroa.20.0377
  br i1 %.not.i.i186, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  store i32 %i.hj, ptr %.sroa.13.0378, align 4, !tbaa !134
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.13.0378, i64 4
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.bj:                                            ; preds = %bb.bh
  %i.hl = ptrtoint ptr %.sroa.13.0378 to i64
  %i.hm = ptrtoint ptr %.sroa.0257.0379 to i64
  %i.hn = sub i64 %i.hl, %i.hm                    ; 6 uses
  %i.ho = icmp eq i64 %i.hn, 9223372036854775804
  br i1 %i.ho, label %bb.bk, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i187

bb.bk:                                            ; preds = %bb.bj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #34
          to label %.noexc193 unwind label %.loopexit.split-lp319

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
          to label %.noexc194 unwind label %.loopexit318 ; 4 uses

.noexc194:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i187
  %i.hw = getelementptr inbounds i8, ptr %i.hv, i64 %i.hn ; 2 uses
  store i32 %i.hj, ptr %i.hw, align 4, !tbaa !134
  %i.hx = icmp sgt i64 %i.hn, 0
  br i1 %i.hx, label %bb.bl, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i190

bb.bl:                                            ; preds = %.noexc194
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.hv, ptr align 4 %.sroa.0257.0379, i64 %i.hn, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i190

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i190: ; preds = %bb.bl, %.noexc194
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hw, i64 4
  %.not.i17.i.i.i191 = icmp eq ptr %.sroa.0257.0379, null
  br i1 %.not.i17.i.i.i191, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i192, label %bb.bm

end_hunk_1
begin_hunk_2_@_ZN3igl8copyleft4cgal12mesh_booleanIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS4_IiLin1ELi3ELi0ELin1ELi3EEENS4_ImLi2ELi1ELi0ELi2ELi1EEENS4_IdLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEEEEbRKNS3_10MatrixBaseIT_EERKNSB_IT0_EERKNSB_IT1_EERKSt8functionIFiNS4_IiLi1ELin1ELi1ELi1ELin1EEEEERKSO_IFiiiEERNS3_15PlainObjectBaseIT2_EERNSY_IT3_EERNSY_IT4_EE:bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %26, i8 0, i64 16, i1 false)
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLi1ELin1ELi1ELi1ELin1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %26, i64 noundef 1, i64 noundef 2)
          to label %_ZN5Eigen6MatrixIiLi1ELin1ELi1ELi1ELin1EEC2IimEERKT_RKT0_.exit159.preheader unwind label %bb.af

_ZN5Eigen6MatrixIiLi1ELin1ELi1ELi1ELin1EEC2IimEERKT_RKT0_.exit159.preheader: ; preds = %_ZN5Eigen6MatrixIiLi1ELin1ELi1ELi1ELin1EEC2IimEERKT_RKT0_.exit
  %i.dz = load ptr, ptr %22, align 8, !tbaa !53
  %i.ea = load i64, ptr %i.dp, align 8, !tbaa !12 ; 3 uses
  %i.eb = getelementptr [4 x i8], ptr %i.dz, i64 %.097381 ; 4 uses
  %i.ec = load ptr, ptr %25, align 8, !tbaa !140  ; 3 uses
  %i.ed = load ptr, ptr %26, align 8, !tbaa !140  ; 2 uses
  %i.ee = load i32, ptr %i.eb, align 4, !tbaa !134
  store i32 %i.ee, ptr %i.ec, align 4, !tbaa !134
  %i.ef = getelementptr [4 x i8], ptr %i.eb, i64 %i.ea
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !134
  store i32 %i.eg, ptr %i.ed, align 4, !tbaa !134
  %.idx450 = shl i64 %i.ea, 3
  %i.eh = getelementptr i8, ptr %i.eb, i64 %.idx450
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !134
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  store i32 %i.ei, ptr %i.ej, align 4, !tbaa !134
  %.idx451 = mul i64 %i.ea, 12
  %i.ek = getelementptr i8, ptr %i.eb, i64 %.idx451
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !134
  %i.em = getelementptr inbounds nuw i8, ptr %i.ed, i64 4
  store i32 %i.el, ptr %i.em, align 4, !tbaa !134
  %i.en = load i64, ptr %i.dq, align 8, !tbaa !142 ; 4 uses
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
  br i1 %i.eq, label %.invoke514, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i: ; preds = %bb.ag
  %i.er = shl nuw i64 %i.en, 2                    ; 2 uses
  %i.es = call noalias ptr @malloc(i64 noundef %i.er) #33 ; 3 uses
  %i.et = icmp eq ptr %i.es, null
  br i1 %i.et, label %.invoke514, label %bb.ah

bb.ah:                                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i
  store ptr %i.es, ptr %27, align 8, !tbaa !140
  store i64 %i.en, ptr %i.dr, align 8, !tbaa !142
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.es, ptr nonnull align 4 %i.ec, i64 %i.er, i1 false)
  br label %_ZN5Eigen6MatrixIiLi1ELin1ELi1ELi1ELin1EEC2ERKS1_.exit

_ZN5Eigen6MatrixIiLi1ELin1ELi1ELi1ELin1EEC2ERKS1_.exit: ; preds = %bb.ah, %_ZN5Eigen8internal28conditional_aligned_new_autoIiLb1EEEPT_m.exit.thread.i.i.i
  %i.eu = load ptr, ptr %i.ds, align 8, !tbaa !9
  %.not.i.i161 = icmp eq ptr %i.eu, null
  br i1 %.not.i.i161, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %_ZN5Eigen6MatrixIiLi1ELin1ELi1ELi1ELin1EEC2ERKS1_.exit
  invoke void @_ZSt25__throw_bad_function_callv() #34
          to label %.noexc162 unwind label %.loopexit.split-lp332

.noexc162:                                        ; preds = %bb.ai
  unreachable

bb.aj:                                            ; preds = %_ZN5Eigen6MatrixIiLi1ELin1ELi1ELi1ELin1EEC2ERKS1_.exit
  %i.ev = load ptr, ptr %i.dt, align 8, !tbaa !143
  %i.ew = invoke noundef i32 %i.ev(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(16) %27)
          to label %bb.ak unwind label %.loopexit331, !inline_history !145

bb.ak:                                            ; preds = %bb.aj
  %i.ex = getelementptr [4 x i8], ptr %.sroa.0275.0.ph, i64 %.097381 ; 2 uses
  store i32 %i.ew, ptr %i.ex, align 4, !tbaa !134
  %i.ey = load ptr, ptr %27, align 8, !tbaa !140
  call void @free(ptr noundef %i.ey) #12
  %i.ez = load i64, ptr %i.du, align 8, !tbaa !142 ; 4 uses
  %i.fa = icmp eq i64 %i.ez, 0
  br i1 %i.fa, label %_ZN5Eigen8internal28conditional_aligned_new_autoIiLb1EEEPT_m.exit.thread.i.i.i165, label %bb.al

_ZN5Eigen8internal28conditional_aligned_new_autoIiLb1EEEPT_m.exit.thread.i.i.i165: ; preds = %bb.ak
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %28, i8 0, i64 16, i1 false)
  br label %_ZN5Eigen6MatrixIiLi1ELin1ELi1ELi1ELin1EEC2ERKS1_.exit168

bb.al:                                            ; preds = %bb.ak
  %i.fb = icmp ugt i64 %i.ez, 4611686018427387903
  br i1 %i.fb, label %.invoke514, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i164

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i164: ; preds = %bb.al
  %i.fc = shl nuw i64 %i.ez, 2                    ; 2 uses
  %i.fd = call noalias ptr @malloc(i64 noundef %i.fc) #33 ; 3 uses
  %i.fe = icmp eq ptr %i.fd, null
  br i1 %i.fe, label %.invoke514, label %bb.am

.invoke514:                                       ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i164, %bb.al, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i, %bb.ag
  %i.ff = call ptr @__cxa_allocate_exception(i64 8) #12 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ff, align 8, !tbaa !30
  invoke void @__cxa_throw(ptr nonnull %i.ff, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
          to label %.cont515 unwind label %bb.aq

.cont515:                                         ; preds = %.invoke514
  unreachable

bb.am:                                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i164
  store ptr %i.fd, ptr %28, align 8, !tbaa !140
  store i64 %i.ez, ptr %i.dv, align 8, !tbaa !142
  %i.fg = load ptr, ptr %26, align 8, !tbaa !140
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.fd, ptr align 4 %i.fg, i64 %i.fc, i1 false)
  br label %_ZN5Eigen6MatrixIiLi1ELin1ELi1ELi1ELin1EEC2ERKS1_.exit168

_ZN5Eigen6MatrixIiLi1ELin1ELi1ELi1ELin1EEC2ERKS1_.exit168: ; preds = %bb.am, %_ZN5Eigen8internal28conditional_aligned_new_autoIiLb1EEEPT_m.exit.thread.i.i.i165
  %i.fh = load ptr, ptr %i.ds, align 8, !tbaa !9
  %.not.i.i169 = icmp eq ptr %i.fh, null
  br i1 %.not.i.i169, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %_ZN5Eigen6MatrixIiLi1ELin1ELi1ELi1ELin1EEC2ERKS1_.exit168
  invoke void @_ZSt25__throw_bad_function_callv() #34
          to label %.noexc170 unwind label %.loopexit.split-lp337

.noexc170:                                        ; preds = %bb.an
  unreachable

bb.ao:                                            ; preds = %_ZN5Eigen6MatrixIiLi1ELin1ELi1ELi1ELin1EEC2ERKS1_.exit168
  %i.fi = load ptr, ptr %i.dt, align 8, !tbaa !143
  %i.fj = invoke noundef i32 %i.fi(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(16) %28)
          to label %bb.ap unwind label %.loopexit336, !inline_history !145

bb.ap:                                            ; preds = %bb.ao
  %i.fk = getelementptr [4 x i8], ptr %i.ex, i64 %i.k
  store i32 %i.fj, ptr %i.fk, align 4, !tbaa !134
  %i.fl = load ptr, ptr %28, align 8, !tbaa !140
  call void @free(ptr noundef %i.fl) #12
  %i.fm = load ptr, ptr %26, align 8, !tbaa !140
  call void @free(ptr noundef %i.fm) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #12
  %i.fn = load ptr, ptr %25, align 8, !tbaa !140
  call void @free(ptr noundef %i.fn) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #12
  %i.fo = add nuw i64 %.097381, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.fo, %i.k
  br i1 %exitcond.not, label %.lr.ph386, label %bb.ad, !llvm.loop !472

bb.aq:                                            ; preds = %.invoke514
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %.body157

.loopexit331:                                     ; preds = %bb.aj
  %lpad.loopexit333 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

.loopexit.split-lp332:                            ; preds = %bb.ai
  %lpad.loopexit.split-lp334 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.ar:                                            ; preds = %.loopexit.split-lp332, %.loopexit331
  %lpad.phi335 = phi { ptr, i32 } [ %lpad.loopexit333, %.loopexit331 ], [ %lpad.loopexit.split-lp334, %.loopexit.split-lp332 ]
  %i.fq = load ptr, ptr %27, align 8, !tbaa !140
  call void @free(ptr noundef %i.fq) #12
  br label %.body157

.loopexit336:                                     ; preds = %bb.ao
  %lpad.loopexit338 = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

.loopexit.split-lp337:                            ; preds = %bb.an
  %lpad.loopexit.split-lp339 = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.as:                                            ; preds = %.loopexit.split-lp337, %.loopexit336
  %lpad.phi340 = phi { ptr, i32 } [ %lpad.loopexit338, %.loopexit336 ], [ %lpad.loopexit.split-lp339, %.loopexit.split-lp337 ]
  %i.fr = load ptr, ptr %28, align 8, !tbaa !140
  call void @free(ptr noundef %i.fr) #12
  br label %.body157

.body157:                                         ; preds = %bb.aq, %bb.ar, %bb.as, %bb.af
  %.pn128.pn = phi { ptr, i32 } [ %i.ep, %bb.af ], [ %lpad.phi335, %bb.ar ], [ %lpad.phi340, %bb.as ], [ %i.fp, %bb.aq ]
  %i.fs = load ptr, ptr %26, align 8, !tbaa !140
  call void @free(ptr noundef %i.fs) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #12
  br label %.body155

.body155:                                         ; preds = %bb.ae, %.body157
  %.pn128.pn.pn = phi { ptr, i32 } [ %.pn128.pn, %.body157 ], [ %i.dy, %bb.ae ]
  %i.ft = load ptr, ptr %25, align 8, !tbaa !140
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
  %37 = mul nsw i64 %i.fx, 3
  %i.fy = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  %.not.i218 = icmp eq ptr %.sroa.13.1, %.sroa.0259.1
  br i1 %.not.i218, label %bb.bn, label %bb.at

bb.at:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i174
  %i.ga = icmp sgt i64 %i.fx, 0
  br i1 %i.ga, label %bb.au, label %.sink.split.i219

bb.au:                                            ; preds = %bb.at
  %i.gb = icmp samesign ugt i64 %37, 4611686018427387903
  br i1 %i.gb, label %.invoke516, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i221

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i221: ; preds = %bb.au
  %i.gc = mul i64 %i.fx, 12
  %i.gd = call noalias ptr @malloc(i64 noundef %i.gc) #33 ; 2 uses
  %i.ge = icmp eq ptr %i.gd, null
  br i1 %i.ge, label %.invoke516, label %.sink.split.i219

.invoke516:                                       ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i221, %bb.au
  %i.gf = call ptr @__cxa_allocate_exception(i64 8) #12 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.gf, align 8, !tbaa !30
  invoke void @__cxa_throw(ptr nonnull %i.gf, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
          to label %.cont517 unwind label %bb.av

.cont517:                                         ; preds = %.invoke516
  unreachable

.sink.split.i219:                                 ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i221, %bb.at
  %.sink.i220 = phi ptr [ %i.gd, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i221 ], [ null, %bb.at ]
  store ptr %.sink.i220, ptr %29, align 8, !tbaa !53
  br label %bb.bn

bb.av:                                            ; preds = %.invoke516
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %.body176

bb.aw:                                            ; preds = %.lr.ph386, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %.098385 = phi i64 [ 0, %.lr.ph386 ], [ %i.ia, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 4 uses
  %.sroa.0259.0384 = phi ptr [ null, %.lr.ph386 ], [ %.sroa.0259.1, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 17 uses
  %.sroa.13.0383 = phi ptr [ null, %.lr.ph386 ], [ %.sroa.13.1, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 13 uses
  %.sroa.20.0382 = phi ptr [ null, %.lr.ph386 ], [ %.sroa.20.1, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 7 uses
  %i.gh = getelementptr [4 x i8], ptr %.sroa.0275.0.ph, i64 %.098385 ; 2 uses
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !134
  %i.gj = getelementptr [4 x i8], ptr %i.gh, i64 %i.k
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !134
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.gi, ptr %i.a, align 4, !tbaa !134
  store i32 %i.gk, ptr %i.b, align 4, !tbaa !134
  %i.gl = load ptr, ptr %i.dw, align 8, !tbaa !9
  %.not.i.i179 = icmp eq ptr %i.gl, null
  br i1 %.not.i.i179, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  invoke void @_ZSt25__throw_bad_function_callv() #34
          to label %.noexc180 unwind label %.loopexit.split-lp

.noexc180:                                        ; preds = %bb.ax
  unreachable

bb.ay:                                            ; preds = %bb.aw
  %i.gm = load ptr, ptr %i.dx, align 8, !tbaa !147
  %i.gn = invoke noundef i32 %i.gm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.az unwind label %.loopexit320, !inline_history !149 ; 2 uses

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.go = icmp sgt i32 %i.gn, 0
  br i1 %i.go, label %bb.ba, label %bb.bg

bb.ba:                                            ; preds = %bb.az
  %i.gp = trunc i64 %.098385 to i32
  %i.gq = add i32 %i.gp, 1                        ; 2 uses
  %.not.i.i182 = icmp eq ptr %.sroa.13.0383, %.sroa.20.0382
  br i1 %.not.i.i182, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  store i32 %i.gq, ptr %.sroa.13.0383, align 4, !tbaa !134
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.13.0383, i64 4
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.bc:                                            ; preds = %bb.ba
  %i.gs = ptrtoint ptr %.sroa.13.0383 to i64
  %i.gt = ptrtoint ptr %.sroa.0259.0384 to i64
  %i.gu = sub i64 %i.gs, %i.gt                    ; 6 uses
  %i.gv = icmp eq i64 %i.gu, 9223372036854775804
  br i1 %i.gv, label %bb.bd, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.bd:                                            ; preds = %bb.bc
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #34
          to label %.noexc184 unwind label %.loopexit.split-lp327

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
          to label %.noexc185 unwind label %.loopexit326 ; 4 uses

.noexc185:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.hd = getelementptr inbounds i8, ptr %i.hc, i64 %i.gu ; 2 uses
  store i32 %i.gq, ptr %i.hd, align 4, !tbaa !134
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

.loopexit320:                                     ; preds = %bb.ay
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

.loopexit.split-lp:                               ; preds = %bb.ax
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

.loopexit326:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit328 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

.loopexit.split-lp327:                            ; preds = %bb.bd
  %lpad.loopexit.split-lp329 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.bg:                                            ; preds = %bb.az
  %i.hh = icmp slt i32 %i.gn, 0
  br i1 %i.hh, label %bb.bh, label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.bh:                                            ; preds = %bb.bg
  %i.hi = trunc i64 %.098385 to i32
  %i.hj = xor i32 %i.hi, -1                       ; 2 uses
  %.not.i.i186 = icmp eq ptr %.sroa.13.0383, %.sroa.20.0382
  br i1 %.not.i.i186, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  store i32 %i.hj, ptr %.sroa.13.0383, align 4, !tbaa !134
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.13.0383, i64 4
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.bj:                                            ; preds = %bb.bh
  %i.hl = ptrtoint ptr %.sroa.13.0383 to i64
  %i.hm = ptrtoint ptr %.sroa.0259.0384 to i64
  %i.hn = sub i64 %i.hl, %i.hm                    ; 6 uses
  %i.ho = icmp eq i64 %i.hn, 9223372036854775804
  br i1 %i.ho, label %bb.bk, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i187

bb.bk:                                            ; preds = %bb.bj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #34
          to label %.noexc193 unwind label %.loopexit.split-lp322

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
          to label %.noexc194 unwind label %.loopexit321 ; 4 uses

.noexc194:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i187
  %i.hw = getelementptr inbounds i8, ptr %i.hv, i64 %i.hn ; 2 uses
  store i32 %i.hj, ptr %i.hw, align 4, !tbaa !134
  %i.hx = icmp sgt i64 %i.hn, 0
  br i1 %i.hx, label %bb.bl, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i190

bb.bl:                                            ; preds = %.noexc194
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.hv, ptr align 4 %.sroa.0259.0384, i64 %i.hn, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i190

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i190: ; preds = %bb.bl, %.noexc194
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hw, i64 4
  %.not.i17.i.i.i191 = icmp eq ptr %.sroa.0259.0384, null
  br i1 %.not.i17.i.i.i191, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i192, label %bb.bm

end_hunk_2
