Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/internal?download=true
inline.NumInlined: 2017
inline.NumDeleted: 1076
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN7CaDiCaL8Internal10preprocessEv:bb.a
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.d = load i64, ptr %i.a, align 8, !tbaa !303
  %i.e = icmp sgt i64 %i.d, %indvars.iv.next
  br i1 %i.e, label %.lr.ph, label %._crit_edge, !llvm.loop !6

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %bb.a ]
  %i.f = tail call noundef zeroext i1 @_ZN7CaDiCaL8Internal16preprocess_roundEi(ptr noundef nonnull align 8 dereferenceable(5704) %0, i32 poison)
  br i1 %i.f, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %.lr.ph, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.h = load i8, ptr %i.g, align 4, !tbaa !251, !range !220, !noundef !221
  %i.i = trunc nuw i8 %i.h to i1
  %. = select i1 %i.i, i32 20, i32 0
  ret i32 %.
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 21) i32 @_ZN7CaDiCaL8Internal38try_to_satisfy_formula_by_saved_phasesEv(ptr noundef nonnull align 8 dereferenceable(5704) initializes((10, 11)) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  store i8 1, ptr %i.a, align 2, !tbaa !400
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 14 ; 2 uses
  %i.c = load i8, ptr %i.b, align 2, !tbaa !304, !range !220, !noundef !221
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 1, ptr %i.e, align 2, !tbaa !305
  br label %.preheader

.preheader:                                       ; preds = %bb.b, %bb.a
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.e
  %i.f = tail call noundef zeroext i1 @_ZN7CaDiCaL8Internal9satisfiedEv(ptr noundef nonnull align 8 dereferenceable(5704) %0)
  br i1 %i.f, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call noundef i32 @_ZN7CaDiCaL8Internal6decideEv(ptr noundef nonnull align 8 dereferenceable(5704) %0)
  %.not2 = icmp eq i32 %i.g, 0
  br i1 %.not2, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.h = tail call noundef zeroext i1 @_ZN7CaDiCaL8Internal9propagateEv(ptr noundef nonnull align 8 dereferenceable(5704) %0)
  br i1 %i.h, label %bb.c, label %bb.f, !llvm.loop !399

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN7CaDiCaL8Internal9backtrackEi(ptr noundef nonnull align 8 dereferenceable(5704) %0, i32 noundef 0)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 952
  store ptr null, ptr %i.i, align 8, !tbaa !401
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.c, %bb.f
  %.05 = phi i32 [ 0, %bb.f ], [ 10, %bb.c ], [ 20, %bb.d ]
  store i8 0, ptr %i.a, align 2, !tbaa !400
  %i.j = load i8, ptr %i.b, align 2, !tbaa !304, !range !220, !noundef !221
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.g, label %bb.j

bb.g:                                             ; preds = %.loopexit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 0, ptr %i.l, align 2, !tbaa !305
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.n = load i32, ptr %i.m, align 4, !tbaa !274
  %.not3 = icmp eq i32 %i.n, 0
  br i1 %.not3, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN7CaDiCaL8Internal18notify_assignmentsEv(ptr noundef nonnull align 8 dereferenceable(5704) %0)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  tail call void @_ZN7CaDiCaL8Internal33renotify_trail_after_local_searchEv(ptr noundef nonnull align 8 dereferenceable(5704) %0)
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %.loopexit
  ret i32 %.05
}

declare void @_ZN7CaDiCaL8Internal9backtrackEi(ptr noundef nonnull align 8 dereferenceable(5704), i32 noundef) local_unnamed_addr #2

declare void @_ZN7CaDiCaL8Internal18notify_assignmentsEv(ptr noundef nonnull align 8 dereferenceable(5704)) local_unnamed_addr #2

declare void @_ZN7CaDiCaL8Internal33renotify_trail_after_local_searchEv(ptr noundef nonnull align 8 dereferenceable(5704)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL8Internal26produce_failed_assumptionsEv(ptr noundef nonnull align 8 dereferenceable(5704) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !251, !range !220, !noundef !221
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %._crit_edge, label %.lr.ph2

.lr.ph2:                                          ; preds = %bb.a, %.critedge
  tail call void @_ZN7CaDiCaL8Internal18notify_assignmentsEv(ptr noundef nonnull align 8 dereferenceable(5704) %0)
  %i.d = tail call noundef i32 @_ZN7CaDiCaL8Internal6decideEv(ptr noundef nonnull align 8 dereferenceable(5704) %0)
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %.preheader, label %._crit_edge

.preheader:                                       ; preds = %.lr.ph2
  %i.e = load i8, ptr %i.a, align 4, !tbaa !251, !range !220, !noundef !221
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.b
  %i.g = tail call noundef zeroext i1 @_ZN7CaDiCaL8Internal9propagateEv(ptr noundef nonnull align 8 dereferenceable(5704) %0)
  br i1 %i.g, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  tail call void @_ZN7CaDiCaL8Internal7analyzeEv(ptr noundef nonnull align 8 dereferenceable(5704) %0)
  %i.h = load i8, ptr %i.a, align 4, !tbaa !251, !range !220, !noundef !221
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %._crit_edge, label %.lr.ph, !llvm.loop !7

.critedge:                                        ; preds = %.lr.ph
  %.pre.pre = load i8, ptr %i.a, align 4, !tbaa !251, !range !220
  %i.j = trunc nuw i8 %.pre.pre to i1
  br i1 %i.j, label %._crit_edge, label %.lr.ph2, !llvm.loop !8

._crit_edge:                                      ; preds = %.preheader, %.critedge, %.lr.ph2, %bb.b, %bb.a
  tail call void @_ZN7CaDiCaL8Internal18notify_assignmentsEv(ptr noundef nonnull align 8 dereferenceable(5704) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN7CaDiCaL8Internal18local_search_roundEi(ptr noundef nonnull align 8 dereferenceable(5704) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i8, ptr %i.a, align 4, !tbaa !251, !range !220, !noundef !221
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = load i32, ptr %i.d, align 8
  %.not = icmp eq i32 %i.e, 0
  %or.cond = select i1 %i.c, i1 true, i1 %.not
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %0, align 8, !tbaa !163
  %i.g = or i32 %i.f, 16384
  store i32 %i.g, ptr %0, align 8, !tbaa !163
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 2 uses
  store i8 1, ptr %i.h, align 2, !tbaa !306
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 3888
  %i.j = load i32, ptr %i.i, align 8, !tbaa !307
  %i.k = sext i32 %i.j to i64
  %i.l = sext i32 %1 to i64                       ; 3 uses
  %i.m = mul nsw i64 %i.k, %i.l                   ; 2 uses
  %i.n = sdiv i64 9223372036854775807, %i.l
  %i.o = icmp sgt i64 %i.n, %i.m
  %i.p = mul nsw i64 %i.m, %i.l
  %.09 = select i1 %i.o, i64 %i.p, i64 9223372036854775807
  %i.q = tail call noundef i32 @_ZN7CaDiCaL8Internal10walk_roundElb(ptr noundef nonnull align 8 dereferenceable(5704) %0, i64 noundef %.09, i1 noundef zeroext true)
  store i8 0, ptr %i.h, align 2, !tbaa !306
  %i.r = load i32, ptr %0, align 8, !tbaa !163
  %i.s = and i32 %i.r, -16385
  store i32 %i.s, ptr %0, align 8, !tbaa !163
  tail call void @_ZN7CaDiCaL8Internal6reportEci(ptr noundef nonnull align 8 dereferenceable(5704) %0, i8 noundef signext 76, i32 noundef 0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.a ], [ %i.q, %bb.b ]
  ret i32 %.0
}

declare noundef i32 @_ZN7CaDiCaL8Internal10walk_roundElb(ptr noundef nonnull align 8 dereferenceable(5704), i64 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN7CaDiCaL8Internal12local_searchEv(ptr noundef nonnull align 8 dereferenceable(5704) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 6 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !251, !range !220, !noundef !221
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8
  %.not = icmp eq i32 %i.e, 0
  %or.cond = select i1 %i.c, i1 true, i1 %.not
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 3880
  %i.g = load i32, ptr %i.f, align 8
  %.not10 = icmp eq i32 %i.g, 0
  %or.cond16 = select i1 %or.cond, i1 true, i1 %.not10
  br i1 %or.cond16, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !225
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !183
  %.not11 = icmp eq ptr %i.j, %i.k
  br i1 %.not11, label %.preheader, label %.critedge

.preheader:                                       ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2832
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 3888
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %_ZN7CaDiCaL8Internal18local_search_roundEi.exit
  %.08 = phi i32 [ %.0.i, %_ZN7CaDiCaL8Internal18local_search_roundEi.exit ], [ 0, %.preheader ] ; 2 uses
  %.08.a = phi i32 [ %2, %_ZN7CaDiCaL8Internal18local_search_roundEi.exit ], [ 1, %.preheader ] ; 2 uses
  switch i32 %.08, label %.critedge [
    i32 0, label %bb.d
    i32 10, label %bb.g
    i32 20, label %bb.h
  ]

bb.d:                                             ; preds = %bb.c
  %1 = zext nneg i32 %.08.a to i64                ; 4 uses
  %i.o = load i64, ptr %i.l, align 8, !tbaa !285
  %.not13 = icmp slt i64 %i.o, %1
  br i1 %.not13, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load i8, ptr %i.a, align 4, !tbaa !251, !range !220, !noundef !221
  %i.q = trunc nuw i8 %i.p to i1
  %i.r = load i32, ptr %i.d, align 8
  %.not.i = icmp eq i32 %i.r, 0
  %or.cond.i = select i1 %i.q, i1 true, i1 %.not.i
  br i1 %or.cond.i, label %_ZN7CaDiCaL8Internal18local_search_roundEi.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load i32, ptr %0, align 8, !tbaa !163
  %i.t = or i32 %i.s, 16384
  store i32 %i.t, ptr %0, align 8, !tbaa !163
  store i8 1, ptr %i.m, align 2, !tbaa !306
  %i.u = load i32, ptr %i.n, align 8, !tbaa !307
  %i.v = sext i32 %i.u to i64
  %i.w = mul nsw i64 %i.v, %1                     ; 2 uses
  %i.x = udiv i64 9223372036854775807, %1
  %i.y = icmp sgt i64 %i.x, %i.w
  %i.z = mul nsw i64 %i.w, %1
  %.09.i = select i1 %i.y, i64 %i.z, i64 9223372036854775807
  %i.aa = tail call noundef i32 @_ZN7CaDiCaL8Internal10walk_roundElb(ptr noundef nonnull align 8 dereferenceable(5704) %0, i64 noundef %.09.i, i1 noundef zeroext true)
  store i8 0, ptr %i.m, align 2, !tbaa !306
  %i.ab = load i32, ptr %0, align 8, !tbaa !163
  %i.ac = and i32 %i.ab, -16385
  store i32 %i.ac, ptr %0, align 8, !tbaa !163
  tail call void @_ZN7CaDiCaL8Internal6reportEci(ptr noundef nonnull align 8 dereferenceable(5704) %0, i8 noundef signext 76, i32 noundef 0)
  br label %_ZN7CaDiCaL8Internal18local_search_roundEi.exit

_ZN7CaDiCaL8Internal18local_search_roundEi.exit:  ; preds = %bb.e, %bb.f
  %.0.i = phi i32 [ 0, %bb.e ], [ %i.aa, %bb.f ]
  %2 = add nuw nsw i32 %.08.a, 1
  br label %bb.c, !llvm.loop !402

bb.g:                                             ; preds = %bb.c
  %i.ad = tail call noundef i32 @_ZN7CaDiCaL8Internal38try_to_satisfy_formula_by_saved_phasesEv(ptr noundef nonnull align 8 dereferenceable(5704) %0)
  br label %.critedge

bb.h:                                             ; preds = %bb.c
  %i.ae = load i8, ptr %i.a, align 4, !tbaa !251, !range !220, !noundef !221
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %_ZN7CaDiCaL8Internal26produce_failed_assumptionsEv.exit, label %.lr.ph2.i

.lr.ph2.i:                                        ; preds = %bb.h, %.critedge.i
  tail call void @_ZN7CaDiCaL8Internal18notify_assignmentsEv(ptr noundef nonnull align 8 dereferenceable(5704) %0)
  %i.ag = tail call noundef i32 @_ZN7CaDiCaL8Internal6decideEv(ptr noundef nonnull align 8 dereferenceable(5704) %0)
  %.not.i17 = icmp eq i32 %i.ag, 0
  br i1 %.not.i17, label %.preheader.i, label %_ZN7CaDiCaL8Internal26produce_failed_assumptionsEv.exit

.preheader.i:                                     ; preds = %.lr.ph2.i
  %i.ah = load i8, ptr %i.a, align 4, !tbaa !251, !range !220, !noundef !221
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %_ZN7CaDiCaL8Internal26produce_failed_assumptionsEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.i
  %i.aj = tail call noundef zeroext i1 @_ZN7CaDiCaL8Internal9propagateEv(ptr noundef nonnull align 8 dereferenceable(5704) %0)
  br i1 %i.aj, label %.critedge.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i
  tail call void @_ZN7CaDiCaL8Internal7analyzeEv(ptr noundef nonnull align 8 dereferenceable(5704) %0)
  %i.ak = load i8, ptr %i.a, align 4, !tbaa !251, !range !220, !noundef !221
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %_ZN7CaDiCaL8Internal26produce_failed_assumptionsEv.exit, label %.lr.ph.i, !llvm.loop !7

.critedge.i:                                      ; preds = %.lr.ph.i
  %.pre.pre.i = load i8, ptr %i.a, align 4, !tbaa !251, !range !220
  %i.am = trunc nuw i8 %.pre.pre.i to i1
  br i1 %i.am, label %_ZN7CaDiCaL8Internal26produce_failed_assumptionsEv.exit, label %.lr.ph2.i, !llvm.loop !8

_ZN7CaDiCaL8Internal26produce_failed_assumptionsEv.exit: ; preds = %.lr.ph2.i, %.preheader.i, %.critedge.i, %bb.i, %bb.h
  tail call void @_ZN7CaDiCaL8Internal18notify_assignmentsEv(ptr noundef nonnull align 8 dereferenceable(5704) %0)
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %bb.c, %bb.g, %_ZN7CaDiCaL8Internal26produce_failed_assumptionsEv.exit, %bb.b, %bb.a
  %.09 = phi i32 [ 0, %bb.a ], [ %i.ad, %bb.g ], [ 0, %bb.b ], [ 20, %_ZN7CaDiCaL8Internal26produce_failed_assumptionsEv.exit ], [ 0, %bb.d ], [ %.08, %bb.c ]
  ret i32 %.09
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN7CaDiCaL8Internal5solveEb(ptr noundef nonnull align 8 dereferenceable(5704) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !211  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7CaDiCaL5Proof11solve_queryEv(ptr noundef nonnull align 8 dereferenceable(128) %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3524 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !272
  %.not19 = icmp eq i32 %i.d, 0
  br i1 %.not19, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 3528
  %i.f = load i32, ptr %i.e, align 8, !tbaa !273
  %.not20 = icmp eq i32 %i.f, 0
  br i1 %.not20, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN7CaDiCaL8Internal26sort_and_reuse_assumptionsEv(ptr noundef nonnull align 8 dereferenceable(5704) %0)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 5408 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.i = load i32, ptr %i.h, align 4, !tbaa !274  ; 3 uses
  %i.j = icmp sgt i32 %i.i, 0
  %i.k = zext i1 %i.j to i64
  %i.l = load <2 x i64>, ptr %i.g, align 8, !tbaa !222
  %i.m = insertelement <2 x i64> <i64 1, i64 poison>, i64 %i.k, i64 1
  %i.n = add nsw <2 x i64> %i.l, %i.m
  store <2 x i64> %i.n, ptr %i.g, align 8, !tbaa !222
  %i.o = sext i32 %i.i to i64
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 5424 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !275
  %i.r = add nsw i64 %i.q, %i.o
  store i64 %i.r, ptr %i.p, align 8, !tbaa !275
  %.not21 = icmp eq i32 %i.i, 0
  br i1 %.not21, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 2152
  %i.t = load i64, ptr %i.s, align 8, !tbaa !276
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 2184
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !174
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 20
  %i.x = load i32, ptr %i.w, align 4, !tbaa !279
  %i.y = sext i32 %i.x to i64
  %i.z = sub i64 %i.t, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 5432 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !280
  %i.ac = add i64 %i.z, %i.ab
  store i64 %i.ac, ptr %i.aa, align 8, !tbaa !280
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 5672
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !170
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 384
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !403
  %.not22 = icmp eq ptr %i.ag, null
  br i1 %.not22, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN7CaDiCaL8Internal24renotify_trail_after_ilbEv(ptr noundef nonnull align 8 dereferenceable(5704) %0)
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 13
  store i8 0, ptr %i.ah, align 1, !tbaa !281
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 2896
  store i64 0, ptr %i.ai, align 8, !tbaa !282
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 4, !tbaa !251, !range !220, !noundef !221
  %i.al = trunc nuw i8 %i.ak to i1
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.an = load i8, ptr %i.am, align 8, !range !220
  %i.ao = trunc nuw i8 %i.an to i1
  %or.cond7.i = select i1 %i.al, i1 true, i1 %i.ao
  br i1 %or.cond7.i, label %.thread49.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 324 ; 8 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !274 ; 2 uses
  %.not.i = icmp ne i32 %i.aq, 0
  %i.ar = load i32, ptr %i.c, align 4
  %.not3.i = icmp eq i32 %i.ar, 0
  %or.cond9.i = select i1 %.not.i, i1 %.not3.i, i1 false
  br i1 %or.cond9.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN7CaDiCaL8Internal9backtrackEi(ptr noundef nonnull align 8 dereferenceable(5704) %0, i32 noundef 0)
  %.pre.i = load i32, ptr %i.ap, align 4, !tbaa !274
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.as = phi i32 [ %.pre.i, %bb.l ], [ %i.aq, %bb.k ]
  %.not4.i = icmp eq i32 %i.as, 0
  br i1 %.not4.i, label %bb.n, label %_ZN7CaDiCaL8Internal14already_solvedEv.exit

bb.n:                                             ; preds = %bb.m
  %i.at = tail call noundef zeroext i1 @_ZN7CaDiCaL8Internal9propagateEv(ptr noundef nonnull align 8 dereferenceable(5704) %0)
  br i1 %i.at, label %_ZN7CaDiCaL8Internal14already_solvedEv.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN7CaDiCaL8Internal18learn_empty_clauseEv(ptr noundef nonnull align 8 dereferenceable(5704) %0)
  br label %_ZN7CaDiCaL8Internal14already_solvedEv.exit

_ZN7CaDiCaL8Internal14already_solvedEv.exit:      ; preds = %bb.m, %bb.n, %bb.o
  %i.au = phi i1 [ true, %bb.m ], [ true, %bb.n ], [ false, %bb.o ]
  %.0.i = phi i32 [ 0, %bb.m ], [ 0, %bb.n ], [ 20, %bb.o ]
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !168
  %i.ax = icmp eq i32 %i.aw, 0
  %or.cond.i = and i1 %i.au, %i.ax
  %spec.store.select.i = select i1 %or.cond.i, i32 10, i32 %.0.i ; 2 uses
  %i.ay = icmp eq i32 %spec.store.select.i, 0     ; 2 uses
  %or.cond = and i1 %1, %i.ay
  br i1 %or.cond, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN7CaDiCaL8Internal14already_solvedEv.exit
  %i.az = load i32, ptr %i.ap, align 4, !tbaa !274
  %.not23 = icmp eq i32 %i.az, 0
  br i1 %.not23, label %.thread, label %.split

.split:                                           ; preds = %bb.p
  tail call void @_ZN7CaDiCaL8Internal9backtrackEi(ptr noundef nonnull align 8 dereferenceable(5704) %0, i32 noundef 0)
  br label %.thread

bb.q:                                             ; preds = %_ZN7CaDiCaL8Internal14already_solvedEv.exit
  br i1 %i.ay, label %.thread, label %bb.r

.thread:                                          ; preds = %bb.p, %.split, %bb.q
  %i.ba = tail call noundef i32 @_ZN7CaDiCaL8Internal15restore_clausesEv(ptr noundef nonnull align 8 dereferenceable(5704) %0)
  br label %bb.r

bb.r:                                             ; preds = %.thread, %bb.q
  %.0 = phi i32 [ %spec.store.select.i, %bb.q ], [ %i.ba, %.thread ] ; 2 uses
  %.not25 = icmp eq i32 %.0, 0
  br i1 %.not25, label %bb.s, label %.critedge

bb.s:                                             ; preds = %bb.r
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 2800
  %i.bc = load i8, ptr %i.bb, align 8, !tbaa !283, !range !220, !noundef !221
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %.critedge9.thread.i, label %bb.t

.critedge9.thread.i:                              ; preds = %bb.s
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 3400
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !288
  br label %_ZN7CaDiCaL8Internal25init_preprocessing_limitsEv.exit

bb.t:                                             ; preds = %bb.s
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 3920 ; 3 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !284
  %i.bi = sitofp i64 %i.bh to double
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 3768
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !289
  %i.bl = sitofp i32 %i.bk to double
  %i.bm = tail call noundef double @_ZNK7CaDiCaL8Internal5scaleEd(ptr noundef nonnull align 8 dereferenceable(5704) %0, double noundef %i.bl)
  %i.bn = fadd double %i.bm, %i.bi
  %i.bo = fptosi double %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 2920
  store i64 %i.bo, ptr %i.bp, align 8, !tbaa !290
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 3000
  store i64 -1, ptr %i.bq, align 8, !tbaa !291
  %i.br = load i64, ptr %i.bg, align 8, !tbaa !284
  %i.bs = sitofp i64 %i.br to double
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 3416
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !292
  %i.bv = sitofp i32 %i.bu to double
  %i.bw = tail call noundef double @_ZNK7CaDiCaL8Internal5scaleEd(ptr noundef nonnull align 8 dereferenceable(5704) %0, double noundef %i.bv)
  %i.bx = fadd double %i.bw, %i.bs
  %i.by = fptosi double %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 2856
  store i64 %i.by, ptr %i.bz, align 8, !tbaa !293
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 3400
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !288
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 3040
  store i64 -1, ptr %i.cc, align 8, !tbaa !294
  %i.cd = load i64, ptr %i.bg, align 8, !tbaa !284 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 3300
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !295
  %i.cg = sext i32 %i.cf to i64
  %i.ch = add nsw i64 %i.cd, %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 2840
  store i64 %i.ch, ptr %i.ci, align 8, !tbaa !296
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 3588
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !297
  %i.cl = sext i32 %i.ck to i64
  %i.cm = add nsw i64 %i.cd, %i.cl
end_hunk_0
