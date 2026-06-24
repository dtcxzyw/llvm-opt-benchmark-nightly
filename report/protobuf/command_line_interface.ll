inline.NumInlined: 8841
inline.NumDeleted: 3439
begin_hunk_0_@_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE23rebalance_right_to_leftEhPSH_PSF_:bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cw, ptr noundef nonnull align 8 dereferenceable(1) %i.cy, i64 %i.dd, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i52: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i51
  store ptr %i.cx, ptr %i.cu, align 8, !tbaa !105
  %i.de = load i64, ptr %i.cy, align 8, !tbaa !34
  store i64 %i.de, ptr %i.cw, align 8, !tbaa !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i53: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i52, %bb.g
  %i.df = getelementptr inbounds nuw i8, ptr %i.ch, i64 40 ; 2 uses
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !101
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cg, i64 40
  store i64 %i.dg, ptr %i.dh, align 8, !tbaa !101
  store ptr %i.cy, ptr %i.cv, align 8, !tbaa !105
  store i64 0, ptr %i.df, align 8, !tbaa !101
  store i8 0, ptr %i.cy, align 8, !tbaa !34
  %i.di = load ptr, ptr %i.ch, align 8, !tbaa !105 ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.ck
  br i1 %i.dj, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEmmPSH_PSF_.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i54: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i53
  %i.dk = load i64, ptr %i.ck, align 8, !tbaa !34
  %i.dl = add i64 %i.dk, 1
  tail call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dl) #42
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEmmPSH_PSF_.exit57

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEmmPSH_PSF_.exit57: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i53, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i54
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 5 uses
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !34  ; 2 uses
  %i.do = zext i8 %i.dn to i32
  %i.dp = sub nsw i32 %i.do, %i.ap
  %i.dq = sext i32 %i.dp to i64
  %i.dr = zext i8 %1 to i64                       ; 3 uses
  %i.ds = getelementptr inbounds nuw [64 x i8], ptr %i.as, i64 %i.dr ; 2 uses
  %.idx.i58 = shl nuw nsw i64 %i.dq, 6
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 %.idx.i58
  %.not13.i59 = icmp eq i8 %i.dn, %1
  br i1 %.not13.i59, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE10transfer_nEmmmPSH_PSF_.exit72, label %.lr.ph.i61

.lr.ph.i61:                                       ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEmmPSH_PSF_.exit57, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i69
  %.015.i62 = phi ptr [ %i.ez, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i69 ], [ %i.as, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEmmPSH_PSF_.exit57 ] ; 8 uses
  %.01214.i63 = phi ptr [ %i.ey, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i69 ], [ %i.ds, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEmmPSH_PSF_.exit57 ] ; 11 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.015.i62, i64 16 ; 3 uses
  store ptr %i.du, ptr %.015.i62, align 8, !tbaa !132
  %i.dv = load ptr, ptr %.01214.i63, align 8, !tbaa !105 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.01214.i63, i64 16 ; 7 uses
  %i.dx = icmp eq ptr %i.dv, %i.dw
  br i1 %i.dx, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i64

bb.h:                                             ; preds = %.lr.ph.i61
  %i.dy = getelementptr inbounds nuw i8, ptr %.01214.i63, i64 8
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !101 ; 2 uses
  %i.ea = icmp ult i64 %i.dz, 16
  tail call void @llvm.assume(i1 %i.ea)
  %i.eb = add nuw nsw i64 %i.dz, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.du, ptr noundef nonnull align 8 dereferenceable(1) %i.dw, i64 %i.eb, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i64: ; preds = %.lr.ph.i61
  store ptr %i.dv, ptr %.015.i62, align 8, !tbaa !105
  %i.ec = load i64, ptr %i.dw, align 8, !tbaa !34
  store i64 %i.ec, ptr %i.du, align 8, !tbaa !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i65

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i65: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i64, %bb.h
  %i.ed = getelementptr inbounds nuw i8, ptr %.01214.i63, i64 8 ; 2 uses
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !101
  %i.ef = getelementptr inbounds nuw i8, ptr %.015.i62, i64 8
  store i64 %i.ee, ptr %i.ef, align 8, !tbaa !101
  store ptr %i.dw, ptr %.01214.i63, align 8, !tbaa !105
  store i64 0, ptr %i.ed, align 8, !tbaa !101
  store i8 0, ptr %i.dw, align 8, !tbaa !34
  %i.eg = getelementptr inbounds nuw i8, ptr %.015.i62, i64 32 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.01214.i63, i64 32 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.015.i62, i64 48 ; 3 uses
  store ptr %i.ei, ptr %i.eg, align 8, !tbaa !132
  %i.ej = load ptr, ptr %i.eh, align 8, !tbaa !105 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.01214.i63, i64 48 ; 5 uses
  %i.el = icmp eq ptr %i.ej, %i.ek
  br i1 %i.el, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i66

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i65
  %i.em = getelementptr inbounds nuw i8, ptr %.01214.i63, i64 40
  %i.en = load i64, ptr %i.em, align 8, !tbaa !101 ; 2 uses
  %i.eo = icmp ult i64 %i.en, 16
  tail call void @llvm.assume(i1 %i.eo)
  %i.ep = add nuw nsw i64 %i.en, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ei, ptr noundef nonnull align 8 dereferenceable(1) %i.ek, i64 %i.ep, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i66: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i65
  store ptr %i.ej, ptr %i.eg, align 8, !tbaa !105
  %i.eq = load i64, ptr %i.ek, align 8, !tbaa !34
  store i64 %i.eq, ptr %i.ei, align 8, !tbaa !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i67: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i66, %bb.i
  %i.er = getelementptr inbounds nuw i8, ptr %.01214.i63, i64 40 ; 2 uses
  %i.es = load i64, ptr %i.er, align 8, !tbaa !101
  %i.et = getelementptr inbounds nuw i8, ptr %.015.i62, i64 40
  store i64 %i.es, ptr %i.et, align 8, !tbaa !101
  store ptr %i.ek, ptr %i.eh, align 8, !tbaa !105
  store i64 0, ptr %i.er, align 8, !tbaa !101
  store i8 0, ptr %i.ek, align 8, !tbaa !34
  %i.eu = load ptr, ptr %.01214.i63, align 8, !tbaa !105 ; 2 uses
  %i.ev = icmp eq ptr %i.eu, %i.dw
  br i1 %i.ev, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i68: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i67
  %i.ew = load i64, ptr %i.dw, align 8, !tbaa !34
  %i.ex = add i64 %i.ew, 1
  tail call void @_ZdlPvm(ptr noundef %i.eu, i64 noundef %i.ex) #42
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i69

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i69: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i67, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i68
  %i.ey = getelementptr inbounds nuw i8, ptr %.01214.i63, i64 64 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.015.i62, i64 64
  %.not.i70 = icmp eq ptr %i.ey, %i.dt
  br i1 %.not.i70, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE10transfer_nEmmmPSH_PSF_.exit72, label %.lr.ph.i61, !llvm.loop !957

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE10transfer_nEmmmPSH_PSF_.exit72: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i69, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEmmPSH_PSF_.exit57
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !34
  %.not.i73 = icmp eq i8 %i.fb, 0
  br i1 %.not.i73, label %.preheader74, label %.loopexit

.preheader74:                                     ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE10transfer_nEmmmPSH_PSF_.exit72
  %.not79 = icmp eq i8 %1, 0
  br i1 %.not79, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader74
  %i.fc = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 3 uses
  %xtraiter = and i64 %i.dr, 1
  %i.fe = icmp eq i32 %i.aq, 0
  br i1 %i.fe, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.dr, 254
  br label %bb.j

.preheader.loopexit.unr-lcssa:                    ; preds = %bb.j
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.preheader.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod113 = trunc i8 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod113)
  %i.ff = load i8, ptr %i.a, align 2, !tbaa !34
  %i.fg = trunc i64 %indvars.iv.epil.init to i8
  %i.fh = add i8 %i.fg, 1
  %i.fi = add i8 %i.ff, %i.fh                     ; 2 uses
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %indvars.iv.epil.init
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !128 ; 3 uses
  %i.fl = zext i8 %i.fi to i64
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %i.fl
  store ptr %i.fk, ptr %i.fm, align 8, !tbaa !128
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  store i8 %i.fi, ptr %i.fn, align 1, !tbaa !34
  store ptr %0, ptr %i.fk, align 8, !tbaa !128
  br label %.preheader

.preheader:                                       ; preds = %.epil.preheader, %.preheader.loopexit.unr-lcssa, %.preheader74
  %i.fo = load i8, ptr %i.dm, align 1, !tbaa !34
  %.not76 = icmp ult i8 %i.fo, %1
  br i1 %.not76, label %.loopexit, label %.lr.ph78

.lr.ph78:                                         ; preds = %.preheader
  %i.fp = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  br label %bb.k

bb.j:                                             ; preds = %bb.j, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.j ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.j ]
  %i.fq = load i8, ptr %i.a, align 2, !tbaa !34
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.fr = trunc nuw i64 %indvars.iv.next to i8
  %i.fs = add i8 %i.fq, %i.fr                     ; 2 uses
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %indvars.iv
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !128 ; 3 uses
  %i.fv = zext i8 %i.fs to i64
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %i.fv
  store ptr %i.fu, ptr %i.fw, align 8, !tbaa !128
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  store i8 %i.fs, ptr %i.fx, align 1, !tbaa !34
  store ptr %0, ptr %i.fu, align 8, !tbaa !128
  %i.fy = load i8, ptr %i.a, align 2, !tbaa !34
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.fz = trunc nuw i64 %indvars.iv.next.1 to i8
  %i.ga = add i8 %i.fy, %i.fz                     ; 2 uses
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %indvars.iv.next
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !128 ; 3 uses
  %i.gd = zext i8 %i.ga to i64
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %i.gd
  store ptr %i.gc, ptr %i.ge, align 8, !tbaa !128
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  store i8 %i.ga, ptr %i.gf, align 1, !tbaa !34
  store ptr %0, ptr %i.gc, align 8, !tbaa !128
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %bb.j, !llvm.loop !965

bb.k:                                             ; preds = %.lr.ph78, %bb.k
  %.077 = phi i8 [ 0, %.lr.ph78 ], [ %i.gn, %bb.k ] ; 4 uses
  %i.gg = add i8 %.077, %1
  %i.gh = zext i8 %i.gg to i64
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %i.gh
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !128 ; 3 uses
  %i.gk = zext i8 %.077 to i64
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %i.gk
  store ptr %i.gj, ptr %i.gl, align 8, !tbaa !128
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  store i8 %.077, ptr %i.gm, align 1, !tbaa !34
  store ptr %2, ptr %i.gj, align 8, !tbaa !128
  %i.gn = add i8 %.077, 1                         ; 2 uses
  %i.go = zext i8 %i.gn to i32
  %i.gp = load i8, ptr %i.dm, align 1, !tbaa !34
  %i.gq = zext i8 %i.gp to i32
  %i.gr = sub nsw i32 %i.gq, %i.ap
  %.not = icmp slt i32 %i.gr, %i.go
  br i1 %.not, label %.loopexit, label %bb.k, !llvm.loop !966

.loopexit:                                        ; preds = %bb.k, %.preheader, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE10transfer_nEmmmPSH_PSF_.exit72
  %i.gs = load i8, ptr %i.a, align 2, !tbaa !34
  %i.gt = add i8 %i.gs, %1
  store i8 %i.gt, ptr %i.a, align 2, !tbaa !34
  %i.gu = load i8, ptr %i.dm, align 1, !tbaa !34
  %i.gv = sub i8 %i.gu, %1
  store i8 %i.gv, ptr %i.dm, align 1, !tbaa !34
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE23rebalance_left_to_rightEhPSH_PSF_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 4 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !34    ; 2 uses
  %i.c = zext i8 %1 to i32                        ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %.not15.i = icmp eq i8 %i.b, 0
  br i1 %.not15.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE19transfer_n_backwardEmmmPSH_PSF_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.e = zext i8 %i.b to i64                      ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.e, 6
  %i.f = zext i8 %1 to i64
  %i.g = getelementptr [64 x i8], ptr %i.d, i64 %i.f
  %i.h = getelementptr [64 x i8], ptr %i.g, i64 %i.e
  %i.i = getelementptr i8, ptr %i.d, i64 %.idx.i
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i, %.lr.ph.preheader.i
  %.017.i = phi ptr [ %i.j, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i ], [ %i.h, %.lr.ph.preheader.i ] ; 6 uses
  %.01416.i = phi ptr [ %i.k, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i ], [ %i.i, %.lr.ph.preheader.i ] ; 8 uses
  %i.j = getelementptr inbounds i8, ptr %.017.i, i64 -64 ; 3 uses
  %i.k = getelementptr inbounds i8, ptr %.01416.i, i64 -64 ; 5 uses
  %i.l = getelementptr inbounds i8, ptr %.017.i, i64 -48 ; 3 uses
  store ptr %i.l, ptr %i.j, align 8, !tbaa !132
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !105  ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %.01416.i, i64 -48 ; 7 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.p = getelementptr inbounds i8, ptr %.01416.i, i64 -56
  %i.q = load i64, ptr %i.p, align 8, !tbaa !101  ; 2 uses
  %i.r = icmp ult i64 %i.q, 16
  tail call void @llvm.assume(i1 %i.r)
  %i.s = add nuw nsw i64 %i.q, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.l, ptr noundef nonnull align 8 dereferenceable(1) %i.n, i64 %i.s, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i
  store ptr %i.m, ptr %i.j, align 8, !tbaa !105
  %i.t = load i64, ptr %i.n, align 8, !tbaa !34
  store i64 %i.t, ptr %i.l, align 8, !tbaa !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.b
  %i.u = getelementptr inbounds i8, ptr %.01416.i, i64 -56 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !101
  %i.w = getelementptr inbounds i8, ptr %.017.i, i64 -56
  store i64 %i.v, ptr %i.w, align 8, !tbaa !101
  store ptr %i.n, ptr %i.k, align 8, !tbaa !105
  store i64 0, ptr %i.u, align 8, !tbaa !101
  store i8 0, ptr %i.n, align 8, !tbaa !34
  %i.x = getelementptr inbounds i8, ptr %.017.i, i64 -32 ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %.01416.i, i64 -32 ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %.017.i, i64 -16 ; 3 uses
  store ptr %i.z, ptr %i.x, align 8, !tbaa !132
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !105 ; 2 uses
  %i.ab = getelementptr inbounds i8, ptr %.01416.i, i64 -16 ; 5 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i
  %i.ad = getelementptr inbounds i8, ptr %.01416.i, i64 -24
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !101 ; 2 uses
  %i.af = icmp ult i64 %i.ae, 16
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = add nuw nsw i64 %i.ae, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.z, ptr noundef nonnull align 8 dereferenceable(1) %i.ab, i64 %i.ag, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i
  store ptr %i.aa, ptr %i.x, align 8, !tbaa !105
  %i.ah = load i64, ptr %i.ab, align 8, !tbaa !34
  store i64 %i.ah, ptr %i.z, align 8, !tbaa !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i, %bb.c
  %i.ai = getelementptr inbounds i8, ptr %.01416.i, i64 -24 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !101
  %i.ak = getelementptr inbounds i8, ptr %.017.i, i64 -24
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !101
  store ptr %i.ab, ptr %i.y, align 8, !tbaa !105
  store i64 0, ptr %i.ai, align 8, !tbaa !101
  store i8 0, ptr %i.ab, align 8, !tbaa !34
  %i.al = load ptr, ptr %i.k, align 8, !tbaa !105 ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.n
  br i1 %i.am, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i
  %i.an = load i64, ptr %i.n, align 8, !tbaa !34
  %i.ao = add i64 %i.an, 1
  tail call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #42
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i
  %.not.i = icmp eq ptr %i.k, %i.d
  br i1 %.not.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE19transfer_n_backwardEmmmPSH_PSF_.exit, label %.lr.ph.i, !llvm.loop !958

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE19transfer_n_backwardEmmmPSH_PSF_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i, %bb.a
  %i.ap = add nsw i32 %i.c, -1                    ; 3 uses
  %i.aq = sext i32 %i.ap to i64                   ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !34
  %i.at = zext i8 %i.as to i64
  %i.au = load ptr, ptr %0, align 8, !tbaa !128
  %i.av = getelementptr inbounds nuw [64 x i8], ptr %i.d, i64 %i.aq ; 7 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.ax = getelementptr inbounds nuw [64 x i8], ptr %i.aw, i64 %i.at ; 10 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 3 uses
  store ptr %i.ay, ptr %i.av, align 8, !tbaa !132
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !105 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 7 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i46

bb.d:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE19transfer_n_backwardEmmmPSH_PSF_.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !101 ; 2 uses
  %i.be = icmp ult i64 %i.bd, 16
  tail call void @llvm.assume(i1 %i.be)
  %i.bf = add nuw nsw i64 %i.bd, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ay, ptr noundef nonnull align 8 dereferenceable(1) %i.ba, i64 %i.bf, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i46: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE19transfer_n_backwardEmmmPSH_PSF_.exit
  store ptr %i.az, ptr %i.av, align 8, !tbaa !105
  %i.bg = load i64, ptr %i.ba, align 8, !tbaa !34
  store i64 %i.bg, ptr %i.ay, align 8, !tbaa !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i47: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i46, %bb.d
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !101
  %i.bj = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i64 %i.bi, ptr %i.bj, align 8, !tbaa !101
  store ptr %i.ba, ptr %i.ax, align 8, !tbaa !105
  store i64 0, ptr %i.bh, align 8, !tbaa !101
  store i8 0, ptr %i.ba, align 8, !tbaa !34
  %i.bk = getelementptr inbounds nuw i8, ptr %i.av, i64 32 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ax, i64 32 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.av, i64 48 ; 3 uses
  store ptr %i.bm, ptr %i.bk, align 8, !tbaa !132
  %i.bn = load ptr, ptr %i.bl, align 8, !tbaa !105 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ax, i64 48 ; 5 uses
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i48

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i47
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !101 ; 2 uses
  %i.bs = icmp ult i64 %i.br, 16
  tail call void @llvm.assume(i1 %i.bs)
  %i.bt = add nuw nsw i64 %i.br, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bm, ptr noundef nonnull align 8 dereferenceable(1) %i.bo, i64 %i.bt, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i48: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i47
  store ptr %i.bn, ptr %i.bk, align 8, !tbaa !105
  %i.bu = load i64, ptr %i.bo, align 8, !tbaa !34
  store i64 %i.bu, ptr %i.bm, align 8, !tbaa !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i49: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i48, %bb.e
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ax, i64 40 ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !101
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE23rebalance_left_to_rightEhPSH_PSF_:bb.a
  %i.dq = load ptr, ptr %0, align 8, !tbaa !128
  %i.dr = load i8, ptr %i.ar, align 8, !tbaa !34
  %i.ds = zext i8 %i.dr to i64
  %i.dt = sub nsw i32 %.pre-phi, %i.c
  %i.du = sext i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.dw = getelementptr inbounds nuw [64 x i8], ptr %i.dv, i64 %i.ds ; 7 uses
  %i.dx = getelementptr inbounds nuw [64 x i8], ptr %i.ch, i64 %i.du ; 10 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 16 ; 3 uses
  store ptr %i.dy, ptr %i.dw, align 8, !tbaa !132
  %i.dz = load ptr, ptr %i.dx, align 8, !tbaa !105 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 16 ; 7 uses
  %i.eb = icmp eq ptr %i.dz, %i.ea
  br i1 %i.eb, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i64

bb.h:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE10transfer_nEmmmPSH_PSF_.exit
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !101 ; 2 uses
  %i.ee = icmp ult i64 %i.ed, 16
  tail call void @llvm.assume(i1 %i.ee)
  %i.ef = add nuw nsw i64 %i.ed, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dy, ptr noundef nonnull align 8 dereferenceable(1) %i.ea, i64 %i.ef, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i64: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE10transfer_nEmmmPSH_PSF_.exit
  store ptr %i.dz, ptr %i.dw, align 8, !tbaa !105
  %i.eg = load i64, ptr %i.ea, align 8, !tbaa !34
  store i64 %i.eg, ptr %i.dy, align 8, !tbaa !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i65

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i65: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i64, %bb.h
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dx, i64 8 ; 2 uses
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !101
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  store i64 %i.ei, ptr %i.ej, align 8, !tbaa !101
  store ptr %i.ea, ptr %i.dx, align 8, !tbaa !105
  store i64 0, ptr %i.eh, align 8, !tbaa !101
  store i8 0, ptr %i.ea, align 8, !tbaa !34
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dw, i64 32 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.dx, i64 32 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.dw, i64 48 ; 3 uses
  store ptr %i.em, ptr %i.ek, align 8, !tbaa !132
  %i.en = load ptr, ptr %i.el, align 8, !tbaa !105 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dx, i64 48 ; 5 uses
  %i.ep = icmp eq ptr %i.en, %i.eo
  br i1 %i.ep, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i66

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i65
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dx, i64 40
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !101 ; 2 uses
  %i.es = icmp ult i64 %i.er, 16
  tail call void @llvm.assume(i1 %i.es)
  %i.et = add nuw nsw i64 %i.er, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.em, ptr noundef nonnull align 8 dereferenceable(1) %i.eo, i64 %i.et, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i66: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i65
  store ptr %i.en, ptr %i.ek, align 8, !tbaa !105
  %i.eu = load i64, ptr %i.eo, align 8, !tbaa !34
  store i64 %i.eu, ptr %i.em, align 8, !tbaa !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i67: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i66, %bb.i
  %i.ev = getelementptr inbounds nuw i8, ptr %i.dx, i64 40 ; 2 uses
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !101
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dw, i64 40
  store i64 %i.ew, ptr %i.ex, align 8, !tbaa !101
  store ptr %i.eo, ptr %i.el, align 8, !tbaa !105
  store i64 0, ptr %i.ev, align 8, !tbaa !101
  store i8 0, ptr %i.eo, align 8, !tbaa !34
  %i.ey = load ptr, ptr %i.dx, align 8, !tbaa !105 ; 2 uses
  %i.ez = icmp eq ptr %i.ey, %i.ea
  br i1 %i.ez, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEmmPSH_PSF_.exit71, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i68: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i67
  %i.fa = load i64, ptr %i.ea, align 8, !tbaa !34
  %i.fb = add i64 %i.fa, 1
  tail call void @_ZdlPvm(ptr noundef %i.ey, i64 noundef %i.fb) #42
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEmmPSH_PSF_.exit71

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEmmPSH_PSF_.exit71: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i67, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i68
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !34
  %.not.i72 = icmp eq i8 %i.fd, 0
  br i1 %.not.i72, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEmmPSH_PSF_.exit71
  %i.fe = load i8, ptr %i.a, align 1, !tbaa !34   ; 5 uses
  %i.ff = add i8 %i.fe, 1                         ; 2 uses
  %.not7374 = icmp eq i8 %i.ff, 0
  br i1 %.not7374, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 6 uses
  %i.fh = zext i8 %i.ff to i64                    ; 2 uses
  %i.fi = and i8 %i.fe, 1
  %lcmp.mod.not.not = icmp eq i8 %i.fi, 0
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %i.fj = add i8 %i.fe, %1                        ; 2 uses
  %i.fk = zext i8 %i.fe to i64
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %i.fk
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !128 ; 3 uses
  %i.fn = zext i8 %i.fj to i64
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %i.fn
  store ptr %i.fm, ptr %i.fo, align 8, !tbaa !128
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  store i8 %i.fj, ptr %i.fp, align 1, !tbaa !34
  store ptr %2, ptr %i.fm, align 8, !tbaa !128
  %indvars.iv.next.prol = add nsw i64 %i.fh, -1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.unr = phi i64 [ %i.fh, %.lr.ph ], [ %indvars.iv.next.prol, %.prol.loopexit.unr-lcssa ]
  %i.fq = icmp eq i8 %i.fe, 0
  br i1 %i.fq, label %.preheader, label %.lr.ph.new

.preheader:                                       ; preds = %.prol.loopexit, %.lr.ph.new, %bb.j
  %.not76 = icmp eq i8 %1, 0
  br i1 %.not76, label %.loopexit, label %.lr.ph78

.lr.ph78:                                         ; preds = %.preheader
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 3 uses
  %i.ft = add i8 %1, 1                            ; 2 uses
  %umax = tail call i8 @llvm.umax.i8(i8 %i.ft, i8 2)
  %wide.trip.count = zext i8 %umax to i64
  %i.fu = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %xtraiter119 = and i64 %i.fu, 1
  %i.fv = icmp ult i8 %i.ft, 3
  br i1 %i.fv, label %.epil.preheader, label %.lr.ph78.new

.lr.ph78.new:                                     ; preds = %.lr.ph78
  %unroll_iter = and i64 %i.fu, -2
  %invariant.op = sub i8 1, %1
  br label %bb.k

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 3 uses
  %i.fw = trunc nuw i64 %indvars.iv to i8
  %i.fx = add i8 %i.fw, -1                        ; 2 uses
  %i.fy = add i8 %i.fx, %1                        ; 2 uses
  %i.fz = zext i8 %i.fx to i64
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %i.fz
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !128 ; 3 uses
  %i.gc = zext i8 %i.fy to i64
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %i.gc
  store ptr %i.gb, ptr %i.gd, align 8, !tbaa !128
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  store i8 %i.fy, ptr %i.ge, align 1, !tbaa !34
  store ptr %2, ptr %i.gb, align 8, !tbaa !128
  %i.gf = trunc i64 %indvars.iv to i8
  %i.gg = add i8 %i.gf, -2                        ; 2 uses
  %i.gh = add i8 %i.gg, %1                        ; 2 uses
  %i.gi = zext i8 %i.gg to i64
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %i.gi
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !128 ; 3 uses
  %i.gl = zext i8 %i.gh to i64
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %i.gl
  store ptr %i.gk, ptr %i.gm, align 8, !tbaa !128
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  store i8 %i.gh, ptr %i.gn, align 1, !tbaa !34
  store ptr %2, ptr %i.gk, align 8, !tbaa !128
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2 ; 2 uses
  %i.go = and i64 %indvars.iv.next.1, 255
  %.not73.1 = icmp eq i64 %i.go, 0
  br i1 %.not73.1, label %.preheader, label %.lr.ph.new, !llvm.loop !967

bb.k:                                             ; preds = %bb.k, %.lr.ph78.new
  %indvars.iv80 = phi i64 [ 1, %.lr.ph78.new ], [ %indvars.iv.next81.1, %bb.k ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph78.new ], [ %niter.next.1, %bb.k ]
  %i.gp = add nsw i64 %indvars.iv80, -1           ; 2 uses
  %i.gq = load i8, ptr %i.cc, align 2, !tbaa !34
  %i.gr = trunc nuw i64 %indvars.iv80 to i8
  %i.gs = sub i8 %i.gr, %1
  %i.gt = add i8 %i.gs, %i.gq
  %i.gu = zext i8 %i.gt to i64
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %i.gu
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !128 ; 3 uses
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %i.gp
  store ptr %i.gw, ptr %i.gx, align 8, !tbaa !128
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  %i.gz = trunc nuw i64 %i.gp to i8
  store i8 %i.gz, ptr %i.gy, align 1, !tbaa !34
  store ptr %2, ptr %i.gw, align 8, !tbaa !128
  %i.ha = load i8, ptr %i.cc, align 2, !tbaa !34
  %i.hb = trunc i64 %indvars.iv80 to i8
  %.reass = add i8 %i.hb, %invariant.op
  %i.hc = add i8 %.reass, %i.ha
  %i.hd = zext i8 %i.hc to i64
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %i.hd
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !128 ; 3 uses
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %indvars.iv80
  store ptr %i.hf, ptr %i.hg, align 8, !tbaa !128
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  %i.hi = trunc nuw i64 %indvars.iv80 to i8
  store i8 %i.hi, ptr %i.hh, align 1, !tbaa !34
  store ptr %2, ptr %i.hf, align 8, !tbaa !128
  %indvars.iv.next81.1 = add nuw nsw i64 %indvars.iv80, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.k, !llvm.loop !968

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.k
  %lcmp.mod120.not = icmp eq i64 %xtraiter119, 0
  br i1 %lcmp.mod120.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph78
  %indvars.iv80.epil.init = phi i64 [ 1, %.lr.ph78 ], [ %indvars.iv.next81.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod121 = trunc i64 %i.fu to i1
  tail call void @llvm.assume(i1 %lcmp.mod121)
  %i.hj = add nsw i64 %indvars.iv80.epil.init, -1 ; 2 uses
  %i.hk = load i8, ptr %i.cc, align 2, !tbaa !34
  %i.hl = trunc nuw i64 %indvars.iv80.epil.init to i8
  %i.hm = sub i8 %i.hl, %1
  %i.hn = add i8 %i.hm, %i.hk
  %i.ho = zext i8 %i.hn to i64
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %i.ho
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !128 ; 3 uses
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %i.hj
  store ptr %i.hq, ptr %i.hr, align 8, !tbaa !128
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  %i.ht = trunc nuw i64 %i.hj to i8
  store i8 %i.ht, ptr %i.hs, align 1, !tbaa !34
  store ptr %2, ptr %i.hq, align 8, !tbaa !128
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEmmPSH_PSF_.exit71
  %i.hu = load i8, ptr %i.cc, align 2, !tbaa !34
  %i.hv = sub i8 %i.hu, %1
  store i8 %i.hv, ptr %i.cc, align 2, !tbaa !34
  %i.hw = load i8, ptr %i.a, align 1, !tbaa !34
  %i.hx = add i8 %i.hw, %1
  store i8 %i.hx, ptr %i.a, align 1, !tbaa !34
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE5splitEiPSH_PSF_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  switch i32 %1, label %bb.c [
    i32 0, label %bb.b
    i32 4, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.c = load i8, ptr %i.b, align 1, !tbaa !34
  %i.d = add i8 %i.c, -1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.f = load i8, ptr %i.e, align 1, !tbaa !34
  %i.g = lshr i8 %i.f, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.sink = phi i8 [ %i.d, %bb.b ], [ %i.g, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 10
  store i8 %.sink, ptr %i.h, align 1, !tbaa !34
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 6 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !34
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 2 uses
  %i.l = sub i8 %i.j, %.sink                      ; 3 uses
  store i8 %i.l, ptr %i.i, align 1, !tbaa !34
  %i.m = load i8, ptr %i.k, align 1, !tbaa !34    ; 2 uses
  %i.n = zext i8 %i.m to i64
  %i.o = zext i8 %i.l to i64
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw [64 x i8], ptr %i.p, i64 %i.o ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.n, 6
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx.i
  %.not13.i = icmp eq i8 %i.m, 0
  br i1 %.not13.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE10transfer_nEmmmPSH_PSF_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i, %.lr.ph.preheader.i
  %.015.i = phi ptr [ %i.ay, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i ], [ %i.s, %.lr.ph.preheader.i ] ; 8 uses
  %.01214.i = phi ptr [ %i.ax, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i ], [ %i.q, %.lr.ph.preheader.i ] ; 11 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.015.i, i64 16 ; 3 uses
  store ptr %i.t, ptr %.015.i, align 8, !tbaa !132
  %i.u = load ptr, ptr %.01214.i, align 8, !tbaa !105 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.01214.i, i64 16 ; 7 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i
  %i.x = getelementptr inbounds nuw i8, ptr %.01214.i, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !101  ; 2 uses
  %i.z = icmp ult i64 %i.y, 16
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = add nuw nsw i64 %i.y, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.t, ptr noundef nonnull align 8 dereferenceable(1) %i.v, i64 %i.aa, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i
  store ptr %i.u, ptr %.015.i, align 8, !tbaa !105
  %i.ab = load i64, ptr %i.v, align 8, !tbaa !34
  store i64 %i.ab, ptr %i.t, align 8, !tbaa !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %.01214.i, i64 8 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !101
  %i.ae = getelementptr inbounds nuw i8, ptr %.015.i, i64 8
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !101
  store ptr %i.v, ptr %.01214.i, align 8, !tbaa !105
  store i64 0, ptr %i.ac, align 8, !tbaa !101
  store i8 0, ptr %i.v, align 8, !tbaa !34
  %i.af = getelementptr inbounds nuw i8, ptr %.015.i, i64 32 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.01214.i, i64 32 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.015.i, i64 48 ; 3 uses
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !132
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !105 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.01214.i, i64 48 ; 5 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.01214.i, i64 40
  %i.am = load i64, ptr %i.al, align 8, !tbaa !101 ; 2 uses
  %i.an = icmp ult i64 %i.am, 16
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = add nuw nsw i64 %i.am, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ah, ptr noundef nonnull align 8 dereferenceable(1) %i.aj, i64 %i.ao, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i
  store ptr %i.ai, ptr %i.af, align 8, !tbaa !105
  %i.ap = load i64, ptr %i.aj, align 8, !tbaa !34
  store i64 %i.ap, ptr %i.ah, align 8, !tbaa !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i, %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %.01214.i, i64 40 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !101
  %i.as = getelementptr inbounds nuw i8, ptr %.015.i, i64 40
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !101
  store ptr %i.aj, ptr %i.ag, align 8, !tbaa !105
  store i64 0, ptr %i.aq, align 8, !tbaa !101
  store i8 0, ptr %i.aj, align 8, !tbaa !34
  %i.at = load ptr, ptr %.01214.i, align 8, !tbaa !105 ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.v
  br i1 %i.au, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i
  %i.av = load i64, ptr %i.v, align 8, !tbaa !34
  %i.aw = add i64 %i.av, 1
  tail call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #42
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.01214.i, i64 64 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.015.i, i64 64
  %.not.i = icmp eq ptr %i.ax, %i.r
  br i1 %.not.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE10transfer_nEmmmPSH_PSF_.exit.loopexit, label %.lr.ph.i, !llvm.loop !957

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE10transfer_nEmmmPSH_PSF_.exit.loopexit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_S9_EESK_PSF_.exit.i
  %.pre = load i8, ptr %i.i, align 1, !tbaa !34
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE10transfer_nEmmmPSH_PSF_.exit

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE10transfer_nEmmmPSH_PSF_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE10transfer_nEmmmPSH_PSF_.exit.loopexit, %bb.d
  %i.az = phi i8 [ %.pre, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE10transfer_nEmmmPSH_PSF_.exit.loopexit ], [ %i.l, %bb.d ]
  %i.ba = add i8 %i.az, -1                        ; 2 uses
  store i8 %i.ba, ptr %i.i, align 1, !tbaa !34
  %i.bb = load ptr, ptr %0, align 8, !tbaa !128
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %i.be = zext i8 %i.ba to i64
  %i.bf = getelementptr inbounds nuw [64 x i8], ptr %i.p, i64 %i.be
  store ptr %i.bf, ptr %i.a, align 8, !tbaa !969
  call void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE13emplace_valueIJPNS1_13map_slot_typeIS9_S9_EEEEEvhPSF_DpOT_(ptr noundef nonnull align 1 dereferenceable(1) %i.bb, i8 noundef zeroext %i.bd, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %i.bg = load i8, ptr %i.i, align 2, !tbaa !34
  %i.bh = zext i8 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [64 x i8], ptr %i.p, i64 %i.bh ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !105 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 48 ; 2 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE10transfer_nEmmmPSH_PSF_.exit
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !34
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bo) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE10transfer_nEmmmPSH_PSF_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.bp = load ptr, ptr %i.bi, align 8, !tbaa !105 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 2 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EELi256ELb0EEEE13value_destroyEhPSF_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i

end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE23rebalance_right_to_leftEhPSA_PS8_:bb.a

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.w, 4611686018427387900      ; 3 uses
  %i.ab = shl i64 %n.vec, 3                       ; 2 uses
  %i.ac = getelementptr i8, ptr %i.k, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.r, i64 %i.ab
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ae = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.k, i64 %i.ae ; 2 uses
  %next.gep62 = getelementptr i8, ptr %i.r, i64 %i.ae ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %i.ag = getelementptr i8, ptr %next.gep62, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep62, align 4
  %wide.load63 = load <2 x i64>, ptr %i.ag, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %next.gep, i64 24
  store <2 x i64> %wide.load, ptr %i.af, align 4
  store <2 x i64> %wide.load63, ptr %i.ah, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !1161

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br i1 %cmp.n, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit.loopexit, label %.lr.ph.i.preheader82

.lr.ph.i.preheader82:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.015.i.pn.ph = phi ptr [ %i.k, %vector.memcheck ], [ %i.k, %.lr.ph.i.preheader ], [ %i.ac, %middle.block ]
  %.01214.i.ph = phi ptr [ %i.r, %vector.memcheck ], [ %i.r, %.lr.ph.i.preheader ], [ %i.ad, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader82, %.lr.ph.i
  %.015.i.pn = phi ptr [ %.015.i, %.lr.ph.i ], [ %.015.i.pn.ph, %.lr.ph.i.preheader82 ]
  %.01214.i = phi ptr [ %i.ak, %.lr.ph.i ], [ %.01214.i.ph, %.lr.ph.i.preheader82 ] ; 2 uses
  %.015.i = getelementptr inbounds nuw i8, ptr %.015.i.pn, i64 8 ; 2 uses
  %i.aj = load i64, ptr %.01214.i, align 4
  store i64 %i.aj, ptr %.015.i, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %.01214.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.ak, %i.s
  br i1 %.not.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit.loopexit, label %.lr.ph.i, !llvm.loop !1162

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit.loopexit: ; preds = %.lr.ph.i, %middle.block
  %.pre = load ptr, ptr %0, align 8, !tbaa !721
  %.pre60 = load i8, ptr %i.f, align 8, !tbaa !34
  %.pre61 = zext i8 %.pre60 to i64
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit.loopexit, %bb.a
  %.pre-phi = phi i64 [ %.pre61, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit.loopexit ], [ %i.h, %bb.a ]
  %i.al = phi ptr [ %.pre, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit.loopexit ], [ %i.i, %bb.a ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.pre-phi
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.q
  %i.ap = load i64, ptr %i.ao, align 4
  store i64 %i.ap, ptr %i.an, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 5 uses
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !34  ; 3 uses
  %i.as = zext i8 %i.ar to i32
  %i.at = sub nsw i32 %i.as, %i.o
  %i.au = sext i32 %i.at to i64
  %i.av = zext i8 %1 to i64                       ; 4 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.av ; 4 uses
  %.idx.i44 = shl nuw nsw i64 %i.au, 3
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.idx.i44
  %.not13.i45 = icmp eq i8 %i.ar, %1
  br i1 %.not13.i45, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit51, label %.lr.ph.i47.preheader

.lr.ph.i47.preheader:                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit
  %i.ay = zext i8 %i.ar to i64
  %i.az = shl nuw nsw i64 %i.ay, 3
  %i.ba = add nsw i64 %i.az, -8
  %i.bb = shl nuw nsw i64 %i.av, 3
  %i.bc = sub nsw i64 %i.ba, %i.bb                ; 2 uses
  %i.bd = lshr exact i64 %i.bc, 3
  %i.be = add nuw nsw i64 %i.bd, 1                ; 2 uses
  %min.iters.check66 = icmp ult i64 %i.bc, 24
  br i1 %min.iters.check66, label %.lr.ph.i47.preheader81, label %vector.ph67

vector.ph67:                                      ; preds = %.lr.ph.i47.preheader
  %n.vec69 = and i64 %i.be, 4611686018427387900   ; 3 uses
  %i.bf = shl i64 %n.vec69, 3                     ; 2 uses
  %i.bg = getelementptr i8, ptr %i.r, i64 %i.bf
  %i.bh = getelementptr i8, ptr %i.aw, i64 %i.bf
  br label %vector.body70

vector.body70:                                    ; preds = %vector.body70, %vector.ph67
  %index71 = phi i64 [ 0, %vector.ph67 ], [ %index.next76, %vector.body70 ] ; 2 uses
  %i.bi = shl i64 %index71, 3                     ; 2 uses
  %next.gep72 = getelementptr i8, ptr %i.r, i64 %i.bi ; 2 uses
  %next.gep73 = getelementptr i8, ptr %i.aw, i64 %i.bi ; 2 uses
  %i.bj = getelementptr i8, ptr %next.gep73, i64 16
  %wide.load74 = load <2 x i64>, ptr %next.gep73, align 4
  %wide.load75 = load <2 x i64>, ptr %i.bj, align 4
  %i.bk = getelementptr i8, ptr %next.gep72, i64 16
  store <2 x i64> %wide.load74, ptr %next.gep72, align 4
  store <2 x i64> %wide.load75, ptr %i.bk, align 4
  %index.next76 = add nuw i64 %index71, 4         ; 2 uses
  %i.bl = icmp eq i64 %index.next76, %n.vec69
  br i1 %i.bl, label %middle.block77, label %vector.body70, !llvm.loop !1163

middle.block77:                                   ; preds = %vector.body70
  %cmp.n78 = icmp eq i64 %i.be, %n.vec69
  br i1 %cmp.n78, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit51, label %.lr.ph.i47.preheader81

.lr.ph.i47.preheader81:                           ; preds = %.lr.ph.i47.preheader, %middle.block77
  %.015.i48.ph = phi ptr [ %i.r, %.lr.ph.i47.preheader ], [ %i.bg, %middle.block77 ]
  %.01214.i49.ph = phi ptr [ %i.aw, %.lr.ph.i47.preheader ], [ %i.bh, %middle.block77 ]
  br label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %.lr.ph.i47.preheader81, %.lr.ph.i47
  %.015.i48 = phi ptr [ %i.bo, %.lr.ph.i47 ], [ %.015.i48.ph, %.lr.ph.i47.preheader81 ] ; 2 uses
  %.01214.i49 = phi ptr [ %i.bn, %.lr.ph.i47 ], [ %.01214.i49.ph, %.lr.ph.i47.preheader81 ] ; 2 uses
  %i.bm = load i64, ptr %.01214.i49, align 4
  store i64 %i.bm, ptr %.015.i48, align 4
  %i.bn = getelementptr inbounds nuw i8, ptr %.01214.i49, i64 8 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.015.i48, i64 8
  %.not.i50 = icmp eq ptr %i.bn, %i.ax
  br i1 %.not.i50, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit51, label %.lr.ph.i47, !llvm.loop !1164

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit51: ; preds = %.lr.ph.i47, %middle.block77, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !34
  %.not.i52 = icmp eq i8 %i.bq, 0
  br i1 %.not.i52, label %.preheader53, label %.loopexit

.preheader53:                                     ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit51
  %.not58 = icmp eq i8 %1, 0
  br i1 %.not58, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader53
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %xtraiter = and i64 %i.av, 1
  %i.bt = icmp eq i32 %i.p, 0
  br i1 %i.bt, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.av, 254
  br label %bb.b

.preheader.loopexit.unr-lcssa:                    ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.preheader.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod83 = trunc i8 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod83)
  %i.bu = load i8, ptr %i.c, align 2, !tbaa !34
  %i.bv = trunc i64 %indvars.iv.epil.init to i8
  %i.bw = add i8 %i.bv, 1
  %i.bx = add i8 %i.bu, %i.bw                     ; 2 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.epil.init
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !721 ; 3 uses
  %i.ca = zext i8 %i.bx to i64
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.ca
  store ptr %i.bz, ptr %i.cb, align 8, !tbaa !721
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store i8 %i.bx, ptr %i.cc, align 1, !tbaa !34
  store ptr %0, ptr %i.bz, align 8, !tbaa !721
  br label %.preheader

.preheader:                                       ; preds = %.epil.preheader, %.preheader.loopexit.unr-lcssa, %.preheader53
  %i.cd = load i8, ptr %i.aq, align 1, !tbaa !34
  %.not55 = icmp ult i8 %i.cd, %1
  br i1 %.not55, label %.loopexit, label %.lr.ph57

.lr.ph57:                                         ; preds = %.preheader
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.cf = load i8, ptr %i.c, align 2, !tbaa !34
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.cg = trunc nuw i64 %indvars.iv.next to i8
  %i.ch = add i8 %i.cf, %i.cg                     ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !721 ; 3 uses
  %i.ck = zext i8 %i.ch to i64
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.ck
  store ptr %i.cj, ptr %i.cl, align 8, !tbaa !721
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store i8 %i.ch, ptr %i.cm, align 1, !tbaa !34
  store ptr %0, ptr %i.cj, align 8, !tbaa !721
  %i.cn = load i8, ptr %i.c, align 2, !tbaa !34
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.co = trunc nuw i64 %indvars.iv.next.1 to i8
  %i.cp = add i8 %i.cn, %i.co                     ; 2 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.next
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !721 ; 3 uses
  %i.cs = zext i8 %i.cp to i64
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.cs
  store ptr %i.cr, ptr %i.ct, align 8, !tbaa !721
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store i8 %i.cp, ptr %i.cu, align 1, !tbaa !34
  store ptr %0, ptr %i.cr, align 8, !tbaa !721
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %bb.b, !llvm.loop !1165

bb.c:                                             ; preds = %.lr.ph57, %bb.c
  %.056 = phi i8 [ 0, %.lr.ph57 ], [ %i.dc, %bb.c ] ; 4 uses
  %i.cv = add i8 %.056, %1
  %i.cw = zext i8 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cw
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !721 ; 3 uses
  %i.cz = zext i8 %.056 to i64
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cz
  store ptr %i.cy, ptr %i.da, align 8, !tbaa !721
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store i8 %.056, ptr %i.db, align 1, !tbaa !34
  store ptr %2, ptr %i.cy, align 8, !tbaa !721
  %i.dc = add i8 %.056, 1                         ; 2 uses
  %i.dd = zext i8 %i.dc to i32
  %i.de = load i8, ptr %i.aq, align 1, !tbaa !34
  %i.df = zext i8 %i.de to i32
  %i.dg = sub nsw i32 %i.df, %i.o
  %.not = icmp slt i32 %i.dg, %i.dd
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !1166

.loopexit:                                        ; preds = %bb.c, %.preheader, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit51
  %i.dh = load i8, ptr %i.c, align 2, !tbaa !34
  %i.di = add i8 %i.dh, %1
  store i8 %i.di, ptr %i.c, align 2, !tbaa !34
  %i.dj = load i8, ptr %i.aq, align 1, !tbaa !34
  %i.dk = sub i8 %i.dj, %1
  store i8 %i.dk, ptr %i.aq, align 1, !tbaa !34
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE23rebalance_left_to_rightEhPSA_PS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %2 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 4 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !34    ; 2 uses
  %i.e = zext i8 %1 to i32                        ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 8 uses
  %.not15.i = icmp eq i8 %i.d, 0
  br i1 %.not15.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE19transfer_n_backwardEmmmPSA_PS8_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.g = zext i8 %i.d to i64                      ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.g, 3               ; 2 uses
  %i.h = zext i8 %1 to i64
  %i.i = getelementptr [8 x i8], ptr %i.f, i64 %i.h
  %i.j = getelementptr [8 x i8], ptr %i.i, i64 %i.g ; 2 uses
  %i.k = getelementptr i8, ptr %i.f, i64 %.idx.i  ; 2 uses
  %i.l = add nsw i64 %.idx.i, -8                  ; 2 uses
  %i.m = lshr exact i64 %i.l, 3
  %i.n = add nuw nsw i64 %i.m, 1
  %xtraiter = and i64 %i.n, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i, %.lr.ph.i.prol
  %.017.i.prol = phi ptr [ %i.o, %.lr.ph.i.prol ], [ %i.j, %.lr.ph.preheader.i ]
  %.01416.i.prol = phi ptr [ %i.p, %.lr.ph.i.prol ], [ %i.k, %.lr.ph.preheader.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.preheader.i ]
  %i.o = getelementptr inbounds i8, ptr %.017.i.prol, i64 -8 ; 3 uses
  %i.p = getelementptr inbounds i8, ptr %.01416.i.prol, i64 -8 ; 3 uses
  %i.q = load i64, ptr %i.p, align 4
  store i64 %i.q, ptr %i.o, align 4
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !1167

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.preheader.i
  %.017.i.unr = phi ptr [ %i.j, %.lr.ph.preheader.i ], [ %i.o, %.lr.ph.i.prol ]
  %.01416.i.unr = phi ptr [ %i.k, %.lr.ph.preheader.i ], [ %i.p, %.lr.ph.i.prol ]
  %i.r = icmp ult i64 %i.l, 56
  br i1 %i.r, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE19transfer_n_backwardEmmmPSA_PS8_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.017.i = phi ptr [ %i.an, %.lr.ph.i ], [ %.017.i.unr, %.lr.ph.i.prol.loopexit ] ; 8 uses
  %.01416.i = phi ptr [ %i.ao, %.lr.ph.i ], [ %.01416.i.unr, %.lr.ph.i.prol.loopexit ] ; 8 uses
  %i.s = getelementptr inbounds i8, ptr %.017.i, i64 -8
  %i.t = getelementptr inbounds i8, ptr %.01416.i, i64 -8
  %i.u = load i64, ptr %i.t, align 4
  store i64 %i.u, ptr %i.s, align 4
  %i.v = getelementptr inbounds i8, ptr %.017.i, i64 -16
  %i.w = getelementptr inbounds i8, ptr %.01416.i, i64 -16
  %i.x = load i64, ptr %i.w, align 4
  store i64 %i.x, ptr %i.v, align 4
  %i.y = getelementptr inbounds i8, ptr %.017.i, i64 -24
  %i.z = getelementptr inbounds i8, ptr %.01416.i, i64 -24
  %i.aa = load i64, ptr %i.z, align 4
  store i64 %i.aa, ptr %i.y, align 4
  %i.ab = getelementptr inbounds i8, ptr %.017.i, i64 -32
  %i.ac = getelementptr inbounds i8, ptr %.01416.i, i64 -32
  %i.ad = load i64, ptr %i.ac, align 4
  store i64 %i.ad, ptr %i.ab, align 4
  %i.ae = getelementptr inbounds i8, ptr %.017.i, i64 -40
  %i.af = getelementptr inbounds i8, ptr %.01416.i, i64 -40
  %i.ag = load i64, ptr %i.af, align 4
  store i64 %i.ag, ptr %i.ae, align 4
  %i.ah = getelementptr inbounds i8, ptr %.017.i, i64 -48
  %i.ai = getelementptr inbounds i8, ptr %.01416.i, i64 -48
  %i.aj = load i64, ptr %i.ai, align 4
  store i64 %i.aj, ptr %i.ah, align 4
  %i.ak = getelementptr inbounds i8, ptr %.017.i, i64 -56
  %i.al = getelementptr inbounds i8, ptr %.01416.i, i64 -56
  %i.am = load i64, ptr %i.al, align 4
  store i64 %i.am, ptr %i.ak, align 4
  %i.an = getelementptr inbounds i8, ptr %.017.i, i64 -64 ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %.01416.i, i64 -64 ; 3 uses
  %i.ap = load i64, ptr %i.ao, align 4
  store i64 %i.ap, ptr %i.an, align 4
  %.not.i.7 = icmp eq ptr %i.ao, %i.f
  br i1 %.not.i.7, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE19transfer_n_backwardEmmmPSA_PS8_.exit, label %.lr.ph.i, !llvm.loop !1168

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE19transfer_n_backwardEmmmPSA_PS8_.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.a
  %i.aq = add nsw i32 %i.e, -1                    ; 3 uses
  %i.ar = sext i32 %i.aq to i64                   ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.at = load i8, ptr %i.as, align 1, !tbaa !34
  %i.au = zext i8 %i.at to i64
  %i.av = load ptr, ptr %0, align 8, !tbaa !721
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ar
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 12
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.au
  %i.az = load i64, ptr %i.ay, align 4
  store i64 %i.az, ptr %i.aw, align 4
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 7 uses
  %i.bb = load i8, ptr %i.ba, align 2, !tbaa !34  ; 2 uses
  %i.bc = zext i8 %i.bb to i32                    ; 2 uses
  %i.bd = sub nsw i32 %i.bc, %i.aq
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.be ; 5 uses
  %.idx.i46 = shl nuw nsw i64 %i.ar, 3
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.idx.i46
  %.not13.i = icmp eq i32 %i.aq, 0
  br i1 %.not13.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit, label %.lr.ph.i48.preheader

.lr.ph.i48.preheader:                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE19transfer_n_backwardEmmmPSA_PS8_.exit
  %i.bi = zext i8 %1 to i64
  %i.bj = add nuw nsw i64 %i.bi, 2305843009213693950
  %i.bk = and i64 %i.bj, 2305843009213693951      ; 2 uses
  %i.bl = add nuw nsw i64 %i.bk, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.bk, 27
  br i1 %min.iters.check, label %.lr.ph.i48.preheader68, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i48.preheader
  %i.bm = zext i8 %1 to i64
  %i.bn = shl nuw nsw i64 %i.bm, 3
  %i.bo = add i64 %i.bn, %i.b
  %i.bp = add i64 %i.bo, -8
  %i.bq = zext i8 %i.bb to i64
  %i.br = shl nuw nsw i64 %i.bq, 3
  %i.bs = add i64 %i.br, %i.a
  %i.bt = sub i64 %i.bp, %i.bs
  %diff.check = icmp ult i64 %i.bt, 32
  br i1 %diff.check, label %.lr.ph.i48.preheader68, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bl, 4611686018427387900     ; 3 uses
  %i.bu = shl i64 %n.vec, 3                       ; 2 uses
  %i.bv = getelementptr i8, ptr %i.f, i64 %i.bu
  %i.bw = getelementptr i8, ptr %i.bg, i64 %i.bu
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bx = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.f, i64 %i.bx ; 2 uses
  %next.gep65 = getelementptr i8, ptr %i.bg, i64 %i.bx ; 2 uses
  %i.by = getelementptr i8, ptr %next.gep65, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep65, align 4
  %wide.load66 = load <2 x i64>, ptr %i.by, align 4
  %i.bz = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4
  store <2 x i64> %wide.load66, ptr %i.bz, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ca = icmp eq i64 %index.next, %n.vec
  br i1 %i.ca, label %middle.block, label %vector.body, !llvm.loop !1169

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bl, %n.vec
  br i1 %cmp.n, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit.loopexit, label %.lr.ph.i48.preheader68

.lr.ph.i48.preheader68:                           ; preds = %vector.memcheck, %.lr.ph.i48.preheader, %middle.block
  %.015.i.ph = phi ptr [ %i.f, %vector.memcheck ], [ %i.f, %.lr.ph.i48.preheader ], [ %i.bv, %middle.block ]
  %.01214.i.ph = phi ptr [ %i.bg, %vector.memcheck ], [ %i.bg, %.lr.ph.i48.preheader ], [ %i.bw, %middle.block ]
  br label %.lr.ph.i48

.lr.ph.i48:                                       ; preds = %.lr.ph.i48.preheader68, %.lr.ph.i48
  %.015.i = phi ptr [ %i.cd, %.lr.ph.i48 ], [ %.015.i.ph, %.lr.ph.i48.preheader68 ] ; 2 uses
  %.01214.i = phi ptr [ %i.cc, %.lr.ph.i48 ], [ %.01214.i.ph, %.lr.ph.i48.preheader68 ] ; 2 uses
  %i.cb = load i64, ptr %.01214.i, align 4
  store i64 %i.cb, ptr %.015.i, align 4
  %i.cc = getelementptr inbounds nuw i8, ptr %.01214.i, i64 8 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.015.i, i64 8
  %.not.i49 = icmp eq ptr %i.cc, %i.bh
  br i1 %.not.i49, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit.loopexit, label %.lr.ph.i48, !llvm.loop !1170

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit.loopexit: ; preds = %.lr.ph.i48, %middle.block
  %.pre = load i8, ptr %i.ba, align 2, !tbaa !34
  %.pre62 = zext i8 %.pre to i32
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit.loopexit, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE19transfer_n_backwardEmmmPSA_PS8_.exit
  %.pre-phi = phi i32 [ %.pre62, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit.loopexit ], [ %i.bc, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE19transfer_n_backwardEmmmPSA_PS8_.exit ]
  %i.ce = load ptr, ptr %0, align 8, !tbaa !721
  %i.cf = load i8, ptr %i.as, align 8, !tbaa !34
  %i.cg = zext i8 %i.cf to i64
  %i.ch = sub nsw i32 %.pre-phi, %i.e
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 12
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.cg
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.ci
  %i.cm = load i64, ptr %i.cl, align 4
  store i64 %i.cm, ptr %i.ck, align 4
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !34
  %.not.i50 = icmp eq i8 %i.co, 0
  br i1 %.not.i50, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit
  %i.cp = load i8, ptr %i.c, align 1, !tbaa !34   ; 5 uses
  %i.cq = add i8 %i.cp, 1                         ; 2 uses
  %.not5152 = icmp eq i8 %i.cq, 0
  br i1 %.not5152, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 6 uses
  %i.cs = zext i8 %i.cq to i64                    ; 2 uses
  %i.ct = and i8 %i.cp, 1
  %lcmp.mod70.not.not = icmp eq i8 %i.ct, 0
  br i1 %lcmp.mod70.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %i.cu = add i8 %i.cp, %1                        ; 2 uses
  %i.cv = zext i8 %i.cp to i64
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.cv
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !721 ; 3 uses
  %i.cy = zext i8 %i.cu to i64
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.cy
  store ptr %i.cx, ptr %i.cz, align 8, !tbaa !721
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store i8 %i.cu, ptr %i.da, align 1, !tbaa !34
  store ptr %2, ptr %i.cx, align 8, !tbaa !721
  %indvars.iv.next.prol = add nsw i64 %i.cs, -1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.unr = phi i64 [ %i.cs, %.lr.ph ], [ %indvars.iv.next.prol, %.prol.loopexit.unr-lcssa ]
  %i.db = icmp eq i8 %i.cp, 0
  br i1 %i.db, label %.preheader, label %.lr.ph.new

.preheader:                                       ; preds = %.prol.loopexit, %.lr.ph.new, %bb.b
  %.not54 = icmp eq i8 %1, 0
  br i1 %.not54, label %.loopexit, label %.lr.ph56

.lr.ph56:                                         ; preds = %.preheader
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 3 uses
  %i.de = add i8 %1, 1                            ; 2 uses
  %umax = tail call i8 @llvm.umax.i8(i8 %i.de, i8 2)
  %wide.trip.count = zext i8 %umax to i64
  %i.df = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %xtraiter72 = and i64 %i.df, 1
  %i.dg = icmp ult i8 %i.de, 3
  br i1 %i.dg, label %.epil.preheader, label %.lr.ph56.new

.lr.ph56.new:                                     ; preds = %.lr.ph56
  %unroll_iter = and i64 %i.df, -2
  %invariant.op = sub i8 1, %1
  br label %bb.c

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 3 uses
  %i.dh = trunc nuw i64 %indvars.iv to i8
  %i.di = add i8 %i.dh, -1                        ; 2 uses
  %i.dj = add i8 %i.di, %1                        ; 2 uses
  %i.dk = zext i8 %i.di to i64
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.dk
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !721 ; 3 uses
  %i.dn = zext i8 %i.dj to i64
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.dn
  store ptr %i.dm, ptr %i.do, align 8, !tbaa !721
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  store i8 %i.dj, ptr %i.dp, align 1, !tbaa !34
  store ptr %2, ptr %i.dm, align 8, !tbaa !721
  %i.dq = trunc i64 %indvars.iv to i8
  %i.dr = add i8 %i.dq, -2                        ; 2 uses
  %i.ds = add i8 %i.dr, %1                        ; 2 uses
  %i.dt = zext i8 %i.dr to i64
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.dt
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !721 ; 3 uses
  %i.dw = zext i8 %i.ds to i64
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.dw
  store ptr %i.dv, ptr %i.dx, align 8, !tbaa !721
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  store i8 %i.ds, ptr %i.dy, align 1, !tbaa !34
  store ptr %2, ptr %i.dv, align 8, !tbaa !721
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2 ; 2 uses
  %i.dz = and i64 %indvars.iv.next.1, 255
  %.not51.1 = icmp eq i64 %i.dz, 0
  br i1 %.not51.1, label %.preheader, label %.lr.ph.new, !llvm.loop !1171

bb.c:                                             ; preds = %bb.c, %.lr.ph56.new
  %indvars.iv58 = phi i64 [ 1, %.lr.ph56.new ], [ %indvars.iv.next59.1, %bb.c ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph56.new ], [ %niter.next.1, %bb.c ]
  %i.ea = add nsw i64 %indvars.iv58, -1           ; 2 uses
  %i.eb = load i8, ptr %i.ba, align 2, !tbaa !34
  %i.ec = trunc nuw i64 %indvars.iv58 to i8
  %i.ed = sub i8 %i.ec, %1
  %i.ee = add i8 %i.ed, %i.eb
  %i.ef = zext i8 %i.ee to i64
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.ef
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !721 ; 3 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.ea
  store ptr %i.eh, ptr %i.ei, align 8, !tbaa !721
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.ek = trunc nuw i64 %i.ea to i8
  store i8 %i.ek, ptr %i.ej, align 1, !tbaa !34
  store ptr %2, ptr %i.eh, align 8, !tbaa !721
  %i.el = load i8, ptr %i.ba, align 2, !tbaa !34
  %i.em = trunc i64 %indvars.iv58 to i8
  %.reass = add i8 %i.em, %invariant.op
  %i.en = add i8 %.reass, %i.el
  %i.eo = zext i8 %i.en to i64
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.eo
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !721 ; 3 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %indvars.iv58
  store ptr %i.eq, ptr %i.er, align 8, !tbaa !721
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.et = trunc nuw i64 %indvars.iv58 to i8
  store i8 %i.et, ptr %i.es, align 1, !tbaa !34
  store ptr %2, ptr %i.eq, align 8, !tbaa !721
  %indvars.iv.next59.1 = add nuw nsw i64 %indvars.iv58, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !1172

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.c
  %lcmp.mod73.not = icmp eq i64 %xtraiter72, 0
  br i1 %lcmp.mod73.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph56
  %indvars.iv58.epil.init = phi i64 [ 1, %.lr.ph56 ], [ %indvars.iv.next59.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod74 = trunc i64 %i.df to i1
  tail call void @llvm.assume(i1 %lcmp.mod74)
  %i.eu = add nsw i64 %indvars.iv58.epil.init, -1 ; 2 uses
  %i.ev = load i8, ptr %i.ba, align 2, !tbaa !34
  %i.ew = trunc nuw i64 %indvars.iv58.epil.init to i8
  %i.ex = sub i8 %i.ew, %1
  %i.ey = add i8 %i.ex, %i.ev
  %i.ez = zext i8 %i.ey to i64
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.ez
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !721 ; 3 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.eu
  store ptr %i.fb, ptr %i.fc, align 8, !tbaa !721
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.fe = trunc nuw i64 %i.eu to i8
  store i8 %i.fe, ptr %i.fd, align 1, !tbaa !34
  store ptr %2, ptr %i.fb, align 8, !tbaa !721
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit
  %i.ff = load i8, ptr %i.ba, align 2, !tbaa !34
  %i.fg = sub i8 %i.ff, %1
  store i8 %i.fg, ptr %i.ba, align 2, !tbaa !34
  %i.fh = load i8, ptr %i.c, align 1, !tbaa !34
  %i.fi = add i8 %i.fh, %1
  store i8 %i.fi, ptr %i.c, align 1, !tbaa !34
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE5splitEiPSA_PS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %2 to i64
  switch i32 %1, label %bb.c [
    i32 0, label %bb.b
    i32 30, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.d = load i8, ptr %i.c, align 1, !tbaa !34
  %i.e = add i8 %i.d, -1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.g = load i8, ptr %i.f, align 1, !tbaa !34
  %i.h = lshr i8 %i.g, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.sink = phi i8 [ %i.e, %bb.b ], [ %i.h, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 10
  store i8 %.sink, ptr %i.i, align 1, !tbaa !34
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 5 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !34
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 2 uses
  %i.m = sub i8 %i.k, %.sink                      ; 3 uses
  store i8 %i.m, ptr %i.j, align 1, !tbaa !34
  %i.n = load i8, ptr %i.l, align 1, !tbaa !34    ; 2 uses
  %i.o = zext i8 %i.n to i64
  %i.p = zext i8 %i.m to i64                      ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.p ; 5 uses
  %.idx.i = shl nuw nsw i64 %i.o, 3               ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx.i
  %.not13.i = icmp eq i8 %i.n, 0
  br i1 %.not13.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 4 uses
  %i.u = add nsw i64 %.idx.i, -8                  ; 2 uses
  %i.v = lshr exact i64 %i.u, 3
  %i.w = add nuw nsw i64 %i.v, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.u, 104
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i
  %i.x = shl nuw nsw i64 %i.p, 3
  %i.y = add i64 %i.x, %i.a
  %i.z = sub i64 %i.b, %i.y
  %diff.check = icmp ult i64 %i.z, 32
  br i1 %diff.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.w, 4611686018427387900      ; 3 uses
  %i.aa = shl i64 %n.vec, 3                       ; 2 uses
  %i.ab = getelementptr i8, ptr %i.t, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.r, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.t, i64 %i.ad ; 2 uses
  %next.gep35 = getelementptr i8, ptr %i.r, i64 %i.ad ; 2 uses
  %i.ae = getelementptr i8, ptr %next.gep35, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep35, align 4
  %wide.load36 = load <2 x i64>, ptr %i.ae, align 4
  %i.af = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4
  store <2 x i64> %wide.load36, ptr %i.af, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !1173

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br i1 %cmp.n, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %.lr.ph.preheader.i, %middle.block
  %.015.i.ph = phi ptr [ %i.t, %vector.memcheck ], [ %i.t, %.lr.ph.preheader.i ], [ %i.ab, %middle.block ]
  %.01214.i.ph = phi ptr [ %i.r, %vector.memcheck ], [ %i.r, %.lr.ph.preheader.i ], [ %i.ac, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.015.i = phi ptr [ %i.aj, %.lr.ph.i ], [ %.015.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.01214.i = phi ptr [ %i.ai, %.lr.ph.i ], [ %.01214.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.ah = load i64, ptr %.01214.i, align 4
  store i64 %i.ah, ptr %.015.i, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %.01214.i, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.015.i, i64 8
  %.not.i = icmp eq ptr %i.ai, %i.s
  br i1 %.not.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit.loopexit, label %.lr.ph.i, !llvm.loop !1174

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit.loopexit: ; preds = %.lr.ph.i, %middle.block
  %.pre = load i8, ptr %i.j, align 1, !tbaa !34
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit.loopexit, %bb.d
  %i.ak = phi i8 [ %.pre, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit.loopexit ], [ %i.m, %bb.d ]
  %i.al = add i8 %i.ak, -1                        ; 2 uses
  store i8 %i.al, ptr %i.j, align 1, !tbaa !34
  %i.am = load ptr, ptr %0, align 8, !tbaa !721   ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !34  ; 4 uses
  %i.ap = zext i8 %i.al to i64
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.ap
  %i.ar = zext i8 %i.ao to i32
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 10 ; 3 uses
  %i.at = load i8, ptr %i.as, align 1, !tbaa !34  ; 3 uses
  %i.au = icmp ult i8 %i.ao, %i.at
  %i.av = zext i8 %i.ao to i64                    ; 2 uses
  br i1 %i.au, label %.lr.ph.preheader.i.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE19transfer_n_backwardEmmmPSA_PS8_.exit.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  %i.ax = getelementptr [8 x i8], ptr %i.aw, i64 %i.av ; 2 uses
  %narrow.i = sub nuw i8 %i.at, %i.ao
  %i.ay = zext i8 %narrow.i to i64
  %.idx.i.i = shl nuw nsw i64 %i.ay, 3
  %i.az = getelementptr i8, ptr %i.ax, i64 8
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.az, ptr align 4 %i.ax, i64 %.idx.i.i, i1 false)
  %.pre.i = load i8, ptr %i.as, align 1, !tbaa !34
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE19transfer_n_backwardEmmmPSA_PS8_.exit.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE19transfer_n_backwardEmmmPSA_PS8_.exit.i: ; preds = %.lr.ph.preheader.i.i, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit
  %i.ba = phi i8 [ %.pre.i, %.lr.ph.preheader.i.i ], [ %i.at, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE10transfer_nEmmmPSA_PS8_.exit ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.av
  %i.bd = load i64, ptr %i.aq, align 4
  store i64 %i.bd, ptr %i.bc, align 4
  %i.be = add i8 %i.ba, 1                         ; 3 uses
  store i8 %i.be, ptr %i.as, align 1, !tbaa !34
  %i.bf = getelementptr inbounds nuw i8, ptr %i.am, i64 11
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !34
  %.not.i18.i = icmp eq i8 %i.bg, 0
  br i1 %.not.i18.i, label %bb.e, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE13emplace_valueIJPS5_EEEvhPS8_DpOT_.exit

bb.e:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE19transfer_n_backwardEmmmPSA_PS8_.exit.i
  %i.bh = zext i8 %i.be to i32
  %i.bi = add nuw nsw i32 %i.ar, 1                ; 2 uses
  %i.bj = icmp samesign ult i32 %i.bi, %i.bh
  br i1 %i.bj, label %.lr.ph.i27, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIiiESt4lessIS5_ESaIS5_ELi256ELb0EEEE13emplace_valueIJPS5_EEEvhPS8_DpOT_.exit

.lr.ph.i27:                                       ; preds = %bb.e
  %i.bk = getelementptr inbounds nuw i8, ptr %i.am, i64 256 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i27
  %.019.i = phi i8 [ %i.be, %.lr.ph.i27 ], [ %i.bl, %bb.f ] ; 3 uses
  %i.bl = add i8 %.019.i, -1                      ; 3 uses
  %i.bm = zext i8 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bm
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !721 ; 2 uses
  %i.bp = zext i8 %.019.i to i64
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bp
  store ptr %i.bo, ptr %i.bq, align 8, !tbaa !721
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i8 %.019.i, ptr %i.br, align 1, !tbaa !34
  %i.bs = zext i8 %i.bl to i32
end_hunk_2
begin_hunk_3_@_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoEEC2EOSB_:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i5.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  store ptr %i.ad, ptr %i.aa, align 8, !tbaa !105
  %i.ak = load i64, ptr %i.ae, align 8, !tbaa !34
  store i64 %i.ak, ptr %i.ac, align 8, !tbaa !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit6.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit6.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i5.i, %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !101
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.am, ptr %i.an, align 8, !tbaa !101
  store ptr %i.ae, ptr %i.ab, align 8, !tbaa !105
  store i64 0, ptr %i.al, align 8, !tbaa !101
  store i8 0, ptr %i.ae, align 8, !tbaa !34
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !268
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !268
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  store ptr %i.at, ptr %i.ar, align 8, !tbaa !132
  %i.au = load ptr, ptr %i.as, align 8, !tbaa !105 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 5 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i7.i

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit6.i
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !101 ; 2 uses
  %i.az = icmp ult i64 %i.ay, 16
  tail call void @llvm.assume(i1 %i.az)
  %i.ba = add nuw nsw i64 %i.ay, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.at, ptr noundef nonnull align 8 dereferenceable(1) %i.av, i64 %i.ba, i1 false)
  br label %_ZN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoC2EOS3_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i7.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit6.i
  store ptr %i.au, ptr %i.ar, align 8, !tbaa !105
  %i.bb = load i64, ptr %i.av, align 8, !tbaa !34
  store i64 %i.bb, ptr %i.at, align 8, !tbaa !34
  br label %_ZN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoC2EOS3_.exit

_ZN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoC2EOS3_.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i7.i
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !101
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !101
  store ptr %i.av, ptr %i.as, align 8, !tbaa !105
  store i64 0, ptr %i.bc, align 8, !tbaa !101
  store i8 0, ptr %i.av, align 8, !tbaa !34
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE23rebalance_right_to_leftEhPSM_PSK_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 7 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !34
  %i.c = zext i8 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !34
  %i.f = zext i8 %i.e to i64
  %i.g = load ptr, ptr %0, align 8, !tbaa !739
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw [136 x i8], ptr %i.h, i64 %i.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = getelementptr inbounds nuw [136 x i8], ptr %i.j, i64 %i.f
  tail call void @_ZN4absl12lts_2025051218container_internal15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoEE8transferISaISt4pairIKS8_SD_EEEEDaPT_PNS1_13map_slot_typeIS8_SD_EESO_(ptr noundef %3, ptr noundef nonnull %i.i, ptr noundef nonnull %i.k)
  %i.l = zext i8 %1 to i32                        ; 3 uses
  %i.m = add nsw i32 %i.l, -1                     ; 3 uses
  %i.n = sext i32 %i.m to i64                     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %.idx.i = mul nuw nsw i64 %i.n, 136
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx.i
  %.not13.i = icmp eq i32 %i.m, 0
  br i1 %.not13.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE10transfer_nEmmmPSM_PSK_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.q = load i8, ptr %i.a, align 2, !tbaa !34
  %i.r = zext i8 %i.q to i64
  %i.s = getelementptr inbounds nuw [136 x i8], ptr %i.h, i64 %i.r
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.015.i.pn = phi ptr [ %.015.i, %.lr.ph.i ], [ %i.s, %.lr.ph.preheader.i ]
  %.01214.i = phi ptr [ %i.t, %.lr.ph.i ], [ %i.o, %.lr.ph.preheader.i ] ; 2 uses
  %.015.i = getelementptr inbounds nuw i8, ptr %.015.i.pn, i64 136 ; 2 uses
  tail call void @_ZN4absl12lts_2025051218container_internal15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoEE8transferISaISt4pairIKS8_SD_EEEEDaPT_PNS1_13map_slot_typeIS8_SD_EESO_(ptr noundef %3, ptr noundef nonnull %.015.i, ptr noundef nonnull %.01214.i)
  %i.t = getelementptr inbounds nuw i8, ptr %.01214.i, i64 136 ; 2 uses
  %.not.i = icmp eq ptr %i.t, %i.p
  br i1 %.not.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE10transfer_nEmmmPSM_PSK_.exit, label %.lr.ph.i, !llvm.loop !1222

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE10transfer_nEmmmPSM_PSK_.exit: ; preds = %.lr.ph.i, %bb.a
  %i.u = load ptr, ptr %0, align 8, !tbaa !739
  %i.v = load i8, ptr %i.d, align 8, !tbaa !34
  %i.w = zext i8 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.y = getelementptr inbounds nuw [136 x i8], ptr %i.x, i64 %i.w
  %i.z = getelementptr inbounds nuw [136 x i8], ptr %i.o, i64 %i.n
  tail call void @_ZN4absl12lts_2025051218container_internal15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoEE8transferISaISt4pairIKS8_SD_EEEEDaPT_PNS1_13map_slot_typeIS8_SD_EESO_(ptr noundef %3, ptr noundef nonnull %i.y, ptr noundef nonnull %i.z)
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 5 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !34  ; 2 uses
  %i.ac = zext i8 %i.ab to i32
  %i.ad = sub nsw i32 %i.ac, %i.l
  %i.ae = zext i8 %1 to i64                       ; 3 uses
  %i.af = getelementptr inbounds nuw [136 x i8], ptr %i.o, i64 %i.ae ; 2 uses
  %narrow = mul nsw i32 %i.ad, 136
  %.idx.i44 = sext i32 %narrow to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %.idx.i44
  %.not13.i45 = icmp eq i8 %i.ab, %1
  br i1 %.not13.i45, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE10transfer_nEmmmPSM_PSK_.exit51, label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE10transfer_nEmmmPSM_PSK_.exit, %.lr.ph.i47
  %.015.i48 = phi ptr [ %i.ai, %.lr.ph.i47 ], [ %i.o, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE10transfer_nEmmmPSM_PSK_.exit ] ; 2 uses
  %.01214.i49 = phi ptr [ %i.ah, %.lr.ph.i47 ], [ %i.af, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE10transfer_nEmmmPSM_PSK_.exit ] ; 2 uses
  tail call void @_ZN4absl12lts_2025051218container_internal15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoEE8transferISaISt4pairIKS8_SD_EEEEDaPT_PNS1_13map_slot_typeIS8_SD_EESO_(ptr noundef %3, ptr noundef nonnull %.015.i48, ptr noundef nonnull %.01214.i49)
  %i.ah = getelementptr inbounds nuw i8, ptr %.01214.i49, i64 136 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.015.i48, i64 136
  %.not.i50 = icmp eq ptr %i.ah, %i.ag
  br i1 %.not.i50, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE10transfer_nEmmmPSM_PSK_.exit51, label %.lr.ph.i47, !llvm.loop !1222

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE10transfer_nEmmmPSM_PSK_.exit51: ; preds = %.lr.ph.i47, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE10transfer_nEmmmPSM_PSK_.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !34
  %.not.i52 = icmp eq i8 %i.ak, 0
  br i1 %.not.i52, label %.preheader53, label %.loopexit

.preheader53:                                     ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE10transfer_nEmmmPSM_PSK_.exit51
  %.not58 = icmp eq i8 %1, 0
  br i1 %.not58, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader53
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 3 uses
  %xtraiter = and i64 %i.ae, 1
  %i.an = icmp eq i32 %i.m, 0
  br i1 %i.an, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.ae, 254
  br label %bb.b

.preheader.loopexit.unr-lcssa:                    ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.preheader.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod60 = trunc i8 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod60)
  %i.ao = load i8, ptr %i.a, align 2, !tbaa !34
  %i.ap = trunc i64 %indvars.iv.epil.init to i8
  %i.aq = add i8 %i.ap, 1
  %i.ar = add i8 %i.ao, %i.aq                     ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.epil.init
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !739 ; 3 uses
  %i.au = zext i8 %i.ar to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.au
  store ptr %i.at, ptr %i.av, align 8, !tbaa !739
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i8 %i.ar, ptr %i.aw, align 1, !tbaa !34
  store ptr %0, ptr %i.at, align 8, !tbaa !739
  br label %.preheader

.preheader:                                       ; preds = %.epil.preheader, %.preheader.loopexit.unr-lcssa, %.preheader53
  %i.ax = load i8, ptr %i.aa, align 1, !tbaa !34
  %.not55 = icmp ult i8 %i.ax, %1
  br i1 %.not55, label %.loopexit, label %.lr.ph57

.lr.ph57:                                         ; preds = %.preheader
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.az = load i8, ptr %i.a, align 2, !tbaa !34
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ba = trunc nuw i64 %indvars.iv.next to i8
  %i.bb = add i8 %i.az, %i.ba                     ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !739 ; 3 uses
  %i.be = zext i8 %i.bb to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.be
  store ptr %i.bd, ptr %i.bf, align 8, !tbaa !739
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store i8 %i.bb, ptr %i.bg, align 1, !tbaa !34
  store ptr %0, ptr %i.bd, align 8, !tbaa !739
  %i.bh = load i8, ptr %i.a, align 2, !tbaa !34
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.bi = trunc nuw i64 %indvars.iv.next.1 to i8
  %i.bj = add i8 %i.bh, %i.bi                     ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.next
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !739 ; 3 uses
  %i.bm = zext i8 %i.bj to i64
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.bm
  store ptr %i.bl, ptr %i.bn, align 8, !tbaa !739
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store i8 %i.bj, ptr %i.bo, align 1, !tbaa !34
  store ptr %0, ptr %i.bl, align 8, !tbaa !739
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %bb.b, !llvm.loop !1225

bb.c:                                             ; preds = %.lr.ph57, %bb.c
  %.056 = phi i8 [ 0, %.lr.ph57 ], [ %i.bw, %bb.c ] ; 4 uses
  %i.bp = add i8 %.056, %1
  %i.bq = zext i8 %i.bp to i64
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bq
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !739 ; 3 uses
  %i.bt = zext i8 %.056 to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bt
  store ptr %i.bs, ptr %i.bu, align 8, !tbaa !739
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store i8 %.056, ptr %i.bv, align 1, !tbaa !34
  store ptr %2, ptr %i.bs, align 8, !tbaa !739
  %i.bw = add i8 %.056, 1                         ; 2 uses
  %i.bx = zext i8 %i.bw to i32
  %i.by = load i8, ptr %i.aa, align 1, !tbaa !34
  %i.bz = zext i8 %i.by to i32
  %i.ca = sub nsw i32 %i.bz, %i.l
  %.not = icmp slt i32 %i.ca, %i.bx
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !1226

.loopexit:                                        ; preds = %bb.c, %.preheader, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE10transfer_nEmmmPSM_PSK_.exit51
  %i.cb = load i8, ptr %i.a, align 2, !tbaa !34
  %i.cc = add i8 %i.cb, %1
  store i8 %i.cc, ptr %i.a, align 2, !tbaa !34
  %i.cd = load i8, ptr %i.aa, align 1, !tbaa !34
  %i.ce = sub i8 %i.cd, %1
  store i8 %i.ce, ptr %i.aa, align 1, !tbaa !34
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE23rebalance_left_to_rightEhPSM_PSK_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 4 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !34    ; 2 uses
  %i.c = zext i8 %1 to i32                        ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %.not15.i = icmp eq i8 %i.b, 0
  br i1 %.not15.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE19transfer_n_backwardEmmmPSM_PSK_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.e = zext i8 %i.b to i64                      ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.e, 136
  %i.f = zext i8 %1 to i64
  %i.g = getelementptr [136 x i8], ptr %i.d, i64 %i.f
  %i.h = getelementptr [136 x i8], ptr %i.g, i64 %i.e
  %i.i = getelementptr i8, ptr %i.d, i64 %.idx.i
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.017.i = phi ptr [ %i.j, %.lr.ph.i ], [ %i.h, %.lr.ph.preheader.i ]
  %.01416.i = phi ptr [ %i.k, %.lr.ph.i ], [ %i.i, %.lr.ph.preheader.i ]
  %i.j = getelementptr inbounds i8, ptr %.017.i, i64 -136 ; 2 uses
  %i.k = getelementptr inbounds i8, ptr %.01416.i, i64 -136 ; 3 uses
  tail call void @_ZN4absl12lts_2025051218container_internal15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoEE8transferISaISt4pairIKS8_SD_EEEEDaPT_PNS1_13map_slot_typeIS8_SD_EESO_(ptr noundef %3, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k)
  %.not.i = icmp eq ptr %i.k, %i.d
  br i1 %.not.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE19transfer_n_backwardEmmmPSM_PSK_.exit, label %.lr.ph.i, !llvm.loop !1223

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE19transfer_n_backwardEmmmPSM_PSK_.exit: ; preds = %.lr.ph.i, %bb.a
  %i.l = add nsw i32 %i.c, -1                     ; 3 uses
  %i.m = sext i32 %i.l to i64                     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !34
  %i.p = zext i8 %i.o to i64
  %i.q = load ptr, ptr %0, align 8, !tbaa !739
  %i.r = getelementptr inbounds nuw [136 x i8], ptr %i.d, i64 %i.m
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.t = getelementptr inbounds nuw [136 x i8], ptr %i.s, i64 %i.p
  tail call void @_ZN4absl12lts_2025051218container_internal15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoEE8transferISaISt4pairIKS8_SD_EEEEDaPT_PNS1_13map_slot_typeIS8_SD_EESO_(ptr noundef %3, ptr noundef nonnull %i.r, ptr noundef nonnull %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 7 uses
  %i.v = load i8, ptr %i.u, align 2, !tbaa !34
  %i.w = zext i8 %i.v to i32                      ; 2 uses
  %i.x = sub nsw i32 %i.w, %i.l
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aa = getelementptr inbounds nuw [136 x i8], ptr %i.z, i64 %i.y ; 2 uses
  %.idx.i46 = mul nuw nsw i64 %i.m, 136
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.idx.i46
  %.not13.i = icmp eq i32 %i.l, 0
  br i1 %.not13.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE10transfer_nEmmmPSM_PSK_.exit, label %.lr.ph.i48

.lr.ph.i48:                                       ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE19transfer_n_backwardEmmmPSM_PSK_.exit, %.lr.ph.i48
  %.015.i = phi ptr [ %i.ad, %.lr.ph.i48 ], [ %i.d, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE19transfer_n_backwardEmmmPSM_PSK_.exit ] ; 2 uses
  %.01214.i = phi ptr [ %i.ac, %.lr.ph.i48 ], [ %i.aa, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE19transfer_n_backwardEmmmPSM_PSK_.exit ] ; 2 uses
  tail call void @_ZN4absl12lts_2025051218container_internal15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoEE8transferISaISt4pairIKS8_SD_EEEEDaPT_PNS1_13map_slot_typeIS8_SD_EESO_(ptr noundef %3, ptr noundef nonnull %.015.i, ptr noundef nonnull %.01214.i)
  %i.ac = getelementptr inbounds nuw i8, ptr %.01214.i, i64 136 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.015.i, i64 136
  %.not.i49 = icmp eq ptr %i.ac, %i.ab
  br i1 %.not.i49, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE10transfer_nEmmmPSM_PSK_.exit.loopexit, label %.lr.ph.i48, !llvm.loop !1222

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE10transfer_nEmmmPSM_PSK_.exit.loopexit: ; preds = %.lr.ph.i48
  %.pre = load i8, ptr %i.u, align 2, !tbaa !34
  %.pre62 = zext i8 %.pre to i32
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE10transfer_nEmmmPSM_PSK_.exit

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE10transfer_nEmmmPSM_PSK_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE10transfer_nEmmmPSM_PSK_.exit.loopexit, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE19transfer_n_backwardEmmmPSM_PSK_.exit
  %.pre-phi = phi i32 [ %.pre62, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE10transfer_nEmmmPSM_PSK_.exit.loopexit ], [ %i.w, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE19transfer_n_backwardEmmmPSM_PSK_.exit ]
  %i.ae = load ptr, ptr %0, align 8, !tbaa !739
  %i.af = load i8, ptr %i.n, align 8, !tbaa !34
  %i.ag = zext i8 %i.af to i64
  %i.ah = sub nsw i32 %.pre-phi, %i.c
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ak = getelementptr inbounds nuw [136 x i8], ptr %i.aj, i64 %i.ag
  %i.al = getelementptr inbounds nuw [136 x i8], ptr %i.z, i64 %i.ai
  tail call void @_ZN4absl12lts_2025051218container_internal15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoEE8transferISaISt4pairIKS8_SD_EEEEDaPT_PNS1_13map_slot_typeIS8_SD_EESO_(ptr noundef %3, ptr noundef nonnull %i.ak, ptr noundef nonnull %i.al)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.an = load i8, ptr %i.am, align 1, !tbaa !34
  %.not.i50 = icmp eq i8 %i.an, 0
  br i1 %.not.i50, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE10transfer_nEmmmPSM_PSK_.exit
  %i.ao = load i8, ptr %i.a, align 1, !tbaa !34   ; 5 uses
  %i.ap = add i8 %i.ao, 1                         ; 2 uses
  %.not5152 = icmp eq i8 %i.ap, 0
  br i1 %.not5152, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 6 uses
  %i.ar = zext i8 %i.ap to i64                    ; 2 uses
  %i.as = and i8 %i.ao, 1
  %lcmp.mod.not.not = icmp eq i8 %i.as, 0
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %i.at = add i8 %i.ao, %1                        ; 2 uses
  %i.au = zext i8 %i.ao to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.au
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !739 ; 3 uses
  %i.ax = zext i8 %i.at to i64
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ax
  store ptr %i.aw, ptr %i.ay, align 8, !tbaa !739
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i8 %i.at, ptr %i.az, align 1, !tbaa !34
  store ptr %2, ptr %i.aw, align 8, !tbaa !739
  %indvars.iv.next.prol = add nsw i64 %i.ar, -1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.unr = phi i64 [ %i.ar, %.lr.ph ], [ %indvars.iv.next.prol, %.prol.loopexit.unr-lcssa ]
  %i.ba = icmp eq i8 %i.ao, 0
  br i1 %i.ba, label %.preheader, label %.lr.ph.new

.preheader:                                       ; preds = %.prol.loopexit, %.lr.ph.new, %bb.b
  %.not54 = icmp eq i8 %1, 0
  br i1 %.not54, label %.loopexit, label %.lr.ph56

.lr.ph56:                                         ; preds = %.preheader
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 3 uses
  %i.bd = add i8 %1, 1                            ; 2 uses
  %umax = tail call i8 @llvm.umax.i8(i8 %i.bd, i8 2)
  %wide.trip.count = zext i8 %umax to i64
  %i.be = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %xtraiter65 = and i64 %i.be, 1
  %i.bf = icmp ult i8 %i.bd, 3
  br i1 %i.bf, label %.epil.preheader, label %.lr.ph56.new

.lr.ph56.new:                                     ; preds = %.lr.ph56
  %unroll_iter = and i64 %i.be, -2
  %invariant.op = sub i8 1, %1
  br label %bb.c

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 3 uses
  %i.bg = trunc nuw i64 %indvars.iv to i8
  %i.bh = add i8 %i.bg, -1                        ; 2 uses
  %i.bi = add i8 %i.bh, %1                        ; 2 uses
  %i.bj = zext i8 %i.bh to i64
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.bj
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !739 ; 3 uses
  %i.bm = zext i8 %i.bi to i64
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.bm
  store ptr %i.bl, ptr %i.bn, align 8, !tbaa !739
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store i8 %i.bi, ptr %i.bo, align 1, !tbaa !34
  store ptr %2, ptr %i.bl, align 8, !tbaa !739
  %i.bp = trunc i64 %indvars.iv to i8
  %i.bq = add i8 %i.bp, -2                        ; 2 uses
  %i.br = add i8 %i.bq, %1                        ; 2 uses
  %i.bs = zext i8 %i.bq to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.bs
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !739 ; 3 uses
  %i.bv = zext i8 %i.br to i64
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.bv
  store ptr %i.bu, ptr %i.bw, align 8, !tbaa !739
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store i8 %i.br, ptr %i.bx, align 1, !tbaa !34
  store ptr %2, ptr %i.bu, align 8, !tbaa !739
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2 ; 2 uses
  %i.by = and i64 %indvars.iv.next.1, 255
  %.not51.1 = icmp eq i64 %i.by, 0
  br i1 %.not51.1, label %.preheader, label %.lr.ph.new, !llvm.loop !1227

bb.c:                                             ; preds = %bb.c, %.lr.ph56.new
  %indvars.iv58 = phi i64 [ 1, %.lr.ph56.new ], [ %indvars.iv.next59.1, %bb.c ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph56.new ], [ %niter.next.1, %bb.c ]
  %i.bz = add nsw i64 %indvars.iv58, -1           ; 2 uses
  %i.ca = load i8, ptr %i.u, align 2, !tbaa !34
  %i.cb = trunc nuw i64 %indvars.iv58 to i8
  %i.cc = sub i8 %i.cb, %1
  %i.cd = add i8 %i.cc, %i.ca
  %i.ce = zext i8 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.ce
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !739 ; 3 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bz
  store ptr %i.cg, ptr %i.ch, align 8, !tbaa !739
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.cj = trunc nuw i64 %i.bz to i8
  store i8 %i.cj, ptr %i.ci, align 1, !tbaa !34
  store ptr %2, ptr %i.cg, align 8, !tbaa !739
  %i.ck = load i8, ptr %i.u, align 2, !tbaa !34
  %i.cl = trunc i64 %indvars.iv58 to i8
  %.reass = add i8 %i.cl, %invariant.op
  %i.cm = add i8 %.reass, %i.ck
  %i.cn = zext i8 %i.cm to i64
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.cn
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !739 ; 3 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv58
  store ptr %i.cp, ptr %i.cq, align 8, !tbaa !739
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cs = trunc nuw i64 %indvars.iv58 to i8
  store i8 %i.cs, ptr %i.cr, align 1, !tbaa !34
  store ptr %2, ptr %i.cp, align 8, !tbaa !739
  %indvars.iv.next59.1 = add nuw nsw i64 %indvars.iv58, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !1228

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.c
  %lcmp.mod66.not = icmp eq i64 %xtraiter65, 0
  br i1 %lcmp.mod66.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph56
  %indvars.iv58.epil.init = phi i64 [ 1, %.lr.ph56 ], [ %indvars.iv.next59.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod67 = trunc i64 %i.be to i1
  tail call void @llvm.assume(i1 %lcmp.mod67)
  %i.ct = add nsw i64 %indvars.iv58.epil.init, -1 ; 2 uses
  %i.cu = load i8, ptr %i.u, align 2, !tbaa !34
  %i.cv = trunc nuw i64 %indvars.iv58.epil.init to i8
  %i.cw = sub i8 %i.cv, %1
  %i.cx = add i8 %i.cw, %i.cu
  %i.cy = zext i8 %i.cx to i64
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.cy
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !739 ; 3 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.ct
  store ptr %i.da, ptr %i.db, align 8, !tbaa !739
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dd = trunc nuw i64 %i.ct to i8
  store i8 %i.dd, ptr %i.dc, align 1, !tbaa !34
  store ptr %2, ptr %i.da, align 8, !tbaa !739
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE10transfer_nEmmmPSM_PSK_.exit
  %i.de = load i8, ptr %i.u, align 2, !tbaa !34
  %i.df = sub i8 %i.de, %1
  store i8 %i.df, ptr %i.u, align 2, !tbaa !34
  %i.dg = load i8, ptr %i.a, align 1, !tbaa !34
  %i.dh = add i8 %i.dg, %1
  store i8 %i.dh, ptr %i.a, align 1, !tbaa !34
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE5splitEiPSM_PSK_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %1, label %bb.c [
    i32 0, label %bb.b
    i32 4, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.b = load i8, ptr %i.a, align 1, !tbaa !34
  %i.c = add i8 %i.b, -1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.e = load i8, ptr %i.d, align 1, !tbaa !34
  %i.f = lshr i8 %i.e, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.sink = phi i8 [ %i.c, %bb.b ], [ %i.f, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 10
  store i8 %.sink, ptr %i.g, align 1, !tbaa !34
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 6 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !34
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 2 uses
  %i.k = sub i8 %i.i, %.sink                      ; 3 uses
  store i8 %i.k, ptr %i.h, align 1, !tbaa !34
  %i.l = load i8, ptr %i.j, align 1, !tbaa !34    ; 2 uses
  %i.m = zext i8 %i.l to i64
  %i.n = zext i8 %i.k to i64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.p = getelementptr inbounds nuw [136 x i8], ptr %i.o, i64 %i.n ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.m, 136
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i
  %.not13.i = icmp eq i8 %i.l, 0
  br i1 %.not13.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE10transfer_nEmmmPSM_PSK_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.015.i = phi ptr [ %i.t, %.lr.ph.i ], [ %i.r, %.lr.ph.preheader.i ] ; 2 uses
  %.01214.i = phi ptr [ %i.s, %.lr.ph.i ], [ %i.p, %.lr.ph.preheader.i ] ; 2 uses
  tail call void @_ZN4absl12lts_2025051218container_internal15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoEE8transferISaISt4pairIKS8_SD_EEEEDaPT_PNS1_13map_slot_typeIS8_SD_EESO_(ptr noundef %3, ptr noundef nonnull %.015.i, ptr noundef nonnull %.01214.i)
  %i.s = getelementptr inbounds nuw i8, ptr %.01214.i, i64 136 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.015.i, i64 136
  %.not.i = icmp eq ptr %i.s, %i.q
  br i1 %.not.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE10transfer_nEmmmPSM_PSK_.exit.loopexit, label %.lr.ph.i, !llvm.loop !1222

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE10transfer_nEmmmPSM_PSK_.exit.loopexit: ; preds = %.lr.ph.i
  %.pre = load i8, ptr %i.h, align 1, !tbaa !34
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE10transfer_nEmmmPSM_PSK_.exit

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE10transfer_nEmmmPSM_PSK_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE10transfer_nEmmmPSM_PSK_.exit.loopexit, %bb.d
  %i.u = phi i8 [ %.pre, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE10transfer_nEmmmPSM_PSK_.exit.loopexit ], [ %i.k, %bb.d ]
  %i.v = add i8 %i.u, -1                          ; 2 uses
  store i8 %i.v, ptr %i.h, align 1, !tbaa !34
  %i.w = load ptr, ptr %0, align 8, !tbaa !739    ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = load i8, ptr %i.x, align 8, !tbaa !34    ; 4 uses
  %i.z = zext i8 %i.v to i64
  %i.aa = getelementptr inbounds nuw [136 x i8], ptr %i.o, i64 %i.z
  %i.ab = zext i8 %i.y to i32
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 10 ; 3 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !34  ; 2 uses
  %i.ae = icmp ult i8 %i.y, %i.ad
  %i.af = zext i8 %i.y to i64                     ; 2 uses
  br i1 %i.ae, label %.lr.ph.preheader.i.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE19transfer_n_backwardEmmmPSM_PSK_.exit.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE10transfer_nEmmmPSM_PSK_.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ah = getelementptr [136 x i8], ptr %i.ag, i64 %i.af ; 3 uses
  %narrow.i = sub nuw i8 %i.ad, %i.y
  %i.ai = zext i8 %narrow.i to i64                ; 2 uses
  %.idx.i.i = mul nuw nsw i64 %i.ai, 136
  %i.aj = getelementptr i8, ptr %i.ah, i64 136
  %i.ak = getelementptr [136 x i8], ptr %i.aj, i64 %i.ai
  %i.al = getelementptr i8, ptr %i.ah, i64 %.idx.i.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.017.i.i = phi ptr [ %i.am, %.lr.ph.i.i ], [ %i.ak, %.lr.ph.preheader.i.i ]
  %.01416.i.i = phi ptr [ %i.an, %.lr.ph.i.i ], [ %i.al, %.lr.ph.preheader.i.i ]
  %i.am = getelementptr inbounds i8, ptr %.017.i.i, i64 -136 ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %.01416.i.i, i64 -136 ; 3 uses
  tail call void @_ZN4absl12lts_2025051218container_internal15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoEE8transferISaISt4pairIKS8_SD_EEEEDaPT_PNS1_13map_slot_typeIS8_SD_EESO_(ptr noundef %3, ptr noundef nonnull %i.am, ptr noundef nonnull %i.an)
  %.not.i.i = icmp eq ptr %i.an, %i.ah
  br i1 %.not.i.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE19transfer_n_backwardEmmmPSM_PSK_.exit.i, label %.lr.ph.i.i, !llvm.loop !1223

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE19transfer_n_backwardEmmmPSM_PSK_.exit.i: ; preds = %.lr.ph.i.i, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE10transfer_nEmmmPSM_PSK_.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ap = getelementptr inbounds nuw [136 x i8], ptr %i.ao, i64 %i.af
  tail call void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoEEC2EOSB_(ptr noundef nonnull align 8 dereferenceable(136) %i.ap, ptr noundef nonnull align 8 dereferenceable(136) %i.aa) #37
  %i.aq = load i8, ptr %i.ac, align 1, !tbaa !34
  %i.ar = add i8 %i.aq, 1                         ; 3 uses
  store i8 %i.ar, ptr %i.ac, align 1, !tbaa !34
  %i.as = getelementptr inbounds nuw i8, ptr %i.w, i64 11
  %i.at = load i8, ptr %i.as, align 1, !tbaa !34
  %.not.i18.i = icmp eq i8 %i.at, 0
  br i1 %.not.i18.i, label %bb.e, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE13emplace_valueIJPNS1_13map_slot_typeIS9_SE_EEEEEvhPSK_DpOT_.exit

bb.e:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE19transfer_n_backwardEmmmPSM_PSK_.exit.i
  %i.au = zext i8 %i.ar to i32
  %i.av = add nuw nsw i32 %i.ab, 1                ; 2 uses
  %i.aw = icmp samesign ult i32 %i.av, %i.au
  br i1 %i.aw, label %.lr.ph.i27, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE13emplace_valueIJPNS1_13map_slot_typeIS9_SE_EEEEEvhPSK_DpOT_.exit

.lr.ph.i27:                                       ; preds = %bb.e
  %i.ax = getelementptr inbounds nuw i8, ptr %i.w, i64 560 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i27
  %.019.i = phi i8 [ %i.ar, %.lr.ph.i27 ], [ %i.ay, %bb.f ] ; 3 uses
  %i.ay = add i8 %.019.i, -1                      ; 3 uses
  %i.az = zext i8 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.az
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !739 ; 2 uses
  %i.bc = zext i8 %.019.i to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.bc
  store ptr %i.bb, ptr %i.bd, align 8, !tbaa !739
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store i8 %.019.i, ptr %i.be, align 1, !tbaa !34
  %i.bf = zext i8 %i.ay to i32
  %i.bg = icmp samesign ult i32 %i.av, %i.bf
  br i1 %i.bg, label %bb.f, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE13emplace_valueIJPNS1_13map_slot_typeIS9_SE_EEEEEvhPSK_DpOT_.exit, !llvm.loop !1229

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE13emplace_valueIJPNS1_13map_slot_typeIS9_SE_EEEEEvhPSK_DpOT_.exit: ; preds = %bb.f, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE19transfer_n_backwardEmmmPSM_PSK_.exit.i, %bb.e
  %i.bh = load i8, ptr %i.h, align 2, !tbaa !34
  %i.bi = zext i8 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [136 x i8], ptr %i.o, i64 %i.bi ; 8 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 104
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !105 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 120 ; 2 uses
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE13emplace_valueIJPNS1_13map_slot_typeIS9_SE_EEEEEvhPSK_DpOT_.exit
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !34
  %i.bq = add i64 %i.bp, 1
  tail call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bq) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf8compiler20CommandLineInterface13GeneratorInfoESt4lessIS9_ESaISt4pairIKS9_SE_EELi256ELb0EEEE13emplace_valueIJPNS1_13map_slot_typeIS9_SE_EEEEEvhPSK_DpOT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bj, i64 64
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !105 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bj, i64 80 ; 2 uses
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.bv = load i64, ptr %i.bt, align 8, !tbaa !34
  %i.bw = add i64 %i.bv, 1
  tail call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bw) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  %i.bx = load ptr, ptr %i.bk, align 8, !tbaa !105 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bj, i64 48 ; 2 uses
  %i.bz = icmp eq ptr %i.bx, %i.by
end_hunk_3
