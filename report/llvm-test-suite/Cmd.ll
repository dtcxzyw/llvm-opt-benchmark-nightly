inline.NumInlined: 4253
inline.NumDeleted: 716
begin_hunk_0_@_ZN2PP3Cmd19check_for_dimensionERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi:bb.a
  %i.pv = add i64 %i.pu, 1
  call void @_ZdlPvm(ptr noundef %.pre255, i64 noundef %i.pv) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i161, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br i1 %i.pr, label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit, label %bb.bx

bb.bw:                                            ; preds = %.noexc.i.i155
  %i.pw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %bb.dk

bb.bx:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  %i.px = load ptr, ptr %i.k, align 8, !tbaa !71, !noalias !575 ; 2 uses
  %i.py = load ptr, ptr %i.m, align 8, !tbaa !75, !noalias !575
  %i.pz = load ptr, ptr %i.o, align 8, !tbaa !76, !noalias !575
  %i.qa = ptrtoint ptr %i.px to i64
  %i.qb = ptrtoint ptr %i.py to i64
  %i.qc = sub i64 %i.qa, %i.qb
  %i.qd = ashr exact i64 %i.qc, 7
  %i.qe = add nsw i64 %i.qd, %indvars.iv246       ; 5 uses
  %i.qf = icmp sgt i64 %i.qe, -1
  br i1 %i.qf, label %bb.by, label %bb.cb

bb.by:                                            ; preds = %bb.bx
  %i.qg = icmp samesign ult i64 %i.qe, 4
  br i1 %i.qg, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.qh = getelementptr inbounds nuw [128 x i8], ptr %i.px, i64 %indvars.iv246
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit167

bb.ca:                                            ; preds = %bb.by
  %i.qi = lshr i64 %i.qe, 2
  br label %bb.cc

bb.cb:                                            ; preds = %bb.bx
  %i.qj = ashr i64 %i.qe, 2
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %i.qk = phi i64 [ %i.qi, %bb.ca ], [ %i.qj, %bb.cb ] ; 2 uses
  %i.ql = getelementptr inbounds [8 x i8], ptr %i.pz, i64 %i.qk
  %i.qm = load ptr, ptr %i.ql, align 8, !tbaa !51, !noalias !575
  %i.qn = shl nsw i64 %i.qk, 2
  %i.qo = sub nsw i64 %i.qe, %i.qn
  %i.qp = getelementptr inbounds [128 x i8], ptr %i.qm, i64 %i.qo
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit167

_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit167:       ; preds = %bb.bz, %bb.cc
  %storemerge.i.i.i.i166 = phi ptr [ %i.qp, %bb.cc ], [ %i.qh, %bb.bz ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !578)
  store ptr %i.lf, ptr %13, align 8, !tbaa !8, !alias.scope !578
  %i.qq = load ptr, ptr %storemerge.i.i.i.i166, align 8, !tbaa !45, !noalias !578 ; 2 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i166, i64 8
  %i.qs = load i64, ptr %i.qr, align 8, !tbaa !12, !noalias !578 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22, !noalias !578
  store i64 %i.qs, ptr %i.c, align 8, !tbaa !67, !noalias !578
  %i.qt = icmp ugt i64 %i.qs, 15
  br i1 %i.qt, label %.noexc.i.i169, label %._crit_edge.i.i.i168

.noexc.i.i169:                                    ; preds = %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit167
  %i.qu = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc170 unwind label %bb.ch ; 2 uses

.noexc170:                                        ; preds = %.noexc.i.i169
  store ptr %i.qu, ptr %13, align 8, !tbaa !45, !alias.scope !578
  %i.qv = load i64, ptr %i.c, align 8, !tbaa !67, !noalias !578
  store i64 %i.qv, ptr %i.lf, align 8, !tbaa !15, !alias.scope !578
  br label %._crit_edge.i.i.i168

._crit_edge.i.i.i168:                             ; preds = %.noexc170, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit167
  %i.qw = phi ptr [ %i.qu, %.noexc170 ], [ %i.lf, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit167 ] ; 2 uses
  switch i64 %i.qs, label %bb.ce [
    i64 1, label %bb.cd
    i64 0, label %bb.cf
  ]

bb.cd:                                            ; preds = %._crit_edge.i.i.i168
  %i.qx = load i8, ptr %i.qq, align 1, !tbaa !15
  store i8 %i.qx, ptr %i.qw, align 1, !tbaa !15
  br label %bb.cf

bb.ce:                                            ; preds = %._crit_edge.i.i.i168
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.qw, ptr align 1 %i.qq, i64 %i.qs, i1 false)
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd, %._crit_edge.i.i.i168
  %i.qy = load i64, ptr %i.c, align 8, !tbaa !67, !noalias !578 ; 2 uses
  store i64 %i.qy, ptr %i.lg, align 8, !tbaa !12, !alias.scope !578
  %i.qz = load ptr, ptr %13, align 8, !tbaa !45, !alias.scope !578
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 %i.qy
  store i8 0, ptr %i.ra, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22, !noalias !578
  %i.rb = load i64, ptr %i.lg, align 8, !tbaa !12 ; 2 uses
  %i.rc = icmp eq i64 %i.rb, 1
  %.pre256 = load ptr, ptr %13, align 8, !tbaa !45 ; 3 uses
  br i1 %i.rc, label %bb.cg, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit173

bb.cg:                                            ; preds = %bb.cf
  %lhsc339 = load i8, ptr %.pre256, align 1
  %i.rd = icmp eq i8 %lhsc339, 41
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit173

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit173: ; preds = %bb.cg, %bb.cf
  %i.re = phi i1 [ false, %bb.cf ], [ %i.rd, %bb.cg ]
  %i.rf = icmp eq ptr %.pre256, %i.lf
  br i1 %i.rf, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i175, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i175: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit173
  %i.rg = icmp ult i64 %i.rb, 16
  call void @llvm.assume(i1 %i.rg)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit173
  %i.rh = load i64, ptr %i.lf, align 8, !tbaa !15
  %i.ri = add i64 %i.rh, 1
  call void @_ZdlPvm(ptr noundef %.pre256, i64 noundef %i.ri) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i175, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  %.pre257 = load ptr, ptr %i.k, align 8, !tbaa !71, !noalias !135 ; 3 uses
  %.pre258 = load ptr, ptr %i.m, align 8, !tbaa !75, !noalias !135 ; 2 uses
  %.pre260 = load ptr, ptr %i.o, align 8, !tbaa !76, !noalias !135 ; 2 uses
  %.pre266 = ptrtoint ptr %.pre257 to i64         ; 2 uses
  br i1 %i.re, label %split, label %bb.ci

bb.ch:                                            ; preds = %.noexc.i.i169
  %i.rj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.dk

bb.ci:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176
  %i.rk = ptrtoint ptr %.pre258 to i64
  %i.rl = sub i64 %.pre266, %i.rk
  %i.rm = ashr exact i64 %i.rl, 7
  %i.rn = add nsw i64 %i.rm, %indvars.iv246       ; 5 uses
  %i.ro = icmp sgt i64 %i.rn, -1
  br i1 %i.ro, label %bb.cj, label %bb.cm

bb.cj:                                            ; preds = %bb.ci
  %i.rp = icmp samesign ult i64 %i.rn, 4
  br i1 %i.rp, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.rq = getelementptr inbounds nuw [128 x i8], ptr %.pre257, i64 %indvars.iv246
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit181

bb.cl:                                            ; preds = %bb.cj
  %i.rr = lshr i64 %i.rn, 2
  br label %bb.cn

bb.cm:                                            ; preds = %bb.ci
  %i.rs = ashr i64 %i.rn, 2
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %i.rt = phi i64 [ %i.rr, %bb.cl ], [ %i.rs, %bb.cm ] ; 2 uses
  %i.ru = getelementptr inbounds [8 x i8], ptr %.pre260, i64 %i.rt
  %i.rv = load ptr, ptr %i.ru, align 8, !tbaa !51, !noalias !581
  %i.rw = shl nsw i64 %i.rt, 2
  %i.rx = sub nsw i64 %i.rn, %i.rw
  %i.ry = getelementptr inbounds [128 x i8], ptr %i.rv, i64 %i.rx
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit181

_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit181:       ; preds = %bb.ck, %bb.cn
  %storemerge.i.i.i.i180 = phi ptr [ %i.ry, %bb.cn ], [ %i.rq, %bb.ck ]
  %i.rz = invoke noundef i32 @_ZN2PP4Word7get_intERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi(ptr noundef nonnull align 8 dereferenceable(128) %storemerge.i.i.i.i180, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %bb.co unwind label %.loopexit ; 2 uses

bb.co:                                            ; preds = %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit181
  %.not.i.i = icmp eq ptr %i.ll, %i.lk
  br i1 %.not.i.i, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  store i32 %i.rz, ptr %i.ll, align 4, !tbaa !4
  %i.sa = getelementptr inbounds nuw i8, ptr %i.ll, i64 4 ; 2 uses
  store ptr %i.sa, ptr %i.lh, align 8, !tbaa !292
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.cq:                                            ; preds = %bb.co
  %i.sb = ptrtoint ptr %i.lk to i64
  %i.sc = ptrtoint ptr %i.lj to i64
  %i.sd = sub i64 %i.sb, %i.sc                    ; 6 uses
  %i.se = icmp eq i64 %i.sd, 9223372036854775804
  br i1 %i.se, label %bb.cr, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.cr:                                            ; preds = %bb.cq
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.225) #24
          to label %.noexc183 unwind label %.loopexit.split-lp

.noexc183:                                        ; preds = %bb.cr
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.cq
  %i.sf = ashr exact i64 %i.sd, 2                 ; 2 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.sf, i64 1)
  %i.sg = add nsw i64 %.sroa.speculated.i.i.i.i, %i.sf ; 2 uses
  %i.sh = call i64 @llvm.umin.i64(i64 %i.sg, i64 2305843009213693951) ; 2 uses
  %.not.i.i.i.i182 = icmp ne i64 %i.sg, 0
  call void @llvm.assume(i1 %.not.i.i.i.i182)
  %i.si = shl nuw nsw i64 %i.sh, 2
  %i.sj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.si) #25
          to label %.noexc184 unwind label %.loopexit ; 5 uses

.noexc184:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.sk = getelementptr inbounds i8, ptr %i.sj, i64 %i.sd ; 2 uses
  store i32 %i.rz, ptr %i.sk, align 4, !tbaa !4
  %i.sl = icmp sgt i64 %i.sd, 0
  br i1 %i.sl, label %bb.cs, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.cs:                                            ; preds = %.noexc184
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.sj, ptr align 4 %i.lj, i64 %i.sd, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.cs, %.noexc184
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sk, i64 4 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.lj, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.ct

bb.ct:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.lj, i64 noundef %i.sd) #21
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.ct, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  store ptr %i.sj, ptr %10, align 8, !tbaa !294
  store ptr %i.sm, ptr %i.lh, align 8, !tbaa !292
  %i.sn = getelementptr inbounds nuw [4 x i8], ptr %i.sj, i64 %i.sh ; 2 uses
  store ptr %i.sn, ptr %i.li, align 8, !tbaa !295
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit151.thread231, %bb.cp, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit151.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit151, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146
  %i.so = phi ptr [ %i.lj, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit151.thread231 ], [ %i.lj, %bb.cp ], [ %i.sj, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.lj, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit151.thread ], [ %i.lj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162 ], [ %i.lj, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit151 ], [ %i.lj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146 ]
  %i.sp = phi ptr [ %i.lk, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit151.thread231 ], [ %i.lk, %bb.cp ], [ %i.sn, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.lk, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit151.thread ], [ %i.lk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162 ], [ %i.lk, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit151 ], [ %i.lk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146 ]
  %i.sq = phi ptr [ %i.ll, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit151.thread231 ], [ %i.sa, %bb.cp ], [ %i.sm, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.ll, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit151.thread ], [ %i.ll, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162 ], [ %i.ll, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit151 ], [ %i.ll, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146 ]
  %indvars.iv.next247 = add nuw nsw i64 %indvars.iv246, 1
  br label %bb.bc, !llvm.loop !584

.loopexit:                                        ; preds = %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit181, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.dk

.loopexit.split-lp:                               ; preds = %bb.cr
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.dk

split:                                            ; preds = %bb.bc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176
  %.pre-phi267 = phi i64 [ %.pre266, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176 ], [ %i.mf, %bb.bc ]
  %i.sr = phi ptr [ %.pre260, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176 ], [ %i.ln, %bb.bc ] ; 2 uses
  %i.ss = phi ptr [ %.pre258, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176 ], [ %.pre259, %bb.bc ]
  %i.st = phi ptr [ %.pre257, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176 ], [ %i.md, %bb.bc ] ; 3 uses
  %i.su = ptrtoint ptr %i.ss to i64
  %i.sv = sub i64 %.pre-phi267, %i.su             ; 2 uses
  %i.sw = ashr exact i64 %i.sv, 7                 ; 6 uses
  %i.sx = icmp sgt i64 %i.sw, -1
  br i1 %i.sx, label %bb.cu, label %bb.cx

bb.cu:                                            ; preds = %split
  %i.sy = icmp samesign ult i64 %i.sw, 4
  br i1 %i.sy, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.sz = getelementptr inbounds nuw i8, ptr %i.st, i64 80
  %i.ta = load i32, ptr %i.sz, align 8, !tbaa !444
  %i.tb = getelementptr inbounds nuw i8, ptr %i.st, i64 84
  %i.tc = load i32, ptr %i.tb, align 4, !tbaa !430
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit190

bb.cw:                                            ; preds = %bb.cu
  %i.td = lshr i64 %i.sw, 2
  %i.te = getelementptr inbounds nuw [8 x i8], ptr %i.sr, i64 %i.td
  %i.tf = load ptr, ptr %i.te, align 8, !tbaa !51, !noalias !585 ; 2 uses
  %i.tg = and i64 %i.sw, 3
  %i.th = getelementptr inbounds nuw [128 x i8], ptr %i.tf, i64 %i.tg ; 2 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 80
  %i.tj = load i32, ptr %i.ti, align 8, !tbaa !444
  %i.tk = getelementptr inbounds nuw i8, ptr %i.th, i64 84
  %i.tl = load i32, ptr %i.tk, align 4, !tbaa !430
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  %.pre264 = and i64 %i.sw, 3
  br label %bb.cy

bb.cx:                                            ; preds = %split
  %i.tm = ashr i64 %i.sv, 9                       ; 2 uses
  %i.tn = getelementptr inbounds [8 x i8], ptr %i.sr, i64 %i.tm
  %i.to = load ptr, ptr %i.tn, align 8, !tbaa !51, !noalias !585 ; 2 uses
  %i.tp = shl nsw i64 %i.tm, 2
  %i.tq = sub nsw i64 %i.sw, %i.tp                ; 2 uses
  %i.tr = getelementptr inbounds [128 x i8], ptr %i.to, i64 %i.tq ; 2 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 80
  %i.tt = load i32, ptr %i.ts, align 8, !tbaa !444
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tr, i64 84
  %i.tv = load i32, ptr %i.tu, align 4, !tbaa !430
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %.pre-phi265 = phi i64 [ %i.tq, %bb.cx ], [ %.pre264, %bb.cw ]
  %i.tw = phi ptr [ %i.to, %bb.cx ], [ %i.tf, %bb.cw ]
  %i.tx = phi i32 [ %i.tv, %bb.cx ], [ %i.tl, %bb.cw ]
  %i.ty = phi i32 [ %i.tt, %bb.cx ], [ %i.tj, %bb.cw ]
  %i.tz = getelementptr inbounds [128 x i8], ptr %i.tw, i64 %.pre-phi265
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit190

_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit190:       ; preds = %bb.cv, %bb.cy
  %i.ua = phi i32 [ %i.tx, %bb.cy ], [ %i.tc, %bb.cv ]
  %i.ub = phi i32 [ %i.ty, %bb.cy ], [ %i.ta, %bb.cv ]
  %storemerge.i.i.i.i189 = phi ptr [ %i.tz, %bb.cy ], [ %i.st, %bb.cv ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !588)
  %i.uc = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i189, i64 88
  %i.ud = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 7 uses
  store ptr %i.ud, ptr %14, align 8, !tbaa !8, !alias.scope !588
  %i.ue = load ptr, ptr %i.uc, align 8, !tbaa !45, !noalias !588 ; 2 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i189, i64 96
  %i.ug = load i64, ptr %i.uf, align 8, !tbaa !12, !noalias !588 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22, !noalias !588
  store i64 %i.ug, ptr %i.b, align 8, !tbaa !67, !noalias !588
  %i.uh = icmp ugt i64 %i.ug, 15
  br i1 %i.uh, label %.noexc.i.i192, label %._crit_edge.i.i.i191

.noexc.i.i192:                                    ; preds = %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit190
  %i.ui = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc193 unwind label %bb.dh ; 2 uses

.noexc193:                                        ; preds = %.noexc.i.i192
  store ptr %i.ui, ptr %14, align 8, !tbaa !45, !alias.scope !588
  %i.uj = load i64, ptr %i.b, align 8, !tbaa !67, !noalias !588
  store i64 %i.uj, ptr %i.ud, align 8, !tbaa !15, !alias.scope !588
  br label %._crit_edge.i.i.i191

._crit_edge.i.i.i191:                             ; preds = %.noexc193, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit190
  %i.uk = phi ptr [ %i.ui, %.noexc193 ], [ %i.ud, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit190 ] ; 2 uses
  switch i64 %i.ug, label %bb.da [
    i64 1, label %bb.cz
    i64 0, label %bb.db
  ]

bb.cz:                                            ; preds = %._crit_edge.i.i.i191
  %i.ul = load i8, ptr %i.ue, align 1, !tbaa !15
  store i8 %i.ul, ptr %i.uk, align 1, !tbaa !15
  br label %bb.db

bb.da:                                            ; preds = %._crit_edge.i.i.i191
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.uk, ptr align 1 %i.ue, i64 %i.ug, i1 false)
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz, %._crit_edge.i.i.i191
  %i.um = load i64, ptr %i.b, align 8, !tbaa !67, !noalias !588 ; 2 uses
  %i.un = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store i64 %i.um, ptr %i.un, align 8, !tbaa !12, !alias.scope !588
  %i.uo = load ptr, ptr %14, align 8, !tbaa !45, !alias.scope !588
  %i.up = getelementptr inbounds nuw i8, ptr %i.uo, i64 %i.um
  store i8 0, ptr %i.up, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22, !noalias !588
  %i.uq = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 7 uses
  store ptr %i.uq, ptr %15, align 8, !tbaa !8
  %i.ur = load ptr, ptr %14, align 8, !tbaa !45   ; 2 uses
  %i.us = load i64, ptr %i.un, align 8, !tbaa !12 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.us, ptr %i.a, align 8, !tbaa !67
  %i.ut = icmp ugt i64 %i.us, 15
  br i1 %i.ut, label %.noexc.i195, label %._crit_edge.i.i194

.noexc.i195:                                      ; preds = %bb.db
  %i.uu = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc196 unwind label %bb.di ; 2 uses

.noexc196:                                        ; preds = %.noexc.i195
  store ptr %i.uu, ptr %15, align 8, !tbaa !45
  %i.uv = load i64, ptr %i.a, align 8, !tbaa !67
  store i64 %i.uv, ptr %i.uq, align 8, !tbaa !15
  br label %._crit_edge.i.i194

._crit_edge.i.i194:                               ; preds = %.noexc196, %bb.db
  %i.uw = phi ptr [ %i.uu, %.noexc196 ], [ %i.uq, %bb.db ] ; 2 uses
  switch i64 %i.us, label %bb.dd [
    i64 1, label %bb.dc
    i64 0, label %bb.de
  ]

bb.dc:                                            ; preds = %._crit_edge.i.i194
  %i.ux = load i8, ptr %i.ur, align 1, !tbaa !15
  store i8 %i.ux, ptr %i.uw, align 1, !tbaa !15
  br label %bb.de

bb.dd:                                            ; preds = %._crit_edge.i.i194
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.uw, ptr align 1 %i.ur, i64 %i.us, i1 false)
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc, %._crit_edge.i.i194
  %i.uy = load i64, ptr %i.a, align 8, !tbaa !67  ; 2 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %i.uy, ptr %i.uz, align 8, !tbaa !12
  %i.va = load ptr, ptr %15, align 8, !tbaa !45
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 %i.uy
  store i8 0, ptr %i.vb, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.vc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i125, i64 64
  %i.vd = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ve = load ptr, ptr %i.vd, align 8, !tbaa !66
  invoke void @_ZN2PP8Variable10set_boundsERSt6vectorIiSaIiEEiiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt5dequeISA_SaISA_EERNS5_18basic_stringstreamIcS8_S9_EERi(ptr noundef nonnull align 8 dereferenceable(136) %i.vc, ptr noundef nonnull align 8 dereferenceable(24) %10, i32 noundef %i.ub, i32 noundef %i.ua, ptr noundef nonnull %15, ptr noundef %i.ve, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %bb.df unwind label %bb.dj

bb.df:                                            ; preds = %bb.de
  %i.vf = load ptr, ptr %15, align 8, !tbaa !45   ; 2 uses
  %i.vg = icmp eq ptr %i.vf, %i.uq
  br i1 %i.vg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198: ; preds = %bb.df
  %i.vh = load i64, ptr %i.uq, align 8, !tbaa !15
  %i.vi = add i64 %i.vh, 1
  call void @_ZdlPvm(ptr noundef %i.vf, i64 noundef %i.vi) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200: ; preds = %bb.df, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198
  %i.vj = load ptr, ptr %14, align 8, !tbaa !45   ; 2 uses
  %i.vk = icmp eq ptr %i.vj, %i.ud
  br i1 %i.vk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i201

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i201: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200
  %i.vl = load i64, ptr %i.ud, align 8, !tbaa !15
  %i.vm = add i64 %i.vl, 1
  call void @_ZdlPvm(ptr noundef %i.vj, i64 noundef %i.vm) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203

end_hunk_0
begin_hunk_1_@_ZN2PP3Cmd17evaluate_variableEiRiS1_RNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEES1_:bb.a
.noexc374:                                        ; preds = %bb.bs
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i370: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit198
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 56
  %i.px = load i8, ptr %i.pw, align 8, !tbaa !164
  %.not.i1.i.i371 = icmp eq i8 %i.px, 0
  br i1 %.not.i1.i.i371, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i370
  %i.py = getelementptr inbounds nuw i8, ptr %i.pv, i64 67
  %i.pz = load i8, ptr %i.py, align 1, !tbaa !15
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i372

bb.bu:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i370
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.pv)
          to label %.noexc375 unwind label %.loopexit418

.noexc375:                                        ; preds = %bb.bu
  %i.qa = load ptr, ptr %i.pv, align 8, !tbaa !147
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 48
  %i.qc = load ptr, ptr %i.qb, align 8
  %i.qd = invoke noundef signext i8 %i.qc(ptr noundef nonnull align 8 dereferenceable(570) %i.pv, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i372 unwind label %.loopexit418, !inline_history !170

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i372: ; preds = %.noexc375, %bb.bt
  %.0.i.i.i373 = phi i8 [ %i.pz, %bb.bt ], [ %i.qd, %.noexc375 ]
  %i.qe = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.pp, i8 noundef signext %.0.i.i.i373)
          to label %.noexc377 unwind label %.loopexit418

.noexc377:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i372
  %i.qf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.qe)
          to label %_ZNSolsEPFRSoS_E.exit200 unwind label %.loopexit418 ; 0 uses

_ZNSolsEPFRSoS_E.exit200:                         ; preds = %.noexc377
  %i.qg = load ptr, ptr %11, align 8, !tbaa !45   ; 2 uses
  %i.qh = icmp eq ptr %i.qg, %i.hx
  br i1 %i.qh, label %.thread576, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i201

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i201: ; preds = %_ZNSolsEPFRSoS_E.exit200
  %i.qi = load i64, ptr %i.hx, align 8, !tbaa !15
  %i.qj = add i64 %i.qi, 1
  call void @_ZdlPvm(ptr noundef %i.qg, i64 noundef %i.qj) #21
  br label %.thread576

.loopexit413:                                     ; preds = %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit184, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit186, %bb.bf, %_ZNSolsEPFRSoS_E.exit188, %bb.bj, %.noexc364, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i361, %.noexc366
  %lpad.loopexit415 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ep

.loopexit.split-lp414:                            ; preds = %bb.bh
  %lpad.loopexit.split-lp416 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ep

bb.bv:                                            ; preds = %.noexc.i.i194
  %i.qk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206

.loopexit418:                                     ; preds = %bb.br, %bb.bu, %.noexc375, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i372, %.noexc377
  %lpad.loopexit420 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

.loopexit.split-lp419:                            ; preds = %bb.bs
  %lpad.loopexit.split-lp421 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.bw:                                            ; preds = %.loopexit.split-lp419, %.loopexit418
  %lpad.phi422 = phi { ptr, i32 } [ %lpad.loopexit420, %.loopexit418 ], [ %lpad.loopexit.split-lp421, %.loopexit.split-lp419 ] ; 2 uses
  %i.ql = load ptr, ptr %11, align 8, !tbaa !45   ; 2 uses
  %i.qm = icmp eq ptr %i.ql, %i.hx
  br i1 %i.qm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204: ; preds = %bb.bw
  %i.qn = load i64, ptr %i.hx, align 8, !tbaa !15
  %i.qo = add i64 %i.qn, 1
  call void @_ZdlPvm(ptr noundef %i.ql, i64 noundef %i.qo) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206: ; preds = %bb.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204, %bb.bv
  %.pn126 = phi { ptr, i32 } [ %i.qk, %bb.bv ], [ %lpad.phi422, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204 ], [ %lpad.phi422, %bb.bw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %bb.ep

bb.bx:                                            ; preds = %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit182.thread405, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit182.thread, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit182
  %indvars.iv.next478 = add nuw nsw i64 %indvars.iv477, 1 ; 2 uses
  %i.qp = icmp slt i64 %indvars.iv.next478, %i.ih
  br i1 %i.qp, label %bb.bd, label %._crit_edge465, !llvm.loop !785

.thread576:                                       ; preds = %_ZNSolsEPFRSoS_E.exit200, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i201
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  store i32 2, ptr %5, align 4, !tbaa !4
  %.pre482 = load i32, ptr %3, align 4, !tbaa !4  ; 2 uses
  %indvars.iv.next478578 = add nuw nsw i64 %indvars.iv477, 1 ; 2 uses
  %i.qq = sext i32 %.pre482 to i64
  %i.qr = icmp slt i64 %indvars.iv.next478578, %i.qq
  br i1 %i.qr, label %.outer, label %._crit_edge.thread, !llvm.loop !785

.critedge.thread:                                 ; preds = %.preheader, %.preheader423
  %.ph = phi i32 [ %.ph584, %.preheader ], [ %i.cl, %.preheader423 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  br label %._crit_edge470

.critedge:                                        ; preds = %._crit_edge465
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  %i.qs = icmp sgt i32 %.ph581, 0
  br i1 %i.qs, label %.lr.ph469, label %._crit_edge470

.lr.ph469:                                        ; preds = %.critedge
  %i.qt = add nsw i32 %1, 1
  %i.qu = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.qw = sext i32 %i.qt to i64
  br label %bb.by

._crit_edge470:                                   ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, %.critedge.thread, %.critedge
  %.lcssa = phi i32 [ %.ph581, %.critedge ], [ %.ph, %.critedge.thread ], [ %i.sm, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ]
  %i.qx = add nsw i32 %.lcssa, %1                 ; 2 uses
  %i.qy = add nsw i32 %i.qx, 1                    ; 2 uses
  %i.qz = load i32, ptr %2, align 4, !tbaa !4
  %.not.not = icmp slt i32 %i.qx, %i.qz
  br i1 %.not.not, label %bb.ck, label %bb.cr

bb.by:                                            ; preds = %.lr.ph469, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %indvars.iv479 = phi i64 [ 0, %.lr.ph469 ], [ %indvars.iv.next480, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 2 uses
  %i.ra = add nsw i64 %indvars.iv479, %i.qw       ; 2 uses
  %i.rb = load ptr, ptr %i.p, align 8, !tbaa !71, !noalias !786 ; 2 uses
  %i.rc = load ptr, ptr %i.r, align 8, !tbaa !75, !noalias !786
  %i.rd = load ptr, ptr %i.t, align 8, !tbaa !76, !noalias !786
  %i.re = ptrtoint ptr %i.rb to i64
  %i.rf = ptrtoint ptr %i.rc to i64
  %i.rg = sub i64 %i.re, %i.rf
  %i.rh = ashr exact i64 %i.rg, 7
  %i.ri = add nsw i64 %i.rh, %i.ra                ; 5 uses
  %i.rj = icmp sgt i64 %i.ri, -1
  br i1 %i.rj, label %bb.bz, label %bb.cc

bb.bz:                                            ; preds = %bb.by
  %i.rk = icmp samesign ult i64 %i.ri, 4
  br i1 %i.rk, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.rl = getelementptr inbounds [128 x i8], ptr %i.rb, i64 %i.ra
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit208

bb.cb:                                            ; preds = %bb.bz
  %i.rm = lshr i64 %i.ri, 2
  br label %bb.cd

bb.cc:                                            ; preds = %bb.by
  %i.rn = ashr i64 %i.ri, 2
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %i.ro = phi i64 [ %i.rm, %bb.cb ], [ %i.rn, %bb.cc ] ; 2 uses
  %i.rp = getelementptr inbounds [8 x i8], ptr %i.rd, i64 %i.ro
  %i.rq = load ptr, ptr %i.rp, align 8, !tbaa !51, !noalias !786
  %i.rr = shl nsw i64 %i.ro, 2
  %i.rs = sub nsw i64 %i.ri, %i.rr
  %i.rt = getelementptr inbounds [128 x i8], ptr %i.rq, i64 %i.rs
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit208

_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit208:       ; preds = %bb.ca, %bb.cd
  %storemerge.i.i.i.i207 = phi ptr [ %i.rt, %bb.cd ], [ %i.rl, %bb.ca ]
  %i.ru = invoke noundef i32 @_ZN2PP4Word7get_intEv(ptr noundef nonnull align 8 dereferenceable(128) %storemerge.i.i.i.i207)
          to label %bb.ce unwind label %.loopexit408 ; 2 uses

bb.ce:                                            ; preds = %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit208
  %i.rv = load ptr, ptr %i.qu, align 8, !tbaa !292 ; 4 uses
  %i.rw = load ptr, ptr %i.qv, align 8, !tbaa !295
  %.not.i = icmp eq ptr %i.rv, %i.rw
  br i1 %.not.i, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  store i32 %i.ru, ptr %i.rv, align 4, !tbaa !4
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rv, i64 4
  store ptr %i.rx, ptr %i.qu, align 8, !tbaa !292
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.cg:                                            ; preds = %bb.ce
  %i.ry = load ptr, ptr %12, align 8, !tbaa !294  ; 4 uses
  %i.rz = ptrtoint ptr %i.rv to i64
  %i.sa = ptrtoint ptr %i.ry to i64
  %i.sb = sub i64 %i.rz, %i.sa                    ; 6 uses
  %i.sc = icmp eq i64 %i.sb, 9223372036854775804
  br i1 %i.sc, label %bb.ch, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.ch:                                            ; preds = %bb.cg
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.225) #24
          to label %.noexc210 unwind label %.loopexit.split-lp409

.noexc210:                                        ; preds = %bb.ch
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.cg
  %i.sd = ashr exact i64 %i.sb, 2                 ; 2 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.sd, i64 1)
  %i.se = add nsw i64 %.sroa.speculated.i.i.i, %i.sd ; 2 uses
  %i.sf = call i64 @llvm.umin.i64(i64 %i.se, i64 2305843009213693951) ; 2 uses
  %.not.i.i.i209 = icmp ne i64 %i.se, 0
  call void @llvm.assume(i1 %.not.i.i.i209)
  %i.sg = shl nuw nsw i64 %i.sf, 2
  %i.sh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.sg) #25
          to label %.noexc211 unwind label %.loopexit408 ; 4 uses

.noexc211:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.si = getelementptr inbounds i8, ptr %i.sh, i64 %i.sb ; 2 uses
  store i32 %i.ru, ptr %i.si, align 4, !tbaa !4
  %i.sj = icmp sgt i64 %i.sb, 0
  br i1 %i.sj, label %bb.ci, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.ci:                                            ; preds = %.noexc211
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.sh, ptr align 4 %i.ry, i64 %i.sb, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.ci, %.noexc211
  %i.sk = getelementptr inbounds nuw i8, ptr %i.si, i64 4
  %.not.i17.i.i = icmp eq ptr %i.ry, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.cj

bb.cj:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ry, i64 noundef %i.sb) #21
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.cj, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.sh, ptr %12, align 8, !tbaa !294
  store ptr %i.sk, ptr %i.qu, align 8, !tbaa !292
  %i.sl = getelementptr inbounds nuw [4 x i8], ptr %i.sh, i64 %i.sf
  store ptr %i.sl, ptr %i.qv, align 8, !tbaa !295
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.cf
  %indvars.iv.next480 = add nuw nsw i64 %indvars.iv479, 1 ; 2 uses
  %i.sm = load i32, ptr %3, align 4, !tbaa !4     ; 2 uses
  %i.sn = sext i32 %i.sm to i64
  %i.so = icmp slt i64 %indvars.iv.next480, %i.sn
  br i1 %i.so, label %bb.by, label %._crit_edge470, !llvm.loop !789

.loopexit408:                                     ; preds = %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit208, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit410 = landingpad { ptr, i32 }
          cleanup
  br label %bb.en

.loopexit.split-lp409:                            ; preds = %bb.ch
  %lpad.loopexit.split-lp411 = landingpad { ptr, i32 }
          cleanup
  br label %bb.en

bb.ck:                                            ; preds = %._crit_edge470
  %i.sp = call noundef i64 @_ZNKSt5dequeIN2PP4WordESaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(80) %i.n) #22
  %i.sq = trunc i64 %i.sp to i32
  %i.sr = icmp slt i32 %i.qy, %i.sq
  br i1 %i.sr, label %bb.cl, label %bb.cr

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  %i.ss = sext i32 %i.qy to i64
  %i.st = call noundef nonnull align 8 dereferenceable(128) ptr @_ZNSt5dequeIN2PP4WordESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(80) %i.n, i64 noundef %i.ss) #22
  invoke void @_ZN2PP4Word10get_stringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(128) %i.st)
          to label %bb.cm unwind label %bb.co

bb.cm:                                            ; preds = %bb.cl
  %i.su = invoke noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.75)
          to label %bb.cn unwind label %bb.cp

bb.cn:                                            ; preds = %bb.cm
  %i.sv = invoke noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.76)
          to label %bb.cq unwind label %bb.cp

bb.co:                                            ; preds = %bb.cl
  %i.sw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit214

bb.cp:                                            ; preds = %bb.cn, %bb.cm
  %i.sx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.sy = load ptr, ptr %13, align 8, !tbaa !45   ; 2 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ta = icmp eq ptr %i.sy, %i.sz
  br i1 %i.ta, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit214, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i212

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i212: ; preds = %bb.cp
  %i.tb = load i64, ptr %i.sz, align 8, !tbaa !15
  %i.tc = add i64 %i.tb, 1
  call void @_ZdlPvm(ptr noundef %i.sy, i64 noundef %i.tc) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit214

bb.cq:                                            ; preds = %bb.cn
  %spec.select = zext i1 %i.su to i32
  %spec.select137 = select i1 %i.sv, i32 -1, i32 %spec.select
  %i.td = load ptr, ptr %13, align 8, !tbaa !45   ; 2 uses
  %i.te = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.tf = icmp eq ptr %i.td, %i.te
  br i1 %i.tf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i215

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i215: ; preds = %bb.cq
  %i.tg = load i64, ptr %i.te, align 8, !tbaa !15
  %i.th = add i64 %i.tg, 1
  call void @_ZdlPvm(ptr noundef %i.td, i64 noundef %i.th) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217: ; preds = %bb.cq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i215
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.cr

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit214: ; preds = %bb.cp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i212, %bb.co
  %.pn = phi { ptr, i32 } [ %i.sw, %bb.co ], [ %i.sx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i212 ], [ %i.sx, %bb.cp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.en

bb.cr:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217, %bb.ck, %._crit_edge470
  %.2104 = phi i32 [ %spec.select137, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217 ], [ 0, %bb.ck ], [ 0, %._crit_edge470 ] ; 2 uses
  %i.ti = load ptr, ptr %i.p, align 8, !tbaa !71, !noalias !790 ; 2 uses
  %i.tj = load ptr, ptr %i.r, align 8, !tbaa !75, !noalias !790
  %i.tk = load ptr, ptr %i.t, align 8, !tbaa !76, !noalias !790
  %i.tl = ptrtoint ptr %i.ti to i64
  %i.tm = ptrtoint ptr %i.tj to i64
  %i.tn = sub i64 %i.tl, %i.tm
  %i.to = ashr exact i64 %i.tn, 7
  %i.tp = add nsw i64 %i.to, %i.o                 ; 6 uses
  %i.tq = icmp sgt i64 %i.tp, -1
  br i1 %i.tq, label %bb.cs, label %bb.cv

bb.cs:                                            ; preds = %bb.cr
  %i.tr = icmp samesign ult i64 %i.tp, 4
  br i1 %i.tr, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.ts = getelementptr inbounds [128 x i8], ptr %i.ti, i64 %i.o ; 3 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 80
  %i.tu = load i32, ptr %i.tt, align 8, !tbaa !444
  %i.tv = getelementptr inbounds nuw i8, ptr %i.ts, i64 84
  %i.tw = load i32, ptr %i.tv, align 4, !tbaa !430
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit223

bb.cu:                                            ; preds = %bb.cs
  %i.tx = lshr i64 %i.tp, 2
  br label %bb.cw

bb.cv:                                            ; preds = %bb.cr
  %i.ty = ashr i64 %i.tp, 2
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %.sink = phi i64 [ %i.ty, %bb.cv ], [ %i.tx, %bb.cu ] ; 2 uses
  %i.tz = getelementptr inbounds [8 x i8], ptr %i.tk, i64 %.sink
  %i.ua = load ptr, ptr %i.tz, align 8, !tbaa !51, !noalias !790 ; 2 uses
  %i.ub = and i64 %i.tp, 3
  %i.uc = getelementptr inbounds nuw [128 x i8], ptr %i.ua, i64 %i.ub ; 2 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %i.uc, i64 80
  %i.ue = load i32, ptr %i.ud, align 8, !tbaa !444
  %i.uf = getelementptr inbounds nuw i8, ptr %i.uc, i64 84
  %i.ug = load i32, ptr %i.uf, align 4, !tbaa !430
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  %i.uh = shl nsw i64 %.sink, 2
  %i.ui = sub nsw i64 %i.tp, %i.uh
  %i.uj = getelementptr inbounds [128 x i8], ptr %i.ua, i64 %i.ui
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit223

_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit223:       ; preds = %bb.ct, %bb.cw
  %i.uk = phi i32 [ %i.ug, %bb.cw ], [ %i.tw, %bb.ct ] ; 3 uses
  %i.ul = phi i32 [ %i.ue, %bb.cw ], [ %i.tu, %bb.ct ] ; 3 uses
  %storemerge.i.i.i.i222 = phi ptr [ %i.uj, %bb.cw ], [ %i.ts, %bb.ct ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !793)
  %i.um = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i222, i64 88
  %i.un = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 7 uses
  store ptr %i.un, ptr %14, align 8, !tbaa !8, !alias.scope !793
  %i.uo = load ptr, ptr %i.um, align 8, !tbaa !45, !noalias !793 ; 2 uses
  %i.up = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i222, i64 96
  %i.uq = load i64, ptr %i.up, align 8, !tbaa !12, !noalias !793 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #22, !noalias !793
  store i64 %i.uq, ptr %i.f, align 8, !tbaa !67, !noalias !793
  %i.ur = icmp ugt i64 %i.uq, 15
  br i1 %i.ur, label %.noexc.i.i225, label %._crit_edge.i.i.i224

.noexc.i.i225:                                    ; preds = %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit223
  %i.us = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc226 unwind label %bb.dm ; 2 uses

.noexc226:                                        ; preds = %.noexc.i.i225
  store ptr %i.us, ptr %14, align 8, !tbaa !45, !alias.scope !793
  %i.ut = load i64, ptr %i.f, align 8, !tbaa !67, !noalias !793
  store i64 %i.ut, ptr %i.un, align 8, !tbaa !15, !alias.scope !793
  br label %._crit_edge.i.i.i224

._crit_edge.i.i.i224:                             ; preds = %.noexc226, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit223
  %i.uu = phi ptr [ %i.us, %.noexc226 ], [ %i.un, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit223 ] ; 2 uses
  switch i64 %i.uq, label %bb.cy [
    i64 1, label %bb.cx
    i64 0, label %bb.cz
  ]

bb.cx:                                            ; preds = %._crit_edge.i.i.i224
  %i.uv = load i8, ptr %i.uo, align 1, !tbaa !15
  store i8 %i.uv, ptr %i.uu, align 1, !tbaa !15
  br label %bb.cz

bb.cy:                                            ; preds = %._crit_edge.i.i.i224
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.uu, ptr align 1 %i.uo, i64 %i.uq, i1 false)
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx, %._crit_edge.i.i.i224
  %i.uw = load i64, ptr %i.f, align 8, !tbaa !67, !noalias !793 ; 2 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 4 uses
  store i64 %i.uw, ptr %i.ux, align 8, !tbaa !12, !alias.scope !793
  %i.uy = load ptr, ptr %14, align 8, !tbaa !45, !alias.scope !793
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uy, i64 %i.uw
  store i8 0, ptr %i.uz, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #22, !noalias !793
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.va = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 64 ; 2 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 7 uses
  store ptr %i.vb, ptr %16, align 8, !tbaa !8
  %i.vc = load ptr, ptr %8, align 8, !tbaa !45    ; 2 uses
  %i.vd = load i64, ptr %i.bl, align 8, !tbaa !12 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #22
  store i64 %i.vd, ptr %i.e, align 8, !tbaa !67
  %i.ve = icmp ugt i64 %i.vd, 15
  br i1 %i.ve, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.cz
  %i.vf = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc227 unwind label %bb.dn ; 2 uses

.noexc227:                                        ; preds = %.noexc.i
  store ptr %i.vf, ptr %16, align 8, !tbaa !45
end_hunk_1
begin_hunk_2_@_ZN2PP3Cmd17evaluate_functionEiRiS1_RNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEES1_:bb.a
  %i.aes = getelementptr inbounds i8, ptr %i.aeo, i64 %i.aer
  %i.aet = getelementptr inbounds nuw i8, ptr %i.aes, i64 240
  %i.aeu = load ptr, ptr %i.aet, align 8, !tbaa !149 ; 6 uses
  %.not.i.i.i449 = icmp eq ptr %i.aeu, null
  br i1 %.not.i.i.i449, label %bb.ev, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i450

bb.ev:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit357
  invoke void @_ZSt16__throw_bad_castv() #24
          to label %.noexc454 unwind label %.loopexit.split-lp500

.noexc454:                                        ; preds = %bb.ev
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i450: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit357
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aeu, i64 56
  %i.aew = load i8, ptr %i.aev, align 8, !tbaa !164
  %.not.i1.i.i451 = icmp eq i8 %i.aew, 0
  br i1 %.not.i1.i.i451, label %bb.ex, label %bb.ew

bb.ew:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i450
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aeu, i64 67
  %i.aey = load i8, ptr %i.aex, align 1, !tbaa !15
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i452

bb.ex:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i450
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.aeu)
          to label %.noexc455 unwind label %.loopexit499

.noexc455:                                        ; preds = %bb.ex
  %i.aez = load ptr, ptr %i.aeu, align 8, !tbaa !147
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aez, i64 48
  %i.afb = load ptr, ptr %i.afa, align 8
  %i.afc = invoke noundef signext i8 %i.afb(ptr noundef nonnull align 8 dereferenceable(570) %i.aeu, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i452 unwind label %.loopexit499, !inline_history !170

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i452: ; preds = %.noexc455, %bb.ew
  %.0.i.i.i453 = phi i8 [ %i.aey, %bb.ew ], [ %i.afc, %.noexc455 ]
  %i.afd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.aeo, i8 noundef signext %.0.i.i.i453)
          to label %.noexc457 unwind label %.loopexit499

.noexc457:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i452
  %i.afe = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.afd)
          to label %_ZNSolsEPFRSoS_E.exit359 unwind label %.loopexit499 ; 0 uses

_ZNSolsEPFRSoS_E.exit359:                         ; preds = %.noexc457
  %i.aff = load ptr, ptr %28, align 8, !tbaa !45  ; 2 uses
  %i.afg = icmp eq ptr %i.aff, %i.abc
  br i1 %i.afg, label %.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i360

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i360: ; preds = %_ZNSolsEPFRSoS_E.exit359
  %i.afh = load i64, ptr %i.abc, align 8, !tbaa !15
  %i.afi = add i64 %i.afh, 1
  call void @_ZdlPvm(ptr noundef %i.aff, i64 noundef %i.afi) #21
  br label %.thread

.loopexit494:                                     ; preds = %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit342, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit344, %bb.ei, %_ZNSolsEPFRSoS_E.exit346, %bb.em, %.noexc444, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i441, %.noexc446
  %lpad.loopexit496 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gb

.loopexit.split-lp495:                            ; preds = %bb.ek
  %lpad.loopexit.split-lp497 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gb

bb.ey:                                            ; preds = %.noexc.i.i353
  %i.afj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit365

.loopexit499:                                     ; preds = %bb.eu, %bb.ex, %.noexc455, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i452, %.noexc457
  %lpad.loopexit501 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ez

.loopexit.split-lp500:                            ; preds = %bb.ev
  %lpad.loopexit.split-lp502 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ez

bb.ez:                                            ; preds = %.loopexit.split-lp500, %.loopexit499
  %lpad.phi503 = phi { ptr, i32 } [ %lpad.loopexit501, %.loopexit499 ], [ %lpad.loopexit.split-lp502, %.loopexit.split-lp500 ] ; 2 uses
  %i.afk = load ptr, ptr %28, align 8, !tbaa !45  ; 2 uses
  %i.afl = icmp eq ptr %i.afk, %i.abc
  br i1 %i.afl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit365, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i363

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i363: ; preds = %bb.ez
  %i.afm = load i64, ptr %i.abc, align 8, !tbaa !15
  %i.afn = add i64 %i.afm, 1
  call void @_ZdlPvm(ptr noundef %i.afk, i64 noundef %i.afn) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit365

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit365: ; preds = %bb.ez, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i363, %bb.ey
  %.pn120 = phi { ptr, i32 } [ %i.afj, %bb.ey ], [ %lpad.phi503, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i363 ], [ %lpad.phi503, %bb.ez ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #22
  br label %bb.gb

bb.fa:                                            ; preds = %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit340.thread, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit340
  %indvars.iv.next535 = add nuw nsw i64 %indvars.iv534, 1 ; 2 uses
  %i.afo = icmp slt i64 %indvars.iv.next535, %i.abm
  br i1 %i.afo, label %bb.ed, label %._crit_edge523, !llvm.loop !1014

.thread:                                          ; preds = %_ZNSolsEPFRSoS_E.exit359, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i360
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #22
  store i32 2, ptr %5, align 4, !tbaa !4
  %.pre540 = load i32, ptr %3, align 4, !tbaa !4  ; 2 uses
  %indvars.iv.next535661 = add nuw nsw i64 %indvars.iv534, 1 ; 2 uses
  %i.afp = sext i32 %.pre540 to i64
  %i.afq = icmp slt i64 %indvars.iv.next535661, %i.afp
  br i1 %i.afq, label %.outer, label %.critedge, !llvm.loop !1014

.critedge532:                                     ; preds = %._crit_edge523
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %29, i8 0, i64 24, i1 false)
  %i.afr = icmp sgt i32 %.ph, 0
  br i1 %i.afr, label %.lr.ph526, label %._crit_edge527

.lr.ph526:                                        ; preds = %.critedge532
  %i.afs = add nsw i32 %1, 1
  %i.aft = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 3 uses
  %i.afu = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  %i.afv = sext i32 %i.afs to i64
  br label %bb.fb

._crit_edge527:                                   ; preds = %_ZNSt6vectorIdSaIdEE9push_backERKd.exit, %.critedge532.thread, %.critedge532
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %bb.fn unwind label %bb.ft

bb.fb:                                            ; preds = %.lr.ph526, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit
  %indvars.iv536 = phi i64 [ 0, %.lr.ph526 ], [ %indvars.iv.next537, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit ] ; 2 uses
  %i.afw = add nsw i64 %indvars.iv536, %i.afv     ; 2 uses
  %i.afx = load ptr, ptr %i.u, align 8, !tbaa !71, !noalias !1015 ; 2 uses
  %i.afy = load ptr, ptr %i.w, align 8, !tbaa !75, !noalias !1015
  %i.afz = load ptr, ptr %i.y, align 8, !tbaa !76, !noalias !1015
  %i.aga = ptrtoint ptr %i.afx to i64
  %i.agb = ptrtoint ptr %i.afy to i64
  %i.agc = sub i64 %i.aga, %i.agb
  %i.agd = ashr exact i64 %i.agc, 7
  %i.age = add nsw i64 %i.agd, %i.afw             ; 5 uses
  %i.agf = icmp sgt i64 %i.age, -1
  br i1 %i.agf, label %bb.fc, label %bb.ff

bb.fc:                                            ; preds = %bb.fb
  %i.agg = icmp samesign ult i64 %i.age, 4
  br i1 %i.agg, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %bb.fc
  %i.agh = getelementptr inbounds [128 x i8], ptr %i.afx, i64 %i.afw
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit367

bb.fe:                                            ; preds = %bb.fc
  %i.agi = lshr i64 %i.age, 2
  br label %bb.fg

bb.ff:                                            ; preds = %bb.fb
  %i.agj = ashr i64 %i.age, 2
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %bb.fe
  %i.agk = phi i64 [ %i.agi, %bb.fe ], [ %i.agj, %bb.ff ] ; 2 uses
  %i.agl = getelementptr inbounds [8 x i8], ptr %i.afz, i64 %i.agk
  %i.agm = load ptr, ptr %i.agl, align 8, !tbaa !51, !noalias !1015
  %i.agn = shl nsw i64 %i.agk, 2
  %i.ago = sub nsw i64 %i.age, %i.agn
  %i.agp = getelementptr inbounds [128 x i8], ptr %i.agm, i64 %i.ago
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit367

_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit367:       ; preds = %bb.fd, %bb.fg
  %storemerge.i.i.i.i366 = phi ptr [ %i.agp, %bb.fg ], [ %i.agh, %bb.fd ]
  %i.agq = invoke noundef double @_ZN2PP4Word10get_doubleEv(ptr noundef nonnull align 8 dereferenceable(128) %storemerge.i.i.i.i366)
          to label %bb.fh unwind label %.loopexit489 ; 2 uses

bb.fh:                                            ; preds = %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit367
  %i.agr = load ptr, ptr %i.aft, align 8, !tbaa !1018 ; 4 uses
  %i.ags = load ptr, ptr %i.afu, align 8, !tbaa !1021
  %.not.i368 = icmp eq ptr %i.agr, %i.ags
  br i1 %.not.i368, label %bb.fj, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  store double %i.agq, ptr %i.agr, align 8, !tbaa !496
  %i.agt = getelementptr inbounds nuw i8, ptr %i.agr, i64 8
  store ptr %i.agt, ptr %i.aft, align 8, !tbaa !1018
  br label %_ZNSt6vectorIdSaIdEE9push_backERKd.exit

bb.fj:                                            ; preds = %bb.fh
  %i.agu = load ptr, ptr %29, align 8, !tbaa !1022 ; 4 uses
  %i.agv = ptrtoint ptr %i.agr to i64
  %i.agw = ptrtoint ptr %i.agu to i64
  %i.agx = sub i64 %i.agv, %i.agw                 ; 6 uses
  %i.agy = icmp eq i64 %i.agx, 9223372036854775800
  br i1 %i.agy, label %bb.fk, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i

bb.fk:                                            ; preds = %bb.fj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.225) #24
          to label %.noexc370 unwind label %.loopexit.split-lp490

.noexc370:                                        ; preds = %bb.fk
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.fj
  %i.agz = ashr exact i64 %i.agx, 3               ; 2 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.agz, i64 1)
  %i.aha = add nsw i64 %.sroa.speculated.i.i.i, %i.agz ; 2 uses
  %i.ahb = call i64 @llvm.umin.i64(i64 %i.aha, i64 1152921504606846975) ; 2 uses
  %.not.i.i.i369 = icmp ne i64 %i.aha, 0
  call void @llvm.assume(i1 %.not.i.i.i369)
  %i.ahc = shl nuw nsw i64 %i.ahb, 3
  %i.ahd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ahc) #25
          to label %.noexc371 unwind label %.loopexit489 ; 4 uses

.noexc371:                                        ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i
  %i.ahe = getelementptr inbounds i8, ptr %i.ahd, i64 %i.agx ; 2 uses
  store double %i.agq, ptr %i.ahe, align 8, !tbaa !496
  %i.ahf = icmp sgt i64 %i.agx, 0
  br i1 %i.ahf, label %bb.fl, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i

bb.fl:                                            ; preds = %.noexc371
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ahd, ptr align 8 %i.agu, i64 %i.agx, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i: ; preds = %bb.fl, %.noexc371
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.ahe, i64 8
  %.not.i17.i.i = icmp eq ptr %i.agu, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i, label %bb.fm

bb.fm:                                            ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.agu, i64 noundef %i.agx) #21
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i: ; preds = %bb.fm, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i
  store ptr %i.ahd, ptr %29, align 8, !tbaa !1022
  store ptr %i.ahg, ptr %i.aft, align 8, !tbaa !1018
  %i.ahh = getelementptr inbounds nuw [8 x i8], ptr %i.ahd, i64 %i.ahb
  store ptr %i.ahh, ptr %i.afu, align 8, !tbaa !1021
  br label %_ZNSt6vectorIdSaIdEE9push_backERKd.exit

_ZNSt6vectorIdSaIdEE9push_backERKd.exit:          ; preds = %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i, %bb.fi
  %indvars.iv.next537 = add nuw nsw i64 %indvars.iv536, 1 ; 2 uses
  %i.ahi = load i32, ptr %3, align 4, !tbaa !4
  %i.ahj = sext i32 %i.ahi to i64
  %i.ahk = icmp slt i64 %indvars.iv.next537, %i.ahj
  br i1 %i.ahk, label %bb.fb, label %._crit_edge527, !llvm.loop !1023

.loopexit489:                                     ; preds = %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit367, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit491 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit381

.loopexit.split-lp490:                            ; preds = %bb.fk
  %lpad.loopexit.split-lp492 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit381

bb.fn:                                            ; preds = %._crit_edge527
  %i.ahl = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ahm = load ptr, ptr %i.ahl, align 8, !tbaa !66
  %i.ahn = invoke noundef double @_ZN2PP8Function8evaluateERSt6vectorIdSaIdEERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERiiiNS5_12basic_stringIcS8_S9_EEPSt5dequeISE_SaISE_EE(ptr noundef nonnull align 8 dereferenceable(104) %i.rj, ptr noundef nonnull align 8 dereferenceable(24) %29, ptr noundef nonnull align 8 dereferenceable(128) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, i32 noundef %i.kd, i32 noundef %i.kc, ptr noundef nonnull %30, ptr noundef %i.ahm)
          to label %bb.fo unwind label %bb.fu

bb.fo:                                            ; preds = %bb.fn
  %i.aho = load ptr, ptr %30, align 8, !tbaa !45  ; 2 uses
  %i.ahp = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 2 uses
  %i.ahq = icmp eq ptr %i.aho, %i.ahp
  br i1 %i.ahq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit374, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i372

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i372: ; preds = %bb.fo
  %i.ahr = load i64, ptr %i.ahp, align 8, !tbaa !15
  %i.ahs = add i64 %i.ahr, 1
  call void @_ZdlPvm(ptr noundef %i.aho, i64 noundef %i.ahs) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit374

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit374: ; preds = %bb.fo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i372
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %bb.fp unwind label %bb.fv

bb.fp:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit374
  %i.aht = load ptr, ptr %i.ahl, align 8, !tbaa !66
  invoke void @_ZN2PP4WordC1EdiiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt5dequeIS6_SaIS6_EE(ptr noundef nonnull align 8 dereferenceable(128) %31, double noundef %i.ahn, i32 noundef %i.kd, i32 noundef %i.kc, ptr noundef nonnull %32, ptr noundef %i.aht)
          to label %bb.fq unwind label %bb.fw

bb.fq:                                            ; preds = %bb.fp
  %i.ahu = load ptr, ptr %32, align 8, !tbaa !45  ; 2 uses
  %i.ahv = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  %i.ahw = icmp eq ptr %i.ahu, %i.ahv
  br i1 %i.ahw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit377, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i375

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i375: ; preds = %bb.fq
  %i.ahx = load i64, ptr %i.ahv, align 8, !tbaa !15
  %i.ahy = add i64 %i.ahx, 1
  call void @_ZdlPvm(ptr noundef %i.ahu, i64 noundef %i.ahy) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit377

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit377: ; preds = %bb.fq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i375
  %i.ahz = load i32, ptr %3, align 4, !tbaa !4
  %i.aia = add nsw i32 %i.ahz, %1
  invoke void @_ZN2PP3Cmd13replace_wordsEiiRNS_4WordE(ptr noundef nonnull align 8 dereferenceable(432) %0, i32 noundef %1, i32 noundef %i.aia, ptr noundef nonnull align 8 dereferenceable(128) %31)
          to label %bb.fr unwind label %bb.fx

bb.fr:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit377
  %i.aib = load i32, ptr %3, align 4, !tbaa !4
  %i.aic = load i32, ptr %2, align 4, !tbaa !4
  %i.aid = sub nsw i32 %i.aic, %i.aib
  store i32 %i.aid, ptr %2, align 4, !tbaa !4
  call void @_ZN2PP4WordD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %31) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #22
  %i.aie = load ptr, ptr %29, align 8, !tbaa !1022 ; 3 uses
  %.not.i.i.i378 = icmp eq ptr %i.aie, null
  br i1 %.not.i.i.i378, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.aif = getelementptr inbounds nuw i8, ptr %29, i64 16
  %i.aig = load ptr, ptr %i.aif, align 8, !tbaa !1021
  %i.aih = ptrtoint ptr %i.aig to i64
  %i.aii = ptrtoint ptr %i.aie to i64
  %i.aij = sub i64 %i.aih, %i.aii
  call void @_ZdlPvm(ptr noundef nonnull %i.aie, i64 noundef %i.aij) #21
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.fr, %bb.fs
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #22
  br label %.critedge

bb.ft:                                            ; preds = %._crit_edge527
  %i.aik = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit381

bb.fu:                                            ; preds = %bb.fn
  %i.ail = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aim = load ptr, ptr %30, align 8, !tbaa !45  ; 2 uses
  %i.ain = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 2 uses
  %i.aio = icmp eq ptr %i.aim, %i.ain
  br i1 %i.aio, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit381, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i379

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i379: ; preds = %bb.fu
  %i.aip = load i64, ptr %i.ain, align 8, !tbaa !15
  %i.aiq = add i64 %i.aip, 1
  call void @_ZdlPvm(ptr noundef %i.aim, i64 noundef %i.aiq) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit381

bb.fv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit374
  %i.air = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit384

bb.fw:                                            ; preds = %bb.fp
  %i.ais = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ait = load ptr, ptr %32, align 8, !tbaa !45  ; 2 uses
  %i.aiu = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  %i.aiv = icmp eq ptr %i.ait, %i.aiu
  br i1 %i.aiv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit384, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i382

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i382: ; preds = %bb.fw
  %i.aiw = load i64, ptr %i.aiu, align 8, !tbaa !15
  %i.aix = add i64 %i.aiw, 1
  call void @_ZdlPvm(ptr noundef %i.ait, i64 noundef %i.aix) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit384

bb.fx:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit377
  %i.aiy = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2PP4WordD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %31) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit384

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit384: ; preds = %bb.fw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i382, %bb.fx, %bb.fv
  %.pn115 = phi { ptr, i32 } [ %i.aiy, %bb.fx ], [ %i.air, %bb.fv ], [ %i.ais, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i382 ], [ %i.ais, %bb.fw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit381

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit381: ; preds = %bb.fu, %.loopexit489, %.loopexit.split-lp490, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i379, %bb.ft, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit384
  %.pn118 = phi { ptr, i32 } [ %i.ail, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i379 ], [ %.pn115, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit384 ], [ %i.aik, %bb.ft ], [ %lpad.loopexit.split-lp492, %.loopexit.split-lp490 ], [ %lpad.loopexit491, %.loopexit489 ], [ %i.ail, %bb.fu ]
  %i.aiz = load ptr, ptr %29, align 8, !tbaa !1022 ; 3 uses
  %.not.i.i.i385 = icmp eq ptr %i.aiz, null
  br i1 %.not.i.i.i385, label %_ZNSt6vectorIdSaIdEED2Ev.exit386, label %bb.fy

bb.fy:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit381
  %i.aja = getelementptr inbounds nuw i8, ptr %29, i64 16
  %i.ajb = load ptr, ptr %i.aja, align 8, !tbaa !1021
  %i.ajc = ptrtoint ptr %i.ajb to i64
  %i.ajd = ptrtoint ptr %i.aiz to i64
  %i.aje = sub i64 %i.ajc, %i.ajd
  call void @_ZdlPvm(ptr noundef nonnull %i.aiz, i64 noundef %i.aje) #21
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit386

_ZNSt6vectorIdSaIdEED2Ev.exit386:                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit381, %bb.fy
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #22
  br label %bb.gb

.critedge:                                        ; preds = %.thread, %_ZNSt6vectorIdSaIdEED2Ev.exit, %._crit_edge523, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit335, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240
  %i.ajf = load ptr, ptr %13, align 8, !tbaa !45  ; 2 uses
  %i.ajg = icmp eq ptr %i.ajf, %i.kf
  br i1 %i.ajg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit389, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i387

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i387: ; preds = %.critedge
  %i.ajh = load i64, ptr %i.kf, align 8, !tbaa !15
  %i.aji = add i64 %i.ajh, 1
  call void @_ZdlPvm(ptr noundef %i.ajf, i64 noundef %i.aji) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit389

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit389: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i387
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.fz

bb.fz:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit389, %._crit_edge531
  %i.ajj = load ptr, ptr %10, align 8, !tbaa !45  ; 2 uses
  %i.ajk = icmp eq ptr %i.ajj, %i.bg
  br i1 %i.ajk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit392, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i390

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i390: ; preds = %bb.fz
  %i.ajl = load i64, ptr %i.bg, align 8, !tbaa !15
  %i.ajm = add i64 %i.ajl, 1
  call void @_ZdlPvm(ptr noundef %i.ajj, i64 noundef %i.ajm) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit392

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit392: ; preds = %bb.fz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i390
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %bb.ga

bb.ga:                                            ; preds = %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit.thread487, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit.thread, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit, %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit392
  ret void

bb.gb:                                            ; preds = %.loopexit494, %.loopexit.split-lp495, %_ZNSt6vectorIdSaIdEED2Ev.exit386, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit365, %bb.ec, %bb.dw, %bb.ck, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit252
  %.pn129.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn129.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit252 ], [ %.pn124.pn, %bb.dw ], [ %.pn120, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit365 ], [ %i.abn, %bb.ec ], [ %i.tf, %bb.ck ], [ %.pn118, %_ZNSt6vectorIdSaIdEED2Ev.exit386 ], [ %lpad.loopexit496, %.loopexit494 ], [ %lpad.loopexit.split-lp497, %.loopexit.split-lp495 ] ; 2 uses
  %i.ajn = load ptr, ptr %13, align 8, !tbaa !45  ; 2 uses
  %i.ajo = icmp eq ptr %i.ajn, %i.kf
  br i1 %i.ajo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit395, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i393

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i393: ; preds = %bb.gb
  %i.ajp = load i64, ptr %i.kf, align 8, !tbaa !15
  %i.ajq = add i64 %i.ajp, 1
end_hunk_2
begin_hunk_3_@_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2PP8VariableEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_:bb.a
  %i.l = sub i64 %i.d, %i.g
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.l, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.k, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.m = icmp slt i32 %.0.i.i.i, 0                ; 2 uses
  %.in.v = select i1 %i.m, i64 16, i64 24
  %.in = getelementptr inbounds nuw i8, ptr %.02933, i64 %.in.v
  %.029 = load ptr, ptr %.in, align 8, !tbaa !558 ; 2 uses
  %.not = icmp eq ptr %.029, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !2287

._crit_edge:                                      ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  br i1 %i.m, label %._crit_edge.thread, label %bb.d

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.028.lcssa39 = phi ptr [ %.02933, %._crit_edge ], [ %i.b, %bb.a ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !761
  %i.p = icmp eq ptr %.028.lcssa39, %i.o
  br i1 %i.p, label %bb.e, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread
  %i.q = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.028.lcssa39) #26
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %.028.lcssa38 = phi ptr [ %.028.lcssa39, %bb.c ], [ %.02933, %._crit_edge ]
  %.sroa.014.0 = phi ptr [ %i.q, %bb.c ], [ %.02933, %._crit_edge ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 40
  %i.s = load i64, ptr %i.r, align 8, !tbaa !12   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !12   ; 2 uses
  %.sroa.speculated.i.i.i5 = tail call i64 @llvm.umin.i64(i64 %i.u, i64 %i.s) ; 2 uses
  %i.v = icmp eq i64 %.sroa.speculated.i.i.i5, 0
  br i1 %i.v, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6: ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 32
  %i.x = load ptr, ptr %1, align 8, !tbaa !45
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !45
  %i.z = tail call i32 @memcmp(ptr noundef %i.y, ptr noundef %i.x, i64 noundef %.sroa.speculated.i.i.i5) #22 ; 2 uses
  %.not.i.i.i7 = icmp eq i32 %i.z, 0
  br i1 %.not.i.i.i7, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6, %bb.d
  %i.aa = sub i64 %i.s, %i.u
  %spec.select7.i.i.i.i10 = tail call i64 @llvm.smax.i64(i64 %i.aa, i64 -2147483648)
  %.08.i.i.i.i11 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i10, i64 2147483647)
  %.0.i6.i.i.i12 = trunc nsw i64 %.08.i.i.i.i11 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9
  %.0.i.i.i8 = phi i32 [ %i.z, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6 ], [ %.0.i6.i.i.i12, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9 ]
  %i.ab = icmp slt i32 %.0.i.i.i8, 0              ; 2 uses
  %spec.select = select i1 %i.ab, ptr null, ptr %.sroa.014.0
  %spec.select30 = select i1 %i.ab, ptr %.028.lcssa38, ptr null
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13, %._crit_edge.thread
  %.sroa.027.0 = phi ptr [ %spec.select, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13 ], [ null, %._crit_edge.thread ]
  %.sroa.4.0 = phi ptr [ %spec.select30, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13 ], [ %.028.lcssa39, %._crit_edge.thread ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.027.0, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.4.0, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2PP8VariableEED2Ev(ptr noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !45   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.f = load i64, ptr %i.d, align 8, !tbaa !15
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !294  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !295
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #21
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i:                  ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !46   ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !47   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.p, %i.r
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.x, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.p, %_ZNSt6vectorIiSaIiEED2Ev.exit.i ] ; 3 uses
  %i.s = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !45 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.v = load i64, ptr %i.t, align 8, !tbaa !15
  %i.w = add i64 %i.v, 1
  tail call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #21
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.x, %i.r
  br i1 %.not.i.i.i1.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !48

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.o, align 8, !tbaa !46
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %i.y = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.p, %_ZNSt6vectorIiSaIiEED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !50
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = sub i64 %i.ab, %i.ac
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ad) #21
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i: ; preds = %bb.c, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !45  ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZN2PP8VariableD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !15
  %i.ai = add i64 %i.ah, 1
  tail call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #21
  br label %_ZN2PP8VariableD2Ev.exit

_ZN2PP8VariableD2Ev.exit:                         ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i
  %i.aj = load ptr, ptr %0, align 8, !tbaa !45    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN2PP8VariableD2Ev.exit
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !15
  %i.an = add i64 %i.am, 1
  tail call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN2PP8VariableD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !47   ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !46     ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775776
  br i1 %i.h, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.225) #24
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.i = ashr exact i64 %i.g, 5                   ; 2 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1)
  %i.j = add nsw i64 %.sroa.speculated.i, %i.i    ; 2 uses
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.j, i64 288230376151711743) ; 3 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.l, %i.f
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.n = shl nuw nsw i64 %i.k, 5
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #25
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit, %bb.c
  %i.p = phi ptr [ %i.o, %bb.c ], [ null, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit ] ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.m ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !8
  %i.s = load ptr, ptr %2, align 8, !tbaa !45     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !12   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.u, ptr %i.a, align 8, !tbaa !67
  %i.v = icmp ugt i64 %i.u, 15
  br i1 %i.v, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  %i.w = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.k     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.w, ptr %i.q, align 8, !tbaa !45
  %i.x = load i64, ptr %i.a, align 8, !tbaa !67
  store i64 %i.x, ptr %i.r, align 8, !tbaa !15
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  %i.y = phi ptr [ %i.w, %.noexc ], [ %i.r, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit ] ; 2 uses
  switch i64 %i.u, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.z = load i8, ptr %i.s, align 1, !tbaa !15
  store i8 %i.z, ptr %i.y, align 1, !tbaa !15
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr align 1 %i.s, i64 %i.u, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !67  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !12
  %i.ac = load ptr, ptr %i.q, align 8, !tbaa !45
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aa
  store i8 0, ptr %i.ad, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %.not10.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ar, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %bb.f ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.d, %bb.f ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2288)
  call void @llvm.experimental.noalias.scope.decl(metadata !2291)
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.ae, ptr %.012.i.i.i, align 8, !tbaa !8, !alias.scope !2288, !noalias !2291
  %i.af = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !45, !alias.scope !2291, !noalias !2288 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !12, !alias.scope !2291, !noalias !2288 ; 3 uses
  %i.ak = icmp ult i64 %i.aj, 16
  call void @llvm.assume(i1 %i.ak)
  %i.al = add nuw nsw i64 %i.aj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ae, ptr noundef nonnull align 8 dereferenceable(1) %i.ag, i64 %i.al, i1 false), !alias.scope !2293
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.af, ptr %.012.i.i.i, align 8, !tbaa !45, !alias.scope !2288, !noalias !2291
  %i.am = load i64, ptr %i.ag, align 8, !tbaa !15, !alias.scope !2291, !noalias !2288
  store i64 %i.am, ptr %i.ae, align 8, !tbaa !15, !alias.scope !2288, !noalias !2291
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !12, !alias.scope !2291, !noalias !2288
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.g
  %i.an = phi i64 [ %i.aj, %bb.g ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.an, ptr %i.ap, align 8, !tbaa !12, !alias.scope !2288, !noalias !2291
  store ptr %i.ag, ptr %.0911.i.i.i, align 8, !tbaa !45, !alias.scope !2291, !noalias !2288
  store i64 0, ptr %i.ao, align 8, !tbaa !12, !alias.scope !2291, !noalias !2288
  store i8 0, ptr %i.ag, align 8, !tbaa !15, !alias.scope !2291, !noalias !2288
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aq, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !2294

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %bb.f
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %bb.f ], [ %i.ar, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i26 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33
  %.012.i.i.i28 = phi ptr [ %i.bg, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %i.as, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i29 = phi ptr [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2295)
  call void @llvm.experimental.noalias.scope.decl(metadata !2298)
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 16 ; 3 uses
  store ptr %i.at, ptr %.012.i.i.i28, align 8, !tbaa !8, !alias.scope !2295, !noalias !2298
  %i.au = load ptr, ptr %.0911.i.i.i29, align 8, !tbaa !45, !alias.scope !2298, !noalias !2295 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 16 ; 5 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30

bb.h:                                             ; preds = %.lr.ph.i.i.i27
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !12, !alias.scope !2298, !noalias !2295 ; 3 uses
  %i.az = icmp ult i64 %i.ay, 16
  call void @llvm.assume(i1 %i.az)
  %i.ba = add nuw nsw i64 %i.ay, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.at, ptr noundef nonnull align 8 dereferenceable(1) %i.av, i64 %i.ba, i1 false), !alias.scope !2300
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30: ; preds = %.lr.ph.i.i.i27
  store ptr %i.au, ptr %.012.i.i.i28, align 8, !tbaa !45, !alias.scope !2295, !noalias !2298
  %i.bb = load i64, ptr %i.av, align 8, !tbaa !15, !alias.scope !2298, !noalias !2295
  store i64 %i.bb, ptr %i.at, align 8, !tbaa !15, !alias.scope !2295, !noalias !2298
  %.phi.trans.insert.i.i.i.i31 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %.pre.i.i.i.i32 = load i64, ptr %.phi.trans.insert.i.i.i.i31, align 8, !tbaa !12, !alias.scope !2298, !noalias !2295
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30, %bb.h
  %i.bc = phi i64 [ %i.ay, %bb.h ], [ %.pre.i.i.i.i32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30 ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 8
  store i64 %i.bc, ptr %i.be, align 8, !tbaa !12, !alias.scope !2295, !noalias !2298
  store ptr %i.av, ptr %.0911.i.i.i29, align 8, !tbaa !45, !alias.scope !2298, !noalias !2295
  store i64 0, ptr %i.bd, align 8, !tbaa !12, !alias.scope !2298, !noalias !2295
  store i8 0, ptr %i.av, align 8, !tbaa !15, !alias.scope !2298, !noalias !2295
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 32 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 32 ; 2 uses
  %.not.i.i.i34 = icmp eq ptr %i.bf, %i.c
  br i1 %.not.i.i.i34, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, label %.lr.ph.i.i.i27, !llvm.loop !2294

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i35 = phi ptr [ %i.as, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.bg, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ]
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i37 = icmp eq ptr %i.d, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !50
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = sub i64 %i.bj, %i.f
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.bk) #21
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, %bb.i
  store ptr %i.p, ptr %0, align 8, !tbaa !46
  store ptr %.0.lcssa.i.i.i35, ptr %i.b, align 8, !tbaa !47
  %i.bl = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.k
  store ptr %i.bl, ptr %i.bh, align 8, !tbaa !50
  ret void

bb.j:                                             ; preds = %bb.k
  %i.bm = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.l unwind label %bb.m

bb.k:                                             ; preds = %.noexc.i
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  %i.bp = call ptr @__cxa_begin_catch(ptr %i.bo) #22 ; 0 uses
  %i.bq = shl nuw nsw i64 %i.k, 5
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.bq) #21
  invoke void @__cxa_rethrow() #24
          to label %bb.n unwind label %bb.j

bb.l:                                             ; preds = %bb.j
  resume { ptr, i32 } %i.bm

bb.m:                                             ; preds = %bb.j
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  call void @__clang_call_terminate(ptr %i.bs) #23
  unreachable

bb.n:                                             ; preds = %bb.k
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !46     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.225) #24
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 2 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743) ; 2 uses
  %i.k = ptrtoint ptr %1 to i64
  %i.l = sub i64 %i.k, %i.e
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.m = shl nuw nsw i64 %i.j, 5
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #25
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit, %bb.c
  %i.o = phi ptr [ %i.n, %bb.c ], [ null, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.l ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !8
  %i.r = load ptr, ptr %2, align 8, !tbaa !45     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.d:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !12   ; 3 uses
  %i.w = icmp ult i64 %i.v, 16
  tail call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %i.v, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.x, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  store ptr %i.r, ptr %i.p, align 8, !tbaa !45
  %i.y = load i64, ptr %i.s, align 8, !tbaa !15
  store i64 %i.y, ptr %i.q, align 8, !tbaa !15
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.z = phi i64 [ %i.v, %bb.d ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %i.z, ptr %i.ab, align 8, !tbaa !12
  store ptr %i.s, ptr %2, align 8, !tbaa !45
  store i64 0, ptr %i.aa, align 8, !tbaa !12
  store i8 0, ptr %i.s, align 8, !tbaa !15
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ap, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ao, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2301)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2304)
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.ac, ptr %.012.i.i.i, align 8, !tbaa !8, !alias.scope !2301, !noalias !2304
  %i.ad = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !45, !alias.scope !2304, !noalias !2301 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !12, !alias.scope !2304, !noalias !2301 ; 3 uses
  %i.ai = icmp ult i64 %i.ah, 16
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = add nuw nsw i64 %i.ah, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ac, ptr noundef nonnull align 8 dereferenceable(1) %i.ae, i64 %i.aj, i1 false), !alias.scope !2306
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ad, ptr %.012.i.i.i, align 8, !tbaa !45, !alias.scope !2301, !noalias !2304
  %i.ak = load i64, ptr %i.ae, align 8, !tbaa !15, !alias.scope !2304, !noalias !2301
  store i64 %i.ak, ptr %i.ac, align 8, !tbaa !15, !alias.scope !2301, !noalias !2304
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !12, !alias.scope !2304, !noalias !2301
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.e
  %i.al = phi i64 [ %i.ah, %bb.e ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.al, ptr %i.an, align 8, !tbaa !12, !alias.scope !2301, !noalias !2304
  store ptr %i.ae, ptr %.0911.i.i.i, align 8, !tbaa !45, !alias.scope !2304, !noalias !2301
  store i64 0, ptr %i.am, align 8, !tbaa !12, !alias.scope !2304, !noalias !2301
  store i8 0, ptr %i.ae, align 8, !tbaa !15, !alias.scope !2304, !noalias !2301
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ao, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !2294

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ], [ %i.ap, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23
  %.012.i.i.i18 = phi ptr [ %i.be, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %i.aq, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i19 = phi ptr [ %i.bd, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2307)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2310)
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 3 uses
  store ptr %i.ar, ptr %.012.i.i.i18, align 8, !tbaa !8, !alias.scope !2307, !noalias !2310
  %i.as = load ptr, ptr %.0911.i.i.i19, align 8, !tbaa !45, !alias.scope !2310, !noalias !2307 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 5 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20

bb.f:                                             ; preds = %.lr.ph.i.i.i17
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !12, !alias.scope !2310, !noalias !2307 ; 3 uses
  %i.ax = icmp ult i64 %i.aw, 16
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = add nuw nsw i64 %i.aw, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ar, ptr noundef nonnull align 8 dereferenceable(1) %i.at, i64 %i.ay, i1 false), !alias.scope !2312
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i17
  store ptr %i.as, ptr %.012.i.i.i18, align 8, !tbaa !45, !alias.scope !2307, !noalias !2310
  %i.az = load i64, ptr %i.at, align 8, !tbaa !15, !alias.scope !2310, !noalias !2307
  store i64 %i.az, ptr %i.ar, align 8, !tbaa !15, !alias.scope !2307, !noalias !2310
  %.phi.trans.insert.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %.pre.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i21, align 8, !tbaa !12, !alias.scope !2310, !noalias !2307
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20, %bb.f
  %i.ba = phi i64 [ %i.aw, %bb.f ], [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20 ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8
  store i64 %i.ba, ptr %i.bc, align 8, !tbaa !12, !alias.scope !2307, !noalias !2310
  store ptr %i.at, ptr %.0911.i.i.i19, align 8, !tbaa !45, !alias.scope !2310, !noalias !2307
  store i64 0, ptr %i.bb, align 8, !tbaa !12, !alias.scope !2310, !noalias !2307
  store i8 0, ptr %i.at, align 8, !tbaa !15, !alias.scope !2310, !noalias !2307
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.bd, %i.b
  br i1 %.not.i.i.i24, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17, !llvm.loop !2294

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i25 = phi ptr [ %i.aq, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.be, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ]
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !50
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = sub i64 %i.bh, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bi) #21
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, %bb.g
  store ptr %i.o, ptr %0, align 8, !tbaa !46
  store ptr %.0.lcssa.i.i.i25, ptr %i.a, align 8, !tbaa !47
  %i.bj = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.j
  store ptr %i.bj, ptr %i.bf, align 8, !tbaa !50
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN2PP4WordESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(128) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !886  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !888    ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775680
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN2PP4WordESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.225) #24
  unreachable

_ZNKSt6vectorIN2PP4WordESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 7                   ; 2 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = tail call i64 @llvm.umin.i64(i64 %i.i, i64 72057594037927935) ; 2 uses
  %i.k = ptrtoint ptr %1 to i64
  %i.l = sub i64 %i.k, %i.e
  %.not.i = icmp ne i64 %i.i, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.m = shl nuw nsw i64 %i.j, 7                  ; 2 uses
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #25 ; 10 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l ; 2 uses
  invoke void @_ZN2PP4WordC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(128) %i.o, ptr noundef nonnull align 8 dereferenceable(128) %2)
          to label %_ZNSt16allocator_traitsISaIN2PP4WordEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit unwind label %.thread

_ZNSt16allocator_traitsISaIN2PP4WordEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorIN2PP4WordESaIS1_EE12_M_check_lenEmPKc.exit
  %.not14.i.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not14.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2PP4WordES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt16allocator_traitsISaIN2PP4WordEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit, %_ZSt10_ConstructIN2PP4WordEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.016.i.i.i.i.i = phi ptr [ %i.q, %_ZSt10_ConstructIN2PP4WordEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.n, %_ZNSt16allocator_traitsISaIN2PP4WordEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit ] ; 4 uses
  %.01215.i.i.i.i.i = phi ptr [ %i.p, %_ZSt10_ConstructIN2PP4WordEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.c, %_ZNSt16allocator_traitsISaIN2PP4WordEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit ] ; 2 uses
  invoke void @_ZN2PP4WordC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(128) %.016.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(128) %.01215.i.i.i.i.i)
          to label %_ZSt10_ConstructIN2PP4WordEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %bb.c

_ZSt10_ConstructIN2PP4WordEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i, i64 128 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.p, %1
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2PP4WordES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !2313

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  %i.t = tail call ptr @__cxa_begin_catch(ptr %i.s) #22 ; 0 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.n, %.016.i.i.i.i.i
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN2PP4WordEEvT_S3_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i.i.i ], [ %i.n, %bb.c ] ; 2 uses
  tail call void @_ZN2PP4WordD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %.05.i.i.i.i.i.i.i) #22
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.u, %.016.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN2PP4WordEEvT_S3_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !913

_ZSt8_DestroyIPN2PP4WordEEvT_S3_.exit.i.i.i.i.i:  ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.c
  invoke void @__cxa_rethrow() #24
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN2PP4WordEEvT_S3_.exit.i.i.i.i.i
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %_ZSt8_DestroyIPN2PP4WordES1_EvT_S3_RSaIT0_E.exit.thread unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  tail call void @__clang_call_terminate(ptr %i.x) #23
  unreachable

bb.f:                                             ; preds = %_ZSt8_DestroyIPN2PP4WordEEvT_S3_.exit.i.i.i.i.i
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPN2PP4WordES2_SaIS1_EET0_T_S5_S4_RT1_.exit: ; preds = %_ZSt10_ConstructIN2PP4WordEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i, %_ZNSt16allocator_traitsISaIN2PP4WordEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.n, %_ZNSt16allocator_traitsISaIN2PP4WordEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit ], [ %i.q, %_ZSt10_ConstructIN2PP4WordEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ] ; 4 uses
  %.ptr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 128 ; 3 uses
  %.not14.i.i.i.i.i28 = icmp eq ptr %1, %i.b
  br i1 %.not14.i.i.i.i.i28, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2PP4WordES2_SaIS1_EET0_T_S5_S4_RT1_.exit43, label %.lr.ph.i.i.i.i.i29

.lr.ph.i.i.i.i.i29:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2PP4WordES2_SaIS1_EET0_T_S5_S4_RT1_.exit, %_ZSt10_ConstructIN2PP4WordEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i37
  %.016.i.i.i.i.i30.idx = phi i64 [ %.016.i.i.i.i.i30.add, %_ZSt10_ConstructIN2PP4WordEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i37 ], [ 128, %_ZSt34__uninitialized_move_if_noexcept_aIPN2PP4WordES2_SaIS1_EET0_T_S5_S4_RT1_.exit ] ; 3 uses
  %.01215.i.i.i.i.i31 = phi ptr [ %i.y, %_ZSt10_ConstructIN2PP4WordEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i37 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPN2PP4WordES2_SaIS1_EET0_T_S5_S4_RT1_.exit ] ; 2 uses
  %.016.i.i.i.i.i30.ptr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 %.016.i.i.i.i.i30.idx ; 2 uses
  invoke void @_ZN2PP4WordC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(128) %.016.i.i.i.i.i30.ptr, ptr noundef nonnull align 8 dereferenceable(128) %.01215.i.i.i.i.i31)
          to label %_ZSt10_ConstructIN2PP4WordEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i37 unwind label %bb.g

_ZSt10_ConstructIN2PP4WordEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i37: ; preds = %.lr.ph.i.i.i.i.i29
  %i.y = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i31, i64 128 ; 2 uses
  %.016.i.i.i.i.i30.add = add nuw nsw i64 %.016.i.i.i.i.i30.idx, 128 ; 2 uses
  %.not.i.i.i.i.i38 = icmp eq ptr %i.y, %i.b
  br i1 %.not.i.i.i.i.i38, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2PP4WordES2_SaIS1_EET0_T_S5_S4_RT1_.exit43.loopexit, label %.lr.ph.i.i.i.i.i29, !llvm.loop !2313

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i29
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  %i.ab = tail call ptr @__cxa_begin_catch(ptr %i.aa) #22 ; 0 uses
  %.not4.i.i.i.i.i.i.i32 = icmp eq i64 %.016.i.i.i.i.i30.idx, 128
  br i1 %.not4.i.i.i.i.i.i.i32, label %_ZSt8_DestroyIPN2PP4WordEEvT_S3_.exit.i.i.i.i.i36, label %.lr.ph.i.i.i.i.i.i.i33

.lr.ph.i.i.i.i.i.i.i33:                           ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i.i33
  %.05.i.i.i.i.i.i.i34 = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i.i.i33 ], [ %.ptr, %bb.g ] ; 2 uses
  tail call void @_ZN2PP4WordD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %.05.i.i.i.i.i.i.i34) #22
  %i.ac = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i34, i64 128 ; 2 uses
  %.not.i.i.i.i.i.i.i35 = icmp eq ptr %i.ac, %.016.i.i.i.i.i30.ptr
  br i1 %.not.i.i.i.i.i.i.i35, label %_ZSt8_DestroyIPN2PP4WordEEvT_S3_.exit.i.i.i.i.i36, label %.lr.ph.i.i.i.i.i.i.i33, !llvm.loop !913

_ZSt8_DestroyIPN2PP4WordEEvT_S3_.exit.i.i.i.i.i36: ; preds = %.lr.ph.i.i.i.i.i.i.i33, %bb.g
  invoke void @__cxa_rethrow() #24
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN2PP4WordEEvT_S3_.exit.i.i.i.i.i36
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %bb.l unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  tail call void @__clang_call_terminate(ptr %i.af) #23
  unreachable

bb.j:                                             ; preds = %_ZSt8_DestroyIPN2PP4WordEEvT_S3_.exit.i.i.i.i.i36
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPN2PP4WordES2_SaIS1_EET0_T_S5_S4_RT1_.exit43.loopexit: ; preds = %_ZSt10_ConstructIN2PP4WordEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i37
  %.ptr60.le = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 %.016.i.i.i.i.i30.add
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPN2PP4WordES2_SaIS1_EET0_T_S5_S4_RT1_.exit43

_ZSt34__uninitialized_move_if_noexcept_aIPN2PP4WordES2_SaIS1_EET0_T_S5_S4_RT1_.exit43: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2PP4WordES2_SaIS1_EET0_T_S5_S4_RT1_.exit43.loopexit, %_ZSt34__uninitialized_move_if_noexcept_aIPN2PP4WordES2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %.0.lcssa.i.i.i.i.i39 = phi ptr [ %.ptr, %_ZSt34__uninitialized_move_if_noexcept_aIPN2PP4WordES2_SaIS1_EET0_T_S5_S4_RT1_.exit ], [ %.ptr60.le, %_ZSt34__uninitialized_move_if_noexcept_aIPN2PP4WordES2_SaIS1_EET0_T_S5_S4_RT1_.exit43.loopexit ]
  %.not4.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN2PP4WordEEvT_S3_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2PP4WordES2_SaIS1_EET0_T_S5_S4_RT1_.exit43, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.ag, %.lr.ph.i.i ], [ %i.c, %_ZSt34__uninitialized_move_if_noexcept_aIPN2PP4WordES2_SaIS1_EET0_T_S5_S4_RT1_.exit43 ] ; 2 uses
  tail call void @_ZN2PP4WordD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %.05.i.i) #22
  %i.ag = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 128 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ag, %i.b
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN2PP4WordEEvT_S3_.exit, label %.lr.ph.i.i, !llvm.loop !913

_ZSt8_DestroyIPN2PP4WordEEvT_S3_.exit:            ; preds = %.lr.ph.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN2PP4WordES2_SaIS1_EET0_T_S5_S4_RT1_.exit43
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i44 = icmp eq ptr %i.c, null
  br i1 %.not.i44, label %_ZNSt12_Vector_baseIN2PP4WordESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPN2PP4WordEEvT_S3_.exit
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !911
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = sub i64 %i.aj, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ak) #21
  br label %_ZNSt12_Vector_baseIN2PP4WordESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN2PP4WordESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZSt8_DestroyIPN2PP4WordEEvT_S3_.exit, %bb.k
  store ptr %i.n, ptr %0, align 8, !tbaa !888
  store ptr %.0.lcssa.i.i.i.i.i39, ptr %i.a, align 8, !tbaa !886
  %i.al = getelementptr inbounds nuw [128 x i8], ptr %i.n, i64 %i.j
  store ptr %i.al, ptr %i.ah, align 8, !tbaa !911
  ret void

.thread:                                          ; preds = %_ZNKSt6vectorIN2PP4WordESaIS1_EE12_M_check_lenEmPKc.exit
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  %i.ao = tail call ptr @__cxa_begin_catch(ptr %i.an) #22 ; 0 uses
  br label %_ZNSt12_Vector_baseIN2PP4WordESaIS1_EE13_M_deallocateEPS1_m.exit51

_ZSt8_DestroyIPN2PP4WordES1_EvT_S3_RSaIT0_E.exit.thread: ; preds = %bb.d
  %i.ap = extractvalue { ptr, i32 } %i.v, 0
  %i.aq = tail call ptr @__cxa_begin_catch(ptr %i.ap) #22 ; 0 uses
  tail call void @_ZN2PP4WordD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %i.o) #22
  br label %_ZNSt12_Vector_baseIN2PP4WordESaIS1_EE13_M_deallocateEPS1_m.exit51

bb.l:                                             ; preds = %bb.h
  %i.ar = extractvalue { ptr, i32 } %i.ad, 0
  %i.as = tail call ptr @__cxa_begin_catch(ptr %i.ar) #22 ; 0 uses
  %.not4.i.i45 = icmp eq ptr %i.n, %.ptr
  br i1 %.not4.i.i45, label %_ZNSt12_Vector_baseIN2PP4WordESaIS1_EE13_M_deallocateEPS1_m.exit51, label %.lr.ph.i.i46

.lr.ph.i.i46:                                     ; preds = %bb.l, %.lr.ph.i.i46
  %.05.i.i47 = phi ptr [ %i.at, %.lr.ph.i.i46 ], [ %i.n, %bb.l ] ; 3 uses
  tail call void @_ZN2PP4WordD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %.05.i.i47) #22
  %i.at = getelementptr inbounds nuw i8, ptr %.05.i.i47, i64 128
  %.not.i.i48 = icmp eq ptr %.05.i.i47, %.0.lcssa.i.i.i.i.i
  br i1 %.not.i.i48, label %_ZNSt12_Vector_baseIN2PP4WordESaIS1_EE13_M_deallocateEPS1_m.exit51, label %.lr.ph.i.i46, !llvm.loop !913

bb.m:                                             ; preds = %_ZNSt12_Vector_baseIN2PP4WordESaIS1_EE13_M_deallocateEPS1_m.exit51
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.n unwind label %bb.o

_ZNSt12_Vector_baseIN2PP4WordESaIS1_EE13_M_deallocateEPS1_m.exit51: ; preds = %.lr.ph.i.i46, %_ZSt8_DestroyIPN2PP4WordES1_EvT_S3_RSaIT0_E.exit.thread, %.thread, %bb.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.m) #21
  invoke void @__cxa_rethrow() #24
          to label %bb.p unwind label %bb.m

bb.n:                                             ; preds = %bb.m
  resume { ptr, i32 } %i.au

bb.o:                                             ; preds = %bb.m
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  %i.aw = extractvalue { ptr, i32 } %i.av, 0
  tail call void @__clang_call_terminate(ptr %i.aw) #23
  unreachable

bb.p:                                             ; preds = %_ZNSt12_Vector_baseIN2PP4WordESaIS1_EE13_M_deallocateEPS1_m.exit51
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIbSaIbEE8_M_eraseESt15_Deque_iteratorIbRbPbE(ptr dead_on_unwind noalias writable sret(%"struct.std::_Deque_iterator.50") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef dead_on_return %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::_Deque_iterator.50", align 8 ; 7 uses
  %4 = alloca %"struct.std::_Deque_iterator.50", align 8 ; 7 uses
  %5 = alloca %"struct.std::_Deque_iterator.50", align 8 ; 7 uses
  %6 = alloca %"struct.std::_Deque_iterator.50", align 8 ; 3 uses
  %7 = alloca %"struct.std::_Deque_iterator.50", align 8 ; 7 uses
  %8 = alloca %"struct.std::_Deque_iterator.50", align 8 ; 7 uses
  %9 = alloca %"struct.std::_Deque_iterator.50", align 8 ; 7 uses
  %10 = alloca %"struct.std::_Deque_iterator.50", align 8 ; 3 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !1221   ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1222 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1223 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1217 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.e
  br i1 %i.i, label %bb.b, label %_ZNSt15_Deque_iteratorIbRbPbEppEv.exit

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1236 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 512
  br label %_ZNSt15_Deque_iteratorIbRbPbEppEv.exit

_ZNSt15_Deque_iteratorIbRbPbEppEv.exit:           ; preds = %bb.a, %bb.b
  %.sroa.044.0 = phi ptr [ %i.k, %bb.b ], [ %i.h, %bb.a ] ; 3 uses
  %.sroa.9.0 = phi ptr [ %i.k, %bb.b ], [ %i.c, %bb.a ] ; 2 uses
  %.sroa.13.0 = phi ptr [ %i.l, %bb.b ], [ %i.e, %bb.a ] ; 2 uses
  %.sroa.18.0 = phi ptr [ %i.j, %bb.b ], [ %i.g, %bb.a ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1221, !noalias !2314 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1223, !noalias !2314 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1217, !noalias !2314 ; 2 uses
  %i.t = ptrtoint ptr %i.g to i64
  %i.u = ptrtoint ptr %i.s to i64                 ; 2 uses
  %i.v = sub i64 %i.t, %i.u
  %i.w = ashr exact i64 %i.v, 3
  %i.x = icmp ne ptr %i.g, null
  %.neg.i = sext i1 %i.x to i64
  %i.y = add nsw i64 %i.w, %.neg.i
  %i.z = shl nsw i64 %i.y, 9
  %i.aa = ptrtoint ptr %i.a to i64
  %i.ab = ptrtoint ptr %i.c to i64
  %i.ac = ptrtoint ptr %i.q to i64                ; 2 uses
  %i.ad = ptrtoint ptr %i.n to i64                ; 2 uses
  %i.ae = add i64 %i.ab, %i.ad
  %i.af = sub i64 %i.aa, %i.ae
  %i.ag = add i64 %i.af, %i.ac
  %i.ah = add i64 %i.ag, %i.z                     ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !1217 ; 3 uses
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = sub i64 %i.al, %i.u
  %i.an = ashr exact i64 %i.am, 3
  %i.ao = icmp ne ptr %i.ak, null
  %.neg.i.i = sext i1 %i.ao to i64
  %i.ap = add nsw i64 %i.an, %.neg.i.i
  %i.aq = shl nsw i64 %i.ap, 9
  %i.ar = load ptr, ptr %i.ai, align 8, !tbaa !1221 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !1222 ; 3 uses
  %i.au = ptrtoint ptr %i.ar to i64
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = add i64 %i.ac, %i.au
  %i.ax = add i64 %i.ad, %i.av
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = add i64 %i.ay, %i.aq
  %i.ba = lshr i64 %i.az, 1
  %i.bb = icmp ult i64 %i.ah, %i.ba
  br i1 %i.bb, label %bb.c, label %bb.h

bb.c:                                             ; preds = %_ZNSt15_Deque_iteratorIbRbPbEppEv.exit
  %.not53 = icmp eq ptr %i.a, %i.n
  br i1 %.not53, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bc = load ptr, ptr %i.o, align 8, !tbaa !1222, !noalias !2317
  call void @llvm.lifetime.start.p0(ptr nonnull %10), !noalias !2320
  call void @llvm.lifetime.start.p0(ptr nonnull %7), !noalias !2323
  call void @llvm.lifetime.start.p0(ptr nonnull %8), !noalias !2323
  call void @llvm.lifetime.start.p0(ptr nonnull %9), !noalias !2323
  store ptr %i.n, ptr %7, align 8, !tbaa !1221, !noalias !2326
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !1222, !noalias !2326
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.q, ptr %i.be, align 8, !tbaa !1223, !noalias !2326
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %i.s, ptr %i.bf, align 8, !tbaa !1217, !noalias !2326
  store ptr %i.a, ptr %8, align 8, !tbaa !1221, !noalias !2326
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.c, ptr %i.bg, align 8, !tbaa !1222, !noalias !2326
  %i.bh = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.e, ptr %i.bh, align 8, !tbaa !1223, !noalias !2326
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %i.g, ptr %i.bi, align 8, !tbaa !1217, !noalias !2326
  store ptr %.sroa.044.0, ptr %9, align 8, !tbaa !1221, !noalias !2326
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %.sroa.9.0, ptr %i.bj, align 8, !tbaa !1222, !noalias !2326
  %i.bk = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %.sroa.13.0, ptr %i.bk, align 8, !tbaa !1223, !noalias !2326
  %i.bl = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %.sroa.18.0, ptr %i.bl, align 8, !tbaa !1217, !noalias !2326
  call void @_ZSt24__copy_move_backward_ditILb1EbRbPbSt15_Deque_iteratorIbS0_S1_EET3_S2_IT0_T1_T2_ES8_S4_(ptr dead_on_unwind nonnull writable sret(%"struct.std::_Deque_iterator.50") align 8 %10, ptr noundef nonnull dead_on_return %7, ptr noundef nonnull dead_on_return %8, ptr noundef nonnull dead_on_return %9), !noalias !2323
  call void @llvm.lifetime.end.p0(ptr nonnull %7), !noalias !2323
  call void @llvm.lifetime.end.p0(ptr nonnull %8), !noalias !2323
  call void @llvm.lifetime.end.p0(ptr nonnull %9), !noalias !2323
  call void @llvm.lifetime.end.p0(ptr nonnull %10), !noalias !2320
  %.pre57 = load ptr, ptr %i.m, align 8, !tbaa !2329
  %.pre58 = load ptr, ptr %i.p, align 8, !tbaa !2331
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.bm = phi ptr [ %.pre58, %bb.d ], [ %i.q, %bb.c ] ; 2 uses
  %i.bn = phi ptr [ %.pre57, %bb.d ], [ %i.n, %bb.c ] ; 2 uses
  %i.bo = getelementptr inbounds i8, ptr %i.bm, i64 -1
  %.not.i = icmp eq ptr %i.bn, %i.bo
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 1
  br label %_ZNSt5dequeIbSaIbEE9pop_frontEv.exit

bb.g:                                             ; preds = %bb.e
  %i.bq = load ptr, ptr %i.o, align 8, !tbaa !2332
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef 512) #21
  %i.br = load ptr, ptr %i.r, align 8, !tbaa !2333
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 2 uses
  store ptr %i.bs, ptr %i.r, align 8, !tbaa !1217
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !1236 ; 3 uses
  store ptr %i.bt, ptr %i.o, align 8, !tbaa !1222
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 512 ; 2 uses
  store ptr %i.bu, ptr %i.p, align 8, !tbaa !1223
  br label %_ZNSt5dequeIbSaIbEE9pop_frontEv.exit

_ZNSt5dequeIbSaIbEE9pop_frontEv.exit:             ; preds = %bb.f, %bb.g
  %i.bv = phi ptr [ %i.bm, %bb.f ], [ %i.bu, %bb.g ]
  %storemerge.i = phi ptr [ %i.bp, %bb.f ], [ %i.bt, %bb.g ] ; 2 uses
  store ptr %storemerge.i, ptr %i.m, align 8, !tbaa !2329
end_hunk_3
