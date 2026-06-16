inline.NumInlined: 651
inline.NumDeleted: 356
begin_hunk_0_@_ZN8facebook5velox9functions13extractObjectERN8simdjson8fallback8ondemand5valueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt8optionalIS5_E:bb.a
  %i.dl = zext i32 %i.dk to i64
  %i.dm = getelementptr inbounds nuw i8, ptr %.pre397, i64 %i.dl
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !31
  switch i8 %i.dn, label %bb.x [
    i8 91, label %bb.v
    i8 123, label %bb.v
    i8 93, label %bb.w
    i8 125, label %bb.w
  ]

bb.v:                                             ; preds = %.lr.ph, %.lr.ph
  %i.do = add nuw nsw i32 %i.dh, 1                ; 2 uses
  store i32 %i.do, ptr %i.al, align 4, !tbaa !84
  br label %bb.x

bb.w:                                             ; preds = %.lr.ph, %.lr.ph
  %i.dp = add nsw i32 %i.dh, -1                   ; 4 uses
  store i32 %i.dp, ptr %i.al, align 4, !tbaa !84
  %.not8.i48 = icmp sgt i32 %i.dp, %.sroa.4165.0.copyload
  br i1 %.not8.i48, label %bb.x, label %.loopexit

bb.x:                                             ; preds = %.lr.ph, %bb.w, %bb.v
  %i.dq = phi i32 [ %i.dh, %.lr.ph ], [ %i.dp, %bb.w ], [ %i.do, %bb.v ] ; 2 uses
  %i.dr = load ptr, ptr %i.dc, align 8, !tbaa !88
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %i.dd
  %i.dt = icmp ult ptr %i.dj, %i.ds
  br i1 %i.dt, label %.lr.ph, label %_ZN8simdjson8fallback8ondemand13json_iterator10skip_childEi.exit, !llvm.loop !124

_ZN8simdjson8fallback8ondemand13json_iterator10skip_childEi.exit: ; preds = %bb.x, %bb.u
  %i.du = phi i32 [ %i.cw, %bb.u ], [ %i.dq, %bb.x ]
  store i32 3, ptr %i.am, align 8, !tbaa !89
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEppEv.exit

.loopexit:                                        ; preds = %bb.w, %bb.o, %bb.q, %bb.t
  %i.dv = phi i32 [ %i.cu, %bb.t ], [ %i.cf, %bb.o ], [ %i.cn, %bb.q ], [ %i.dp, %bb.w ]
  %i.dw = phi ptr [ %i.ci, %bb.t ], [ %i.cg, %bb.o ], [ %i.ci, %bb.q ], [ %i.dj, %bb.w ] ; 3 uses
  %i.dx = icmp ugt ptr %i.dw, %.sroa.6167.0.copyload
  tail call void @llvm.assume(i1 %i.dx)
  %i.dy = icmp eq i32 %i.dv, %.sroa.4165.0.copyload
  tail call void @llvm.assume(i1 %i.dy)
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 4
  store ptr %i.dz, ptr %i.c, align 8, !tbaa !79
  %i.ea = load i32, ptr %i.dw, align 4, !tbaa !3
  %i.eb = zext i32 %i.ea to i64
  %i.ec = getelementptr inbounds nuw i8, ptr %.pre397, i64 %i.eb
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !31
  switch i8 %i.ed, label %bb.z [
    i8 125, label %bb.y
    i8 44, label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEppEv.exit
  ]

bb.y:                                             ; preds = %.loopexit
  store i32 %i.as, ptr %i.al, align 4, !tbaa !84
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEppEv.exit

bb.z:                                             ; preds = %.loopexit
  store i32 3, ptr %i.am, align 8, !tbaa !89
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEppEv.exit

_ZN8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEppEv.exit: ; preds = %bb.z, %bb.y, %.loopexit, %bb.n, %_ZN8simdjson8fallback8ondemand13json_iterator10skip_childEi.exit
  %i.ee = phi i32 [ %.sroa.4165.0.copyload, %bb.z ], [ %i.as, %bb.y ], [ %.sroa.4165.0.copyload, %.loopexit ], [ %i.cf, %bb.n ], [ %i.du, %_ZN8simdjson8fallback8ondemand13json_iterator10skip_childEi.exit ] ; 2 uses
  %.not376 = icmp slt i32 %i.ee, %.sroa.4165.0.copyload
  br i1 %.not376, label %_ZN8simdjson8fallback8ondemand6object5startERNS1_14value_iteratorE.exit, label %.lr.ph432

_ZN8simdjson8fallback8ondemand6object5startERNS1_14value_iteratorE.exit: ; preds = %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEppEv.exit, %bb.j, %.lr.ph387, %bb.c, %bb.b, %bb.m, %bb.i, %bb.g
  %.6 = phi i32 [ 17, %bb.b ], [ 0, %bb.m ], [ 3, %bb.i ], [ %i.av, %bb.g ], [ 17, %bb.c ], [ 0, %.lr.ph387 ], [ 5, %bb.j ], [ 0, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEppEv.exit ]
  ret i32 %.6
}

; Function Attrs: mustprogress nounwind uwtable
define noundef range(i32 0, 18) i32 @_ZN8facebook5velox9functions12extractArrayERN8simdjson8fallback8ondemand5valueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt8optionalIS5_E(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.folly::Range", align 8      ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !72, !noalias !125 ; 19 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 16 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !79, !noalias !125 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !81, !noalias !125 ; 3 uses
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !82, !noalias !125 ; 2 uses
  %i.i = load i32, ptr %i.f, align 4, !tbaa !3, !noalias !125
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !31, !noalias !125
  %.not.i.i21 = icmp eq i8 %i.l, 91
  br i1 %.not.i.i21, label %._crit_edge, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit

._crit_edge:                                      ; preds = %bb.b
  %.pre468 = load i32, ptr %i.a, align 8, !tbaa !83, !noalias !125
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.n = load i32, ptr %i.m, align 4, !tbaa !84, !noalias !125 ; 3 uses
  %i.o = load i32, ptr %i.a, align 8, !tbaa !83, !noalias !125
  %i.p = icmp eq i32 %i.n, %i.o
  tail call void @llvm.assume(i1 %i.p), !noalias !125
  %i.q = icmp sgt i32 %i.n, 0
  tail call void @llvm.assume(i1 %i.q), !noalias !125
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !82, !noalias !125 ; 2 uses
  %i.s = load i32, ptr %i.d, align 4, !tbaa !3, !noalias !125
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !31, !noalias !125
  %.not8.i.i = icmp eq i8 %i.v, 91
  br i1 %.not8.i.i, label %bb.d, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  store ptr %i.w, ptr %i.c, align 8, !tbaa !79, !noalias !125
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.d
  %i.x = phi ptr [ %i.h, %._crit_edge ], [ %i.r, %bb.d ]
  %i.y = phi i32 [ %.pre468, %._crit_edge ], [ %i.n, %bb.d ] ; 2 uses
  %i.z = phi ptr [ %i.d, %._crit_edge ], [ %i.w, %bb.d ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.ab = icmp eq ptr %i.z, %i.aa
  tail call void @llvm.assume(i1 %i.ab), !noalias !125
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.ad = icmp sgt i32 %i.y, 0
  tail call void @llvm.assume(i1 %i.ad), !noalias !125
  %i.ae = load i32, ptr %i.z, align 4, !tbaa !3, !noalias !125
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !31, !noalias !125
  %i.ai = icmp eq i8 %i.ah, 93
  br i1 %i.ai, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  store ptr %i.aj, ptr %i.c, align 8, !tbaa !79, !noalias !125
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sink = phi i32 [ -1, %bb.f ], [ 1, %bb.e ]
  %i.ak = add nsw i32 %i.y, %.sink
  store i32 %i.ak, ptr %i.ac, align 4, !tbaa !84, !noalias !125
  %.sroa.4239.0.copyload = load i32, ptr %i.a, align 8, !tbaa !3, !noalias !125 ; 25 uses
  %.sroa.6241.0.copyload = load ptr, ptr %i.e, align 8, !tbaa !88, !noalias !125 ; 7 uses
  %i.al = load ptr, ptr %1, align 8, !tbaa !29    ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.an
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %i.al, ptr %3, align 8, !noalias !128
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %i.ao, ptr %i.ap, align 8, !noalias !128
  %i.aq = call i64 @_ZN5folly6detail15str_to_integralIiEENS_8ExpectedIT_NS_14ConversionCodeEEEPNS_5RangeIPKcEE(ptr noundef nonnull %3) #2, !noalias !128 ; 2 uses
  %i.ar = and i64 %i.aq, 255
  %i.as = icmp eq i64 %i.ar, 1
  br i1 %i.as, label %bb.h, label %_ZN5folly5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit.thread, !prof !131

bb.h:                                             ; preds = %bb.g
  %.sroa.53.0.extract.shift.i.i = and i64 %i.aq, -4294967296 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %3, align 8, !tbaa !111, !noalias !132 ; 2 uses
  %.sroa.2.0.copyload.i.i.i.i.i = load ptr, ptr %i.ap, align 8, !tbaa !111, !noalias !132 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.not14.i.i.i.i.i = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i, %.sroa.2.0.copyload.i.i.i.i.i
  br i1 %.not14.i.i.i.i.i, label %_ZN5folly5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit, label %.lr.ph.i.i.i.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %.01115.i.i.i.i.i, i64 1 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.at, %.sroa.2.0.copyload.i.i.i.i.i
  br i1 %.not.i.i.i.i.i, label %_ZN5folly5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.h, %bb.i
  %.01115.i.i.i.i.i = phi ptr [ %i.at, %bb.i ], [ %.sroa.0.0.copyload.i.i.i.i.i, %bb.h ] ; 2 uses
  %i.au = load i8, ptr %.01115.i.i.i.i.i, align 1, !tbaa !31
  %i.av = sext i8 %i.au to i32
  %i.aw = call i32 @isspace(i32 noundef %i.av) #23
  %.not12.not.i.i.not.i.i.i.not = icmp ne i32 %i.aw, 0 ; 3 uses
  br i1 %.not12.not.i.i.not.i.i.i.not, label %bb.i, label %_ZN5folly5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit

_ZN5folly5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit.thread: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit

_ZN5folly5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit: ; preds = %bb.i, %.lr.ph.i.i.i.i.i, %bb.h
  %i.ax = phi i1 [ true, %bb.h ], [ %.not12.not.i.i.not.i.i.i.not, %.lr.ph.i.i.i.i.i ], [ %.not12.not.i.i.not.i.i.i.not, %bb.i ]
  %.sroa.3.0.insert.insert.i.i.i.i = phi i64 [ %.sroa.53.0.extract.shift.i.i, %bb.h ], [ %.sroa.53.0.extract.shift.i.i, %bb.i ], [ 2560, %.lr.ph.i.i.i.i.i ] ; 3 uses
  br i1 %i.ax, label %_ZNR5folly8ExpectedIiNS_14ConversionCodeEE5valueEv.exit, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit

_ZNR5folly8ExpectedIiNS_14ConversionCodeEE5valueEv.exit: ; preds = %_ZN5folly5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit
  %i.ay = icmp slt i64 %.sroa.3.0.insert.insert.i.i.i.i, 0
  br i1 %i.ay, label %.preheader, label %bb.y

.preheader:                                       ; preds = %_ZNR5folly8ExpectedIiNS_14ConversionCodeEE5valueEv.exit
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZNK8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEneERKS4_.exit24, label %.lr.ph454

.lr.ph454:                                        ; preds = %.preheader
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 36 ; 8 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.bc = add nsw i32 %.sroa.4239.0.copyload, 1   ; 5 uses
  %i.bd = icmp sgt i32 %.sroa.4239.0.copyload, 0
  %or.cond.i4.i50 = icmp ult i32 %.sroa.4239.0.copyload, 2147483646
  %i.be = add nsw i32 %.sroa.4239.0.copyload, -1  ; 3 uses
  %or.cond.i.i51 = icmp ult i32 %i.be, 2147483646
  %.promoted = load i32, ptr %i.az, align 4, !tbaa !84 ; 2 uses
  %.not448533 = icmp slt i32 %.promoted, %.sroa.4239.0.copyload
  br i1 %.not448533, label %_ZNK8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEneERKS4_.exit24, label %.lr.ph535.preheader

.lr.ph535.preheader:                              ; preds = %.lr.ph454
  %.promoted558 = load i32, ptr %i.ba, align 8, !tbaa !89
  br label %.lr.ph535

._ZNK8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEneERKS4_.exit24.loopexit_crit_edge: ; preds = %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit30
  %i.bf = shl i64 %i.di, 32
  br label %_ZNK8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEneERKS4_.exit24

_ZNK8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEneERKS4_.exit24: ; preds = %.lr.ph454, %._ZNK8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEneERKS4_.exit24.loopexit_crit_edge, %.preheader
  %.0380.lcssa = phi i64 [ 0, %.preheader ], [ %i.bf, %._ZNK8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEneERKS4_.exit24.loopexit_crit_edge ], [ 0, %.lr.ph454 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !89
  %.not.i = icmp eq i32 %i.bh, 0
  br i1 %.not.i, label %bb.w, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit

.lr.ph535:                                        ; preds = %.lr.ph535.preheader, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit30
  %i.bi = phi i32 [ %i.dg, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit30 ], [ %.promoted558, %.lr.ph535.preheader ] ; 4 uses
  %.0380453534 = phi i64 [ %i.di, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit30 ], [ 0, %.lr.ph535.preheader ]
  %i.bj = phi i32 [ %i.dh, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit30 ], [ %.promoted, %.lr.ph535.preheader ]
  %.not.i32 = icmp eq i32 %i.bi, 0
  br i1 %.not.i32, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph535
  store ptr null, ptr %i.bb, align 8, !tbaa !93, !noalias !137
  store i32 0, ptr %i.az, align 4, !tbaa !84, !noalias !137
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit30

bb.k:                                             ; preds = %.lr.ph535
  %i.bk = load ptr, ptr %i.c, align 8, !tbaa !94, !noalias !140 ; 4 uses
  %i.bl = icmp ugt ptr %i.bk, %.sroa.6241.0.copyload
  call void @llvm.assume(i1 %i.bl), !noalias !140
  %i.bm = icmp eq i32 %i.bj, %i.bc
  call void @llvm.assume(i1 %i.bm), !noalias !140
  call void @llvm.assume(i1 %i.bd), !noalias !140
  %.pre469 = load ptr, ptr %i.b, align 8, !tbaa !82 ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 4 ; 8 uses
  store ptr %i.bn, ptr %i.c, align 8, !tbaa !79
  %i.bo = load i32, ptr %i.bk, align 4, !tbaa !3
  %i.bp = zext i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %.pre469, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !31
  switch i8 %i.br, label %bb.o [
    i8 91, label %bb.p
    i8 123, label %bb.p
    i8 58, label %bb.p
    i8 44, label %bb.p
    i8 93, label %bb.l
    i8 125, label %bb.l
    i8 34, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k, %bb.k
  store i32 %.sroa.4239.0.copyload, ptr %i.az, align 4, !tbaa !84
  br label %.loopexit452

bb.m:                                             ; preds = %bb.k
  %i.bs = load i32, ptr %i.bn, align 4, !tbaa !3
  %i.bt = zext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %.pre469, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !31
  %i.bw = icmp eq i8 %i.bv, 58
  br i1 %i.bw, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  store ptr %i.bx, ptr %i.c, align 8, !tbaa !79
  br label %bb.p

bb.o:                                             ; preds = %bb.m, %bb.k
  store i32 %.sroa.4239.0.copyload, ptr %i.az, align 4, !tbaa !84
  br label %.loopexit452

bb.p:                                             ; preds = %bb.k, %bb.k, %bb.k, %bb.k, %bb.n
  %i.by = phi ptr [ %i.bn, %bb.k ], [ %i.bn, %bb.k ], [ %i.bn, %bb.k ], [ %i.bn, %bb.k ], [ %i.bx, %bb.n ] ; 2 uses
  %i.bz = load ptr, ptr %i.bb, align 8, !tbaa !93
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !106 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !116
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 16 ; 2 uses
  %i.cf = zext i32 %i.cd to i64                   ; 2 uses
  %i.cg = load ptr, ptr %i.ce, align 8, !tbaa !88
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.cf
  %i.ci = icmp ult ptr %i.by, %i.ch
  br i1 %i.ci, label %.lr.ph, label %_ZN8simdjson8fallback8ondemand13json_iterator10skip_childEi.exit.i

.lr.ph:                                           ; preds = %bb.p, %bb.s
  %i.cj = phi i32 [ %i.cs, %bb.s ], [ %i.bc, %bb.p ] ; 3 uses
  %i.ck = phi ptr [ %i.cl, %bb.s ], [ %i.by, %bb.p ] ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 4 ; 4 uses
  store ptr %i.cl, ptr %i.c, align 8, !tbaa !79
  %i.cm = load i32, ptr %i.ck, align 4, !tbaa !3
  %i.cn = zext i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw i8, ptr %.pre469, i64 %i.cn
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !31
  switch i8 %i.cp, label %bb.s [
    i8 91, label %bb.q
    i8 123, label %bb.q
    i8 93, label %bb.r
    i8 125, label %bb.r
  ]

bb.q:                                             ; preds = %.lr.ph, %.lr.ph
  %i.cq = add nsw i32 %i.cj, 1                    ; 2 uses
  store i32 %i.cq, ptr %i.az, align 4, !tbaa !84
  br label %bb.s

bb.r:                                             ; preds = %.lr.ph, %.lr.ph
  %i.cr = add nsw i32 %i.cj, -1                   ; 4 uses
  store i32 %i.cr, ptr %i.az, align 4, !tbaa !84
  %.not8.i.i38 = icmp sgt i32 %i.cr, %.sroa.4239.0.copyload
  br i1 %.not8.i.i38, label %bb.s, label %.loopexit452.loopexit

bb.s:                                             ; preds = %.lr.ph, %bb.r, %bb.q
  %i.cs = phi i32 [ %i.cj, %.lr.ph ], [ %i.cr, %bb.r ], [ %i.cq, %bb.q ] ; 2 uses
  %i.ct = load ptr, ptr %i.ce, align 8, !tbaa !88
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.cf
  %i.cv = icmp ult ptr %i.cl, %i.cu
  br i1 %i.cv, label %.lr.ph, label %_ZN8simdjson8fallback8ondemand13json_iterator10skip_childEi.exit.i, !llvm.loop !124

_ZN8simdjson8fallback8ondemand13json_iterator10skip_childEi.exit.i: ; preds = %bb.s, %bb.p
  %i.cw = phi i32 [ %i.bc, %bb.p ], [ %i.cs, %bb.s ]
  store i32 3, ptr %i.ba, align 8, !tbaa !89
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit30

.loopexit452.loopexit:                            ; preds = %bb.r
  %i.cx = icmp eq i32 %i.cr, %.sroa.4239.0.copyload
  br label %.loopexit452

.loopexit452:                                     ; preds = %.loopexit452.loopexit, %bb.o, %bb.l
  %i.cy = phi ptr [ %i.bn, %bb.o ], [ %i.bn, %bb.l ], [ %i.cl, %.loopexit452.loopexit ] ; 3 uses
  %i.cz = phi i1 [ true, %bb.o ], [ true, %bb.l ], [ %i.cx, %.loopexit452.loopexit ]
  %i.da = icmp ugt ptr %i.cy, %.sroa.6241.0.copyload
  call void @llvm.assume(i1 %i.da)
  call void @llvm.assume(i1 %i.cz)
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  store ptr %i.db, ptr %i.c, align 8, !tbaa !79
  %i.dc = load i32, ptr %i.cy, align 4, !tbaa !3
  %i.dd = zext i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw i8, ptr %.pre469, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1, !tbaa !31
  switch i8 %i.df, label %bb.v [
    i8 93, label %bb.t
    i8 44, label %bb.u
  ]

bb.t:                                             ; preds = %.loopexit452
  call void @llvm.assume(i1 %or.cond.i.i51)
  store i32 %i.be, ptr %i.az, align 4, !tbaa !84
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit30

bb.u:                                             ; preds = %.loopexit452
  call void @llvm.assume(i1 %or.cond.i4.i50)
  store i32 %i.bc, ptr %i.az, align 4, !tbaa !84
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit30

bb.v:                                             ; preds = %.loopexit452
  store i32 3, ptr %i.ba, align 8, !tbaa !89
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit30

_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit30: ; preds = %bb.j, %bb.v, %bb.u, %bb.t, %_ZN8simdjson8fallback8ondemand13json_iterator10skip_childEi.exit.i
  %i.dg = phi i32 [ 3, %bb.v ], [ %i.bi, %bb.u ], [ %i.bi, %bb.t ], [ %i.bi, %bb.j ], [ 3, %_ZN8simdjson8fallback8ondemand13json_iterator10skip_childEi.exit.i ]
  %i.dh = phi i32 [ %.sroa.4239.0.copyload, %bb.v ], [ %i.bc, %bb.u ], [ %i.be, %bb.t ], [ 0, %bb.j ], [ %i.cw, %_ZN8simdjson8fallback8ondemand13json_iterator10skip_childEi.exit.i ] ; 2 uses
  %i.di = add i64 %.0380453534, 1                 ; 2 uses
  %.not448 = icmp slt i32 %i.dh, %.sroa.4239.0.copyload
  br i1 %.not448, label %._ZNK8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEneERKS4_.exit24.loopexit_crit_edge, label %.lr.ph535

bb.w:                                             ; preds = %_ZNK8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEneERKS4_.exit24
  %i.dj = getelementptr inbounds nuw i8, ptr %i.b, i64 36 ; 2 uses
  store i32 %.sroa.4239.0.copyload, ptr %i.dj, align 4, !tbaa !84
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.6241.0.copyload, i64 4 ; 2 uses
  store ptr %i.dk, ptr %i.c, align 8, !tbaa !79
  %i.dl = icmp sgt i32 %.sroa.4239.0.copyload, 0
  call void @llvm.assume(i1 %i.dl)
  %i.dm = load ptr, ptr %i.b, align 8, !tbaa !82
  %i.dn = load i32, ptr %i.dk, align 4, !tbaa !3
  %i.do = zext i32 %i.dn to i64
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.do
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !31
  %i.dr = icmp eq i8 %i.dq, 93
  br i1 %i.dr, label %bb.x, label %.thread505

bb.x:                                             ; preds = %bb.w
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.6241.0.copyload, i64 8
  store ptr %i.ds, ptr %i.c, align 8, !tbaa !79
  br label %.thread505

.thread505:                                       ; preds = %bb.w, %bb.x
  %.sink539 = phi i32 [ -1, %bb.x ], [ 1, %bb.w ]
  %i.dt = add nsw i32 %.sroa.4239.0.copyload, %.sink539
  store i32 %i.dt, ptr %i.dj, align 4, !tbaa !84
  %.sroa.686.0.extract.shift524 = add i64 %.sroa.3.0.insert.insert.i.i.i.i, %.0380.lcssa
  %i.du = ashr i64 %.sroa.686.0.extract.shift524, 32
  br label %.lr.ph460

bb.y:                                             ; preds = %_ZNR5folly8ExpectedIiNS_14ConversionCodeEE5valueEv.exit
  %i.dv = lshr i64 %.sroa.3.0.insert.insert.i.i.i.i, 32
  %.not450 = icmp eq ptr %i.b, null
  br i1 %.not450, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit, label %.lr.ph460

.lr.ph460:                                        ; preds = %.thread505, %bb.y
  %i.dw = phi i64 [ %i.du, %.thread505 ], [ %i.dv, %bb.y ] ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.b, i64 36 ; 8 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.ea = add nsw i32 %.sroa.4239.0.copyload, 1   ; 6 uses
  %i.eb = icmp sgt i32 %.sroa.4239.0.copyload, 0
  %or.cond.i4.i48 = icmp ult i32 %.sroa.4239.0.copyload, 2147483646
  %i.ec = add nsw i32 %.sroa.4239.0.copyload, -1  ; 3 uses
  %or.cond.i.i49 = icmp ult i32 %i.ec, 2147483646
  %.promoted462 = load i32, ptr %i.dx, align 4, !tbaa !84 ; 2 uses
  %.not451536 = icmp slt i32 %.promoted462, %.sroa.4239.0.copyload
  br i1 %.not451536, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit, label %.lr.ph538.preheader

.lr.ph538.preheader:                              ; preds = %.lr.ph460
  %.promoted559 = load i32, ptr %i.dy, align 8, !tbaa !89
  br label %.lr.ph538

.lr.ph538:                                        ; preds = %.lr.ph538.preheader, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit
  %i.ed = phi i32 [ %i.gf, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit ], [ %.promoted559, %.lr.ph538.preheader ] ; 4 uses
  %.06.i459537 = phi i64 [ %i.gh, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit ], [ 0, %.lr.ph538.preheader ] ; 3 uses
  %i.ee = phi i32 [ %i.gg, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit ], [ %.promoted462, %.lr.ph538.preheader ]
  %.not.i33 = icmp eq i32 %i.ed, 0
  br i1 %.not.i33, label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEdeEv.exit, label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEdeEv.exit.thread

_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEdeEv.exit: ; preds = %.lr.ph538
  %i.ef = load ptr, ptr %i.c, align 8, !tbaa !94, !noalias !143 ; 2 uses
  %i.eg = icmp ugt ptr %i.ef, %.sroa.6241.0.copyload
  call void @llvm.assume(i1 %i.eg), !noalias !143
  %i.eh = icmp eq i32 %i.ee, %i.ea
  call void @llvm.assume(i1 %i.eh), !noalias !143
  call void @llvm.assume(i1 %i.eb), !noalias !143
  %i.ei = icmp eq i64 %.06.i459537, %i.dw
  br i1 %i.ei, label %_ZNR8simdjson8fallback35implementation_simdjson_result_baseINS0_8ondemand5valueEE5valueEv.exit, label %bb.z

_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEdeEv.exit.thread: ; preds = %.lr.ph538
  store ptr null, ptr %i.dz, align 8, !tbaa !93, !noalias !148
  store i32 0, ptr %i.dx, align 4, !tbaa !84, !noalias !148
  %i.ej = icmp eq i64 %.06.i459537, %i.dw
  br i1 %i.ej, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit, label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit

bb.z:                                             ; preds = %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEdeEv.exit
  %i.ek = load ptr, ptr %i.c, align 8, !tbaa !94  ; 4 uses
  %i.el = icmp ugt ptr %i.ek, %.sroa.6241.0.copyload
  call void @llvm.assume(i1 %i.el)
  %.pre470 = load ptr, ptr %i.b, align 8, !tbaa !82 ; 4 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 4 ; 8 uses
  store ptr %i.em, ptr %i.c, align 8, !tbaa !79
  %i.en = load i32, ptr %i.ek, align 4, !tbaa !3
  %i.eo = zext i32 %i.en to i64
  %i.ep = getelementptr inbounds nuw i8, ptr %.pre470, i64 %i.eo
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !31
  switch i8 %i.eq, label %bb.ad [
    i8 91, label %bb.ae
    i8 123, label %bb.ae
    i8 58, label %bb.ae
    i8 44, label %bb.ae
    i8 93, label %bb.aa
    i8 125, label %bb.aa
    i8 34, label %bb.ab
  ]

bb.aa:                                            ; preds = %bb.z, %bb.z
  store i32 %.sroa.4239.0.copyload, ptr %i.dx, align 4, !tbaa !84
  br label %.loopexit

bb.ab:                                            ; preds = %bb.z
  %i.er = load i32, ptr %i.em, align 4, !tbaa !3
  %i.es = zext i32 %i.er to i64
  %i.et = getelementptr inbounds nuw i8, ptr %.pre470, i64 %i.es
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !31
  %i.ev = icmp eq i8 %i.eu, 58
  br i1 %i.ev, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ek, i64 8 ; 2 uses
  store ptr %i.ew, ptr %i.c, align 8, !tbaa !79
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab, %bb.z
  store i32 %.sroa.4239.0.copyload, ptr %i.dx, align 4, !tbaa !84
  br label %.loopexit

bb.ae:                                            ; preds = %bb.z, %bb.z, %bb.z, %bb.z, %bb.ac
  %i.ex = phi ptr [ %i.em, %bb.z ], [ %i.em, %bb.z ], [ %i.em, %bb.z ], [ %i.em, %bb.z ], [ %i.ew, %bb.ac ] ; 2 uses
  %i.ey = load ptr, ptr %i.dz, align 8, !tbaa !93
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !106 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !116
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 16 ; 2 uses
  %i.fe = zext i32 %i.fc to i64                   ; 2 uses
  %i.ff = load ptr, ptr %i.fd, align 8, !tbaa !88
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %i.fe
  %i.fh = icmp ult ptr %i.ex, %i.fg
  br i1 %i.fh, label %.lr.ph458, label %_ZN8simdjson8fallback8ondemand13json_iterator10skip_childEi.exit.i41

.lr.ph458:                                        ; preds = %bb.ae, %bb.ah
  %i.fi = phi i32 [ %i.fr, %bb.ah ], [ %i.ea, %bb.ae ] ; 3 uses
  %i.fj = phi ptr [ %i.fk, %bb.ah ], [ %i.ex, %bb.ae ] ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 4 ; 4 uses
  store ptr %i.fk, ptr %i.c, align 8, !tbaa !79
  %i.fl = load i32, ptr %i.fj, align 4, !tbaa !3
  %i.fm = zext i32 %i.fl to i64
  %i.fn = getelementptr inbounds nuw i8, ptr %.pre470, i64 %i.fm
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !31
  switch i8 %i.fo, label %bb.ah [
    i8 91, label %bb.af
    i8 123, label %bb.af
    i8 93, label %bb.ag
    i8 125, label %bb.ag
  ]

bb.af:                                            ; preds = %.lr.ph458, %.lr.ph458
  %i.fp = add nsw i32 %i.fi, 1                    ; 2 uses
  store i32 %i.fp, ptr %i.dx, align 4, !tbaa !84
  br label %bb.ah

bb.ag:                                            ; preds = %.lr.ph458, %.lr.ph458
  %i.fq = add nsw i32 %i.fi, -1                   ; 4 uses
  store i32 %i.fq, ptr %i.dx, align 4, !tbaa !84
  %.not8.i.i45 = icmp sgt i32 %i.fq, %.sroa.4239.0.copyload
  br i1 %.not8.i.i45, label %bb.ah, label %.loopexit.loopexit

bb.ah:                                            ; preds = %.lr.ph458, %bb.ag, %bb.af
  %i.fr = phi i32 [ %i.fi, %.lr.ph458 ], [ %i.fq, %bb.ag ], [ %i.fp, %bb.af ] ; 2 uses
  %i.fs = load ptr, ptr %i.fd, align 8, !tbaa !88
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %i.fe
  %i.fu = icmp ult ptr %i.fk, %i.ft
  br i1 %i.fu, label %.lr.ph458, label %_ZN8simdjson8fallback8ondemand13json_iterator10skip_childEi.exit.i41, !llvm.loop !124

_ZN8simdjson8fallback8ondemand13json_iterator10skip_childEi.exit.i41: ; preds = %bb.ah, %bb.ae
  %i.fv = phi i32 [ %i.ea, %bb.ae ], [ %i.fr, %bb.ah ]
  store i32 3, ptr %i.dy, align 8, !tbaa !89
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit

.loopexit.loopexit:                               ; preds = %bb.ag
  %i.fw = icmp eq i32 %i.fq, %.sroa.4239.0.copyload
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.ad, %bb.aa
  %i.fx = phi ptr [ %i.em, %bb.ad ], [ %i.em, %bb.aa ], [ %i.fk, %.loopexit.loopexit ] ; 3 uses
  %i.fy = phi i1 [ true, %bb.ad ], [ true, %bb.aa ], [ %i.fw, %.loopexit.loopexit ]
  %i.fz = icmp ugt ptr %i.fx, %.sroa.6241.0.copyload
  call void @llvm.assume(i1 %i.fz)
  call void @llvm.assume(i1 %i.fy)
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fx, i64 4
  store ptr %i.ga, ptr %i.c, align 8, !tbaa !79
  %i.gb = load i32, ptr %i.fx, align 4, !tbaa !3
  %i.gc = zext i32 %i.gb to i64
  %i.gd = getelementptr inbounds nuw i8, ptr %.pre470, i64 %i.gc
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !31
  switch i8 %i.ge, label %bb.ak [
    i8 93, label %bb.ai
    i8 44, label %bb.aj
  ]

bb.ai:                                            ; preds = %.loopexit
  call void @llvm.assume(i1 %or.cond.i.i49)
  store i32 %i.ec, ptr %i.dx, align 4, !tbaa !84
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit

bb.aj:                                            ; preds = %.loopexit
  call void @llvm.assume(i1 %or.cond.i4.i48)
  store i32 %i.ea, ptr %i.dx, align 4, !tbaa !84
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit

bb.ak:                                            ; preds = %.loopexit
  store i32 3, ptr %i.dy, align 8, !tbaa !89
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit

_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit: ; preds = %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEdeEv.exit.thread, %bb.ak, %bb.aj, %bb.ai, %_ZN8simdjson8fallback8ondemand13json_iterator10skip_childEi.exit.i41
  %i.gf = phi i32 [ 3, %bb.ak ], [ %i.ed, %bb.aj ], [ %i.ed, %bb.ai ], [ 3, %_ZN8simdjson8fallback8ondemand13json_iterator10skip_childEi.exit.i41 ], [ %i.ed, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEdeEv.exit.thread ]
  %i.gg = phi i32 [ %.sroa.4239.0.copyload, %bb.ak ], [ %i.ea, %bb.aj ], [ %i.ec, %bb.ai ], [ %i.fv, %_ZN8simdjson8fallback8ondemand13json_iterator10skip_childEi.exit.i41 ], [ 0, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEdeEv.exit.thread ] ; 2 uses
  %i.gh = add i64 %.06.i459537, 1
  %.not451 = icmp slt i32 %i.gg, %.sroa.4239.0.copyload
  br i1 %.not451, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit, label %.lr.ph538

_ZNR8simdjson8fallback35implementation_simdjson_result_baseINS0_8ondemand5valueEE5valueEv.exit: ; preds = %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEdeEv.exit
  %i.gi = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.b, ptr %2, align 8, !tbaa !113
  %.sroa.0.sroa.7.0..sroa_idx225 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.ea, ptr %.sroa.0.sroa.7.0..sroa_idx225, align 8, !tbaa !3
  %.sroa.0.sroa.8.0..sroa_idx231 = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 0, ptr %.sroa.0.sroa.8.0..sroa_idx231, align 4
  %.sroa.0.sroa.9.0..sroa_idx237 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.ef, ptr %.sroa.0.sroa.9.0..sroa_idx237, align 8, !tbaa !88
  store i8 1, ptr %i.gi, align 8, !tbaa !114
  br label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit

_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit: ; preds = %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEdeEv.exit.thread, %.lr.ph460, %bb.b, %bb.c, %_ZN5folly5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit.thread, %bb.y, %_ZNK8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEneERKS4_.exit24, %_ZN5folly5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit, %_ZNR8simdjson8fallback35implementation_simdjson_result_baseINS0_8ondemand5valueEE5valueEv.exit
  %.4 = phi i32 [ 0, %_ZN5folly5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit.thread ], [ 17, %bb.c ], [ 0, %_ZNR8simdjson8fallback35implementation_simdjson_result_baseINS0_8ondemand5valueEE5valueEv.exit ], [ 0, %_ZN5folly5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit ], [ 0, %_ZNK8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEneERKS4_.exit24 ], [ 0, %bb.y ], [ 17, %bb.b ], [ 0, %.lr.ph460 ], [ 0, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEdeEv.exit.thread ], [ 0, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit ]
  ret i32 %.4
}

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #0 align 2

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #0 align 2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN8facebook5velox9functions17SIMDJsonExtractorEEESaISE_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %.not5.i = icmp eq ptr %i.b, null
  br i1 %.not5.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN8facebook5velox9functions17SIMDJsonExtractorEEELb1EEEEE19_M_deallocate_nodesEPSH_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN8facebook5velox9functions17SIMDJsonExtractorEEELb1EEEEE18_M_deallocate_nodeEPSH_.exit.i
  %.06.i = phi ptr [ %i.c, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN8facebook5velox9functions17SIMDJsonExtractorEEELb1EEEEE18_M_deallocate_nodeEPSH_.exit.i ], [ %i.b, %bb.a ] ; 5 uses
  %i.c = load ptr, ptr %.06.i, align 8, !tbaa !38 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.06.i, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %.06.i, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !50   ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt12__shared_ptrIN8facebook5velox9functions17SIMDJsonExtractorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.h = load atomic i64, ptr %i.g acquire, align 8 ; 2 uses
  %i.i = icmp eq i64 %i.h, 4294967297
  %i.j = trunc i64 %i.h to i32                    ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.g, align 8, !tbaa !51
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 0, ptr %i.k, align 4, !tbaa !53
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !54
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #2, !inline_history !149
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !54
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #2, !inline_history !149
  br label %_ZNSt12__shared_ptrIN8facebook5velox9functions17SIMDJsonExtractorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = add nsw i32 %i.j, -1
  store i32 %i.s, ptr %i.g, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.t = atomicrmw volatile add ptr %i.g, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.j, %bb.e ], [ %i.t, %bb.f ]
  %i.u = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.u, label %bb.g, label %_ZNSt12__shared_ptrIN8facebook5velox9functions17SIMDJsonExtractorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i, !prof !28

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #2
  br label %_ZNSt12__shared_ptrIN8facebook5velox9functions17SIMDJsonExtractorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i

_ZNSt12__shared_ptrIN8facebook5velox9functions17SIMDJsonExtractorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i
  %i.v = load ptr, ptr %i.d, align 8, !tbaa !29   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.06.i, i64 24 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN8facebook5velox9functions17SIMDJsonExtractorEEELb1EEEEE18_M_deallocate_nodeEPSH_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt12__shared_ptrIN8facebook5velox9functions17SIMDJsonExtractorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i
  %i.y = load i64, ptr %i.w, align 8, !tbaa !31
  %i.z = add i64 %i.y, 1
  tail call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #22
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN8facebook5velox9functions17SIMDJsonExtractorEEELb1EEEEE18_M_deallocate_nodeEPSH_.exit.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN8facebook5velox9functions17SIMDJsonExtractorEEELb1EEEEE18_M_deallocate_nodeEPSH_.exit.i: ; preds = %_ZNSt12__shared_ptrIN8facebook5velox9functions17SIMDJsonExtractorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i, i64 noundef 64) #22
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN8facebook5velox9functions17SIMDJsonExtractorEEELb1EEEEE19_M_deallocate_nodesEPSH_.exit, label %.lr.ph.i, !llvm.loop !150

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN8facebook5velox9functions17SIMDJsonExtractorEEELb1EEEEE19_M_deallocate_nodesEPSH_.exit: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN8facebook5velox9functions17SIMDJsonExtractorEEELb1EEEEE18_M_deallocate_nodeEPSH_.exit.i, %bb.a
  %i.aa = load ptr, ptr %0, align 8, !tbaa !8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !18
  %i.ad = shl i64 %i.ac, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.aa, i8 0, i64 %i.ad, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #2 ; 0 uses
  tail call void @_ZSt9terminatev() #24
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

declare { ptr, ptr } @_ZN5folly15ltrimWhitespaceENS_5RangeIPKcEE(ptr, ptr) local_unnamed_addr #8

declare { ptr, ptr } @_ZN5folly15rtrimWhitespaceENS_5RangeIPKcEE(ptr, ptr) local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(32), ptr) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN8facebook5velox9functions17JsonPathTokenizer5TokenESaIS4_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !62     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !65   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN8facebook5velox9functions17JsonPathTokenizer5TokenES4_EvT_S6_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN8facebook5velox9functions17JsonPathTokenizer5TokenEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.i, %_ZSt8_DestroyIN8facebook5velox9functions17JsonPathTokenizer5TokenEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !29 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyIN8facebook5velox9functions17JsonPathTokenizer5TokenEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !31
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #22
  br label %_ZSt8_DestroyIN8facebook5velox9functions17JsonPathTokenizer5TokenEEvPT_.exit.i.i

_ZSt8_DestroyIN8facebook5velox9functions17JsonPathTokenizer5TokenEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN8facebook5velox9functions17JsonPathTokenizer5TokenES4_EvT_S6_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !66

_ZSt8_DestroyIPN8facebook5velox9functions17JsonPathTokenizer5TokenES4_EvT_S6_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN8facebook5velox9functions17JsonPathTokenizer5TokenEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !62
  br label %_ZSt8_DestroyIPN8facebook5velox9functions17JsonPathTokenizer5TokenES4_EvT_S6_RSaIT0_E.exit

_ZSt8_DestroyIPN8facebook5velox9functions17JsonPathTokenizer5TokenES4_EvT_S6_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN8facebook5velox9functions17JsonPathTokenizer5TokenES4_EvT_S6_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.j = phi ptr [ %.pr, %_ZSt8_DestroyIPN8facebook5velox9functions17JsonPathTokenizer5TokenES4_EvT_S6_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.j, null
end_hunk_0
