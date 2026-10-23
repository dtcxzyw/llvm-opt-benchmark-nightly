Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/tree?download=true
inline.NumInlined: 6283
inline.NumDeleted: 1853
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 58
loop-unroll.NumUnrolled: 60
begin_hunk_0_@_ZNK8LightGBM4Tree8ToStringB5cxx11Ev:bb.a
_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit347: ; preds = %bb.ea
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i8 10, ptr %i.j, align 1, !tbaa !202
  %i.acd = load ptr, ptr %i.acc, align 8, !tbaa !54
  %i.ace = getelementptr i8, ptr %i.acd, i64 -24
  %i.acf = load i64, ptr %i.ace, align 8
  %i.acg = getelementptr inbounds i8, ptr %i.acc, i64 %i.acf
  %i.ach = getelementptr inbounds nuw i8, ptr %i.acg, i64 16
  %i.aci = load i64, ptr %i.ach, align 8, !tbaa !261
  %.not.i348 = icmp eq i64 %i.aci, 0
  br i1 %.not.i348, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit347
  %i.acj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.acc, ptr noundef nonnull %i.j, i64 noundef 1)
          to label %bb.ed unwind label %bb.ei     ; 0 uses

bb.ec:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit347
  %i.ack = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.acc, i8 noundef signext 10)
          to label %bb.ed unwind label %bb.ei     ; 0 uses

bb.ed:                                            ; preds = %bb.eb, %bb.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.acl = load ptr, ptr %30, align 8, !tbaa !262 ; 2 uses
  %i.acm = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 2 uses
  %i.acn = icmp eq ptr %i.acl, %i.acm
  br i1 %i.acn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i353

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i353: ; preds = %bb.ed
  %i.aco = load i64, ptr %i.acm, align 8, !tbaa !202
  %i.acp = add i64 %i.aco, 1
  call void @_ZdlPvm(ptr noundef %i.acl, i64 noundef %i.acp) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355: ; preds = %bb.ed, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i353
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #12
  %i.acq = load i32, ptr %i.ak, align 4, !tbaa !117 ; 3 uses
  %i.acr = sext i32 %i.acq to i64                 ; 3 uses
  %i.acs = icmp slt i32 %i.acq, 0
  br i1 %i.acs, label %bb.ee, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

bb.ee:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #42
          to label %.noexc356 unwind label %bb.ej

.noexc356:                                        ; preds = %bb.ee
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355
  %.not.i.i.i.i = icmp eq i32 %i.acq, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i, label %bb.ef

_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %31, i8 0, i64 24, i1 false)
  br label %bb.eg

bb.ef:                                            ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.act = shl nuw nsw i64 %i.acr, 2
  %i.acu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.act) #43
          to label %.noexc357 unwind label %bb.ej ; 6 uses

.noexc357:                                        ; preds = %bb.ef
  store ptr %i.acu, ptr %31, align 8, !tbaa !62
  %i.acv = getelementptr inbounds nuw [4 x i8], ptr %i.acu, i64 %i.acr ; 3 uses
  %i.acw = getelementptr inbounds nuw i8, ptr %31, i64 16
  store ptr %i.acv, ptr %i.acw, align 8, !tbaa !63
  store i32 0, ptr %i.acu, align 4, !tbaa !88
  %i.acx = getelementptr i8, ptr %i.acu, i64 4    ; 3 uses
  %i.acy = add nsw i64 %i.acr, -1                 ; 2 uses
  %i.acz = icmp eq i64 %i.acy, 0
  br i1 %i.acz, label %bb.eg, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc357
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.acy, 2 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.acx, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !88
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acx, i64 %.idx.i.i.i.i.i.i.i
  br label %bb.eg

bb.eg:                                            ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc357, %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i
  %i.adb = phi ptr [ null, %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i ], [ %i.acv, %.noexc357 ], [ %i.acv, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ] ; 2 uses
  %i.adc = phi ptr [ null, %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i ], [ %i.acu, %.noexc357 ], [ %i.acu, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ] ; 10 uses
  %.0.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i ], [ %i.acx, %.noexc357 ], [ %i.ada, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ]
  %i.add = getelementptr inbounds nuw i8, ptr %31, i64 8
  store ptr %.0.i.i.i.i.i, ptr %i.add, align 8, !tbaa !201
  %i.ade = load i32, ptr %i.ak, align 4, !tbaa !117 ; 3 uses
  %i.adf = icmp sgt i32 %i.ade, 0
  br i1 %i.adf, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.eg
  %i.adg = getelementptr inbounds nuw i8, ptr %1, i64 552
  %i.adh = load ptr, ptr %i.adg, align 8, !tbaa !72 ; 5 uses
  %i.adi = zext nneg i32 %i.ade to i64            ; 3 uses
  %min.iters.check588 = icmp ult i32 %i.ade, 5
  br i1 %min.iters.check588, label %scalar.ph587.preheader, label %vector.ph589

scalar.ph587.preheader:                           ; preds = %vector.body591, %.lr.ph
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec590, %vector.body591 ]
  br label %scalar.ph587

vector.ph589:                                     ; preds = %.lr.ph
  %i.adj = and i64 %i.adi, 3                      ; 2 uses
  %i.adk = icmp eq i64 %i.adj, 0
  %i.adl = select i1 %i.adk, i64 4, i64 %i.adj
  %n.vec590 = sub nsw i64 %i.adi, %i.adl          ; 2 uses
  br label %vector.body591

vector.body591:                                   ; preds = %vector.body591, %vector.ph589
  %index592 = phi i64 [ 0, %vector.ph589 ], [ %index.next593, %vector.body591 ] ; 6 uses
  %i.adm = getelementptr inbounds nuw [24 x i8], ptr %i.adh, i64 %index592 ; 2 uses
  %i.adn = getelementptr inbounds nuw [24 x i8], ptr %i.adh, i64 %index592 ; 2 uses
  %i.ado = getelementptr inbounds nuw i8, ptr %i.adn, i64 24
  %i.adp = getelementptr inbounds nuw [24 x i8], ptr %i.adh, i64 %index592 ; 2 uses
  %i.adq = getelementptr inbounds nuw i8, ptr %i.adp, i64 48
  %i.adr = getelementptr inbounds nuw [24 x i8], ptr %i.adh, i64 %index592 ; 2 uses
  %i.ads = getelementptr inbounds nuw i8, ptr %i.adr, i64 72
  %i.adt = getelementptr inbounds nuw i8, ptr %i.adm, i64 8
  %i.adu = getelementptr inbounds nuw i8, ptr %i.adn, i64 32
  %i.adv = getelementptr inbounds nuw i8, ptr %i.adp, i64 56
  %i.adw = getelementptr inbounds nuw i8, ptr %i.adr, i64 80
  %i.adx = load ptr, ptr %i.adt, align 8, !tbaa !196
  %i.ady = load ptr, ptr %i.adu, align 8, !tbaa !196
  %i.adz = insertelement <2 x ptr> poison, ptr %i.adx, i64 0
  %i.aea = insertelement <2 x ptr> %i.adz, ptr %i.ady, i64 1
  %i.aeb = load ptr, ptr %i.adv, align 8, !tbaa !196
  %i.aec = load ptr, ptr %i.adw, align 8, !tbaa !196
  %i.aed = insertelement <2 x ptr> poison, ptr %i.aeb, i64 0
  %i.aee = insertelement <2 x ptr> %i.aed, ptr %i.aec, i64 1
  %i.aef = load ptr, ptr %i.adm, align 8, !tbaa !68
  %i.aeg = load ptr, ptr %i.ado, align 8, !tbaa !68
  %i.aeh = insertelement <2 x ptr> poison, ptr %i.aef, i64 0
  %i.aei = insertelement <2 x ptr> %i.aeh, ptr %i.aeg, i64 1
  %i.aej = load ptr, ptr %i.adq, align 8, !tbaa !68
  %i.aek = load ptr, ptr %i.ads, align 8, !tbaa !68
  %i.ael = insertelement <2 x ptr> poison, ptr %i.aej, i64 0
  %i.aem = insertelement <2 x ptr> %i.ael, ptr %i.aek, i64 1
  %i.aen = ptrtoint <2 x ptr> %i.aea to <2 x i64>
  %i.aeo = ptrtoint <2 x ptr> %i.aee to <2 x i64>
  %i.aep = ptrtoint <2 x ptr> %i.aei to <2 x i64>
  %i.aeq = ptrtoint <2 x ptr> %i.aem to <2 x i64>
  %i.aer = sub <2 x i64> %i.aen, %i.aep
  %i.aes = sub <2 x i64> %i.aeo, %i.aeq
  %i.aet = lshr exact <2 x i64> %i.aer, splat (i64 3)
  %i.aeu = lshr exact <2 x i64> %i.aes, splat (i64 3)
  %i.aev = trunc <2 x i64> %i.aet to <2 x i32>
  %i.aew = trunc <2 x i64> %i.aeu to <2 x i32>
  %i.aex = getelementptr inbounds nuw [4 x i8], ptr %i.adc, i64 %index592 ; 2 uses
  %i.aey = getelementptr inbounds nuw i8, ptr %i.aex, i64 8
  store <2 x i32> %i.aev, ptr %i.aex, align 4, !tbaa !88
  store <2 x i32> %i.aew, ptr %i.aey, align 4, !tbaa !88
  %index.next593 = add nuw i64 %index592, 4       ; 2 uses
  %i.aez = icmp eq i64 %index.next593, %n.vec590
  br i1 %i.aez, label %scalar.ph587.preheader, label %vector.body591, !llvm.loop !738

._crit_edge:                                      ; preds = %scalar.ph587, %bb.eg
  %i.afa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull @.str.25, i64 noundef 13)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit359 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.eh:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit345
  %i.afb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit362

bb.ei:                                            ; preds = %bb.ec, %bb.eb, %bb.ea
  %i.afc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.afd = load ptr, ptr %30, align 8, !tbaa !262 ; 2 uses
  %i.afe = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 2 uses
  %i.aff = icmp eq ptr %i.afd, %i.afe
  br i1 %i.aff, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit362, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i360

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i360: ; preds = %bb.ei
  %i.afg = load i64, ptr %i.afe, align 8, !tbaa !202
  %i.afh = add i64 %i.afg, 1
  call void @_ZdlPvm(ptr noundef %i.afd, i64 noundef %i.afh) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit362

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit362: ; preds = %bb.ei, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i360, %bb.eh
  %.pn71 = phi { ptr, i32 } [ %i.afb, %bb.eh ], [ %i.afc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i360 ], [ %i.afc, %bb.ei ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #12
  br label %.body443

bb.ej:                                            ; preds = %bb.ef, %bb.ee
  %i.afi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit429

scalar.ph587:                                     ; preds = %scalar.ph587.preheader, %scalar.ph587
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph587 ], [ %indvars.iv.ph, %scalar.ph587.preheader ] ; 3 uses
  %i.afj = getelementptr inbounds nuw [24 x i8], ptr %i.adh, i64 %indvars.iv ; 2 uses
  %i.afk = getelementptr inbounds nuw i8, ptr %i.afj, i64 8
  %i.afl = load ptr, ptr %i.afk, align 8, !tbaa !196
  %i.afm = load ptr, ptr %i.afj, align 8, !tbaa !68
  %i.afn = ptrtoint ptr %i.afl to i64
  %i.afo = ptrtoint ptr %i.afm to i64
  %i.afp = sub i64 %i.afn, %i.afo
  %i.afq = lshr exact i64 %i.afp, 3
  %i.afr = trunc i64 %i.afq to i32
  %i.afs = getelementptr inbounds nuw [4 x i8], ptr %i.adc, i64 %indvars.iv
  store i32 %i.afr, ptr %i.afs, align 4, !tbaa !88
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %35 = icmp samesign ult i64 %indvars.iv.next, %i.adi
  br i1 %35, label %scalar.ph587, label %._crit_edge, !llvm.loop !739

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit359: ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #12
  %i.aft = load i32, ptr %i.ak, align 4, !tbaa !117
  %i.afu = sext i32 %i.aft to i64
  invoke fastcc void @_ZN8LightGBM7CommonCL13ArrayToStringILb0EiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIT0_SaIS9_EEm(ptr dead_on_unwind noalias writable align 8 %32, ptr noundef nonnull align 8 dereferenceable(24) %31, i64 noundef %i.afu)
          to label %bb.ek unwind label %bb.eq

bb.ek:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit359
  %i.afv = load ptr, ptr %32, align 8, !tbaa !262
  %i.afw = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.afx = load i64, ptr %i.afw, align 8, !tbaa !263
  %i.afy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef %i.afv, i64 noundef %i.afx)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit364 unwind label %bb.er ; 4 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit364: ; preds = %bb.ek
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i8 10, ptr %i.i, align 1, !tbaa !202
  %i.afz = load ptr, ptr %i.afy, align 8, !tbaa !54
  %i.aga = getelementptr i8, ptr %i.afz, i64 -24
  %i.agb = load i64, ptr %i.aga, align 8
  %i.agc = getelementptr inbounds i8, ptr %i.afy, i64 %i.agb
  %i.agd = getelementptr inbounds nuw i8, ptr %i.agc, i64 16
  %i.age = load i64, ptr %i.agd, align 8, !tbaa !261
  %.not.i365 = icmp eq i64 %i.age, 0
  br i1 %.not.i365, label %bb.em, label %bb.el

bb.el:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit364
  %i.agf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.afy, ptr noundef nonnull %i.i, i64 noundef 1)
          to label %bb.en unwind label %bb.er     ; 0 uses

bb.em:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit364
  %i.agg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.afy, i8 noundef signext 10)
          to label %bb.en unwind label %bb.er     ; 0 uses

bb.en:                                            ; preds = %bb.el, %bb.em
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.agh = load ptr, ptr %32, align 8, !tbaa !262 ; 2 uses
  %i.agi = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  %i.agj = icmp eq ptr %i.agh, %i.agi
  br i1 %i.agj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit372, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i370

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i370: ; preds = %bb.en
  %i.agk = load i64, ptr %i.agi, align 8, !tbaa !202
  %i.agl = add i64 %i.agk, 1
  call void @_ZdlPvm(ptr noundef %i.agh, i64 noundef %i.agl) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit372

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit372: ; preds = %bb.en, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i370
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #12
  %i.agm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull @.str.26, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit374.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit374.preheader: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit372
  %i.agn = load i32, ptr %i.ak, align 4, !tbaa !117
  %i.ago = icmp sgt i32 %i.agn, 0
  br i1 %i.ago, label %.lr.ph458, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit374._crit_edge

.lr.ph458:                                        ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit374.preheader
  %i.agp = getelementptr inbounds nuw i8, ptr %1, i64 600
  %i.agq = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.agr = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 4 uses
  br label %bb.es

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit374._crit_edge: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit374, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit374.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i8 10, ptr %i.h, align 1, !tbaa !202
  %i.ags = load ptr, ptr %i.ai, align 8, !tbaa !54
  %i.agt = getelementptr i8, ptr %i.ags, i64 -24
  %i.agu = load i64, ptr %i.agt, align 8
  %i.agv = getelementptr inbounds i8, ptr %i.ai, i64 %i.agu
  %i.agw = getelementptr inbounds nuw i8, ptr %i.agv, i64 16
  %i.agx = load i64, ptr %i.agw, align 8, !tbaa !261
  %.not.i375 = icmp eq i64 %i.agx, 0
  br i1 %.not.i375, label %bb.ep, label %bb.eo

bb.eo:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit374._crit_edge
  %i.agy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull %i.h, i64 noundef 1)
          to label %bb.fd unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.ep:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit374._crit_edge
  %i.agz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, i8 noundef signext 10)
          to label %bb.fd unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.eq:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit359
  %i.aha = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit382

bb.er:                                            ; preds = %bb.em, %bb.el, %bb.ek
  %i.ahb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ahc = load ptr, ptr %32, align 8, !tbaa !262 ; 2 uses
  %i.ahd = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  %i.ahe = icmp eq ptr %i.ahc, %i.ahd
  br i1 %i.ahe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit382, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i380

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i380: ; preds = %bb.er
  %i.ahf = load i64, ptr %i.ahd, align 8, !tbaa !202
  %i.ahg = add i64 %i.ahf, 1
  call void @_ZdlPvm(ptr noundef %i.ahc, i64 noundef %i.ahg) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit382

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit382: ; preds = %bb.er, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i380, %bb.eq
  %.pn73 = phi { ptr, i32 } [ %i.aha, %bb.eq ], [ %i.ahb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i380 ], [ %i.ahb, %bb.er ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #12
  br label %.loopexit.split-lp.loopexit.split-lp

bb.es:                                            ; preds = %.lr.ph458, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit374
  %indvars.iv471 = phi i64 [ 0, %.lr.ph458 ], [ %indvars.iv.next472, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit374 ] ; 3 uses
  %i.ahh = getelementptr inbounds nuw [4 x i8], ptr %i.adc, i64 %indvars.iv471
  %i.ahi = load i32, ptr %i.ahh, align 4, !tbaa !88
  %i.ahj = icmp sgt i32 %i.ahi, 0
  br i1 %i.ahj, label %bb.et, label %bb.fa

bb.et:                                            ; preds = %bb.es
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #12
  %i.ahk = load ptr, ptr %i.agp, align 8, !tbaa !58
  %i.ahl = getelementptr inbounds nuw [24 x i8], ptr %i.ahk, i64 %indvars.iv471 ; 3 uses
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.ahl, i64 8
  %i.ahn = load ptr, ptr %i.ahm, align 8, !tbaa !201
  %i.aho = load ptr, ptr %i.ahl, align 8, !tbaa !62
  %i.ahp = ptrtoint ptr %i.ahn to i64
  %i.ahq = ptrtoint ptr %i.aho to i64
  %i.ahr = sub i64 %i.ahp, %i.ahq
  %i.ahs = ashr exact i64 %i.ahr, 2
  invoke fastcc void @_ZN8LightGBM7CommonCL13ArrayToStringILb0EiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIT0_SaIS9_EEm(ptr dead_on_unwind noalias writable align 8 %33, ptr noundef nonnull align 8 dereferenceable(24) %i.ahl, i64 noundef %i.ahs)
          to label %bb.eu unwind label %bb.ey

bb.eu:                                            ; preds = %bb.et
  %i.aht = load ptr, ptr %33, align 8, !tbaa !262
  %i.ahu = load i64, ptr %i.agq, align 8, !tbaa !263
  %i.ahv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef %i.aht, i64 noundef %i.ahu)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit384 unwind label %bb.ez ; 4 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit384: ; preds = %bb.eu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i8 32, ptr %i.g, align 1, !tbaa !202
  %i.ahw = load ptr, ptr %i.ahv, align 8, !tbaa !54
  %i.ahx = getelementptr i8, ptr %i.ahw, i64 -24
  %i.ahy = load i64, ptr %i.ahx, align 8
  %i.ahz = getelementptr inbounds i8, ptr %i.ahv, i64 %i.ahy
  %i.aia = getelementptr inbounds nuw i8, ptr %i.ahz, i64 16
  %i.aib = load i64, ptr %i.aia, align 8, !tbaa !261
  %.not.i385 = icmp eq i64 %i.aib, 0
  br i1 %.not.i385, label %bb.ew, label %bb.ev

bb.ev:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit384
  %i.aic = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ahv, ptr noundef nonnull %i.g, i64 noundef 1)
          to label %bb.ex unwind label %bb.ez     ; 0 uses

bb.ew:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit384
  %i.aid = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ahv, i8 noundef signext 32)
          to label %bb.ex unwind label %bb.ez     ; 0 uses

bb.ex:                                            ; preds = %bb.ev, %bb.ew
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.aie = load ptr, ptr %33, align 8, !tbaa !262 ; 2 uses
  %i.aif = icmp eq ptr %i.aie, %i.agr
  br i1 %i.aif, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit392, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i390

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i390: ; preds = %bb.ex
  %i.aig = load i64, ptr %i.agr, align 8, !tbaa !202
  %i.aih = add i64 %i.aig, 1
  call void @_ZdlPvm(ptr noundef %i.aie, i64 noundef %i.aih) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit392

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit392: ; preds = %bb.ex, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i390
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #12
  br label %bb.fa

bb.ey:                                            ; preds = %bb.et
  %i.aii = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit395

bb.ez:                                            ; preds = %bb.ew, %bb.ev, %bb.eu
  %i.aij = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aik = load ptr, ptr %33, align 8, !tbaa !262 ; 2 uses
  %i.ail = icmp eq ptr %i.aik, %i.agr
  br i1 %i.ail, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit395, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i393

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i393: ; preds = %bb.ez
  %i.aim = load i64, ptr %i.agr, align 8, !tbaa !202
  %i.ain = add i64 %i.aim, 1
  call void @_ZdlPvm(ptr noundef %i.aik, i64 noundef %i.ain) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit395

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit395: ; preds = %bb.ez, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i393, %bb.ey
  %.pn79 = phi { ptr, i32 } [ %i.aii, %bb.ey ], [ %i.aij, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i393 ], [ %i.aij, %bb.ez ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #12
  br label %.loopexit.split-lp.loopexit.split-lp.thread

bb.fa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit392, %bb.es
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i8 32, ptr %i.f, align 1, !tbaa !202
  %i.aio = load ptr, ptr %i.ai, align 8, !tbaa !54
  %i.aip = getelementptr i8, ptr %i.aio, i64 -24
  %i.aiq = load i64, ptr %i.aip, align 8
end_hunk_0
begin_hunk_1_@_ZNK8LightGBM4Tree8ToStringB5cxx11Ev:bb.a
  %.not.i396 = icmp eq i64 %i.ait, 0
  br i1 %.not.i396, label %bb.fc, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.aiu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull %i.f, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit374 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.fc:                                            ; preds = %bb.fa
  %i.aiv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, i8 noundef signext 32)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit374 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit374: ; preds = %bb.fb, %bb.fc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %indvars.iv.next472 = add nuw nsw i64 %indvars.iv471, 1 ; 2 uses
  %i.aiw = load i32, ptr %i.ak, align 4, !tbaa !117
  %i.aix = sext i32 %i.aiw to i64
  %i.aiy = icmp slt i64 %indvars.iv.next472, %i.aix
  br i1 %i.aiy, label %bb.es, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit374._crit_edge, !llvm.loop !740

bb.fd:                                            ; preds = %bb.eo, %bb.ep
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.aiz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull @.str.27, i64 noundef 11)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit402.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit402.preheader: ; preds = %bb.fd
  %i.aja = load i32, ptr %i.ak, align 4, !tbaa !117
  %i.ajb = icmp sgt i32 %i.aja, 0
  br i1 %i.ajb, label %.lr.ph460, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit402._crit_edge

.lr.ph460:                                        ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit402.preheader
  %i.ajc = getelementptr inbounds nuw i8, ptr %1, i64 552
  %i.ajd = getelementptr inbounds nuw i8, ptr %34, i64 8
  %i.aje = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 4 uses
  br label %bb.fg

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit402._crit_edge: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit402, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit402.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 10, ptr %i.e, align 1, !tbaa !202
  %i.ajf = load ptr, ptr %i.ai, align 8, !tbaa !54
  %i.ajg = getelementptr i8, ptr %i.ajf, i64 -24
  %i.ajh = load i64, ptr %i.ajg, align 8
  %i.aji = getelementptr inbounds i8, ptr %i.ai, i64 %i.ajh
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.aji, i64 16
  %i.ajk = load i64, ptr %i.ajj, align 8, !tbaa !261
  %.not.i403 = icmp eq i64 %i.ajk, 0
  br i1 %.not.i403, label %bb.ff, label %bb.fe

bb.fe:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit402._crit_edge
  %i.ajl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull %i.e, i64 noundef 1)
          to label %bb.fr unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.ff:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit402._crit_edge
  %i.ajm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, i8 noundef signext 10)
          to label %bb.fr unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.fg:                                            ; preds = %.lr.ph460, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit402
  %indvars.iv474 = phi i64 [ 0, %.lr.ph460 ], [ %indvars.iv.next475, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit402 ] ; 3 uses
  %i.ajn = getelementptr inbounds nuw [4 x i8], ptr %i.adc, i64 %indvars.iv474
  %i.ajo = load i32, ptr %i.ajn, align 4, !tbaa !88
  %i.ajp = icmp sgt i32 %i.ajo, 0
  br i1 %i.ajp, label %bb.fh, label %bb.fo

bb.fh:                                            ; preds = %bb.fg
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #12
  %i.ajq = load ptr, ptr %i.ajc, align 8, !tbaa !72
  %i.ajr = getelementptr inbounds nuw [24 x i8], ptr %i.ajq, i64 %indvars.iv474 ; 3 uses
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.ajr, i64 8
  %i.ajt = load ptr, ptr %i.ajs, align 8, !tbaa !196
  %i.aju = load ptr, ptr %i.ajr, align 8, !tbaa !68
  %i.ajv = ptrtoint ptr %i.ajt to i64
  %i.ajw = ptrtoint ptr %i.aju to i64
  %i.ajx = sub i64 %i.ajv, %i.ajw
  %i.ajy = ashr exact i64 %i.ajx, 3
  invoke fastcc void @_ZN8LightGBM7CommonCL13ArrayToStringILb1EdEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIT0_SaIS9_EEm(ptr dead_on_unwind noalias writable align 8 %34, ptr noundef nonnull align 8 dereferenceable(24) %i.ajr, i64 noundef %i.ajy)
          to label %bb.fi unwind label %bb.fm

bb.fi:                                            ; preds = %bb.fh
  %i.ajz = load ptr, ptr %34, align 8, !tbaa !262
  %i.aka = load i64, ptr %i.ajd, align 8, !tbaa !263
  %i.akb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef %i.ajz, i64 noundef %i.aka)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit409 unwind label %bb.fn ; 4 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit409: ; preds = %bb.fi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 32, ptr %i.d, align 1, !tbaa !202
  %i.akc = load ptr, ptr %i.akb, align 8, !tbaa !54
  %i.akd = getelementptr i8, ptr %i.akc, i64 -24
  %i.ake = load i64, ptr %i.akd, align 8
  %i.akf = getelementptr inbounds i8, ptr %i.akb, i64 %i.ake
  %i.akg = getelementptr inbounds nuw i8, ptr %i.akf, i64 16
  %i.akh = load i64, ptr %i.akg, align 8, !tbaa !261
  %.not.i410 = icmp eq i64 %i.akh, 0
  br i1 %.not.i410, label %bb.fk, label %bb.fj

bb.fj:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit409
  %i.aki = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.akb, ptr noundef nonnull %i.d, i64 noundef 1)
          to label %bb.fl unwind label %bb.fn     ; 0 uses

bb.fk:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit409
  %i.akj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.akb, i8 noundef signext 32)
          to label %bb.fl unwind label %bb.fn     ; 0 uses

bb.fl:                                            ; preds = %bb.fj, %bb.fk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.akk = load ptr, ptr %34, align 8, !tbaa !262 ; 2 uses
  %i.akl = icmp eq ptr %i.akk, %i.aje
  br i1 %i.akl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit417, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i415

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i415: ; preds = %bb.fl
  %i.akm = load i64, ptr %i.aje, align 8, !tbaa !202
  %i.akn = add i64 %i.akm, 1
  call void @_ZdlPvm(ptr noundef %i.akk, i64 noundef %i.akn) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit417

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit417: ; preds = %bb.fl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i415
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #12
  br label %bb.fo

bb.fm:                                            ; preds = %bb.fh
  %i.ako = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit420

bb.fn:                                            ; preds = %bb.fk, %bb.fj, %bb.fi
  %i.akp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.akq = load ptr, ptr %34, align 8, !tbaa !262 ; 2 uses
  %i.akr = icmp eq ptr %i.akq, %i.aje
  br i1 %i.akr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit420, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i418

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i418: ; preds = %bb.fn
  %i.aks = load i64, ptr %i.aje, align 8, !tbaa !202
  %i.akt = add i64 %i.aks, 1
  call void @_ZdlPvm(ptr noundef %i.akq, i64 noundef %i.akt) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit420

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit420: ; preds = %bb.fn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i418, %bb.fm
  %.pn75 = phi { ptr, i32 } [ %i.ako, %bb.fm ], [ %i.akp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i418 ], [ %i.akp, %bb.fn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #12
  br label %.loopexit.split-lp.loopexit.split-lp.thread

bb.fo:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit417, %bb.fg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 32, ptr %i.c, align 1, !tbaa !202
  %i.aku = load ptr, ptr %i.ai, align 8, !tbaa !54
  %i.akv = getelementptr i8, ptr %i.aku, i64 -24
  %i.akw = load i64, ptr %i.akv, align 8
  %i.akx = getelementptr inbounds i8, ptr %i.ai, i64 %i.akw
  %i.aky = getelementptr inbounds nuw i8, ptr %i.akx, i64 16
  %i.akz = load i64, ptr %i.aky, align 8, !tbaa !261
  %.not.i421 = icmp eq i64 %i.akz, 0
  br i1 %.not.i421, label %bb.fq, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.ala = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull %i.c, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit402 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.fq:                                            ; preds = %bb.fo
  %i.alb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, i8 noundef signext 32)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit402 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit402: ; preds = %bb.fp, %bb.fq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %indvars.iv.next475 = add nuw nsw i64 %indvars.iv474, 1 ; 2 uses
  %i.alc = load i32, ptr %i.ak, align 4, !tbaa !117
  %i.ald = sext i32 %i.alc to i64
  %i.ale = icmp slt i64 %indvars.iv.next475, %i.ald
  br i1 %i.ale, label %bb.fg, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit402._crit_edge, !llvm.loop !741

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.fq, %bb.fp, %bb.fb, %bb.fc
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.loopexit.split-lp.thread

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ff, %bb.fe, %bb.fd, %bb.ep, %bb.eo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit372, %._crit_edge
  %lpad.loopexit.split-lp463 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.loopexit.split-lp

bb.fr:                                            ; preds = %bb.fe, %bb.ff
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.not.i.i.i426 = icmp eq ptr %i.adc, null
  br i1 %.not.i.i.i426, label %_ZNSt6vectorIiSaIiEED2Ev.exit427, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.alf = ptrtoint ptr %i.adb to i64
  %i.alg = ptrtoint ptr %i.adc to i64
  %i.alh = sub i64 %i.alf, %i.alg
  call void @_ZdlPvm(ptr noundef nonnull %i.adc, i64 noundef %i.alh) #41
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit427

_ZNSt6vectorIiSaIiEED2Ev.exit427:                 ; preds = %bb.fr, %bb.fs
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #12
  br label %bb.ft

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit382
  %.pn81.pn = phi { ptr, i32 } [ %.pn73, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit382 ], [ %lpad.loopexit.split-lp463, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i428 = icmp eq ptr %i.adc, null
  br i1 %.not.i.i.i428, label %_ZNSt6vectorIiSaIiEED2Ev.exit429, label %.loopexit.split-lp.loopexit.split-lp.thread

.loopexit.split-lp.loopexit.split-lp.thread:      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit395, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit420, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp
  %.pn81.pn577 = phi { ptr, i32 } [ %.pn81.pn, %.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp ], [ %.pn79, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit395 ], [ %.pn75, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit420 ]
  %i.ali = ptrtoint ptr %i.adb to i64
  %i.alj = ptrtoint ptr %i.adc to i64
  %i.alk = sub i64 %i.ali, %i.alj
  call void @_ZdlPvm(ptr noundef nonnull %i.adc, i64 noundef %i.alk) #41
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit429

_ZNSt6vectorIiSaIiEED2Ev.exit429:                 ; preds = %.loopexit.split-lp.loopexit.split-lp.thread, %.loopexit.split-lp.loopexit.split-lp, %bb.ej
  %.pn81.pn.pn = phi { ptr, i32 } [ %i.afi, %bb.ej ], [ %.pn81.pn, %.loopexit.split-lp.loopexit.split-lp ], [ %.pn81.pn577, %.loopexit.split-lp.loopexit.split-lp.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #12
  br label %.body443

bb.ft:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit427, %bb.dy
  %i.all = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull @.str.28, i64 noundef 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit431 unwind label %bb.cq ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit431: ; preds = %bb.ft
  %i.alm = getelementptr inbounds nuw i8, ptr %1, i64 536
  %i.aln = load double, ptr %i.alm, align 8, !tbaa !199
  %i.alo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, double noundef %i.aln)
          to label %_ZNSolsEd.exit unwind label %bb.cq ; 4 uses

_ZNSolsEd.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit431
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 10, ptr %i.b, align 1, !tbaa !202
  %i.alp = load ptr, ptr %i.alo, align 8, !tbaa !54
  %i.alq = getelementptr i8, ptr %i.alp, i64 -24
  %i.alr = load i64, ptr %i.alq, align 8
  %i.als = getelementptr inbounds i8, ptr %i.alo, i64 %i.alr
  %i.alt = getelementptr inbounds nuw i8, ptr %i.als, i64 16
  %i.alu = load i64, ptr %i.alt, align 8, !tbaa !261
  %.not.i433 = icmp eq i64 %i.alu, 0
  br i1 %.not.i433, label %bb.fv, label %bb.fu

bb.fu:                                            ; preds = %_ZNSolsEd.exit
  %i.alv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.alo, ptr noundef nonnull %i.b, i64 noundef 1)
          to label %bb.fw unwind label %bb.cq     ; 0 uses

bb.fv:                                            ; preds = %_ZNSolsEd.exit
  %i.alw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.alo, i8 noundef signext 10)
          to label %bb.fw unwind label %bb.cq     ; 0 uses

bb.fw:                                            ; preds = %bb.fu, %bb.fv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 10, ptr %i.a, align 1, !tbaa !202
  %i.alx = load ptr, ptr %i.ai, align 8, !tbaa !54
  %i.aly = getelementptr i8, ptr %i.alx, i64 -24
  %i.alz = load i64, ptr %i.aly, align 8
  %i.ama = getelementptr inbounds i8, ptr %i.ai, i64 %i.alz
  %i.amb = getelementptr inbounds nuw i8, ptr %i.ama, i64 16
  %i.amc = load i64, ptr %i.amb, align 8, !tbaa !261
  %.not.i438 = icmp eq i64 %i.amc, 0
  br i1 %.not.i438, label %bb.fy, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.amd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %bb.fz unwind label %bb.cq     ; 0 uses

bb.fy:                                            ; preds = %bb.fw
  %i.ame = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, i8 noundef signext 10)
          to label %bb.fz unwind label %bb.cq     ; 0 uses

bb.fz:                                            ; preds = %bb.fx, %bb.fy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !758)
  call void @llvm.experimental.noalias.scope.decl(metadata !759)
  %i.amf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.amf, ptr %0, align 8, !tbaa !264, !alias.scope !760
  %i.amg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.amg, align 8, !tbaa !263, !alias.scope !760
  store i8 0, ptr %i.amf, align 8, !tbaa !202, !alias.scope !760
  %i.amh = getelementptr inbounds nuw i8, ptr %14, i64 64
  %i.ami = load ptr, ptr %i.amh, align 8, !tbaa !285, !noalias !760 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.ami, null
  %i.amj = getelementptr inbounds nuw i8, ptr %14, i64 48
  %i.amk = load ptr, ptr %i.amj, align 8, !noalias !760 ; 2 uses
  %i.aml = icmp ugt ptr %i.ami, %i.amk
  %.08.i.i.i = select i1 %i.aml, ptr %i.ami, ptr %i.amk ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.gc, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.amm = getelementptr inbounds nuw i8, ptr %14, i64 56
  %i.amn = load ptr, ptr %i.amm, align 8, !tbaa !286, !noalias !760 ; 2 uses
  %i.amo = ptrtoint ptr %.08.i.i.i to i64
  %i.amp = ptrtoint ptr %i.amn to i64
  %i.amq = sub i64 %i.amo, %i.amp
  %i.amr = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.amn, i64 noundef %i.amq)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.gb ; 0 uses

bb.gb:                                            ; preds = %bb.gc, %bb.ga
  %i.ams = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.amt = load ptr, ptr %0, align 8, !tbaa !262, !alias.scope !760 ; 2 uses
  %i.amu = icmp eq ptr %i.amt, %i.amf
  br i1 %i.amu, label %.body443, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.gb
  %i.amv = load i64, ptr %i.amf, align 8, !tbaa !202, !alias.scope !760
  %i.amw = add i64 %i.amv, 1
  call void @_ZdlPvm(ptr noundef %i.amt, i64 noundef %i.amw) #41
  br label %.body443

bb.gc:                                            ; preds = %bb.fz
  %i.amx = getelementptr inbounds nuw i8, ptr %14, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.amx)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.gb

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.gc, %bb.ga
  %i.amy = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.amy, ptr %14, align 8, !tbaa !54
  %i.amz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.ana = getelementptr i8, ptr %i.amy, i64 -24
  %i.anb = load i64, ptr %i.ana, align 8
  %i.anc = getelementptr inbounds i8, ptr %14, i64 %i.anb
  store ptr %i.amz, ptr %i.anc, align 8, !tbaa !54
  %i.and = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.and, ptr %i.ai, align 8, !tbaa !54
  %i.ane = getelementptr inbounds nuw i8, ptr %14, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ane, align 8, !tbaa !54
  %i.anf = getelementptr inbounds nuw i8, ptr %14, i64 96
  %i.ang = load ptr, ptr %i.anf, align 8, !tbaa !262 ; 2 uses
  %i.anh = getelementptr inbounds nuw i8, ptr %14, i64 112 ; 2 uses
  %i.ani = icmp eq ptr %i.ang, %i.anh
  br i1 %i.ani, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i445

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i445: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.anj = load i64, ptr %i.anh, align 8, !tbaa !202
  %i.ank = add i64 %i.anj, 1
  call void @_ZdlPvm(ptr noundef %i.ang, i64 noundef %i.ank) #41
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i445
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ane, align 8, !tbaa !54
  %i.anl = getelementptr inbounds nuw i8, ptr %14, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.anl) #12
  %i.anm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.anm, ptr %14, align 8, !tbaa !54
  %i.ann = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ano = getelementptr i8, ptr %i.anm, i64 -24
  %i.anp = load i64, ptr %i.ano, align 8
  %i.anq = getelementptr inbounds i8, ptr %14, i64 %i.anp
  store ptr %i.ann, ptr %i.anq, align 8, !tbaa !54
  %i.anr = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 0, ptr %i.anr, align 8, !tbaa !288
  %i.ans = getelementptr inbounds nuw i8, ptr %14, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ans) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #12
  ret void

.body443:                                         ; preds = %bb.gb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.cq, %_ZNSt6vectorIiSaIiEED2Ev.exit429, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit362, %.body280, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit332, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit329, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit326, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit323, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit320, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit317, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308, %_ZNSt6vectorIiSaIiEED2Ev.exit305, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300, %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294
  %.pn81.pn.pn.pn = phi { ptr, i32 } [ %.pn81.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit429 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294 ], [ %.pn71, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit362 ], [ %.pn69, %.body280 ], [ %.pn67, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit332 ], [ %.pn65, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit329 ], [ %.pn63, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit326 ], [ %.pn61, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit323 ], [ %.pn59, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit320 ], [ %.pn57, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit317 ], [ %.pn55, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314 ], [ %.pn53, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311 ], [ %.pn51, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308 ], [ %.pn48.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit305 ], [ %.pn46, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300 ], [ %.pn44, %.body ], [ %i.xh, %bb.cq ], [ %i.ams, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.ams, %bb.gb ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %14) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #12
  resume { ptr, i32 } %.pn81.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #1 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #13

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZN8LightGBM7CommonCL13ArrayToStringILb0EiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIT0_SaIS9_EEm(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef %2) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %3 = alloca %"class.fmt::v11::detail::iterator_buffer", align 8 ; 10 uses
  %4 = alloca %"class.fmt::v11::detail::iterator_buffer", align 8 ; 10 uses
  %5 = alloca %"class.std::locale", align 8       ; 4 uses
  %6 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 22 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !175
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !175
  %i.e = icmp eq ptr %i.b, %i.d
  %i.f = icmp eq i64 %2, 0
  %or.cond = or i1 %i.f, %i.e
  br i1 %or.cond, label %._crit_edge.i.i, label %bb.b

._crit_edge.i.i:                                  ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !264
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.h, align 8, !tbaa !263
  store i8 0, ptr %i.g, align 8, !tbaa !202
  br label %bb.q

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #43 ; 13 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %6)
          to label %bb.c unwind label %bb.j

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.j = load ptr, ptr %6, align 8, !tbaa !54
  %i.k = getelementptr i8, ptr %i.j, i64 -24
  %i.l = load i64, ptr %i.k, align 8
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
end_hunk_1
