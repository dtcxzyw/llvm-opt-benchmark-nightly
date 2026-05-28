inline.NumInlined: 36272
inline.NumDeleted: 7699
begin_hunk_0_@_ZN8facebook5velox12_GLOBAL__N_117castToJsonFromRowERKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERNS0_10FlatVectorINS0_10StringViewEEERKSt10shared_ptrINS5_9CastHooksEE:bb.a
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRS5_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESA_ISB_ISt10in_place_tSI_EESt16is_constructibleIS5_JSE_EESt14is_convertibleISE_S5_EEEbE4typeELb1EEEOSE_.exit

_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRS5_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESA_ISB_ISt10in_place_tSI_EESt16is_constructibleIS5_JSE_EESt14is_convertibleISE_S5_EEEbE4typeELb1EEEOSE_.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i, %bb.t, %bb.u
  store i64 %i.ci, ptr %i.ae, align 8, !tbaa !119
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.ci
  store i8 0, ptr %i.cq, align 1, !tbaa !37
  br label %bb.v

bb.v:                                             ; preds = %bb.p, %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRS5_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESA_ISB_ISt10in_place_tSI_EESt16is_constructibleIS5_JSE_EESt14is_convertibleISE_S5_EEEbE4typeELb1EEEOSE_.exit
  %storemerge = phi i8 [ 1, %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRS5_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESA_ISB_ISt10in_place_tSI_EESt16is_constructibleIS5_JSE_EESt14is_convertibleISE_S5_EEEbE4typeELb1EEEOSE_.exit ], [ 0, %bb.p ]
  store i8 %storemerge, ptr %i.ac, align 8, !tbaa !224
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #38
  %i.cr = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK8facebook5velox9RowVector7childAtEj(ptr noundef nonnull align 8 dereferenceable(152) %i.ay, i32 noundef %storemerge494)
          to label %bb.w unwind label %bb.fn

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #38
  store ptr null, ptr %33, align 8, !tbaa !702
  store i8 0, ptr %i.af, align 8, !tbaa !224
  %i.cs = load i8, ptr %i.ac, align 8, !tbaa !224, !range !110, !noundef !111
  %i.ct = trunc nuw i8 %i.cs to i1
  br i1 %i.ct, label %bb.x, label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS6_.exit

bb.x:                                             ; preds = %bb.w
  store ptr %i.ag, ptr %34, align 8, !tbaa !118
  %i.cu = load ptr, ptr %31, align 8, !tbaa !102  ; 2 uses
  %i.cv = icmp eq ptr %i.cu, %i.ad
  br i1 %i.cv, label %bb.y, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

bb.y:                                             ; preds = %bb.x
  %i.cw = load i64, ptr %i.ae, align 8, !tbaa !119 ; 3 uses
  %i.cx = icmp ult i64 %i.cw, 16
  call void @llvm.assume(i1 %i.cx)
  %i.cy = add nuw nsw i64 %i.cw, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ag, ptr noundef nonnull align 8 dereferenceable(1) %i.ad, i64 %i.cy, i1 false)
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.x
  store ptr %i.cu, ptr %34, align 8, !tbaa !102
  %i.cz = load i64, ptr %i.ad, align 8, !tbaa !37
  store i64 %i.cz, ptr %i.ag, align 8, !tbaa !37
  %.pre = load i64, ptr %i.ae, align 8, !tbaa !119
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit.i.i.i.i.i

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i, %bb.y
  %i.da = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i ], [ %i.cw, %bb.y ]
  store i64 %i.da, ptr %i.ah, align 8, !tbaa !119
  store ptr %i.ad, ptr %31, align 8, !tbaa !102
  store i64 0, ptr %i.ae, align 8, !tbaa !119
  store i8 0, ptr %i.ad, align 8, !tbaa !37
  store i8 1, ptr %i.af, align 8, !tbaa !224
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS6_.exit

_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS6_.exit: ; preds = %bb.w, %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit.i.i.i.i.i
  invoke fastcc void @_ZN8facebook5velox12_GLOBAL__N_16AsJsonC2ERNS0_4exec7EvalCtxERKSt10shared_ptrINS0_10BaseVectorEERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEERKS6_INS3_9CastHooksEEbSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE(ptr noundef nonnull align 8 dereferenceable(80) %32, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.cr, ptr noundef nonnull align 8 dereferenceable(38) %2, ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull align 8 dereferenceable(16) %4, i1 noundef zeroext false, ptr noundef %34)
          to label %bb.z unwind label %bb.fo

bb.z:                                             ; preds = %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS6_.exit
  %i.db = load ptr, ptr %i.ai, align 8, !tbaa !2481 ; 16 uses
  %i.dc = load ptr, ptr %i.aj, align 8, !tbaa !2484
  %.not.i45 = icmp eq ptr %i.db, %i.dc
  br i1 %.not.i45, label %bb.ah, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 16 ; 3 uses
  store ptr %i.dd, ptr %i.db, align 8, !tbaa !118
  %i.de = load ptr, ptr %30, align 8, !tbaa !102  ; 2 uses
  %i.df = load i64, ptr %i.ab, align 8, !tbaa !119 ; 8 uses
  %i.dg = icmp ugt i64 %i.df, 15
  br i1 %i.dg, label %bb.ab, label %._crit_edge.i.i.i.i178

bb.ab:                                            ; preds = %bb.aa
  %i.dh = icmp slt i64 %i.df, 0
  br i1 %i.dh, label %.invoke, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.di = add nuw i64 %i.df, 1                    ; 2 uses
  %i.dj = icmp slt i64 %i.di, 0
  br i1 %i.dj, label %.noexc6.i.i.i183, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i182, !prof !38

.noexc6.i.i.i183:                                 ; preds = %bb.ac
  invoke void @_ZSt17__throw_bad_allocv() #46
          to label %.noexc186 unwind label %.loopexit.split-lp292

.noexc186:                                        ; preds = %.noexc6.i.i.i183
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i182: ; preds = %bb.ac
  %i.dk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.di) #49
          to label %.noexc187 unwind label %.loopexit291 ; 2 uses

.noexc187:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i182
  store ptr %i.dk, ptr %i.db, align 8, !tbaa !102
  store i64 %i.df, ptr %i.dd, align 8, !tbaa !37
  br label %._crit_edge.i.i.i.i178

._crit_edge.i.i.i.i178:                           ; preds = %.noexc187, %bb.aa
  %i.dl = phi ptr [ %i.dk, %.noexc187 ], [ %i.dd, %bb.aa ] ; 3 uses
  switch i64 %i.df, label %bb.ae [
    i64 1, label %bb.ad
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i179
  ]

bb.ad:                                            ; preds = %._crit_edge.i.i.i.i178
  %i.dm = load i8, ptr %i.de, align 1, !tbaa !37
  store i8 %i.dm, ptr %i.dl, align 1, !tbaa !37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i179

bb.ae:                                            ; preds = %._crit_edge.i.i.i.i178
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dl, ptr align 1 %i.de, i64 %i.df, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i179

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i179: ; preds = %bb.ae, %bb.ad, %._crit_edge.i.i.i.i178
  %i.dn = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store i64 %i.df, ptr %i.dn, align 8, !tbaa !119
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.df
  store i8 0, ptr %i.do, align 1, !tbaa !37
  %i.dp = getelementptr inbounds nuw i8, ptr %i.db, i64 32
  %i.dq = load ptr, ptr %32, align 8, !tbaa !1928
  store ptr %i.dq, ptr %i.dp, align 8, !tbaa !1928
  %i.dr = getelementptr inbounds nuw i8, ptr %i.db, i64 40
  %i.ds = load i64, ptr %i.ak, align 8, !tbaa !641
  store i64 %i.ds, ptr %i.dr, align 8, !tbaa !641
  store ptr null, ptr %i.ak, align 8, !tbaa !641
  %i.dt = getelementptr inbounds nuw i8, ptr %i.db, i64 48
  %i.du = load <2 x ptr>, ptr %i.al, align 8, !tbaa !227
  store ptr null, ptr %i.am, align 8, !tbaa !29
  store <2 x ptr> %i.du, ptr %i.dt, align 8, !tbaa !227
  store ptr null, ptr %i.al, align 8, !tbaa !80
  %i.dv = getelementptr inbounds nuw i8, ptr %i.db, i64 64
  %i.dw = load ptr, ptr %i.an, align 8, !tbaa !656
  store ptr %i.dw, ptr %i.dv, align 8, !tbaa !656
  %i.dx = getelementptr inbounds nuw i8, ptr %i.db, i64 72 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.db, i64 104 ; 2 uses
  store i8 0, ptr %i.dy, align 8, !tbaa !224
  %i.dz = load i8, ptr %i.ap, align 8, !tbaa !224, !range !110, !noundef !111 ; 2 uses
  %i.ea = trunc nuw i8 %i.dz to i1
  br i1 %i.ea, label %bb.af, label %.noexc46

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i179
  %i.eb = getelementptr inbounds nuw i8, ptr %i.db, i64 88 ; 3 uses
  store ptr %i.eb, ptr %i.dx, align 8, !tbaa !118
  %i.ec = load ptr, ptr %i.ao, align 8, !tbaa !102 ; 2 uses
  %i.ed = icmp eq ptr %i.ec, %i.aq
  br i1 %i.ed, label %bb.ag, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i180

bb.ag:                                            ; preds = %bb.af
  %i.ee = load i64, ptr %i.ar, align 8, !tbaa !119 ; 3 uses
  %i.ef = icmp ult i64 %i.ee, 16
  call void @llvm.assume(i1 %i.ef)
  %i.eg = add nuw nsw i64 %i.ee, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.eb, ptr noundef nonnull align 8 dereferenceable(1) %i.aq, i64 %i.eg, i1 false)
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit.i.i.i.i.i.i.i.i181

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i180: ; preds = %bb.af
  store ptr %i.ec, ptr %i.dx, align 8, !tbaa !102
  %i.eh = load i64, ptr %i.aq, align 8, !tbaa !37
  store i64 %i.eh, ptr %i.eb, align 8, !tbaa !37
  %.pre611 = load i64, ptr %i.ar, align 8, !tbaa !119
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit.i.i.i.i.i.i.i.i181

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit.i.i.i.i.i.i.i.i181: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i180, %bb.ag
  %i.ei = phi i64 [ %.pre611, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i180 ], [ %i.ee, %bb.ag ]
  %i.ej = getelementptr inbounds nuw i8, ptr %i.db, i64 80
  store i64 %i.ei, ptr %i.ej, align 8, !tbaa !119
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !102
  store i64 0, ptr %i.ar, align 8, !tbaa !119
  store i8 0, ptr %i.aq, align 8, !tbaa !37
  store i8 1, ptr %i.dy, align 8, !tbaa !224
  br label %.noexc46

.noexc46:                                         ; preds = %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit.i.i.i.i.i.i.i.i181, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i179
  %i.ek = load ptr, ptr %i.ai, align 8, !tbaa !2481
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 112
  store ptr %i.el, ptr %i.ai, align 8, !tbaa !2481
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox12_GLOBAL__N_16AsJsonEESaISB_EE12emplace_backIJRS6_SA_EEERSB_DpOT_.exit

bb.ah:                                            ; preds = %bb.z
  %.val.i.i = load ptr, ptr %29, align 8, !tbaa !2485 ; 5 uses
  %i.em = ptrtoint ptr %i.db to i64
  %i.en = ptrtoint ptr %.val.i.i to i64           ; 2 uses
  %i.eo = sub i64 %i.em, %i.en                    ; 3 uses
  %i.ep = icmp eq i64 %i.eo, 9223372036854775744
  br i1 %i.ep, label %.invoke, label %_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox12_GLOBAL__N_16AsJsonEESaISB_EE12_M_check_lenEmPKc.exit.i.i

.invoke:                                          ; preds = %bb.ah, %bb.ab
  %i.eq = phi ptr [ @.str.7, %bb.ab ], [ @.str.94, %bb.ah ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull %i.eq) #46
          to label %.cont unwind label %.loopexit.split-lp292

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox12_GLOBAL__N_16AsJsonEESaISB_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ah
  %i.er = sdiv exact i64 %i.eo, 112               ; 3 uses
  %i.es = icmp eq ptr %i.db, %.val.i.i            ; 2 uses
  %.sroa.speculated.i.i.i = select i1 %i.es, i64 1, i64 %i.er
  %i.et = add nsw i64 %.sroa.speculated.i.i.i, %i.er ; 2 uses
  %i.eu = icmp ult i64 %i.et, %i.er
  %i.ev = call i64 @llvm.umin.i64(i64 %i.et, i64 82351536043346212)
  %i.ew = select i1 %i.eu, i64 82351536043346212, i64 %i.ev ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ew, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %35 = mul nuw nsw i64 %i.ew, 112                ; 2 uses
  %36 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %35) #49
          to label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox12_GLOBAL__N_16AsJsonEESaISB_EE11_M_allocateEm.exit.i.i unwind label %.loopexit291 ; 6 uses

_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox12_GLOBAL__N_16AsJsonEESaISB_EE11_M_allocateEm.exit.i.i: ; preds = %_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox12_GLOBAL__N_16AsJsonEESaISB_EE12_M_check_lenEmPKc.exit.i.i
  %i.ex = getelementptr inbounds nuw i8, ptr %36, i64 %i.eo ; 12 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 16 ; 3 uses
  store ptr %i.ey, ptr %i.ex, align 8, !tbaa !118
  %i.ez = load ptr, ptr %30, align 8, !tbaa !102  ; 2 uses
  %i.fa = load i64, ptr %i.ab, align 8, !tbaa !119 ; 8 uses
  %i.fb = icmp ugt i64 %i.fa, 15
  br i1 %i.fb, label %bb.ai, label %._crit_edge.i.i.i.i

bb.ai:                                            ; preds = %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox12_GLOBAL__N_16AsJsonEESaISB_EE11_M_allocateEm.exit.i.i
  %i.fc = icmp slt i64 %i.fa, 0
  br i1 %i.fc, label %.noexc.i.i.i174, label %bb.aj

.noexc.i.i.i174:                                  ; preds = %bb.ai
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #46
          to label %.noexc175 unwind label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox12_GLOBAL__N_16AsJsonEESaISB_EE13_M_deallocateEPSB_m.exit33.i.i.loopexit.split-lp

.noexc175:                                        ; preds = %.noexc.i.i.i174
  unreachable

bb.aj:                                            ; preds = %bb.ai
  %i.fd = add nuw i64 %i.fa, 1                    ; 2 uses
  %i.fe = icmp slt i64 %i.fd, 0
  br i1 %i.fe, label %.noexc6.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !38

.noexc6.i.i.i:                                    ; preds = %bb.aj
  invoke void @_ZSt17__throw_bad_allocv() #46
          to label %.noexc176 unwind label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox12_GLOBAL__N_16AsJsonEESaISB_EE13_M_deallocateEPSB_m.exit33.i.i.loopexit.split-lp

.noexc176:                                        ; preds = %.noexc6.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.aj
  %i.ff = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fd) #49
          to label %.noexc177 unwind label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox12_GLOBAL__N_16AsJsonEESaISB_EE13_M_deallocateEPSB_m.exit33.i.i.loopexit ; 2 uses

.noexc177:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i
  store ptr %i.ff, ptr %i.ex, align 8, !tbaa !102
  store i64 %i.fa, ptr %i.ey, align 8, !tbaa !37
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc177, %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox12_GLOBAL__N_16AsJsonEESaISB_EE11_M_allocateEm.exit.i.i
  %i.fg = phi ptr [ %i.ff, %.noexc177 ], [ %i.ey, %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox12_GLOBAL__N_16AsJsonEESaISB_EE11_M_allocateEm.exit.i.i ] ; 3 uses
  switch i64 %i.fa, label %bb.al [
    i64 1, label %bb.ak
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  ]

bb.ak:                                            ; preds = %._crit_edge.i.i.i.i
  %i.fh = load i8, ptr %i.ez, align 1, !tbaa !37
  store i8 %i.fh, ptr %i.fg, align 1, !tbaa !37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i

bb.al:                                            ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fg, ptr align 1 %i.ez, i64 %i.fa, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i: ; preds = %bb.al, %bb.ak, %._crit_edge.i.i.i.i
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  store i64 %i.fa, ptr %i.fi, align 8, !tbaa !119
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.fa
  store i8 0, ptr %i.fj, align 1, !tbaa !37
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ex, i64 32
  %i.fl = load ptr, ptr %32, align 8, !tbaa !1928
  store ptr %i.fl, ptr %i.fk, align 8, !tbaa !1928
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ex, i64 40
  %i.fn = load i64, ptr %i.ak, align 8, !tbaa !641
  store i64 %i.fn, ptr %i.fm, align 8, !tbaa !641
  store ptr null, ptr %i.ak, align 8, !tbaa !641
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ex, i64 48
  %i.fp = load <2 x ptr>, ptr %i.al, align 8, !tbaa !227
  store ptr null, ptr %i.am, align 8, !tbaa !29
  store <2 x ptr> %i.fp, ptr %i.fo, align 8, !tbaa !227
  store ptr null, ptr %i.al, align 8, !tbaa !80
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ex, i64 64
  %i.fr = load ptr, ptr %i.an, align 8, !tbaa !656
  store ptr %i.fr, ptr %i.fq, align 8, !tbaa !656
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ex, i64 72 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ex, i64 104 ; 2 uses
  store i8 0, ptr %i.ft, align 8, !tbaa !224
  %i.fu = load i8, ptr %i.ap, align 8, !tbaa !224, !range !110, !noundef !111
  %i.fv = trunc nuw i8 %i.fu to i1
  br i1 %i.fv, label %bb.am, label %_ZNSt16allocator_traitsISaISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox12_GLOBAL__N_16AsJsonEEEE9constructISB_JRS6_SA_EEEvRSC_PT_DpOT0_.exit.i.i

bb.am:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ex, i64 88 ; 3 uses
  store ptr %i.fw, ptr %i.fs, align 8, !tbaa !118
  %i.fx = load ptr, ptr %i.ao, align 8, !tbaa !102 ; 2 uses
  %i.fy = icmp eq ptr %i.fx, %i.aq
  br i1 %i.fy, label %bb.an, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i173

bb.an:                                            ; preds = %bb.am
  %i.fz = load i64, ptr %i.ar, align 8, !tbaa !119 ; 3 uses
  %i.ga = icmp ult i64 %i.fz, 16
  call void @llvm.assume(i1 %i.ga)
  %i.gb = add nuw nsw i64 %i.fz, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fw, ptr noundef nonnull align 8 dereferenceable(1) %i.aq, i64 %i.gb, i1 false)
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i173: ; preds = %bb.am
  store ptr %i.fx, ptr %i.fs, align 8, !tbaa !102
  %i.gc = load i64, ptr %i.aq, align 8, !tbaa !37
  store i64 %i.gc, ptr %i.fw, align 8, !tbaa !37
  %.pre612 = load i64, ptr %i.ar, align 8, !tbaa !119
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit.i.i.i.i.i.i.i.i

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i173, %bb.an
  %i.gd = phi i64 [ %.pre612, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i173 ], [ %i.fz, %bb.an ]
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ex, i64 80
  store i64 %i.gd, ptr %i.ge, align 8, !tbaa !119
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !102
  store i64 0, ptr %i.ar, align 8, !tbaa !119
  store i8 0, ptr %i.aq, align 8, !tbaa !37
  store i8 1, ptr %i.ft, align 8, !tbaa !224
  br label %_ZNSt16allocator_traitsISaISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox12_GLOBAL__N_16AsJsonEEEE9constructISB_JRS6_SA_EEEvRSC_PT_DpOT0_.exit.i.i

_ZNSt16allocator_traitsISaISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox12_GLOBAL__N_16AsJsonEEEE9constructISB_JRS6_SA_EEEvRSC_PT_DpOT0_.exit.i.i: ; preds = %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit.i.i.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  br i1 %i.es, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox12_GLOBAL__N_16AsJsonEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit, label %.lr.ph.i.i.i169

.lr.ph.i.i.i169:                                  ; preds = %_ZNSt16allocator_traitsISaISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox12_GLOBAL__N_16AsJsonEEEE9constructISB_JRS6_SA_EEEvRSC_PT_DpOT0_.exit.i.i, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox12_GLOBAL__N_16AsJsonEESB_SaISB_EEvPT_PT0_RT1_.exit.i.i.i
  %.03.i.i.i = phi ptr [ %i.je, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox12_GLOBAL__N_16AsJsonEESB_SaISB_EEvPT_PT0_RT1_.exit.i.i.i ], [ %36, %_ZNSt16allocator_traitsISaISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox12_GLOBAL__N_16AsJsonEEEE9constructISB_JRS6_SA_EEEvRSC_PT_DpOT0_.exit.i.i ] ; 13 uses
  %.092.i.i.i = phi ptr [ %i.jd, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox12_GLOBAL__N_16AsJsonEESB_SaISB_EEvPT_PT0_RT1_.exit.i.i.i ], [ %.val.i.i, %_ZNSt16allocator_traitsISaISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox12_GLOBAL__N_16AsJsonEEEE9constructISB_JRS6_SA_EEEvRSC_PT_DpOT0_.exit.i.i ] ; 19 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2486)
  call void @llvm.experimental.noalias.scope.decl(metadata !2489)
  %i.gf = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 16 ; 3 uses
  store ptr %i.gf, ptr %.03.i.i.i, align 8, !tbaa !118, !alias.scope !2486, !noalias !2489
  %i.gg = load ptr, ptr %.092.i.i.i, align 8, !tbaa !102, !alias.scope !2489, !noalias !2486 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.092.i.i.i, i64 16 ; 7 uses
  %i.gi = icmp eq ptr %i.gg, %i.gh
  br i1 %i.gi, label %bb.ao, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i170

bb.ao:                                            ; preds = %.lr.ph.i.i.i169
  %i.gj = getelementptr inbounds nuw i8, ptr %.092.i.i.i, i64 8
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !119, !alias.scope !2489, !noalias !2486 ; 3 uses
  %i.gl = icmp ult i64 %i.gk, 16
  call void @llvm.assume(i1 %i.gl)
  %i.gm = add nuw nsw i64 %i.gk, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gf, ptr noundef nonnull align 8 dereferenceable(1) %i.gh, i64 %i.gm, i1 false), !alias.scope !2491
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i170: ; preds = %.lr.ph.i.i.i169
  store ptr %i.gg, ptr %.03.i.i.i, align 8, !tbaa !102, !alias.scope !2486, !noalias !2489
  %i.gn = load i64, ptr %i.gh, align 8, !tbaa !37, !alias.scope !2489, !noalias !2486
  store i64 %i.gn, ptr %i.gf, align 8, !tbaa !37, !alias.scope !2486, !noalias !2489
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.092.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !119, !alias.scope !2489, !noalias !2486
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i170, %bb.ao
  %i.go = phi i64 [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i170 ], [ %i.gk, %bb.ao ]
  %i.gp = getelementptr inbounds nuw i8, ptr %.092.i.i.i, i64 8
  %i.gq = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 8
  store i64 %i.go, ptr %i.gq, align 8, !tbaa !119, !alias.scope !2486, !noalias !2489
  store ptr %i.gh, ptr %.092.i.i.i, align 8, !tbaa !102, !alias.scope !2489, !noalias !2486
  store i64 0, ptr %i.gp, align 8, !tbaa !119, !alias.scope !2489, !noalias !2486
  store i8 0, ptr %i.gh, align 8, !tbaa !37, !alias.scope !2489, !noalias !2486
  %i.gr = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 32
  %i.gs = getelementptr inbounds nuw i8, ptr %.092.i.i.i, i64 32 ; 2 uses
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !1928, !alias.scope !2489, !noalias !2486
  store ptr %i.gt, ptr %i.gr, align 8, !tbaa !1928, !alias.scope !2486, !noalias !2489
  %i.gu = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 40
  %i.gv = getelementptr inbounds nuw i8, ptr %.092.i.i.i, i64 40 ; 5 uses
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !641, !alias.scope !2489, !noalias !2486
  store i64 %i.gw, ptr %i.gu, align 8, !tbaa !641, !alias.scope !2486, !noalias !2489
  store ptr null, ptr %i.gv, align 8, !tbaa !641, !alias.scope !2489, !noalias !2486
  %i.gx = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 48
  %i.gy = getelementptr inbounds nuw i8, ptr %.092.i.i.i, i64 48 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.092.i.i.i, i64 56
  %i.ha = load <2 x ptr>, ptr %i.gy, align 8, !tbaa !227, !alias.scope !2489, !noalias !2486
  store ptr null, ptr %i.gz, align 8, !tbaa !29, !alias.scope !2489, !noalias !2486
  store <2 x ptr> %i.ha, ptr %i.gx, align 8, !tbaa !227, !alias.scope !2486, !noalias !2489
  store ptr null, ptr %i.gy, align 8, !tbaa !80, !alias.scope !2489, !noalias !2486
  %i.hb = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 64
  %i.hc = getelementptr inbounds nuw i8, ptr %.092.i.i.i, i64 64
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !656, !alias.scope !2489, !noalias !2486
  store ptr %i.hd, ptr %i.hb, align 8, !tbaa !656, !alias.scope !2486, !noalias !2489
  %i.he = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 72 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %.092.i.i.i, i64 72 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.092.i.i.i, i64 104 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 104 ; 2 uses
  store i8 0, ptr %i.hh, align 8, !tbaa !224, !alias.scope !2486, !noalias !2489
  %i.hi = load i8, ptr %i.hg, align 8, !tbaa !224, !range !110, !alias.scope !2489, !noalias !2486, !noundef !111
  %i.hj = trunc nuw i8 %i.hi to i1
  br i1 %i.hj, label %bb.ap, label %_ZN8facebook5velox12_GLOBAL__N_16AsJsonD2Ev.exit.i.i.i.i.i.i

bb.ap:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i
  %i.hk = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 88 ; 3 uses
  store ptr %i.hk, ptr %i.he, align 8, !tbaa !118, !alias.scope !2486, !noalias !2489
  %i.hl = load ptr, ptr %i.hf, align 8, !tbaa !102, !alias.scope !2489, !noalias !2486 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.092.i.i.i, i64 88 ; 5 uses
  %i.hn = icmp eq ptr %i.hl, %i.hm
  br i1 %i.hn, label %bb.aq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.aq:                                            ; preds = %bb.ap
  %i.ho = getelementptr inbounds nuw i8, ptr %.092.i.i.i, i64 80
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !119, !alias.scope !2489, !noalias !2486 ; 3 uses
  %i.hq = icmp ult i64 %i.hp, 16
  call void @llvm.assume(i1 %i.hq)
  %i.hr = add nuw nsw i64 %i.hp, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.hk, ptr noundef nonnull align 8 dereferenceable(1) %i.hm, i64 %i.hr, i1 false), !alias.scope !2491
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ap
  store ptr %i.hl, ptr %i.he, align 8, !tbaa !102, !alias.scope !2486, !noalias !2489
  %i.hs = load i64, ptr %i.hm, align 8, !tbaa !37, !alias.scope !2489, !noalias !2486
  store i64 %i.hs, ptr %i.hk, align 8, !tbaa !37, !alias.scope !2486, !noalias !2489
  %.phi.trans.insert1.i.i.i.i = getelementptr inbounds nuw i8, ptr %.092.i.i.i, i64 80
  %.pre2.i.i.i.i = load i64, ptr %.phi.trans.insert1.i.i.i.i, align 8, !tbaa !119, !alias.scope !2489, !noalias !2486
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.aq
  %i.ht = phi i64 [ %i.hp, %bb.aq ], [ %.pre2.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.hu = getelementptr inbounds nuw i8, ptr %.092.i.i.i, i64 80
  %i.hv = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 80
  store i64 %i.ht, ptr %i.hv, align 8, !tbaa !119, !alias.scope !2486, !noalias !2489
  store ptr %i.hm, ptr %i.hf, align 8, !tbaa !102, !alias.scope !2489, !noalias !2486
  store i64 0, ptr %i.hu, align 8, !tbaa !119, !alias.scope !2489, !noalias !2486
  store i8 0, ptr %i.hm, align 8, !tbaa !37, !alias.scope !2489, !noalias !2486
  store i8 1, ptr %i.hh, align 8, !tbaa !224, !alias.scope !2486, !noalias !2489
  br label %_ZN8facebook5velox12_GLOBAL__N_16AsJsonD2Ev.exit.i.i.i.i.i.i

_ZN8facebook5velox12_GLOBAL__N_16AsJsonD2Ev.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i
  store i8 0, ptr %i.hg, align 8, !tbaa !224, !alias.scope !2489, !noalias !2486
  %i.hw = load ptr, ptr %i.gv, align 8            ; 4 uses
  %.not4.i = icmp eq ptr %i.hw, null
  %i.hx = ptrtoint ptr %i.hw to i64
  br i1 %.not4.i, label %_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZN8facebook5velox12_GLOBAL__N_16AsJsonD2Ev.exit.i.i.i.i.i.i
  %i.hy = load ptr, ptr %i.gs, align 8, !tbaa !1928 ; 5 uses
  %.not.i233 = icmp eq ptr %i.hy, null
  br i1 %.not.i233, label %_ZN8facebook5velox4core7ExecCtx20releaseDecodedVectorEOSt10unique_ptrINS0_13DecodedVectorESt14default_deleteIS4_EE.exit.thread2.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 16
  %i.ia = load i8, ptr %i.hz, align 8, !tbaa !1960, !range !110, !noundef !111
  %i.ib = trunc nuw i8 %i.ia to i1
  br i1 %i.ib, label %bb.at, label %_ZN8facebook5velox4core7ExecCtx20releaseDecodedVectorEOSt10unique_ptrINS0_13DecodedVectorESt14default_deleteIS4_EE.exit.thread2.i

bb.at:                                            ; preds = %bb.as
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hy, i64 40 ; 2 uses
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !2059 ; 4 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hy, i64 48
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !2062
  %.not.i.i.i.i235 = icmp eq ptr %i.id, %i.if
  br i1 %.not.i.i.i.i235, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  store i64 %i.hx, ptr %i.id, align 8, !tbaa !641
  %i.ig = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  store ptr %i.ig, ptr %i.ic, align 8, !tbaa !2059
  br label %_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev.exit

bb.av:                                            ; preds = %bb.at
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hy, i64 32
  invoke void @_ZNSt6vectorISt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ih, ptr %i.id, ptr noundef nonnull align 8 dereferenceable(8) %i.gv)
          to label %_ZN8facebook5velox4core7ExecCtx20releaseDecodedVectorEOSt10unique_ptrINS0_13DecodedVectorESt14default_deleteIS4_EE.exit.i unwind label %bb.ay

_ZN8facebook5velox4core7ExecCtx20releaseDecodedVectorEOSt10unique_ptrINS0_13DecodedVectorESt14default_deleteIS4_EE.exit.i: ; preds = %bb.av
  %.pr.pre.i = load ptr, ptr %i.gv, align 8, !tbaa !641 ; 2 uses
  %.not.i.i236 = icmp eq ptr %.pr.pre.i, null
  br i1 %.not.i.i236, label %_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev.exit, label %_ZN8facebook5velox4core7ExecCtx20releaseDecodedVectorEOSt10unique_ptrINS0_13DecodedVectorESt14default_deleteIS4_EE.exit.thread2.i

_ZN8facebook5velox4core7ExecCtx20releaseDecodedVectorEOSt10unique_ptrINS0_13DecodedVectorESt14default_deleteIS4_EE.exit.thread2.i: ; preds = %_ZN8facebook5velox4core7ExecCtx20releaseDecodedVectorEOSt10unique_ptrINS0_13DecodedVectorESt14default_deleteIS4_EE.exit.i, %bb.as, %bb.ar
  %i.ii = phi ptr [ %.pr.pre.i, %_ZN8facebook5velox4core7ExecCtx20releaseDecodedVectorEOSt10unique_ptrINS0_13DecodedVectorESt14default_deleteIS4_EE.exit.i ], [ %i.hw, %bb.ar ], [ %i.hw, %bb.as ] ; 5 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 96
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !160 ; 3 uses
  %.not.i.i.i.i.i.i.i234 = icmp eq ptr %i.ik, null
  br i1 %.not.i.i.i.i.i.i.i234, label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i, label %bb.aw

bb.aw:                                            ; preds = %_ZN8facebook5velox4core7ExecCtx20releaseDecodedVectorEOSt10unique_ptrINS0_13DecodedVectorESt14default_deleteIS4_EE.exit.thread2.i
  %i.il = getelementptr inbounds nuw i8, ptr %i.ii, i64 112
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !709
  %i.in = ptrtoint ptr %i.im to i64
  %i.io = ptrtoint ptr %i.ik to i64
  %i.ip = sub i64 %i.in, %i.io
  call void @_ZdlPvm(ptr noundef nonnull %i.ik, i64 noundef %i.ip) #47
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i

_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i:            ; preds = %bb.aw, %_ZN8facebook5velox4core7ExecCtx20releaseDecodedVectorEOSt10unique_ptrINS0_13DecodedVectorESt14default_deleteIS4_EE.exit.thread2.i
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ii, i64 72
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !2060 ; 3 uses
  %.not.i.i.i1.i.i.i.i = icmp eq ptr %i.ir, null
  br i1 %.not.i.i.i1.i.i.i.i, label %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i, label %bb.ax

bb.ax:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i
  %i.is = getelementptr inbounds nuw i8, ptr %i.ii, i64 88
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !2061
  %i.iu = ptrtoint ptr %i.it to i64
  %i.iv = ptrtoint ptr %i.ir to i64
  %i.iw = sub i64 %i.iu, %i.iv
  call void @_ZdlPvm(ptr noundef nonnull %i.ir, i64 noundef %i.iw) #47
  br label %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i: ; preds = %bb.ax, %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ii, i64 noundef 120) #47
  br label %_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev.exit

bb.ay:                                            ; preds = %bb.av
  %i.ix = landingpad { ptr, i32 }
          catch ptr null
  %i.iy = extractvalue { ptr, i32 } %i.ix, 0
  call void @__clang_call_terminate(ptr %i.iy) #48
  unreachable

_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev.exit: ; preds = %_ZN8facebook5velox12_GLOBAL__N_16AsJsonD2Ev.exit.i.i.i.i.i.i, %bb.au, %_ZN8facebook5velox4core7ExecCtx20releaseDecodedVectorEOSt10unique_ptrINS0_13DecodedVectorESt14default_deleteIS4_EE.exit.i, %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i
  %i.iz = load ptr, ptr %.092.i.i.i, align 8, !tbaa !102, !alias.scope !2489, !noalias !2486 ; 2 uses
  %i.ja = icmp eq ptr %i.iz, %i.gh
  br i1 %i.ja, label %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox12_GLOBAL__N_16AsJsonEESB_SaISB_EEvPT_PT0_RT1_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i171

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i171: ; preds = %_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev.exit
  %i.jb = load i64, ptr %i.gh, align 8, !tbaa !37, !alias.scope !2489, !noalias !2486
  %i.jc = add i64 %i.jb, 1
  call void @_ZdlPvm(ptr noundef %i.iz, i64 noundef %i.jc) #47
  br label %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox12_GLOBAL__N_16AsJsonEESB_SaISB_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox12_GLOBAL__N_16AsJsonEESB_SaISB_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i171
  %i.jd = getelementptr inbounds nuw i8, ptr %.092.i.i.i, i64 112 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 112 ; 2 uses
  %.not.i.i.i172 = icmp eq ptr %i.jd, %i.db
  br i1 %.not.i.i.i172, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox12_GLOBAL__N_16AsJsonEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit, label %.lr.ph.i.i.i169, !llvm.loop !2492

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox12_GLOBAL__N_16AsJsonEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit: ; preds = %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox12_GLOBAL__N_16AsJsonEESB_SaISB_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt16allocator_traitsISaISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox12_GLOBAL__N_16AsJsonEEEE9constructISB_JRS6_SA_EEEvRSC_PT_DpOT0_.exit.i.i
  %.0.lcssa.i.i.i = phi ptr [ %36, %_ZNSt16allocator_traitsISaISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox12_GLOBAL__N_16AsJsonEEEE9constructISB_JRS6_SA_EEEvRSC_PT_DpOT0_.exit.i.i ], [ %i.je, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox12_GLOBAL__N_16AsJsonEESB_SaISB_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.jf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 112
  %.not.i31.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i31.i.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox12_GLOBAL__N_16AsJsonEESaISB_EE17_M_realloc_insertIJRS6_SA_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_.exit.i, label %bb.az

bb.az:                                            ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox12_GLOBAL__N_16AsJsonEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit
  %i.jg = load ptr, ptr %i.aj, align 8, !tbaa !2484
  %i.jh = ptrtoint ptr %i.jg to i64
  %i.ji = sub i64 %i.jh, %i.en
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i, i64 noundef %i.ji) #47
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox12_GLOBAL__N_16AsJsonEESaISB_EE17_M_realloc_insertIJRS6_SA_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_.exit.i

bb.ba:                                            ; preds = %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox12_GLOBAL__N_16AsJsonEESaISB_EE13_M_deallocateEPSB_m.exit33.i.i
  %i.jj = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body49 unwind label %bb.bb

_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox12_GLOBAL__N_16AsJsonEESaISB_EE13_M_deallocateEPSB_m.exit33.i.i.loopexit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i
  %lpad.loopexit296 = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox12_GLOBAL__N_16AsJsonEESaISB_EE13_M_deallocateEPSB_m.exit33.i.i

_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox12_GLOBAL__N_16AsJsonEESaISB_EE13_M_deallocateEPSB_m.exit33.i.i.loopexit.split-lp: ; preds = %.noexc.i.i.i174, %.noexc6.i.i.i
  %lpad.loopexit.split-lp297 = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox12_GLOBAL__N_16AsJsonEESaISB_EE13_M_deallocateEPSB_m.exit33.i.i

_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox12_GLOBAL__N_16AsJsonEESaISB_EE13_M_deallocateEPSB_m.exit33.i.i: ; preds = %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox12_GLOBAL__N_16AsJsonEESaISB_EE13_M_deallocateEPSB_m.exit33.i.i.loopexit.split-lp, %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox12_GLOBAL__N_16AsJsonEESaISB_EE13_M_deallocateEPSB_m.exit33.i.i.loopexit
  %lpad.phi298 = phi { ptr, i32 } [ %lpad.loopexit296, %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox12_GLOBAL__N_16AsJsonEESaISB_EE13_M_deallocateEPSB_m.exit33.i.i.loopexit ], [ %lpad.loopexit.split-lp297, %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox12_GLOBAL__N_16AsJsonEESaISB_EE13_M_deallocateEPSB_m.exit33.i.i.loopexit.split-lp ]
  %i.jk = extractvalue { ptr, i32 } %lpad.phi298, 0
  %i.jl = call ptr @__cxa_begin_catch(ptr %i.jk) #38 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %36, i64 noundef %35) #47
  invoke void @__cxa_rethrow() #46
          to label %bb.bc unwind label %bb.ba

bb.bb:                                            ; preds = %bb.ba
  %i.jm = landingpad { ptr, i32 }
          catch ptr null
  %i.jn = extractvalue { ptr, i32 } %i.jm, 0
  call void @__clang_call_terminate(ptr %i.jn) #48
  unreachable

bb.bc:                                            ; preds = %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox12_GLOBAL__N_16AsJsonEESaISB_EE13_M_deallocateEPSB_m.exit33.i.i
  unreachable

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox12_GLOBAL__N_16AsJsonEESaISB_EE17_M_realloc_insertIJRS6_SA_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_.exit.i: ; preds = %bb.az, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox12_GLOBAL__N_16AsJsonEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit
  store ptr %36, ptr %29, align 8, !tbaa !2485
  store ptr %i.jf, ptr %i.ai, align 8, !tbaa !2481
  %i.jo = getelementptr inbounds nuw [112 x i8], ptr %36, i64 %i.ew
  store ptr %i.jo, ptr %i.aj, align 8, !tbaa !2484
  %.pre613 = load i8, ptr %i.ap, align 8, !tbaa !224, !range !110
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox12_GLOBAL__N_16AsJsonEESaISB_EE12emplace_backIJRS6_SA_EEERSB_DpOT_.exit

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox12_GLOBAL__N_16AsJsonEESaISB_EE12emplace_backIJRS6_SA_EEERSB_DpOT_.exit: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox12_GLOBAL__N_16AsJsonEESaISB_EE17_M_realloc_insertIJRS6_SA_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_.exit.i, %.noexc46
  %i.jp = phi i8 [ %.pre613, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox12_GLOBAL__N_16AsJsonEESaISB_EE17_M_realloc_insertIJRS6_SA_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_.exit.i ], [ %i.dz, %.noexc46 ]
  %i.jq = trunc nuw i8 %i.jp to i1
  store i8 0, ptr %i.ap, align 8, !tbaa !224
  br i1 %i.jq, label %bb.bd, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

bb.bd:                                            ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox12_GLOBAL__N_16AsJsonEESaISB_EE12emplace_backIJRS6_SA_EEERSB_DpOT_.exit
  %i.jr = load ptr, ptr %i.ao, align 8, !tbaa !102 ; 2 uses
  %i.js = icmp eq ptr %i.jr, %i.aq
  br i1 %i.js, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.bd
  %i.jt = load i64, ptr %i.aq, align 8, !tbaa !37
  %i.ju = add i64 %i.jt, 1
  call void @_ZdlPvm(ptr noundef %i.jr, i64 noundef %i.ju) #47
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i: ; preds = %bb.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox12_GLOBAL__N_16AsJsonEESaISB_EE12emplace_backIJRS6_SA_EEERSB_DpOT_.exit
  %i.jv = load ptr, ptr %i.am, align 8, !tbaa !29 ; 8 uses
  %.not.i.i.i51 = icmp eq ptr %i.jv, null
  br i1 %.not.i.i.i51, label %_ZN8facebook5velox12_GLOBAL__N_16AsJsonD2Ev.exit, label %bb.be

bb.be:                                            ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 8 ; 4 uses
  %i.jx = load atomic i64, ptr %i.jw acquire, align 8 ; 2 uses
  %i.jy = icmp eq i64 %i.jx, 4294967297
  %i.jz = trunc i64 %i.jx to i32                  ; 2 uses
  br i1 %i.jy, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  store i32 0, ptr %i.jw, align 8, !tbaa !33
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jv, i64 12
  store i32 0, ptr %i.ka, align 4, !tbaa !35
  %i.kb = load ptr, ptr %i.jv, align 8, !tbaa !19
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 16
  %i.kd = load ptr, ptr %i.kc, align 8
  call void %i.kd(ptr noundef nonnull align 8 dereferenceable(16) %i.jv) #38, !inline_history !2398
  %i.ke = load ptr, ptr %i.jv, align 8, !tbaa !19
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 24
  %i.kg = load ptr, ptr %i.kf, align 8
  call void %i.kg(ptr noundef nonnull align 8 dereferenceable(16) %i.jv) #38, !inline_history !2398
  br label %_ZN8facebook5velox12_GLOBAL__N_16AsJsonD2Ev.exit

bb.bg:                                            ; preds = %bb.be
  %i.kh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !37
  %.not.i.i.i.i = icmp eq i8 %i.kh, 0
  br i1 %.not.i.i.i.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ki = add nsw i32 %i.jz, -1
  store i32 %i.ki, ptr %i.jw, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.bi:                                            ; preds = %bb.bg
  %i.kj = atomicrmw volatile add ptr %i.jw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.bi, %bb.bh
  %.0.i.i.i.i.i = phi i32 [ %i.jz, %bb.bh ], [ %i.kj, %bb.bi ]
  %i.kk = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.kk, label %bb.bj, label %_ZN8facebook5velox12_GLOBAL__N_16AsJsonD2Ev.exit, !prof !38

bb.bj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jv) #38
  br label %_ZN8facebook5velox12_GLOBAL__N_16AsJsonD2Ev.exit

_ZN8facebook5velox12_GLOBAL__N_16AsJsonD2Ev.exit: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i, %bb.bf, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.bj
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(80) %32) #38
  %i.kl = load i8, ptr %i.af, align 8, !tbaa !224, !range !110, !noundef !111
  %i.km = trunc nuw i8 %i.kl to i1
  store i8 0, ptr %i.af, align 8, !tbaa !224
  br i1 %i.km, label %bb.bk, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

bb.bk:                                            ; preds = %_ZN8facebook5velox12_GLOBAL__N_16AsJsonD2Ev.exit
  %i.kn = load ptr, ptr %34, align 8, !tbaa !102  ; 2 uses
  %i.ko = icmp eq ptr %i.kn, %i.ag
  br i1 %i.ko, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.bk
  %i.kp = load i64, ptr %i.ag, align 8, !tbaa !37
  %i.kq = add i64 %i.kp, 1
  call void @_ZdlPvm(ptr noundef %i.kn, i64 noundef %i.kq) #47
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit: ; preds = %bb.bk, %_ZN8facebook5velox12_GLOBAL__N_16AsJsonD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.kr = load ptr, ptr %33, align 8, !tbaa !702  ; 7 uses
  %.not.i52 = icmp eq ptr %i.kr, null
  br i1 %.not.i52, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.bl

bb.bl:                                            ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 40
  %i.kt = atomicrmw sub ptr %i.ks, i32 1 acq_rel, align 4
  %i.ku = icmp eq i32 %i.kt, 1
  br i1 %i.ku, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.bl
  %i.kv = load ptr, ptr %i.kr, align 8, !tbaa !19
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 64
  %i.kx = load ptr, ptr %i.kw, align 8
  invoke void %i.kx(ptr noundef nonnull align 8 dereferenceable(64) %i.kr)
          to label %.noexc.i53 unwind label %bb.bm, !inline_history !703

.noexc.i53:                                       ; preds = %.sink.split.i.i
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kr, i64 8
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !704
  %.not.i.i54 = icmp eq ptr %i.kz, null
  %i.la = load ptr, ptr %i.kr, align 8, !tbaa !19
  %..i.i = select i1 %.not.i.i54, i64 8, i64 48
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 %..i.i
  %i.lc = load ptr, ptr %i.lb, align 8
  invoke void %i.lc(ptr noundef nonnull align 8 dereferenceable(64) %i.kr)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.bm, !inline_history !703

bb.bm:                                            ; preds = %.noexc.i53, %.sink.split.i.i
  %i.ld = landingpad { ptr, i32 }
          catch ptr null
  %i.le = extractvalue { ptr, i32 } %i.ld, 0
  call void @__clang_call_terminate(ptr %i.le) #48
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, %bb.bl, %.noexc.i53
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %24)
  store ptr %i.c, ptr %24, align 8
  store ptr %i.e, ptr %.sroa.4245.0..sroa_idx, align 8
  store ptr %29, ptr %.sroa.5.0..sroa_idx, align 8
  store ptr %i.f, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  %i.lf = load i8, ptr %i.at, align 1, !tbaa !147, !range !110, !noundef !111
  %i.lg = trunc nuw i8 %i.lf to i1
  br i1 %i.lg, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i, label %bb.bn

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  %.0.in.pre.i.i.i.i = load i8, ptr %i.as, align 4, !tbaa !146, !range !110
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i

bb.bn:                                            ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  %i.lh = load i32, ptr %i.au, align 4, !tbaa !149
  %i.li = icmp eq i32 %i.lh, 0
  br i1 %i.li, label %bb.bo, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i

bb.bo:                                            ; preds = %bb.bn
  %i.lj = load i32, ptr %i.av, align 8, !tbaa !158 ; 6 uses
  %i.lk = load i32, ptr %i.aw, align 8, !tbaa !159
  %i.ll = icmp eq i32 %i.lj, %i.lk
  br i1 %i.ll, label %bb.bp, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i

bb.bp:                                            ; preds = %bb.bo
  %i.lm = load ptr, ptr %2, align 8, !tbaa !160   ; 2 uses
  %.not.i.i.i.i.i = icmp sgt i32 %i.lj, 0
  br i1 %.not.i.i.i.i.i, label %bb.bq, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i

bb.bq:                                            ; preds = %bb.bp
  %i.ln = and i32 %i.lj, 2147483584               ; 3 uses
  %i.lo = zext nneg i32 %i.ln to i64
  %.not37.i.i.not.i.i.i.i945.not = icmp eq i32 %i.ln, 0
  br i1 %.not37.i.i.not.i.i.i.i945.not, label %.critedge.i.i.i.i.i.i, label %.lr.ph948

bb.br:                                            ; preds = %.lr.ph948
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i946, 64 ; 2 uses
  %.not37.i.i.not.i.i.i.i = icmp samesign ult i64 %indvars.iv.next.i.i.i.i, %i.lo
  br i1 %.not37.i.i.not.i.i.i.i, label %.lr.ph948, label %.critedge.i.i.i.i.i.i, !llvm.loop !161

.lr.ph948:                                        ; preds = %bb.bq, %bb.br
  %indvars.iv.i.i.i.i946 = phi i64 [ %indvars.iv.next.i.i.i.i, %bb.br ], [ 0, %bb.bq ] ; 2 uses
  %i.lp = lshr exact i64 %indvars.iv.i.i.i.i946, 3
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lm, i64 %i.lp
  %i.lr = load i64, ptr %i.lq, align 8, !tbaa !163
  %i.ls = icmp eq i64 %i.lr, -1
  br i1 %i.ls, label %bb.br, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i, !llvm.loop !161

.critedge.i.i.i.i.i.i:                            ; preds = %bb.br, %bb.bq
  %.not38.i.i.i.i.i.i = icmp eq i32 %i.lj, %i.ln
  br i1 %.not38.i.i.i.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i, label %bb.bs

bb.bs:                                            ; preds = %.critedge.i.i.i.i.i.i
  %i.lt = lshr i32 %i.lj, 6
  %i.lu = and i32 %i.lj, 63
  %i.lv = zext nneg i32 %i.lu to i64
  %notmask.i40.i.i.i.i.i.i = shl nsw i64 -1, %i.lv
  %i.lw = zext nneg i32 %i.lt to i64
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr %i.lm, i64 %i.lw
  %i.ly = load i64, ptr %i.lx, align 8, !tbaa !163
  %.demorgan.i.i.i.i = or i64 %i.ly, %notmask.i40.i.i.i.i.i.i
  %i.lz = icmp eq i64 %.demorgan.i.i.i.i, -1
  %i.ma = zext i1 %i.lz to i16
  %i.mb = or disjoint i16 %i.ma, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i: ; preds = %.lr.ph948, %bb.bs, %.critedge.i.i.i.i.i.i, %bb.bp, %bb.bo, %bb.bn
  %.sroa.0.0.insert.ext.i.i.i.i = phi i16 [ 256, %bb.bo ], [ 256, %bb.bn ], [ 257, %bb.bp ], [ 257, %.critedge.i.i.i.i.i.i ], [ %i.mb, %bb.bs ], [ 256, %.lr.ph948 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i.i.i, ptr %i.as, align 4
  %i.mc = trunc i16 %.sroa.0.0.insert.ext.i.i.i.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i

end_hunk_0
begin_hunk_1_@_ZN8facebook5velox12_GLOBAL__N_117castToJsonFromRowERKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERNS0_10FlatVectorINS0_10StringViewEEERKSt10shared_ptrINS5_9CastHooksEE:bb.a
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abj, i64 3
  %i.abt = load i8, ptr %i.abs, align 1, !tbaa !37
  %or.cond.not.i.i.i31.3.i.i.i.i.i.i.i = icmp eq i8 %i.abt, 82
  br i1 %or.cond.not.i.i.i31.3.i.i.i.i.i.i.i, label %tailrecurse.i.i.i.i32.3.i.i.i.i.i.i.i, label %.loopexit44.i.i.i.i.i.i.i

tailrecurse.i.i.i.i32.3.i.i.i.i.i.i.i:            ; preds = %tailrecurse.i.i.i.i32.2.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #38
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %19) #38
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %1, i32 noundef %i.xl, ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %bb.fe unwind label %bb.fg

.loopexit44.i.i.i.i.i.i.i:                        ; preds = %tailrecurse.i.i.i.i32.2.i.i.i.i.i.i.i, %tailrecurse.i.i.i.i32.1.i.i.i.i.i.i.i, %tailrecurse.i.i.i.i32.i.i.i.i.i.i.i, %.lr.ph.i.i.i.preheader.i29.preheader.i.i.i.i.i.i.i, %bb.ew
  invoke void @__cxa_rethrow() #46
          to label %bb.fk unwind label %bb.fd

bb.ex:                                            ; preds = %bb.ev
  %i.abu = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #38
  %i.abv = icmp eq i32 %i.abc, %i.abu
  br i1 %i.abv, label %bb.ey, label %.body59

bb.ey:                                            ; preds = %bb.ex
  %i.abw = call ptr @__cxa_begin_catch(ptr %i.abb) #38 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #38
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %18) #38
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %1, i32 noundef %i.xl, ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %bb.ez unwind label %bb.fb

bb.ez:                                            ; preds = %bb.ey
  %i.abx = load ptr, ptr %18, align 8, !tbaa !116
  %.not.i34.i.i.i.i.i.i.i = icmp eq ptr %i.abx, null
  br i1 %.not.i34.i.i.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35.i.i.i.i.i.i.i, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %18) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35.i.i.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35.i.i.i.i.i.i.i: ; preds = %bb.fa, %bb.ez
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35.i.i.i.i.i.i.i.invoke

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35.i.i.i.i.i.i.i.invoke: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39.i.i.i.i.i.i.i, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35.i.i.i.i.i.i.i
  invoke void @__cxa_end_catch()
          to label %"_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_12_GLOBAL__N_117castToJsonFromRowERKNS0_10BaseVectorERS2_RKNS0_17SelectivityVectorERNS0_10FlatVectorINS0_10StringViewEEERKSt10shared_ptrINS1_9CastHooksEEE3$_1ZNS2_22applyToSelectedNoThrowISL_EEvSB_T_EUlSN_E_EEvSB_SN_T0_ENKUlSN_E_clIiEEDaSN_.exit.i.i.i.i.i.i.i" unwind label %.loopexit266

bb.fb:                                            ; preds = %bb.ey
  %i.aby = landingpad { ptr, i32 }
          cleanup
  %i.abz = load ptr, ptr %18, align 8, !tbaa !116
  %.not.i36.i.i.i.i.i.i.i = icmp eq ptr %i.abz, null
  br i1 %.not.i36.i.i.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %18) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i: ; preds = %bb.fc, %bb.fb
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #38
  invoke void @__cxa_end_catch()
          to label %.body59 unwind label %bb.fj

bb.fd:                                            ; preds = %.loopexit44.i.i.i.i.i.i.i
  %i.aca = landingpad { ptr, i32 }
          cleanup
  br label %bb.fi

bb.fe:                                            ; preds = %tailrecurse.i.i.i.i32.3.i.i.i.i.i.i.i
  %i.acb = load ptr, ptr %19, align 8, !tbaa !116
  %.not.i38.i.i.i.i.i.i.i = icmp eq ptr %i.acb, null
  br i1 %.not.i38.i.i.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39.i.i.i.i.i.i.i, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %19) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39.i.i.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39.i.i.i.i.i.i.i: ; preds = %bb.ff, %bb.fe
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35.i.i.i.i.i.i.i.invoke

bb.fg:                                            ; preds = %tailrecurse.i.i.i.i32.3.i.i.i.i.i.i.i
  %i.acc = landingpad { ptr, i32 }
          cleanup
  %i.acd = load ptr, ptr %19, align 8, !tbaa !116
  %.not.i40.i.i.i.i.i.i.i = icmp eq ptr %i.acd, null
  br i1 %.not.i40.i.i.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit41.i.i.i.i.i.i.i, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %19) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit41.i.i.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit41.i.i.i.i.i.i.i: ; preds = %bb.fh, %bb.fg
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #38
  br label %bb.fi

bb.fi:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit41.i.i.i.i.i.i.i, %bb.fd
  %.pn.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.acc, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit41.i.i.i.i.i.i.i ], [ %i.aca, %bb.fd ]
  invoke void @__cxa_end_catch()
          to label %.body59 unwind label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i
  %i.ace = landingpad { ptr, i32 }
          catch ptr null
  %i.acf = extractvalue { ptr, i32 } %i.ace, 0
  call void @__clang_call_terminate(ptr %i.acf) #48
  unreachable

bb.fk:                                            ; preds = %.loopexit44.i.i.i.i.i.i.i
  unreachable

"_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_12_GLOBAL__N_117castToJsonFromRowERKNS0_10BaseVectorERS2_RKNS0_17SelectivityVectorERNS0_10FlatVectorINS0_10StringViewEEERKSt10shared_ptrINS1_9CastHooksEEE3$_1ZNS2_22applyToSelectedNoThrowISL_EEvSB_T_EUlSN_E_EEvSB_SN_T0_ENKUlSN_E_clIiEEDaSN_.exit.i.i.i.i.i.i.i": ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35.i.i.i.i.i.i.i.invoke, %.noexc28.i.i.i.i.i.i.i, %.noexc27.i.i.i.i.i.i.i
  %i.acg = add i64 %.01558.i.i.i.i.i.i.i, -1
  %i.ach = and i64 %i.acg, %.01558.i.i.i.i.i.i.i  ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.ach, 0
  br i1 %.not.i.i.i.i.i.i.i, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_12_GLOBAL__N_117castToJsonFromRowERKNS0_10BaseVectorERS4_RKNS0_17SelectivityVectorERNS0_10FlatVectorINS0_10StringViewEEERKSt10shared_ptrINS3_9CastHooksEEE3$_1ZNS4_22applyToSelectedNoThrowISN_EEvSD_T_EUlSP_E_EEvSD_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i.i.i", label %bb.eh, !llvm.loop !2504

"_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_12_GLOBAL__N_117castToJsonFromRowERKNS0_10BaseVectorERS4_RKNS0_17SelectivityVectorERNS0_10FlatVectorINS0_10StringViewEEERKSt10shared_ptrINS3_9CastHooksEEE3$_1ZNS4_22applyToSelectedNoThrowISN_EEvSD_T_EUlSP_E_EEvSD_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i.i.i": ; preds = %"_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_12_GLOBAL__N_117castToJsonFromRowERKNS0_10BaseVectorERS2_RKNS0_17SelectivityVectorERNS0_10FlatVectorINS0_10StringViewEEERKSt10shared_ptrINS1_9CastHooksEEE3$_1ZNS2_22applyToSelectedNoThrowISL_EEvSB_T_EUlSN_E_EEvSB_SN_T0_ENKUlSN_E_clImEEDaSN_.exit.i.i.i.i.i.i.i", %"_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_12_GLOBAL__N_117castToJsonFromRowERKNS0_10BaseVectorERS2_RKNS0_17SelectivityVectorERNS0_10FlatVectorINS0_10StringViewEEERKSt10shared_ptrINS1_9CastHooksEEE3$_1ZNS2_22applyToSelectedNoThrowISL_EEvSB_T_EUlSN_E_EEvSB_SN_T0_ENKUlSN_E_clIiEEDaSN_.exit.i.i.i.i.i.i.i", %bb.dc, %.lr.ph.i.i.i.i.i.i
  %i.aci = add nsw i32 %i.sc, 64                  ; 2 uses
  %.not33.i.i.i.i.i.i = icmp sgt i32 %i.aci, %i.rg
  br i1 %.not33.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !2505

bb.fl:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  %i.acj = and i32 %i.rc, 63
  %i.ack = zext nneg i32 %i.acj to i64
  %notmask.i36.i.i.i.i.i.i = shl nsw i64 -1, %i.ack
  %i.acl = xor i64 %notmask.i36.i.i.i.i.i.i, -1
  br label %.invoke832.a

"_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_12_GLOBAL__N_117castToJsonFromRowERKNS0_10BaseVectorERS4_RKNS0_17SelectivityVectorERNS0_10FlatVectorINS0_10StringViewEEERKSt10shared_ptrINS3_9CastHooksEEE3$_1ZNS4_22applyToSelectedNoThrowISN_EEvSD_T_EUlSP_E_EEvSD_SP_T0_EUlSP_E_EEvPKmiiSP_.exit.i.i.i": ; preds = %.invoke832.a, %._crit_edge.i.i.i.i.i.i, %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  br label %.loopexit280

.loopexit280:                                     ; preds = %"_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_12_GLOBAL__N_117castToJsonFromRowERKNS0_10BaseVectorERS2_RKNS0_17SelectivityVectorERNS0_10FlatVectorINS0_10StringViewEEERKSt10shared_ptrINS1_9CastHooksEEE3$_1ZNS2_22applyToSelectedNoThrowISL_EEvSB_T_EUlSN_E_EEvSB_SN_T0_ENKUlSN_E_clIiEEDaSN_.exit.i.i.i", %"_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_12_GLOBAL__N_117castToJsonFromRowERKNS0_10BaseVectorERS4_RKNS0_17SelectivityVectorERNS0_10FlatVectorINS0_10StringViewEEERKSt10shared_ptrINS3_9CastHooksEEE3$_1ZNS4_22applyToSelectedNoThrowISN_EEvSD_T_EUlSP_E_EEvSD_SP_T0_EUlSP_E_EEvPKmiiSP_.exit.i.i.i", %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %24)
  call void @llvm.lifetime.end.p0(ptr nonnull %23)
  %i.acm = load i8, ptr %i.ac, align 8, !tbaa !224, !range !110, !noundef !111
  %i.acn = trunc nuw i8 %i.acm to i1
  store i8 0, ptr %i.ac, align 8, !tbaa !224
  br i1 %i.acn, label %bb.fm, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit70

bb.fm:                                            ; preds = %.loopexit280
  %i.aco = load ptr, ptr %31, align 8, !tbaa !102 ; 2 uses
  %i.acp = icmp eq ptr %i.aco, %i.ad
  br i1 %i.acp, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i68: ; preds = %bb.fm
  %i.acq = load i64, ptr %i.ad, align 8, !tbaa !37
  %i.acr = add i64 %i.acq, 1
  call void @_ZdlPvm(ptr noundef %i.aco, i64 noundef %i.acr) #47
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit70

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit70: ; preds = %bb.fm, %.loopexit280, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #38
  %i.acs = load ptr, ptr %30, align 8, !tbaa !102 ; 2 uses
  %i.act = icmp eq ptr %i.acs, %i.aa
  br i1 %i.act, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit70
  %i.acu = load i64, ptr %i.aa, align 8, !tbaa !37
  %i.acv = add i64 %i.acu, 1
  call void @_ZdlPvm(ptr noundef %i.acs, i64 noundef %i.acv) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit70, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #38
  %i.acw = load i32, ptr %i.f, align 4, !tbaa !3
  %i.acx = add nsw i32 %i.acw, 1                  ; 3 uses
  store i32 %i.acx, ptr %i.f, align 4, !tbaa !3
  %i.acy = sext i32 %i.acx to i64
  %i.acz = icmp ugt i64 %i.t, %i.acy
  br i1 %i.acz, label %bb.f, label %._crit_edge, !llvm.loop !2506

.loopexit281:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  %lpad.loopexit283 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp282:                            ; preds = %bb.g, %bb.h, %.noexc.i, %.noexc6.i
  %lpad.loopexit.split-lp284 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit286:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i
  %lpad.loopexit288 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit79

.loopexit.split-lp287:                            ; preds = %.noexc.i.i.i.i.i.i.i, %.noexc6.i.i.i.i.i.i.i
  %lpad.loopexit.split-lp289 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit79

bb.fn:                                            ; preds = %bb.v
  %i.ada = landingpad { ptr, i32 }
          cleanup
  br label %bb.fr

bb.fo:                                            ; preds = %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS6_.exit
  %i.adb = landingpad { ptr, i32 }
          cleanup
  br label %bb.fp

.loopexit291:                                     ; preds = %_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox12_GLOBAL__N_16AsJsonEESaISB_EE12_M_check_lenEmPKc.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i182
  %lpad.loopexit293 = landingpad { ptr, i32 }
          cleanup
  br label %.body49

.loopexit.split-lp292:                            ; preds = %.invoke, %.noexc6.i.i.i183
  %lpad.loopexit.split-lp294 = landingpad { ptr, i32 }
          cleanup
  br label %.body49

.body49:                                          ; preds = %.loopexit291, %.loopexit.split-lp292, %bb.ba
  %eh.lpad-body50 = phi { ptr, i32 } [ %i.jj, %bb.ba ], [ %lpad.loopexit293, %.loopexit291 ], [ %lpad.loopexit.split-lp294, %.loopexit.split-lp292 ]
  call fastcc void @_ZN8facebook5velox12_GLOBAL__N_16AsJsonD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %32) #38
  br label %bb.fp

bb.fp:                                            ; preds = %.body49, %bb.fo
  %.pn = phi { ptr, i32 } [ %eh.lpad-body50, %.body49 ], [ %i.adb, %bb.fo ]
  %i.adc = load i8, ptr %i.af, align 8, !tbaa !224, !range !110, !noundef !111
  %i.add = trunc nuw i8 %i.adc to i1
  store i8 0, ptr %i.af, align 8, !tbaa !224
  br i1 %i.add, label %bb.fq, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit76

bb.fq:                                            ; preds = %bb.fp
  %i.ade = load ptr, ptr %34, align 8, !tbaa !102 ; 2 uses
  %i.adf = icmp eq ptr %i.ade, %i.ag
  br i1 %i.adf, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i74: ; preds = %bb.fq
  %i.adg = load i64, ptr %i.ag, align 8, !tbaa !37
  %i.adh = add i64 %i.adg, 1
  call void @_ZdlPvm(ptr noundef %i.ade, i64 noundef %i.adh) #47
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit76

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit76: ; preds = %bb.fq, %bb.fp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i74
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %33) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #38
  br label %bb.fr

bb.fr:                                            ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit76, %bb.fn
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit76 ], [ %i.ada, %bb.fn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #38
  br label %.body59

.loopexit266:                                     ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35.i.i.i.i.i.i.i.invoke
  %lpad.loopexit268 = landingpad { ptr, i32 }
          cleanup
  br label %.body59

.loopexit.split-lp267.loopexit:                   ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit23.i.i.i.i.i.i.i.invoke
  %lpad.loopexit272 = landingpad { ptr, i32 }
          cleanup
  br label %.body59

.loopexit.split-lp267.loopexit.split-lp.loopexit: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.invoke
  %lpad.loopexit277 = landingpad { ptr, i32 }
          cleanup
  br label %.body59

.loopexit.split-lp267.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke832.a, %bb.db
  %lpad.loopexit.split-lp278 = landingpad { ptr, i32 }
          cleanup
  br label %.body59

.body59:                                          ; preds = %bb.cj, %bb.dt, %bb.ex, %.loopexit266, %.loopexit.split-lp267.loopexit.split-lp.loopexit, %.loopexit.split-lp267.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp267.loopexit, %bb.fi, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i, %bb.ee, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit21.i.i.i.i.i.i.i, %bb.cu, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit6.i.i.i, %bb.fr
  %.pn30 = phi { ptr, i32 } [ %.pn.pn, %bb.fr ], [ %i.wb, %bb.dt ], [ %.pn.i.i.i.i, %bb.cu ], [ %i.qs, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit6.i.i.i ], [ %i.aba, %bb.ex ], [ %.pn.i18.i.i.i.i.i.i.i, %bb.ee ], [ %i.wz, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit21.i.i.i.i.i.i.i ], [ %.pn.i.i.i.i.i.i.i.i, %bb.fi ], [ %i.aby, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i ], [ %lpad.loopexit.split-lp278, %.loopexit.split-lp267.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit268, %.loopexit266 ], [ %lpad.loopexit272, %.loopexit.split-lp267.loopexit ], [ %lpad.loopexit277, %.loopexit.split-lp267.loopexit.split-lp.loopexit ], [ %i.pu, %bb.cj ] ; 3 uses
  %i.adi = load i8, ptr %i.ac, align 8, !tbaa !224, !range !110, !noundef !111
  %i.adj = trunc nuw i8 %i.adi to i1
  store i8 0, ptr %i.ac, align 8, !tbaa !224
  br i1 %i.adj, label %bb.fs, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit79

bb.fs:                                            ; preds = %.body59
  %i.adk = load ptr, ptr %31, align 8, !tbaa !102 ; 2 uses
  %i.adl = icmp eq ptr %i.adk, %i.ad
  br i1 %i.adl, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit79, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i77: ; preds = %bb.fs
  %i.adm = load i64, ptr %i.ad, align 8, !tbaa !37
  %i.adn = add i64 %i.adm, 1
  call void @_ZdlPvm(ptr noundef %i.adk, i64 noundef %i.adn) #47
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit79

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit79: ; preds = %bb.fs, %.loopexit286, %.loopexit.split-lp287, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i77, %.body59
  %.pn30.pn = phi { ptr, i32 } [ %.pn30, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i77 ], [ %.pn30, %.body59 ], [ %lpad.loopexit.split-lp289, %.loopexit.split-lp287 ], [ %lpad.loopexit288, %.loopexit286 ], [ %.pn30, %bb.fs ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #38
  %i.ado = load ptr, ptr %30, align 8, !tbaa !102 ; 2 uses
  %i.adp = icmp eq ptr %i.ado, %i.aa
  br i1 %i.adp, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit79
  %i.adq = load i64, ptr %i.aa, align 8, !tbaa !37
  %i.adr = add i64 %i.adq, 1
  call void @_ZdlPvm(ptr noundef %i.ado, i64 noundef %i.adr) #47
  br label %.body

.body:                                            ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit79, %.loopexit281, %.loopexit.split-lp282, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %.pn30.pn.pn = phi { ptr, i32 } [ %i.bn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn30.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80 ], [ %lpad.loopexit.split-lp284, %.loopexit.split-lp282 ], [ %lpad.loopexit283, %.loopexit281 ], [ %.pn30.pn, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit79 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #38
  br label %.body156

bb.ft:                                            ; preds = %._crit_edge
  %i.ads = sext i32 %i.ax to i64
  %i.adt = add i64 %i.t, 1
  %i.adu = select i1 %.not495, i64 2, i64 %i.adt
  %i.adv = mul i64 %i.adu, %i.ads
  %i.adw = load i64, ptr %i.e, align 8, !tbaa !163
  %i.adx = add i64 %i.adw, %i.adv                 ; 2 uses
  store i64 %i.adx, ptr %i.e, align 8, !tbaa !163
  %i.ady = invoke noundef ptr @_ZN8facebook5velox10FlatVectorINS0_10StringViewEE18getBufferWithSpaceEmb(ptr noundef nonnull align 8 dereferenceable(272) %3, i64 noundef %i.adx, i1 noundef zeroext false)
          to label %bb.fu unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.fu:                                            ; preds = %bb.ft
  %i.adz = load i8, ptr %i.d, align 1, !tbaa !146, !range !110, !noundef !111
  %i.aea = trunc nuw i8 %i.adz to i1
  br i1 %i.aea, label %bb.fv, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox12_GLOBAL__N_16AsJsonEESt6vectorISD_SaISD_EEEEZNSB_17castToJsonFromRowERKNSA_10BaseVectorERNSA_4exec7EvalCtxERKNSA_17SelectivityVectorERNSA_10FlatVectorINSA_10StringViewEEERKSt10shared_ptrINSM_9CastHooksEEE3$_0EvT_S12_T0_.exit"

bb.fv:                                            ; preds = %bb.fu
  %.val37 = load ptr, ptr %29, align 8, !tbaa !2507 ; 6 uses
  %i.aeb = getelementptr inbounds nuw i8, ptr %29, i64 8
  %.val = load ptr, ptr %i.aeb, align 8, !tbaa !2507 ; 6 uses
  %i.aec = icmp eq ptr %.val37, %.val
  br i1 %i.aec, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox12_GLOBAL__N_16AsJsonEESt6vectorISD_SaISD_EEEEZNSB_17castToJsonFromRowERKNSA_10BaseVectorERNSA_4exec7EvalCtxERKNSA_17SelectivityVectorERNSA_10FlatVectorINSA_10StringViewEEERKSt10shared_ptrINSM_9CastHooksEEE3$_0EvT_S12_T0_.exit", label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.aed = ptrtoint ptr %.val to i64
  %i.aee = ptrtoint ptr %.val37 to i64
  %i.aef = sub i64 %i.aed, %i.aee                 ; 2 uses
  %i.aeg = sdiv exact i64 %i.aef, 112
  %i.aeh = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aeg, i1 true)
  %i.aei = shl nuw nsw i64 %i.aeh, 1
  %i.aej = xor i64 %i.aei, 126
  call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox12_GLOBAL__N_16AsJsonEESt6vectorISD_SaISD_EEEElNS0_5__ops15_Iter_comp_iterIZNSB_17castToJsonFromRowERKNSA_10BaseVectorERNSA_4exec7EvalCtxERKNSA_17SelectivityVectorERNSA_10FlatVectorINSA_10StringViewEEERKSt10shared_ptrINSO_9CastHooksEEE3$_0EEEvT_S15_T0_T1_"(ptr %.val37, ptr %.val, i64 noundef %i.aej)
  %i.aek = icmp sgt i64 %i.aef, 1792
  br i1 %i.aek, label %bb.fx, label %bb.fy

bb.fx:                                            ; preds = %bb.fw
  %i.ael = getelementptr inbounds nuw i8, ptr %.val37, i64 1792 ; 3 uses
  call fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox12_GLOBAL__N_16AsJsonEESt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_comp_iterIZNSB_17castToJsonFromRowERKNSA_10BaseVectorERNSA_4exec7EvalCtxERKNSA_17SelectivityVectorERNSA_10FlatVectorINSA_10StringViewEEERKSt10shared_ptrINSO_9CastHooksEEE3$_0EEEvT_S15_T0_"(ptr %.val37, ptr nonnull %i.ael)
  %i.aem = icmp eq ptr %i.ael, %.val
  br i1 %i.aem, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox12_GLOBAL__N_16AsJsonEESt6vectorISD_SaISD_EEEEZNSB_17castToJsonFromRowERKNSA_10BaseVectorERNSA_4exec7EvalCtxERKNSA_17SelectivityVectorERNSA_10FlatVectorINSA_10StringViewEEERKSt10shared_ptrINSM_9CastHooksEEE3$_0EvT_S12_T0_.exit", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.fx, %.lr.ph.i.i.i.i
  %.sroa.0.06.i.i.i.i = phi ptr [ %i.aen, %.lr.ph.i.i.i.i ], [ %i.ael, %bb.fx ] ; 2 uses
  call fastcc void @"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox12_GLOBAL__N_16AsJsonEESt6vectorISD_SaISD_EEEENS0_5__ops14_Val_comp_iterIZNSB_17castToJsonFromRowERKNSA_10BaseVectorERNSA_4exec7EvalCtxERKNSA_17SelectivityVectorERNSA_10FlatVectorINSA_10StringViewEEERKSt10shared_ptrINSO_9CastHooksEEE3$_0EEEvT_T0_"(ptr nonnull %.sroa.0.06.i.i.i.i)
  %i.aen = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i.i, i64 112 ; 2 uses
  %i.aeo = icmp eq ptr %i.aen, %.val
  br i1 %i.aeo, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox12_GLOBAL__N_16AsJsonEESt6vectorISD_SaISD_EEEEZNSB_17castToJsonFromRowERKNSA_10BaseVectorERNSA_4exec7EvalCtxERKNSA_17SelectivityVectorERNSA_10FlatVectorINSA_10StringViewEEERKSt10shared_ptrINSM_9CastHooksEEE3$_0EvT_S12_T0_.exit", label %.lr.ph.i.i.i.i, !llvm.loop !2508

bb.fy:                                            ; preds = %bb.fw
  call fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox12_GLOBAL__N_16AsJsonEESt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_comp_iterIZNSB_17castToJsonFromRowERKNSA_10BaseVectorERNSA_4exec7EvalCtxERKNSA_17SelectivityVectorERNSA_10FlatVectorINSA_10StringViewEEERKSt10shared_ptrINSO_9CastHooksEEE3$_0EEEvT_S15_T0_"(ptr %.val37, ptr %.val)
  br label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox12_GLOBAL__N_16AsJsonEESt6vectorISD_SaISD_EEEEZNSB_17castToJsonFromRowERKNSA_10BaseVectorERNSA_4exec7EvalCtxERKNSA_17SelectivityVectorERNSA_10FlatVectorINSA_10StringViewEEERKSt10shared_ptrINSM_9CastHooksEEE3$_0EvT_S12_T0_.exit"

.loopexit:                                        ; preds = %"_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_12_GLOBAL__N_117castToJsonFromRowERKNS0_10BaseVectorERS2_RKNS0_17SelectivityVectorERNS0_10FlatVectorINS0_10StringViewEEERKSt10shared_ptrINS1_9CastHooksEEE3$_2ZNS2_22applyToSelectedNoThrowISL_EEvSB_T_EUlSN_E_EEvSB_SN_T0_ENKUlSN_E_clIiEEDaSN_.exit.sink.split.i.i.i"
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body156

.loopexit.split-lp.loopexit:                      ; preds = %"_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_12_GLOBAL__N_117castToJsonFromRowERKNS0_10BaseVectorERS2_RKNS0_17SelectivityVectorERNS0_10FlatVectorINS0_10StringViewEEERKSt10shared_ptrINS1_9CastHooksEEE3$_2ZNS2_22applyToSelectedNoThrowISL_EEvSB_T_EUlSN_E_EEvSB_SN_T0_ENKUlSN_E_clIiEEDaSN_.exit.sink.split.i.i.i.i.i.i.i"
  %lpad.loopexit259 = landingpad { ptr, i32 }
          cleanup
  br label %.body156

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i106.invoke
  %lpad.loopexit263 = landingpad { ptr, i32 }
          cleanup
  br label %.body156

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke833, %._crit_edge, %bb.ft, %bb.ha
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body156

"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox12_GLOBAL__N_16AsJsonEESt6vectorISD_SaISD_EEEEZNSB_17castToJsonFromRowERKNSA_10BaseVectorERNSA_4exec7EvalCtxERKNSA_17SelectivityVectorERNSA_10FlatVectorINSA_10StringViewEEERKSt10shared_ptrINSM_9CastHooksEEE3$_0EvT_S12_T0_.exit": ; preds = %.lr.ph.i.i.i.i, %bb.fy, %bb.fx, %bb.fv, %bb.fu
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  store ptr %i.c, ptr %15, align 8
  %.sroa.4247.0..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 3 uses
  store ptr %3, ptr %.sroa.4247.0..sroa_idx, align 8
  %.sroa.5248.0..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 3 uses
  store ptr %i.d, ptr %.sroa.5248.0..sroa_idx, align 8
  %.sroa.6249.0..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 24 ; 5 uses
  store ptr %29, ptr %.sroa.6249.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  %i.aep = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  %i.aeq = getelementptr inbounds nuw i8, ptr %2, i64 37
  %i.aer = load i8, ptr %i.aeq, align 1, !tbaa !147, !range !110, !noundef !111
  %i.aes = trunc nuw i8 %i.aer to i1
  br i1 %i.aes, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i154, label %bb.fz

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i154: ; preds = %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox12_GLOBAL__N_16AsJsonEESt6vectorISD_SaISD_EEEEZNSB_17castToJsonFromRowERKNSA_10BaseVectorERNSA_4exec7EvalCtxERKNSA_17SelectivityVectorERNSA_10FlatVectorINSA_10StringViewEEERKSt10shared_ptrINSM_9CastHooksEEE3$_0EvT_S12_T0_.exit"
  %.0.in.pre.i.i.i.i155 = load i8, ptr %i.aep, align 4, !tbaa !146, !range !110
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i85

bb.fz:                                            ; preds = %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox12_GLOBAL__N_16AsJsonEESt6vectorISD_SaISD_EEEEZNSB_17castToJsonFromRowERKNSA_10BaseVectorERNSA_4exec7EvalCtxERKNSA_17SelectivityVectorERNSA_10FlatVectorINSA_10StringViewEEERKSt10shared_ptrINSM_9CastHooksEEE3$_0EvT_S12_T0_.exit"
  %i.aet = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.aeu = load i32, ptr %i.aet, align 4, !tbaa !149
  %i.aev = icmp eq i32 %i.aeu, 0
  br i1 %i.aev, label %bb.ga, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i83

bb.ga:                                            ; preds = %bb.fz
  %i.aew = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.aex = load i32, ptr %i.aew, align 8, !tbaa !158 ; 6 uses
end_hunk_1
