Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/abcMinBase?download=true
inline.NumInlined: 165
inline.NumDeleted: 31
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@Abc_NodeSupport:bb.a
  %i.ac = add nsw i32 %.01112, %i.ab              ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !76

._crit_edge.critedge:                             ; preds = %Vec_StrGrow.exit.i
  tail call void @Abc_NodeSupport_rec(ptr noundef %0, ptr noundef nonnull %1)
  tail call void @Abc_NodeSupportClear_rec(ptr noundef %0)
  br label %._crit_edge

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %._crit_edge.critedge
  %.011.lcssa = phi i32 [ 0, %._crit_edge.critedge ], [ %i.y, %middle.block ], [ %i.ac, %scalar.ph ]
  ret i32 %.011.lcssa
}

declare void @Abc_NodeCollectFanins(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @Abc_ObjDeleteFanin(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Extra_bddRemapUp(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @Cudd_Ref(ptr noundef) local_unnamed_addr #2

declare void @Cudd_RecursiveDeref(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @Cudd_ReadSize(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @Cudd_bddIthVar(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

declare ptr @Cudd_bddVectorCompose(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define i32 @Abc_NtkRemoveDupFanins(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36   ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 4
  %.val24 = load i32, ptr %i.c, align 4, !tbaa !39
  %i.d = icmp sgt i32 %.val24, 0
  br i1 %i.d, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %i.e = phi ptr [ %i.ap, %bb.e ], [ %i.b, %bb.a ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ 0, %bb.a ] ; 2 uses
  %.026 = phi i32 [ %.1, %bb.e ], [ 0, %bb.a ]    ; 3 uses
  %i.f = getelementptr i8, ptr %i.e, i64 8
  %.val11.val = load ptr, ptr %i.f, align 8, !tbaa !40
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %.val11.val, i64 %indvars.iv
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !41   ; 7 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.j = getelementptr i8, ptr %i.h, i64 20
  %.val12 = load i32, ptr %i.j, align 4
  %i.k = and i32 %.val12, 15
  %.not = icmp eq i32 %i.k, 7
  br i1 %.not, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.b
  %i.l = getelementptr i8, ptr %i.h, i64 28       ; 2 uses
  %.val38.i21 = load i32, ptr %i.l, align 4, !tbaa !52 ; 2 uses
  %i.m = icmp sgt i32 %.val38.i21, 0
  br i1 %i.m, label %.lr.ph48.i.lr.ph, label %Abc_NodeRemoveDupFanins.exit

.lr.ph48.i.lr.ph:                                 ; preds = %.preheader
  %i.n = getelementptr i8, ptr %i.h, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 64 ; 2 uses
  br label %.lr.ph48.i

.lr.ph48.i:                                       ; preds = %.lr.ph48.i.lr.ph, %Abc_NodeRemoveDupFanins_int.exit
  %.val38.i23 = phi i32 [ %.val38.i21, %.lr.ph48.i.lr.ph ], [ %.val38.i, %Abc_NodeRemoveDupFanins_int.exit ]
  %.0.i22 = phi i32 [ 0, %.lr.ph48.i.lr.ph ], [ %i.am, %Abc_NodeRemoveDupFanins_int.exit ] ; 2 uses
  %.val41.i = load ptr, ptr %i.h, align 8, !tbaa !45 ; 2 uses
  %.val42.i = load ptr, ptr %i.n, align 8, !tbaa !60 ; 2 uses
  %i.p = getelementptr i8, ptr %.val41.i, i64 32
  %.val41.val.i = load ptr, ptr %i.p, align 8, !tbaa !36
  %i.q = getelementptr i8, ptr %.val41.val.i, i64 8
  %.val41.val.val.i = load ptr, ptr %i.q, align 8, !tbaa !40 ; 2 uses
  %wide.trip.count.i = zext nneg i32 %.val38.i23 to i64
  br label %bb.c

bb.c:                                             ; preds = %.critedge2.i, %.lr.ph48.i
  %indvars.iv52.i = phi i64 [ 0, %.lr.ph48.i ], [ %indvars.iv.next53.i, %.critedge2.i ] ; 5 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %.val42.i, i64 %indvars.iv52.i
  %i.s = load i32, ptr %i.r, align 4, !tbaa !54
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %.val41.val.val.i, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !41
  %or.cond45.not.i = icmp eq i64 %indvars.iv52.i, 0
  br i1 %or.cond45.not.i, label %.critedge2.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.d ], [ 0, %bb.c ] ; 3 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.val42.i, i64 %indvars.iv.i
  %i.x = load i32, ptr %i.w, align 4, !tbaa !54
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds [8 x i8], ptr %.val41.val.val.i, i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !41
  %i.ab = icmp eq ptr %i.aa, %i.v
  br i1 %i.ab, label %Abc_NodeRemoveDupFanins_int.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.i, %indvars.iv52.i
  br i1 %exitcond.not, label %.critedge2.i, label %.lr.ph.i, !llvm.loop !1

.critedge2.i:                                     ; preds = %bb.d, %bb.c
  %indvars.iv.next53.i = add nuw nsw i64 %indvars.iv52.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next53.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Abc_NodeRemoveDupFanins.exit, label %bb.c, !llvm.loop !2

Abc_NodeRemoveDupFanins_int.exit:                 ; preds = %.lr.ph.i
  %i.ac = trunc nuw nsw i64 %indvars.iv52.i to i32
  %i.ad = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.ae = getelementptr inbounds nuw i8, ptr %.val41.i, i64 256
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !46 ; 6 uses
  %i.ag = tail call ptr @Cudd_bddIthVar(ptr noundef %i.af, i32 noundef %i.ac) #18
  %i.ah = tail call ptr @Cudd_bddIthVar(ptr noundef %i.af, i32 noundef %i.ad) #18 ; 2 uses
  %i.ai = tail call ptr @Cudd_bddXnor(ptr noundef %i.af, ptr noundef %i.ag, ptr noundef %i.ah) #18 ; 3 uses
  tail call void @Cudd_Ref(ptr noundef %i.ai) #18
  %i.aj = load ptr, ptr %i.o, align 8, !tbaa !51  ; 2 uses
  %i.ak = tail call ptr @Cudd_bddAndAbstract(ptr noundef %i.af, ptr noundef %i.aj, ptr noundef %i.ai, ptr noundef %i.ah) #18 ; 2 uses
  store ptr %i.ak, ptr %i.o, align 8, !tbaa !51
  tail call void @Cudd_Ref(ptr noundef %i.ak) #18
  tail call void @Cudd_RecursiveDeref(ptr noundef %i.af, ptr noundef %i.aj) #18
  tail call void @Cudd_RecursiveDeref(ptr noundef %i.af, ptr noundef %i.ai) #18
  %i.al = tail call i32 @Abc_NodeMinimumBase(ptr noundef nonnull %i.h) ; 0 uses
  %i.am = add nuw nsw i32 %.0.i22, 1              ; 2 uses
  %.val38.i = load i32, ptr %i.l, align 4, !tbaa !52 ; 2 uses
  %i.an = icmp sgt i32 %.val38.i, 0
  br i1 %i.an, label %.lr.ph48.i, label %Abc_NodeRemoveDupFanins.exit, !llvm.loop !3

Abc_NodeRemoveDupFanins.exit:                     ; preds = %Abc_NodeRemoveDupFanins_int.exit, %.critedge2.i, %.preheader
  %.0.i20 = phi i32 [ %.0.i22, %.critedge2.i ], [ 0, %.preheader ], [ %i.am, %Abc_NodeRemoveDupFanins_int.exit ]
  %i.ao = add nsw i32 %.0.i20, %.026
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !36
  br label %bb.e

bb.e:                                             ; preds = %Abc_NodeRemoveDupFanins.exit, %bb.b, %.lr.ph
  %i.ap = phi ptr [ %i.e, %.lr.ph ], [ %.pre, %Abc_NodeRemoveDupFanins.exit ], [ %i.e, %bb.b ] ; 2 uses
  %.1 = phi i32 [ %.026, %.lr.ph ], [ %i.ao, %Abc_NodeRemoveDupFanins.exit ], [ %.026, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 4
  %.val = load i32, ptr %i.aq, align 4, !tbaa !39
  %i.ar = sext i32 %.val to i64
  %i.as = icmp slt i64 %indvars.iv.next, %i.ar
  br i1 %i.as, label %.lr.ph, label %.critedge, !llvm.loop !79

.critedge:                                        ; preds = %bb.e, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %.1, %bb.e ]
  ret i32 %.0.lcssa
}

; Function Attrs: nounwind uwtable
define i32 @Abc_NodeRemoveDupFanins(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %i.b, %bb.b ]     ; 2 uses
  %i.a = tail call i32 @Abc_NodeRemoveDupFanins_int(ptr noundef %0)
  %.not = icmp eq i32 %i.a, 0
  %i.b = add nuw nsw i32 %.0, 1
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !3

bb.c:                                             ; preds = %bb.b
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @Abc_NodeRemoveDupFanins_int(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 28
  %.val38 = load i32, ptr %i.a, align 4, !tbaa !52 ; 3 uses
  %i.b = icmp sgt i32 %.val38, 0
  br i1 %i.b, label %.lr.ph48, label %.critedge

.lr.ph48:                                         ; preds = %bb.a
  %.val41 = load ptr, ptr %0, align 8, !tbaa !45  ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 32
  %.val42 = load ptr, ptr %i.c, align 8, !tbaa !60 ; 2 uses
  %i.d = getelementptr i8, ptr %.val41, i64 32
  %.val41.val = load ptr, ptr %i.d, align 8, !tbaa !36
  %i.e = getelementptr i8, ptr %.val41.val, i64 8
  %.val41.val.val = load ptr, ptr %i.e, align 8, !tbaa !40 ; 2 uses
  %wide.trip.count.a = zext nneg i32 %.val38 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph48, %.critedge2
  %indvars.iv52 = phi i64 [ 0, %.lr.ph48 ], [ %indvars.iv.next53, %.critedge2 ] ; 4 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %.val42, i64 %indvars.iv52
  %i.g = load i32, ptr %i.f, align 4, !tbaa !54
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds [8 x i8], ptr %.val41.val.val, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !41
  %1 = trunc nuw nsw i64 %indvars.iv52 to i32     ; 2 uses
  %or.cond45.not = icmp eq i64 %indvars.iv52, 0
  br i1 %or.cond45.not, label %.critedge2, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %invariant.smin = tail call i32 @llvm.smin.i32(i32 %.val38, i32 %1)
  %2 = sext i32 %invariant.smin to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %.val42, i64 %indvars.iv
  %i.l = load i32, ptr %i.k, align 4, !tbaa !54
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [8 x i8], ptr %.val41.val.val, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !41
  %i.p = icmp eq ptr %i.o, %i.j
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.q = trunc nuw nsw i64 %indvars.iv to i32
  %i.r = getelementptr inbounds nuw i8, ptr %.val41, i64 256
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !46   ; 6 uses
  %i.t = tail call ptr @Cudd_bddIthVar(ptr noundef %i.s, i32 noundef %1) #18
  %i.u = tail call ptr @Cudd_bddIthVar(ptr noundef %i.s, i32 noundef %i.q) #18 ; 2 uses
  %i.v = tail call ptr @Cudd_bddXnor(ptr noundef %i.s, ptr noundef %i.t, ptr noundef %i.u) #18 ; 3 uses
  tail call void @Cudd_Ref(ptr noundef %i.v) #18
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !51   ; 2 uses
  %i.y = tail call ptr @Cudd_bddAndAbstract(ptr noundef %i.s, ptr noundef %i.x, ptr noundef %i.v, ptr noundef %i.u) #18 ; 2 uses
  store ptr %i.y, ptr %i.w, align 8, !tbaa !51
  tail call void @Cudd_Ref(ptr noundef %i.y) #18
  tail call void @Cudd_RecursiveDeref(ptr noundef %i.s, ptr noundef %i.x) #18
  tail call void @Cudd_RecursiveDeref(ptr noundef %i.s, ptr noundef %i.v) #18
  %i.z = tail call i32 @Abc_NodeMinimumBase(ptr noundef nonnull %0) ; 0 uses
  br label %.critedge

bb.d:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %or.cond = icmp slt i64 %indvars.iv.next, %2
  br i1 %or.cond, label %.lr.ph, label %.critedge2, !llvm.loop !1

.critedge2:                                       ; preds = %bb.d, %bb.b
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1 ; 2 uses
  %exitcond.not.a = icmp eq i64 %indvars.iv.next53, %wide.trip.count.a
  br i1 %exitcond.not.a, label %.critedge, label %bb.b, !llvm.loop !2

.critedge:                                        ; preds = %.critedge2, %bb.a, %bb.c
  %.0 = phi i32 [ 1, %bb.c ], [ 0, %bb.a ], [ 0, %.critedge2 ]
  ret i32 %.0
}

declare ptr @Cudd_bddXnor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Cudd_bddAndAbstract(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @Abc_NodeSupport_rec(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !58     ; 2 uses
  %i.b = icmp eq i32 %i.a, 2147483647
  br i1 %i.b, label %common.ret10, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !61
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = and i64 %i.e, 1
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.c, label %common.ret10

common.ret10:                                     ; preds = %bb.a, %bb.b, %bb.c
  ret void

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !50
  %i.i = zext i32 %i.a to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.i
  store i8 1, ptr %i.j, align 1, !tbaa !51
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !51
  tail call void @Abc_NodeSupport_rec(ptr noundef %i.l, ptr noundef %1)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !51
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = and i64 %i.o, -2
  %i.q = inttoptr i64 %i.p to ptr
  tail call void @Abc_NodeSupport_rec(ptr noundef %i.q, ptr noundef %1)
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !61
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = xor i64 %i.s, 1
  %i.u = inttoptr i64 %i.t to ptr
  store ptr %i.u, ptr %i.c, align 8, !tbaa !61
  br label %common.ret10
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @Abc_NodeSupportClear_rec(ptr nofree noundef captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !61
  %i.c = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.d = and i64 %i.c, 1
  %.not6 = icmp eq i64 %i.d, 0
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %tailrecurse
  %i.e = phi i64 [ %i.t, %tailrecurse ], [ %i.c, %bb.a ]
  %i.f = phi ptr [ %i.r, %tailrecurse ], [ %i.a, %bb.a ]
  %.tr7 = phi ptr [ %i.q, %tailrecurse ], [ %0, %bb.a ] ; 3 uses
  %i.g = and i64 %i.e, -2
  %i.h = inttoptr i64 %i.g to ptr
  store ptr %i.h, ptr %i.f, align 8, !tbaa !61
  %i.i = load i32, ptr %.tr7, align 8, !tbaa !58
  %i.j = icmp eq i32 %i.i, 2147483647
  br i1 %i.j, label %._crit_edge, label %tailrecurse

tailrecurse:                                      ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %.tr7, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !51
  tail call void @Abc_NodeSupportClear_rec(ptr noundef %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %.tr7, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !51
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = and i64 %i.o, -2
  %i.q = inttoptr i64 %i.p to ptr                 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !61
  %i.t = ptrtoint ptr %i.s to i64                 ; 2 uses
  %i.u = and i64 %i.t, 1
  %.not = icmp eq i64 %i.u, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %tailrecurse, %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i32 @Abc_NodeCheckDupFanin(ptr nofree noundef readnone captures(address) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 28         ; 2 uses
  %.val15 = load i32, ptr %i.a, align 4, !tbaa !52 ; 4 uses
  %i.b = icmp sgt i32 %.val15, 0
  br i1 %i.b, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %.val13 = load ptr, ptr %1, align 8, !tbaa !45
  %i.c = getelementptr i8, ptr %1, i64 32
  %.val14 = load ptr, ptr %i.c, align 8, !tbaa !60 ; 6 uses
  %i.d = getelementptr i8, ptr %.val13, i64 32
  %.val13.val = load ptr, ptr %i.d, align 8, !tbaa !36
  %i.e = getelementptr i8, ptr %.val13.val, i64 8
  %.val13.val.val = load ptr, ptr %i.e, align 8, !tbaa !40 ; 6 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %wide.trip.count = zext nneg i32 %.val15 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.f = icmp ult i32 %.val15, 4
  br i1 %i.f, label %.epil.preheader, label %.lr.ph.split.us.new

.lr.ph.split.us.new:                              ; preds = %.lr.ph.split.us
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.split.us.new
  %indvars.iv21 = phi i64 [ 0, %.lr.ph.split.us.new ], [ %indvars.iv.next22.3, %bb.b ] ; 5 uses
  %.018.us = phi i32 [ 0, %.lr.ph.split.us.new ], [ %spec.select.3, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.split.us.new ], [ %niter.next.3, %bb.b ]
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %.val14, i64 %indvars.iv21
  %i.h = load i32, ptr %i.g, align 4, !tbaa !54
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds [8 x i8], ptr %.val13.val.val, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !41
  %i.l = icmp eq ptr %i.k, %0
  %i.m = zext i1 %i.l to i32
  %spec.select = add nuw nsw i32 %.018.us, %i.m
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %.val14, i64 %indvars.iv21
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !54
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds [8 x i8], ptr %.val13.val.val, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !41
  %i.t = icmp eq ptr %i.s, %0
  %i.u = zext i1 %i.t to i32
  %spec.select.1 = add nuw nsw i32 %spec.select, %i.u
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.val14, i64 %indvars.iv21
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i32, ptr %i.w, align 4, !tbaa !54
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds [8 x i8], ptr %.val13.val.val, i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !41
  %i.ab = icmp eq ptr %i.aa, %0
  %i.ac = zext i1 %i.ab to i32
  %spec.select.2 = add nuw nsw i32 %spec.select.1, %i.ac
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.val14, i64 %indvars.iv21
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !54
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds [8 x i8], ptr %.val13.val.val, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !41
  %i.aj = icmp eq ptr %i.ai, %0
  %i.ak = zext i1 %i.aj to i32
  %spec.select.3 = add nuw nsw i32 %spec.select.2, %i.ak ; 3 uses
  %indvars.iv.next22.3 = add nuw nsw i64 %indvars.iv21, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.critedge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !4

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.d
  %.val24 = phi i32 [ %.val, %bb.d ], [ %.val15, %.lr.ph ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ 0, %.lr.ph ] ; 3 uses
  %.018 = phi i32 [ %.1, %bb.d ], [ 0, %.lr.ph ]  ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %.val14, i64 %indvars.iv
  %i.am = load i32, ptr %i.al, align 4, !tbaa !54
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds [8 x i8], ptr %.val13.val.val, i64 %i.an
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !41
  %i.aq = icmp eq ptr %i.ap, %0
  br i1 %i.aq, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.split
  %i.ar = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.ar, ptr %2, align 4, !tbaa !54
  %i.as = add nsw i32 %.018, 1
  %.val.pre = load i32, ptr %i.a, align 4, !tbaa !52
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph.split, %bb.c
  %.val = phi i32 [ %.val.pre, %bb.c ], [ %.val24, %.lr.ph.split ] ; 2 uses
  %.1 = phi i32 [ %i.as, %bb.c ], [ %.018, %.lr.ph.split ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.at = sext i32 %.val to i64
  %i.au = icmp slt i64 %indvars.iv.next, %i.at
  br i1 %i.au, label %.lr.ph.split, label %.critedge, !llvm.loop !4

.critedge.loopexit.unr-lcssa:                     ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge, label %.epil.preheader
end_hunk_0
