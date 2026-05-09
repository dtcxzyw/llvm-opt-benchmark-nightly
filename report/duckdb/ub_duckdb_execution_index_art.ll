inline.NumInlined: 6662
inline.NumDeleted: 2963
begin_hunk_0_@_ZNK6duckdb4Node8ToStringB5cxx11ERNS_3ARTERKNS_15ToStringOptionsE:bb.a
  %i.my = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.mx ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 1
  %i.na = load i8, ptr %i.mz, align 1, !tbaa !45, !noalias !1149
  %i.nb = getelementptr inbounds nuw i8, ptr %i.ms, i64 2
  store i8 %i.na, ptr %i.nb, align 1, !tbaa !45
  %i.nc = load i8, ptr %i.my, align 2, !tbaa !45, !noalias !1149
  %i.nd = getelementptr inbounds nuw i8, ptr %i.ms, i64 1
  store i8 %i.nc, ptr %i.nd, align 1, !tbaa !45
  br label %bb.bh

end_hunk_0
begin_hunk_1_@_ZNK6duckdb4Node8ToStringB5cxx11ERNS_3ARTERKNS_15ToStringOptionsE:bb.a
  %i.rz = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.ry ; 2 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 1
  %i.sb = load i8, ptr %i.sa, align 1, !tbaa !45, !noalias !1162
  %i.sc = getelementptr inbounds nuw i8, ptr %i.rt, i64 2
  store i8 %i.sb, ptr %i.sc, align 1, !tbaa !45
  %i.sd = load i8, ptr %i.rz, align 2, !tbaa !45, !noalias !1162
  %i.se = getelementptr inbounds nuw i8, ptr %i.rt, i64 1
  store i8 %i.sd, ptr %i.se, align 1, !tbaa !45
  br label %bb.ck

end_hunk_1
begin_hunk_2_@_ZNK6duckdb4Node8ToStringB5cxx11ERNS_3ARTERKNS_15ToStringOptionsE:bb.a
  %i.wo = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.wn ; 2 uses
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wo, i64 1
  %i.wq = load i8, ptr %i.wp, align 1, !tbaa !45, !noalias !1178
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wi, i64 2
  store i8 %i.wq, ptr %i.wr, align 1, !tbaa !45
  %i.ws = load i8, ptr %i.wo, align 2, !tbaa !45, !noalias !1178
  %i.wt = getelementptr inbounds nuw i8, ptr %i.wi, i64 1
  store i8 %i.ws, ptr %i.wt, align 1, !tbaa !45
  br label %bb.dm

end_hunk_2
begin_hunk_3_@_ZN6duckdb4Leaf18DeprecatedToStringB5cxx11ERNS_3ARTERKNS_4NodeERKNS_15ToStringOptionsE:._crit_edge.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1570)
  %i.ad = icmp ult i8 %i.ac, 10
  %i.ae = icmp ult i8 %i.ac, 100
  %9 = select i1 %i.ae, i64 2, i64 3
  %i.af = select i1 %i.ad, i64 1, i64 %9
  store ptr %i.h, ptr %6, align 8, !tbaa !126, !alias.scope !1570
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.af, i8 noundef signext 45)
end_hunk_3
begin_hunk_4_@_ZN6duckdb4Leaf18DeprecatedToStringB5cxx11ERNS_3ARTERKNS_4NodeERKNS_15ToStringOptionsE:._crit_edge.i.i
  %i.am = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.al ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 1
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !45, !noalias !1570
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 2
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !45
  %i.aq = load i8, ptr %i.am, align 2, !tbaa !45, !noalias !1570
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !45
  br label %bb.g

end_hunk_4
begin_hunk_5_@_ZN6duckdb17ConstPrefixHandle8ToStringB5cxx11ERNS_3ARTERKNS_4NodeERKNS_15ToStringOptionsE:._crit_edge.i.i
  %i.au = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.at ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !45, !noalias !1660
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ao, i64 2
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !45
  %i.ay = load i8, ptr %i.au, align 2, !tbaa !45, !noalias !1660
  %i.az = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  store i8 %i.ay, ptr %i.az, align 1, !tbaa !45
  br label %bb.g

end_hunk_5
