inline.NumInlined: 75
inline.NumDeleted: 49
begin_hunk_0_@upb_UnknownFields_Build:bb.a
bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.g, i8 0, i64 32, i1 false)
  %.not.i.i = icmp eq i64 %i.y, 0
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.g, ptr align 1 %i.z, i64 %i.y, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.ab, %i.h
  store i64 %i.ac, ptr %i.i, align 8, !tbaa !32
  store ptr %i.g, ptr %3, align 8, !tbaa !26
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.y ; 2 uses
  store ptr %i.ad, ptr %0, align 8, !tbaa !33
  br label %upb_EpsCopyInputStream_Init.exit

bb.f:                                             ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.y
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -16 ; 2 uses
  store ptr %i.af, ptr %0, align 8, !tbaa !33
  store i64 16, ptr %i.f, align 8, !tbaa !34
  br label %upb_EpsCopyInputStream_Init.exit

upb_EpsCopyInputStream_Init.exit:                 ; preds = %bb.e, %bb.f
  %.sink1.i.i = phi i64 [ 16, %bb.f ], [ 40, %bb.e ]
  %i.ag = phi ptr [ %i.af, %bb.f ], [ %i.ad, %bb.e ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %.sink1.i.i
  store i64 0, ptr %i.ah, align 8, !tbaa !10
  store ptr %i.ag, ptr %i.j, align 8, !tbaa !35
  store i8 0, ptr %i.k, align 8, !tbaa !36
  call fastcc void @upb_CombineUnknownFields(ptr noundef %0, ptr noundef %2, ptr noundef %3)
  %.val = load i64, ptr %1, align 8, !tbaa !7
  %i.ai = and i64 %.val, -2                       ; 2 uses
  %.not.i = icmp eq i64 %i.ai, 0
  br i1 %.not.i, label %.loopexit, label %.critedge.preheader.i, !llvm.loop !37

.loopexit:                                        ; preds = %upb_EpsCopyInputStream_Init.exit, %.critedge.preheader.i, %.critedge.i, %bb.a
  %i.aj = call fastcc ptr @upb_UnknownFields_DoBuild(ptr noundef %0, ptr noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret ptr %i.aj
}

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @upb_UnknownFields_IsEqual(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1) unnamed_addr #5 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !38     ; 3 uses
  %i.b = load i64, ptr %1, align 8, !tbaa !38
  %.not = icmp eq i64 %i.a, %i.b
  br i1 %.not, label %.preheader, label %.critedge

.preheader:                                       ; preds = %bb.a
  %i.c = icmp eq i64 %i.a, 0
  br i1 %i.c, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !40
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !40
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %upb_StringView_IsEqual.exit.thread
  %.02637 = phi i64 [ 0, %.lr.ph ], [ %i.ai, %upb_StringView_IsEqual.exit.thread ] ; 3 uses
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %.02637 ; 3 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.02637 ; 7 uses
  %i.j = load i32, ptr %i.h, align 8, !tbaa !41   ; 2 uses
  %i.k = load i32, ptr %i.i, align 8, !tbaa !41
  %.not32 = icmp eq i32 %i.j, %i.k
  br i1 %.not32, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.l = and i32 %i.j, 7
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 5 uses
  switch i32 %i.l, label %bb.j [
    i32 0, label %bb.d
    i32 1, label %bb.e
    i32 5, label %bb.f
    i32 2, label %bb.g
    i32 3, label %bb.i
  ]

bb.d:                                             ; preds = %bb.c
  %i.n = load i64, ptr %i.m, align 8, !tbaa !7
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !7
  %.not35 = icmp eq i64 %i.n, %i.p
  br i1 %.not35, label %upb_StringView_IsEqual.exit.thread, label %.critedge

bb.e:                                             ; preds = %bb.c
  %i.q = load i64, ptr %i.m, align 8, !tbaa !7
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !7
  %.not34 = icmp eq i64 %i.q, %i.s
  br i1 %.not34, label %upb_StringView_IsEqual.exit.thread, label %.critedge

bb.f:                                             ; preds = %bb.c
  %i.t = load i32, ptr %i.m, align 8, !tbaa !7
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !7
  %.not33 = icmp eq i32 %i.t, %i.v
  br i1 %.not33, label %upb_StringView_IsEqual.exit.thread, label %.critedge

bb.g:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.x = load ptr, ptr %i.m, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.z = load i64, ptr %i.y, align 8              ; 3 uses
  %i.aa = load ptr, ptr %i.w, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = icmp eq i64 %i.z, %i.ac
  br i1 %i.ad, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %.not.i = icmp eq i64 %i.z, 0
  br i1 %.not.i, label %upb_StringView_IsEqual.exit.thread, label %upb_StringView_IsEqual.exit

upb_StringView_IsEqual.exit:                      ; preds = %bb.h
  %bcmp.i = tail call i32 @bcmp(ptr readonly %i.x, ptr readonly %i.aa, i64 %i.z)
  %.not5.i = icmp eq i32 %bcmp.i, 0
  br i1 %.not5.i, label %upb_StringView_IsEqual.exit.thread, label %.critedge

bb.i:                                             ; preds = %bb.c
  %i.ae = load ptr, ptr %i.m, align 8, !tbaa !7
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !7
  %i.ah = tail call fastcc zeroext i1 @upb_UnknownFields_IsEqual(ptr noundef %i.ae, ptr noundef %i.ag)
  br i1 %i.ah, label %upb_StringView_IsEqual.exit.thread, label %.critedge

bb.j:                                             ; preds = %bb.c
  unreachable

upb_StringView_IsEqual.exit.thread:               ; preds = %bb.h, %bb.i, %upb_StringView_IsEqual.exit, %bb.f, %bb.e, %bb.d
  %i.ai = add nuw i64 %.02637, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ai, %i.a
  br i1 %exitcond.not, label %.critedge, label %bb.b, !llvm.loop !43

.critedge:                                        ; preds = %bb.g, %bb.b, %upb_StringView_IsEqual.exit, %bb.d, %bb.e, %bb.f, %bb.i, %upb_StringView_IsEqual.exit.thread, %.preheader, %bb.a
  %.4 = phi i1 [ false, %bb.a ], [ true, %.preheader ], [ false, %bb.i ], [ false, %bb.f ], [ false, %bb.e ], [ false, %bb.d ], [ false, %upb_StringView_IsEqual.exit ], [ false, %bb.b ], [ false, %bb.g ], [ true, %upb_StringView_IsEqual.exit.thread ]
  ret i1 %.4
}

; Function Attrs: nounwind uwtable
define internal fastcc void @upb_CombineUnknownFields(ptr noundef nonnull %0, ptr noundef nonnull captures(none) %1, ptr noundef nonnull captures(none) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.upb_UnknownFields_Builder, align 8 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !44
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !46
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !47
  %i.g = load ptr, ptr %2, align 8, !tbaa !26
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !48
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.k = load i8, ptr %i.j, align 4, !tbaa !49, !range !50, !noundef !51
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = getelementptr i8, ptr %0, i64 24
  br label %upb_WireReader_ReadVarint.exit.outer

upb_WireReader_ReadVarint.exit.outer:             ; preds = %upb_EpsCopyInputStream_ReadStringAlwaysAlias.exit, %bb.a
  %.086.ph = phi ptr [ %.187, %upb_EpsCopyInputStream_ReadStringAlwaysAlias.exit ], [ %i.b, %bb.a ]
  %.082.ph = phi ptr [ %i.bz, %upb_EpsCopyInputStream_ReadStringAlwaysAlias.exit ], [ %i.d, %bb.a ]
  %.078.ph = phi ptr [ %.179, %upb_EpsCopyInputStream_ReadStringAlwaysAlias.exit ], [ %i.f, %bb.a ]
  %.074.ph = phi ptr [ %.0.i51, %upb_EpsCopyInputStream_ReadStringAlwaysAlias.exit ], [ %i.g, %bb.a ]
  %.sroa.4.0.ph = phi i64 [ %.sroa.4.2, %upb_EpsCopyInputStream_ReadStringAlwaysAlias.exit ], [ undef, %bb.a ]
  %.sroa.0.0.ph = phi ptr [ %.sroa.0.2, %upb_EpsCopyInputStream_ReadStringAlwaysAlias.exit ], [ undef, %bb.a ]
  %.038.ph = phi i8 [ %spec.select, %upb_EpsCopyInputStream_ReadStringAlwaysAlias.exit ], [ %i.k, %bb.a ]
  %.0.ph = phi i32 [ %.073, %upb_EpsCopyInputStream_ReadStringAlwaysAlias.exit ], [ %i.i, %bb.a ]
  br label %upb_WireReader_ReadVarint.exit

upb_WireReader_ReadVarint.exit:                   ; preds = %upb_WireReader_ReadVarint.exit.backedge, %upb_WireReader_ReadVarint.exit.outer
  %.086 = phi ptr [ %.086.ph, %upb_WireReader_ReadVarint.exit.outer ], [ %.187, %upb_WireReader_ReadVarint.exit.backedge ] ; 11 uses
  %.082 = phi ptr [ %.082.ph, %upb_WireReader_ReadVarint.exit.outer ], [ %i.bz, %upb_WireReader_ReadVarint.exit.backedge ] ; 5 uses
  %.078 = phi ptr [ %.078.ph, %upb_WireReader_ReadVarint.exit.outer ], [ %.179, %upb_WireReader_ReadVarint.exit.backedge ] ; 3 uses
  %.074 = phi ptr [ %.074.ph, %upb_WireReader_ReadVarint.exit.outer ], [ %.074.be, %upb_WireReader_ReadVarint.exit.backedge ] ; 5 uses
  %.038 = phi i8 [ %.038.ph, %upb_WireReader_ReadVarint.exit.outer ], [ %spec.select, %upb_WireReader_ReadVarint.exit.backedge ] ; 2 uses
  %.0 = phi i32 [ %.0.ph, %upb_WireReader_ReadVarint.exit.outer ], [ %.073, %upb_WireReader_ReadVarint.exit.backedge ] ; 2 uses
  %i.r = load ptr, ptr %0, align 8, !tbaa !33
  %i.s = ptrtoint ptr %.074 to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t                       ; 2 uses
  %i.v = trunc i64 %i.u to i32
  %i.w = load ptr, ptr %i.l, align 8, !tbaa !35
  %i.x = icmp ult ptr %.074, %i.w
  br i1 %i.x, label %upb_EpsCopyInputStream_IsDone.exit.thread92, label %bb.b, !prof !52

bb.b:                                             ; preds = %upb_WireReader_ReadVarint.exit
  %sext.i.i = shl i64 %i.u, 32
  %i.y = ashr exact i64 %sext.i.i, 32
  %i.z = load i64, ptr %i.m, align 8, !tbaa !34
  %i.aa = icmp eq i64 %i.y, %i.z
  br i1 %i.aa, label %upb_EpsCopyInputStream_IsDone.exit.thread, label %upb_EpsCopyInputStream_IsDone.exit, !prof !52

upb_EpsCopyInputStream_IsDone.exit:               ; preds = %bb.b
  %i.ab = tail call ptr @upb_EpsCopyInputStream_IsDoneFallback_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %0, ptr noundef %.074, i32 noundef %i.v) #12 ; 2 uses
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %upb_EpsCopyInputStream_IsDone.exit.thread, label %upb_EpsCopyInputStream_IsDone.exit.thread92

upb_EpsCopyInputStream_IsDone.exit.thread92:      ; preds = %upb_WireReader_ReadVarint.exit, %upb_EpsCopyInputStream_IsDone.exit
  %.37795 = phi ptr [ %i.ab, %upb_EpsCopyInputStream_IsDone.exit ], [ %.074, %upb_WireReader_ReadVarint.exit ] ; 3 uses
  %i.ac = load i8, ptr %.37795, align 1, !tbaa !7 ; 3 uses
  %i.ad = icmp sgt i8 %i.ac, -1
  br i1 %i.ad, label %bb.c, label %bb.d, !prof !52

bb.c:                                             ; preds = %upb_EpsCopyInputStream_IsDone.exit.thread92
  %i.ae = zext nneg i8 %i.ac to i32
  %i.af = getelementptr inbounds nuw i8, ptr %.37795, i64 1
  br label %upb_WireReader_ReadTag.exit

bb.d:                                             ; preds = %upb_EpsCopyInputStream_IsDone.exit.thread92
  %i.ag = zext i8 %i.ac to i64
  %i.ah = tail call { ptr, i64 } @_upb_WireReader_ReadLongTag_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %.37795, i64 noundef %i.ag, ptr noundef nonnull %0) #12 ; 2 uses
  %i.ai = extractvalue { ptr, i64 } %i.ah, 0
  %i.aj = extractvalue { ptr, i64 } %i.ah, 1
  %i.ak = trunc i64 %i.aj to i32
  br label %upb_WireReader_ReadTag.exit

upb_WireReader_ReadTag.exit:                      ; preds = %bb.d, %bb.c
  %.073 = phi i32 [ %i.ae, %bb.c ], [ %i.ak, %bb.d ] ; 5 uses
  %.0.i = phi ptr [ %i.af, %bb.c ], [ %i.ai, %bb.d ] ; 12 uses
  %i.al = trunc i32 %.073 to i8
  %i.am = and i8 %i.al, 7                         ; 2 uses
  %i.an = icmp eq i8 %i.am, 4
  br i1 %i.an, label %upb_EpsCopyInputStream_IsDone.exit.thread, label %bb.e

bb.e:                                             ; preds = %upb_WireReader_ReadTag.exit
  %i.ao = icmp ult i32 %.073, %.0
  %spec.select = select i1 %i.ao, i8 0, i8 %.038  ; 2 uses
  %i.ap = icmp eq ptr %.082, %.078
  br i1 %i.ap, label %bb.f, label %bb.o

bb.f:                                             ; preds = %bb.e
  %i.aq = ptrtoint ptr %.082 to i64
  %i.ar = ptrtoint ptr %.086 to i64
  %i.as = sub i64 %i.aq, %i.ar                    ; 6 uses
  %i.at = sdiv exact i64 %i.as, 24
  %i.au = shl nsw i64 %i.at, 1
  %i.av = tail call i64 @llvm.umax.i64(i64 %i.au, i64 4) ; 2 uses
  %i.aw = load ptr, ptr %i.n, align 8, !tbaa !12  ; 9 uses
  %i.ax = mul i64 %i.av, 24                       ; 7 uses
  %.not.i.i = icmp eq ptr %.086, null
  br i1 %.not.i.i, label %.upb_Arena_TryExtend.exit.thread_crit_edge.i.i, label %bb.g

.upb_Arena_TryExtend.exit.thread_crit_edge.i.i:   ; preds = %bb.f
  %.val.i43.pre.i.i = load ptr, ptr %i.aw, align 8, !tbaa !53
  br label %upb_Arena_TryExtend.exit.thread.i.i

bb.g:                                             ; preds = %bb.f
  %.not40.i.i = icmp ugt i64 %i.ax, %i.as
  br i1 %.not40.i.i, label %bb.h, label %.critedge.i.i

bb.h:                                             ; preds = %bb.g
  %i.ay = add i64 %i.as, 7
  %i.az = and i64 %i.ay, -8                       ; 2 uses
  %i.ba = sub i64 %i.ax, %i.az                    ; 2 uses
  %.val.i.i.i = load ptr, ptr %i.aw, align 8, !tbaa !53 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.086, i64 %i.az ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %.val.i.i.i
  br i1 %i.bc, label %bb.i, label %upb_Arena_TryExtend.exit.thread.i.i

bb.i:                                             ; preds = %bb.h
  %i.bd = getelementptr i8, ptr %i.aw, i64 8
  %.val14.i.i.i = load ptr, ptr %i.bd, align 8, !tbaa !55
  %i.be = ptrtoint ptr %.val14.i.i.i to i64
  %i.bf = ptrtoint ptr %i.bb to i64
  %i.bg = sub i64 %i.be, %i.bf
  %.not.i.i.i = icmp ult i64 %i.bg, %i.ba
  br i1 %.not.i.i.i, label %upb_Arena_TryExtend.exit.thread.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bh = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.ba
  store ptr %i.bh, ptr %i.aw, align 8, !tbaa !53
  br label %upb_UnknownFields_Grow.exit

.critedge.i.i:                                    ; preds = %bb.g
  %.val.i.i = load ptr, ptr %i.aw, align 8, !tbaa !53 ; 2 uses
  %i.bi = add i64 %i.as, 7
  %i.bj = and i64 %i.bi, -8                       ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.086, i64 %i.bj
  %i.bl = icmp eq ptr %i.bk, %.val.i.i
  br i1 %i.bl, label %upb_Arena_ShrinkLast.exit.i.i, label %upb_UnknownFields_Grow.exit

upb_Arena_ShrinkLast.exit.i.i:                    ; preds = %.critedge.i.i
  %.neg.i.i.i = sub i64 %i.ax, %i.bj
  %i.bm = getelementptr inbounds i8, ptr %.val.i.i, i64 %.neg.i.i.i
  store ptr %i.bm, ptr %i.aw, align 8, !tbaa !53
  br label %upb_UnknownFields_Grow.exit

upb_Arena_TryExtend.exit.thread.i.i:              ; preds = %bb.i, %bb.h, %.upb_Arena_TryExtend.exit.thread_crit_edge.i.i
  %.val.i43.i.i = phi ptr [ %.val.i43.pre.i.i, %.upb_Arena_TryExtend.exit.thread_crit_edge.i.i ], [ %.val.i.i.i, %bb.h ], [ %.val.i.i.i, %bb.i ] ; 4 uses
  %i.bn = getelementptr i8, ptr %i.aw, i64 8
  %.val11.i.i.i = load ptr, ptr %i.bn, align 8, !tbaa !55
  %i.bo = ptrtoint ptr %.val11.i.i.i to i64
  %i.bp = ptrtoint ptr %.val.i43.i.i to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = icmp ult i64 %i.bq, %i.ax
  br i1 %i.br, label %bb.k, label %bb.l, !prof !56

bb.k:                                             ; preds = %upb_Arena_TryExtend.exit.thread.i.i
  %i.bs = tail call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.aw, i64 noundef %i.ax) #12
  br label %upb_Arena_Malloc.exit.i.i

bb.l:                                             ; preds = %upb_Arena_TryExtend.exit.thread.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %.val.i43.i.i, i64 %i.ax
  store ptr %i.bt, ptr %i.aw, align 8, !tbaa !53
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i43.i.i) ]
  br label %upb_Arena_Malloc.exit.i.i

upb_Arena_Malloc.exit.i.i:                        ; preds = %bb.l, %bb.k
  %.0.i44.i.i = phi ptr [ %i.bs, %bb.k ], [ %.val.i43.i.i, %bb.l ] ; 5 uses
  %i.bu = icmp ne ptr %.0.i44.i.i, null
  %i.bv = icmp ne ptr %.082, %.086
  %or.cond.i.i = and i1 %i.bv, %i.bu
  br i1 %or.cond.i.i, label %bb.m, label %upb_Arena_Realloc.exit.i

bb.m:                                             ; preds = %upb_Arena_Malloc.exit.i.i
  %i.bw = tail call i64 @llvm.umin.i64(i64 %i.as, i64 %i.ax)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0.i44.i.i, ptr readonly align 1 %.086, i64 %i.bw, i1 false)
  br label %upb_UnknownFields_Grow.exit

upb_Arena_Realloc.exit.i:                         ; preds = %upb_Arena_Malloc.exit.i.i
  %.not.i47 = icmp eq ptr %.0.i44.i.i, null
  br i1 %.not.i47, label %bb.n, label %upb_UnknownFields_Grow.exit

bb.n:                                             ; preds = %upb_Arena_Realloc.exit.i
  tail call fastcc void @upb_UnknownFields_OutOfMemory(ptr noundef nonnull %0) #14
  unreachable

upb_UnknownFields_Grow.exit:                      ; preds = %bb.j, %.critedge.i.i, %upb_Arena_ShrinkLast.exit.i.i, %bb.m, %upb_Arena_Realloc.exit.i
  %.4 = phi ptr [ %.0.i44.i.i, %upb_Arena_Realloc.exit.i ], [ %.086, %upb_Arena_ShrinkLast.exit.i.i ], [ %.086, %.critedge.i.i ], [ %.086, %bb.j ], [ %.0.i44.i.i, %bb.m ] ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.4, i64 %i.as
  %i.by = getelementptr inbounds nuw [24 x i8], ptr %.4, i64 %i.av
  br label %bb.o

bb.o:                                             ; preds = %upb_UnknownFields_Grow.exit, %bb.e
  %.187 = phi ptr [ %.4, %upb_UnknownFields_Grow.exit ], [ %.086, %bb.e ] ; 2 uses
  %.183 = phi ptr [ %i.bx, %upb_UnknownFields_Grow.exit ], [ %.082, %bb.e ] ; 8 uses
  %.179 = phi ptr [ %i.by, %upb_UnknownFields_Grow.exit ], [ %.078, %bb.e ] ; 2 uses
  store i32 %.073, ptr %.183, align 8, !tbaa !41
  %i.bz = getelementptr inbounds nuw i8, ptr %.183, i64 24 ; 2 uses
  switch i8 %i.am, label %bb.ac [
    i8 0, label %bb.p
    i8 1, label %bb.s
    i8 5, label %bb.t
    i8 2, label %bb.u
    i8 3, label %bb.z
  ]

bb.p:                                             ; preds = %bb.o
  %i.ca = getelementptr inbounds nuw i8, ptr %.183, i64 8 ; 2 uses
  %i.cb = load i8, ptr %.0.i, align 1, !tbaa !7   ; 2 uses
  %i.cc = icmp sgt i8 %i.cb, -1
  %i.cd = zext i8 %i.cb to i64                    ; 2 uses
  br i1 %i.cc, label %bb.q, label %bb.r, !prof !52

bb.q:                                             ; preds = %bb.p
  store i64 %i.cd, ptr %i.ca, align 8, !tbaa !10
  %i.ce = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  br label %upb_WireReader_ReadVarint.exit.backedge

bb.r:                                             ; preds = %bb.p
  %i.cf = tail call { ptr, i64 } @_upb_WireReader_ReadLongVarint_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %.0.i, i64 noundef %i.cd, ptr noundef nonnull %0) #12 ; 2 uses
  %i.cg = extractvalue { ptr, i64 } %i.cf, 0
  %i.ch = extractvalue { ptr, i64 } %i.cf, 1
  store i64 %i.ch, ptr %i.ca, align 8, !tbaa !10
  br label %upb_WireReader_ReadVarint.exit.backedge

upb_WireReader_ReadVarint.exit.backedge:          ; preds = %bb.r, %bb.q, %bb.s, %bb.t, %bb.ab
  %.074.be = phi ptr [ %i.dr, %bb.ab ], [ %i.cg, %bb.r ], [ %i.ce, %bb.q ], [ %i.cj, %bb.s ], [ %i.cl, %bb.t ]
  br label %upb_WireReader_ReadVarint.exit

bb.s:                                             ; preds = %bb.o
  %i.ci = getelementptr inbounds nuw i8, ptr %.183, i64 8
  %.0.copyload.i = load i64, ptr %.0.i, align 1
  store i64 %.0.copyload.i, ptr %i.ci, align 1
  %i.cj = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  br label %upb_WireReader_ReadVarint.exit.backedge

bb.t:                                             ; preds = %bb.o
  %i.ck = getelementptr inbounds nuw i8, ptr %.183, i64 8
  %.0.copyload.i49 = load i32, ptr %.0.i, align 1
  store i32 %.0.copyload.i49, ptr %i.ck, align 1
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  br label %upb_WireReader_ReadVarint.exit.backedge

bb.u:                                             ; preds = %bb.o
  %i.cm = load i8, ptr %.0.i, align 1, !tbaa !7   ; 2 uses
  %i.cn = icmp sgt i8 %i.cm, -1
  %i.co = zext i8 %i.cm to i64                    ; 2 uses
  br i1 %i.cn, label %bb.v, label %bb.w, !prof !52

bb.v:                                             ; preds = %bb.u
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  br label %upb_WireReader_ReadSize.exit

bb.w:                                             ; preds = %bb.u
  %i.cq = tail call { ptr, i64 } @_upb_WireReader_ReadLongSize_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %.0.i, i64 noundef %i.co, ptr noundef nonnull %0) #12 ; 2 uses
  %i.cr = extractvalue { ptr, i64 } %i.cq, 0
  %i.cs = extractvalue { ptr, i64 } %i.cq, 1
  br label %upb_WireReader_ReadSize.exit

upb_WireReader_ReadSize.exit:                     ; preds = %bb.w, %bb.v
  %.072 = phi i64 [ %i.co, %bb.v ], [ %i.cs, %bb.w ]
  %.0.i43 = phi ptr [ %i.cp, %bb.v ], [ %i.cr, %bb.w ] ; 2 uses
  %sext = shl i64 %.072, 32
  %i.ct = ashr exact i64 %sext, 32                ; 3 uses
  %i.cu = load ptr, ptr %0, align 8, !tbaa !33
  %i.cv = load i64, ptr %i.p, align 8, !tbaa !32  ; 2 uses
  %i.cw = icmp eq i64 %i.cv, 0
  %i.cx = select i1 %i.cw, i64 16, i64 0
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cx
  %i.cz = ptrtoint ptr %i.cy to i64
  %i.da = ptrtoint ptr %.0.i43 to i64             ; 2 uses
  %i.db = sub i64 %i.cz, %i.da
  %i.dc = icmp sgt i64 %i.ct, %i.db
  br i1 %i.dc, label %bb.x, label %bb.y

bb.x:                                             ; preds = %upb_WireReader_ReadSize.exit
  %i.dd = tail call ptr @upb_EpsCopyInputStream_ReturnError_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %0) #12
  br label %upb_EpsCopyInputStream_ReadStringAlwaysAlias.exit

bb.y:                                             ; preds = %upb_WireReader_ReadSize.exit
  %.val14.i = load ptr, ptr %i.q, align 8, !tbaa !29 ; 2 uses
  %i.de = ptrtoint ptr %.val14.i to i64
  %i.df = sub i64 %i.cv, %i.de
  %i.dg = getelementptr i8, ptr %.val14.i, i64 %i.df
  %i.dh = getelementptr i8, ptr %i.dg, i64 %i.da
  %i.di = getelementptr inbounds nuw i8, ptr %.0.i43, i64 %i.ct
  br label %upb_EpsCopyInputStream_ReadStringAlwaysAlias.exit

upb_EpsCopyInputStream_ReadStringAlwaysAlias.exit: ; preds = %bb.x, %bb.y
  %.sroa.4.2 = phi i64 [ %.sroa.4.0.ph, %bb.x ], [ %i.ct, %bb.y ] ; 2 uses
  %.sroa.0.2 = phi ptr [ %.sroa.0.0.ph, %bb.x ], [ %i.dh, %bb.y ] ; 2 uses
  %.0.i51 = phi ptr [ %i.dd, %bb.x ], [ %i.di, %bb.y ]
  %i.dj = getelementptr inbounds nuw i8, ptr %.183, i64 8
  store ptr %.sroa.0.2, ptr %i.dj, align 8, !tbaa !7
  %i.dk = getelementptr inbounds nuw i8, ptr %.183, i64 16
  store i64 %.sroa.4.2, ptr %i.dk, align 8, !tbaa !7
  br label %upb_WireReader_ReadVarint.exit.outer

bb.z:                                             ; preds = %bb.o
  %i.dl = load i32, ptr %i.o, align 8, !tbaa !19  ; 2 uses
  %i.dm = add nsw i32 %i.dl, -1
  store i32 %i.dm, ptr %i.o, align 8, !tbaa !19
  %i.dn = icmp slt i32 %i.dl, 1
  br i1 %i.dn, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 124
  store i32 3, ptr %i.do, align 4, !tbaa !20
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @siglongjmp(ptr noundef nonnull %i.dp, i32 noundef 1) #15
  unreachable

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) @__const.upb_UnknownFields_BuildFromBuffer.builder, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store ptr %.0.i, ptr %i.a, align 8, !tbaa !26
  call fastcc void @upb_CombineUnknownFields(ptr noundef nonnull %0, ptr noundef %3, ptr noundef %i.a), !inline_history !57
  %i.dq = call fastcc nonnull ptr @upb_UnknownFields_DoBuild(ptr noundef nonnull %0, ptr noundef %3), !inline_history !57
  %i.dr = load ptr, ptr %i.a, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  %i.ds = getelementptr inbounds nuw i8, ptr %.183, i64 8
  store ptr %i.dq, ptr %i.ds, align 8, !tbaa !7
  %i.dt = load i32, ptr %i.o, align 8, !tbaa !19
  %i.du = add nsw i32 %i.dt, 1
  store i32 %i.du, ptr %i.o, align 8, !tbaa !19
  br label %upb_WireReader_ReadVarint.exit.backedge

bb.ac:                                            ; preds = %bb.o
  unreachable

upb_EpsCopyInputStream_IsDone.exit.thread:        ; preds = %upb_WireReader_ReadTag.exit, %bb.b, %upb_EpsCopyInputStream_IsDone.exit
  %.276 = phi ptr [ null, %upb_EpsCopyInputStream_IsDone.exit ], [ %.074, %bb.b ], [ %.0.i, %upb_WireReader_ReadTag.exit ]
  store ptr %.276, ptr %2, align 8, !tbaa !26
  store ptr %.086, ptr %1, align 8, !tbaa !44
  store ptr %.082, ptr %i.c, align 8, !tbaa !46
  store ptr %.078, ptr %i.e, align 8, !tbaa !47
  store i8 %.038, ptr %i.j, align 4, !tbaa !49
  store i32 %.0, ptr %i.h, align 8, !tbaa !48
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc nonnull ptr @upb_UnknownFields_DoBuild(ptr noundef nonnull %0, ptr noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12   ; 4 uses
  %.val.i = load ptr, ptr %i.b, align 8, !tbaa !53 ; 4 uses
  %i.c = getelementptr i8, ptr %i.b, i64 8
  %.val11.i = load ptr, ptr %i.c, align 8, !tbaa !55
  %i.d = ptrtoint ptr %.val11.i to i64
  %i.e = ptrtoint ptr %.val.i to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = icmp ult i64 %i.f, 24
  br i1 %i.g, label %upb_Arena_Malloc.exit, label %upb_Arena_Malloc.exit.thread, !prof !56

upb_Arena_Malloc.exit.thread:                     ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %.val.i, i64 24
  store ptr %i.h, ptr %i.b, align 8, !tbaa !53
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  br label %bb.c

upb_Arena_Malloc.exit:                            ; preds = %bb.a
  %i.i = tail call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.b, i64 noundef 24) #12 ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %upb_Arena_Malloc.exit
  tail call fastcc void @upb_UnknownFields_OutOfMemory(ptr noundef %0) #14
  unreachable

bb.c:                                             ; preds = %upb_Arena_Malloc.exit.thread, %upb_Arena_Malloc.exit
  %.0.i17 = phi ptr [ %.val.i, %upb_Arena_Malloc.exit.thread ], [ %i.i, %upb_Arena_Malloc.exit ] ; 5 uses
  %i.j = load ptr, ptr %1, align 8, !tbaa !44     ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i17, i64 16 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !40
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !46
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.p = sub i64 %i.n, %i.o
  %i.q = sdiv exact i64 %i.p, 24                  ; 4 uses
  store i64 %i.q, ptr %.0.i17, align 8, !tbaa !38
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !47
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = sub i64 %i.t, %i.o
  %i.v = sdiv exact i64 %i.u, 24
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i17, i64 8
  store i64 %i.v, ptr %i.w, align 8, !tbaa !58
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.y = load i8, ptr %i.x, align 4, !tbaa !49, !range !50, !noundef !51
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !59 ; 3 uses
  %i.ac = icmp ult i64 %i.ab, %i.q
  br i1 %i.ac, label %bb.e, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.pre19.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !21
  br label %upb_UnknownFields_Sort.exit

bb.e:                                             ; preds = %bb.d
  %spec.select.i = tail call i64 @llvm.umax.i64(i64 %i.ab, i64 8)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %storemerge.i = phi i64 [ %spec.select.i, %bb.e ], [ %i.ae, %bb.f ] ; 4 uses
  %i.ad = icmp ult i64 %storemerge.i, %i.q
  %i.ae = shl i64 %storemerge.i, 1
  br i1 %i.ad, label %bb.f, label %bb.g, !llvm.loop !60

bb.g:                                             ; preds = %bb.f
  store i64 %storemerge.i, ptr %i.aa, align 8, !tbaa !59
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !21
  %sext.i = mul i64 %i.ab, 103079215104
  %i.ah = ashr exact i64 %sext.i, 32
  %sext17.i = mul i64 %storemerge.i, 103079215104
  %i.ai = ashr exact i64 %sext17.i, 32
  %i.aj = load ptr, ptr @upb_alloc_global, align 8, !tbaa !22
  %i.ak = tail call ptr %i.aj(ptr noundef nonnull @upb_alloc_global, ptr noundef %i.ag, i64 noundef range(i64 -2147483648, 2147483648) %i.ah, i64 noundef range(i64 -2147483648, 2147483648) %i.ai, ptr noundef null) #12, !inline_history !61 ; 2 uses
  store ptr %i.ak, ptr %i.af, align 8, !tbaa !21
  %.pre.i = load i64, ptr %.0.i17, align 8, !tbaa !38
  %.pre = load ptr, ptr %i.k, align 8, !tbaa !40
  br label %upb_UnknownFields_Sort.exit

upb_UnknownFields_Sort.exit:                      ; preds = %._crit_edge.i, %bb.g
  %i.al = phi ptr [ %.pre, %bb.g ], [ %i.j, %._crit_edge.i ]
  %i.am = phi ptr [ %i.ak, %bb.g ], [ %.pre19.i, %._crit_edge.i ]
  %i.an = phi i64 [ %.pre.i, %bb.g ], [ %i.q, %._crit_edge.i ]
  tail call fastcc void @upb_UnknownFields_SortRecursive(ptr noundef %i.al, i64 noundef 0, i64 noundef %i.an, ptr noundef %i.am)
  br label %bb.h

bb.h:                                             ; preds = %upb_UnknownFields_Sort.exit, %bb.c
end_hunk_0
