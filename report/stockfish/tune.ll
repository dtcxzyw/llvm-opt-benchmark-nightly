Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stockfish/original/tune?download=true
inline.NumInlined: 399
inline.NumDeleted: 246
begin_hunk_0_@_ZN9Stockfish4Tune11make_optionEPNS_10OptionsMapERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiRKNS_8SetRangeE:bb.a
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.o, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.q = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.q, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.q, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.d, !llvm.loop !82

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.r = icmp eq ptr %.19.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_111TuneResultsB5cxx11E, i64 8)
  br i1 %i.r, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE5countERS9_.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.t = load i64, ptr %i.s, align 8, !tbaa !38   ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.t, i64 %i.h) ; 2 uses
  %i.u = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.u, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !39
  %i.x = tail call i32 @memcmp(ptr noundef %i.i, ptr noundef %i.w, i64 noundef %.sroa.speculated.i.i.i.i.i) #16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.x, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE5countERS9_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.e
  %i.y = sub i64 %i.h, %i.t
  %spec.select7.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.y, i64 -2147483648)
  %.08.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE5countERS9_.exit

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE5countERS9_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.x, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.z = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.z, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE5countERS9_.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE5countERS9_.exit
  %i.aa = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEEixERS9_(ptr noundef nonnull align 8 dereferenceable(48) @_ZN9Stockfish12_GLOBAL__N_111TuneResultsB5cxx11E, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !42
  br label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE5countERS9_.exit.thread

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE5countERS9_.exit.thread: ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, %bb.c, %bb.f, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE5countERS9_.exit
  %.0 = phi i32 [ %i.ab, %bb.f ], [ %2, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE5countERS9_.exit ], [ %2, %bb.c ], [ %2, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.ac = load ptr, ptr %3, align 8, !tbaa !87    ; 2 uses
  %.not.i41 = icmp eq ptr %i.ac, null
  br i1 %.not.i41, label %_ZNK9Stockfish8SetRangeclEi.exit44.thread, label %_ZNK9Stockfish8SetRangeclEi.exit44

_ZNK9Stockfish8SetRangeclEi.exit44.thread:        ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE5countERS9_.exit.thread
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.0.0.copyload.i43 = load i64, ptr %i.ad, align 8 ; 2 uses
  br label %_ZNK9Stockfish8SetRangeclEi.exit48

_ZNK9Stockfish8SetRangeclEi.exit44:               ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE5countERS9_.exit.thread
  %i.ae = tail call i64 %i.ac(i32 noundef %.0) #16, !inline_history !81 ; 2 uses
  %.pr74 = load ptr, ptr %3, align 8, !tbaa !87   ; 2 uses
  %.not.i45 = icmp eq ptr %.pr74, null
  br i1 %.not.i45, label %_ZNK9Stockfish8SetRangeclEi.exit44._crit_edge, label %bb.g

_ZNK9Stockfish8SetRangeclEi.exit44._crit_edge:    ; preds = %_ZNK9Stockfish8SetRangeclEi.exit44
  %.phi.trans.insert88 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.0.0.copyload.i47.pre = load i64, ptr %.phi.trans.insert88, align 8
  br label %_ZNK9Stockfish8SetRangeclEi.exit48

bb.g:                                             ; preds = %_ZNK9Stockfish8SetRangeclEi.exit44
  %i.af = tail call i64 %.pr74(i32 noundef %.0) #16, !inline_history !81
  br label %_ZNK9Stockfish8SetRangeclEi.exit48

_ZNK9Stockfish8SetRangeclEi.exit48:               ; preds = %_ZNK9Stockfish8SetRangeclEi.exit44.thread, %_ZNK9Stockfish8SetRangeclEi.exit44._crit_edge, %bb.g
  %.sroa.08.0.extract.trunc78.in = phi i64 [ %i.ae, %bb.g ], [ %.sroa.0.0.copyload.i43, %_ZNK9Stockfish8SetRangeclEi.exit44.thread ], [ %i.ae, %_ZNK9Stockfish8SetRangeclEi.exit44._crit_edge ]
  %.sroa.0.0.i46 = phi i64 [ %i.af, %bb.g ], [ %.sroa.0.0.copyload.i43, %_ZNK9Stockfish8SetRangeclEi.exit44.thread ], [ %.sroa.0.0.copyload.i47.pre, %_ZNK9Stockfish8SetRangeclEi.exit44._crit_edge ]
  %.sroa.08.0.extract.trunc78 = trunc i64 %.sroa.08.0.extract.trunc78.in to i32
  %.sroa.37.0.extract.shift = lshr i64 %.sroa.0.0.i46, 32
  %.sroa.37.0.extract.trunc = trunc nuw i64 %.sroa.37.0.extract.shift to i32
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.ai, align 8
  store ptr @_ZN9Stockfish12_GLOBAL__N_17on_tuneB5cxx11ERKNS_6OptionE, ptr %5, align 8, !tbaa !43
  store ptr @_ZNSt17_Function_handlerIFSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERKN9Stockfish6OptionEEPSC_E9_M_invokeERKSt9_Any_dataSB_, ptr %i.ah, align 8, !tbaa !90
  store ptr @_ZNSt17_Function_handlerIFSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERKN9Stockfish6OptionEEPSC_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation, ptr %i.ag, align 8, !tbaa !91
  call void @_ZN9Stockfish6OptionC1EiiiSt8functionIFSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERKS0_EE(ptr noundef nonnull align 8 dereferenceable(152) %4, i32 noundef %.0, i32 noundef %.sroa.08.0.extract.trunc78, i32 noundef %.sroa.37.0.extract.trunc, ptr noundef nonnull align 8 %5) #16
  call void @_ZN9Stockfish10OptionsMap3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(152) %4) #16
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !91 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNK9Stockfish8SetRangeclEi.exit48
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 2 uses
  %i.am = call noundef zeroext i1 %i.ak(ptr noundef nonnull align 8 dereferenceable(32) %i.al, ptr noundef nonnull align 8 dereferenceable(32) %i.al, i32 noundef 3) #16, !inline_history !83 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit.i

_ZNSt14_Function_baseD2Ev.exit.i:                 ; preds = %bb.h, %_ZNK9Stockfish8SetRangeclEi.exit48
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !39 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit.i
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !44
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !39 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !44
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.az = load ptr, ptr %4, align 8, !tbaa !39    ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZN9Stockfish6OptionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !44
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #17
  br label %_ZN9Stockfish6OptionD2Ev.exit

_ZN9Stockfish6OptionD2Ev.exit:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  %i.be = load ptr, ptr %i.ag, align 8, !tbaa !91 ; 2 uses
  %.not.i49 = icmp eq ptr %i.be, null
  br i1 %.not.i49, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN9Stockfish6OptionD2Ev.exit
  %i.bf = call noundef zeroext i1 %i.be(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3) #16, !inline_history !84 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZN9Stockfish6OptionD2Ev.exit, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.bg = call noundef nonnull align 8 dereferenceable(152) ptr @_ZNK9Stockfish10OptionsMapixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #16
  store ptr %i.bg, ptr @_ZN9Stockfish10LastOptionE, align 8, !tbaa !93
  %i.bh = load ptr, ptr %1, align 8, !tbaa !39
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !38
  %i.bk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.bh, i64 noundef %i.bj) #16 ; 2 uses
  %i.bl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bk, ptr noundef nonnull @.str, i64 noundef 1) #16 ; 0 uses
  %i.bm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.bk, i32 noundef %.0) #16 ; 2 uses
  %i.bn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bm, ptr noundef nonnull @.str, i64 noundef 1) #16 ; 0 uses
  %i.bo = load ptr, ptr %3, align 8, !tbaa !87    ; 2 uses
  %.not.i50 = icmp eq ptr %i.bo, null
  br i1 %.not.i50, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.bp = call i64 %i.bo(i32 noundef %.0) #16, !inline_history !81
  br label %_ZNK9Stockfish8SetRangeclEi.exit53

bb.k:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.0.0.copyload.i52 = load i64, ptr %i.bq, align 8
  br label %_ZNK9Stockfish8SetRangeclEi.exit53

_ZNK9Stockfish8SetRangeclEi.exit53:               ; preds = %bb.j, %bb.k
  %.sroa.0.0.i51 = phi i64 [ %i.bp, %bb.j ], [ %.sroa.0.0.copyload.i52, %bb.k ]
  %.sroa.04.0.extract.trunc = trunc i64 %.sroa.0.0.i51 to i32
  %i.br = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.bm, i32 noundef %.sroa.04.0.extract.trunc) #16 ; 2 uses
  %i.bs = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.br, ptr noundef nonnull @.str, i64 noundef 1) #16 ; 0 uses
  %i.bt = load ptr, ptr %3, align 8, !tbaa !87    ; 2 uses
  %.not.i54 = icmp eq ptr %i.bt, null
  br i1 %.not.i54, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNK9Stockfish8SetRangeclEi.exit53
  %i.bu = call i64 %i.bt(i32 noundef %.0) #16, !inline_history !81
  br label %_ZNK9Stockfish8SetRangeclEi.exit57

bb.m:                                             ; preds = %_ZNK9Stockfish8SetRangeclEi.exit53
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.0.0.copyload.i56 = load i64, ptr %i.bv, align 8
  br label %_ZNK9Stockfish8SetRangeclEi.exit57

_ZNK9Stockfish8SetRangeclEi.exit57:               ; preds = %bb.l, %bb.m
  %.sroa.0.0.i55 = phi i64 [ %i.bu, %bb.l ], [ %.sroa.0.0.copyload.i56, %bb.m ]
  %.sroa.33.0.extract.shift = lshr i64 %.sroa.0.0.i55, 32
  %.sroa.33.0.extract.trunc = trunc nuw i64 %.sroa.33.0.extract.shift to i32
  %i.bw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.br, i32 noundef %.sroa.33.0.extract.trunc) #16 ; 2 uses
  %i.bx = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bw, ptr noundef nonnull @.str, i64 noundef 1) #16 ; 0 uses
  %i.by = load ptr, ptr %3, align 8, !tbaa !87    ; 2 uses
  %.not.i58 = icmp eq ptr %i.by, null
  br i1 %.not.i58, label %_ZNK9Stockfish8SetRangeclEi.exit61.thread, label %_ZNK9Stockfish8SetRangeclEi.exit61

_ZNK9Stockfish8SetRangeclEi.exit61.thread:        ; preds = %_ZNK9Stockfish8SetRangeclEi.exit57
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 12
  %.sroa.3.0.extract.trunc83 = load i32, ptr %i.bz, align 4
  br label %bb.n

_ZNK9Stockfish8SetRangeclEi.exit61:               ; preds = %_ZNK9Stockfish8SetRangeclEi.exit57
  %i.ca = call i64 %i.by(i32 noundef %.0) #16, !inline_history !81
  %.pr80 = load ptr, ptr %3, align 8, !tbaa !87   ; 2 uses
  %.sroa.3.0.extract.shift = lshr i64 %i.ca, 32
  %.sroa.3.0.extract.trunc = trunc nuw i64 %.sroa.3.0.extract.shift to i32 ; 2 uses
  %.not.i62 = icmp eq ptr %.pr80, null
  br i1 %.not.i62, label %bb.n, label %_ZNK9Stockfish8SetRangeclEi.exit61._crit_edge

_ZNK9Stockfish8SetRangeclEi.exit61._crit_edge:    ; preds = %_ZNK9Stockfish8SetRangeclEi.exit61
  %6 = call i64 %.pr80(i32 noundef %.0) #16, !inline_history !81
  br label %_ZNK9Stockfish8SetRangeclEi.exit65

bb.n:                                             ; preds = %_ZNK9Stockfish8SetRangeclEi.exit61.thread, %_ZNK9Stockfish8SetRangeclEi.exit61
  %.sroa.3.0.extract.trunc86 = phi i32 [ %.sroa.3.0.extract.trunc83, %_ZNK9Stockfish8SetRangeclEi.exit61.thread ], [ %.sroa.3.0.extract.trunc, %_ZNK9Stockfish8SetRangeclEi.exit61 ]
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.0.0.copyload.i64 = load i64, ptr %7, align 8
  br label %_ZNK9Stockfish8SetRangeclEi.exit65

_ZNK9Stockfish8SetRangeclEi.exit65:               ; preds = %_ZNK9Stockfish8SetRangeclEi.exit61._crit_edge, %bb.n
  %.sroa.3.0.extract.trunc85 = phi i32 [ %.sroa.3.0.extract.trunc, %_ZNK9Stockfish8SetRangeclEi.exit61._crit_edge ], [ %.sroa.3.0.extract.trunc86, %bb.n ]
  %.sroa.0.0.i63 = phi i64 [ %6, %_ZNK9Stockfish8SetRangeclEi.exit61._crit_edge ], [ %.sroa.0.0.copyload.i64, %bb.n ]
  %.sroa.0.0.extract.trunc = trunc i64 %.sroa.0.0.i63 to i32
  %i.cb = sub nsw i32 %.sroa.3.0.extract.trunc85, %.sroa.0.0.extract.trunc
  %i.cc = sitofp i32 %i.cb to double
  %i.cd = fdiv double %i.cc, 2.000000e+01
  %i.ce = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bw, double noundef %i.cd) #16 ; 5 uses
  %i.cf = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ce, ptr noundef nonnull @.str, i64 noundef 1) #16 ; 0 uses
  %i.cg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ce, ptr noundef nonnull @.str.1, i64 noundef 6) #16 ; 0 uses
  %i.ch = load ptr, ptr %i.ce, align 8, !tbaa !46
  %i.ci = getelementptr i8, ptr %i.ch, i64 -24
  %i.cj = load i64, ptr %i.ci, align 8
  %i.ck = getelementptr inbounds i8, ptr %i.ce, i64 %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 240
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !94 ; 6 uses
  %.not.i.i.i66 = icmp eq ptr %i.cm, null
  br i1 %.not.i.i.i66, label %bb.o, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.o:                                             ; preds = %_ZNK9Stockfish8SetRangeclEi.exit65
  call void @_ZSt16__throw_bad_castv() #18
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZNK9Stockfish8SetRangeclEi.exit65
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 56
  %i.co = load i8, ptr %i.cn, align 8, !tbaa !99
  %.not.i1.i.i = icmp eq i8 %i.co, 0
  br i1 %.not.i1.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 67
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !44
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.q:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.cm) #16
  %i.cr = load ptr, ptr %i.cm, align 8, !tbaa !46
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 48
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = call noundef signext i8 %i.ct(ptr noundef nonnull align 8 dereferenceable(570) %i.cm, i8 noundef signext 10) #16, !inline_history !85
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.p, %bb.q
  %.0.i.i.i = phi i8 [ %i.cq, %bb.p ], [ %i.cu, %bb.q ]
  %i.cv = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ce, i8 noundef signext %.0.i.i.i) #16
  %i.cw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cv) #16 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %_ZNK9Stockfish8SetRangeclEi.exit40, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEEixERS9_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 !guid !101 {
bb.a:
  %2 = alloca %"class.std::tuple.24", align 8     ; 4 uses
  %3 = alloca %"class.std::tuple.27", align 1     ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !38   ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !38   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !39
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.b
  %i.m = sub i64 %i.h, %i.e
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.m, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.l, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.n = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.n, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 7 uses
  %.1.in.v.i.i.i = select i1 %i.n, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE11lower_boundERS9_.exit, label %bb.b, !llvm.loop !100

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE11lower_boundERS9_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.o, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE11lower_boundERS9_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !38   ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.e) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !39
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i) #16 ; 2 uses
  %.not.i.i.i4 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i4, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.c
  %i.v = sub i64 %i.e, %i.q
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.v, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.u, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.w = icmp slt i32 %.0.i.i.i, 0
  br i1 %i.w, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE11lower_boundERS9_.exit, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.08.lcssa.i.i.i12 = phi ptr [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ], [ %.19.i.i.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE11lower_boundERS9_.exit ], [ %i.c, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  store ptr %1, ptr %2, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.x = call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i12, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.sroa.07.0 = phi ptr [ %i.x, %.critedge ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ]
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.07.0, i64 64
  ret ptr %i.y
}

declare void @_ZN9Stockfish10OptionsMap3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(152)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN9Stockfish12_GLOBAL__N_17on_tuneB5cxx11ERKNS_6OptionE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::optional") align 8 captures(none) %0, ptr nofree noundef nonnull readnone align 8 captures(address) dereferenceable(152) %1) #0 !guid !103 {
bb.a:
  %i.a = load i8, ptr @_ZN9Stockfish4Tune14update_on_lastE, align 1, !tbaa !104, !range !105, !noundef !65
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load ptr, ptr @_ZN9Stockfish10LastOptionE, align 8
  %i.d = icmp ne ptr %i.c, %1
  %or.cond.not = select i1 %i.b, i1 %i.d, i1 false
  br i1 %or.cond.not, label %_ZN9Stockfish4Tune12read_optionsEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load atomic i8, ptr @_ZGVZN9Stockfish4Tune8instanceEvE1t acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.c, label %_ZN9Stockfish4Tune8instanceEv.exit.i, !prof !106

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9Stockfish4Tune8instanceEvE1t) #16
  %.not.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i, label %_ZN9Stockfish4Tune8instanceEv.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN9Stockfish4Tune8instanceEvE1t, i8 0, i64 24, i1 false)
  %i.h = tail call i32 @__cxa_atexit(ptr nonnull @_ZN9Stockfish4TuneD2Ev, ptr nonnull @_ZZN9Stockfish4Tune8instanceEvE1t, ptr nonnull @__dso_handle) #16 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN9Stockfish4Tune8instanceEvE1t) #16
  br label %_ZN9Stockfish4Tune8instanceEv.exit.i

_ZN9Stockfish4Tune8instanceEv.exit.i:             ; preds = %bb.d, %bb.c, %bb.b
  %i.i = load ptr, ptr @_ZZN9Stockfish4Tune8instanceEvE1t, align 8, !tbaa !107 ; 2 uses
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9Stockfish4Tune8instanceEvE1t, i64 8), align 8, !tbaa !107 ; 2 uses
  %.not6.i = icmp eq ptr %i.i, %i.j
  br i1 %.not6.i, label %_ZN9Stockfish4Tune12read_optionsEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN9Stockfish4Tune8instanceEv.exit.i, %.lr.ph.i
  %.sroa.03.07.i = phi ptr [ %i.o, %.lr.ph.i ], [ %i.i, %_ZN9Stockfish4Tune8instanceEv.exit.i ] ; 2 uses
  %i.k = load ptr, ptr %.sroa.03.07.i, align 8, !tbaa !68 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !46
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.k) #16, !inline_history !102
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.o, %i.j
  br i1 %.not.i, label %_ZN9Stockfish4Tune12read_optionsEv.exit, label %.lr.ph.i

_ZN9Stockfish4Tune12read_optionsEv.exit:          ; preds = %.lr.ph.i, %_ZN9Stockfish4Tune8instanceEv.exit.i, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.p, align 8, !tbaa !109
  ret void
end_hunk_0
