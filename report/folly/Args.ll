inline.NumInlined: 818
inline.NumDeleted: 380
begin_hunk_0_@_ZN5folly12_GLOBAL__N_122cli_process_single_argERNS_29cli_apply_args_files_receiverERKNSt10filesystem7__cxx114pathERKNS0_12cli_arg_itemERKNS1_8locationERSt3setIS5_St4lessIS5_ESaIS5_EEmm:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit173

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit173: ; preds = %bb.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i172
  %i.jd = phi i64 [ %i.iz, %bb.bz ], [ %.pre300, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i172 ]
  %i.je = getelementptr inbounds nuw i8, ptr %28, i64 8
  store i64 %i.jd, ptr %i.je, align 8, !tbaa !28
  store ptr %i.bq, ptr %16, align 8, !tbaa !19
  store i64 0, ptr %i.bx, align 8, !tbaa !28
  store i8 0, ptr %i.bq, align 8, !tbaa !26
  %.sroa.222.0..sroa_idx = getelementptr inbounds nuw i8, ptr %27, i64 40
  %.sroa.222.0.copyload = load ptr, ptr %.sroa.222.0..sroa_idx, align 8, !tbaa !4831
  %i.jf = load ptr, ptr %0, align 8, !tbaa !56
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 40
  %i.jh = load ptr, ptr %i.jg, align 8
  %i.ji = invoke noundef i32 %i.jh(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 %28, ptr noundef nonnull byval(%"struct.folly::cli_apply_args_files_receiver::location") align 8 %3, i32 %i.iv, ptr %.sroa.222.0.copyload)
          to label %bb.ca unwind label %bb.cb     ; 2 uses

bb.ca:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit173
  %i.jj = load ptr, ptr %28, align 8, !tbaa !19   ; 2 uses
  %i.jk = icmp eq ptr %i.jj, %i.iw
  br i1 %i.jk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174: ; preds = %bb.ca
  %i.jl = load i64, ptr %i.iw, align 8, !tbaa !26
  %i.jm = add i64 %i.jl, 1
  call void @_ZdlPvm(ptr noundef %i.jj, i64 noundef %i.jm) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176

bb.cb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit173
  %i.jn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jo = load ptr, ptr %28, align 8, !tbaa !19   ; 2 uses
  %i.jp = icmp eq ptr %i.jo, %i.iw
  br i1 %i.jp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177: ; preds = %bb.cb
  %i.jq = load i64, ptr %i.iw, align 8, !tbaa !26
  %i.jr = add i64 %i.jq, 1
  call void @_ZdlPvm(ptr noundef %i.jo, i64 noundef %i.jr) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179

bb.cc:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i25.i
  %i.js = load ptr, ptr %27, align 8, !tbaa !19   ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.ju = load i64, ptr %i.jt, align 8, !tbaa !28 ; 8 uses
  %i.jv = load i32, ptr %22, align 8, !tbaa !4804
  %.not263 = icmp eq i32 %i.jv, 0
  %. = select i1 %.not263, ptr %23, ptr %19       ; 4 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.jx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.02022.i.i.i = load ptr, ptr %i.jw, align 8, !tbaa !4808 ; 2 uses
  %.not23.i.i.i = icmp eq ptr %.02022.i.i.i, null
  br i1 %.not23.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i182

.lr.ph.i.i.i182:                                  ; preds = %bb.cc, %.lr.ph.i.i.i182
  %.02024.i.i.i = phi ptr [ %.020.i.i.i, %.lr.ph.i.i.i182 ], [ %.02022.i.i.i, %bb.cc ] ; 5 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 32
  %i.jz = call noundef i32 @_ZNKSt10filesystem7__cxx114path7compareERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %., ptr noundef nonnull align 8 dereferenceable(40) %i.jy) #27
  %i.ka = icmp slt i32 %i.jz, 0                   ; 2 uses
  %.in.v.i.i.i = select i1 %i.ka, i64 16, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 %.in.v.i.i.i
  %.020.i.i.i = load ptr, ptr %.in.i.i.i, align 8, !tbaa !4808 ; 2 uses
  %.not.i.i.i183 = icmp eq ptr %.020.i.i.i, null
  br i1 %.not.i.i.i183, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i182, !llvm.loop !4832

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i182
  br i1 %i.ka, label %._crit_edge.thread.i.i.i, label %bb.ce

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.i.i.i, %bb.cc
  %.019.lcssa29.i.i.i = phi ptr [ %.02024.i.i.i, %._crit_edge.i.i.i ], [ %i.jx, %bb.cc ] ; 4 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !35
  %i.kd = icmp eq ptr %.019.lcssa29.i.i.i, %i.kc
  br i1 %i.kd, label %select.unfold.i.i, label %bb.cd

bb.cd:                                            ; preds = %._crit_edge.thread.i.i.i
  %i.ke = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i) #30
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %._crit_edge.i.i.i
  %.019.lcssa28.i.i.i = phi ptr [ %.019.lcssa29.i.i.i, %bb.cd ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %.sroa.05.0.i.i.i = phi ptr [ %i.ke, %bb.cd ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %i.kf = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i.i.i, i64 32
  %i.kg = call noundef i32 @_ZNKSt10filesystem7__cxx114path7compareERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.kf, ptr noundef nonnull align 8 dereferenceable(40) %.) #27
  %i.kh = icmp slt i32 %i.kg, 0
  br i1 %i.kh, label %select.unfold.i.i, label %bb.cf

select.unfold.i.i:                                ; preds = %bb.ce, %._crit_edge.thread.i.i.i
  %.sroa.4.0.i.ph.i.i = phi ptr [ %.019.lcssa29.i.i.i, %._crit_edge.thread.i.i.i ], [ %.019.lcssa28.i.i.i, %bb.ce ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  store ptr %4, ptr %10, align 8, !tbaa !4833
  %i.ki = invoke ptr @_ZNSt8_Rb_treeINSt10filesystem7__cxx114pathES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef null, ptr noundef nonnull %.sroa.4.0.i.ph.i.i, ptr noundef nonnull align 8 dereferenceable(40) %., ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %.noexc184 unwind label %bb.gi ; 0 uses

.noexc184:                                        ; preds = %select.unfold.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %bb.cf

bb.cf:                                            ; preds = %.noexc184, %bb.ce
  %i.kj = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 7 uses
  store ptr %i.kj, ptr %29, align 8, !tbaa !27
  %i.kk = load ptr, ptr %16, align 8, !tbaa !19   ; 2 uses
  %i.kl = icmp eq ptr %i.kk, %i.bq
  br i1 %i.kl, label %bb.cg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i185

bb.cg:                                            ; preds = %bb.cf
  %i.km = load i64, ptr %i.bx, align 8, !tbaa !28 ; 3 uses
  %i.kn = icmp ult i64 %i.km, 16
  call void @llvm.assume(i1 %i.kn)
  %i.ko = add nuw nsw i64 %i.km, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.kj, ptr noundef nonnull align 8 dereferenceable(1) %i.bq, i64 %i.ko, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit186

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i185: ; preds = %bb.cf
  store ptr %i.kk, ptr %29, align 8, !tbaa !19
  %i.kp = load i64, ptr %i.bq, align 8, !tbaa !26
  store i64 %i.kp, ptr %i.kj, align 8, !tbaa !26
  %.pre301 = load i64, ptr %i.bx, align 8, !tbaa !28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit186

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit186: ; preds = %bb.cg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i185
  %i.kq = phi i64 [ %i.km, %bb.cg ], [ %.pre301, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i185 ]
  %i.kr = getelementptr inbounds nuw i8, ptr %29, i64 8
  store i64 %i.kq, ptr %i.kr, align 8, !tbaa !28
  store ptr %i.bq, ptr %16, align 8, !tbaa !19
  store i64 0, ptr %i.bx, align 8, !tbaa !28
  store i8 0, ptr %i.bq, align 8, !tbaa !26
  %i.ks = load ptr, ptr %0, align 8, !tbaa !56
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 48
  %i.ku = load ptr, ptr %i.kt, align 8
  invoke void %i.ku(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 %29, ptr noundef nonnull byval(%"struct.folly::cli_apply_args_files_receiver::location") align 8 %3)
          to label %bb.ch unwind label %bb.gj

bb.ch:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit186
  %i.kv = load ptr, ptr %29, align 8, !tbaa !19   ; 2 uses
  %i.kw = icmp eq ptr %i.kv, %i.kj
  br i1 %i.kw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187: ; preds = %bb.ch
  %i.kx = load i64, ptr %i.kj, align 8, !tbaa !26
  %i.ky = add i64 %i.kx, 1
  call void @_ZdlPvm(ptr noundef %i.kv, i64 noundef %i.ky) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189: ; preds = %bb.ch, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !4835)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %30, i8 0, i64 24, i1 false), !alias.scope !4835
  %i.kz = getelementptr inbounds nuw i8, ptr %30, i64 80 ; 6 uses
  store i8 0, ptr %i.kz, align 8, !tbaa !4838, !alias.scope !4835
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27, !noalias !4835
  %i.la = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 43 uses
  store ptr %i.la, ptr %7, align 8, !tbaa !27, !noalias !4835
  %i.lb = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 16 uses
  store i64 0, ptr %i.lb, align 8, !tbaa !28, !noalias !4835
  store i8 0, ptr %i.la, align 8, !tbaa !26, !noalias !4835
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27, !noalias !4835
  store i64 0, ptr %i.a, align 8, !tbaa !41, !noalias !4835
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27, !noalias !4835
  store i8 0, ptr %i.b, align 1, !tbaa !4840, !noalias !4835
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27, !noalias !4835
  store i8 0, ptr %i.c, align 1, !tbaa !4840, !noalias !4835
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27, !noalias !4835
  store i8 0, ptr %i.d, align 1, !tbaa !4840, !noalias !4835
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #27, !noalias !4835
  store i64 0, ptr %i.e, align 8, !tbaa !41, !noalias !4835
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #27, !noalias !4835
  store i64 0, ptr %i.f, align 8, !tbaa !41, !noalias !4835
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #27, !noalias !4835
  store i64 0, ptr %i.g, align 8, !tbaa !41, !noalias !4835
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #27, !noalias !4835
  store i64 0, ptr %i.h, align 8, !tbaa !41, !noalias !4835
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #27, !noalias !4835
  store i64 0, ptr %i.i, align 8, !tbaa !41, !noalias !4835
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27, !noalias !4835
  store ptr %7, ptr %8, align 8, !tbaa !4841, !noalias !4835
  %i.lc = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.a, ptr %i.lc, align 8, !tbaa !4843, !noalias !4835
  %i.ld = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %30, ptr %i.ld, align 8, !tbaa !4845, !noalias !4835
  %i.le = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %i.f, ptr %i.le, align 8, !tbaa !4843, !noalias !4835
  %i.lf = getelementptr inbounds nuw i8, ptr %8, i64 32
  store ptr %i.g, ptr %i.lf, align 8, !tbaa !4843, !noalias !4835
  %i.lg = getelementptr inbounds nuw i8, ptr %8, i64 40
  store ptr %i.h, ptr %i.lg, align 8, !tbaa !4843, !noalias !4835
  %i.lh = getelementptr inbounds nuw i8, ptr %8, i64 48
  store ptr %i.i, ptr %i.lh, align 8, !tbaa !4843, !noalias !4835
  %i.li = getelementptr inbounds nuw i8, ptr %8, i64 56
  store ptr %i.c, ptr %i.li, align 8, !tbaa !4847, !noalias !4835
  %i.lj = getelementptr inbounds nuw i8, ptr %8, i64 64
  store ptr %i.d, ptr %i.lj, align 8, !tbaa !4847, !noalias !4835
  %i.lk = getelementptr inbounds nuw i8, ptr %8, i64 72
  store ptr %i.b, ptr %i.lk, align 8, !tbaa !4847, !noalias !4835
  %i.ll = getelementptr inbounds nuw i8, ptr %8, i64 80
  store ptr %i.e, ptr %i.ll, align 8, !tbaa !4843, !noalias !4835
  %.not171545.not.i = icmp eq i64 %i.ju, 0
  br i1 %.not171545.not.i, label %_ZNSt8optionalIN5folly12_GLOBAL__N_115cli_parse_errorEEaSIS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS2_ES7_IS2_NSt5decayISA_E4typeEEEEESt16is_constructibleIS2_JSA_EESt13is_assignableIRS2_SA_EEERS3_E4typeEOSA_.exit218.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189, %bb.ga
  %.0127555.i = phi i64 [ %i.up, %bb.ga ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189 ] ; 11 uses
  %.0128554.i = phi i64 [ %.5.ph.i, %bb.ga ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189 ] ; 25 uses
  %.0132553.i = phi i64 [ %.5137.ph.i, %bb.ga ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189 ] ; 25 uses
  %.0138552.i = phi i64 [ %.2140.ph.i, %bb.ga ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189 ] ; 9 uses
  %.0142551.i = phi i64 [ %.2144.ph.i, %bb.ga ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189 ] ; 9 uses
  %.0146550.i = phi i64 [ %.2148.ph.i, %bb.ga ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189 ] ; 9 uses
  %.0150549.i = phi i1 [ %.2152.ph.i, %bb.ga ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189 ]
  %.0153548.i = phi i1 [ %.1154.ph.i, %bb.ga ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189 ] ; 4 uses
  %.0155547.i = phi i8 [ %.2157.ph.i, %bb.ga ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189 ] ; 8 uses
  %.0159546.i = phi i8 [ %.1160.ph.i, %bb.ga ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189 ] ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.js, i64 %.0127555.i
  %i.ln = load i8, ptr %i.lm, align 1, !tbaa !26, !noalias !4835 ; 14 uses
  br i1 %.0150549.i, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %.lr.ph.i
  %i.lo = icmp eq i8 %i.ln, 10                    ; 3 uses
  %i.lp = add i64 %.0128554.i, 1
  %not.565.i = xor i1 %i.lo, true
  %i.lq = zext i1 %i.lo to i64
  %.1133.i = add i64 %.0132553.i, %i.lq
  %.1129.i = select i1 %i.lo, i64 1, i64 %i.lp
  br label %bb.ga

bb.cj:                                            ; preds = %.lr.ph.i
  %i.lr = trunc nuw i8 %.0159546.i to i1
  br i1 %i.lr, label %bb.ck, label %bb.cu

bb.ck:                                            ; preds = %bb.cj
  %i.ls = icmp eq i8 %i.ln, 39
  br i1 %i.ls, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  store i64 %.0132553.i, ptr %i.h, align 8, !tbaa !41, !noalias !4835
  store i64 %.0128554.i, ptr %i.i, align 8, !tbaa !41, !noalias !4835
  %i.lt = add i64 %.0128554.i, 1
  br label %bb.ga

bb.cm:                                            ; preds = %bb.ck
  %i.lu = load i64, ptr %i.lb, align 8, !tbaa !28, !noalias !4835 ; 6 uses
  %i.lv = add i64 %i.lu, 1                        ; 9 uses
  %i.lw = load ptr, ptr %7, align 8, !tbaa !19, !noalias !4835 ; 6 uses
  %i.lx = icmp eq ptr %i.lw, %i.la                ; 2 uses
  br i1 %i.lx, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %bb.cm
  %i.ly = icmp samesign ult i64 %i.lu, 16
  call void @llvm.assume(i1 %i.ly)
  %i.lz = icmp samesign ugt i64 %i.lv, 15
  br i1 %i.lz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, label %bb.ct

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread.i: ; preds = %bb.cm
  %i.ma = load i64, ptr %i.la, align 8, !tbaa !26, !noalias !4835 ; 2 uses
  %i.mb = icmp ugt i64 %i.lv, %i.ma
  br i1 %i.mb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, label %bb.ct

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.mc = phi i64 [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i ], [ %i.ma, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread.i ] ; 2 uses
  %i.md = icmp slt i64 %i.lv, 0
  br i1 %i.md, label %.invoke.i, label %bb.cn

.invoke.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i331.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i315.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i299.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i283.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i267.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i251.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i235.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #24
          to label %.cont.i unwind label %.loopexit.split-lp.i

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.cn:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.me = icmp ugt i64 %i.lv, %i.mc
  br i1 %i.me, label %bb.co, label %bb.cq

bb.co:                                            ; preds = %bb.cn
  %i.mf = shl nuw i64 %i.mc, 1                    ; 2 uses
  %i.mg = icmp ult i64 %i.lv, %i.mf
  br i1 %i.mg, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %spec.store.select.i.i.i = call i64 @llvm.umin.i64(i64 %i.mf, i64 9223372036854775807)
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co, %bb.cn
  %.0.i.i196 = phi i64 [ %spec.store.select.i.i.i, %bb.cp ], [ %i.lv, %bb.co ], [ %i.lv, %bb.cn ] ; 2 uses
  %i.mh = add nuw i64 %.0.i.i196, 1               ; 2 uses
  %i.mi = icmp slt i64 %i.mh, 0
  br i1 %i.mi, label %.invoke774.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !55

.invoke774.i:                                     ; preds = %bb.fw, %bb.eq, %bb.ei, %bb.ea, %bb.ds, %bb.dk, %bb.dc, %bb.cq
  invoke void @_ZSt17__throw_bad_allocv() #24
          to label %.cont775.i unwind label %.loopexit.split-lp.i

.cont775.i:                                       ; preds = %.invoke774.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.cq
  %i.mj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mh) #25
          to label %.noexc233.i unwind label %.loopexit.i ; 4 uses

.noexc233.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  switch i64 %i.lu, label %bb.cs [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i.i
    i64 1, label %bb.cr
  ]

bb.cr:                                            ; preds = %.noexc233.i
  %i.mk = load i8, ptr %i.lw, align 1, !tbaa !26
  store i8 %i.mk, ptr %i.mj, align 1, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i.i

bb.cs:                                            ; preds = %.noexc233.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.mj, ptr align 1 %i.lw, i64 %i.lu, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i.i: ; preds = %bb.cs, %bb.cr, %.noexc233.i
  br i1 %i.lx, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i.i
  %i.ml = icmp samesign ult i64 %i.lu, 16
  call void @llvm.assume(i1 %i.ml)
  br label %.noexc.i197

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i.i
  %i.mm = load i64, ptr %i.la, align 8, !tbaa !26, !noalias !4835
  %i.mn = add i64 %i.mm, 1
  call void @_ZdlPvm(ptr noundef %i.lw, i64 noundef %i.mn) #26
  br label %.noexc.i197

.noexc.i197:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29.i.i
  store ptr %i.mj, ptr %7, align 8, !tbaa !19, !noalias !4835
  store i64 %.0.i.i196, ptr %i.la, align 8, !tbaa !26, !noalias !4835
  br label %bb.ct

bb.ct:                                            ; preds = %.noexc.i197, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.mo = phi ptr [ %i.mj, %.noexc.i197 ], [ %i.lw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i ], [ %i.lw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread.i ]
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 %i.lu
  store i8 %i.ln, ptr %i.mp, align 1, !tbaa !26
  store i64 %i.lv, ptr %i.lb, align 8, !tbaa !28, !noalias !4835
  %i.mq = load ptr, ptr %7, align 8, !tbaa !19, !noalias !4835
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 %i.lv
  store i8 0, ptr %i.mr, align 1, !tbaa !26
  %i.ms = load i64, ptr %i.e, align 8, !tbaa !41, !noalias !4835
  %i.mt = add i64 %i.ms, 1
  store i64 %i.mt, ptr %i.e, align 8, !tbaa !41, !noalias !4835
  store i64 %.0132553.i, ptr %i.h, align 8, !tbaa !41, !noalias !4835
  store i64 %.0128554.i, ptr %i.i, align 8, !tbaa !41, !noalias !4835
  %i.mu = icmp eq i8 %i.ln, 10                    ; 2 uses
  %i.mv = add i64 %.0128554.i, 1
  %i.mw = zext i1 %i.mu to i64
  %.2134.i = add i64 %.0132553.i, %i.mw
  %.2130.i = select i1 %i.mu, i64 1, i64 %i.mv
  br label %bb.ga

.loopexit.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i333.i, %bb.fm, %bb.fc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i317.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i301.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i285.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i269.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i253.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i237.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.gg

.loopexit.split-lp.i:                             ; preds = %.invoke774.i, %.invoke.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.gg

bb.cu:                                            ; preds = %bb.cj
  br i1 %.0153548.i, label %bb.cv, label %bb.ex

bb.cv:                                            ; preds = %bb.cu
  %i.mx = load i8, ptr %i.b, align 1, !tbaa !4840, !range !51, !noalias !4835, !noundef !52
  %i.my = trunc nuw i8 %i.mx to i1
  br i1 %i.my, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  store i64 -1, ptr %i.a, align 8, !tbaa !41, !noalias !4835
  store i64 %.0132553.i, ptr %i.f, align 8, !tbaa !41, !noalias !4835
  %i.mz = add i64 %.0128554.i, -1
  store i64 %i.mz, ptr %i.g, align 8, !tbaa !41, !noalias !4835
  store i8 1, ptr %i.b, align 1, !tbaa !4840, !noalias !4835
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  store i64 %.0132553.i, ptr %i.h, align 8, !tbaa !41, !noalias !4835
  store i64 %.0128554.i, ptr %i.i, align 8, !tbaa !41, !noalias !4835
  switch i8 %i.ln, label %bb.eu [
    i8 110, label %bb.cy
    i8 116, label %bb.dg
    i8 114, label %bb.do
    i8 92, label %bb.dw
    i8 34, label %bb.ee
    i8 35, label %bb.em
  ]

bb.cy:                                            ; preds = %bb.cx
  %i.na = load i64, ptr %i.lb, align 8, !tbaa !28, !noalias !4835 ; 6 uses
  %i.nb = add i64 %i.na, 1                        ; 8 uses
  %i.nc = load ptr, ptr %7, align 8, !tbaa !19, !noalias !4835 ; 6 uses
  %i.nd = icmp eq ptr %i.nc, %i.la                ; 2 uses
  br i1 %i.nd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i175.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i175.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i175.i: ; preds = %bb.cy
  %i.ne = icmp samesign ult i64 %i.na, 16
  call void @llvm.assume(i1 %i.ne)
  %i.nf = icmp samesign ugt i64 %i.nb, 15
  br i1 %i.nf, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i235.i, label %bb.df

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i175.thread.i: ; preds = %bb.cy
  %i.ng = load i64, ptr %i.la, align 8, !tbaa !26, !noalias !4835 ; 2 uses
  %i.nh = icmp ugt i64 %i.nb, %i.ng
  br i1 %i.nh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i235.i, label %bb.df

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i235.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i175.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i175.i
  %i.ni = phi i64 [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i175.i ], [ %i.ng, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i175.thread.i ] ; 2 uses
  %i.nj = icmp slt i64 %i.nb, 0
  br i1 %i.nj, label %.invoke.i, label %bb.cz

bb.cz:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i235.i
  %i.nk = icmp ugt i64 %i.nb, %i.ni
  br i1 %i.nk, label %bb.da, label %bb.dc

bb.da:                                            ; preds = %bb.cz
  %i.nl = shl nuw i64 %i.ni, 1                    ; 2 uses
  %i.nm = icmp ult i64 %i.nb, %i.nl
  br i1 %i.nm, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %spec.store.select.i.i244.i = call i64 @llvm.umin.i64(i64 %i.nl, i64 9223372036854775807)
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da, %bb.cz
  %.0.i236.i = phi i64 [ %spec.store.select.i.i244.i, %bb.db ], [ %i.nb, %bb.da ], [ %i.nb, %bb.cz ] ; 2 uses
  %i.nn = add nuw i64 %.0.i236.i, 1               ; 2 uses
  %i.no = icmp slt i64 %i.nn, 0
  br i1 %i.no, label %.invoke774.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i237.i, !prof !55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i237.i: ; preds = %bb.dc
  %i.np = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nn) #25
          to label %.noexc248.i unwind label %.loopexit.i ; 4 uses

.noexc248.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i237.i
  switch i64 %i.na, label %bb.de [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i241.i
    i64 1, label %bb.dd
  ]

bb.dd:                                            ; preds = %.noexc248.i
  %i.nq = load i8, ptr %i.nc, align 1, !tbaa !26
  store i8 %i.nq, ptr %i.np, align 1, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i241.i

bb.de:                                            ; preds = %.noexc248.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.np, ptr align 1 %i.nc, i64 %i.na, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i241.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i241.i: ; preds = %bb.de, %bb.dd, %.noexc248.i
  br i1 %i.nd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29.i243.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i242.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29.i243.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i241.i
  %i.nr = icmp samesign ult i64 %i.na, 16
  call void @llvm.assume(i1 %i.nr)
  br label %.noexc178.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i242.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i241.i
  %i.ns = load i64, ptr %i.la, align 8, !tbaa !26, !noalias !4835
  %i.nt = add i64 %i.ns, 1
  call void @_ZdlPvm(ptr noundef %i.nc, i64 noundef %i.nt) #26
  br label %.noexc178.i

.noexc178.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i242.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29.i243.i
  store ptr %i.np, ptr %7, align 8, !tbaa !19, !noalias !4835
  store i64 %.0.i236.i, ptr %i.la, align 8, !tbaa !26, !noalias !4835
  br label %bb.df

bb.df:                                            ; preds = %.noexc178.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i175.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i175.i
  %i.nu = phi ptr [ %i.np, %.noexc178.i ], [ %i.nc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i175.i ], [ %i.nc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i175.thread.i ]
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 %i.na
  store i8 10, ptr %i.nv, align 1, !tbaa !26
  br label %bb.ew

bb.dg:                                            ; preds = %bb.cx
  %i.nw = load i64, ptr %i.lb, align 8, !tbaa !28, !noalias !4835 ; 6 uses
  %i.nx = add i64 %i.nw, 1                        ; 8 uses
  %i.ny = load ptr, ptr %7, align 8, !tbaa !19, !noalias !4835 ; 6 uses
  %i.nz = icmp eq ptr %i.ny, %i.la                ; 2 uses
  br i1 %i.nz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i181.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i181.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i181.i: ; preds = %bb.dg
  %i.oa = icmp samesign ult i64 %i.nw, 16
  call void @llvm.assume(i1 %i.oa)
  %i.ob = icmp samesign ugt i64 %i.nx, 15
  br i1 %i.ob, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i251.i, label %bb.dn

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i181.thread.i: ; preds = %bb.dg
  %i.oc = load i64, ptr %i.la, align 8, !tbaa !26, !noalias !4835 ; 2 uses
  %i.od = icmp ugt i64 %i.nx, %i.oc
  br i1 %i.od, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i251.i, label %bb.dn

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i251.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i181.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i181.i
  %i.oe = phi i64 [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i181.i ], [ %i.oc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i181.thread.i ] ; 2 uses
  %i.of = icmp slt i64 %i.nx, 0
  br i1 %i.of, label %.invoke.i, label %bb.dh

bb.dh:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i251.i
  %i.og = icmp ugt i64 %i.nx, %i.oe
  br i1 %i.og, label %bb.di, label %bb.dk

bb.di:                                            ; preds = %bb.dh
  %i.oh = shl nuw i64 %i.oe, 1                    ; 2 uses
  %i.oi = icmp ult i64 %i.nx, %i.oh
  br i1 %i.oi, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  %spec.store.select.i.i260.i = call i64 @llvm.umin.i64(i64 %i.oh, i64 9223372036854775807)
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di, %bb.dh
  %.0.i252.i = phi i64 [ %spec.store.select.i.i260.i, %bb.dj ], [ %i.nx, %bb.di ], [ %i.nx, %bb.dh ] ; 2 uses
  %i.oj = add nuw i64 %.0.i252.i, 1               ; 2 uses
  %i.ok = icmp slt i64 %i.oj, 0
  br i1 %i.ok, label %.invoke774.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i253.i, !prof !55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i253.i: ; preds = %bb.dk
  %i.ol = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.oj) #25
          to label %.noexc264.i unwind label %.loopexit.i ; 4 uses

.noexc264.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i253.i
  switch i64 %i.nw, label %bb.dm [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i257.i
    i64 1, label %bb.dl
  ]

bb.dl:                                            ; preds = %.noexc264.i
  %i.om = load i8, ptr %i.ny, align 1, !tbaa !26
  store i8 %i.om, ptr %i.ol, align 1, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i257.i

bb.dm:                                            ; preds = %.noexc264.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ol, ptr align 1 %i.ny, i64 %i.nw, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i257.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i257.i: ; preds = %bb.dm, %bb.dl, %.noexc264.i
  br i1 %i.nz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29.i259.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i258.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29.i259.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i257.i
  %i.on = icmp samesign ult i64 %i.nw, 16
  call void @llvm.assume(i1 %i.on)
  br label %.noexc184.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i258.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i257.i
  %i.oo = load i64, ptr %i.la, align 8, !tbaa !26, !noalias !4835
  %i.op = add i64 %i.oo, 1
  call void @_ZdlPvm(ptr noundef %i.ny, i64 noundef %i.op) #26
  br label %.noexc184.i

.noexc184.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i258.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29.i259.i
  store ptr %i.ol, ptr %7, align 8, !tbaa !19, !noalias !4835
  store i64 %.0.i252.i, ptr %i.la, align 8, !tbaa !26, !noalias !4835
  br label %bb.dn

bb.dn:                                            ; preds = %.noexc184.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i181.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i181.i
  %i.oq = phi ptr [ %i.ol, %.noexc184.i ], [ %i.ny, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i181.i ], [ %i.ny, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i181.thread.i ]
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 %i.nw
  store i8 9, ptr %i.or, align 1, !tbaa !26
  br label %bb.ew

bb.do:                                            ; preds = %bb.cx
  %i.os = load i64, ptr %i.lb, align 8, !tbaa !28, !noalias !4835 ; 6 uses
  %i.ot = add i64 %i.os, 1                        ; 8 uses
  %i.ou = load ptr, ptr %7, align 8, !tbaa !19, !noalias !4835 ; 6 uses
  %i.ov = icmp eq ptr %i.ou, %i.la                ; 2 uses
  br i1 %i.ov, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i187.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i187.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i187.i: ; preds = %bb.do
  %i.ow = icmp samesign ult i64 %i.os, 16
  call void @llvm.assume(i1 %i.ow)
end_hunk_0
