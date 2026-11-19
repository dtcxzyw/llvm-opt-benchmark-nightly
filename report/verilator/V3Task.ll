Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3Task?download=true
inline.NumInlined: 6593
inline.NumDeleted: 1866
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN6V3Task12taskConnectsEP15AstNodeFTaskRefP7AstNodeP18V3TaskConnectStateb:bb.a

_ZNKSt6vectorISt4pairIP6AstVarP6AstArgESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ab
  %i.ew = ashr exact i64 %i.eu, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ew, i64 1)
  %i.ex = add nsw i64 %.sroa.speculated.i.i.i, %i.ew ; 2 uses
  %i.ey = icmp ult i64 %i.ex, %i.ew
  %i.ez = call i64 @llvm.umin.i64(i64 %i.ex, i64 576460752303423487)
  %i.fa = select i1 %i.ey, i64 576460752303423487, i64 %i.ez ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.fa, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.fb = shl nuw nsw i64 %i.fa, 4
  %i.fc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fb) #28
          to label %.noexc399 unwind label %.loopexit.split-lp1112.loopexit ; 5 uses

.noexc399:                                        ; preds = %_ZNKSt6vectorISt4pairIP6AstVarP6AstArgESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.eu ; 2 uses
  store ptr %.02181505, ptr %i.fd, align 8, !tbaa !71
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  store ptr null, ptr %i.fe, align 8, !tbaa !72
  %.not10.i.i.i.i.i = icmp eq ptr %i.ek, %i.eo
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt4pairIP6AstVarP6AstArgESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit33.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc399, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.fg, %.lr.ph.i.i.i.i.i ], [ %i.fc, %.noexc399 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ff, %.lr.ph.i.i.i.i.i ], [ %i.ek, %.noexc399 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !alias.scope !577
  %i.ff = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ff, %i.eo
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt4pairIP6AstVarP6AstArgESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit33.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !528

_ZNSt6vectorISt4pairIP6AstVarP6AstArgESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit33.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc399
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.fc, %.noexc399 ], [ %i.fg, %.lr.ph.i.i.i.i.i ]
  %i.fh = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16
  %.not.i34.i.i = icmp eq ptr %i.ek, null
  br i1 %.not.i34.i.i, label %_ZNSt6vectorISt4pairIP6AstVarP6AstArgESaIS5_EE17_M_realloc_insertIJRKS2_S4_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorISt4pairIP6AstVarP6AstArgESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit33.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ek, i64 noundef %i.eu) #26
  br label %_ZNSt6vectorISt4pairIP6AstVarP6AstArgESaIS5_EE17_M_realloc_insertIJRKS2_S4_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorISt4pairIP6AstVarP6AstArgESaIS5_EE17_M_realloc_insertIJRKS2_S4_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.ad, %_ZNSt6vectorISt4pairIP6AstVarP6AstArgESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit33.i.i
  store ptr %i.fh, ptr %i.cg, align 8, !tbaa !576
  %i.fi = getelementptr inbounds nuw [16 x i8], ptr %i.fc, i64 %i.fa
  store ptr %i.fi, ptr %i.ch, align 16, !tbaa !67
  br label %_ZNSt6vectorISt4pairIP6AstVarP6AstArgESaIS5_EE12emplace_backIJRKS2_S4_EEERS5_DpOT_.exit

_ZNSt6vectorISt4pairIP6AstVarP6AstArgESaIS5_EE12emplace_backIJRKS2_S4_EEERS5_DpOT_.exit: ; preds = %_ZNSt6vectorISt4pairIP6AstVarP6AstArgESaIS5_EE17_M_realloc_insertIJRKS2_S4_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, %bb.aa
  %i.fj = phi ptr [ %i.fc, %_ZNSt6vectorISt4pairIP6AstVarP6AstArgESaIS5_EE17_M_realloc_insertIJRKS2_S4_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i ], [ %i.ek, %bb.aa ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !578)
  %i.fk = getelementptr inbounds nuw i8, ptr %.02181505, i64 152
  store ptr %i.ci, ptr %21, align 8, !tbaa !74, !alias.scope !578
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !30, !noalias !578 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.02181505, i64 160
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !31, !noalias !578 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #25, !noalias !578
  store i64 %i.fn, ptr %i.h, align 8, !tbaa !75, !noalias !578
  %i.fo = icmp ugt i64 %i.fn, 15
  br i1 %i.fo, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %_ZNSt6vectorISt4pairIP6AstVarP6AstArgESaIS5_EE12emplace_backIJRKS2_S4_EEERS5_DpOT_.exit
  %i.fp = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef 0)
          to label %.noexc400 unwind label %bb.ai ; 2 uses

.noexc400:                                        ; preds = %.noexc.i.i
  store ptr %i.fp, ptr %21, align 8, !tbaa !30, !alias.scope !578
  %i.fq = load i64, ptr %i.h, align 8, !tbaa !75, !noalias !578
  store i64 %i.fq, ptr %i.ci, align 8, !tbaa !32, !alias.scope !578
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc400, %_ZNSt6vectorISt4pairIP6AstVarP6AstArgESaIS5_EE12emplace_backIJRKS2_S4_EEERS5_DpOT_.exit
  %i.fr = phi ptr [ %i.fp, %.noexc400 ], [ %i.ci, %_ZNSt6vectorISt4pairIP6AstVarP6AstArgESaIS5_EE12emplace_backIJRKS2_S4_EEERS5_DpOT_.exit ] ; 2 uses
  switch i64 %i.fn, label %bb.af [
    i64 1, label %bb.ae
    i64 0, label %bb.ag
  ]

bb.ae:                                            ; preds = %._crit_edge.i.i.i
  %i.fs = load i8, ptr %i.fl, align 1, !tbaa !32
  store i8 %i.fs, ptr %i.fr, align 1, !tbaa !32
  br label %bb.ag

bb.af:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fr, ptr align 1 %i.fl, i64 %i.fn, i1 false)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %._crit_edge.i.i.i
  %i.ft = load i64, ptr %i.h, align 8, !tbaa !75, !noalias !578 ; 2 uses
  store i64 %i.ft, ptr %i.cj, align 8, !tbaa !31, !alias.scope !578
  %i.fu = load ptr, ptr %21, align 8, !tbaa !30, !alias.scope !578
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.ft
  store i8 0, ptr %i.fv, align 1, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #25, !noalias !578
  %i.fw = invoke { ptr, i8 } @_ZNSt3mapIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS6_ESaISt4pairIS6_iEEE7emplaceIJS5_RiEEES9_ISt17_Rb_tree_iteratorISA_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %19, ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 4 dereferenceable(4) %i.i)
          to label %bb.ah unwind label %bb.aj     ; 0 uses

bb.ah:                                            ; preds = %bb.ag
  %i.fx = load ptr, ptr %21, align 8, !tbaa !30   ; 2 uses
  %i.fy = icmp eq ptr %i.fx, %i.ci
  br i1 %i.fy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit403, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i401

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i401: ; preds = %bb.ah
  %i.fz = load i64, ptr %i.ci, align 8, !tbaa !32
  %i.ga = add i64 %i.fz, 1
  call void @_ZdlPvm(ptr noundef %i.fx, i64 noundef %i.ga) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit403

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit403: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i401
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25
  %i.gb = load i32, ptr %i.i, align 4, !tbaa !59
  %i.gc = add nsw i32 %i.gb, 1
  store i32 %i.gc, ptr %i.i, align 4, !tbaa !59
  %i.gd = getelementptr inbounds nuw i8, ptr %.02181505, i64 260
  %i.ge = load i64, ptr %i.gd, align 4
  %i.gf = and i64 %i.ge, 262144
  %.not1091 = icmp eq i64 %i.gf, 0
  br i1 %.not1091, label %bb.ak, label %bb.as

bb.ai:                                            ; preds = %.noexc.i.i
  %i.gg = landingpad { ptr, i32 }
          cleanup
  store ptr %i.fj, ptr %20, align 16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit406

bb.aj:                                            ; preds = %bb.ag
  %i.gh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  store ptr %i.fj, ptr %20, align 16
  %i.gi = load ptr, ptr %21, align 8, !tbaa !30   ; 2 uses
  %i.gj = icmp eq ptr %i.gi, %i.ci
  br i1 %i.gj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit406, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i404

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i404: ; preds = %bb.aj
  %i.gk = load i64, ptr %i.ci, align 8, !tbaa !32
  %i.gl = add i64 %i.gk, 1
  call void @_ZdlPvm(ptr noundef %i.gi, i64 noundef %i.gl) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit406

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit406: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i404, %bb.ai
  %.pn367 = phi { ptr, i32 } [ %i.gg, %bb.ai ], [ %i.gh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i404 ], [ %i.gh, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25
  br label %thread-pre-split

bb.ak:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit403
  %.not369 = icmp eq ptr %.010811504, null
  br i1 %.not369, label %bb.as, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gm = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error11v3errorPrepB5cxx11E11V3ErrorCode(i8 5)
          to label %bb.am unwind label %.loopexit.split-lp1112.loopexit ; 0 uses

bb.am:                                            ; preds = %bb.al
  %i.gn = load atomic i8, ptr @_ZGVZN7V3Error1sEvE3s_s acquire, align 8
  %i.go = icmp eq i8 %i.gn, 0
  br i1 %i.go, label %bb.an, label %bb.ar, !prof !76

bb.an:                                            ; preds = %bb.am
  %i.gp = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #25
  %.not.i.i = icmp eq i32 %i.gp, 0
  br i1 %.not.i.i, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZN14V3ErrorGuardedC2Ev(ptr noundef nonnull align 8 dereferenceable(720) @_ZZN7V3Error1sEvE3s_s)
          to label %bb.ap unwind label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.gq = call i32 @__cxa_atexit(ptr nonnull @_ZN14V3ErrorGuardedD2Ev, ptr nonnull @_ZZN7V3Error1sEvE3s_s, ptr nonnull @__dso_handle) #25 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #25
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  %i.gr = landingpad { ptr, i32 }
          cleanup
  store ptr %i.fj, ptr %20, align 16
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #25
  br label %bb.ne

bb.ar:                                            ; preds = %bb.ap, %bb.an, %bb.am
  %i.gs = call noundef nonnull align 8 dereferenceable(112) ptr @llvm.ptr.annotation.p0.p0(ptr nonnull getelementptr inbounds nuw (i8, ptr @_ZZN7V3Error1sEvE3s_s, i64 304), ptr nonnull @.str.66, ptr nonnull @.str.67, i32 481, ptr null) ; 2 uses
  %i.gt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gs, ptr noundef nonnull @.str.5, i64 noundef 72)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit408 unwind label %.loopexit.split-lp1112.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit408: ; preds = %bb.ar
  invoke void @_ZNK7AstNode10v3errorEndERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %.02181505, ptr noundef nonnull align 8 dereferenceable(112) %i.gs)
          to label %bb.as unwind label %.loopexit.split-lp1112.loopexit

bb.as:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit403, %bb.y, %bb.ak, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit408, %bb.x
  %i.gu = phi ptr [ %i.ek, %bb.x ], [ %i.ek, %bb.y ], [ %i.fj, %bb.ak ], [ %i.fj, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit408 ], [ %i.fj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit403 ] ; 2 uses
  %.1 = phi ptr [ %.010811504, %bb.x ], [ %.010811504, %bb.y ], [ null, %bb.ak ], [ %.010811504, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit408 ], [ %.02181505, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit403 ] ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.02181505, i64 8
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !77 ; 2 uses
  %.not229 = icmp eq ptr %i.gw, null
  br i1 %.not229, label %._crit_edge, label %bb.x, !llvm.loop !531

._crit_edge1515:                                  ; preds = %bb.fu, %._crit_edge
  %.0113.lcssa = phi i1 [ false, %._crit_edge ], [ %.2115, %bb.fu ] ; 2 uses
  br i1 %4, label %bb.fv, label %.thread1951

bb.at:                                            ; preds = %.lr.ph1514, %bb.fu
  %indvars.iv = phi i64 [ 0, %.lr.ph1514 ], [ %indvars.iv.next, %bb.fu ] ; 4 uses
  %.01121512 = phi ptr [ %i.cl, %.lr.ph1514 ], [ %i.gy, %bb.fu ] ; 14 uses
  %.01131511 = phi i1 [ false, %.lr.ph1514 ], [ %.2115, %bb.fu ] ; 6 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.01121512, i64 8
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !77 ; 5 uses
  %.not.i409 = icmp eq ptr %i.gy, null            ; 2 uses
  br i1 %.not.i409, label %_ZN7AstNode2asI6AstArgS_EEPT_PT0_.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 64
  %.sroa.0.0.copyload.i.i.i410 = load i16, ptr %i.gz, align 8, !tbaa !61
  %.not6.i = icmp eq i16 %.sroa.0.0.copyload.i.i.i410, 3
  br i1 %.not6.i, label %_ZN7AstNode2asI6AstArgS_EEPT_PT0_.exit, label %bb.av, !prof !78

bb.av:                                            ; preds = %bb.au
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gy, i64 64
  %i.hb = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.78, i32 noundef 1063)
          to label %.noexc411 unwind label %.loopexit.split-lp1112.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc411:                                        ; preds = %bb.av
  %i.hc = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
          to label %.noexc412 unwind label %.loopexit.split-lp1112.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc412:                                        ; preds = %.noexc411
  %i.hd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hc, ptr noundef nonnull @.str.138, i64 noundef 55)
          to label %.noexc413 unwind label %.loopexit.split-lp1112.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc413:                                        ; preds = %.noexc412
  %.sroa.0.0.copyload.i.i5.i = load i16, ptr %i.ha, align 8, !tbaa !61
  %i.he = zext i16 %.sroa.0.0.copyload.i.i5.i to i64
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr @_ZZNK6VNType5asciiEvE5names, i64 %i.he
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !79
  %i.hh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.hc, ptr noundef %i.hg)
          to label %.noexc414 unwind label %.loopexit.split-lp1112.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc414:                                        ; preds = %.noexc413
  %i.hi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hh, ptr noundef nonnull @.str.68, i64 noundef 1)
          to label %.noexc415 unwind label %.loopexit.split-lp1112.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc415:                                        ; preds = %.noexc414
  invoke void @_ZNK7AstNode15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %i.gy, ptr noundef nonnull align 8 dereferenceable(112) %i.hh) #27
          to label %.noexc416 unwind label %.loopexit.split-lp1112.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp

.noexc416:                                        ; preds = %.noexc415
  unreachable

_ZN7AstNode2asI6AstArgS_EEPT_PT0_.exit:           ; preds = %bb.au, %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !579)
  %i.hj = getelementptr inbounds nuw i8, ptr %.01121512, i64 152 ; 2 uses
  store ptr %i.cm, ptr %22, align 8, !tbaa !74, !alias.scope !579
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !30, !noalias !579 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.01121512, i64 160 ; 2 uses
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !31, !noalias !579 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #25, !noalias !579
  store i64 %i.hm, ptr %i.g, align 8, !tbaa !75, !noalias !579
  %i.hn = icmp ugt i64 %i.hm, 15
  br i1 %i.hn, label %.noexc.i.i418, label %._crit_edge.i.i.i417

.noexc.i.i418:                                    ; preds = %_ZN7AstNode2asI6AstArgS_EEPT_PT0_.exit
  %i.ho = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0)
          to label %.noexc419 unwind label %bb.cc ; 2 uses

.noexc419:                                        ; preds = %.noexc.i.i418
  store ptr %i.ho, ptr %22, align 8, !tbaa !30, !alias.scope !579
  %i.hp = load i64, ptr %i.g, align 8, !tbaa !75, !noalias !579
  store i64 %i.hp, ptr %i.cm, align 8, !tbaa !32, !alias.scope !579
  br label %._crit_edge.i.i.i417

._crit_edge.i.i.i417:                             ; preds = %.noexc419, %_ZN7AstNode2asI6AstArgS_EEPT_PT0_.exit
  %i.hq = phi ptr [ %i.ho, %.noexc419 ], [ %i.cm, %_ZN7AstNode2asI6AstArgS_EEPT_PT0_.exit ] ; 2 uses
  switch i64 %i.hm, label %bb.ax [
    i64 1, label %bb.aw
    i64 0, label %bb.ay
  ]

bb.aw:                                            ; preds = %._crit_edge.i.i.i417
  %i.hr = load i8, ptr %i.hk, align 1, !tbaa !32
  store i8 %i.hr, ptr %i.hq, align 1, !tbaa !32
  br label %bb.ay

bb.ax:                                            ; preds = %._crit_edge.i.i.i417
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hq, ptr align 1 %i.hk, i64 %i.hm, i1 false)
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw, %._crit_edge.i.i.i417
  %i.hs = load i64, ptr %i.g, align 8, !tbaa !75, !noalias !579 ; 2 uses
  store i64 %i.hs, ptr %i.cn, align 8, !tbaa !31, !alias.scope !579
  %i.ht = load ptr, ptr %22, align 8, !tbaa !30, !alias.scope !579
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 %i.hs
  store i8 0, ptr %i.hu, align 1, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #25, !noalias !579
  %i.hv = load i64, ptr %i.cn, align 8, !tbaa !31 ; 2 uses
  %i.hw = icmp eq i64 %i.hv, 0
  %i.hx = load ptr, ptr %22, align 8, !tbaa !30   ; 2 uses
  %i.hy = icmp eq ptr %i.hx, %i.cm
  br i1 %i.hy, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i421, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i420

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i421: ; preds = %bb.ay
  %i.hz = icmp ult i64 %i.hv, 16
  call void @llvm.assume(i1 %i.hz)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit422

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i420: ; preds = %bb.ay
  %i.ia = load i64, ptr %i.cm, align 8, !tbaa !32
  %i.ib = add i64 %i.ia, 1
  call void @_ZdlPvm(ptr noundef %i.hx, i64 noundef %i.ib) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit422

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit422: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i421, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i420
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #25
  br i1 %i.hw, label %bb.dt, label %bb.az

bb.az:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit422
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !580)
  store ptr %i.co, ptr %23, align 8, !tbaa !74, !alias.scope !580
  %i.ic = load ptr, ptr %i.hj, align 8, !tbaa !30, !noalias !580 ; 2 uses
  %i.id = load i64, ptr %i.hl, align 8, !tbaa !31, !noalias !580 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25, !noalias !580
  store i64 %i.id, ptr %i.f, align 8, !tbaa !75, !noalias !580
  %i.ie = icmp ugt i64 %i.id, 15
  br i1 %i.ie, label %.noexc.i.i424, label %._crit_edge.i.i.i423

.noexc.i.i424:                                    ; preds = %bb.az
  %i.if = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc425 unwind label %bb.cd ; 2 uses

.noexc425:                                        ; preds = %.noexc.i.i424
  store ptr %i.if, ptr %23, align 8, !tbaa !30, !alias.scope !580
  %i.ig = load i64, ptr %i.f, align 8, !tbaa !75, !noalias !580
  store i64 %i.ig, ptr %i.co, align 8, !tbaa !32, !alias.scope !580
  br label %._crit_edge.i.i.i423

._crit_edge.i.i.i423:                             ; preds = %.noexc425, %bb.az
  %i.ih = phi ptr [ %i.if, %.noexc425 ], [ %i.co, %bb.az ] ; 2 uses
  switch i64 %i.id, label %bb.bb [
    i64 1, label %bb.ba
    i64 0, label %bb.bc
  ]

bb.ba:                                            ; preds = %._crit_edge.i.i.i423
  %i.ii = load i8, ptr %i.ic, align 1, !tbaa !32
  store i8 %i.ii, ptr %i.ih, align 1, !tbaa !32
  br label %bb.bc

bb.bb:                                            ; preds = %._crit_edge.i.i.i423
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ih, ptr align 1 %i.ic, i64 %i.id, i1 false)
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba, %._crit_edge.i.i.i423
  %i.ij = load i64, ptr %i.f, align 8, !tbaa !75, !noalias !580 ; 2 uses
  store i64 %i.ij, ptr %i.cp, align 8, !tbaa !31, !alias.scope !580
  %i.ik = load ptr, ptr %23, align 8, !tbaa !30, !alias.scope !580
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 %i.ij
  store i8 0, ptr %i.il, align 1, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25, !noalias !580
  %i.im = load ptr, ptr %i.bw, align 8, !tbaa !38 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.im, null
  %.pre1651.a = load ptr, ptr %23, align 8        ; 4 uses
  br i1 %.not10.i.i.i, label %_ZNSt3mapIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS6_ESaISt4pairIS6_iEEE4findERS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.bc
  %i.in = load i64, ptr %i.cp, align 8, !tbaa !31 ; 4 uses
  br label %bb.bd

bb.bd:                                            ; preds = %_ZNKSt4lessIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERS6_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.im, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERS6_S8_.exit.i.i.i ] ; 6 uses
  %.0811.i.i.i = phi ptr [ %i.bv, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERS6_S8_.exit.i.i.i ] ; 3 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.ip = load i64, ptr %i.io, align 8, !tbaa !31 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.in, i64 %i.ip) ; 2 uses
  %i.iq = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.iq, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.bd
  %i.ir = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !30
  %i.it = call i32 @memcmp(ptr noundef %i.is, ptr noundef %.pre1651.a, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #25 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.it, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERS6_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.bd
  %i.iu = sub i64 %i.ip, %i.in
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.iu, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERS6_S8_.exit.i.i.i

_ZNKSt4lessIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERS6_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.it, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.iv = icmp slt i32 %.0.i.i.i.i.i.i, 0         ; 4 uses
  %.19.i.i.i = select i1 %i.iv, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 3 uses
  %.1.in.v.i.i.i = select i1 %i.iv, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !80 ; 2 uses
  %.not.i.i.i427 = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i427, label %_ZNSt8_Rb_treeIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_iESt10_Select1stIS8_ESt4lessIS6_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i, label %bb.bd, !llvm.loop !0

_ZNSt8_Rb_treeIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_iESt10_Select1stIS8_ESt4lessIS6_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i: ; preds = %_ZNKSt4lessIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERS6_S8_.exit.i.i.i
  %i.iw = icmp eq ptr %.19.i.i.i, %i.bv
  br i1 %i.iw, label %_ZNSt3mapIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS6_ESaISt4pairIS6_iEEE4findERS6_.exit, label %bb.be

end_hunk_0
begin_hunk_1_@_ZN6V3Task12taskConnectsEP15AstNodeFTaskRefP7AstNodeP18V3TaskConnectStateb:bb.a

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit568: ; preds = %bb.dl
  invoke void @_ZNK7AstNode10v3errorEndERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %.01121512, ptr noundef nonnull align 8 dereferenceable(112) %i.ru)
          to label %bb.dm unwind label %bb.dq

bb.dm:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit568
  %i.rv = load ptr, ptr %33, align 8, !tbaa !30   ; 2 uses
  %i.rw = icmp eq ptr %i.rv, %i.ct
  br i1 %i.rw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit571, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i569

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i569: ; preds = %bb.dm
  %i.rx = load i64, ptr %i.ct, align 8, !tbaa !32
  %i.ry = add i64 %i.rx, 1
  call void @_ZdlPvm(ptr noundef %i.rv, i64 noundef %i.ry) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit571

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit571: ; preds = %bb.dm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i569
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #25
  %i.rz = load ptr, ptr %32, align 8, !tbaa !30   ; 2 uses
  %i.sa = icmp eq ptr %i.rz, %i.cu
  br i1 %i.sa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit574, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i572

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i572: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit571
  %i.sb = load i64, ptr %i.cu, align 8, !tbaa !32
  %i.sc = add i64 %i.sb, 1
  call void @_ZdlPvm(ptr noundef %i.rz, i64 noundef %i.sc) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit574

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit574: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit571, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i572
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #25
  %i.sd = load i32, ptr %i.ql, align 8, !tbaa !95
  %i.se = sext i32 %i.sd to i64
  %i.sf = load ptr, ptr %20, align 16, !tbaa !587 ; 2 uses
  %i.sg = getelementptr inbounds nuw [16 x i8], ptr %i.sf, i64 %i.se
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sg, i64 8
  %i.si = load ptr, ptr %i.sh, align 8, !tbaa !72
  %i.sj = invoke noundef ptr @_ZN7AstNode12unlinkFrBackEP10VNRelinker(ptr noundef nonnull align 8 dereferenceable(184) %i.si, ptr noundef null)
          to label %_ZN6AstArg12unlinkFrBackEP10VNRelinker.exit576 unwind label %.loopexit.split-lp1112.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp

_ZN6AstArg12unlinkFrBackEP10VNRelinker.exit576:   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit574
  invoke void @_ZN7AstNode10deleteTreeEv(ptr noundef nonnull align 8 dereferenceable(152) %i.sj)
          to label %_ZN6AstArg12unlinkFrBackEP10VNRelinker.exit576._crit_edge unwind label %.loopexit.split-lp1112.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp

_ZN6AstArg12unlinkFrBackEP10VNRelinker.exit576._crit_edge: ; preds = %_ZN6AstArg12unlinkFrBackEP10VNRelinker.exit576
  %.pre1652.a = load i32, ptr %i.ql, align 8, !tbaa !95
  %.pre1671 = sext i32 %.pre1652.a to i64
  br label %bb.ds

bb.dn:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit553
  %i.sk = landingpad { ptr, i32 }
          cleanup
  br label %.body560

bb.do:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit564, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i558
  %i.sl = landingpad { ptr, i32 }
          cleanup
  br label %bb.dr

bb.dp:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit566
  %i.sm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit579

bb.dq:                                            ; preds = %bb.dl, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit568
  %i.sn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.so = load ptr, ptr %33, align 8, !tbaa !30   ; 2 uses
  %i.sp = icmp eq ptr %i.so, %i.ct
  br i1 %i.sp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit579, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i577

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i577: ; preds = %bb.dq
  %i.sq = load i64, ptr %i.ct, align 8, !tbaa !32
  %i.sr = add i64 %i.sq, 1
  call void @_ZdlPvm(ptr noundef %i.so, i64 noundef %i.sr) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit579

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit579: ; preds = %bb.dq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i577, %bb.dp
  %.pn341 = phi { ptr, i32 } [ %i.sm, %bb.dp ], [ %i.sn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i577 ], [ %i.sn, %bb.dq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #25
  br label %bb.dr

bb.dr:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit579, %bb.do
  %.pn341.pn = phi { ptr, i32 } [ %.pn341, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit579 ], [ %i.sl, %bb.do ] ; 2 uses
  %i.ss = load ptr, ptr %32, align 8, !tbaa !30   ; 2 uses
  %i.st = icmp eq ptr %i.ss, %i.cu
  br i1 %i.st, label %.body560, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i580

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i580: ; preds = %bb.dr
  %i.su = load i64, ptr %i.cu, align 8, !tbaa !32
  %i.sv = add i64 %i.su, 1
  call void @_ZdlPvm(ptr noundef %i.ss, i64 noundef %i.sv) #26
  br label %.body560

.body560:                                         ; preds = %bb.dr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i580, %bb.dn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i555
  %.pn341.pn.pn = phi { ptr, i32 } [ %i.ri, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i555 ], [ %i.sk, %bb.dn ], [ %.pn341.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i580 ], [ %.pn341.pn, %bb.dr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #25
  br label %thread-pre-split

bb.ds:                                            ; preds = %_ZN6AstArg12unlinkFrBackEP10VNRelinker.exit576._crit_edge, %bb.db
  %.pre-phi = phi i64 [ %.pre1671, %_ZN6AstArg12unlinkFrBackEP10VNRelinker.exit576._crit_edge ], [ %i.qn, %bb.db ]
  %i.sw = phi ptr [ %i.sf, %_ZN6AstArg12unlinkFrBackEP10VNRelinker.exit576._crit_edge ], [ %i.qo, %bb.db ]
  %i.sx = getelementptr inbounds nuw [16 x i8], ptr %i.sw, i64 %.pre-phi
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 8
  store ptr %.01121512, ptr %i.sy, align 8, !tbaa !72
  br label %bb.fu

bb.dt:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit422
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #25
  %i.sz = load ptr, ptr %i.ca, align 8, !tbaa !58 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25, !noalias !589
  %i.ta = load ptr, ptr %i.sz, align 8, !tbaa !82, !noalias !589
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 64
  %i.tc = load ptr, ptr %i.tb, align 8, !noalias !589
  invoke void %i.tc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(152) %i.sz)
          to label %.noexc588 unwind label %bb.dx, !inline_history !552

.noexc588:                                        ; preds = %bb.dt
  invoke void @_ZN7AstNode10prettyNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %34, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.du unwind label %bb.dv

bb.du:                                            ; preds = %.noexc588
  %i.td = load ptr, ptr %9, align 8, !tbaa !30, !noalias !589 ; 2 uses
  %i.te = icmp eq ptr %i.td, %i.dp
  br i1 %i.te, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i587, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i586

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i586: ; preds = %bb.du
  %i.tf = load i64, ptr %i.dp, align 8, !tbaa !32, !noalias !589
  %i.tg = add i64 %i.tf, 1
  call void @_ZdlPvm(ptr noundef %i.td, i64 noundef %i.tg) #26
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i587

bb.dv:                                            ; preds = %.noexc588
  %i.th = landingpad { ptr, i32 }
          cleanup
  %i.ti = load ptr, ptr %9, align 8, !tbaa !30, !noalias !589 ; 2 uses
  %i.tj = icmp eq ptr %i.ti, %i.dp
  br i1 %i.tj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i584, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i583

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i583: ; preds = %bb.dv
  %i.tk = load i64, ptr %i.dp, align 8, !tbaa !32, !noalias !589
  %i.tl = add i64 %i.tk, 1
  call void @_ZdlPvm(ptr noundef %i.ti, i64 noundef %i.tl) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i584

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i584: ; preds = %bb.dv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i583
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25, !noalias !589
  br label %.body589

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i587: ; preds = %bb.du, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i586
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25, !noalias !589
  %i.tm = load i64, ptr %i.dq, align 8, !tbaa !31 ; 2 uses
  %i.tn = icmp eq i64 %i.tm, 9
  %.pre1653.a = load ptr, ptr %34, align 8, !tbaa !30 ; 4 uses
  br i1 %i.tn, label %bb.dw, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

bb.dw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i587
  %i.to = load i64, ptr %.pre1653.a, align 1
  %i.tp = xor i64 %i.to, 8820701670375580018
  %i.tq = getelementptr i8, ptr %.pre1653.a, i64 8
  %i.tr = load i8, ptr %i.tq, align 1
  %i.ts = zext i8 %i.tr to i64
  %i.tt = xor i64 %i.ts, 101
  %i.tu = or i64 %i.tp, %i.tt
  %i.tv = icmp ne i64 %i.tu, 0
  %i.tw = zext i1 %i.tv to i32
  %i.tx = icmp eq i32 %i.tw, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i587, %bb.dw
  %i.ty = phi i1 [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i587 ], [ %i.tx, %bb.dw ]
  %i.tz = icmp eq ptr %.pre1653.a, %i.dr
  br i1 %i.tz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i592, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i591

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i592: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ua = icmp ult i64 %i.tm, 16
  call void @llvm.assume(i1 %i.ua)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit593

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i591: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ub = load i64, ptr %i.dr, align 8, !tbaa !32
  %i.uc = add i64 %i.ub, 1
  call void @_ZdlPvm(ptr noundef %.pre1653.a, i64 noundef %i.uc) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit593

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit593: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i592, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i591
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #25
  br i1 %i.ty, label %bb.fu, label %bb.dy

bb.dx:                                            ; preds = %bb.dt
  %i.ud = landingpad { ptr, i32 }
          cleanup
  br label %.body589

.body589:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i584, %bb.dx
  %eh.lpad-body590 = phi { ptr, i32 } [ %i.ud, %bb.dx ], [ %i.th, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i584 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #25
  br label %thread-pre-split

bb.dy:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit593
  %i.ue = load i32, ptr %i.i, align 4, !tbaa !59  ; 2 uses
  %77 = sext i32 %i.ue to i64
  %.not323 = icmp slt i64 %indvars.iv, %77
  br i1 %.not323, label %bb.ft, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  br i1 %.not324, label %bb.ee, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.uf = load ptr, ptr %i.ds, align 8, !tbaa !576 ; 7 uses
  %i.ug = load ptr, ptr %i.dt, align 16, !tbaa !67
  %.not.i594 = icmp eq ptr %i.uf, %i.ug
  br i1 %.not.i594, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  store ptr %.01081.lcssa, ptr %i.uf, align 8, !tbaa !71
  %i.uh = getelementptr inbounds nuw i8, ptr %i.uf, i64 8
  store ptr null, ptr %i.uh, align 8, !tbaa !72
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uf, i64 16
  store ptr %i.ui, ptr %i.ds, align 8, !tbaa !576
  %.pre1654 = load ptr, ptr %20, align 16, !tbaa !587
  br label %_ZNSt6vectorISt4pairIP6AstVarP6AstArgESaIS5_EE12emplace_backIJRS2_S4_EEERS5_DpOT_.exit

bb.ec:                                            ; preds = %bb.ea
  %i.uj = load ptr, ptr %20, align 16, !tbaa !587 ; 5 uses
  %i.uk = ptrtoint ptr %i.uf to i64
  %i.ul = ptrtoint ptr %i.uj to i64
  %i.um = sub i64 %i.uk, %i.ul                    ; 4 uses
  %i.un = icmp eq i64 %i.um, 9223372036854775792
  br i1 %i.un, label %.invoke, label %_ZNKSt6vectorISt4pairIP6AstVarP6AstArgESaIS5_EE12_M_check_lenEmPKc.exit.i.i595

.invoke:                                          ; preds = %bb.ec, %bb.ac
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.80) #27
          to label %.cont unwind label %.loopexit.split-lp1112.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorISt4pairIP6AstVarP6AstArgESaIS5_EE12_M_check_lenEmPKc.exit.i.i595: ; preds = %bb.ec
  %i.uo = ashr exact i64 %i.um, 4                 ; 3 uses
  %.sroa.speculated.i.i.i596 = call i64 @llvm.umax.i64(i64 %i.uo, i64 1)
  %i.up = add nsw i64 %.sroa.speculated.i.i.i596, %i.uo ; 2 uses
  %i.uq = icmp ult i64 %i.up, %i.uo
  %i.ur = call i64 @llvm.umin.i64(i64 %i.up, i64 576460752303423487)
  %i.us = select i1 %i.uq, i64 576460752303423487, i64 %i.ur ; 3 uses
  %.not.i.i.i597 = icmp ne i64 %i.us, 0
  call void @llvm.assume(i1 %.not.i.i.i597)
  %i.ut = shl nuw nsw i64 %i.us, 4
  %i.uu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ut) #28
          to label %.noexc607 unwind label %.loopexit.split-lp1112.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp ; 6 uses

.noexc607:                                        ; preds = %_ZNKSt6vectorISt4pairIP6AstVarP6AstArgESaIS5_EE12_M_check_lenEmPKc.exit.i.i595
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uu, i64 %i.um ; 2 uses
  store ptr %.01081.lcssa, ptr %i.uv, align 8, !tbaa !71
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uv, i64 8
  store ptr null, ptr %i.uw, align 8, !tbaa !72
  %.not10.i.i.i.i.i598 = icmp eq ptr %i.uj, %i.uf
  br i1 %.not10.i.i.i.i.i598, label %_ZNSt6vectorISt4pairIP6AstVarP6AstArgESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit33.i.i603, label %.lr.ph.i.i.i.i.i599

.lr.ph.i.i.i.i.i599:                              ; preds = %.noexc607, %.lr.ph.i.i.i.i.i599
  %.012.i.i.i.i.i600 = phi ptr [ %i.uy, %.lr.ph.i.i.i.i.i599 ], [ %i.uu, %.noexc607 ] ; 2 uses
  %.0911.i.i.i.i.i601 = phi ptr [ %i.ux, %.lr.ph.i.i.i.i.i599 ], [ %i.uj, %.noexc607 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i600, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i601, i64 16, i1 false), !alias.scope !590
  %i.ux = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i601, i64 16 ; 2 uses
  %i.uy = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i600, i64 16 ; 2 uses
  %.not.i.i.i.i.i602 = icmp eq ptr %i.ux, %i.uf
  br i1 %.not.i.i.i.i.i602, label %_ZNSt6vectorISt4pairIP6AstVarP6AstArgESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit33.i.i603, label %.lr.ph.i.i.i.i.i599, !llvm.loop !528

_ZNSt6vectorISt4pairIP6AstVarP6AstArgESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit33.i.i603: ; preds = %.lr.ph.i.i.i.i.i599, %.noexc607
  %.0.lcssa.i.i.i.i.i604 = phi ptr [ %i.uu, %.noexc607 ], [ %i.uy, %.lr.ph.i.i.i.i.i599 ]
  %i.uz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i604, i64 16
  %.not.i34.i.i605 = icmp eq ptr %i.uj, null
  br i1 %.not.i34.i.i605, label %_ZNSt6vectorISt4pairIP6AstVarP6AstArgESaIS5_EE17_M_realloc_insertIJRS2_S4_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.ed

bb.ed:                                            ; preds = %_ZNSt6vectorISt4pairIP6AstVarP6AstArgESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit33.i.i603
  call void @_ZdlPvm(ptr noundef nonnull %i.uj, i64 noundef %i.um) #26
  br label %_ZNSt6vectorISt4pairIP6AstVarP6AstArgESaIS5_EE17_M_realloc_insertIJRS2_S4_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorISt4pairIP6AstVarP6AstArgESaIS5_EE17_M_realloc_insertIJRS2_S4_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.ed, %_ZNSt6vectorISt4pairIP6AstVarP6AstArgESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit33.i.i603
  store ptr %i.uu, ptr %20, align 16, !tbaa !587
  store ptr %i.uz, ptr %i.ds, align 8, !tbaa !576
  %i.va = getelementptr inbounds nuw [16 x i8], ptr %i.uu, i64 %i.us
  store ptr %i.va, ptr %i.dt, align 16, !tbaa !67
  %.pre1655.a = load i32, ptr %i.i, align 4, !tbaa !59
  br label %_ZNSt6vectorISt4pairIP6AstVarP6AstArgESaIS5_EE12emplace_backIJRS2_S4_EEERS5_DpOT_.exit

_ZNSt6vectorISt4pairIP6AstVarP6AstArgESaIS5_EE12emplace_backIJRS2_S4_EEERS5_DpOT_.exit: ; preds = %_ZNSt6vectorISt4pairIP6AstVarP6AstArgESaIS5_EE17_M_realloc_insertIJRS2_S4_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, %bb.eb
  %i.vb = phi i32 [ %.pre1655.a, %_ZNSt6vectorISt4pairIP6AstVarP6AstArgESaIS5_EE17_M_realloc_insertIJRS2_S4_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i ], [ %i.ue, %bb.eb ]
  %i.vc = phi ptr [ %i.uu, %_ZNSt6vectorISt4pairIP6AstVarP6AstArgESaIS5_EE17_M_realloc_insertIJRS2_S4_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i ], [ %.pre1654, %bb.eb ]
  %i.vd = getelementptr inbounds nuw [16 x i8], ptr %i.vc, i64 %indvars.iv
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vd, i64 8
  store ptr %.01121512, ptr %i.ve, align 8, !tbaa !72
  %i.vf = add nsw i32 %i.vb, 1
  store i32 %i.vf, ptr %i.i, align 4, !tbaa !59
  br label %bb.fu

.loopexit.split-lp1112.loopexit:                  ; preds = %bb.ar, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit408, %bb.al, %_ZNKSt6vectorISt4pairIP6AstVarP6AstArgESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.vg = phi ptr [ %i.fj, %bb.ar ], [ %i.fj, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit408 ], [ %i.fj, %bb.al ], [ %i.ek, %_ZNKSt6vectorISt4pairIP6AstVarP6AstArgESaIS5_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %lpad.loopexit1116 = landingpad { ptr, i32 }
          cleanup
  store ptr %i.vg, ptr %20, align 16
  br label %bb.ne

.loopexit.split-lp1112.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit690.invoke, %_ZN6AstArg12unlinkFrBackEP10VNRelinker.exit692.invoke, %_ZNKSt6vectorISt4pairIP6AstVarP6AstArgESaIS5_EE12_M_check_lenEmPKc.exit.i.i595, %bb.ef, %bb.el, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit574, %bb.di, %bb.bm, %_ZN6AstArg12unlinkFrBackEP10VNRelinker.exit576, %bb.dc, %bb.bg, %.noexc412, %.noexc414, %.noexc415, %.noexc413, %.noexc411, %bb.av, %.invoke
  %lpad.loopexit.split-lp2285 = landingpad { ptr, i32 }
          cleanup
  br label %thread-pre-split

bb.ee:                                            ; preds = %bb.dz
  br i1 %4, label %bb.ef, label %bb.fu

bb.ef:                                            ; preds = %bb.ee
  %i.vh = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error11v3errorPrepB5cxx11E11V3ErrorCode(i8 5)
          to label %bb.eg unwind label %.loopexit.split-lp1112.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.eg:                                            ; preds = %bb.ef
  %i.vi = load atomic i8, ptr @_ZGVZN7V3Error1sEvE3s_s acquire, align 8
  %i.vj = icmp eq i8 %i.vi, 0
  br i1 %i.vj, label %bb.eh, label %bb.el, !prof !76

bb.eh:                                            ; preds = %bb.eg
  %i.vk = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #25
  %.not.i.i608 = icmp eq i32 %i.vk, 0
  br i1 %.not.i.i608, label %bb.el, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  invoke void @_ZN14V3ErrorGuardedC2Ev(ptr noundef nonnull align 8 dereferenceable(720) @_ZZN7V3Error1sEvE3s_s)
          to label %bb.ej unwind label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  %i.vl = call i32 @__cxa_atexit(ptr nonnull @_ZN14V3ErrorGuardedD2Ev, ptr nonnull @_ZZN7V3Error1sEvE3s_s, ptr nonnull @__dso_handle) #25 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #25
  br label %bb.el

bb.ek:                                            ; preds = %bb.ei
  %i.vm = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #25
  br label %thread-pre-split

bb.el:                                            ; preds = %bb.ej, %bb.eh, %bb.eg
  %i.vn = call noundef nonnull align 8 dereferenceable(112) ptr @llvm.ptr.annotation.p0.p0(ptr nonnull getelementptr inbounds nuw (i8, ptr @_ZZN7V3Error1sEvE3s_s, i64 304), ptr nonnull @.str.66, ptr nonnull @.str.67, i32 481, ptr null) ; 2 uses
  %i.vo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.vn, ptr noundef nonnull @.str.14, i64 noundef 30)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit613 unwind label %.loopexit.split-lp1112.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit613: ; preds = %bb.el
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #25
  %i.vp = load ptr, ptr %i.ca, align 8, !tbaa !58 ; 2 uses
  %i.vq = load ptr, ptr %i.vp, align 8, !tbaa !82
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vq, i64 120
  %i.vs = load ptr, ptr %i.vr, align 8
  invoke void %i.vs(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %35, ptr noundef nonnull align 8 dereferenceable(152) %i.vp)
          to label %bb.em unwind label %bb.ez

bb.em:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit613
  %i.vt = load ptr, ptr %35, align 8, !tbaa !30
  %i.vu = load i64, ptr %i.du, align 8, !tbaa !31
  %i.vv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.vn, ptr noundef %i.vt, i64 noundef %i.vu)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit615 unwind label %bb.fa ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit615: ; preds = %bb.em
  %i.vw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.vv, ptr noundef nonnull @.str.8, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit617 unwind label %bb.fa ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit617: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit615
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #25
  %i.vx = load ptr, ptr %i.ca, align 8, !tbaa !58 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25, !noalias !591
  %i.vy = load ptr, ptr %i.vx, align 8, !tbaa !82, !noalias !591
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vy, i64 64
  %i.wa = load ptr, ptr %i.vz, align 8, !noalias !591
  invoke void %i.wa(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(152) %i.vx)
          to label %.noexc623 unwind label %bb.fb, !inline_history !83

.noexc623:                                        ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit617
  invoke void @_ZN7AstNode11prettyNameQERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %36, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.en unwind label %bb.eo

bb.en:                                            ; preds = %.noexc623
  %i.wb = load ptr, ptr %8, align 8, !tbaa !30, !noalias !591 ; 2 uses
  %i.wc = icmp eq ptr %i.wb, %i.dv
  br i1 %i.wc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i622, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i621

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i621: ; preds = %bb.en
  %i.wd = load i64, ptr %i.dv, align 8, !tbaa !32, !noalias !591
  %i.we = add i64 %i.wd, 1
  call void @_ZdlPvm(ptr noundef %i.wb, i64 noundef %i.we) #26
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i622

bb.eo:                                            ; preds = %.noexc623
  %i.wf = landingpad { ptr, i32 }
          cleanup
  %i.wg = load ptr, ptr %8, align 8, !tbaa !30, !noalias !591 ; 2 uses
  %i.wh = icmp eq ptr %i.wg, %i.dv
  br i1 %i.wh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i619, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i618

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i618: ; preds = %bb.eo
  %i.wi = load i64, ptr %i.dv, align 8, !tbaa !32, !noalias !591
  %i.wj = add i64 %i.wi, 1
  call void @_ZdlPvm(ptr noundef %i.wg, i64 noundef %i.wj) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i619

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i619: ; preds = %bb.eo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i618
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25, !noalias !591
  br label %.body624

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i622: ; preds = %bb.en, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i621
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25, !noalias !591
  %i.wk = load ptr, ptr %36, align 8, !tbaa !30
  %i.wl = load i64, ptr %i.dw, align 8, !tbaa !31
  %i.wm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.vv, ptr noundef %i.wk, i64 noundef %i.wl)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit628 unwind label %bb.fc ; 5 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit628: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i622
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 10, ptr %i.c, align 1, !tbaa !32
  %i.wn = load ptr, ptr %i.wm, align 8, !tbaa !82
  %i.wo = getelementptr i8, ptr %i.wn, i64 -24
  %i.wp = load i64, ptr %i.wo, align 8
  %i.wq = getelementptr inbounds i8, ptr %i.wm, i64 %i.wp
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wq, i64 16
  %i.ws = load i64, ptr %i.wr, align 8, !tbaa !92
  %.not.i629 = icmp eq i64 %i.ws, 0
  br i1 %.not.i629, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit628
  %i.wt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.wm, ptr noundef nonnull %i.c, i64 noundef 1)
          to label %bb.er unwind label %bb.fc

bb.eq:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit628
  %i.wu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.wm, i8 noundef signext 10)
          to label %bb.er unwind label %bb.fc     ; 0 uses

bb.er:                                            ; preds = %bb.ep, %bb.eq
  %.0.i630 = phi ptr [ %i.wt, %bb.ep ], [ %i.wm, %bb.eq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #25
  %i.wv = load ptr, ptr %i.da, align 8, !tbaa !93, !noalias !592
  invoke void @_ZNK8FileLine18warnContextPrimaryB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %37, ptr noundef nonnull align 8 dereferenceable(48) %i.wv)
          to label %_ZNK7AstNode18warnContextPrimaryB5cxx11Ev.exit635 unwind label %bb.fd

_ZNK7AstNode18warnContextPrimaryB5cxx11Ev.exit635: ; preds = %bb.er
  %i.ww = load ptr, ptr %37, align 8, !tbaa !30
  %i.wx = load i64, ptr %i.dx, align 8, !tbaa !31
  %i.wy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i630, ptr noundef %i.ww, i64 noundef %i.wx)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit637 unwind label %bb.fe ; 5 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit637: ; preds = %_ZNK7AstNode18warnContextPrimaryB5cxx11Ev.exit635
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 10, ptr %i.b, align 1, !tbaa !32
  %i.wz = load ptr, ptr %i.wy, align 8, !tbaa !82
  %i.xa = getelementptr i8, ptr %i.wz, i64 -24
  %i.xb = load i64, ptr %i.xa, align 8
  %i.xc = getelementptr inbounds i8, ptr %i.wy, i64 %i.xb
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xc, i64 16
  %i.xe = load i64, ptr %i.xd, align 8, !tbaa !92
  %.not.i638 = icmp eq i64 %i.xe, 0
  br i1 %.not.i638, label %bb.et, label %bb.es

bb.es:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit637
  %i.xf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.wy, ptr noundef nonnull %i.b, i64 noundef 1)
          to label %bb.eu unwind label %bb.fe

bb.et:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit637
  %i.xg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.wy, i8 noundef signext 10)
          to label %bb.eu unwind label %bb.fe     ; 0 uses

bb.eu:                                            ; preds = %bb.es, %bb.et
  %.0.i639 = phi ptr [ %i.xf, %bb.es ], [ %i.wy, %bb.et ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #25
  %i.xh = load ptr, ptr %i.da, align 8, !tbaa !93, !noalias !593
  invoke void @_ZNK8FileLine8warnMoreB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %38, ptr noundef nonnull align 8 dereferenceable(48) %i.xh)
          to label %_ZNK7AstNode8warnMoreB5cxx11Ev.exit644 unwind label %bb.ff

_ZNK7AstNode8warnMoreB5cxx11Ev.exit644:           ; preds = %bb.eu
  %i.xi = load ptr, ptr %38, align 8, !tbaa !30
  %i.xj = load i64, ptr %i.dy, align 8, !tbaa !31
  %i.xk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i639, ptr noundef %i.xi, i64 noundef %i.xj)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit646 unwind label %bb.fg ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit646: ; preds = %_ZNK7AstNode8warnMoreB5cxx11Ev.exit644
  %i.xl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.xk, ptr noundef nonnull @.str.9, i64 noundef 16)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit648 unwind label %bb.fg ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit648: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit646
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #25
  %i.xm = load ptr, ptr %i.ca, align 8, !tbaa !58 ; 2 uses
  %i.xn = load ptr, ptr %i.xm, align 8, !tbaa !82
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xn, i64 120
end_hunk_1
begin_hunk_2_@_ZN6V3Task12taskConnectsEP15AstNodeFTaskRefP7AstNodeP18V3TaskConnectStateb:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit690

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit690: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit687, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i688
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit690.invoke

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit690.invoke: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit519, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit690
  %i.zt = invoke noundef ptr @_ZN7AstNode12unlinkFrBackEP10VNRelinker(ptr noundef nonnull align 8 dereferenceable(184) %.01121512, ptr noundef null)
          to label %_ZN6AstArg12unlinkFrBackEP10VNRelinker.exit692.invoke unwind label %.loopexit.split-lp1112.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp

_ZN6AstArg12unlinkFrBackEP10VNRelinker.exit692.invoke: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit690.invoke
  invoke void @_ZN7AstNode10deleteTreeEv(ptr noundef nonnull align 8 dereferenceable(152) %i.zt)
          to label %bb.fu unwind label %.loopexit.split-lp1112.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp

bb.ez:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit613
  %i.zu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit713

bb.fa:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit615, %bb.em
  %i.zv = landingpad { ptr, i32 }
          cleanup
  br label %bb.fs

bb.fb:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit617
  %i.zw = landingpad { ptr, i32 }
          cleanup
  br label %.body624

bb.fc:                                            ; preds = %bb.eq, %bb.ep, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i622
  %i.zx = landingpad { ptr, i32 }
          cleanup
  br label %bb.fr

bb.fd:                                            ; preds = %bb.er
  %i.zy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit707

bb.fe:                                            ; preds = %bb.et, %bb.es, %_ZNK7AstNode18warnContextPrimaryB5cxx11Ev.exit635
  %i.zz = landingpad { ptr, i32 }
          cleanup
  br label %bb.fq

bb.ff:                                            ; preds = %bb.eu
  %i.aaa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit704

bb.fg:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit646, %_ZNK7AstNode8warnMoreB5cxx11Ev.exit644
  %i.aab = landingpad { ptr, i32 }
          cleanup
  br label %bb.fp

bb.fh:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit648
  %i.aac = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit701

bb.fi:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit650, %bb.ev
  %i.aad = landingpad { ptr, i32 }
          cleanup
  br label %bb.fo

bb.fj:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit652
  %i.aae = landingpad { ptr, i32 }
          cleanup
  br label %.body659

bb.fk:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit663, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i657
  %i.aaf = landingpad { ptr, i32 }
          cleanup
  br label %bb.fn

bb.fl:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit665
  %i.aag = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit695

bb.fm:                                            ; preds = %_ZNK7AstNode20warnContextSecondaryB5cxx11Ev.exit667, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit669
  %i.aah = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aai = load ptr, ptr %41, align 8, !tbaa !30  ; 2 uses
  %i.aaj = icmp eq ptr %i.aai, %i.ed
  br i1 %i.aaj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit695, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i693

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i693: ; preds = %bb.fm
  %i.aak = load i64, ptr %i.ed, align 8, !tbaa !32
  %i.aal = add i64 %i.aak, 1
  call void @_ZdlPvm(ptr noundef %i.aai, i64 noundef %i.aal) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit695

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit695: ; preds = %bb.fm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i693, %bb.fl
  %.pn325 = phi { ptr, i32 } [ %i.aag, %bb.fl ], [ %i.aah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i693 ], [ %i.aah, %bb.fm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #25
  br label %bb.fn

bb.fn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit695, %bb.fk
  %.pn325.pn = phi { ptr, i32 } [ %.pn325, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit695 ], [ %i.aaf, %bb.fk ] ; 2 uses
  %i.aam = load ptr, ptr %40, align 8, !tbaa !30  ; 2 uses
  %i.aan = icmp eq ptr %i.aam, %i.ee
  br i1 %i.aan, label %.body659, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i696

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i696: ; preds = %bb.fn
  %i.aao = load i64, ptr %i.ee, align 8, !tbaa !32
  %i.aap = add i64 %i.aao, 1
  call void @_ZdlPvm(ptr noundef %i.aam, i64 noundef %i.aap) #26
  br label %.body659

.body659:                                         ; preds = %bb.fn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i696, %bb.fj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i654
  %.pn325.pn.pn = phi { ptr, i32 } [ %i.yc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i654 ], [ %i.aae, %bb.fj ], [ %.pn325.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i696 ], [ %.pn325.pn, %bb.fn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #25
  br label %bb.fo

bb.fo:                                            ; preds = %.body659, %bb.fi
  %.pn325.pn.pn.pn = phi { ptr, i32 } [ %.pn325.pn.pn, %.body659 ], [ %i.aad, %bb.fi ] ; 2 uses
  %i.aaq = load ptr, ptr %39, align 8, !tbaa !30  ; 2 uses
  %i.aar = icmp eq ptr %i.aaq, %i.ef
  br i1 %i.aar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit701, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i699

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i699: ; preds = %bb.fo
  %i.aas = load i64, ptr %i.ef, align 8, !tbaa !32
  %i.aat = add i64 %i.aas, 1
  call void @_ZdlPvm(ptr noundef %i.aaq, i64 noundef %i.aat) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit701

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit701: ; preds = %bb.fo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i699, %bb.fh
  %.pn325.pn.pn.pn.pn = phi { ptr, i32 } [ %i.aac, %bb.fh ], [ %.pn325.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i699 ], [ %.pn325.pn.pn.pn, %bb.fo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #25
  br label %bb.fp

bb.fp:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit701, %bb.fg
  %.pn325.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn325.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit701 ], [ %i.aab, %bb.fg ] ; 2 uses
  %i.aau = load ptr, ptr %38, align 8, !tbaa !30  ; 2 uses
  %i.aav = icmp eq ptr %i.aau, %i.eg
  br i1 %i.aav, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit704, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i702

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i702: ; preds = %bb.fp
  %i.aaw = load i64, ptr %i.eg, align 8, !tbaa !32
  %i.aax = add i64 %i.aaw, 1
  call void @_ZdlPvm(ptr noundef %i.aau, i64 noundef %i.aax) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit704

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit704: ; preds = %bb.fp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i702, %bb.ff
  %.pn325.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.aaa, %bb.ff ], [ %.pn325.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i702 ], [ %.pn325.pn.pn.pn.pn.pn, %bb.fp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #25
  br label %bb.fq

bb.fq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit704, %bb.fe
  %.pn325.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn325.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit704 ], [ %i.zz, %bb.fe ] ; 2 uses
  %i.aay = load ptr, ptr %37, align 8, !tbaa !30  ; 2 uses
  %i.aaz = icmp eq ptr %i.aay, %i.eh
  br i1 %i.aaz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit707, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i705

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i705: ; preds = %bb.fq
  %i.aba = load i64, ptr %i.eh, align 8, !tbaa !32
  %i.abb = add i64 %i.aba, 1
  call void @_ZdlPvm(ptr noundef %i.aay, i64 noundef %i.abb) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit707

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit707: ; preds = %bb.fq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i705, %bb.fd
  %.pn325.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.zy, %bb.fd ], [ %.pn325.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i705 ], [ %.pn325.pn.pn.pn.pn.pn.pn.pn, %bb.fq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #25
  br label %bb.fr

bb.fr:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit707, %bb.fc
  %.pn325.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn325.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit707 ], [ %i.zx, %bb.fc ] ; 2 uses
  %i.abc = load ptr, ptr %36, align 8, !tbaa !30  ; 2 uses
  %i.abd = icmp eq ptr %i.abc, %i.ei
  br i1 %i.abd, label %.body624, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i708

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i708: ; preds = %bb.fr
  %i.abe = load i64, ptr %i.ei, align 8, !tbaa !32
  %i.abf = add i64 %i.abe, 1
  call void @_ZdlPvm(ptr noundef %i.abc, i64 noundef %i.abf) #26
  br label %.body624

.body624:                                         ; preds = %bb.fr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i708, %bb.fb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i619
  %.pn325.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.wf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i619 ], [ %i.zw, %bb.fb ], [ %.pn325.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i708 ], [ %.pn325.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.fr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #25
  br label %bb.fs

bb.fs:                                            ; preds = %.body624, %bb.fa
  %.pn325.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn325.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body624 ], [ %i.zv, %bb.fa ] ; 2 uses
  %i.abg = load ptr, ptr %35, align 8, !tbaa !30  ; 2 uses
  %i.abh = icmp eq ptr %i.abg, %i.ej
  br i1 %i.abh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit713, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i711

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i711: ; preds = %bb.fs
  %i.abi = load i64, ptr %i.ej, align 8, !tbaa !32
  %i.abj = add i64 %i.abi, 1
  call void @_ZdlPvm(ptr noundef %i.abg, i64 noundef %i.abj) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit713

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit713: ; preds = %bb.fs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i711, %bb.ez
  %.pn325.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.zu, %bb.ez ], [ %.pn325.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i711 ], [ %.pn325.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.fs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #25
  br label %thread-pre-split

bb.ft:                                            ; preds = %bb.dy
  %i.abk = load ptr, ptr %20, align 16, !tbaa !587
  %i.abl = getelementptr inbounds nuw [16 x i8], ptr %i.abk, i64 %indvars.iv
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abl, i64 8
  store ptr %.01121512, ptr %i.abm, align 8, !tbaa !72
  br label %bb.fu

bb.fu:                                            ; preds = %_ZN6AstArg12unlinkFrBackEP10VNRelinker.exit692.invoke, %bb.ds, %bb.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit593, %_ZNSt6vectorISt4pairIP6AstVarP6AstArgESaIS5_EE12emplace_backIJRS2_S4_EEERS5_DpOT_.exit, %bb.ee, %bb.ft
  %.2115 = phi i1 [ %.01131511, %_ZN6AstArg12unlinkFrBackEP10VNRelinker.exit692.invoke ], [ %.01131511, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit593 ], [ %.01131511, %_ZNSt6vectorISt4pairIP6AstVarP6AstArgESaIS5_EE12emplace_backIJRS2_S4_EEERS5_DpOT_.exit ], [ %.01131511, %bb.ft ], [ %.01131511, %bb.ee ], [ true, %bb.ds ], [ %.01131511, %bb.bf ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %.not.i409, label %._crit_edge1515, label %bb.at, !llvm.loop !566

.thread1951:                                      ; preds = %._crit_edge1515
  %i.abn = load <2 x ptr>, ptr %20, align 16, !tbaa !96
  store <2 x ptr> %i.abn, ptr %0, align 8, !tbaa !96
  %i.abo = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.abp = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.abq = load ptr, ptr %i.abp, align 16, !tbaa !67
  store ptr %i.abq, ptr %i.abo, align 8, !tbaa !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #25
  br label %_ZNSt6vectorISt4pairIP6AstVarP6AstArgESaIS5_EED2Ev.exit

bb.fv:                                            ; preds = %._crit_edge1515
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %42, i8 0, i64 24, i1 false)
  %i.abr = getelementptr inbounds nuw i8, ptr %42, i64 24 ; 3 uses
  %i.abs = getelementptr inbounds nuw i8, ptr %42, i64 72 ; 2 uses
  store ptr %i.abs, ptr %i.abr, align 8, !tbaa !103
  %i.abt = getelementptr inbounds nuw i8, ptr %42, i64 32 ; 3 uses
  store i64 1, ptr %i.abt, align 8, !tbaa !104
  %i.abu = getelementptr inbounds nuw i8, ptr %42, i64 40 ; 3 uses
  %i.abv = getelementptr inbounds nuw i8, ptr %42, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.abu, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.abv, align 8, !tbaa !105
  %i.abw = getelementptr inbounds nuw i8, ptr %42, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.abw, i8 0, i64 16, i1 false)
  %i.abx = load i32, ptr %i.i, align 4, !tbaa !59
  %i.aby = icmp sgt i32 %i.abx, 0
  %.pre1665.a = load ptr, ptr %20, align 16, !tbaa !96 ; 2 uses
  br i1 %i.aby, label %.lr.ph1521, label %._crit_edge1522

.lr.ph1521:                                       ; preds = %bb.fv
  %.not272 = icmp eq ptr %3, null
  %i.abz = getelementptr inbounds nuw i8, ptr %46, i64 8
  %i.aca = getelementptr inbounds nuw i8, ptr %46, i64 16 ; 4 uses
  %i.acb = getelementptr inbounds nuw i8, ptr %48, i64 8
  %i.acc = getelementptr inbounds nuw i8, ptr %48, i64 16 ; 2 uses
  %i.acd = getelementptr inbounds nuw i8, ptr %47, i64 16 ; 4 uses
  %i.ace = getelementptr inbounds nuw i8, ptr %49, i64 8
  %i.acf = getelementptr inbounds nuw i8, ptr %49, i64 16 ; 4 uses
  %i.acg = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.ach = getelementptr inbounds nuw i8, ptr %50, i64 8
  %i.aci = getelementptr inbounds nuw i8, ptr %51, i64 8
  %i.acj = getelementptr inbounds nuw i8, ptr %51, i64 16 ; 4 uses
  %i.ack = getelementptr inbounds nuw i8, ptr %50, i64 16 ; 4 uses
  %i.acl = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %i.acm = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.acn = getelementptr inbounds nuw i8, ptr %43, i64 8
  %i.aco = getelementptr inbounds nuw i8, ptr %44, i64 8
  %i.acp = getelementptr inbounds nuw i8, ptr %44, i64 16 ; 4 uses
  %i.acq = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 4 uses
  %i.acr = getelementptr inbounds nuw i8, ptr %53, i64 8
  %i.acs = getelementptr inbounds nuw i8, ptr %53, i64 16 ; 4 uses
  %i.act = getelementptr inbounds nuw i8, ptr %55, i64 8
  %i.acu = getelementptr inbounds nuw i8, ptr %55, i64 16 ; 2 uses
  %i.acv = getelementptr inbounds nuw i8, ptr %54, i64 16 ; 4 uses
  %i.acw = getelementptr inbounds nuw i8, ptr %56, i64 8
  %i.acx = getelementptr inbounds nuw i8, ptr %56, i64 16 ; 4 uses
  %i.acy = getelementptr inbounds nuw i8, ptr %57, i64 16 ; 7 uses
  %i.acz = getelementptr inbounds nuw i8, ptr %57, i64 8
  %i.ada = getelementptr inbounds nuw i8, ptr %59, i64 8
  %i.adb = getelementptr inbounds nuw i8, ptr %59, i64 16 ; 4 uses
  %i.adc = getelementptr inbounds nuw i8, ptr %61, i64 8
  %i.add = getelementptr inbounds nuw i8, ptr %61, i64 16 ; 2 uses
  %i.ade = getelementptr inbounds nuw i8, ptr %60, i64 16 ; 4 uses
  %i.adf = getelementptr inbounds nuw i8, ptr %62, i64 8
  %i.adg = getelementptr inbounds nuw i8, ptr %62, i64 16 ; 4 uses
  br label %bb.fw

._crit_edge1522:                                  ; preds = %bb.km, %bb.fv
  %i.adh = phi ptr [ %.pre1665.a, %bb.fv ], [ %.pre1664.a, %bb.km ] ; 6 uses
  %.3116.lcssa = phi i1 [ %.0113.lcssa, %bb.fv ], [ %.4117, %bb.km ]
  %i.adi = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.adj = load ptr, ptr %i.adi, align 8, !tbaa !96 ; 3 uses
  %.not10921524 = icmp eq ptr %i.adh, %i.adj
  br i1 %.not10921524, label %._crit_edge1526, label %._crit_edge.i.i.lr.ph

._crit_edge.i.i.lr.ph:                            ; preds = %._crit_edge1522
  %i.adk = getelementptr inbounds nuw i8, ptr %63, i64 16 ; 6 uses
  %i.adl = getelementptr inbounds nuw i8, ptr %63, i64 8
  br label %._crit_edge.i.i

bb.fw:                                            ; preds = %.lr.ph1521, %bb.km
  %i.adm = phi ptr [ %.pre1665.a, %.lr.ph1521 ], [ %.pre1664.a, %bb.km ] ; 2 uses
  %indvars.iv1641.a = phi i64 [ 0, %.lr.ph1521 ], [ %indvars.iv.next1642.a, %bb.km ] ; 5 uses
  %.31161518 = phi i1 [ %.0113.lcssa, %.lr.ph1521 ], [ %.4117, %bb.km ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #25
  %i.adn = getelementptr inbounds nuw [16 x i8], ptr %i.adm, i64 %indvars.iv1641.a ; 2 uses
  %i.ado = load ptr, ptr %i.adn, align 8, !tbaa !71 ; 2 uses
  store ptr %i.ado, ptr %i.j, align 8, !tbaa !106
  %i.adp = getelementptr inbounds nuw i8, ptr %i.adn, i64 8
  %i.adq = load ptr, ptr %i.adp, align 8, !tbaa !72 ; 2 uses
  %.not260 = icmp eq ptr %i.adq, null
  br i1 %.not260, label %bb.fy, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.adr = getelementptr inbounds nuw i8, ptr %i.adq, i64 24
  %i.ads = load ptr, ptr %i.adr, align 8, !tbaa !107
  %.not261 = icmp eq ptr %i.ads, null
  br i1 %.not261, label %bb.fy, label %bb.jq

bb.fy:                                            ; preds = %bb.fw, %bb.fx
  %i.adt = getelementptr inbounds nuw i8, ptr %i.ado, i64 40
  %i.adu = load ptr, ptr %i.adt, align 8, !tbaa !108 ; 8 uses
  %.not262 = icmp eq ptr %i.adu, null
  br i1 %.not262, label %bb.fz, label %_ZN7AstNode4castI10AstFuncRefS_EEPT_PT0_.exit

bb.fz:                                            ; preds = %bb.fy
  %i.adv = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error11v3errorPrepB5cxx11E11V3ErrorCode(i8 5)
          to label %bb.ga unwind label %.loopexit.split-lp1107.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.ga:                                            ; preds = %bb.fz
  %i.adw = load atomic i8, ptr @_ZGVZN7V3Error1sEvE3s_s acquire, align 8
  %i.adx = icmp eq i8 %i.adw, 0
  br i1 %i.adx, label %bb.gb, label %bb.gf, !prof !76

bb.gb:                                            ; preds = %bb.ga
  %i.ady = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #25
  %.not.i.i714 = icmp eq i32 %i.ady, 0
  br i1 %.not.i.i714, label %bb.gf, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  invoke void @_ZN14V3ErrorGuardedC2Ev(ptr noundef nonnull align 8 dereferenceable(720) @_ZZN7V3Error1sEvE3s_s)
          to label %bb.gd unwind label %bb.ge

bb.gd:                                            ; preds = %bb.gc
  %i.adz = call i32 @__cxa_atexit(ptr nonnull @_ZN14V3ErrorGuardedD2Ev, ptr nonnull @_ZZN7V3Error1sEvE3s_s, ptr nonnull @__dso_handle) #25 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #25
  br label %bb.gf

bb.ge:                                            ; preds = %bb.gc
  %i.aea = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #25
  br label %.body715

bb.gf:                                            ; preds = %bb.gd, %bb.gb, %bb.ga
  %i.aeb = call noundef nonnull align 8 dereferenceable(112) ptr @llvm.ptr.annotation.p0.p0(ptr nonnull getelementptr inbounds nuw (i8, ptr @_ZZN7V3Error1sEvE3s_s, i64 304), ptr nonnull @.str.66, ptr nonnull @.str.67, i32 481, ptr null) ; 2 uses
  %i.aec = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aeb, ptr noundef nonnull @.str.16, i64 noundef 43)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit719 unwind label %.loopexit.split-lp1107.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit719: ; preds = %bb.gf
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #25
  %i.aed = load ptr, ptr %i.j, align 8, !tbaa !106 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25, !noalias !596
  %i.aee = load ptr, ptr %i.aed, align 8, !tbaa !82, !noalias !596
  %i.aef = getelementptr inbounds nuw i8, ptr %i.aee, i64 64
  %i.aeg = load ptr, ptr %i.aef, align 8, !noalias !596
  invoke void %i.aeg(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(152) %i.aed)
          to label %.noexc725 unwind label %bb.gl, !inline_history !83

.noexc725:                                        ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit719
  invoke void @_ZN7AstNode11prettyNameQERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %43, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.gg unwind label %bb.gh

bb.gg:                                            ; preds = %.noexc725
  %i.aeh = load ptr, ptr %6, align 8, !tbaa !30, !noalias !596 ; 2 uses
  %i.aei = icmp eq ptr %i.aeh, %i.acm
  br i1 %i.aei, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i724, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i723

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i723: ; preds = %bb.gg
  %i.aej = load i64, ptr %i.acm, align 8, !tbaa !32, !noalias !596
  %i.aek = add i64 %i.aej, 1
  call void @_ZdlPvm(ptr noundef %i.aeh, i64 noundef %i.aek) #26
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i724

bb.gh:                                            ; preds = %.noexc725
  %i.ael = landingpad { ptr, i32 }
          cleanup
  %i.aem = load ptr, ptr %6, align 8, !tbaa !30, !noalias !596 ; 2 uses
  %i.aen = icmp eq ptr %i.aem, %i.acm
  br i1 %i.aen, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i721, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i720

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i720: ; preds = %bb.gh
  %i.aeo = load i64, ptr %i.acm, align 8, !tbaa !32, !noalias !596
  %i.aep = add i64 %i.aeo, 1
  call void @_ZdlPvm(ptr noundef %i.aem, i64 noundef %i.aep) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i721

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i721: ; preds = %bb.gh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i720
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25, !noalias !596
  br label %.body726

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i724: ; preds = %bb.gg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i723
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25, !noalias !596
  %i.aeq = load ptr, ptr %43, align 8, !tbaa !30
  %i.aer = load i64, ptr %i.acn, align 8, !tbaa !31
  %i.aes = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aeb, ptr noundef %i.aeq, i64 noundef %i.aer)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit730 unwind label %bb.gm ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit730: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i724
  %i.aet = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aes, ptr noundef nonnull @.str.12, i64 noundef 21)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit732 unwind label %bb.gm ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit732: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit730
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #25
  %i.aeu = load ptr, ptr %i.ca, align 8, !tbaa !58
  invoke void @_ZNK7AstNode14prettyTypeNameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %44, ptr noundef nonnull align 8 dereferenceable(152) %i.aeu)
          to label %bb.gi unwind label %bb.gn

end_hunk_2
