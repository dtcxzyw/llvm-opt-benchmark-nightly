Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/communication?download=true
inline.NumInlined: 11
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@hypre_CommPkgDestroy:bb.a

bb.g:                                             ; preds = %.lr.ph.i18
  tail call void @hypre_Free(ptr noundef nonnull %i.av) #5
  %.pre.i21 = load i32, ptr %i.ap, align 8, !tbaa !39
  br label %hypre_CommTypeEntryDestroy.exit.i22

hypre_CommTypeEntryDestroy.exit.i22:              ; preds = %bb.g, %.lr.ph.i18
  %i.aw = phi i32 [ %i.as, %.lr.ph.i18 ], [ %.pre.i21, %bb.g ] ; 2 uses
  %indvars.iv.next.i23 = add nuw nsw i64 %indvars.iv.i19, 1 ; 2 uses
  %i.ax = sext i32 %i.aw to i64
  %i.ay = icmp slt i64 %indvars.iv.next.i23, %i.ax
  br i1 %i.ay, label %.lr.ph.i18, label %.loopexit.loopexit.i24, !llvm.loop !0

.loopexit.loopexit.i24:                           ; preds = %hypre_CommTypeEntryDestroy.exit.i22
  %.pre15.i25 = load ptr, ptr %i.an, align 8, !tbaa !38
  br label %.loopexit.i17

.loopexit.i17:                                    ; preds = %.loopexit.loopexit.i24, %.preheader.i16, %bb.f
  %i.az = phi ptr [ %.pre15.i25, %.loopexit.loopexit.i24 ], [ %i.ao, %.preheader.i16 ], [ null, %bb.f ]
  tail call void @hypre_Free(ptr noundef %i.az) #5
  store ptr null, ptr %i.an, align 8, !tbaa !38
  tail call void @hypre_Free(ptr noundef nonnull %i.an) #5
  br label %hypre_CommTypeDestroy.exit26

hypre_CommTypeDestroy.exit26:                     ; preds = %hypre_CommTypeDestroy.exit, %.loopexit.i17
  tail call void @hypre_Free(ptr noundef nonnull %0) #5
  br label %bb.h

bb.h:                                             ; preds = %hypre_CommTypeDestroy.exit26, %bb.a
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @hypre_CommPkgUnCommit(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 !guid !74 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 3 uses
  %.not20 = icmp eq ptr %i.b, null
  br i1 %.not20, label %bb.c, label %.preheader22

.preheader22:                                     ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !19
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader22, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader22 ] ; 2 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  %i.g = tail call i32 @hypre_MPI_Type_free(ptr noundef nonnull %i.f) #5 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.h = load i32, ptr %i.c, align 8, !tbaa !19
  %i.i = sext i32 %i.h to i64
  %i.j = icmp slt i64 %indvars.iv.next, %i.i
  br i1 %i.j, label %.lr.ph, label %._crit_edge, !llvm.loop !1

._crit_edge:                                      ; preds = %.lr.ph, %.preheader22
  tail call void @hypre_Free(ptr noundef nonnull %i.b) #5
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !35   ; 3 uses
  %.not21 = icmp eq ptr %i.l, null
  br i1 %.not21, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !26
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph25, label %._crit_edge26

.lr.ph25:                                         ; preds = %.preheader, %.lr.ph25
  %indvars.iv28 = phi i64 [ %indvars.iv.next29, %.lr.ph25 ], [ 0, %.preheader ] ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv28
  %i.q = tail call i32 @hypre_MPI_Type_free(ptr noundef nonnull %i.p) #5 ; 0 uses
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1 ; 2 uses
  %i.r = load i32, ptr %i.m, align 4, !tbaa !26
  %i.s = sext i32 %i.r to i64
  %i.t = icmp slt i64 %indvars.iv.next29, %i.s
  br i1 %i.t, label %.lr.ph25, label %._crit_edge26, !llvm.loop !2

._crit_edge26:                                    ; preds = %.lr.ph25, %.preheader
  tail call void @hypre_Free(ptr noundef nonnull %i.l) #5
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge26, %bb.a
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @hypre_InitializeCommunication(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #0 !guid !77 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !19   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !26   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !18   ; 2 uses
  %i.g = add nsw i32 %i.d, %i.b                   ; 3 uses
  %i.h = tail call ptr @hypre_CAlloc(i32 noundef %i.g, i32 noundef 4) #5 ; 3 uses
  %i.i = tail call ptr @hypre_CAlloc(i32 noundef %i.g, i32 noundef 4) #5
  %i.j = icmp sgt i32 %i.d, 0
  br i1 %i.j, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %bb.b

.preheader.loopexit:                              ; preds = %bb.b
  %i.m = zext nneg i32 %i.d to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.m, %.preheader.loopexit ]
  %i.n = icmp sgt i32 %i.b, 0
  br i1 %i.n, label %.lr.ph52, label %._crit_edge

.lr.ph52:                                         ; preds = %.preheader
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %wide.trip.count63 = zext nneg i32 %i.b to i64
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !35
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv
  %i.s = load i32, ptr %i.r, align 4, !tbaa !11
  %i.t = load ptr, ptr %i.l, align 8, !tbaa !27
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv
  %i.v = load i32, ptr %i.u, align 4, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv
  %i.x = tail call i32 @hypre_MPI_Irecv(ptr noundef %2, i32 noundef 1, i32 noundef %i.s, i32 noundef %i.v, i32 noundef 0, i32 noundef %i.f, ptr noundef %i.w) #5 ; 0 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader.loopexit, label %bb.b, !llvm.loop !75

bb.c:                                             ; preds = %.lr.ph52, %bb.c
  %indvars.iv58 = phi i64 [ 0, %.lr.ph52 ], [ %indvars.iv.next59, %bb.c ] ; 3 uses
  %indvars.iv56 = phi i64 [ %.0.lcssa, %.lr.ph52 ], [ %indvars.iv.next57, %bb.c ] ; 2 uses
  %i.y = load ptr, ptr %i.o, align 8, !tbaa !34
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv58
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !11
  %i.ab = load ptr, ptr %i.p, align 8, !tbaa !21
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv58
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !11
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv56
  %i.af = tail call i32 @hypre_MPI_Isend(ptr noundef %1, i32 noundef 1, i32 noundef %i.aa, i32 noundef %i.ad, i32 noundef 0, i32 noundef %i.f, ptr noundef %i.ae) #5 ; 0 uses
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1 ; 2 uses
  %exitcond64.not = icmp eq i64 %indvars.iv.next59, %wide.trip.count63
  br i1 %exitcond64.not, label %._crit_edge, label %bb.c, !llvm.loop !76

._crit_edge:                                      ; preds = %bb.c, %.preheader
  %i.ag = tail call i32 @hypre_ExchangeLocalData(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2) ; 0 uses
  %i.ah = tail call ptr @hypre_MAlloc(i32 noundef 48) #5 ; 7 uses
  store ptr %0, ptr %i.ah, align 8, !tbaa !78
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %1, ptr %i.ai, align 8, !tbaa !79
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store ptr %2, ptr %i.aj, align 8, !tbaa !80
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store i32 %i.g, ptr %i.ak, align 8, !tbaa !45
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  store ptr %i.h, ptr %i.al, align 8, !tbaa !46
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  store ptr %i.i, ptr %i.am, align 8, !tbaa !47
  store ptr %i.ah, ptr %3, align 8, !tbaa !82
  ret i32 0
}

declare i32 @hypre_MPI_Irecv(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @hypre_MPI_Isend(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @hypre_ExchangeLocalData(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef writeonly captures(address) %2) local_unnamed_addr #3 !guid !90 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !25   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !39   ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph74, label %._crit_edge75

.lr.ph74:                                         ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !29
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !38
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !38
  %wide.trip.count = zext nneg i32 %i.f to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph74, %.loopexit
  %indvars.iv96 = phi i64 [ 0, %.lr.ph74 ], [ %indvars.iv.next97, %.loopexit ] ; 3 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv96
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !41   ; 9 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv96
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !41   ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.q = load i32, ptr %i.p, align 4, !tbaa !49
  %i.r = sext i32 %i.q to i64                     ; 2 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %1, i64 %i.r ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.u = load i32, ptr %i.t, align 4, !tbaa !49
  %i.v = sext i32 %i.u to i64                     ; 2 uses
  %i.w = getelementptr inbounds [8 x i8], ptr %2, i64 %i.v ; 7 uses
  %.not = icmp eq ptr %i.w, %i.s
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 44
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !11 ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %.preheader58.lr.ph, label %.loopexit

.preheader58.lr.ph:                               ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !11 ; 2 uses
  %i.af = icmp sgt i32 %i.ae, 0
  %i.ag = getelementptr inbounds nuw i8, ptr %i.m, i64 60
  %i.ah = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.ai = getelementptr inbounds nuw i8, ptr %i.m, i64 52
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 60
  %i.ak = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.al = getelementptr inbounds nuw i8, ptr %i.o, i64 52
  br i1 %i.af, label %.preheader58.lr.ph.split, label %.loopexit

.preheader58.lr.ph.split:                         ; preds = %.preheader58.lr.ph
  %i.am = getelementptr inbounds nuw i8, ptr %i.m, i64 36
  %i.an = load i32, ptr %i.am, align 4, !tbaa !11 ; 2 uses
  %i.ao = icmp sgt i32 %i.an, 0
  br i1 %i.ao, label %.preheader58.lr.ph.split.split, label %.loopexit

.preheader58.lr.ph.split.split:                   ; preds = %.preheader58.lr.ph.split
  %i.ap = load i32, ptr %i.ag, align 4, !tbaa !11
  %i.aq = load i32, ptr %i.ah, align 4, !tbaa !11
  %i.ar = load i32, ptr %i.ai, align 4, !tbaa !11
  %i.as = load i32, ptr %i.aj, align 4, !tbaa !11
  %i.at = load i32, ptr %i.ak, align 4, !tbaa !11
  %i.au = load i32, ptr %i.al, align 4, !tbaa !11
  %i.av = load i32, ptr %i.x, align 4, !tbaa !11  ; 6 uses
  %i.aw = icmp sgt i32 %i.av, 0
  br i1 %i.aw, label %.preheader58.lr.ph.split.split.split, label %.loopexit

.preheader58.lr.ph.split.split.split:             ; preds = %.preheader58.lr.ph.split.split
  %i.ax = load i32, ptr %i.y, align 4, !tbaa !11  ; 2 uses
  %i.ay = load i32, ptr %i.z, align 4, !tbaa !11  ; 2 uses
  %i.az = sext i32 %i.ay to i64                   ; 5 uses
  %i.ba = sext i32 %i.ax to i64                   ; 5 uses
  %i.bb = zext nneg i32 %i.av to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.av, 8
  %ident.check = icmp ne i32 %i.ay, 1
  %ident.check109 = icmp ne i32 %i.ax, 1
  %i.bc = or i1 %ident.check, %ident.check109
  %n.vec = and i64 %i.bb, 2147483644              ; 5 uses
  %i.bd = trunc nuw nsw i64 %n.vec to i32
  %cmp.n = icmp eq i64 %n.vec, %i.bb
  br label %.preheader58

.preheader58:                                     ; preds = %.preheader58.lr.ph.split.split.split, %._crit_edge66
  %indvars.iv82 = phi i32 [ 0, %.preheader58.lr.ph.split.split.split ], [ %indvars.iv.next83, %._crit_edge66 ] ; 2 uses
  %indvars.iv = phi i32 [ 0, %.preheader58.lr.ph.split.split.split ], [ %indvars.iv.next, %._crit_edge66 ] ; 2 uses
  %.05068 = phi i32 [ 0, %.preheader58.lr.ph.split.split.split ], [ %i.cl, %._crit_edge66 ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader58, %._crit_edge64
  %indvars.iv84 = phi i32 [ %indvars.iv82, %.preheader58 ], [ %indvars.iv.next85, %._crit_edge64 ] ; 2 uses
  %indvars.iv76 = phi i32 [ %indvars.iv, %.preheader58 ], [ %indvars.iv.next77, %._crit_edge64 ] ; 2 uses
  %.05165 = phi i32 [ 0, %.preheader58 ], [ %i.ck, %._crit_edge64 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %._crit_edge
  %indvars.iv86 = phi i32 [ %indvars.iv84, %.preheader ], [ %indvars.iv.next87, %._crit_edge ] ; 2 uses
  %indvars.iv78 = phi i32 [ %indvars.iv76, %.preheader ], [ %indvars.iv.next79, %._crit_edge ] ; 2 uses
  %.05262 = phi i32 [ 0, %.preheader ], [ %i.cj, %._crit_edge ]
  %i.be = sext i32 %indvars.iv78 to i64           ; 5 uses
  %i.bf = sext i32 %indvars.iv86 to i64           ; 5 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.bc
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.bg = add nsw i64 %i.r, %i.bf
  %i.bh = shl nsw i64 %i.bg, 3
  %3 = add i64 %i.bh, %i.b
  %i.bi = add nsw i64 %i.v, %i.be
  %4 = shl nsw i64 %i.bi, 3
  %i.bj = add i64 %4, %i.a
  %5 = sub i64 %3, %i.bj
  %diff.check = icmp ugt i64 %5, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bk = add nsw i64 %n.vec, %i.bf
  %i.bl = add nsw i64 %n.vec, %i.be
  %invariant.gep = getelementptr [8 x i8], ptr %i.s, i64 %i.bf
  %invariant.gep113 = getelementptr [8 x i8], ptr %i.w, i64 %i.be
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load = load <2 x double>, ptr %gep, align 8, !tbaa !92
  %wide.load110 = load <2 x double>, ptr %i.bm, align 8, !tbaa !92
  %gep114 = getelementptr [8 x i8], ptr %invariant.gep113, i64 %index ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %gep114, i64 16
  store <2 x double> %wide.load, ptr %gep114, align 8, !tbaa !92
  store <2 x double> %wide.load110, ptr %i.bn, align 8, !tbaa !92
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bo = icmp eq i64 %index.next, %n.vec
  br i1 %i.bo, label %middle.block, label %vector.body, !llvm.loop !83

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %vector.memcheck, %middle.block
  %indvars.iv88.ph = phi i64 [ %i.bf, %vector.memcheck ], [ %i.bk, %middle.block ], [ %i.bf, %.lr.ph ] ; 2 uses
  %indvars.iv80.ph = phi i64 [ %i.be, %vector.memcheck ], [ %i.bl, %middle.block ], [ %i.be, %.lr.ph ] ; 2 uses
  %.05361.ph = phi i32 [ 0, %vector.memcheck ], [ %i.bd, %middle.block ], [ 0, %.lr.ph ] ; 4 uses
  %i.bp = sub i32 %i.av, %.05361.ph
  %xtraiter = and i32 %i.bp, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv88.prol = phi i64 [ %indvars.iv.next89.prol, %scalar.ph.prol ], [ %indvars.iv88.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv80.prol = phi i64 [ %indvars.iv.next81.prol, %scalar.ph.prol ], [ %indvars.iv80.ph, %scalar.ph.preheader ] ; 2 uses
  %.05361.prol = phi i32 [ %i.bt, %scalar.ph.prol ], [ %.05361.ph, %scalar.ph.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.s, i64 %indvars.iv88.prol
  %i.br = load double, ptr %i.bq, align 8, !tbaa !92
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.w, i64 %indvars.iv80.prol
  store double %i.br, ptr %i.bs, align 8, !tbaa !92
  %indvars.iv.next89.prol = add nsw i64 %indvars.iv88.prol, %i.ba ; 2 uses
  %indvars.iv.next81.prol = add nsw i64 %indvars.iv80.prol, %i.az ; 2 uses
  %i.bt = add nuw nsw i32 %.05361.prol, 1         ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !84

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv88.unr = phi i64 [ %indvars.iv88.ph, %scalar.ph.preheader ], [ %indvars.iv.next89.prol, %scalar.ph.prol ]
  %indvars.iv80.unr = phi i64 [ %indvars.iv80.ph, %scalar.ph.preheader ], [ %indvars.iv.next81.prol, %scalar.ph.prol ]
  %.05361.unr = phi i32 [ %.05361.ph, %scalar.ph.preheader ], [ %i.bt, %scalar.ph.prol ]
  %i.bu = sub i32 %.05361.ph, %i.av
  %i.bv = icmp ugt i32 %i.bu, -4
  br i1 %i.bv, label %._crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv88 = phi i64 [ %indvars.iv.next89.3, %scalar.ph ], [ %indvars.iv88.unr, %scalar.ph.prol.loopexit ] ; 2 uses
  %indvars.iv80 = phi i64 [ %indvars.iv.next81.3, %scalar.ph ], [ %indvars.iv80.unr, %scalar.ph.prol.loopexit ] ; 2 uses
  %.05361 = phi i32 [ %i.ci, %scalar.ph ], [ %.05361.unr, %scalar.ph.prol.loopexit ]
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.s, i64 %indvars.iv88
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !92
  %i.by = getelementptr inbounds [8 x i8], ptr %i.w, i64 %indvars.iv80
  store double %i.bx, ptr %i.by, align 8, !tbaa !92
  %indvars.iv.next89 = add nsw i64 %indvars.iv88, %i.ba ; 2 uses
  %indvars.iv.next81 = add nsw i64 %indvars.iv80, %i.az ; 2 uses
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.s, i64 %indvars.iv.next89
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !92
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.w, i64 %indvars.iv.next81
  store double %i.ca, ptr %i.cb, align 8, !tbaa !92
  %indvars.iv.next89.1 = add nsw i64 %indvars.iv.next89, %i.ba ; 2 uses
  %indvars.iv.next81.1 = add nsw i64 %indvars.iv.next81, %i.az ; 2 uses
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.s, i64 %indvars.iv.next89.1
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !92
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.w, i64 %indvars.iv.next81.1
  store double %i.cd, ptr %i.ce, align 8, !tbaa !92
  %indvars.iv.next89.2 = add nsw i64 %indvars.iv.next89.1, %i.ba ; 2 uses
  %indvars.iv.next81.2 = add nsw i64 %indvars.iv.next81.1, %i.az ; 2 uses
  %i.cf = getelementptr inbounds [8 x i8], ptr %i.s, i64 %indvars.iv.next89.2
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !92
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.w, i64 %indvars.iv.next81.2
  store double %i.cg, ptr %i.ch, align 8, !tbaa !92
  %indvars.iv.next89.3 = add nsw i64 %indvars.iv.next89.2, %i.ba
  %indvars.iv.next81.3 = add nsw i64 %indvars.iv.next81.2, %i.az
  %i.ci = add nuw nsw i32 %.05361, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i32 %i.ci, %i.av
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !85

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.cj = add nuw nsw i32 %.05262, 1              ; 2 uses
  %indvars.iv.next79 = add i32 %indvars.iv78, %i.au
  %indvars.iv.next87 = add i32 %indvars.iv86, %i.ar
  %exitcond93.not = icmp eq i32 %i.cj, %i.an
  br i1 %exitcond93.not, label %._crit_edge64, label %.lr.ph, !llvm.loop !86

._crit_edge64:                                    ; preds = %._crit_edge
  %i.ck = add nuw nsw i32 %.05165, 1              ; 2 uses
  %indvars.iv.next77 = add i32 %indvars.iv76, %i.at
  %indvars.iv.next85 = add i32 %indvars.iv84, %i.aq
  %exitcond94.not = icmp eq i32 %i.ck, %i.ae
  br i1 %exitcond94.not, label %._crit_edge66, label %.preheader, !llvm.loop !87

._crit_edge66:                                    ; preds = %._crit_edge64
  %i.cl = add nuw nsw i32 %.05068, 1              ; 2 uses
  %indvars.iv.next = add i32 %indvars.iv, %i.as
  %indvars.iv.next83 = add i32 %indvars.iv82, %i.ap
  %exitcond95.not = icmp eq i32 %i.cl, %i.ab
  br i1 %exitcond95.not, label %.loopexit, label %.preheader58, !llvm.loop !88

.loopexit:                                        ; preds = %._crit_edge66, %bb.c, %.preheader58.lr.ph.split, %.preheader58.lr.ph.split.split, %.preheader58.lr.ph, %bb.b
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1 ; 2 uses
  %exitcond99.not = icmp eq i64 %indvars.iv.next97, %wide.trip.count
  br i1 %exitcond99.not, label %._crit_edge75, label %bb.b, !llvm.loop !89

._crit_edge75:                                    ; preds = %.loopexit, %bb.a
  ret i32 0
}

declare ptr @hypre_MAlloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @hypre_FinalizeCommunication(ptr noundef %0) local_unnamed_addr #0 !guid !96 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !45   ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !46
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !47
  %i.g = tail call i32 @hypre_MPI_Waitall(i32 noundef %i.b, ptr noundef %i.d, ptr noundef %i.f) #5 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !46
  tail call void @hypre_Free(ptr noundef %i.i) #5
  store ptr null, ptr %i.h, align 8, !tbaa !46
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !47
  tail call void @hypre_Free(ptr noundef %i.k) #5
  store ptr null, ptr %i.j, align 8, !tbaa !47
  tail call void @hypre_Free(ptr noundef nonnull %0) #5
  ret i32 0
}

declare i32 @hypre_MPI_Waitall(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @hypre_CommTypeCreate(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !guid !97 {
bb.a:
  %i.a = tail call ptr @hypre_MAlloc(i32 noundef 16) #5 ; 3 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !38
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %1, ptr %i.b, align 8, !tbaa !39
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @hypre_CommTypeEntryDestroy(ptr noundef %0) local_unnamed_addr #0 !guid !98 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @hypre_Free(ptr noundef nonnull %0) #5
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @hypre_CommTypeEntryCreate(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 !guid !101 {
bb.a:
  %i.a = alloca [3 x i32], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.b = tail call ptr @hypre_MAlloc(i32 noundef 64) #5 ; 16 uses
  %i.c = load i32, ptr %0, align 4, !tbaa !11
  store i32 %i.c, ptr %i.b, align 4, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !11
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.e, ptr %i.f, align 4, !tbaa !11
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %i.h, ptr %i.i, align 4, !tbaa !11
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 %i.k, ptr %i.l, align 4, !tbaa !11
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load i32, ptr %i.m, align 4, !tbaa !11
end_hunk_0
