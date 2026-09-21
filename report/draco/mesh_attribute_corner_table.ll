Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/draco/original/mesh_attribute_corner_table?download=true
inline.NumInlined: 805
inline.NumDeleted: 329
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN5draco24MeshAttributeCornerTable17InitFromAttributeEPKNS_4MeshEPKNS_11CornerTableEPKNS_14PointAttributeE:bb.a

_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit61.thread: ; preds = %bb.u
  %i.fm = add i32 %i.ai, -1
  br label %bb.v

_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit61: ; preds = %bb.u
  %i.fn = add i32 %i.ai, 2                        ; 2 uses
  %i.fo = icmp eq i32 %i.fn, -1
  br i1 %i.fo, label %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit71, label %bb.v

bb.v:                                             ; preds = %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit61.thread, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit61
  %.sink.i60167 = phi i32 [ %i.fm, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit61.thread ], [ %i.fn, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit61 ]
  %i.fp = zext i32 %.sink.i60167 to i64
  %i.fq = load ptr, ptr %.pre, align 8, !tbaa !58, !noalias !146
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %i.fp
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !73, !noalias !146
  %i.ft = zext i32 %i.fs to i64
  br label %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit71

_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit71: ; preds = %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit61, %bb.v
  %storemerge.i62 = phi i64 [ %i.ft, %bb.v ], [ 4294967295, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit61 ] ; 2 uses
  %.zext181 = lshr i64 %storemerge.i62, 6
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %.zext181 ; 2 uses
  %i.fv = and i64 %storemerge.i62, 63
  %i.fw = shl nuw i64 1, %i.fv
  %i.fx = load i64, ptr %i.fu, align 8, !tbaa !71
  %i.fy = or i64 %i.fw, %i.fx
  store i64 %i.fy, ptr %i.fu, align 8, !tbaa !71
  %i.fz = add nuw i32 %i.ap, 1                    ; 2 uses
  %i.ga = urem i32 %i.fz, 3
  %.not.i68 = icmp eq i32 %i.ga, 0
  %i.gb = add i32 %i.ap, -2
  %spec.select.i69 = select i1 %.not.i68, i32 %i.gb, i32 %i.fz ; 2 uses
  %i.gc = icmp eq i32 %spec.select.i69, -1
  br i1 %i.gc, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit71
  %i.gd = zext i32 %spec.select.i69 to i64
  %i.ge = load ptr, ptr %.pre, align 8, !tbaa !58, !noalias !147
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %i.gd
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !73, !noalias !147
  %i.gh = zext i32 %i.gg to i64
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit71
  %storemerge.i72 = phi i64 [ %i.gh, %bb.w ], [ 4294967295, %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit71 ] ; 2 uses
  %.zext183 = lshr i64 %storemerge.i72, 6
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %.zext183 ; 2 uses
  %i.gj = and i64 %storemerge.i72, 63
  %i.gk = shl nuw i64 1, %i.gj
  %i.gl = load i64, ptr %i.gi, align 8, !tbaa !71
  %i.gm = or i64 %i.gk, %i.gl
  store i64 %i.gm, ptr %i.gi, align 8, !tbaa !71
  %i.gn = urem i32 %i.ap, 3
  %.not.i78 = icmp eq i32 %i.gn, 0
  br i1 %.not.i78, label %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit80, label %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit80.thread

_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit80.thread: ; preds = %bb.x
  %i.go = add i32 %i.ap, -1
  br label %.loopexit.sink.split.sink.split

_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit80: ; preds = %bb.x
  %i.gp = add i32 %i.ap, 2                        ; 2 uses
  %i.gq = icmp eq i32 %i.gp, -1
  br i1 %i.gq, label %.loopexit.sink.split, label %.loopexit.sink.split.sink.split

.loopexit.sink.split.sink.split:                  ; preds = %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit80, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit80.thread, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread
  %.sink.i79169.sink = phi i32 [ %i.bq, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit ], [ %i.bp, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread ], [ %i.go, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit80.thread ], [ %i.gp, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit80 ]
  %.sink208.ph = phi ptr [ %i.bi, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit ], [ %i.bi, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread ], [ %i.fg, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit80.thread ], [ %i.fg, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit80 ]
  %i.gr = zext i32 %.sink.i79169.sink to i64
  %i.gs = load ptr, ptr %.pre, align 8, !tbaa !58, !noalias !102
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.gs, i64 %i.gr
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !73, !noalias !102
  %i.gv = zext i32 %i.gu to i64
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %.loopexit.sink.split.sink.split, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit80, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit
  %storemerge.i22.sink209 = phi i64 [ 4294967295, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit ], [ 4294967295, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit80 ], [ %i.gv, %.loopexit.sink.split.sink.split ] ; 2 uses
  %.sink208 = phi ptr [ %i.bi, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit ], [ %i.fg, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit80 ], [ %.sink208.ph, %.loopexit.sink.split.sink.split ]
  %.zext173 = lshr i64 %storemerge.i22.sink209, 6
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %.sink208, i64 %.zext173 ; 2 uses
  %i.gx = and i64 %storemerge.i22.sink209, 63
  %i.gy = shl nuw i64 1, %i.gx
  %i.gz = load i64, ptr %i.gw, align 8, !tbaa !71
  %i.ha = or i64 %i.gy, %i.gz
  store i64 %i.ha, ptr %i.gw, align 8, !tbaa !71
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.sink.split, %_ZNK5draco4Mesh15CornerToPointIdEi.exit37.cont.1, %bb.j, %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !57
  %i.hd = load ptr, ptr %.pre, align 8, !tbaa !58
  %i.he = ptrtoint ptr %i.hc to i64
  %i.hf = ptrtoint ptr %i.hd to i64
  %i.hg = sub i64 %i.he, %i.hf
  %i.hh = lshr exact i64 %i.hg, 2
  %i.hi = and i64 %i.hh, 4294967295
  %i.hj = icmp samesign ult i64 %indvars.iv.next, %i.hi
  br i1 %i.hj, label %bb.g, label %._crit_edge, !llvm.loop !136

_ZN5draco24MeshAttributeCornerTable17RecomputeVerticesEPKNS_4MeshEPKNS_14PointAttributeE.exit: ; preds = %bb.f, %bb.e, %bb.a
  ret i1 %i.a
}

declare noundef zeroext i1 @_ZNK5draco11CornerTable13IsDegeneratedENS_9IndexTypeIjNS_19FaceIndex_tag_type_EEE(ptr noundef nonnull align 8 dereferenceable(168), ptr nofreeobj noundef align 4 dead_on_return dereferenceable(4)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5draco24MeshAttributeCornerTable17RecomputeVerticesEPKNS_4MeshEPKNS_14PointAttributeE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = icmp ne ptr %1, null
  %i.b = icmp ne ptr %2, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_ZN5draco24MeshAttributeCornerTable25RecomputeVerticesInternalILb1EEEbPKNS_4MeshEPKNS_14PointAttributeE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull %1, ptr noundef nonnull %2)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZN5draco24MeshAttributeCornerTable25RecomputeVerticesInternalILb0EEEbPKNS_4MeshEPKNS_14PointAttributeE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef null, ptr noundef null)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5draco24MeshAttributeCornerTable11AddSeamEdgeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(224) %0, ptr nofreeobj noundef readonly align 4 captures(none) dead_on_return dereferenceable(4) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !68     ; 8 uses
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !12     ; 2 uses
  %i.d = lshr i32 %i.a, 6
  %.zext = zext nneg i32 %i.d to i64
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.zext ; 2 uses
  %i.f = and i64 %i.b, 63
  %i.g = shl nuw i64 1, %i.f
  %i.h = load i64, ptr %i.e, align 8, !tbaa !71
  %i.i = or i64 %i.g, %i.h
  store i64 %i.i, ptr %i.e, align 8, !tbaa !71
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !69   ; 5 uses
  %i.m = icmp eq i32 %i.a, -1                     ; 2 uses
  br i1 %i.m, label %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, label %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit: ; preds = %bb.a
  %i.n = add nuw i32 %i.a, 1                      ; 2 uses
  %i.o = urem i32 %i.n, 3
  %.not.i = icmp eq i32 %i.o, 0
  %i.p = add i32 %i.a, -2
  %spec.select.i = select i1 %.not.i, i32 %i.p, i32 %i.n ; 2 uses
  %i.q = icmp eq i32 %spec.select.i, -1
  br i1 %i.q, label %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit
  %i.r = zext i32 %spec.select.i to i64
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !58, !noalias !166
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.r
  %i.u = load i32, ptr %i.t, align 4, !tbaa !73, !noalias !166
  %i.v = zext i32 %i.u to i64
  br label %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit: ; preds = %bb.a, %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, %bb.b
  %storemerge.i = phi i64 [ %i.v, %bb.b ], [ 4294967295, %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit ], [ 4294967295, %bb.a ] ; 2 uses
  %i.w = load ptr, ptr %i.j, align 8, !tbaa !12   ; 5 uses
  %.zext73 = lshr i64 %storemerge.i, 6
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.zext73 ; 2 uses
  %i.y = and i64 %storemerge.i, 63
  %i.z = shl nuw i64 1, %i.y
  %i.aa = load i64, ptr %i.x, align 8, !tbaa !71
  %i.ab = or i64 %i.aa, %i.z
  store i64 %i.ab, ptr %i.x, align 8, !tbaa !71
  br i1 %i.m, label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit
  %i.ac = urem i32 %i.a, 3
  %.not.i5 = icmp eq i32 %i.ac, 0
  br i1 %.not.i5, label %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, label %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread66

_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread66: ; preds = %bb.c
  %i.ad = add i32 %i.a, -1
  br label %bb.d

_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit: ; preds = %bb.c
  %i.ae = add i32 %i.a, 2                         ; 2 uses
  %i.af = icmp eq i32 %i.ae, -1
  br i1 %i.af, label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread66, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit
  %.sink.i668 = phi i32 [ %i.ad, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread66 ], [ %i.ae, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit ]
  %i.ag = zext i32 %.sink.i668 to i64
  %i.ah = load ptr, ptr %i.l, align 8, !tbaa !58, !noalias !167
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.ag
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !73, !noalias !167
  %i.ak = zext i32 %i.aj to i64
  br label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit: ; preds = %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, %bb.d
  %storemerge.i7 = phi i64 [ %i.ak, %bb.d ], [ 4294967295, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit ] ; 2 uses
  %.zext75 = lshr i64 %storemerge.i7, 6
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.zext75 ; 2 uses
  %i.am = and i64 %storemerge.i7, 63
  %i.an = shl nuw i64 1, %i.am
  %i.ao = load i64, ptr %i.al, align 8, !tbaa !71
  %i.ap = or i64 %i.an, %i.ao
  store i64 %i.ap, ptr %i.al, align 8, !tbaa !71
  %i.aq = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !60, !noalias !168
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.b
  %i.at = load i32, ptr %i.as, align 4, !tbaa !68, !noalias !168 ; 8 uses
  %.not = icmp eq i32 %i.at, -1
  br i1 %.not, label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread, label %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit21

_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit21: ; preds = %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 0, ptr %i.au, align 8, !tbaa !52
  %i.av = lshr i32 %i.at, 6
  %.zext77 = zext nneg i32 %i.av to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.zext77 ; 2 uses
  %i.ax = and i32 %i.at, 63
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = shl nuw i64 1, %i.ay
  %i.ba = load i64, ptr %i.aw, align 8, !tbaa !71
  %i.bb = or i64 %i.ba, %i.az
  store i64 %i.bb, ptr %i.aw, align 8, !tbaa !71
  %i.bc = add nuw i32 %i.at, 1                    ; 2 uses
  %i.bd = urem i32 %i.bc, 3
  %.not.i18 = icmp eq i32 %i.bd, 0
  %i.be = add i32 %i.at, -2
  %spec.select.i19 = select i1 %.not.i18, i32 %i.be, i32 %i.bc ; 2 uses
  %i.bf = icmp eq i32 %spec.select.i19, -1
  br i1 %i.bf, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit21
  %i.bg = zext i32 %spec.select.i19 to i64
  %i.bh = load ptr, ptr %i.l, align 8, !tbaa !58, !noalias !169
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.bg
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !73, !noalias !169
  %i.bk = zext i32 %i.bj to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit21
  %storemerge.i22 = phi i64 [ %i.bk, %bb.e ], [ 4294967295, %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit21 ] ; 2 uses
  %.zext79 = lshr i64 %storemerge.i22, 6
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.zext79 ; 2 uses
  %i.bm = and i64 %storemerge.i22, 63
  %i.bn = shl nuw i64 1, %i.bm
  %i.bo = load i64, ptr %i.bl, align 8, !tbaa !71
  %i.bp = or i64 %i.bn, %i.bo
  store i64 %i.bp, ptr %i.bl, align 8, !tbaa !71
  %i.bq = urem i32 %i.at, 3
  %.not.i28 = icmp eq i32 %i.bq, 0
  br i1 %.not.i28, label %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit30, label %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit30.thread

_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit30.thread: ; preds = %bb.f
  %i.br = add i32 %i.at, -1
  br label %bb.g

_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit30: ; preds = %bb.f
  %i.bs = add i32 %i.at, 2                        ; 2 uses
  %i.bt = icmp eq i32 %i.bs, -1
  br i1 %i.bt, label %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit32, label %bb.g

bb.g:                                             ; preds = %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit30.thread, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit30
  %.sink.i2971 = phi i32 [ %i.br, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit30.thread ], [ %i.bs, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit30 ]
  %i.bu = zext i32 %.sink.i2971 to i64
  %i.bv = load ptr, ptr %i.l, align 8, !tbaa !58, !noalias !170
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.bu
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !73, !noalias !170
  %i.by = zext i32 %i.bx to i64
  br label %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit32

_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit32: ; preds = %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit30, %bb.g
  %storemerge.i31 = phi i64 [ %i.by, %bb.g ], [ 4294967295, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit30 ] ; 2 uses
  %.zext81 = lshr i64 %storemerge.i31, 6
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.zext81 ; 2 uses
  %i.ca = and i64 %storemerge.i31, 63
  %i.cb = shl nuw i64 1, %i.ca
  %i.cc = load i64, ptr %i.bz, align 8, !tbaa !71
  %i.cd = or i64 %i.cb, %i.cc
  store i64 %i.cd, ptr %i.bz, align 8, !tbaa !71
  br label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread

_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread.critedge: ; preds = %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %i.w, i64 536870904 ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !71
  %i.cg = or i64 %i.cf, -9223372036854775808
  store i64 %i.cg, ptr %i.ce, align 8, !tbaa !71
  br label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread

_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread: ; preds = %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread.critedge, %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit32, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5draco24MeshAttributeCornerTable25RecomputeVerticesInternalILb1EEEbPKNS_4MeshEPKNS_14PointAttributeE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !62   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 8 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !63
  %.not.i.i = icmp eq ptr %i.d, %i.b
  br i1 %.not.i.i, label %_ZNSt6vectorIN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEESaIS3_EE5clearEv.exit, label %_ZSt8_DestroyIPN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEES3_EvT_S5_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %bb.a
  store ptr %i.b, ptr %i.c, align 8, !tbaa !63
  br label %_ZNSt6vectorIN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEESaIS3_EE5clearEv.exit

_ZNSt6vectorIN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEESaIS3_EE5clearEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEES3_EvT_S5_RSaIT0_E.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !60   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 8 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !59
  %.not.i.i19 = icmp eq ptr %i.h, %i.f
  br i1 %.not.i.i19, label %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE5clearEv.exit, label %_ZSt8_DestroyIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES3_EvT_S5_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %_ZNSt6vectorIN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEESaIS3_EE5clearEv.exit
  store ptr %i.f, ptr %i.g, align 8, !tbaa !59
  br label %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE5clearEv.exit

_ZNSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE5clearEv.exit: ; preds = %_ZNSt6vectorIN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEESaIS3_EE5clearEv.exit, %_ZSt8_DestroyIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES3_EvT_S5_RSaIT0_E.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 5 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !69   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !59
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !60   ; 2 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = and i64 %i.q, 17179869180
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE5clearEv.exit
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 100 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.loopexit
  %i.aa = phi ptr [ %i.j, %.lr.ph ], [ %i.kq, %.loopexit ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.loopexit ] ; 4 uses
  %i.ab = phi ptr [ %i.n, %.lr.ph ], [ %i.ku, %.loopexit ]
  %.09155 = phi i32 [ 0, %.lr.ph ], [ %.4.ph, %.loopexit ] ; 4 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !68, !noalias !212 ; 12 uses
  %i.ae = icmp eq i32 %i.ad, -1
  br i1 %i.ae, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.af = add nsw i32 %.09155, 1                  ; 4 uses
  %i.ag = icmp slt i32 %i.ad, 0
  br i1 %i.ag, label %_ZNK5draco4Mesh15CornerToPointIdEi.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ah = udiv i32 %i.ad, 3
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = load ptr, ptr %i.t, align 8, !tbaa !76, !noalias !213
  %i.ak = getelementptr inbounds nuw [12 x i8], ptr %i.aj, i64 %i.ai
  %i.al = urem i32 %i.ad, 3
  %i.am = zext nneg i32 %i.al to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !78, !noalias !213
  br label %_ZNK5draco4Mesh15CornerToPointIdEi.exit

_ZNK5draco4Mesh15CornerToPointIdEi.exit:          ; preds = %bb.c, %bb.d
  %storemerge.i = phi i32 [ %i.ao, %bb.d ], [ -1, %bb.c ] ; 2 uses
  %i.ap = load i8, ptr %i.u, align 4, !tbaa !100, !range !101, !noalias !214, !noundef !102
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %_ZNK5draco4Mesh15CornerToPointIdEi.exit.cont, label %_ZNK5draco4Mesh15CornerToPointIdEi.exit.else

_ZNK5draco4Mesh15CornerToPointIdEi.exit.else:     ; preds = %_ZNK5draco4Mesh15CornerToPointIdEi.exit
  %i.ar = load ptr, ptr %i.v, align 8, !noalias !214
  %i.as = zext i32 %storemerge.i to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.as
  %storemerge.i20.else.val = load i32, ptr %i.at, align 4, !tbaa !79, !noalias !214
  br label %_ZNK5draco4Mesh15CornerToPointIdEi.exit.cont

_ZNK5draco4Mesh15CornerToPointIdEi.exit.cont:     ; preds = %_ZNK5draco4Mesh15CornerToPointIdEi.exit, %_ZNK5draco4Mesh15CornerToPointIdEi.exit.else
  %storemerge.i20 = phi i32 [ %storemerge.i, %_ZNK5draco4Mesh15CornerToPointIdEi.exit ], [ %storemerge.i20.else.val, %_ZNK5draco4Mesh15CornerToPointIdEi.exit.else ] ; 2 uses
  %i.au = load ptr, ptr %i.c, align 8, !tbaa !63  ; 6 uses
  %i.av = load ptr, ptr %i.w, align 8, !tbaa !61
  %.not.i.i21 = icmp eq ptr %i.au, %i.av
  br i1 %.not.i.i21, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK5draco4Mesh15CornerToPointIdEi.exit.cont
  store i32 %storemerge.i20, ptr %i.au, align 4, !tbaa !65
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  store ptr %i.aw, ptr %i.c, align 8, !tbaa !63
  br label %_ZNSt6vectorIN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEESaIS3_EE9push_backEOS3_.exit

bb.f:                                             ; preds = %_ZNK5draco4Mesh15CornerToPointIdEi.exit.cont
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !62  ; 7 uses
end_hunk_0
