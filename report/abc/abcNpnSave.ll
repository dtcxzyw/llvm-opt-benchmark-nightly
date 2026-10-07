Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/abcNpnSave?download=true
inline.NumInlined: 37
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@Abc_Print:bb.a
  %i.i = call i32 (...) @Abc_FrameIsBridgeMode() #22
  %.not9 = icmp eq i32 %i.i, 0
  br i1 %.not9, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.j = call ptr @vnsprintf(ptr noundef %1, ptr noundef nonnull %2) #22 ; 3 uses
  %i.k = load ptr, ptr @stdout, align 8, !tbaa !38
  %i.l = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.j) #20
  %i.m = trunc i64 %i.l to i32
  %i.n = call i32 @Gia_ManToBridgeText(ptr noundef %i.k, i32 noundef %i.m, ptr noundef nonnull %i.j) #22 ; 0 uses
  call void @free(ptr noundef %i.j) #22
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.o = load ptr, ptr @stdout, align 8, !tbaa !38, !noalias !39
  %i.p = call i32 @vfprintf(ptr noundef %i.o, ptr noundef %1, ptr noundef nonnull %2) #22, !inline_history !36 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  call void @llvm.va_end.p0(ptr nonnull %2)
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret void
}

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef writeonly, i32 noundef, ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare ptr @strtok(ptr noundef, ptr noundef readonly captures(none)) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #10

declare i32 @Extra_ReadHexadecimal(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @Npn_ManWrite(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str.5) ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -1, ptr noundef nonnull @.str.2, ptr noundef %1)
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !23   ; 2 uses
  %i.e = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21 ; 5 uses
  %i.f = add i32 %i.d, -1
  %or.cond.i = icmp ult i32 %i.f, 7
  %spec.store.select.i = select i1 %or.cond.i, i32 8, i32 %i.d ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  store i32 0, ptr %i.g, align 4, !tbaa !45
  store i32 %spec.store.select.i, ptr %i.e, align 8, !tbaa !46
  %.not.i = icmp eq i32 %spec.store.select.i, 0
  br i1 %.not.i, label %Vec_PtrAlloc.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = sext i32 %spec.store.select.i to i64
  %i.i = shl nsw i64 %i.h, 3
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.i) #21
  br label %Vec_PtrAlloc.exit

Vec_PtrAlloc.exit:                                ; preds = %bb.c, %bb.d
  %i.k = phi ptr [ %i.j, %bb.d ], [ null, %bb.c ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 6 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !47
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !17   ; 2 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph43, label %.critedge

.lr.ph43:                                         ; preds = %Vec_PtrAlloc.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph43, %Npn_ManObj.exit.thread
  %i.q = phi i32 [ %i.n, %.lr.ph43 ], [ %i.ar, %Npn_ManObj.exit.thread ]
  %.promoted36 = phi i32 [ %spec.store.select.i, %.lr.ph43 ], [ %.promoted3658, %Npn_ManObj.exit.thread ] ; 3 uses
  %.promoted = phi i32 [ 0, %.lr.ph43 ], [ %.promoted55, %Npn_ManObj.exit.thread ] ; 2 uses
  %indvars.iv48 = phi i64 [ 0, %.lr.ph43 ], [ %indvars.iv.next49, %Npn_ManObj.exit.thread ] ; 2 uses
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !16
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv48
  %i.t = load i32, ptr %i.s, align 4, !tbaa !9    ; 2 uses
  %.not.i30 = icmp eq i32 %i.t, 0
  br i1 %.not.i30, label %Npn_ManObj.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.u = load ptr, ptr %0, align 8, !tbaa !18
  %i.v = sext i32 %i.t to i64
  %i.w = getelementptr inbounds [16 x i8], ptr %i.u, i64 %i.v
  %.promoted39 = load ptr, ptr %i.l, align 8, !tbaa !47
  %i.x = sext i32 %.promoted to i64
  br label %bb.f

bb.f:                                             ; preds = %Npn_ManObj.exit32, %.lr.ph
  %.promoted3656 = phi i32 [ %.promoted36, %.lr.ph ], [ %.promoted3659, %Npn_ManObj.exit32 ] ; 2 uses
  %indvars.iv = phi i64 [ %i.x, %.lr.ph ], [ %indvars.iv.next, %Npn_ManObj.exit32 ] ; 7 uses
  %storemerge40 = phi ptr [ %.promoted39, %.lr.ph ], [ %storemerge41, %Npn_ManObj.exit32 ] ; 6 uses
  %spec.select.sink.i38 = phi i32 [ %.promoted36, %.lr.ph ], [ %spec.select.sink.i37, %Npn_ManObj.exit32 ] ; 3 uses
  %.02735 = phi ptr [ %i.w, %.lr.ph ], [ %i.ap, %Npn_ManObj.exit32 ] ; 2 uses
  %i.y = trunc nsw i64 %indvars.iv to i32
  %i.z = icmp eq i32 %spec.select.sink.i38, %i.y
  br i1 %i.z, label %bb.g, label %Vec_PtrPush.exit

bb.g:                                             ; preds = %bb.f
  %i.aa = icmp slt i64 %indvars.iv, 16
  br i1 %i.aa, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %.not9.i.i = icmp eq ptr %storemerge40, null
  br i1 %.not9.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %storemerge40, i64 noundef 128) #24
  br label %Vec_PtrGrow.exit12.sink.split.i

bb.j:                                             ; preds = %bb.h
  %i.ac = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #21
  br label %Vec_PtrGrow.exit12.sink.split.i

bb.k:                                             ; preds = %bb.g
  %i.ad = icmp samesign ult i64 %indvars.iv, 1073741823
  %indvars.iv.tr = trunc nsw i64 %indvars.iv to i32
  %i.ae = shl nsw i32 %indvars.iv.tr, 1
  %spec.select.i = select i1 %i.ad, i32 %i.ae, i32 2147483647 ; 4 uses
  %i.af = sext i32 %spec.select.i to i64
  %.not.i10.i = icmp samesign ult i64 %indvars.iv, %i.af
  br i1 %.not.i10.i, label %bb.l, label %Vec_PtrPush.exit

bb.l:                                             ; preds = %bb.k
  %.not9.i11.i = icmp eq ptr %storemerge40, null
  %i.ag = zext nneg i32 %spec.select.i to i64
  %i.ah = shl nuw nsw i64 %i.ag, 3                ; 2 uses
  br i1 %.not9.i11.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = tail call ptr @realloc(ptr noundef nonnull %storemerge40, i64 noundef %i.ah) #24
  br label %Vec_PtrGrow.exit12.sink.split.i

bb.n:                                             ; preds = %bb.l
  %i.aj = tail call noalias ptr @malloc(i64 noundef %i.ah) #21
  br label %Vec_PtrGrow.exit12.sink.split.i

Vec_PtrGrow.exit12.sink.split.i:                  ; preds = %bb.m, %bb.n, %bb.i, %bb.j
  %storemerge = phi ptr [ %i.ac, %bb.j ], [ %i.ab, %bb.i ], [ %i.ai, %bb.m ], [ %i.aj, %bb.n ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.j ], [ 16, %bb.i ], [ %spec.select.i, %bb.m ], [ %spec.select.i, %bb.n ] ; 3 uses
  store ptr %storemerge, ptr %i.l, align 8, !tbaa !47
  store i32 %spec.select.sink.i, ptr %i.e, align 8, !tbaa !46
  br label %Vec_PtrPush.exit

Vec_PtrPush.exit:                                 ; preds = %bb.f, %bb.k, %Vec_PtrGrow.exit12.sink.split.i
  %.promoted3659 = phi i32 [ %.promoted3656, %bb.f ], [ %.promoted3656, %bb.k ], [ %spec.select.sink.i, %Vec_PtrGrow.exit12.sink.split.i ] ; 2 uses
  %storemerge41 = phi ptr [ %storemerge40, %bb.f ], [ %storemerge40, %bb.k ], [ %storemerge, %Vec_PtrGrow.exit12.sink.split.i ] ; 2 uses
  %spec.select.sink.i37 = phi i32 [ %spec.select.sink.i38, %bb.f ], [ %spec.select.sink.i38, %bb.k ], [ %spec.select.sink.i, %Vec_PtrGrow.exit12.sink.split.i ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ak = getelementptr inbounds [8 x i8], ptr %storemerge41, i64 %indvars.iv
  store ptr %.02735, ptr %i.ak, align 8, !tbaa !48
  %i.al = getelementptr inbounds nuw i8, ptr %.02735, i64 12
  %i.am = load i32, ptr %i.al, align 4, !tbaa !21 ; 2 uses
  %.not.i31 = icmp eq i32 %i.am, 0
  br i1 %.not.i31, label %._crit_edge, label %Npn_ManObj.exit32

Npn_ManObj.exit32:                                ; preds = %Vec_PtrPush.exit
  %i.an = load ptr, ptr %0, align 8, !tbaa !18
  %i.ao = sext i32 %i.am to i64
  %i.ap = getelementptr inbounds [16 x i8], ptr %i.an, i64 %i.ao
  br label %bb.f, !llvm.loop !40

._crit_edge:                                      ; preds = %Vec_PtrPush.exit
  %i.aq = trunc nsw i64 %indvars.iv.next to i32   ; 2 uses
  store i32 %i.aq, ptr %i.g, align 4, !tbaa !45
  %.pre = load i32, ptr %i.m, align 8, !tbaa !17
  br label %Npn_ManObj.exit.thread

Npn_ManObj.exit.thread:                           ; preds = %bb.e, %._crit_edge
  %i.ar = phi i32 [ %.pre, %._crit_edge ], [ %i.q, %bb.e ] ; 2 uses
  %.promoted3658 = phi i32 [ %.promoted3659, %._crit_edge ], [ %.promoted36, %bb.e ]
  %.promoted55 = phi i32 [ %i.aq, %._crit_edge ], [ %.promoted, %bb.e ] ; 5 uses
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1 ; 2 uses
  %i.as = sext i32 %i.ar to i64
  %i.at = icmp slt i64 %indvars.iv.next49, %i.as
  br i1 %i.at, label %bb.e, label %._crit_edge44, !llvm.loop !41

._crit_edge44:                                    ; preds = %Npn_ManObj.exit.thread
  %i.au = icmp slt i32 %.promoted55, 2
  br i1 %i.au, label %Vec_PtrSort.exit, label %Vec_PtrSort.exit.thread

Vec_PtrSort.exit.thread:                          ; preds = %._crit_edge44
  %i.av = load ptr, ptr %i.l, align 8, !tbaa !47
  %i.aw = zext nneg i32 %.promoted55 to i64
  tail call void @qsort(ptr noundef %i.av, i64 noundef %i.aw, i64 noundef 8, ptr noundef nonnull @Npn_ManCompareEntries) #22
  br label %.lr.ph46

Vec_PtrSort.exit:                                 ; preds = %._crit_edge44
  %i.ax = icmp eq i32 %.promoted55, 1
  br i1 %i.ax, label %.lr.ph46, label %.critedge

.lr.ph46:                                         ; preds = %Vec_PtrSort.exit.thread, %Vec_PtrSort.exit
  %.val29 = load ptr, ptr %i.l, align 8, !tbaa !47
  %wide.trip.count = zext nneg i32 %.promoted55 to i64
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph46, %bb.o
  %indvars.iv51 = phi i64 [ 0, %.lr.ph46 ], [ %indvars.iv.next52, %bb.o ] ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %.val29, i64 %indvars.iv51
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !48 ; 3 uses
  tail call void @Extra_PrintHexadecimal(ptr noundef nonnull %i.a, ptr noundef %i.az, i32 noundef 6) #22
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !25
  %i.bc = load i64, ptr %i.az, align 8, !tbaa !22 ; 12 uses
  %i.bd = lshr i64 %i.bc, 1
  %i.be = xor i64 %i.bd, %i.bc
  %i.bf = and i64 %i.be, 6148914691236517205
  %.not8.i = icmp ne i64 %i.bf, 0
  %i.bg = zext i1 %.not8.i to i32
  %i.bh = lshr i64 %i.bc, 2
  %i.bi = xor i64 %i.bh, %i.bc
  %i.bj = and i64 %i.bi, 3689348814741910323
  %.not8.1.i = icmp ne i64 %i.bj, 0
  %i.bk = zext i1 %.not8.1.i to i32
  %i.bl = lshr i64 %i.bc, 4
  %i.bm = xor i64 %i.bl, %i.bc
  %i.bn = and i64 %i.bm, 1085102592571150095
  %.not8.2.i = icmp ne i64 %i.bn, 0
  %i.bo = zext i1 %.not8.2.i to i32
  %i.bp = lshr i64 %i.bc, 8
  %i.bq = xor i64 %i.bp, %i.bc
  %i.br = and i64 %i.bq, 71777214294589695
  %.not8.3.i = icmp ne i64 %i.br, 0
  %i.bs = zext i1 %.not8.3.i to i32
  %i.bt = lshr i64 %i.bc, 16
  %i.bu = xor i64 %i.bt, %i.bc
  %i.bv = and i64 %i.bu, 281470681808895
  %.not8.4.i = icmp ne i64 %i.bv, 0
  %i.bw = zext i1 %.not8.4.i to i32
  %i.bx = lshr i64 %i.bc, 32
  %i.by = and i64 %i.bc, 4294967295
  %.not8.5.i = icmp ne i64 %i.bx, %i.by
  %i.bz = zext i1 %.not8.5.i to i32
  %spec.select.1.i = add nuw nsw i32 %i.bk, %i.bz
  %spec.select.2.i = add nuw nsw i32 %spec.select.1.i, %i.bg
  %spec.select.3.i = add nuw nsw i32 %spec.select.2.i, %i.bo
  %spec.select.4.i = add nuw nsw i32 %spec.select.3.i, %i.bs
  %spec.select.5.i = add nuw nsw i32 %spec.select.4.i, %i.bw
  %i.ca = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.6, i32 noundef %i.bb, i32 noundef %spec.select.5.i) #22 ; 0 uses
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next52, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.o, !llvm.loop !42

.critedge:                                        ; preds = %bb.o, %Vec_PtrAlloc.exit, %Vec_PtrSort.exit
  %i.cb = tail call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  %i.cc = load ptr, ptr %i.l, align 8, !tbaa !47  ; 2 uses
  %.not.i33 = icmp eq ptr %i.cc, null
  br i1 %.not.i33, label %Vec_PtrFree.exit, label %bb.p

bb.p:                                             ; preds = %.critedge
  tail call void @free(ptr noundef nonnull %i.cc) #22
  br label %Vec_PtrFree.exit

Vec_PtrFree.exit:                                 ; preds = %.critedge, %bb.p
  tail call void @free(ptr noundef nonnull %i.e) #22
  br label %bb.q

bb.q:                                             ; preds = %Vec_PtrFree.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1, 2) i32 @Npn_ManCompareEntries(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #12 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !49
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !25
  %i.d = load ptr, ptr %1, align 8, !tbaa !49
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !25
  %.0 = tail call i32 @llvm.scmp.i32.i32(i32 %i.f, i32 %i.c)
  ret i32 %.0
}

declare void @Extra_PrintHexadecimal(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define noalias noundef ptr @Npn_ManStart(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #23 ; 13 uses
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i32 100, ptr %i.c, align 4, !tbaa !24
  %i.d = tail call noalias dereferenceable_or_null(1600) ptr @malloc(i64 noundef 1600) #21
  store ptr %i.d, ptr %i.a, align 8, !tbaa !18
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.i.backedge, %bb.b
  %.012.i = phi i32 [ 49, %bb.b ], [ %i.e, %.critedge.i.backedge ] ; 2 uses
  %i.e = add i32 %.012.i, 1                       ; 6 uses
  %i.f = and i32 %.012.i, 1
  %.not.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.not.i, label %.preheader.i, label %.critedge.i.backedge

.critedge.i.backedge:                             ; preds = %.lr.ph.i, %.critedge.i
  br label %.critedge.i

.preheader.i:                                     ; preds = %.critedge.i
  %.not15.i = icmp ult i32 %i.e, 9
  br i1 %.not15.i, label %Abc_PrimeCudd.exit, label %.lr.ph.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.g = add nuw nsw i32 %.01116.i, 2             ; 3 uses
  %i.h = mul nuw nsw i32 %i.g, %i.g
  %.not.i = icmp ugt i32 %i.h, %i.e
  br i1 %.not.i, label %Abc_PrimeCudd.exit, label %.lr.ph.i, !llvm.loop !0

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.c
  %.01116.i = phi i32 [ %i.g, %bb.c ], [ 3, %.preheader.i ] ; 2 uses
  %i.i = urem i32 %i.e, %.01116.i
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %.critedge.i.backedge, label %bb.c

Abc_PrimeCudd.exit:                               ; preds = %.preheader.i, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 %i.e, ptr %i.k, align 8, !tbaa !17
  %i.l = zext nneg i32 %i.e to i64
  %i.m = tail call noalias ptr @calloc(i64 noundef %i.l, i64 noundef 4) #23
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.m, ptr %i.n, align 8, !tbaa !16
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 1, ptr %i.o, align 8, !tbaa !23
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.p = tail call noalias ptr @fopen(ptr noundef nonnull %0, ptr noundef nonnull @.str.1) ; 2 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.d
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -1, ptr noundef nonnull @.str.2, ptr noundef nonnull %0)
  br label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.q = tail call i32 @fclose(ptr noundef nonnull %i.p) ; 0 uses
  %i.r = tail call i32 @Extra_FileSize(ptr noundef nonnull %0) #22
  %i.s = sdiv i32 %i.r, 20                        ; 2 uses
  %i.t = shl nsw i32 %i.s, 2                      ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i32 %i.t, ptr %i.u, align 4, !tbaa !24
  %i.v = sext i32 %i.t to i64
  %i.w = shl nsw i64 %i.v, 4
  %i.x = tail call noalias ptr @malloc(i64 noundef %i.w) #21
  store ptr %i.x, ptr %i.a, align 8, !tbaa !18
  %i.y = shl nsw i32 %i.s, 1
  %i.z = add nsw i32 %i.y, -1
  br label %.critedge.i32

.critedge.i32:                                    ; preds = %.critedge.i32.backedge, %bb.e
  %.012.i30 = phi i32 [ %i.z, %bb.e ], [ %i.aa, %.critedge.i32.backedge ] ; 2 uses
  %i.aa = add i32 %.012.i30, 1                    ; 6 uses
  %i.ab = and i32 %.012.i30, 1
  %.not.not.i31 = icmp eq i32 %i.ab, 0
  br i1 %.not.not.i31, label %.preheader.i33, label %.critedge.i32.backedge

.critedge.i32.backedge:                           ; preds = %.lr.ph.i35, %.critedge.i32
  br label %.critedge.i32

.preheader.i33:                                   ; preds = %.critedge.i32
  %.not15.i34 = icmp ult i32 %i.aa, 9
  br i1 %.not15.i34, label %.loopexit, label %.lr.ph.i35

bb.f:                                             ; preds = %.lr.ph.i35
  %i.ac = add nuw nsw i32 %.01116.i36, 2          ; 3 uses
  %i.ad = mul nuw nsw i32 %i.ac, %i.ac
  %.not.i37 = icmp ugt i32 %i.ad, %i.aa
  br i1 %.not.i37, label %.loopexit, label %.lr.ph.i35, !llvm.loop !0

.lr.ph.i35:                                       ; preds = %.preheader.i33, %bb.f
  %.01116.i36 = phi i32 [ %i.ac, %bb.f ], [ 3, %.preheader.i33 ] ; 2 uses
  %i.ae = urem i32 %i.aa, %.01116.i36
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %.critedge.i32.backedge, label %bb.f

.loopexit:                                        ; preds = %.preheader.i33, %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 %i.aa, ptr %i.ag, align 8, !tbaa !17
  %i.ah = zext nneg i32 %i.aa to i64
  %i.ai = tail call noalias ptr @calloc(i64 noundef %i.ah, i64 noundef 4) #23
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 1, ptr %i.ak, align 8, !tbaa !23
  tail call void @Npn_ManRead(ptr noundef nonnull %i.a, ptr noundef nonnull %0)
  br label %bb.g

bb.g:                                             ; preds = %Abc_PrimeCudd.exit, %.loopexit, %.thread
  %.1 = phi ptr [ null, %.thread ], [ %i.a, %.loopexit ], [ %i.a, %Abc_PrimeCudd.exit ]
end_hunk_0
