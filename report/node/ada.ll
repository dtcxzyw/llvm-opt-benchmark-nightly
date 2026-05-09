inline.NumInlined: 8298
inline.NumDeleted: 1222
begin_hunk_0_@_ZN3ada11serializers4ipv4B5cxx11Em:bb.a
  %.ptr33 = getelementptr inbounds nuw i8, ptr %0, i64 31
  store i8 0, ptr %.ptr33, align 1
  %i.b = lshr i64 %1, 24                          ; 2 uses
  %i.c = trunc i64 %i.b to i8                     ; 8 uses
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ult i8 %i.c, 10
  %2 = icmp ult i8 %i.c, 100
  %i.f = select i1 %2, i64 2, i64 3
  %i.g = select i1 %i.e, i64 1, i64 %i.f          ; 2 uses
  %3 = icmp ugt i8 %i.c, 99
  br i1 %3, label %._crit_edge.i.i.thread.i, label %._crit_edge.i.i.i

._crit_edge.i.i.thread.i:                         ; preds = %bb.b
  %i.h = urem i8 %i.c, 100
end_hunk_0
begin_hunk_1_@_ZN3ada11serializers4ipv4B5cxx11Em:bb.a
  %.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.pn29.add ; 4 uses
  store i8 46, ptr %.pn29.ptr35, align 1
  %i.an = lshr i64 %1, 16                         ; 2 uses
  %i.ao = trunc i64 %i.an to i8                   ; 8 uses
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = icmp ult i8 %i.ao, 10
  %4 = icmp ult i8 %i.ao, 100
  %i.ar = select i1 %4, i64 2, i64 3
  %i.as = select i1 %i.aq, i64 1, i64 %i.ar       ; 2 uses
  %5 = icmp ugt i8 %i.ao, 99
  br i1 %5, label %._crit_edge.i.i.thread.i25, label %._crit_edge.i.i.i16

._crit_edge.i.i.thread.i25:                       ; preds = %bb.m
  %i.at = urem i8 %i.ao, 100
end_hunk_1
begin_hunk_2_@_ZN3ada11serializers4ipv4B5cxx11Em:bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.aw ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 1
  %i.az = load i8, ptr %i.ay, align 1
  %i.ba = getelementptr i8, ptr %.ptr, i64 2
  store i8 %i.az, ptr %i.ba, align 1
  %i.bb = load i8, ptr %i.ax, align 2
  %i.bc = getelementptr i8, ptr %.ptr, i64 1
  store i8 %i.bb, ptr %i.bc, align 1
  br label %bb.o

end_hunk_2
begin_hunk_3_@_ZN3ada11serializers4ipv4B5cxx11Em:bb.a
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %0, i64 %.pn29.add.1 ; 4 uses
  store i8 46, ptr %.pn29.ptr, align 1
  %i.bm = lshr i64 %1, 8                          ; 2 uses
  %i.bn = trunc i64 %i.bm to i8                   ; 8 uses
  %i.bo = icmp eq i8 %i.bn, 0
  br i1 %i.bo, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bp = icmp ult i8 %i.bn, 10
  %6 = icmp ult i8 %i.bn, 100
  %i.bq = select i1 %6, i64 2, i64 3
  %i.br = select i1 %i.bp, i64 1, i64 %i.bq       ; 2 uses
  %7 = icmp ugt i8 %i.bn, 99
  br i1 %7, label %._crit_edge.i.i.thread.i25.1, label %._crit_edge.i.i.i16.1

._crit_edge.i.i.i16.1:                            ; preds = %bb.q
  %i.bs = icmp samesign ugt i8 %i.bn, 9
end_hunk_3
begin_hunk_4_@_ZN3ada11serializers4ipv4B5cxx11Em:bb.a
  %i.ce = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.cd ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 1
  %i.cg = load i8, ptr %i.cf, align 1
  %i.ch = getelementptr i8, ptr %.ptr.1, i64 2
  store i8 %i.cg, ptr %i.ch, align 1
  %i.ci = load i8, ptr %i.ce, align 2
  %i.cj = getelementptr i8, ptr %.ptr.1, i64 1
  store i8 %i.ci, ptr %i.cj, align 1
  br label %bb.s

end_hunk_4
begin_hunk_5_@_ZN3ada11serializers4ipv4B5cxx11Em:bb.a
  %.pn29.add.2 = add nuw nsw i64 %.add30.1, 1     ; 2 uses
  %.ptr.2 = getelementptr inbounds nuw i8, ptr %0, i64 %.pn29.add.2 ; 4 uses
  store i8 46, ptr %.pn29.ptr.1, align 1
  %i.cl = trunc i64 %1 to i8                      ; 8 uses
  %i.cm = icmp eq i8 %i.cl, 0
  br i1 %i.cm, label %_ZSt12__to_chars_iIhENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit26.2, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cn = icmp ult i8 %i.cl, 10
  %8 = icmp ult i8 %i.cl, 100
  %i.co = select i1 %8, i64 2, i64 3
  %i.cp = select i1 %i.cn, i64 1, i64 %i.co       ; 2 uses
  %9 = icmp ugt i8 %i.cl, 99
  br i1 %9, label %._crit_edge.i.i.thread.i25.2, label %._crit_edge.i.i.i16.2

._crit_edge.i.i.i16.2:                            ; preds = %bb.u
  %i.cq = icmp samesign ugt i8 %i.cl, 9
end_hunk_5
begin_hunk_6_@_ZN3ada11serializers4ipv4B5cxx11Em:bb.a
  %i.dc = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.db ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 1
  %i.de = load i8, ptr %i.dd, align 1
  %i.df = getelementptr i8, ptr %.ptr.2, i64 2
  store i8 %i.de, ptr %i.df, align 1
  %i.dg = load i8, ptr %i.dc, align 2
  %i.dh = getelementptr i8, ptr %.ptr.2, i64 1
  store i8 %i.dg, ptr %i.dh, align 1
  br label %bb.w

end_hunk_6
