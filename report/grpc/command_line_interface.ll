inline.NumInlined: 8863
inline.NumDeleted: 3452
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeISG_EERSE_PSE_EE:bb.a
  %.pre = load ptr, ptr %1, align 8, !tbaa !130
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.m, %bb.n
  %i.bt = phi ptr [ %i.bn, %bb.m ], [ %i.b, %bb.l ], [ %.pre, %bb.n ] ; 4 uses
  %.083 = phi ptr [ %i.bo, %bb.m ], [ %i.c, %bb.l ], [ %i.bp, %bb.n ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 11
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !35
  %.not116 = icmp eq i8 %i.bv, 0
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !35
  %i.by = add i8 %i.bx, 1                         ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br i1 %.not116, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ca = call noalias noundef nonnull dereferenceable(272) ptr @_Znwm(i64 noundef 272) #43 ; 9 uses
  store ptr %.083, ptr %i.ca, align 8, !tbaa !130
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store i8 %i.by, ptr %i.cb, align 8, !tbaa !35
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 9
  store i8 0, ptr %i.cc, align 1, !tbaa !35
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 10
  store i8 0, ptr %i.cd, align 2, !tbaa !35
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 11
  store i8 4, ptr %i.ce, align 1, !tbaa !35
  %i.cf = load i32, ptr %i.a, align 8, !tbaa !107
  call void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE5splitEiPSH_PSF_(ptr noundef nonnull align 1 dereferenceable(1) %i.bt, i32 noundef %i.cf, ptr noundef nonnull %i.ca, ptr noundef nonnull %i.bz)
  %i.cg = load ptr, ptr %i.bz, align 8, !tbaa !130
  %i.ch = load ptr, ptr %1, align 8, !tbaa !130
  %i.ci = icmp eq ptr %i.cg, %i.ch
  br i1 %i.ci, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  store ptr %i.ca, ptr %i.bz, align 8, !tbaa !130
  br label %bb.s

bb.r:                                             ; preds = %bb.o
  %i.cj = call noalias noundef nonnull dereferenceable(312) ptr @_Znwm(i64 noundef 312) #43 ; 7 uses
  store ptr %.083, ptr %i.cj, align 8, !tbaa !130
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store i8 %i.by, ptr %i.ck, align 8, !tbaa !35
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 9
  store i8 0, ptr %i.cl, align 1, !tbaa !35
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 10
  store i8 0, ptr %i.cm, align 2, !tbaa !35
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 11
  store i8 0, ptr %i.cn, align 1, !tbaa !35
  %i.co = load i32, ptr %i.a, align 8, !tbaa !107
  call void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE5splitEiPSH_PSF_(ptr noundef nonnull align 1 dereferenceable(1) %i.bt, i32 noundef %i.co, ptr noundef nonnull %i.cj, ptr noundef nonnull %i.bz)
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.q, %bb.r
  %.0 = phi ptr [ %i.ca, %bb.q ], [ %i.ca, %bb.p ], [ %i.cj, %bb.r ]
  %i.cp = load i32, ptr %i.a, align 8, !tbaa !107 ; 2 uses
  %i.cq = load ptr, ptr %1, align 8, !tbaa !130
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 10
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !35
  %i.ct = zext i8 %i.cs to i32                    ; 2 uses
  %i.cu = icmp sgt i32 %i.cp, %i.ct
  br i1 %i.cu, label %bb.t, label %.critedge

bb.t:                                             ; preds = %bb.s
  %i.cv = xor i32 %i.ct, -1
  %i.cw = add nsw i32 %i.cp, %i.cv
  br label %.critedge.sink.split

.critedge.sink.split:                             ; preds = %bb.t, %bb.f, %bb.k
  %.sink127 = phi i32 [ %i.bj, %bb.k ], [ %i.ae, %bb.f ], [ %i.cw, %bb.t ]
  %.sink = phi ptr [ %i.am, %bb.k ], [ %i.k, %bb.f ], [ %.0, %bb.t ]
  store i32 %.sink127, ptr %i.a, align 8, !tbaa !107
  store ptr %.sink, ptr %1, align 8, !tbaa !130
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %bb.j, %bb.e, %bb.s
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE13emplace_valueIJRKSt21piecewise_construct_tSt5tupleIJOS9_EESM_IJRA1_KcEEEEEvhPSF_DpOT_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = zext i8 %1 to i32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 3 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !35    ; 2 uses
  %i.d = icmp ult i8 %1, %i.c
  %i.e = zext i8 %1 to i64                        ; 2 uses
  br i1 %i.d, label %.lr.ph.preheader.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE19transfer_n_backwardEmmmPSH_PSF_.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr [64 x i8], ptr %i.f, i64 %i.e ; 3 uses
  %narrow = sub nuw i8 %i.c, %1
  %i.h = zext i8 %narrow to i64                   ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.h, 6
  %i.i = getelementptr i8, ptr %i.g, i64 64
  %i.j = getelementptr [64 x i8], ptr %i.i, i64 %i.h
  %i.k = getelementptr i8, ptr %i.g, i64 %.idx.i
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i, %.lr.ph.preheader.i
  %.017.i = phi ptr [ %i.l, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i ], [ %i.j, %.lr.ph.preheader.i ] ; 6 uses
  %.01416.i = phi ptr [ %i.m, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i ], [ %i.k, %.lr.ph.preheader.i ] ; 8 uses
  %i.l = getelementptr inbounds i8, ptr %.017.i, i64 -64 ; 3 uses
  %i.m = getelementptr inbounds i8, ptr %.01416.i, i64 -64 ; 5 uses
  %i.n = getelementptr inbounds i8, ptr %.017.i, i64 -48 ; 3 uses
  store ptr %i.n, ptr %i.l, align 8, !tbaa !136
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !106  ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %.01416.i, i64 -48 ; 7 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.r = getelementptr inbounds i8, ptr %.01416.i, i64 -56
  %i.s = load i64, ptr %i.r, align 8, !tbaa !102  ; 2 uses
  %i.t = icmp ult i64 %i.s, 16
  tail call void @llvm.assume(i1 %i.t)
  %i.u = add nuw nsw i64 %i.s, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.n, ptr noundef nonnull align 8 dereferenceable(1) %i.p, i64 %i.u, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i
  store ptr %i.o, ptr %i.l, align 8, !tbaa !106
  %i.v = load i64, ptr %i.p, align 8, !tbaa !35
  store i64 %i.v, ptr %i.n, align 8, !tbaa !35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.b
  %i.w = getelementptr inbounds i8, ptr %.01416.i, i64 -56 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !102
  %i.y = getelementptr inbounds i8, ptr %.017.i, i64 -56
  store i64 %i.x, ptr %i.y, align 8, !tbaa !102
  store ptr %i.p, ptr %i.m, align 8, !tbaa !106
  store i64 0, ptr %i.w, align 8, !tbaa !102
  store i8 0, ptr %i.p, align 8, !tbaa !35
  %i.z = getelementptr inbounds i8, ptr %.017.i, i64 -32 ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %.01416.i, i64 -32 ; 2 uses
  %i.ab = getelementptr inbounds i8, ptr %.017.i, i64 -16 ; 3 uses
  store ptr %i.ab, ptr %i.z, align 8, !tbaa !136
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !106 ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %.01416.i, i64 -16 ; 5 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i
  %i.af = getelementptr inbounds i8, ptr %.01416.i, i64 -24
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !102 ; 2 uses
  %i.ah = icmp ult i64 %i.ag, 16
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = add nuw nsw i64 %i.ag, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ab, ptr noundef nonnull align 8 dereferenceable(1) %i.ad, i64 %i.ai, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i
  store ptr %i.ac, ptr %i.z, align 8, !tbaa !106
  %i.aj = load i64, ptr %i.ad, align 8, !tbaa !35
  store i64 %i.aj, ptr %i.ab, align 8, !tbaa !35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i, %bb.c
  %i.ak = getelementptr inbounds i8, ptr %.01416.i, i64 -24 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !102
  %i.am = getelementptr inbounds i8, ptr %.017.i, i64 -24
  store i64 %i.al, ptr %i.am, align 8, !tbaa !102
  store ptr %i.ad, ptr %i.aa, align 8, !tbaa !106
  store i64 0, ptr %i.ak, align 8, !tbaa !102
  store i8 0, ptr %i.ad, align 8, !tbaa !35
  %i.an = load ptr, ptr %i.m, align 8, !tbaa !106 ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.p
  br i1 %i.ao, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i
  %i.ap = load i64, ptr %i.p, align 8, !tbaa !35
  %i.aq = add i64 %i.ap, 1
  tail call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #42
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i
  %.not.i = icmp eq ptr %i.m, %i.g
  br i1 %.not.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE19transfer_n_backwardEmmmPSH_PSF_.exit, label %.lr.ph.i, !llvm.loop !962

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE19transfer_n_backwardEmmmPSH_PSF_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i, %bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.as = getelementptr inbounds nuw [64 x i8], ptr %i.ar, i64 %i.e
  tail call void @_ZN4absl12lts_2025051218container_internal15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_E9constructISaISt4pairIKS8_S8_EEJRKSt21piecewise_construct_tSt5tupleIJOS8_EESI_IJRA1_KcEEEEEvPT_PNS1_13map_slot_typeIS8_S8_EEDpOT0_(ptr noundef %2, ptr noundef nonnull %i.as, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5)
  %i.at = load i8, ptr %i.b, align 1, !tbaa !35
  %i.au = add i8 %i.at, 1                         ; 3 uses
  store i8 %i.au, ptr %i.b, align 1, !tbaa !35
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !35
  %.not.i20 = icmp eq i8 %i.aw, 0
  br i1 %.not.i20, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE19transfer_n_backwardEmmmPSH_PSF_.exit
  %i.ax = zext i8 %i.au to i32
  %i.ay = add nuw nsw i32 %i.a, 1                 ; 2 uses
  %i.az = icmp samesign ult i32 %i.ay, %i.ax
  br i1 %i.az, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.d
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.bb = trunc nuw i32 %i.ay to i8
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %.021 = phi i8 [ %i.au, %.lr.ph ], [ %6, %bb.e ] ; 3 uses
  %6 = add i8 %.021, -1                           ; 3 uses
  %7 = zext i8 %6 to i64
  %8 = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !130      ; 2 uses
  %10 = zext i8 %.021 to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %10
  store ptr %9, ptr %i.bc, align 8, !tbaa !130
  %i.bd = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i8 %.021, ptr %i.bd, align 1, !tbaa !35
  %11 = icmp ugt i8 %6, %i.bb
  br i1 %11, label %bb.e, label %.loopexit, !llvm.loop !963

.loopexit:                                        ; preds = %bb.e, %bb.d, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE19transfer_n_backwardEmmmPSH_PSF_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE16clear_and_deleteEPSH_PSF_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 11 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !35    ; 2 uses
  %.not82 = icmp eq i8 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.d = load i8, ptr %i.c, align 1, !tbaa !35    ; 3 uses
  br i1 %.not82, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = zext i8 %i.d to i64
  %i.g = shl nuw nsw i64 %i.f, 6
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.g
  %.not9.i = icmp eq i8 %i.d, 0
  br i1 %.not9.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE15value_destroy_nEhhPSF_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEvE7destroyISaISt4pairIKS9_S9_EEEEDaPT_PNS1_13map_slot_typeIS9_S9_EE.exit.i
  %.010.i = phi ptr [ %i.t, %_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEvE7destroyISaISt4pairIKS9_S9_EEEEDaPT_PNS1_13map_slot_typeIS9_S9_EE.exit.i ], [ %i.e, %bb.b ] ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.010.i, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !106  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.010.i, i64 48 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i
  %i.m = load i64, ptr %i.k, align 8, !tbaa !35
  %i.n = add i64 %i.m, 1
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.o = load ptr, ptr %.010.i, align 8, !tbaa !106 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.010.i, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEvE7destroyISaISt4pairIKS9_S9_EEEEDaPT_PNS1_13map_slot_typeIS9_S9_EE.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %i.r = load i64, ptr %i.p, align 8, !tbaa !35
  %i.s = add i64 %i.r, 1
  tail call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #42
  br label %_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEvE7destroyISaISt4pairIKS9_S9_EEEEDaPT_PNS1_13map_slot_typeIS9_S9_EE.exit.i

_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEvE7destroyISaISt4pairIKS9_S9_EEEEDaPT_PNS1_13map_slot_typeIS9_S9_EE.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.010.i, i64 64 ; 2 uses
  %.not.i = icmp eq ptr %i.t, %i.h
  br i1 %.not.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE15value_destroy_nEhhPSF_.exit.loopexit, label %.lr.ph.i, !llvm.loop !964

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE15value_destroy_nEhhPSF_.exit.loopexit: ; preds = %_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEvE7destroyISaISt4pairIKS9_S9_EEEEDaPT_PNS1_13map_slot_typeIS9_S9_EE.exit.i
  %.pre = load i8, ptr %i.a, align 1, !tbaa !35
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE15value_destroy_nEhhPSF_.exit

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE15value_destroy_nEhhPSF_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE15value_destroy_nEhhPSF_.exit.loopexit, %bb.b
  %i.u = phi i8 [ %.pre, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE15value_destroy_nEhhPSF_.exit.loopexit ], [ %i.b, %bb.b ] ; 2 uses
  %i.v = icmp eq i8 %i.u, 0
  %i.w = select i1 %i.v, i8 4, i8 %i.u
  %i.x = zext i8 %i.w to i64
  %i.y = shl nuw nsw i64 %i.x, 6
  %i.z = or disjoint i64 %i.y, 16
  br label %.loopexit.sink.split

bb.c:                                             ; preds = %bb.a
  %i.aa = icmp eq i8 %i.d, 0
  br i1 %i.aa, label %.loopexit.sink.split, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.ab = load ptr, ptr %0, align 8, !tbaa !130
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.04988 = phi ptr [ %i.ad, %.lr.ph ], [ %0, %.lr.ph.preheader ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.04988, i64 272
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !130 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 11
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !35
  %.not.i55 = icmp eq i8 %i.af, 0
  br i1 %.not.i55, label %.lr.ph, label %._crit_edge, !llvm.loop !965

._crit_edge:                                      ; preds = %.lr.ph
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !35
  %i.ai = zext i8 %i.ah to i64
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !130
  br label %bb.d

bb.d:                                             ; preds = %.backedge, %._crit_edge
  %.147 = phi i64 [ %i.ai, %._crit_edge ], [ %.147.be, %.backedge ] ; 2 uses
  %.1 = phi ptr [ %i.aj, %._crit_edge ], [ %.1.be, %.backedge ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.1, i64 272
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %.147
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !130 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 11
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !35
  %.not.i56 = icmp eq i8 %i.ao, 0
  br i1 %.not.i56, label %.lr.ph91, label %bb.e

.lr.ph91:                                         ; preds = %bb.d, %.lr.ph91
  %.15090 = phi ptr [ %i.aq, %.lr.ph91 ], [ %i.am, %bb.d ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.15090, i64 272
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !130 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 11
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !35
  %.not.i57 = icmp eq i8 %i.as, 0
  br i1 %.not.i57, label %.lr.ph91, label %._crit_edge92, !llvm.loop !966

._crit_edge92:                                    ; preds = %.lr.ph91
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.au = load i8, ptr %i.at, align 1, !tbaa !35
  %i.av = zext i8 %i.au to i64
  %i.aw = load ptr, ptr %i.aq, align 8, !tbaa !130
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge92, %bb.d
  %.251 = phi ptr [ %i.aq, %._crit_edge92 ], [ %i.am, %bb.d ] ; 4 uses
  %.248 = phi i64 [ %i.av, %._crit_edge92 ], [ %.147, %bb.d ] ; 2 uses
  %.2 = phi ptr [ %i.aw, %._crit_edge92 ], [ %.1, %bb.d ] ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.251, i64 10
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !35  ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.251, i64 16 ; 2 uses
  %i.ba = zext i8 %i.ay to i64
  %i.bb = shl nuw nsw i64 %i.ba, 6
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bb
  %.not9.i58 = icmp eq i8 %i.ay, 0
  br i1 %.not9.i58, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE15value_destroy_nEhhPSF_.exit69, label %.lr.ph.i60

.lr.ph.i60:                                       ; preds = %bb.e, %_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEvE7destroyISaISt4pairIKS9_S9_EEEEDaPT_PNS1_13map_slot_typeIS9_S9_EE.exit.i65
  %.010.i61 = phi ptr [ %i.bo, %_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEvE7destroyISaISt4pairIKS9_S9_EEEEDaPT_PNS1_13map_slot_typeIS9_S9_EE.exit.i65 ], [ %i.az, %bb.e ] ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.010.i61, i64 32
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !106 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.010.i61, i64 48 ; 2 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i62: ; preds = %.lr.ph.i60
  %i.bh = load i64, ptr %i.bf, align 8, !tbaa !35
  %i.bi = add i64 %i.bh, 1
  tail call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bi) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i63: ; preds = %.lr.ph.i60, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i62
  %i.bj = load ptr, ptr %.010.i61, align 8, !tbaa !106 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.010.i61, i64 16 ; 2 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEvE7destroyISaISt4pairIKS9_S9_EEEEDaPT_PNS1_13map_slot_typeIS9_S9_EE.exit.i65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i64: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i63
  %i.bm = load i64, ptr %i.bk, align 8, !tbaa !35
  %i.bn = add i64 %i.bm, 1
  tail call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bn) #42
  br label %_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEvE7destroyISaISt4pairIKS9_S9_EEEEDaPT_PNS1_13map_slot_typeIS9_S9_EE.exit.i65

_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEvE7destroyISaISt4pairIKS9_S9_EEEEDaPT_PNS1_13map_slot_typeIS9_S9_EE.exit.i65: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i63, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i64
  %i.bo = getelementptr inbounds nuw i8, ptr %.010.i61, i64 64 ; 2 uses
  %.not.i66 = icmp eq ptr %i.bo, %i.bc
  br i1 %.not.i66, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE15value_destroy_nEhhPSF_.exit69, label %.lr.ph.i60, !llvm.loop !964

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE15value_destroy_nEhhPSF_.exit69: ; preds = %_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEvE7destroyISaISt4pairIKS9_S9_EEEEDaPT_PNS1_13map_slot_typeIS9_S9_EE.exit.i65, %bb.e
  %i.bp = getelementptr inbounds nuw i8, ptr %.251, i64 11
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !35  ; 2 uses
  %i.br = icmp eq i8 %i.bq, 0
  %i.bs = select i1 %i.br, i8 4, i8 %i.bq
  %i.bt = zext i8 %i.bs to i64
  %i.bu = shl nuw nsw i64 %i.bt, 6
  %i.bv = or disjoint i64 %i.bu, 16
  tail call void @_ZdlPvm(ptr noundef nonnull %.251, i64 noundef %i.bv) #42
  %i.bw = getelementptr inbounds nuw i8, ptr %.2, i64 10
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !35  ; 2 uses
  %i.by = zext i8 %i.bx to i64
  %.not.not = icmp ult i64 %.248, %i.by
  br i1 %.not.not, label %.backedge, label %.preheader83

.backedge:                                        ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE15value_destroy_nEhhPSF_.exit69, %bb.g
  %.147.be.in = phi i64 [ %.248, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE15value_destroy_nEhhPSF_.exit69 ], [ %i.cw, %bb.g ]
  %.1.be = phi ptr [ %.2, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE15value_destroy_nEhhPSF_.exit69 ], [ %i.cc, %bb.g ]
  %.147.be = add nuw nsw i64 %.147.be.in, 1
  br label %bb.d, !llvm.loop !967

.preheader83:                                     ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE15value_destroy_nEhhPSF_.exit69, %bb.f
  %i.bz = phi i8 [ %i.cv, %bb.f ], [ %i.bx, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE15value_destroy_nEhhPSF_.exit69 ] ; 2 uses
  %.3 = phi ptr [ %i.cc, %bb.f ], [ %.2, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE15value_destroy_nEhhPSF_.exit69 ] ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.3, i64 8
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !35  ; 2 uses
  %i.cc = load ptr, ptr %.3, align 8, !tbaa !130  ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.3, i64 16 ; 2 uses
  %i.ce = zext i8 %i.bz to i64
  %i.cf = shl nuw nsw i64 %i.ce, 6
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.cf
  %.not9.i70 = icmp eq i8 %i.bz, 0
  br i1 %.not9.i70, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE15value_destroy_nEhhPSF_.exit81, label %.lr.ph.i72

.lr.ph.i72:                                       ; preds = %.preheader83, %_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEvE7destroyISaISt4pairIKS9_S9_EEEEDaPT_PNS1_13map_slot_typeIS9_S9_EE.exit.i77
  %.010.i73 = phi ptr [ %i.cs, %_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEvE7destroyISaISt4pairIKS9_S9_EEEEDaPT_PNS1_13map_slot_typeIS9_S9_EE.exit.i77 ], [ %i.cd, %.preheader83 ] ; 5 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.010.i73, i64 32
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE5splitEiPSH_PSF_:bb.a
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !130 ; 3 uses
  %i.ci = zext i8 %.02528 to i64
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.ci
  store ptr %i.ch, ptr %i.cj, align 8, !tbaa !130
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store i8 %.02528, ptr %i.ck, align 1, !tbaa !35
  store ptr %2, ptr %i.ch, align 8, !tbaa !130
  %i.cl = add i8 %.02528, 1                       ; 2 uses
  %i.cm = load i8, ptr %i.k, align 1, !tbaa !35
  %.not = icmp ugt i8 %i.cl, %i.cm
  br i1 %.not, label %.loopexit, label %bb.h, !llvm.loop !975

.loopexit:                                        ; preds = %bb.h, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE13value_destroyEhPSF_.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE13emplace_valueIJPNS1_13map_slot_typeIS9_S9_EEEEEvhPSF_DpOT_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = zext i8 %1 to i32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 3 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !35    ; 2 uses
  %i.d = icmp ult i8 %1, %i.c
  %i.e = zext i8 %1 to i64                        ; 2 uses
  br i1 %i.d, label %.lr.ph.preheader.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE19transfer_n_backwardEmmmPSH_PSF_.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr [64 x i8], ptr %i.f, i64 %i.e ; 3 uses
  %narrow = sub nuw i8 %i.c, %1
  %i.h = zext i8 %narrow to i64                   ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.h, 6
  %i.i = getelementptr i8, ptr %i.g, i64 64
  %i.j = getelementptr [64 x i8], ptr %i.i, i64 %i.h
  %i.k = getelementptr i8, ptr %i.g, i64 %.idx.i
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i, %.lr.ph.preheader.i
  %.017.i = phi ptr [ %i.l, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i ], [ %i.j, %.lr.ph.preheader.i ] ; 6 uses
  %.01416.i = phi ptr [ %i.m, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i ], [ %i.k, %.lr.ph.preheader.i ] ; 8 uses
  %i.l = getelementptr inbounds i8, ptr %.017.i, i64 -64 ; 3 uses
  %i.m = getelementptr inbounds i8, ptr %.01416.i, i64 -64 ; 5 uses
  %i.n = getelementptr inbounds i8, ptr %.017.i, i64 -48 ; 3 uses
  store ptr %i.n, ptr %i.l, align 8, !tbaa !136
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !106  ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %.01416.i, i64 -48 ; 7 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.r = getelementptr inbounds i8, ptr %.01416.i, i64 -56
  %i.s = load i64, ptr %i.r, align 8, !tbaa !102  ; 2 uses
  %i.t = icmp ult i64 %i.s, 16
  tail call void @llvm.assume(i1 %i.t)
  %i.u = add nuw nsw i64 %i.s, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.n, ptr noundef nonnull align 8 dereferenceable(1) %i.p, i64 %i.u, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i
  store ptr %i.o, ptr %i.l, align 8, !tbaa !106
  %i.v = load i64, ptr %i.p, align 8, !tbaa !35
  store i64 %i.v, ptr %i.n, align 8, !tbaa !35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.b
  %i.w = getelementptr inbounds i8, ptr %.01416.i, i64 -56 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !102
  %i.y = getelementptr inbounds i8, ptr %.017.i, i64 -56
  store i64 %i.x, ptr %i.y, align 8, !tbaa !102
  store ptr %i.p, ptr %i.m, align 8, !tbaa !106
  store i64 0, ptr %i.w, align 8, !tbaa !102
  store i8 0, ptr %i.p, align 8, !tbaa !35
  %i.z = getelementptr inbounds i8, ptr %.017.i, i64 -32 ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %.01416.i, i64 -32 ; 2 uses
  %i.ab = getelementptr inbounds i8, ptr %.017.i, i64 -16 ; 3 uses
  store ptr %i.ab, ptr %i.z, align 8, !tbaa !136
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !106 ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %.01416.i, i64 -16 ; 5 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i
  %i.af = getelementptr inbounds i8, ptr %.01416.i, i64 -24
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !102 ; 2 uses
  %i.ah = icmp ult i64 %i.ag, 16
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = add nuw nsw i64 %i.ag, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ab, ptr noundef nonnull align 8 dereferenceable(1) %i.ad, i64 %i.ai, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i
  store ptr %i.ac, ptr %i.z, align 8, !tbaa !106
  %i.aj = load i64, ptr %i.ad, align 8, !tbaa !35
  store i64 %i.aj, ptr %i.ab, align 8, !tbaa !35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i, %bb.c
  %i.ak = getelementptr inbounds i8, ptr %.01416.i, i64 -24 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !102
  %i.am = getelementptr inbounds i8, ptr %.017.i, i64 -24
  store i64 %i.al, ptr %i.am, align 8, !tbaa !102
  store ptr %i.ad, ptr %i.aa, align 8, !tbaa !106
  store i64 0, ptr %i.ak, align 8, !tbaa !102
  store i8 0, ptr %i.ad, align 8, !tbaa !35
  %i.an = load ptr, ptr %i.m, align 8, !tbaa !106 ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.p
  br i1 %i.ao, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i
  %i.ap = load i64, ptr %i.p, align 8, !tbaa !35
  %i.aq = add i64 %i.ap, 1
  tail call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #42
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i
  %.not.i = icmp eq ptr %i.m, %i.g
  br i1 %.not.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE19transfer_n_backwardEmmmPSH_PSF_.exit, label %.lr.ph.i, !llvm.loop !962

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE19transfer_n_backwardEmmmPSH_PSF_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i, %bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.as = getelementptr inbounds nuw [64 x i8], ptr %i.ar, i64 %i.e ; 7 uses
  %i.at = load ptr, ptr %3, align 8, !tbaa !973   ; 9 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 3 uses
  store ptr %i.au, ptr %i.as, align 8, !tbaa !136
  %i.av = load ptr, ptr %i.at, align 8, !tbaa !106 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 5 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.d:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE19transfer_n_backwardEmmmPSH_PSF_.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !102 ; 2 uses
  %i.ba = icmp ult i64 %i.az, 16
  tail call void @llvm.assume(i1 %i.ba)
  %i.bb = add nuw nsw i64 %i.az, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.au, ptr noundef nonnull align 8 dereferenceable(1) %i.aw, i64 %i.bb, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE19transfer_n_backwardEmmmPSH_PSF_.exit
  store ptr %i.av, ptr %i.as, align 8, !tbaa !106
  %i.bc = load i64, ptr %i.aw, align 8, !tbaa !35
  store i64 %i.bc, ptr %i.au, align 8, !tbaa !35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.d
  %i.bd = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !102
  %i.bf = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !102
  store ptr %i.aw, ptr %i.at, align 8, !tbaa !106
  store i64 0, ptr %i.bd, align 8, !tbaa !102
  store i8 0, ptr %i.aw, align 8, !tbaa !35
  %i.bg = getelementptr inbounds nuw i8, ptr %i.as, i64 32 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.at, i64 32 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.as, i64 48 ; 3 uses
  store ptr %i.bi, ptr %i.bg, align 8, !tbaa !136
  %i.bj = load ptr, ptr %i.bh, align 8, !tbaa !106 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.at, i64 48 ; 5 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !102 ; 2 uses
  %i.bo = icmp ult i64 %i.bn, 16
  tail call void @llvm.assume(i1 %i.bo)
  %i.bp = add nuw nsw i64 %i.bn, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bi, ptr noundef nonnull align 8 dereferenceable(1) %i.bk, i64 %i.bp, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE10value_initIJPNS1_13map_slot_typeIS9_S9_EEEEEvhPSF_DpOT_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i
  store ptr %i.bj, ptr %i.bg, align 8, !tbaa !106
  %i.bq = load i64, ptr %i.bk, align 8, !tbaa !35
  store i64 %i.bq, ptr %i.bi, align 8, !tbaa !35
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE10value_initIJPNS1_13map_slot_typeIS9_S9_EEEEEvhPSF_DpOT_.exit

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE10value_initIJPNS1_13map_slot_typeIS9_S9_EEEEEvhPSF_DpOT_.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.at, i64 40 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !102
  %i.bt = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  store i64 %i.bs, ptr %i.bt, align 8, !tbaa !102
  store ptr %i.bk, ptr %i.bh, align 8, !tbaa !106
  store i64 0, ptr %i.br, align 8, !tbaa !102
  store i8 0, ptr %i.bk, align 8, !tbaa !35
  %i.bu = load i8, ptr %i.b, align 1, !tbaa !35
  %i.bv = add i8 %i.bu, 1                         ; 3 uses
  store i8 %i.bv, ptr %i.b, align 1, !tbaa !35
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !35
  %.not.i18 = icmp eq i8 %i.bx, 0
  br i1 %.not.i18, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE10value_initIJPNS1_13map_slot_typeIS9_S9_EEEEEvhPSF_DpOT_.exit
  %i.by = zext i8 %i.bv to i32
  %i.bz = add nuw nsw i32 %i.a, 1                 ; 2 uses
  %i.ca = icmp samesign ult i32 %i.bz, %i.by
  br i1 %i.ca, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.f
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.cc = trunc nuw i32 %i.bz to i8
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.g
  %.019 = phi i8 [ %i.bv, %.lr.ph ], [ %4, %bb.g ] ; 3 uses
  %4 = add i8 %.019, -1                           ; 3 uses
  %5 = zext i8 %4 to i64
  %6 = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !130      ; 2 uses
  %8 = zext i8 %.019 to i64
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %8
  store ptr %7, ptr %i.cd, align 8, !tbaa !130
  %i.ce = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i8 %.019, ptr %i.ce, align 1, !tbaa !35
  %9 = icmp ugt i8 %4, %i.cc
  br i1 %9, label %bb.g, label %.loopexit, !llvm.loop !976

.loopexit:                                        ; preds = %bb.g, %bb.f, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE10value_initIJPNS1_13map_slot_typeIS9_S9_EEEEEvhPSF_DpOT_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_E9constructISaISt4pairIKS8_S8_EEJRKSt21piecewise_construct_tSt5tupleIJOS8_EESI_IJRA1_KcEEEEEvPT_PNS1_13map_slot_typeIS8_S8_EEDpOT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = load i64, ptr %3, align 8, !tbaa !79
  %i.c = inttoptr i64 %i.b to ptr                 ; 5 uses
  %i.d = load i64, ptr %4, align 8, !tbaa !196
  %i.e = inttoptr i64 %i.d to ptr                 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  store ptr %i.f, ptr %1, align 8, !tbaa !136
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !106  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 5 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !102  ; 2 uses
  %i.l = icmp ult i64 %i.k, 16
  tail call void @llvm.assume(i1 %i.l)
  %i.m = add nuw nsw i64 %i.k, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.f, ptr noundef nonnull align 8 dereferenceable(1) %i.h, i64 %i.m, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  store ptr %i.g, ptr %1, align 8, !tbaa !106
  %i.n = load i64, ptr %i.h, align 8, !tbaa !35
  store i64 %i.n, ptr %i.f, align 8, !tbaa !35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !102
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.p, ptr %i.q, align 8, !tbaa !102
  store ptr %i.h, ptr %i.c, align 8, !tbaa !106
  store i64 0, ptr %i.o, align 8, !tbaa !102
  store i8 0, ptr %i.h, align 8, !tbaa !35
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  store ptr %i.s, ptr %i.r, align 8, !tbaa !136
  %i.t = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #37 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  store i64 %i.t, ptr %i.a, align 8, !tbaa !31
  %i.u = icmp ugt i64 %i.t, 15
  br i1 %i.u, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.v = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i.i unwind label %bb.e ; 2 uses

.noexc.i.i:                                       ; preds = %.noexc.i.i.i
  store ptr %i.v, ptr %i.r, align 8, !tbaa !106
  %i.w = load i64, ptr %i.a, align 8, !tbaa !31
  store i64 %i.w, ptr %i.s, align 8, !tbaa !35
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.x = phi ptr [ %i.v, %.noexc.i.i ], [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i ] ; 2 uses
  switch i64 %i.t, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IJOS5_EJRA1_KcEEESt21piecewise_construct_tSt5tupleIJDpT_EESD_IJDpT0_EE.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.y = load i8, ptr %i.e, align 1, !tbaa !35
  store i8 %i.y, ptr %i.x, align 1, !tbaa !35
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IJOS5_EJRA1_KcEEESt21piecewise_construct_tSt5tupleIJDpT_EESD_IJDpT0_EE.exit

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.x, ptr nonnull align 1 %i.e, i64 %i.t, i1 false)
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IJOS5_EJRA1_KcEEESt21piecewise_construct_tSt5tupleIJDpT_EESD_IJDpT0_EE.exit

bb.e:                                             ; preds = %.noexc.i.i.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = load ptr, ptr %1, align 8, !tbaa !106   ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.f
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  %i.ac = load i64, ptr %i.f, align 8, !tbaa !35
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  resume { ptr, i32 } %i.z

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IJOS5_EJRA1_KcEEESt21piecewise_construct_tSt5tupleIJDpT_EESD_IJDpT0_EE.exit: ; preds = %._crit_edge.i.i.i.i, %bb.c, %bb.d
  %i.ae = load i64, ptr %i.a, align 8, !tbaa !31  ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !102
  %i.ag = load ptr, ptr %i.r, align 8, !tbaa !106
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ae
  store i8 0, ptr %i.ah, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  ret void
}

declare void @_ZN4absl12lts_2025051219substitute_internal24SubstituteAndAppendArrayEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EPKSA_m(ptr noundef, i64, ptr, ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull ptr @_ZN4absl12lts_2025051212log_internal17MakeCheckOpStringIPKcS4_EES4_T_T0_S4_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #27

declare void @_ZN4absl12lts_2025051218container_internal20IterateOverFullSlotsERKNS1_12CommonFieldsEmNS0_11FunctionRefIFvPKNS1_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, ptr, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_18container_internal12raw_hash_setINS3_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS3_10StringHashENS3_8StringEqESaISB_EE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSJ_SK_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE(ptr %0, ptr noundef %1, ptr noundef %2) #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !106    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZSt6invokeIRKZN4absl12lts_2025051218container_internal12raw_hash_setINS2_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS2_10StringHashENS2_8StringEqESaISA_EE13destroy_slotsEvEUlPKNS2_6ctrl_tEPvE_JSI_SJ_EENSt13invoke_resultIT_JDpT0_EE4typeEOSO_DpOSP_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8, !tbaa !35
  %i.e = add i64 %i.d, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #42
  br label %_ZSt6invokeIRKZN4absl12lts_2025051218container_internal12raw_hash_setINS2_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS2_10StringHashENS2_8StringEqESaISA_EE13destroy_slotsEvEUlPKNS2_6ctrl_tEPvE_JSI_SJ_EENSt13invoke_resultIT_JDpT0_EE4typeEOSO_DpOSP_.exit

_ZSt6invokeIRKZN4absl12lts_2025051218container_internal12raw_hash_setINS2_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS2_10StringHashENS2_8StringEqESaISA_EE13destroy_slotsEvEUlPKNS2_6ctrl_tEPvE_JSI_SJ_EENSt13invoke_resultIT_JDpT0_EE4typeEOSO_DpOSP_.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i1 noundef zeroext %5) #18 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.neg = select i1 %5, i64 -9, i64 -8
  %i.a = select i1 %5, i64 9, i64 8
  %i.b = add i64 %1, 15
  %i.c = add i64 %i.b, %4
  %i.d = add i64 %i.c, %i.a
  %i.e = sub i64 0, %4
  %i.f = and i64 %i.d, %i.e
  %i.g = mul i64 %3, %1
  %i.h = getelementptr inbounds i8, ptr %2, i64 %.neg
  %i.i = add i64 %i.g, 7
  %i.j = add i64 %i.i, %i.f
  %i.k = and i64 %i.j, -8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.k) #42
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_18container_internal12raw_hash_setINS3_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EENS3_10StringHashENS3_8StringEqESaISt4pairIKSB_SB_EEE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSM_SN_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE(ptr %0, ptr noundef %1, ptr noundef %2) #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !106  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !35
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.g = load ptr, ptr %2, align 8, !tbaa !106    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZSt6invokeIRKZN4absl12lts_2025051218container_internal12raw_hash_setINS2_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_EENS2_10StringHashENS2_8StringEqESaISt4pairIKSA_SA_EEE13destroy_slotsEvEUlPKNS2_6ctrl_tEPvE_JSL_SM_EENSt13invoke_resultIT_JDpT0_EE4typeEOSR_DpOSS_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.j = load i64, ptr %i.h, align 8, !tbaa !35
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #42
  br label %_ZSt6invokeIRKZN4absl12lts_2025051218container_internal12raw_hash_setINS2_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_EENS2_10StringHashENS2_8StringEqESaISt4pairIKSA_SA_EEE13destroy_slotsEvEUlPKNS2_6ctrl_tEPvE_JSL_SM_EENSt13invoke_resultIT_JDpT0_EE4typeEOSR_DpOSS_.exit

_ZSt6invokeIRKZN4absl12lts_2025051218container_internal12raw_hash_setINS2_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_EENS2_10StringHashENS2_8StringEqESaISt4pairIKSA_SA_EEE13destroy_slotsEvEUlPKNS2_6ctrl_tEPvE_JSL_SM_EENSt13invoke_resultIT_JDpT0_EE4typeEOSR_DpOSS_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i.i.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_18container_internal12raw_hash_setINS3_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoEEENS3_10StringHashENS3_8StringEqESaISt4pairIKSB_SG_EEE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSR_SS_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE(ptr %0, ptr noundef %1, ptr noundef %2) #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !106  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.a
  %i.f = load i64, ptr %i.d, align 8, !tbaa !35
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE16internal_emplaceIJSE_EEENS1_14btree_iteratorINS1_10btree_nodeISG_EERSE_PSE_EESO_DpOT_:bb.a
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.2.0.copyload, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE13emplace_valueIJSE_EEEvhPSF_DpOT_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(64) %3) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = zext i8 %1 to i32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 3 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !35    ; 2 uses
  %i.e = icmp ult i8 %1, %i.d
  %i.f = zext i8 %1 to i64                        ; 2 uses
  br i1 %i.e, label %.lr.ph.preheader.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE19transfer_n_backwardEmmmPSH_PSF_.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = getelementptr [64 x i8], ptr %i.g, i64 %i.f ; 3 uses
  %narrow = sub nuw i8 %i.d, %1
  %i.i = zext i8 %narrow to i64                   ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.i, 6
  %i.j = getelementptr i8, ptr %i.h, i64 64
  %i.k = getelementptr [64 x i8], ptr %i.j, i64 %i.i
  %i.l = getelementptr i8, ptr %i.h, i64 %.idx.i
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i, %.lr.ph.preheader.i
  %.017.i = phi ptr [ %i.m, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i ], [ %i.k, %.lr.ph.preheader.i ] ; 6 uses
  %.01416.i = phi ptr [ %i.n, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i ], [ %i.l, %.lr.ph.preheader.i ] ; 8 uses
  %i.m = getelementptr inbounds i8, ptr %.017.i, i64 -64 ; 3 uses
  %i.n = getelementptr inbounds i8, ptr %.01416.i, i64 -64 ; 5 uses
  %i.o = getelementptr inbounds i8, ptr %.017.i, i64 -48 ; 3 uses
  store ptr %i.o, ptr %i.m, align 8, !tbaa !136
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !106  ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %.01416.i, i64 -48 ; 7 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.s = getelementptr inbounds i8, ptr %.01416.i, i64 -56
  %i.t = load i64, ptr %i.s, align 8, !tbaa !102  ; 2 uses
  %i.u = icmp ult i64 %i.t, 16
  tail call void @llvm.assume(i1 %i.u)
  %i.v = add nuw nsw i64 %i.t, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.o, ptr noundef nonnull align 8 dereferenceable(1) %i.q, i64 %i.v, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i
  store ptr %i.p, ptr %i.m, align 8, !tbaa !106
  %i.w = load i64, ptr %i.q, align 8, !tbaa !35
  store i64 %i.w, ptr %i.o, align 8, !tbaa !35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.b
  %i.x = getelementptr inbounds i8, ptr %.01416.i, i64 -56 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !102
  %i.z = getelementptr inbounds i8, ptr %.017.i, i64 -56
  store i64 %i.y, ptr %i.z, align 8, !tbaa !102
  store ptr %i.q, ptr %i.n, align 8, !tbaa !106
  store i64 0, ptr %i.x, align 8, !tbaa !102
  store i8 0, ptr %i.q, align 8, !tbaa !35
  %i.aa = getelementptr inbounds i8, ptr %.017.i, i64 -32 ; 2 uses
  %i.ab = getelementptr inbounds i8, ptr %.01416.i, i64 -32 ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %.017.i, i64 -16 ; 3 uses
  store ptr %i.ac, ptr %i.aa, align 8, !tbaa !136
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !106 ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %.01416.i, i64 -16 ; 5 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i
  %i.ag = getelementptr inbounds i8, ptr %.01416.i, i64 -24
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !102 ; 2 uses
  %i.ai = icmp ult i64 %i.ah, 16
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = add nuw nsw i64 %i.ah, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ac, ptr noundef nonnull align 8 dereferenceable(1) %i.ae, i64 %i.aj, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i
  store ptr %i.ad, ptr %i.aa, align 8, !tbaa !106
  %i.ak = load i64, ptr %i.ae, align 8, !tbaa !35
  store i64 %i.ak, ptr %i.ac, align 8, !tbaa !35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i, %bb.c
  %i.al = getelementptr inbounds i8, ptr %.01416.i, i64 -24 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !102
  %i.an = getelementptr inbounds i8, ptr %.017.i, i64 -24
  store i64 %i.am, ptr %i.an, align 8, !tbaa !102
  store ptr %i.ae, ptr %i.ab, align 8, !tbaa !106
  store i64 0, ptr %i.al, align 8, !tbaa !102
  store i8 0, ptr %i.ae, align 8, !tbaa !35
  %i.ao = load ptr, ptr %i.n, align 8, !tbaa !106 ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.q
  br i1 %i.ap, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i
  %i.aq = load i64, ptr %i.q, align 8, !tbaa !35
  %i.ar = add i64 %i.aq, 1
  tail call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #42
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i
  %.not.i = icmp eq ptr %i.n, %i.h
  br i1 %.not.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE19transfer_n_backwardEmmmPSH_PSF_.exit, label %.lr.ph.i, !llvm.loop !962

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE19transfer_n_backwardEmmmPSH_PSF_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i, %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.at = getelementptr inbounds nuw [64 x i8], ptr %i.as, i64 %i.f ; 9 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 3 uses
  store ptr %i.au, ptr %i.at, align 8, !tbaa !136
  %i.av = load ptr, ptr %3, align 8, !tbaa !106   ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !102 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  store i64 %i.ax, ptr %i.a, align 8, !tbaa !31
  %i.ay = icmp ugt i64 %i.ax, 15
  br i1 %i.ay, label %.noexc.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.noexc.i.i.i.i.i:                                 ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE19transfer_n_backwardEmmmPSH_PSF_.exit
  %i.az = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(64) %i.at, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.az, ptr %i.at, align 8, !tbaa !106
  %i.ba = load i64, ptr %i.a, align 8, !tbaa !31
  store i64 %i.ba, ptr %i.au, align 8, !tbaa !35
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.noexc.i.i.i.i.i, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE19transfer_n_backwardEmmmPSH_PSF_.exit
  %i.bb = phi ptr [ %i.az, %.noexc.i.i.i.i.i ], [ %i.au, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE19transfer_n_backwardEmmmPSH_PSF_.exit ] ; 2 uses
  switch i64 %i.ax, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.bc = load i8, ptr %i.av, align 1, !tbaa !35
  store i8 %i.bc, ptr %i.bb, align 1, !tbaa !35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bb, ptr align 1 %i.av, i64 %i.ax, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i: ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i.i.i.i
  %i.bd = load i64, ptr %i.a, align 8, !tbaa !31  ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !102
  %i.bf = load ptr, ptr %i.at, align 8, !tbaa !106
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bd
  store i8 0, ptr %i.bg, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %i.bh = getelementptr inbounds nuw i8, ptr %i.at, i64 32 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.at, i64 48 ; 3 uses
  store ptr %i.bj, ptr %i.bh, align 8, !tbaa !136
  %i.bk = load ptr, ptr %i.bi, align 8, !tbaa !106 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 5 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !102 ; 2 uses
  %i.bp = icmp ult i64 %i.bo, 16
  call void @llvm.assume(i1 %i.bp)
  %i.bq = add nuw nsw i64 %i.bo, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bj, ptr noundef nonnull align 8 dereferenceable(1) %i.bl, i64 %i.bq, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE10value_initIJSE_EEEvhPSF_DpOT_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i
  store ptr %i.bk, ptr %i.bh, align 8, !tbaa !106
  %i.br = load i64, ptr %i.bl, align 8, !tbaa !35
  store i64 %i.br, ptr %i.bj, align 8, !tbaa !35
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE10value_initIJSE_EEEvhPSF_DpOT_.exit

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE10value_initIJSE_EEEvhPSF_DpOT_.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !102
  %i.bu = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  store i64 %i.bt, ptr %i.bu, align 8, !tbaa !102
  store ptr %i.bl, ptr %i.bi, align 8, !tbaa !106
  store i64 0, ptr %i.bs, align 8, !tbaa !102
  store i8 0, ptr %i.bl, align 8, !tbaa !35
  %i.bv = load i8, ptr %i.c, align 1, !tbaa !35
  %i.bw = add i8 %i.bv, 1                         ; 3 uses
  store i8 %i.bw, ptr %i.c, align 1, !tbaa !35
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !35
  %.not.i18 = icmp eq i8 %i.by, 0
  br i1 %.not.i18, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE10value_initIJSE_EEEvhPSF_DpOT_.exit
  %i.bz = zext i8 %i.bw to i32
  %i.ca = add nuw nsw i32 %i.b, 1                 ; 2 uses
  %i.cb = icmp samesign ult i32 %i.ca, %i.bz
  br i1 %i.cb, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.g
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.cd = trunc nuw i32 %i.ca to i8
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.h
  %.019 = phi i8 [ %i.bw, %.lr.ph ], [ %4, %bb.h ] ; 3 uses
  %4 = add i8 %.019, -1                           ; 3 uses
  %5 = zext i8 %4 to i64
  %6 = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !130      ; 2 uses
  %8 = zext i8 %.019 to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %8
  store ptr %7, ptr %i.ce, align 8, !tbaa !130
  %i.cf = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i8 %.019, ptr %i.cf, align 1, !tbaa !35
  %9 = icmp ugt i8 %4, %i.cd
  br i1 %9, label %bb.h, label %.loopexit, !llvm.loop !1208

.loopexit:                                        ; preds = %bb.h, %bb.g, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE10value_initIJSE_EEEvhPSF_DpOT_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !137  ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !139    ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775776
  br i1 %i.h, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.188) #41
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.i = ashr exact i64 %i.g, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1)
  %i.j = add nsw i64 %.sroa.speculated.i, %i.i    ; 2 uses
  %i.k = icmp ult i64 %i.j, %i.i
  %i.l = tail call i64 @llvm.umin.i64(i64 %i.j, i64 288230376151711743)
  %i.m = select i1 %i.k, i64 288230376151711743, i64 %i.l ; 3 uses
  %i.n = ptrtoint ptr %1 to i64
  %i.o = sub i64 %i.n, %i.f
  %.not.i = icmp ne i64 %i.m, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.p = shl nuw nsw i64 %i.m, 5                  ; 2 uses
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #43 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 3 uses
  store ptr %i.s, ptr %i.r, align 8, !tbaa !136
  %i.t = load ptr, ptr %2, align 8, !tbaa !106    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !102  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  store i64 %i.v, ptr %i.a, align 8, !tbaa !31
  %i.w = icmp ugt i64 %i.v, 15
  br i1 %i.w, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.x = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.j     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.x, ptr %i.r, align 8, !tbaa !106
  %i.y = load i64, ptr %i.a, align 8, !tbaa !31
  store i64 %i.y, ptr %i.s, align 8, !tbaa !35
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.z = phi ptr [ %i.x, %.noexc ], [ %i.s, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  switch i64 %i.v, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.aa = load i8, ptr %i.t, align 1, !tbaa !35
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !35
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr align 1 %i.t, i64 %i.v, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !31  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !102
  %i.ad = load ptr, ptr %i.r, align 8, !tbaa !106
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ab
  store i8 0, ptr %i.ae, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %.not10.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.as, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.q, %bb.e ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ar, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.d, %bb.e ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1209)
  call void @llvm.experimental.noalias.scope.decl(metadata !1212)
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.af, ptr %.012.i.i.i, align 8, !tbaa !136, !alias.scope !1209, !noalias !1212
  %i.ag = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !106, !alias.scope !1212, !noalias !1209 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !102, !alias.scope !1212, !noalias !1209 ; 3 uses
  %i.al = icmp ult i64 %i.ak, 16
  call void @llvm.assume(i1 %i.al)
  %i.am = add nuw nsw i64 %i.ak, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.af, ptr noundef nonnull align 8 dereferenceable(1) %i.ah, i64 %i.am, i1 false), !alias.scope !1214
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ag, ptr %.012.i.i.i, align 8, !tbaa !106, !alias.scope !1209, !noalias !1212
  %i.an = load i64, ptr %i.ah, align 8, !tbaa !35, !alias.scope !1212, !noalias !1209
  store i64 %i.an, ptr %i.af, align 8, !tbaa !35, !alias.scope !1209, !noalias !1212
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !102, !alias.scope !1212, !noalias !1209
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.f
  %i.ao = phi i64 [ %i.ak, %bb.f ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.ao, ptr %i.aq, align 8, !tbaa !102, !alias.scope !1209, !noalias !1212
  store ptr %i.ah, ptr %.0911.i.i.i, align 8, !tbaa !106, !alias.scope !1212, !noalias !1209
  store i64 0, ptr %i.ap, align 8, !tbaa !102, !alias.scope !1212, !noalias !1209
  store i8 0, ptr %i.ah, align 8, !tbaa !35, !alias.scope !1212, !noalias !1209
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ar, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !1215

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %bb.e
  %.0.lcssa.i.i.i = phi ptr [ %i.q, %bb.e ], [ %i.as, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i26 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33
  %.012.i.i.i28 = phi ptr [ %i.bh, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %i.at, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i29 = phi ptr [ %i.bg, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1216)
  call void @llvm.experimental.noalias.scope.decl(metadata !1219)
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 16 ; 3 uses
  store ptr %i.au, ptr %.012.i.i.i28, align 8, !tbaa !136, !alias.scope !1216, !noalias !1219
  %i.av = load ptr, ptr %.0911.i.i.i29, align 8, !tbaa !106, !alias.scope !1219, !noalias !1216 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 16 ; 5 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30

bb.g:                                             ; preds = %.lr.ph.i.i.i27
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !102, !alias.scope !1219, !noalias !1216 ; 3 uses
  %i.ba = icmp ult i64 %i.az, 16
  call void @llvm.assume(i1 %i.ba)
  %i.bb = add nuw nsw i64 %i.az, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.au, ptr noundef nonnull align 8 dereferenceable(1) %i.aw, i64 %i.bb, i1 false), !alias.scope !1221
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30: ; preds = %.lr.ph.i.i.i27
  store ptr %i.av, ptr %.012.i.i.i28, align 8, !tbaa !106, !alias.scope !1216, !noalias !1219
  %i.bc = load i64, ptr %i.aw, align 8, !tbaa !35, !alias.scope !1219, !noalias !1216
  store i64 %i.bc, ptr %i.au, align 8, !tbaa !35, !alias.scope !1216, !noalias !1219
  %.phi.trans.insert.i.i.i.i31 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %.pre.i.i.i.i32 = load i64, ptr %.phi.trans.insert.i.i.i.i31, align 8, !tbaa !102, !alias.scope !1219, !noalias !1216
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30, %bb.g
  %i.bd = phi i64 [ %i.az, %bb.g ], [ %.pre.i.i.i.i32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30 ]
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 8
  store i64 %i.bd, ptr %i.bf, align 8, !tbaa !102, !alias.scope !1216, !noalias !1219
  store ptr %i.aw, ptr %.0911.i.i.i29, align 8, !tbaa !106, !alias.scope !1219, !noalias !1216
  store i64 0, ptr %i.be, align 8, !tbaa !102, !alias.scope !1219, !noalias !1216
  store i8 0, ptr %i.aw, align 8, !tbaa !35, !alias.scope !1219, !noalias !1216
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 32 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 32 ; 2 uses
  %.not.i.i.i34 = icmp eq ptr %i.bg, %i.c
  br i1 %.not.i.i.i34, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, label %.lr.ph.i.i.i27, !llvm.loop !1215

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i35 = phi ptr [ %i.at, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.bh, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ]
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i37 = icmp eq ptr %i.d, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !143
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = sub i64 %i.bk, %i.f
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.bl) #42
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, %bb.h
  store ptr %i.q, ptr %0, align 8, !tbaa !139
  store ptr %.0.lcssa.i.i.i35, ptr %i.b, align 8, !tbaa !137
  %i.bm = getelementptr inbounds nuw [32 x i8], ptr %i.q, i64 %i.m
  store ptr %i.bm, ptr %i.bi, align 8, !tbaa !143
  ret void

bb.i:                                             ; preds = %bb.j
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

end_hunk_2
