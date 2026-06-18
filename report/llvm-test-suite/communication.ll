inline.NumInlined: 11
begin_hunk_0_@hypre_CommPkgUnCommit:bb.a
  %i.n = load i32, ptr %i.m, align 4, !tbaa !23
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph25, label %._crit_edge26

.lr.ph25:                                         ; preds = %.preheader, %.lr.ph25
  %indvars.iv28 = phi i64 [ %indvars.iv.next29, %.lr.ph25 ], [ 0, %.preheader ] ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv28
  %i.q = tail call i32 @hypre_MPI_Type_free(ptr noundef nonnull %i.p) #5 ; 0 uses
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1 ; 2 uses
  %i.r = load i32, ptr %i.m, align 4, !tbaa !23
  %i.s = sext i32 %i.r to i64
  %i.t = icmp slt i64 %indvars.iv.next29, %i.s
  br i1 %i.t, label %.lr.ph25, label %._crit_edge26, !llvm.loop !58

._crit_edge26:                                    ; preds = %.lr.ph25, %.preheader
  tail call void @hypre_Free(ptr noundef nonnull %i.l) #5
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge26, %bb.a
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @hypre_InitializeCommunication(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !16   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !23   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !15   ; 2 uses
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
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !34
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv
  %i.s = load i32, ptr %i.r, align 4, !tbaa !4
  %i.t = load ptr, ptr %i.l, align 8, !tbaa !24
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv
  %i.v = load i32, ptr %i.u, align 4, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv
  %i.x = tail call i32 @hypre_MPI_Irecv(ptr noundef %2, i32 noundef 1, i32 noundef %i.s, i32 noundef %i.v, i32 noundef 0, i32 noundef %i.f, ptr noundef %i.w) #5 ; 0 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader.loopexit, label %bb.b, !llvm.loop !59

bb.c:                                             ; preds = %.lr.ph52, %bb.c
  %indvars.iv58 = phi i64 [ 0, %.lr.ph52 ], [ %indvars.iv.next59, %bb.c ] ; 3 uses
  %indvars.iv56 = phi i64 [ %.0.lcssa, %.lr.ph52 ], [ %indvars.iv.next57, %bb.c ] ; 2 uses
  %i.y = load ptr, ptr %i.o, align 8, !tbaa !33
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv58
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !4
  %i.ab = load ptr, ptr %i.p, align 8, !tbaa !18
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv58
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !4
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv56
  %i.af = tail call i32 @hypre_MPI_Isend(ptr noundef %1, i32 noundef 1, i32 noundef %i.aa, i32 noundef %i.ad, i32 noundef 0, i32 noundef %i.f, ptr noundef %i.ae) #5 ; 0 uses
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1 ; 2 uses
  %exitcond64.not = icmp eq i64 %indvars.iv.next59, %wide.trip.count63
  br i1 %exitcond64.not, label %._crit_edge, label %bb.c, !llvm.loop !60

._crit_edge:                                      ; preds = %bb.c, %.preheader
  %i.ag = tail call i32 @hypre_ExchangeLocalData(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2) ; 0 uses
  %i.ah = tail call ptr @hypre_MAlloc(i32 noundef 48) #5 ; 7 uses
  store ptr %0, ptr %i.ah, align 8, !tbaa !61
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %1, ptr %i.ai, align 8, !tbaa !65
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store ptr %2, ptr %i.aj, align 8, !tbaa !66
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store i32 %i.g, ptr %i.ak, align 8, !tbaa !67
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  store ptr %i.h, ptr %i.al, align 8, !tbaa !68
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  store ptr %i.i, ptr %i.am, align 8, !tbaa !69
  store ptr %i.ah, ptr %3, align 8, !tbaa !70
  ret i32 0
}

declare i32 @hypre_MPI_Irecv(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @hypre_MPI_Isend(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @hypre_ExchangeLocalData(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef writeonly captures(address) %2) local_unnamed_addr #3 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = ptrtoaddr ptr %2 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !38   ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph74, label %._crit_edge75

.lr.ph74:                                         ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !26
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !35
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !35
  %wide.trip.count = zext nneg i32 %i.f to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph74, %.loopexit
  %indvars.iv96 = phi i64 [ 0, %.lr.ph74 ], [ %indvars.iv.next97, %.loopexit ] ; 3 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv96
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !39   ; 9 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv96
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !39   ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.q = load i32, ptr %i.p, align 4, !tbaa !72
  %i.r = sext i32 %i.q to i64                     ; 2 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %1, i64 %i.r ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.u = load i32, ptr %i.t, align 4, !tbaa !72
  %i.v = sext i32 %i.u to i64                     ; 2 uses
  %i.w = getelementptr inbounds [8 x i8], ptr %2, i64 %i.v ; 7 uses
  %.not = icmp eq ptr %i.w, %i.s
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 44
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !4  ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %.preheader58.lr.ph, label %.loopexit

.preheader58.lr.ph:                               ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !4  ; 2 uses
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
  %i.an = load i32, ptr %i.am, align 4, !tbaa !4  ; 2 uses
  %i.ao = icmp sgt i32 %i.an, 0
  br i1 %i.ao, label %.preheader58.lr.ph.split.split, label %.loopexit

.preheader58.lr.ph.split.split:                   ; preds = %.preheader58.lr.ph.split
  %i.ap = load i32, ptr %i.ag, align 4, !tbaa !4
  %i.aq = load i32, ptr %i.ah, align 4, !tbaa !4
  %i.ar = load i32, ptr %i.ai, align 4, !tbaa !4
  %i.as = load i32, ptr %i.aj, align 4, !tbaa !4
  %i.at = load i32, ptr %i.ak, align 4, !tbaa !4
  %i.au = load i32, ptr %i.al, align 4, !tbaa !4
  %i.av = load i32, ptr %i.x, align 4, !tbaa !4   ; 6 uses
  %i.aw = icmp sgt i32 %i.av, 0
  br i1 %i.aw, label %.preheader58.lr.ph.split.split.split, label %.loopexit

.preheader58.lr.ph.split.split.split:             ; preds = %.preheader58.lr.ph.split.split
  %i.ax = load i32, ptr %i.y, align 4, !tbaa !4   ; 2 uses
  %i.ay = load i32, ptr %i.z, align 4, !tbaa !4   ; 2 uses
  %i.az = sext i32 %i.ax to i64                   ; 5 uses
  %i.ba = sext i32 %i.ay to i64                   ; 5 uses
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
  %.05168 = phi i32 [ 0, %.preheader58.lr.ph.split.split.split ], [ %i.cq, %._crit_edge66 ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader58, %._crit_edge64
  %indvars.iv84 = phi i32 [ %indvars.iv82, %.preheader58 ], [ %indvars.iv.next85, %._crit_edge64 ] ; 2 uses
  %indvars.iv76 = phi i32 [ %indvars.iv, %.preheader58 ], [ %indvars.iv.next77, %._crit_edge64 ] ; 2 uses
  %.05265 = phi i32 [ 0, %.preheader58 ], [ %i.cp, %._crit_edge64 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %._crit_edge.a
  %indvars.iv86 = phi i32 [ %indvars.iv84, %.preheader ], [ %indvars.iv.next87, %._crit_edge.a ] ; 3 uses
  %indvars.iv78 = phi i32 [ %indvars.iv76, %.preheader ], [ %indvars.iv.next79, %._crit_edge.a ] ; 3 uses
  %.05362 = phi i32 [ 0, %.preheader ], [ %i.co, %._crit_edge.a ]
  %i.be = sext i32 %indvars.iv78 to i64           ; 4 uses
  %i.bf = sext i32 %indvars.iv86 to i64           ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph
  %i.bg = sext i32 %indvars.iv86 to i64
  %i.bh = add nsw i64 %i.v, %i.bg
  %i.bi = shl nsw i64 %i.bh, 3
  %i.bj = add i64 %i.bi, %i.b
  %i.bk = sext i32 %indvars.iv78 to i64
  %i.bl = add nsw i64 %i.r, %i.bk
  %i.bm = shl nsw i64 %i.bl, 3
  %i.bn = add i64 %i.bm, %i.a
  %i.bo = sub i64 %i.bj, %i.bn
  %diff.check = icmp ult i64 %i.bo, 32
  %or.cond = select i1 %i.bc, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %i.bp = add nsw i64 %n.vec, %i.bf
  %i.bq = add nsw i64 %n.vec, %i.be
  %invariant.gep = getelementptr [8 x i8], ptr %i.s, i64 %i.be
  %invariant.gep113 = getelementptr [8 x i8], ptr %i.w, i64 %i.bf
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load = load <2 x double>, ptr %gep, align 8, !tbaa !74
  %wide.load110 = load <2 x double>, ptr %i.br, align 8, !tbaa !74
  %gep114 = getelementptr [8 x i8], ptr %invariant.gep113, i64 %index ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %gep114, i64 16
  store <2 x double> %wide.load, ptr %gep114, align 8, !tbaa !74
  store <2 x double> %wide.load110, ptr %i.bs, align 8, !tbaa !74
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bt = icmp eq i64 %index.next, %n.vec
  br i1 %i.bt, label %middle.block, label %vector.body, !llvm.loop !76

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.a, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %.lr.ph, %middle.block
  %indvars.iv88.ph = phi i64 [ %i.bf, %vector.scevcheck ], [ %i.bf, %.lr.ph ], [ %i.bp, %middle.block ] ; 2 uses
  %indvars.iv80.ph = phi i64 [ %i.be, %vector.scevcheck ], [ %i.be, %.lr.ph ], [ %i.bq, %middle.block ] ; 2 uses
  %.05460.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %.lr.ph ], [ %i.bd, %middle.block ] ; 4 uses
  %i.bu = sub i32 %i.av, %.05460.ph
  %xtraiter = and i32 %i.bu, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv88.prol = phi i64 [ %indvars.iv.next89.prol, %scalar.ph.prol ], [ %indvars.iv88.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv80.prol = phi i64 [ %indvars.iv.next81.prol, %scalar.ph.prol ], [ %indvars.iv80.ph, %scalar.ph.preheader ] ; 2 uses
  %.05460.prol = phi i32 [ %i.by, %scalar.ph.prol ], [ %.05460.ph, %scalar.ph.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.s, i64 %indvars.iv80.prol
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !74
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.w, i64 %indvars.iv88.prol
  store double %i.bw, ptr %i.bx, align 8, !tbaa !74
  %indvars.iv.next81.prol = add nsw i64 %indvars.iv80.prol, %i.az ; 2 uses
  %indvars.iv.next89.prol = add nsw i64 %indvars.iv88.prol, %i.ba ; 2 uses
  %i.by = add nuw nsw i32 %.05460.prol, 1         ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !79

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv88.unr = phi i64 [ %indvars.iv88.ph, %scalar.ph.preheader ], [ %indvars.iv.next89.prol, %scalar.ph.prol ]
  %indvars.iv80.unr = phi i64 [ %indvars.iv80.ph, %scalar.ph.preheader ], [ %indvars.iv.next81.prol, %scalar.ph.prol ]
  %.05460.unr = phi i32 [ %.05460.ph, %scalar.ph.preheader ], [ %i.by, %scalar.ph.prol ]
  %i.bz = sub i32 %.05460.ph, %i.av
  %i.ca = icmp ugt i32 %i.bz, -4
  br i1 %i.ca, label %._crit_edge.a, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv88 = phi i64 [ %indvars.iv.next89.3, %scalar.ph ], [ %indvars.iv88.unr, %scalar.ph.prol.loopexit ] ; 2 uses
  %indvars.iv80 = phi i64 [ %indvars.iv.next81.3, %scalar.ph ], [ %indvars.iv80.unr, %scalar.ph.prol.loopexit ] ; 2 uses
  %.05460 = phi i32 [ %i.cn, %scalar.ph ], [ %.05460.unr, %scalar.ph.prol.loopexit ]
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.s, i64 %indvars.iv80
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !74
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.w, i64 %indvars.iv88
  store double %i.cc, ptr %i.cd, align 8, !tbaa !74
  %indvars.iv.next81 = add nsw i64 %indvars.iv80, %i.az ; 2 uses
  %indvars.iv.next89 = add nsw i64 %indvars.iv88, %i.ba ; 2 uses
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.s, i64 %indvars.iv.next81
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !74
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.w, i64 %indvars.iv.next89
  store double %i.cf, ptr %i.cg, align 8, !tbaa !74
  %indvars.iv.next81.1 = add nsw i64 %indvars.iv.next81, %i.az ; 2 uses
  %indvars.iv.next89.1 = add nsw i64 %indvars.iv.next89, %i.ba ; 2 uses
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.s, i64 %indvars.iv.next81.1
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !74
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.w, i64 %indvars.iv.next89.1
  store double %i.ci, ptr %i.cj, align 8, !tbaa !74
  %indvars.iv.next81.2 = add nsw i64 %indvars.iv.next81.1, %i.az ; 2 uses
  %indvars.iv.next89.2 = add nsw i64 %indvars.iv.next89.1, %i.ba ; 2 uses
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.s, i64 %indvars.iv.next81.2
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !74
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.w, i64 %indvars.iv.next89.2
  store double %i.cl, ptr %i.cm, align 8, !tbaa !74
  %indvars.iv.next81.3 = add nsw i64 %indvars.iv.next81.2, %i.az
  %indvars.iv.next89.3 = add nsw i64 %indvars.iv.next89.2, %i.ba
  %i.cn = add nuw nsw i32 %.05460, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i32 %i.cn, %i.av
  br i1 %exitcond.not.3, label %._crit_edge.a, label %scalar.ph, !llvm.loop !81

._crit_edge.a:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.co = add nuw nsw i32 %.05362, 1              ; 2 uses
  %indvars.iv.next79 = add i32 %indvars.iv78, %i.ar
  %indvars.iv.next87 = add i32 %indvars.iv86, %i.au
  %exitcond93.not = icmp eq i32 %i.co, %i.an
  br i1 %exitcond93.not, label %._crit_edge64, label %.lr.ph, !llvm.loop !82

._crit_edge64:                                    ; preds = %._crit_edge.a
  %i.cp = add nuw nsw i32 %.05265, 1              ; 2 uses
  %indvars.iv.next77 = add i32 %indvars.iv76, %i.aq
  %indvars.iv.next85 = add i32 %indvars.iv84, %i.at
  %exitcond94.not = icmp eq i32 %i.cp, %i.ae
  br i1 %exitcond94.not, label %._crit_edge66, label %.preheader, !llvm.loop !83

._crit_edge66:                                    ; preds = %._crit_edge64
  %i.cq = add nuw nsw i32 %.05168, 1              ; 2 uses
  %indvars.iv.next = add i32 %indvars.iv, %i.ap
  %indvars.iv.next83 = add i32 %indvars.iv82, %i.as
  %exitcond95.not = icmp eq i32 %i.cq, %i.ab
  br i1 %exitcond95.not, label %.loopexit, label %.preheader58, !llvm.loop !84

.loopexit:                                        ; preds = %._crit_edge66, %bb.c, %.preheader58.lr.ph.split, %.preheader58.lr.ph.split.split, %.preheader58.lr.ph, %bb.b
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1 ; 2 uses
  %exitcond99.not = icmp eq i64 %indvars.iv.next97, %wide.trip.count
  br i1 %exitcond99.not, label %._crit_edge75, label %bb.b, !llvm.loop !85

._crit_edge75:                                    ; preds = %.loopexit, %bb.a
  ret i32 0
}

declare ptr @hypre_MAlloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @hypre_FinalizeCommunication(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !67   ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !68
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !69
  %i.g = tail call i32 @hypre_MPI_Waitall(i32 noundef %i.b, ptr noundef %i.d, ptr noundef %i.f) #5 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !68
  tail call void @hypre_Free(ptr noundef %i.i) #5
  store ptr null, ptr %i.h, align 8, !tbaa !68
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !69
  tail call void @hypre_Free(ptr noundef %i.k) #5
  store ptr null, ptr %i.j, align 8, !tbaa !69
  tail call void @hypre_Free(ptr noundef nonnull %0) #5
  ret i32 0
}

declare i32 @hypre_MPI_Waitall(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @hypre_CommTypeCreate(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @hypre_MAlloc(i32 noundef 16) #5 ; 3 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !35
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %1, ptr %i.b, align 8, !tbaa !38
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @hypre_CommTypeEntryDestroy(ptr noundef %0) local_unnamed_addr #0 {
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
define dso_local noundef ptr @hypre_CommTypeEntryCreate(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x i32], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.b = tail call ptr @hypre_MAlloc(i32 noundef 64) #5 ; 16 uses
  %i.c = load i32, ptr %0, align 4, !tbaa !4
  store i32 %i.c, ptr %i.b, align 4, !tbaa !4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.e, ptr %i.f, align 4, !tbaa !4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !4
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %i.h, ptr %i.i, align 4, !tbaa !4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !4
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 %i.k, ptr %i.l, align 4, !tbaa !4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load i32, ptr %i.m, align 4, !tbaa !4
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 %i.n, ptr %i.o, align 4, !tbaa !4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.q = load i32, ptr %i.p, align 4, !tbaa !4
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i32 %i.q, ptr %i.r, align 4, !tbaa !4
  %i.s = load i32, ptr %0, align 4, !tbaa !4
  %i.t = load i32, ptr %2, align 4, !tbaa !4      ; 2 uses
  %i.u = load i32, ptr %i.d, align 4, !tbaa !4
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !4    ; 2 uses
  %i.x = sub i32 %i.u, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !4
  %i.ac = sub nsw i32 %i.ab, %i.w                 ; 2 uses
  %i.ad = icmp sgt i32 %i.ac, -1
  br i1 %i.ad, label %bb.b, label %._crit_edge.2

bb.b:                                             ; preds = %bb.a
  %i.ae = load i32, ptr %i.g, align 4, !tbaa !4
  %i.af = load i32, ptr %i.y, align 4, !tbaa !4
  %i.ag = sub nsw i32 %i.ae, %i.af
  %i.ah = add nuw nsw i32 %i.ac, 1
  %i.ai = mul nsw i32 %i.ag, %i.ah
  br label %._crit_edge.2

._crit_edge.2:                                    ; preds = %bb.b, %bb.a
  %i.aj = phi i32 [ %i.ai, %bb.b ], [ 0, %bb.a ]
  %i.ak = load i32, ptr %i.z, align 4, !tbaa !4
  %i.al = sub nsw i32 %i.ak, %i.t                 ; 2 uses
  %i.am = add nsw i32 %i.x, %i.aj
  %i.an = add nuw nsw i32 %i.al, 1
  %i.ao = mul nsw i32 %i.an, %i.am
  %.inv = icmp slt i32 %i.al, 0
  %i.ap = select i1 %.inv, i32 0, i32 %i.ao
  %i.aq = add i32 %i.s, %4
  %i.ar = sub i32 %i.aq, %i.t
  %i.as = add i32 %i.ar, %i.ap
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %i.as, ptr %i.at, align 4, !tbaa !72
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 9 uses
  %i.av = call i32 @hypre_BoxGetStrideSize(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %i.a) #5 ; 0 uses
  %i.aw = load <2 x i32>, ptr %i.a, align 8, !tbaa !4
  store <2 x i32> %i.aw, ptr %i.au, align 4, !tbaa !4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !4
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 8 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  store i32 %3, ptr %i.bb, align 4, !tbaa !4
  %i.bc = load i32, ptr %1, align 4, !tbaa !4
  store i32 %i.bc, ptr %i.ba, align 4, !tbaa !4
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !4  ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 52 ; 2 uses
  store i32 %i.be, ptr %i.bf, align 4, !tbaa !4
  %i.bg = load i32, ptr %i.z, align 4, !tbaa !4
  %i.bh = load i32, ptr %2, align 4, !tbaa !4
  %i.bi = sub nsw i32 %i.bg, %i.bh
  %i.bj = call i32 @llvm.smax.i32(i32 %i.bi, i32 -1)
  %spec.select.1 = add nsw i32 %i.bj, 1
  %i.bk = mul nsw i32 %spec.select.1, %i.be
  store i32 %i.bk, ptr %i.bf, align 4, !tbaa !4
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !4  ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 3 uses
  store i32 %i.bm, ptr %i.bn, align 4, !tbaa !4
  %i.bo = load i32, ptr %i.z, align 4, !tbaa !4
  %i.bp = load i32, ptr %2, align 4, !tbaa !4
  %i.bq = sub nsw i32 %i.bo, %i.bp
  %i.br = call i32 @llvm.smax.i32(i32 %i.bq, i32 -1)
  %spec.select.2 = add nsw i32 %i.br, 1
  %i.bs = mul nsw i32 %spec.select.2, %i.bm       ; 2 uses
  store i32 %i.bs, ptr %i.bn, align 4, !tbaa !4
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !4
  %i.bv = load i32, ptr %i.v, align 4, !tbaa !4
  %i.bw = sub nsw i32 %i.bu, %i.bv
  %i.bx = call i32 @llvm.smax.i32(i32 %i.bw, i32 -1)
  %spec.select.2.1 = add nsw i32 %i.bx, 1
  %i.by = mul nsw i32 %spec.select.2.1, %i.bs
  store i32 %i.by, ptr %i.bn, align 4, !tbaa !4
  %i.bz = load i32, ptr %i.z, align 4, !tbaa !4
  %i.ca = load i32, ptr %2, align 4, !tbaa !4
  %i.cb = sub nsw i32 %i.bz, %i.ca
  %i.cc = call i32 @llvm.smax.i32(i32 %i.cb, i32 -1)
  %spec.select107 = add nsw i32 %i.cc, 1
  %i.cd = load i32, ptr %i.aa, align 4, !tbaa !4
  %i.ce = load i32, ptr %i.v, align 4, !tbaa !4
  %i.cf = sub nsw i32 %i.cd, %i.ce                ; 2 uses
  %i.cg = add nuw nsw i32 %i.cf, 1
  %i.ch = mul nsw i32 %i.cg, %spec.select107
  %.inv109 = icmp slt i32 %i.cf, 0
  %i.ci = select i1 %.inv109, i32 0, i32 %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !4
  %i.cl = load i32, ptr %i.y, align 4, !tbaa !4
  %i.cm = sub nsw i32 %i.ck, %i.cl                ; 2 uses
  %i.cn = add nuw nsw i32 %i.cm, 1
  %i.co = mul nsw i32 %i.ci, %i.cn
  %.inv110 = icmp slt i32 %i.cm, 0
  %i.cp = select i1 %.inv110, i32 0, i32 %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  store i32 %i.cp, ptr %i.cq, align 4, !tbaa !4
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.2, %bb.e
  %.0120 = phi i32 [ 4, %._crit_edge.2 ], [ %.1, %bb.e ] ; 2 uses
  %.2119 = phi i32 [ 0, %._crit_edge.2 ], [ %.3, %bb.e ] ; 4 uses
  %i.cr = sext i32 %.2119 to i64                  ; 7 uses
end_hunk_0
