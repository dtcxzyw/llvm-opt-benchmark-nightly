Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/abcMiter?download=true
inline.NumInlined: 332
inline.NumDeleted: 65
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@Abc_NtkCombinePos:bb.a
  %i.bb = icmp sgt i32 %.val36.val.lcssa, 0
  br i1 %i.bb, label %.critedge.preheader65, label %.critedge._crit_edge

.critedge.preheader65:                            ; preds = %.critedge.preheader
  %i.bc = zext nneg i32 %.val36.val.lcssa to i64
  br label %.critedge

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %.lr.ph.split
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next, %.lr.ph.split ] ; 2 uses
  %.val3658 = phi ptr [ %.val365482, %.lr.ph.split.preheader ], [ %.val36, %.lr.ph.split ]
  %.13256 = phi ptr [ %i.d, %.lr.ph.split.preheader ], [ %i.bt, %.lr.ph.split ]
  %i.bd = getelementptr i8, ptr %.val3658, i64 8
  %.val39.val = load ptr, ptr %i.bd, align 8, !tbaa !31
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %.val39.val, i64 %indvars.iv
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !32 ; 3 uses
  %i.bg = load ptr, ptr %i.l, align 8, !tbaa !36
  %.val.i = load ptr, ptr %i.bf, align 8, !tbaa !37
  %i.bh = getelementptr i8, ptr %i.bf, i64 32
  %.val2.i = load ptr, ptr %i.bh, align 8, !tbaa !38
  %i.bi = getelementptr i8, ptr %.val.i, i64 32
  %.val.val.i = load ptr, ptr %i.bi, align 8, !tbaa !27
  %.val2.val.i = load i32, ptr %.val2.i, align 4, !tbaa !39
  %i.bj = getelementptr i8, ptr %.val.val.i, i64 8
  %.val.val.val.i = load ptr, ptr %i.bj, align 8, !tbaa !31
  %i.bk = sext i32 %.val2.val.i to i64
  %i.bl = getelementptr inbounds [8 x i8], ptr %.val.val.val.i, i64 %i.bk
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !32
  %i.bn = getelementptr i8, ptr %i.bf, i64 20
  %.val3.i = load i32, ptr %i.bn, align 4
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = lshr i32 %.val3.i, 10
  %.lobit.i = and i32 %i.bp, 1
  %i.bq = zext nneg i32 %.lobit.i to i64
  %i.br = xor i64 %i.bq, %i.bo
  %i.bs = inttoptr i64 %i.br to ptr
  %i.bt = tail call ptr @Abc_AigAnd(ptr noundef %i.bg, ptr noundef %.13256, ptr noundef %i.bs) #17 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val36 = load ptr, ptr %i.a, align 8, !tbaa !46 ; 2 uses
  %i.bu = getelementptr i8, ptr %.val36, i64 4
  %.val36.val = load i32, ptr %i.bu, align 4, !tbaa !28 ; 2 uses
  %i.bv = sext i32 %.val36.val to i64
  %i.bw = icmp slt i64 %indvars.iv.next, %i.bv
  br i1 %i.bw, label %.lr.ph.split, label %.critedge.preheader, !llvm.loop !87

.critedge:                                        ; preds = %.critedge.preheader65, %.critedge
  %indvars.iv78 = phi i64 [ %i.bc, %.critedge.preheader65 ], [ %indvars.iv.next79, %.critedge ] ; 2 uses
  %indvars.iv.next79 = add nsw i64 %indvars.iv78, -1 ; 2 uses
  %.val38 = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.bx = getelementptr i8, ptr %.val38, i64 8
  %.val38.val = load ptr, ptr %i.bx, align 8, !tbaa !31
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %.val38.val, i64 %indvars.iv.next79
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !32
  tail call void @Abc_NtkDeleteObj(ptr noundef %i.bz) #17
  %i.ca = icmp samesign ugt i64 %indvars.iv78, 1
  br i1 %i.ca, label %.critedge, label %.critedge._crit_edge, !llvm.loop !88

.critedge._crit_edge:                             ; preds = %.critedge, %.thread, %bb.c, %.critedge.preheader
  %.132.lcssa92 = phi ptr [ %i.g, %bb.c ], [ %.132.lcssa, %.critedge.preheader ], [ %i.d, %.thread ], [ %.132.lcssa, %.critedge ]
  %i.cb = tail call ptr @Abc_NtkCreateObj(ptr noundef nonnull %0, i32 noundef 3) #17 ; 2 uses
  tail call void @Abc_ObjAddFanin(ptr noundef %i.cb, ptr noundef %.132.lcssa92) #17
  %i.cc = tail call ptr @Abc_ObjAssignName(ptr noundef %i.cb, ptr noundef nonnull @.str.17, ptr noundef null) #17 ; 0 uses
  tail call void @Abc_NtkOrderCisCos(ptr noundef nonnull %0) #17
  %i.cd = tail call i32 @Abc_NtkCheck(ptr noundef nonnull %0) #17
  %.not34 = icmp eq i32 %i.cd, 0
  br i1 %.not34, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.critedge._crit_edge
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.14) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %.critedge._crit_edge, %bb.a, %bb.d
  %.033 = phi i32 [ 0, %bb.d ], [ 1, %bb.a ], [ 1, %.critedge._crit_edge ]
  ret i32 %.033
}

declare void @Abc_NtkDeleteObj(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define noalias noundef ptr @Abc_NtkTryNewMiter(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = tail call ptr @Io_Read(ptr noundef %0, i32 noundef 19, i32 noundef 1, i32 noundef 0) #17 ; 2 uses
  %i.c = tail call ptr @Io_Read(ptr noundef %1, i32 noundef 19, i32 noundef 1, i32 noundef 0) #17 ; 2 uses
  %i.d = tail call ptr @Abc_NtkStrash(ptr noundef %i.b, i32 noundef 1, i32 noundef 1, i32 noundef 0) #17 ; 2 uses
  %i.e = tail call ptr @Abc_NtkStrash(ptr noundef %i.c, i32 noundef 1, i32 noundef 1, i32 noundef 0) #17 ; 2 uses
  %i.f = tail call ptr @Abc_NtkMiter(ptr noundef %i.d, ptr noundef %i.e, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 2 uses
  %i.g = tail call ptr @Abc_NtkClpGia(ptr noundef %i.f) #17 ; 5 uses
  tail call void @Abc_NtkDelete(ptr noundef %i.b) #17
  tail call void @Abc_NtkDelete(ptr noundef %i.c) #17
  tail call void @Abc_NtkDelete(ptr noundef %i.d) #17
  tail call void @Abc_NtkDelete(ptr noundef %i.e) #17
  tail call void @Abc_NtkDelete(ptr noundef %i.f) #17
  %i.h = getelementptr i8, ptr %i.g, i64 16       ; 5 uses
  %.val51 = load i32, ptr %i.h, align 8, !tbaa !89
  %i.i = getelementptr i8, ptr %i.g, i64 72       ; 4 uses
  %.val52 = load ptr, ptr %i.i, align 8, !tbaa !103
  %i.j = getelementptr i8, ptr %.val52, i64 4
  %.val52.val = load i32, ptr %i.j, align 4, !tbaa !64
  %i.k = sub nsw i32 %.val52.val, %.val51         ; 4 uses
  %i.l = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #18 ; 4 uses
  %i.m = add i32 %i.k, -1
  %or.cond.i.i = icmp ult i32 %i.m, 7
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 8, i32 %i.k ; 3 uses
  store i32 %spec.store.select.i.i, ptr %i.l, align 8, !tbaa !43
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %Vec_PtrStart.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = sext i32 %spec.store.select.i.i to i64
  %i.o = shl nsw i64 %i.n, 3
  %i.p = tail call noalias ptr @malloc(i64 noundef %i.o) #18
  br label %Vec_PtrStart.exit

Vec_PtrStart.exit:                                ; preds = %bb.a, %bb.b
  %i.q = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.q, ptr %i.s, align 8, !tbaa !31
  store i32 %i.k, ptr %i.r, align 4, !tbaa !28
  %i.t = sext i32 %i.k to i64
  %i.u = shl nsw i64 %i.t, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.q, i8 0, i64 %i.u, i1 false)
  %i.v = tail call ptr @Mf_ManGenerateCnf(ptr noundef nonnull %i.g, i32 noundef 8, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #17 ; 3 uses
  %.val53 = load i32, ptr %i.h, align 8, !tbaa !89
  %i.w = getelementptr i8, ptr %i.g, i64 64
  %.val54 = load ptr, ptr %i.w, align 8, !tbaa !104
  %i.x = getelementptr i8, ptr %.val54, i64 4
  %.val54.val = load i32, ptr %i.x, align 4, !tbaa !64
  %i.y = sub nsw i32 %.val54.val, %.val53         ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !105
  %i.ab = sext i32 %i.y to i64
  %i.ac = shl nsw i64 %i.ab, 2
  %i.ad = tail call noalias ptr @malloc(i64 noundef %i.ac) #18 ; 5 uses
  %i.ae = icmp sgt i32 %i.y, 0
  br i1 %i.ae, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %Vec_PtrStart.exit
  %i.af = sub i32 %i.aa, %i.y                     ; 2 uses
  %wide.trip.count = zext nneg i32 %i.y to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %i.y, 8
  br i1 %min.iters.check, label %.lr.ph.preheader69, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.af, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op = add <4 x i32> splat (i32 4), %broadcast.splat
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %index ; 2 uses
  %i.ah = add <4 x i32> %broadcast.splat, %vec.ind
  %.reass = add <4 x i32> %vec.ind, %invariant.op
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store <4 x i32> %i.ah, ptr %i.ag, align 4, !tbaa !39
  store <4 x i32> %.reass, ptr %i.ai, align 4, !tbaa !39
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !109

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader69

.lr.ph.preheader69:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader69, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader69 ] ; 3 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv
  %i.al = trunc i64 %indvars.iv to i32
  %i.am = add i32 %i.af, %i.al
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !39
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !112

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %Vec_PtrStart.exit
  %i.an = tail call ptr @Cnf_DataWriteIntoSolver(ptr noundef nonnull %i.v, i32 noundef 1, i32 noundef 0) #17 ; 3 uses
  tail call void @Cnf_DataFree(ptr noundef nonnull %i.v) #17
  %.val4957 = load i32, ptr %i.h, align 8, !tbaa !89
  %.val5058 = load ptr, ptr %i.i, align 8, !tbaa !103
  %i.ao = getelementptr i8, ptr %.val5058, i64 4
  %.val50.val59 = load i32, ptr %i.ao, align 4, !tbaa !64
  %i.ap = icmp sgt i32 %.val50.val59, %.val4957
  br i1 %i.ap, label %.lr.ph62, label %._crit_edge63

.lr.ph62:                                         ; preds = %._crit_edge
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph62, %bb.e
  %indvars.iv65 = phi i64 [ 0, %.lr.ph62 ], [ %indvars.iv.next66, %bb.e ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1 ; 3 uses
  %indvars.iv.next66.tr = trunc i64 %indvars.iv.next66 to i32
  %i.ar = shl i32 %indvars.iv.next66.tr, 1
  store i32 %i.ar, ptr %i.a, align 4, !tbaa !39
  %i.as = call i32 @sat_solver_solve(ptr noundef %i.an, ptr noundef nonnull %i.a, ptr noundef nonnull %i.aq, i64 noundef 100000, i64 noundef 0, i64 noundef 0, i64 noundef 0) #17
  %i.at = icmp eq i32 %i.as, -1
  br i1 %i.at, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.au = call ptr @Sat_SolverGetModel(ptr noundef %i.an, ptr noundef %i.ad, i32 noundef %i.y) #17
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv65
  store ptr %i.au, ptr %i.av, align 8, !tbaa !32
  %.val = load i32, ptr %i.h, align 8, !tbaa !89
  %.val48 = load ptr, ptr %i.i, align 8, !tbaa !103
  %i.aw = getelementptr i8, ptr %.val48, i64 4
  %.val48.val = load i32, ptr %i.aw, align 4, !tbaa !64
  %i.ax = sub nsw i32 %.val48.val, %.val
  %i.ay = trunc nuw nsw i64 %indvars.iv65 to i32
  %i.az = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.ay, i32 noundef %i.ax) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %.val49 = load i32, ptr %i.h, align 8, !tbaa !89
  %.val50 = load ptr, ptr %i.i, align 8, !tbaa !103
  %i.ba = getelementptr i8, ptr %.val50, i64 4
  %.val50.val = load i32, ptr %i.ba, align 4, !tbaa !64
  %i.bb = sub nsw i32 %.val50.val, %.val49
  %i.bc = sext i32 %i.bb to i64
  %i.bd = icmp slt i64 %indvars.iv.next66, %i.bc
  br i1 %i.bd, label %bb.c, label %._crit_edge63, !llvm.loop !113

._crit_edge63:                                    ; preds = %bb.e, %._crit_edge
  call void @Gia_ManStop(ptr noundef nonnull %i.g) #17
  call void @sat_solver_delete(ptr noundef %i.an) #17
  %.not = icmp eq ptr %i.ad, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge63
  call void @free(ptr noundef nonnull %i.ad) #17
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge63, %bb.f
  ret ptr %i.l
}

declare ptr @Io_Read(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Abc_NtkClpGia(ptr noundef) local_unnamed_addr #2

declare ptr @Mf_ManGenerateCnf(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

declare ptr @Cnf_DataWriteIntoSolver(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @Cnf_DataFree(ptr noundef) local_unnamed_addr #2

declare i32 @sat_solver_solve(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @Sat_SolverGetModel(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Gia_ManStop(ptr noundef) local_unnamed_addr #2

declare void @sat_solver_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define noalias noundef ptr @Abc_NtkReadNodeNames(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [1000 x i8], align 16             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.b = tail call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str.20) ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, ptr noundef %1) ; 0 uses
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #18 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  store i32 0, ptr %i.f, align 4, !tbaa !28
  store i32 100, ptr %i.e, align 8, !tbaa !43
  %i.g = tail call noalias dereferenceable_or_null(800) ptr @malloc(i64 noundef 800) #18 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8, !tbaa !31
  %i.i = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 1000, ptr noundef nonnull %i.b)
  %.not30 = icmp eq ptr %i.i, null
  br i1 %.not30, label %.critedge._crit_edge, label %.lr.ph31

.critedge.loopexit:                               ; preds = %bb.o, %.lr.ph31
  %i.j = phi ptr [ %i.o, %.lr.ph31 ], [ %i.aj, %bb.o ]
  %i.k = phi ptr [ %i.p, %.lr.ph31 ], [ %i.aj, %bb.o ]
  %i.l = phi i32 [ %i.q, %.lr.ph31 ], [ %i.ak, %bb.o ]
  %i.m = phi i32 [ %i.r, %.lr.ph31 ], [ %i.al, %bb.o ]
  %i.n = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 1000, ptr noundef nonnull %i.b)
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %.critedge._crit_edge, label %.lr.ph31

.lr.ph31:                                         ; preds = %bb.c, %.critedge.loopexit
  %i.o = phi ptr [ %i.j, %.critedge.loopexit ], [ %i.g, %bb.c ] ; 2 uses
  %i.p = phi ptr [ %i.k, %.critedge.loopexit ], [ %i.g, %bb.c ] ; 2 uses
  %i.q = phi i32 [ %i.l, %.critedge.loopexit ], [ 100, %bb.c ] ; 2 uses
  %i.r = phi i32 [ %i.m, %.critedge.loopexit ], [ 0, %bb.c ] ; 2 uses
  %i.s = call ptr @strtok(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.22) #17 ; 2 uses
  %.not2428 = icmp eq ptr %i.s, null
  br i1 %.not2428, label %.critedge.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph31, %bb.o
  %i.t = phi ptr [ %i.aj, %bb.o ], [ %i.o, %.lr.ph31 ] ; 4 uses
  %i.u = phi ptr [ %i.aj, %bb.o ], [ %i.p, %.lr.ph31 ] ; 4 uses
  %i.v = phi i32 [ %i.ak, %bb.o ], [ %i.q, %.lr.ph31 ] ; 7 uses
  %i.w = phi i32 [ %i.al, %bb.o ], [ %i.r, %.lr.ph31 ] ; 3 uses
  %.029 = phi ptr [ %i.ao, %bb.o ], [ %i.s, %.lr.ph31 ] ; 2 uses
  %i.x = call ptr @Abc_NtkFindNode(ptr noundef %0, ptr noundef nonnull %.029) #17 ; 2 uses
  %.not25 = icmp eq ptr %i.x, null
  br i1 %.not25, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.lr.ph
  %i.y = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, ptr noundef nonnull %.029) ; 0 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %bb.p, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @free(ptr noundef nonnull %i.t) #17
  br label %bb.p

bb.f:                                             ; preds = %.lr.ph
  %i.z = icmp eq i32 %i.w, %i.v
  br i1 %i.z, label %bb.g, label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.aa = icmp slt i32 %i.v, 16
  br i1 %i.aa, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %.not9.i.i = icmp eq ptr %i.u, null
  br i1 %.not9.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.u, i64 noundef 128) #19
  br label %Vec_PtrGrow.exit12.sink.split.i

bb.j:                                             ; preds = %bb.h
  %i.ac = call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #18
  br label %Vec_PtrGrow.exit12.sink.split.i

bb.k:                                             ; preds = %bb.g
  %i.ad = icmp samesign ult i32 %i.v, 1073741823
  %i.ae = shl nuw nsw i32 %i.v, 1
  %spec.select.i = select i1 %i.ad, i32 %i.ae, i32 2147483647 ; 4 uses
  %.not.i10.i = icmp samesign ult i32 %i.v, %spec.select.i
  br i1 %.not.i10.i, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %.not9.i11.i = icmp eq ptr %i.u, null
  %i.af = zext nneg i32 %spec.select.i to i64
  %i.ag = shl nuw nsw i64 %i.af, 3                ; 2 uses
  br i1 %.not9.i11.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = call ptr @realloc(ptr noundef nonnull %i.u, i64 noundef %i.ag) #19
  br label %Vec_PtrGrow.exit12.sink.split.i

bb.n:                                             ; preds = %bb.l
  %i.ai = call noalias ptr @malloc(i64 noundef %i.ag) #18
  br label %Vec_PtrGrow.exit12.sink.split.i

Vec_PtrGrow.exit12.sink.split.i:                  ; preds = %bb.m, %bb.n, %bb.i, %bb.j
  %storemerge = phi ptr [ %i.ac, %bb.j ], [ %i.ab, %bb.i ], [ %i.ah, %bb.m ], [ %i.ai, %bb.n ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.j ], [ 16, %bb.i ], [ %spec.select.i, %bb.m ], [ %spec.select.i, %bb.n ] ; 2 uses
  store ptr %storemerge, ptr %i.h, align 8, !tbaa !31
  store i32 %spec.select.sink.i, ptr %i.e, align 8, !tbaa !43
  br label %bb.o

bb.o:                                             ; preds = %Vec_PtrGrow.exit12.sink.split.i, %bb.k, %bb.f
  %i.aj = phi ptr [ %storemerge, %Vec_PtrGrow.exit12.sink.split.i ], [ %i.t, %bb.k ], [ %i.t, %bb.f ] ; 5 uses
  %i.ak = phi i32 [ %spec.select.sink.i, %Vec_PtrGrow.exit12.sink.split.i ], [ %i.v, %bb.k ], [ %i.v, %bb.f ] ; 2 uses
  %i.al = add nsw i32 %i.w, 1                     ; 3 uses
  store i32 %i.al, ptr %i.f, align 4, !tbaa !28
  %i.am = sext i32 %i.w to i64
  %i.an = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.am
  store ptr %i.x, ptr %i.an, align 8, !tbaa !32
  %i.ao = call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.22) #17 ; 2 uses
  %.not24 = icmp eq ptr %i.ao, null
  br i1 %.not24, label %.critedge.loopexit, label %.lr.ph, !llvm.loop !114

bb.p:                                             ; preds = %bb.e, %bb.d
  call void @free(ptr noundef nonnull %i.e) #17
  %i.ap = call i32 @fclose(ptr noundef nonnull %i.b) ; 0 uses
  br label %bb.q, !llvm.loop !115

.critedge._crit_edge:                             ; preds = %.critedge.loopexit, %bb.c
  %i.aq = call i32 @fclose(ptr noundef nonnull %i.b) ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.critedge._crit_edge, %bb.b
  %.4 = phi ptr [ null, %bb.b ], [ null, %bb.p ], [ %i.e, %.critedge._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret ptr %.4
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef writeonly, i32 noundef, ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare ptr @strtok(ptr noundef, ptr noundef readonly captures(none)) local_unnamed_addr #9

declare ptr @Abc_NtkFindNode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define ptr @Abc_NtkSpecialMuxTree_rec(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %2, 0
  br i1 %i.a, label %common.ret, label %bb.b

common.ret:                                       ; preds = %bb.a
  %i.b = sext i32 %4 to i64
  %i.c = getelementptr inbounds [8 x i8], ptr %3, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !53
  br label %common.ret20

common.ret20:                                     ; preds = %bb.b, %common.ret
  %common.ret20.op = phi ptr [ %i.d, %common.ret ], [ %i.m, %bb.b ]
  ret ptr %common.ret20.op

bb.b:                                             ; preds = %bb.a
  %i.e = add nsw i32 %2, -1                       ; 4 uses
  %i.f = tail call ptr @Abc_NtkSpecialMuxTree_rec(ptr noundef %0, ptr noundef %1, i32 noundef %i.e, ptr noundef %3, i32 noundef %4)
  %i.g = shl nuw i32 1, %i.e
  %i.h = add nsw i32 %4, %i.g
  %i.i = tail call ptr @Abc_NtkSpecialMuxTree_rec(ptr noundef %0, ptr noundef %1, i32 noundef %i.e, ptr noundef %3, i32 noundef %i.h)
  %i.j = sext i32 %i.e to i64
  %i.k = getelementptr inbounds [8 x i8], ptr %1, i64 %i.j
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !53
  %i.m = tail call ptr @Abc_NtkCreateNodeMux(ptr noundef %0, ptr noundef %i.l, ptr noundef %i.i, ptr noundef %i.f) #17
  br label %common.ret20
}

declare ptr @Abc_NtkCreateNodeMux(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @Abc_NtkSpecialMiter(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [1000 x i8], align 16             ; 5 uses
  %i.b = getelementptr i8, ptr %1, i64 4          ; 4 uses
  %.val158 = load i32, ptr %i.b, align 4, !tbaa !28 ; 2 uses
  %i.c = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #18 ; 5 uses
  %i.d = add i32 %.val158, -1
  %or.cond.i = icmp ult i32 %i.d, 15
  %spec.store.select.i = select i1 %or.cond.i, i32 16, i32 %.val158 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  store i32 0, ptr %i.e, align 4, !tbaa !64
  store i32 %spec.store.select.i, ptr %i.c, align 8, !tbaa !116
  %.not.i = icmp eq i32 %spec.store.select.i, 0
  br i1 %.not.i, label %Vec_IntAlloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = sext i32 %spec.store.select.i to i64
  %i.g = shl nsw i64 %i.f, 2
  %i.h = tail call noalias ptr @malloc(i64 noundef %i.g) #18
  br label %Vec_IntAlloc.exit

Vec_IntAlloc.exit:                                ; preds = %bb.a, %bb.b
  %.promoted261 = phi ptr [ %i.h, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  store ptr %.promoted261, ptr %i.i, align 8, !tbaa !65
  %i.j = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #18 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 4 uses
  store i32 0, ptr %i.k, align 4, !tbaa !28
  store i32 100, ptr %i.j, align 8, !tbaa !43
  %i.l = tail call noalias dereferenceable_or_null(800) ptr @malloc(i64 noundef 800) #18
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 7 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !31
  %i.n = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #18 ; 10 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 10 uses
  store i32 0, ptr %i.o, align 4, !tbaa !28
  store i32 100, ptr %i.n, align 8, !tbaa !43
  %i.p = tail call noalias dereferenceable_or_null(800) ptr @malloc(i64 noundef 800) #18
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 13 uses
  store ptr %i.p, ptr %i.q, align 8, !tbaa !31
  %i.r = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #18 ; 9 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4 ; 4 uses
  store i32 0, ptr %i.s, align 4, !tbaa !28
  store i32 100, ptr %i.r, align 8, !tbaa !43
  %i.t = tail call noalias dereferenceable_or_null(800) ptr @malloc(i64 noundef 800) #18
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 12 uses
  store ptr %i.t, ptr %i.u, align 8, !tbaa !31
  %i.v = tail call ptr @Abc_NtkDfs(ptr noundef %0, i32 noundef 1) #17 ; 5 uses
  %i.w = getelementptr i8, ptr %0, i64 32
  %.val183 = load ptr, ptr %i.w, align 8, !tbaa !27
  %i.x = getelementptr i8, ptr %.val183, i64 4
  %.val183.val = load i32, ptr %i.x, align 4, !tbaa !28 ; 4 uses
  %i.y = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #18 ; 4 uses
  %i.z = add i32 %.val183.val, -1
  %or.cond.i.i = icmp ult i32 %i.z, 7
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 8, i32 %.val183.val ; 3 uses
  store i32 %spec.store.select.i.i, ptr %i.y, align 8, !tbaa !43
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %Vec_PtrStart.exit, label %bb.c

bb.c:                                             ; preds = %Vec_IntAlloc.exit
  %i.aa = sext i32 %spec.store.select.i.i to i64
  %i.ab = shl nsw i64 %i.aa, 3
  %i.ac = tail call noalias ptr @malloc(i64 noundef %i.ab) #18
  br label %Vec_PtrStart.exit

Vec_PtrStart.exit:                                ; preds = %Vec_IntAlloc.exit, %bb.c
  %i.ad = phi ptr [ %i.ac, %bb.c ], [ null, %Vec_IntAlloc.exit ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 3 uses
  store ptr %i.ad, ptr %i.af, align 8, !tbaa !31
  store i32 %.val183.val, ptr %i.ae, align 4, !tbaa !28
  %i.ag = sext i32 %.val183.val to i64
  %i.ah = shl nsw i64 %i.ag, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ad, i8 0, i64 %i.ah, i1 false)
  tail call void @Abc_NtkCleanCopy(ptr noundef nonnull %0) #17
  tail call void @Abc_NtkCleanMarkA(ptr noundef nonnull %0) #17
  %.val157253 = load i32, ptr %i.b, align 4, !tbaa !28
  %i.ai = icmp sgt i32 %.val157253, 0
  br i1 %i.ai, label %.lr.ph256, label %.critedge

.lr.ph256:                                        ; preds = %Vec_PtrStart.exit
  %i.aj = getelementptr i8, ptr %1, i64 8
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph256, %._crit_edge
  %indvars.iv301 = phi i64 [ 0, %.lr.ph256 ], [ %indvars.iv.next302, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph256 ], [ %indvars.iv.next, %._crit_edge ] ; 7 uses
  %storemerge248262 = phi ptr [ %.promoted261, %.lr.ph256 ], [ %storemerge248263, %._crit_edge ] ; 6 uses
  %spec.select.sink.i260 = phi i32 [ %spec.store.select.i, %.lr.ph256 ], [ %spec.select.sink.i259, %._crit_edge ] ; 3 uses
  %.0255 = phi i32 [ 0, %.lr.ph256 ], [ %i.be, %._crit_edge ] ; 2 uses
  %.val165 = load ptr, ptr %i.aj, align 8, !tbaa !31
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.val165, i64 %indvars.iv301
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 20 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = or i32 %i.an, 16
  store i32 %i.ao, ptr %i.am, align 4
  %i.ap = trunc nsw i64 %indvars.iv to i32
  %i.aq = icmp eq i32 %spec.select.sink.i260, %i.ap
  br i1 %i.aq, label %bb.e, label %Vec_IntPush.exit

bb.e:                                             ; preds = %bb.d
  %i.ar = icmp samesign ult i64 %indvars.iv, 16
  br i1 %i.ar, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %.not9.i.i = icmp eq ptr %storemerge248262, null
  br i1 %.not9.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.as = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge248262, i64 noundef 64) #19
  br label %Vec_IntPush.exit

bb.h:                                             ; preds = %bb.f
  %i.at = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #18
  br label %Vec_IntPush.exit

bb.i:                                             ; preds = %bb.e
  %i.au = icmp samesign ult i64 %indvars.iv, 1073741823
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.av = shl i32 %indvars.iv.tr, 1
  %spec.select.i = select i1 %i.au, i32 %i.av, i32 2147483647 ; 4 uses
  %i.aw = sext i32 %spec.select.i to i64
  %.not.i9.i = icmp samesign ult i64 %indvars.iv, %i.aw
  br i1 %.not.i9.i, label %bb.j, label %Vec_IntPush.exit

bb.j:                                             ; preds = %bb.i
  %.not9.i10.i = icmp eq ptr %storemerge248262, null
  %i.ax = zext nneg i32 %spec.select.i to i64
  %i.ay = shl nuw nsw i64 %i.ax, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.az = tail call ptr @realloc(ptr noundef nonnull %storemerge248262, i64 noundef %i.ay) #19
  br label %Vec_IntPush.exit

bb.l:                                             ; preds = %bb.j
  %i.ba = tail call noalias ptr @malloc(i64 noundef %i.ay) #18
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.h, %bb.g, %bb.l, %bb.k, %bb.d, %bb.i
  %storemerge248263 = phi ptr [ %storemerge248262, %bb.d ], [ %storemerge248262, %bb.i ], [ %i.at, %bb.h ], [ %i.as, %bb.g ], [ %i.az, %bb.k ], [ %i.ba, %bb.l ] ; 3 uses
  %spec.select.sink.i259 = phi i32 [ %spec.select.sink.i260, %bb.d ], [ %spec.select.sink.i260, %bb.i ], [ 16, %bb.h ], [ 16, %bb.g ], [ %spec.select.i, %bb.k ], [ %spec.select.i, %bb.l ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %storemerge248263, i64 %indvars.iv
  store i32 %.0255, ptr %i.bb, align 4, !tbaa !39
  %i.bc = getelementptr i8, ptr %i.al, i64 28     ; 2 uses
  %.val179 = load i32, ptr %i.bc, align 4, !tbaa !33 ; 2 uses
  %i.bd = shl nuw i32 1, %.val179
  %i.be = add nsw i32 %i.bd, %.0255
  %.not298 = icmp eq i32 %.val179, 31
  br i1 %.not298, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %Vec_IntPush.exit, %Vec_PtrPush.exit
  %.0146252 = phi i32 [ %i.cc, %Vec_PtrPush.exit ], [ 0, %Vec_IntPush.exit ] ; 2 uses
  %i.bf = tail call ptr @Abc_ObjName(ptr noundef nonnull %i.al) #17
  %i.bg = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.24, ptr noundef %i.bf, i32 noundef %.0146252) #17 ; 0 uses
  %i.bh = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.a) #20
  %i.bi = add i64 %i.bh, 1
  %i.bj = tail call noalias noundef ptr @malloc(i64 noundef %i.bi) #18 ; 2 uses
  %i.bk = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.bj, ptr noundef nonnull readonly dereferenceable(1) %i.a) #17 ; 0 uses
  %i.bl = load i32, ptr %i.k, align 4, !tbaa !28  ; 7 uses
  %i.bm = load i32, ptr %i.j, align 8, !tbaa !43
  %i.bn = icmp eq i32 %i.bl, %i.bm
  br i1 %i.bn, label %bb.m, label %.lr.ph.Vec_PtrPush.exit_crit_edge

.lr.ph.Vec_PtrPush.exit_crit_edge:                ; preds = %.lr.ph
  %.pre = load ptr, ptr %i.m, align 8, !tbaa !31
  br label %Vec_PtrPush.exit

bb.m:                                             ; preds = %.lr.ph
  %i.bo = icmp slt i32 %i.bl, 16
  br i1 %i.bo, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.bp = load ptr, ptr %i.m, align 8, !tbaa !31  ; 2 uses
  %.not9.i.i195 = icmp eq ptr %i.bp, null
  br i1 %.not9.i.i195, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bq = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.bp, i64 noundef 128) #19
  br label %Vec_PtrGrow.exit12.sink.split.i

bb.p:                                             ; preds = %bb.n
  %i.br = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #18
  br label %Vec_PtrGrow.exit12.sink.split.i

bb.q:                                             ; preds = %bb.m
  %i.bs = icmp samesign ult i32 %i.bl, 1073741823
  %i.bt = shl nuw nsw i32 %i.bl, 1
  %spec.select.i193 = select i1 %i.bs, i32 %i.bt, i32 2147483647 ; 4 uses
  %.not.i10.i = icmp samesign ult i32 %i.bl, %spec.select.i193
  %.pre334 = load ptr, ptr %i.m, align 8, !tbaa !31 ; 3 uses
  br i1 %.not.i10.i, label %bb.r, label %Vec_PtrPush.exit

bb.r:                                             ; preds = %bb.q
  %.not9.i11.i = icmp eq ptr %.pre334, null
  %i.bu = zext nneg i32 %spec.select.i193 to i64
  %i.bv = shl nuw nsw i64 %i.bu, 3                ; 2 uses
  br i1 %.not9.i11.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bw = tail call ptr @realloc(ptr noundef nonnull %.pre334, i64 noundef %i.bv) #19
  br label %Vec_PtrGrow.exit12.sink.split.i

bb.t:                                             ; preds = %bb.r
  %i.bx = tail call noalias ptr @malloc(i64 noundef %i.bv) #18
  br label %Vec_PtrGrow.exit12.sink.split.i

Vec_PtrGrow.exit12.sink.split.i:                  ; preds = %bb.s, %bb.t, %bb.o, %bb.p
  %storemerge249 = phi ptr [ %i.br, %bb.p ], [ %i.bq, %bb.o ], [ %i.bw, %bb.s ], [ %i.bx, %bb.t ] ; 2 uses
  %spec.select.sink.i194 = phi i32 [ 16, %bb.p ], [ 16, %bb.o ], [ %spec.select.i193, %bb.s ], [ %spec.select.i193, %bb.t ]
  store ptr %storemerge249, ptr %i.m, align 8, !tbaa !31
  store i32 %spec.select.sink.i194, ptr %i.j, align 8, !tbaa !43
  br label %Vec_PtrPush.exit

Vec_PtrPush.exit:                                 ; preds = %.lr.ph.Vec_PtrPush.exit_crit_edge, %bb.q, %Vec_PtrGrow.exit12.sink.split.i
  %i.by = phi ptr [ %.pre, %.lr.ph.Vec_PtrPush.exit_crit_edge ], [ %.pre334, %bb.q ], [ %storemerge249, %Vec_PtrGrow.exit12.sink.split.i ]
  %i.bz = add nsw i32 %i.bl, 1
  store i32 %i.bz, ptr %i.k, align 4, !tbaa !28
  %i.ca = sext i32 %i.bl to i64
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.by, i64 %i.ca
  store ptr %i.bj, ptr %i.cb, align 8, !tbaa !32
  %i.cc = add nuw nsw i32 %.0146252, 1            ; 2 uses
  %.val178 = load i32, ptr %i.bc, align 4, !tbaa !33
  %i.cd = shl nuw i32 1, %.val178
  %i.ce = icmp slt i32 %i.cc, %i.cd
  br i1 %i.ce, label %.lr.ph, label %._crit_edge, !llvm.loop !117

._crit_edge:                                      ; preds = %Vec_PtrPush.exit, %Vec_IntPush.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %indvars.iv.next302 = add nuw nsw i64 %indvars.iv301, 1 ; 2 uses
  %.val157 = load i32, ptr %i.b, align 4, !tbaa !28
  %i.cf = sext i32 %.val157 to i64
  %i.cg = icmp slt i64 %indvars.iv.next302, %i.cf
  br i1 %i.cg, label %bb.d, label %..critedge_crit_edge, !llvm.loop !118

..critedge_crit_edge:                             ; preds = %._crit_edge
  %i.ch = trunc nsw i64 %indvars.iv.next to i32
  store i32 %i.ch, ptr %i.e, align 4, !tbaa !64
  store i32 %spec.select.sink.i259, ptr %i.c, align 8
  store ptr %storemerge248263, ptr %i.i, align 8
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge, %Vec_PtrStart.exit
  %i.ci = load i32, ptr %0, align 8, !tbaa !8
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !119
  %i.cl = tail call ptr @Abc_NtkAlloc(i32 noundef %i.ci, i32 noundef %i.ck, i32 noundef 1) #17 ; 11 uses
  %i.cm = tail call ptr @Extra_UtilStrsav(ptr noundef nonnull @.str.17) #17
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store ptr %i.cm, ptr %i.cn, align 8, !tbaa !26
  %.val156 = load i32, ptr %i.k, align 4, !tbaa !28 ; 3 uses
  %i.co = icmp sgt i32 %.val156, 0                ; 2 uses
  br i1 %i.co, label %.lr.ph265, label %.critedge2.preheader

.lr.ph265:                                        ; preds = %.critedge
  %.val164 = load ptr, ptr %i.m, align 8, !tbaa !31
  %wide.trip.count = zext nneg i32 %.val156 to i64
  br label %bb.u

.critedge2.preheader:                             ; preds = %bb.u, %.critedge
  %i.cp = getelementptr i8, ptr %0, i64 56        ; 2 uses
  %.val159266 = load ptr, ptr %i.cp, align 8, !tbaa !55 ; 2 uses
  %i.cq = getelementptr i8, ptr %.val159266, i64 4
  %.val159.val267 = load i32, ptr %i.cq, align 4, !tbaa !28
  %i.cr = icmp sgt i32 %.val159.val267, 0
  br i1 %i.cr, label %.critedge2, label %.critedge4.preheader

bb.u:                                             ; preds = %.lr.ph265, %bb.u
  %indvars.iv306 = phi i64 [ 0, %.lr.ph265 ], [ %indvars.iv.next307, %bb.u ] ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %.val164, i64 %indvars.iv306
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !32
  %i.cu = tail call ptr @Abc_NtkCreateObj(ptr noundef nonnull %i.cl, i32 noundef 2) #17
  %i.cv = tail call ptr @Abc_ObjAssignName(ptr noundef %i.cu, ptr noundef %i.ct, ptr noundef null) #17 ; 0 uses
  %indvars.iv.next307 = add nuw nsw i64 %indvars.iv306, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next307, %wide.trip.count
  br i1 %exitcond.not, label %.critedge2.preheader, label %bb.u, !llvm.loop !120

.critedge4.preheader:                             ; preds = %.critedge2, %.critedge2.preheader
  %i.cw = getelementptr i8, ptr %i.v, i64 4       ; 3 uses
  %.val155283 = load i32, ptr %i.cw, align 4, !tbaa !28
  %i.cx = icmp sgt i32 %.val155283, 0
  br i1 %i.cx, label %.lr.ph285, label %.critedge12

.lr.ph285:                                        ; preds = %.critedge4.preheader
  %i.cy = getelementptr i8, ptr %i.v, i64 8
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.da = getelementptr i8, ptr %i.cl, i64 56
  br label %bb.v

.critedge2:                                       ; preds = %.critedge2.preheader, %.critedge2
  %indvars.iv309 = phi i64 [ %indvars.iv.next310, %.critedge2 ], [ 0, %.critedge2.preheader ] ; 2 uses
  %.val159269 = phi ptr [ %.val159, %.critedge2 ], [ %.val159266, %.critedge2.preheader ]
  %i.db = getelementptr i8, ptr %.val159269, i64 8
  %.val167.val = load ptr, ptr %i.db, align 8, !tbaa !31
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %.val167.val, i64 %indvars.iv309
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !32 ; 2 uses
  %i.de = tail call ptr @Abc_NtkDupObj(ptr noundef nonnull %i.cl, ptr noundef %i.dd, i32 noundef 1) #17
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 72
  store ptr %i.de, ptr %i.df, align 8, !tbaa !40
  %indvars.iv.next310 = add nuw nsw i64 %indvars.iv309, 1 ; 2 uses
  %.val159 = load ptr, ptr %i.cp, align 8, !tbaa !55 ; 2 uses
  %i.dg = getelementptr i8, ptr %.val159, i64 4
  %.val159.val = load i32, ptr %i.dg, align 4, !tbaa !28
  %i.dh = sext i32 %.val159.val to i64
  %i.di = icmp slt i64 %indvars.iv.next310, %i.dh
  br i1 %i.di, label %.critedge2, label %.critedge4.preheader, !llvm.loop !121

.critedge6.preheader:                             ; preds = %.critedge4
  %i.dj = icmp sgt i32 %.val155, 0
  br i1 %i.dj, label %.lr.ph292, label %.critedge12

.lr.ph292:                                        ; preds = %.critedge6.preheader
  %i.dk = getelementptr i8, ptr %i.v, i64 8
  br label %bb.as

bb.v:                                             ; preds = %.lr.ph285, %.critedge4
  %indvars.iv321 = phi i64 [ 0, %.lr.ph285 ], [ %indvars.iv.next322, %.critedge4 ] ; 2 uses
  %.val163 = load ptr, ptr %i.cy, align 8, !tbaa !31
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %.val163, i64 %indvars.iv321
end_hunk_0
