inline.NumInlined: 193
inline.NumDeleted: 117
begin_hunk_0_@_ZN7WriteXY5writeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKdS9_S9_:bb.a
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 48
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = invoke noundef signext i8 %i.bz(ptr noundef nonnull align 8 dereferenceable(570) %i.bs, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %bb.u, !inline_history !70

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc116, %bb.n
  %.0.i.i.i = phi i8 [ %i.bw, %bb.n ], [ %i.ca, %.noexc116 ]
end_hunk_0
begin_hunk_1_@_ZN7WriteXY5writeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKdS9_S9_:bb.a
  %i.cq = load i64, ptr %i.cp, align 8
  %i.cr = getelementptr inbounds i8, ptr %6, i64 %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  store i64 5, ptr %i.cs, align 8, !tbaa !71
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ct = trunc nuw i64 %indvars.iv.next to i32
  %i.cu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef %i.ct)
end_hunk_1
begin_hunk_2_@_ZN7WriteXY5writeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKdS9_S9_:bb.a
  %i.cx = load i64, ptr %i.cw, align 8
  %i.cy = getelementptr inbounds i8, ptr %i.cu, i64 %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  store i64 18, ptr %i.cz, align 8, !tbaa !71
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0189.0211228, i64 %indvars.iv
  %i.db = load double, ptr %i.da, align 8, !tbaa !29
  %i.dc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.cu, double noundef %i.db)
end_hunk_2
begin_hunk_3_@_ZN7WriteXY5writeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKdS9_S9_:bb.a
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 48
  %i.dp = load ptr, ptr %i.do, align 8
  %i.dq = invoke noundef signext i8 %i.dp(ptr noundef nonnull align 8 dereferenceable(570) %i.di, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i123 unwind label %.loopexit275, !inline_history !70

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i123: ; preds = %.noexc126, %bb.y
  %.0.i.i.i124 = phi i8 [ %i.dm, %bb.y ], [ %i.dq, %.noexc126 ]
end_hunk_3
begin_hunk_4_@_ZN7WriteXY5writeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKdS9_S9_:bb.a
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 48
  %i.ef = load ptr, ptr %i.ee, align 8
  %i.eg = invoke noundef signext i8 %i.ef(ptr noundef nonnull align 8 dereferenceable(570) %i.dy, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i134 unwind label %bb.u, !inline_history !70

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i134: ; preds = %.noexc137, %bb.aa
  %.0.i.i.i135 = phi i8 [ %i.ec, %bb.aa ], [ %i.eg, %.noexc137 ]
end_hunk_4
begin_hunk_5_@_ZN7WriteXY5writeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKdS9_S9_:bb.a
  %i.ep = load i64, ptr %i.eo, align 8
  %i.eq = getelementptr inbounds i8, ptr %6, i64 %i.ep
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  store i64 5, ptr %i.er, align 8, !tbaa !71
  %indvars.iv.next282 = add nuw nsw i64 %indvars.iv281, 1 ; 2 uses
  %i.es = trunc nuw i64 %indvars.iv.next282 to i32
  %i.et = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef %i.es)
end_hunk_5
begin_hunk_6_@_ZN7WriteXY5writeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKdS9_S9_:bb.a
  %i.ew = load i64, ptr %i.ev, align 8
  %i.ex = getelementptr inbounds i8, ptr %i.et, i64 %i.ew
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  store i64 18, ptr %i.ey, align 8, !tbaa !71
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0181.0234, i64 %indvars.iv281
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !29
  %i.fb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.et, double noundef %i.fa)
end_hunk_6
begin_hunk_7_@_ZN7WriteXY5writeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKdS9_S9_:bb.a
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 48
  %i.fo = load ptr, ptr %i.fn, align 8
  %i.fp = invoke noundef signext i8 %i.fo(ptr noundef nonnull align 8 dereferenceable(570) %i.fh, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i145 unwind label %.loopexit270, !inline_history !70

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i145: ; preds = %.noexc148, %bb.ag
  %.0.i.i.i146 = phi i8 [ %i.fl, %bb.ag ], [ %i.fp, %.noexc148 ]
end_hunk_7
begin_hunk_8_@_ZN7WriteXY5writeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKdS9_S9_:bb.a
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 48
  %i.ge = load ptr, ptr %i.gd, align 8
  %i.gf = invoke noundef signext i8 %i.ge(ptr noundef nonnull align 8 dereferenceable(570) %i.fx, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i156 unwind label %bb.u, !inline_history !70

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i156: ; preds = %.noexc159, %bb.ai
  %.0.i.i.i157 = phi i8 [ %i.gb, %bb.ai ], [ %i.gf, %.noexc159 ]
end_hunk_8
begin_hunk_9_@_ZN7WriteXY5writeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKdS9_S9_:bb.a
  %i.gp = load i64, ptr %i.go, align 8
  %i.gq = getelementptr inbounds i8, ptr %6, i64 %i.gp ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 32
  %i.gs = load i32, ptr %i.gr, align 8, !tbaa !72
  %i.gt = or i32 %i.gs, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.gq, i32 noundef %i.gt)
          to label %_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv.exit unwind label %bb.u
end_hunk_9
begin_hunk_10_@_ZN7WriteXY5writeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKdS9_S9_:bb.a
  %i.gw = load i64, ptr %i.gv, align 8
  %i.gx = getelementptr inbounds i8, ptr %6, i64 %i.gw
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  store i64 5, ptr %i.gy, align 8, !tbaa !71
  %indvars.iv.next285 = add nuw nsw i64 %indvars.iv284, 1 ; 2 uses
  %i.gz = trunc nuw i64 %indvars.iv.next285 to i32
  %i.ha = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef %i.gz)
end_hunk_10
begin_hunk_11_@_ZN7WriteXY5writeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKdS9_S9_:bb.a
  %i.hd = load i64, ptr %i.hc, align 8
  %i.he = getelementptr inbounds i8, ptr %i.ha, i64 %i.hd
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  store i64 18, ptr %i.hf, align 8, !tbaa !71
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0175.0, i64 %indvars.iv284
  %i.hh = load double, ptr %i.hg, align 8, !tbaa !29
  %i.hi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ha, double noundef %i.hh)
end_hunk_11
begin_hunk_12_@_ZN7WriteXY5writeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKdS9_S9_:bb.a
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 48
  %i.hv = load ptr, ptr %i.hu, align 8
  %i.hw = invoke noundef signext i8 %i.hv(ptr noundef nonnull align 8 dereferenceable(570) %i.ho, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i167 unwind label %.loopexit, !inline_history !70

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i167: ; preds = %.noexc170, %bb.ap
  %.0.i.i.i168 = phi i8 [ %i.hs, %bb.ap ], [ %i.hw, %.noexc170 ]
end_hunk_12
begin_hunk_13_@llvm.memset.p0.i64
!67 = !{!"_ZTSNSt6locale5facetE", !5, i64 8}
!68 = !{!"p1 _ZTS15__locale_struct", !11, i64 0}
!69 = !{!"p1 short", !11, i64 0}
!70 = distinct !{null, null}
!71 = !{!48, !38, i64 16}
!72 = !{!48, !50, i64 32}
end_hunk_13
