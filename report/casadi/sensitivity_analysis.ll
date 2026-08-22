Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/sensitivity_analysis?download=true
inline.NumInlined: 1808
inline.NumDeleted: 577
loop-unroll.NumCompletelyUnrolled: 56
loop-unroll.NumUnrolled: 56
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@main:bb.a
  store i64 50, ptr %i.axy, align 8, !tbaa !155
  %i.axz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.40, i64 noundef 33)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit863 unwind label %.loopexit3431 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit863: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i860
  %i.aya = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.41, i64 noundef 13)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit865 unwind label %.loopexit3431 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit865: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit863
  %i.ayb = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6casadi6MatrixIdE8nonzerosEv(ptr noundef nonnull align 8 dereferenceable(40) %54)
          to label %bb.ed unwind label %.loopexit3431

bb.ed:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit865
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  invoke void @_ZN6casadi3strIdEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIT_SaIS8_EEb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %20, ptr noundef nonnull align 8 dereferenceable(24) %i.ayb, i1 noundef zeroext false)
          to label %.noexc873 unwind label %.loopexit3431

.noexc873:                                        ; preds = %bb.ed
  %i.ayc = load ptr, ptr %20, align 8, !tbaa !13
  %i.ayd = load i64, ptr %i.lh, align 8, !tbaa !23
  %i.aye = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.ayc, i64 noundef %i.ayd)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i869 unwind label %bb.ee ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i869: ; preds = %.noexc873
  %i.ayf = load ptr, ptr %20, align 8, !tbaa !13  ; 2 uses
  %i.ayg = icmp eq ptr %i.ayf, %i.li
  br i1 %i.ayg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i872, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i870

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i870: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i869
  %i.ayh = load i64, ptr %i.li, align 8, !tbaa !18
  %i.ayi = add i64 %i.ayh, 1
  call void @_ZdlPvm(ptr noundef %i.ayf, i64 noundef %i.ayi) #21
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i872

bb.ee:                                            ; preds = %.noexc873
  %i.ayj = landingpad { ptr, i32 }
          cleanup
  %i.ayk = load ptr, ptr %20, align 8, !tbaa !13  ; 2 uses
  %i.ayl = icmp eq ptr %i.ayk, %i.li
  br i1 %i.ayl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i867, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i866

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i866: ; preds = %bb.ee
  %i.aym = load i64, ptr %i.li, align 8, !tbaa !18
  %i.ayn = add i64 %i.aym, 1
  call void @_ZdlPvm(ptr noundef %i.ayk, i64 noundef %i.ayn) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i867

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i867: ; preds = %bb.ee, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i866
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  br label %.body874

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i872: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i869, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i870
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  %i.ayo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.42, i64 noundef 15)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit878 unwind label %.loopexit3431 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit878: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i872
  %i.ayp = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6casadi6MatrixIdE8nonzerosEv(ptr noundef nonnull align 8 dereferenceable(40) %58)
          to label %bb.ef unwind label %.loopexit3431

bb.ef:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit878
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  invoke void @_ZN6casadi3strIdEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIT_SaIS8_EEb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr noundef nonnull align 8 dereferenceable(24) %i.ayp, i1 noundef zeroext false)
          to label %.noexc886 unwind label %.loopexit3431

.noexc886:                                        ; preds = %bb.ef
  %i.ayq = load ptr, ptr %19, align 8, !tbaa !13
  %i.ayr = load i64, ptr %i.lj, align 8, !tbaa !23
  %i.ays = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.ayq, i64 noundef %i.ayr)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i882 unwind label %bb.eg ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i882: ; preds = %.noexc886
  %i.ayt = load ptr, ptr %19, align 8, !tbaa !13  ; 2 uses
  %i.ayu = icmp eq ptr %i.ayt, %i.lk
  br i1 %i.ayu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i885, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i883

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i883: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i882
  %i.ayv = load i64, ptr %i.lk, align 8, !tbaa !18
  %i.ayw = add i64 %i.ayv, 1
  call void @_ZdlPvm(ptr noundef %i.ayt, i64 noundef %i.ayw) #21
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i885

bb.eg:                                            ; preds = %.noexc886
  %i.ayx = landingpad { ptr, i32 }
          cleanup
  %i.ayy = load ptr, ptr %19, align 8, !tbaa !13  ; 2 uses
  %i.ayz = icmp eq ptr %i.ayy, %i.lk
  br i1 %i.ayz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i880, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i879

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i879: ; preds = %bb.eg
  %i.aza = load i64, ptr %i.lk, align 8, !tbaa !18
  %i.azb = add i64 %i.aza, 1
  call void @_ZdlPvm(ptr noundef %i.ayy, i64 noundef %i.azb) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i880

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i880: ; preds = %bb.eg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i879
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  br label %.body874

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i885: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i882, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i883
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  %i.azc = load ptr, ptr @_ZSt4cout, align 8, !tbaa !123
  %i.azd = getelementptr i8, ptr %i.azc, i64 -24
  %i.aze = load i64, ptr %i.azd, align 8
  %i.azf = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.aze
  %i.azg = getelementptr inbounds nuw i8, ptr %i.azf, i64 240
  %i.azh = load ptr, ptr %i.azg, align 8, !tbaa !125 ; 6 uses
  %.not.i.i.i2434 = icmp eq ptr %i.azh, null
  br i1 %.not.i.i.i2434, label %bb.eh, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2435

bb.eh:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i885
  invoke void @_ZSt16__throw_bad_castv() #25
          to label %.noexc2439 unwind label %.loopexit.split-lp3432

.noexc2439:                                       ; preds = %bb.eh
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2435: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i885
  %i.azi = getelementptr inbounds nuw i8, ptr %i.azh, i64 56
  %i.azj = load i8, ptr %i.azi, align 8, !tbaa !140
  %.not.i1.i.i2436 = icmp eq i8 %i.azj, 0
  br i1 %.not.i1.i.i2436, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2435
  %i.azk = getelementptr inbounds nuw i8, ptr %i.azh, i64 67
  %i.azl = load i8, ptr %i.azk, align 1, !tbaa !18
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2437

bb.ej:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2435
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.azh)
          to label %.noexc2440 unwind label %.loopexit3431

.noexc2440:                                       ; preds = %bb.ej
  %i.azm = load ptr, ptr %i.azh, align 8, !tbaa !123
  %i.azn = getelementptr inbounds nuw i8, ptr %i.azm, i64 48
  %i.azo = load ptr, ptr %i.azn, align 8
  %i.azp = invoke noundef signext i8 %i.azo(ptr noundef nonnull align 8 dereferenceable(570) %i.azh, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2437 unwind label %.loopexit3431, !inline_history !146

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2437: ; preds = %.noexc2440, %bb.ei
  %.0.i.i.i2438 = phi i8 [ %i.azl, %bb.ei ], [ %i.azp, %.noexc2440 ]
  %i.azq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i2438)
          to label %.noexc2442 unwind label %.loopexit3431

.noexc2442:                                       ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2437
  %i.azr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.azq)
          to label %_ZNSolsEPFRSoS_E.exit891 unwind label %.loopexit3431 ; 0 uses

_ZNSolsEPFRSoS_E.exit891:                         ; preds = %.noexc2442
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #22
  store ptr %i.ll, ptr %63, align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.ll, ptr noundef nonnull align 1 dereferenceable(5) @.str.43, i64 5, i1 false)
  store i64 5, ptr %i.lm, align 8, !tbaa !23
  store i8 0, ptr %i.zc, align 1, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #22
  store ptr %i.ln, ptr %65, align 8, !tbaa !22
  store i16 12408, ptr %i.ln, align 8
  store i64 2, ptr %i.lo, align 8, !tbaa !23
  store i8 0, ptr %i.zd, align 2, !tbaa !18
  store ptr %i.lq, ptr %i.lp, align 8, !tbaa !22
  store i8 112, ptr %i.lq, align 8, !tbaa !18
  store i64 1, ptr %i.lr, align 8, !tbaa !23
  store i8 0, ptr %i.ze, align 1, !tbaa !18
  store ptr %i.lt, ptr %i.ls, align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.lt, ptr noundef nonnull align 1 dereferenceable(6) @.str.44, i64 6, i1 false)
  store i64 6, ptr %i.lu, align 8, !tbaa !23
  store i8 0, ptr %i.zf, align 2, !tbaa !18
  store ptr %i.lw, ptr %i.lv, align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.lw, ptr noundef nonnull align 1 dereferenceable(5) @.str.45, i64 5, i1 false)
  store i64 5, ptr %i.lx, align 8, !tbaa !23
  store i8 0, ptr %i.zg, align 1, !tbaa !18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %64, i8 0, i64 24, i1 false)
  %i.azs = invoke noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #24
          to label %._crit_edge.i.i914 unwind label %.body912.thread ; 19 uses

._crit_edge.i.i914:                               ; preds = %_ZNSolsEPFRSoS_E.exit891
  store ptr %i.azs, ptr %64, align 8, !tbaa !8
  %i.azt = getelementptr inbounds nuw i8, ptr %i.azs, i64 128
  store ptr %i.azt, ptr %i.ly, align 8, !tbaa !21
  %i.azu = getelementptr inbounds nuw i8, ptr %i.azs, i64 16 ; 2 uses
  store ptr %i.azu, ptr %i.azs, align 8, !tbaa !22
  %i.azv = load i16, ptr %i.ln, align 8
  store i16 %i.azv, ptr %i.azu, align 8
  %i.azw = getelementptr inbounds nuw i8, ptr %i.azs, i64 8
  store i64 2, ptr %i.azw, align 8, !tbaa !23
  %i.azx = getelementptr inbounds nuw i8, ptr %i.azs, i64 18
  store i8 0, ptr %i.azx, align 2, !tbaa !18
  %i.azy = getelementptr inbounds nuw i8, ptr %i.azs, i64 32
  %i.azz = getelementptr inbounds nuw i8, ptr %i.azs, i64 48 ; 2 uses
  store ptr %i.azz, ptr %i.azy, align 8, !tbaa !22
  store i8 112, ptr %i.azz, align 8, !tbaa !18
  %i.baa = getelementptr inbounds nuw i8, ptr %i.azs, i64 40
  store i64 1, ptr %i.baa, align 8, !tbaa !23
  %i.bab = getelementptr inbounds nuw i8, ptr %i.azs, i64 49
  store i8 0, ptr %i.bab, align 1, !tbaa !18
  %i.bac = getelementptr inbounds nuw i8, ptr %i.azs, i64 64
  %i.bad = getelementptr inbounds nuw i8, ptr %i.azs, i64 80 ; 2 uses
  store ptr %i.bad, ptr %i.bac, align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.bad, ptr noundef nonnull align 1 dereferenceable(6) @.str.44, i64 6, i1 false)
  %i.bae = getelementptr inbounds nuw i8, ptr %i.azs, i64 72
  store i64 6, ptr %i.bae, align 8, !tbaa !23
  %i.baf = getelementptr inbounds nuw i8, ptr %i.azs, i64 86
  store i8 0, ptr %i.baf, align 2, !tbaa !18
  %i.bag = getelementptr inbounds nuw i8, ptr %i.azs, i64 96
  %i.bah = getelementptr inbounds nuw i8, ptr %i.azs, i64 112 ; 2 uses
  store ptr %i.bah, ptr %i.bag, align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.bah, ptr noundef nonnull align 1 dereferenceable(5) @.str.45, i64 5, i1 false)
  %i.bai = getelementptr inbounds nuw i8, ptr %i.azs, i64 104
  store i64 5, ptr %i.bai, align 8, !tbaa !23
  %i.baj = getelementptr inbounds nuw i8, ptr %i.azs, i64 117
  store i8 0, ptr %i.baj, align 1, !tbaa !18
  %i.bak = getelementptr inbounds nuw i8, ptr %i.azs, i64 128
  store ptr %i.bak, ptr %i.lz, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #22
  store ptr %i.ma, ptr %67, align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.ma, ptr noundef nonnull align 1 dereferenceable(6) @.str.46, i64 6, i1 false)
  store i64 6, ptr %i.mb, align 8, !tbaa !23
  store i8 0, ptr %i.zh, align 2, !tbaa !18
  store ptr %i.md, ptr %i.mc, align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.md, ptr noundef nonnull align 1 dereferenceable(6) @.str.47, i64 6, i1 false)
  store i64 6, ptr %i.me, align 8, !tbaa !23
  store i8 0, ptr %i.zi, align 2, !tbaa !18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %66, i8 0, i64 24, i1 false)
  %i.bal = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #24
          to label %bb.ek unwind label %.body925.thread ; 11 uses

.body912.thread:                                  ; preds = %_ZNSolsEPFRSoS_E.exit891
  %i.bam = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2152

bb.ek:                                            ; preds = %._crit_edge.i.i914
  store ptr %i.bal, ptr %66, align 8, !tbaa !8
  %i.ban = getelementptr inbounds nuw i8, ptr %i.bal, i64 64
  store ptr %i.ban, ptr %i.mf, align 8, !tbaa !21
  %i.bao = getelementptr inbounds nuw i8, ptr %i.bal, i64 16 ; 2 uses
  store ptr %i.bao, ptr %i.bal, align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.bao, ptr noundef nonnull align 1 dereferenceable(6) @.str.46, i64 6, i1 false)
  %i.bap = getelementptr inbounds nuw i8, ptr %i.bal, i64 8
  store i64 6, ptr %i.bap, align 8, !tbaa !23
  %i.baq = getelementptr inbounds nuw i8, ptr %i.bal, i64 22
  store i8 0, ptr %i.baq, align 2, !tbaa !18
  %i.bar = getelementptr inbounds nuw i8, ptr %i.bal, i64 32
  %i.bas = getelementptr inbounds nuw i8, ptr %i.bal, i64 48 ; 2 uses
  store ptr %i.bas, ptr %i.bar, align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.bas, ptr noundef nonnull align 1 dereferenceable(6) @.str.47, i64 6, i1 false)
  %i.bat = getelementptr inbounds nuw i8, ptr %i.bal, i64 40
  store i64 6, ptr %i.bat, align 8, !tbaa !23
  %i.bau = getelementptr inbounds nuw i8, ptr %i.bal, i64 54
  store i8 0, ptr %i.bau, align 2, !tbaa !18
  %i.bav = getelementptr inbounds nuw i8, ptr %i.bal, i64 64
  store ptr %i.bav, ptr %i.mg, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %68, i8 0, i64 24, i1 false)
  store <2 x ptr> %i.ahi, ptr %i.mj, align 8, !tbaa !56
  store i64 0, ptr %i.mk, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %69, i8 0, i64 24, i1 false)
  store <2 x ptr> %i.ahk, ptr %i.mn, align 8, !tbaa !56
  store i64 0, ptr %i.mo, align 8, !tbaa !53
  invoke void @_ZNK6casadi8Function7factoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS6_SaIS6_EESD_RKSt3mapIS6_SB_St4lessIS6_ESaISt4pairIS7_SB_EEERKSE_IS6_NS_11GenericTypeESG_SaISH_IS7_SN_EEE(ptr dead_on_unwind nonnull writable sret(%"class.casadi::Function") align 8 %62, ptr noundef nonnull align 8 dereferenceable(8) %40, ptr noundef nonnull align 8 dereferenceable(32) %63, ptr noundef nonnull align 8 dereferenceable(24) %64, ptr noundef nonnull align 8 dereferenceable(24) %66, ptr noundef nonnull align 8 dereferenceable(48) %68, ptr noundef nonnull align 8 dereferenceable(48) %69)
          to label %bb.el unwind label %.body925

.body925.thread:                                  ; preds = %._crit_edge.i.i914
  %i.baw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2146

bb.el:                                            ; preds = %bb.ek
  %i.bax = load ptr, ptr %i.mm, align 8, !tbaa !50
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %69, ptr noundef %i.bax)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit928 unwind label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.bay = landingpad { ptr, i32 }
          catch ptr null
  %i.baz = extractvalue { ptr, i32 } %i.bay, 0
  call void @__clang_call_terminate(ptr %i.baz) #23
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit928: ; preds = %bb.el
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #22
  %i.bba = load ptr, ptr %i.mi, align 8, !tbaa !50
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %68, ptr noundef %i.bba)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit unwind label %bb.en

bb.en:                                            ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit928
  %i.bbb = landingpad { ptr, i32 }
          catch ptr null
  %i.bbc = extractvalue { ptr, i32 } %i.bbb, 0
  call void @__clang_call_terminate(ptr %i.bbc) #23
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit928
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #22
  %i.bbd = load ptr, ptr %66, align 8, !tbaa !8   ; 3 uses
  %i.bbe = load ptr, ptr %i.mg, align 8, !tbaa !12 ; 2 uses
  %.not4.i.i.i929 = icmp eq ptr %i.bbd, %i.bbe
  br i1 %.not4.i.i.i929, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i930

.lr.ph.i.i.i930:                                  ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i931 = phi ptr [ %i.bbk, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.bbd, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit ] ; 3 uses
  %i.bbf = load ptr, ptr %.05.i.i.i931, align 8, !tbaa !13 ; 2 uses
  %i.bbg = getelementptr inbounds nuw i8, ptr %.05.i.i.i931, i64 16 ; 2 uses
  %i.bbh = icmp eq ptr %i.bbf, %i.bbg
  br i1 %i.bbh, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i930
  %i.bbi = load i64, ptr %i.bbg, align 8, !tbaa !18
  %i.bbj = add i64 %i.bbi, 1
  call void @_ZdlPvm(ptr noundef %i.bbf, i64 noundef %i.bbj) #21
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i930, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.bbk = getelementptr inbounds nuw i8, ptr %.05.i.i.i931, i64 32 ; 2 uses
  %.not.i.i.i932 = icmp eq ptr %i.bbk, %i.bbe
  br i1 %.not.i.i.i932, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i930, !llvm.loop !19

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i933 = load ptr, ptr %66, align 8, !tbaa !8
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit
  %i.bbl = phi ptr [ %.pr.i933, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.bbd, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i934 = icmp eq ptr %i.bbl, null
  br i1 %.not.i.i1.i934, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.eo

bb.eo:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.bbm = load ptr, ptr %i.mf, align 8, !tbaa !21
  %i.bbn = ptrtoint ptr %i.bbm to i64
  %i.bbo = ptrtoint ptr %i.bbl to i64
  %i.bbp = sub i64 %i.bbn, %i.bbo
  call void @_ZdlPvm(ptr noundef nonnull %i.bbl, i64 noundef %i.bbp) #21
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.eo
  %i.bbq = load ptr, ptr %i.zj, align 8, !tbaa !13 ; 2 uses
  %i.bbr = icmp eq ptr %i.bbq, %i.zk
  br i1 %i.bbr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit938, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i936

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i936: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.bbs = load i64, ptr %i.zk, align 8, !tbaa !18
  %i.bbt = add i64 %i.bbs, 1
  call void @_ZdlPvm(ptr noundef %i.bbq, i64 noundef %i.bbt) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit938

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit938: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i936
  %i.bbu = load ptr, ptr %67, align 8, !tbaa !13  ; 2 uses
  %i.bbv = icmp eq ptr %i.bbu, %i.zl
  br i1 %i.bbv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit938.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i936.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i936.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit938
  %i.bbw = load i64, ptr %i.zl, align 8, !tbaa !18
  %i.bbx = add i64 %i.bbw, 1
  call void @_ZdlPvm(ptr noundef %i.bbu, i64 noundef %i.bbx) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit938.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit938.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit938, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i936.1
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #22
  %i.bby = load ptr, ptr %64, align 8, !tbaa !8   ; 3 uses
  %i.bbz = load ptr, ptr %i.lz, align 8, !tbaa !12 ; 2 uses
  %.not4.i.i.i939 = icmp eq ptr %i.bby, %i.bbz
  br i1 %.not4.i.i.i939, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i947, label %.lr.ph.i.i.i940

.lr.ph.i.i.i940:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit938.1, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i943
  %.05.i.i.i941 = phi ptr [ %i.bcf, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i943 ], [ %i.bby, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit938.1 ] ; 3 uses
  %i.bca = load ptr, ptr %.05.i.i.i941, align 8, !tbaa !13 ; 2 uses
  %i.bcb = getelementptr inbounds nuw i8, ptr %.05.i.i.i941, i64 16 ; 2 uses
  %i.bcc = icmp eq ptr %i.bca, %i.bcb
  br i1 %i.bcc, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i943, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i942

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i942: ; preds = %.lr.ph.i.i.i940
  %i.bcd = load i64, ptr %i.bcb, align 8, !tbaa !18
  %i.bce = add i64 %i.bcd, 1
  call void @_ZdlPvm(ptr noundef %i.bca, i64 noundef %i.bce) #21
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i943

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i943: ; preds = %.lr.ph.i.i.i940, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i942
  %i.bcf = getelementptr inbounds nuw i8, ptr %.05.i.i.i941, i64 32 ; 2 uses
  %.not.i.i.i944 = icmp eq ptr %i.bcf, %i.bbz
  br i1 %.not.i.i.i944, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i945, label %.lr.ph.i.i.i940, !llvm.loop !19

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i945: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i943
  %.pr.i946 = load ptr, ptr %64, align 8, !tbaa !8
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i947

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i947: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i945, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit938.1
  %i.bcg = phi ptr [ %.pr.i946, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i945 ], [ %i.bby, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit938.1 ] ; 3 uses
  %.not.i.i1.i948 = icmp eq ptr %i.bcg, null
  br i1 %.not.i.i1.i948, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit951, label %bb.ep

bb.ep:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i947
  %i.bch = load ptr, ptr %i.ly, align 8, !tbaa !21
  %i.bci = ptrtoint ptr %i.bch to i64
  %i.bcj = ptrtoint ptr %i.bcg to i64
  %i.bck = sub i64 %i.bci, %i.bcj
  call void @_ZdlPvm(ptr noundef nonnull %i.bcg, i64 noundef %i.bck) #21
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit951

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit951: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i947, %bb.ep
  %i.bcl = load ptr, ptr %i.zm, align 8, !tbaa !13 ; 2 uses
  %i.bcm = icmp eq ptr %i.bcl, %i.zn
  br i1 %i.bcm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit954, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i952

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i952: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit951
  %i.bcn = load i64, ptr %i.zn, align 8, !tbaa !18
  %i.bco = add i64 %i.bcn, 1
  call void @_ZdlPvm(ptr noundef %i.bcl, i64 noundef %i.bco) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit954

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit954: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit951, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i952
  %i.bcp = load ptr, ptr %i.zo, align 8, !tbaa !13 ; 2 uses
  %i.bcq = icmp eq ptr %i.bcp, %i.zp
  br i1 %i.bcq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit954.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i952.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i952.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit954
  %i.bcr = load i64, ptr %i.zp, align 8, !tbaa !18
  %i.bcs = add i64 %i.bcr, 1
  call void @_ZdlPvm(ptr noundef %i.bcp, i64 noundef %i.bcs) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit954.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit954.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit954, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i952.1
  %i.bct = load ptr, ptr %i.zq, align 8, !tbaa !13 ; 2 uses
  %i.bcu = icmp eq ptr %i.bct, %i.zr
  br i1 %i.bcu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit954.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i952.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i952.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit954.1
  %i.bcv = load i64, ptr %i.zr, align 8, !tbaa !18
  %i.bcw = add i64 %i.bcv, 1
  call void @_ZdlPvm(ptr noundef %i.bct, i64 noundef %i.bcw) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit954.2

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit954.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit954.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i952.2
  %i.bcx = load ptr, ptr %65, align 8, !tbaa !13  ; 2 uses
  %i.bcy = icmp eq ptr %i.bcx, %i.zs
  br i1 %i.bcy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit954.3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i952.3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i952.3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit954.2
  %i.bcz = load i64, ptr %i.zs, align 8, !tbaa !18
  %i.bda = add i64 %i.bcz, 1
  call void @_ZdlPvm(ptr noundef %i.bcx, i64 noundef %i.bda) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit954.3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit954.3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit954.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i952.3
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #22
end_hunk_0
begin_hunk_1_@main:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1098: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i1097
  %i.bkt = load i64, ptr %i.ns, align 8, !tbaa !18
  %i.bku = add i64 %i.bkt, 1
  call void @_ZdlPvm(ptr noundef %i.bkr, i64 noundef %i.bku) #21
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i1100

bb.ga:                                            ; preds = %.noexc1101
  %i.bkv = landingpad { ptr, i32 }
          cleanup
  %i.bkw = load ptr, ptr %18, align 8, !tbaa !13  ; 2 uses
  %i.bkx = icmp eq ptr %i.bkw, %i.ns
  br i1 %i.bkx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i1095, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i1094

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i1094: ; preds = %bb.ga
  %i.bky = load i64, ptr %i.ns, align 8, !tbaa !18
  %i.bkz = add i64 %i.bky, 1
  call void @_ZdlPvm(ptr noundef %i.bkw, i64 noundef %i.bkz) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i1095

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i1095: ; preds = %bb.ga, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i1094
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  br label %.body1102

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i1100: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i1097, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1098
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  %i.bla = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.42, i64 noundef 15)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1106 unwind label %.loopexit3446 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1106: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i1100
  %i.blb = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6casadi6MatrixIdE8nonzerosEv(ptr noundef nonnull align 8 dereferenceable(40) %75)
          to label %bb.gb unwind label %.loopexit3446

bb.gb:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1106
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  invoke void @_ZN6casadi3strIdEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIT_SaIS8_EEb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 8 dereferenceable(24) %i.blb, i1 noundef zeroext false)
          to label %.noexc1114 unwind label %.loopexit3446

.noexc1114:                                       ; preds = %bb.gb
  %i.blc = load ptr, ptr %17, align 8, !tbaa !13
  %i.bld = load i64, ptr %i.nt, align 8, !tbaa !23
  %i.ble = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.blc, i64 noundef %i.bld)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i1110 unwind label %bb.gc ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i1110: ; preds = %.noexc1114
  %i.blf = load ptr, ptr %17, align 8, !tbaa !13  ; 2 uses
  %i.blg = icmp eq ptr %i.blf, %i.nu
  br i1 %i.blg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i1113, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1111

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1111: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i1110
  %i.blh = load i64, ptr %i.nu, align 8, !tbaa !18
  %i.bli = add i64 %i.blh, 1
  call void @_ZdlPvm(ptr noundef %i.blf, i64 noundef %i.bli) #21
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i1113

bb.gc:                                            ; preds = %.noexc1114
  %i.blj = landingpad { ptr, i32 }
          cleanup
  %i.blk = load ptr, ptr %17, align 8, !tbaa !13  ; 2 uses
  %i.bll = icmp eq ptr %i.blk, %i.nu
  br i1 %i.bll, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i1108, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i1107

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i1107: ; preds = %bb.gc
  %i.blm = load i64, ptr %i.nu, align 8, !tbaa !18
  %i.bln = add i64 %i.blm, 1
  call void @_ZdlPvm(ptr noundef %i.blk, i64 noundef %i.bln) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i1108

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i1108: ; preds = %bb.gc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i1107
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  br label %.body1102

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i1113: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i1110, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1111
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  %i.blo = load ptr, ptr @_ZSt4cout, align 8, !tbaa !123
  %i.blp = getelementptr i8, ptr %i.blo, i64 -24
  %i.blq = load i64, ptr %i.blp, align 8
  %i.blr = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.blq
  %i.bls = getelementptr inbounds nuw i8, ptr %i.blr, i64 240
  %i.blt = load ptr, ptr %i.bls, align 8, !tbaa !125 ; 6 uses
  %.not.i.i.i2496 = icmp eq ptr %i.blt, null
  br i1 %.not.i.i.i2496, label %bb.gd, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2497

bb.gd:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i1113
  invoke void @_ZSt16__throw_bad_castv() #25
          to label %.noexc2501 unwind label %.loopexit.split-lp3447

.noexc2501:                                       ; preds = %bb.gd
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2497: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i1113
  %i.blu = getelementptr inbounds nuw i8, ptr %i.blt, i64 56
  %i.blv = load i8, ptr %i.blu, align 8, !tbaa !140
  %.not.i1.i.i2498 = icmp eq i8 %i.blv, 0
  br i1 %.not.i1.i.i2498, label %bb.gf, label %bb.ge

bb.ge:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2497
  %i.blw = getelementptr inbounds nuw i8, ptr %i.blt, i64 67
  %i.blx = load i8, ptr %i.blw, align 1, !tbaa !18
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2499

bb.gf:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2497
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.blt)
          to label %.noexc2502 unwind label %.loopexit3446

.noexc2502:                                       ; preds = %bb.gf
  %i.bly = load ptr, ptr %i.blt, align 8, !tbaa !123
  %i.blz = getelementptr inbounds nuw i8, ptr %i.bly, i64 48
  %i.bma = load ptr, ptr %i.blz, align 8
  %i.bmb = invoke noundef signext i8 %i.bma(ptr noundef nonnull align 8 dereferenceable(570) %i.blt, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2499 unwind label %.loopexit3446, !inline_history !146

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2499: ; preds = %.noexc2502, %bb.ge
  %.0.i.i.i2500 = phi i8 [ %i.blx, %bb.ge ], [ %i.bmb, %.noexc2502 ]
  %i.bmc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i2500)
          to label %.noexc2504 unwind label %.loopexit3446

.noexc2504:                                       ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2499
  %i.bmd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bmc)
          to label %_ZNSolsEPFRSoS_E.exit1119 unwind label %.loopexit3446 ; 0 uses

_ZNSolsEPFRSoS_E.exit1119:                        ; preds = %.noexc2504
  call void @llvm.lifetime.start.p0(ptr nonnull %77) #22
  %i.bme = sext i32 %i.ajo to i64                 ; 2 uses
  %i.bmf = icmp slt i32 %i.ajo, 0
  br i1 %i.bmf, label %bb.gg, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i

bb.gg:                                            ; preds = %_ZNSolsEPFRSoS_E.exit1119
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.78) #25
          to label %.noexc1122 unwind label %.loopexit.split-lp3452

.noexc1122:                                       ; preds = %bb.gg
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZNSolsEPFRSoS_E.exit1119
  %.not.i.i.i.i1120 = icmp ne i32 %i.ajo, 0
  call void @llvm.assume(i1 %.not.i.i.i.i1120)
  %i.bmg = shl nuw nsw i64 %i.bme, 3              ; 3 uses
  %i.bmh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bmg) #24
          to label %.noexc1123 unwind label %.loopexit3451 ; 4 uses

.noexc1123:                                       ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  store ptr %i.bmh, ptr %77, align 8, !tbaa !73
  %i.bmi = getelementptr inbounds nuw [8 x i8], ptr %i.bmh, i64 %i.bme
  store ptr %i.bmi, ptr %i.nv, align 8, !tbaa !72
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bmh, i8 0, i64 %i.bmg, i1 false), !tbaa !76
  %i.bmj = getelementptr inbounds nuw i8, ptr %i.bmh, i64 %i.bmg ; 2 uses
  store ptr %i.bmj, ptr %i.nw, align 8, !tbaa !74
  %i.bmk = getelementptr inbounds i8, ptr %i.bmj, i64 -8
  store double 1.000000e+00, ptr %i.bmk, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %78) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %79) #22
  store ptr %i.nx, ptr %79, align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.nx, ptr noundef nonnull align 1 dereferenceable(5) @.str.53, i64 5, i1 false)
  store i64 5, ptr %i.ny, align 8, !tbaa !23
  store i8 0, ptr %i.aas, align 1, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %80) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %81) #22
  store ptr %i.nz, ptr %81, align 8, !tbaa !22
  store i16 12408, ptr %i.nz, align 8
  store i64 2, ptr %i.oa, align 8, !tbaa !23
  store i8 0, ptr %i.aat, align 2, !tbaa !18
  store ptr %i.oc, ptr %i.ob, align 8, !tbaa !22
  store i8 112, ptr %i.oc, align 8, !tbaa !18
  store i64 1, ptr %i.od, align 8, !tbaa !23
  store i8 0, ptr %i.aau, align 1, !tbaa !18
  store ptr %i.of, ptr %i.oe, align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.of, ptr noundef nonnull align 1 dereferenceable(6) @.str.54, i64 6, i1 false)
  store i64 6, ptr %i.og, align 8, !tbaa !23
  store i8 0, ptr %i.aav, align 2, !tbaa !18
  store ptr %i.oi, ptr %i.oh, align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.oi, ptr noundef nonnull align 1 dereferenceable(6) @.str.55, i64 6, i1 false)
  store i64 6, ptr %i.oj, align 8, !tbaa !23
  store i8 0, ptr %i.aaw, align 2, !tbaa !18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %80, i8 0, i64 24, i1 false)
  %i.bml = invoke noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #24
          to label %._crit_edge.i.i1150 unwind label %.body1147.thread ; 19 uses

._crit_edge.i.i1150:                              ; preds = %.noexc1123
  store ptr %i.bml, ptr %80, align 8, !tbaa !8
  %i.bmm = getelementptr inbounds nuw i8, ptr %i.bml, i64 128
  store ptr %i.bmm, ptr %i.ok, align 8, !tbaa !21
  %i.bmn = getelementptr inbounds nuw i8, ptr %i.bml, i64 16 ; 2 uses
  store ptr %i.bmn, ptr %i.bml, align 8, !tbaa !22
  %i.bmo = load i16, ptr %i.nz, align 8
  store i16 %i.bmo, ptr %i.bmn, align 8
  %i.bmp = getelementptr inbounds nuw i8, ptr %i.bml, i64 8
  store i64 2, ptr %i.bmp, align 8, !tbaa !23
  %i.bmq = getelementptr inbounds nuw i8, ptr %i.bml, i64 18
  store i8 0, ptr %i.bmq, align 2, !tbaa !18
  %i.bmr = getelementptr inbounds nuw i8, ptr %i.bml, i64 32
  %i.bms = getelementptr inbounds nuw i8, ptr %i.bml, i64 48 ; 2 uses
  store ptr %i.bms, ptr %i.bmr, align 8, !tbaa !22
  store i8 112, ptr %i.bms, align 8, !tbaa !18
  %i.bmt = getelementptr inbounds nuw i8, ptr %i.bml, i64 40
  store i64 1, ptr %i.bmt, align 8, !tbaa !23
  %i.bmu = getelementptr inbounds nuw i8, ptr %i.bml, i64 49
  store i8 0, ptr %i.bmu, align 1, !tbaa !18
  %i.bmv = getelementptr inbounds nuw i8, ptr %i.bml, i64 64
  %i.bmw = getelementptr inbounds nuw i8, ptr %i.bml, i64 80 ; 2 uses
  store ptr %i.bmw, ptr %i.bmv, align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.bmw, ptr noundef nonnull align 1 dereferenceable(6) @.str.54, i64 6, i1 false)
  %i.bmx = getelementptr inbounds nuw i8, ptr %i.bml, i64 72
  store i64 6, ptr %i.bmx, align 8, !tbaa !23
  %i.bmy = getelementptr inbounds nuw i8, ptr %i.bml, i64 86
  store i8 0, ptr %i.bmy, align 2, !tbaa !18
  %i.bmz = getelementptr inbounds nuw i8, ptr %i.bml, i64 96
  %i.bna = getelementptr inbounds nuw i8, ptr %i.bml, i64 112 ; 2 uses
  store ptr %i.bna, ptr %i.bmz, align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.bna, ptr noundef nonnull align 1 dereferenceable(6) @.str.55, i64 6, i1 false)
  %i.bnb = getelementptr inbounds nuw i8, ptr %i.bml, i64 104
  store i64 6, ptr %i.bnb, align 8, !tbaa !23
  %i.bnc = getelementptr inbounds nuw i8, ptr %i.bml, i64 118
  store i8 0, ptr %i.bnc, align 2, !tbaa !18
  %i.bnd = getelementptr inbounds nuw i8, ptr %i.bml, i64 128
  store ptr %i.bnd, ptr %i.ol, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %82) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %83) #22
  store ptr %i.om, ptr %83, align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.om, ptr noundef nonnull align 1 dereferenceable(5) @.str.56, i64 5, i1 false)
  store i64 5, ptr %i.on, align 8, !tbaa !23
  store i8 0, ptr %i.aax, align 1, !tbaa !18
  store ptr %i.op, ptr %i.oo, align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.op, ptr noundef nonnull align 1 dereferenceable(6) @.str.57, i64 6, i1 false)
  store i64 6, ptr %i.oq, align 8, !tbaa !23
  store i8 0, ptr %i.aay, align 2, !tbaa !18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %82, i8 0, i64 24, i1 false)
  %i.bne = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #24
          to label %bb.gh unwind label %.body1161.thread ; 11 uses

.body1147.thread:                                 ; preds = %.noexc1123
  %i.bnf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2187

bb.gh:                                            ; preds = %._crit_edge.i.i1150
  store ptr %i.bne, ptr %82, align 8, !tbaa !8
  %i.bng = getelementptr inbounds nuw i8, ptr %i.bne, i64 64
  store ptr %i.bng, ptr %i.or, align 8, !tbaa !21
  %i.bnh = getelementptr inbounds nuw i8, ptr %i.bne, i64 16 ; 2 uses
  store ptr %i.bnh, ptr %i.bne, align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.bnh, ptr noundef nonnull align 1 dereferenceable(5) @.str.56, i64 5, i1 false)
  %i.bni = getelementptr inbounds nuw i8, ptr %i.bne, i64 8
  store i64 5, ptr %i.bni, align 8, !tbaa !23
  %i.bnj = getelementptr inbounds nuw i8, ptr %i.bne, i64 21
  store i8 0, ptr %i.bnj, align 1, !tbaa !18
  %i.bnk = getelementptr inbounds nuw i8, ptr %i.bne, i64 32
  %i.bnl = getelementptr inbounds nuw i8, ptr %i.bne, i64 48 ; 2 uses
  store ptr %i.bnl, ptr %i.bnk, align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.bnl, ptr noundef nonnull align 1 dereferenceable(6) @.str.57, i64 6, i1 false)
  %i.bnm = getelementptr inbounds nuw i8, ptr %i.bne, i64 40
  store i64 6, ptr %i.bnm, align 8, !tbaa !23
  %i.bnn = getelementptr inbounds nuw i8, ptr %i.bne, i64 54
  store i8 0, ptr %i.bnn, align 2, !tbaa !18
  %i.bno = getelementptr inbounds nuw i8, ptr %i.bne, i64 64
  store ptr %i.bno, ptr %i.os, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %84) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %84, i8 0, i64 24, i1 false)
  store <2 x ptr> %i.ahc, ptr %i.ov, align 8, !tbaa !56
  store i64 0, ptr %i.ow, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %85) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %85, i8 0, i64 24, i1 false)
  store <2 x ptr> %i.ahe, ptr %i.oz, align 8, !tbaa !56
  store i64 0, ptr %i.pa, align 8, !tbaa !53
  invoke void @_ZNK6casadi8Function7factoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS6_SaIS6_EESD_RKSt3mapIS6_SB_St4lessIS6_ESaISt4pairIS7_SB_EEERKSE_IS6_NS_11GenericTypeESG_SaISH_IS7_SN_EEE(ptr dead_on_unwind nonnull writable sret(%"class.casadi::Function") align 8 %78, ptr noundef nonnull align 8 dereferenceable(8) %40, ptr noundef nonnull align 8 dereferenceable(32) %79, ptr noundef nonnull align 8 dereferenceable(24) %80, ptr noundef nonnull align 8 dereferenceable(24) %82, ptr noundef nonnull align 8 dereferenceable(48) %84, ptr noundef nonnull align 8 dereferenceable(48) %85)
          to label %bb.gi unwind label %.body1161

.body1161.thread:                                 ; preds = %._crit_edge.i.i1150
  %i.bnp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2181

bb.gi:                                            ; preds = %bb.gh
  %i.bnq = load ptr, ptr %i.oy, align 8, !tbaa !50
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %85, ptr noundef %i.bnq)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit1164 unwind label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.bnr = landingpad { ptr, i32 }
          catch ptr null
  %i.bns = extractvalue { ptr, i32 } %i.bnr, 0
  call void @__clang_call_terminate(ptr %i.bns) #23
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit1164: ; preds = %bb.gi
  call void @llvm.lifetime.end.p0(ptr nonnull %85) #22
  %i.bnt = load ptr, ptr %i.ou, align 8, !tbaa !50
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %84, ptr noundef %i.bnt)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit1165 unwind label %bb.gk

bb.gk:                                            ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit1164
  %i.bnu = landingpad { ptr, i32 }
          catch ptr null
  %i.bnv = extractvalue { ptr, i32 } %i.bnu, 0
  call void @__clang_call_terminate(ptr %i.bnv) #23
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit1165: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit1164
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #22
  %i.bnw = load ptr, ptr %82, align 8, !tbaa !8   ; 3 uses
  %i.bnx = load ptr, ptr %i.os, align 8, !tbaa !12 ; 2 uses
  %.not4.i.i.i1166 = icmp eq ptr %i.bnw, %i.bnx
  br i1 %.not4.i.i.i1166, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1174, label %.lr.ph.i.i.i1167

.lr.ph.i.i.i1167:                                 ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit1165, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1170
  %.05.i.i.i1168 = phi ptr [ %i.bod, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1170 ], [ %i.bnw, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit1165 ] ; 3 uses
  %i.bny = load ptr, ptr %.05.i.i.i1168, align 8, !tbaa !13 ; 2 uses
  %i.bnz = getelementptr inbounds nuw i8, ptr %.05.i.i.i1168, i64 16 ; 2 uses
  %i.boa = icmp eq ptr %i.bny, %i.bnz
  br i1 %i.boa, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1170, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1169

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1169: ; preds = %.lr.ph.i.i.i1167
  %i.bob = load i64, ptr %i.bnz, align 8, !tbaa !18
  %i.boc = add i64 %i.bob, 1
  call void @_ZdlPvm(ptr noundef %i.bny, i64 noundef %i.boc) #21
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1170

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1170: ; preds = %.lr.ph.i.i.i1167, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1169
  %i.bod = getelementptr inbounds nuw i8, ptr %.05.i.i.i1168, i64 32 ; 2 uses
  %.not.i.i.i1171 = icmp eq ptr %i.bod, %i.bnx
  br i1 %.not.i.i.i1171, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1172, label %.lr.ph.i.i.i1167, !llvm.loop !19

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1172: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1170
  %.pr.i1173 = load ptr, ptr %82, align 8, !tbaa !8
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1174

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1174: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1172, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit1165
  %i.boe = phi ptr [ %.pr.i1173, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1172 ], [ %i.bnw, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit1165 ] ; 3 uses
  %.not.i.i1.i1175 = icmp eq ptr %i.boe, null
  br i1 %.not.i.i1.i1175, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1178, label %bb.gl

bb.gl:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1174
  %i.bof = load ptr, ptr %i.or, align 8, !tbaa !21
  %i.bog = ptrtoint ptr %i.bof to i64
  %i.boh = ptrtoint ptr %i.boe to i64
  %i.boi = sub i64 %i.bog, %i.boh
  call void @_ZdlPvm(ptr noundef nonnull %i.boe, i64 noundef %i.boi) #21
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1178

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1178: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1174, %bb.gl
  %i.boj = load ptr, ptr %i.aaz, align 8, !tbaa !13 ; 2 uses
  %i.bok = icmp eq ptr %i.boj, %i.aba
  br i1 %i.bok, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1181, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1179

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1179: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1178
  %i.bol = load i64, ptr %i.aba, align 8, !tbaa !18
  %i.bom = add i64 %i.bol, 1
  call void @_ZdlPvm(ptr noundef %i.boj, i64 noundef %i.bom) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1181

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1181: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1178, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1179
  %i.bon = load ptr, ptr %83, align 8, !tbaa !13  ; 2 uses
  %i.boo = icmp eq ptr %i.bon, %i.abb
  br i1 %i.boo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1181.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1179.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1179.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1181
  %i.bop = load i64, ptr %i.abb, align 8, !tbaa !18
  %i.boq = add i64 %i.bop, 1
  call void @_ZdlPvm(ptr noundef %i.bon, i64 noundef %i.boq) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1181.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1181.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1181, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1179.1
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #22
  %i.bor = load ptr, ptr %80, align 8, !tbaa !8   ; 3 uses
  %i.bos = load ptr, ptr %i.ol, align 8, !tbaa !12 ; 2 uses
  %.not4.i.i.i1182 = icmp eq ptr %i.bor, %i.bos
  br i1 %.not4.i.i.i1182, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1190, label %.lr.ph.i.i.i1183

.lr.ph.i.i.i1183:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1181.1, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1186
  %.05.i.i.i1184 = phi ptr [ %i.boy, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1186 ], [ %i.bor, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1181.1 ] ; 3 uses
  %i.bot = load ptr, ptr %.05.i.i.i1184, align 8, !tbaa !13 ; 2 uses
  %i.bou = getelementptr inbounds nuw i8, ptr %.05.i.i.i1184, i64 16 ; 2 uses
  %i.bov = icmp eq ptr %i.bot, %i.bou
  br i1 %i.bov, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1186, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1185

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1185: ; preds = %.lr.ph.i.i.i1183
  %i.bow = load i64, ptr %i.bou, align 8, !tbaa !18
  %i.box = add i64 %i.bow, 1
  call void @_ZdlPvm(ptr noundef %i.bot, i64 noundef %i.box) #21
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1186

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1186: ; preds = %.lr.ph.i.i.i1183, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1185
  %i.boy = getelementptr inbounds nuw i8, ptr %.05.i.i.i1184, i64 32 ; 2 uses
  %.not.i.i.i1187 = icmp eq ptr %i.boy, %i.bos
  br i1 %.not.i.i.i1187, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1188, label %.lr.ph.i.i.i1183, !llvm.loop !19

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1188: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1186
  %.pr.i1189 = load ptr, ptr %80, align 8, !tbaa !8
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1190

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1190: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1188, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1181.1
  %i.boz = phi ptr [ %.pr.i1189, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1188 ], [ %i.bor, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1181.1 ] ; 3 uses
  %.not.i.i1.i1191 = icmp eq ptr %i.boz, null
  br i1 %.not.i.i1.i1191, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1194, label %bb.gm

bb.gm:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1190
  %i.bpa = load ptr, ptr %i.ok, align 8, !tbaa !21
  %i.bpb = ptrtoint ptr %i.bpa to i64
  %i.bpc = ptrtoint ptr %i.boz to i64
  %i.bpd = sub i64 %i.bpb, %i.bpc
  call void @_ZdlPvm(ptr noundef nonnull %i.boz, i64 noundef %i.bpd) #21
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1194

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1194: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1190, %bb.gm
  %i.bpe = load ptr, ptr %i.abc, align 8, !tbaa !13 ; 2 uses
  %i.bpf = icmp eq ptr %i.bpe, %i.abd
  br i1 %i.bpf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1197, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1195

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1195: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1194
  %i.bpg = load i64, ptr %i.abd, align 8, !tbaa !18
  %i.bph = add i64 %i.bpg, 1
  call void @_ZdlPvm(ptr noundef %i.bpe, i64 noundef %i.bph) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1197

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1197: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1194, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1195
  %i.bpi = load ptr, ptr %i.abe, align 8, !tbaa !13 ; 2 uses
  %i.bpj = icmp eq ptr %i.bpi, %i.abf
  br i1 %i.bpj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1197.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1195.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1195.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1197
  %i.bpk = load i64, ptr %i.abf, align 8, !tbaa !18
  %i.bpl = add i64 %i.bpk, 1
  call void @_ZdlPvm(ptr noundef %i.bpi, i64 noundef %i.bpl) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1197.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1197.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1197, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1195.1
  %i.bpm = load ptr, ptr %i.abg, align 8, !tbaa !13 ; 2 uses
  %i.bpn = icmp eq ptr %i.bpm, %i.abh
  br i1 %i.bpn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1197.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1195.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1195.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1197.1
  %i.bpo = load i64, ptr %i.abh, align 8, !tbaa !18
  %i.bpp = add i64 %i.bpo, 1
  call void @_ZdlPvm(ptr noundef %i.bpm, i64 noundef %i.bpp) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1197.2

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1197.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1197.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1195.2
  %i.bpq = load ptr, ptr %81, align 8, !tbaa !13  ; 2 uses
  %i.bpr = icmp eq ptr %i.bpq, %i.abi
  br i1 %i.bpr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1197.3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1195.3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1195.3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1197.2
  %i.bps = load i64, ptr %i.abi, align 8, !tbaa !18
  %i.bpt = add i64 %i.bps, 1
  call void @_ZdlPvm(ptr noundef %i.bpq, i64 noundef %i.bpt) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1197.3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1197.3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1197.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1195.3
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #22
end_hunk_1
begin_hunk_2_@main:bb.a
_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1513: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1510
  %i.cdp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.65, i64 noundef 19)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1515 unwind label %.loopexit3481 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1515: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1513
  %i.cdq = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6casadi6MatrixIdE8nonzerosEv(ptr noundef nonnull align 8 dereferenceable(40) %96)
          to label %bb.jg unwind label %.loopexit3481

bb.jg:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1515
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  invoke void @_ZN6casadi3strIdEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIT_SaIS8_EEb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(24) %i.cdq, i1 noundef zeroext false)
          to label %.noexc1523 unwind label %.loopexit3481

.noexc1523:                                       ; preds = %bb.jg
  %i.cdr = load ptr, ptr %12, align 8, !tbaa !13
  %i.cds = load i64, ptr %i.rg, align 8, !tbaa !23
  %i.cdt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.cdr, i64 noundef %i.cds)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i1519 unwind label %bb.jh ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i1519: ; preds = %.noexc1523
  %i.cdu = load ptr, ptr %12, align 8, !tbaa !13  ; 2 uses
  %i.cdv = icmp eq ptr %i.cdu, %i.rh
  br i1 %i.cdv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i1522, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1520

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1520: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i1519
  %i.cdw = load i64, ptr %i.rh, align 8, !tbaa !18
  %i.cdx = add i64 %i.cdw, 1
  call void @_ZdlPvm(ptr noundef %i.cdu, i64 noundef %i.cdx) #21
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i1522

bb.jh:                                            ; preds = %.noexc1523
  %i.cdy = landingpad { ptr, i32 }
          cleanup
  %i.cdz = load ptr, ptr %12, align 8, !tbaa !13  ; 2 uses
  %i.cea = icmp eq ptr %i.cdz, %i.rh
  br i1 %i.cea, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i1517, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i1516

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i1516: ; preds = %bb.jh
  %i.ceb = load i64, ptr %i.rh, align 8, !tbaa !18
  %i.cec = add i64 %i.ceb, 1
  call void @_ZdlPvm(ptr noundef %i.cdz, i64 noundef %i.cec) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i1517

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i1517: ; preds = %bb.jh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i1516
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %.body1524

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i1522: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i1519, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1520
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  %i.ced = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.66, i64 noundef 20)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1528 unwind label %.loopexit3481 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1528: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i1522
  %i.cee = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6casadi6MatrixIdE8nonzerosEv(ptr noundef nonnull align 8 dereferenceable(40) %100)
          to label %bb.ji unwind label %.loopexit3481

bb.ji:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1528
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  invoke void @_ZN6casadi3strIdEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIT_SaIS8_EEb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(24) %i.cee, i1 noundef zeroext false)
          to label %.noexc1536 unwind label %.loopexit3481

.noexc1536:                                       ; preds = %bb.ji
  %i.cef = load ptr, ptr %11, align 8, !tbaa !13
  %i.ceg = load i64, ptr %i.ri, align 8, !tbaa !23
  %i.ceh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.cef, i64 noundef %i.ceg)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i1532 unwind label %bb.jj ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i1532: ; preds = %.noexc1536
  %i.cei = load ptr, ptr %11, align 8, !tbaa !13  ; 2 uses
  %i.cej = icmp eq ptr %i.cei, %i.rj
  br i1 %i.cej, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i1535, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1533

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1533: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i1532
  %i.cek = load i64, ptr %i.rj, align 8, !tbaa !18
  %i.cel = add i64 %i.cek, 1
  call void @_ZdlPvm(ptr noundef %i.cei, i64 noundef %i.cel) #21
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i1535

bb.jj:                                            ; preds = %.noexc1536
  %i.cem = landingpad { ptr, i32 }
          cleanup
  %i.cen = load ptr, ptr %11, align 8, !tbaa !13  ; 2 uses
  %i.ceo = icmp eq ptr %i.cen, %i.rj
  br i1 %i.ceo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i1530, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i1529

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i1529: ; preds = %bb.jj
  %i.cep = load i64, ptr %i.rj, align 8, !tbaa !18
  %i.ceq = add i64 %i.cep, 1
  call void @_ZdlPvm(ptr noundef %i.cen, i64 noundef %i.ceq) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i1530

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i1530: ; preds = %bb.jj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i1529
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %.body1524

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i1535: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i1532, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1533
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  %i.cer = load ptr, ptr @_ZSt4cout, align 8, !tbaa !123
  %i.ces = getelementptr i8, ptr %i.cer, i64 -24
  %i.cet = load i64, ptr %i.ces, align 8
  %i.ceu = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.cet
  %i.cev = getelementptr inbounds nuw i8, ptr %i.ceu, i64 240
  %i.cew = load ptr, ptr %i.cev, align 8, !tbaa !125 ; 6 uses
  %.not.i.i.i2593 = icmp eq ptr %i.cew, null
  br i1 %.not.i.i.i2593, label %bb.jk, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2594

bb.jk:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i1535
  invoke void @_ZSt16__throw_bad_castv() #25
          to label %.noexc2598 unwind label %.loopexit.split-lp3482

.noexc2598:                                       ; preds = %bb.jk
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2594: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i1535
  %i.cex = getelementptr inbounds nuw i8, ptr %i.cew, i64 56
  %i.cey = load i8, ptr %i.cex, align 8, !tbaa !140
  %.not.i1.i.i2595 = icmp eq i8 %i.cey, 0
  br i1 %.not.i1.i.i2595, label %bb.jm, label %bb.jl

bb.jl:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2594
  %i.cez = getelementptr inbounds nuw i8, ptr %i.cew, i64 67
  %i.cfa = load i8, ptr %i.cez, align 1, !tbaa !18
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2596

bb.jm:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2594
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.cew)
          to label %.noexc2599 unwind label %.loopexit3481

.noexc2599:                                       ; preds = %bb.jm
  %i.cfb = load ptr, ptr %i.cew, align 8, !tbaa !123
  %i.cfc = getelementptr inbounds nuw i8, ptr %i.cfb, i64 48
  %i.cfd = load ptr, ptr %i.cfc, align 8
  %i.cfe = invoke noundef signext i8 %i.cfd(ptr noundef nonnull align 8 dereferenceable(570) %i.cew, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2596 unwind label %.loopexit3481, !inline_history !146

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2596: ; preds = %.noexc2599, %bb.jl
  %.0.i.i.i2597 = phi i8 [ %i.cfa, %bb.jl ], [ %i.cfe, %.noexc2599 ]
  %i.cff = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i2597)
          to label %.noexc2601 unwind label %.loopexit3481

.noexc2601:                                       ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2596
  %i.cfg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cff)
          to label %_ZNSolsEPFRSoS_E.exit1541 unwind label %.loopexit3481 ; 0 uses

_ZNSolsEPFRSoS_E.exit1541:                        ; preds = %.noexc2601
  call void @llvm.lifetime.start.p0(ptr nonnull %104) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %105) #22
  store ptr %i.rk, ptr %105, align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.rk, ptr noundef nonnull align 1 dereferenceable(5) @.str.67, i64 5, i1 false)
  store i64 5, ptr %i.rl, align 8, !tbaa !23
  store i8 0, ptr %i.acl, align 1, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %106) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %107) #22
  store ptr %i.rm, ptr %107, align 8, !tbaa !22
  store i16 12408, ptr %i.rm, align 8
  store i64 2, ptr %i.rn, align 8, !tbaa !23
  store i8 0, ptr %i.acm, align 2, !tbaa !18
  store ptr %i.rp, ptr %i.ro, align 8, !tbaa !22
  store i8 112, ptr %i.rp, align 8, !tbaa !18
  store i64 1, ptr %i.rq, align 8, !tbaa !23
  store i8 0, ptr %i.acn, align 1, !tbaa !18
  store ptr %i.rs, ptr %i.rr, align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.rs, ptr noundef nonnull align 1 dereferenceable(5) @.str.45, i64 5, i1 false)
  store i64 5, ptr %i.rt, align 8, !tbaa !23
  store i8 0, ptr %i.aco, align 1, !tbaa !18
  store ptr %i.rv, ptr %i.ru, align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.rv, ptr noundef nonnull align 1 dereferenceable(6) @.str.58, i64 6, i1 false)
  store i64 6, ptr %i.rw, align 8, !tbaa !23
  store i8 0, ptr %i.acp, align 2, !tbaa !18
  store ptr %i.ry, ptr %i.rx, align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.ry, ptr noundef nonnull align 1 dereferenceable(6) @.str.59, i64 6, i1 false)
  store i64 6, ptr %i.rz, align 8, !tbaa !23
  store i8 0, ptr %i.acq, align 2, !tbaa !18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %106, i8 0, i64 24, i1 false)
  %i.cfh = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #24
          to label %._crit_edge.i.i1572 unwind label %.body1569.thread ; 23 uses

._crit_edge.i.i1572:                              ; preds = %_ZNSolsEPFRSoS_E.exit1541
  store ptr %i.cfh, ptr %106, align 8, !tbaa !8
  %i.cfi = getelementptr inbounds nuw i8, ptr %i.cfh, i64 160
  store ptr %i.cfi, ptr %i.sa, align 8, !tbaa !21
  %i.cfj = getelementptr inbounds nuw i8, ptr %i.cfh, i64 16 ; 2 uses
  store ptr %i.cfj, ptr %i.cfh, align 8, !tbaa !22
  %i.cfk = load i16, ptr %i.rm, align 8
  store i16 %i.cfk, ptr %i.cfj, align 8
  %i.cfl = getelementptr inbounds nuw i8, ptr %i.cfh, i64 8
  store i64 2, ptr %i.cfl, align 8, !tbaa !23
  %i.cfm = getelementptr inbounds nuw i8, ptr %i.cfh, i64 18
  store i8 0, ptr %i.cfm, align 2, !tbaa !18
  %i.cfn = getelementptr inbounds nuw i8, ptr %i.cfh, i64 32
  %i.cfo = getelementptr inbounds nuw i8, ptr %i.cfh, i64 48 ; 2 uses
  store ptr %i.cfo, ptr %i.cfn, align 8, !tbaa !22
  store i8 112, ptr %i.cfo, align 8, !tbaa !18
  %i.cfp = getelementptr inbounds nuw i8, ptr %i.cfh, i64 40
  store i64 1, ptr %i.cfp, align 8, !tbaa !23
  %i.cfq = getelementptr inbounds nuw i8, ptr %i.cfh, i64 49
  store i8 0, ptr %i.cfq, align 1, !tbaa !18
  %i.cfr = getelementptr inbounds nuw i8, ptr %i.cfh, i64 64
  %i.cfs = getelementptr inbounds nuw i8, ptr %i.cfh, i64 80 ; 2 uses
  store ptr %i.cfs, ptr %i.cfr, align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.cfs, ptr noundef nonnull align 1 dereferenceable(5) @.str.45, i64 5, i1 false)
  %i.cft = getelementptr inbounds nuw i8, ptr %i.cfh, i64 72
  store i64 5, ptr %i.cft, align 8, !tbaa !23
  %i.cfu = getelementptr inbounds nuw i8, ptr %i.cfh, i64 85
  store i8 0, ptr %i.cfu, align 1, !tbaa !18
  %i.cfv = getelementptr inbounds nuw i8, ptr %i.cfh, i64 96
  %i.cfw = getelementptr inbounds nuw i8, ptr %i.cfh, i64 112 ; 2 uses
  store ptr %i.cfw, ptr %i.cfv, align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.cfw, ptr noundef nonnull align 1 dereferenceable(6) @.str.58, i64 6, i1 false)
  %i.cfx = getelementptr inbounds nuw i8, ptr %i.cfh, i64 104
  store i64 6, ptr %i.cfx, align 8, !tbaa !23
  %i.cfy = getelementptr inbounds nuw i8, ptr %i.cfh, i64 118
  store i8 0, ptr %i.cfy, align 2, !tbaa !18
  %i.cfz = getelementptr inbounds nuw i8, ptr %i.cfh, i64 128
  %i.cga = getelementptr inbounds nuw i8, ptr %i.cfh, i64 144 ; 2 uses
  store ptr %i.cga, ptr %i.cfz, align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.cga, ptr noundef nonnull align 1 dereferenceable(6) @.str.59, i64 6, i1 false)
  %i.cgb = getelementptr inbounds nuw i8, ptr %i.cfh, i64 136
  store i64 6, ptr %i.cgb, align 8, !tbaa !23
  %i.cgc = getelementptr inbounds nuw i8, ptr %i.cfh, i64 150
  store i8 0, ptr %i.cgc, align 2, !tbaa !18
  %i.cgd = getelementptr inbounds nuw i8, ptr %i.cfh, i64 160
  store ptr %i.cgd, ptr %i.sb, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %108) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %109) #22
  store ptr %i.sc, ptr %109, align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.sc, ptr noundef nonnull align 1 dereferenceable(10) @.str.68, i64 10, i1 false)
  store i64 10, ptr %i.sd, align 8, !tbaa !23
  store i8 0, ptr %i.acr, align 2, !tbaa !18
  store ptr %i.sf, ptr %i.se, align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.sf, ptr noundef nonnull align 1 dereferenceable(9) @.str.69, i64 9, i1 false)
  store i64 9, ptr %i.sg, align 8, !tbaa !23
  store i8 0, ptr %i.acs, align 1, !tbaa !18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %108, i8 0, i64 24, i1 false)
  %i.cge = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #24
          to label %bb.jn unwind label %.body1583.thread ; 11 uses

.body1569.thread:                                 ; preds = %_ZNSolsEPFRSoS_E.exit1541
  %i.cgf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2231

bb.jn:                                            ; preds = %._crit_edge.i.i1572
  store ptr %i.cge, ptr %108, align 8, !tbaa !8
  %i.cgg = getelementptr inbounds nuw i8, ptr %i.cge, i64 64
  store ptr %i.cgg, ptr %i.sh, align 8, !tbaa !21
  %i.cgh = getelementptr inbounds nuw i8, ptr %i.cge, i64 16 ; 2 uses
  store ptr %i.cgh, ptr %i.cge, align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.cgh, ptr noundef nonnull align 1 dereferenceable(10) @.str.68, i64 10, i1 false)
  %i.cgi = getelementptr inbounds nuw i8, ptr %i.cge, i64 8
  store i64 10, ptr %i.cgi, align 8, !tbaa !23
  %i.cgj = getelementptr inbounds nuw i8, ptr %i.cge, i64 26
  store i8 0, ptr %i.cgj, align 2, !tbaa !18
  %i.cgk = getelementptr inbounds nuw i8, ptr %i.cge, i64 32
  %i.cgl = getelementptr inbounds nuw i8, ptr %i.cge, i64 48 ; 2 uses
  store ptr %i.cgl, ptr %i.cgk, align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.cgl, ptr noundef nonnull align 1 dereferenceable(9) @.str.69, i64 9, i1 false)
  %i.cgm = getelementptr inbounds nuw i8, ptr %i.cge, i64 40
  store i64 9, ptr %i.cgm, align 8, !tbaa !23
  %i.cgn = getelementptr inbounds nuw i8, ptr %i.cge, i64 57
  store i8 0, ptr %i.cgn, align 1, !tbaa !18
  %i.cgo = getelementptr inbounds nuw i8, ptr %i.cge, i64 64
  store ptr %i.cgo, ptr %i.si, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %110) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %110, i8 0, i64 24, i1 false)
  store <2 x ptr> %i.agw, ptr %i.sl, align 8, !tbaa !56
  store i64 0, ptr %i.sm, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %111) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %111, i8 0, i64 24, i1 false)
  store <2 x ptr> %i.agy, ptr %i.sp, align 8, !tbaa !56
  store i64 0, ptr %i.sq, align 8, !tbaa !53
  invoke void @_ZNK6casadi8Function7factoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS6_SaIS6_EESD_RKSt3mapIS6_SB_St4lessIS6_ESaISt4pairIS7_SB_EEERKSE_IS6_NS_11GenericTypeESG_SaISH_IS7_SN_EEE(ptr dead_on_unwind nonnull writable sret(%"class.casadi::Function") align 8 %104, ptr noundef nonnull align 8 dereferenceable(8) %78, ptr noundef nonnull align 8 dereferenceable(32) %105, ptr noundef nonnull align 8 dereferenceable(24) %106, ptr noundef nonnull align 8 dereferenceable(24) %108, ptr noundef nonnull align 8 dereferenceable(48) %110, ptr noundef nonnull align 8 dereferenceable(48) %111)
          to label %bb.jo unwind label %.body1583

.body1583.thread:                                 ; preds = %._crit_edge.i.i1572
  %i.cgp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2225

bb.jo:                                            ; preds = %bb.jn
  %i.cgq = load ptr, ptr %i.so, align 8, !tbaa !50
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %111, ptr noundef %i.cgq)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit1586 unwind label %bb.jp

bb.jp:                                            ; preds = %bb.jo
  %i.cgr = landingpad { ptr, i32 }
          catch ptr null
  %i.cgs = extractvalue { ptr, i32 } %i.cgr, 0
  call void @__clang_call_terminate(ptr %i.cgs) #23
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit1586: ; preds = %bb.jo
  call void @llvm.lifetime.end.p0(ptr nonnull %111) #22
  %i.cgt = load ptr, ptr %i.sk, align 8, !tbaa !50
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %110, ptr noundef %i.cgt)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit1587 unwind label %bb.jq

bb.jq:                                            ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit1586
  %i.cgu = landingpad { ptr, i32 }
          catch ptr null
  %i.cgv = extractvalue { ptr, i32 } %i.cgu, 0
  call void @__clang_call_terminate(ptr %i.cgv) #23
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit1587: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit1586
  call void @llvm.lifetime.end.p0(ptr nonnull %110) #22
  %i.cgw = load ptr, ptr %108, align 8, !tbaa !8  ; 3 uses
  %i.cgx = load ptr, ptr %i.si, align 8, !tbaa !12 ; 2 uses
  %.not4.i.i.i1588 = icmp eq ptr %i.cgw, %i.cgx
  br i1 %.not4.i.i.i1588, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1596, label %.lr.ph.i.i.i1589

.lr.ph.i.i.i1589:                                 ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit1587, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1592
  %.05.i.i.i1590 = phi ptr [ %i.chd, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1592 ], [ %i.cgw, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit1587 ] ; 3 uses
  %i.cgy = load ptr, ptr %.05.i.i.i1590, align 8, !tbaa !13 ; 2 uses
  %i.cgz = getelementptr inbounds nuw i8, ptr %.05.i.i.i1590, i64 16 ; 2 uses
  %i.cha = icmp eq ptr %i.cgy, %i.cgz
  br i1 %i.cha, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1592, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1591

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1591: ; preds = %.lr.ph.i.i.i1589
  %i.chb = load i64, ptr %i.cgz, align 8, !tbaa !18
  %i.chc = add i64 %i.chb, 1
  call void @_ZdlPvm(ptr noundef %i.cgy, i64 noundef %i.chc) #21
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1592

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1592: ; preds = %.lr.ph.i.i.i1589, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1591
  %i.chd = getelementptr inbounds nuw i8, ptr %.05.i.i.i1590, i64 32 ; 2 uses
  %.not.i.i.i1593 = icmp eq ptr %i.chd, %i.cgx
  br i1 %.not.i.i.i1593, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1594, label %.lr.ph.i.i.i1589, !llvm.loop !19

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1594: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1592
  %.pr.i1595 = load ptr, ptr %108, align 8, !tbaa !8
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1596

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1596: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1594, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit1587
  %i.che = phi ptr [ %.pr.i1595, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1594 ], [ %i.cgw, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit1587 ] ; 3 uses
  %.not.i.i1.i1597 = icmp eq ptr %i.che, null
  br i1 %.not.i.i1.i1597, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1600, label %bb.jr

bb.jr:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1596
  %i.chf = load ptr, ptr %i.sh, align 8, !tbaa !21
  %i.chg = ptrtoint ptr %i.chf to i64
  %i.chh = ptrtoint ptr %i.che to i64
  %i.chi = sub i64 %i.chg, %i.chh
  call void @_ZdlPvm(ptr noundef nonnull %i.che, i64 noundef %i.chi) #21
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1600

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1600: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1596, %bb.jr
  %i.chj = load ptr, ptr %i.act, align 8, !tbaa !13 ; 2 uses
  %i.chk = icmp eq ptr %i.chj, %i.acu
  br i1 %i.chk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1603, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1601

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1601: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1600
  %i.chl = load i64, ptr %i.acu, align 8, !tbaa !18
  %i.chm = add i64 %i.chl, 1
  call void @_ZdlPvm(ptr noundef %i.chj, i64 noundef %i.chm) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1603

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1603: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1600, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1601
  %i.chn = load ptr, ptr %109, align 8, !tbaa !13 ; 2 uses
  %i.cho = icmp eq ptr %i.chn, %i.acv
  br i1 %i.cho, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1603.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1601.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1601.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1603
  %i.chp = load i64, ptr %i.acv, align 8, !tbaa !18
  %i.chq = add i64 %i.chp, 1
  call void @_ZdlPvm(ptr noundef %i.chn, i64 noundef %i.chq) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1603.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1603.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1603, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1601.1
  call void @llvm.lifetime.end.p0(ptr nonnull %109) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %108) #22
  %i.chr = load ptr, ptr %106, align 8, !tbaa !8  ; 3 uses
  %i.chs = load ptr, ptr %i.sb, align 8, !tbaa !12 ; 2 uses
  %.not4.i.i.i1604 = icmp eq ptr %i.chr, %i.chs
  br i1 %.not4.i.i.i1604, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1612, label %.lr.ph.i.i.i1605

.lr.ph.i.i.i1605:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1603.1, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1608
  %.05.i.i.i1606 = phi ptr [ %i.chy, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1608 ], [ %i.chr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1603.1 ] ; 3 uses
  %i.cht = load ptr, ptr %.05.i.i.i1606, align 8, !tbaa !13 ; 2 uses
  %i.chu = getelementptr inbounds nuw i8, ptr %.05.i.i.i1606, i64 16 ; 2 uses
  %i.chv = icmp eq ptr %i.cht, %i.chu
  br i1 %i.chv, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1608, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1607

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1607: ; preds = %.lr.ph.i.i.i1605
  %i.chw = load i64, ptr %i.chu, align 8, !tbaa !18
  %i.chx = add i64 %i.chw, 1
  call void @_ZdlPvm(ptr noundef %i.cht, i64 noundef %i.chx) #21
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1608

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1608: ; preds = %.lr.ph.i.i.i1605, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1607
  %i.chy = getelementptr inbounds nuw i8, ptr %.05.i.i.i1606, i64 32 ; 2 uses
  %.not.i.i.i1609 = icmp eq ptr %i.chy, %i.chs
  br i1 %.not.i.i.i1609, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1610, label %.lr.ph.i.i.i1605, !llvm.loop !19

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1610: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1608
  %.pr.i1611 = load ptr, ptr %106, align 8, !tbaa !8
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1612

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1612: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1610, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1603.1
  %i.chz = phi ptr [ %.pr.i1611, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1610 ], [ %i.chr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1603.1 ] ; 3 uses
  %.not.i.i1.i1613 = icmp eq ptr %i.chz, null
  br i1 %.not.i.i1.i1613, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1616, label %bb.js

bb.js:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1612
  %i.cia = load ptr, ptr %i.sa, align 8, !tbaa !21
  %i.cib = ptrtoint ptr %i.cia to i64
  %i.cic = ptrtoint ptr %i.chz to i64
  %i.cid = sub i64 %i.cib, %i.cic
  call void @_ZdlPvm(ptr noundef nonnull %i.chz, i64 noundef %i.cid) #21
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1616

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1616: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1612, %bb.js
  %i.cie = load ptr, ptr %i.acw, align 8, !tbaa !13 ; 2 uses
  %i.cif = icmp eq ptr %i.cie, %i.acx
  br i1 %i.cif, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1619, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1617

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1617: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1616
  %i.cig = load i64, ptr %i.acx, align 8, !tbaa !18
  %i.cih = add i64 %i.cig, 1
  call void @_ZdlPvm(ptr noundef %i.cie, i64 noundef %i.cih) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1619

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1619: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1616, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1617
  %i.cii = load ptr, ptr %i.acy, align 8, !tbaa !13 ; 2 uses
  %i.cij = icmp eq ptr %i.cii, %i.acz
  br i1 %i.cij, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1619.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1617.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1617.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1619
  %i.cik = load i64, ptr %i.acz, align 8, !tbaa !18
  %i.cil = add i64 %i.cik, 1
  call void @_ZdlPvm(ptr noundef %i.cii, i64 noundef %i.cil) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1619.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1619.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1619, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1617.1
  %i.cim = load ptr, ptr %i.ada, align 8, !tbaa !13 ; 2 uses
  %i.cin = icmp eq ptr %i.cim, %i.adb
  br i1 %i.cin, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1619.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1617.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1617.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1619.1
  %i.cio = load i64, ptr %i.adb, align 8, !tbaa !18
  %i.cip = add i64 %i.cio, 1
  call void @_ZdlPvm(ptr noundef %i.cim, i64 noundef %i.cip) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1619.2

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1619.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1619.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1617.2
  %i.ciq = load ptr, ptr %i.adc, align 8, !tbaa !13 ; 2 uses
  %i.cir = icmp eq ptr %i.ciq, %i.add
  br i1 %i.cir, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1619.3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1617.3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1617.3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1619.2
  %i.cis = load i64, ptr %i.add, align 8, !tbaa !18
  %i.cit = add i64 %i.cis, 1
  call void @_ZdlPvm(ptr noundef %i.ciq, i64 noundef %i.cit) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1619.3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1619.3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1619.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1617.3
  %i.ciu = load ptr, ptr %107, align 8, !tbaa !13 ; 2 uses
end_hunk_2
begin_hunk_3_@main:bb.a
_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1768: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1765
  %i.cqw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.65, i64 noundef 19)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1770 unwind label %.loopexit3496 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1770: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1768
  %i.cqx = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6casadi6MatrixIdE8nonzerosEv(ptr noundef nonnull align 8 dereferenceable(40) %115)
          to label %bb.le unwind label %.loopexit3496

bb.le:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1770
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  invoke void @_ZN6casadi3strIdEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIT_SaIS8_EEb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(24) %i.cqx, i1 noundef zeroext false)
          to label %.noexc1778 unwind label %.loopexit3496

.noexc1778:                                       ; preds = %bb.le
  %i.cqy = load ptr, ptr %10, align 8, !tbaa !13
  %i.cqz = load i64, ptr %i.tx, align 8, !tbaa !23
  %i.cra = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.cqy, i64 noundef %i.cqz)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i1774 unwind label %bb.lf ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i1774: ; preds = %.noexc1778
  %i.crb = load ptr, ptr %10, align 8, !tbaa !13  ; 2 uses
  %i.crc = icmp eq ptr %i.crb, %i.ty
  br i1 %i.crc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i1777, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1775

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1775: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i1774
  %i.crd = load i64, ptr %i.ty, align 8, !tbaa !18
  %i.cre = add i64 %i.crd, 1
  call void @_ZdlPvm(ptr noundef %i.crb, i64 noundef %i.cre) #21
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i1777

bb.lf:                                            ; preds = %.noexc1778
  %i.crf = landingpad { ptr, i32 }
          cleanup
  %i.crg = load ptr, ptr %10, align 8, !tbaa !13  ; 2 uses
  %i.crh = icmp eq ptr %i.crg, %i.ty
  br i1 %i.crh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i1772, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i1771

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i1771: ; preds = %bb.lf
  %i.cri = load i64, ptr %i.ty, align 8, !tbaa !18
  %i.crj = add i64 %i.cri, 1
  call void @_ZdlPvm(ptr noundef %i.crg, i64 noundef %i.crj) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i1772

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i1772: ; preds = %bb.lf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i1771
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %.body1779

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i1777: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i1774, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1775
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  %i.crk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.66, i64 noundef 20)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1783 unwind label %.loopexit3496 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1783: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i1777
  %i.crl = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6casadi6MatrixIdE8nonzerosEv(ptr noundef nonnull align 8 dereferenceable(40) %117)
          to label %bb.lg unwind label %.loopexit3496

bb.lg:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1783
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  invoke void @_ZN6casadi3strIdEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIT_SaIS8_EEb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(24) %i.crl, i1 noundef zeroext false)
          to label %.noexc1791 unwind label %.loopexit3496

.noexc1791:                                       ; preds = %bb.lg
  %i.crm = load ptr, ptr %9, align 8, !tbaa !13
  %i.crn = load i64, ptr %i.tz, align 8, !tbaa !23
  %i.cro = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.crm, i64 noundef %i.crn)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i1787 unwind label %bb.lh ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i1787: ; preds = %.noexc1791
  %i.crp = load ptr, ptr %9, align 8, !tbaa !13   ; 2 uses
  %i.crq = icmp eq ptr %i.crp, %i.ua
  br i1 %i.crq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i1790, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1788

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1788: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i1787
  %i.crr = load i64, ptr %i.ua, align 8, !tbaa !18
  %i.crs = add i64 %i.crr, 1
  call void @_ZdlPvm(ptr noundef %i.crp, i64 noundef %i.crs) #21
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i1790

bb.lh:                                            ; preds = %.noexc1791
  %i.crt = landingpad { ptr, i32 }
          cleanup
  %i.cru = load ptr, ptr %9, align 8, !tbaa !13   ; 2 uses
  %i.crv = icmp eq ptr %i.cru, %i.ua
  br i1 %i.crv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i1785, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i1784

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i1784: ; preds = %bb.lh
  %i.crw = load i64, ptr %i.ua, align 8, !tbaa !18
  %i.crx = add i64 %i.crw, 1
  call void @_ZdlPvm(ptr noundef %i.cru, i64 noundef %i.crx) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i1785

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i1785: ; preds = %bb.lh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i1784
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %.body1779

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i1790: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i1787, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1788
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %i.cry = load ptr, ptr @_ZSt4cout, align 8, !tbaa !123
  %i.crz = getelementptr i8, ptr %i.cry, i64 -24
  %i.csa = load i64, ptr %i.crz, align 8
  %i.csb = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.csa
  %i.csc = getelementptr inbounds nuw i8, ptr %i.csb, i64 240
  %i.csd = load ptr, ptr %i.csc, align 8, !tbaa !125 ; 6 uses
  %.not.i.i.i2661 = icmp eq ptr %i.csd, null
  br i1 %.not.i.i.i2661, label %bb.li, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2662

bb.li:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i1790
  invoke void @_ZSt16__throw_bad_castv() #25
          to label %.noexc2666 unwind label %.loopexit.split-lp3497

.noexc2666:                                       ; preds = %bb.li
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2662: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i1790
  %i.cse = getelementptr inbounds nuw i8, ptr %i.csd, i64 56
  %i.csf = load i8, ptr %i.cse, align 8, !tbaa !140
  %.not.i1.i.i2663 = icmp eq i8 %i.csf, 0
  br i1 %.not.i1.i.i2663, label %bb.lk, label %bb.lj

bb.lj:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2662
  %i.csg = getelementptr inbounds nuw i8, ptr %i.csd, i64 67
  %i.csh = load i8, ptr %i.csg, align 1, !tbaa !18
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2664

bb.lk:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2662
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.csd)
          to label %.noexc2667 unwind label %.loopexit3496

.noexc2667:                                       ; preds = %bb.lk
  %i.csi = load ptr, ptr %i.csd, align 8, !tbaa !123
  %i.csj = getelementptr inbounds nuw i8, ptr %i.csi, i64 48
  %i.csk = load ptr, ptr %i.csj, align 8
  %i.csl = invoke noundef signext i8 %i.csk(ptr noundef nonnull align 8 dereferenceable(570) %i.csd, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2664 unwind label %.loopexit3496, !inline_history !146

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2664: ; preds = %.noexc2667, %bb.lj
  %.0.i.i.i2665 = phi i8 [ %i.csh, %bb.lj ], [ %i.csl, %.noexc2667 ]
  %i.csm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i2665)
          to label %.noexc2669 unwind label %.loopexit3496

.noexc2669:                                       ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2664
  %i.csn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.csm)
          to label %_ZNSolsEPFRSoS_E.exit1796 unwind label %.loopexit3496 ; 0 uses

_ZNSolsEPFRSoS_E.exit1796:                        ; preds = %.noexc2669
  call void @llvm.lifetime.start.p0(ptr nonnull %119) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %120) #22
  store ptr %i.ub, ptr %120, align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.ub, ptr noundef nonnull align 1 dereferenceable(5) @.str.73, i64 5, i1 false)
  store i64 5, ptr %i.uc, align 8, !tbaa !23
  store i8 0, ptr %i.aek, align 1, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %121) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %122) #22
  store ptr %i.ud, ptr %122, align 8, !tbaa !22
  store i16 12408, ptr %i.ud, align 8
  store i64 2, ptr %i.ue, align 8, !tbaa !23
  store i8 0, ptr %i.ael, align 2, !tbaa !18
  store ptr %i.ug, ptr %i.uf, align 8, !tbaa !22
  store i8 112, ptr %i.ug, align 8, !tbaa !18
  store i64 1, ptr %i.uh, align 8, !tbaa !23
  store i8 0, ptr %i.aem, align 1, !tbaa !18
  store ptr %i.uj, ptr %i.ui, align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.uj, ptr noundef nonnull align 1 dereferenceable(6) @.str.58, i64 6, i1 false)
  store i64 6, ptr %i.uk, align 8, !tbaa !23
  store i8 0, ptr %i.aen, align 2, !tbaa !18
  store ptr %i.um, ptr %i.ul, align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.um, ptr noundef nonnull align 1 dereferenceable(6) @.str.59, i64 6, i1 false)
  store i64 6, ptr %i.un, align 8, !tbaa !23
  store i8 0, ptr %i.aeo, align 2, !tbaa !18
  store ptr %i.up, ptr %i.uo, align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.up, ptr noundef nonnull align 1 dereferenceable(9) @.str.74, i64 9, i1 false)
  store i64 9, ptr %i.uq, align 8, !tbaa !23
  store i8 0, ptr %i.aep, align 1, !tbaa !18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %121, i8 0, i64 24, i1 false)
  %i.cso = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #24
          to label %._crit_edge.i.i1827 unwind label %.body1824.thread ; 23 uses

._crit_edge.i.i1827:                              ; preds = %_ZNSolsEPFRSoS_E.exit1796
  store ptr %i.cso, ptr %121, align 8, !tbaa !8
  %i.csp = getelementptr inbounds nuw i8, ptr %i.cso, i64 160
  store ptr %i.csp, ptr %i.ur, align 8, !tbaa !21
  %i.csq = getelementptr inbounds nuw i8, ptr %i.cso, i64 16 ; 2 uses
  store ptr %i.csq, ptr %i.cso, align 8, !tbaa !22
  %i.csr = load i16, ptr %i.ud, align 8
  store i16 %i.csr, ptr %i.csq, align 8
  %i.css = getelementptr inbounds nuw i8, ptr %i.cso, i64 8
  store i64 2, ptr %i.css, align 8, !tbaa !23
  %i.cst = getelementptr inbounds nuw i8, ptr %i.cso, i64 18
  store i8 0, ptr %i.cst, align 2, !tbaa !18
  %i.csu = getelementptr inbounds nuw i8, ptr %i.cso, i64 32
  %i.csv = getelementptr inbounds nuw i8, ptr %i.cso, i64 48 ; 2 uses
  store ptr %i.csv, ptr %i.csu, align 8, !tbaa !22
  store i8 112, ptr %i.csv, align 8, !tbaa !18
  %i.csw = getelementptr inbounds nuw i8, ptr %i.cso, i64 40
  store i64 1, ptr %i.csw, align 8, !tbaa !23
  %i.csx = getelementptr inbounds nuw i8, ptr %i.cso, i64 49
  store i8 0, ptr %i.csx, align 1, !tbaa !18
  %i.csy = getelementptr inbounds nuw i8, ptr %i.cso, i64 64
  %i.csz = getelementptr inbounds nuw i8, ptr %i.cso, i64 80 ; 2 uses
  store ptr %i.csz, ptr %i.csy, align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.csz, ptr noundef nonnull align 1 dereferenceable(6) @.str.58, i64 6, i1 false)
  %i.cta = getelementptr inbounds nuw i8, ptr %i.cso, i64 72
  store i64 6, ptr %i.cta, align 8, !tbaa !23
  %i.ctb = getelementptr inbounds nuw i8, ptr %i.cso, i64 86
  store i8 0, ptr %i.ctb, align 2, !tbaa !18
  %i.ctc = getelementptr inbounds nuw i8, ptr %i.cso, i64 96
  %i.ctd = getelementptr inbounds nuw i8, ptr %i.cso, i64 112 ; 2 uses
  store ptr %i.ctd, ptr %i.ctc, align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.ctd, ptr noundef nonnull align 1 dereferenceable(6) @.str.59, i64 6, i1 false)
  %i.cte = getelementptr inbounds nuw i8, ptr %i.cso, i64 104
  store i64 6, ptr %i.cte, align 8, !tbaa !23
  %i.ctf = getelementptr inbounds nuw i8, ptr %i.cso, i64 118
  store i8 0, ptr %i.ctf, align 2, !tbaa !18
  %i.ctg = getelementptr inbounds nuw i8, ptr %i.cso, i64 128
  %i.cth = getelementptr inbounds nuw i8, ptr %i.cso, i64 144 ; 2 uses
  store ptr %i.cth, ptr %i.ctg, align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.cth, ptr noundef nonnull align 1 dereferenceable(9) @.str.74, i64 9, i1 false)
  %i.cti = getelementptr inbounds nuw i8, ptr %i.cso, i64 136
  store i64 9, ptr %i.cti, align 8, !tbaa !23
  %i.ctj = getelementptr inbounds nuw i8, ptr %i.cso, i64 153
  store i8 0, ptr %i.ctj, align 1, !tbaa !18
  %i.ctk = getelementptr inbounds nuw i8, ptr %i.cso, i64 160
  store ptr %i.ctk, ptr %i.us, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %123) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %124) #22
  store ptr %i.ut, ptr %124, align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.ut, ptr noundef nonnull align 1 dereferenceable(6) @.str.57, i64 6, i1 false)
  store i64 6, ptr %i.uu, align 8, !tbaa !23
  store i8 0, ptr %i.aeq, align 2, !tbaa !18
  store ptr %i.uw, ptr %i.uv, align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.uw, ptr noundef nonnull align 1 dereferenceable(5) @.str.56, i64 5, i1 false)
  store i64 5, ptr %i.ux, align 8, !tbaa !23
  store i8 0, ptr %i.aer, align 1, !tbaa !18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %123, i8 0, i64 24, i1 false)
  %i.ctl = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #24
          to label %bb.ll unwind label %.body1838.thread ; 11 uses

.body1824.thread:                                 ; preds = %_ZNSolsEPFRSoS_E.exit1796
  %i.ctm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2266

bb.ll:                                            ; preds = %._crit_edge.i.i1827
  store ptr %i.ctl, ptr %123, align 8, !tbaa !8
  %i.ctn = getelementptr inbounds nuw i8, ptr %i.ctl, i64 64
  store ptr %i.ctn, ptr %i.uy, align 8, !tbaa !21
  %i.cto = getelementptr inbounds nuw i8, ptr %i.ctl, i64 16 ; 2 uses
  store ptr %i.cto, ptr %i.ctl, align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.cto, ptr noundef nonnull align 1 dereferenceable(6) @.str.57, i64 6, i1 false)
  %i.ctp = getelementptr inbounds nuw i8, ptr %i.ctl, i64 8
  store i64 6, ptr %i.ctp, align 8, !tbaa !23
  %i.ctq = getelementptr inbounds nuw i8, ptr %i.ctl, i64 22
  store i8 0, ptr %i.ctq, align 2, !tbaa !18
  %i.ctr = getelementptr inbounds nuw i8, ptr %i.ctl, i64 32
  %i.cts = getelementptr inbounds nuw i8, ptr %i.ctl, i64 48 ; 2 uses
  store ptr %i.cts, ptr %i.ctr, align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.cts, ptr noundef nonnull align 1 dereferenceable(5) @.str.56, i64 5, i1 false)
  %i.ctt = getelementptr inbounds nuw i8, ptr %i.ctl, i64 40
  store i64 5, ptr %i.ctt, align 8, !tbaa !23
  %i.ctu = getelementptr inbounds nuw i8, ptr %i.ctl, i64 53
  store i8 0, ptr %i.ctu, align 1, !tbaa !18
  %i.ctv = getelementptr inbounds nuw i8, ptr %i.ctl, i64 64
  store ptr %i.ctv, ptr %i.uz, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %125) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %125, i8 0, i64 24, i1 false)
  store <2 x ptr> %i.agq, ptr %i.vc, align 8, !tbaa !56
  store i64 0, ptr %i.vd, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %126) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %126, i8 0, i64 24, i1 false)
  store <2 x ptr> %i.ags, ptr %i.vg, align 8, !tbaa !56
  store i64 0, ptr %i.vh, align 8, !tbaa !53
  invoke void @_ZNK6casadi8Function7factoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS6_SaIS6_EESD_RKSt3mapIS6_SB_St4lessIS6_ESaISt4pairIS7_SB_EEERKSE_IS6_NS_11GenericTypeESG_SaISH_IS7_SN_EEE(ptr dead_on_unwind nonnull writable sret(%"class.casadi::Function") align 8 %119, ptr noundef nonnull align 8 dereferenceable(8) %78, ptr noundef nonnull align 8 dereferenceable(32) %120, ptr noundef nonnull align 8 dereferenceable(24) %121, ptr noundef nonnull align 8 dereferenceable(24) %123, ptr noundef nonnull align 8 dereferenceable(48) %125, ptr noundef nonnull align 8 dereferenceable(48) %126)
          to label %bb.lm unwind label %.body1838

.body1838.thread:                                 ; preds = %._crit_edge.i.i1827
  %i.ctw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2260

bb.lm:                                            ; preds = %bb.ll
  %i.ctx = load ptr, ptr %i.vf, align 8, !tbaa !50
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %126, ptr noundef %i.ctx)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit1841 unwind label %bb.ln

bb.ln:                                            ; preds = %bb.lm
  %i.cty = landingpad { ptr, i32 }
          catch ptr null
  %i.ctz = extractvalue { ptr, i32 } %i.cty, 0
  call void @__clang_call_terminate(ptr %i.ctz) #23
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit1841: ; preds = %bb.lm
  call void @llvm.lifetime.end.p0(ptr nonnull %126) #22
  %i.cua = load ptr, ptr %i.vb, align 8, !tbaa !50
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %125, ptr noundef %i.cua)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit1842 unwind label %bb.lo

bb.lo:                                            ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit1841
  %i.cub = landingpad { ptr, i32 }
          catch ptr null
  %i.cuc = extractvalue { ptr, i32 } %i.cub, 0
  call void @__clang_call_terminate(ptr %i.cuc) #23
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit1842: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit1841
  call void @llvm.lifetime.end.p0(ptr nonnull %125) #22
  %i.cud = load ptr, ptr %123, align 8, !tbaa !8  ; 3 uses
  %i.cue = load ptr, ptr %i.uz, align 8, !tbaa !12 ; 2 uses
  %.not4.i.i.i1843 = icmp eq ptr %i.cud, %i.cue
  br i1 %.not4.i.i.i1843, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1851, label %.lr.ph.i.i.i1844

.lr.ph.i.i.i1844:                                 ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit1842, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1847
  %.05.i.i.i1845 = phi ptr [ %i.cuk, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1847 ], [ %i.cud, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit1842 ] ; 3 uses
  %i.cuf = load ptr, ptr %.05.i.i.i1845, align 8, !tbaa !13 ; 2 uses
  %i.cug = getelementptr inbounds nuw i8, ptr %.05.i.i.i1845, i64 16 ; 2 uses
  %i.cuh = icmp eq ptr %i.cuf, %i.cug
  br i1 %i.cuh, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1847, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1846

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1846: ; preds = %.lr.ph.i.i.i1844
  %i.cui = load i64, ptr %i.cug, align 8, !tbaa !18
  %i.cuj = add i64 %i.cui, 1
  call void @_ZdlPvm(ptr noundef %i.cuf, i64 noundef %i.cuj) #21
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1847

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1847: ; preds = %.lr.ph.i.i.i1844, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1846
  %i.cuk = getelementptr inbounds nuw i8, ptr %.05.i.i.i1845, i64 32 ; 2 uses
  %.not.i.i.i1848 = icmp eq ptr %i.cuk, %i.cue
  br i1 %.not.i.i.i1848, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1849, label %.lr.ph.i.i.i1844, !llvm.loop !19

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1849: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1847
  %.pr.i1850 = load ptr, ptr %123, align 8, !tbaa !8
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1851

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1851: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1849, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit1842
  %i.cul = phi ptr [ %.pr.i1850, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1849 ], [ %i.cud, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit1842 ] ; 3 uses
  %.not.i.i1.i1852 = icmp eq ptr %i.cul, null
  br i1 %.not.i.i1.i1852, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1855, label %bb.lp

bb.lp:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1851
  %i.cum = load ptr, ptr %i.uy, align 8, !tbaa !21
  %i.cun = ptrtoint ptr %i.cum to i64
  %i.cuo = ptrtoint ptr %i.cul to i64
  %i.cup = sub i64 %i.cun, %i.cuo
  call void @_ZdlPvm(ptr noundef nonnull %i.cul, i64 noundef %i.cup) #21
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1855

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1855: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1851, %bb.lp
  %i.cuq = load ptr, ptr %i.aes, align 8, !tbaa !13 ; 2 uses
  %i.cur = icmp eq ptr %i.cuq, %i.aet
  br i1 %i.cur, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1858, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1856

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1856: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1855
  %i.cus = load i64, ptr %i.aet, align 8, !tbaa !18
  %i.cut = add i64 %i.cus, 1
  call void @_ZdlPvm(ptr noundef %i.cuq, i64 noundef %i.cut) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1858

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1858: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1855, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1856
  %i.cuu = load ptr, ptr %124, align 8, !tbaa !13 ; 2 uses
  %i.cuv = icmp eq ptr %i.cuu, %i.aeu
  br i1 %i.cuv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1858.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1856.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1856.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1858
  %i.cuw = load i64, ptr %i.aeu, align 8, !tbaa !18
  %i.cux = add i64 %i.cuw, 1
  call void @_ZdlPvm(ptr noundef %i.cuu, i64 noundef %i.cux) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1858.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1858.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1858, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1856.1
  call void @llvm.lifetime.end.p0(ptr nonnull %124) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %123) #22
  %i.cuy = load ptr, ptr %121, align 8, !tbaa !8  ; 3 uses
  %i.cuz = load ptr, ptr %i.us, align 8, !tbaa !12 ; 2 uses
  %.not4.i.i.i1859 = icmp eq ptr %i.cuy, %i.cuz
  br i1 %.not4.i.i.i1859, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1867, label %.lr.ph.i.i.i1860

.lr.ph.i.i.i1860:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1858.1, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1863
  %.05.i.i.i1861 = phi ptr [ %i.cvf, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1863 ], [ %i.cuy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1858.1 ] ; 3 uses
  %i.cva = load ptr, ptr %.05.i.i.i1861, align 8, !tbaa !13 ; 2 uses
  %i.cvb = getelementptr inbounds nuw i8, ptr %.05.i.i.i1861, i64 16 ; 2 uses
  %i.cvc = icmp eq ptr %i.cva, %i.cvb
  br i1 %i.cvc, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1863, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1862

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1862: ; preds = %.lr.ph.i.i.i1860
  %i.cvd = load i64, ptr %i.cvb, align 8, !tbaa !18
  %i.cve = add i64 %i.cvd, 1
  call void @_ZdlPvm(ptr noundef %i.cva, i64 noundef %i.cve) #21
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1863

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1863: ; preds = %.lr.ph.i.i.i1860, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1862
  %i.cvf = getelementptr inbounds nuw i8, ptr %.05.i.i.i1861, i64 32 ; 2 uses
  %.not.i.i.i1864 = icmp eq ptr %i.cvf, %i.cuz
  br i1 %.not.i.i.i1864, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1865, label %.lr.ph.i.i.i1860, !llvm.loop !19

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1865: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1863
  %.pr.i1866 = load ptr, ptr %121, align 8, !tbaa !8
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1867

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1867: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1865, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1858.1
  %i.cvg = phi ptr [ %.pr.i1866, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1865 ], [ %i.cuy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1858.1 ] ; 3 uses
  %.not.i.i1.i1868 = icmp eq ptr %i.cvg, null
  br i1 %.not.i.i1.i1868, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1871, label %bb.lq

bb.lq:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1867
  %i.cvh = load ptr, ptr %i.ur, align 8, !tbaa !21
  %i.cvi = ptrtoint ptr %i.cvh to i64
  %i.cvj = ptrtoint ptr %i.cvg to i64
  %i.cvk = sub i64 %i.cvi, %i.cvj
  call void @_ZdlPvm(ptr noundef nonnull %i.cvg, i64 noundef %i.cvk) #21
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1871

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1871: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1867, %bb.lq
  %i.cvl = load ptr, ptr %i.aev, align 8, !tbaa !13 ; 2 uses
  %i.cvm = icmp eq ptr %i.cvl, %i.aew
  br i1 %i.cvm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1874, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1872

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1872: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1871
  %i.cvn = load i64, ptr %i.aew, align 8, !tbaa !18
  %i.cvo = add i64 %i.cvn, 1
  call void @_ZdlPvm(ptr noundef %i.cvl, i64 noundef %i.cvo) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1874

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1874: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1871, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1872
  %i.cvp = load ptr, ptr %i.aex, align 8, !tbaa !13 ; 2 uses
  %i.cvq = icmp eq ptr %i.cvp, %i.aey
  br i1 %i.cvq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1874.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1872.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1872.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1874
  %i.cvr = load i64, ptr %i.aey, align 8, !tbaa !18
  %i.cvs = add i64 %i.cvr, 1
  call void @_ZdlPvm(ptr noundef %i.cvp, i64 noundef %i.cvs) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1874.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1874.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1874, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1872.1
  %i.cvt = load ptr, ptr %i.aez, align 8, !tbaa !13 ; 2 uses
  %i.cvu = icmp eq ptr %i.cvt, %i.afa
  br i1 %i.cvu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1874.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1872.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1872.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1874.1
  %i.cvv = load i64, ptr %i.afa, align 8, !tbaa !18
  %i.cvw = add i64 %i.cvv, 1
  call void @_ZdlPvm(ptr noundef %i.cvt, i64 noundef %i.cvw) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1874.2

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1874.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1874.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1872.2
  %i.cvx = load ptr, ptr %i.afb, align 8, !tbaa !13 ; 2 uses
  %i.cvy = icmp eq ptr %i.cvx, %i.afc
  br i1 %i.cvy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1874.3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1872.3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1872.3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1874.2
  %i.cvz = load i64, ptr %i.afc, align 8, !tbaa !18
  %i.cwa = add i64 %i.cvz, 1
  call void @_ZdlPvm(ptr noundef %i.cvx, i64 noundef %i.cwa) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1874.3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1874.3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1874.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1872.3
  %i.cwb = load ptr, ptr %122, align 8, !tbaa !13 ; 2 uses
end_hunk_3
