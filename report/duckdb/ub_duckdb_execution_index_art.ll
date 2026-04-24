inline.NumInlined: 6662
inline.NumDeleted: 2963
begin_hunk_0_@_ZNK6duckdb4Node8ToStringB5cxx11ERNS_3ARTERKNS_15ToStringOptionsE:bb.a
bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #31
  %i.mh = load i8, ptr %i.a, align 1, !tbaa !45   ; 11 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1143)
  %i.mi = load i8, ptr %i.h, align 8, !tbaa !1092, !range !423, !noalias !1143, !noundef !36
  %i.mj = trunc nuw i8 %i.mi to i1
end_hunk_0
begin_hunk_1_@_ZNK6duckdb4Node8ToStringB5cxx11ERNS_3ARTERKNS_15ToStringOptionsE:bb.a
_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i:  ; preds = %bb.be, %bb.bd
  call void @llvm.experimental.noalias.scope.decl(metadata !1146)
  %i.mo = icmp ult i8 %i.mh, 10
  %30 = icmp ugt i8 %i.mh, 99                     ; 3 uses
  %i.mp = select i1 %30, i64 3, i64 2
  %.2.i = zext i1 %30 to i64
  %i.mq = select i1 %i.mo, i64 1, i64 %i.mp
  store ptr %i.md, ptr %17, align 8, !tbaa !126, !alias.scope !1149
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %17, i64 noundef %i.mq, i8 noundef signext 45)
end_hunk_1
begin_hunk_2_@_ZNK6duckdb4Node8ToStringB5cxx11ERNS_3ARTERKNS_15ToStringOptionsE:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit.i.i: ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i
  %i.mr = load ptr, ptr %17, align 8, !tbaa !127, !alias.scope !1149 ; 4 uses
  br i1 %30, label %._crit_edge.i.i.thread.i, label %._crit_edge.i.i.i

._crit_edge.i.i.thread.i:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit.i.i
  %i.ms = urem i8 %i.mh, 100
end_hunk_2
begin_hunk_3_@_ZNK6duckdb4Node8ToStringB5cxx11ERNS_3ARTERKNS_15ToStringOptionsE:bb.a
  %i.mw = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.mv ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 1
  %i.my = load i8, ptr %i.mx, align 1, !tbaa !45, !noalias !1149
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mr, i64 2
  store i8 %i.my, ptr %i.mz, align 1, !tbaa !45
  %i.na = load i8, ptr %i.mw, align 2, !tbaa !45, !noalias !1149
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mr, i64 %.2.i
  store i8 %i.na, ptr %i.nb, align 1, !tbaa !45
  br label %bb.bh

end_hunk_3
begin_hunk_4_@_ZNK6duckdb4Node8ToStringB5cxx11ERNS_3ARTERKNS_15ToStringOptionsE:bb.a

bb.cd:                                            ; preds = %bb.cb, %bb.bz, %bb.bx
  %.085 = phi i32 [ 0, %bb.bx ], [ %i.pt, %bb.cb ], [ 0, %bb.bz ]
  %.084 = phi i64 [ 0, %bb.bx ], [ 1, %bb.cb ], [ 0, %bb.bz ]
  %.084.a = phi i1 [ false, %bb.bx ], [ true, %bb.cb ], [ false, %bb.bz ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  store i8 0, ptr %i.b, align 1, !tbaa !45
  %i.pv = invoke ptr @_ZN6duckdb20GetNextChildInternalIKNS_4NodeEEENS_12optional_ptrIS1_Lb0EEERNS_3ARTERT_Rh(ptr noundef nonnull align 8 dereferenceable(433) %2, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
end_hunk_4
begin_hunk_5_@_ZNK6duckdb4Node8ToStringB5cxx11ERNS_3ARTERKNS_15ToStringOptionsE:bb.a
  %i.pw = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.px = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.py = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.pz = getelementptr inbounds nuw i8, ptr %18, i64 32
  %i.qa = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.qb = getelementptr inbounds nuw i8, ptr %18, i64 40
end_hunk_5
begin_hunk_6_@_ZNK6duckdb4Node8ToStringB5cxx11ERNS_3ARTERKNS_15ToStringOptionsE:bb.a
  store i64 %i.qx, ptr %18, align 8, !tbaa !1088
  store i8 %i.l, ptr %i.px, align 8, !tbaa !1092
  %i.qy = load i64, ptr %i.py, align 8
  %i.qz = add i64 %i.qy, %.084
  store i64 %i.qz, ptr %i.pz, align 8, !tbaa !1155
  %i.ra = load i64, ptr %i.qa, align 8, !tbaa !1099
  %i.rb = call i64 @llvm.usub.sat.i64(i64 %i.ra, i64 1)
end_hunk_6
begin_hunk_7_@_ZNK6duckdb4Node8ToStringB5cxx11ERNS_3ARTERKNS_15ToStringOptionsE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #31
  %i.rf = load i8, ptr %i.b, align 1, !tbaa !45   ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1156)
  %i.rg = load i8, ptr %i.h, align 8, !tbaa !1092, !range !423, !noalias !1156, !noundef !36
  %i.rh = trunc nuw i8 %i.rg to i1
end_hunk_7
begin_hunk_8_@_ZNK6duckdb4Node8ToStringB5cxx11ERNS_3ARTERKNS_15ToStringOptionsE:bb.a
_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i320: ; preds = %bb.ch, %"_ZZNK6duckdb4Node8ToStringB5cxx11ERNS_3ARTERKNS_15ToStringOptionsEENK3$_0clERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit318"
  call void @llvm.experimental.noalias.scope.decl(metadata !1159)
  %i.rm = icmp ult i8 %i.rf, 10
  %31 = icmp ugt i8 %i.rf, 99                     ; 3 uses
  %i.rn = select i1 %31, i64 3, i64 2
  %.2.i323 = zext i1 %31 to i64
  %i.ro = select i1 %i.rm, i64 1, i64 %i.rn
  store ptr %i.qd, ptr %23, align 8, !tbaa !126, !alias.scope !1162
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %23, i64 noundef %i.ro, i8 noundef signext 45)
end_hunk_8
begin_hunk_9_@_ZNK6duckdb4Node8ToStringB5cxx11ERNS_3ARTERKNS_15ToStringOptionsE:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit.i.i322: ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i320
  %i.rp = load ptr, ptr %23, align 8, !tbaa !127, !alias.scope !1162 ; 4 uses
  br i1 %31, label %._crit_edge.i.i.thread.i327, label %._crit_edge.i.i.i323

._crit_edge.i.i.thread.i327:                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit.i.i322
  %i.rq = urem i8 %i.rf, 100
end_hunk_9
begin_hunk_10_@_ZNK6duckdb4Node8ToStringB5cxx11ERNS_3ARTERKNS_15ToStringOptionsE:bb.a
  %i.ru = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.rt ; 2 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 1
  %i.rw = load i8, ptr %i.rv, align 1, !tbaa !45, !noalias !1162
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rp, i64 2
  store i8 %i.rw, ptr %i.rx, align 1, !tbaa !45
  %i.ry = load i8, ptr %i.ru, align 2, !tbaa !45, !noalias !1162
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rp, i64 %.2.i323
  store i8 %i.ry, ptr %i.rz, align 1, !tbaa !45
  br label %bb.ck

end_hunk_10
begin_hunk_11_@_ZNK6duckdb4Node8ToStringB5cxx11ERNS_3ARTERKNS_15ToStringOptionsE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #31
  %i.vs = load i8, ptr %i.b, align 1, !tbaa !45   ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1172)
  %i.vt = load i8, ptr %i.h, align 8, !tbaa !1092, !range !423, !noalias !1172, !noundef !36
  %i.vu = trunc nuw i8 %i.vt to i1
end_hunk_11
begin_hunk_12_@_ZNK6duckdb4Node8ToStringB5cxx11ERNS_3ARTERKNS_15ToStringOptionsE:bb.a
_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i382: ; preds = %bb.dj, %"_ZZNK6duckdb4Node8ToStringB5cxx11ERNS_3ARTERKNS_15ToStringOptionsEENK3$_0clERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit380"
  call void @llvm.experimental.noalias.scope.decl(metadata !1175)
  %i.vz = icmp ult i8 %i.vs, 10
  %32 = icmp ugt i8 %i.vs, 99                     ; 3 uses
  %i.wa = select i1 %32, i64 3, i64 2
  %.2.i388 = zext i1 %32 to i64
  %i.wb = select i1 %i.vz, i64 1, i64 %i.wa
  store ptr %i.qn, ptr %26, align 8, !tbaa !126, !alias.scope !1178
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %26, i64 noundef %i.wb, i8 noundef signext 45)
end_hunk_12
begin_hunk_13_@_ZNK6duckdb4Node8ToStringB5cxx11ERNS_3ARTERKNS_15ToStringOptionsE:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit.i.i384: ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i382
  %i.wc = load ptr, ptr %26, align 8, !tbaa !127, !alias.scope !1178 ; 4 uses
  br i1 %32, label %._crit_edge.i.i.thread.i389, label %._crit_edge.i.i.i385

._crit_edge.i.i.thread.i389:                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit.i.i384
  %i.wd = urem i8 %i.vs, 100
end_hunk_13
begin_hunk_14_@_ZNK6duckdb4Node8ToStringB5cxx11ERNS_3ARTERKNS_15ToStringOptionsE:bb.a
  %i.wh = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.wg ; 2 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wh, i64 1
  %i.wj = load i8, ptr %i.wi, align 1, !tbaa !45, !noalias !1178
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wc, i64 2
  store i8 %i.wj, ptr %i.wk, align 1, !tbaa !45
  %i.wl = load i8, ptr %i.wh, align 2, !tbaa !45, !noalias !1178
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wc, i64 %.2.i388
  store i8 %i.wl, ptr %i.wm, align 1, !tbaa !45
  br label %bb.dm

end_hunk_14
begin_hunk_15_@_ZN6duckdb4Leaf18DeprecatedToStringB5cxx11ERNS_3ARTERKNS_4NodeERKNS_15ToStringOptionsE:._crit_edge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.ac = load i8, ptr %i.y, align 8, !tbaa !1543 ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1570)
  %i.ad = icmp ult i8 %i.ac, 10
  %9 = icmp ugt i8 %i.ac, 99                      ; 4 uses
  %. = select i1 %9, i64 3, i64 2
  %.106 = select i1 %9, i64 2, i64 1
  %i.ae = zext i1 %9 to i64
  %i.af = select i1 %i.ad, i64 1, i64 %.
  store ptr %i.h, ptr %6, align 8, !tbaa !126, !alias.scope !1570
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.af, i8 noundef signext 45)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit.i unwind label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit.i: ; preds = %"_ZZN6duckdb4Leaf18DeprecatedToStringB5cxx11ERNS_3ARTERKNS_4NodeERKNS_15ToStringOptionsEENK3$_0clERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit35"
  %i.ag = load ptr, ptr %6, align 8, !tbaa !127, !alias.scope !1570 ; 4 uses
  br i1 %9, label %._crit_edge.i.i36.thread, label %._crit_edge.i.i36

._crit_edge.i.i36.thread:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit.i
  %i.ah = urem i8 %i.ac, 100
end_hunk_15
begin_hunk_16_@_ZN6duckdb4Leaf18DeprecatedToStringB5cxx11ERNS_3ARTERKNS_4NodeERKNS_15ToStringOptionsE:._crit_edge.i.i
  %i.al = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.ak ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  %i.an = load i8, ptr %i.am, align 1, !tbaa !45, !noalias !1570
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.106
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !45
  %i.ap = load i8, ptr %i.al, align 2, !tbaa !45, !noalias !1570
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ae
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !45
  br label %bb.g

end_hunk_16
begin_hunk_17_@_ZN6duckdb17ConstPrefixHandle8ToStringB5cxx11ERNS_3ARTERKNS_4NodeERKNS_15ToStringOptionsE:._crit_edge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.0835.i.i
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !45  ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1654)
  %i.ae = load i8, ptr %i.l, align 8, !tbaa !1092, !range !423, !noalias !1654, !noundef !36
  %i.af = trunc nuw i8 %i.ae to i1
end_hunk_17
begin_hunk_18_@_ZN6duckdb17ConstPrefixHandle8ToStringB5cxx11ERNS_3ARTERKNS_4NodeERKNS_15ToStringOptionsE:._crit_edge.i.i
_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i.i.i: ; preds = %bb.d, %.lr.ph.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1657)
  %i.ak = icmp ult i8 %i.ad, 10
  %11 = icmp ugt i8 %i.ad, 99                     ; 3 uses
  %i.al = select i1 %11, i64 3, i64 2
  %.2.i.i.i = zext i1 %11 to i64
  %i.am = select i1 %i.ak, i64 1, i64 %i.al
  store ptr %i.f, ptr %5, align 8, !tbaa !126, !alias.scope !1660
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.am, i8 noundef signext 45)
end_hunk_18
begin_hunk_19_@_ZN6duckdb17ConstPrefixHandle8ToStringB5cxx11ERNS_3ARTERKNS_4NodeERKNS_15ToStringOptionsE:._crit_edge.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit.i.i.i.i: ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i.i.i
  %i.an = load ptr, ptr %5, align 8, !tbaa !127, !alias.scope !1660 ; 4 uses
  br i1 %11, label %._crit_edge.i.i.thread.i.i.i, label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.thread.i.i.i:                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit.i.i.i.i
  %i.ao = urem i8 %i.ad, 100
end_hunk_19
begin_hunk_20_@_ZN6duckdb17ConstPrefixHandle8ToStringB5cxx11ERNS_3ARTERKNS_4NodeERKNS_15ToStringOptionsE:._crit_edge.i.i
  %i.as = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  %i.au = load i8, ptr %i.at, align 1, !tbaa !45, !noalias !1660
  %i.av = getelementptr inbounds nuw i8, ptr %i.an, i64 2
  store i8 %i.au, ptr %i.av, align 1, !tbaa !45
  %i.aw = load i8, ptr %i.as, align 2, !tbaa !45, !noalias !1660
  %i.ax = getelementptr inbounds nuw i8, ptr %i.an, i64 %.2.i.i.i
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !45
  br label %bb.g

end_hunk_20
