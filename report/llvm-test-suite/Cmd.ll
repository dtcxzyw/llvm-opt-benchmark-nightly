inline.NumInlined: 4253
inline.NumDeleted: 716
begin_hunk_0_@_ZN2PP3Cmd19check_for_dimensionERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi:bb.a
          to label %.noexc unwind label %bb.w     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i67
  store ptr %i.dj, ptr %4, align 8, !tbaa !45, !alias.scope !544
  %i.dk = load i64, ptr %i.i, align 8, !tbaa !67, !noalias !544
  store i64 %i.dk, ptr %i.bp, align 8, !tbaa !15, !alias.scope !544
  br label %._crit_edge.i.i.i66

._crit_edge.i.i.i66:                              ; preds = %.noexc, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit65
  %i.dl = phi ptr [ %i.dj, %.noexc ], [ %i.bp, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit65 ] ; 2 uses
  switch i64 %i.dh, label %bb.t [
    i64 1, label %bb.s
    i64 0, label %bb.u
  ]

bb.s:                                             ; preds = %._crit_edge.i.i.i66
  %i.dm = load i8, ptr %i.df, align 1, !tbaa !15
  store i8 %i.dm, ptr %i.dl, align 1, !tbaa !15
  br label %bb.u

bb.t:                                             ; preds = %._crit_edge.i.i.i66
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dl, ptr align 1 %i.df, i64 %i.dh, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %._crit_edge.i.i.i66
  %i.dn = load i64, ptr %i.i, align 8, !tbaa !67, !noalias !544 ; 2 uses
  store i64 %i.dn, ptr %i.bq, align 8, !tbaa !12, !alias.scope !544
  %i.do = load ptr, ptr %4, align 8, !tbaa !45, !alias.scope !544
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dn
  store i8 0, ptr %i.dp, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #22, !noalias !544
  %i.dq = load i64, ptr %i.bq, align 8, !tbaa !12 ; 2 uses
  %i.dr = icmp eq i64 %i.dq, 1
  %.pre262 = load ptr, ptr %4, align 8, !tbaa !45 ; 3 uses
  br i1 %i.dr, label %bb.v, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

bb.v:                                             ; preds = %bb.u
  %lhsc340 = load i8, ptr %.pre262, align 1
  %i.ds = icmp eq i8 %lhsc340, 61
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.v, %bb.u
  %i.dt = phi i1 [ false, %bb.u ], [ %i.ds, %bb.v ]
  %i.du = icmp eq ptr %.pre262, %i.bp
  br i1 %i.du, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.dv = icmp ult i64 %i.dq, 16
  call void @llvm.assume(i1 %i.dv)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.dw = load i64, ptr %i.bp, align 8, !tbaa !15
  %i.dx = add i64 %i.dw, 1
  call void @_ZdlPvm(ptr noundef %.pre262, i64 noundef %i.dx) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %i.dt, label %.loopexit233, label %bb.l, !llvm.loop !547

bb.w:                                             ; preds = %.noexc.i.i67
  %i.dy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.dm

.critedge:                                        ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.dz = load ptr, ptr %i.m, align 8, !tbaa !75, !noalias !548
  %i.ea = ptrtoint ptr %i.dz to i64
  %i.eb = sub i64 %i.ck, %i.ea
  %i.ec = ashr exact i64 %i.eb, 7                 ; 3 uses
  %i.ed = add nsw i64 %i.ec, 1                    ; 3 uses
  %i.ee = icmp sgt i64 %i.ec, -2
  br i1 %i.ee, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %.critedge
  %i.ef = icmp slt i64 %i.ec, 3
  br i1 %i.ef, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ci, i64 128
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit73

bb.z:                                             ; preds = %bb.x
  %i.eh = lshr i64 %i.ed, 2
  br label %bb.ab

bb.aa:                                            ; preds = %.critedge
  %i.ei = ashr i64 %i.ed, 2
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.ej = phi i64 [ %i.eh, %bb.z ], [ %i.ei, %bb.aa ] ; 2 uses
  %i.ek = getelementptr inbounds [8 x i8], ptr %i.bs, i64 %i.ej
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !51, !noalias !548
  %i.em = shl nsw i64 %i.ej, 2
  %i.en = sub nsw i64 %i.ed, %i.em
  %i.eo = getelementptr inbounds [128 x i8], ptr %i.el, i64 %i.en
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit73

_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit73:        ; preds = %bb.y, %bb.ab
  %storemerge.i.i.i.i72 = phi ptr [ %i.eo, %bb.ab ], [ %i.eg, %bb.y ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !551)
  %i.ep = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  store ptr %i.ep, ptr %5, align 8, !tbaa !8, !alias.scope !551
  %i.eq = load ptr, ptr %storemerge.i.i.i.i72, align 8, !tbaa !45, !noalias !551 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i72, i64 8
  %i.es = load i64, ptr %i.er, align 8, !tbaa !12, !noalias !551 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #22, !noalias !551
  store i64 %i.es, ptr %i.h, align 8, !tbaa !67, !noalias !551
  %i.et = icmp ugt i64 %i.es, 15
  br i1 %i.et, label %.noexc.i.i75, label %._crit_edge.i.i.i74

.noexc.i.i75:                                     ; preds = %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit73
  %i.eu = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef 0)
          to label %.noexc76 unwind label %bb.ag  ; 2 uses

.noexc76:                                         ; preds = %.noexc.i.i75
  store ptr %i.eu, ptr %5, align 8, !tbaa !45, !alias.scope !551
  %i.ev = load i64, ptr %i.h, align 8, !tbaa !67, !noalias !551
  store i64 %i.ev, ptr %i.ep, align 8, !tbaa !15, !alias.scope !551
  br label %._crit_edge.i.i.i74

._crit_edge.i.i.i74:                              ; preds = %.noexc76, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit73
  %i.ew = phi ptr [ %i.eu, %.noexc76 ], [ %i.ep, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit73 ] ; 2 uses
  switch i64 %i.es, label %bb.ad [
    i64 1, label %bb.ac
    i64 0, label %bb.ae
  ]

bb.ac:                                            ; preds = %._crit_edge.i.i.i74
  %i.ex = load i8, ptr %i.eq, align 1, !tbaa !15
  store i8 %i.ex, ptr %i.ew, align 1, !tbaa !15
  br label %bb.ae

bb.ad:                                            ; preds = %._crit_edge.i.i.i74
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ew, ptr align 1 %i.eq, i64 %i.es, i1 false)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %._crit_edge.i.i.i74
  %i.ey = load i64, ptr %i.h, align 8, !tbaa !67, !noalias !551 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.ey, ptr %i.ez, align 8, !tbaa !12, !alias.scope !551
  %i.fa = load ptr, ptr %5, align 8, !tbaa !45, !alias.scope !551
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.ey
  store i8 0, ptr %i.fb, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #22, !noalias !551
  %i.fc = load i64, ptr %i.ez, align 8, !tbaa !12 ; 2 uses
  %i.fd = icmp eq i64 %i.fc, 9
  %.pre = load ptr, ptr %5, align 8, !tbaa !45    ; 4 uses
  br i1 %i.fd, label %bb.af, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

bb.af:                                            ; preds = %bb.ae
  %i.fe = load i64, ptr %.pre, align 1
  %i.ff = xor i64 %i.fe, 8028074728749885796
  %i.fg = getelementptr i8, ptr %.pre, i64 8
  %i.fh = load i8, ptr %i.fg, align 1
  %i.fi = zext i8 %i.fh to i64
  %i.fj = xor i64 %i.fi, 110
  %i.fk = or i64 %i.ff, %i.fj
  %i.fl = icmp ne i64 %i.fk, 0                    ; 2 uses
  %i.fm = zext i1 %i.fl to i32                    ; 0 uses
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.af, %bb.ae
  %i.fn = phi i1 [ true, %bb.ae ], [ %i.fl, %bb.af ]
  %i.fo = icmp eq ptr %.pre, %i.ep
  br i1 %i.fo, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i79, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i79: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.fp = icmp ult i64 %i.fc, 16
  call void @llvm.assume(i1 %i.fp)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.fq = load i64, ptr %i.ep, align 8, !tbaa !15
  %i.fr = add i64 %i.fq, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.fr) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i79, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br i1 %i.fn, label %.loopexit233, label %bb.ah

bb.ag:                                            ; preds = %.noexc.i.i75
  %i.fs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.dm

bb.ah:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !64 ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !554 ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fu, i64 8 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.fw, null
  %.pre249 = load ptr, ptr %3, align 8, !tbaa !45 ; 4 uses
  %.pre250 = load i64, ptr %i.ao, align 8, !tbaa !12 ; 8 uses
  br i1 %.not10.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2PP8VariableESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ah, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ], [ %i.fw, %bb.ah ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ], [ %i.fx, %bb.ah ]
  %i.fy = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !12 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.pre250, i64 %i.fz) ; 2 uses
  %i.ga = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.ga, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.gb = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !45
  %i.gd = call i32 @memcmp(ptr noundef %i.gc, ptr noundef %.pre249, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #22 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.gd, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.ge = sub i64 %i.fz, %.pre250
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.ge, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.gd, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.gf = icmp slt i32 %.0.i.i.i.i.i.i, 0         ; 2 uses
  %.19.i.i.i = select i1 %i.gf, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.gf, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !559 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2PP8VariableEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !560

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2PP8VariableEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.gg = icmp eq ptr %.19.i.i.i, %i.fx
  br i1 %i.gg, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2PP8VariableESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2PP8VariableEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.gh = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !12 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.gi, i64 %.pre250) ; 2 uses
  %i.gj = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.gj, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.ai
  %i.gk = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !45
  %i.gm = call i32 @memcmp(ptr noundef %.pre249, ptr noundef %i.gl, i64 noundef %.sroa.speculated.i.i.i.i.i) #22 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.gm, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2PP8VariableESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.ai
  %i.gn = sub i64 %.pre250, %i.gi
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.gn, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2PP8VariableESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2PP8VariableESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.gm, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.go = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.go, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2PP8VariableESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread, label %bb.az

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2PP8VariableESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread: ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2PP8VariableEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, %bb.ah, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2PP8VariableESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.gp = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.gp, ptr %7, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #22
  store i64 %.pre250, ptr %i.g, align 8, !tbaa !67
  %i.gq = icmp ugt i64 %.pre250, 15
  br i1 %i.gq, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2PP8VariableESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread
  %i.gr = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0)
          to label %.noexc84 unwind label %bb.av  ; 2 uses

.noexc84:                                         ; preds = %.noexc.i
  store ptr %i.gr, ptr %7, align 8, !tbaa !45
  %i.gs = load i64, ptr %i.g, align 8, !tbaa !67
  store i64 %i.gs, ptr %i.gp, align 8, !tbaa !15
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc84, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2PP8VariableESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread
  %i.gt = phi ptr [ %i.gr, %.noexc84 ], [ %i.gp, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2PP8VariableESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread ] ; 2 uses
  switch i64 %.pre250, label %bb.ak [
    i64 1, label %bb.aj
    i64 0, label %bb.al
  ]

bb.aj:                                            ; preds = %._crit_edge.i.i
  %i.gu = load i8, ptr %.pre249, align 1, !tbaa !15
  store i8 %i.gu, ptr %i.gt, align 1, !tbaa !15
  br label %bb.al

bb.ak:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gt, ptr align 1 %.pre249, i64 %.pre250, i1 false)
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %._crit_edge.i.i
  %i.gv = load i64, ptr %i.g, align 8, !tbaa !67  ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.gv, ptr %i.gw, align 8, !tbaa !12
  %i.gx = load ptr, ptr %7, align 8, !tbaa !45
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 %i.gv
  store i8 0, ptr %i.gy, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #22
  invoke void @_ZN2PP8VariableC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(136) %6, ptr noundef nonnull %7)
          to label %bb.am unwind label %bb.aw

bb.am:                                            ; preds = %bb.al
  %i.gz = load ptr, ptr %7, align 8, !tbaa !45    ; 2 uses
  %i.ha = icmp eq ptr %i.gz, %i.gp
  br i1 %i.ha, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85: ; preds = %bb.am
  %i.hb = load i64, ptr %i.gp, align 8, !tbaa !15
  %i.hc = add i64 %i.hb, 1
  call void @_ZdlPvm(ptr noundef %i.gz, i64 noundef %i.hc) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85
  %i.hd = load ptr, ptr %i.ft, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !561)
  %i.he = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 12 uses
  store ptr %i.he, ptr %9, align 8, !tbaa !8, !alias.scope !561
  %i.hf = load ptr, ptr %6, align 8, !tbaa !45, !noalias !561 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !12, !noalias !561 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #22, !noalias !561
  store i64 %i.hh, ptr %i.f, align 8, !tbaa !67, !noalias !561
  %i.hi = icmp ugt i64 %i.hh, 15
  br i1 %i.hi, label %.noexc.i.i89, label %._crit_edge.i.i.i88

.noexc.i.i89:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87
  %i.hj = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc90 unwind label %bb.ax  ; 2 uses

.noexc90:                                         ; preds = %.noexc.i.i89
  store ptr %i.hj, ptr %9, align 8, !tbaa !45, !alias.scope !561
  %i.hk = load i64, ptr %i.f, align 8, !tbaa !67, !noalias !561
  store i64 %i.hk, ptr %i.he, align 8, !tbaa !15, !alias.scope !561
  br label %._crit_edge.i.i.i88

._crit_edge.i.i.i88:                              ; preds = %.noexc90, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87
  %i.hl = phi ptr [ %i.hj, %.noexc90 ], [ %i.he, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87 ] ; 2 uses
  switch i64 %i.hh, label %bb.ao [
    i64 1, label %bb.an
    i64 0, label %bb.ap
  ]

bb.an:                                            ; preds = %._crit_edge.i.i.i88
  %i.hm = load i8, ptr %i.hf, align 1, !tbaa !15
  store i8 %i.hm, ptr %i.hl, align 1, !tbaa !15
  br label %bb.ap

bb.ao:                                            ; preds = %._crit_edge.i.i.i88
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hl, ptr align 1 %i.hf, i64 %i.hh, i1 false)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %._crit_edge.i.i.i88
  %i.hn = load i64, ptr %i.f, align 8, !tbaa !67, !noalias !561 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  store i64 %i.hn, ptr %i.ho, align 8, !tbaa !12, !alias.scope !561
  %i.hp = load ptr, ptr %9, align 8, !tbaa !45, !alias.scope !561
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 %i.hn
  store i8 0, ptr %i.hq, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #22, !noalias !561
  %i.hr = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  store ptr %i.hr, ptr %8, align 8, !tbaa !8
  %i.hs = load ptr, ptr %9, align 8, !tbaa !45    ; 2 uses
  %i.ht = icmp eq ptr %i.hs, %i.he
  br i1 %i.ht, label %bb.aq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91

bb.aq:                                            ; preds = %bb.ap
  %i.hu = load i64, ptr %i.ho, align 8, !tbaa !12 ; 3 uses
  %i.hv = icmp ult i64 %i.hu, 16
  call void @llvm.assume(i1 %i.hv)
  %i.hw = add nuw nsw i64 %i.hu, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.hr, ptr noundef nonnull align 8 dereferenceable(1) %i.he, i64 %i.hw, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91: ; preds = %bb.ap
  store ptr %i.hs, ptr %8, align 8, !tbaa !45
  %i.hx = load i64, ptr %i.he, align 8, !tbaa !15
  store i64 %i.hx, ptr %i.hr, align 8, !tbaa !15
  %.pre251 = load i64, ptr %i.ho, align 8, !tbaa !12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91, %bb.aq
  %i.hy = phi i64 [ %.pre251, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91 ], [ %i.hu, %bb.aq ]
  %i.hz = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.hy, ptr %i.hz, align 8, !tbaa !12
  store ptr %i.he, ptr %9, align 8, !tbaa !45
  store i64 0, ptr %i.ho, align 8, !tbaa !12
  store i8 0, ptr %i.he, align 8, !tbaa !15
end_hunk_0
begin_hunk_1_@_ZN2PP3Cmd19check_for_dimensionERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi:bb.a
  %i.jl = ptrtoint ptr %i.jk to i64
  %i.jm = ptrtoint ptr %i.ji to i64
  %i.jn = sub i64 %i.jl, %i.jm
  call void @_ZdlPvm(ptr noundef nonnull %i.ji, i64 noundef %i.jn) #21
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i: ; preds = %bb.au, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.jo = load ptr, ptr %6, align 8, !tbaa !45    ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.jq = icmp eq ptr %i.jo, %i.jp
  br i1 %i.jq, label %_ZN2PP8VariableD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  %i.jr = load i64, ptr %i.jp, align 8, !tbaa !15
  %i.js = add i64 %i.jr, 1
  call void @_ZdlPvm(ptr noundef %i.jo, i64 noundef %i.js) #21
  br label %_ZN2PP8VariableD2Ev.exit

_ZN2PP8VariableD2Ev.exit:                         ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %.pre252 = load ptr, ptr %i.ft, align 8, !tbaa !64 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre252, i64 16
  %.pre253 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !554
  br label %bb.az

bb.av:                                            ; preds = %.noexc.i
  %i.jt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100

bb.aw:                                            ; preds = %bb.al
  %i.ju = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jv = load ptr, ptr %7, align 8, !tbaa !45    ; 2 uses
  %i.jw = icmp eq ptr %i.jv, %i.gp
  br i1 %i.jw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98: ; preds = %bb.aw
  %i.jx = load i64, ptr %i.gp, align 8, !tbaa !15
  %i.jy = add i64 %i.jx, 1
  call void @_ZdlPvm(ptr noundef %i.jv, i64 noundef %i.jy) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100

bb.ax:                                            ; preds = %.noexc.i.i89
  %i.jz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103

bb.ay:                                            ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2PP8VariableEEC2IS5_RS7_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISC_SD_EEEbE4typeELb1EEEOSC_OSD_.exit
  %i.ka = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2PP8VariableEED2Ev(ptr noundef nonnull align 8 dereferenceable(168) %8) #22
  br label %.body

.body:                                            ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.ay
  %.pn44 = phi { ptr, i32 } [ %i.ka, %bb.ay ], [ %i.ib, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.ib, %bb.ar ] ; 2 uses
  %i.kb = load ptr, ptr %9, align 8, !tbaa !45    ; 2 uses
  %i.kc = icmp eq ptr %i.kb, %i.he
  br i1 %i.kc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101: ; preds = %.body
  %i.kd = load i64, ptr %i.he, align 8, !tbaa !15
  %i.ke = add i64 %i.kd, 1
  call void @_ZdlPvm(ptr noundef %i.kb, i64 noundef %i.ke) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101, %bb.ax
  %.pn44.pn = phi { ptr, i32 } [ %i.jz, %bb.ax ], [ %.pn44, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101 ], [ %.pn44, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @_ZN2PP8VariableD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %6) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, %bb.av
  %.pn44.pn.pn = phi { ptr, i32 } [ %.pn44.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103 ], [ %i.jt, %bb.av ], [ %i.ju, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98 ], [ %i.ju, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.dm

bb.az:                                            ; preds = %_ZN2PP8VariableD2Ev.exit, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2PP8VariableESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit
  %i.kf = phi ptr [ %.pre253, %_ZN2PP8VariableD2Ev.exit ], [ %i.fw, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2PP8VariableESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit ] ; 2 uses
  %i.kg = phi ptr [ %.pre252, %_ZN2PP8VariableD2Ev.exit ], [ %i.fu, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2PP8VariableESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit ]
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 8 ; 5 uses
  %.not10.i.i.i104 = icmp eq ptr %i.kf, null
  br i1 %.not10.i.i.i104, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2PP8VariableESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit134, label %.lr.ph.i.i.i105

.lr.ph.i.i.i105:                                  ; preds = %bb.az
  %i.ki = load i64, ptr %i.ao, align 8, !tbaa !12 ; 4 uses
  %i.kj = load ptr, ptr %3, align 8               ; 2 uses
  br label %bb.ba

bb.ba:                                            ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i111, %.lr.ph.i.i.i105
  %.012.i.i.i106 = phi ptr [ %i.kf, %.lr.ph.i.i.i105 ], [ %.1.i.i.i116, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i111 ] ; 4 uses
  %.0811.i.i.i107 = phi ptr [ %i.kh, %.lr.ph.i.i.i105 ], [ %.19.i.i.i113, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i111 ]
  %i.kk = getelementptr inbounds nuw i8, ptr %.012.i.i.i106, i64 40
  %i.kl = load i64, ptr %i.kk, align 8, !tbaa !12 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i108 = call i64 @llvm.umin.i64(i64 %i.ki, i64 %i.kl) ; 2 uses
  %i.km = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i108, 0
  br i1 %i.km, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i130, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i109

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i109: ; preds = %bb.ba
  %i.kn = getelementptr inbounds nuw i8, ptr %.012.i.i.i106, i64 32
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !45
  %i.kp = call i32 @memcmp(ptr noundef %i.ko, ptr noundef %i.kj, i64 noundef %.sroa.speculated.i.i.i.i.i.i108) #22 ; 2 uses
  %.not.i.i.i.i.i.i110 = icmp eq i32 %i.kp, 0
  br i1 %.not.i.i.i.i.i.i110, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i130, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i111

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i130: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i109, %bb.ba
  %i.kq = sub i64 %i.kl, %i.ki
  %spec.select7.i.i.i.i.i.i.i131 = call i64 @llvm.smax.i64(i64 %i.kq, i64 -2147483648)
  %.08.i.i.i.i.i.i.i132 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i131, i64 2147483647)
  %.0.i6.i.i.i.i.i.i133 = trunc nsw i64 %.08.i.i.i.i.i.i.i132 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i111

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i111: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i130, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i109
  %.0.i.i.i.i.i.i112 = phi i32 [ %i.kp, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i109 ], [ %.0.i6.i.i.i.i.i.i133, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i130 ]
  %i.kr = icmp slt i32 %.0.i.i.i.i.i.i112, 0      ; 2 uses
  %.19.i.i.i113 = select i1 %i.kr, ptr %.0811.i.i.i107, ptr %.012.i.i.i106 ; 5 uses
  %.1.in.v.i.i.i114 = select i1 %i.kr, i64 24, i64 16
  %.1.in.i.i.i115 = getelementptr inbounds nuw i8, ptr %.012.i.i.i106, i64 %.1.in.v.i.i.i114
  %.1.i.i.i116 = load ptr, ptr %.1.in.i.i.i115, align 8, !tbaa !559 ; 2 uses
  %.not.i.i.i117 = icmp eq ptr %.1.i.i.i116, null
  br i1 %.not.i.i.i117, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2PP8VariableEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i118, label %bb.ba, !llvm.loop !560

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2PP8VariableEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i118: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i111
  %i.ks = icmp eq ptr %.19.i.i.i113, %i.kh
  br i1 %i.ks, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2PP8VariableESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit134, label %bb.bb

bb.bb:                                            ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2PP8VariableEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i118
  %i.kt = getelementptr inbounds nuw i8, ptr %.19.i.i.i113, i64 40
  %i.ku = load i64, ptr %i.kt, align 8, !tbaa !12 ; 2 uses
  %.sroa.speculated.i.i.i.i.i119 = call i64 @llvm.umin.i64(i64 %i.ku, i64 %i.ki) ; 2 uses
  %i.kv = icmp eq i64 %.sroa.speculated.i.i.i.i.i119, 0
  br i1 %i.kv, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i126, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i120

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i120: ; preds = %bb.bb
  %i.kw = getelementptr inbounds nuw i8, ptr %.19.i.i.i113, i64 32
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !45
  %i.ky = call i32 @memcmp(ptr noundef %i.kj, ptr noundef %i.kx, i64 noundef %.sroa.speculated.i.i.i.i.i119) #22 ; 2 uses
  %.not.i.i.i.i.i121 = icmp eq i32 %i.ky, 0
  br i1 %.not.i.i.i.i.i121, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i126, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i122

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i126: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i120, %bb.bb
  %i.kz = sub i64 %i.ki, %i.ku
  %spec.select7.i.i.i.i.i.i127 = call i64 @llvm.smax.i64(i64 %i.kz, i64 -2147483648)
  %.08.i.i.i.i.i.i128 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i127, i64 2147483647)
  %.0.i6.i.i.i.i.i129 = trunc nsw i64 %.08.i.i.i.i.i.i128 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i122

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i122: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i126, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i120
  %.0.i.i.i.i.i123 = phi i32 [ %i.ky, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i120 ], [ %.0.i6.i.i.i.i.i129, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i126 ]
  %i.la = icmp slt i32 %.0.i.i.i.i.i123, 0
  %spec.select.i.i124 = select i1 %i.la, ptr %i.kh, ptr %.19.i.i.i113
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2PP8VariableESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit134

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2PP8VariableESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit134: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i122, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2PP8VariableEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i118, %bb.az
  %.sroa.0.0.i.i125 = phi ptr [ %i.kh, %bb.az ], [ %i.kh, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2PP8VariableEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i118 ], [ %spec.select.i.i124, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i122 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %i.lb = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 5 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 5 uses
  %i.le = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 5 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  br label %bb.bc

bb.bc:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2PP8VariableESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit134
  %i.lj = phi ptr [ %i.sq, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ null, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2PP8VariableESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit134 ] ; 15 uses
  %i.lk = phi ptr [ %i.sr, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ null, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2PP8VariableESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit134 ] ; 8 uses
  %i.ll = phi ptr [ %i.ss, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ null, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2PP8VariableESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit134 ] ; 8 uses
  %indvars.iv246 = phi i64 [ %indvars.iv.next247, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ 2, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2PP8VariableESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit134 ] ; 10 uses
  %i.lm = load ptr, ptr %i.bm, align 8, !tbaa !76 ; 2 uses
  %i.ln = load ptr, ptr %i.o, align 8, !tbaa !76  ; 3 uses
  %i.lo = ptrtoint ptr %i.lm to i64
  %i.lp = ptrtoint ptr %i.ln to i64
  %i.lq = sub i64 %i.lo, %i.lp
  %i.lr = ashr exact i64 %i.lq, 3
  %i.ls = icmp ne ptr %i.lm, null
  %.neg.i.i135 = sext i1 %i.ls to i64
  %i.lt = add nsw i64 %i.lr, %.neg.i.i135
  %i.lu = shl nsw i64 %i.lt, 2
  %i.lv = load ptr, ptr %i.bl, align 8, !tbaa !71
  %i.lw = load ptr, ptr %i.bn, align 8, !tbaa !75
  %i.lx = ptrtoint ptr %i.lv to i64
  %i.ly = ptrtoint ptr %i.lw to i64
  %i.lz = sub i64 %i.lx, %i.ly
  %i.ma = lshr exact i64 %i.lz, 7
  %i.mb = add nsw i64 %i.lu, %i.ma
  %i.mc = load ptr, ptr %i.bo, align 8, !tbaa !87
  %i.md = load ptr, ptr %i.k, align 8, !tbaa !71  ; 3 uses
  %i.me = ptrtoint ptr %i.mc to i64
  %i.mf = ptrtoint ptr %i.md to i64               ; 3 uses
  %i.mg = sub i64 %i.me, %i.mf
  %i.mh = lshr exact i64 %i.mg, 7
  %i.mi = add nsw i64 %i.mb, %i.mh
  %sext337 = shl i64 %i.mi, 32
  %i.mj = ashr exact i64 %sext337, 32
  %i.mk = icmp slt i64 %indvars.iv246, %i.mj
  %.pre259 = load ptr, ptr %i.m, align 8, !tbaa !75, !noalias !564 ; 2 uses
  br i1 %i.mk, label %bb.bd, label %split

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  %i.ml = ptrtoint ptr %.pre259 to i64
  %i.mm = sub i64 %i.mf, %i.ml
  %i.mn = ashr exact i64 %i.mm, 7
  %i.mo = add nsw i64 %i.mn, %indvars.iv246       ; 5 uses
  %i.mp = icmp sgt i64 %i.mo, -1
  br i1 %i.mp, label %bb.be, label %bb.bh

bb.be:                                            ; preds = %bb.bd
  %i.mq = icmp samesign ult i64 %i.mo, 4
  br i1 %i.mq, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.mr = getelementptr inbounds nuw [128 x i8], ptr %i.md, i64 %indvars.iv246
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit137

bb.bg:                                            ; preds = %bb.be
  %i.ms = lshr i64 %i.mo, 2
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bd
  %i.mt = ashr i64 %i.mo, 2
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.mu = phi i64 [ %i.ms, %bb.bg ], [ %i.mt, %bb.bh ] ; 2 uses
  %i.mv = getelementptr inbounds [8 x i8], ptr %i.ln, i64 %i.mu
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !51, !noalias !567
  %i.mx = shl nsw i64 %i.mu, 2
  %i.my = sub nsw i64 %i.mo, %i.mx
  %i.mz = getelementptr inbounds [128 x i8], ptr %i.mw, i64 %i.my
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit137

_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit137:       ; preds = %bb.bf, %bb.bi
  %storemerge.i.i.i.i136 = phi ptr [ %i.mz, %bb.bi ], [ %i.mr, %bb.bf ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !570)
  store ptr %i.lb, ptr %11, align 8, !tbaa !8, !alias.scope !570
  %i.na = load ptr, ptr %storemerge.i.i.i.i136, align 8, !tbaa !45, !noalias !570 ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i136, i64 8
  %i.nc = load i64, ptr %i.nb, align 8, !tbaa !12, !noalias !570 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #22, !noalias !570
  store i64 %i.nc, ptr %i.e, align 8, !tbaa !67, !noalias !570
  %i.nd = icmp ugt i64 %i.nc, 15
  br i1 %i.nd, label %.noexc.i.i139, label %._crit_edge.i.i.i138

.noexc.i.i139:                                    ; preds = %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit137
  %i.ne = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc140 unwind label %bb.bn ; 2 uses

.noexc140:                                        ; preds = %.noexc.i.i139
  store ptr %i.ne, ptr %11, align 8, !tbaa !45, !alias.scope !570
  %i.nf = load i64, ptr %i.e, align 8, !tbaa !67, !noalias !570
  store i64 %i.nf, ptr %i.lb, align 8, !tbaa !15, !alias.scope !570
  br label %._crit_edge.i.i.i138

._crit_edge.i.i.i138:                             ; preds = %.noexc140, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit137
  %i.ng = phi ptr [ %i.ne, %.noexc140 ], [ %i.lb, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit137 ] ; 2 uses
  switch i64 %i.nc, label %bb.bk [
    i64 1, label %bb.bj
    i64 0, label %bb.bl
  ]

bb.bj:                                            ; preds = %._crit_edge.i.i.i138
  %i.nh = load i8, ptr %i.na, align 1, !tbaa !15
  store i8 %i.nh, ptr %i.ng, align 1, !tbaa !15
  br label %bb.bl

bb.bk:                                            ; preds = %._crit_edge.i.i.i138
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ng, ptr align 1 %i.na, i64 %i.nc, i1 false)
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj, %._crit_edge.i.i.i138
  %i.ni = load i64, ptr %i.e, align 8, !tbaa !67, !noalias !570 ; 2 uses
  store i64 %i.ni, ptr %i.lc, align 8, !tbaa !12, !alias.scope !570
  %i.nj = load ptr, ptr %11, align 8, !tbaa !45, !alias.scope !570
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 %i.ni
  store i8 0, ptr %i.nk, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22, !noalias !570
  %i.nl = load i64, ptr %i.lc, align 8, !tbaa !12 ; 2 uses
  %i.nm = icmp eq i64 %i.nl, 1
  %.pre254 = load ptr, ptr %11, align 8, !tbaa !45 ; 3 uses
  br i1 %i.nm, label %bb.bm, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit143

bb.bm:                                            ; preds = %bb.bl
  %lhsc = load i8, ptr %.pre254, align 1
  %i.nn = icmp eq i8 %lhsc, 40
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit143

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit143: ; preds = %bb.bm, %bb.bl
  %i.no = phi i1 [ false, %bb.bl ], [ %i.nn, %bb.bm ]
  %i.np = icmp eq ptr %.pre254, %i.lb
  br i1 %i.np, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i145, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i145: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit143
  %i.nq = icmp ult i64 %i.nl, 16
  call void @llvm.assume(i1 %i.nq)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit143
  %i.nr = load i64, ptr %i.lb, align 8, !tbaa !15
  %i.ns = add i64 %i.nr, 1
  call void @_ZdlPvm(ptr noundef %.pre254, i64 noundef %i.ns) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i145, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br i1 %i.no, label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit, label %bb.bo

bb.bn:                                            ; preds = %.noexc.i.i139
  %i.nt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %bb.dk

bb.bo:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146
  %i.nu = load ptr, ptr %i.k, align 8, !tbaa !71, !noalias !573 ; 2 uses
  %i.nv = load ptr, ptr %i.m, align 8, !tbaa !75, !noalias !573
  %i.nw = load ptr, ptr %i.o, align 8, !tbaa !76, !noalias !573 ; 2 uses
  %i.nx = ptrtoint ptr %i.nu to i64
  %i.ny = ptrtoint ptr %i.nv to i64
  %i.nz = sub i64 %i.nx, %i.ny
  %i.oa = ashr exact i64 %i.nz, 7
  %i.ob = add nsw i64 %i.oa, %indvars.iv246       ; 7 uses
  %i.oc = icmp sgt i64 %i.ob, -1
  br i1 %i.oc, label %bb.bp, label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit151.thread231

bb.bp:                                            ; preds = %bb.bo
  %i.od = icmp samesign ult i64 %i.ob, 4
  br i1 %i.od, label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit151.thread, label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit151

_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit151:       ; preds = %bb.bp
  %i.oe = lshr i64 %i.ob, 2                       ; 2 uses
  %i.of = getelementptr inbounds nuw [8 x i8], ptr %i.nw, i64 %i.oe
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !51, !noalias !573 ; 2 uses
  %i.oh = and i64 %i.ob, 3
  %i.oi = getelementptr inbounds nuw [128 x i8], ptr %i.og, i64 %i.oh
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 32
  %i.ok = load i32, ptr %i.oj, align 8, !tbaa !107
  %i.ol = icmp eq i32 %i.ok, 12
  br i1 %i.ol, label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit, label %bb.br

_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit151.thread231: ; preds = %bb.bo
  %i.om = ashr i64 %i.ob, 2                       ; 2 uses
  %i.on = getelementptr inbounds [8 x i8], ptr %i.nw, i64 %i.om
  %i.oo = load ptr, ptr %i.on, align 8, !tbaa !51, !noalias !573 ; 2 uses
  %i.op = and i64 %i.ob, 3
  %i.oq = getelementptr inbounds nuw [128 x i8], ptr %i.oo, i64 %i.op
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 32
  %i.os = load i32, ptr %i.or, align 8, !tbaa !107
  %i.ot = icmp eq i32 %i.os, 12
  br i1 %i.ot, label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit, label %bb.br

_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit151.thread: ; preds = %bb.bp
  %i.ou = getelementptr inbounds nuw [128 x i8], ptr %i.nu, i64 %indvars.iv246 ; 2 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 32
  %i.ow = load i32, ptr %i.ov, align 8, !tbaa !107
  %i.ox = icmp eq i32 %i.ow, 12
  br i1 %i.ox, label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit, label %bb.bq

bb.bq:                                            ; preds = %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit151.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit153

bb.br:                                            ; preds = %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit151.thread231, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit151
  %i.oy = phi ptr [ %i.og, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit151 ], [ %i.oo, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit151.thread231 ]
  %i.oz = phi i64 [ %i.oe, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit151 ], [ %i.om, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit151.thread231 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  %i.pa = shl nsw i64 %i.oz, 2
  %i.pb = sub nsw i64 %i.ob, %i.pa
  %i.pc = getelementptr inbounds [128 x i8], ptr %i.oy, i64 %i.pb
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit153

_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit153:       ; preds = %bb.bq, %bb.br
  %storemerge.i.i.i.i152 = phi ptr [ %i.pc, %bb.br ], [ %i.ou, %bb.bq ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !576)
  store ptr %i.ld, ptr %12, align 8, !tbaa !8, !alias.scope !576
  %i.pd = load ptr, ptr %storemerge.i.i.i.i152, align 8, !tbaa !45, !noalias !576 ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i152, i64 8
  %i.pf = load i64, ptr %i.pe, align 8, !tbaa !12, !noalias !576 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22, !noalias !576
  store i64 %i.pf, ptr %i.d, align 8, !tbaa !67, !noalias !576
  %i.pg = icmp ugt i64 %i.pf, 15
  br i1 %i.pg, label %.noexc.i.i155, label %._crit_edge.i.i.i154

.noexc.i.i155:                                    ; preds = %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit153
  %i.ph = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc156 unwind label %bb.bw ; 2 uses

.noexc156:                                        ; preds = %.noexc.i.i155
  store ptr %i.ph, ptr %12, align 8, !tbaa !45, !alias.scope !576
  %i.pi = load i64, ptr %i.d, align 8, !tbaa !67, !noalias !576
  store i64 %i.pi, ptr %i.ld, align 8, !tbaa !15, !alias.scope !576
  br label %._crit_edge.i.i.i154

._crit_edge.i.i.i154:                             ; preds = %.noexc156, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit153
  %i.pj = phi ptr [ %i.ph, %.noexc156 ], [ %i.ld, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit153 ] ; 2 uses
  switch i64 %i.pf, label %bb.bt [
    i64 1, label %bb.bs
    i64 0, label %bb.bu
  ]

bb.bs:                                            ; preds = %._crit_edge.i.i.i154
  %i.pk = load i8, ptr %i.pd, align 1, !tbaa !15
  store i8 %i.pk, ptr %i.pj, align 1, !tbaa !15
  br label %bb.bu

bb.bt:                                            ; preds = %._crit_edge.i.i.i154
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.pj, ptr align 1 %i.pd, i64 %i.pf, i1 false)
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs, %._crit_edge.i.i.i154
  %i.pl = load i64, ptr %i.d, align 8, !tbaa !67, !noalias !576 ; 2 uses
  store i64 %i.pl, ptr %i.le, align 8, !tbaa !12, !alias.scope !576
  %i.pm = load ptr, ptr %12, align 8, !tbaa !45, !alias.scope !576
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 %i.pl
  store i8 0, ptr %i.pn, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22, !noalias !576
  %i.po = load i64, ptr %i.le, align 8, !tbaa !12 ; 2 uses
  %i.pp = icmp eq i64 %i.po, 1
  %.pre255 = load ptr, ptr %12, align 8, !tbaa !45 ; 3 uses
  br i1 %i.pp, label %bb.bv, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit159

bb.bv:                                            ; preds = %bb.bu
  %lhsc338 = load i8, ptr %.pre255, align 1
  %i.pq = icmp eq i8 %lhsc338, 58
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit159

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit159: ; preds = %bb.bv, %bb.bu
  %i.pr = phi i1 [ false, %bb.bu ], [ %i.pq, %bb.bv ]
  %i.ps = icmp eq ptr %.pre255, %i.ld
  br i1 %i.ps, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i161, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i161: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit159
  %i.pt = icmp ult i64 %i.po, 16
  call void @llvm.assume(i1 %i.pt)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit159
  %i.pu = load i64, ptr %i.ld, align 8, !tbaa !15
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
  %i.px = load ptr, ptr %i.k, align 8, !tbaa !71, !noalias !579 ; 2 uses
  %i.py = load ptr, ptr %i.m, align 8, !tbaa !75, !noalias !579
  %i.pz = load ptr, ptr %i.o, align 8, !tbaa !76, !noalias !579
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
  %i.qm = load ptr, ptr %i.ql, align 8, !tbaa !51, !noalias !579
  %i.qn = shl nsw i64 %i.qk, 2
  %i.qo = sub nsw i64 %i.qe, %i.qn
  %i.qp = getelementptr inbounds [128 x i8], ptr %i.qm, i64 %i.qo
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit167

_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit167:       ; preds = %bb.bz, %bb.cc
  %storemerge.i.i.i.i166 = phi ptr [ %i.qp, %bb.cc ], [ %i.qh, %bb.bz ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !582)
  store ptr %i.lf, ptr %13, align 8, !tbaa !8, !alias.scope !582
  %i.qq = load ptr, ptr %storemerge.i.i.i.i166, align 8, !tbaa !45, !noalias !582 ; 2 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i166, i64 8
  %i.qs = load i64, ptr %i.qr, align 8, !tbaa !12, !noalias !582 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22, !noalias !582
  store i64 %i.qs, ptr %i.c, align 8, !tbaa !67, !noalias !582
  %i.qt = icmp ugt i64 %i.qs, 15
  br i1 %i.qt, label %.noexc.i.i169, label %._crit_edge.i.i.i168

.noexc.i.i169:                                    ; preds = %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit167
  %i.qu = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc170 unwind label %bb.ch ; 2 uses

.noexc170:                                        ; preds = %.noexc.i.i169
  store ptr %i.qu, ptr %13, align 8, !tbaa !45, !alias.scope !582
  %i.qv = load i64, ptr %i.c, align 8, !tbaa !67, !noalias !582
  store i64 %i.qv, ptr %i.lf, align 8, !tbaa !15, !alias.scope !582
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
  %i.qy = load i64, ptr %i.c, align 8, !tbaa !67, !noalias !582 ; 2 uses
  store i64 %i.qy, ptr %i.lg, align 8, !tbaa !12, !alias.scope !582
  %i.qz = load ptr, ptr %13, align 8, !tbaa !45, !alias.scope !582
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 %i.qy
  store i8 0, ptr %i.ra, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22, !noalias !582
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
  %.pre257 = load ptr, ptr %i.k, align 8, !tbaa !71, !noalias !564 ; 3 uses
  %.pre258 = load ptr, ptr %i.m, align 8, !tbaa !75, !noalias !564 ; 2 uses
  %.pre260 = load ptr, ptr %i.o, align 8, !tbaa !76, !noalias !564 ; 2 uses
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
  %i.rv = load ptr, ptr %i.ru, align 8, !tbaa !51, !noalias !585
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
  store ptr %i.sa, ptr %i.lh, align 8, !tbaa !293
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
  %i.sf = ashr exact i64 %i.sd, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.sf, i64 1)
  %i.sg = add nsw i64 %.sroa.speculated.i.i.i.i, %i.sf ; 2 uses
  %i.sh = icmp ult i64 %i.sg, %i.sf
  %i.si = call i64 @llvm.umin.i64(i64 %i.sg, i64 2305843009213693951)
  %i.sj = select i1 %i.sh, i64 2305843009213693951, i64 %i.si ; 3 uses
  %.not.i.i.i.i182 = icmp ne i64 %i.sj, 0
  call void @llvm.assume(i1 %.not.i.i.i.i182)
  %i.sk = shl nuw nsw i64 %i.sj, 2
  %i.sl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.sk) #25
          to label %.noexc184 unwind label %.loopexit ; 5 uses

.noexc184:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.sm = getelementptr inbounds i8, ptr %i.sl, i64 %i.sd ; 2 uses
  store i32 %i.rz, ptr %i.sm, align 4, !tbaa !4
  %i.sn = icmp sgt i64 %i.sd, 0
  br i1 %i.sn, label %bb.cs, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.cs:                                            ; preds = %.noexc184
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.sl, ptr align 4 %i.lj, i64 %i.sd, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.cs, %.noexc184
  %i.so = getelementptr inbounds nuw i8, ptr %i.sm, i64 4 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.lj, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.ct

bb.ct:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.lj, i64 noundef %i.sd) #21
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.ct, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  store ptr %i.sl, ptr %10, align 8, !tbaa !295
  store ptr %i.so, ptr %i.lh, align 8, !tbaa !293
  %i.sp = getelementptr inbounds nuw [4 x i8], ptr %i.sl, i64 %i.sj ; 2 uses
  store ptr %i.sp, ptr %i.li, align 8, !tbaa !296
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit151.thread231, %bb.cp, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit151.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit151, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146
  %i.sq = phi ptr [ %i.lj, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit151.thread231 ], [ %i.lj, %bb.cp ], [ %i.sl, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.lj, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit151.thread ], [ %i.lj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162 ], [ %i.lj, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit151 ], [ %i.lj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146 ]
  %i.sr = phi ptr [ %i.lk, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit151.thread231 ], [ %i.lk, %bb.cp ], [ %i.sp, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.lk, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit151.thread ], [ %i.lk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162 ], [ %i.lk, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit151 ], [ %i.lk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146 ]
  %i.ss = phi ptr [ %i.ll, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit151.thread231 ], [ %i.sa, %bb.cp ], [ %i.so, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.ll, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit151.thread ], [ %i.ll, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162 ], [ %i.ll, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit151 ], [ %i.ll, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146 ]
  %indvars.iv.next247 = add nuw nsw i64 %indvars.iv246, 1
  br label %bb.bc, !llvm.loop !588

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
  %i.st = phi ptr [ %.pre260, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176 ], [ %i.ln, %bb.bc ] ; 2 uses
  %i.su = phi ptr [ %.pre258, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176 ], [ %.pre259, %bb.bc ]
  %i.sv = phi ptr [ %.pre257, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176 ], [ %i.md, %bb.bc ] ; 3 uses
  %i.sw = ptrtoint ptr %i.su to i64
  %i.sx = sub i64 %.pre-phi267, %i.sw             ; 2 uses
  %i.sy = ashr exact i64 %i.sx, 7                 ; 6 uses
  %i.sz = icmp sgt i64 %i.sy, -1
  br i1 %i.sz, label %bb.cu, label %bb.cx

bb.cu:                                            ; preds = %split
  %i.ta = icmp samesign ult i64 %i.sy, 4
  br i1 %i.ta, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.tb = getelementptr inbounds nuw i8, ptr %i.sv, i64 80
  %i.tc = load i32, ptr %i.tb, align 8, !tbaa !445
  %i.td = getelementptr inbounds nuw i8, ptr %i.sv, i64 84
  %i.te = load i32, ptr %i.td, align 4, !tbaa !431
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit190

bb.cw:                                            ; preds = %bb.cu
  %i.tf = lshr i64 %i.sy, 2
  %i.tg = getelementptr inbounds nuw [8 x i8], ptr %i.st, i64 %i.tf
  %i.th = load ptr, ptr %i.tg, align 8, !tbaa !51, !noalias !564 ; 2 uses
  %i.ti = and i64 %i.sy, 3
  %i.tj = getelementptr inbounds nuw [128 x i8], ptr %i.th, i64 %i.ti ; 2 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 80
  %i.tl = load i32, ptr %i.tk, align 8, !tbaa !445
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tj, i64 84
  %i.tn = load i32, ptr %i.tm, align 4, !tbaa !431
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  %.pre264 = and i64 %i.sy, 3
  br label %bb.cy

bb.cx:                                            ; preds = %split
  %i.to = ashr i64 %i.sx, 9                       ; 2 uses
  %i.tp = getelementptr inbounds [8 x i8], ptr %i.st, i64 %i.to
  %i.tq = load ptr, ptr %i.tp, align 8, !tbaa !51, !noalias !564 ; 2 uses
  %i.tr = shl nsw i64 %i.to, 2
  %i.ts = sub nsw i64 %i.sy, %i.tr                ; 2 uses
  %i.tt = getelementptr inbounds [128 x i8], ptr %i.tq, i64 %i.ts ; 2 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 80
  %i.tv = load i32, ptr %i.tu, align 8, !tbaa !445
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tt, i64 84
  %i.tx = load i32, ptr %i.tw, align 4, !tbaa !431
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %.pre-phi265 = phi i64 [ %i.ts, %bb.cx ], [ %.pre264, %bb.cw ]
  %i.ty = phi ptr [ %i.tq, %bb.cx ], [ %i.th, %bb.cw ]
  %i.tz = phi i32 [ %i.tx, %bb.cx ], [ %i.tn, %bb.cw ]
  %i.ua = phi i32 [ %i.tv, %bb.cx ], [ %i.tl, %bb.cw ]
  %i.ub = getelementptr inbounds [128 x i8], ptr %i.ty, i64 %.pre-phi265
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit190

_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit190:       ; preds = %bb.cv, %bb.cy
  %i.uc = phi i32 [ %i.tz, %bb.cy ], [ %i.te, %bb.cv ]
  %i.ud = phi i32 [ %i.ua, %bb.cy ], [ %i.tc, %bb.cv ]
  %storemerge.i.i.i.i189 = phi ptr [ %i.ub, %bb.cy ], [ %i.sv, %bb.cv ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !589)
  %i.ue = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i189, i64 88
  %i.uf = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 7 uses
  store ptr %i.uf, ptr %14, align 8, !tbaa !8, !alias.scope !589
  %i.ug = load ptr, ptr %i.ue, align 8, !tbaa !45, !noalias !589 ; 2 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i189, i64 96
  %i.ui = load i64, ptr %i.uh, align 8, !tbaa !12, !noalias !589 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22, !noalias !589
  store i64 %i.ui, ptr %i.b, align 8, !tbaa !67, !noalias !589
  %i.uj = icmp ugt i64 %i.ui, 15
  br i1 %i.uj, label %.noexc.i.i192, label %._crit_edge.i.i.i191

.noexc.i.i192:                                    ; preds = %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit190
  %i.uk = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc193 unwind label %bb.dh ; 2 uses

.noexc193:                                        ; preds = %.noexc.i.i192
  store ptr %i.uk, ptr %14, align 8, !tbaa !45, !alias.scope !589
  %i.ul = load i64, ptr %i.b, align 8, !tbaa !67, !noalias !589
  store i64 %i.ul, ptr %i.uf, align 8, !tbaa !15, !alias.scope !589
  br label %._crit_edge.i.i.i191

._crit_edge.i.i.i191:                             ; preds = %.noexc193, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit190
  %i.um = phi ptr [ %i.uk, %.noexc193 ], [ %i.uf, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit190 ] ; 2 uses
  switch i64 %i.ui, label %bb.da [
    i64 1, label %bb.cz
    i64 0, label %bb.db
  ]

bb.cz:                                            ; preds = %._crit_edge.i.i.i191
  %i.un = load i8, ptr %i.ug, align 1, !tbaa !15
  store i8 %i.un, ptr %i.um, align 1, !tbaa !15
  br label %bb.db

bb.da:                                            ; preds = %._crit_edge.i.i.i191
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.um, ptr align 1 %i.ug, i64 %i.ui, i1 false)
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz, %._crit_edge.i.i.i191
  %i.uo = load i64, ptr %i.b, align 8, !tbaa !67, !noalias !589 ; 2 uses
  %i.up = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store i64 %i.uo, ptr %i.up, align 8, !tbaa !12, !alias.scope !589
  %i.uq = load ptr, ptr %14, align 8, !tbaa !45, !alias.scope !589
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uq, i64 %i.uo
  store i8 0, ptr %i.ur, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22, !noalias !589
  %i.us = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 7 uses
  store ptr %i.us, ptr %15, align 8, !tbaa !8
  %i.ut = load ptr, ptr %14, align 8, !tbaa !45   ; 2 uses
  %i.uu = load i64, ptr %i.up, align 8, !tbaa !12 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.uu, ptr %i.a, align 8, !tbaa !67
  %i.uv = icmp ugt i64 %i.uu, 15
  br i1 %i.uv, label %.noexc.i195, label %._crit_edge.i.i194

.noexc.i195:                                      ; preds = %bb.db
  %i.uw = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc196 unwind label %bb.di ; 2 uses

.noexc196:                                        ; preds = %.noexc.i195
  store ptr %i.uw, ptr %15, align 8, !tbaa !45
  %i.ux = load i64, ptr %i.a, align 8, !tbaa !67
  store i64 %i.ux, ptr %i.us, align 8, !tbaa !15
  br label %._crit_edge.i.i194

._crit_edge.i.i194:                               ; preds = %.noexc196, %bb.db
  %i.uy = phi ptr [ %i.uw, %.noexc196 ], [ %i.us, %bb.db ] ; 2 uses
  switch i64 %i.uu, label %bb.dd [
    i64 1, label %bb.dc
    i64 0, label %bb.de
  ]

bb.dc:                                            ; preds = %._crit_edge.i.i194
  %i.uz = load i8, ptr %i.ut, align 1, !tbaa !15
  store i8 %i.uz, ptr %i.uy, align 1, !tbaa !15
  br label %bb.de

bb.dd:                                            ; preds = %._crit_edge.i.i194
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.uy, ptr align 1 %i.ut, i64 %i.uu, i1 false)
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc, %._crit_edge.i.i194
  %i.va = load i64, ptr %i.a, align 8, !tbaa !67  ; 2 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %i.va, ptr %i.vb, align 8, !tbaa !12
  %i.vc = load ptr, ptr %15, align 8, !tbaa !45
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vc, i64 %i.va
  store i8 0, ptr %i.vd, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.ve = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i125, i64 64
  %i.vf = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.vg = load ptr, ptr %i.vf, align 8, !tbaa !66
  invoke void @_ZN2PP8Variable10set_boundsERSt6vectorIiSaIiEEiiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt5dequeISA_SaISA_EERNS5_18basic_stringstreamIcS8_S9_EERi(ptr noundef nonnull align 8 dereferenceable(136) %i.ve, ptr noundef nonnull align 8 dereferenceable(24) %10, i32 noundef %i.ud, i32 noundef %i.uc, ptr noundef nonnull %15, ptr noundef %i.vg, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %bb.df unwind label %bb.dj

bb.df:                                            ; preds = %bb.de
  %i.vh = load ptr, ptr %15, align 8, !tbaa !45   ; 2 uses
  %i.vi = icmp eq ptr %i.vh, %i.us
  br i1 %i.vi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198: ; preds = %bb.df
  %i.vj = load i64, ptr %i.us, align 8, !tbaa !15
  %i.vk = add i64 %i.vj, 1
  call void @_ZdlPvm(ptr noundef %i.vh, i64 noundef %i.vk) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200: ; preds = %bb.df, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198
  %i.vl = load ptr, ptr %14, align 8, !tbaa !45   ; 2 uses
  %i.vm = icmp eq ptr %i.vl, %i.uf
  br i1 %i.vm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i201

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i201: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200
  %i.vn = load i64, ptr %i.uf, align 8, !tbaa !15
  %i.vo = add i64 %i.vn, 1
  call void @_ZdlPvm(ptr noundef %i.vl, i64 noundef %i.vo) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i201
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  %i.vp = load ptr, ptr %10, align 8, !tbaa !295  ; 3 uses
  %.not.i.i.i204 = icmp eq ptr %i.vp, null
  br i1 %.not.i.i.i204, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.dg

bb.dg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203
  %i.vq = load ptr, ptr %i.li, align 8, !tbaa !296
  %i.vr = ptrtoint ptr %i.vq to i64
  %i.vs = ptrtoint ptr %i.vp to i64
  %i.vt = sub i64 %i.vr, %i.vs
  call void @_ZdlPvm(ptr noundef nonnull %i.vp, i64 noundef %i.vt) #21
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203, %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %.loopexit233

bb.dh:                                            ; preds = %.noexc.i.i192
  %i.vu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210

bb.di:                                            ; preds = %.noexc.i195
  %i.vv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207

bb.dj:                                            ; preds = %bb.de
  %i.vw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.vx = load ptr, ptr %15, align 8, !tbaa !45   ; 2 uses
  %i.vy = icmp eq ptr %i.vx, %i.us
  br i1 %i.vy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205: ; preds = %bb.dj
  %i.vz = load i64, ptr %i.us, align 8, !tbaa !15
  %i.wa = add i64 %i.vz, 1
  call void @_ZdlPvm(ptr noundef %i.vx, i64 noundef %i.wa) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207: ; preds = %bb.dj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205, %bb.di
  %.pn56 = phi { ptr, i32 } [ %i.vv, %bb.di ], [ %i.vw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205 ], [ %i.vw, %bb.dj ] ; 2 uses
  %i.wb = load ptr, ptr %14, align 8, !tbaa !45   ; 2 uses
  %i.wc = icmp eq ptr %i.wb, %i.uf
  br i1 %i.wc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207
  %i.wd = load i64, ptr %i.uf, align 8, !tbaa !15
  %i.we = add i64 %i.wd, 1
  call void @_ZdlPvm(ptr noundef %i.wb, i64 noundef %i.we) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208, %bb.dh
  %.pn56.pn = phi { ptr, i32 } [ %i.vu, %bb.dh ], [ %.pn56, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208 ], [ %.pn56, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  %.pre261 = load ptr, ptr %10, align 8, !tbaa !295
  br label %bb.dk

bb.dk:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.bn, %bb.bw, %bb.ch, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210
  %i.wf = phi ptr [ %.pre261, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210 ], [ %i.lj, %bb.bn ], [ %i.lj, %bb.ch ], [ %i.lj, %bb.bw ], [ %i.lj, %.loopexit ], [ %i.lj, %.loopexit.split-lp ] ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN2PP3Cmd25check_for_var_descriptionERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi:bb.a
.noexc224:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i219
  %i.ly = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.lx)
          to label %_ZNSolsEPFRSoS_E.exit65 unwind label %bb.bi ; 0 uses

_ZNSolsEPFRSoS_E.exit65:                          ; preds = %.noexc224
  %i.lz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ji, ptr noundef nonnull @.str.71, i64 noundef 25)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66 unwind label %bb.bi ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66: ; preds = %_ZNSolsEPFRSoS_E.exit65
  %i.ma = load ptr, ptr %i.ji, align 8, !tbaa !147
  %i.mb = getelementptr i8, ptr %i.ma, i64 -24
  %i.mc = load i64, ptr %i.mb, align 8
  %i.md = getelementptr inbounds i8, ptr %i.ji, i64 %i.mc
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 240
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !149 ; 6 uses
  %.not.i.i.i227 = icmp eq ptr %i.mf, null
  br i1 %.not.i.i.i227, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i228

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i228: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 56
  %i.mh = load i8, ptr %i.mg, align 8, !tbaa !164
  %.not.i1.i.i229 = icmp eq i8 %i.mh, 0
  br i1 %.not.i1.i.i229, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i228
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mf, i64 67
  %i.mj = load i8, ptr %i.mi, align 1, !tbaa !15
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i230

bb.bf:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i228
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.mf)
          to label %.noexc233 unwind label %bb.bi

.noexc233:                                        ; preds = %bb.bf
  %i.mk = load ptr, ptr %i.mf, align 8, !tbaa !147
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 48
  %i.mm = load ptr, ptr %i.ml, align 8
  %i.mn = invoke noundef signext i8 %i.mm(ptr noundef nonnull align 8 dereferenceable(570) %i.mf, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i230 unwind label %bb.bi, !inline_history !170

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i230: ; preds = %.noexc233, %bb.be
  %.0.i.i.i231 = phi i8 [ %i.mj, %bb.be ], [ %i.mn, %.noexc233 ]
  %i.mo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ji, i8 noundef signext %.0.i.i.i231)
          to label %.noexc235 unwind label %bb.bi

.noexc235:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i230
  %i.mp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.mo)
          to label %_ZNSolsEPFRSoS_E.exit67 unwind label %bb.bi ; 0 uses

_ZNSolsEPFRSoS_E.exit67:                          ; preds = %.noexc235
  %i.mq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ji, ptr noundef nonnull @.str.72, i64 noundef 16)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit68 unwind label %bb.bi ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit68: ; preds = %_ZNSolsEPFRSoS_E.exit67
  %i.mr = load ptr, ptr %4, align 8, !tbaa !45
  %i.ms = load i64, ptr %i.hz, align 8, !tbaa !12
  %i.mt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ji, ptr noundef %i.mr, i64 noundef %i.ms)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.bi ; 3 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit68
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !147
  %i.mv = getelementptr i8, ptr %i.mu, i64 -24
  %i.mw = load i64, ptr %i.mv, align 8
  %i.mx = getelementptr inbounds i8, ptr %i.mt, i64 %i.mw
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 240
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !149 ; 6 uses
  %.not.i.i.i238 = icmp eq ptr %i.mz, null
  br i1 %.not.i.i.i238, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i239

.invoke:                                          ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  invoke void @_ZSt16__throw_bad_castv() #24
          to label %.cont unwind label %bb.bi

.cont:                                            ; preds = %.invoke
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i239: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 56
  %i.nb = load i8, ptr %i.na, align 8, !tbaa !164
  %.not.i1.i.i240 = icmp eq i8 %i.nb, 0
  br i1 %.not.i1.i.i240, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i239
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mz, i64 67
  %i.nd = load i8, ptr %i.nc, align 1, !tbaa !15
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i241

bb.bh:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i239
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.mz)
          to label %.noexc244 unwind label %bb.bi

.noexc244:                                        ; preds = %bb.bh
  %i.ne = load ptr, ptr %i.mz, align 8, !tbaa !147
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 48
  %i.ng = load ptr, ptr %i.nf, align 8
  %i.nh = invoke noundef signext i8 %i.ng(ptr noundef nonnull align 8 dereferenceable(570) %i.mz, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i241 unwind label %bb.bi, !inline_history !170

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i241: ; preds = %.noexc244, %bb.bg
  %.0.i.i.i242 = phi i8 [ %i.nd, %bb.bg ], [ %i.nh, %.noexc244 ]
  %i.ni = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.mt, i8 noundef signext %.0.i.i.i242)
          to label %.noexc246 unwind label %bb.bi

.noexc246:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i241
  %i.nj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ni)
          to label %_ZNSolsEPFRSoS_E.exit69 unwind label %bb.bi ; 0 uses

_ZNSolsEPFRSoS_E.exit69:                          ; preds = %.noexc246
  store i32 2, ptr %2, align 4, !tbaa !4
  br label %bb.dd

bb.bi:                                            ; preds = %.invoke, %.noexc246, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i241, %.noexc244, %bb.bh, %.noexc235, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i230, %.noexc233, %bb.bf, %.noexc224, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i219, %.noexc222, %bb.bd, %.noexc213, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i208, %.noexc211, %bb.bb, %.noexc202, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i197, %.noexc200, %bb.az, %.noexc191, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc189, %bb.ax, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit68, %_ZNSolsEPFRSoS_E.exit67, %_ZNSolsEPFRSoS_E.exit65, %_ZNSolsEPFRSoS_E.exit63, %_ZNSolsEPFRSoS_E.exit61, %_ZNSolsEPFRSoS_E.exit, %bb.av, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit59
  %i.nk = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

bb.bj:                                            ; preds = %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit57
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.nl = add nsw i64 %i.ii, 2                    ; 3 uses
  %i.nm = icmp sgt i64 %i.ii, -3
  br i1 %i.nm, label %bb.bk, label %bb.bn

bb.bk:                                            ; preds = %bb.bj
  %i.nn = icmp slt i64 %i.ii, 2
  br i1 %i.nn, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.no = getelementptr inbounds nuw i8, ptr %i.ic, i64 256
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit71

bb.bm:                                            ; preds = %bb.bk
  %i.np = lshr i64 %i.nl, 2
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bj
  %i.nq = ashr i64 %i.nl, 2
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.nr = phi i64 [ %i.np, %bb.bm ], [ %i.nq, %bb.bn ] ; 2 uses
  %i.ns = getelementptr inbounds [8 x i8], ptr %i.ie, i64 %i.nr
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !51, !noalias !613
  %i.nu = shl nsw i64 %i.nr, 2
  %i.nv = sub nsw i64 %i.nl, %i.nu
  %i.nw = getelementptr inbounds [128 x i8], ptr %i.nt, i64 %i.nv
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit71

_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit71:        ; preds = %bb.bl, %bb.bo
  %storemerge.i.i.i.i70 = phi ptr [ %i.nw, %bb.bo ], [ %i.no, %bb.bl ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !616)
  %i.nx = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.nx, ptr %5, align 8, !tbaa !8, !alias.scope !616
  %i.ny = load ptr, ptr %storemerge.i.i.i.i70, align 8, !tbaa !45, !noalias !616 ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i70, i64 8
  %i.oa = load i64, ptr %i.nz, align 8, !tbaa !12, !noalias !616 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22, !noalias !616
  store i64 %i.oa, ptr %i.d, align 8, !tbaa !67, !noalias !616
  %i.ob = icmp ugt i64 %i.oa, 15
  br i1 %i.ob, label %.noexc.i.i73, label %._crit_edge.i.i.i72

.noexc.i.i73:                                     ; preds = %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit71
  %i.oc = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc unwind label %bb.cf    ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i73
  store ptr %i.oc, ptr %5, align 8, !tbaa !45, !alias.scope !616
  %i.od = load i64, ptr %i.d, align 8, !tbaa !67, !noalias !616
  store i64 %i.od, ptr %i.nx, align 8, !tbaa !15, !alias.scope !616
  br label %._crit_edge.i.i.i72

._crit_edge.i.i.i72:                              ; preds = %.noexc, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit71
  %i.oe = phi ptr [ %i.oc, %.noexc ], [ %i.nx, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit71 ] ; 2 uses
  switch i64 %i.oa, label %bb.bq [
    i64 1, label %bb.bp
    i64 0, label %bb.br
  ]

bb.bp:                                            ; preds = %._crit_edge.i.i.i72
  %i.of = load i8, ptr %i.ny, align 1, !tbaa !15
  store i8 %i.of, ptr %i.oe, align 1, !tbaa !15
  br label %bb.br

bb.bq:                                            ; preds = %._crit_edge.i.i.i72
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.oe, ptr align 1 %i.ny, i64 %i.oa, i1 false)
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp, %._crit_edge.i.i.i72
  %i.og = load i64, ptr %i.d, align 8, !tbaa !67, !noalias !616 ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.og, ptr %i.oh, align 8, !tbaa !12, !alias.scope !616
  %i.oi = load ptr, ptr %5, align 8, !tbaa !45, !alias.scope !616
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 %i.og
  store i8 0, ptr %i.oj, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22, !noalias !616
  %i.ok = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !64 ; 3 uses
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 16
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !554 ; 3 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.ol, i64 8 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.on, null
  %.pre275 = load ptr, ptr %4, align 8, !tbaa !45 ; 4 uses
  %.pre276 = load i64, ptr %i.hz, align 8, !tbaa !12 ; 8 uses
  br i1 %.not10.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2PP8VariableESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.br, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ], [ %i.on, %bb.br ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ], [ %i.oo, %bb.br ]
  %i.op = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.oq = load i64, ptr %i.op, align 8, !tbaa !12 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.pre276, i64 %i.oq) ; 2 uses
  %i.or = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.or, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.os = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !45
  %i.ou = call i32 @memcmp(ptr noundef %i.ot, ptr noundef %.pre275, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #22 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.ou, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.ov = sub i64 %i.oq, %.pre276
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.ov, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.ou, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.ow = icmp slt i32 %.0.i.i.i.i.i.i, 0         ; 2 uses
  %.19.i.i.i = select i1 %i.ow, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.ow, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !559 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2PP8VariableEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !560

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2PP8VariableEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.ox = icmp eq ptr %.19.i.i.i, %i.oo
  br i1 %i.ox, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2PP8VariableESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread, label %bb.bs

bb.bs:                                            ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2PP8VariableEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.oy = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.oz = load i64, ptr %i.oy, align 8, !tbaa !12 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.oz, i64 %.pre276) ; 2 uses
  %i.pa = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.pa, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.bs
  %i.pb = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !45
  %i.pd = call i32 @memcmp(ptr noundef %.pre275, ptr noundef %i.pc, i64 noundef %.sroa.speculated.i.i.i.i.i) #22 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.pd, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2PP8VariableESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.bs
  %i.pe = sub i64 %.pre276, %i.oz
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.pe, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2PP8VariableESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2PP8VariableESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.pd, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.pf = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.pf, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2PP8VariableESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread, label %bb.ck

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2PP8VariableESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread: ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2PP8VariableEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, %bb.br, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2PP8VariableESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.pg = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.pg, ptr %7, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store i64 %.pre276, ptr %i.c, align 8, !tbaa !67
  %i.ph = icmp ugt i64 %.pre276, 15
  br i1 %i.ph, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2PP8VariableESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread
  %i.pi = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc75 unwind label %bb.cg  ; 2 uses

.noexc75:                                         ; preds = %.noexc.i
  store ptr %i.pi, ptr %7, align 8, !tbaa !45
  %i.pj = load i64, ptr %i.c, align 8, !tbaa !67
  store i64 %i.pj, ptr %i.pg, align 8, !tbaa !15
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc75, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2PP8VariableESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread
  %i.pk = phi ptr [ %i.pi, %.noexc75 ], [ %i.pg, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2PP8VariableESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread ] ; 2 uses
  switch i64 %.pre276, label %bb.bu [
    i64 1, label %bb.bt
    i64 0, label %bb.bv
  ]

bb.bt:                                            ; preds = %._crit_edge.i.i
  %i.pl = load i8, ptr %.pre275, align 1, !tbaa !15
  store i8 %i.pl, ptr %i.pk, align 1, !tbaa !15
  br label %bb.bv

bb.bu:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.pk, ptr align 1 %.pre275, i64 %.pre276, i1 false)
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt, %._crit_edge.i.i
  %i.pm = load i64, ptr %i.c, align 8, !tbaa !67  ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.pm, ptr %i.pn, align 8, !tbaa !12
  %i.po = load ptr, ptr %7, align 8, !tbaa !45
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 %i.pm
  store i8 0, ptr %i.pp, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  invoke void @_ZN2PP8VariableC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(136) %6, ptr noundef nonnull %7)
          to label %bb.bw unwind label %bb.ch

bb.bw:                                            ; preds = %bb.bv
  %i.pq = load ptr, ptr %7, align 8, !tbaa !45    ; 2 uses
  %i.pr = icmp eq ptr %i.pq, %i.pg
  br i1 %i.pr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76: ; preds = %bb.bw
  %i.ps = load i64, ptr %i.pg, align 8, !tbaa !15
  %i.pt = add i64 %i.ps, 1
  call void @_ZdlPvm(ptr noundef %i.pq, i64 noundef %i.pt) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78: ; preds = %bb.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76
  %i.pu = load ptr, ptr %i.ok, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !619)
  %i.pv = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 12 uses
  store ptr %i.pv, ptr %9, align 8, !tbaa !8, !alias.scope !619
  %i.pw = load ptr, ptr %6, align 8, !tbaa !45, !noalias !619 ; 2 uses
  %i.px = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.py = load i64, ptr %i.px, align 8, !tbaa !12, !noalias !619 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22, !noalias !619
  store i64 %i.py, ptr %i.b, align 8, !tbaa !67, !noalias !619
  %i.pz = icmp ugt i64 %i.py, 15
  br i1 %i.pz, label %.noexc.i.i80, label %._crit_edge.i.i.i79

.noexc.i.i80:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78
  %i.qa = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc81 unwind label %bb.ci  ; 2 uses

.noexc81:                                         ; preds = %.noexc.i.i80
  store ptr %i.qa, ptr %9, align 8, !tbaa !45, !alias.scope !619
  %i.qb = load i64, ptr %i.b, align 8, !tbaa !67, !noalias !619
  store i64 %i.qb, ptr %i.pv, align 8, !tbaa !15, !alias.scope !619
  br label %._crit_edge.i.i.i79

._crit_edge.i.i.i79:                              ; preds = %.noexc81, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78
  %i.qc = phi ptr [ %i.qa, %.noexc81 ], [ %i.pv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78 ] ; 2 uses
  switch i64 %i.py, label %bb.by [
    i64 1, label %bb.bx
    i64 0, label %bb.bz
  ]

bb.bx:                                            ; preds = %._crit_edge.i.i.i79
  %i.qd = load i8, ptr %i.pw, align 1, !tbaa !15
  store i8 %i.qd, ptr %i.qc, align 1, !tbaa !15
  br label %bb.bz

bb.by:                                            ; preds = %._crit_edge.i.i.i79
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.qc, ptr align 1 %i.pw, i64 %i.py, i1 false)
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx, %._crit_edge.i.i.i79
  %i.qe = load i64, ptr %i.b, align 8, !tbaa !67, !noalias !619 ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  store i64 %i.qe, ptr %i.qf, align 8, !tbaa !12, !alias.scope !619
  %i.qg = load ptr, ptr %9, align 8, !tbaa !45, !alias.scope !619
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 %i.qe
  store i8 0, ptr %i.qh, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22, !noalias !619
  %i.qi = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  store ptr %i.qi, ptr %8, align 8, !tbaa !8
  %i.qj = load ptr, ptr %9, align 8, !tbaa !45    ; 2 uses
  %i.qk = icmp eq ptr %i.qj, %i.pv
  br i1 %i.qk, label %bb.ca, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82

bb.ca:                                            ; preds = %bb.bz
  %i.ql = load i64, ptr %i.qf, align 8, !tbaa !12 ; 3 uses
  %i.qm = icmp ult i64 %i.ql, 16
  call void @llvm.assume(i1 %i.qm)
  %i.qn = add nuw nsw i64 %i.ql, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.qi, ptr noundef nonnull align 8 dereferenceable(1) %i.pv, i64 %i.qn, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82: ; preds = %bb.bz
  store ptr %i.qj, ptr %8, align 8, !tbaa !45
  %i.qo = load i64, ptr %i.pv, align 8, !tbaa !15
  store i64 %i.qo, ptr %i.qi, align 8, !tbaa !15
  %.pre277 = load i64, ptr %i.qf, align 8, !tbaa !12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82, %bb.ca
  %i.qp = phi i64 [ %.pre277, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82 ], [ %i.ql, %bb.ca ]
  %i.qq = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.qp, ptr %i.qq, align 8, !tbaa !12
  store ptr %i.pv, ptr %9, align 8, !tbaa !45
  store i64 0, ptr %i.qf, align 8, !tbaa !12
  store i8 0, ptr %i.pv, align 8, !tbaa !15
end_hunk_2
begin_hunk_3_@_ZN2PP3Cmd13set_variablesERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi:bb.a

bb.fx:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i586
  %i.amy = getelementptr inbounds nuw i8, ptr %i.amv, i64 67
  %i.amz = load i8, ptr %i.amy, align 1, !tbaa !15
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i588

bb.fy:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i586
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.amv)
          to label %.noexc591 unwind label %.loopexit.loopexit.split-lp

.noexc591:                                        ; preds = %bb.fy
  %i.ana = load ptr, ptr %i.amv, align 8, !tbaa !147
  %i.anb = getelementptr inbounds nuw i8, ptr %i.ana, i64 48
  %i.anc = load ptr, ptr %i.anb, align 8
  %i.and = invoke noundef signext i8 %i.anc(ptr noundef nonnull align 8 dereferenceable(570) %i.amv, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i588 unwind label %.loopexit.loopexit.split-lp, !inline_history !170

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i588: ; preds = %.noexc591, %bb.fx
  %.0.i.i.i589 = phi i8 [ %i.amz, %bb.fx ], [ %i.and, %.noexc591 ]
  %i.ane = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.amp, i8 noundef signext %.0.i.i.i589)
          to label %.noexc593 unwind label %.loopexit.loopexit.split-lp

.noexc593:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i588
  %i.anf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ane)
          to label %_ZNSolsEPFRSoS_E.exit333 unwind label %.loopexit.loopexit.split-lp ; 0 uses

_ZNSolsEPFRSoS_E.exit333:                         ; preds = %.noexc593
  %i.ang = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.akt, ptr noundef nonnull @.str.50, i64 noundef 53)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit335 unwind label %.loopexit.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit335: ; preds = %_ZNSolsEPFRSoS_E.exit333
  %i.anh = load ptr, ptr %i.akt, align 8, !tbaa !147
  %i.ani = getelementptr i8, ptr %i.anh, i64 -24
  %i.anj = load i64, ptr %i.ani, align 8
  %i.ank = getelementptr inbounds i8, ptr %i.akt, i64 %i.anj
  %i.anl = getelementptr inbounds nuw i8, ptr %i.ank, i64 240
  %i.anm = load ptr, ptr %i.anl, align 8, !tbaa !149 ; 6 uses
  %.not.i.i.i596 = icmp eq ptr %i.anm, null
  br i1 %.not.i.i.i596, label %.invoke855, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i597

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i597: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit335
  %i.ann = getelementptr inbounds nuw i8, ptr %i.anm, i64 56
  %i.ano = load i8, ptr %i.ann, align 8, !tbaa !164
  %.not.i1.i.i598 = icmp eq i8 %i.ano, 0
  br i1 %.not.i1.i.i598, label %bb.ga, label %bb.fz

bb.fz:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i597
  %i.anp = getelementptr inbounds nuw i8, ptr %i.anm, i64 67
  %i.anq = load i8, ptr %i.anp, align 1, !tbaa !15
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i599

bb.ga:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i597
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.anm)
          to label %.noexc602 unwind label %.loopexit.loopexit.split-lp

.noexc602:                                        ; preds = %bb.ga
  %i.anr = load ptr, ptr %i.anm, align 8, !tbaa !147
  %i.ans = getelementptr inbounds nuw i8, ptr %i.anr, i64 48
  %i.ant = load ptr, ptr %i.ans, align 8
  %i.anu = invoke noundef signext i8 %i.ant(ptr noundef nonnull align 8 dereferenceable(570) %i.anm, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i599 unwind label %.loopexit.loopexit.split-lp, !inline_history !170

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i599: ; preds = %.noexc602, %bb.fz
  %.0.i.i.i600 = phi i8 [ %i.anq, %bb.fz ], [ %i.anu, %.noexc602 ]
  %i.anv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.akt, i8 noundef signext %.0.i.i.i600)
          to label %.noexc604 unwind label %.loopexit.loopexit.split-lp

.noexc604:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i599
  %i.anw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.anv)
          to label %_ZNSolsEPFRSoS_E.exit337 unwind label %.loopexit.loopexit.split-lp ; 0 uses

_ZNSolsEPFRSoS_E.exit337:                         ; preds = %.noexc604
  %i.anx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.akt, ptr noundef nonnull @.str.51, i64 noundef 20)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit339 unwind label %.loopexit.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit339: ; preds = %_ZNSolsEPFRSoS_E.exit337
  %i.any = load ptr, ptr %13, align 8, !tbaa !295
  %i.anz = getelementptr inbounds nuw [4 x i8], ptr %i.any, i64 %indvars.iv693
  %i.aoa = load i32, ptr %i.anz, align 4, !tbaa !4
  %i.aob = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.akt, i32 noundef %i.aoa)
          to label %bb.gb unwind label %.loopexit.loopexit.split-lp ; 3 uses

bb.gb:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit339
  %i.aoc = load ptr, ptr %i.aob, align 8, !tbaa !147
  %i.aod = getelementptr i8, ptr %i.aoc, i64 -24
  %i.aoe = load i64, ptr %i.aod, align 8
  %i.aof = getelementptr inbounds i8, ptr %i.aob, i64 %i.aoe
  %i.aog = getelementptr inbounds nuw i8, ptr %i.aof, i64 240
  %i.aoh = load ptr, ptr %i.aog, align 8, !tbaa !149 ; 6 uses
  %.not.i.i.i607 = icmp eq ptr %i.aoh, null
  br i1 %.not.i.i.i607, label %.invoke855, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i608

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i608: ; preds = %bb.gb
  %i.aoi = getelementptr inbounds nuw i8, ptr %i.aoh, i64 56
  %i.aoj = load i8, ptr %i.aoi, align 8, !tbaa !164
  %.not.i1.i.i609 = icmp eq i8 %i.aoj, 0
  br i1 %.not.i1.i.i609, label %bb.gd, label %bb.gc

bb.gc:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i608
  %i.aok = getelementptr inbounds nuw i8, ptr %i.aoh, i64 67
  %i.aol = load i8, ptr %i.aok, align 1, !tbaa !15
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i610

bb.gd:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i608
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.aoh)
          to label %.noexc613 unwind label %.loopexit.loopexit.split-lp

.noexc613:                                        ; preds = %bb.gd
  %i.aom = load ptr, ptr %i.aoh, align 8, !tbaa !147
  %i.aon = getelementptr inbounds nuw i8, ptr %i.aom, i64 48
  %i.aoo = load ptr, ptr %i.aon, align 8
  %i.aop = invoke noundef signext i8 %i.aoo(ptr noundef nonnull align 8 dereferenceable(570) %i.aoh, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i610 unwind label %.loopexit.loopexit.split-lp, !inline_history !170

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i610: ; preds = %.noexc613, %bb.gc
  %.0.i.i.i611 = phi i8 [ %i.aol, %bb.gc ], [ %i.aop, %.noexc613 ]
  %i.aoq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.aob, i8 noundef signext %.0.i.i.i611)
          to label %.noexc615 unwind label %.loopexit.loopexit.split-lp

.noexc615:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i610
  %i.aor = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aoq)
          to label %_ZNSolsEPFRSoS_E.exit341 unwind label %.loopexit.loopexit.split-lp ; 3 uses

_ZNSolsEPFRSoS_E.exit341:                         ; preds = %.noexc615
  %i.aos = load ptr, ptr %i.aor, align 8, !tbaa !147
  %i.aot = getelementptr i8, ptr %i.aos, i64 -24
  %i.aou = load i64, ptr %i.aot, align 8
  %i.aov = getelementptr inbounds i8, ptr %i.aor, i64 %i.aou
  %i.aow = getelementptr inbounds nuw i8, ptr %i.aov, i64 240
  %i.aox = load ptr, ptr %i.aow, align 8, !tbaa !149 ; 6 uses
  %.not.i.i.i618 = icmp eq ptr %i.aox, null
  br i1 %.not.i.i.i618, label %.invoke855, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i619

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i619: ; preds = %_ZNSolsEPFRSoS_E.exit341
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.aox, i64 56
  %i.aoz = load i8, ptr %i.aoy, align 8, !tbaa !164
  %.not.i1.i.i620 = icmp eq i8 %i.aoz, 0
  br i1 %.not.i1.i.i620, label %bb.gf, label %bb.ge

bb.ge:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i619
  %i.apa = getelementptr inbounds nuw i8, ptr %i.aox, i64 67
  %i.apb = load i8, ptr %i.apa, align 1, !tbaa !15
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i621

bb.gf:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i619
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.aox)
          to label %.noexc624 unwind label %.loopexit.loopexit.split-lp

.noexc624:                                        ; preds = %bb.gf
  %i.apc = load ptr, ptr %i.aox, align 8, !tbaa !147
  %i.apd = getelementptr inbounds nuw i8, ptr %i.apc, i64 48
  %i.ape = load ptr, ptr %i.apd, align 8
  %i.apf = invoke noundef signext i8 %i.ape(ptr noundef nonnull align 8 dereferenceable(570) %i.aox, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i621 unwind label %.loopexit.loopexit.split-lp, !inline_history !170

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i621: ; preds = %.noexc624, %bb.ge
  %.0.i.i.i622 = phi i8 [ %i.apb, %bb.ge ], [ %i.apf, %.noexc624 ]
  %i.apg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.aor, i8 noundef signext %.0.i.i.i622)
          to label %.noexc626 unwind label %.loopexit.loopexit.split-lp

.noexc626:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i621
  %i.aph = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.apg)
          to label %_ZNSolsEPFRSoS_E.exit343.thread unwind label %.loopexit.loopexit.split-lp ; 0 uses

.loopexit.loopexit:                               ; preds = %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit327
  %lpad.loopexit830 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit350

.loopexit.loopexit.split-lp:                      ; preds = %.noexc626, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i621, %.noexc624, %bb.gf, %.noexc615, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i610, %.noexc613, %bb.gd, %.noexc604, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i599, %.noexc602, %bb.ga, %.noexc593, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i588, %.noexc591, %bb.fy, %_ZNSolsEPFRSoS_E.exit337, %_ZNSolsEPFRSoS_E.exit333, %bb.fv, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit339, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit331, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit329
  %lpad.loopexit.split-lp831 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit350

.loopexit.split-lp:                               ; preds = %.invoke855
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit350

_ZNSolsEPFRSoS_E.exit343:                         ; preds = %bb.fo
  %indvars.iv.next694 = add nuw nsw i64 %indvars.iv693, 1 ; 2 uses
  %i.api = icmp samesign ult i64 %indvars.iv.next694, %i.aie
  br i1 %i.api, label %bb.fi, label %._crit_edge685, !llvm.loop !746

_ZNSolsEPFRSoS_E.exit343.thread:                  ; preds = %.noexc626
  %indvars.iv.next694826 = add nuw nsw i64 %indvars.iv693, 1 ; 2 uses
  %i.apj = icmp samesign ult i64 %indvars.iv.next694826, %i.aie
  br i1 %i.apj, label %.outer, label %._crit_edge685.thread828, !llvm.loop !746

._crit_edge685.thread828:                         ; preds = %_ZNSolsEPFRSoS_E.exit343.thread, %._crit_edge685
  store i32 2, ptr %2, align 4, !tbaa !4
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit347

bb.gg:                                            ; preds = %._crit_edge685.thread, %._crit_edge685
  %i.apk = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.apl = load ptr, ptr %i.apk, align 8, !tbaa !64 ; 2 uses
  %i.apm = getelementptr inbounds nuw i8, ptr %i.apl, i64 16
  %i.apn = load ptr, ptr %i.apm, align 8, !tbaa !554 ; 2 uses
  %i.apo = getelementptr inbounds nuw i8, ptr %i.apl, i64 8 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.apn, null
  %.pre698 = load ptr, ptr %4, align 8, !tbaa !45 ; 4 uses
  %.pre699 = load i64, ptr %i.dh, align 8, !tbaa !12 ; 8 uses
  br i1 %.not10.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2PP8VariableESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.gg, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ], [ %i.apn, %bb.gg ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ], [ %i.apo, %bb.gg ]
  %i.app = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.apq = load i64, ptr %i.app, align 8, !tbaa !12 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.pre699, i64 %i.apq) ; 2 uses
  %i.apr = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.apr, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.aps = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.apt = load ptr, ptr %i.aps, align 8, !tbaa !45
  %i.apu = call i32 @memcmp(ptr noundef %i.apt, ptr noundef %.pre698, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #22 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.apu, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.apv = sub i64 %i.apq, %.pre699
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.apv, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.apu, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.apw = icmp slt i32 %.0.i.i.i.i.i.i, 0        ; 2 uses
  %.19.i.i.i = select i1 %i.apw, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 5 uses
  %.1.in.v.i.i.i = select i1 %i.apw, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !559 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2PP8VariableEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !560

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2PP8VariableEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.apx = icmp eq ptr %.19.i.i.i, %i.apo
  br i1 %i.apx, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2PP8VariableESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread, label %bb.gh

bb.gh:                                            ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2PP8VariableEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.apy = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.apz = load i64, ptr %i.apy, align 8, !tbaa !12 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.apz, i64 %.pre699) ; 2 uses
  %i.aqa = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.aqa, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.gh
  %i.aqb = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.aqc = load ptr, ptr %i.aqb, align 8, !tbaa !45
  %i.aqd = call i32 @memcmp(ptr noundef %.pre698, ptr noundef %i.aqc, i64 noundef %.sroa.speculated.i.i.i.i.i) #22 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.aqd, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2PP8VariableESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.gh
  %i.aqe = sub i64 %.pre699, %i.apz
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.aqe, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2PP8VariableESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2PP8VariableESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.aqd, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.aqf = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.aqf, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2PP8VariableESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread, label %bb.gi

bb.gi:                                            ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2PP8VariableESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit
  %i.aqg = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 7 uses
  store ptr %i.aqg, ptr %14, align 8, !tbaa !8
  %i.aqh = load ptr, ptr %5, align 8, !tbaa !45   ; 2 uses
  %i.aqi = load i64, ptr %i.fq, align 8, !tbaa !12 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  store i64 %i.aqi, ptr %i.d, align 8, !tbaa !67
  %i.aqj = icmp ugt i64 %i.aqi, 15
  br i1 %i.aqj, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.gi
  %i.aqk = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc344 unwind label %bb.gn ; 2 uses

.noexc344:                                        ; preds = %.noexc.i
  store ptr %i.aqk, ptr %14, align 8, !tbaa !45
  %i.aql = load i64, ptr %i.d, align 8, !tbaa !67
  store i64 %i.aql, ptr %i.aqg, align 8, !tbaa !15
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc344, %bb.gi
  %i.aqm = phi ptr [ %i.aqk, %.noexc344 ], [ %i.aqg, %bb.gi ] ; 2 uses
  switch i64 %i.aqi, label %bb.gk [
    i64 1, label %bb.gj
    i64 0, label %bb.gl
  ]

bb.gj:                                            ; preds = %._crit_edge.i.i
  %i.aqn = load i8, ptr %i.aqh, align 1, !tbaa !15
  store i8 %i.aqn, ptr %i.aqm, align 1, !tbaa !15
  br label %bb.gl

bb.gk:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aqm, ptr align 1 %i.aqh, i64 %i.aqi, i1 false)
  br label %bb.gl

bb.gl:                                            ; preds = %bb.gk, %bb.gj, %._crit_edge.i.i
  %i.aqo = load i64, ptr %i.d, align 8, !tbaa !67 ; 2 uses
  %i.aqp = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %i.aqo, ptr %i.aqp, align 8, !tbaa !12
  %i.aqq = load ptr, ptr %14, align 8, !tbaa !45
  %i.aqr = getelementptr inbounds nuw i8, ptr %i.aqq, i64 %i.aqo
  store i8 0, ptr %i.aqr, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  %i.aqs = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 64
  %i.aqt = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aqu = load ptr, ptr %i.aqt, align 8, !tbaa !66
  invoke void @_ZN2PP8Variable13set_var_valueERSt6vectorIiSaIiEERS1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEiiSA_PSt5dequeISA_SB_ERNS5_18basic_stringstreamIcS8_S9_EERi(ptr noundef nonnull align 8 dereferenceable(136) %i.aqs, ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef %i.fe, i32 noundef %i.fd, ptr noundef nonnull %14, ptr noundef %i.aqu, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %bb.gm unwind label %bb.go

bb.gm:                                            ; preds = %bb.gl
  %i.aqv = load ptr, ptr %14, align 8, !tbaa !45  ; 2 uses
  %i.aqw = icmp eq ptr %i.aqv, %i.aqg
  br i1 %i.aqw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit347, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i345

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i345: ; preds = %bb.gm
  %i.aqx = load i64, ptr %i.aqg, align 8, !tbaa !15
  %i.aqy = add i64 %i.aqx, 1
  call void @_ZdlPvm(ptr noundef %i.aqv, i64 noundef %i.aqy) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit347

bb.gn:                                            ; preds = %.noexc.i
  %i.aqz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit350

bb.go:                                            ; preds = %bb.gl
  %i.ara = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.arb = load ptr, ptr %14, align 8, !tbaa !45  ; 2 uses
  %i.arc = icmp eq ptr %i.arb, %i.aqg
  br i1 %i.arc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit350, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i348

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i348: ; preds = %bb.go
  %i.ard = load i64, ptr %i.aqg, align 8, !tbaa !15
  %i.are = add i64 %i.ard, 1
  call void @_ZdlPvm(ptr noundef %i.arb, i64 noundef %i.are) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit350

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2PP8VariableESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread: ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2PP8VariableEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, %bb.gg, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2PP8VariableESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.arf = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 7 uses
  store ptr %i.arf, ptr %16, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store i64 %.pre699, ptr %i.c, align 8, !tbaa !67
  %i.arg = icmp ugt i64 %.pre699, 15
  br i1 %i.arg, label %.noexc.i352, label %._crit_edge.i.i351

.noexc.i352:                                      ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2PP8VariableESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread
  %i.arh = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc353 unwind label %bb.he ; 2 uses

.noexc353:                                        ; preds = %.noexc.i352
  store ptr %i.arh, ptr %16, align 8, !tbaa !45
  %i.ari = load i64, ptr %i.c, align 8, !tbaa !67
  store i64 %i.ari, ptr %i.arf, align 8, !tbaa !15
  br label %._crit_edge.i.i351

._crit_edge.i.i351:                               ; preds = %.noexc353, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2PP8VariableESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread
  %i.arj = phi ptr [ %i.arh, %.noexc353 ], [ %i.arf, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2PP8VariableESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread ] ; 2 uses
  switch i64 %.pre699, label %bb.gq [
    i64 1, label %bb.gp
    i64 0, label %bb.gr
  ]

bb.gp:                                            ; preds = %._crit_edge.i.i351
  %i.ark = load i8, ptr %.pre698, align 1, !tbaa !15
  store i8 %i.ark, ptr %i.arj, align 1, !tbaa !15
  br label %bb.gr

bb.gq:                                            ; preds = %._crit_edge.i.i351
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.arj, ptr align 1 %.pre698, i64 %.pre699, i1 false)
  br label %bb.gr

bb.gr:                                            ; preds = %bb.gq, %bb.gp, %._crit_edge.i.i351
  %i.arl = load i64, ptr %i.c, align 8, !tbaa !67 ; 2 uses
  %i.arm = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 %i.arl, ptr %i.arm, align 8, !tbaa !12
  %i.arn = load ptr, ptr %16, align 8, !tbaa !45
  %i.aro = getelementptr inbounds nuw i8, ptr %i.arn, i64 %i.arl
  store i8 0, ptr %i.aro, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  %i.arp = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 7 uses
  store ptr %i.arp, ptr %17, align 8, !tbaa !8
  %i.arq = load ptr, ptr %5, align 8, !tbaa !45   ; 2 uses
  %i.arr = load i64, ptr %i.fq, align 8, !tbaa !12 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i64 %i.arr, ptr %i.b, align 8, !tbaa !67
  %i.ars = icmp ugt i64 %i.arr, 15
  br i1 %i.ars, label %.noexc.i356, label %._crit_edge.i.i355

.noexc.i356:                                      ; preds = %bb.gr
  %i.art = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc357 unwind label %bb.hf ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN2PP3Cmd10handle_opsEv:bb.a
  %i.rs = load ptr, ptr %i.hd, align 8, !tbaa !76 ; 4 uses
  %i.rt = ptrtoint ptr %i.rs to i64
  %i.ru = ptrtoint ptr %i.qv to i64               ; 4 uses
  %i.rv = sub i64 %i.rt, %i.ru
  %i.rw = ashr exact i64 %i.rv, 3                 ; 3 uses
  %i.rx = icmp ne ptr %i.rs, null
  %.neg.i.i.i413 = sext i1 %i.rx to i64
  %i.ry = add nsw i64 %i.rw, %.neg.i.i.i413
  %i.rz = shl nsw i64 %i.ry, 2
  %i.sa = load ptr, ptr %i.hb, align 8, !tbaa !71
  %i.sb = load ptr, ptr %i.hf, align 8, !tbaa !75
  %i.sc = ptrtoint ptr %i.sa to i64
  %i.sd = ptrtoint ptr %i.sb to i64
  %i.se = sub i64 %i.sc, %i.sd
  %i.sf = ashr exact i64 %i.se, 7
  %i.sg = add nsw i64 %i.rz, %i.sf
  %i.sh = load ptr, ptr %i.hg, align 8, !tbaa !87
  %i.si = ptrtoint ptr %i.sh to i64
  %i.sj = sub i64 %i.si, %i.qw
  %i.sk = ashr exact i64 %i.sj, 7
  %i.sl = add nsw i64 %i.sg, %i.sk
  %i.sm = icmp eq i64 %i.sl, 72057594037927935
  br i1 %i.sm, label %.invoke, label %bb.co

.invoke:                                          ; preds = %bb.dm, %bb.cn
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.220) #24
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.co:                                            ; preds = %bb.cn
  %i.sn = load ptr, ptr %i.ha, align 8, !tbaa !59 ; 3 uses
  %i.so = icmp eq ptr %i.qv, %i.sn
  br i1 %i.so, label %bb.cp, label %_ZNSt5dequeIN2PP4WordESaIS1_EE23_M_reserve_map_at_frontEm.exit.i

bb.cp:                                            ; preds = %bb.co
  %i.sp = add nsw i64 %i.rw, 1                    ; 2 uses
  %i.sq = add nsw i64 %i.rw, 2                    ; 3 uses
  %i.sr = load i64, ptr %i.ie, align 8, !tbaa !63 ; 5 uses
  %i.ss = shl nsw i64 %i.sq, 1
  %i.st = icmp ugt i64 %i.sr, %i.ss
  br i1 %i.st, label %bb.cq, label %bb.cz

bb.cq:                                            ; preds = %bb.cp
  %i.su = sub i64 %i.sr, %i.sq
  %i.sv = lshr i64 %i.su, 1
  %i.sw = getelementptr inbounds nuw [8 x i8], ptr %i.sn, i64 %i.sv
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sw, i64 8 ; 10 uses
  %i.sy = icmp ult ptr %i.sx, %i.qv
  %i.sz = getelementptr inbounds nuw i8, ptr %i.rs, i64 8 ; 2 uses
  br i1 %i.sy, label %bb.cr, label %bb.cv

bb.cr:                                            ; preds = %bb.cq
  %i.ta = ptrtoint ptr %i.sz to i64
  %i.tb = sub i64 %i.ta, %i.ru                    ; 3 uses
  %i.tc = icmp sgt i64 %i.tb, 8
  br i1 %i.tc, label %bb.cs, label %bb.ct, !prof !900

bb.cs:                                            ; preds = %bb.cr
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.sx, ptr nonnull align 8 %i.qv, i64 %i.tb, i1 false)
  br label %.noexc416

bb.ct:                                            ; preds = %bb.cr
  %i.td = icmp eq i64 %i.tb, 8
  br i1 %i.td, label %bb.cu, label %.noexc416

bb.cu:                                            ; preds = %bb.ct
  %i.te = load ptr, ptr %i.qv, align 8, !tbaa !51
  store ptr %i.te, ptr %i.sx, align 8, !tbaa !51
  br label %.noexc416

bb.cv:                                            ; preds = %bb.cq
  %i.tf = getelementptr inbounds nuw [8 x i8], ptr %i.sx, i64 %i.sp ; 2 uses
  %i.tg = ptrtoint ptr %i.sz to i64
  %i.th = sub i64 %i.tg, %i.ru                    ; 3 uses
  %i.ti = ashr exact i64 %i.th, 3                 ; 2 uses
  %i.tj = icmp sgt i64 %i.ti, 1
  br i1 %i.tj, label %bb.cw, label %bb.cx, !prof !900

bb.cw:                                            ; preds = %bb.cv
  %i.tk = sub nsw i64 0, %i.ti
  %i.tl = getelementptr inbounds [8 x i8], ptr %i.tf, i64 %i.tk
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.tl, ptr align 8 %i.qv, i64 %i.th, i1 false)
  br label %.noexc416

bb.cx:                                            ; preds = %bb.cv
  %i.tm = icmp eq i64 %i.th, 8
  br i1 %i.tm, label %bb.cy, label %.noexc416

bb.cy:                                            ; preds = %bb.cx
  %i.tn = getelementptr inbounds i8, ptr %i.tf, i64 -8
  %i.to = load ptr, ptr %i.qv, align 8, !tbaa !51
  store ptr %i.to, ptr %i.tn, align 8, !tbaa !51
  br label %.noexc416

bb.cz:                                            ; preds = %bb.cp
  %.sroa.speculated.i424 = call i64 @llvm.umax.i64(i64 %i.sr, i64 1)
  %i.tp = add i64 %i.sr, 2
  %i.tq = add i64 %i.tp, %.sroa.speculated.i424   ; 5 uses
  %i.tr = icmp ugt i64 %i.tq, 1152921504606846975
  br i1 %i.tr, label %bb.da, label %_ZNSt11_Deque_baseIN2PP4WordESaIS1_EE15_M_allocate_mapEm.exit.i425, !prof !127

bb.da:                                            ; preds = %bb.cz
  %i.ts = icmp ugt i64 %i.tq, 2305843009213693951
  br i1 %i.ts, label %.noexc.i.i429.invoke, label %.noexc3.i.i428.invoke

.noexc.i.i429.invoke:                             ; preds = %bb.dz, %bb.da
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc.i.i429.cont unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc.i.i429.cont:                               ; preds = %.noexc.i.i429.invoke
  unreachable

.noexc3.i.i428.invoke:                            ; preds = %bb.dz, %bb.da
  invoke void @_ZSt17__throw_bad_allocv() #24
          to label %.noexc3.i.i428.cont unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc3.i.i428.cont:                              ; preds = %.noexc3.i.i428.invoke
  unreachable

_ZNSt11_Deque_baseIN2PP4WordESaIS1_EE15_M_allocate_mapEm.exit.i425: ; preds = %bb.cz
  %i.tt = shl nuw nsw i64 %i.tq, 3
  %i.tu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.tt) #25
          to label %.noexc432 unwind label %.loopexit ; 2 uses

.noexc432:                                        ; preds = %_ZNSt11_Deque_baseIN2PP4WordESaIS1_EE15_M_allocate_mapEm.exit.i425
  %i.tv = sub nsw i64 %i.tq, %i.sq
  %i.tw = lshr i64 %i.tv, 1
  %i.tx = getelementptr inbounds nuw [8 x i8], ptr %i.tu, i64 %i.tw
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tx, i64 8 ; 3 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %i.rs, i64 8
  %i.ua = ptrtoint ptr %i.tz to i64
  %i.ub = sub i64 %i.ua, %i.ru                    ; 3 uses
  %i.uc = icmp sgt i64 %i.ub, 8
  br i1 %i.uc, label %bb.db, label %bb.dc, !prof !900

bb.db:                                            ; preds = %.noexc432
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ty, ptr align 8 %i.qv, i64 %i.ub, i1 false)
  br label %_ZSt4copyIPPN2PP4WordES3_ET0_T_S5_S4_.exit24.i426

bb.dc:                                            ; preds = %.noexc432
  %i.ud = icmp eq i64 %i.ub, 8
  br i1 %i.ud, label %bb.dd, label %_ZSt4copyIPPN2PP4WordES3_ET0_T_S5_S4_.exit24.i426

bb.dd:                                            ; preds = %bb.dc
  %i.ue = load ptr, ptr %i.qv, align 8, !tbaa !51
  store ptr %i.ue, ptr %i.ty, align 8, !tbaa !51
  br label %_ZSt4copyIPPN2PP4WordES3_ET0_T_S5_S4_.exit24.i426

_ZSt4copyIPPN2PP4WordES3_ET0_T_S5_S4_.exit24.i426: ; preds = %bb.dd, %bb.dc, %bb.db
  %i.uf = shl i64 %i.sr, 3
  call void @_ZdlPvm(ptr noundef %i.sn, i64 noundef %i.uf) #21
  store ptr %i.tu, ptr %i.ha, align 8, !tbaa !59
  store i64 %i.tq, ptr %i.ie, align 8, !tbaa !63
  br label %.noexc416

.noexc416:                                        ; preds = %_ZSt4copyIPPN2PP4WordES3_ET0_T_S5_S4_.exit24.i426, %bb.cy, %bb.cx, %bb.cw, %bb.cu, %bb.ct, %bb.cs
  %.0.i427 = phi ptr [ %i.ty, %_ZSt4copyIPPN2PP4WordES3_ET0_T_S5_S4_.exit24.i426 ], [ %i.sx, %bb.cu ], [ %i.sx, %bb.cs ], [ %i.sx, %bb.ct ], [ %i.sx, %bb.cw ], [ %i.sx, %bb.cx ], [ %i.sx, %bb.cy ] ; 4 uses
  store ptr %.0.i427, ptr %i.he, align 8, !tbaa !76
  %i.ug = load ptr, ptr %.0.i427, align 8, !tbaa !51 ; 2 uses
  store ptr %i.ug, ptr %i.hh, align 8, !tbaa !75
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 512
  store ptr %i.uh, ptr %i.hg, align 8, !tbaa !87
  %i.ui = getelementptr inbounds nuw [8 x i8], ptr %.0.i427, i64 %i.sp
  %i.uj = getelementptr inbounds i8, ptr %i.ui, i64 -8 ; 2 uses
  store ptr %i.uj, ptr %i.hd, align 8, !tbaa !76
  %i.uk = load ptr, ptr %i.uj, align 8, !tbaa !51 ; 2 uses
  store ptr %i.uk, ptr %i.hf, align 8, !tbaa !75
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uk, i64 512
  store ptr %i.ul, ptr %i.id, align 8, !tbaa !87
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EE23_M_reserve_map_at_frontEm.exit.i

_ZNSt5dequeIN2PP4WordESaIS1_EE23_M_reserve_map_at_frontEm.exit.i: ; preds = %.noexc416, %bb.co
  %i.um = phi ptr [ %i.qv, %bb.co ], [ %.0.i427, %.noexc416 ]
  %i.un = invoke noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #25
          to label %.noexc417 unwind label %.loopexit ; 4 uses

.noexc417:                                        ; preds = %_ZNSt5dequeIN2PP4WordESaIS1_EE23_M_reserve_map_at_frontEm.exit.i
  %i.uo = getelementptr inbounds i8, ptr %i.um, i64 -8 ; 2 uses
  store ptr %i.un, ptr %i.uo, align 8, !tbaa !51
  store ptr %i.uo, ptr %i.he, align 8, !tbaa !76
  store ptr %i.un, ptr %i.hh, align 8, !tbaa !75
  %i.up = getelementptr inbounds nuw i8, ptr %i.un, i64 512
  store ptr %i.up, ptr %i.hg, align 8, !tbaa !87
  %i.uq = getelementptr inbounds nuw i8, ptr %i.un, i64 384 ; 2 uses
  store ptr %i.uq, ptr %i.hc, align 8, !tbaa !899
  invoke void @_ZN2PP4WordC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(128) %i.uq, ptr noundef nonnull align 8 dereferenceable(128) %i.rn)
          to label %.noexc304 unwind label %bb.de

bb.de:                                            ; preds = %.noexc417
  %i.ur = landingpad { ptr, i32 }
          catch ptr null
  %i.us = extractvalue { ptr, i32 } %i.ur, 0
  %i.ut = call ptr @__cxa_begin_catch(ptr %i.us) #22 ; 0 uses
  %i.uu = load ptr, ptr %i.hc, align 8, !tbaa !71
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uu, i64 128 ; 2 uses
  store ptr %i.uv, ptr %i.hc, align 8, !tbaa !71
  %i.uw = load ptr, ptr %i.hg, align 8, !tbaa !87
  %i.ux = icmp eq ptr %i.uv, %i.uw
  %.pre4.i = load ptr, ptr %i.he, align 8, !tbaa !60 ; 2 uses
  br i1 %i.ux, label %bb.df, label %_ZNSt15_Deque_iteratorIN2PP4WordERS1_PS1_EppEv.exit.i

bb.df:                                            ; preds = %bb.de
  %i.uy = getelementptr inbounds nuw i8, ptr %.pre4.i, i64 8 ; 3 uses
  store ptr %i.uy, ptr %i.he, align 8, !tbaa !76
  %i.uz = load ptr, ptr %i.uy, align 8, !tbaa !51 ; 3 uses
  store ptr %i.uz, ptr %i.hh, align 8, !tbaa !75
  %i.va = getelementptr inbounds nuw i8, ptr %i.uz, i64 512
  store ptr %i.va, ptr %i.hg, align 8, !tbaa !87
  store ptr %i.uz, ptr %i.hc, align 8, !tbaa !71
  br label %_ZNSt15_Deque_iteratorIN2PP4WordERS1_PS1_EppEv.exit.i

_ZNSt15_Deque_iteratorIN2PP4WordERS1_PS1_EppEv.exit.i: ; preds = %bb.df, %bb.de
  %i.vb = phi ptr [ %.pre4.i, %bb.de ], [ %i.uy, %bb.df ]
  %i.vc = getelementptr inbounds i8, ptr %i.vb, i64 -8
  %i.vd = load ptr, ptr %i.vc, align 8, !tbaa !51
  call void @_ZdlPvm(ptr noundef %i.vd, i64 noundef 512) #21
  invoke void @__cxa_rethrow() #24
          to label %bb.di unwind label %bb.dg

bb.dg:                                            ; preds = %_ZNSt15_Deque_iteratorIN2PP4WordERS1_PS1_EppEv.exit.i
  %i.ve = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.vf = landingpad { ptr, i32 }
          catch ptr null
  %i.vg = extractvalue { ptr, i32 } %i.vf, 0
  call void @__clang_call_terminate(ptr %i.vg) #23
  unreachable

bb.di:                                            ; preds = %_ZNSt15_Deque_iteratorIN2PP4WordERS1_PS1_EppEv.exit.i
  unreachable

bb.dj:                                            ; preds = %_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El.exit.i
  %i.vh = load ptr, ptr %i.hb, align 8, !tbaa !68, !noalias !896 ; 2 uses
  %i.vi = icmp eq ptr %storemerge.i.i.i, %i.vh
  br i1 %i.vi, label %bb.dk, label %bb.eh

bb.dk:                                            ; preds = %bb.dj
  %i.vj = load ptr, ptr %i.id, align 8, !tbaa !69, !noalias !896
  %i.vk = getelementptr inbounds i8, ptr %i.vj, i64 -128
  %.not.i4.i = icmp eq ptr %storemerge.i.i.i, %i.vk
  br i1 %.not.i4.i, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  invoke void @_ZN2PP4WordC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(128) %i.vh, ptr noundef nonnull align 8 dereferenceable(128) %i.rn)
          to label %_ZNSt5dequeIN2PP4WordESaIS1_EE9push_backERKS1_.exit.i unwind label %.loopexit

bb.dm:                                            ; preds = %bb.dk
  %i.vl = load ptr, ptr %i.hd, align 8, !tbaa !76 ; 5 uses
  %i.vm = ptrtoint ptr %i.vl to i64               ; 2 uses
  %i.vn = ptrtoint ptr %i.qv to i64               ; 4 uses
  %i.vo = sub i64 %i.vm, %i.vn
  %i.vp = ashr exact i64 %i.vo, 3                 ; 3 uses
  %i.vq = icmp ne ptr %i.vl, null
  %.neg.i.i.i = sext i1 %i.vq to i64
  %i.vr = add nsw i64 %i.vp, %.neg.i.i.i
  %i.vs = shl nsw i64 %i.vr, 2
  %i.vt = load ptr, ptr %i.hf, align 8, !tbaa !75
  %i.vu = ptrtoint ptr %storemerge.i.i.i to i64
  %i.vv = ptrtoint ptr %i.vt to i64
  %i.vw = sub i64 %i.vu, %i.vv
  %i.vx = ashr exact i64 %i.vw, 7
  %i.vy = add nsw i64 %i.vs, %i.vx
  %i.vz = load ptr, ptr %i.hg, align 8, !tbaa !87
  %i.wa = ptrtoint ptr %i.vz to i64
  %i.wb = sub i64 %i.wa, %i.qw
  %i.wc = ashr exact i64 %i.wb, 7
  %i.wd = add nsw i64 %i.vy, %i.wc
  %i.we = icmp eq i64 %i.wd, 72057594037927935
  br i1 %i.we, label %.invoke, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.wf = load i64, ptr %i.ie, align 8, !tbaa !63 ; 6 uses
  %i.wg = load ptr, ptr %i.ha, align 8, !tbaa !59 ; 3 uses
  %i.wh = ptrtoint ptr %i.wg to i64
  %i.wi = sub i64 %i.vm, %i.wh
  %i.wj = ashr exact i64 %i.wi, 3
  %i.wk = sub i64 %i.wf, %i.wj
  %i.wl = icmp ult i64 %i.wk, 2
  br i1 %i.wl, label %bb.do, label %_ZNSt5dequeIN2PP4WordESaIS1_EE22_M_reserve_map_at_backEm.exit.i

bb.do:                                            ; preds = %bb.dn
  %i.wm = add nsw i64 %i.vp, 1                    ; 2 uses
  %i.wn = add nsw i64 %i.vp, 2                    ; 3 uses
  %i.wo = shl nsw i64 %i.wn, 1
  %i.wp = icmp ugt i64 %i.wf, %i.wo
  br i1 %i.wp, label %bb.dp, label %bb.dy

bb.dp:                                            ; preds = %bb.do
  %i.wq = sub i64 %i.wf, %i.wn
  %i.wr = lshr i64 %i.wq, 1
  %i.ws = getelementptr inbounds nuw [8 x i8], ptr %i.wg, i64 %i.wr ; 10 uses
  %i.wt = icmp ult ptr %i.ws, %i.qv
  %i.wu = getelementptr inbounds nuw i8, ptr %i.vl, i64 8 ; 2 uses
  br i1 %i.wt, label %bb.dq, label %bb.du

bb.dq:                                            ; preds = %bb.dp
  %i.wv = ptrtoint ptr %i.wu to i64
  %i.ww = sub i64 %i.wv, %i.vn                    ; 3 uses
  %i.wx = icmp sgt i64 %i.ww, 8
  br i1 %i.wx, label %bb.dr, label %bb.ds, !prof !900

bb.dr:                                            ; preds = %bb.dq
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ws, ptr nonnull align 8 %i.qv, i64 %i.ww, i1 false)
  br label %.noexc411

bb.ds:                                            ; preds = %bb.dq
  %i.wy = icmp eq i64 %i.ww, 8
  br i1 %i.wy, label %bb.dt, label %.noexc411

bb.dt:                                            ; preds = %bb.ds
  %i.wz = load ptr, ptr %i.qv, align 8, !tbaa !51
  store ptr %i.wz, ptr %i.ws, align 8, !tbaa !51
  br label %.noexc411

bb.du:                                            ; preds = %bb.dp
  %i.xa = getelementptr inbounds nuw [8 x i8], ptr %i.ws, i64 %i.wm ; 2 uses
  %i.xb = ptrtoint ptr %i.wu to i64
  %i.xc = sub i64 %i.xb, %i.vn                    ; 3 uses
  %i.xd = ashr exact i64 %i.xc, 3                 ; 2 uses
  %i.xe = icmp sgt i64 %i.xd, 1
  br i1 %i.xe, label %bb.dv, label %bb.dw, !prof !900

bb.dv:                                            ; preds = %bb.du
  %i.xf = sub nsw i64 0, %i.xd
  %i.xg = getelementptr inbounds [8 x i8], ptr %i.xa, i64 %i.xf
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.xg, ptr align 8 %i.qv, i64 %i.xc, i1 false)
  br label %.noexc411

bb.dw:                                            ; preds = %bb.du
  %i.xh = icmp eq i64 %i.xc, 8
  br i1 %i.xh, label %bb.dx, label %.noexc411

bb.dx:                                            ; preds = %bb.dw
  %i.xi = getelementptr inbounds i8, ptr %i.xa, i64 -8
  %i.xj = load ptr, ptr %i.qv, align 8, !tbaa !51
  store ptr %i.xj, ptr %i.xi, align 8, !tbaa !51
  br label %.noexc411

bb.dy:                                            ; preds = %bb.do
  %.sroa.speculated.i = call i64 @llvm.umax.i64(i64 %i.wf, i64 1)
  %i.xk = add i64 %i.wf, 2
  %i.xl = add i64 %i.xk, %.sroa.speculated.i      ; 5 uses
  %i.xm = icmp ugt i64 %i.xl, 1152921504606846975
  br i1 %i.xm, label %bb.dz, label %_ZNSt11_Deque_baseIN2PP4WordESaIS1_EE15_M_allocate_mapEm.exit.i, !prof !127

bb.dz:                                            ; preds = %bb.dy
  %i.xn = icmp ugt i64 %i.xl, 2305843009213693951
  br i1 %i.xn, label %.noexc.i.i429.invoke, label %.noexc3.i.i428.invoke

_ZNSt11_Deque_baseIN2PP4WordESaIS1_EE15_M_allocate_mapEm.exit.i: ; preds = %bb.dy
  %i.xo = shl nuw nsw i64 %i.xl, 3
  %i.xp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.xo) #25
          to label %.noexc423 unwind label %.loopexit ; 2 uses

.noexc423:                                        ; preds = %_ZNSt11_Deque_baseIN2PP4WordESaIS1_EE15_M_allocate_mapEm.exit.i
  %i.xq = sub nsw i64 %i.xl, %i.wn
  %i.xr = lshr i64 %i.xq, 1
  %i.xs = getelementptr inbounds nuw [8 x i8], ptr %i.xp, i64 %i.xr ; 3 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %i.vl, i64 8
  %i.xu = ptrtoint ptr %i.xt to i64
  %i.xv = sub i64 %i.xu, %i.vn                    ; 3 uses
  %i.xw = icmp sgt i64 %i.xv, 8
  br i1 %i.xw, label %bb.ea, label %bb.eb, !prof !900

bb.ea:                                            ; preds = %.noexc423
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.xs, ptr align 8 %i.qv, i64 %i.xv, i1 false)
  br label %_ZSt4copyIPPN2PP4WordES3_ET0_T_S5_S4_.exit24.i

bb.eb:                                            ; preds = %.noexc423
  %i.xx = icmp eq i64 %i.xv, 8
  br i1 %i.xx, label %bb.ec, label %_ZSt4copyIPPN2PP4WordES3_ET0_T_S5_S4_.exit24.i

bb.ec:                                            ; preds = %bb.eb
  %i.xy = load ptr, ptr %i.qv, align 8, !tbaa !51
  store ptr %i.xy, ptr %i.xs, align 8, !tbaa !51
  br label %_ZSt4copyIPPN2PP4WordES3_ET0_T_S5_S4_.exit24.i

_ZSt4copyIPPN2PP4WordES3_ET0_T_S5_S4_.exit24.i:   ; preds = %bb.ec, %bb.eb, %bb.ea
  %i.xz = shl i64 %i.wf, 3
  call void @_ZdlPvm(ptr noundef %i.wg, i64 noundef %i.xz) #21
  store ptr %i.xp, ptr %i.ha, align 8, !tbaa !59
  store i64 %i.xl, ptr %i.ie, align 8, !tbaa !63
  br label %.noexc411

.noexc411:                                        ; preds = %_ZSt4copyIPPN2PP4WordES3_ET0_T_S5_S4_.exit24.i, %bb.dx, %bb.dw, %bb.dv, %bb.dt, %bb.ds, %bb.dr
  %.0.i = phi ptr [ %i.xs, %_ZSt4copyIPPN2PP4WordES3_ET0_T_S5_S4_.exit24.i ], [ %i.ws, %bb.dt ], [ %i.ws, %bb.dr ], [ %i.ws, %bb.ds ], [ %i.ws, %bb.dv ], [ %i.ws, %bb.dw ], [ %i.ws, %bb.dx ] ; 3 uses
  store ptr %.0.i, ptr %i.he, align 8, !tbaa !76
  %i.ya = load ptr, ptr %.0.i, align 8, !tbaa !51 ; 2 uses
  store ptr %i.ya, ptr %i.hh, align 8, !tbaa !75
  %i.yb = getelementptr inbounds nuw i8, ptr %i.ya, i64 512
  store ptr %i.yb, ptr %i.hg, align 8, !tbaa !87
  %i.yc = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.wm
  %i.yd = getelementptr inbounds i8, ptr %i.yc, i64 -8 ; 3 uses
  store ptr %i.yd, ptr %i.hd, align 8, !tbaa !76
  %i.ye = load ptr, ptr %i.yd, align 8, !tbaa !51 ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN2PP3Cmd9handle_doERbRSt5dequeIiSaIiEERiS1_RNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEES6_:bb.a
  %i.tb = load ptr, ptr %i.sn, align 8, !tbaa !75
  %i.tc = ptrtoint ptr %i.ta to i64
  %i.td = ptrtoint ptr %i.tb to i64
  %i.te = sub i64 %i.tc, %i.td
  %i.tf = lshr exact i64 %i.te, 7
  %i.tg = add nsw i64 %i.sz, %i.tf
  %i.th = load ptr, ptr %i.so, align 8, !tbaa !87
  %i.ti = load ptr, ptr %i.am, align 8, !tbaa !71 ; 2 uses
  %i.tj = ptrtoint ptr %i.th to i64
  %i.tk = ptrtoint ptr %i.ti to i64               ; 2 uses
  %i.tl = sub i64 %i.tj, %i.tk
  %i.tm = lshr exact i64 %i.tl, 7
  %i.tn = add nsw i64 %i.tg, %i.tm
  %sext865 = shl i64 %i.tn, 32
  %i.to = ashr exact i64 %sext865, 32
  %i.tp = icmp slt i64 %indvars.iv, %i.to
  br i1 %i.tp, label %bb.ci, label %._crit_edge.i.i

bb.ci:                                            ; preds = %bb.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  %i.tq = load ptr, ptr %i.ao, align 8, !tbaa !75, !noalias !1423
  %i.tr = ptrtoint ptr %i.tq to i64
  %i.ts = sub i64 %i.tk, %i.tr
  %i.tt = ashr exact i64 %i.ts, 7
  %i.tu = add nsw i64 %i.tt, %indvars.iv          ; 5 uses
  %i.tv = icmp sgt i64 %i.tu, -1
  br i1 %i.tv, label %bb.cj, label %bb.cm

bb.cj:                                            ; preds = %bb.ci
  %i.tw = icmp samesign ult i64 %i.tu, 4
  br i1 %i.tw, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.tx = getelementptr inbounds nuw [128 x i8], ptr %i.ti, i64 %indvars.iv
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit286

bb.cl:                                            ; preds = %bb.cj
  %i.ty = lshr i64 %i.tu, 2
  br label %bb.cn

bb.cm:                                            ; preds = %bb.ci
  %i.tz = ashr i64 %i.tu, 2
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %i.ua = phi i64 [ %i.ty, %bb.cl ], [ %i.tz, %bb.cm ] ; 2 uses
  %i.ub = getelementptr inbounds [8 x i8], ptr %i.ss, i64 %i.ua
  %i.uc = load ptr, ptr %i.ub, align 8, !tbaa !51, !noalias !1423
  %i.ud = shl nsw i64 %i.ua, 2
  %i.ue = sub nsw i64 %i.tu, %i.ud
  %i.uf = getelementptr inbounds [128 x i8], ptr %i.uc, i64 %i.ue
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit286

_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit286:       ; preds = %bb.ck, %bb.cn
  %storemerge.i.i.i.i285 = phi ptr [ %i.uf, %bb.cn ], [ %i.tx, %bb.ck ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1426)
  store ptr %i.sp, ptr %11, align 8, !tbaa !8, !alias.scope !1426
  %i.ug = load ptr, ptr %storemerge.i.i.i.i285, align 8, !tbaa !45, !noalias !1426 ; 2 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i285, i64 8
  %i.ui = load i64, ptr %i.uh, align 8, !tbaa !12, !noalias !1426 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22, !noalias !1426
  store i64 %i.ui, ptr %i.c, align 8, !tbaa !67, !noalias !1426
  %i.uj = icmp ugt i64 %i.ui, 15
  br i1 %i.uj, label %.noexc.i.i288, label %._crit_edge.i.i.i287

.noexc.i.i288:                                    ; preds = %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit286
  %i.uk = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) ; 2 uses
  store ptr %i.uk, ptr %11, align 8, !tbaa !45, !alias.scope !1426
  %i.ul = load i64, ptr %i.c, align 8, !tbaa !67, !noalias !1426
  store i64 %i.ul, ptr %i.sp, align 8, !tbaa !15, !alias.scope !1426
  br label %._crit_edge.i.i.i287

._crit_edge.i.i.i287:                             ; preds = %.noexc.i.i288, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit286
  %i.um = phi ptr [ %i.uk, %.noexc.i.i288 ], [ %i.sp, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit286 ] ; 2 uses
  switch i64 %i.ui, label %bb.cp [
    i64 1, label %bb.co
    i64 0, label %_ZN2PP4Word10get_stringB5cxx11Ev.exit289
  ]

bb.co:                                            ; preds = %._crit_edge.i.i.i287
  %i.un = load i8, ptr %i.ug, align 1, !tbaa !15
  store i8 %i.un, ptr %i.um, align 1, !tbaa !15
  br label %_ZN2PP4Word10get_stringB5cxx11Ev.exit289

bb.cp:                                            ; preds = %._crit_edge.i.i.i287
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.um, ptr align 1 %i.ug, i64 %i.ui, i1 false)
  br label %_ZN2PP4Word10get_stringB5cxx11Ev.exit289

_ZN2PP4Word10get_stringB5cxx11Ev.exit289:         ; preds = %._crit_edge.i.i.i287, %bb.co, %bb.cp
  %i.uo = load i64, ptr %i.c, align 8, !tbaa !67, !noalias !1426 ; 2 uses
  store i64 %i.uo, ptr %i.sq, align 8, !tbaa !12, !alias.scope !1426
  %i.up = load ptr, ptr %11, align 8, !tbaa !45, !alias.scope !1426
  %i.uq = getelementptr inbounds nuw i8, ptr %i.up, i64 %i.uo
  store i8 0, ptr %i.uq, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22, !noalias !1426
  %i.ur = load i64, ptr %i.sq, align 8, !tbaa !12 ; 2 uses
  %i.us = icmp eq i64 %i.ur, 1
  %.pre705 = load ptr, ptr %11, align 8, !tbaa !45 ; 3 uses
  br i1 %i.us, label %bb.cq, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit291

bb.cq:                                            ; preds = %_ZN2PP4Word10get_stringB5cxx11Ev.exit289
  %lhsc = load i8, ptr %.pre705, align 1
  %i.ut = icmp eq i8 %lhsc, 61
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit291

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit291: ; preds = %bb.cq, %_ZN2PP4Word10get_stringB5cxx11Ev.exit289
  %i.uu = phi i1 [ false, %_ZN2PP4Word10get_stringB5cxx11Ev.exit289 ], [ %i.ut, %bb.cq ]
  %i.uv = icmp eq ptr %.pre705, %i.sp
  br i1 %i.uv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i293, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i292

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i293: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit291
  %i.uw = icmp ult i64 %i.ur, 16
  call void @llvm.assume(i1 %i.uw)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i292: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit291
  %i.ux = load i64, ptr %i.sp, align 8, !tbaa !15
  %i.uy = add i64 %i.ux, 1
  call void @_ZdlPvm(ptr noundef %.pre705, i64 noundef %i.uy) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i293, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i292
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br i1 %i.uu, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %bb.ch, !llvm.loop !1429

bb.cs:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294
  %i.uz = trunc nuw nsw i64 %indvars.iv to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #22
  %i.va = load ptr, ptr %i.sm, align 8, !tbaa !76 ; 2 uses
  %i.vb = load ptr, ptr %i.aq, align 8, !tbaa !76
  %i.vc = ptrtoint ptr %i.va to i64
  %i.vd = ptrtoint ptr %i.vb to i64
  %i.ve = sub i64 %i.vc, %i.vd
  %i.vf = ashr exact i64 %i.ve, 3
  %i.vg = icmp ne ptr %i.va, null
  %.neg.i.i298 = sext i1 %i.vg to i64
  %i.vh = add nsw i64 %i.vf, %.neg.i.i298
  %i.vi = shl nsw i64 %i.vh, 2
  %i.vj = load ptr, ptr %i.sl, align 8, !tbaa !71
  %i.vk = load ptr, ptr %i.sn, align 8, !tbaa !75
  %i.vl = ptrtoint ptr %i.vj to i64
  %i.vm = ptrtoint ptr %i.vk to i64
  %i.vn = sub i64 %i.vl, %i.vm
  %i.vo = lshr exact i64 %i.vn, 7
  %i.vp = add nsw i64 %i.vi, %i.vo
  %i.vq = load ptr, ptr %i.so, align 8, !tbaa !87
  %i.vr = load ptr, ptr %i.am, align 8, !tbaa !71
  %i.vs = ptrtoint ptr %i.vq to i64
  %i.vt = ptrtoint ptr %i.vr to i64
  %i.vu = sub i64 %i.vs, %i.vt
  %i.vv = lshr exact i64 %i.vu, 7
  %i.vw = add nsw i64 %i.vp, %i.vv
  %i.vx = trunc i64 %i.vw to i32
  %i.vy = add nsw i32 %i.vx, -1
  store i32 %i.vy, ptr %i.h, align 4, !tbaa !4
  %i.vz = add nuw nsw i32 %i.uz, 1
  call void @_ZN2PP3Cmd9subvar_w0EiRiRNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEES1_(ptr noundef nonnull align 8 dereferenceable(432) %0, i32 noundef %i.vz, ptr noundef nonnull align 4 dereferenceable(4) %i.h, ptr noundef nonnull align 8 dereferenceable(128) %5, ptr noundef nonnull align 4 dereferenceable(4) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #22
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.ch, %bb.cs
  call void @_ZN2PP3Cmd22handle_cmd_unary_minusERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef nonnull align 8 dereferenceable(128) %5, ptr noundef nonnull align 4 dereferenceable(4) %6)
  %i.wa = load ptr, ptr %i.sm, align 8, !tbaa !76 ; 2 uses
  %i.wb = load ptr, ptr %i.aq, align 8, !tbaa !76 ; 3 uses
  %i.wc = ptrtoint ptr %i.wa to i64
  %i.wd = ptrtoint ptr %i.wb to i64
  %i.we = sub i64 %i.wc, %i.wd
  %i.wf = ashr exact i64 %i.we, 3
  %i.wg = icmp ne ptr %i.wa, null
  %.neg.i.i299 = sext i1 %i.wg to i64
  %i.wh = add nsw i64 %i.wf, %.neg.i.i299
  %i.wi = shl nsw i64 %i.wh, 2
  %i.wj = load ptr, ptr %i.sl, align 8, !tbaa !71
  %i.wk = load ptr, ptr %i.sn, align 8, !tbaa !75
  %i.wl = ptrtoint ptr %i.wj to i64
  %i.wm = ptrtoint ptr %i.wk to i64
  %i.wn = sub i64 %i.wl, %i.wm
  %i.wo = lshr exact i64 %i.wn, 7
  %i.wp = add nsw i64 %i.wi, %i.wo
  %i.wq = load ptr, ptr %i.so, align 8, !tbaa !87
  %i.wr = load ptr, ptr %i.am, align 8, !tbaa !71 ; 3 uses
  %i.ws = ptrtoint ptr %i.wq to i64
  %i.wt = ptrtoint ptr %i.wr to i64               ; 3 uses
  %i.wu = sub i64 %i.ws, %i.wt
  %i.wv = lshr exact i64 %i.wu, 7
  %i.ww = add nsw i64 %i.wp, %i.wv                ; 2 uses
  %i.wx = trunc i64 %i.ww to i32                  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  %i.wy = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 8 uses
  store ptr %i.wy, ptr %12, align 8, !tbaa !8
  store i16 26916, ptr %i.wy, align 8
  %i.wz = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 7 uses
  store i64 2, ptr %i.wz, align 8, !tbaa !12
  %i.xa = getelementptr inbounds nuw i8, ptr %12, i64 18
  store i8 0, ptr %i.xa, align 2, !tbaa !15
  %i.xb = icmp sgt i32 %i.wx, 1
  %.pre706 = load ptr, ptr %i.ao, align 8, !tbaa !75, !noalias !1430 ; 2 uses
  br i1 %i.xb, label %bb.ct, label %._crit_edge.i.i..thread664_crit_edge

._crit_edge.i.i..thread664_crit_edge:             ; preds = %._crit_edge.i.i
  %.pre715 = ptrtoint ptr %.pre706 to i64
  %.pre717 = sub i64 %i.wt, %.pre715              ; 2 uses
  %.pre719 = ashr exact i64 %.pre717, 7
  br label %.thread664

bb.ct:                                            ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  %i.xc = ptrtoint ptr %.pre706 to i64
  %i.xd = sub i64 %i.wt, %i.xc
  %i.xe = ashr exact i64 %i.xd, 7                 ; 3 uses
  %i.xf = add nsw i64 %i.xe, 1                    ; 3 uses
  %i.xg = icmp sgt i64 %i.xe, -2
  br i1 %i.xg, label %bb.cu, label %bb.cx

bb.cu:                                            ; preds = %bb.ct
  %i.xh = icmp slt i64 %i.xe, 3
  br i1 %i.xh, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.xi = getelementptr inbounds nuw i8, ptr %i.wr, i64 128
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit301

bb.cw:                                            ; preds = %bb.cu
  %i.xj = lshr i64 %i.xf, 2
  br label %bb.cy

bb.cx:                                            ; preds = %bb.ct
  %i.xk = ashr i64 %i.xf, 2
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %i.xl = phi i64 [ %i.xj, %bb.cw ], [ %i.xk, %bb.cx ] ; 2 uses
  %i.xm = getelementptr inbounds [8 x i8], ptr %i.wb, i64 %i.xl
  %i.xn = load ptr, ptr %i.xm, align 8, !tbaa !51, !noalias !1433
  %i.xo = shl nsw i64 %i.xl, 2
  %i.xp = sub nsw i64 %i.xf, %i.xo
  %i.xq = getelementptr inbounds [128 x i8], ptr %i.xn, i64 %i.xp
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit301

_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit301:       ; preds = %bb.cv, %bb.cy
  %storemerge.i.i.i.i300 = phi ptr [ %i.xq, %bb.cy ], [ %i.xi, %bb.cv ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1436)
  %i.xr = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 9 uses
  store ptr %i.xr, ptr %13, align 8, !tbaa !8, !alias.scope !1436
  %i.xs = load ptr, ptr %storemerge.i.i.i.i300, align 8, !tbaa !45, !noalias !1436 ; 2 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i300, i64 8
  %i.xu = load i64, ptr %i.xt, align 8, !tbaa !12, !noalias !1436 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22, !noalias !1436
  store i64 %i.xu, ptr %i.b, align 8, !tbaa !67, !noalias !1436
  %i.xv = icmp ugt i64 %i.xu, 15
  br i1 %i.xv, label %.noexc.i.i303, label %._crit_edge.i.i.i302

.noexc.i.i303:                                    ; preds = %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit301
  %i.xw = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc304 unwind label %bb.dm ; 2 uses

.noexc304:                                        ; preds = %.noexc.i.i303
  store ptr %i.xw, ptr %13, align 8, !tbaa !45, !alias.scope !1436
  %i.xx = load i64, ptr %i.b, align 8, !tbaa !67, !noalias !1436
  store i64 %i.xx, ptr %i.xr, align 8, !tbaa !15, !alias.scope !1436
  br label %._crit_edge.i.i.i302

._crit_edge.i.i.i302:                             ; preds = %.noexc304, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit301
  %i.xy = phi ptr [ %i.xw, %.noexc304 ], [ %i.xr, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit301 ] ; 2 uses
  switch i64 %i.xu, label %bb.da [
    i64 1, label %bb.cz
    i64 0, label %bb.db
  ]

bb.cz:                                            ; preds = %._crit_edge.i.i.i302
  %i.xz = load i8, ptr %i.xs, align 1, !tbaa !15
  store i8 %i.xz, ptr %i.xy, align 1, !tbaa !15
  br label %bb.db

bb.da:                                            ; preds = %._crit_edge.i.i.i302
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.xy, ptr align 1 %i.xs, i64 %i.xu, i1 false)
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz, %._crit_edge.i.i.i302
  %i.ya = load i64, ptr %i.b, align 8, !tbaa !67, !noalias !1436 ; 2 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 6 uses
  store i64 %i.ya, ptr %i.yb, align 8, !tbaa !12, !alias.scope !1436
  %i.yc = load ptr, ptr %13, align 8, !tbaa !45, !alias.scope !1436
  %i.yd = getelementptr inbounds nuw i8, ptr %i.yc, i64 %i.ya
  store i8 0, ptr %i.yd, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22, !noalias !1436
  %i.ye = load ptr, ptr %12, align 8, !tbaa !45   ; 6 uses
  %i.yf = icmp eq ptr %i.ye, %i.wy
  %i.yg = load ptr, ptr %13, align 8, !tbaa !45   ; 5 uses
  %i.yh = icmp eq ptr %i.yg, %i.xr                ; 2 uses
  br i1 %i.yf, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.db
  br i1 %i.yh, label %bb.dc, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.db
  br i1 %i.yh, label %bb.dc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.dc:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.yi = load i64, ptr %i.yb, align 8, !tbaa !12 ; 3 uses
  %i.yj = icmp ult i64 %i.yi, 16
  call void @llvm.assume(i1 %i.yj)
  switch i64 %i.yi, label %bb.de [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.dd
  ]

bb.dd:                                            ; preds = %bb.dc
  %i.yk = load i8, ptr %i.yg, align 1, !tbaa !15
  store i8 %i.yk, ptr %i.ye, align 1, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.de:                                            ; preds = %bb.dc
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ye, ptr align 1 %i.yg, i64 %i.yi, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.de, %bb.dd, %bb.dc
  %i.yl = load i64, ptr %i.yb, align 8, !tbaa !12 ; 2 uses
  store i64 %i.yl, ptr %i.wz, align 8, !tbaa !12
  %i.ym = load ptr, ptr %12, align 8, !tbaa !45
  %i.yn = getelementptr inbounds nuw i8, ptr %i.ym, i64 %i.yl
  store i8 0, ptr %i.yn, align 1, !tbaa !15
  %.pre.i = load ptr, ptr %13, align 8, !tbaa !45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.yg, ptr %12, align 8, !tbaa !45
  %i.yo = load <2 x i64>, ptr %i.yb, align 8, !tbaa !15
  store <2 x i64> %i.yo, ptr %i.wz, align 8, !tbaa !15
  br label %bb.dg

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.yp = load i64, ptr %i.wy, align 8, !tbaa !15
  store ptr %i.yg, ptr %12, align 8, !tbaa !45
  %i.yq = load <2 x i64>, ptr %i.yb, align 8, !tbaa !15
  store <2 x i64> %i.yq, ptr %i.wz, align 8, !tbaa !15
  %.not.i = icmp eq ptr %i.ye, null
  br i1 %.not.i, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.ye, ptr %13, align 8, !tbaa !45
  store i64 %i.yp, ptr %i.xr, align 8, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.dg:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.xr, ptr %13, align 8, !tbaa !45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.df, %bb.dg
  %i.yr = phi ptr [ %i.ye, %bb.df ], [ %i.xr, %bb.dg ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.yb, align 8, !tbaa !12
  store i8 0, ptr %i.yr, align 1, !tbaa !15
  %i.ys = load ptr, ptr %13, align 8, !tbaa !45   ; 2 uses
  %i.yt = icmp eq ptr %i.ys, %i.xr
  br i1 %i.yt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i306

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i306: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.yu = load i64, ptr %i.xr, align 8, !tbaa !15
  %i.yv = add i64 %i.yu, 1
  call void @_ZdlPvm(ptr noundef %i.ys, i64 noundef %i.yv) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i306
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  %i.yw = load ptr, ptr %i.am, align 8, !tbaa !71, !noalias !1439 ; 5 uses
  %i.yx = load ptr, ptr %i.ao, align 8, !tbaa !75, !noalias !1439
  %i.yy = load ptr, ptr %i.aq, align 8, !tbaa !76, !noalias !1439 ; 4 uses
  %i.yz = ptrtoint ptr %i.yw to i64
  %i.za = ptrtoint ptr %i.yx to i64
  %i.zb = sub i64 %i.yz, %i.za                    ; 3 uses
  %i.zc = ashr exact i64 %i.zb, 7                 ; 11 uses
  %i.zd = add nsw i64 %i.zc, 1                    ; 3 uses
  %i.ze = icmp sgt i64 %i.zc, -2
  br i1 %i.ze, label %bb.dh, label %bb.dk

bb.dh:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308
  %i.zf = icmp slt i64 %i.zc, 3
  br i1 %i.zf, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %i.zg = getelementptr inbounds nuw i8, ptr %i.yw, i64 128
  br label %bb.do

bb.dj:                                            ; preds = %bb.dh
  %i.zh = lshr i64 %i.zd, 2
  br label %bb.dl

bb.dk:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308
  %i.zi = ashr i64 %i.zd, 2
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dj
  %i.zj = phi i64 [ %i.zh, %bb.dj ], [ %i.zi, %bb.dk ] ; 2 uses
  %i.zk = getelementptr inbounds [8 x i8], ptr %i.yy, i64 %i.zj
  %i.zl = load ptr, ptr %i.zk, align 8, !tbaa !51, !noalias !1439
  %i.zm = shl nsw i64 %i.zj, 2
  %i.zn = sub nsw i64 %i.zd, %i.zm
  %i.zo = getelementptr inbounds [128 x i8], ptr %i.zl, i64 %i.zn
  br label %bb.do

bb.dm:                                            ; preds = %.noexc.i.i303
  %i.zp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.ln

bb.dn:                                            ; preds = %.invoke, %.noexc650, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i645, %.noexc648, %bb.eg, %.noexc639, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i634, %.noexc637, %bb.ee, %.noexc628, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i623, %.noexc626, %bb.ec, %.noexc617, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i612, %.noexc615, %bb.dz, %.noexc606, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i601, %.noexc604, %bb.dx, %.noexc595, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc593, %bb.dv, %_ZNSolsEPFRSoS_E.exit411, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit409, %bb.ga, %_ZNSolsEPFRSoS_E.exit386, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit384, %bb.fn, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit373, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit371, %_ZNSolsEPFRSoS_E.exit369, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit367, %_ZNSolsEPFRSoS_E.exit365, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit363, %_ZNSolsEPFRSoS_E.exit361, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit359, %bb.ey, %_ZNSolsEPFRSoS_E.exit335, %_ZNSolsEPFRSoS_E.exit331, %bb.ea, %_ZNSolsEPFRSoS_E.exit325, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit320, %_ZNSolsEPFRSoS_E.exit318, %_ZNSolsEPFRSoS_E.exit, %bb.dt, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit407, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit382, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit357, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit327, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit312
  %i.zq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ln

bb.do:                                            ; preds = %bb.dl, %bb.di
  %storemerge.i.i.i.i309 = phi ptr [ %i.zo, %bb.dl ], [ %i.zg, %bb.di ]
  %i.zr = icmp samesign ult i32 %i.wx, 6
  br i1 %i.zr, label %.thread664, label %bb.es

.thread664:                                       ; preds = %._crit_edge.i.i..thread664_crit_edge, %bb.do
  %.pre-phi720 = phi i64 [ %.pre719, %._crit_edge.i.i..thread664_crit_edge ], [ %i.zc, %bb.do ] ; 4 uses
  %.pre-phi718 = phi i64 [ %.pre717, %._crit_edge.i.i..thread664_crit_edge ], [ %i.zb, %bb.do ]
  %i.zs = phi ptr [ %i.wb, %._crit_edge.i.i..thread664_crit_edge ], [ %i.yy, %bb.do ]
  %i.zt = phi ptr [ %i.wr, %._crit_edge.i.i..thread664_crit_edge ], [ %i.yw, %bb.do ]
  %i.zu = icmp sgt i64 %.pre-phi720, -1
  br i1 %i.zu, label %bb.dp, label %bb.dr

bb.dp:                                            ; preds = %.thread664
  %i.zv = icmp samesign ult i64 %.pre-phi720, 4
  br i1 %i.zv, label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit312, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.zw = lshr i64 %.pre-phi720, 2
  br label %bb.ds

bb.dr:                                            ; preds = %.thread664
  %i.zx = ashr i64 %.pre-phi718, 9
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dq
  %i.zy = phi i64 [ %i.zw, %bb.dq ], [ %i.zx, %bb.dr ] ; 2 uses
  %i.zz = getelementptr inbounds [8 x i8], ptr %i.zs, i64 %i.zy
  %i.aaa = load ptr, ptr %i.zz, align 8, !tbaa !51, !noalias !1430
  %i.aab = shl nsw i64 %i.zy, 2
  %i.aac = sub nsw i64 %.pre-phi720, %i.aab
  %i.aad = getelementptr inbounds [128 x i8], ptr %i.aaa, i64 %i.aac
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit312

_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit312:       ; preds = %bb.dp, %bb.ds
  %storemerge.i.i.i.i311 = phi ptr [ %i.aad, %bb.ds ], [ %i.zt, %bb.dp ]
  invoke void @_ZN2PP4Word11fatal_errorERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi(ptr noundef nonnull align 8 dereferenceable(128) %storemerge.i.i.i.i311, ptr noundef nonnull align 8 dereferenceable(128) %5, ptr noundef nonnull align 4 dereferenceable(4) %6)
          to label %bb.dt unwind label %bb.dn

bb.dt:                                            ; preds = %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit312
  %i.aae = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 19 uses
  %i.aaf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aae, ptr noundef nonnull @.str.148, i64 noundef 66)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.dn ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.dt
  %i.aag = load ptr, ptr %i.aae, align 8, !tbaa !147
  %i.aah = getelementptr i8, ptr %i.aag, i64 -24
  %i.aai = load i64, ptr %i.aah, align 8
  %i.aaj = getelementptr inbounds i8, ptr %i.aae, i64 %i.aai
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aaj, i64 240
  %i.aal = load ptr, ptr %i.aak, align 8, !tbaa !149 ; 6 uses
  %.not.i.i.i588 = icmp eq ptr %i.aal, null
  br i1 %.not.i.i.i588, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i589

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i589: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aal, i64 56
  %i.aan = load i8, ptr %i.aam, align 8, !tbaa !164
  %.not.i1.i.i590 = icmp eq i8 %i.aan, 0
  br i1 %.not.i1.i.i590, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i589
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aal, i64 67
  %i.aap = load i8, ptr %i.aao, align 1, !tbaa !15
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.dv:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i589
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.aal)
          to label %.noexc593 unwind label %bb.dn

.noexc593:                                        ; preds = %bb.dv
  %i.aaq = load ptr, ptr %i.aal, align 8, !tbaa !147
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aaq, i64 48
  %i.aas = load ptr, ptr %i.aar, align 8
  %i.aat = invoke noundef signext i8 %i.aas(ptr noundef nonnull align 8 dereferenceable(570) %i.aal, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %bb.dn, !inline_history !170

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc593, %bb.du
  %.0.i.i.i591 = phi i8 [ %i.aap, %bb.du ], [ %i.aat, %.noexc593 ]
  %i.aau = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.aae, i8 noundef signext %.0.i.i.i591)
          to label %.noexc595 unwind label %bb.dn

.noexc595:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.aav = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aau)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.dn ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc595
  %i.aaw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aae, ptr noundef nonnull @.str.149, i64 noundef 13)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit316 unwind label %bb.dn ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit316: ; preds = %_ZNSolsEPFRSoS_E.exit
  %i.aax = load ptr, ptr %i.aae, align 8, !tbaa !147
  %i.aay = getelementptr i8, ptr %i.aax, i64 -24
  %i.aaz = load i64, ptr %i.aay, align 8
  %i.aba = getelementptr inbounds i8, ptr %i.aae, i64 %i.aaz
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aba, i64 240
  %i.abc = load ptr, ptr %i.abb, align 8, !tbaa !149 ; 6 uses
  %.not.i.i.i598 = icmp eq ptr %i.abc, null
  br i1 %.not.i.i.i598, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i599

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i599: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit316
  %i.abd = getelementptr inbounds nuw i8, ptr %i.abc, i64 56
  %i.abe = load i8, ptr %i.abd, align 8, !tbaa !164
  %.not.i1.i.i600 = icmp eq i8 %i.abe, 0
  br i1 %.not.i1.i.i600, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i599
  %i.abf = getelementptr inbounds nuw i8, ptr %i.abc, i64 67
  %i.abg = load i8, ptr %i.abf, align 1, !tbaa !15
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i601

bb.dx:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i599
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.abc)
          to label %.noexc604 unwind label %bb.dn

.noexc604:                                        ; preds = %bb.dx
  %i.abh = load ptr, ptr %i.abc, align 8, !tbaa !147
  %i.abi = getelementptr inbounds nuw i8, ptr %i.abh, i64 48
  %i.abj = load ptr, ptr %i.abi, align 8
  %i.abk = invoke noundef signext i8 %i.abj(ptr noundef nonnull align 8 dereferenceable(570) %i.abc, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i601 unwind label %bb.dn, !inline_history !170

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i601: ; preds = %.noexc604, %bb.dw
  %.0.i.i.i602 = phi i8 [ %i.abg, %bb.dw ], [ %i.abk, %.noexc604 ]
  %i.abl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.aae, i8 noundef signext %.0.i.i.i602)
          to label %.noexc606 unwind label %bb.dn

.noexc606:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i601
  %i.abm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.abl)
          to label %_ZNSolsEPFRSoS_E.exit318 unwind label %bb.dn ; 2 uses

_ZNSolsEPFRSoS_E.exit318:                         ; preds = %.noexc606
  %i.abn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.abm, ptr noundef nonnull @.str.150, i64 noundef 7)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit320 unwind label %bb.dn ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit320: ; preds = %_ZNSolsEPFRSoS_E.exit318
  %i.abo = load ptr, ptr %12, align 8, !tbaa !45
  %i.abp = load i64, ptr %i.wz, align 8, !tbaa !12
  %i.abq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.abm, ptr noundef %i.abo, i64 noundef %i.abp)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.dn ; 4 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit320
  %i.abr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.abq, ptr noundef nonnull @.str.151, i64 noundef 9)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit323 unwind label %bb.dn ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit323: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.abs = load ptr, ptr %i.abq, align 8, !tbaa !147
  %i.abt = getelementptr i8, ptr %i.abs, i64 -24
  %i.abu = load i64, ptr %i.abt, align 8
  %i.abv = getelementptr inbounds i8, ptr %i.abq, i64 %i.abu
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abv, i64 240
  %i.abx = load ptr, ptr %i.abw, align 8, !tbaa !149 ; 6 uses
  %.not.i.i.i609 = icmp eq ptr %i.abx, null
  br i1 %.not.i.i.i609, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i610

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i610: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit323
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abx, i64 56
  %i.abz = load i8, ptr %i.aby, align 8, !tbaa !164
  %.not.i1.i.i611 = icmp eq i8 %i.abz, 0
  br i1 %.not.i1.i.i611, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i610
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abx, i64 67
  %i.acb = load i8, ptr %i.aca, align 1, !tbaa !15
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i612

bb.dz:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i610
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.abx)
          to label %.noexc615 unwind label %bb.dn

.noexc615:                                        ; preds = %bb.dz
  %i.acc = load ptr, ptr %i.abx, align 8, !tbaa !147
  %i.acd = getelementptr inbounds nuw i8, ptr %i.acc, i64 48
  %i.ace = load ptr, ptr %i.acd, align 8
  %i.acf = invoke noundef signext i8 %i.ace(ptr noundef nonnull align 8 dereferenceable(570) %i.abx, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i612 unwind label %bb.dn, !inline_history !170

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i612: ; preds = %.noexc615, %bb.dy
  %.0.i.i.i613 = phi i8 [ %i.acb, %bb.dy ], [ %i.acf, %.noexc615 ]
  %i.acg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.abq, i8 noundef signext %.0.i.i.i613)
          to label %.noexc617 unwind label %bb.dn

.noexc617:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i612
  %i.ach = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.acg)
          to label %_ZNSolsEPFRSoS_E.exit325 unwind label %bb.dn ; 0 uses

_ZNSolsEPFRSoS_E.exit325:                         ; preds = %.noexc617
  %i.aci = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aae, ptr noundef nonnull @.str.152, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit327 unwind label %bb.dn ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit327: ; preds = %_ZNSolsEPFRSoS_E.exit325
  %i.acj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.aae, i32 noundef %i.wx)
          to label %bb.ea unwind label %bb.dn     ; 4 uses

bb.ea:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit327
  %i.ack = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.acj, ptr noundef nonnull @.str.153, i64 noundef 19)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit329 unwind label %bb.dn ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit329: ; preds = %bb.ea
  %i.acl = load ptr, ptr %i.acj, align 8, !tbaa !147
  %i.acm = getelementptr i8, ptr %i.acl, i64 -24
  %i.acn = load i64, ptr %i.acm, align 8
  %i.aco = getelementptr inbounds i8, ptr %i.acj, i64 %i.acn
  %i.acp = getelementptr inbounds nuw i8, ptr %i.aco, i64 240
  %i.acq = load ptr, ptr %i.acp, align 8, !tbaa !149 ; 6 uses
  %.not.i.i.i620 = icmp eq ptr %i.acq, null
  br i1 %.not.i.i.i620, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i621

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i621: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit329
  %i.acr = getelementptr inbounds nuw i8, ptr %i.acq, i64 56
  %i.acs = load i8, ptr %i.acr, align 8, !tbaa !164
  %.not.i1.i.i622 = icmp eq i8 %i.acs, 0
  br i1 %.not.i1.i.i622, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i621
  %i.act = getelementptr inbounds nuw i8, ptr %i.acq, i64 67
  %i.acu = load i8, ptr %i.act, align 1, !tbaa !15
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i623

bb.ec:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i621
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.acq)
          to label %.noexc626 unwind label %bb.dn

.noexc626:                                        ; preds = %bb.ec
  %i.acv = load ptr, ptr %i.acq, align 8, !tbaa !147
  %i.acw = getelementptr inbounds nuw i8, ptr %i.acv, i64 48
  %i.acx = load ptr, ptr %i.acw, align 8
  %i.acy = invoke noundef signext i8 %i.acx(ptr noundef nonnull align 8 dereferenceable(570) %i.acq, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i623 unwind label %bb.dn, !inline_history !170

end_hunk_5
begin_hunk_6_@_ZNSt5dequeIN2PP4WordESaIS1_EE13_M_insert_auxIJRKS1_EEESt15_Deque_iteratorIS1_RS1_PS1_ESA_DpOT_:bb.a
bb.u:                                             ; preds = %_ZNSt15_Deque_iteratorIN2PP4WordERS1_PS1_EmmEv.exit
  %i.ds = getelementptr inbounds i8, ptr %.sroa.17.0, i64 -8 ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !51 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 512 ; 2 uses
  br label %_ZNSt15_Deque_iteratorIN2PP4WordERS1_PS1_EmmEv.exit16

_ZNSt15_Deque_iteratorIN2PP4WordERS1_PS1_EmmEv.exit16: ; preds = %_ZNSt15_Deque_iteratorIN2PP4WordERS1_PS1_EmmEv.exit, %bb.u
  %.sroa.14.0 = phi ptr [ %i.ds, %bb.u ], [ %.sroa.17.0, %_ZNSt15_Deque_iteratorIN2PP4WordERS1_PS1_EmmEv.exit ]
  %.sroa.11.0 = phi ptr [ %i.du, %bb.u ], [ %.sroa.13.0, %_ZNSt15_Deque_iteratorIN2PP4WordERS1_PS1_EmmEv.exit ]
  %.sroa.7.0 = phi ptr [ %i.dt, %bb.u ], [ %.sroa.841.0, %_ZNSt15_Deque_iteratorIN2PP4WordERS1_PS1_EmmEv.exit ]
  %i.dv = phi ptr [ %i.du, %bb.u ], [ %i.dq, %_ZNSt15_Deque_iteratorIN2PP4WordERS1_PS1_EmmEv.exit ]
  %i.dw = getelementptr inbounds i8, ptr %i.dv, i64 -128
  %i.dx = load ptr, ptr %i.a, align 8, !tbaa !71, !noalias !2467 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !75, !noalias !2467 ; 2 uses
  %i.ea = load ptr, ptr %i.u, align 8, !tbaa !87, !noalias !2467
  %i.eb = load ptr, ptr %i.d, align 8, !tbaa !76, !noalias !2467 ; 2 uses
  %i.ec = ptrtoint ptr %i.dx to i64
  %i.ed = ptrtoint ptr %i.dz to i64
  %i.ee = sub i64 %i.ec, %i.ed
  %i.ef = ashr exact i64 %i.ee, 7
  %i.eg = add nsw i64 %i.ef, %i.ab                ; 5 uses
  %i.eh = icmp sgt i64 %i.eg, -1
  br i1 %i.eh, label %bb.v, label %bb.y

bb.v:                                             ; preds = %_ZNSt15_Deque_iteratorIN2PP4WordERS1_PS1_EmmEv.exit16
  %i.ei = icmp samesign ult i64 %i.eg, 4
  br i1 %i.ei, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ej = getelementptr inbounds [128 x i8], ptr %i.dx, i64 %i.ab
  br label %_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El.exit18

bb.x:                                             ; preds = %bb.v
  %i.ek = lshr i64 %i.eg, 2
  br label %bb.z

bb.y:                                             ; preds = %_ZNSt15_Deque_iteratorIN2PP4WordERS1_PS1_EmmEv.exit16
  %i.el = ashr i64 %i.eg, 2
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.em = phi i64 [ %i.ek, %bb.x ], [ %i.el, %bb.y ] ; 2 uses
  %i.en = getelementptr inbounds [8 x i8], ptr %i.eb, i64 %i.em ; 2 uses
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !51, !noalias !2467 ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 512
  %i.eq = shl nsw i64 %i.em, 2
  %i.er = sub nsw i64 %i.eg, %i.eq
  %i.es = getelementptr inbounds [128 x i8], ptr %i.eo, i64 %i.er
  br label %_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El.exit18

_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El.exit18: ; preds = %bb.w, %bb.z
  %.sroa.8.0 = phi ptr [ %i.eb, %bb.w ], [ %i.en, %bb.z ] ; 2 uses
  %.sroa.633.0 = phi ptr [ %i.ea, %bb.w ], [ %i.ep, %bb.z ] ; 2 uses
  %.sroa.432.0 = phi ptr [ %i.dz, %bb.w ], [ %i.eo, %bb.z ] ; 2 uses
  %storemerge.i.i17 = phi ptr [ %i.ej, %bb.w ], [ %i.es, %bb.z ] ; 2 uses
  store ptr %storemerge.i.i17, ptr %2, align 8, !tbaa !51
  store ptr %.sroa.432.0, ptr %i.n, align 8, !tbaa !51
  %.sroa.633.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %.sroa.633.0, ptr %.sroa.633.0..sroa_idx, align 8, !tbaa !51
  store ptr %.sroa.8.0, ptr %i.b, align 8, !tbaa !1615
  call void @llvm.lifetime.start.p0(ptr nonnull %7), !noalias !2470
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !2473
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !2473
  call void @llvm.lifetime.start.p0(ptr nonnull %6), !noalias !2473
  store ptr %storemerge.i.i17, ptr %4, align 8, !tbaa !71, !noalias !2476
  %i.et = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.sroa.432.0, ptr %i.et, align 8, !tbaa !75, !noalias !2476
  %i.eu = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %.sroa.633.0, ptr %i.eu, align 8, !tbaa !87, !noalias !2476
  %i.ev = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %.sroa.8.0, ptr %i.ev, align 8, !tbaa !76, !noalias !2476
  store ptr %i.dw, ptr %5, align 8, !tbaa !71, !noalias !2476
  %i.ew = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %.sroa.7.0, ptr %i.ew, align 8, !tbaa !75, !noalias !2476
  %i.ex = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %.sroa.11.0, ptr %i.ex, align 8, !tbaa !87, !noalias !2476
  %i.ey = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %.sroa.14.0, ptr %i.ey, align 8, !tbaa !76, !noalias !2476
  store ptr %i.dq, ptr %6, align 8, !tbaa !71, !noalias !2476
  %i.ez = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %.sroa.841.0, ptr %i.ez, align 8, !tbaa !75, !noalias !2476
  %i.fa = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %.sroa.13.0, ptr %i.fa, align 8, !tbaa !87, !noalias !2476
  %i.fb = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %.sroa.17.0, ptr %i.fb, align 8, !tbaa !76, !noalias !2476
  invoke void @_ZSt24__copy_move_backward_ditILb1EN2PP4WordERS1_PS1_St15_Deque_iteratorIS1_S2_S3_EET3_S4_IT0_T1_T2_ESA_S6_(ptr dead_on_unwind nonnull writable sret(%"struct.std::_Deque_iterator") align 8 %7, ptr noundef nonnull dead_on_return %4, ptr noundef nonnull dead_on_return %5, ptr noundef nonnull dead_on_return %6)
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El.exit18
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !2473
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !2473
  call void @llvm.lifetime.end.p0(ptr nonnull %6), !noalias !2473
  call void @llvm.lifetime.end.p0(ptr nonnull %7), !noalias !2470
  br label %bb.ac

bb.ab:                                            ; preds = %_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El.exit18
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ac:                                            ; preds = %bb.aa, %bb.m
  %i.fd = load ptr, ptr %2, align 8, !tbaa !71
  invoke void @_ZN2PP4WordaSERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.PP::Word") align 8 %13, ptr noundef nonnull align 8 dereferenceable(128) %i.fd, ptr noundef nonnull align 8 dereferenceable(128) %12)
          to label %bb.ad unwind label %bb.n

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN2PP4WordD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %13) #22
  %i.fe = load <2 x ptr>, ptr %2, align 8, !tbaa !51
  store <2 x ptr> %i.fe, ptr %0, align 8, !tbaa !51
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fh = load <2 x ptr>, ptr %i.fg, align 8, !tbaa !55
  store <2 x ptr> %i.fh, ptr %i.ff, align 8, !tbaa !55
  call void @_ZN2PP4WordD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %12) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  ret void

bb.ae:                                            ; preds = %bb.ab, %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.cu, %bb.n ], [ %i.cv, %bb.o ], [ %i.fc, %bb.ab ]
  call void @_ZN2PP4WordD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %12) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIN2PP4WordESaIS1_EE17_M_push_front_auxIJRKS1_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(128) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !76   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !76   ; 3 uses
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i
  %i.m = shl nsw i64 %i.l, 2
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !71
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !75
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 7
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !87
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !71
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 7
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = icmp eq i64 %i.ac, 72057594037927935
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.220) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ae = load ptr, ptr %0, align 8, !tbaa !59
  %i.af = icmp eq ptr %i.f, %i.ae
  br i1 %i.af, label %bb.d, label %_ZNSt5dequeIN2PP4WordESaIS1_EE23_M_reserve_map_at_frontEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeIN2PP4WordESaIS1_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext true)
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !60
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EE23_M_reserve_map_at_frontEm.exit

_ZNSt5dequeIN2PP4WordESaIS1_EE23_M_reserve_map_at_frontEm.exit: ; preds = %bb.c, %bb.d
  %i.ag = phi ptr [ %i.f, %bb.c ], [ %.pre, %bb.d ]
  %i.ah = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #25 ; 4 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ag, i64 -8 ; 2 uses
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !51
  store ptr %i.ai, ptr %i.e, align 8, !tbaa !76
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.ah, ptr %i.aj, align 8, !tbaa !75
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 512
  store ptr %i.ak, ptr %i.v, align 8, !tbaa !87
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 384 ; 2 uses
  store ptr %i.al, ptr %i.b, align 8, !tbaa !899
  invoke void @_ZN2PP4WordC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(128) %i.al, ptr noundef nonnull align 8 dereferenceable(128) %1)
          to label %_ZNSt16allocator_traitsISaIN2PP4WordEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit unwind label %bb.e

bb.e:                                             ; preds = %_ZNSt5dequeIN2PP4WordESaIS1_EE23_M_reserve_map_at_frontEm.exit
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  %i.ao = tail call ptr @__cxa_begin_catch(ptr %i.an) #22 ; 0 uses
  %i.ap = load ptr, ptr %i.b, align 8, !tbaa !71
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 128 ; 2 uses
  store ptr %i.aq, ptr %i.b, align 8, !tbaa !71
  %i.ar = load ptr, ptr %i.v, align 8, !tbaa !87
  %i.as = icmp eq ptr %i.aq, %i.ar
  %.pre4 = load ptr, ptr %i.e, align 8, !tbaa !60 ; 2 uses
  br i1 %i.as, label %bb.f, label %_ZNSt15_Deque_iteratorIN2PP4WordERS1_PS1_EppEv.exit

bb.f:                                             ; preds = %bb.e
  %i.at = getelementptr inbounds nuw i8, ptr %.pre4, i64 8 ; 3 uses
  store ptr %i.at, ptr %i.e, align 8, !tbaa !76
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !51 ; 3 uses
  store ptr %i.au, ptr %i.aj, align 8, !tbaa !75
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 512
  store ptr %i.av, ptr %i.v, align 8, !tbaa !87
  store ptr %i.au, ptr %i.b, align 8, !tbaa !71
  br label %_ZNSt15_Deque_iteratorIN2PP4WordERS1_PS1_EppEv.exit

_ZNSt15_Deque_iteratorIN2PP4WordERS1_PS1_EppEv.exit: ; preds = %bb.e, %bb.f
  %i.aw = phi ptr [ %.pre4, %bb.e ], [ %i.at, %bb.f ]
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !51
  tail call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef 512) #21
  invoke void @__cxa_rethrow() #24
          to label %bb.j unwind label %bb.g

bb.g:                                             ; preds = %_ZNSt15_Deque_iteratorIN2PP4WordERS1_PS1_EppEv.exit
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

_ZNSt16allocator_traitsISaIN2PP4WordEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit: ; preds = %_ZNSt5dequeIN2PP4WordESaIS1_EE23_M_reserve_map_at_frontEm.exit
  ret void

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.az

bb.i:                                             ; preds = %bb.g
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  tail call void @__clang_call_terminate(ptr %i.bb) #23
  unreachable

bb.j:                                             ; preds = %_ZNSt15_Deque_iteratorIN2PP4WordERS1_PS1_EppEv.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIN2PP4WordESaIS1_EE17_M_push_front_auxIJS1_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(128) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !76   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !76   ; 3 uses
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i
  %i.m = shl nsw i64 %i.l, 2
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !71
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !75
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 7
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !87
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !71
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 7
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = icmp eq i64 %i.ac, 72057594037927935
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.220) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ae = load ptr, ptr %0, align 8, !tbaa !59
  %i.af = icmp eq ptr %i.f, %i.ae
  br i1 %i.af, label %bb.d, label %_ZNSt5dequeIN2PP4WordESaIS1_EE23_M_reserve_map_at_frontEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeIN2PP4WordESaIS1_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext true)
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !60
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EE23_M_reserve_map_at_frontEm.exit

_ZNSt5dequeIN2PP4WordESaIS1_EE23_M_reserve_map_at_frontEm.exit: ; preds = %bb.c, %bb.d
  %i.ag = phi ptr [ %i.f, %bb.c ], [ %.pre, %bb.d ]
  %i.ah = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #25 ; 4 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ag, i64 -8 ; 2 uses
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !51
  store ptr %i.ai, ptr %i.e, align 8, !tbaa !76
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.ah, ptr %i.aj, align 8, !tbaa !75
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 512
  store ptr %i.ak, ptr %i.v, align 8, !tbaa !87
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 384 ; 2 uses
  store ptr %i.al, ptr %i.b, align 8, !tbaa !899
  invoke void @_ZN2PP4WordC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(128) %i.al, ptr noundef nonnull align 8 dereferenceable(128) %1)
          to label %_ZNSt16allocator_traitsISaIN2PP4WordEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_.exit unwind label %bb.e

bb.e:                                             ; preds = %_ZNSt5dequeIN2PP4WordESaIS1_EE23_M_reserve_map_at_frontEm.exit
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  %i.ao = tail call ptr @__cxa_begin_catch(ptr %i.an) #22 ; 0 uses
  %i.ap = load ptr, ptr %i.b, align 8, !tbaa !71
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 128 ; 2 uses
  store ptr %i.aq, ptr %i.b, align 8, !tbaa !71
  %i.ar = load ptr, ptr %i.v, align 8, !tbaa !87
  %i.as = icmp eq ptr %i.aq, %i.ar
  %.pre4 = load ptr, ptr %i.e, align 8, !tbaa !60 ; 2 uses
  br i1 %i.as, label %bb.f, label %_ZNSt15_Deque_iteratorIN2PP4WordERS1_PS1_EppEv.exit

bb.f:                                             ; preds = %bb.e
  %i.at = getelementptr inbounds nuw i8, ptr %.pre4, i64 8 ; 3 uses
  store ptr %i.at, ptr %i.e, align 8, !tbaa !76
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !51 ; 3 uses
  store ptr %i.au, ptr %i.aj, align 8, !tbaa !75
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 512
  store ptr %i.av, ptr %i.v, align 8, !tbaa !87
  store ptr %i.au, ptr %i.b, align 8, !tbaa !71
  br label %_ZNSt15_Deque_iteratorIN2PP4WordERS1_PS1_EppEv.exit

_ZNSt15_Deque_iteratorIN2PP4WordERS1_PS1_EppEv.exit: ; preds = %bb.e, %bb.f
  %i.aw = phi ptr [ %.pre4, %bb.e ], [ %i.at, %bb.f ]
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !51
  tail call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef 512) #21
  invoke void @__cxa_rethrow() #24
          to label %bb.j unwind label %bb.g

bb.g:                                             ; preds = %_ZNSt15_Deque_iteratorIN2PP4WordERS1_PS1_EppEv.exit
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

_ZNSt16allocator_traitsISaIN2PP4WordEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_.exit: ; preds = %_ZNSt5dequeIN2PP4WordESaIS1_EE23_M_reserve_map_at_frontEm.exit
  ret void

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.az

bb.i:                                             ; preds = %bb.g
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  tail call void @__clang_call_terminate(ptr %i.bb) #23
  unreachable

bb.j:                                             ; preds = %_ZNSt15_Deque_iteratorIN2PP4WordERS1_PS1_EppEv.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIN2PP4WordESaIS1_EE16_M_push_back_auxIJS1_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(128) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !76   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !76
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i
  %i.m = shl nsw i64 %i.l, 2
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !71
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !75
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 7
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !87
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !71
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 7
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = icmp eq i64 %i.ac, 72057594037927935
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.220) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !63
  %i.ag = load ptr, ptr %0, align 8, !tbaa !59
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.g, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3
  %i.ak = sub i64 %i.af, %i.aj
  %i.al = icmp ult i64 %i.ak, 2
  br i1 %i.al, label %bb.d, label %_ZNSt5dequeIN2PP4WordESaIS1_EE22_M_reserve_map_at_backEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeIN2PP4WordESaIS1_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !61
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EE22_M_reserve_map_at_backEm.exit

_ZNSt5dequeIN2PP4WordESaIS1_EE22_M_reserve_map_at_backEm.exit: ; preds = %bb.c, %bb.d
  %i.am = phi ptr [ %i.d, %bb.c ], [ %.pre, %bb.d ]
  %i.an = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #25
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !51
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !68
  invoke void @_ZN2PP4WordC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(128) %i.ap, ptr noundef nonnull align 8 dereferenceable(128) %1)
          to label %_ZNSt16allocator_traitsISaIN2PP4WordEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_.exit unwind label %bb.e

_ZNSt16allocator_traitsISaIN2PP4WordEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_.exit: ; preds = %_ZNSt5dequeIN2PP4WordESaIS1_EE22_M_reserve_map_at_backEm.exit
  %i.aq = load ptr, ptr %i.c, align 8, !tbaa !61
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  store ptr %i.ar, ptr %i.c, align 8, !tbaa !76
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !51 ; 3 uses
  store ptr %i.as, ptr %i.o, align 8, !tbaa !75
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 512
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.at, ptr %i.au, align 8, !tbaa !87
  store ptr %i.as, ptr %i.a, align 8, !tbaa !68
  ret void

bb.e:                                             ; preds = %_ZNSt5dequeIN2PP4WordESaIS1_EE22_M_reserve_map_at_backEm.exit
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  %i.aw = extractvalue { ptr, i32 } %i.av, 0
  %i.ax = tail call ptr @__cxa_begin_catch(ptr %i.aw) #22 ; 0 uses
  %i.ay = load ptr, ptr %i.c, align 8, !tbaa !61
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !51
  tail call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef 512) #21
  invoke void @__cxa_rethrow() #24
          to label %bb.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.bb

bb.h:                                             ; preds = %bb.f
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  tail call void @__clang_call_terminate(ptr %i.bd) #23
  unreachable

bb.i:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #17

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.mul.v4i32(<4 x i32>) #17

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_6
begin_hunk_7_@llvm.vector.reduce.mul.v4i32
!368 = distinct !{!368, !369, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!369 = distinct !{!369, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!370 = !{!371}
!371 = distinct !{!371, !372, !"_ZN2PP4Word10get_stringB5cxx11Ev: argument 0"}
!372 = distinct !{!372, !"_ZN2PP4Word10get_stringB5cxx11Ev"}
!373 = distinct !{!373, !49, !342, !341}
!374 = !{!375}
!375 = distinct !{!375, !376, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!376 = distinct !{!376, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!377 = !{!378}
!378 = distinct !{!378, !379, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!379 = distinct !{!379, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!380 = distinct !{!380, !49}
!381 = distinct !{!381, !49}
!382 = !{!383}
!383 = distinct !{!383, !384, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!384 = distinct !{!384, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!385 = !{!386}
!386 = distinct !{!386, !387, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!387 = distinct !{!387, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!388 = !{!389}
!389 = distinct !{!389, !390, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!390 = distinct !{!390, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!391 = distinct !{!391, !49, !341, !342}
!392 = !{!393}
!393 = distinct !{!393, !394, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!394 = distinct !{!394, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!395 = distinct !{!395, !49}
!396 = distinct !{!396, !49, !342, !341}
!397 = !{!398}
!398 = distinct !{!398, !399, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!399 = distinct !{!399, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!400 = distinct !{!400, !49}
!401 = !{!402}
!402 = distinct !{!402, !403, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!403 = distinct !{!403, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!404 = !{!405}
!405 = distinct !{!405, !406, !"_ZN2PP4Word10get_stringB5cxx11Ev: argument 0"}
!406 = distinct !{!406, !"_ZN2PP4Word10get_stringB5cxx11Ev"}
!407 = distinct !{!407, !49}
!408 = !{!409, !410, i64 0}
!409 = !{!"_ZTSNSt12_Vector_baseIPN2PP3CmdESaIS2_EE17_Vector_impl_dataE", !410, i64 0, !410, i64 8, !410, i64 16}
!410 = !{!"p2 _ZTSN2PP3CmdE", !33, i64 0}
!411 = !{!412, !412, i64 0}
!412 = !{!"p1 _ZTSN2PP3CmdE", !11, i64 0}
!413 = !{!414}
!414 = distinct !{!414, !415, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!415 = distinct !{!415, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!416 = !{!417}
!417 = distinct !{!417, !418, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!418 = distinct !{!418, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!419 = distinct !{!419, !49, !341, !342}
!420 = distinct !{!420, !49, !342, !341}
!421 = distinct !{!421, !49}
!422 = !{!423}
!423 = distinct !{!423, !424, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!424 = distinct !{!424, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!425 = !{!426}
!426 = distinct !{!426, !427, !"_ZN2PP4Word10get_stringB5cxx11Ev: argument 0"}
!427 = distinct !{!427, !"_ZN2PP4Word10get_stringB5cxx11Ev"}
!428 = !{!429}
!429 = distinct !{!429, !430, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!430 = distinct !{!430, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!431 = !{!108, !5, i64 84}
!432 = !{!433}
!433 = distinct !{!433, !434, !"_ZN2PP3Cmd12get_filenameB5cxx11Ei: argument 0"}
!434 = distinct !{!434, !"_ZN2PP3Cmd12get_filenameB5cxx11Ei"}
!435 = !{!436, !433}
!436 = distinct !{!436, !437, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!437 = distinct !{!437, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!438 = !{!439}
!439 = distinct !{!439, !440, !"_ZN2PP4Word12get_filenameB5cxx11Ev: argument 0"}
!440 = distinct !{!440, !"_ZN2PP4Word12get_filenameB5cxx11Ev"}
!441 = !{!439, !433}
!442 = !{!443}
!443 = distinct !{!443, !444, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!444 = distinct !{!444, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!445 = !{!108, !5, i64 80}
!446 = !{!447}
!447 = distinct !{!447, !448, !"_ZStplRKSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_PS5_El: argument 0"}
!448 = distinct !{!448, !"_ZStplRKSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_PS5_El"}
!449 = !{!450}
!450 = distinct !{!450, !451, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!451 = distinct !{!451, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!452 = !{!453}
!453 = distinct !{!453, !454, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!454 = distinct !{!454, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!455 = distinct !{!455, !49}
!456 = !{!457}
!457 = distinct !{!457, !458, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!458 = distinct !{!458, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!459 = !{!460}
!460 = distinct !{!460, !461, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!461 = distinct !{!461, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!462 = distinct !{!462, !49}
!463 = !{!464}
!464 = distinct !{!464, !465, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!465 = distinct !{!465, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!466 = !{!467}
!467 = distinct !{!467, !468, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!468 = distinct !{!468, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!469 = distinct !{!469, !49}
!470 = !{!471}
!471 = distinct !{!471, !472, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!472 = distinct !{!472, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!473 = !{!474}
!474 = distinct !{!474, !475, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!475 = distinct !{!475, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!476 = distinct !{!476, !49}
!477 = !{!478}
!478 = distinct !{!478, !479, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!479 = distinct !{!479, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!480 = !{!481}
!481 = distinct !{!481, !482, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!482 = distinct !{!482, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!483 = distinct !{!483, !49}
!484 = !{!485}
!485 = distinct !{!485, !486, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!486 = distinct !{!486, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!487 = !{!488}
!488 = distinct !{!488, !489, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!489 = distinct !{!489, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!490 = distinct !{!490, !49}
!491 = !{!492}
!492 = distinct !{!492, !493, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!493 = distinct !{!493, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!494 = !{!495}
!495 = distinct !{!495, !496, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!496 = distinct !{!496, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!497 = !{!498, !498, i64 0}
!498 = !{!"double", !6, i64 0}
!499 = distinct !{!499, !49}
!500 = !{!501}
!501 = distinct !{!501, !502, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!502 = distinct !{!502, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!503 = !{!504}
!504 = distinct !{!504, !505, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!505 = distinct !{!505, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!506 = distinct !{!506, !49}
!507 = !{!508}
!508 = distinct !{!508, !509, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!509 = distinct !{!509, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!510 = !{!511}
!511 = distinct !{!511, !512, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!512 = distinct !{!512, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!513 = !{!514}
!514 = distinct !{!514, !515, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!515 = distinct !{!515, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!516 = !{!517}
!517 = distinct !{!517, !518, !"_ZN2PP4Word11get_stringpB5cxx11Ev: argument 0"}
!518 = distinct !{!518, !"_ZN2PP4Word11get_stringpB5cxx11Ev"}
!519 = !{!520}
!520 = distinct !{!520, !521, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!521 = distinct !{!521, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!522 = !{!523}
!523 = distinct !{!523, !524, !"_ZN2PP4Word11get_stringpB5cxx11Ev: argument 0"}
!524 = distinct !{!524, !"_ZN2PP4Word11get_stringpB5cxx11Ev"}
!525 = !{!526}
!526 = distinct !{!526, !527, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!527 = distinct !{!527, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!528 = distinct !{!528, !49}
!529 = distinct !{!529, !49}
!530 = distinct !{!530, !49, !341, !342}
!531 = distinct !{!531, !49, !342, !341}
!532 = !{!533}
!533 = distinct !{!533, !534, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!534 = distinct !{!534, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!535 = !{!536}
!536 = distinct !{!536, !537, !"_ZN2PP4Word10get_stringB5cxx11Ev: argument 0"}
!537 = distinct !{!537, !"_ZN2PP4Word10get_stringB5cxx11Ev"}
!538 = !{!539}
!539 = distinct !{!539, !540, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!540 = distinct !{!540, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!541 = !{!542}
!542 = distinct !{!542, !543, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!543 = distinct !{!543, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!544 = !{!545}
!545 = distinct !{!545, !546, !"_ZN2PP4Word10get_stringB5cxx11Ev: argument 0"}
!546 = distinct !{!546, !"_ZN2PP4Word10get_stringB5cxx11Ev"}
!547 = distinct !{!547, !49}
!548 = !{!549}
!549 = distinct !{!549, !550, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!550 = distinct !{!550, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!551 = !{!552}
!552 = distinct !{!552, !553, !"_ZN2PP4Word10get_stringB5cxx11Ev: argument 0"}
!553 = distinct !{!553, !"_ZN2PP4Word10get_stringB5cxx11Ev"}
!554 = !{!555, !558, i64 8}
!555 = !{!"_ZTSSt15_Rb_tree_header", !556, i64 0, !14, i64 32}
!556 = !{!"_ZTSSt18_Rb_tree_node_base", !557, i64 0, !558, i64 8, !558, i64 16, !558, i64 24}
!557 = !{!"_ZTSSt14_Rb_tree_color", !6, i64 0}
!558 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !11, i64 0}
!559 = !{!558, !558, i64 0}
!560 = distinct !{!560, !49}
!561 = !{!562}
!562 = distinct !{!562, !563, !"_ZN2PP8Variable11get_varnameB5cxx11Ev: argument 0"}
!563 = distinct !{!563, !"_ZN2PP8Variable11get_varnameB5cxx11Ev"}
!564 = !{!565}
!565 = distinct !{!565, !566, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!566 = distinct !{!566, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!567 = !{!568}
!568 = distinct !{!568, !569, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!569 = distinct !{!569, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!570 = !{!571}
!571 = distinct !{!571, !572, !"_ZN2PP4Word10get_stringB5cxx11Ev: argument 0"}
!572 = distinct !{!572, !"_ZN2PP4Word10get_stringB5cxx11Ev"}
!573 = !{!574}
!574 = distinct !{!574, !575, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!575 = distinct !{!575, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!576 = !{!577}
!577 = distinct !{!577, !578, !"_ZN2PP4Word10get_stringB5cxx11Ev: argument 0"}
!578 = distinct !{!578, !"_ZN2PP4Word10get_stringB5cxx11Ev"}
!579 = !{!580}
!580 = distinct !{!580, !581, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!581 = distinct !{!581, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!582 = !{!583}
!583 = distinct !{!583, !584, !"_ZN2PP4Word10get_stringB5cxx11Ev: argument 0"}
!584 = distinct !{!584, !"_ZN2PP4Word10get_stringB5cxx11Ev"}
!585 = !{!586}
!586 = distinct !{!586, !587, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!587 = distinct !{!587, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!588 = distinct !{!588, !49}
!589 = !{!590}
!590 = distinct !{!590, !591, !"_ZN2PP4Word12get_filenameB5cxx11Ev: argument 0"}
!591 = distinct !{!591, !"_ZN2PP4Word12get_filenameB5cxx11Ev"}
!592 = !{!593}
!593 = distinct !{!593, !594, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!594 = distinct !{!594, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!595 = !{!596}
!596 = distinct !{!596, !597, !"_ZN2PP4Word10get_stringB5cxx11Ev: argument 0"}
!597 = distinct !{!597, !"_ZN2PP4Word10get_stringB5cxx11Ev"}
!598 = !{!599}
!599 = distinct !{!599, !600, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!600 = distinct !{!600, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!601 = !{!602}
!602 = distinct !{!602, !603, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!603 = distinct !{!603, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!604 = !{!605}
!605 = distinct !{!605, !606, !"_ZN2PP4Word10get_stringB5cxx11Ev: argument 0"}
!606 = distinct !{!606, !"_ZN2PP4Word10get_stringB5cxx11Ev"}
!607 = !{!608}
!608 = distinct !{!608, !609, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!609 = distinct !{!609, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!610 = !{!611}
!611 = distinct !{!611, !612, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!612 = distinct !{!612, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!613 = !{!614}
!614 = distinct !{!614, !615, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!615 = distinct !{!615, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!616 = !{!617}
!617 = distinct !{!617, !618, !"_ZN2PP4Word10get_stringB5cxx11Ev: argument 0"}
!618 = distinct !{!618, !"_ZN2PP4Word10get_stringB5cxx11Ev"}
!619 = !{!620}
!620 = distinct !{!620, !621, !"_ZN2PP8Variable11get_varnameB5cxx11Ev: argument 0"}
!621 = distinct !{!621, !"_ZN2PP8Variable11get_varnameB5cxx11Ev"}
!622 = !{!623, !110, i64 96}
!623 = !{!"_ZTSN2PP8VariableE", !13, i64 0, !36, i64 32, !5, i64 56, !5, i64 60, !5, i64 64, !624, i64 72, !110, i64 96, !110, i64 97, !13, i64 104}
!624 = !{!"_ZTSSt6vectorIiSaIiEE", !625, i64 0}
!625 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !626, i64 0}
!626 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !294, i64 0}
!627 = !{!628}
!628 = distinct !{!628, !629, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!629 = distinct !{!629, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!630 = !{!631}
!631 = distinct !{!631, !632, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!632 = distinct !{!632, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!633 = !{!634}
!634 = distinct !{!634, !635, !"_ZN2PP4Word10get_stringB5cxx11Ev: argument 0"}
!635 = distinct !{!635, !"_ZN2PP4Word10get_stringB5cxx11Ev"}
!636 = distinct !{!636, !49}
!637 = !{!638}
!638 = distinct !{!638, !639, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!639 = distinct !{!639, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!640 = !{!641}
!641 = distinct !{!641, !642, !"_ZN2PP4Word10get_stringB5cxx11Ev: argument 0"}
!642 = distinct !{!642, !"_ZN2PP4Word10get_stringB5cxx11Ev"}
!643 = !{!644}
!644 = distinct !{!644, !645, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!645 = distinct !{!645, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!646 = !{!647}
!647 = distinct !{!647, !648, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!648 = distinct !{!648, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!649 = !{!650}
!650 = distinct !{!650, !651, !"_ZN2PP4Word10get_stringB5cxx11Ev: argument 0"}
!651 = distinct !{!651, !"_ZN2PP4Word10get_stringB5cxx11Ev"}
!652 = distinct !{!652, !49}
!653 = !{!654}
!654 = distinct !{!654, !655, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!655 = distinct !{!655, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!656 = !{!657}
!657 = distinct !{!657, !658, !"_ZN2PP4Word12get_filenameB5cxx11Ev: argument 0"}
!658 = distinct !{!658, !"_ZN2PP4Word12get_filenameB5cxx11Ev"}
!659 = !{!660}
!660 = distinct !{!660, !661, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!661 = distinct !{!661, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!662 = !{!663}
!663 = distinct !{!663, !664, !"_ZN2PP4Word10get_stringB5cxx11Ev: argument 0"}
!664 = distinct !{!664, !"_ZN2PP4Word10get_stringB5cxx11Ev"}
!665 = !{!666}
!666 = distinct !{!666, !667, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!667 = distinct !{!667, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!668 = !{!669}
!669 = distinct !{!669, !670, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!670 = distinct !{!670, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!671 = !{!672}
!672 = distinct !{!672, !673, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!673 = distinct !{!673, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!674 = !{!675}
!675 = distinct !{!675, !676, !"_ZN2PP4Word10get_stringB5cxx11Ev: argument 0"}
!676 = distinct !{!676, !"_ZN2PP4Word10get_stringB5cxx11Ev"}
!677 = distinct !{!677, !49}
!678 = !{!679}
!679 = distinct !{!679, !680, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!680 = distinct !{!680, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!681 = !{!682}
!682 = distinct !{!682, !683, !"_ZN2PP4Word10get_stringB5cxx11Ev: argument 0"}
!683 = distinct !{!683, !"_ZN2PP4Word10get_stringB5cxx11Ev"}
!684 = !{!685}
!685 = distinct !{!685, !686, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!686 = distinct !{!686, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!687 = !{!688}
!688 = distinct !{!688, !689, !"_ZN2PP4Word12get_filenameB5cxx11Ev: argument 0"}
!689 = distinct !{!689, !"_ZN2PP4Word12get_filenameB5cxx11Ev"}
!690 = !{!691}
!691 = distinct !{!691, !692, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!692 = distinct !{!692, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!693 = !{!694}
!694 = distinct !{!694, !695, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!695 = distinct !{!695, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!696 = !{!697}
!697 = distinct !{!697, !698, !"_ZN2PP4Word10get_stringB5cxx11Ev: argument 0"}
!698 = distinct !{!698, !"_ZN2PP4Word10get_stringB5cxx11Ev"}
!699 = !{!700}
!700 = distinct !{!700, !701, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!701 = distinct !{!701, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!702 = !{!703}
!703 = distinct !{!703, !704, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!704 = distinct !{!704, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!705 = !{!706}
!706 = distinct !{!706, !707, !"_ZN2PP4Word10get_stringB5cxx11Ev: argument 0"}
!707 = distinct !{!707, !"_ZN2PP4Word10get_stringB5cxx11Ev"}
!708 = !{!709}
!709 = distinct !{!709, !710, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!710 = distinct !{!710, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!711 = !{!712}
!712 = distinct !{!712, !713, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!713 = distinct !{!713, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!714 = !{!715}
!715 = distinct !{!715, !716, !"_ZN2PP4Word10get_stringB5cxx11Ev: argument 0"}
!716 = distinct !{!716, !"_ZN2PP4Word10get_stringB5cxx11Ev"}
!717 = !{!718}
!718 = distinct !{!718, !719, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!719 = distinct !{!719, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!720 = !{!721}
!721 = distinct !{!721, !722, !"_ZN2PP4Word10get_stringB5cxx11Ev: argument 0"}
!722 = distinct !{!722, !"_ZN2PP4Word10get_stringB5cxx11Ev"}
!723 = !{!724}
!724 = distinct !{!724, !725, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!725 = distinct !{!725, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!726 = !{!727}
!727 = distinct !{!727, !728, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!728 = distinct !{!728, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!729 = !{!730}
!730 = distinct !{!730, !731, !"_ZN2PP4Word10get_stringB5cxx11Ev: argument 0"}
!731 = distinct !{!731, !"_ZN2PP4Word10get_stringB5cxx11Ev"}
!732 = !{!733}
!733 = distinct !{!733, !734, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!734 = distinct !{!734, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!735 = !{!736}
!736 = distinct !{!736, !737, !"_ZN2PP4Word10get_stringB5cxx11Ev: argument 0"}
!737 = distinct !{!737, !"_ZN2PP4Word10get_stringB5cxx11Ev"}
!738 = distinct !{!738, !49}
!739 = distinct !{!739, !49}
!740 = !{!741}
!741 = distinct !{!741, !742, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!742 = distinct !{!742, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!743 = !{!744}
!744 = distinct !{!744, !745, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!745 = distinct !{!745, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!746 = distinct !{!746, !49}
!747 = !{!748}
!748 = distinct !{!748, !749, !"_ZN2PP8Variable11get_varnameB5cxx11Ev: argument 0"}
!749 = distinct !{!749, !"_ZN2PP8Variable11get_varnameB5cxx11Ev"}
!750 = !{!751}
!751 = distinct !{!751, !752, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!752 = distinct !{!752, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!753 = !{!754}
!754 = distinct !{!754, !755, !"_ZN2PP4Word10get_stringB5cxx11Ev: argument 0"}
!755 = distinct !{!755, !"_ZN2PP4Word10get_stringB5cxx11Ev"}
!756 = !{!757}
!757 = distinct !{!757, !758, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!758 = distinct !{!758, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!759 = !{!760}
!760 = distinct !{!760, !761, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!761 = distinct !{!761, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!762 = !{!555, !558, i64 16}
!763 = !{!764}
!764 = distinct !{!764, !765, !"_ZN2PP8Variable11get_varnameB5cxx11Ev: argument 0"}
!765 = distinct !{!765, !"_ZN2PP8Variable11get_varnameB5cxx11Ev"}
!766 = distinct !{!766, !49}
!767 = !{!768}
!768 = distinct !{!768, !769, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!769 = distinct !{!769, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!770 = !{!771}
!771 = distinct !{!771, !772, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!772 = distinct !{!772, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!773 = !{!774}
!774 = distinct !{!774, !775, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!775 = distinct !{!775, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!776 = !{!777}
!777 = distinct !{!777, !778, !"_ZN2PP4Word10get_stringB5cxx11Ev: argument 0"}
!778 = distinct !{!778, !"_ZN2PP4Word10get_stringB5cxx11Ev"}
!779 = distinct !{!779, !49}
!780 = !{!781}
!781 = distinct !{!781, !782, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!782 = distinct !{!782, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!783 = !{!784}
!784 = distinct !{!784, !785, !"_ZN2PP4Word10get_stringB5cxx11Ev: argument 0"}
!785 = distinct !{!785, !"_ZN2PP4Word10get_stringB5cxx11Ev"}
!786 = distinct !{!786, !49}
!787 = !{!788}
!788 = distinct !{!788, !789, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
end_hunk_7
begin_hunk_8_@llvm.vector.reduce.mul.v4i32
!1234 = !{!1235}
!1235 = distinct !{!1235, !1236, !"_ZNSt5dequeIbSaIbEE5beginEv: argument 0"}
!1236 = distinct !{!1236, !"_ZNSt5dequeIbSaIbEE5beginEv"}
!1237 = !{!1220, !1220, i64 0}
!1238 = !{!1239}
!1239 = distinct !{!1239, !1240, !"_ZStplRKSt15_Deque_iteratorIbRbPbEl: argument 0"}
!1240 = distinct !{!1240, !"_ZStplRKSt15_Deque_iteratorIbRbPbEl"}
!1241 = !{!1242, !1244}
!1242 = distinct !{!1242, !1243, !"_ZNKSt15_Deque_iteratorIbRKbPS0_E13_M_const_castEv: argument 0"}
!1243 = distinct !{!1243, !"_ZNKSt15_Deque_iteratorIbRKbPS0_E13_M_const_castEv"}
!1244 = distinct !{!1244, !1245, !"_ZNSt5dequeIbSaIbEE5eraseESt15_Deque_iteratorIbRKbPS3_E: argument 0"}
!1245 = distinct !{!1245, !"_ZNSt5dequeIbSaIbEE5eraseESt15_Deque_iteratorIbRKbPS3_E"}
!1246 = !{!1247}
!1247 = distinct !{!1247, !1248, !"_ZStmiRKSt15_Deque_iteratorIbRbPbEl: argument 0"}
!1248 = distinct !{!1248, !"_ZStmiRKSt15_Deque_iteratorIbRbPbEl"}
!1249 = !{!1242}
!1250 = !{!1244}
!1251 = !{!1252}
!1252 = distinct !{!1252, !1253, !"_ZNSt5dequeIbSaIbEE5beginEv: argument 0"}
!1253 = distinct !{!1253, !"_ZNSt5dequeIbSaIbEE5beginEv"}
!1254 = !{!1255}
!1255 = distinct !{!1255, !1256, !"_ZStplRKSt15_Deque_iteratorIbRbPbEl: argument 0"}
!1256 = distinct !{!1256, !"_ZStplRKSt15_Deque_iteratorIbRbPbEl"}
!1257 = !{!1258, !1260}
!1258 = distinct !{!1258, !1259, !"_ZNKSt15_Deque_iteratorIbRKbPS0_E13_M_const_castEv: argument 0"}
!1259 = distinct !{!1259, !"_ZNKSt15_Deque_iteratorIbRKbPS0_E13_M_const_castEv"}
!1260 = distinct !{!1260, !1261, !"_ZNSt5dequeIbSaIbEE5eraseESt15_Deque_iteratorIbRKbPS3_E: argument 0"}
!1261 = distinct !{!1261, !"_ZNSt5dequeIbSaIbEE5eraseESt15_Deque_iteratorIbRKbPS3_E"}
!1262 = !{!1263}
!1263 = distinct !{!1263, !1264, !"_ZStmiRKSt15_Deque_iteratorIbRbPbEl: argument 0"}
!1264 = distinct !{!1264, !"_ZStmiRKSt15_Deque_iteratorIbRbPbEl"}
!1265 = !{!1258}
!1266 = !{!1260}
!1267 = !{!1268}
!1268 = distinct !{!1268, !1269, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!1269 = distinct !{!1269, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!1270 = !{!1271}
!1271 = distinct !{!1271, !1272, !"_ZN2PP4Word10get_stringB5cxx11Ev: argument 0"}
!1272 = distinct !{!1272, !"_ZN2PP4Word10get_stringB5cxx11Ev"}
!1273 = !{!1274}
!1274 = distinct !{!1274, !1275, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!1275 = distinct !{!1275, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!1276 = !{!1277}
!1277 = distinct !{!1277, !1278, !"_ZStplRKSt15_Deque_iteratorIbRbPbEl: argument 0"}
!1278 = distinct !{!1278, !"_ZStplRKSt15_Deque_iteratorIbRbPbEl"}
!1279 = !{!1280}
!1280 = distinct !{!1280, !1281, !"_ZStplRKSt15_Deque_iteratorIbRbPbEl: argument 0"}
!1281 = distinct !{!1281, !"_ZStplRKSt15_Deque_iteratorIbRbPbEl"}
!1282 = !{!1283}
!1283 = distinct !{!1283, !1284, !"_ZStplRKSt15_Deque_iteratorIbRbPbEl: argument 0"}
!1284 = distinct !{!1284, !"_ZStplRKSt15_Deque_iteratorIbRbPbEl"}
!1285 = !{!1286}
!1286 = distinct !{!1286, !1287, !"_ZStplRKSt15_Deque_iteratorIbRbPbEl: argument 0"}
!1287 = distinct !{!1287, !"_ZStplRKSt15_Deque_iteratorIbRbPbEl"}
!1288 = !{!1289}
!1289 = distinct !{!1289, !1290, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!1290 = distinct !{!1290, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!1291 = !{!1292}
!1292 = distinct !{!1292, !1293, !"_ZN2PP4Word10get_stringB5cxx11Ev: argument 0"}
!1293 = distinct !{!1293, !"_ZN2PP4Word10get_stringB5cxx11Ev"}
!1294 = distinct !{!1294, !49}
!1295 = !{!1296}
!1296 = distinct !{!1296, !1297, !"_ZStplRKSt15_Deque_iteratorIbRbPbEl: argument 0"}
!1297 = distinct !{!1297, !"_ZStplRKSt15_Deque_iteratorIbRbPbEl"}
!1298 = !{!1299}
!1299 = distinct !{!1299, !1300, !"_ZStplRKSt15_Deque_iteratorIbRbPbEl: argument 0"}
!1300 = distinct !{!1300, !"_ZStplRKSt15_Deque_iteratorIbRbPbEl"}
!1301 = !{!1302}
!1302 = distinct !{!1302, !1303, !"_ZStplRKSt15_Deque_iteratorIbRbPbEl: argument 0"}
!1303 = distinct !{!1303, !"_ZStplRKSt15_Deque_iteratorIbRbPbEl"}
!1304 = !{!1305}
!1305 = distinct !{!1305, !1306, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!1306 = distinct !{!1306, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!1307 = !{!1308}
!1308 = distinct !{!1308, !1309, !"_ZN2PP4Word10get_stringB5cxx11Ev: argument 0"}
!1309 = distinct !{!1309, !"_ZN2PP4Word10get_stringB5cxx11Ev"}
!1310 = !{!1311}
!1311 = distinct !{!1311, !1312, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!1312 = distinct !{!1312, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!1313 = !{!1314}
!1314 = distinct !{!1314, !1315, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!1315 = distinct !{!1315, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!1316 = distinct !{null}
!1317 = !{!1318}
!1318 = distinct !{!1318, !1319, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!1319 = distinct !{!1319, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!1320 = !{!1321}
!1321 = distinct !{!1321, !1322, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!1322 = distinct !{!1322, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!1323 = !{!1324}
!1324 = distinct !{!1324, !1325, !"_ZN2PP4Word10get_stringB5cxx11Ev: argument 0"}
!1325 = distinct !{!1325, !"_ZN2PP4Word10get_stringB5cxx11Ev"}
!1326 = !{!1327}
!1327 = distinct !{!1327, !1328, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!1328 = distinct !{!1328, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!1329 = !{!1330}
!1330 = distinct !{!1330, !1331, !"_ZN2PP4Word10get_stringB5cxx11Ev: argument 0"}
!1331 = distinct !{!1331, !"_ZN2PP4Word10get_stringB5cxx11Ev"}
!1332 = !{!1333}
!1333 = distinct !{!1333, !1334, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!1334 = distinct !{!1334, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!1335 = !{!1336}
!1336 = distinct !{!1336, !1337, !"_ZStplRKSt15_Deque_iteratorIbRbPbEl: argument 0"}
!1337 = distinct !{!1337, !"_ZStplRKSt15_Deque_iteratorIbRbPbEl"}
!1338 = !{!1339}
!1339 = distinct !{!1339, !1340, !"_ZStplRKSt15_Deque_iteratorIbRbPbEl: argument 0"}
!1340 = distinct !{!1340, !"_ZStplRKSt15_Deque_iteratorIbRbPbEl"}
!1341 = !{!1342}
!1342 = distinct !{!1342, !1343, !"_ZStplRKSt15_Deque_iteratorIbRbPbEl: argument 0"}
!1343 = distinct !{!1343, !"_ZStplRKSt15_Deque_iteratorIbRbPbEl"}
!1344 = !{!1345}
!1345 = distinct !{!1345, !1346, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!1346 = distinct !{!1346, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!1347 = !{!1348}
!1348 = distinct !{!1348, !1349, !"_ZN2PP4Word10get_stringB5cxx11Ev: argument 0"}
!1349 = distinct !{!1349, !"_ZN2PP4Word10get_stringB5cxx11Ev"}
!1350 = !{!1351}
!1351 = distinct !{!1351, !1352, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!1352 = distinct !{!1352, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!1353 = !{!1354}
!1354 = distinct !{!1354, !1355, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!1355 = distinct !{!1355, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!1356 = !{!1357}
!1357 = distinct !{!1357, !1358, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!1358 = distinct !{!1358, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!1359 = !{!1360}
!1360 = distinct !{!1360, !1361, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!1361 = distinct !{!1361, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!1362 = !{!1363}
!1363 = distinct !{!1363, !1364, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!1364 = distinct !{!1364, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!1365 = !{!1366}
!1366 = distinct !{!1366, !1367, !"_ZN2PP4Word10get_stringB5cxx11Ev: argument 0"}
!1367 = distinct !{!1367, !"_ZN2PP4Word10get_stringB5cxx11Ev"}
!1368 = !{!1369}
!1369 = distinct !{!1369, !1370, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!1370 = distinct !{!1370, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!1371 = !{!1372}
!1372 = distinct !{!1372, !1373, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!1373 = distinct !{!1373, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!1374 = !{!1375}
!1375 = distinct !{!1375, !1376, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!1376 = distinct !{!1376, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!1377 = !{!1378, !1379, i64 24}
!1378 = !{!"_ZTSSt15_Deque_iteratorIiRiPiE", !168, i64 0, !168, i64 8, !168, i64 16, !1379, i64 24}
!1379 = !{!"p2 int", !33, i64 0}
!1380 = !{!1378, !168, i64 0}
!1381 = !{!1378, !168, i64 8}
!1382 = !{!1378, !168, i64 16}
!1383 = !{!1384}
!1384 = distinct !{!1384, !1385, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!1385 = distinct !{!1385, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!1386 = !{!1387}
!1387 = distinct !{!1387, !1388, !"_ZN2PP4Word10get_stringB5cxx11Ev: argument 0"}
!1388 = distinct !{!1388, !"_ZN2PP4Word10get_stringB5cxx11Ev"}
!1389 = !{!1390}
!1390 = distinct !{!1390, !1391, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!1391 = distinct !{!1391, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!1392 = !{!1393}
!1393 = distinct !{!1393, !1394, !"_ZStplRKSt15_Deque_iteratorIiRiPiEl: argument 0"}
!1394 = distinct !{!1394, !"_ZStplRKSt15_Deque_iteratorIiRiPiEl"}
!1395 = !{!168, !168, i64 0}
!1396 = !{!1397}
!1397 = distinct !{!1397, !1398, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!1398 = distinct !{!1398, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!1399 = !{!1400}
!1400 = distinct !{!1400, !1401, !"_ZN2PP4Word10get_stringB5cxx11Ev: argument 0"}
!1401 = distinct !{!1401, !"_ZN2PP4Word10get_stringB5cxx11Ev"}
!1402 = !{!1403}
!1403 = distinct !{!1403, !1404, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!1404 = distinct !{!1404, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!1405 = !{!1406}
!1406 = distinct !{!1406, !1407, !"_ZStplRKSt15_Deque_iteratorIiRiPiEl: argument 0"}
!1407 = distinct !{!1407, !"_ZStplRKSt15_Deque_iteratorIiRiPiEl"}
!1408 = !{!1409}
!1409 = distinct !{!1409, !1410, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!1410 = distinct !{!1410, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!1411 = !{!1412}
!1412 = distinct !{!1412, !1413, !"_ZN2PP4Word10get_stringB5cxx11Ev: argument 0"}
!1413 = distinct !{!1413, !"_ZN2PP4Word10get_stringB5cxx11Ev"}
!1414 = !{!1415}
!1415 = distinct !{!1415, !1416, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!1416 = distinct !{!1416, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!1417 = !{!1418}
!1418 = distinct !{!1418, !1419, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!1419 = distinct !{!1419, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!1420 = !{!1421}
!1421 = distinct !{!1421, !1422, !"_ZN2PP4Word10get_stringB5cxx11Ev: argument 0"}
!1422 = distinct !{!1422, !"_ZN2PP4Word10get_stringB5cxx11Ev"}
!1423 = !{!1424}
!1424 = distinct !{!1424, !1425, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!1425 = distinct !{!1425, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!1426 = !{!1427}
!1427 = distinct !{!1427, !1428, !"_ZN2PP4Word10get_stringB5cxx11Ev: argument 0"}
!1428 = distinct !{!1428, !"_ZN2PP4Word10get_stringB5cxx11Ev"}
!1429 = distinct !{!1429, !49}
!1430 = !{!1431}
!1431 = distinct !{!1431, !1432, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!1432 = distinct !{!1432, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!1433 = !{!1434}
!1434 = distinct !{!1434, !1435, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!1435 = distinct !{!1435, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!1436 = !{!1437}
!1437 = distinct !{!1437, !1438, !"_ZN2PP4Word10get_stringB5cxx11Ev: argument 0"}
!1438 = distinct !{!1438, !"_ZN2PP4Word10get_stringB5cxx11Ev"}
!1439 = !{!1440}
!1440 = distinct !{!1440, !1441, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!1441 = distinct !{!1441, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!1442 = !{!1443}
!1443 = distinct !{!1443, !1444, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!1444 = distinct !{!1444, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!1445 = !{!1446}
!1446 = distinct !{!1446, !1447, !"_ZN2PP4Word10get_stringB5cxx11Ev: argument 0"}
!1447 = distinct !{!1447, !"_ZN2PP4Word10get_stringB5cxx11Ev"}
!1448 = distinct !{!1448, !49}
!1449 = !{!1450}
!1450 = distinct !{!1450, !1451, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!1451 = distinct !{!1451, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!1452 = !{!1453}
!1453 = distinct !{!1453, !1454, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!1454 = distinct !{!1454, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!1455 = !{!1456}
!1456 = distinct !{!1456, !1457, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!1457 = distinct !{!1457, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!1458 = !{!1459}
!1459 = distinct !{!1459, !1460, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!1460 = distinct !{!1460, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!1461 = !{!1462}
!1462 = distinct !{!1462, !1463, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!1463 = distinct !{!1463, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!1464 = !{!1465}
!1465 = distinct !{!1465, !1466, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!1466 = distinct !{!1466, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!1467 = !{!1468}
!1468 = distinct !{!1468, !1469, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!1469 = distinct !{!1469, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!1470 = !{!1471}
!1471 = distinct !{!1471, !1472, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!1472 = distinct !{!1472, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!1473 = !{!1474}
!1474 = distinct !{!1474, !1475, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!1475 = distinct !{!1475, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!1476 = !{!1477}
!1477 = distinct !{!1477, !1478, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!1478 = distinct !{!1478, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!1479 = !{!1480}
!1480 = distinct !{!1480, !1481, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!1481 = distinct !{!1481, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!1482 = !{!1483}
!1483 = distinct !{!1483, !1484, !"_ZStplRKSt15_Deque_iteratorIiRiPiEl: argument 0"}
!1484 = distinct !{!1484, !"_ZStplRKSt15_Deque_iteratorIiRiPiEl"}
!1485 = !{!1486}
!1486 = distinct !{!1486, !1487, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!1487 = distinct !{!1487, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!1488 = !{!1489}
!1489 = distinct !{!1489, !1490, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!1490 = distinct !{!1490, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!1491 = !{!1492, !168, i64 48}
!1492 = !{!"_ZTSNSt11_Deque_baseIiSaIiEE16_Deque_impl_dataE", !1379, i64 0, !14, i64 8, !1378, i64 16, !1378, i64 48}
!1493 = !{!1492, !168, i64 64}
!1494 = !{!1495}
!1495 = distinct !{!1495, !1496, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!1496 = distinct !{!1496, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!1497 = !{!1498}
!1498 = distinct !{!1498, !1499, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!1499 = distinct !{!1499, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!1500 = !{!1501}
!1501 = distinct !{!1501, !1502, !"_ZN2PP4Word10get_stringB5cxx11Ev: argument 0"}
!1502 = distinct !{!1502, !"_ZN2PP4Word10get_stringB5cxx11Ev"}
!1503 = !{!1504}
!1504 = distinct !{!1504, !1505, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!1505 = distinct !{!1505, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!1506 = !{!1507}
!1507 = distinct !{!1507, !1508, !"_ZN2PP4Word10get_stringB5cxx11Ev: argument 0"}
!1508 = distinct !{!1508, !"_ZN2PP4Word10get_stringB5cxx11Ev"}
!1509 = !{!1510}
!1510 = distinct !{!1510, !1511, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!1511 = distinct !{!1511, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!1512 = !{!1513}
!1513 = distinct !{!1513, !1514, !"_ZN2PP4Word10get_stringB5cxx11Ev: argument 0"}
!1514 = distinct !{!1514, !"_ZN2PP4Word10get_stringB5cxx11Ev"}
!1515 = !{!1516}
!1516 = distinct !{!1516, !1517, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!1517 = distinct !{!1517, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!1518 = !{!1519}
!1519 = distinct !{!1519, !1520, !"_ZN2PP4Word10get_stringB5cxx11Ev: argument 0"}
!1520 = distinct !{!1520, !"_ZN2PP4Word10get_stringB5cxx11Ev"}
!1521 = !{!1522}
!1522 = distinct !{!1522, !1523, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!1523 = distinct !{!1523, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!1524 = !{!1525}
!1525 = distinct !{!1525, !1526, !"_ZN2PP4Word10get_stringB5cxx11Ev: argument 0"}
!1526 = distinct !{!1526, !"_ZN2PP4Word10get_stringB5cxx11Ev"}
!1527 = !{!1528}
!1528 = distinct !{!1528, !1529, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!1529 = distinct !{!1529, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!1530 = !{!1531}
!1531 = distinct !{!1531, !1532, !"_ZN2PP4Word10get_stringB5cxx11Ev: argument 0"}
!1532 = distinct !{!1532, !"_ZN2PP4Word10get_stringB5cxx11Ev"}
!1533 = !{!1534}
!1534 = distinct !{!1534, !1535, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!1535 = distinct !{!1535, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!1536 = !{!1537}
!1537 = distinct !{!1537, !1538, !"_ZN2PP4Word10get_stringB5cxx11Ev: argument 0"}
!1538 = distinct !{!1538, !"_ZN2PP4Word10get_stringB5cxx11Ev"}
!1539 = !{!1540}
!1540 = distinct !{!1540, !1541, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!1541 = distinct !{!1541, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!1542 = !{!1543}
!1543 = distinct !{!1543, !1544, !"_ZN2PP4Word10get_stringB5cxx11Ev: argument 0"}
!1544 = distinct !{!1544, !"_ZN2PP4Word10get_stringB5cxx11Ev"}
!1545 = !{!1546}
!1546 = distinct !{!1546, !1547, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!1547 = distinct !{!1547, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!1548 = !{!1549}
!1549 = distinct !{!1549, !1550, !"_ZN2PP4Word10get_stringB5cxx11Ev: argument 0"}
!1550 = distinct !{!1550, !"_ZN2PP4Word10get_stringB5cxx11Ev"}
!1551 = !{!1552}
!1552 = distinct !{!1552, !1553, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!1553 = distinct !{!1553, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!1554 = !{!1555}
!1555 = distinct !{!1555, !1556, !"_ZN2PP4Word10get_stringB5cxx11Ev: argument 0"}
!1556 = distinct !{!1556, !"_ZN2PP4Word10get_stringB5cxx11Ev"}
!1557 = !{!1558}
!1558 = distinct !{!1558, !1559, !"_ZNSt5dequeIN2PP4WordESaIS1_EE5beginEv: argument 0"}
!1559 = distinct !{!1559, !"_ZNSt5dequeIN2PP4WordESaIS1_EE5beginEv"}
!1560 = !{!1561, !1563}
!1561 = distinct !{!1561, !1562, !"_ZNKSt15_Deque_iteratorIN2PP4WordERKS1_PS2_E13_M_const_castEv: argument 0"}
!1562 = distinct !{!1562, !"_ZNKSt15_Deque_iteratorIN2PP4WordERKS1_PS2_E13_M_const_castEv"}
!1563 = distinct !{!1563, !1564, !"_ZNSt5dequeIN2PP4WordESaIS1_EE5eraseESt15_Deque_iteratorIS1_RKS1_PS5_E: argument 0"}
!1564 = distinct !{!1564, !"_ZNSt5dequeIN2PP4WordESaIS1_EE5eraseESt15_Deque_iteratorIS1_RKS1_PS5_E"}
!1565 = !{!1566}
!1566 = distinct !{!1566, !1567, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!1567 = distinct !{!1567, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!1568 = !{!1561}
!1569 = !{!1563}
!1570 = !{!1571}
!1571 = distinct !{!1571, !1572, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!1572 = distinct !{!1572, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!1573 = distinct !{!1573, !49}
!1574 = !{!1575}
!1575 = distinct !{!1575, !1576, !"_ZNSt5dequeIN2PP4WordESaIS1_EE5beginEv: argument 0"}
!1576 = distinct !{!1576, !"_ZNSt5dequeIN2PP4WordESaIS1_EE5beginEv"}
!1577 = !{!1578, !1580}
!1578 = distinct !{!1578, !1579, !"_ZNKSt15_Deque_iteratorIN2PP4WordERKS1_PS2_E13_M_const_castEv: argument 0"}
!1579 = distinct !{!1579, !"_ZNKSt15_Deque_iteratorIN2PP4WordERKS1_PS2_E13_M_const_castEv"}
!1580 = distinct !{!1580, !1581, !"_ZNSt5dequeIN2PP4WordESaIS1_EE5eraseESt15_Deque_iteratorIS1_RKS1_PS5_E: argument 0"}
!1581 = distinct !{!1581, !"_ZNSt5dequeIN2PP4WordESaIS1_EE5eraseESt15_Deque_iteratorIS1_RKS1_PS5_E"}
!1582 = !{!1583}
!1583 = distinct !{!1583, !1584, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!1584 = distinct !{!1584, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!1585 = !{!1578}
!1586 = !{!1580}
!1587 = !{!1588}
!1588 = distinct !{!1588, !1589, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!1589 = distinct !{!1589, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!1590 = !{!1591}
!1591 = distinct !{!1591, !1592, !"_ZN2PP4Word10get_stringB5cxx11Ev: argument 0"}
!1592 = distinct !{!1592, !"_ZN2PP4Word10get_stringB5cxx11Ev"}
!1593 = !{!1594}
!1594 = distinct !{!1594, !1595, !"_ZNSt5dequeIN2PP4WordESaIS1_EE5beginEv: argument 0"}
!1595 = distinct !{!1595, !"_ZNSt5dequeIN2PP4WordESaIS1_EE5beginEv"}
!1596 = !{!1597, !1599}
!1597 = distinct !{!1597, !1598, !"_ZNKSt15_Deque_iteratorIN2PP4WordERKS1_PS2_E13_M_const_castEv: argument 0"}
!1598 = distinct !{!1598, !"_ZNKSt15_Deque_iteratorIN2PP4WordERKS1_PS2_E13_M_const_castEv"}
!1599 = distinct !{!1599, !1600, !"_ZNSt5dequeIN2PP4WordESaIS1_EE5eraseESt15_Deque_iteratorIS1_RKS1_PS5_E: argument 0"}
!1600 = distinct !{!1600, !"_ZNSt5dequeIN2PP4WordESaIS1_EE5eraseESt15_Deque_iteratorIS1_RKS1_PS5_E"}
!1601 = !{!1602}
!1602 = distinct !{!1602, !1603, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!1603 = distinct !{!1603, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!1604 = !{!1597}
!1605 = !{!1599}
!1606 = !{!1607}
!1607 = distinct !{!1607, !1608, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!1608 = distinct !{!1608, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!1609 = !{!1610}
!1610 = distinct !{!1610, !1611, !"_ZN2PP4Word10get_stringB5cxx11Ev: argument 0"}
!1611 = distinct !{!1611, !"_ZN2PP4Word10get_stringB5cxx11Ev"}
!1612 = !{!1613}
!1613 = distinct !{!1613, !1614, !"_ZNSt5dequeIN2PP4WordESaIS1_EE3endEv: argument 0"}
!1614 = distinct !{!1614, !"_ZNSt5dequeIN2PP4WordESaIS1_EE3endEv"}
!1615 = !{!32, !32, i64 0}
!1616 = !{!1617}
!1617 = distinct !{!1617, !1618, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!1618 = distinct !{!1618, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!1619 = !{!1620}
!1620 = distinct !{!1620, !1621, !"_ZN2PP4Word10get_stringB5cxx11Ev: argument 0"}
!1621 = distinct !{!1621, !"_ZN2PP4Word10get_stringB5cxx11Ev"}
!1622 = !{!1623}
!1623 = distinct !{!1623, !1624, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!1624 = distinct !{!1624, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!1625 = !{!1626}
!1626 = distinct !{!1626, !1627, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!1627 = distinct !{!1627, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!1628 = !{!1629}
!1629 = distinct !{!1629, !1630, !"_ZN2PP4Word10get_stringB5cxx11Ev: argument 0"}
!1630 = distinct !{!1630, !"_ZN2PP4Word10get_stringB5cxx11Ev"}
!1631 = !{!1632}
!1632 = distinct !{!1632, !1633, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!1633 = distinct !{!1633, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!1634 = distinct !{!1634, !49}
!1635 = !{!1636}
!1636 = distinct !{!1636, !1637, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El: argument 0"}
!1637 = distinct !{!1637, !"_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El"}
!1638 = distinct !{!1638, !49}
end_hunk_8
