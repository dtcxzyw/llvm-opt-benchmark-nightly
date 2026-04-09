inline.NumInlined: 282
inline.NumDeleted: 144
begin_hunk_0_@_ZN5arrow8internal7CpuInfo4ImplC2Ev:._crit_edge.i.i
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 48
  %i.fn = load ptr, ptr %i.fm, align 8
  %i.fo = invoke noundef signext i8 %i.fn(ptr noundef nonnull align 8 dereferenceable(570) %i.fg, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i unwind label %.loopexit.i, !inline_history !51

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i: ; preds = %.noexc18.i, %bb.x
  %.0.i.i.i.i = phi i8 [ %i.fk, %bb.x ], [ %i.fo, %.noexc18.i ]
end_hunk_0
begin_hunk_1_@_ZN5arrow8internal7CpuInfo4ImplC2Ev:._crit_edge.i.i
bb.z:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.fv = add i64 %i.fu, -1
  store ptr %i.ci, ptr %5, align 8, !tbaa !23, !alias.scope !52
  %spec.select.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.fv, i64 %i.fq) ; 8 uses
  %i.fw = icmp ugt i64 %spec.select.i.i.i.i, 15
  br i1 %i.fw, label %bb.aa, label %._crit_edge.i.i.i.i
end_hunk_1
begin_hunk_2_@_ZN5arrow8internal7CpuInfo4ImplC2Ev:._crit_edge.i.i
bb.ab:                                            ; preds = %bb.aa
  %i.fy = add nuw i64 %spec.select.i.i.i.i, 1     ; 2 uses
  %i.fz = icmp slt i64 %i.fy, 0
  br i1 %i.fz, label %.noexc11.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !55

.noexc11.i.i.i:                                   ; preds = %bb.ab
  invoke void @_ZSt17__throw_bad_allocv() #27
end_hunk_2
begin_hunk_3_@_ZN5arrow8internal7CpuInfo4ImplC2Ev:._crit_edge.i.i
          to label %.noexc24.i unwind label %.loopexit139.i ; 2 uses

.noexc24.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i
  store ptr %i.ga, ptr %5, align 8, !tbaa !10, !alias.scope !52
  store i64 %spec.select.i.i.i.i, ptr %i.ci, align 8, !tbaa !15, !alias.scope !52
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc24.i, %bb.z
end_hunk_3
begin_hunk_4_@_ZN5arrow8internal7CpuInfo4ImplC2Ev:._crit_edge.i.i
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %._crit_edge.i.i.i.i
  store i64 %spec.select.i.i.i.i, ptr %i.cj, align 8, !tbaa !24, !alias.scope !52
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 %spec.select.i.i.i.i
  store i8 0, ptr %i.gd, align 1, !tbaa !15
  invoke void @_ZN5arrow8internal10TrimStringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull %5)
end_hunk_4
begin_hunk_5_@_ZN5arrow8internal7CpuInfo4ImplC2Ev:._crit_edge.i.i
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.gi = add nuw i64 %i.fu, 1                    ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !56)
  %i.gj = load i64, ptr %i.ch, align 8, !tbaa !24, !noalias !56 ; 3 uses
  %.not122.i = icmp ult i64 %i.fu, %i.gj
  br i1 %.not122.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i, label %bb.ag

end_hunk_5
begin_hunk_6_@_ZN5arrow8internal7CpuInfo4ImplC2Ev:._crit_edge.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  store ptr %i.ck, ptr %7, align 8, !tbaa !23, !alias.scope !56
  %i.gk = load ptr, ptr %3, align 8, !tbaa !10, !noalias !56
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 %i.gi ; 2 uses
  %i.gm = sub nuw i64 %i.gj, %i.gi                ; 8 uses
  %i.gn = icmp ugt i64 %i.gm, 15
end_hunk_6
begin_hunk_7_@_ZN5arrow8internal7CpuInfo4ImplC2Ev:._crit_edge.i.i
bb.ai:                                            ; preds = %bb.ah
  %i.gp = add nuw i64 %i.gm, 1                    ; 2 uses
  %i.gq = icmp slt i64 %i.gp, 0
  br i1 %i.gq, label %.noexc11.i.i28.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i27.i, !prof !55

.noexc11.i.i28.i:                                 ; preds = %bb.ai
  invoke void @_ZSt17__throw_bad_allocv() #27
end_hunk_7
begin_hunk_8_@_ZN5arrow8internal7CpuInfo4ImplC2Ev:._crit_edge.i.i
          to label %.noexc33.i unwind label %.loopexit144.i ; 2 uses

.noexc33.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i27.i
  store ptr %i.gr, ptr %7, align 8, !tbaa !10, !alias.scope !56
  store i64 %i.gm, ptr %i.ck, align 8, !tbaa !15, !alias.scope !56
  br label %._crit_edge.i.i.i26.i

._crit_edge.i.i.i26.i:                            ; preds = %.noexc33.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i
end_hunk_8
begin_hunk_9_@_ZN5arrow8internal7CpuInfo4ImplC2Ev:._crit_edge.i.i
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %._crit_edge.i.i.i26.i
  store i64 %i.gm, ptr %i.cl, align 8, !tbaa !24, !alias.scope !56
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.gm
  store i8 0, ptr %i.gu, align 1, !tbaa !15
  invoke void @_ZN5arrow8internal10TrimStringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull %7)
end_hunk_9
begin_hunk_10_@_ZN5arrow8internal7CpuInfo4ImplC2Ev:._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(5) %i.co, ptr noundef nonnull align 1 dereferenceable(5) @.str.19, i64 5, i1 false)
  store i64 5, ptr %i.cp, align 8, !tbaa !24
  store i8 0, ptr %i.cq, align 1, !tbaa !15
  store i64 1, ptr %i.cr, align 16, !tbaa !59
  store ptr %i.ct, ptr %i.cs, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.ct, ptr noundef nonnull align 1 dereferenceable(6) @.str.20, i64 6, i1 false)
  store i64 6, ptr %i.cu, align 16, !tbaa !24
  store i8 0, ptr %i.cv, align 2, !tbaa !15
  store i64 2, ptr %i.cw, align 8, !tbaa !59
  store ptr %i.cy, ptr %i.cx, align 16, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(6) %i.cy, ptr noundef nonnull align 1 dereferenceable(6) @.str.21, i64 6, i1 false)
  store i64 6, ptr %i.cz, align 8, !tbaa !24
  store i8 0, ptr %i.da, align 2, !tbaa !15
  store i64 4, ptr %i.db, align 16, !tbaa !59
  store ptr %i.dd, ptr %i.dc, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.dd, ptr noundef nonnull align 1 dereferenceable(6) @.str.22, i64 6, i1 false)
  store i64 6, ptr %i.de, align 16, !tbaa !24
  store i8 0, ptr %i.df, align 2, !tbaa !15
  store i64 8, ptr %i.dg, align 8, !tbaa !59
  store ptr %i.di, ptr %i.dh, align 16, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(3) %i.di, ptr noundef nonnull align 1 dereferenceable(3) @.str.23, i64 3, i1 false)
  store i64 3, ptr %i.dj, align 8, !tbaa !24
  store i8 0, ptr %i.dk, align 1, !tbaa !15
  store i64 16, ptr %i.dl, align 16, !tbaa !59
  store ptr %i.dn, ptr %i.dm, align 8, !tbaa !23
  store i32 846755425, ptr %i.dn, align 8
  store i64 4, ptr %i.do, align 16, !tbaa !24
  store i8 0, ptr %i.dp, align 4, !tbaa !15
  store i64 32, ptr %i.dq, align 8, !tbaa !59
  store ptr %i.ds, ptr %i.dr, align 16, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(7) %i.ds, ptr noundef nonnull align 1 dereferenceable(7) @.str.25, i64 7, i1 false)
  store i64 7, ptr %i.dt, align 8, !tbaa !24
  store i8 0, ptr %i.du, align 1, !tbaa !15
  store i64 64, ptr %i.dv, align 16, !tbaa !59
  store ptr %i.dx, ptr %i.dw, align 8, !tbaa !23
  store i64 7233680613419021921, ptr %i.dx, align 8
  store i64 8, ptr %i.dy, align 16, !tbaa !24
  store i8 0, ptr %i.dz, align 16, !tbaa !15
  store i64 128, ptr %i.ea, align 8, !tbaa !59
  store ptr %i.ec, ptr %i.eb, align 16, !tbaa !23
  store i64 7815489390279947873, ptr %i.ec, align 16
  store i64 8, ptr %i.ed, align 8, !tbaa !24
  store i8 0, ptr %i.ee, align 8, !tbaa !15
  store i64 256, ptr %i.ef, align 16, !tbaa !59
  store ptr %i.eh, ptr %i.eg, align 8, !tbaa !23
  store i64 8170710810888795745, ptr %i.eh, align 8
  store i64 8, ptr %i.ei, align 16, !tbaa !24
  store i8 0, ptr %i.ej, align 16, !tbaa !15
  store i64 512, ptr %i.ek, align 8, !tbaa !59
  store ptr %i.em, ptr %i.el, align 16, !tbaa !23
  store i64 8602493425162942049, ptr %i.em, align 16
  store i64 8, ptr %i.en, align 8, !tbaa !24
  store i8 0, ptr %i.eo, align 8, !tbaa !15
  store i64 1024, ptr %i.ep, align 16, !tbaa !59
  store ptr %i.er, ptr %i.eq, align 8, !tbaa !23
  store i32 828992866, ptr %i.er, align 8
  store i64 4, ptr %i.es, align 16, !tbaa !24
  store i8 0, ptr %i.et, align 4, !tbaa !15
  store i64 2048, ptr %i.eu, align 8, !tbaa !59
  store ptr %i.ew, ptr %i.ev, align 16, !tbaa !23
  store i32 845770082, ptr %i.ew, align 16
  store i64 4, ptr %i.ex, align 8, !tbaa !24
  store i8 0, ptr %i.ey, align 4, !tbaa !15
  store i64 4096, ptr %i.ez, align 16, !tbaa !59
  %i.hd = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.val17.i
  %i.he = ptrtoint ptr %i.hd to i64
  %i.hf = ptrtoint ptr %.val.i to i64
end_hunk_10
begin_hunk_11_@_ZN5arrow8internal7CpuInfo4ImplC2Ev:._crit_edge.i.i
  %i.hr = ptrtoint ptr %i.hq to i64
  %i.hs = sub i64 %i.he, %i.hr                    ; 2 uses
  %.not33.i.i.i.i = icmp ult i64 %i.hs, %i.hj
  br i1 %.not33.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.thread.i.i, label %bb.aq, !llvm.loop !61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %i.ht = ptrtoint ptr %i.ho to i64
end_hunk_11
begin_hunk_12_@_ZN5arrow8internal7CpuInfo4ImplC2Ev:._crit_edge.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.thread18.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.i.i, %bb.ao
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hg, i64 32
  %i.hw = load i64, ptr %i.hv, align 8, !tbaa !59
  %i.hx = or i64 %i.hw, %.01221.i.i
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.thread.i.i

end_hunk_12
begin_hunk_13_@_ZN5arrow8internal7CpuInfo4ImplC2Ev:._crit_edge.i.i
  %.1.i50.i = phi i64 [ %i.hx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.thread18.i.i ], [ %.01221.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.i.i ], [ %.01221.i.i, %bb.ap ], [ %.01221.i.i, %bb.aq ], [ %.01221.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i ], [ %.01221.i.i, %bb.ar ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, 13
  br i1 %exitcond.not.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i151.12.i.i, label %bb.ao, !llvm.loop !63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i151.12.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.thread.i.i
  %.pre.i = load i64, ptr %0, align 8, !tbaa !36
end_hunk_13
begin_hunk_14_@_ZN5arrow8internal7CpuInfo4ImplC2Ev:._crit_edge.i.i
  br i1 %or.cond132.i, label %bb.ax, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc.exit88.thread.i

bb.ax:                                            ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i81.i
  store i32 1, ptr %i.e, align 8, !tbaa !64
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc.exit88.thread.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i81.i
end_hunk_14
begin_hunk_15_@_ZN5arrow8internal7CpuInfo4ImplC2Ev:._crit_edge.i.i
  br i1 %or.cond133.i, label %bb.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i

bb.ay:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc.exit88.thread.i
  store i32 2, ptr %i.e, align 8, !tbaa !64
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i: ; preds = %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc.exit88.thread.i, %bb.ax, %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc.exit69.thread.i, %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i151.12.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.i
end_hunk_15
begin_hunk_16_@_ZN5arrow8internal7CpuInfo4ImplC2Ev:._crit_edge.i.i
  %i.jo = load i32, ptr %i.jn, align 8, !tbaa !27
  %i.jp = and i32 %i.jo, 5
  %.not.i.i26 = icmp eq i32 %i.jp, 0
  br i1 %.not.i.i26, label %bb.v, label %.loopexit, !llvm.loop !65

bb.az:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54.i, %.loopexit.split-lp.i, %.loopexit.i
  %.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54.i ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
end_hunk_16
begin_hunk_17_@_ZN5arrow8internal7CpuInfo4ImplC2Ev:._crit_edge.i.i
          to label %bb.ba unwind label %bb.bc

bb.ba:                                            ; preds = %.loopexit
  %i.jw = load ptr, ptr %9, align 8, !tbaa !66    ; 2 uses
  %i.jx = icmp eq ptr %i.jw, null
  br i1 %i.jx, label %bb.bd, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i

end_hunk_17
begin_hunk_18_@_ZN5arrow8internal7CpuInfo4ImplC2Ev:._crit_edge.i.i

bb.bd:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !69)
  call void @llvm.experimental.noalias.scope.decl(metadata !72)
  call void @llvm.experimental.noalias.scope.decl(metadata !75)
  %i.ka = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 8 uses
  store ptr %i.kb, ptr %10, align 8, !tbaa !23, !alias.scope !78
  %i.kc = load ptr, ptr %i.ka, align 8, !tbaa !10, !noalias !78 ; 3 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 7 uses
  %i.ke = icmp eq ptr %i.kc, %i.kd
  br i1 %i.ke, label %bb.be, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.be:                                            ; preds = %bb.bd
  %i.kf = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.kg = load i64, ptr %i.kf, align 8, !tbaa !24, !noalias !78 ; 3 uses
  %i.kh = icmp ult i64 %i.kg, 16
  call void @llvm.assume(i1 %i.kh)
  %i.ki = add nuw nsw i64 %i.kg, 1
end_hunk_18
begin_hunk_19_@_ZN5arrow8internal7CpuInfo4ImplC2Ev:._crit_edge.i.i
  br label %bb.bf

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.bd
  store ptr %i.kc, ptr %10, align 8, !tbaa !10, !alias.scope !78
  %i.kj = load i64, ptr %i.kd, align 8, !tbaa !15, !noalias !78
  store i64 %i.kj, ptr %i.kb, align 8, !tbaa !15, !alias.scope !78
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %9, i64 16
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !24, !noalias !78
  br label %bb.bf

bb.bf:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.be
end_hunk_19
begin_hunk_20_@_ZN5arrow8internal7CpuInfo4ImplC2Ev:._crit_edge.i.i
  %i.kl = phi i64 [ %i.kg, %bb.be ], [ %.pre.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ] ; 3 uses
  %i.km = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.kn = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  store i64 %i.kl, ptr %i.kn, align 8, !tbaa !24, !alias.scope !78
  store ptr %i.kd, ptr %i.ka, align 8, !tbaa !10, !noalias !78
  store i64 0, ptr %i.km, align 8, !tbaa !24, !noalias !78
  store i8 0, ptr %i.kd, align 8, !tbaa !15, !noalias !78
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kk, i64 %i.kl
  %i.kp = icmp samesign eq i64 %i.kl, 0
  br i1 %i.kp, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN5arrow8internal7CpuInfo4ImplC1EvEUlhE_ET0_T_SG_SF_T1_.exit.thread, label %.lr.ph.i32
end_hunk_20
begin_hunk_21_@_ZN5arrow8internal7CpuInfo4ImplC2Ev:._crit_edge.i.i
  store i8 %i.kt, ptr %.sroa.0.07.i, align 1, !tbaa !15
  %i.ku = getelementptr i8, ptr %.sroa.0.07.i, i64 1 ; 2 uses
  %i.kv = icmp eq ptr %i.ku, %i.ko
  br i1 %i.kv, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN5arrow8internal7CpuInfo4ImplC1EvEUlhE_ET0_T_SG_SF_T1_.exit, label %.lr.ph.i32, !llvm.loop !79

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN5arrow8internal7CpuInfo4ImplC1EvEUlhE_ET0_T_SG_SF_T1_.exit: ; preds = %.lr.ph.i32
  %.val.pre = load ptr, ptr %10, align 8          ; 10 uses
end_hunk_21
begin_hunk_22_@_ZN5arrow8internal7CpuInfo4ImplC2Ev:._crit_edge.i.i
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 16
  %i.mm = load ptr, ptr %i.ml, align 8
  %i.mn = invoke noundef zeroext i1 %i.mm(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %.noexc33 unwind label %bb.bk, !inline_history !80

.noexc33:                                         ; preds = %bb.bg
  br i1 %i.mn, label %bb.bh, label %_ZN5arrow4util12ArrowLogBaselsIA42_cEERS1_RKT_.exit
end_hunk_22
begin_hunk_23_@_ZN5arrow8internal7CpuInfo4ImplC2Ev:._crit_edge.i.i
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 24
  %i.mq = load ptr, ptr %i.mp, align 8
  %i.mr = invoke noundef nonnull align 8 dereferenceable(8) ptr %i.mq(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %.noexc34 unwind label %bb.bk, !inline_history !80

.noexc34:                                         ; preds = %bb.bh
  %i.ms = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.mr, ptr noundef nonnull @.str.3, i64 noundef 41)
end_hunk_23
begin_hunk_24_@_ZN5arrow8internal7CpuInfo4ImplC2Ev:._crit_edge.i.i
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 16
  %i.mv = load ptr, ptr %i.mu, align 8
  %i.mw = invoke noundef zeroext i1 %i.mv(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %.noexc36 unwind label %bb.bk, !inline_history !81

.noexc36:                                         ; preds = %_ZN5arrow4util12ArrowLogBaselsIA42_cEERS1_RKT_.exit
  br i1 %i.mw, label %bb.bi, label %_ZN5arrow4util12ArrowLogBaselsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS1_RKT_.exit
end_hunk_24
begin_hunk_25_@_ZN5arrow8internal7CpuInfo4ImplC2Ev:._crit_edge.i.i
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 24
  %i.mz = load ptr, ptr %i.my, align 8
  %i.na = invoke noundef nonnull align 8 dereferenceable(8) ptr %i.mz(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %.noexc37 unwind label %bb.bk, !inline_history !81

.noexc37:                                         ; preds = %bb.bi
  %i.nb = load ptr, ptr %10, align 8, !tbaa !10
end_hunk_25
begin_hunk_26_@_ZN5arrow8internal7CpuInfo4ImplC2Ev:._crit_edge.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZN5arrow8internal12_GLOBAL__N_122ArchParseUserSimdLevelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPl.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  %.pr = load ptr, ptr %9, align 8, !tbaa !66     ; 2 uses
  %i.nm = icmp eq ptr %.pr, null
  br i1 %i.nm, label %bb.bm, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i, !prof !82

bb.bm:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.nn = load ptr, ptr %i.ka, align 8, !tbaa !10 ; 2 uses
end_hunk_26
begin_hunk_27_@_ZN5arrow8internal7CpuInfo4ImplC2Ev:._crit_edge.i.i
  %i.np = load i64, ptr %i.kd, align 8, !tbaa !15
  %i.nq = add i64 %i.np, 1
  call void @_ZdlPvm(ptr noundef %i.nn, i64 noundef %i.nq) #23
  %.pr.pre.i = load ptr, ptr %9, align 8, !tbaa !66 ; 2 uses
  %.not.i.i39 = icmp eq ptr %.pr.pre.i, null
  br i1 %.not.i.i39, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i, !prof !82

_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i: ; preds = %bb.ba, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.nr = phi ptr [ %.pr.pre.i, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i ], [ %.pr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ], [ %i.jw, %bb.ba ]
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 1
  %i.nt = load i8, ptr %i.ns, align 1, !tbaa !83, !range !91, !noundef !92
  %i.nu = trunc nuw i8 %i.nt to i1
  br i1 %i.nu, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %bb.bn

end_hunk_27
begin_hunk_28_@_ZN5arrow8internal7CpuInfo11GetInstanceEv:bb.a
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN5arrow8internal7CpuInfo11GetInstanceEvE8cpu_info acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e, !prof !93

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5arrow8internal7CpuInfo11GetInstanceEvE8cpu_info) #26
end_hunk_28
begin_hunk_29_@_ZN5arrow4util8ArrowLogD1Ev
; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !66     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread, !prof !94

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_29
begin_hunk_30_@_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev:bb.a
  %i.g = load i64, ptr %i.e, align 8, !tbaa !15
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #23
  %.pr.pre = load ptr, ptr %0, align 8, !tbaa !66 ; 2 uses
  %.not.i = icmp eq ptr %.pr.pre, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread, !prof !82

_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread: ; preds = %bb.a, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit
  %i.i = phi ptr [ %.pr.pre, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit ], [ %i.a, %bb.a ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !83, !range !91, !noundef !92
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %_ZN5arrow6StatusD2Ev.exit, label %bb.c

end_hunk_30
begin_hunk_31_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_:bb.a
  %.0 = select i1 %i.k, i64 %spec.store.select.i, i64 %i.b ; 2 uses
  %i.l = add nuw i64 %.0, 1                       ; 2 uses
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !55

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #27
end_hunk_31
begin_hunk_32_@_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !66     ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !95   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.c

end_hunk_32
begin_hunk_33_@_ZN5arrow6Status11DeleteStateEv:bb.a
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.e, align 8, !tbaa !96
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !98
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !25
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #26, !inline_history !99
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !25
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #26, !inline_history !99
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.e:                                             ; preds = %bb.c
end_hunk_33
begin_hunk_34_@_ZN5arrow6Status11DeleteStateEv:bb.a
_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.h, %bb.f ], [ %i.r, %bb.g ]
  %i.s = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.s, label %bb.h, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !55

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #26
end_hunk_34
begin_hunk_35_@_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv:bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !25
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #26, !inline_history !100
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !15
  %.not.i = icmp eq i8 %i.e, 0
end_hunk_35
begin_hunk_36_@_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv:bb.a
  %i.j = load ptr, ptr %0, align 8, !tbaa !25
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #26, !inline_history !100
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
end_hunk_36
begin_hunk_37_@llvm.smax.i32
!48 = !{!"p1 _ZTS15__locale_struct", !9, i64 0}
!49 = !{!"p1 int", !9, i64 0}
!50 = !{!"p1 short", !9, i64 0}
!51 = distinct !{null}
!52 = !{!53}
!53 = distinct !{!53, !54, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!54 = distinct !{!54, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!55 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!56 = !{!57}
!57 = distinct !{!57, !58, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!58 = distinct !{!58, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!59 = !{!60, !14, i64 32}
!60 = !{!"_ZTSZN5arrow8internal12_GLOBAL__N_118LinuxParseCpuFlagsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0", !11, i64 0, !14, i64 32}
!61 = distinct !{!61, !62}
!62 = !{!"llvm.loop.mustprogress"}
!63 = distinct !{!63, !62}
!64 = !{!18, !18, i64 0}
!65 = distinct !{!65, !62}
!66 = !{!67, !68, i64 0}
!67 = !{!"_ZTSN5arrow6StatusE", !68, i64 0}
!68 = !{!"p1 _ZTSN5arrow6Status5StateE", !9, i64 0}
!69 = !{!70}
!70 = distinct !{!70, !71, !"_ZNO5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv: argument 0"}
!71 = distinct !{!71, !"_ZNO5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv"}
!72 = !{!73}
!73 = distinct !{!73, !74, !"_ZNO5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10ValueOrDieEv: argument 0"}
!74 = distinct !{!74, !"_ZNO5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10ValueOrDieEv"}
!75 = !{!76}
!76 = distinct !{!76, !77, !"_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE15MoveValueUnsafeEv: argument 0"}
!77 = distinct !{!77, !"_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE15MoveValueUnsafeEv"}
!78 = !{!76, !73, !70}
!79 = distinct !{!79, !62}
!80 = distinct !{null}
!81 = distinct !{null}
!82 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!83 = !{!84, !40, i64 1}
!84 = !{!"_ZTSN5arrow6Status5StateE", !85, i64 0, !40, i64 1, !11, i64 8, !86, i64 40}
!85 = !{!"_ZTSN5arrow10StatusCodeE", !5, i64 0}
!86 = !{!"_ZTSSt10shared_ptrIN5arrow12StatusDetailEE", !87, i64 0}
!87 = !{!"_ZTSSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EE", !88, i64 0, !89, i64 8}
!88 = !{!"p1 _ZTSN5arrow12StatusDetailE", !9, i64 0}
!89 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !90, i64 0}
!90 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !9, i64 0}
!91 = !{i8 0, i8 2}
!92 = !{}
!93 = !{!"branch_weights", i32 1, i32 1048575}
!94 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!95 = !{!89, !90, i64 0}
!96 = !{!97, !4, i64 8}
!97 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !4, i64 8, !4, i64 12}
!98 = !{!97, !4, i64 12}
!99 = distinct !{null, null, null, null}
!100 = distinct !{null}
end_hunk_37
