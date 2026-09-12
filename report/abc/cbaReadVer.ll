Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/cbaReadVer?download=true
inline.NumInlined: 1012
inline.NumDeleted: 196
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@Prs_CreateVerilogNtk:bb.a
  br label %Vec_IntGrow.exit.i.i.i1079

Vec_IntGrow.exit.i.i.i1079:                       ; preds = %Vec_IntGrow.exit.sink.split.i.i.i1076, %bb.mj, %bb.mi, %bb.me
  %i.awv = phi i32 [ %.pre.i.i1078, %Vec_IntGrow.exit.sink.split.i.i.i1076 ], [ %i.awh, %bb.mj ], [ %i.awh, %bb.mi ], [ %i.awh, %bb.me ] ; 3 uses
  %.not4.i.i1080 = icmp sgt i32 %i.awv, %i.avd
  br i1 %.not4.i.i1080, label %._crit_edge.i.i.i1083, label %.lr.ph.i.i.i1081

.lr.ph.i.i.i1081:                                 ; preds = %Vec_IntGrow.exit.i.i.i1079
  %i.aww = load ptr, ptr %i.wy, align 8, !tbaa !35
  %i.awx = sext i32 %i.awv to i64
  %i.awy = shl nsw i64 %i.awx, 2
  %scevgep.i.i.i1082 = getelementptr i8, ptr %i.aww, i64 %i.awy
  %i.awz = sub i32 %i.avd, %i.awv
  %i.axa = zext i32 %i.awz to i64
  %i.axb = shl nuw nsw i64 %i.axa, 2
  %i.axc = add nuw nsw i64 %i.axb, 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i1082, i8 0, i64 %i.axc, i1 false), !tbaa !36
  br label %._crit_edge.i.i.i1083

._crit_edge.i.i.i1083:                            ; preds = %.lr.ph.i.i.i1081, %Vec_IntGrow.exit.i.i.i1079
  store i32 %i.avf, ptr %i.wx, align 4, !tbaa !33
  br label %Cba_FonSetRange.exit1088

Cba_FonSetRange.exit1088:                         ; preds = %Cba_FonSetName.exit1071, %._crit_edge.i.i.i1083
  %i.axd = shl nsw i32 %i.awg, 1
  %.val.i.i1084 = load ptr, ptr %i.wy, align 8, !tbaa !35
  %i.axe = getelementptr inbounds [4 x i8], ptr %.val.i.i1084, i64 %i.awc
  store i32 %i.axd, ptr %i.axe, align 4, !tbaa !36
  br label %bb.mn

bb.mn:                                            ; preds = %Cba_FonSetRange.exit1088, %bb.lr
  %.0 = phi i32 [ %i.avd, %Cba_FonSetRange.exit1088 ], [ %i.auj, %bb.lr ]
  %i.axf = icmp sgt i32 %i.auq, 0
  br i1 %i.axf, label %.lr.ph1282, label %.thread1218

.lr.ph1282:                                       ; preds = %bb.mn
  %i.axg = add i32 %i.aur, -1
  br label %bb.mo

bb.mo:                                            ; preds = %.lr.ph1282, %bb.mo
  %.101280 = phi i32 [ 0, %.lr.ph1282 ], [ %i.axm, %bb.mo ] ; 2 uses
  %i.axh = mul nsw i32 %.101280, %i.aur           ; 2 uses
  %i.axi = add i32 %i.axg, %i.axh
  %.val620 = load ptr, ptr %0, align 8, !tbaa !69
  %i.axj = getelementptr i8, ptr %.val620, i64 40
  %.val620.val = load ptr, ptr %i.axj, align 8, !tbaa !73
  %i.axk = call fastcc i32 @Hash_Int2ManInsert(ptr noundef readonly %.val620.val, i32 noundef range(i32 -2147483648, 2147483647) %i.axi, i32 noundef %i.axh)
  %i.axl = call i32 @Prs_CreateSlice(ptr noundef nonnull %0, i32 noundef %.0, ptr poison, i32 noundef %i.axk)
  %i.axm = add nuw nsw i32 %.101280, 1            ; 3 uses
  %.val592 = load ptr, ptr %i.ws, align 8, !tbaa !35
  %.val593 = load ptr, ptr %i.wt, align 8, !tbaa !35
  %i.axn = getelementptr inbounds [4 x i8], ptr %.val592, i64 %i.aud
  %i.axo = load i32, ptr %i.axn, align 4, !tbaa !36
  %i.axp = add nsw i32 %i.axo, %i.axm
  %i.axq = sext i32 %i.axp to i64
  %i.axr = getelementptr inbounds [4 x i8], ptr %.val593, i64 %i.axq
  store i32 %i.axl, ptr %i.axr, align 4, !tbaa !36
  %exitcond1347.not = icmp eq i32 %i.axm, %i.auq
  br i1 %exitcond1347.not, label %.thread1218, label %bb.mo, !llvm.loop !142

.thread1218:                                      ; preds = %bb.mo, %Prs_CreateSignalIn.exit.thread, %bb.mn, %bb.ez, %._crit_edge1279
  %.1485 = phi i32 [ %.014.i8821211, %._crit_edge1279 ], [ %i.xs, %bb.ez ], [ %.014.i8821211, %bb.mn ], [ %i.xs, %Prs_CreateSignalIn.exit.thread ], [ %.014.i8821211, %bb.mo ]
  switch i32 %.1485, label %.critedge546 [
    i32 47, label %bb.mp
    i32 87, label %bb.mr
  ]

bb.mp:                                            ; preds = %.thread1218
  %.val696 = load ptr, ptr %i.ws, align 8, !tbaa !35
  %.val697 = load ptr, ptr %i.wt, align 8, !tbaa !35
  %i.axs = sext i32 %i.xk to i64
  %i.axt = getelementptr inbounds [4 x i8], ptr %.val696, i64 %i.axs
  %i.axu = load i32, ptr %i.axt, align 4, !tbaa !36
  %i.axv = sext i32 %i.axu to i64
  %i.axw = getelementptr inbounds [4 x i8], ptr %.val697, i64 %i.axv ; 2 uses
  %i.axx = load i32, ptr %i.axw, align 4, !tbaa !36
  %i.axy = icmp eq i32 %i.axx, 0
  br i1 %i.axy, label %bb.mq, label %.critedge546

bb.mq:                                            ; preds = %bb.mp
  store i32 -2, ptr %i.axw, align 4, !tbaa !36
  br label %.critedge546

bb.mr:                                            ; preds = %.thread1218
  %.val694 = load ptr, ptr %i.ws, align 8, !tbaa !35
  %.val695 = load ptr, ptr %i.wt, align 8, !tbaa !35 ; 2 uses
  %i.axz = sext i32 %i.xk to i64
  %i.aya = getelementptr inbounds [4 x i8], ptr %.val694, i64 %i.axz ; 2 uses
  %i.ayb = load i32, ptr %i.aya, align 4, !tbaa !36
  %i.ayc = sext i32 %i.ayb to i64                 ; 2 uses
  %i.ayd = getelementptr [4 x i8], ptr %.val695, i64 %i.ayc
  %i.aye = getelementptr i8, ptr %i.ayd, i64 4    ; 2 uses
  %i.ayf = load i32, ptr %i.aye, align 4, !tbaa !36
  %i.ayg = icmp eq i32 %i.ayf, 0
  br i1 %i.ayg, label %bb.ms, label %bb.mt

bb.ms:                                            ; preds = %bb.mr
  store i32 -2, ptr %i.aye, align 4, !tbaa !36
  %.pre = load i32, ptr %i.aya, align 4, !tbaa !36
  %.pre1367 = sext i32 %.pre to i64
  br label %bb.mt

bb.mt:                                            ; preds = %bb.mr, %bb.ms
  %.pre-phi = phi i64 [ %i.ayc, %bb.mr ], [ %.pre1367, %bb.ms ]
  %i.ayh = getelementptr [4 x i8], ptr %.val695, i64 %.pre-phi
  %i.ayi = getelementptr i8, ptr %i.ayh, i64 8    ; 2 uses
  %i.ayj = load i32, ptr %i.ayi, align 4, !tbaa !36
  %i.ayk = icmp eq i32 %i.ayj, 0
  br i1 %i.ayk, label %bb.mu, label %.critedge546

bb.mu:                                            ; preds = %bb.mt
  store i32 -2, ptr %i.ayi, align 4, !tbaa !36
  br label %.critedge546

.critedge546:                                     ; preds = %._crit_edge1270, %.thread1218, %bb.mp, %bb.mq, %bb.mt, %bb.mu
  %indvars.iv.next1356 = add nuw nsw i64 %indvars.iv1355, 1 ; 2 uses
  %.val641 = load i32, ptr %i.e, align 4, !tbaa !33
  %i.ayl = sext i32 %.val641 to i64
  %i.aym = icmp slt i64 %indvars.iv.next1356, %i.ayl
  br i1 %i.aym, label %bb.ey, label %.critedge21, !llvm.loop !143

.critedge21:                                      ; preds = %.critedge546, %Vec_PtrFreeP.exit, %bb.ex
  %i.ayn = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ayo = load ptr, ptr %i.ayn, align 8, !tbaa !35 ; 2 uses
  %.not.i1089 = icmp eq ptr %i.ayo, null
  br i1 %.not.i1089, label %Vec_IntFree.exit1090, label %bb.mv

bb.mv:                                            ; preds = %.critedge21
  call void @free(ptr noundef nonnull %i.ayo) #28
  br label %Vec_IntFree.exit1090

Vec_IntFree.exit1090:                             ; preds = %.critedge21, %bb.mv
  call void @free(ptr noundef nonnull %i.f) #28
  %.val1289 = load i32, ptr %i.bq, align 4, !tbaa !33
  %i.ayp = icmp sgt i32 %.val1289, 0
  br i1 %i.ayp, label %.critedge35.lr.ph, label %._crit_edge1291

.critedge35.lr.ph:                                ; preds = %Vec_IntFree.exit1090
  %i.ayq = getelementptr i8, ptr %1, i64 88
  %i.ayr = getelementptr i8, ptr %0, i64 48
  %i.ays = getelementptr i8, ptr %0, i64 112
  %i.ayt = getelementptr i8, ptr %0, i64 144
  br label %.critedge35

.critedge35:                                      ; preds = %.critedge35.lr.ph, %bb.mx
  %indvars.iv1358 = phi i64 [ 0, %.critedge35.lr.ph ], [ %indvars.iv.next1359, %bb.mx ] ; 3 uses
  %.val555 = load ptr, ptr %i.ayq, align 8, !tbaa !35
  %i.ayu = getelementptr inbounds nuw [4 x i8], ptr %.val555, i64 %indvars.iv1358
  %i.ayv = load i32, ptr %i.ayu, align 4, !tbaa !36
  %.val682 = load ptr, ptr %i.ayr, align 8, !tbaa !35
  %i.ayw = getelementptr inbounds nuw [4 x i8], ptr %.val682, i64 %indvars.iv1358
  %i.ayx = load i32, ptr %i.ayw, align 4, !tbaa !36
  %i.ayy = call i32 @Prs_CreateVerilogFindFon(ptr noundef %0, i32 noundef %i.ayv) ; 2 uses
  %.not521 = icmp eq i32 %i.ayy, 0
  br i1 %.not521, label %bb.mx, label %bb.mw

bb.mw:                                            ; preds = %.critedge35
  %.val584 = load ptr, ptr %i.ays, align 8, !tbaa !35
  %.val585 = load ptr, ptr %i.ayt, align 8, !tbaa !35
  %i.ayz = sext i32 %i.ayx to i64
  %i.aza = getelementptr inbounds [4 x i8], ptr %.val584, i64 %i.ayz
  %i.azb = load i32, ptr %i.aza, align 4, !tbaa !36
  %i.azc = sext i32 %i.azb to i64
  %i.azd = getelementptr inbounds [4 x i8], ptr %.val585, i64 %i.azc
  store i32 %i.ayy, ptr %i.azd, align 4, !tbaa !36
  br label %bb.mx

bb.mx:                                            ; preds = %.critedge35, %bb.mw
  %indvars.iv.next1359 = add nuw nsw i64 %indvars.iv1358, 1 ; 2 uses
  %.val = load i32, ptr %i.bq, align 4, !tbaa !33
  %i.aze = sext i32 %.val to i64
  %i.azf = icmp slt i64 %indvars.iv.next1359, %i.aze
  br i1 %i.azf, label %.critedge35, label %._crit_edge1291, !llvm.loop !144

._crit_edge1291:                                  ; preds = %bb.mx, %Vec_IntFree.exit1090
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: inlinehint mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal fastcc ptr @Cba_ObjNtk(ptr nofree noundef captures(none) %0, i32 noundef %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 96
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !60
  %i.b = sext i32 %1 to i64                       ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %.val.i, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !38
  %.not.i = icmp eq i8 %i.d, 3
  br i1 %.not.i, label %bb.b, label %Cba_NtkNtk.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 188        ; 3 uses
  %.val5.i = load i32, ptr %i.e, align 4, !tbaa !33 ; 4 uses
  %i.f = icmp slt i32 %.val5.i, 1
  br i1 %i.f, label %Cba_NtkNtk.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.h = add nsw i32 %1, 1                        ; 3 uses
  %.not.i.not.i.i.i = icmp slt i32 %1, %.val5.i
  br i1 %.not.i.not.i.i.i, label %Cba_ObjNtkId.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load i32, ptr %i.g, align 8, !tbaa !34   ; 4 uses
  %i.j = shl nsw i32 %i.i, 1                      ; 2 uses
  %.not.i.i.i = icmp slt i32 %1, %i.j
  br i1 %.not.i.i.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !35   ; 2 uses
  %.not9.i.i.i.i.i = icmp eq ptr %i.l, null
  %2 = zext nneg i32 %i.h to i64
  %i.m = shl nuw nsw i64 %2, 2                    ; 2 uses
  br i1 %.not9.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = tail call ptr @realloc(ptr noundef nonnull %i.l, i64 noundef %i.m) #29
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.o = tail call noalias ptr @malloc(i64 noundef %i.m) #30
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.p = phi ptr [ %i.n, %bb.f ], [ %i.o, %bb.g ]
  store ptr %i.p, ptr %i.k, align 8, !tbaa !35
  br label %Vec_IntGrow.exit.sink.split.i.i.i.i

bb.i:                                             ; preds = %bb.d
  %.not.i.i.not.i.i.i = icmp sgt i32 %i.i, %1
  br i1 %.not.i.i.not.i.i.i, label %Vec_IntGrow.exit.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = icmp slt i32 %i.i, 1073741823
  %spec.select.i.i.i.i = select i1 %i.q, i32 %i.j, i32 2147483647 ; 3 uses
  %.not.i22.i.i.i.i = icmp slt i32 %i.i, %spec.select.i.i.i.i
  br i1 %.not.i22.i.i.i.i, label %bb.k, label %Vec_IntGrow.exit.i.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !35   ; 2 uses
  %.not9.i23.i.i.i.i = icmp eq ptr %i.s, null
  %i.t = zext nneg i32 %spec.select.i.i.i.i to i64
  %i.u = shl nuw nsw i64 %i.t, 2                  ; 2 uses
  br i1 %.not9.i23.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = tail call ptr @realloc(ptr noundef nonnull %i.s, i64 noundef %i.u) #29
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.w = tail call noalias ptr @malloc(i64 noundef %i.u) #30
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.x = phi ptr [ %i.v, %bb.l ], [ %i.w, %bb.m ]
  store ptr %i.x, ptr %i.r, align 8, !tbaa !35
  br label %Vec_IntGrow.exit.sink.split.i.i.i.i

Vec_IntGrow.exit.sink.split.i.i.i.i:              ; preds = %bb.n, %bb.h
  %spec.select.sink.i.i.i.i = phi i32 [ %spec.select.i.i.i.i, %bb.n ], [ %i.h, %bb.h ]
  store i32 %spec.select.sink.i.i.i.i, ptr %i.g, align 8, !tbaa !34
  %.pre.i.i.i = load i32, ptr %i.e, align 4, !tbaa !33
  br label %Vec_IntGrow.exit.i.i.i.i

Vec_IntGrow.exit.i.i.i.i:                         ; preds = %Vec_IntGrow.exit.sink.split.i.i.i.i, %bb.j, %bb.i
  %i.y = phi i32 [ %.pre.i.i.i, %Vec_IntGrow.exit.sink.split.i.i.i.i ], [ %.val5.i, %bb.j ], [ %.val5.i, %bb.i ] ; 3 uses
  %.not3.i.i.i = icmp sgt i32 %i.y, %1
  br i1 %.not3.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %Vec_IntGrow.exit.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !35
  %i.ab = sext i32 %i.y to i64
  %i.ac = shl nsw i64 %i.ab, 2
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.aa, i64 %i.ac
  %i.ad = sub i32 %1, %i.y
  %i.ae = zext i32 %i.ad to i64
  %i.af = shl nuw nsw i64 %i.ae, 2
  %i.ag = add nuw nsw i64 %i.af, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i.i, i8 0, i64 %i.ag, i1 false), !tbaa !36
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %Vec_IntGrow.exit.i.i.i.i
  store i32 %i.h, ptr %i.e, align 4, !tbaa !33
  br label %Cba_ObjNtkId.exit

Cba_ObjNtkId.exit:                                ; preds = %bb.c, %._crit_edge.i.i.i.i
  %i.ah = getelementptr i8, ptr %0, i64 192
  %.val.i.i.i = load ptr, ptr %i.ah, align 8, !tbaa !35
  %i.ai = getelementptr inbounds [4 x i8], ptr %.val.i.i.i, i64 %i.b
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !36 ; 3 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !69    ; 2 uses
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %Cba_ManNtkIsOk.exit.i.i, label %Cba_NtkNtk.exit

Cba_ManNtkIsOk.exit.i.i:                          ; preds = %Cba_ObjNtkId.exit
  %i.al = getelementptr i8, ptr %.val, i64 1564
  %.val.i.i.i2 = load i32, ptr %i.al, align 4, !tbaa !51
  %.not.i.i = icmp slt i32 %i.aj, %.val.i.i.i2
  br i1 %.not.i.i, label %bb.o, label %Cba_NtkNtk.exit

bb.o:                                             ; preds = %Cba_ManNtkIsOk.exit.i.i
  %i.am = getelementptr i8, ptr %.val, i64 1568
  %.val.i.i = load ptr, ptr %i.am, align 8, !tbaa !53
  %i.an = zext nneg i32 %i.aj to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.an
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !63
  br label %Cba_NtkNtk.exit

Cba_NtkNtk.exit:                                  ; preds = %bb.a, %bb.b, %Cba_ObjNtkId.exit, %Cba_ManNtkIsOk.exit.i.i, %bb.o
  %i.aq = phi ptr [ %i.ap, %bb.o ], [ null, %Cba_ManNtkIsOk.exit.i.i ], [ null, %Cba_ObjNtkId.exit ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %i.aq
}

; Function Attrs: nounwind uwtable
define noundef ptr @Prs_ManBuildCbaVerilog(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
Prs_ManRoot.exit:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr i8, ptr %1, i64 4          ; 4 uses
  %i.c = getelementptr i8, ptr %1, i64 8          ; 3 uses
  %.val4.i.i = load ptr, ptr %i.c, align 8, !tbaa !53
  %i.d = load ptr, ptr %.val4.i.i, align 8, !tbaa !63 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !64
  %i.g = tail call ptr @Abc_NamRef(ptr noundef %i.f) #28 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !65
  %i.j = tail call ptr @Abc_NamRef(ptr noundef %i.i) #28 ; 2 uses
  %i.k = tail call ptr @Abc_NamStart(i32 noundef 100, i32 noundef 24) #28 ; 2 uses
  %.val42 = load i32, ptr %i.b, align 4, !tbaa !51 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !66   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !47
  %i.p = add nsw i32 %i.o, 1
  store i32 %i.p, ptr %i.n, align 8, !tbaa !47
  %i.q = tail call noalias dereferenceable_or_null(1624) ptr @calloc(i64 noundef 1, i64 noundef 1624) #31 ; 12 uses
  %i.r = tail call ptr @Extra_FileDesignName(ptr noundef %0) #28
  store ptr %i.r, ptr %i.q, align 8, !tbaa !154
  %.not.i.i = icmp eq ptr %0, null
  br i1 %.not.i.i, label %Abc_UtilStrsav.exit.i, label %bb.a

bb.a:                                             ; preds = %Prs_ManRoot.exit
  %i.s = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %0) #32
  %i.t = add i64 %i.s, 1
  %i.u = tail call noalias ptr @malloc(i64 noundef %i.t) #30 ; 2 uses
  %i.v = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.u, ptr noundef nonnull readonly dereferenceable(1) %0) #28 ; 0 uses
  br label %Abc_UtilStrsav.exit.i

Abc_UtilStrsav.exit.i:                            ; preds = %bb.a, %Prs_ManRoot.exit
  %i.w = phi ptr [ %i.u, %bb.a ], [ null, %Prs_ManRoot.exit ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !155
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %Abc_UtilStrsav.exit.i
  %i.y = tail call ptr @Abc_NamStart(i32 noundef 1000, i32 noundef 24) #28
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %Abc_UtilStrsav.exit.i
  %i.z = phi ptr [ %i.y, %bb.b ], [ %i.g, %Abc_UtilStrsav.exit.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !72
  %.not28.i = icmp eq ptr %i.j, null              ; 2 uses
  br i1 %.not28.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ab = tail call ptr @Abc_NamStart(i32 noundef 100, i32 noundef 24) #28
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ac = phi ptr [ %i.ab, %bb.d ], [ %i.j, %bb.c ] ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !74
  %.not29.i = icmp eq ptr %i.k, null
  br i1 %.not29.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ae = tail call ptr @Abc_NamStart(i32 noundef 100, i32 noundef 24) #28
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.af = phi ptr [ %i.ae, %bb.f ], [ %i.k, %bb.e ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 2 uses
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !78
  %i.ah = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store ptr %i.m, ptr %i.ah, align 8, !tbaa !73
  br i1 %.not28.i, label %bb.h, label %Cba_ManAlloc.exit

bb.h:                                             ; preds = %bb.g
  %i.ai = tail call i32 @Abc_NamStrFindOrAdd(ptr noundef %i.ac, ptr noundef nonnull @.str.7, ptr noundef null) #28 ; 0 uses
  %i.aj = tail call i32 @Abc_NamStrFindOrAdd(ptr noundef %i.ac, ptr noundef nonnull @.str.8, ptr noundef null) #28 ; 0 uses
  %i.ak = tail call i32 @Abc_NamStrFindOrAdd(ptr noundef %i.ac, ptr noundef nonnull @.str.9, ptr noundef null) #28 ; 0 uses
  %i.al = tail call i32 @Abc_NamStrFindOrAdd(ptr noundef %i.ac, ptr noundef nonnull @.str.10, ptr noundef null) #28 ; 0 uses
  br label %Cba_ManAlloc.exit

Cba_ManAlloc.exit:                                ; preds = %bb.g, %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %i.q, i64 1560 ; 3 uses
  %i.an = add nuw nsw i32 %.val42, 1              ; 2 uses
  %.not.i31.not.i = icmp slt i32 %.val42, 0       ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.q, i64 1568 ; 7 uses
  %i.ap = zext nneg i32 %i.an to i64
  %i.aq = shl nuw nsw i64 %i.ap, 3
  %.sink53.i = select i1 %.not.i31.not.i, i64 128, i64 %i.aq
  %.sink.i = select i1 %.not.i31.not.i, i32 16, i32 %i.an
  %i.ar = tail call noalias ptr @malloc(i64 noundef %.sink53.i) #30 ; 2 uses
  store ptr %i.ar, ptr %i.ao, align 8, !tbaa !53
  store i32 %.sink.i, ptr %i.am, align 8, !tbaa !52
  %i.as = getelementptr inbounds nuw i8, ptr %i.q, i64 1564 ; 7 uses
  store i32 1, ptr %i.as, align 4, !tbaa !51
end_hunk_0
