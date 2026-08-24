Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/fxuCreate?download=true
inline.NumInlined: 9
inline.NumDeleted: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@Fxu_CreateMatrix:bb.a
  %puts183 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.10) ; 0 uses
  %puts184 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.11) ; 0 uses
  br label %bb.ad

bb.x:                                             ; preds = %bb.v
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ge = load i32, ptr %i.gd, align 8, !tbaa !68 ; 2 uses
  %i.gf = icmp sgt i32 %.1149, %i.ge
  br i1 %i.gf, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !13
  %i.gi = tail call i32 @Fxu_PreprocessCubePairs(ptr noundef %i.z, ptr noundef %i.gh, i32 noundef %.1149, i32 noundef %i.ge) #13
  %.not172 = icmp eq i32 %i.gi, 0
  br i1 %.not172, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.gj = getelementptr inbounds nuw i8, ptr %i.z, i64 40 ; 2 uses
  %i.gk = load i32, ptr %i.gj, align 8, !tbaa !73
  %i.gl = icmp sgt i32 %i.gk, 1000000
  br i1 %i.gl, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %puts174 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.7) ; 0 uses
  %puts175 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.8) ; 0 uses
  %puts176 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.9) ; 0 uses
  %puts177 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.10) ; 0 uses
  %puts178 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.11) ; 0 uses
  br label %bb.ad

bb.ab:                                            ; preds = %bb.z
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gn = load i32, ptr %i.gm, align 8, !tbaa !74
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !75
  tail call void @Fxu_MatrixComputeSingles(ptr noundef nonnull %i.z, i32 noundef %i.gn, i32 noundef %i.gp) #13
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gr = load i32, ptr %i.gq, align 8, !tbaa !76
  %.not173 = icmp eq i32 %i.gr, 0
  br i1 %.not173, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gs = getelementptr inbounds nuw i8, ptr %i.z, i64 184 ; 2 uses
  %i.gt = load i32, ptr %i.gs, align 8, !tbaa !77
  %i.gu = sitofp i32 %i.gt to double
  %i.gv = load i32, ptr %i.gj, align 8, !tbaa !73 ; 2 uses
  %i.gw = sitofp i32 %i.gv to double
  %i.gx = fdiv double %i.gu, %i.gw
  %i.gy = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.gz = load i32, ptr %i.gy, align 8, !tbaa !78 ; 2 uses
  %i.ha = sitofp i32 %i.gz to double
  %i.hb = fdiv double %i.gx, %i.ha
  %i.hc = load ptr, ptr @stdout, align 8, !tbaa !79
  %i.hd = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hc, ptr noundef nonnull @.str.9, i32 noundef %i.gv, i32 noundef %i.gz) #13 ; 0 uses
  %i.he = load ptr, ptr @stdout, align 8, !tbaa !79
  %i.hf = load i32, ptr %i.gs, align 8, !tbaa !77
  %i.hg = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.he, ptr noundef nonnull @.str.10, i32 noundef %i.hf, double noundef %i.hb) #13 ; 0 uses
  %i.hh = load ptr, ptr @stdout, align 8, !tbaa !79
  %i.hi = getelementptr inbounds nuw i8, ptr %i.z, i64 104
  %i.hj = load i32, ptr %i.hi, align 8, !tbaa !81
  %i.hk = getelementptr inbounds nuw i8, ptr %i.z, i64 124
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !82
  %i.hm = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hh, ptr noundef nonnull @.str.11, i32 noundef %i.hj, i32 noundef %i.hl) #13 ; 0 uses
  %i.hn = load ptr, ptr @stdout, align 8, !tbaa !79
  %i.ho = getelementptr inbounds nuw i8, ptr %i.z, i64 72
  %i.hp = load i32, ptr %i.ho, align 8, !tbaa !83
  %i.hq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hn, ptr noundef nonnull @.str.12, i32 noundef %i.hp, i32 noundef %.1149) #13 ; 0 uses
  %i.hr = load ptr, ptr @stdout, align 8, !tbaa !79
  %fputc = tail call i32 @fputc(i32 10, ptr %i.hr) ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac, %bb.y, %bb.aa, %bb.w, %bb.f, %._crit_edge.thread
  %.0 = phi ptr [ null, %._crit_edge.thread ], [ null, %bb.f ], [ null, %bb.w ], [ null, %bb.aa ], [ null, %bb.y ], [ %i.z, %bb.ac ], [ %i.z, %bb.ab ]
  ret ptr %.0
}

declare i32 @Abc_SopGetCubeNum(ptr noundef) local_unnamed_addr #1

declare i32 @Abc_SopGetVarNum(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #2

declare ptr @Fxu_MatrixAllocate(...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

declare ptr @Fxu_MatrixAddVar(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @Fxu_CreateMatrixLitCompare(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #6 {
bb.a:
  %i.a = load ptr, ptr @s_pLits, align 8, !tbaa !56 ; 2 uses
  %i.b = load i32, ptr %0, align 4, !tbaa !57
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !57
  %i.f = load i32, ptr %1, align 4, !tbaa !57
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !57
  %i.j = sub nsw i32 %i.e, %i.i
  ret i32 %i.j
}

declare ptr @Fxu_MatrixAddCube(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @Fxu_MatrixAddDivisor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

declare i32 @Fxu_PreprocessCubePairs(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @Fxu_MatrixComputeSingles(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @Fxu_CreateCovers(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !8    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 92 ; 4 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !84   ; 2 uses
  %i.e = add nsw i32 %i.d, %i.b                   ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph.i, label %Fxu_CreateCoversFirstCube.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !21
  %wide.trip.count.i = zext nneg i32 %i.e to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Fxu_CreateCoversFirstCube.exit, label %bb.c, !llvm.loop !85

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %.idx.i = shl nuw nsw i64 %indvars.iv.i, 4
  %i.i = getelementptr i8, ptr %i.h, i64 %.idx.i
  %i.j = getelementptr i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !38
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !63   ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %bb.b, label %Fxu_CreateCoversFirstCube.exit

Fxu_CreateCoversFirstCube.exit:                   ; preds = %bb.b, %bb.c, %bb.a
  %.09.i = phi ptr [ null, %bb.a ], [ %i.m, %bb.c ], [ null, %bb.b ] ; 2 uses
  %i.n = icmp sgt i32 %i.b, 0
  br i1 %i.n, label %.lr.ph70, label %.preheader

.lr.ph70:                                         ; preds = %Fxu_CreateCoversFirstCube.exit
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.d

.preheader.loopexit:                              ; preds = %.critedge
  %.pre75 = load i32, ptr %i.c, align 4, !tbaa !84
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %Fxu_CreateCoversFirstCube.exit
  %i.q = phi i32 [ %i.d, %Fxu_CreateCoversFirstCube.exit ], [ %.pre75, %.preheader.loopexit ] ; 2 uses
  %.039.lcssa = phi ptr [ %.09.i, %Fxu_CreateCoversFirstCube.exit ], [ %.140, %.preheader.loopexit ]
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %.lr.ph73, label %._crit_edge

.lr.ph73:                                         ; preds = %.preheader
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.l

bb.d:                                             ; preds = %.lr.ph70, %.critedge
  %i.t = phi i32 [ %i.b, %.lr.ph70 ], [ %i.aq, %.critedge ] ; 5 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph70 ], [ %.pre76, %.critedge ] ; 3 uses
  %.03967 = phi ptr [ %.09.i, %.lr.ph70 ], [ %.140, %.critedge ] ; 4 uses
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !13
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !14
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !17
  %.not = icmp eq ptr %i.y, null
  %.pre76 = add nuw nsw i64 %indvars.iv, 1        ; 4 uses
  br i1 %.not, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = load i32, ptr %i.c, align 4, !tbaa !84
  %i.aa = add nsw i32 %i.z, %i.t                  ; 2 uses
  %i.ab = sext i32 %i.aa to i64
  %i.ac = icmp slt i64 %.pre76, %i.ab
  br i1 %i.ac, label %.lr.ph.i48, label %Fxu_CreateCoversFirstCube.exit55

.lr.ph.i48:                                       ; preds = %bb.e
  %i.ad = load ptr, ptr %i.p, align 8, !tbaa !21
  %wide.trip.count.i49 = zext nneg i32 %i.aa to i64
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %indvars.iv.next.i53 = add nuw nsw i64 %indvars.iv.i50, 1 ; 2 uses
  %exitcond.not.i54 = icmp eq i64 %indvars.iv.next.i53, %wide.trip.count.i49
  br i1 %exitcond.not.i54, label %Fxu_CreateCoversFirstCube.exit55, label %bb.g, !llvm.loop !85

bb.g:                                             ; preds = %bb.f, %.lr.ph.i48
  %indvars.iv.i50 = phi i64 [ %.pre76, %.lr.ph.i48 ], [ %indvars.iv.next.i53, %bb.f ] ; 2 uses
  %.idx.i51 = shl i64 %indvars.iv.i50, 4
  %i.ae = getelementptr i8, ptr %i.ad, i64 %.idx.i51
  %i.af = getelementptr i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !38
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !63 ; 2 uses
  %.not.i52 = icmp eq ptr %i.ai, null
  br i1 %.not.i52, label %bb.f, label %Fxu_CreateCoversFirstCube.exit55

Fxu_CreateCoversFirstCube.exit55:                 ; preds = %bb.f, %bb.g, %bb.e
  %.09.i47 = phi ptr [ null, %bb.e ], [ %i.ai, %bb.g ], [ null, %bb.f ] ; 6 uses
  %.not4465 = icmp eq ptr %.03967, %.09.i47
  br i1 %.not4465, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %Fxu_CreateCoversFirstCube.exit55
  %i.aj = shl nsw i32 %i.t, 1
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.j
  %.04166 = phi ptr [ %.03967, %.lr.ph ], [ %i.ao, %bb.j ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.04166, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !86 ; 2 uses
  %.not45 = icmp eq ptr %i.al, null
  br i1 %.not45, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = load i32, ptr %i.al, align 8, !tbaa !87
  %.not46 = icmp slt i32 %i.am, %i.aj
  br i1 %.not46, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %.04166, i64 56
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !69 ; 2 uses
  %.not44 = icmp eq ptr %i.ao, %.09.i47
  br i1 %.not44, label %.critedge, label %bb.h, !llvm.loop !89

bb.k:                                             ; preds = %bb.i
  %i.ap = trunc nuw nsw i64 %indvars.iv to i32
  tail call fastcc void @Fxu_CreateCoversNode(ptr noundef %0, ptr noundef %1, i32 noundef %i.ap, ptr noundef %.03967, ptr noundef %.09.i47)
  %.pre = load i32, ptr %i.a, align 8, !tbaa !8
  br label %.critedge

.critedge:                                        ; preds = %bb.j, %bb.d, %Fxu_CreateCoversFirstCube.exit55, %bb.k
  %i.aq = phi i32 [ %i.t, %bb.d ], [ %.pre, %bb.k ], [ %i.t, %Fxu_CreateCoversFirstCube.exit55 ], [ %i.t, %bb.j ] ; 2 uses
  %.140 = phi ptr [ %.03967, %bb.d ], [ %.09.i47, %bb.k ], [ %.09.i47, %Fxu_CreateCoversFirstCube.exit55 ], [ %.09.i47, %bb.j ] ; 2 uses
  %i.ar = sext i32 %i.aq to i64
  %i.as = icmp slt i64 %.pre76, %i.ar
  br i1 %i.as, label %bb.d, label %.preheader.loopexit, !llvm.loop !90

bb.l:                                             ; preds = %.lr.ph73, %Fxu_CreateCoversFirstCube.exit64
  %i.at = phi i32 [ %i.q, %.lr.ph73 ], [ %i.bh, %Fxu_CreateCoversFirstCube.exit64 ]
  %.172 = phi i32 [ 0, %.lr.ph73 ], [ %i.bg, %Fxu_CreateCoversFirstCube.exit64 ] ; 2 uses
  %.271 = phi ptr [ %.039.lcssa, %.lr.ph73 ], [ %.09.i56, %Fxu_CreateCoversFirstCube.exit64 ]
  %i.au = load i32, ptr %i.a, align 8, !tbaa !8   ; 2 uses
  %i.av = add nsw i32 %i.au, %.172                ; 2 uses
  %i.aw = add nsw i32 %i.av, 1                    ; 2 uses
  %i.ax = add nsw i32 %i.au, %i.at                ; 2 uses
  %i.ay = icmp slt i32 %i.aw, %i.ax
  br i1 %i.ay, label %.lr.ph.i57, label %Fxu_CreateCoversFirstCube.exit64

.lr.ph.i57:                                       ; preds = %bb.l
  %i.az = load ptr, ptr %i.s, align 8, !tbaa !21
  %i.ba = sext i32 %i.aw to i64
  %wide.trip.count.i58 = sext i32 %i.ax to i64
  br label %bb.n

bb.m:                                             ; preds = %bb.n
  %indvars.iv.next.i62 = add nsw i64 %indvars.iv.i59, 1 ; 2 uses
  %exitcond.not.i63 = icmp eq i64 %indvars.iv.next.i62, %wide.trip.count.i58
  br i1 %exitcond.not.i63, label %Fxu_CreateCoversFirstCube.exit64, label %bb.n, !llvm.loop !85

bb.n:                                             ; preds = %bb.m, %.lr.ph.i57
  %indvars.iv.i59 = phi i64 [ %i.ba, %.lr.ph.i57 ], [ %indvars.iv.next.i62, %bb.m ] ; 2 uses
  %.idx.i60 = shl i64 %indvars.iv.i59, 4
  %i.bb = getelementptr i8, ptr %i.az, i64 %.idx.i60
  %i.bc = getelementptr i8, ptr %i.bb, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !38
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !63 ; 2 uses
  %.not.i61 = icmp eq ptr %i.bf, null
  br i1 %.not.i61, label %bb.m, label %Fxu_CreateCoversFirstCube.exit64

Fxu_CreateCoversFirstCube.exit64:                 ; preds = %bb.m, %bb.n, %bb.l
  %.09.i56 = phi ptr [ null, %bb.l ], [ %i.bf, %bb.n ], [ null, %bb.m ] ; 2 uses
  tail call fastcc void @Fxu_CreateCoversNode(ptr noundef %0, ptr noundef %1, i32 noundef %i.av, ptr noundef %.271, ptr noundef %.09.i56)
  %i.bg = add nuw nsw i32 %.172, 1                ; 2 uses
  %i.bh = load i32, ptr %i.c, align 4, !tbaa !84  ; 2 uses
  %i.bi = icmp slt i32 %i.bg, %i.bh
  br i1 %i.bi, label %bb.l, label %._crit_edge, !llvm.loop !91

._crit_edge:                                      ; preds = %Fxu_CreateCoversFirstCube.exit64, %.preheader
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @Fxu_CreateCoversNode(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(address) %3, ptr nofree noundef readnone captures(address) %4) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  store ptr %i.a, ptr %i.b, align 8, !tbaa !92
  store ptr null, ptr %i.a, align 8, !tbaa !93
  %.not101 = icmp eq ptr %3, %4                   ; 3 uses
  br i1 %.not101, label %._crit_edge105, label %.lr.ph104

.lr.ph104:                                        ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph104, %._crit_edge
  %i.d = phi ptr [ %i.a, %.lr.ph104 ], [ %i.v, %._crit_edge ] ; 2 uses
  %.080102 = phi ptr [ %3, %.lr.ph104 ], [ %i.x, %._crit_edge ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.080102, i64 24
  %.07898 = load ptr, ptr %i.e, align 8, !tbaa !94 ; 2 uses
  %.not9599 = icmp eq ptr %.07898, null
  br i1 %.not9599, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !21
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %i.g = phi ptr [ %i.d, %.lr.ph ], [ %i.t, %bb.e ] ; 2 uses
  %.078100 = phi ptr [ %.07898, %.lr.ph ], [ %.078, %bb.e ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.078100, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !95
  %i.j = load i32, ptr %i.i, align 8, !tbaa !96
  %i.k = sdiv i32 %i.j, 2
  %i.l = shl nsw i32 %i.k, 1
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr [8 x i8], ptr %i.f, i64 %i.m
  %i.o = getelementptr i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !38   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 64 ; 4 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !97
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr %i.p, ptr %i.g, align 8, !tbaa !38
  store ptr %i.q, ptr %i.b, align 8, !tbaa !92
  store ptr inttoptr (i64 1 to ptr), ptr %i.q, align 8, !tbaa !97
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.t = phi ptr [ %i.g, %bb.c ], [ %i.q, %bb.d ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.078100, i64 32
  %.078 = load ptr, ptr %i.u, align 8, !tbaa !94  ; 2 uses
  %.not95 = icmp eq ptr %.078, null
  br i1 %.not95, label %._crit_edge, label %bb.c, !llvm.loop !98

._crit_edge:                                      ; preds = %bb.e, %bb.b
  %i.v = phi ptr [ %i.d, %bb.b ], [ %i.t, %bb.e ]
  %i.w = getelementptr inbounds nuw i8, ptr %.080102, i64 56
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !69   ; 2 uses
  %.not = icmp eq ptr %i.x, %4
  br i1 %.not, label %._crit_edge105.loopexit, label %bb.b, !llvm.loop !99

._crit_edge105.loopexit:                          ; preds = %._crit_edge
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !93
  br label %._crit_edge105

._crit_edge105:                                   ; preds = %._crit_edge105.loopexit, %bb.a
  %i.y = phi ptr [ %.pre, %._crit_edge105.loopexit ], [ null, %bb.a ] ; 2 uses
  %i.z = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #14 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4 ; 5 uses
  store i32 0, ptr %i.aa, align 4, !tbaa !100
  store i32 16, ptr %i.z, align 8, !tbaa !101
  %i.ab = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #14 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 3 uses
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !53
  %switch = icmp ult ptr %i.y, inttoptr (i64 2 to ptr)
  br i1 %switch, label %.loopexit, label %.lr.ph108

.lr.ph108:                                        ; preds = %._crit_edge105, %Vec_IntPush.exit
  %i.ad = phi ptr [ %i.at, %Vec_IntPush.exit ], [ %i.ab, %._crit_edge105 ] ; 6 uses
  %i.ae = phi i32 [ %i.au, %Vec_IntPush.exit ], [ 16, %._crit_edge105 ] ; 8 uses
  %i.af = phi i32 [ %i.av, %Vec_IntPush.exit ], [ 0, %._crit_edge105 ] ; 2 uses
  %.083107 = phi ptr [ %i.az, %Vec_IntPush.exit ], [ %i.y, %._crit_edge105 ] ; 2 uses
  %i.ag = load i32, ptr %.083107, align 8, !tbaa !96
  %i.ah = sdiv i32 %i.ag, 2
  %i.ai = icmp eq i32 %i.af, %i.ae
  br i1 %i.ai, label %bb.f, label %Vec_IntPush.exit

bb.f:                                             ; preds = %.lr.ph108
  %i.aj = icmp slt i32 %i.ae, 16
  br i1 %i.aj, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %.not9.i.i = icmp eq ptr %i.ad, null
  br i1 %.not9.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ad, i64 noundef 64) #15
  br label %Vec_IntGrow.exit11.sink.split.i

bb.i:                                             ; preds = %bb.g
end_hunk_0
