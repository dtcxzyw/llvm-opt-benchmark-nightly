inline.NumInlined: 36272
inline.NumDeleted: 7699
begin_hunk_0_@_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE5applyILNS0_8TypeKindE0EEENS3_10error_codeES6_RNS0_4exec13GenericWriterE:bb.a
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !9611
  %i.af = icmp eq i32 %i.ae, %.sroa.0.sroa.2.0.copyload
  tail call void @llvm.assume(i1 %i.af)
  %2 = icmp samesign ugt i32 %.sroa.0.sroa.2.0.copyload, 1
  tail call void @llvm.assume(i1 %2)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store ptr %i.ag, ptr %i.i, align 8, !tbaa !9613
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE5applyILNS0_8TypeKindE3EEENS3_10error_codeES6_RNS0_4exec13GenericWriterE:bb.a
  %i.j = load i32, ptr %i.i, align 4, !tbaa !9611, !noalias !9882
  %i.k = icmp eq i32 %i.j, %.sroa.0.sroa.2.0.copyload
  tail call void @llvm.assume(i1 %i.k), !noalias !9882
  %3 = icmp samesign ugt i32 %.sroa.0.sroa.2.0.copyload, 1
  tail call void @llvm.assume(i1 %3), !noalias !9882
  %i.l = load i32, ptr %i.g, align 4, !tbaa !3, !noalias !9882
  %i.m = zext i32 %i.l to i64
end_hunk_1
begin_hunk_2_@_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE5applyILNS0_8TypeKindE3EEENS3_10error_codeES6_RNS0_4exec13GenericWriterE:bb.a
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !9611
  %i.ja = icmp eq i32 %i.iz, %.sroa.0.sroa.2.0.copyload
  tail call void @llvm.assume(i1 %i.ja)
  %4 = icmp samesign ugt i32 %.sroa.0.sroa.2.0.copyload, 1
  tail call void @llvm.assume(i1 %4)
  %i.jb = load i32, ptr %i.ix, align 4, !tbaa !3
  %i.jc = zext i32 %i.jb to i64
end_hunk_2
begin_hunk_3_@_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE5applyILNS0_8TypeKindE3EEENS3_10error_codeES6_RNS0_4exec13GenericWriterE:bb.a
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !9611
  %i.jv = icmp eq i32 %i.ju, %.sroa.0.sroa.2.0.copyload
  tail call void @llvm.assume(i1 %i.jv)
  %5 = icmp samesign ugt i32 %.sroa.0.sroa.2.0.copyload, 1
  tail call void @llvm.assume(i1 %5)
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ix, i64 4
  store ptr %i.jw, ptr %i.iw, align 8, !tbaa !9613
end_hunk_3
begin_hunk_4_@_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE5applyILNS0_8TypeKindE1EEENS3_10error_codeES6_RNS0_4exec13GenericWriterE:bb.a
  %i.j = load i32, ptr %i.i, align 4, !tbaa !9611, !noalias !9903
  %i.k = icmp eq i32 %i.j, %.sroa.0.sroa.2.0.copyload
  tail call void @llvm.assume(i1 %i.k), !noalias !9903
  %3 = icmp samesign ugt i32 %.sroa.0.sroa.2.0.copyload, 1
  tail call void @llvm.assume(i1 %3), !noalias !9903
  %i.l = load i32, ptr %i.g, align 4, !tbaa !3, !noalias !9903
  %i.m = zext i32 %i.l to i64
end_hunk_4
begin_hunk_5_@_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE5applyILNS0_8TypeKindE1EEENS3_10error_codeES6_RNS0_4exec13GenericWriterE:bb.a
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !9611
  %i.je = icmp eq i32 %i.jd, %.sroa.0.sroa.2.0.copyload
  tail call void @llvm.assume(i1 %i.je)
  %4 = icmp samesign ugt i32 %.sroa.0.sroa.2.0.copyload, 1
  tail call void @llvm.assume(i1 %4)
  %i.jf = load i32, ptr %i.jb, align 4, !tbaa !3
  %i.jg = zext i32 %i.jf to i64
end_hunk_5
begin_hunk_6_@_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE5applyILNS0_8TypeKindE1EEENS3_10error_codeES6_RNS0_4exec13GenericWriterE:bb.a
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !9611
  %i.jz = icmp eq i32 %i.jy, %.sroa.0.sroa.2.0.copyload
  tail call void @llvm.assume(i1 %i.jz)
  %5 = icmp samesign ugt i32 %.sroa.0.sroa.2.0.copyload, 1
  tail call void @llvm.assume(i1 %5)
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jb, i64 4
  store ptr %i.ka, ptr %i.ja, align 8, !tbaa !9613
end_hunk_6
begin_hunk_7_@_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE5applyILNS0_8TypeKindE2EEENS3_10error_codeES6_RNS0_4exec13GenericWriterE:bb.a
  %i.j = load i32, ptr %i.i, align 4, !tbaa !9611, !noalias !9924
  %i.k = icmp eq i32 %i.j, %.sroa.0.sroa.2.0.copyload
  tail call void @llvm.assume(i1 %i.k), !noalias !9924
  %3 = icmp samesign ugt i32 %.sroa.0.sroa.2.0.copyload, 1
  tail call void @llvm.assume(i1 %3), !noalias !9924
  %i.l = load i32, ptr %i.g, align 4, !tbaa !3, !noalias !9924
  %i.m = zext i32 %i.l to i64
end_hunk_7
begin_hunk_8_@_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE5applyILNS0_8TypeKindE2EEENS3_10error_codeES6_RNS0_4exec13GenericWriterE:bb.a
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !9611
  %i.je = icmp eq i32 %i.jd, %.sroa.0.sroa.2.0.copyload
  tail call void @llvm.assume(i1 %i.je)
  %4 = icmp samesign ugt i32 %.sroa.0.sroa.2.0.copyload, 1
  tail call void @llvm.assume(i1 %4)
  %i.jf = load i32, ptr %i.jb, align 4, !tbaa !3
  %i.jg = zext i32 %i.jf to i64
end_hunk_8
begin_hunk_9_@_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE5applyILNS0_8TypeKindE2EEENS3_10error_codeES6_RNS0_4exec13GenericWriterE:bb.a
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !9611
  %i.jz = icmp eq i32 %i.jy, %.sroa.0.sroa.2.0.copyload
  tail call void @llvm.assume(i1 %i.jz)
  %5 = icmp samesign ugt i32 %.sroa.0.sroa.2.0.copyload, 1
  tail call void @llvm.assume(i1 %5)
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jb, i64 4
  store ptr %i.ka, ptr %i.ja, align 8, !tbaa !9613
end_hunk_9
begin_hunk_10_@_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE5applyILNS0_8TypeKindE4EEENS3_10error_codeES6_RNS0_4exec13GenericWriterE:bb.a
  %i.j = load i32, ptr %i.i, align 4, !tbaa !9611, !noalias !9945
  %i.k = icmp eq i32 %i.j, %.sroa.0.sroa.2.0.copyload
  tail call void @llvm.assume(i1 %i.k), !noalias !9945
  %3 = icmp samesign ugt i32 %.sroa.0.sroa.2.0.copyload, 1
  tail call void @llvm.assume(i1 %3), !noalias !9945
  %i.l = load i32, ptr %i.g, align 4, !tbaa !3, !noalias !9945
  %i.m = zext i32 %i.l to i64
end_hunk_10
begin_hunk_11_@_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE5applyILNS0_8TypeKindE4EEENS3_10error_codeES6_RNS0_4exec13GenericWriterE:bb.a
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !9611
  %i.is = icmp eq i32 %i.ir, %.sroa.0.sroa.2.0.copyload
  tail call void @llvm.assume(i1 %i.is)
  %4 = icmp samesign ugt i32 %.sroa.0.sroa.2.0.copyload, 1
  tail call void @llvm.assume(i1 %4)
  %i.it = load i32, ptr %i.ip, align 4, !tbaa !3
  %i.iu = zext i32 %i.it to i64
end_hunk_11
begin_hunk_12_@_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE5applyILNS0_8TypeKindE4EEENS3_10error_codeES6_RNS0_4exec13GenericWriterE:bb.a
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !9611
  %i.jo = icmp eq i32 %i.jn, %.sroa.0.sroa.2.0.copyload
  tail call void @llvm.assume(i1 %i.jo)
  %5 = icmp samesign ugt i32 %.sroa.0.sroa.2.0.copyload, 1
  tail call void @llvm.assume(i1 %5)
  %i.jp = getelementptr inbounds nuw i8, ptr %i.ip, i64 4
  store ptr %i.jp, ptr %i.io, align 8, !tbaa !9613
end_hunk_12
begin_hunk_13_@_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE5applyILNS0_8TypeKindE5EEENS3_10error_codeES6_RNS0_4exec13GenericWriterE:bb.a
  %i.j = load i32, ptr %i.i, align 4, !tbaa !9611
  %i.k = icmp eq i32 %i.j, %.sroa.0.sroa.2.0.copyload
  tail call void @llvm.assume(i1 %i.k)
  %3 = icmp samesign ugt i32 %.sroa.0.sroa.2.0.copyload, 1
  tail call void @llvm.assume(i1 %3)
  %i.l = load i32, ptr %i.g, align 4, !tbaa !3
  %i.m = zext i32 %i.l to i64                     ; 2 uses
end_hunk_13
begin_hunk_14_@_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE5applyILNS0_8TypeKindE5EEENS3_10error_codeES6_RNS0_4exec13GenericWriterE:bb.a
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !9611
  %i.gj = icmp eq i32 %i.gi, %.sroa.0.sroa.2.0.copyload
  tail call void @llvm.assume(i1 %i.gj)
  %4 = icmp samesign ugt i32 %.sroa.0.sroa.2.0.copyload, 1
  tail call void @llvm.assume(i1 %4)
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gf, i64 4
  store ptr %i.gk, ptr %i.f, align 8, !tbaa !9613
end_hunk_14
begin_hunk_15_@_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE5applyILNS0_8TypeKindE5EEENS3_10error_codeES6_RNS0_4exec13GenericWriterE:bb.a
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !9611
  %i.ha = icmp eq i32 %i.gz, %.sroa.0.sroa.2.0.copyload
  tail call void @llvm.assume(i1 %i.ha)
  %5 = icmp samesign ugt i32 %.sroa.0.sroa.2.0.copyload, 1
  tail call void @llvm.assume(i1 %5)
  %i.hb = load i32, ptr %i.gx, align 4, !tbaa !3
  %i.hc = zext i32 %i.hb to i64
end_hunk_15
begin_hunk_16_@_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE5applyILNS0_8TypeKindE5EEENS3_10error_codeES6_RNS0_4exec13GenericWriterE:bb.a
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !9611
  %i.hv = icmp eq i32 %i.hu, %.sroa.0.sroa.2.0.copyload
  tail call void @llvm.assume(i1 %i.hv)
  %6 = icmp samesign ugt i32 %.sroa.0.sroa.2.0.copyload, 1
  tail call void @llvm.assume(i1 %6)
  %i.hw = getelementptr inbounds nuw i8, ptr %i.gx, i64 4
  store ptr %i.hw, ptr %i.gw, align 8, !tbaa !9613
end_hunk_16
begin_hunk_17_@_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE5applyILNS0_8TypeKindE6EEENS3_10error_codeES6_RNS0_4exec13GenericWriterE:bb.a
  %i.j = load i32, ptr %i.i, align 4, !tbaa !9611
  %i.k = icmp eq i32 %i.j, %.sroa.0.sroa.2.0.copyload
  tail call void @llvm.assume(i1 %i.k)
  %3 = icmp samesign ugt i32 %.sroa.0.sroa.2.0.copyload, 1
  tail call void @llvm.assume(i1 %3)
  %i.l = load i32, ptr %i.g, align 4, !tbaa !3
  %i.m = zext i32 %i.l to i64                     ; 2 uses
end_hunk_17
begin_hunk_18_@_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE5applyILNS0_8TypeKindE6EEENS3_10error_codeES6_RNS0_4exec13GenericWriterE:bb.a
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !9611
  %i.gj = icmp eq i32 %i.gi, %.sroa.0.sroa.2.0.copyload
  tail call void @llvm.assume(i1 %i.gj)
  %4 = icmp samesign ugt i32 %.sroa.0.sroa.2.0.copyload, 1
  tail call void @llvm.assume(i1 %4)
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gf, i64 4
  store ptr %i.gk, ptr %i.f, align 8, !tbaa !9613
end_hunk_18
begin_hunk_19_@_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE5applyILNS0_8TypeKindE6EEENS3_10error_codeES6_RNS0_4exec13GenericWriterE:bb.a
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !9611
  %i.gv = icmp eq i32 %i.gu, %.sroa.0.sroa.2.0.copyload
  tail call void @llvm.assume(i1 %i.gv)
  %5 = icmp samesign ugt i32 %.sroa.0.sroa.2.0.copyload, 1
  tail call void @llvm.assume(i1 %5)
  %i.gw = load i32, ptr %i.gs, align 4, !tbaa !3
  %i.gx = zext i32 %i.gw to i64
end_hunk_19
begin_hunk_20_@_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE5applyILNS0_8TypeKindE6EEENS3_10error_codeES6_RNS0_4exec13GenericWriterE:bb.a
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !9611
  %i.hq = icmp eq i32 %i.hp, %.sroa.0.sroa.2.0.copyload
  tail call void @llvm.assume(i1 %i.hq)
  %6 = icmp samesign ugt i32 %.sroa.0.sroa.2.0.copyload, 1
  tail call void @llvm.assume(i1 %6)
  %i.hr = getelementptr inbounds nuw i8, ptr %i.gs, i64 4
  store ptr %i.hr, ptr %i.gr, align 8, !tbaa !9613
end_hunk_20
