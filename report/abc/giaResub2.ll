inline.NumInlined: 695
inline.NumDeleted: 111
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 7
begin_hunk_0_@Gia_Rsb2ManStart:bb.a
  br label %Vec_IntGrow.exit105

Vec_IntGrow.exit105:                              ; preds = %Vec_IntGrow.exit102, %bb.ax
  %i.gm = load i32, ptr %i.fc, align 8, !tbaa !13
  %.not.i106 = icmp slt i32 %i.gm, %2
  br i1 %.not.i106, label %bb.ay, label %Vec_IntGrow.exit108

bb.ay:                                            ; preds = %Vec_IntGrow.exit105
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !8  ; 2 uses
  %.not9.i107 = icmp eq ptr %i.go, null
  %i.gp = sext i32 %2 to i64
  %i.gq = shl nsw i64 %i.gp, 2                    ; 2 uses
  br i1 %.not9.i107, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gr = tail call ptr @realloc(ptr noundef nonnull %i.go, i64 noundef %i.gq) #35
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ay
  %i.gs = tail call noalias ptr @malloc(i64 noundef %i.gq) #36
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.gt = phi ptr [ %i.gr, %bb.az ], [ %i.gs, %bb.ba ]
  store ptr %i.gt, ptr %i.gn, align 8, !tbaa !8
  store i32 %2, ptr %i.fc, align 8, !tbaa !13
  br label %Vec_IntGrow.exit108

Vec_IntGrow.exit108:                              ; preds = %Vec_IntGrow.exit105, %bb.bb
  %i.gu = load i32, ptr %i.fe, align 8, !tbaa !23
  %.not.i109 = icmp slt i32 %i.gu, %2
  br i1 %.not.i109, label %bb.bc, label %Vec_PtrGrow.exit

bb.bc:                                            ; preds = %Vec_IntGrow.exit108
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !19 ; 2 uses
  %.not9.i110 = icmp eq ptr %i.gw, null
  %i.gx = sext i32 %2 to i64
  %i.gy = shl nsw i64 %i.gx, 3                    ; 2 uses
  br i1 %.not9.i110, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.gz = tail call ptr @realloc(ptr noundef nonnull %i.gw, i64 noundef %i.gy) #35
  br label %bb.bf

bb.be:                                            ; preds = %bb.bc
  %i.ha = tail call noalias ptr @malloc(i64 noundef %i.gy) #36
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.hb = phi ptr [ %i.gz, %bb.bd ], [ %i.ha, %bb.be ]
  store ptr %i.hb, ptr %i.gv, align 8, !tbaa !19
  store i32 %2, ptr %i.fe, align 8, !tbaa !23
  br label %Vec_PtrGrow.exit

Vec_PtrGrow.exit:                                 ; preds = %Vec_IntGrow.exit108, %bb.bf
  ret void
}

; Function Attrs: nofree nounwind uwtable
define void @Gia_Rsb2ManPrint(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 64
  %.val = load ptr, ptr %i.a, align 8, !tbaa !8   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !36
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.e = load i32, ptr %i.d, align 4, !tbaa !37
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !32
  %i.h = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.c, i32 noundef %i.e, i32 noundef %i.g) ; 0 uses
  %i.i = load i32, ptr %i.b, align 4, !tbaa !36   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.028 = add nsw i32 %i.i, 1
  %i.k = load i32, ptr %i.j, align 8, !tbaa !40   ; 2 uses
  %i.l = icmp slt i32 %.028, %i.k
  br i1 %i.l, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.m = sext i32 %i.i to i64
  %i.n = add nsw i64 %i.m, 1
  br label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %bb.a
  %.lcssa = phi i32 [ %i.k, %bb.a ], [ %i.ad, %.lr.ph ] ; 2 uses
  %i.o = load i32, ptr %i.f, align 8, !tbaa !32
  %i.p = icmp slt i32 %.lcssa, %i.o
  br i1 %i.p, label %.lr.ph31.preheader, label %._crit_edge

.lr.ph31.preheader:                               ; preds = %.preheader
  %i.q = sext i32 %.lcssa to i64
  br label %.lr.ph31

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %i.n, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %.idx = shl nsw i64 %indvars.iv, 3
  %i.r = getelementptr inbounds i8, ptr %.val, i64 %.idx ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !33   ; 2 uses
  %i.t = and i32 %i.s, 1
  %i.u = or disjoint i32 %i.t, 32
  %i.v = ashr i32 %i.s, 1
  %i.w = getelementptr i8, ptr %i.r, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !33   ; 2 uses
  %i.y = and i32 %i.x, 1
  %i.z = or disjoint i32 %i.y, 32
  %i.aa = ashr i32 %i.x, 1
  %i.ab = trunc nsw i64 %indvars.iv to i32
  %i.ac = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %i.ab, i32 noundef %i.u, i32 noundef %i.v, i32 noundef %i.z, i32 noundef %i.aa) ; 0 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ad = load i32, ptr %i.j, align 8, !tbaa !40  ; 2 uses
  %i.ae = sext i32 %i.ad to i64
  %i.af = icmp slt i64 %indvars.iv.next, %i.ae
  br i1 %i.af, label %.lr.ph, label %.preheader, !llvm.loop !44

.lr.ph31:                                         ; preds = %.lr.ph31.preheader, %.lr.ph31
  %indvars.iv34 = phi i64 [ %i.q, %.lr.ph31.preheader ], [ %indvars.iv.next35, %.lr.ph31 ] ; 3 uses
  %.idx37 = shl nsw i64 %indvars.iv34, 3
  %i.ag = getelementptr inbounds i8, ptr %.val, i64 %.idx37
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !33 ; 2 uses
  %i.ai = and i32 %i.ah, 1
  %i.aj = or disjoint i32 %i.ai, 32
  %i.ak = ashr i32 %i.ah, 1
  %i.al = trunc nsw i64 %indvars.iv34 to i32
  %i.am = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.al, i32 noundef %i.aj, i32 noundef %i.ak) ; 0 uses
  %indvars.iv.next35 = add nsw i64 %indvars.iv34, 1 ; 2 uses
  %i.an = load i32, ptr %i.f, align 8, !tbaa !32
  %i.ao = sext i32 %i.an to i64
  %i.ap = icmp slt i64 %indvars.iv.next35, %i.ao
  br i1 %i.ap, label %.lr.ph31, label %._crit_edge, !llvm.loop !45

._crit_edge:                                      ; preds = %.lr.ph31, %.preheader
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #7

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define range(i32 0, 1073741824) i32 @Gia_Rsb2ManLevel(ptr nofree noundef captures(none) initializes((124, 128)) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 124
  store i32 0, ptr %i.b, align 4, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !32   ; 3 uses
  %i.e = load i32, ptr %i.a, align 8, !tbaa !13
  %.not.i = icmp slt i32 %i.e, %i.d
  %i.f = getelementptr i8, ptr %0, i64 128        ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !8    ; 3 uses
  br i1 %.not.i, label %bb.b, label %Vec_IntGrow.exit

bb.b:                                             ; preds = %bb.a
  %.not9.i = icmp eq ptr %i.g, null
  %i.h = sext i32 %i.d to i64
  %i.i = shl nsw i64 %i.h, 2                      ; 2 uses
  br i1 %.not9.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call ptr @realloc(ptr noundef nonnull %i.g, i64 noundef %i.i) #35
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.i) #36
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = phi ptr [ %i.j, %bb.c ], [ %i.k, %bb.d ] ; 2 uses
  store ptr %i.l, ptr %i.f, align 8, !tbaa !8
  store i32 %i.d, ptr %i.a, align 8, !tbaa !13
  br label %Vec_IntGrow.exit

Vec_IntGrow.exit:                                 ; preds = %bb.a, %bb.e
  %.val = phi ptr [ %i.l, %bb.e ], [ %i.g, %bb.a ] ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.n = load i32, ptr %i.m, align 4, !tbaa !36   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.02325 = add nsw i32 %i.n, 1
  %i.p = load i32, ptr %i.o, align 8, !tbaa !40   ; 2 uses
  %i.q = icmp slt i32 %.02325, %i.p
  br i1 %i.q, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %Vec_IntGrow.exit
  %i.r = sext i32 %i.n to i64
  %i.s = add nsw i64 %i.r, 1
  br label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %Vec_IntGrow.exit
  %.lcssa = phi i32 [ %i.p, %Vec_IntGrow.exit ], [ %i.aa, %.lr.ph ] ; 2 uses
  %i.t = load i32, ptr %i.c, align 8, !tbaa !32
  %i.u = icmp slt i32 %.lcssa, %i.t
  br i1 %i.u, label %.lr.ph29.preheader, label %._crit_edge

.lr.ph29.preheader:                               ; preds = %.preheader
  %i.v = sext i32 %.lcssa to i64
  br label %.lr.ph29

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %i.s, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %.idx = shl nsw i64 %indvars.iv, 3
  %i.w = getelementptr inbounds i8, ptr %.val, i64 %.idx
  %1 = load <2 x i32>, ptr %i.w, align 4, !tbaa !33
  %2 = sdiv <2 x i32> %1, splat (i32 2)           ; 2 uses
  %3 = extractelement <2 x i32> %2, i64 0
  %4 = extractelement <2 x i32> %2, i64 1
  %i.x = tail call noundef i32 @llvm.smax.i32(i32 %3, i32 %4)
  %i.y = add nsw i32 %i.x, 1
  %i.z = getelementptr inbounds [4 x i8], ptr %.val, i64 %indvars.iv
  store i32 %i.y, ptr %i.z, align 4, !tbaa !33
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.aa = load i32, ptr %i.o, align 8, !tbaa !40  ; 2 uses
  %i.ab = sext i32 %i.aa to i64
  %i.ac = icmp slt i64 %indvars.iv.next, %i.ab
  br i1 %i.ac, label %.lr.ph, label %.preheader, !llvm.loop !46

.lr.ph29:                                         ; preds = %.lr.ph29.preheader, %.lr.ph29
  %indvars.iv34 = phi i64 [ %i.v, %.lr.ph29.preheader ], [ %indvars.iv.next35, %.lr.ph29 ] ; 3 uses
  %.028 = phi i32 [ 0, %.lr.ph29.preheader ], [ %i.ah, %.lr.ph29 ]
  %.idx40 = shl nsw i64 %indvars.iv34, 3
  %i.ad = getelementptr inbounds i8, ptr %.val, i64 %.idx40
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !33
  %i.af = sdiv i32 %i.ae, 2                       ; 2 uses
  %i.ag = getelementptr inbounds [4 x i8], ptr %.val, i64 %indvars.iv34
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !33
  %i.ah = tail call noundef i32 @llvm.smax.i32(i32 %.028, i32 %i.af) ; 2 uses
  %indvars.iv.next35 = add nsw i64 %indvars.iv34, 1 ; 2 uses
  %i.ai = load i32, ptr %i.c, align 8, !tbaa !32
  %i.aj = sext i32 %i.ai to i64
  %i.ak = icmp slt i64 %indvars.iv.next35, %i.aj
  br i1 %i.ak, label %.lr.ph29, label %._crit_edge, !llvm.loop !47

._crit_edge:                                      ; preds = %.lr.ph29, %.preheader
  %.0.lcssa = phi i32 [ 0, %.preheader ], [ %i.ah, %.lr.ph29 ]
  ret i32 %.0.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i64 @Gia_Rsb2ManOdcs(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 64
  %.val = load ptr, ptr %i.a, align 8, !tbaa !8   ; 12 uses
  %i.b = getelementptr i8, ptr %0, i64 80
  %.val114 = load ptr, ptr %i.b, align 8, !tbaa !14 ; 30 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !36   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i32, ptr %i.e, align 8, !tbaa !40   ; 7 uses
  %.0117 = add nsw i32 %i.d, 1
  %i.g = icmp slt i32 %.0117, %i.f
  br i1 %i.g, label %.lr.ph.preheader, label %.preheader115

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.h = sext i32 %i.d to i64
  %i.i = add nsw i64 %i.h, 1
  br label %.lr.ph

.preheader115:                                    ; preds = %bb.e, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !32   ; 3 uses
  %i.l = icmp slt i32 %i.f, %i.k                  ; 2 uses
  br i1 %i.l, label %.lr.ph120.preheader, label %._crit_edge

.lr.ph120.preheader:                              ; preds = %.preheader115
  %i.m = sext i32 %i.f to i64                     ; 4 uses
  %wide.trip.count = sext i32 %i.k to i64         ; 3 uses
  %i.n = sub nsw i64 %wide.trip.count, %i.m
  %xtraiter = and i64 %i.n, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph120.prol.loopexit, label %.lr.ph120.prol

.lr.ph120.prol:                                   ; preds = %.lr.ph120.preheader, %.lr.ph120.prol
  %indvars.iv132.prol = phi i64 [ %indvars.iv.next133.prol, %.lr.ph120.prol ], [ %i.m, %.lr.ph120.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph120.prol ], [ 0, %.lr.ph120.preheader ]
  %i.o = shl nsw i64 %indvars.iv132.prol, 1       ; 2 uses
  %i.p = getelementptr inbounds [4 x i8], ptr %.val, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !33
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds [8 x i8], ptr %.val114, i64 %i.r
  %i.t = load i64, ptr %i.s, align 8, !tbaa !41
  %i.u = getelementptr inbounds [8 x i8], ptr %.val114, i64 %i.o
  store i64 %i.t, ptr %i.u, align 8, !tbaa !41
  %indvars.iv.next133.prol = add nsw i64 %indvars.iv132.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph120.prol.loopexit, label %.lr.ph120.prol, !llvm.loop !48

.lr.ph120.prol.loopexit:                          ; preds = %.lr.ph120.prol, %.lr.ph120.preheader
  %indvars.iv132.unr = phi i64 [ %i.m, %.lr.ph120.preheader ], [ %indvars.iv.next133.prol, %.lr.ph120.prol ]
  %i.v = sub nsw i64 %i.m, %wide.trip.count
  %i.w = icmp ugt i64 %i.v, -4
  br i1 %i.w, label %._crit_edge, label %.lr.ph120

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %indvars.iv = phi i64 [ %i.i, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.x = shl nsw i64 %indvars.iv, 1               ; 5 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %.val, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !33   ; 4 uses
  %i.aa = or disjoint i64 %i.x, 1                 ; 2 uses
  %i.ab = getelementptr inbounds [4 x i8], ptr %.val, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !33 ; 4 uses
  %i.ad = icmp slt i32 %i.z, %i.ac
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.ae = sext i32 %i.z to i64
  %i.af = getelementptr inbounds [8 x i8], ptr %.val114, i64 %i.ae
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !41
  %i.ah = sext i32 %i.ac to i64
  %i.ai = getelementptr inbounds [8 x i8], ptr %.val114, i64 %i.ah
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !41
  %i.ak = and i64 %i.aj, %i.ag                    ; 2 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %.val114, i64 %i.x
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !41
  br label %bb.e

bb.c:                                             ; preds = %.lr.ph
  %i.am = icmp sgt i32 %i.z, %i.ac
  br i1 %i.am, label %bb.d, label %._crit_edge146

._crit_edge146:                                   ; preds = %bb.c
  %.phi.trans.insert = getelementptr inbounds [8 x i8], ptr %.val114, i64 %i.x
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !41
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.an = sext i32 %i.z to i64
  %i.ao = getelementptr inbounds [8 x i8], ptr %.val114, i64 %i.an
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !41
  %i.aq = sext i32 %i.ac to i64
  %i.ar = getelementptr inbounds [8 x i8], ptr %.val114, i64 %i.aq
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !41
  %i.at = xor i64 %i.as, %i.ap                    ; 2 uses
  %i.au = getelementptr inbounds [8 x i8], ptr %.val114, i64 %i.x
  store i64 %i.at, ptr %i.au, align 8, !tbaa !41
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge146, %bb.d, %bb.b
  %i.av = phi i64 [ %.pre, %._crit_edge146 ], [ %i.at, %bb.d ], [ %i.ak, %bb.b ]
  %i.aw = xor i64 %i.av, -1
  %i.ax = getelementptr inbounds [8 x i8], ptr %.val114, i64 %i.aa
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !41
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.f, %lftr.wideiv
  br i1 %exitcond.not, label %.preheader115, label %.lr.ph, !llvm.loop !50

.lr.ph120:                                        ; preds = %.lr.ph120.prol.loopexit, %.lr.ph120
  %indvars.iv132 = phi i64 [ %indvars.iv.next133.3, %.lr.ph120 ], [ %indvars.iv132.unr, %.lr.ph120.prol.loopexit ] ; 5 uses
  %i.ay = shl nsw i64 %indvars.iv132, 1           ; 2 uses
  %i.az = getelementptr inbounds [4 x i8], ptr %.val, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !33
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds [8 x i8], ptr %.val114, i64 %i.bb
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !41
  %i.be = getelementptr inbounds [8 x i8], ptr %.val114, i64 %i.ay
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !41
  %indvars.iv.next133 = shl i64 %indvars.iv132, 1
  %i.bf = add i64 %indvars.iv.next133, 2          ; 2 uses
  %i.bg = getelementptr inbounds [4 x i8], ptr %.val, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !33
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds [8 x i8], ptr %.val114, i64 %i.bi
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !41
  %i.bl = getelementptr inbounds [8 x i8], ptr %.val114, i64 %i.bf
  store i64 %i.bk, ptr %i.bl, align 8, !tbaa !41
  %indvars.iv.next133.1 = shl i64 %indvars.iv132, 1
  %i.bm = add i64 %indvars.iv.next133.1, 4        ; 2 uses
  %i.bn = getelementptr inbounds [4 x i8], ptr %.val, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !33
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds [8 x i8], ptr %.val114, i64 %i.bp
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !41
  %i.bs = getelementptr inbounds [8 x i8], ptr %.val114, i64 %i.bm
  store i64 %i.br, ptr %i.bs, align 8, !tbaa !41
  %indvars.iv.next133.2 = shl i64 %indvars.iv132, 1
  %i.bt = add i64 %indvars.iv.next133.2, 6        ; 2 uses
  %i.bu = getelementptr inbounds [4 x i8], ptr %.val, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !33
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds [8 x i8], ptr %.val114, i64 %i.bw
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !41
  %i.bz = getelementptr inbounds [8 x i8], ptr %.val114, i64 %i.bt
  store i64 %i.by, ptr %i.bz, align 8, !tbaa !41
  %indvars.iv.next133.3 = add nsw i64 %indvars.iv132, 4 ; 2 uses
  %exitcond135.not.3 = icmp eq i64 %indvars.iv.next133.3, %wide.trip.count
  br i1 %exitcond135.not.3, label %._crit_edge, label %.lr.ph120, !llvm.loop !51

._crit_edge:                                      ; preds = %.lr.ph120.prol.loopexit, %.lr.ph120, %.preheader115
  %i.ca = shl nsw i32 %1, 1
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds [8 x i8], ptr %.val114, i64 %i.cb ; 4 uses
  %i.cd = load <2 x i64>, ptr %i.cc, align 8, !tbaa !41
  %i.ce = shufflevector <2 x i64> %i.cd, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.ce, ptr %i.cc, align 8, !tbaa !41
  %.2122 = add nsw i32 %1, 1                      ; 2 uses
  %i.cf = icmp slt i32 %.2122, %i.f
  br i1 %i.cf, label %.lr.ph125.preheader, label %.preheader

.lr.ph125.preheader:                              ; preds = %._crit_edge
  %i.cg = sext i32 %.2122 to i64
  br label %.lr.ph125

.preheader:                                       ; preds = %bb.g, %._crit_edge
  br i1 %i.l, label %.lr.ph128.preheader, label %._crit_edge129

.lr.ph128.preheader:                              ; preds = %.preheader
end_hunk_0
