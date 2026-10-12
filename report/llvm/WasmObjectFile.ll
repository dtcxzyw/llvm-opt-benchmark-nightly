Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/WasmObjectFile?download=true
inline.NumInlined: 4167
inline.NumDeleted: 1888
begin_hunk_0_@_ZN4llvm6object14WasmObjectFile21parseProducersSectionERNS1_11ReadContextE:bb.a
  %.not.i.i21.i = icmp eq ptr %i.ig, %i.gm
  br i1 %.not.i.i21.i, label %_ZNSt3setIN4llvm9StringRefESt4lessIS1_ESaIS1_EE6insertISt13move_iteratorIPS1_EEEvT_SA_.exit.i, label %.lr.ph.i.i.i, !llvm.loop !7

_ZNSt3setIN4llvm9StringRefESt4lessIS1_ESaIS1_EE6insertISt13move_iteratorIPS1_EEEvT_SA_.exit.i: ; preds = %_ZNSt8_Rb_treeIN4llvm9StringRefES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE17_M_insert_unique_IS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_ESt23_Rb_tree_const_iteratorIS1_EOT_RT0_.exit
  store i32 0, ptr %i.ao, align 8, !tbaa !205, !noalias !1128
  %i.ih = call { ptr, i8 } @_ZNSt8_Rb_treeIN4llvm9StringRefES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE16_M_insert_uniqueIRKS1_EESt4pairISt17_Rb_tree_iteratorIS1_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.aw, ptr noundef nonnull align 8 dereferenceable(16) %11), !noalias !1128 ; 0 uses
  br label %_ZN4llvm8SmallSetINS_9StringRefELj8ESt4lessIS1_EE10insertImplIRKS1_EESt4pairINS_16SmallSetIteratorIS1_Lj8ES3_EEbEOT_.exit.thread

_ZN4llvm8SmallSetINS_9StringRefELj8ESt4lessIS1_EE10insertImplIRKS1_EESt4pairINS_16SmallSetIteratorIS1_Lj8ES3_EEbEOT_.exit.thread: ; preds = %bb.af, %bb.ag, %_ZNSt3setIN4llvm9StringRefESt4lessIS1_ESaIS1_EE6insertISt13move_iteratorIPS1_EEEvT_SA_.exit.i, %_ZN4llvm8SmallSetINS_9StringRefELj8ESt4lessIS1_EE10insertImplIRKS1_EESt4pairINS_16SmallSetIteratorIS1_Lj8ES3_EEbEOT_.exit.thread244
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  %i.ii = load ptr, ptr %11, align 8, !tbaa !1129 ; 3 uses
  %i.ij = load i64, ptr %i.av, align 8, !tbaa !339 ; 5 uses
  store ptr %i.ax, ptr %12, align 8, !tbaa !182
  %i.ik = icmp eq ptr %i.ii, null
  %i.il = icmp ne i64 %i.ij, 0
  %or.cond.i.i.i = and i1 %i.ik, %i.il
  br i1 %or.cond.i.i.i, label %bb.al, label %bb.am

bb.al:                                            ; preds = %_ZN4llvm8SmallSetINS_9StringRefELj8ESt4lessIS1_EE10insertImplIRKS1_EESt4pairINS_16SmallSetIteratorIS1_Lj8ES3_EEbEOT_.exit.thread
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.169) #28
  unreachable

bb.am:                                            ; preds = %_ZN4llvm8SmallSetINS_9StringRefELj8ESt4lessIS1_EE10insertImplIRKS1_EESt4pairINS_16SmallSetIteratorIS1_Lj8ES3_EEbEOT_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i64 %i.ij, ptr %i.b, align 8, !tbaa !28
  %i.im = icmp ugt i64 %i.ij, 15
  br i1 %i.im, label %bb.an, label %._crit_edge.i.i.i.i

bb.an:                                            ; preds = %bb.am
  %i.in = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #26 ; 2 uses
  store ptr %i.in, ptr %12, align 8, !tbaa !188
  %i.io = load i64, ptr %i.b, align 8, !tbaa !28
  store i64 %i.io, ptr %i.ax, align 8, !tbaa !45
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.an, %bb.am
  %i.ip = phi ptr [ %i.in, %bb.an ], [ %i.ax, %bb.am ] ; 2 uses
  switch i64 %i.ij, label %bb.ap [
    i64 1, label %bb.ao
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit
  ]

bb.ao:                                            ; preds = %._crit_edge.i.i.i.i
  %i.iq = load i8, ptr %i.ii, align 1, !tbaa !45
  store i8 %i.iq, ptr %i.ip, align 1, !tbaa !45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit

bb.ap:                                            ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ip, ptr align 1 %i.ii, i64 %i.ij, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.ao, %bb.ap
  %i.ir = load i64, ptr %i.b, align 8, !tbaa !28  ; 2 uses
  store i64 %i.ir, ptr %i.ay, align 8, !tbaa !184
  %i.is = load ptr, ptr %12, align 8, !tbaa !188
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 %i.ir
  store i8 0, ptr %i.it, align 1, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  store ptr %i.az, ptr %13, align 8, !tbaa !182
  %i.iu = icmp eq ptr %i.dl, null
  %i.iv = icmp ne i64 %i.fc, 0
  %or.cond.i.i.i85 = and i1 %i.iu, %i.iv
  br i1 %or.cond.i.i.i85, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.169) #28
  unreachable

bb.ar:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.fc, ptr %i.a, align 8, !tbaa !28
  %i.iw = icmp samesign ugt i64 %i.fc, 15
  br i1 %i.iw, label %bb.as, label %._crit_edge.i.i.i.i86

bb.as:                                            ; preds = %bb.ar
  %i.ix = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #26 ; 2 uses
  store ptr %i.ix, ptr %13, align 8, !tbaa !188
  %i.iy = load i64, ptr %i.a, align 8, !tbaa !28
  store i64 %i.iy, ptr %i.az, align 8, !tbaa !45
  br label %._crit_edge.i.i.i.i86

._crit_edge.i.i.i.i86:                            ; preds = %bb.as, %bb.ar
  %i.iz = phi ptr [ %i.ix, %bb.as ], [ %i.az, %bb.ar ] ; 2 uses
  %trunc = trunc i64 %.130.i.i.i76 to i32
  switch i32 %trunc, label %bb.au [
    i32 1, label %bb.at
    i32 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit87
  ]

bb.at:                                            ; preds = %._crit_edge.i.i.i.i86
  %i.ja = load i8, ptr %i.fb, align 1, !tbaa !45
  store i8 %i.ja, ptr %i.iz, align 1, !tbaa !45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit87

bb.au:                                            ; preds = %._crit_edge.i.i.i.i86
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.iz, ptr align 1 %i.fb, i64 %i.fc, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit87

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit87: ; preds = %._crit_edge.i.i.i.i86, %bb.at, %bb.au
  %i.jb = load i64, ptr %i.a, align 8, !tbaa !28  ; 2 uses
  store i64 %i.jb, ptr %i.ba, align 8, !tbaa !184
  %i.jc = load ptr, ptr %13, align 8, !tbaa !188
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 %i.jb
  store i8 0, ptr %i.jd, align 1, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.je = load ptr, ptr %i.dj, align 8, !tbaa !360 ; 9 uses
  %i.jf = load ptr, ptr %i.dk, align 8, !tbaa !361
  %.not.i88 = icmp eq ptr %i.je, %i.jf
  br i1 %.not.i88, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12emplace_backIJS6_S6_EEERS7_DpOT_.exit, label %bb.av

bb.av:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit87
  %i.jg = getelementptr inbounds nuw i8, ptr %i.je, i64 16 ; 3 uses
  store ptr %i.jg, ptr %i.je, align 8, !tbaa !182
  %i.jh = load ptr, ptr %12, align 8, !tbaa !188  ; 2 uses
  %i.ji = icmp eq ptr %i.jh, %i.ax
  br i1 %i.ji, label %bb.aw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.aw:                                            ; preds = %bb.av
  %i.jj = load i64, ptr %i.ay, align 8, !tbaa !184 ; 3 uses
  %i.jk = icmp ult i64 %i.jj, 16
  call void @llvm.assume(i1 %i.jk)
  %i.jl = add nuw nsw i64 %i.jj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.jg, ptr noundef nonnull align 8 dereferenceable(1) %i.ax, i64 %i.jl, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.av
  store ptr %i.jh, ptr %i.je, align 8, !tbaa !188
  %i.jm = load i64, ptr %i.ax, align 8, !tbaa !45
  store i64 %i.jm, ptr %i.jg, align 8, !tbaa !45
  %.pre = load i64, ptr %i.ay, align 8, !tbaa !184
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.aw
  %i.jn = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.jj, %bb.aw ]
  %i.jo = getelementptr inbounds nuw i8, ptr %i.je, i64 8
  store i64 %i.jn, ptr %i.jo, align 8, !tbaa !184
  store ptr %i.ax, ptr %12, align 8, !tbaa !188
  store i64 0, ptr %i.ay, align 8, !tbaa !184
  store i8 0, ptr %i.ax, align 8, !tbaa !45
  %i.jp = getelementptr inbounds nuw i8, ptr %i.je, i64 32 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.je, i64 48 ; 3 uses
  store ptr %i.jq, ptr %i.jp, align 8, !tbaa !182
  %i.jr = load ptr, ptr %13, align 8, !tbaa !188  ; 2 uses
  %i.js = icmp eq ptr %i.jr, %i.az
  br i1 %i.js, label %bb.ax, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i

bb.ax:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.jt = load i64, ptr %i.ba, align 8, !tbaa !184 ; 3 uses
  %i.ju = icmp ult i64 %i.jt, 16
  call void @llvm.assume(i1 %i.ju)
  %i.jv = add nuw nsw i64 %i.jt, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.jq, ptr noundef nonnull align 8 dereferenceable(1) %i.az, i64 %i.jv, i1 false)
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12emplace_backIJS6_S6_EEERS7_DpOT_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  store ptr %i.jr, ptr %i.jp, align 8, !tbaa !188
  %i.jw = load i64, ptr %i.az, align 8, !tbaa !45
  store i64 %i.jw, ptr %i.jq, align 8, !tbaa !45
  %.pre292 = load i64, ptr %i.ba, align 8, !tbaa !184
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12emplace_backIJS6_S6_EEERS7_DpOT_.exit.thread

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12emplace_backIJS6_S6_EEERS7_DpOT_.exit.thread: ; preds = %bb.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i
  %i.jx = phi i64 [ %.pre292, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i ], [ %i.jt, %bb.ax ]
  %i.jy = getelementptr inbounds nuw i8, ptr %i.je, i64 40
  store i64 %i.jx, ptr %i.jy, align 8, !tbaa !184
  store ptr %i.az, ptr %13, align 8, !tbaa !188
  store i64 0, ptr %i.ba, align 8, !tbaa !184
  %i.jz = load ptr, ptr %i.dj, align 8, !tbaa !360
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 64
  store ptr %i.ka, ptr %i.dj, align 8, !tbaa !360
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12emplace_backIJS6_S6_EEERS7_DpOT_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit87
  call void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE17_M_realloc_insertIJS6_S6_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %.027, ptr %i.je, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %13)
  %.pre293 = load ptr, ptr %13, align 8, !tbaa !188 ; 2 uses
  %i.kb = icmp eq ptr %.pre293, %i.az
  br i1 %i.kb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12emplace_backIJS6_S6_EEERS7_DpOT_.exit
  %i.kc = load i64, ptr %i.az, align 8, !tbaa !45
  %i.kd = add i64 %i.kc, 1
  call void @_ZdlPvm(ptr noundef %.pre293, i64 noundef %i.kd) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12emplace_backIJS6_S6_EEERS7_DpOT_.exit, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12emplace_backIJS6_S6_EEERS7_DpOT_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  %i.ke = load ptr, ptr %12, align 8, !tbaa !188  ; 2 uses
  %i.kf = icmp eq ptr %i.ke, %i.ax
  br i1 %i.kf, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.kg = load i64, ptr %i.ax, align 8, !tbaa !45
  %i.kh = add i64 %i.kg, 1
  call void @_ZdlPvm(ptr noundef %i.ke, i64 noundef %i.kh) #29
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i90

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i90: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  %i.ki = add nuw i64 %.0274, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.ki, %.130.i.i.i54
  br i1 %exitcond.not, label %.critedge33.loopexit, label %bb.q, !llvm.loop !1116

_ZN4llvm8SmallSetINS_9StringRefELj8ESt4lessIS1_EE10insertImplIRKS1_EESt4pairINS_16SmallSetIteratorIS1_Lj8ES3_EEbEOT_.exit.thread241: ; preds = %.thread.i.i.i18.i, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit19.i, %_ZNK4llvm8SmallSetINS_9StringRefELj8ESt4lessIS1_EE5vfindERKS1_.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1130)
  %i.kj = call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #27, !noalias !1131 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26, !noalias !1131
  %i.kk = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 1, ptr %i.kk, align 1, !tbaa !44, !noalias !1131
  store ptr @.str.69, ptr %4, align 8, !tbaa !45, !noalias !1131
  %i.kl = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i8 3, ptr %i.kl, align 8, !tbaa !43, !noalias !1131
  call void @_ZN4llvm6object18GenericBinaryErrorC1ERKNS_5TwineENS0_12object_errorE(ptr noundef nonnull align 8 dereferenceable(56) %i.kj, ptr noundef nonnull align 8 dereferenceable(34) %4, i32 noundef 3) #26, !noalias !1131
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26, !noalias !1131
  store ptr %i.kj, ptr %0, align 8, !tbaa !48, !alias.scope !1130
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  %i.km = load ptr, ptr %i.ar, align 8, !tbaa !352
  call void @_ZNSt8_Rb_treeIN4llvm9StringRefES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %i.aw, ptr noundef %i.km)
  %i.kn = load ptr, ptr %10, align 8, !tbaa !204  ; 2 uses
  %i.ko = icmp eq ptr %i.kn, %i.an
  br i1 %i.ko, label %_ZN4llvm8SmallSetINS_9StringRefELj8ESt4lessIS1_EED2Ev.exit, label %bb.ay

bb.ay:                                            ; preds = %_ZN4llvm8SmallSetINS_9StringRefELj8ESt4lessIS1_EE10insertImplIRKS1_EESt4pairINS_16SmallSetIteratorIS1_Lj8ES3_EEbEOT_.exit.thread241
  call void @free(ptr noundef %i.kn) #26
  br label %_ZN4llvm8SmallSetINS_9StringRefELj8ESt4lessIS1_EED2Ev.exit

_ZN4llvm8SmallSetINS_9StringRefELj8ESt4lessIS1_EED2Ev.exit: ; preds = %_ZN4llvm8SmallSetINS_9StringRefELj8ESt4lessIS1_EE10insertImplIRKS1_EESt4pairINS_16SmallSetIteratorIS1_Lj8ES3_EEbEOT_.exit.thread241, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.bb

.critedge33.loopexit:                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i90
  %.pre294 = load ptr, ptr %i.ar, align 8, !tbaa !352
  br label %.critedge33

.critedge33:                                      ; preds = %.critedge33.loopexit, %_ZL13readVaruint32RN4llvm6object14WasmObjectFile11ReadContextE.exit60
  %i.kp = phi ptr [ %.pre294, %.critedge33.loopexit ], [ null, %_ZL13readVaruint32RN4llvm6object14WasmObjectFile11ReadContextE.exit60 ]
  call void @_ZNSt8_Rb_treeIN4llvm9StringRefES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %i.aw, ptr noundef %i.kp)
  %i.kq = load ptr, ptr %10, align 8, !tbaa !204  ; 2 uses
  %i.kr = icmp eq ptr %i.kq, %i.an
  br i1 %i.kr, label %_ZL13readVaruint32RN4llvm6object14WasmObjectFile11ReadContextE.exit, label %bb.az

bb.az:                                            ; preds = %.critedge33
  call void @free(ptr noundef %i.kq) #26
  br label %_ZL13readVaruint32RN4llvm6object14WasmObjectFile11ReadContextE.exit

_ZL13readVaruint32RN4llvm6object14WasmObjectFile11ReadContextE.exit: ; preds = %bb.az, %.critedge33
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %i.ks = add nuw i64 %.025276, 1                 ; 2 uses
  %exitcond288.not = icmp eq i64 %i.ks, %.130.i.i.i
  br i1 %exitcond288.not, label %.critedge31.loopexit, label %bb.f, !llvm.loop !1121

.critedge:                                        ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit50.thread208, %bb.k
  %storemerge = phi ptr [ %i.cb, %bb.k ], [ %i.ck, %_ZN4llvmeqENS_9StringRefES0_.exit50.thread208 ]
  store ptr %storemerge, ptr %0, align 8, !tbaa !48
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.bb

.critedge31.loopexit:                             ; preds = %_ZL13readVaruint32RN4llvm6object14WasmObjectFile11ReadContextE.exit
  %.pre295 = load ptr, ptr %i.k, align 8, !tbaa !200
  %.pre296 = load ptr, ptr %i.m, align 8, !tbaa !199
  br label %.critedge31

.critedge31:                                      ; preds = %.critedge31.loopexit, %_ZL13readVaruint32RN4llvm6object14WasmObjectFile11ReadContextE.exit.preheader
  %i.kt = phi ptr [ %.pre296, %.critedge31.loopexit ], [ %i.n, %_ZL13readVaruint32RN4llvm6object14WasmObjectFile11ReadContextE.exit.preheader ]
  %i.ku = phi ptr [ %.pre295, %.critedge31.loopexit ], [ %i.ag, %_ZL13readVaruint32RN4llvm6object14WasmObjectFile11ReadContextE.exit.preheader ]
  %.not29 = icmp eq ptr %i.ku, %i.kt
  br i1 %.not29, label %_ZN4llvm5ErrorD2Ev.exit, label %bb.ba

bb.ba:                                            ; preds = %.critedge31
  call void @llvm.experimental.noalias.scope.decl(metadata !1132)
  %i.kv = call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #27, !noalias !1133 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26, !noalias !1133
  %i.kw = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 1, ptr %i.kw, align 1, !tbaa !44, !noalias !1133
  store ptr @.str.70, ptr %3, align 8, !tbaa !45, !noalias !1133
  %i.kx = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 3, ptr %i.kx, align 8, !tbaa !43, !noalias !1133
  call void @_ZN4llvm6object18GenericBinaryErrorC1ERKNS_5TwineENS0_12object_errorE(ptr noundef nonnull align 8 dereferenceable(56) %i.kv, ptr noundef nonnull align 8 dereferenceable(34) %3, i32 noundef 3) #26, !noalias !1133
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26, !noalias !1133
  store ptr %i.kv, ptr %0, align 8, !tbaa !48, !alias.scope !1132
  br label %bb.bb

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %.critedge31
  store ptr null, ptr %0, align 8, !tbaa !48
  br label %bb.bb

bb.bb:                                            ; preds = %.critedge, %_ZN4llvm8SmallSetINS_9StringRefELj8ESt4lessIS1_EED2Ev.exit, %_ZN4llvm5ErrorD2Ev.exit, %bb.ba
  %i.ky = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.kz = load ptr, ptr %i.g, align 8, !tbaa !352
  call void @_ZNSt8_Rb_treeIN4llvm9StringRefES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %i.ky, ptr noundef %i.kz)
  %i.la = load ptr, ptr %7, align 8, !tbaa !204   ; 2 uses
  %i.lb = icmp eq ptr %i.la, %i.c
  br i1 %i.lb, label %_ZN4llvm8SmallSetINS_9StringRefELj3ESt4lessIS1_EED2Ev.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @free(ptr noundef %i.la) #26
  br label %_ZN4llvm8SmallSetINS_9StringRefELj3ESt4lessIS1_EED2Ev.exit

_ZN4llvm8SmallSetINS_9StringRefELj3ESt4lessIS1_EED2Ev.exit: ; preds = %bb.bb, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm6object14WasmObjectFile26parseTargetFeaturesSectionERNS1_11ReadContextE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.llvm::Error") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(708) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %6 = alloca %"class.llvm::SmallSet.165", align 8 ; 15 uses
  %7 = alloca %"struct.llvm::wasm::WasmFeatureEntry", align 8 ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %9 = alloca %"struct.std::pair.177", align 8    ; 4 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.c, ptr %6, align 8, !tbaa !204
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i32 0, ptr %i.d, align 8, !tbaa !205
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 8, ptr %i.e, align 4, !tbaa !206
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 280 ; 3 uses
  store i32 0, ptr %i.f, align 8, !tbaa !351
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 288 ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !352
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 296
  store ptr %i.f, ptr %i.h, align 8, !tbaa !353
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 304
  store ptr %i.f, ptr %i.i, align 8, !tbaa !354
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 312
  store i64 0, ptr %i.j, align 8, !tbaa !355
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !200  ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !199  ; 3 uses
  %i.o = icmp eq ptr %i.l, %i.n
  br i1 %i.o, label %._crit_edge, label %.lr.ph99, !prof !175

bb.b:                                             ; preds = %bb.d
  %i.p = add i32 %.028.i.i.i98, 7
  %i.q = icmp eq ptr %i.aa, %i.n
  br i1 %i.q, label %._crit_edge, label %.lr.ph99, !prof !176, !llvm.loop !0

.lr.ph99:                                         ; preds = %bb.a, %bb.b
  %.028.i.i.i98 = phi i32 [ %i.p, %bb.b ], [ 0, %bb.a ] ; 5 uses
  %.029.i.i.i97 = phi i64 [ %.130.i.i.i, %bb.b ], [ 0, %bb.a ]
  %.031.i.i.i96 = phi ptr [ %i.aa, %bb.b ], [ %i.l, %bb.a ] ; 2 uses
  %i.r = load i8, ptr %.031.i.i.i96, align 1, !tbaa !45 ; 2 uses
  %i.s = and i8 %i.r, 127                         ; 3 uses
  %i.t = zext nneg i8 %i.s to i64
  %i.u = icmp ugt i32 %.028.i.i.i98, 62
  br i1 %i.u, label %bb.c, label %bb.d, !prof !178

bb.c:                                             ; preds = %.lr.ph99
  %.not44.i.i.i = icmp eq i32 %.028.i.i.i98, 63
  %.not.i.i.i = icmp samesign ugt i8 %i.s, 1
  %i.v = icmp ne i8 %i.s, 0
  %or.cond43.i.i.i = select i1 %.not44.i.i.i, i1 %.not.i.i.i, i1 %i.v
  br i1 %or.cond43.i.i.i, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph99
  %i.w = icmp ult i32 %.028.i.i.i98, 64
  %i.x = zext nneg i32 %.028.i.i.i98 to i64
  %i.y = shl i64 %i.t, %i.x
  %i.z = select i1 %i.w, i64 %i.y, i64 0, !prof !179
  %.130.i.i.i = add i64 %i.z, %.029.i.i.i97       ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.031.i.i.i96, i64 1 ; 3 uses
  %i.ab = icmp slt i8 %i.r, 0
  br i1 %i.ab, label %bb.b, label %_ZL11readULEB128RN4llvm6object14WasmObjectFile11ReadContextE.exit.i, !llvm.loop !0

._crit_edge:                                      ; preds = %bb.b, %bb.c, %bb.a
  %.0.ph.i.i = phi ptr [ @.str.164, %bb.a ], [ @.str.164, %bb.b ], [ @.str.165, %bb.c ]
  call void @_ZN4llvm18report_fatal_errorEPKcb(ptr noundef nonnull %.0.ph.i.i, i1 noundef zeroext true) #28
  unreachable

_ZL11readULEB128RN4llvm6object14WasmObjectFile11ReadContextE.exit.i: ; preds = %bb.d
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.l to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = and i64 %i.ae, 4294967295
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.af ; 2 uses
  store ptr %i.ag, ptr %i.k, align 8, !tbaa !200
  %i.ah = icmp ugt i64 %.130.i.i.i, 4294967295
  br i1 %i.ah, label %bb.e, label %_ZL13readVaruint32RN4llvm6object14WasmObjectFile11ReadContextE.exit.preheader

_ZL13readVaruint32RN4llvm6object14WasmObjectFile11ReadContextE.exit.preheader: ; preds = %_ZL11readULEB128RN4llvm6object14WasmObjectFile11ReadContextE.exit.i
  %.not59.not = icmp eq i64 %.130.i.i.i, 0
  br i1 %.not59.not, label %.critedge14, label %.lr.ph

.lr.ph:                                           ; preds = %_ZL13readVaruint32RN4llvm6object14WasmObjectFile11ReadContextE.exit.preheader
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 10 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 8 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 9 uses
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 288 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 280
  br label %bb.f

bb.e:                                             ; preds = %_ZL11readULEB128RN4llvm6object14WasmObjectFile11ReadContextE.exit.i
  call void @_ZN4llvm18report_fatal_errorEPKcb(ptr noundef nonnull @.str.163, i1 noundef zeroext true) #28
  unreachable

bb.f:                                             ; preds = %.lr.ph, %_ZN4llvm4wasm16WasmFeatureEntryD2Ev.exit
  %.01160 = phi i64 [ 0, %.lr.ph ], [ %i.fg, %_ZN4llvm4wasm16WasmFeatureEntryD2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  store ptr %i.aj, ptr %i.ai, align 8, !tbaa !182
  store i64 0, ptr %i.ak, align 8, !tbaa !184
  store i8 0, ptr %i.aj, align 8, !tbaa !45
  %i.ar = load ptr, ptr %i.k, align 8, !tbaa !200 ; 3 uses
  %i.as = load ptr, ptr %i.m, align 8, !tbaa !199 ; 4 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %bb.g, label %_ZL9readUint8RN4llvm6object14WasmObjectFile11ReadContextE.exit

bb.g:                                             ; preds = %bb.f
  call void @_ZN4llvm18report_fatal_errorEPKcb(ptr noundef nonnull @.str.168, i1 noundef zeroext true) #28
  unreachable

_ZL9readUint8RN4llvm6object14WasmObjectFile11ReadContextE.exit: ; preds = %bb.f
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 1 ; 5 uses
  store ptr %i.au, ptr %i.k, align 8, !tbaa !200
  %i.av = load i8, ptr %i.ar, align 1, !tbaa !45  ; 2 uses
  store i8 %i.av, ptr %7, align 8, !tbaa !363
  switch i8 %i.av, label %bb.h [
    i8 43, label %bb.i
    i8 45, label %bb.i
  ]

bb.h:                                             ; preds = %_ZL9readUint8RN4llvm6object14WasmObjectFile11ReadContextE.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !1153)
  %i.aw = call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #27, !noalias !1154 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26, !noalias !1154
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 1, ptr %i.ax, align 1, !tbaa !44, !noalias !1154
  store ptr @.str.71, ptr %5, align 8, !tbaa !45, !noalias !1154
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 3, ptr %i.ay, align 8, !tbaa !43, !noalias !1154
  call void @_ZN4llvm6object18GenericBinaryErrorC1ERKNS_5TwineENS0_12object_errorE(ptr noundef nonnull align 8 dereferenceable(56) %i.aw, ptr noundef nonnull align 8 dereferenceable(34) %5, i32 noundef 3) #26, !noalias !1154
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26, !noalias !1154
  store ptr %i.aw, ptr %0, align 8, !tbaa !48, !alias.scope !1153
  br label %.critedge

bb.i:                                             ; preds = %_ZL9readUint8RN4llvm6object14WasmObjectFile11ReadContextE.exit, %_ZL9readUint8RN4llvm6object14WasmObjectFile11ReadContextE.exit
end_hunk_0
begin_hunk_1_@_ZN4llvm6object14WasmObjectFile26parseTargetFeaturesSectionERNS1_11ReadContextE:bb.a
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cu) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  call void @_ZN4llvm8SmallSetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELj8ESt4lessIS6_EE10insertImplIRKS6_EESt4pairINS_16SmallSetIteratorIS6_Lj8ES8_EEbEOT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.177") align 8 %9, ptr noundef nonnull align 8 dereferenceable(320) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.ai)
  %i.cv = load i8, ptr %i.an, align 8, !tbaa !366, !range !201, !noundef !202
  %i.cw = trunc nuw i8 %i.cv to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br i1 %i.cw, label %bb.ab, label %bb.w

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !1155)
  %i.cx = load ptr, ptr %i.ai, align 8, !tbaa !188, !noalias !1155
  %i.cy = load i64, ptr %i.ak, align 8, !tbaa !184, !noalias !1155 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  store ptr %i.cz, ptr %11, align 8, !tbaa !182, !alias.scope !1156
  %i.da = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  store i64 0, ptr %i.da, align 8, !tbaa !184, !alias.scope !1156
  store i8 0, ptr %i.cz, align 8, !tbaa !45, !alias.scope !1156
  %i.db = add i64 %i.cy, 51
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef %i.db) #26
  %i.dc = load i64, ptr %i.da, align 8, !tbaa !184, !alias.scope !1156
  %i.dd = add i64 %i.dc, -4611686018427387853
  %i.de = icmp ult i64 %i.dd, 51
  br i1 %i.de, label %bb.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i

bb.x:                                             ; preds = %bb.w
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.179) #28
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %bb.w
  %i.df = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.72, i64 noundef 51) #26 ; 0 uses
  %i.dg = load i64, ptr %i.da, align 8, !tbaa !184, !alias.scope !1156
  %i.dh = sub i64 4611686018427387903, %i.dg
  %i.di = icmp ult i64 %i.dh, %i.cy
  br i1 %i.di, label %bb.y, label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.179) #28
  unreachable

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.dj = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef %i.cx, i64 noundef %i.cy) #26 ; 0 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1157)
  %i.dk = load i64, ptr %i.da, align 8, !tbaa !184, !noalias !1157
  %i.dl = icmp eq i64 %i.dk, 4611686018427387903
  br i1 %i.dl, label %bb.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.z:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.179) #28, !noalias !1157
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  %i.dm = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.73, i64 noundef 1) #26, !noalias !1157 ; 6 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  store ptr %i.dn, ptr %10, align 8, !tbaa !182, !alias.scope !1157
  %i.do = load ptr, ptr %i.dm, align 8, !tbaa !188 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 16 ; 5 uses
  %i.dq = icmp eq ptr %i.do, %i.dp
  br i1 %i.dq, label %bb.aa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !184 ; 3 uses
  %i.dt = icmp ult i64 %i.ds, 16
  call void @llvm.assume(i1 %i.dt)
  %i.du = add nuw nsw i64 %i.ds, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dn, ptr noundef nonnull align 8 dereferenceable(1) %i.dp, i64 %i.du, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.do, ptr %10, align 8, !tbaa !188, !alias.scope !1157
  %i.dv = load i64, ptr %i.dp, align 8, !tbaa !45
  store i64 %i.dv, ptr %i.dn, align 8, !tbaa !45, !alias.scope !1157
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %.pre.i25 = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !184
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  %i.dw = phi i64 [ %i.ds, %bb.aa ], [ %.pre.i25, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24 ]
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.dy = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.dw, ptr %i.dy, align 8, !tbaa !184, !alias.scope !1157
  store ptr %i.dp, ptr %i.dm, align 8, !tbaa !188
  store i64 0, ptr %i.dx, align 8, !tbaa !184
  store i8 0, ptr %i.dp, align 8, !tbaa !45
  call void @llvm.experimental.noalias.scope.decl(metadata !1158)
  %i.dz = call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #27, !noalias !1159 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26, !noalias !1159
  %i.ea = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i8 4, ptr %i.ea, align 8, !tbaa !43, !noalias !1159
  %i.eb = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 1, ptr %i.eb, align 1, !tbaa !44, !noalias !1159
  store ptr %10, ptr %4, align 8, !tbaa !45, !noalias !1159
  call void @_ZN4llvm6object18GenericBinaryErrorC1ERKNS_5TwineENS0_12object_errorE(ptr noundef nonnull align 8 dereferenceable(56) %i.dz, ptr noundef nonnull align 8 dereferenceable(34) %4, i32 noundef 3) #26, !noalias !1159
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26, !noalias !1159
  store ptr %i.dz, ptr %0, align 8, !tbaa !48, !alias.scope !1158
  %i.ec = load ptr, ptr %10, align 8, !tbaa !188  ; 2 uses
  %i.ed = icmp eq ptr %i.ec, %i.dn
  br i1 %i.ed, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit
  %i.ee = load i64, ptr %i.dn, align 8, !tbaa !45
  %i.ef = add i64 %i.ee, 1
  call void @_ZdlPvm(ptr noundef %i.ec, i64 noundef %i.ef) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  %i.eg = load ptr, ptr %11, align 8, !tbaa !188  ; 2 uses
  %i.eh = icmp eq ptr %i.eg, %i.cz
  br i1 %i.eh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28
  %i.ei = load i64, ptr %i.cz, align 8, !tbaa !45
  %i.ej = add i64 %i.ei, 1
  call void @_ZdlPvm(ptr noundef %i.eg, i64 noundef %i.ej) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %.critedge

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ek = load ptr, ptr %i.ao, align 8, !tbaa !367 ; 6 uses
  %i.el = load ptr, ptr %i.ap, align 8, !tbaa !368
  %.not.i32 = icmp eq ptr %i.ek, %i.el
  br i1 %.not.i32, label %bb.ag, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.em = load i8, ptr %7, align 8, !tbaa !363
  store i8 %i.em, ptr %i.ek, align 8, !tbaa !363
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 8 ; 4 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ek, i64 24 ; 3 uses
  store ptr %i.eo, ptr %i.en, align 8, !tbaa !182
  %i.ep = load ptr, ptr %i.ai, align 8, !tbaa !188 ; 2 uses
  %i.eq = load i64, ptr %i.ak, align 8, !tbaa !184 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.eq, ptr %i.a, align 8, !tbaa !28
  %i.er = icmp ugt i64 %i.eq, 15
  br i1 %i.er, label %bb.ad, label %._crit_edge.i.i.i.i33

bb.ad:                                            ; preds = %bb.ac
  %i.es = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.en, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #26 ; 2 uses
  store ptr %i.es, ptr %i.en, align 8, !tbaa !188
  %i.et = load i64, ptr %i.a, align 8, !tbaa !28
  store i64 %i.et, ptr %i.eo, align 8, !tbaa !45
  br label %._crit_edge.i.i.i.i33

._crit_edge.i.i.i.i33:                            ; preds = %bb.ad, %bb.ac
  %i.eu = phi ptr [ %i.es, %bb.ad ], [ %i.eo, %bb.ac ] ; 2 uses
  switch i64 %i.eq, label %bb.af [
    i64 1, label %bb.ae
    i64 0, label %_ZN4llvm4wasm16WasmFeatureEntryC2ERKS1_.exit.i
  ]

bb.ae:                                            ; preds = %._crit_edge.i.i.i.i33
  %i.ev = load i8, ptr %i.ep, align 1, !tbaa !45
  store i8 %i.ev, ptr %i.eu, align 1, !tbaa !45
  br label %_ZN4llvm4wasm16WasmFeatureEntryC2ERKS1_.exit.i

bb.af:                                            ; preds = %._crit_edge.i.i.i.i33
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.eu, ptr align 1 %i.ep, i64 %i.eq, i1 false)
  br label %_ZN4llvm4wasm16WasmFeatureEntryC2ERKS1_.exit.i

_ZN4llvm4wasm16WasmFeatureEntryC2ERKS1_.exit.i:   ; preds = %bb.af, %bb.ae, %._crit_edge.i.i.i.i33
  %i.ew = load i64, ptr %i.a, align 8, !tbaa !28  ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  store i64 %i.ew, ptr %i.ex, align 8, !tbaa !184
  %i.ey = load ptr, ptr %i.en, align 8, !tbaa !188
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.ew
  store i8 0, ptr %i.ez, align 1, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.fa = load ptr, ptr %i.ao, align 8, !tbaa !367
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 40
  store ptr %i.fb, ptr %i.ao, align 8, !tbaa !367
  br label %_ZNSt6vectorIN4llvm4wasm16WasmFeatureEntryESaIS2_EE9push_backERKS2_.exit

bb.ag:                                            ; preds = %bb.ab
  call void @_ZNSt6vectorIN4llvm4wasm16WasmFeatureEntryESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr %i.ek, ptr noundef nonnull align 8 dereferenceable(40) %7)
  br label %_ZNSt6vectorIN4llvm4wasm16WasmFeatureEntryESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN4llvm4wasm16WasmFeatureEntryESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZN4llvm4wasm16WasmFeatureEntryC2ERKS1_.exit.i, %bb.ag
  %i.fc = load ptr, ptr %i.ai, align 8, !tbaa !188 ; 2 uses
  %i.fd = icmp eq ptr %i.fc, %i.aj
  br i1 %i.fd, label %_ZN4llvm4wasm16WasmFeatureEntryD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN4llvm4wasm16WasmFeatureEntryESaIS2_EE9push_backERKS2_.exit
  %i.fe = load i64, ptr %i.aj, align 8, !tbaa !45
  %i.ff = add i64 %i.fe, 1
  call void @_ZdlPvm(ptr noundef %i.fc, i64 noundef %i.ff) #29
  br label %_ZN4llvm4wasm16WasmFeatureEntryD2Ev.exit

_ZN4llvm4wasm16WasmFeatureEntryD2Ev.exit:         ; preds = %_ZNSt6vectorIN4llvm4wasm16WasmFeatureEntryESaIS2_EE9push_backERKS2_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.fg = add nuw i64 %.01160, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.fg, %.130.i.i.i
  br i1 %exitcond.not, label %.critedge14.loopexit, label %bb.f, !llvm.loop !1148

.critedge:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, %bb.h
  %i.fh = load ptr, ptr %i.ai, align 8, !tbaa !188 ; 2 uses
  %i.fi = icmp eq ptr %i.fh, %i.aj
  br i1 %i.fi, label %_ZN4llvm4wasm16WasmFeatureEntryD2Ev.exit36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34: ; preds = %.critedge
  %i.fj = load i64, ptr %i.aj, align 8, !tbaa !45
  %i.fk = add i64 %i.fj, 1
  call void @_ZdlPvm(ptr noundef %i.fh, i64 noundef %i.fk) #29
  br label %_ZN4llvm4wasm16WasmFeatureEntryD2Ev.exit36

_ZN4llvm4wasm16WasmFeatureEntryD2Ev.exit36:       ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.ai

.critedge14.loopexit:                             ; preds = %_ZN4llvm4wasm16WasmFeatureEntryD2Ev.exit
  %.pre = load ptr, ptr %i.k, align 8, !tbaa !200
  %.pre62 = load ptr, ptr %i.m, align 8, !tbaa !199
  br label %.critedge14

.critedge14:                                      ; preds = %.critedge14.loopexit, %_ZL13readVaruint32RN4llvm6object14WasmObjectFile11ReadContextE.exit.preheader
  %i.fl = phi ptr [ %.pre62, %.critedge14.loopexit ], [ %i.n, %_ZL13readVaruint32RN4llvm6object14WasmObjectFile11ReadContextE.exit.preheader ]
  %i.fm = phi ptr [ %.pre, %.critedge14.loopexit ], [ %i.ag, %_ZL13readVaruint32RN4llvm6object14WasmObjectFile11ReadContextE.exit.preheader ]
  %.not12 = icmp eq ptr %i.fm, %i.fl
  br i1 %.not12, label %_ZN4llvm5ErrorD2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %.critedge14
  call void @llvm.experimental.noalias.scope.decl(metadata !1160)
  %i.fn = call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #27, !noalias !1161 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26, !noalias !1161
  %i.fo = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 1, ptr %i.fo, align 1, !tbaa !44, !noalias !1161
  store ptr @.str.74, ptr %3, align 8, !tbaa !45, !noalias !1161
  %i.fp = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 3, ptr %i.fp, align 8, !tbaa !43, !noalias !1161
  call void @_ZN4llvm6object18GenericBinaryErrorC1ERKNS_5TwineENS0_12object_errorE(ptr noundef nonnull align 8 dereferenceable(56) %i.fn, ptr noundef nonnull align 8 dereferenceable(34) %3, i32 noundef 3) #26, !noalias !1161
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26, !noalias !1161
  store ptr %i.fn, ptr %0, align 8, !tbaa !48, !alias.scope !1160
  br label %bb.ai

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %.critedge14
  store ptr null, ptr %0, align 8, !tbaa !48
  br label %bb.ai

bb.ai:                                            ; preds = %_ZN4llvm4wasm16WasmFeatureEntryD2Ev.exit36, %_ZN4llvm5ErrorD2Ev.exit, %bb.ah
  %i.fq = getelementptr inbounds nuw i8, ptr %6, i64 272
  %i.fr = load ptr, ptr %i.g, align 8, !tbaa !352
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %i.fq, ptr noundef %i.fr)
  %i.fs = load ptr, ptr %6, align 8, !tbaa !204   ; 3 uses
  %i.ft = load i32, ptr %i.d, align 8, !tbaa !205 ; 2 uses
  %.not4.i.i.i = icmp eq i32 %i.ft, 0
  br i1 %.not4.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE13destroy_rangeEPS6_S8_.exit.i.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %bb.ai
  %i.fu = zext i32 %i.ft to i64
  %.idx.i.i = shl nuw nsw i64 %i.fu, 5
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fs, i64 %.idx.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %.lr.ph.i.preheader.i.i
  %.05.i.i.i = phi ptr [ %i.fw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.fv, %.lr.ph.i.preheader.i.i ] ; 2 uses
  %i.fw = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -32 ; 3 uses
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !188 ; 2 uses
  %i.fy = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -16 ; 2 uses
  %i.fz = icmp eq ptr %i.fx, %i.fy
  br i1 %i.fz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ga = load i64, ptr %i.fy, align 8, !tbaa !45
  %i.gb = add i64 %i.ga, 1
  call void @_ZdlPvm(ptr noundef %i.fx, i64 noundef %i.gb) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %.not.i.i.i37 = icmp eq ptr %i.fs, %i.fw
  br i1 %.not.i.i.i37, label %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !8

_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %.pre.i.i = load ptr, ptr %6, align 8, !tbaa !204
  br label %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE13destroy_rangeEPS6_S8_.exit.i.i

_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE13destroy_rangeEPS6_S8_.exit.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i, %bb.ai
  %i.gc = phi ptr [ %.pre.i.i, %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i ], [ %i.fs, %bb.ai ] ; 2 uses
  %i.gd = icmp eq ptr %i.gc, %i.c
  br i1 %i.gd, label %_ZN4llvm8SmallSetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELj8ESt4lessIS6_EED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE13destroy_rangeEPS6_S8_.exit.i.i
  call void @free(ptr noundef %i.gc) #26
  br label %_ZN4llvm8SmallSetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELj8ESt4lessIS6_EED2Ev.exit

_ZN4llvm8SmallSetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELj8ESt4lessIS6_EED2Ev.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE13destroy_rangeEPS6_S8_.exit.i.i, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm6object14WasmObjectFile17parseRelocSectionENS_9StringRefERNS1_11ReadContextE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.llvm::Error") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(708) %1, ptr nofree readnone captures(none) %2, i64 %3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 8 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 8 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 8 uses
  %10 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %12 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %13 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %14 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %15 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %16 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %17 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 10 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !200  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !199  ; 5 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %._crit_edge581, label %.lr.ph580, !prof !175

bb.b:                                             ; preds = %bb.d
  %i.f = add i32 %.028.i.i.i578, 7
  %i.g = icmp eq ptr %i.q, %i.d
  br i1 %i.g, label %._crit_edge581, label %.lr.ph580, !prof !176, !llvm.loop !0

.lr.ph580:                                        ; preds = %bb.a, %bb.b
  %.028.i.i.i578 = phi i32 [ %i.f, %bb.b ], [ 0, %bb.a ] ; 5 uses
  %.029.i.i.i577 = phi i64 [ %.130.i.i.i, %bb.b ], [ 0, %bb.a ]
  %.031.i.i.i576 = phi ptr [ %i.q, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %i.h = load i8, ptr %.031.i.i.i576, align 1, !tbaa !45 ; 2 uses
  %i.i = and i8 %i.h, 127                         ; 3 uses
  %i.j = zext nneg i8 %i.i to i64
  %i.k = icmp ugt i32 %.028.i.i.i578, 62
  br i1 %i.k, label %bb.c, label %bb.d, !prof !178

bb.c:                                             ; preds = %.lr.ph580
  %.not44.i.i.i = icmp eq i32 %.028.i.i.i578, 63
  %.not.i.i.i = icmp samesign ugt i8 %i.i, 1
  %i.l = icmp ne i8 %i.i, 0
  %or.cond43.i.i.i = select i1 %.not44.i.i.i, i1 %.not.i.i.i, i1 %i.l
  br i1 %or.cond43.i.i.i, label %._crit_edge581, label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph580
  %i.m = icmp ult i32 %.028.i.i.i578, 64
  %i.n = zext nneg i32 %.028.i.i.i578 to i64
  %i.o = shl i64 %i.j, %i.n
  %i.p = select i1 %i.m, i64 %i.o, i64 0, !prof !179
  %.130.i.i.i = add i64 %i.p, %.029.i.i.i577      ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.031.i.i.i576, i64 1 ; 3 uses
  %i.r = icmp slt i8 %i.h, 0
  br i1 %i.r, label %bb.b, label %_ZL11readULEB128RN4llvm6object14WasmObjectFile11ReadContextE.exit.i, !llvm.loop !0

._crit_edge581:                                   ; preds = %bb.b, %bb.c, %bb.a
  %.0.ph.i.i = phi ptr [ @.str.164, %bb.a ], [ @.str.164, %bb.b ], [ @.str.165, %bb.c ]
  tail call void @_ZN4llvm18report_fatal_errorEPKcb(ptr noundef nonnull %.0.ph.i.i, i1 noundef zeroext true) #28
  unreachable

_ZL11readULEB128RN4llvm6object14WasmObjectFile11ReadContextE.exit.i: ; preds = %bb.d
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.b to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = and i64 %i.u, 4294967295
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.v ; 5 uses
  store ptr %i.w, ptr %i.a, align 8, !tbaa !200
  %i.x = icmp ugt i64 %.130.i.i.i, 4294967295
  br i1 %i.x, label %bb.e, label %_ZL13readVaruint32RN4llvm6object14WasmObjectFile11ReadContextE.exit

bb.e:                                             ; preds = %_ZL11readULEB128RN4llvm6object14WasmObjectFile11ReadContextE.exit.i
  tail call void @_ZN4llvm18report_fatal_errorEPKcb(ptr noundef nonnull @.str.163, i1 noundef zeroext true) #28
  unreachable

_ZL13readVaruint32RN4llvm6object14WasmObjectFile11ReadContextE.exit: ; preds = %_ZL11readULEB128RN4llvm6object14WasmObjectFile11ReadContextE.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !189
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !241 ; 2 uses
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = sdiv exact i64 %i.ae, 80
  %.not = icmp ugt i64 %i.af, %.130.i.i.i
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZL13readVaruint32RN4llvm6object14WasmObjectFile11ReadContextE.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1218)
  %i.ag = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #27, !noalias !1219 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26, !noalias !1219
  %i.ah = getelementptr inbounds nuw i8, ptr %14, i64 33
  store i8 1, ptr %i.ah, align 1, !tbaa !44, !noalias !1219
  store ptr @.str.75, ptr %14, align 8, !tbaa !45, !noalias !1219
  %i.ai = getelementptr inbounds nuw i8, ptr %14, i64 32
  store i8 3, ptr %i.ai, align 8, !tbaa !43, !noalias !1219
  call void @_ZN4llvm6object18GenericBinaryErrorC1ERKNS_5TwineENS0_12object_errorE(ptr noundef nonnull align 8 dereferenceable(56) %i.ag, ptr noundef nonnull align 8 dereferenceable(34) %14, i32 noundef 3) #26, !noalias !1219
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26, !noalias !1219
  store ptr %i.ag, ptr %0, align 8, !tbaa !48, !alias.scope !1218
  br label %.critedge78

bb.g:                                             ; preds = %_ZL13readVaruint32RN4llvm6object14WasmObjectFile11ReadContextE.exit
  %i.aj = getelementptr inbounds nuw [80 x i8], ptr %i.ab, i64 %.130.i.i.i ; 4 uses
end_hunk_1
