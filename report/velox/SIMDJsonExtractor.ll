Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/SIMDJsonExtractor?download=true
inline.NumInlined: 651
inline.NumDeleted: 356
begin_hunk_0_@_ZN8facebook5velox9functions13extractObjectERN8simdjson8fallback8ondemand5valueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt8optionalIS5_E:bb.a
  ]

bb.q:                                             ; preds = %bb.p, %bb.p
  %i.cn = add nsw i32 %i.cf, -1                   ; 4 uses
  store i32 %i.cn, ptr %i.al, align 4, !tbaa !86
  %.not6.i = icmp sgt i32 %i.cn, %.sroa.4165.0.copyload
  br i1 %.not6.i, label %bb.u, label %.loopexit

bb.r:                                             ; preds = %bb.p
  %i.co = load i32, ptr %i.ci, align 4, !tbaa !58
  %i.cp = zext i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %.pre395, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !32
  %i.cs = icmp eq i8 %i.cr, 58
  br i1 %i.cs, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 2 uses
  store ptr %i.ct, ptr %i.c, align 8, !tbaa !81
  br label %bb.u

bb.t:                                             ; preds = %bb.r, %bb.p
  %i.cu = add nsw i32 %i.cf, -1                   ; 4 uses
  store i32 %i.cu, ptr %i.al, align 4, !tbaa !86
  %.not7.i = icmp sgt i32 %i.cu, %.sroa.4165.0.copyload
  br i1 %.not7.i, label %bb.u, label %.loopexit

bb.u:                                             ; preds = %bb.p, %bb.p, %bb.p, %bb.p, %bb.t, %bb.s, %bb.q
  %i.cv = phi ptr [ %i.ci, %bb.p ], [ %i.ci, %bb.p ], [ %i.ci, %bb.p ], [ %i.ci, %bb.p ], [ %i.ci, %bb.t ], [ %i.ct, %bb.s ], [ %i.ci, %bb.q ] ; 2 uses
  %i.cw = phi i32 [ %i.cf, %bb.p ], [ %i.cf, %bb.p ], [ %i.cf, %bb.p ], [ %i.cf, %bb.p ], [ %i.cu, %bb.t ], [ %i.cf, %bb.s ], [ %i.cn, %bb.q ] ; 2 uses
  %i.cx = load ptr, ptr %i.ap, align 8, !tbaa !95
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !108 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.db = load i32, ptr %i.da, align 8, !tbaa !118
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 16 ; 2 uses
  %i.dd = zext i32 %i.db to i64                   ; 2 uses
  %i.de = load ptr, ptr %i.dc, align 8, !tbaa !90
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.dd
  %i.dg = icmp ult ptr %i.cv, %i.df
  br i1 %i.dg, label %.lr.ph, label %_ZN8simdjson8fallback8ondemand13json_iterator10skip_childEi.exit

.lr.ph:                                           ; preds = %bb.u, %bb.x
  %i.dh = phi i32 [ %i.dq, %bb.x ], [ %i.cw, %bb.u ] ; 3 uses
  %i.di = phi ptr [ %i.dj, %bb.x ], [ %i.cv, %bb.u ] ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 4 ; 4 uses
  store ptr %i.dj, ptr %i.c, align 8, !tbaa !81
  %i.dk = load i32, ptr %i.di, align 4, !tbaa !58
  %i.dl = zext i32 %i.dk to i64
  %i.dm = getelementptr inbounds nuw i8, ptr %.pre395, i64 %i.dl
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !32
  switch i8 %i.dn, label %bb.x [
    i8 91, label %bb.v
    i8 123, label %bb.v
    i8 93, label %bb.w
    i8 125, label %bb.w
  ]

bb.v:                                             ; preds = %.lr.ph, %.lr.ph
  %i.do = add nuw nsw i32 %i.dh, 1                ; 2 uses
  store i32 %i.do, ptr %i.al, align 4, !tbaa !86
  br label %bb.x

bb.w:                                             ; preds = %.lr.ph, %.lr.ph
  %i.dp = add nsw i32 %i.dh, -1                   ; 4 uses
  store i32 %i.dp, ptr %i.al, align 4, !tbaa !86
  %.not8.i48 = icmp sgt i32 %i.dp, %.sroa.4165.0.copyload
  br i1 %.not8.i48, label %bb.x, label %.loopexit

bb.x:                                             ; preds = %.lr.ph, %bb.w, %bb.v
  %i.dq = phi i32 [ %i.dh, %.lr.ph ], [ %i.dp, %bb.w ], [ %i.do, %bb.v ] ; 2 uses
  %i.dr = load ptr, ptr %i.dc, align 8, !tbaa !90
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %i.dd
  %i.dt = icmp ult ptr %i.dj, %i.ds
  br i1 %i.dt, label %.lr.ph, label %_ZN8simdjson8fallback8ondemand13json_iterator10skip_childEi.exit, !llvm.loop !126

_ZN8simdjson8fallback8ondemand13json_iterator10skip_childEi.exit: ; preds = %bb.x, %bb.u
  %i.du = phi i32 [ %i.cw, %bb.u ], [ %i.dq, %bb.x ]
  store i32 3, ptr %i.am, align 8, !tbaa !91
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEppEv.exit

.loopexit:                                        ; preds = %bb.w, %bb.o, %bb.q, %bb.t
  %i.dv = phi i32 [ %i.cu, %bb.t ], [ %i.cf, %bb.o ], [ %i.cn, %bb.q ], [ %i.dp, %bb.w ]
  %i.dw = phi ptr [ %i.ci, %bb.t ], [ %i.cg, %bb.o ], [ %i.ci, %bb.q ], [ %i.dj, %bb.w ] ; 3 uses
  %i.dx = icmp ugt ptr %i.dw, %.sroa.6167.0.copyload
  tail call void @llvm.assume(i1 %i.dx)
  %i.dy = icmp eq i32 %i.dv, %.sroa.4165.0.copyload
  tail call void @llvm.assume(i1 %i.dy)
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 4
  store ptr %i.dz, ptr %i.c, align 8, !tbaa !81
  %i.ea = load i32, ptr %i.dw, align 4, !tbaa !58
  %i.eb = zext i32 %i.ea to i64
  %i.ec = getelementptr inbounds nuw i8, ptr %.pre395, i64 %i.eb
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !32
  switch i8 %i.ed, label %bb.z [
    i8 125, label %bb.y
    i8 44, label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEppEv.exit
  ]

bb.y:                                             ; preds = %.loopexit
  store i32 %i.as, ptr %i.al, align 4, !tbaa !86
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEppEv.exit

bb.z:                                             ; preds = %.loopexit
  store i32 3, ptr %i.am, align 8, !tbaa !91
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEppEv.exit

_ZN8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEppEv.exit: ; preds = %bb.z, %bb.y, %.loopexit, %bb.n, %_ZN8simdjson8fallback8ondemand13json_iterator10skip_childEi.exit
  %i.ee = phi i32 [ %.sroa.4165.0.copyload, %bb.z ], [ %i.as, %bb.y ], [ %.sroa.4165.0.copyload, %.loopexit ], [ %i.cf, %bb.n ], [ %i.du, %_ZN8simdjson8fallback8ondemand13json_iterator10skip_childEi.exit ] ; 2 uses
  %.not376 = icmp slt i32 %i.ee, %.sroa.4165.0.copyload
  br i1 %.not376, label %_ZN8simdjson8fallback8ondemand6object5startERNS1_14value_iteratorE.exit, label %.lr.ph430

_ZN8simdjson8fallback8ondemand6object5startERNS1_14value_iteratorE.exit: ; preds = %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEppEv.exit, %bb.j, %.split.lr.ph, %bb.c, %bb.b, %bb.m, %bb.i, %bb.g
  %.6 = phi i32 [ 17, %bb.b ], [ 0, %bb.m ], [ 3, %bb.i ], [ %i.av, %bb.g ], [ 17, %bb.c ], [ 0, %.split.lr.ph ], [ 5, %bb.j ], [ 0, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEppEv.exit ]
  ret i32 %.6
}

; Function Attrs: mustprogress nounwind uwtable
define noundef range(i32 0, 18) i32 @_ZN8facebook5velox9functions12extractArrayERN8simdjson8fallback8ondemand5valueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt8optionalIS5_E(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.folly::Range", align 8      ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !74, !noalias !127 ; 19 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 16 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !81, !noalias !127 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !83, !noalias !127 ; 3 uses
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !84, !noalias !127 ; 2 uses
  %i.i = load i32, ptr %i.f, align 4, !tbaa !58, !noalias !127
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !32, !noalias !127
  %.not.i.i21 = icmp eq i8 %i.l, 91
  br i1 %.not.i.i21, label %._crit_edge, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit

._crit_edge:                                      ; preds = %bb.b
  %.pre493 = load i32, ptr %i.a, align 8, !tbaa !85, !noalias !127
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.n = load i32, ptr %i.m, align 4, !tbaa !86, !noalias !127 ; 3 uses
  %i.o = load i32, ptr %i.a, align 8, !tbaa !85, !noalias !127
  %i.p = icmp eq i32 %i.n, %i.o
  tail call void @llvm.assume(i1 %i.p), !noalias !127
  %i.q = icmp sgt i32 %i.n, 0
  tail call void @llvm.assume(i1 %i.q), !noalias !127
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !84, !noalias !127 ; 2 uses
  %i.s = load i32, ptr %i.d, align 4, !tbaa !58, !noalias !127
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !32, !noalias !127
  %.not8.i.i = icmp eq i8 %i.v, 91
  br i1 %.not8.i.i, label %bb.d, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  store ptr %i.w, ptr %i.c, align 8, !tbaa !81, !noalias !127
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.d
  %i.x = phi ptr [ %i.h, %._crit_edge ], [ %i.r, %bb.d ]
  %i.y = phi i32 [ %.pre493, %._crit_edge ], [ %i.n, %bb.d ] ; 2 uses
  %i.z = phi ptr [ %i.d, %._crit_edge ], [ %i.w, %bb.d ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.ab = icmp eq ptr %i.z, %i.aa
  tail call void @llvm.assume(i1 %i.ab), !noalias !127
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.ad = icmp sgt i32 %i.y, 0
  tail call void @llvm.assume(i1 %i.ad), !noalias !127
  %i.ae = load i32, ptr %i.z, align 4, !tbaa !58, !noalias !127
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !32, !noalias !127
  %i.ai = icmp eq i8 %i.ah, 93
  br i1 %i.ai, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  store ptr %i.aj, ptr %i.c, align 8, !tbaa !81, !noalias !127
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sink = phi i32 [ -1, %bb.f ], [ 1, %bb.e ]
  %i.ak = add nsw i32 %i.y, %.sink
  store i32 %i.ak, ptr %i.ac, align 4, !tbaa !86, !noalias !127
  %.sroa.4239.0.copyload = load i32, ptr %i.a, align 8, !tbaa !58, !noalias !127 ; 25 uses
  %.sroa.6241.0.copyload = load ptr, ptr %i.e, align 8, !tbaa !90, !noalias !127 ; 7 uses
  %i.al = load ptr, ptr %1, align 8, !tbaa !30    ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !33
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.an
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %i.al, ptr %3, align 8, !noalias !130
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %i.ao, ptr %i.ap, align 8, !noalias !130
  %i.aq = call i64 @_ZN5folly6detail15str_to_integralIiEENS_8ExpectedIT_NS_14ConversionCodeEEEPNS_5RangeIPKcEE(ptr noundef nonnull %3) #2, !noalias !130 ; 2 uses
  %i.ar = and i64 %i.aq, 255
  %i.as = icmp eq i64 %i.ar, 1
  br i1 %i.as, label %bb.h, label %_ZN5folly5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit.thread, !prof !133

bb.h:                                             ; preds = %bb.g
  %.sroa.53.0.extract.shift.i.i = and i64 %i.aq, -4294967296 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %3, align 8, !tbaa !113, !noalias !134 ; 2 uses
  %.sroa.2.0.copyload.i.i.i.i.i = load ptr, ptr %i.ap, align 8, !tbaa !113, !noalias !134 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.not14.i.i.i.i.i = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i, %.sroa.2.0.copyload.i.i.i.i.i
  br i1 %.not14.i.i.i.i.i, label %_ZN5folly5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit, label %.lr.ph.i.i.i.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %.0915.i.i.i.i.i, i64 1 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.at, %.sroa.2.0.copyload.i.i.i.i.i
  br i1 %.not.i.i.i.i.i, label %_ZN5folly5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.h, %bb.i
  %.0915.i.i.i.i.i = phi ptr [ %i.at, %bb.i ], [ %.sroa.0.0.copyload.i.i.i.i.i, %bb.h ] ; 2 uses
  %i.au = load i8, ptr %.0915.i.i.i.i.i, align 1, !tbaa !32
  %i.av = sext i8 %i.au to i32
  %i.aw = call i32 @isspace(i32 noundef %i.av) #23
  %.not12.not.i.i.not.i.i.i.not = icmp ne i32 %i.aw, 0 ; 3 uses
  br i1 %.not12.not.i.i.not.i.i.i.not, label %bb.i, label %_ZN5folly5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit

_ZN5folly5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit.thread: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit

_ZN5folly5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit: ; preds = %bb.i, %.lr.ph.i.i.i.i.i, %bb.h
  %4 = phi i1 [ true, %bb.h ], [ %.not12.not.i.i.not.i.i.i.not, %.lr.ph.i.i.i.i.i ], [ %.not12.not.i.i.not.i.i.i.not, %bb.i ]
  %.sroa.3.0.insert.insert.i.i.i.i = phi i64 [ %.sroa.53.0.extract.shift.i.i, %bb.h ], [ %.sroa.53.0.extract.shift.i.i, %bb.i ], [ 2560, %.lr.ph.i.i.i.i.i ] ; 3 uses
  br i1 %4, label %_ZNR5folly8ExpectedIiNS_14ConversionCodeEE5valueEv.exit, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit

_ZNR5folly8ExpectedIiNS_14ConversionCodeEE5valueEv.exit: ; preds = %_ZN5folly5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit
  %i.ax = icmp slt i64 %.sroa.3.0.insert.insert.i.i.i.i, 0
  br i1 %i.ax, label %.preheader, label %bb.y

.preheader:                                       ; preds = %_ZNR5folly8ExpectedIiNS_14ConversionCodeEE5valueEv.exit
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZNK8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEneERKS4_.exit24, label %.split.lr.ph

.split.lr.ph:                                     ; preds = %.preheader
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 36 ; 8 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.bb = add nsw i32 %.sroa.4239.0.copyload, 1   ; 5 uses
  %i.bc = icmp sgt i32 %.sroa.4239.0.copyload, 0  ; 2 uses
  %or.cond.i4.i50 = icmp samesign ult i32 %.sroa.4239.0.copyload, 2147483646
  %i.bd = add nsw i32 %.sroa.4239.0.copyload, -1  ; 3 uses
  %or.cond.i.i51 = icmp ult i32 %i.bd, 2147483646
  %.promoted = load i32, ptr %i.ay, align 4, !tbaa !86 ; 2 uses
  %.not477570 = icmp slt i32 %.promoted, %.sroa.4239.0.copyload
  br i1 %.not477570, label %_ZNK8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEneERKS4_.exit24, label %.lr.ph572.preheader

.lr.ph572.preheader:                              ; preds = %.split.lr.ph
  %.promoted596 = load i32, ptr %i.az, align 8, !tbaa !91
  br label %.lr.ph572

.split._ZNK8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEneERKS4_.exit24.loopexit_crit_edge: ; preds = %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit30
  %i.be = shl i64 %i.dh, 32
  br label %_ZNK8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEneERKS4_.exit24

_ZNK8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEneERKS4_.exit24: ; preds = %.split.lr.ph, %.split._ZNK8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEneERKS4_.exit24.loopexit_crit_edge, %.preheader
  %.0380.lcssa = phi i64 [ 0, %.preheader ], [ %i.be, %.split._ZNK8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEneERKS4_.exit24.loopexit_crit_edge ], [ 0, %.split.lr.ph ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !91
  %.not.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i, label %bb.w, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit

.lr.ph572:                                        ; preds = %.lr.ph572.preheader, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit30
  %i.bh = phi i32 [ %i.df, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit30 ], [ %.promoted596, %.lr.ph572.preheader ] ; 4 uses
  %.0380482571 = phi i64 [ %i.dh, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit30 ], [ 0, %.lr.ph572.preheader ]
  %i.bi = phi i32 [ %i.dg, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit30 ], [ %.promoted, %.lr.ph572.preheader ]
  %.not.i32 = icmp eq i32 %i.bh, 0
  br i1 %.not.i32, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph572
  store ptr null, ptr %i.ba, align 8, !tbaa !95, !noalias !139
  store i32 0, ptr %i.ay, align 4, !tbaa !86, !noalias !139
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit30

bb.k:                                             ; preds = %.lr.ph572
  %i.bj = load ptr, ptr %i.c, align 8, !tbaa !96, !noalias !142 ; 4 uses
  %i.bk = icmp ugt ptr %i.bj, %.sroa.6241.0.copyload
  call void @llvm.assume(i1 %i.bk), !noalias !142
  %i.bl = icmp eq i32 %i.bi, %i.bb
  call void @llvm.assume(i1 %i.bl), !noalias !142
  call void @llvm.assume(i1 %i.bc), !noalias !142
  %.pre494 = load ptr, ptr %i.b, align 8, !tbaa !84 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 4 ; 8 uses
  store ptr %i.bm, ptr %i.c, align 8, !tbaa !81
  %i.bn = load i32, ptr %i.bj, align 4, !tbaa !58
  %i.bo = zext i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %.pre494, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !32
  switch i8 %i.bq, label %bb.o [
    i8 91, label %bb.p
    i8 123, label %bb.p
    i8 58, label %bb.p
    i8 44, label %bb.p
    i8 93, label %bb.l
    i8 125, label %bb.l
    i8 34, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k, %bb.k
  store i32 %.sroa.4239.0.copyload, ptr %i.ay, align 4, !tbaa !86
  br label %.loopexit481

bb.m:                                             ; preds = %bb.k
  %i.br = load i32, ptr %i.bm, align 4, !tbaa !58
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %.pre494, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !32
  %i.bv = icmp eq i8 %i.bu, 58
  br i1 %i.bv, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 2 uses
  store ptr %i.bw, ptr %i.c, align 8, !tbaa !81
  br label %bb.p

bb.o:                                             ; preds = %bb.m, %bb.k
  store i32 %.sroa.4239.0.copyload, ptr %i.ay, align 4, !tbaa !86
  br label %.loopexit481

bb.p:                                             ; preds = %bb.k, %bb.k, %bb.k, %bb.k, %bb.n
  %i.bx = phi ptr [ %i.bm, %bb.k ], [ %i.bm, %bb.k ], [ %i.bm, %bb.k ], [ %i.bm, %bb.k ], [ %i.bw, %bb.n ] ; 2 uses
  %i.by = load ptr, ptr %i.ba, align 8, !tbaa !95
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !108 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !118
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 16 ; 2 uses
  %i.ce = zext i32 %i.cc to i64                   ; 2 uses
  %i.cf = load ptr, ptr %i.cd, align 8, !tbaa !90
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.ce
  %i.ch = icmp ult ptr %i.bx, %i.cg
  br i1 %i.ch, label %.lr.ph, label %_ZN8simdjson8fallback8ondemand13json_iterator10skip_childEi.exit.i

.lr.ph:                                           ; preds = %bb.p, %bb.s
  %i.ci = phi i32 [ %i.cr, %bb.s ], [ %i.bb, %bb.p ] ; 3 uses
  %i.cj = phi ptr [ %i.ck, %bb.s ], [ %i.bx, %bb.p ] ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 4 ; 4 uses
  store ptr %i.ck, ptr %i.c, align 8, !tbaa !81
  %i.cl = load i32, ptr %i.cj, align 4, !tbaa !58
  %i.cm = zext i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %.pre494, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !32
  switch i8 %i.co, label %bb.s [
    i8 91, label %bb.q
    i8 123, label %bb.q
    i8 93, label %bb.r
    i8 125, label %bb.r
  ]

bb.q:                                             ; preds = %.lr.ph, %.lr.ph
  %i.cp = add nsw i32 %i.ci, 1                    ; 2 uses
  store i32 %i.cp, ptr %i.ay, align 4, !tbaa !86
  br label %bb.s

bb.r:                                             ; preds = %.lr.ph, %.lr.ph
  %i.cq = add nsw i32 %i.ci, -1                   ; 4 uses
  store i32 %i.cq, ptr %i.ay, align 4, !tbaa !86
  %.not8.i.i38 = icmp sgt i32 %i.cq, %.sroa.4239.0.copyload
  br i1 %.not8.i.i38, label %bb.s, label %.loopexit481.loopexit

bb.s:                                             ; preds = %.lr.ph, %bb.r, %bb.q
  %i.cr = phi i32 [ %i.ci, %.lr.ph ], [ %i.cq, %bb.r ], [ %i.cp, %bb.q ] ; 2 uses
  %i.cs = load ptr, ptr %i.cd, align 8, !tbaa !90
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.ce
  %i.cu = icmp ult ptr %i.ck, %i.ct
  br i1 %i.cu, label %.lr.ph, label %_ZN8simdjson8fallback8ondemand13json_iterator10skip_childEi.exit.i, !llvm.loop !126

_ZN8simdjson8fallback8ondemand13json_iterator10skip_childEi.exit.i: ; preds = %bb.s, %bb.p
  %i.cv = phi i32 [ %i.bb, %bb.p ], [ %i.cr, %bb.s ]
  store i32 3, ptr %i.az, align 8, !tbaa !91
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit30

.loopexit481.loopexit:                            ; preds = %bb.r
  %i.cw = icmp eq i32 %i.cq, %.sroa.4239.0.copyload
  br label %.loopexit481

.loopexit481:                                     ; preds = %.loopexit481.loopexit, %bb.o, %bb.l
  %i.cx = phi ptr [ %i.bm, %bb.o ], [ %i.bm, %bb.l ], [ %i.ck, %.loopexit481.loopexit ] ; 3 uses
  %i.cy = phi i1 [ true, %bb.o ], [ true, %bb.l ], [ %i.cw, %.loopexit481.loopexit ]
  %i.cz = icmp ugt ptr %i.cx, %.sroa.6241.0.copyload
  call void @llvm.assume(i1 %i.cz)
  call void @llvm.assume(i1 %i.cy)
  call void @llvm.assume(i1 %i.bc)
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  store ptr %i.da, ptr %i.c, align 8, !tbaa !81
  %i.db = load i32, ptr %i.cx, align 4, !tbaa !58
  %i.dc = zext i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw i8, ptr %.pre494, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !32
  switch i8 %i.de, label %bb.v [
    i8 93, label %bb.t
    i8 44, label %bb.u
  ]

bb.t:                                             ; preds = %.loopexit481
  call void @llvm.assume(i1 %or.cond.i.i51)
  store i32 %i.bd, ptr %i.ay, align 4, !tbaa !86
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit30

bb.u:                                             ; preds = %.loopexit481
  call void @llvm.assume(i1 %or.cond.i4.i50)
  store i32 %i.bb, ptr %i.ay, align 4, !tbaa !86
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit30

bb.v:                                             ; preds = %.loopexit481
  store i32 3, ptr %i.az, align 8, !tbaa !91
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit30

_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit30: ; preds = %bb.j, %bb.v, %bb.u, %bb.t, %_ZN8simdjson8fallback8ondemand13json_iterator10skip_childEi.exit.i
  %i.df = phi i32 [ 3, %bb.v ], [ %i.bh, %bb.u ], [ %i.bh, %bb.t ], [ %i.bh, %bb.j ], [ 3, %_ZN8simdjson8fallback8ondemand13json_iterator10skip_childEi.exit.i ]
  %i.dg = phi i32 [ %.sroa.4239.0.copyload, %bb.v ], [ %i.bb, %bb.u ], [ %i.bd, %bb.t ], [ 0, %bb.j ], [ %i.cv, %_ZN8simdjson8fallback8ondemand13json_iterator10skip_childEi.exit.i ] ; 2 uses
  %i.dh = add i64 %.0380482571, 1                 ; 2 uses
  %.not477 = icmp slt i32 %i.dg, %.sroa.4239.0.copyload
  br i1 %.not477, label %.split._ZNK8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEneERKS4_.exit24.loopexit_crit_edge, label %.lr.ph572

bb.w:                                             ; preds = %_ZNK8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEneERKS4_.exit24
  %i.di = getelementptr inbounds nuw i8, ptr %i.b, i64 36 ; 2 uses
  store i32 %.sroa.4239.0.copyload, ptr %i.di, align 4, !tbaa !86
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.6241.0.copyload, i64 4 ; 2 uses
  store ptr %i.dj, ptr %i.c, align 8, !tbaa !81
  %i.dk = icmp sgt i32 %.sroa.4239.0.copyload, 0
  call void @llvm.assume(i1 %i.dk)
  %i.dl = load ptr, ptr %i.b, align 8, !tbaa !84
  %i.dm = load i32, ptr %i.dj, align 4, !tbaa !58
  %i.dn = zext i32 %i.dm to i64
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !32
  %i.dq = icmp eq i8 %i.dp, 93
  br i1 %i.dq, label %bb.x, label %.thread541

bb.x:                                             ; preds = %bb.w
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.6241.0.copyload, i64 8
  store ptr %i.dr, ptr %i.c, align 8, !tbaa !81
  br label %.thread541

.thread541:                                       ; preds = %bb.w, %bb.x
  %.sink576 = phi i32 [ -1, %bb.x ], [ 1, %bb.w ]
  %i.ds = add nsw i32 %.sroa.4239.0.copyload, %.sink576
  store i32 %i.ds, ptr %i.di, align 4, !tbaa !86
  %.sroa.686.0.extract.shift538560 = add i64 %.sroa.3.0.insert.insert.i.i.i.i, %.0380.lcssa
  %i.dt = ashr i64 %.sroa.686.0.extract.shift538560, 32
  br label %.split447.lr.ph

bb.y:                                             ; preds = %_ZNR5folly8ExpectedIiNS_14ConversionCodeEE5valueEv.exit
  %i.du = lshr i64 %.sroa.3.0.insert.insert.i.i.i.i, 32
  %.not479 = icmp eq ptr %i.b, null
  br i1 %.not479, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit, label %.split447.lr.ph

.split447.lr.ph:                                  ; preds = %.thread541, %bb.y
  %i.dv = phi i64 [ %i.dt, %.thread541 ], [ %i.du, %bb.y ] ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.b, i64 36 ; 8 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.dz = add nsw i32 %.sroa.4239.0.copyload, 1   ; 6 uses
  %i.ea = icmp sgt i32 %.sroa.4239.0.copyload, 0  ; 2 uses
  %or.cond.i4.i48 = icmp samesign ult i32 %.sroa.4239.0.copyload, 2147483646
  %i.eb = add nsw i32 %.sroa.4239.0.copyload, -1  ; 3 uses
  %or.cond.i.i49 = icmp ult i32 %i.eb, 2147483646
  %.promoted487 = load i32, ptr %i.dw, align 4, !tbaa !86 ; 2 uses
  %.not480573 = icmp slt i32 %.promoted487, %.sroa.4239.0.copyload
  br i1 %.not480573, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit, label %.lr.ph575.preheader

.lr.ph575.preheader:                              ; preds = %.split447.lr.ph
  %.promoted597 = load i32, ptr %i.dx, align 8, !tbaa !91
  br label %.lr.ph575

.lr.ph575:                                        ; preds = %.lr.ph575.preheader, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit
  %i.ec = phi i32 [ %i.ge, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit ], [ %.promoted597, %.lr.ph575.preheader ] ; 4 uses
  %.06.i486574 = phi i64 [ %i.gg, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit ], [ 0, %.lr.ph575.preheader ] ; 3 uses
  %i.ed = phi i32 [ %i.gf, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit ], [ %.promoted487, %.lr.ph575.preheader ]
  %.not.i33 = icmp eq i32 %i.ec, 0
  br i1 %.not.i33, label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEdeEv.exit, label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEdeEv.exit.thread

_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEdeEv.exit: ; preds = %.lr.ph575
  %i.ee = load ptr, ptr %i.c, align 8, !tbaa !96, !noalias !145 ; 2 uses
  %i.ef = icmp ugt ptr %i.ee, %.sroa.6241.0.copyload
  call void @llvm.assume(i1 %i.ef), !noalias !145
  %i.eg = icmp eq i32 %i.ed, %i.dz
  call void @llvm.assume(i1 %i.eg), !noalias !145
  call void @llvm.assume(i1 %i.ea), !noalias !145
  %i.eh = icmp eq i64 %.06.i486574, %i.dv
  br i1 %i.eh, label %_ZNR8simdjson8fallback35implementation_simdjson_result_baseINS0_8ondemand5valueEE5valueEv.exit, label %bb.z

_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEdeEv.exit.thread: ; preds = %.lr.ph575
  store ptr null, ptr %i.dy, align 8, !tbaa !95, !noalias !150
  store i32 0, ptr %i.dw, align 4, !tbaa !86, !noalias !150
  %i.ei = icmp eq i64 %.06.i486574, %i.dv
  br i1 %i.ei, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit, label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit

bb.z:                                             ; preds = %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEdeEv.exit
  %i.ej = load ptr, ptr %i.c, align 8, !tbaa !96  ; 4 uses
  %i.ek = icmp ugt ptr %i.ej, %.sroa.6241.0.copyload
  call void @llvm.assume(i1 %i.ek)
  %.pre495 = load ptr, ptr %i.b, align 8, !tbaa !84 ; 4 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 4 ; 8 uses
  store ptr %i.el, ptr %i.c, align 8, !tbaa !81
  %i.em = load i32, ptr %i.ej, align 4, !tbaa !58
  %i.en = zext i32 %i.em to i64
  %i.eo = getelementptr inbounds nuw i8, ptr %.pre495, i64 %i.en
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !32
  switch i8 %i.ep, label %bb.ad [
    i8 91, label %bb.ae
    i8 123, label %bb.ae
    i8 58, label %bb.ae
    i8 44, label %bb.ae
    i8 93, label %bb.aa
    i8 125, label %bb.aa
    i8 34, label %bb.ab
  ]

bb.aa:                                            ; preds = %bb.z, %bb.z
  store i32 %.sroa.4239.0.copyload, ptr %i.dw, align 4, !tbaa !86
  br label %.loopexit

bb.ab:                                            ; preds = %bb.z
  %i.eq = load i32, ptr %i.el, align 4, !tbaa !58
  %i.er = zext i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw i8, ptr %.pre495, i64 %i.er
  %i.et = load i8, ptr %i.es, align 1, !tbaa !32
  %i.eu = icmp eq i8 %i.et, 58
  br i1 %i.eu, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ej, i64 8 ; 2 uses
  store ptr %i.ev, ptr %i.c, align 8, !tbaa !81
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab, %bb.z
  store i32 %.sroa.4239.0.copyload, ptr %i.dw, align 4, !tbaa !86
  br label %.loopexit

bb.ae:                                            ; preds = %bb.z, %bb.z, %bb.z, %bb.z, %bb.ac
  %i.ew = phi ptr [ %i.el, %bb.z ], [ %i.el, %bb.z ], [ %i.el, %bb.z ], [ %i.el, %bb.z ], [ %i.ev, %bb.ac ] ; 2 uses
  %i.ex = load ptr, ptr %i.dy, align 8, !tbaa !95
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !108 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !118
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 16 ; 2 uses
  %i.fd = zext i32 %i.fb to i64                   ; 2 uses
  %i.fe = load ptr, ptr %i.fc, align 8, !tbaa !90
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %i.fd
  %i.fg = icmp ult ptr %i.ew, %i.ff
  br i1 %i.fg, label %.lr.ph485, label %_ZN8simdjson8fallback8ondemand13json_iterator10skip_childEi.exit.i41

.lr.ph485:                                        ; preds = %bb.ae, %bb.ah
  %i.fh = phi i32 [ %i.fq, %bb.ah ], [ %i.dz, %bb.ae ] ; 3 uses
  %i.fi = phi ptr [ %i.fj, %bb.ah ], [ %i.ew, %bb.ae ] ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 4 ; 4 uses
  store ptr %i.fj, ptr %i.c, align 8, !tbaa !81
  %i.fk = load i32, ptr %i.fi, align 4, !tbaa !58
  %i.fl = zext i32 %i.fk to i64
  %i.fm = getelementptr inbounds nuw i8, ptr %.pre495, i64 %i.fl
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !32
  switch i8 %i.fn, label %bb.ah [
    i8 91, label %bb.af
    i8 123, label %bb.af
    i8 93, label %bb.ag
    i8 125, label %bb.ag
  ]

bb.af:                                            ; preds = %.lr.ph485, %.lr.ph485
  %i.fo = add nsw i32 %i.fh, 1                    ; 2 uses
  store i32 %i.fo, ptr %i.dw, align 4, !tbaa !86
  br label %bb.ah

bb.ag:                                            ; preds = %.lr.ph485, %.lr.ph485
  %i.fp = add nsw i32 %i.fh, -1                   ; 4 uses
  store i32 %i.fp, ptr %i.dw, align 4, !tbaa !86
  %.not8.i.i45 = icmp sgt i32 %i.fp, %.sroa.4239.0.copyload
  br i1 %.not8.i.i45, label %bb.ah, label %.loopexit.loopexit

bb.ah:                                            ; preds = %.lr.ph485, %bb.ag, %bb.af
  %i.fq = phi i32 [ %i.fh, %.lr.ph485 ], [ %i.fp, %bb.ag ], [ %i.fo, %bb.af ] ; 2 uses
  %i.fr = load ptr, ptr %i.fc, align 8, !tbaa !90
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %i.fd
  %i.ft = icmp ult ptr %i.fj, %i.fs
  br i1 %i.ft, label %.lr.ph485, label %_ZN8simdjson8fallback8ondemand13json_iterator10skip_childEi.exit.i41, !llvm.loop !126

_ZN8simdjson8fallback8ondemand13json_iterator10skip_childEi.exit.i41: ; preds = %bb.ah, %bb.ae
  %i.fu = phi i32 [ %i.dz, %bb.ae ], [ %i.fq, %bb.ah ]
  store i32 3, ptr %i.dx, align 8, !tbaa !91
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit

.loopexit.loopexit:                               ; preds = %bb.ag
  %i.fv = icmp eq i32 %i.fp, %.sroa.4239.0.copyload
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.ad, %bb.aa
  %i.fw = phi ptr [ %i.el, %bb.ad ], [ %i.el, %bb.aa ], [ %i.fj, %.loopexit.loopexit ] ; 3 uses
  %i.fx = phi i1 [ true, %bb.ad ], [ true, %bb.aa ], [ %i.fv, %.loopexit.loopexit ]
  %i.fy = icmp ugt ptr %i.fw, %.sroa.6241.0.copyload
  call void @llvm.assume(i1 %i.fy)
  call void @llvm.assume(i1 %i.fx)
  call void @llvm.assume(i1 %i.ea)
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 4
  store ptr %i.fz, ptr %i.c, align 8, !tbaa !81
  %i.ga = load i32, ptr %i.fw, align 4, !tbaa !58
  %i.gb = zext i32 %i.ga to i64
  %i.gc = getelementptr inbounds nuw i8, ptr %.pre495, i64 %i.gb
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !32
  switch i8 %i.gd, label %bb.ak [
    i8 93, label %bb.ai
    i8 44, label %bb.aj
  ]

bb.ai:                                            ; preds = %.loopexit
  call void @llvm.assume(i1 %or.cond.i.i49)
  store i32 %i.eb, ptr %i.dw, align 4, !tbaa !86
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit

bb.aj:                                            ; preds = %.loopexit
  call void @llvm.assume(i1 %or.cond.i4.i48)
  store i32 %i.dz, ptr %i.dw, align 4, !tbaa !86
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit

bb.ak:                                            ; preds = %.loopexit
  store i32 3, ptr %i.dx, align 8, !tbaa !91
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit

_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit: ; preds = %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEdeEv.exit.thread, %bb.ak, %bb.aj, %bb.ai, %_ZN8simdjson8fallback8ondemand13json_iterator10skip_childEi.exit.i41
  %i.ge = phi i32 [ 3, %bb.ak ], [ %i.ec, %bb.aj ], [ %i.ec, %bb.ai ], [ 3, %_ZN8simdjson8fallback8ondemand13json_iterator10skip_childEi.exit.i41 ], [ %i.ec, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEdeEv.exit.thread ]
  %i.gf = phi i32 [ %.sroa.4239.0.copyload, %bb.ak ], [ %i.dz, %bb.aj ], [ %i.eb, %bb.ai ], [ %i.fu, %_ZN8simdjson8fallback8ondemand13json_iterator10skip_childEi.exit.i41 ], [ 0, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEdeEv.exit.thread ] ; 2 uses
  %i.gg = add i64 %.06.i486574, 1
  %.not480 = icmp slt i32 %i.gf, %.sroa.4239.0.copyload
  br i1 %.not480, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit, label %.lr.ph575

_ZNR8simdjson8fallback35implementation_simdjson_result_baseINS0_8ondemand5valueEE5valueEv.exit: ; preds = %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEdeEv.exit
  %i.gh = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.b, ptr %2, align 8, !tbaa !115
  %.sroa.0.sroa.7.0..sroa_idx225 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.dz, ptr %.sroa.0.sroa.7.0..sroa_idx225, align 8, !tbaa !58
  %.sroa.0.sroa.8.0..sroa_idx231 = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 0, ptr %.sroa.0.sroa.8.0..sroa_idx231, align 4
  %.sroa.0.sroa.9.0..sroa_idx237 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.ee, ptr %.sroa.0.sroa.9.0..sroa_idx237, align 8, !tbaa !90
  store i8 1, ptr %i.gh, align 8, !tbaa !116
  br label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit

_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit: ; preds = %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEdeEv.exit.thread, %.split447.lr.ph, %bb.b, %bb.c, %_ZN5folly5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit.thread, %bb.y, %_ZNK8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEneERKS4_.exit24, %_ZN5folly5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit, %_ZNR8simdjson8fallback35implementation_simdjson_result_baseINS0_8ondemand5valueEE5valueEv.exit
  %.4 = phi i32 [ 0, %_ZN5folly5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit.thread ], [ 17, %bb.c ], [ 0, %_ZNR8simdjson8fallback35implementation_simdjson_result_baseINS0_8ondemand5valueEE5valueEv.exit ], [ 0, %_ZN5folly5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit ], [ 0, %_ZNK8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEneERKS4_.exit24 ], [ 0, %bb.y ], [ 17, %bb.b ], [ 0, %.split447.lr.ph ], [ 0, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEdeEv.exit.thread ], [ 0, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit ]
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 2 uses
  %.not5.i = icmp eq ptr %i.b, null
  br i1 %.not5.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN8facebook5velox9functions17SIMDJsonExtractorEEELb1EEEEE19_M_deallocate_nodesEPSH_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN8facebook5velox9functions17SIMDJsonExtractorEEELb1EEEEE18_M_deallocate_nodeEPSH_.exit.i
  %.06.i = phi ptr [ %i.c, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN8facebook5velox9functions17SIMDJsonExtractorEEELb1EEEEE18_M_deallocate_nodeEPSH_.exit.i ], [ %i.b, %bb.a ] ; 5 uses
  %i.c = load ptr, ptr %.06.i, align 8, !tbaa !39 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.06.i, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %.06.i, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !51   ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt12__shared_ptrIN8facebook5velox9functions17SIMDJsonExtractorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.h = load atomic i64, ptr %i.g acquire, align 8 ; 2 uses
  %i.i = icmp eq i64 %i.h, 4294967297
  %i.j = trunc i64 %i.h to i32                    ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.g, align 8, !tbaa !52
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 0, ptr %i.k, align 4, !tbaa !54
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !55
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #2, !inline_history !151
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !55
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #2, !inline_history !151
  br label %_ZNSt12__shared_ptrIN8facebook5velox9functions17SIMDJsonExtractorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = add nsw i32 %i.j, -1
  store i32 %i.s, ptr %i.g, align 8, !tbaa !58
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.t = atomicrmw volatile add ptr %i.g, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.j, %bb.e ], [ %i.t, %bb.f ]
  %i.u = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.u, label %bb.g, label %_ZNSt12__shared_ptrIN8facebook5velox9functions17SIMDJsonExtractorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i, !prof !29

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #2
  br label %_ZNSt12__shared_ptrIN8facebook5velox9functions17SIMDJsonExtractorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i

_ZNSt12__shared_ptrIN8facebook5velox9functions17SIMDJsonExtractorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i
  %i.v = load ptr, ptr %i.d, align 8, !tbaa !30   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.06.i, i64 24 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN8facebook5velox9functions17SIMDJsonExtractorEEELb1EEEEE18_M_deallocate_nodeEPSH_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt12__shared_ptrIN8facebook5velox9functions17SIMDJsonExtractorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i
  %i.y = load i64, ptr %i.w, align 8, !tbaa !32
  %i.z = add i64 %i.y, 1
  tail call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #22
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN8facebook5velox9functions17SIMDJsonExtractorEEELb1EEEEE18_M_deallocate_nodeEPSH_.exit.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN8facebook5velox9functions17SIMDJsonExtractorEEELb1EEEEE18_M_deallocate_nodeEPSH_.exit.i: ; preds = %_ZNSt12__shared_ptrIN8facebook5velox9functions17SIMDJsonExtractorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i, i64 noundef 64) #22
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN8facebook5velox9functions17SIMDJsonExtractorEEELb1EEEEE19_M_deallocate_nodesEPSH_.exit, label %.lr.ph.i, !llvm.loop !152

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN8facebook5velox9functions17SIMDJsonExtractorEEELb1EEEEE19_M_deallocate_nodesEPSH_.exit: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN8facebook5velox9functions17SIMDJsonExtractorEEELb1EEEEE18_M_deallocate_nodeEPSH_.exit.i, %bb.a
  %i.aa = load ptr, ptr %0, align 8, !tbaa !9
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !19
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
define linkonce_odr void @_ZNSt6vectorIN8facebook5velox9functions17JsonPathTokenizer5TokenESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !64     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !67   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN8facebook5velox9functions17JsonPathTokenizer5TokenES4_EvT_S6_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN8facebook5velox9functions17JsonPathTokenizer5TokenEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.i, %_ZSt8_DestroyIN8facebook5velox9functions17JsonPathTokenizer5TokenEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !30 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyIN8facebook5velox9functions17JsonPathTokenizer5TokenEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !32
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #22
  br label %_ZSt8_DestroyIN8facebook5velox9functions17JsonPathTokenizer5TokenEEvPT_.exit.i.i

_ZSt8_DestroyIN8facebook5velox9functions17JsonPathTokenizer5TokenEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN8facebook5velox9functions17JsonPathTokenizer5TokenES4_EvT_S6_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !68

_ZSt8_DestroyIPN8facebook5velox9functions17JsonPathTokenizer5TokenES4_EvT_S6_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN8facebook5velox9functions17JsonPathTokenizer5TokenEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !64
  br label %_ZSt8_DestroyIPN8facebook5velox9functions17JsonPathTokenizer5TokenES4_EvT_S6_RSaIT0_E.exit

_ZSt8_DestroyIPN8facebook5velox9functions17JsonPathTokenizer5TokenES4_EvT_S6_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN8facebook5velox9functions17JsonPathTokenizer5TokenES4_EvT_S6_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.j = phi ptr [ %.pr, %_ZSt8_DestroyIPN8facebook5velox9functions17JsonPathTokenizer5TokenES4_EvT_S6_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN8facebook5velox9functions17JsonPathTokenizer5TokenESaIS4_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN8facebook5velox9functions17JsonPathTokenizer5TokenES4_EvT_S6_RSaIT0_E.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !69
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #22
  br label %_ZNSt12_Vector_baseIN8facebook5velox9functions17JsonPathTokenizer5TokenESaIS4_EED2Ev.exit

_ZNSt12_Vector_baseIN8facebook5velox9functions17JsonPathTokenizer5TokenESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN8facebook5velox9functions17JsonPathTokenizer5TokenES4_EvT_S6_RSaIT0_E.exit, %bb.b
  ret void
}

declare void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr, i64, i64, ptr) local_unnamed_addr #8

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !55
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #2, !inline_history !153
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !58   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !58
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !55
end_hunk_0
begin_hunk_1_@_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IPN8facebook5velox9functions17SIMDJsonExtractorEEET_:bb.a
          to label %bb.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.i

bb.h:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #24
  unreachable

bb.i:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox9functions17SIMDJsonExtractorD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !64     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !67   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN8facebook5velox9functions17JsonPathTokenizer5TokenES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN8facebook5velox9functions17JsonPathTokenizer5TokenEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.i, %_ZSt8_DestroyIN8facebook5velox9functions17JsonPathTokenizer5TokenEEvPT_.exit.i.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i.i, align 8, !tbaa !30 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyIN8facebook5velox9functions17JsonPathTokenizer5TokenEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !32
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #22
  br label %_ZSt8_DestroyIN8facebook5velox9functions17JsonPathTokenizer5TokenEEvPT_.exit.i.i.i

_ZSt8_DestroyIN8facebook5velox9functions17JsonPathTokenizer5TokenEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN8facebook5velox9functions17JsonPathTokenizer5TokenES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !68

_ZSt8_DestroyIPN8facebook5velox9functions17JsonPathTokenizer5TokenES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN8facebook5velox9functions17JsonPathTokenizer5TokenEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %0, align 8, !tbaa !64
  br label %_ZSt8_DestroyIPN8facebook5velox9functions17JsonPathTokenizer5TokenES4_EvT_S6_RSaIT0_E.exit.i

_ZSt8_DestroyIPN8facebook5velox9functions17JsonPathTokenizer5TokenES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN8facebook5velox9functions17JsonPathTokenizer5TokenES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.j = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN8facebook5velox9functions17JsonPathTokenizer5TokenES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN8facebook5velox9functions17JsonPathTokenizer5TokenESaIS4_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN8facebook5velox9functions17JsonPathTokenizer5TokenES4_EvT_S6_RSaIT0_E.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !69
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #22
  br label %_ZNSt6vectorIN8facebook5velox9functions17JsonPathTokenizer5TokenESaIS4_EED2Ev.exit

_ZNSt6vectorIN8facebook5velox9functions17JsonPathTokenizer5TokenESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN8facebook5velox9functions17JsonPathTokenizer5TokenES4_EvT_S6_RSaIT0_E.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN8facebook5velox9functions17SIMDJsonExtractorELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN8facebook5velox9functions17SIMDJsonExtractorELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !179  ; 6 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !64   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !67   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN8facebook5velox9functions17JsonPathTokenizer5TokenES4_EvT_S6_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyIN8facebook5velox9functions17JsonPathTokenizer5TokenEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.l, %_ZSt8_DestroyIN8facebook5velox9functions17JsonPathTokenizer5TokenEEvPT_.exit.i.i.i.i ], [ %i.d, %bb.b ] ; 3 uses
  %i.g = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !30 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZSt8_DestroyIN8facebook5velox9functions17JsonPathTokenizer5TokenEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.j = load i64, ptr %i.h, align 8, !tbaa !32
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #22
  br label %_ZSt8_DestroyIN8facebook5velox9functions17JsonPathTokenizer5TokenEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN8facebook5velox9functions17JsonPathTokenizer5TokenEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.l, %i.f
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN8facebook5velox9functions17JsonPathTokenizer5TokenES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !68

_ZSt8_DestroyIPN8facebook5velox9functions17JsonPathTokenizer5TokenES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN8facebook5velox9functions17JsonPathTokenizer5TokenEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.b, align 8, !tbaa !64
  br label %_ZSt8_DestroyIPN8facebook5velox9functions17JsonPathTokenizer5TokenES4_EvT_S6_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN8facebook5velox9functions17JsonPathTokenizer5TokenES4_EvT_S6_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN8facebook5velox9functions17JsonPathTokenizer5TokenES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i, %bb.b
  %i.m = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN8facebook5velox9functions17JsonPathTokenizer5TokenES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.d, %bb.b ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i1.i.i, label %_ZN8facebook5velox9functions17SIMDJsonExtractorD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN8facebook5velox9functions17JsonPathTokenizer5TokenES4_EvT_S6_RSaIT0_E.exit.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !69
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.r) #22
  br label %_ZN8facebook5velox9functions17SIMDJsonExtractorD2Ev.exit

_ZN8facebook5velox9functions17SIMDJsonExtractorD2Ev.exit: ; preds = %_ZSt8_DestroyIPN8facebook5velox9functions17JsonPathTokenizer5TokenES4_EvT_S6_RSaIT0_E.exit.i.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 24) #22
  br label %bb.d

bb.d:                                             ; preds = %_ZN8facebook5velox9functions17SIMDJsonExtractorD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN8facebook5velox9functions17SIMDJsonExtractorELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt15_Sp_counted_ptrIPN8facebook5velox9functions17SIMDJsonExtractorELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #7 comdat align 2 {
bb.a:
  ret ptr null
}

declare { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN8facebook5velox9functions17SIMDJsonExtractorEEESaISE_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !29

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !181
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN8facebook5velox9functions17SIMDJsonExtractorEEESaISE_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN8facebook5velox9functions17SIMDJsonExtractorEEELb1EEEEE19_M_allocate_bucketsEm.exit.i, !prof !29

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #20
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #20
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN8facebook5velox9functions17SIMDJsonExtractorEEELb1EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #21 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN8facebook5velox9functions17SIMDJsonExtractorEEESaISE_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN8facebook5velox9functions17SIMDJsonExtractorEEESaISE_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN8facebook5velox9functions17SIMDJsonExtractorEEELb1EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN8facebook5velox9functions17SIMDJsonExtractorEEELb1EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !35   ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !35
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN8facebook5velox9functions17SIMDJsonExtractorEEESaISE_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.j
  %.031 = phi ptr [ %i.i, %bb.j ], [ %i.h, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN8facebook5velox9functions17SIMDJsonExtractorEEESaISE_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %.02530 = phi i64 [ %.1, %bb.j ], [ 0, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN8facebook5velox9functions17SIMDJsonExtractorEEESaISE_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %i.i = load ptr, ptr %.031, align 8, !tbaa !39  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.031, i64 56
  %i.k = load i64, ptr %i.j, align 8, !tbaa !36
  %i.l = urem i64 %i.k, %1                        ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.l ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !38   ; 2 uses
  %.not27 = icmp eq ptr %i.n, null
  br i1 %.not27, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !35
  store ptr %i.o, ptr %.031, align 8, !tbaa !39
  store ptr %.031, ptr %i.g, align 8, !tbaa !35
  store ptr %i.g, ptr %i.m, align 8, !tbaa !38
  %i.p = load ptr, ptr %.031, align 8, !tbaa !39
  %.not28 = icmp eq ptr %i.p, null
  br i1 %.not28, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.02530
  store ptr %.031, ptr %i.q, align 8, !tbaa !38
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !39
  store ptr %i.r, ptr %.031, align 8, !tbaa !39
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !38
  store ptr %.031, ptr %i.s, align 8, !tbaa !39
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.1 = phi i64 [ %.02530, %bb.i ], [ %i.l, %bb.h ], [ %i.l, %bb.g ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !182

._crit_edge:                                      ; preds = %bb.j, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN8facebook5velox9functions17SIMDJsonExtractorEEESaISE_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.t = load ptr, ptr %0, align 8, !tbaa !9      ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN8facebook5velox9functions17SIMDJsonExtractorEEESaISE_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !19
  %i.y = shl i64 %i.x, 3
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.y) #22
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN8facebook5velox9functions17SIMDJsonExtractorEEESaISE_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN8facebook5velox9functions17SIMDJsonExtractorEEESaISE_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.z, align 8, !tbaa !19
  store ptr %.0.i, ptr %0, align 8, !tbaa !9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { nounwind }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #13 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #14 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #20 = { noreturn }
attributes #21 = { builtin allocsize(0) }
attributes #22 = { builtin nounwind }
attributes #23 = { nounwind willreturn memory(read) }
attributes #24 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"branch_weights", i32 1023, i32 1}
!9 = !{!10, !11, i64 0}
!10 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN8facebook5velox9functions17SIMDJsonExtractorEEESaISE_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb1ELb0ELb1EEEE", !11, i64 0, !14, i64 8, !15, i64 16, !14, i64 24, !17, i64 32, !16, i64 48}
!11 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !12, i64 0}
!12 = !{!"any p2 pointer", !13, i64 0}
!13 = !{!"any pointer", !6, i64 0}
!14 = !{!"long", !6, i64 0}
!15 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !16, i64 0}
!16 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !13, i64 0}
!17 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !18, i64 0, !14, i64 8}
!18 = !{!"float", !6, i64 0}
!19 = !{!10, !14, i64 8}
!20 = !{!17, !18, i64 0}
!21 = !{!22, !23, i64 0}
!22 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !23, i64 0}
!23 = !{!"p1 omnipotent char", !13, i64 0}
!24 = !{!25, !27}
!25 = distinct !{!25, !26, !"_ZNK5folly5RangeIPKcE2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEENSt9enable_ifIXsr3std16is_constructibleIT_RKS2_mEE5valueESC_E4typeEDpOT0_: argument 0"}
!26 = distinct !{!26, !"_ZNK5folly5RangeIPKcE2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEENSt9enable_ifIXsr3std16is_constructibleIT_RKS2_mEE5valueESC_E4typeEDpOT0_"}
!27 = distinct !{!27, !28, !"_ZNK5folly5RangeIPKcE3strB5cxx11Ev: argument 0"}
!28 = distinct !{!28, !"_ZNK5folly5RangeIPKcE3strB5cxx11Ev"}
!29 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!30 = !{!31, !23, i64 0}
!31 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !22, i64 0, !14, i64 8, !6, i64 16}
!32 = !{!6, !6, i64 0}
!33 = !{!31, !14, i64 8}
!34 = !{!10, !14, i64 24}
!35 = !{!10, !16, i64 16}
!36 = !{!37, !14, i64 0}
!37 = !{!"_ZTSNSt8__detail21_Hash_node_code_cacheILb1EEE", !14, i64 0}
!38 = !{!16, !16, i64 0}
!39 = !{!15, !16, i64 0}
!40 = distinct !{!40, !41}
!41 = !{!"llvm.loop.mustprogress"}
!42 = !{!43, !43, i64 0}
!43 = !{!"p1 _ZTSN8facebook5velox9functions17SIMDJsonExtractorE", !13, i64 0}
!44 = !{!45, !43, i64 0}
!45 = !{!"_ZTSSt12__shared_ptrIN8facebook5velox9functions17SIMDJsonExtractorELN9__gnu_cxx12_Lock_policyE2EE", !43, i64 0, !46, i64 8}
!46 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !47, i64 0}
!47 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !13, i64 0}
!48 = !{!49}
!49 = distinct !{!49, !50, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!50 = distinct !{!50, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_"}
!51 = !{!46, !47, i64 0}
!52 = !{!53, !5, i64 8}
!53 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !5, i64 8, !5, i64 12}
!54 = !{!53, !5, i64 12}
!55 = !{!56, !56, i64 0}
!56 = !{!"vtable pointer", !7, i64 0}
!57 = distinct !{null, null}
!58 = !{!5, !5, i64 0}
!59 = !{!60, !61, i64 40}
!60 = !{!"_ZTSSt22_Optional_payload_baseIN8facebook5velox9functions17JsonPathTokenizer5TokenEE", !6, i64 0, !61, i64 40}
!61 = !{!"bool", !6, i64 0}
!62 = !{i8 0, i8 2}
!63 = !{}
!64 = !{!65, !66, i64 0}
!65 = !{!"_ZTSNSt12_Vector_baseIN8facebook5velox9functions17JsonPathTokenizer5TokenESaIS4_EE17_Vector_impl_dataE", !66, i64 0, !66, i64 8, !66, i64 16}
!66 = !{!"p1 _ZTSN8facebook5velox9functions17JsonPathTokenizer5TokenE", !13, i64 0}
!67 = !{!65, !66, i64 8}
!68 = distinct !{!68, !41}
!69 = !{!65, !66, i64 16}
!70 = !{!71, !72, i64 32}
!71 = !{!"_ZTSN8facebook5velox9functions17JsonPathTokenizer5TokenE", !31, i64 0, !72, i64 32}
!72 = !{!"_ZTSN8facebook5velox9functions17JsonPathTokenizer8SelectorE", !6, i64 0}
!73 = !{!66, !66, i64 0}
!74 = !{!75, !76, i64 0}
!75 = !{!"_ZTSN8simdjson8fallback8ondemand14value_iteratorE", !76, i64 0, !5, i64 8, !77, i64 16}
!76 = !{!"p1 _ZTSN8simdjson8fallback8ondemand13json_iteratorE", !13, i64 0}
!77 = !{!"p1 int", !13, i64 0}
!78 = !{!79}
!79 = distinct !{!79, !80, !"_ZN8simdjson8fallback8ondemand6object5startERNS1_14value_iteratorE: argument 0"}
!80 = distinct !{!80, !"_ZN8simdjson8fallback8ondemand6object5startERNS1_14value_iteratorE"}
!81 = !{!82, !77, i64 8}
!82 = !{!"_ZTSN8simdjson8fallback8ondemand14token_iteratorE", !23, i64 0, !77, i64 8}
!83 = !{!75, !77, i64 16}
!84 = !{!82, !23, i64 0}
!85 = !{!75, !5, i64 8}
!86 = !{!87, !5, i64 36}
!87 = !{!"_ZTSN8simdjson8fallback8ondemand13json_iteratorE", !82, i64 0, !88, i64 16, !23, i64 24, !89, i64 32, !5, i64 36, !77, i64 40, !61, i64 48}
!88 = !{!"p1 _ZTSN8simdjson8fallback8ondemand6parserE", !13, i64 0}
!89 = !{!"_ZTSN8simdjson10error_codeE", !6, i64 0}
!90 = !{!77, !77, i64 0}
!91 = !{!87, !89, i64 32}
!92 = !{!93}
!93 = distinct !{!93, !94, !"_ZN8simdjson8fallback8ondemand15object_iteratordeEv: argument 0"}
!94 = distinct !{!94, !"_ZN8simdjson8fallback8ondemand15object_iteratordeEv"}
!95 = !{!87, !88, i64 16}
!96 = !{!87, !77, i64 8}
!97 = !{!98}
!98 = distinct !{!98, !99, !"_ZN8simdjson8fallback8ondemand5field5startERNS1_14value_iteratorE: argument 0"}
!99 = distinct !{!99, !"_ZN8simdjson8fallback8ondemand5field5startERNS1_14value_iteratorE"}
!100 = !{!101, !103}
!101 = distinct !{!101, !102, !"_ZNK8simdjson8fallback8ondemand14value_iterator5childEv: argument 0"}
!102 = distinct !{!102, !"_ZNK8simdjson8fallback8ondemand14value_iterator5childEv"}
!103 = distinct !{!103, !104, !"_ZN8simdjson8fallback8ondemand5field5startERKNS1_14value_iteratorENS1_15raw_json_stringE: argument 0"}
!104 = distinct !{!104, !"_ZN8simdjson8fallback8ondemand5field5startERKNS1_14value_iteratorENS1_15raw_json_stringE"}
!105 = !{!106}
!106 = distinct !{!106, !107, !"_ZN8simdjson8fallback8ondemand13json_iterator8unescapeENS1_15raw_json_stringEb: argument 0"}
!107 = distinct !{!107, !"_ZN8simdjson8fallback8ondemand13json_iterator8unescapeENS1_15raw_json_stringEb"}
!108 = !{!109, !109, i64 0}
!109 = !{!"p1 _ZTSN8simdjson8internal25dom_parser_implementationE", !13, i64 0}
!110 = !{!111}
!111 = distinct !{!111, !112, !"_ZNK8simdjson8fallback8ondemand6parser8unescapeENS1_15raw_json_stringERPhb: argument 0"}
!112 = distinct !{!112, !"_ZNK8simdjson8fallback8ondemand6parser8unescapeENS1_15raw_json_stringERPhb"}
!113 = !{!23, !23, i64 0}
!114 = distinct !{null}
!115 = !{!76, !76, i64 0}
!116 = !{!117, !61, i64 24}
!117 = !{!"_ZTSSt22_Optional_payload_baseIN8simdjson8fallback8ondemand5valueEE", !6, i64 0, !61, i64 24}
!118 = !{!119, !5, i64 8}
!119 = !{!"_ZTSN8simdjson8internal25dom_parser_implementationE", !5, i64 8, !120, i64 16, !5, i64 24, !14, i64 32, !14, i64 40}
!120 = !{!"_ZTSSt10unique_ptrIA_jSt14default_deleteIS0_EE", !121, i64 0}
!121 = !{!"_ZTSSt15__uniq_ptr_dataIjSt14default_deleteIA_jELb1ELb1EE", !122, i64 0}
!122 = !{!"_ZTSSt15__uniq_ptr_implIjSt14default_deleteIA_jEE", !123, i64 0}
!123 = !{!"_ZTSSt5tupleIJPjSt14default_deleteIA_jEEE", !124, i64 0}
!124 = !{!"_ZTSSt11_Tuple_implILm0EJPjSt14default_deleteIA_jEEE", !125, i64 0}
!125 = !{!"_ZTSSt10_Head_baseILm0EPjLb0EE", !77, i64 0}
!126 = distinct !{!126, !41}
!127 = !{!128}
!128 = distinct !{!128, !129, !"_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE: argument 0"}
!129 = distinct !{!129, !"_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE"}
!130 = !{!131}
!131 = distinct !{!131, !132, !"_ZN5folly7parseToIiEENSt9enable_ifIX15is_arithmetic_vIT_EENS_8ExpectedINS_5RangeIPKcEENS_14ConversionCodeEEEE4typeES7_RS2_: argument 0"}
end_hunk_1
