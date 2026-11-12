Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/aigMan?download=true
inline.NumInlined: 155
inline.NumDeleted: 45
begin_hunk_0_@Aig_ManStart:bb.a
  store i32 0, ptr %i.ac, align 4, !tbaa !24
  store i32 8, ptr %i.ab, align 8, !tbaa !46
  %i.ad = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #18
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !25
  %i.af = getelementptr inbounds nuw i8, ptr %calloc29, i64 520
  store ptr %i.ab, ptr %i.af, align 8, !tbaa !49
  %i.ag = tail call ptr @Aig_MmFixedStart(i32 noundef 48, i32 noundef %spec.store.select) #19 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %calloc29, i64 272
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !29
  %i.ai = tail call ptr @Aig_MmFixedEntryFetch(ptr noundef %i.ag) #19 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ai, i8 0, i64 48, i1 false)
  %.val.i = load i32, ptr %i.n, align 4, !tbaa !24 ; 8 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 36
  store i32 %.val.i, ptr %i.aj, align 4, !tbaa !30
  %i.ak = load i32, ptr %i.m, align 8, !tbaa !46
  %i.al = icmp eq i32 %.val.i, %i.ak
  br i1 %i.al, label %bb.b, label %.Aig_ManFetchMemory.exit_crit_edge

.Aig_ManFetchMemory.exit_crit_edge:               ; preds = %bb.a
  %.pre = load ptr, ptr %i.p, align 8, !tbaa !25
  br label %Aig_ManFetchMemory.exit

bb.b:                                             ; preds = %bb.a
  %i.am = icmp slt i32 %.val.i, 16
  br i1 %i.am, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.an = load ptr, ptr %i.p, align 8, !tbaa !25  ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not9.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ao = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.an, i64 noundef 128) #20
  br label %Vec_PtrGrow.exit12.sink.split.i.i

bb.e:                                             ; preds = %bb.c
  %i.ap = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #18
  br label %Vec_PtrGrow.exit12.sink.split.i.i

bb.f:                                             ; preds = %bb.b
  %i.aq = icmp samesign ult i32 %.val.i, 1073741823
  %i.ar = shl nuw nsw i32 %.val.i, 1
  %spec.select.i.i = select i1 %i.aq, i32 %i.ar, i32 2147483647 ; 4 uses
  %.not.i10.i.i = icmp samesign ult i32 %.val.i, %spec.select.i.i
  %.pre27 = load ptr, ptr %i.p, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i10.i.i, label %bb.g, label %Aig_ManFetchMemory.exit

bb.g:                                             ; preds = %bb.f
  %.not9.i11.i.i = icmp eq ptr %.pre27, null
  %i.as = zext nneg i32 %spec.select.i.i to i64
  %i.at = shl nuw nsw i64 %i.as, 3                ; 2 uses
  br i1 %.not9.i11.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.au = tail call ptr @realloc(ptr noundef nonnull %.pre27, i64 noundef %i.at) #20
  br label %Vec_PtrGrow.exit12.sink.split.i.i

bb.i:                                             ; preds = %bb.g
  %i.av = tail call noalias ptr @malloc(i64 noundef %i.at) #18
  br label %Vec_PtrGrow.exit12.sink.split.i.i

Vec_PtrGrow.exit12.sink.split.i.i:                ; preds = %bb.h, %bb.i, %bb.d, %bb.e
  %storemerge = phi ptr [ %i.ap, %bb.e ], [ %i.ao, %bb.d ], [ %i.au, %bb.h ], [ %i.av, %bb.i ] ; 2 uses
  %spec.select.sink.i.i = phi i32 [ 16, %bb.e ], [ 16, %bb.d ], [ %spec.select.i.i, %bb.h ], [ %spec.select.i.i, %bb.i ]
  store ptr %storemerge, ptr %i.p, align 8, !tbaa !25
  store i32 %spec.select.sink.i.i, ptr %i.m, align 8, !tbaa !46
  %.pre.i = load i32, ptr %i.n, align 4, !tbaa !24
  br label %Aig_ManFetchMemory.exit

Aig_ManFetchMemory.exit:                          ; preds = %.Aig_ManFetchMemory.exit_crit_edge, %bb.f, %Vec_PtrGrow.exit12.sink.split.i.i
  %i.aw = phi ptr [ %.pre, %.Aig_ManFetchMemory.exit_crit_edge ], [ %.pre27, %bb.f ], [ %storemerge, %Vec_PtrGrow.exit12.sink.split.i.i ]
  %i.ax = phi i32 [ %.val.i, %.Aig_ManFetchMemory.exit_crit_edge ], [ %.val.i, %bb.f ], [ %.pre.i, %Vec_PtrGrow.exit12.sink.split.i.i ] ; 2 uses
  %i.ay = add nsw i32 %i.ax, 1
  store i32 %i.ay, ptr %i.n, align 4, !tbaa !24
  %i.az = sext i32 %i.ax to i64
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.az
  store ptr %i.ai, ptr %i.ba, align 8, !tbaa !31
  %i.bb = getelementptr inbounds nuw i8, ptr %calloc29, i64 48
  store ptr %i.ai, ptr %i.bb, align 8, !tbaa !32
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ai, i64 24 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = and i64 %i.bd, -16
  %i.bf = or disjoint i64 %i.be, 9
  store i64 %i.bf, ptr %i.bc, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %calloc29, i64 132
  store i32 1, ptr %i.bg, align 4, !tbaa !33
  %i.bh = add nsw i32 %spec.store.select, -1
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.i.backedge, %Aig_ManFetchMemory.exit
  %.012.i = phi i32 [ %i.bh, %Aig_ManFetchMemory.exit ], [ %i.bi, %.critedge.i.backedge ] ; 2 uses
  %i.bi = add i32 %.012.i, 1                      ; 6 uses
  %i.bj = and i32 %.012.i, 1
  %.not.not.i = icmp eq i32 %i.bj, 0
  br i1 %.not.not.i, label %.preheader.i, label %.critedge.i.backedge

.critedge.i.backedge:                             ; preds = %.lr.ph.i, %.critedge.i
  br label %.critedge.i

.preheader.i:                                     ; preds = %.critedge.i
  %.not15.i = icmp ult i32 %i.bi, 9
  br i1 %.not15.i, label %Abc_PrimeCudd.exit, label %.lr.ph.i

bb.j:                                             ; preds = %.lr.ph.i
  %i.bk = add nuw nsw i32 %.01116.i, 2            ; 3 uses
  %i.bl = mul nuw nsw i32 %i.bk, %i.bk
  %.not.i = icmp ugt i32 %i.bl, %i.bi
  br i1 %.not.i, label %Abc_PrimeCudd.exit, label %.lr.ph.i, !llvm.loop !44

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.j
  %.01116.i = phi i32 [ %i.bk, %bb.j ], [ 3, %.preheader.i ] ; 2 uses
  %i.bm = urem i32 %i.bi, %.01116.i
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %.critedge.i.backedge, label %bb.j

Abc_PrimeCudd.exit:                               ; preds = %.preheader.i, %bb.j
  %i.bo = getelementptr inbounds nuw i8, ptr %calloc29, i64 168
  store i32 %i.bi, ptr %i.bo, align 8, !tbaa !50
  %i.bp = zext nneg i32 %i.bi to i64
  %i.bq = shl nuw nsw i64 %i.bp, 3
  %calloc = tail call ptr @calloc(i64 1, i64 %i.bq)
  %i.br = getelementptr inbounds nuw i8, ptr %calloc29, i64 160
  store ptr %calloc, ptr %i.br, align 8, !tbaa !35
  ret ptr %calloc29
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare ptr @Aig_MmFixedStart(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define noundef ptr @Aig_ManStartFrom(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %.val17 = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.b = getelementptr i8, ptr %.val17, i64 4
  %.val17.val = load i32, ptr %i.b, align 4, !tbaa !24
  %i.c = tail call ptr @Aig_ManStart(i32 noundef %.val17.val) ; 5 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !36     ; 3 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %Abc_UtilStrsav.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.d) #21
  %i.f = add i64 %i.e, 1
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.f) #18 ; 2 uses
  %i.h = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.g, ptr noundef nonnull readonly dereferenceable(1) %i.d) #19 ; 0 uses
  br label %Abc_UtilStrsav.exit

Abc_UtilStrsav.exit:                              ; preds = %bb.a, %bb.b
  %i.i = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ]
  store ptr %i.i, ptr %i.c, align 8, !tbaa !36
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !37   ; 3 uses
  %.not.i21 = icmp eq ptr %i.k, null
  br i1 %.not.i21, label %Abc_UtilStrsav.exit22, label %bb.c

bb.c:                                             ; preds = %Abc_UtilStrsav.exit
  %i.l = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.k) #21
  %i.m = add i64 %i.l, 1
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.m) #18 ; 2 uses
  %i.o = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.n, ptr noundef nonnull readonly dereferenceable(1) %i.k) #19 ; 0 uses
  br label %Abc_UtilStrsav.exit22

Abc_UtilStrsav.exit22:                            ; preds = %Abc_UtilStrsav.exit, %bb.c
  %i.p = phi ptr [ %i.n, %bb.c ], [ null, %Abc_UtilStrsav.exit ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.p, ptr %i.q, align 8, !tbaa !37
  %i.r = getelementptr i8, ptr %i.c, i64 48
  %.val19 = load ptr, ptr %i.r, align 8, !tbaa !32
  %i.s = getelementptr i8, ptr %0, i64 48
  %.val18 = load ptr, ptr %i.s, align 8, !tbaa !32
  %i.t = getelementptr inbounds nuw i8, ptr %.val18, i64 40
  store ptr %.val19, ptr %i.t, align 8, !tbaa !38
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !26   ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 4
  %.val23 = load i32, ptr %i.w, align 4, !tbaa !24
  %i.x = icmp sgt i32 %.val23, 0
  br i1 %i.x, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %Abc_UtilStrsav.exit22, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %Abc_UtilStrsav.exit22 ] ; 2 uses
  %i.y = phi ptr [ %i.aj, %.lr.ph ], [ %i.v, %Abc_UtilStrsav.exit22 ]
  %i.z = getelementptr i8, ptr %i.y, i64 8
  %.val20 = load ptr, ptr %i.z, align 8, !tbaa !25
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.val20, i64 %indvars.iv
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !31 ; 2 uses
  %i.ac = tail call ptr @Aig_ObjCreateCi(ptr noundef nonnull %i.c) #19 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %1 = load i64, ptr %i.ad, align 8
  %2 = and i64 %1, 72057589742960640
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 24 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = and i64 %i.af, -72057589742960641
  %i.ah = or disjoint i64 %i.ag, %2
  store i64 %i.ah, ptr %i.ae, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  store ptr %i.ac, ptr %i.ai, align 8, !tbaa !38
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aj = load ptr, ptr %i.u, align 8, !tbaa !26  ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 4
  %.val = load i32, ptr %i.ak, align 4, !tbaa !24
  %i.al = sext i32 %.val to i64
  %i.am = icmp slt i64 %indvars.iv.next, %i.al
  br i1 %i.am, label %.lr.ph, label %.critedge, !llvm.loop !51

.critedge:                                        ; preds = %.lr.ph, %Abc_UtilStrsav.exit22
  ret ptr %i.c
}

declare ptr @Aig_ObjCreateCi(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define ptr @Aig_ManDup_rec(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %2, i64 8          ; 3 uses
  %.val = load ptr, ptr %i.c, align 8, !tbaa !39
  %i.d = ptrtoint ptr %.val to i64
  %i.e = and i64 %i.d, -2
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = tail call ptr @Aig_ManDup_rec(ptr noundef %0, ptr noundef %1, ptr noundef %i.f) ; 0 uses
  %i.h = getelementptr i8, ptr %2, i64 24         ; 2 uses
  %.val20 = load i64, ptr %i.h, align 8
  %i.i = and i64 %.val20, 7
  %.not29 = icmp eq i64 %i.i, 4
  br i1 %.not29, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %.val22 = load ptr, ptr %i.c, align 8, !tbaa !39
  %i.j = ptrtoint ptr %.val22 to i64              ; 2 uses
  %i.k = and i64 %i.j, -2                         ; 2 uses
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !38
  %i.o = and i64 %i.j, 1
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = xor i64 %i.o, %i.p
  %i.r = inttoptr i64 %i.q to ptr
  br label %.sink.split

bb.e:                                             ; preds = %bb.b
  %i.s = getelementptr i8, ptr %2, i64 16         ; 2 uses
  %.val23 = load ptr, ptr %i.s, align 8, !tbaa !52
  %i.t = ptrtoint ptr %.val23 to i64
  %i.u = and i64 %i.t, -2
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = tail call ptr @Aig_ManDup_rec(ptr noundef %0, ptr noundef %1, ptr noundef %i.v) ; 0 uses
  %.val21 = load ptr, ptr %i.c, align 8, !tbaa !39
  %i.x = ptrtoint ptr %.val21 to i64              ; 2 uses
  %i.y = and i64 %i.x, -2                         ; 2 uses
  %.not.i26 = icmp eq i64 %i.y, 0
  br i1 %.not.i26, label %Aig_ObjChild0Copy.exit27, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !38
  %i.ac = and i64 %i.x, 1
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = xor i64 %i.ac, %i.ad
  %i.af = inttoptr i64 %i.ae to ptr
  br label %Aig_ObjChild0Copy.exit27

Aig_ObjChild0Copy.exit27:                         ; preds = %bb.e, %bb.f
  %i.ag = phi ptr [ %i.af, %bb.f ], [ null, %bb.e ]
  %.val24 = load ptr, ptr %i.s, align 8, !tbaa !52
  %i.ah = ptrtoint ptr %.val24 to i64             ; 2 uses
  %i.ai = and i64 %i.ah, -2                       ; 2 uses
  %.not.i28 = icmp eq i64 %i.ai, 0
  br i1 %.not.i28, label %Aig_ObjChild1Copy.exit, label %bb.g

bb.g:                                             ; preds = %Aig_ObjChild0Copy.exit27
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !38
  %i.am = and i64 %i.ah, 1
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = xor i64 %i.am, %i.an
  %i.ap = inttoptr i64 %i.ao to ptr
  br label %Aig_ObjChild1Copy.exit

Aig_ObjChild1Copy.exit:                           ; preds = %Aig_ObjChild0Copy.exit27, %bb.g
  %i.aq = phi ptr [ %i.ap, %bb.g ], [ null, %Aig_ObjChild0Copy.exit27 ]
  %.val25 = load i64, ptr %i.h, align 8
  %i.ar = trunc i64 %.val25 to i32
  %i.as = and i32 %i.ar, 7
  %i.at = tail call ptr @Aig_Oper(ptr noundef %0, ptr noundef %i.ag, ptr noundef %i.aq, i32 noundef %i.as) #19
  br label %.sink.split

.sink.split:                                      ; preds = %bb.d, %bb.c, %Aig_ObjChild1Copy.exit
  %.sink = phi ptr [ %i.at, %Aig_ObjChild1Copy.exit ], [ %i.r, %bb.d ], [ null, %bb.c ] ; 2 uses
  store ptr %.sink, ptr %i.a, align 8, !tbaa !38
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi ptr [ %i.b, %bb.a ], [ %.sink, %.sink.split ]
  ret ptr %.0
}

declare ptr @Aig_Oper(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define noundef ptr @Aig_ManExtractMiter(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %.val30 = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.b = getelementptr i8, ptr %.val30, i64 4
  %.val30.val = load i32, ptr %i.b, align 4, !tbaa !24
  %i.c = tail call ptr @Aig_ManStart(i32 noundef %.val30.val) ; 10 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !36     ; 3 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %Abc_UtilStrsav.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.d) #21
  %i.f = add i64 %i.e, 1
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.f) #18 ; 2 uses
  %i.h = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.g, ptr noundef nonnull readonly dereferenceable(1) %i.d) #19 ; 0 uses
  br label %Abc_UtilStrsav.exit

Abc_UtilStrsav.exit:                              ; preds = %bb.a, %bb.b
  %i.i = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ]
  store ptr %i.i, ptr %i.c, align 8, !tbaa !36
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !37   ; 3 uses
  %.not.i34 = icmp eq ptr %i.k, null
  br i1 %.not.i34, label %Abc_UtilStrsav.exit35, label %bb.c

bb.c:                                             ; preds = %Abc_UtilStrsav.exit
  %i.l = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.k) #21
  %i.m = add i64 %i.l, 1
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.m) #18 ; 2 uses
  %i.o = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.n, ptr noundef nonnull readonly dereferenceable(1) %i.k) #19 ; 0 uses
  br label %Abc_UtilStrsav.exit35

Abc_UtilStrsav.exit35:                            ; preds = %Abc_UtilStrsav.exit, %bb.c
  %i.p = phi ptr [ %i.n, %bb.c ], [ null, %Abc_UtilStrsav.exit ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.p, ptr %i.q, align 8, !tbaa !37
  tail call void @Aig_ManCleanData(ptr noundef nonnull %0) #19
  %i.r = getelementptr i8, ptr %i.c, i64 48
  %.val32 = load ptr, ptr %i.r, align 8, !tbaa !32
  %i.s = getelementptr i8, ptr %0, i64 48
  %.val31 = load ptr, ptr %i.s, align 8, !tbaa !32
  %i.t = getelementptr inbounds nuw i8, ptr %.val31, i64 40
  store ptr %.val32, ptr %i.t, align 8, !tbaa !38
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !26   ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 4
  %.val36 = load i32, ptr %i.w, align 4, !tbaa !24
  %i.x = icmp sgt i32 %.val36, 0
  br i1 %i.x, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %Abc_UtilStrsav.exit35, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %Abc_UtilStrsav.exit35 ] ; 2 uses
  %i.y = phi ptr [ %i.ae, %.lr.ph ], [ %i.v, %Abc_UtilStrsav.exit35 ]
  %i.z = getelementptr i8, ptr %i.y, i64 8
  %.val33 = load ptr, ptr %i.z, align 8, !tbaa !25
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.val33, i64 %indvars.iv
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !31
  %i.ac = tail call ptr @Aig_ObjCreateCi(ptr noundef nonnull %i.c) #19
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !38
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ae = load ptr, ptr %i.u, align 8, !tbaa !26  ; 2 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 4
  %.val = load i32, ptr %i.af, align 4, !tbaa !24
  %i.ag = sext i32 %.val to i64
  %i.ah = icmp slt i64 %indvars.iv.next, %i.ag
  br i1 %i.ah, label %.lr.ph, label %.critedge, !llvm.loop !53

.critedge:                                        ; preds = %.lr.ph, %Abc_UtilStrsav.exit35
  %i.ai = tail call ptr @Aig_ManDup_rec(ptr noundef nonnull %i.c, ptr noundef nonnull %0, ptr noundef %1) ; 0 uses
  %i.aj = tail call ptr @Aig_ManDup_rec(ptr noundef nonnull %i.c, ptr noundef nonnull %0, ptr noundef %2) ; 0 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !38
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !38
  %i.ao = tail call ptr @Aig_Exor(ptr noundef nonnull %i.c, ptr noundef %i.al, ptr noundef %i.an) #19
  %i.ap = ptrtoint ptr %i.ao to i64               ; 3 uses
  %i.aq = and i64 %i.ap, -2
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load i64, ptr %i.as, align 8
  %i.au = trunc i64 %i.at to i32
end_hunk_0
