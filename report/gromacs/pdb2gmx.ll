Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/pdb2gmx?download=true
inline.NumInlined: 3969
inline.NumDeleted: 1664
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN3gmx12_GLOBAL__N_17pdb2gmx3runEv:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1408: ; preds = %bb.adm
  br i1 %i.dzp, label %bb.adn, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1401: ; preds = %bb.adm
  br i1 %i.dzp, label %bb.adn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.adn:                                           ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1401, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1408
  %i.dzq = load i64, ptr %i.bqg, align 8, !tbaa !59 ; 3 uses
  %i.dzr = icmp ult i64 %i.dzq, 16
  call void @llvm.assume(i1 %i.dzr)
  switch i64 %i.dzq, label %bb.adp [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.ado
  ]

bb.ado:                                           ; preds = %bb.adn
  %i.dzs = load i8, ptr %i.dzo, align 1, !tbaa !60
  store i8 %i.dzs, ptr %i.dzm, align 1, !tbaa !60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.adp:                                           ; preds = %bb.adn
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dzm, ptr align 1 %i.dzo, i64 %i.dzq, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.adp, %bb.ado, %bb.adn
  %i.dzt = load i64, ptr %i.bqg, align 8, !tbaa !59 ; 2 uses
  store i64 %i.dzt, ptr %i.bqd, align 8, !tbaa !59
  %i.dzu = load ptr, ptr %15, align 8, !tbaa !63
  %i.dzv = getelementptr inbounds nuw i8, ptr %i.dzu, i64 %i.dzt
  store i8 0, ptr %i.dzv, align 1, !tbaa !60
  %.pre.i.i1407 = load ptr, ptr %16, align 8, !tbaa !63
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1408
  store ptr %i.dzo, ptr %15, align 8, !tbaa !63
  %i.dzw = load <2 x i64>, ptr %i.bqg, align 8, !tbaa !60
  store <2 x i64> %i.dzw, ptr %i.bqd, align 8, !tbaa !60
  br label %bb.adr

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1401
  %i.dzx = load i64, ptr %i.bqe, align 8, !tbaa !60
  store ptr %i.dzo, ptr %15, align 8, !tbaa !63
  %i.dzy = load <2 x i64>, ptr %i.bqg, align 8, !tbaa !60
  store <2 x i64> %i.dzy, ptr %i.bqd, align 8, !tbaa !60
  %.not.i.i1402 = icmp eq ptr %i.dzm, null
  br i1 %.not.i.i1402, label %bb.adr, label %bb.adq

bb.adq:                                           ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.dzm, ptr %16, align 8, !tbaa !63
  store i64 %i.dzx, ptr %i.bqf, align 8, !tbaa !60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

bb.adr:                                           ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.bqf, ptr %16, align 8, !tbaa !63
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i: ; preds = %bb.adr, %bb.adq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
  %i.dzz = phi ptr [ %.pre.i.i1407, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ], [ %i.dzm, %bb.adq ], [ %i.bqf, %bb.adr ]
  store i64 0, ptr %i.bqg, align 8, !tbaa !59
  store i8 0, ptr %i.dzz, align 1, !tbaa !60
  %i.eaa = load ptr, ptr %16, align 8, !tbaa !63  ; 2 uses
  %i.eab = icmp eq ptr %i.eaa, %i.bqf
  br i1 %i.eab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1404, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1403

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1403: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i
  %i.eac = load i64, ptr %i.bqf, align 8, !tbaa !60
  %i.ead = add i64 %i.eac, 1
  call void @_ZdlPvm(ptr noundef %i.eaa, i64 noundef %i.ead) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1404

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1404: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1403
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #33
  %i.eae = load i64, ptr %i.bqd, align 8, !tbaa !59
  %i.eaf = icmp eq i64 %i.eae, 0
  br i1 %i.eaf, label %bb.ads, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit95.i

bb.ads:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1404
  %i.eag = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dzl) #33
  %i.eah = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %15, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %i.dzl, i64 noundef %i.eag)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit95.i unwind label %bb.adu ; 0 uses

bb.adt:                                           ; preds = %._crit_edge.i1400
  %i.eai = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #33
  br label %bb.ael

bb.adu:                                           ; preds = %bb.ads
  %i.eaj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ael

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit95.i: ; preds = %bb.ads, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1404
  %i.eak = invoke ptr @_Z16getDatabaseEntryRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3gmx8ArrayRefIK17PreprocessResidueEE(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr %i.dxf, ptr %i.dxk)
          to label %bb.adv unwind label %bb.adx   ; 2 uses

bb.adv:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit95.i
  %i.eal = getelementptr inbounds nuw i8, ptr %i.eak, i64 136
  %i.eam = load ptr, ptr %i.eal, align 8, !tbaa !542 ; 2 uses
  %i.ean = getelementptr inbounds nuw i8, ptr %i.eak, i64 144
  %i.eao = load ptr, ptr %i.ean, align 8, !tbaa !542 ; 2 uses
  %.not98129.i = icmp eq ptr %i.eam, %i.eao
  br i1 %.not98129.i, label %.loopexit.i1405, label %.lr.ph136.i

bb.adw:                                           ; preds = %bb.aej
  %i.eap = getelementptr inbounds nuw i8, ptr %.sroa.05.0134.i, i64 232 ; 2 uses
  %.not98.i = icmp eq ptr %i.eap, %i.eao
  br i1 %.not98.i, label %.loopexit.i1405, label %.lr.ph136.i

bb.adx:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit95.i
  %i.eaq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ael

.lr.ph136.i:                                      ; preds = %bb.adv, %bb.adw
  %.sroa.05.0134.i = phi ptr [ %i.eap, %bb.adw ], [ %i.eam, %bb.adv ] ; 3 uses
  %.sroa.843.3133.i = phi i8 [ %.sroa.843.4.i, %bb.adw ], [ %.sroa.843.0.lcssa.i, %bb.adv ]
  %.sroa.039.3132.i = phi i32 [ %.sroa.039.4.i, %bb.adw ], [ %.sroa.039.0.lcssa.i, %bb.adv ]
  %.sroa.8.3131.i = phi i8 [ %.sroa.8.4.i, %bb.adw ], [ %.sroa.8.0.lcssa.i, %bb.adv ]
  %.sroa.021.3130.i = phi i32 [ %.sroa.021.4.i, %bb.adw ], [ %.sroa.021.0.lcssa.i, %bb.adv ]
  %i.ear = load ptr, ptr %.sroa.05.0134.i, align 8, !tbaa !63 ; 3 uses
  %i.eas = getelementptr inbounds nuw i8, ptr %.sroa.05.0134.i, i64 32
  %i.eat = load ptr, ptr %i.eas, align 8, !tbaa !63 ; 3 uses
  %i.eau = load i8, ptr %i.ear, align 1, !tbaa !60
  %i.eav = icmp eq i8 %i.eau, 43
  br i1 %i.eav, label %bb.ady, label %bb.aed

bb.ady:                                           ; preds = %.lr.ph136.i
  %i.eaw = invoke i64 @_Z15search_res_atomPKciPK7t_atomsS0_b(ptr noundef %i.eat, i32 noundef %i.dxb, ptr noundef %i.dxd, ptr noundef nonnull @.str.371, i1 noundef zeroext true)
          to label %bb.adz unwind label %bb.aeb   ; 2 uses

bb.adz:                                           ; preds = %bb.ady
  %i.eax = getelementptr inbounds nuw i8, ptr %i.ear, i64 1
  %i.eay = invoke i64 @_Z15search_res_atomPKciPK7t_atomsS0_b(ptr noundef nonnull %i.eax, i32 noundef %i.dwx, ptr noundef %i.dxd, ptr noundef nonnull @.str.371, i1 noundef zeroext true)
          to label %bb.aea unwind label %bb.aec   ; 2 uses

bb.aea:                                           ; preds = %bb.adz
  %.sroa.843.0.extract.shift44.i = lshr i64 %i.eaw, 32
  %.sroa.843.0.extract.trunc45.i = trunc i64 %.sroa.843.0.extract.shift44.i to i8
  %.sroa.039.0.extract.trunc40.i = trunc i64 %i.eaw to i32
  %.sroa.021.0.extract.trunc22.i = trunc i64 %i.eay to i32
  %.sroa.8.0.extract.shift25.i = lshr i64 %i.eay, 32
  %.sroa.8.0.extract.trunc26.i = trunc i64 %.sroa.8.0.extract.shift25.i to i8
  br label %bb.aej

bb.aeb:                                           ; preds = %bb.ady
  %i.eaz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ael

bb.aec:                                           ; preds = %bb.adz
  %i.eba = landingpad { ptr, i32 }
          cleanup
  br label %bb.ael

bb.aed:                                           ; preds = %.lr.ph136.i
  %i.ebb = load i8, ptr %i.eat, align 1, !tbaa !60
  %i.ebc = icmp eq i8 %i.ebb, 43
  br i1 %i.ebc, label %bb.aee, label %bb.aej

bb.aee:                                           ; preds = %bb.aed
  %i.ebd = invoke i64 @_Z15search_res_atomPKciPK7t_atomsS0_b(ptr noundef nonnull %i.ear, i32 noundef %i.dxb, ptr noundef %i.dxd, ptr noundef nonnull @.str.371, i1 noundef zeroext true)
          to label %bb.aef unwind label %bb.aeh   ; 2 uses

bb.aef:                                           ; preds = %bb.aee
  %i.ebe = getelementptr inbounds nuw i8, ptr %i.eat, i64 1
  %i.ebf = invoke i64 @_Z15search_res_atomPKciPK7t_atomsS0_b(ptr noundef nonnull %i.ebe, i32 noundef %i.dwx, ptr noundef %i.dxd, ptr noundef nonnull @.str.371, i1 noundef zeroext true)
          to label %bb.aeg unwind label %bb.aei   ; 2 uses

bb.aeg:                                           ; preds = %bb.aef
  %.sroa.843.0.extract.shift.i = lshr i64 %i.ebd, 32
  %.sroa.843.0.extract.trunc.i = trunc i64 %.sroa.843.0.extract.shift.i to i8
  %.sroa.039.0.extract.trunc.i = trunc i64 %i.ebd to i32
  %.sroa.021.0.extract.trunc.i = trunc i64 %i.ebf to i32
  %.sroa.8.0.extract.shift.i = lshr i64 %i.ebf, 32
  %.sroa.8.0.extract.trunc.i = trunc i64 %.sroa.8.0.extract.shift.i to i8
  br label %bb.aej

bb.aeh:                                           ; preds = %bb.aee
  %i.ebg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ael

bb.aei:                                           ; preds = %bb.aef
  %i.ebh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ael

bb.aej:                                           ; preds = %bb.aeg, %bb.aed, %bb.aea
  %.sroa.021.4.i = phi i32 [ %.sroa.021.0.extract.trunc22.i, %bb.aea ], [ %.sroa.021.0.extract.trunc.i, %bb.aeg ], [ %.sroa.021.3130.i, %bb.aed ] ; 2 uses
  %.sroa.8.4.i = phi i8 [ %.sroa.8.0.extract.trunc26.i, %bb.aea ], [ %.sroa.8.0.extract.trunc.i, %bb.aeg ], [ %.sroa.8.3131.i, %bb.aed ] ; 2 uses
  %.sroa.039.4.i = phi i32 [ %.sroa.039.0.extract.trunc40.i, %bb.aea ], [ %.sroa.039.0.extract.trunc.i, %bb.aeg ], [ %.sroa.039.3132.i, %bb.aed ] ; 2 uses
  %.sroa.843.4.i = phi i8 [ %.sroa.843.0.extract.trunc45.i, %bb.aea ], [ %.sroa.843.0.extract.trunc.i, %bb.aeg ], [ %.sroa.843.3133.i, %bb.aed ] ; 2 uses
  %i.ebi = trunc nuw i8 %.sroa.843.4.i to i1
  %i.ebj = trunc nuw i8 %.sroa.8.4.i to i1
  %or.cond97.i = select i1 %i.ebi, i1 %i.ebj, i1 false
  br i1 %or.cond97.i, label %_ZNRSt8optionalIiE5valueEv.exit.thread.i, label %bb.adw

_ZNRSt8optionalIiE5valueEv.exit.thread.i:         ; preds = %bb.adl, %bb.aej
  %.sroa.039.684.ph.i = phi i32 [ %.sroa.039.4.i, %bb.aej ], [ %.sroa.039.1.i, %bb.adl ]
  %.sroa.021.682.ph.i = phi i32 [ %.sroa.021.4.i, %bb.aej ], [ %.sroa.021.1.i, %bb.adl ]
  %i.ebk = sext i32 %.sroa.039.684.ph.i to i64
  %i.ebl = getelementptr inbounds [12 x i8], ptr %i.dxe, i64 %i.ebk ; 2 uses
  %i.ebm = sext i32 %.sroa.021.682.ph.i to i64
  %i.ebn = getelementptr inbounds [12 x i8], ptr %i.dxe, i64 %i.ebm ; 2 uses
  %i.ebo = load <2 x float>, ptr %i.ebn, align 4, !tbaa !80
  %i.ebp = load <2 x float>, ptr %i.ebl, align 4, !tbaa !80
  %i.ebq = fsub <2 x float> %i.ebo, %i.ebp        ; 2 uses
  %i.ebr = fmul <2 x float> %i.ebq, %i.ebq        ; 2 uses
  %shift = shufflevector <2 x float> %i.ebr, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.ebr, %shift
  %i.ebs = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ebt = getelementptr inbounds nuw i8, ptr %i.ebn, i64 8
  %i.ebu = load float, ptr %i.ebt, align 4, !tbaa !80
  %i.ebv = getelementptr inbounds nuw i8, ptr %i.ebl, i64 8
  %i.ebw = load float, ptr %i.ebv, align 4, !tbaa !80
  %i.ebx = fsub float %i.ebu, %i.ebw              ; 2 uses
  %i.eby = fmul float %i.ebx, %i.ebx
  %i.ebz = fadd float %i.ebs, %i.eby              ; 2 uses
  %i.eca = fmul float %i.dxr, %i.dxr
  %i.ecb = fcmp olt float %i.ebz, %i.eca
  br i1 %i.ecb, label %bb.aek, label %.loopexit.i1405

bb.aek:                                           ; preds = %_ZNRSt8optionalIiE5valueEv.exit.thread.i
  %i.ecc = fmul float %i.dxs, %i.dxs
  %i.ecd = fcmp ogt float %i.ebz, %i.ecc
  br label %.loopexit.i1405

.loopexit.i1405:                                  ; preds = %bb.adw, %bb.aek, %_ZNRSt8optionalIiE5valueEv.exit.thread.i, %bb.adv
  %.081.i = phi i1 [ %i.ecd, %bb.aek ], [ false, %_ZNRSt8optionalIiE5valueEv.exit.thread.i ], [ false, %bb.adv ], [ false, %bb.adw ]
  %i.ece = load ptr, ptr %15, align 8, !tbaa !63  ; 2 uses
  %i.ecf = icmp eq ptr %i.ece, %i.bqe
  br i1 %i.ecf, label %_ZN12_GLOBAL__N_119checkChainCyclicityEP7t_atomsN3gmx8ArrayRefIKNS2_11BasicVectorIfEEEEiiNS3_IK17PreprocessResidueEENS3_IK9RtpRenameEEff.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98.i: ; preds = %.loopexit.i1405
  %i.ecg = load i64, ptr %i.bqe, align 8, !tbaa !60
  %i.ech = add i64 %i.ecg, 1
  call void @_ZdlPvm(ptr noundef %i.ece, i64 noundef %i.ech) #34
  br label %_ZN12_GLOBAL__N_119checkChainCyclicityEP7t_atomsN3gmx8ArrayRefIKNS2_11BasicVectorIfEEEEiiNS3_IK17PreprocessResidueEENS3_IK9RtpRenameEEff.exit

bb.ael:                                           ; preds = %bb.aei, %bb.aeh, %bb.aec, %bb.aeb, %bb.adx, %bb.adu, %bb.adt, %bb.adk, %bb.adj, %bb.ade, %bb.add, %bb.acz, %bb.acv
  %.pn91.pn.pn.i = phi { ptr, i32 } [ %i.dyf, %bb.acv ], [ %i.dym, %bb.acz ], [ %i.eaz, %bb.aeb ], [ %i.ebg, %bb.aeh ], [ %i.eaq, %bb.adx ], [ %i.eaj, %bb.adu ], [ %i.eai, %bb.adt ], [ %i.ebh, %bb.aei ], [ %i.dzc, %bb.adj ], [ %i.dyw, %bb.ade ], [ %i.dyv, %bb.add ], [ %i.dzd, %bb.adk ], [ %i.eba, %bb.aec ]
  %i.eci = load ptr, ptr %15, align 8, !tbaa !63  ; 2 uses
  %i.ecj = icmp eq ptr %i.eci, %i.bqe
  br i1 %i.ecj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101.i: ; preds = %bb.ael
  %i.eck = load i64, ptr %i.bqe, align 8, !tbaa !60
  %i.ecl = add i64 %i.eck, 1
  call void @_ZdlPvm(ptr noundef %i.eci, i64 noundef %i.ecl) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103.i: ; preds = %bb.ael, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #33
  br label %.body1339

_ZN12_GLOBAL__N_119checkChainCyclicityEP7t_atomsN3gmx8ArrayRefIKNS2_11BasicVectorIfEEEEiiNS3_IK17PreprocessResidueEENS3_IK9RtpRenameEEff.exit: ; preds = %.loopexit.i1405, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #33
  br i1 %.081.i, label %bb.aem, label %_ZN12_GLOBAL__N_119checkChainCyclicityEP7t_atomsN3gmx8ArrayRefIKNS2_11BasicVectorIfEEEEiiNS3_IK17PreprocessResidueEENS3_IK9RtpRenameEEff.exit.thread

bb.aem:                                           ; preds = %_ZN12_GLOBAL__N_119checkChainCyclicityEP7t_atomsN3gmx8ArrayRefIKNS2_11BasicVectorIfEEEEiiNS3_IK17PreprocessResidueEENS3_IK9RtpRenameEEff.exit
  %i.ecm = load ptr, ptr %i.cxr, align 8, !tbaa !157
  %i.ecn = getelementptr inbounds nuw [4 x i8], ptr %i.ecm, i64 %i.cyd ; 2 uses
  %i.eco = load ptr, ptr %i.cxu, align 8, !tbaa !158 ; 4 uses
  %i.ecp = load ptr, ptr %i.cxv, align 8, !tbaa !162 ; 2 uses
  %.not.i1412 = icmp eq ptr %i.eco, %i.ecp
  br i1 %.not.i1412, label %bb.aeo, label %bb.aen

bb.aen:                                           ; preds = %bb.aem
  %i.ecq = load i32, ptr %i.ecn, align 4, !tbaa !113
  store i32 %i.ecq, ptr %i.eco, align 4, !tbaa !113
  %i.ecr = getelementptr inbounds nuw i8, ptr %i.eco, i64 4 ; 2 uses
  store ptr %i.ecr, ptr %i.cxu, align 8, !tbaa !158
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.aeo:                                           ; preds = %bb.aem
  %i.ecs = load ptr, ptr %i.cxt, align 8, !tbaa !157 ; 4 uses
  %i.ect = ptrtoint ptr %i.eco to i64
  %i.ecu = ptrtoint ptr %i.ecs to i64             ; 2 uses
  %i.ecv = sub i64 %i.ect, %i.ecu                 ; 5 uses
  %i.ecw = icmp eq i64 %i.ecv, 9223372036854775804
  br i1 %i.ecw, label %.invoke, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

.invoke:                                          ; preds = %bb.aes, %bb.aeo
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.183) #35
          to label %.cont unwind label %.loopexit.split-lp2921

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.aeo
  %i.ecx = ashr exact i64 %i.ecv, 2               ; 3 uses
  %.sroa.speculated.i.i.i1413 = call i64 @llvm.umax.i64(i64 %i.ecx, i64 1)
  %i.ecy = add nsw i64 %.sroa.speculated.i.i.i1413, %i.ecx ; 2 uses
  %i.ecz = icmp ult i64 %i.ecy, %i.ecx
  %i.eda = call i64 @llvm.umin.i64(i64 %i.ecy, i64 2305843009213693951)
  %i.edb = select i1 %i.ecz, i64 2305843009213693951, i64 %i.eda ; 3 uses
  %.not.i.i.i1414 = icmp ne i64 %i.edb, 0
  call void @llvm.assume(i1 %.not.i.i.i1414)
  %i.edc = shl nuw nsw i64 %i.edb, 2
  %i.edd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.edc) #31
          to label %.noexc1416 unwind label %.loopexit2920 ; 4 uses

.noexc1416:                                       ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.ede = getelementptr inbounds i8, ptr %i.edd, i64 %i.ecv ; 2 uses
  %i.edf = load i32, ptr %i.ecn, align 4, !tbaa !113
  store i32 %i.edf, ptr %i.ede, align 4, !tbaa !113
  %i.edg = icmp sgt i64 %i.ecv, 0
  br i1 %i.edg, label %bb.aep, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.aep:                                           ; preds = %.noexc1416
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.edd, ptr align 4 %i.ecs, i64 %i.ecv, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.aep, %.noexc1416
  %i.edh = getelementptr inbounds nuw i8, ptr %i.ede, i64 4 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.ecs, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.aeq

bb.aeq:                                           ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.edi = load ptr, ptr %i.cxv, align 8, !tbaa !162
  %i.edj = ptrtoint ptr %i.edi to i64
  %i.edk = sub i64 %i.edj, %i.ecu
  call void @_ZdlPvm(ptr noundef nonnull %i.ecs, i64 noundef %i.edk) #34
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.aeq, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.edd, ptr %i.cxt, align 8, !tbaa !157
  store ptr %i.edh, ptr %i.cxu, align 8, !tbaa !158
  %i.edl = getelementptr inbounds nuw [4 x i8], ptr %i.edd, i64 %i.edb ; 2 uses
  store ptr %i.edl, ptr %i.cxv, align 8, !tbaa !162
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.aen
  %i.edm = phi ptr [ %i.edl, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.ecp, %bb.aen ] ; 2 uses
  %i.edn = phi ptr [ %i.edh, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.ecr, %bb.aen ] ; 3 uses
  %i.edo = load ptr, ptr %i.cxs, align 8, !tbaa !157 ; 2 uses
  %i.edp = getelementptr inbounds nuw [4 x i8], ptr %i.edo, i64 %i.cyd ; 2 uses
  %.not.i1417 = icmp eq ptr %i.edn, %i.edm
  br i1 %.not.i1417, label %bb.aes, label %bb.aer

bb.aer:                                           ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.edq = load i32, ptr %i.edp, align 4, !tbaa !113
  store i32 %i.edq, ptr %i.edn, align 4, !tbaa !113
  %i.edr = getelementptr inbounds nuw i8, ptr %i.edn, i64 4
  store ptr %i.edr, ptr %i.cxu, align 8, !tbaa !158
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit1426

bb.aes:                                           ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.eds = load ptr, ptr %i.cxt, align 8, !tbaa !157 ; 4 uses
  %i.edt = ptrtoint ptr %i.edm to i64
  %i.edu = ptrtoint ptr %i.eds to i64             ; 2 uses
  %i.edv = sub i64 %i.edt, %i.edu                 ; 5 uses
  %i.edw = icmp eq i64 %i.edv, 9223372036854775804
  br i1 %i.edw, label %.invoke, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i1418

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i1418: ; preds = %bb.aes
  %i.edx = ashr exact i64 %i.edv, 2               ; 3 uses
  %.sroa.speculated.i.i.i1419 = call i64 @llvm.umax.i64(i64 %i.edx, i64 1)
  %i.edy = add nsw i64 %.sroa.speculated.i.i.i1419, %i.edx ; 2 uses
  %i.edz = icmp ult i64 %i.edy, %i.edx
  %i.eea = call i64 @llvm.umin.i64(i64 %i.edy, i64 2305843009213693951)
  %i.eeb = select i1 %i.edz, i64 2305843009213693951, i64 %i.eea ; 3 uses
  %.not.i.i.i1420 = icmp ne i64 %i.eeb, 0
  call void @llvm.assume(i1 %.not.i.i.i1420)
  %i.eec = shl nuw nsw i64 %i.eeb, 2
  %i.eed = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eec) #31
          to label %.noexc1425 unwind label %.loopexit2920 ; 4 uses

.noexc1425:                                       ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i1418
  %i.eee = getelementptr inbounds i8, ptr %i.eed, i64 %i.edv ; 2 uses
  %i.eef = load i32, ptr %i.edp, align 4, !tbaa !113
  store i32 %i.eef, ptr %i.eee, align 4, !tbaa !113
  %i.eeg = icmp sgt i64 %i.edv, 0
  br i1 %i.eeg, label %bb.aet, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i1421

bb.aet:                                           ; preds = %.noexc1425
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.eed, ptr align 4 %i.eds, i64 %i.edv, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i1421

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i1421: ; preds = %bb.aet, %.noexc1425
  %i.eeh = getelementptr inbounds nuw i8, ptr %i.eee, i64 4
  %.not.i17.i.i1422 = icmp eq ptr %i.eds, null
  br i1 %.not.i17.i.i1422, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i1423, label %bb.aeu

bb.aeu:                                           ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i1421
  %i.eei = load ptr, ptr %i.cxv, align 8, !tbaa !162
  %i.eej = ptrtoint ptr %i.eei to i64
  %i.eek = sub i64 %i.eej, %i.edu
  call void @_ZdlPvm(ptr noundef nonnull %i.eds, i64 noundef %i.eek) #34
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i1423

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i1423: ; preds = %bb.aeu, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i1421
  store ptr %i.eed, ptr %i.cxt, align 8, !tbaa !157
  store ptr %i.eeh, ptr %i.cxu, align 8, !tbaa !158
  %i.eel = getelementptr inbounds nuw [4 x i8], ptr %i.eed, i64 %i.eeb
  store ptr %i.eel, ptr %i.cxv, align 8, !tbaa !162
  %.pre6981 = load ptr, ptr %i.cxs, align 8, !tbaa !157
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit1426

_ZNSt6vectorIiSaIiEE9push_backERKi.exit1426:      ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i1423, %bb.aer
  %i.eem = phi ptr [ %.pre6981, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i1423 ], [ %i.edo, %bb.aer ]
  %i.een = load ptr, ptr %i.cxr, align 8, !tbaa !157
  %i.eeo = getelementptr inbounds nuw [4 x i8], ptr %i.een, i64 %i.cyd
end_hunk_0
