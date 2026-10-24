Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_geo-e292a746520cdc95.lance_geo.96157f1265388ca0-cgu.0?download=true
inline.NumInlined: 1265
inline.NumDeleted: 690
loop-unroll.NumCompletelyUnrolled: 38
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox11add_polygonNtNtNtCs4ZmMtVwXPTx_3wkb6reader7polygon7PolygonEB5_:bb.a
  br label %_RNvXs3_NtCs5zgMTRDcqaU_10geo_traits8iteratorINtB5_23PolygonInteriorIteratordRNtNtNtCs4ZmMtVwXPTx_3wkb6reader10linearring10LinearRingNtNtB1h_7polygon7PolygonENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscSToqyP0NyK_9lance_geo.exit

_RNvXs3_NtCs5zgMTRDcqaU_10geo_traits8iteratorINtB5_23PolygonInteriorIteratordRNtNtNtCs4ZmMtVwXPTx_3wkb6reader10linearring10LinearRingNtNtB1h_7polygon7PolygonENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscSToqyP0NyK_9lance_geo.exit: ; preds = %_RNvXs3_NtCs5zgMTRDcqaU_10geo_traits8iteratorINtB5_23PolygonInteriorIteratordRNtNtNtCs4ZmMtVwXPTx_3wkb6reader10linearring10LinearRingNtNtB1h_7polygon7PolygonENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscSToqyP0NyK_9lance_geo.exit.preheader, %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox15add_line_stringRNtNtNtCs4ZmMtVwXPTx_3wkb6reader10linearring10LinearRingEB5_.exit16
  %.promoted3450 = phi double [ %.promoted3449, %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox15add_line_stringRNtNtNtCs4ZmMtVwXPTx_3wkb6reader10linearring10LinearRingEB5_.exit16 ], [ %.promoted, %_RNvXs3_NtCs5zgMTRDcqaU_10geo_traits8iteratorINtB5_23PolygonInteriorIteratordRNtNtNtCs4ZmMtVwXPTx_3wkb6reader10linearring10LinearRingNtNtB1h_7polygon7PolygonENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscSToqyP0NyK_9lance_geo.exit.preheader ] ; 3 uses
  %.sroa.4.046 = phi i64 [ %i.aj, %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox15add_line_stringRNtNtNtCs4ZmMtVwXPTx_3wkb6reader10linearring10LinearRingEB5_.exit16 ], [ 0, %_RNvXs3_NtCs5zgMTRDcqaU_10geo_traits8iteratorINtB5_23PolygonInteriorIteratordRNtNtNtCs4ZmMtVwXPTx_3wkb6reader10linearring10LinearRingNtNtB1h_7polygon7PolygonENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscSToqyP0NyK_9lance_geo.exit.preheader ]
  %.promoted3945 = phi double [ %.promoted38, %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox15add_line_stringRNtNtNtCs4ZmMtVwXPTx_3wkb6reader10linearring10LinearRingEB5_.exit16 ], [ %.promoted35, %_RNvXs3_NtCs5zgMTRDcqaU_10geo_traits8iteratorINtB5_23PolygonInteriorIteratordRNtNtNtCs4ZmMtVwXPTx_3wkb6reader10linearring10LinearRingNtNtB1h_7polygon7PolygonENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscSToqyP0NyK_9lance_geo.exit.preheader ] ; 3 uses
  %i.aj = add nuw nsw i64 %.sroa.4.046, 1         ; 4 uses
  %i.ak = icmp samesign ult i64 %i.aj, %.val7
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = getelementptr inbounds nuw [32 x i8], ptr %.val, i64 %i.aj ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load i64, ptr %i.am, align 8, !noalias !147, !noundef !5 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 25
  %i.ar = icmp eq i64 %i.an, 0
  br i1 %i.ar, label %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox15add_line_stringRNtNtNtCs4ZmMtVwXPTx_3wkb6reader10linearring10LinearRingEB5_.exit16, label %.lr.ph33

.lr.ph33:                                         ; preds = %_RNvXs3_NtCs5zgMTRDcqaU_10geo_traits8iteratorINtB5_23PolygonInteriorIteratordRNtNtNtCs4ZmMtVwXPTx_3wkb6reader10linearring10LinearRingNtNtB1h_7polygon7PolygonENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscSToqyP0NyK_9lance_geo.exit, %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox9add_coordNtNtNtCs4ZmMtVwXPTx_3wkb6reader5coord5CoordEB5_.exit
  %.promoted3448 = phi double [ %.promoted3447, %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox9add_coordNtNtNtCs4ZmMtVwXPTx_3wkb6reader5coord5CoordEB5_.exit ], [ %.promoted3450, %_RNvXs3_NtCs5zgMTRDcqaU_10geo_traits8iteratorINtB5_23PolygonInteriorIteratordRNtNtNtCs4ZmMtVwXPTx_3wkb6reader10linearring10LinearRingNtNtB1h_7polygon7PolygonENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscSToqyP0NyK_9lance_geo.exit ] ; 2 uses
  %.promoted37 = phi double [ %.promoted36, %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox9add_coordNtNtNtCs4ZmMtVwXPTx_3wkb6reader5coord5CoordEB5_.exit ], [ %.promoted3945, %_RNvXs3_NtCs5zgMTRDcqaU_10geo_traits8iteratorINtB5_23PolygonInteriorIteratordRNtNtNtCs4ZmMtVwXPTx_3wkb6reader10linearring10LinearRingNtNtB1h_7polygon7PolygonENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscSToqyP0NyK_9lance_geo.exit ] ; 2 uses
  %i.as = phi double [ %i.ch, %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox9add_coordNtNtNtCs4ZmMtVwXPTx_3wkb6reader5coord5CoordEB5_.exit ], [ %.promoted3450, %_RNvXs3_NtCs5zgMTRDcqaU_10geo_traits8iteratorINtB5_23PolygonInteriorIteratordRNtNtNtCs4ZmMtVwXPTx_3wkb6reader10linearring10LinearRingNtNtB1h_7polygon7PolygonENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscSToqyP0NyK_9lance_geo.exit ] ; 2 uses
  %.sroa.4.0.i1132 = phi i64 [ %i.au, %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox9add_coordNtNtNtCs4ZmMtVwXPTx_3wkb6reader5coord5CoordEB5_.exit ], [ 0, %_RNvXs3_NtCs5zgMTRDcqaU_10geo_traits8iteratorINtB5_23PolygonInteriorIteratordRNtNtNtCs4ZmMtVwXPTx_3wkb6reader10linearring10LinearRingNtNtB1h_7polygon7PolygonENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscSToqyP0NyK_9lance_geo.exit ] ; 2 uses
  %i.at = phi double [ %i.cd, %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox9add_coordNtNtNtCs4ZmMtVwXPTx_3wkb6reader5coord5CoordEB5_.exit ], [ %.promoted3945, %_RNvXs3_NtCs5zgMTRDcqaU_10geo_traits8iteratorINtB5_23PolygonInteriorIteratordRNtNtNtCs4ZmMtVwXPTx_3wkb6reader10linearring10LinearRingNtNtB1h_7polygon7PolygonENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscSToqyP0NyK_9lance_geo.exit ] ; 2 uses
  %i.au = add nuw i64 %.sroa.4.0.i1132, 1         ; 2 uses
  %i.av = load i8, ptr %i.ao, align 8, !range !6, !noalias !148, !noundef !5 ; 2 uses
  %i.aw = zext nneg i8 %i.av to i64
  %switch.gep108 = getelementptr inbounds nuw i8, ptr @switch.table._RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox23add_geometry_collectionNtNtNtCs4ZmMtVwXPTx_3wkb6reader19geometry_collection18GeometryCollectionEB5_, i64 %i.aw
  %switch.load109 = load i8, ptr %switch.gep108, align 1
  %switch.ext110 = zext i8 %switch.load109 to i64
  %i.ax = mul i64 %.sroa.4.0.i1132, %switch.ext110
  %i.ay = or disjoint i64 %i.ax, 4                ; 4 uses
  %i.az = load i64, ptr %i.ap, align 8, !noalias !148, !noundef !5 ; 4 uses
  %i.ba = icmp ugt i64 %i.ay, %i.az
  br i1 %i.ba, label %bb.f, label %_RNvXs_NtCs5zgMTRDcqaU_10geo_traits8iteratorINtB4_18LineStringIteratordNtNtNtCs4ZmMtVwXPTx_3wkb6reader5coord5CoordRNtNtB1a_10linearring10LinearRingENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscSToqyP0NyK_9lance_geo.exit.i13, !prof !7

bb.f:                                             ; preds = %.lr.ph33
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core5slice5index16slice_index_fail(i64 noundef %i.ay, i64 noundef %i.az, i64 noundef %i.az, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #25, !noalias !148
  unreachable

_RNvXs_NtCs5zgMTRDcqaU_10geo_traits8iteratorINtB4_18LineStringIteratordNtNtNtCs4ZmMtVwXPTx_3wkb6reader5coord5CoordRNtNtB1a_10linearring10LinearRingENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscSToqyP0NyK_9lance_geo.exit.i13: ; preds = %.lr.ph33
  %i.bb = load ptr, ptr %i.al, align 8, !noalias !148, !nonnull !5, !noundef !5
  %i.bc = sub nuw i64 %i.az, %i.ay
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ay
  %i.be = load i8, ptr %i.aq, align 1, !range !8, !noalias !148, !noundef !5
  %i.bf = trunc nuw i8 %i.be to i1
  call void @_RNvMNtNtCs4ZmMtVwXPTx_3wkb6reader5coordNtB2_5Coord3new(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bd, i64 noundef %i.bc, i1 noundef zeroext %i.bf, i8 noundef %i.av), !noalias !149
  %.pre.i14 = load i8, ptr %i.ae, align 1, !range !9, !noalias !149 ; 2 uses
  %i.bg = icmp eq i8 %.pre.i14, 2
  br i1 %i.bg, label %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox15add_line_stringRNtNtNtCs4ZmMtVwXPTx_3wkb6reader10linearring10LinearRingEB5_.exit16, label %bb.g

bb.g:                                             ; preds = %_RNvXs_NtCs5zgMTRDcqaU_10geo_traits8iteratorINtB4_18LineStringIteratordNtNtNtCs4ZmMtVwXPTx_3wkb6reader5coord5CoordRNtNtB1a_10linearring10LinearRingENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscSToqyP0NyK_9lance_geo.exit.i13
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !151)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !152), !noalias !153
  tail call void @llvm.experimental.noalias.scope.decl(metadata !154), !noalias !153
  %i.bh = load ptr, ptr %i.c, align 8, !alias.scope !155, !noalias !153, !nonnull !5, !noundef !5 ; 4 uses
  %i.bi = load i64, ptr %i.af, align 8, !alias.scope !155, !noalias !153, !noundef !5 ; 3 uses
  %i.bj = trunc nuw i8 %.pre.i14 to i1
  %i.bk = icmp ult i64 %i.bi, 8                   ; 2 uses
  br i1 %i.bj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  br i1 %i.bk, label %bb.j, label %bb.n

bb.i:                                             ; preds = %bb.g
  br i1 %i.bk, label %bb.j, label %bb.p

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !156
  store ptr @107, ptr %i.b, align 8, !noalias !156
  invoke void @_RNvNtCscI6d9CVNmLh_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #25
          to label %bb.l unwind label %bb.k, !noalias !157

bb.k:                                             ; preds = %bb.j
  %i.bl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorECscSToqyP0NyK_9lance_geo(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #26
          to label %common.resume.i unwind label %bb.m, !noalias !157

bb.l:                                             ; preds = %bb.j
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #27, !noalias !157
  unreachable

common.resume.i:                                  ; preds = %bb.s, %bb.k
  %common.resume.op.i = phi { ptr, i32 } [ %i.bl, %bb.k ], [ %i.by, %bb.s ]
  resume { ptr, i32 } %common.resume.op.i

bb.n:                                             ; preds = %bb.h
  %i.bn = icmp ult i64 %i.bi, 16
  br i1 %i.bn, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bo = load double, ptr %i.bh, align 1, !alias.scope !158, !noalias !159
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bq = load i64, ptr %i.bp, align 1, !alias.scope !160, !noalias !161
  br label %_RNvXs_NtNtCs4ZmMtVwXPTx_3wkb6reader5coordNtB4_5CoordNtNtCs5zgMTRDcqaU_10geo_traits5coord10CoordTrait1y.exit.i

bb.p:                                             ; preds = %bb.i
  %i.br = icmp ult i64 %i.bi, 16
  br i1 %i.br, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bs = load i64, ptr %i.bh, align 1, !alias.scope !162, !noalias !163
  %i.bt = tail call noundef i64 @llvm.bswap.i64(i64 %i.bs)
  %i.bu = bitcast i64 %i.bt to double
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bw = load i64, ptr %i.bv, align 1, !alias.scope !164, !noalias !165
  %i.bx = tail call noundef i64 @llvm.bswap.i64(i64 %i.bw)
  br label %_RNvXs_NtNtCs4ZmMtVwXPTx_3wkb6reader5coordNtB4_5CoordNtNtCs5zgMTRDcqaU_10geo_traits5coord10CoordTrait1y.exit.i

bb.r:                                             ; preds = %bb.p, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !166
  store ptr @107, ptr %i.a, align 8, !noalias !166
  invoke void @_RNvNtCscI6d9CVNmLh_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #25
          to label %bb.t unwind label %bb.s, !noalias !167

bb.s:                                             ; preds = %bb.r
  %i.by = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorECscSToqyP0NyK_9lance_geo(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #26
          to label %common.resume.i unwind label %bb.u, !noalias !167

bb.t:                                             ; preds = %bb.r
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #27, !noalias !167
  unreachable

_RNvXs_NtNtCs4ZmMtVwXPTx_3wkb6reader5coordNtB4_5CoordNtNtCs5zgMTRDcqaU_10geo_traits5coord10CoordTrait1y.exit.i: ; preds = %bb.q, %bb.o
  %i.ca = phi double [ %i.bu, %bb.q ], [ %i.bo, %bb.o ] ; 8 uses
  %.sroa.4.1.i.i3.i = phi i64 [ %i.bx, %bb.q ], [ %i.bq, %bb.o ] ; 3 uses
  %i.cb = bitcast i64 %.sroa.4.1.i.i3.i to double ; 2 uses
  %i.cc = fcmp olt double %i.ca, %i.at
  br i1 %i.cc, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_RNvXs_NtNtCs4ZmMtVwXPTx_3wkb6reader5coordNtB4_5CoordNtNtCs5zgMTRDcqaU_10geo_traits5coord10CoordTrait1y.exit.i
  store double %i.ca, ptr %0, align 8, !alias.scope !150, !noalias !153
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_RNvXs_NtNtCs4ZmMtVwXPTx_3wkb6reader5coordNtB4_5CoordNtNtCs5zgMTRDcqaU_10geo_traits5coord10CoordTrait1y.exit.i
  %.promoted36 = phi double [ %i.ca, %bb.v ], [ %.promoted37, %_RNvXs_NtNtCs4ZmMtVwXPTx_3wkb6reader5coordNtB4_5CoordNtNtCs5zgMTRDcqaU_10geo_traits5coord10CoordTrait1y.exit.i ] ; 2 uses
  %i.cd = phi double [ %i.ca, %bb.v ], [ %i.at, %_RNvXs_NtNtCs4ZmMtVwXPTx_3wkb6reader5coordNtB4_5CoordNtNtCs5zgMTRDcqaU_10geo_traits5coord10CoordTrait1y.exit.i ]
  %i.ce = load double, ptr %i.ag, align 8, !alias.scope !150, !noalias !153, !noundef !5
  %i.cf = fcmp ogt double %i.ce, %i.cb
  br i1 %i.cf, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i64 %.sroa.4.1.i.i3.i, ptr %i.ag, align 8, !alias.scope !150, !noalias !153
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.cg = fcmp ogt double %i.ca, %i.as
  br i1 %i.cg, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store double %i.ca, ptr %i.ah, align 8, !alias.scope !150, !noalias !153
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.promoted3447 = phi double [ %i.ca, %bb.z ], [ %.promoted3448, %bb.y ] ; 2 uses
  %i.ch = phi double [ %i.ca, %bb.z ], [ %i.as, %bb.y ]
  %i.ci = load double, ptr %i.ai, align 8, !alias.scope !150, !noalias !153, !noundef !5
  %i.cj = fcmp olt double %i.ci, %i.cb
  br i1 %i.cj, label %bb.ab, label %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox9add_coordNtNtNtCs4ZmMtVwXPTx_3wkb6reader5coord5CoordEB5_.exit

bb.ab:                                            ; preds = %bb.aa
  store i64 %.sroa.4.1.i.i3.i, ptr %i.ai, align 8, !alias.scope !150, !noalias !153
  br label %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox9add_coordNtNtNtCs4ZmMtVwXPTx_3wkb6reader5coord5CoordEB5_.exit

_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox9add_coordNtNtNtCs4ZmMtVwXPTx_3wkb6reader5coord5CoordEB5_.exit: ; preds = %bb.aa, %bb.ab
  %i.ck = icmp eq i64 %i.au, %i.an
  br i1 %i.ck, label %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox15add_line_stringRNtNtNtCs4ZmMtVwXPTx_3wkb6reader10linearring10LinearRingEB5_.exit16, label %.lr.ph33

_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox15add_line_stringRNtNtNtCs4ZmMtVwXPTx_3wkb6reader10linearring10LinearRingEB5_.exit16: ; preds = %_RNvXs_NtCs5zgMTRDcqaU_10geo_traits8iteratorINtB4_18LineStringIteratordNtNtNtCs4ZmMtVwXPTx_3wkb6reader5coord5CoordRNtNtB1a_10linearring10LinearRingENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscSToqyP0NyK_9lance_geo.exit.i13, %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox9add_coordNtNtNtCs4ZmMtVwXPTx_3wkb6reader5coord5CoordEB5_.exit, %_RNvXs3_NtCs5zgMTRDcqaU_10geo_traits8iteratorINtB5_23PolygonInteriorIteratordRNtNtNtCs4ZmMtVwXPTx_3wkb6reader10linearring10LinearRingNtNtB1h_7polygon7PolygonENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscSToqyP0NyK_9lance_geo.exit
  %.promoted3449 = phi double [ %.promoted3450, %_RNvXs3_NtCs5zgMTRDcqaU_10geo_traits8iteratorINtB5_23PolygonInteriorIteratordRNtNtNtCs4ZmMtVwXPTx_3wkb6reader10linearring10LinearRingNtNtB1h_7polygon7PolygonENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscSToqyP0NyK_9lance_geo.exit ], [ %.promoted3447, %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox9add_coordNtNtNtCs4ZmMtVwXPTx_3wkb6reader5coord5CoordEB5_.exit ], [ %.promoted3448, %_RNvXs_NtCs5zgMTRDcqaU_10geo_traits8iteratorINtB4_18LineStringIteratordNtNtNtCs4ZmMtVwXPTx_3wkb6reader5coord5CoordRNtNtB1a_10linearring10LinearRingENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscSToqyP0NyK_9lance_geo.exit.i13 ]
  %.promoted38 = phi double [ %.promoted3945, %_RNvXs3_NtCs5zgMTRDcqaU_10geo_traits8iteratorINtB5_23PolygonInteriorIteratordRNtNtNtCs4ZmMtVwXPTx_3wkb6reader10linearring10LinearRingNtNtB1h_7polygon7PolygonENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscSToqyP0NyK_9lance_geo.exit ], [ %.promoted36, %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox9add_coordNtNtNtCs4ZmMtVwXPTx_3wkb6reader5coord5CoordEB5_.exit ], [ %.promoted37, %_RNvXs_NtCs5zgMTRDcqaU_10geo_traits8iteratorINtB4_18LineStringIteratordNtNtNtCs4ZmMtVwXPTx_3wkb6reader5coord5CoordRNtNtB1a_10linearring10LinearRingENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscSToqyP0NyK_9lance_geo.exit.i13 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.cl = icmp eq i64 %i.aj, %.sroa.0.0.i.i
  br i1 %i.cl, label %_RNvXs3_NtCs5zgMTRDcqaU_10geo_traits8iteratorINtB5_23PolygonInteriorIteratordRNtNtNtCs4ZmMtVwXPTx_3wkb6reader10linearring10LinearRingNtNtB1h_7polygon7PolygonENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscSToqyP0NyK_9lance_geo.exit.thread, label %_RNvXs3_NtCs5zgMTRDcqaU_10geo_traits8iteratorINtB5_23PolygonInteriorIteratordRNtNtNtCs4ZmMtVwXPTx_3wkb6reader10linearring10LinearRingNtNtB1h_7polygon7PolygonENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscSToqyP0NyK_9lance_geo.exit

_RNvXs3_NtCs5zgMTRDcqaU_10geo_traits8iteratorINtB5_23PolygonInteriorIteratordRNtNtNtCs4ZmMtVwXPTx_3wkb6reader10linearring10LinearRingNtNtB1h_7polygon7PolygonENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscSToqyP0NyK_9lance_geo.exit.thread: ; preds = %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox15add_line_stringRNtNtNtCs4ZmMtVwXPTx_3wkb6reader10linearring10LinearRingEB5_.exit16, %_RNvXs3_NtCs5zgMTRDcqaU_10geo_traits8iteratorINtB5_23PolygonInteriorIteratordRNtNtNtCs4ZmMtVwXPTx_3wkb6reader10linearring10LinearRingNtNtB1h_7polygon7PolygonENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscSToqyP0NyK_9lance_geo.exit.lr.ph, %bb.e
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc void @_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox11add_polygonNtNtNtCsdkROKCKhesT_3wkt5types7polygon7PolygonEB5_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.a, align 8             ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val7 = load i64, ptr %i.b, align 8, !noundef !5 ; 5 uses
  %.not.i = icmp eq i64 %.val7, 0
  %.not25 = icmp eq ptr %.val, null               ; 2 uses
  %.not = select i1 %.not.i, i1 true, i1 %.not25
  br i1 %.not, label %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox15add_line_stringRNtNtNtCsdkROKCKhesT_3wkt5types10linestring10LineStringEB5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !188)
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noalias !189, !noundef !5 ; 3 uses
  %i.e = icmp ult i64 %i.d, 192153584101141163
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox15add_line_stringRNtNtNtCsdkROKCKhesT_3wkt5types10linestring10LineStringEB5_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %.promoted.i = load double, ptr %0, align 8, !alias.scope !188
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !noalias !190, !nonnull !5, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.promoted11.i = load double, ptr %i.i, align 8, !alias.scope !191
  %.promoted12.i = load double, ptr %i.j, align 8, !alias.scope !191
  %.promoted13.i = load double, ptr %i.k, align 8, !alias.scope !191
  br label %bb.c

bb.c:                                             ; preds = %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox9add_coordRNtNtNtCsdkROKCKhesT_3wkt5types5coord5CoordEB5_.exit.i, %.lr.ph.i
  %i.l = phi double [ %.promoted13.i, %.lr.ph.i ], [ %i.ac, %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox9add_coordRNtNtNtCsdkROKCKhesT_3wkt5types5coord5CoordEB5_.exit.i ] ; 2 uses
  %i.m = phi double [ %.promoted12.i, %.lr.ph.i ], [ %i.aa, %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox9add_coordRNtNtNtCsdkROKCKhesT_3wkt5types5coord5CoordEB5_.exit.i ] ; 2 uses
  %i.n = phi double [ %.promoted11.i, %.lr.ph.i ], [ %i.y, %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox9add_coordRNtNtNtCsdkROKCKhesT_3wkt5types5coord5CoordEB5_.exit.i ] ; 2 uses
  %.sroa.4.010.i = phi i64 [ 0, %.lr.ph.i ], [ %i.p, %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox9add_coordRNtNtNtCsdkROKCKhesT_3wkt5types5coord5CoordEB5_.exit.i ] ; 2 uses
  %i.o = phi double [ %.promoted.i, %.lr.ph.i ], [ %i.w, %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox9add_coordRNtNtNtCsdkROKCKhesT_3wkt5types5coord5CoordEB5_.exit.i ] ; 2 uses
  %i.p = add nuw nsw i64 %.sroa.4.010.i, 1        ; 2 uses
  %i.q = getelementptr inbounds nuw [48 x i8], ptr %i.h, i64 %.sroa.4.010.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !192)
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = load double, ptr %i.r, align 8, !noalias !193, !noundef !5 ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.u = load double, ptr %i.t, align 8, !noalias !193, !noundef !5 ; 6 uses
  %i.v = fcmp olt double %i.s, %i.o
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store double %i.s, ptr %0, align 8, !alias.scope !191
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.w = phi double [ %i.s, %bb.d ], [ %i.o, %bb.c ]
  %i.x = fcmp olt double %i.u, %i.n
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store double %i.u, ptr %i.i, align 8, !alias.scope !191
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.y = phi double [ %i.u, %bb.f ], [ %i.n, %bb.e ]
  %i.z = fcmp ogt double %i.s, %i.m
  br i1 %i.z, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store double %i.s, ptr %i.j, align 8, !alias.scope !191
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.aa = phi double [ %i.s, %bb.h ], [ %i.m, %bb.g ]
  %i.ab = fcmp ogt double %i.u, %i.l
  br i1 %i.ab, label %bb.j, label %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox9add_coordRNtNtNtCsdkROKCKhesT_3wkt5types5coord5CoordEB5_.exit.i

bb.j:                                             ; preds = %bb.i
  store double %i.u, ptr %i.k, align 8, !alias.scope !191
  br label %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox9add_coordRNtNtNtCsdkROKCKhesT_3wkt5types5coord5CoordEB5_.exit.i

_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox9add_coordRNtNtNtCsdkROKCKhesT_3wkt5types5coord5CoordEB5_.exit.i: ; preds = %bb.j, %bb.i
  %i.ac = phi double [ %i.l, %bb.i ], [ %i.u, %bb.j ]
  %i.ad = icmp eq i64 %i.p, %i.d
  br i1 %i.ad, label %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox15add_line_stringRNtNtNtCsdkROKCKhesT_3wkt5types10linestring10LineStringEB5_.exit, label %bb.c

_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox15add_line_stringRNtNtNtCsdkROKCKhesT_3wkt5types10linestring10LineStringEB5_.exit: ; preds = %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox9add_coordRNtNtNtCsdkROKCKhesT_3wkt5types5coord5CoordEB5_.exit.i, %bb.b, %bb.a
  %i.ae = icmp ult i64 %.val7, 288230376151711744
  tail call void @llvm.assume(i1 %i.ae)
  %2 = tail call noundef range(i64 0, 288230376151711743) i64 @llvm.usub.sat.i64(i64 %.val7, i64 1)
  %3 = icmp samesign ult i64 %.val7, 2
  br i1 %3, label %_RNvXs3_NtCs5zgMTRDcqaU_10geo_traits8iteratorINtB5_23PolygonInteriorIteratordRNtNtNtCsdkROKCKhesT_3wkt5types10linestring10LineStringNtNtB1h_7polygon7PolygonENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscSToqyP0NyK_9lance_geo.exit.thread, label %_RNvXs3_NtCs5zgMTRDcqaU_10geo_traits8iteratorINtB5_23PolygonInteriorIteratordRNtNtNtCsdkROKCKhesT_3wkt5types10linestring10LineStringNtNtB1h_7polygon7PolygonENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscSToqyP0NyK_9lance_geo.exit.lr.ph

_RNvXs3_NtCs5zgMTRDcqaU_10geo_traits8iteratorINtB5_23PolygonInteriorIteratordRNtNtNtCsdkROKCKhesT_3wkt5types10linestring10LineStringNtNtB1h_7polygon7PolygonENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscSToqyP0NyK_9lance_geo.exit.lr.ph: ; preds = %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox15add_line_stringRNtNtNtCsdkROKCKhesT_3wkt5types10linestring10LineStringEB5_.exit
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br i1 %.not25, label %_RNvXs3_NtCs5zgMTRDcqaU_10geo_traits8iteratorINtB5_23PolygonInteriorIteratordRNtNtNtCsdkROKCKhesT_3wkt5types10linestring10LineStringNtNtB1h_7polygon7PolygonENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscSToqyP0NyK_9lance_geo.exit.thread, label %_RNvXs3_NtCs5zgMTRDcqaU_10geo_traits8iteratorINtB5_23PolygonInteriorIteratordRNtNtNtCsdkROKCKhesT_3wkt5types10linestring10LineStringNtNtB1h_7polygon7PolygonENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscSToqyP0NyK_9lance_geo.exit.preheader

_RNvXs3_NtCs5zgMTRDcqaU_10geo_traits8iteratorINtB5_23PolygonInteriorIteratordRNtNtNtCsdkROKCKhesT_3wkt5types10linestring10LineStringNtNtB1h_7polygon7PolygonENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscSToqyP0NyK_9lance_geo.exit.preheader: ; preds = %_RNvXs3_NtCs5zgMTRDcqaU_10geo_traits8iteratorINtB5_23PolygonInteriorIteratordRNtNtNtCsdkROKCKhesT_3wkt5types10linestring10LineStringNtNtB1h_7polygon7PolygonENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscSToqyP0NyK_9lance_geo.exit.lr.ph
  %.promoted29 = load double, ptr %6, align 8
  %.promoted28 = load double, ptr %5, align 8
  %.promoted27 = load double, ptr %4, align 8
  %.promoted = load double, ptr %0, align 8
  br label %_RNvXs3_NtCs5zgMTRDcqaU_10geo_traits8iteratorINtB5_23PolygonInteriorIteratordRNtNtNtCsdkROKCKhesT_3wkt5types10linestring10LineStringNtNtB1h_7polygon7PolygonENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscSToqyP0NyK_9lance_geo.exit

_RNvXs3_NtCs5zgMTRDcqaU_10geo_traits8iteratorINtB5_23PolygonInteriorIteratordRNtNtNtCsdkROKCKhesT_3wkt5types10linestring10LineStringNtNtB1h_7polygon7PolygonENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscSToqyP0NyK_9lance_geo.exit: ; preds = %_RNvXs3_NtCs5zgMTRDcqaU_10geo_traits8iteratorINtB5_23PolygonInteriorIteratordRNtNtNtCsdkROKCKhesT_3wkt5types10linestring10LineStringNtNtB1h_7polygon7PolygonENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscSToqyP0NyK_9lance_geo.exit.preheader, %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox15add_line_stringRNtNtNtCsdkROKCKhesT_3wkt5types10linestring10LineStringEB5_.exit18
  %i.af = phi double [ %i.bt, %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox15add_line_stringRNtNtNtCsdkROKCKhesT_3wkt5types10linestring10LineStringEB5_.exit18 ], [ %.promoted29, %_RNvXs3_NtCs5zgMTRDcqaU_10geo_traits8iteratorINtB5_23PolygonInteriorIteratordRNtNtNtCsdkROKCKhesT_3wkt5types10linestring10LineStringNtNtB1h_7polygon7PolygonENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscSToqyP0NyK_9lance_geo.exit.preheader ] ; 3 uses
  %i.ag = phi double [ %i.bu, %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox15add_line_stringRNtNtNtCsdkROKCKhesT_3wkt5types10linestring10LineStringEB5_.exit18 ], [ %.promoted28, %_RNvXs3_NtCs5zgMTRDcqaU_10geo_traits8iteratorINtB5_23PolygonInteriorIteratordRNtNtNtCsdkROKCKhesT_3wkt5types10linestring10LineStringNtNtB1h_7polygon7PolygonENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscSToqyP0NyK_9lance_geo.exit.preheader ] ; 3 uses
  %i.ah = phi double [ %i.bv, %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox15add_line_stringRNtNtNtCsdkROKCKhesT_3wkt5types10linestring10LineStringEB5_.exit18 ], [ %.promoted27, %_RNvXs3_NtCs5zgMTRDcqaU_10geo_traits8iteratorINtB5_23PolygonInteriorIteratordRNtNtNtCsdkROKCKhesT_3wkt5types10linestring10LineStringNtNtB1h_7polygon7PolygonENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscSToqyP0NyK_9lance_geo.exit.preheader ] ; 3 uses
  %.sroa.4.026 = phi i64 [ %i.aj, %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox15add_line_stringRNtNtNtCsdkROKCKhesT_3wkt5types10linestring10LineStringEB5_.exit18 ], [ 0, %_RNvXs3_NtCs5zgMTRDcqaU_10geo_traits8iteratorINtB5_23PolygonInteriorIteratordRNtNtNtCsdkROKCKhesT_3wkt5types10linestring10LineStringNtNtB1h_7polygon7PolygonENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscSToqyP0NyK_9lance_geo.exit.preheader ]
  %i.ai = phi double [ %i.bw, %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox15add_line_stringRNtNtNtCsdkROKCKhesT_3wkt5types10linestring10LineStringEB5_.exit18 ], [ %.promoted, %_RNvXs3_NtCs5zgMTRDcqaU_10geo_traits8iteratorINtB5_23PolygonInteriorIteratordRNtNtNtCsdkROKCKhesT_3wkt5types10linestring10LineStringNtNtB1h_7polygon7PolygonENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscSToqyP0NyK_9lance_geo.exit.preheader ] ; 3 uses
  %i.aj = add nuw nsw i64 %.sroa.4.026, 1         ; 4 uses
  %i.ak = icmp samesign ult i64 %i.aj, %.val7
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = getelementptr inbounds nuw [32 x i8], ptr %.val, i64 %i.aj ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194)
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load i64, ptr %i.am, align 8, !noalias !195, !noundef !5 ; 3 uses
  %i.ao = icmp ult i64 %i.an, 192153584101141163
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = icmp eq i64 %i.an, 0
  br i1 %i.ap, label %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox15add_line_stringRNtNtNtCsdkROKCKhesT_3wkt5types10linestring10LineStringEB5_.exit18, label %.lr.ph.i11

.lr.ph.i11:                                       ; preds = %_RNvXs3_NtCs5zgMTRDcqaU_10geo_traits8iteratorINtB5_23PolygonInteriorIteratordRNtNtNtCsdkROKCKhesT_3wkt5types10linestring10LineStringNtNtB1h_7polygon7PolygonENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscSToqyP0NyK_9lance_geo.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !noalias !196, !nonnull !5, !noundef !5
  br label %bb.k

bb.k:                                             ; preds = %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox9add_coordRNtNtNtCsdkROKCKhesT_3wkt5types5coord5CoordEB5_.exit.i17, %.lr.ph.i11
  %i.as = phi double [ %i.af, %.lr.ph.i11 ], [ %i.bq, %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox9add_coordRNtNtNtCsdkROKCKhesT_3wkt5types5coord5CoordEB5_.exit.i17 ]
  %i.at = phi double [ %i.ag, %.lr.ph.i11 ], [ %i.bn, %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox9add_coordRNtNtNtCsdkROKCKhesT_3wkt5types5coord5CoordEB5_.exit.i17 ]
  %i.au = phi double [ %i.ah, %.lr.ph.i11 ], [ %i.bk, %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox9add_coordRNtNtNtCsdkROKCKhesT_3wkt5types5coord5CoordEB5_.exit.i17 ]
  %i.av = phi double [ %i.ai, %.lr.ph.i11 ], [ %i.bh, %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox9add_coordRNtNtNtCsdkROKCKhesT_3wkt5types5coord5CoordEB5_.exit.i17 ]
  %i.aw = phi double [ %i.af, %.lr.ph.i11 ], [ %i.br, %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox9add_coordRNtNtNtCsdkROKCKhesT_3wkt5types5coord5CoordEB5_.exit.i17 ] ; 2 uses
  %i.ax = phi double [ %i.ag, %.lr.ph.i11 ], [ %i.bo, %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox9add_coordRNtNtNtCsdkROKCKhesT_3wkt5types5coord5CoordEB5_.exit.i17 ] ; 2 uses
  %i.ay = phi double [ %i.ah, %.lr.ph.i11 ], [ %i.bl, %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox9add_coordRNtNtNtCsdkROKCKhesT_3wkt5types5coord5CoordEB5_.exit.i17 ] ; 2 uses
  %.sroa.4.010.i16 = phi i64 [ 0, %.lr.ph.i11 ], [ %i.ba, %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox9add_coordRNtNtNtCsdkROKCKhesT_3wkt5types5coord5CoordEB5_.exit.i17 ] ; 2 uses
  %i.az = phi double [ %i.ai, %.lr.ph.i11 ], [ %i.bi, %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox9add_coordRNtNtNtCsdkROKCKhesT_3wkt5types5coord5CoordEB5_.exit.i17 ] ; 2 uses
  %i.ba = add nuw nsw i64 %.sroa.4.010.i16, 1     ; 2 uses
  %i.bb = getelementptr inbounds nuw [48 x i8], ptr %i.ar, i64 %.sroa.4.010.i16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !197)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.bd = load double, ptr %i.bc, align 8, !noalias !198, !noundef !5 ; 8 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %i.bf = load double, ptr %i.be, align 8, !noalias !198, !noundef !5 ; 8 uses
  %i.bg = fcmp olt double %i.bd, %i.az
  br i1 %i.bg, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store double %i.bd, ptr %0, align 8, !alias.scope !199
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bh = phi double [ %i.bd, %bb.l ], [ %i.av, %bb.k ] ; 2 uses
  %i.bi = phi double [ %i.bd, %bb.l ], [ %i.az, %bb.k ]
  %i.bj = fcmp olt double %i.bf, %i.ay
  br i1 %i.bj, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store double %i.bf, ptr %4, align 8, !alias.scope !199
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bk = phi double [ %i.bf, %bb.n ], [ %i.au, %bb.m ] ; 2 uses
  %i.bl = phi double [ %i.bf, %bb.n ], [ %i.ay, %bb.m ]
  %i.bm = fcmp ogt double %i.bd, %i.ax
  br i1 %i.bm, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store double %i.bd, ptr %5, align 8, !alias.scope !199
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bn = phi double [ %i.bd, %bb.p ], [ %i.at, %bb.o ] ; 2 uses
  %i.bo = phi double [ %i.bd, %bb.p ], [ %i.ax, %bb.o ]
  %i.bp = fcmp ogt double %i.bf, %i.aw
  br i1 %i.bp, label %bb.r, label %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox9add_coordRNtNtNtCsdkROKCKhesT_3wkt5types5coord5CoordEB5_.exit.i17

bb.r:                                             ; preds = %bb.q
  store double %i.bf, ptr %6, align 8, !alias.scope !199
  br label %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox9add_coordRNtNtNtCsdkROKCKhesT_3wkt5types5coord5CoordEB5_.exit.i17

_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox9add_coordRNtNtNtCsdkROKCKhesT_3wkt5types5coord5CoordEB5_.exit.i17: ; preds = %bb.r, %bb.q
  %i.bq = phi double [ %i.as, %bb.q ], [ %i.bf, %bb.r ] ; 2 uses
  %i.br = phi double [ %i.aw, %bb.q ], [ %i.bf, %bb.r ]
  %i.bs = icmp eq i64 %i.ba, %i.an
  br i1 %i.bs, label %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox15add_line_stringRNtNtNtCsdkROKCKhesT_3wkt5types10linestring10LineStringEB5_.exit18, label %bb.k

_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox15add_line_stringRNtNtNtCsdkROKCKhesT_3wkt5types10linestring10LineStringEB5_.exit18: ; preds = %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox9add_coordRNtNtNtCsdkROKCKhesT_3wkt5types5coord5CoordEB5_.exit.i17, %_RNvXs3_NtCs5zgMTRDcqaU_10geo_traits8iteratorINtB5_23PolygonInteriorIteratordRNtNtNtCsdkROKCKhesT_3wkt5types10linestring10LineStringNtNtB1h_7polygon7PolygonENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscSToqyP0NyK_9lance_geo.exit
  %i.bt = phi double [ %i.af, %_RNvXs3_NtCs5zgMTRDcqaU_10geo_traits8iteratorINtB5_23PolygonInteriorIteratordRNtNtNtCsdkROKCKhesT_3wkt5types10linestring10LineStringNtNtB1h_7polygon7PolygonENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscSToqyP0NyK_9lance_geo.exit ], [ %i.bq, %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox9add_coordRNtNtNtCsdkROKCKhesT_3wkt5types5coord5CoordEB5_.exit.i17 ]
  %i.bu = phi double [ %i.ag, %_RNvXs3_NtCs5zgMTRDcqaU_10geo_traits8iteratorINtB5_23PolygonInteriorIteratordRNtNtNtCsdkROKCKhesT_3wkt5types10linestring10LineStringNtNtB1h_7polygon7PolygonENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscSToqyP0NyK_9lance_geo.exit ], [ %i.bn, %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox9add_coordRNtNtNtCsdkROKCKhesT_3wkt5types5coord5CoordEB5_.exit.i17 ]
  %i.bv = phi double [ %i.ah, %_RNvXs3_NtCs5zgMTRDcqaU_10geo_traits8iteratorINtB5_23PolygonInteriorIteratordRNtNtNtCsdkROKCKhesT_3wkt5types10linestring10LineStringNtNtB1h_7polygon7PolygonENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscSToqyP0NyK_9lance_geo.exit ], [ %i.bk, %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox9add_coordRNtNtNtCsdkROKCKhesT_3wkt5types5coord5CoordEB5_.exit.i17 ]
  %i.bw = phi double [ %i.ai, %_RNvXs3_NtCs5zgMTRDcqaU_10geo_traits8iteratorINtB5_23PolygonInteriorIteratordRNtNtNtCsdkROKCKhesT_3wkt5types10linestring10LineStringNtNtB1h_7polygon7PolygonENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscSToqyP0NyK_9lance_geo.exit ], [ %i.bh, %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox9add_coordRNtNtNtCsdkROKCKhesT_3wkt5types5coord5CoordEB5_.exit.i17 ]
  %i.bx = icmp eq i64 %i.aj, %2
  br i1 %i.bx, label %_RNvXs3_NtCs5zgMTRDcqaU_10geo_traits8iteratorINtB5_23PolygonInteriorIteratordRNtNtNtCsdkROKCKhesT_3wkt5types10linestring10LineStringNtNtB1h_7polygon7PolygonENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscSToqyP0NyK_9lance_geo.exit.thread, label %_RNvXs3_NtCs5zgMTRDcqaU_10geo_traits8iteratorINtB5_23PolygonInteriorIteratordRNtNtNtCsdkROKCKhesT_3wkt5types10linestring10LineStringNtNtB1h_7polygon7PolygonENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscSToqyP0NyK_9lance_geo.exit

_RNvXs3_NtCs5zgMTRDcqaU_10geo_traits8iteratorINtB5_23PolygonInteriorIteratordRNtNtNtCsdkROKCKhesT_3wkt5types10linestring10LineStringNtNtB1h_7polygon7PolygonENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscSToqyP0NyK_9lance_geo.exit.thread: ; preds = %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox15add_line_stringRNtNtNtCsdkROKCKhesT_3wkt5types10linestring10LineStringEB5_.exit18, %_RNvXs3_NtCs5zgMTRDcqaU_10geo_traits8iteratorINtB5_23PolygonInteriorIteratordRNtNtNtCsdkROKCKhesT_3wkt5types10linestring10LineStringNtNtB1h_7polygon7PolygonENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscSToqyP0NyK_9lance_geo.exit.lr.ph, %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox15add_line_stringRNtNtNtCsdkROKCKhesT_3wkt5types10linestring10LineStringEB5_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox11add_polygonNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar7polygon7PolygonEB5_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 5 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [32 x i8], align 8                ; 5 uses
  %i.h = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @_RNvXs_NtNtCsfC1H8tYQGpK_14geoarrow_array6scalar7polygonNtB4_7PolygonNtNtCs5zgMTRDcqaU_10geo_traits7polygon12PolygonTrait8exterior(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1)
  %i.i = load ptr, ptr %i.h, align 8, !noundef !5
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !222)
  %i.j = call noundef i64 @_RNvXs_NtNtCsfC1H8tYQGpK_14geoarrow_array6scalar10linestringNtB4_10LineStringNtNtCs5zgMTRDcqaU_10geo_traits11line_string15LineStringTrait10num_coords(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.g), !noalias !223 ; 2 uses
  %.promoted.i = load double, ptr %0, align 8, !alias.scope !222 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !224
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox15add_line_stringNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar10linestring10LineStringEB5_.exit, label %_RNvXs_NtCs5zgMTRDcqaU_10geo_traits8iteratorINtB4_18LineStringIteratordNtNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar5coord8combined5CoordNtNtB1c_10linestring10LineStringENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscSToqyP0NyK_9lance_geo.exit.lr.ph.i

_RNvXs_NtCs5zgMTRDcqaU_10geo_traits8iteratorINtB4_18LineStringIteratordNtNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar5coord8combined5CoordNtNtB1c_10linestring10LineStringENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscSToqyP0NyK_9lance_geo.exit.lr.ph.i: ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.promoted6.i = load double, ptr %i.l, align 8, !alias.scope !222
  %.promoted7.i = load double, ptr %i.m, align 8, !alias.scope !222
  %.promoted8.i = load double, ptr %i.n, align 8, !alias.scope !222
  br label %_RNvXs_NtCs5zgMTRDcqaU_10geo_traits8iteratorINtB4_18LineStringIteratordNtNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar5coord8combined5CoordNtNtB1c_10linestring10LineStringENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscSToqyP0NyK_9lance_geo.exit.i

_RNvXs_NtCs5zgMTRDcqaU_10geo_traits8iteratorINtB4_18LineStringIteratordNtNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar5coord8combined5CoordNtNtB1c_10linestring10LineStringENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscSToqyP0NyK_9lance_geo.exit.i: ; preds = %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox9add_coordNtNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar5coord8combined5CoordEB5_.exit.i, %_RNvXs_NtCs5zgMTRDcqaU_10geo_traits8iteratorINtB4_18LineStringIteratordNtNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar5coord8combined5CoordNtNtB1c_10linestring10LineStringENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscSToqyP0NyK_9lance_geo.exit.lr.ph.i
  %i.o = phi double [ %.promoted8.i, %_RNvXs_NtCs5zgMTRDcqaU_10geo_traits8iteratorINtB4_18LineStringIteratordNtNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar5coord8combined5CoordNtNtB1c_10linestring10LineStringENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscSToqyP0NyK_9lance_geo.exit.lr.ph.i ], [ %i.ac, %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox9add_coordNtNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar5coord8combined5CoordEB5_.exit.i ] ; 2 uses
  %i.p = phi double [ %.promoted7.i, %_RNvXs_NtCs5zgMTRDcqaU_10geo_traits8iteratorINtB4_18LineStringIteratordNtNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar5coord8combined5CoordNtNtB1c_10linestring10LineStringENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscSToqyP0NyK_9lance_geo.exit.lr.ph.i ], [ %i.aa, %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox9add_coordNtNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar5coord8combined5CoordEB5_.exit.i ] ; 2 uses
  %i.q = phi double [ %.promoted6.i, %_RNvXs_NtCs5zgMTRDcqaU_10geo_traits8iteratorINtB4_18LineStringIteratordNtNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar5coord8combined5CoordNtNtB1c_10linestring10LineStringENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscSToqyP0NyK_9lance_geo.exit.lr.ph.i ], [ %i.y, %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox9add_coordNtNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar5coord8combined5CoordEB5_.exit.i ] ; 2 uses
  %.sroa.4.05.i = phi i64 [ 0, %_RNvXs_NtCs5zgMTRDcqaU_10geo_traits8iteratorINtB4_18LineStringIteratordNtNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar5coord8combined5CoordNtNtB1c_10linestring10LineStringENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscSToqyP0NyK_9lance_geo.exit.lr.ph.i ], [ %i.s, %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox9add_coordNtNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar5coord8combined5CoordEB5_.exit.i ] ; 2 uses
  %i.r = phi double [ %.promoted.i, %_RNvXs_NtCs5zgMTRDcqaU_10geo_traits8iteratorINtB4_18LineStringIteratordNtNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar5coord8combined5CoordNtNtB1c_10linestring10LineStringENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscSToqyP0NyK_9lance_geo.exit.lr.ph.i ], [ %i.w, %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox9add_coordNtNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar5coord8combined5CoordEB5_.exit.i ] ; 3 uses
  %i.s = add nuw i64 %.sroa.4.05.i, 1             ; 2 uses
  call void @_RNvXs_NtNtCsfC1H8tYQGpK_14geoarrow_array6scalar10linestringNtB4_10LineStringNtNtCs5zgMTRDcqaU_10geo_traits11line_string15LineStringTrait15coord_unchecked(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.g, i64 noundef %.sroa.4.05.i), !noalias !225
  %.pr.i = load i64, ptr %i.d, align 8, !noalias !224
  %.not.i = icmp eq i64 %.pr.i, -1
  br i1 %.not.i, label %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox15add_line_stringNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar10linestring10LineStringEB5_.exit, label %bb.c

bb.c:                                             ; preds = %_RNvXs_NtCs5zgMTRDcqaU_10geo_traits8iteratorINtB4_18LineStringIteratordNtNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar5coord8combined5CoordNtNtB1c_10linestring10LineStringENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscSToqyP0NyK_9lance_geo.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !224
  call void @llvm.experimental.noalias.scope.decl(metadata !226)
  %i.t = call noundef double @_RNvXs2_NtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar5coord8combinedNtB5_5CoordNtNtCs5zgMTRDcqaU_10geo_traits5coord10CoordTrait1x(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.c), !noalias !227 ; 6 uses
  %i.u = call noundef double @_RNvXs2_NtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar5coord8combinedNtB5_5CoordNtNtCs5zgMTRDcqaU_10geo_traits5coord10CoordTrait1y(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.c), !noalias !227 ; 6 uses
  %i.v = fcmp olt double %i.t, %i.r
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store double %i.t, ptr %0, align 8, !alias.scope !227
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.w = phi double [ %i.t, %bb.d ], [ %i.r, %bb.c ] ; 2 uses
  %i.x = fcmp olt double %i.u, %i.q
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store double %i.u, ptr %i.l, align 8, !alias.scope !227
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.y = phi double [ %i.u, %bb.f ], [ %i.q, %bb.e ]
  %i.z = fcmp ogt double %i.t, %i.p
  br i1 %i.z, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store double %i.t, ptr %i.m, align 8, !alias.scope !227
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.aa = phi double [ %i.t, %bb.h ], [ %i.p, %bb.g ]
  %i.ab = fcmp ogt double %i.u, %i.o
  br i1 %i.ab, label %bb.j, label %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox9add_coordNtNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar5coord8combined5CoordEB5_.exit.i

bb.j:                                             ; preds = %bb.i
  store double %i.u, ptr %i.n, align 8, !alias.scope !227
  br label %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox9add_coordNtNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar5coord8combined5CoordEB5_.exit.i

_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox9add_coordNtNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar5coord8combined5CoordEB5_.exit.i: ; preds = %bb.j, %bb.i
  %i.ac = phi double [ %i.o, %bb.i ], [ %i.u, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !224
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !224
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !224
  %i.ad = icmp eq i64 %i.s, %i.j
  br i1 %i.ad, label %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox15add_line_stringNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar10linestring10LineStringEB5_.exit, label %_RNvXs_NtCs5zgMTRDcqaU_10geo_traits8iteratorINtB4_18LineStringIteratordNtNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar5coord8combined5CoordNtNtB1c_10linestring10LineStringENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscSToqyP0NyK_9lance_geo.exit.i

_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox15add_line_stringNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar10linestring10LineStringEB5_.exit: ; preds = %_RNvXs_NtCs5zgMTRDcqaU_10geo_traits8iteratorINtB4_18LineStringIteratordNtNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar5coord8combined5CoordNtNtB1c_10linestring10LineStringENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscSToqyP0NyK_9lance_geo.exit.i, %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox9add_coordNtNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar5coord8combined5CoordEB5_.exit.i, %bb.b
  %.promoted26 = phi double [ %.promoted.i, %bb.b ], [ %i.r, %_RNvXs_NtCs5zgMTRDcqaU_10geo_traits8iteratorINtB4_18LineStringIteratordNtNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar5coord8combined5CoordNtNtB1c_10linestring10LineStringENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscSToqyP0NyK_9lance_geo.exit.i ], [ %i.w, %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox9add_coordNtNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar5coord8combined5CoordEB5_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !224
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.l

bb.k:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %.promoted.pre = load double, ptr %0, align 8
  br label %bb.l

bb.l:                                             ; preds = %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox15add_line_stringNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar10linestring10LineStringEB5_.exit, %bb.k
  %.promoted = phi double [ %.promoted26, %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox15add_line_stringNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar10linestring10LineStringEB5_.exit ], [ %.promoted.pre, %bb.k ]
  %i.ae = call noundef i64 @_RNvXs_NtNtCsfC1H8tYQGpK_14geoarrow_array6scalar7polygonNtB4_7PolygonNtNtCs5zgMTRDcqaU_10geo_traits7polygon12PolygonTrait13num_interiors(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1), !noalias !228 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %.loopexit, label %_RNvXs3_NtCs5zgMTRDcqaU_10geo_traits8iteratorINtB5_23PolygonInteriorIteratordNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar10linestring10LineStringNtNtB1g_7polygon7PolygonENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscSToqyP0NyK_9lance_geo.exit.lr.ph

_RNvXs3_NtCs5zgMTRDcqaU_10geo_traits8iteratorINtB5_23PolygonInteriorIteratordNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar10linestring10LineStringNtNtB1g_7polygon7PolygonENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscSToqyP0NyK_9lance_geo.exit.lr.ph: ; preds = %bb.l
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.promoted18 = load double, ptr %i.ag, align 8
  %.promoted19 = load double, ptr %i.ah, align 8
  %.promoted20 = load double, ptr %i.ai, align 8
  br label %_RNvXs3_NtCs5zgMTRDcqaU_10geo_traits8iteratorINtB5_23PolygonInteriorIteratordNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar10linestring10LineStringNtNtB1g_7polygon7PolygonENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscSToqyP0NyK_9lance_geo.exit

_RNvXs3_NtCs5zgMTRDcqaU_10geo_traits8iteratorINtB5_23PolygonInteriorIteratordNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar10linestring10LineStringNtNtB1g_7polygon7PolygonENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscSToqyP0NyK_9lance_geo.exit: ; preds = %_RNvXs3_NtCs5zgMTRDcqaU_10geo_traits8iteratorINtB5_23PolygonInteriorIteratordNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar10linestring10LineStringNtNtB1g_7polygon7PolygonENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscSToqyP0NyK_9lance_geo.exit.lr.ph, %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox15add_line_stringNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar10linestring10LineStringEB5_.exit13
  %i.aj = phi double [ %.promoted20, %_RNvXs3_NtCs5zgMTRDcqaU_10geo_traits8iteratorINtB5_23PolygonInteriorIteratordNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar10linestring10LineStringNtNtB1g_7polygon7PolygonENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscSToqyP0NyK_9lance_geo.exit.lr.ph ], [ %i.bo, %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox15add_line_stringNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar10linestring10LineStringEB5_.exit13 ] ; 3 uses
  %i.ak = phi double [ %.promoted19, %_RNvXs3_NtCs5zgMTRDcqaU_10geo_traits8iteratorINtB5_23PolygonInteriorIteratordNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar10linestring10LineStringNtNtB1g_7polygon7PolygonENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscSToqyP0NyK_9lance_geo.exit.lr.ph ], [ %i.bp, %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox15add_line_stringNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar10linestring10LineStringEB5_.exit13 ] ; 3 uses
  %i.al = phi double [ %.promoted18, %_RNvXs3_NtCs5zgMTRDcqaU_10geo_traits8iteratorINtB5_23PolygonInteriorIteratordNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar10linestring10LineStringNtNtB1g_7polygon7PolygonENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscSToqyP0NyK_9lance_geo.exit.lr.ph ], [ %i.bq, %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox15add_line_stringNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar10linestring10LineStringEB5_.exit13 ] ; 3 uses
  %.sroa.4.017 = phi i64 [ 0, %_RNvXs3_NtCs5zgMTRDcqaU_10geo_traits8iteratorINtB5_23PolygonInteriorIteratordNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar10linestring10LineStringNtNtB1g_7polygon7PolygonENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscSToqyP0NyK_9lance_geo.exit.lr.ph ], [ %i.an, %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox15add_line_stringNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar10linestring10LineStringEB5_.exit13 ] ; 2 uses
  %i.am = phi double [ %.promoted, %_RNvXs3_NtCs5zgMTRDcqaU_10geo_traits8iteratorINtB5_23PolygonInteriorIteratordNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar10linestring10LineStringNtNtB1g_7polygon7PolygonENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscSToqyP0NyK_9lance_geo.exit.lr.ph ], [ %i.br, %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox15add_line_stringNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar10linestring10LineStringEB5_.exit13 ] ; 3 uses
  %i.an = add nuw i64 %.sroa.4.017, 1             ; 2 uses
  call void @_RNvXs_NtNtCsfC1H8tYQGpK_14geoarrow_array6scalar7polygonNtB4_7PolygonNtNtCs5zgMTRDcqaU_10geo_traits7polygon12PolygonTrait18interior_unchecked(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i64 noundef %.sroa.4.017), !noalias !229
  %.pr = load ptr, ptr %i.f, align 8
  %.not1 = icmp eq ptr %.pr, null
  br i1 %.not1, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %_RNvXs3_NtCs5zgMTRDcqaU_10geo_traits8iteratorINtB5_23PolygonInteriorIteratordNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar10linestring10LineStringNtNtB1g_7polygon7PolygonENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscSToqyP0NyK_9lance_geo.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !230)
  %i.ao = call noundef i64 @_RNvXs_NtNtCsfC1H8tYQGpK_14geoarrow_array6scalar10linestringNtB4_10LineStringNtNtCs5zgMTRDcqaU_10geo_traits11line_string15LineStringTrait10num_coords(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e), !noalias !231 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !232
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox15add_line_stringNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar10linestring10LineStringEB5_.exit13, label %_RNvXs_NtCs5zgMTRDcqaU_10geo_traits8iteratorINtB4_18LineStringIteratordNtNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar5coord8combined5CoordNtNtB1c_10linestring10LineStringENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscSToqyP0NyK_9lance_geo.exit.i8

_RNvXs_NtCs5zgMTRDcqaU_10geo_traits8iteratorINtB4_18LineStringIteratordNtNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar5coord8combined5CoordNtNtB1c_10linestring10LineStringENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscSToqyP0NyK_9lance_geo.exit.i8: ; preds = %bb.m, %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox9add_coordNtNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar5coord8combined5CoordEB5_.exit.i12
  %i.aq = phi double [ %i.bl, %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox9add_coordNtNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar5coord8combined5CoordEB5_.exit.i12 ], [ %i.aj, %bb.m ] ; 2 uses
  %i.ar = phi double [ %i.bi, %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox9add_coordNtNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar5coord8combined5CoordEB5_.exit.i12 ], [ %i.ak, %bb.m ] ; 2 uses
  %i.as = phi double [ %i.bf, %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox9add_coordNtNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar5coord8combined5CoordEB5_.exit.i12 ], [ %i.al, %bb.m ] ; 2 uses
  %i.at = phi double [ %i.bc, %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox9add_coordNtNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar5coord8combined5CoordEB5_.exit.i12 ], [ %i.am, %bb.m ] ; 2 uses
  %i.au = phi double [ %i.bm, %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox9add_coordNtNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar5coord8combined5CoordEB5_.exit.i12 ], [ %i.aj, %bb.m ] ; 2 uses
  %i.av = phi double [ %i.bj, %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox9add_coordNtNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar5coord8combined5CoordEB5_.exit.i12 ], [ %i.ak, %bb.m ] ; 2 uses
  %i.aw = phi double [ %i.bg, %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox9add_coordNtNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar5coord8combined5CoordEB5_.exit.i12 ], [ %i.al, %bb.m ] ; 2 uses
  %.sroa.4.05.i9 = phi i64 [ %i.ay, %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox9add_coordNtNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar5coord8combined5CoordEB5_.exit.i12 ], [ 0, %bb.m ] ; 2 uses
  %i.ax = phi double [ %i.bd, %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox9add_coordNtNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar5coord8combined5CoordEB5_.exit.i12 ], [ %i.am, %bb.m ] ; 2 uses
  %i.ay = add nuw i64 %.sroa.4.05.i9, 1           ; 2 uses
  call void @_RNvXs_NtNtCsfC1H8tYQGpK_14geoarrow_array6scalar10linestringNtB4_10LineStringNtNtCs5zgMTRDcqaU_10geo_traits11line_string15LineStringTrait15coord_unchecked(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e, i64 noundef %.sroa.4.05.i9), !noalias !233
  %.pr.i10 = load i64, ptr %i.b, align 8, !noalias !232
  %.not.i11 = icmp eq i64 %.pr.i10, -1
  br i1 %.not.i11, label %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox15add_line_stringNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar10linestring10LineStringEB5_.exit13, label %bb.n

bb.n:                                             ; preds = %_RNvXs_NtCs5zgMTRDcqaU_10geo_traits8iteratorINtB4_18LineStringIteratordNtNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar5coord8combined5CoordNtNtB1c_10linestring10LineStringENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscSToqyP0NyK_9lance_geo.exit.i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !232
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !232
  call void @llvm.experimental.noalias.scope.decl(metadata !234)
  %i.az = call noundef double @_RNvXs2_NtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar5coord8combinedNtB5_5CoordNtNtCs5zgMTRDcqaU_10geo_traits5coord10CoordTrait1x(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a), !noalias !235 ; 8 uses
  %i.ba = call noundef double @_RNvXs2_NtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar5coord8combinedNtB5_5CoordNtNtCs5zgMTRDcqaU_10geo_traits5coord10CoordTrait1y(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a), !noalias !235 ; 8 uses
  %i.bb = fcmp olt double %i.az, %i.ax
  br i1 %i.bb, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store double %i.az, ptr %0, align 8, !alias.scope !235
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bc = phi double [ %i.az, %bb.o ], [ %i.at, %bb.n ] ; 2 uses
  %i.bd = phi double [ %i.az, %bb.o ], [ %i.ax, %bb.n ]
  %i.be = fcmp olt double %i.ba, %i.aw
  br i1 %i.be, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store double %i.ba, ptr %i.ag, align 8, !alias.scope !235
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bf = phi double [ %i.ba, %bb.q ], [ %i.as, %bb.p ] ; 2 uses
  %i.bg = phi double [ %i.ba, %bb.q ], [ %i.aw, %bb.p ]
  %i.bh = fcmp ogt double %i.az, %i.av
  br i1 %i.bh, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store double %i.az, ptr %i.ah, align 8, !alias.scope !235
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bi = phi double [ %i.az, %bb.s ], [ %i.ar, %bb.r ] ; 2 uses
  %i.bj = phi double [ %i.az, %bb.s ], [ %i.av, %bb.r ]
end_hunk_0
