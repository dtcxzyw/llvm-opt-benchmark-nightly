Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/abcDetect?download=true
inline.NumInlined: 614
inline.NumDeleted: 121
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 19
begin_hunk_0_@Io_ReadFins:bb.a

bb.j:                                             ; preds = %bb.h
  %i.ah = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #34
  br label %Vec_IntPush.exit95

bb.k:                                             ; preds = %bb.g
  %i.ai = icmp samesign ult i32 %i.q, 1073741823
  %i.aj = shl nuw nsw i32 %i.q, 1
  %spec.select.i88 = select i1 %i.ai, i32 %i.aj, i32 2147483647 ; 4 uses
  %.not.i9.i89 = icmp samesign ult i32 %i.q, %spec.select.i88
  br i1 %.not.i9.i89, label %bb.l, label %Vec_IntPush.exit95

bb.l:                                             ; preds = %bb.k
  %.not9.i10.i90 = icmp eq ptr %i.p, null
  %i.ak = zext nneg i32 %spec.select.i88 to i64
  %i.al = shl nuw nsw i64 %i.ak, 2                ; 2 uses
  br i1 %.not9.i10.i90, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = call ptr @realloc(ptr noundef nonnull %i.p, i64 noundef %i.al) #35
  br label %Vec_IntPush.exit95

bb.n:                                             ; preds = %bb.l
  %i.an = call noalias ptr @malloc(i64 noundef %i.al) #34
  br label %Vec_IntPush.exit95

Vec_IntPush.exit95:                               ; preds = %bb.j, %bb.i, %bb.n, %bb.m, %bb.f, %bb.k
  %i.ao = phi ptr [ %i.o, %bb.f ], [ %i.o, %bb.k ], [ %i.ah, %bb.j ], [ %i.ag, %bb.i ], [ %i.am, %bb.m ], [ %i.an, %bb.n ] ; 3 uses
  %i.ap = phi i32 [ %i.q, %bb.f ], [ %i.q, %bb.k ], [ 16, %bb.j ], [ 16, %bb.i ], [ %spec.select.i88, %bb.m ], [ %spec.select.i88, %bb.n ]
  %i.aq = add nsw i32 %i.r, 1
  %i.ar = sext i32 %i.r to i64
  %i.as = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %i.ar
  store i32 %.val83, ptr %i.as, align 4, !tbaa !45
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !36
  br label %bb.o

bb.o:                                             ; preds = %bb.c, %Vec_IntPush.exit95, %.lr.ph
  %i.at = phi ptr [ %i.n, %bb.c ], [ %.pre, %Vec_IntPush.exit95 ], [ %i.n, %.lr.ph ] ; 2 uses
  %i.au = phi ptr [ %i.o, %bb.c ], [ %i.ao, %Vec_IntPush.exit95 ], [ %i.o, %.lr.ph ] ; 2 uses
  %i.av = phi ptr [ %i.p, %bb.c ], [ %i.ao, %Vec_IntPush.exit95 ], [ %i.p, %.lr.ph ]
  %i.aw = phi i32 [ %i.q, %bb.c ], [ %i.ap, %Vec_IntPush.exit95 ], [ %i.q, %.lr.ph ]
  %i.ax = phi i32 [ %i.r, %bb.c ], [ %i.aq, %Vec_IntPush.exit95 ], [ %i.r, %.lr.ph ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ay = getelementptr i8, ptr %i.at, i64 4
  %.val = load i32, ptr %i.ay, align 4, !tbaa !39
  %i.az = sext i32 %.val to i64
  %i.ba = icmp slt i64 %indvars.iv.next, %i.az
  br i1 %i.ba, label %.lr.ph, label %.critedge, !llvm.loop !101

.critedge:                                        ; preds = %bb.o, %Vec_IntPush.exit
  %.val86 = phi ptr [ %i.i, %Vec_IntPush.exit ], [ %i.au, %bb.o ] ; 5 uses
  %i.bb = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #34 ; 9 uses
  %i.bc = getelementptr i8, ptr %i.bb, i64 4      ; 2 uses
  store i32 0, ptr %i.bc, align 4, !tbaa !49
  store i32 1000, ptr %i.bb, align 8, !tbaa !50
  %i.bd = call noalias dereferenceable_or_null(4000) ptr @malloc(i64 noundef 4000) #34
  %i.be = getelementptr i8, ptr %i.bb, i64 8      ; 3 uses
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !51
  call fastcc void @Vec_IntPushTwo(ptr noundef nonnull %i.bb, i32 noundef -1, i32 noundef -1)
  %i.bf = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 1000, ptr noundef nonnull %i.e)
  %.not125 = icmp eq ptr %i.bf, null
  br i1 %.not125, label %Vec_IntFreeP.exit.thread112, label %.lr.ph127

.lr.ph127:                                        ; preds = %.critedge
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph127, %Vec_IntFreeP.exit
  %.058126 = phi i32 [ 1, %.lr.ph127 ], [ %i.bj, %Vec_IntFreeP.exit ] ; 3 uses
  %i.bh = call ptr @strtok(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.22) #32 ; 2 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %Vec_IntFreeP.exit.thread112.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bj = add nuw nsw i32 %.058126, 1             ; 2 uses
  %i.bk = call i64 @strtol(ptr noundef nonnull captures(none) %i.bh, ptr noundef null, i32 noundef 10) #32, !inline_history !102
  %i.bl = trunc i64 %i.bk to i32
  %.not68 = icmp eq i32 %.058126, %i.bl
  br i1 %.not68, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %i.bm = load ptr, ptr %i.be, align 8, !tbaa !51 ; 2 uses
  %.not.i = icmp eq ptr %i.bm, null
  br i1 %.not.i, label %bb.s, label %.thread.i

.thread.i:                                        ; preds = %bb.r
  call void @free(ptr noundef nonnull %i.bm) #32
  br label %bb.s

bb.s:                                             ; preds = %.thread.i, %bb.r
  call void @free(ptr noundef nonnull %i.bb) #32
  br label %Vec_IntFreeP.exit.thread

bb.t:                                             ; preds = %bb.q
  %i.bn = call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.22) #32 ; 2 uses
  %i.bo = call i32 @Abc_NamStrFind(ptr noundef %i.h, ptr noundef %i.bn) #32 ; 3 uses
  %.not69 = icmp eq i32 %i.bo, 0
  br i1 %.not69, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, ptr noundef %i.bn) ; 0 uses
  br label %Vec_IntFreeP.exit, !llvm.loop !103

bb.v:                                             ; preds = %bb.t
  %i.bq = call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.22) #32 ; 8 uses
  %i.br = load i32, ptr %i.bg, align 4, !tbaa !52
  %i.bs = icmp eq i32 %i.br, 4
  br i1 %i.bs, label %Abc_NtkIsMappedLogic.exit, label %Abc_NtkIsMappedLogic.exit.thread

Abc_NtkIsMappedLogic.exit:                        ; preds = %bb.v
  %i.bt = load i32, ptr %0, align 8, !tbaa !53
  %.not116 = icmp eq i32 %i.bt, 2
  br i1 %.not116, label %bb.w, label %Abc_NtkIsMappedLogic.exit.thread

bb.w:                                             ; preds = %Abc_NtkIsMappedLogic.exit
  %i.bu = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bq, ptr noundef nonnull dereferenceable(4) @.str.3) #33
  %.not71 = icmp eq i32 %i.bu, 0
  br i1 %.not71, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bv = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bq, ptr noundef nonnull dereferenceable(4) @.str.4) #33
  %.not72 = icmp eq i32 %i.bv, 0
  br i1 %.not72, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bw = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bq, ptr noundef nonnull dereferenceable(4) @.str.5) #33
  %.not73 = icmp eq i32 %i.bw, 0
  br i1 %.not73, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w
  %i.bx = call i32 @Io_ReadFinType(ptr noundef nonnull %i.bq)
  br label %Io_ReadFinTypeMapped.exit

bb.aa:                                            ; preds = %bb.y
  %i.by = call ptr @Mio_LibraryReadGateByName(ptr noundef %i.d, ptr noundef nonnull %i.bq, ptr noundef null) #32 ; 2 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %Io_ReadFinTypeMapped.exit.thread, label %bb.ab

Io_ReadFinTypeMapped.exit.thread:                 ; preds = %bb.aa
  %i.ca = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, ptr noundef nonnull %i.bq) ; 0 uses
  br label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cb = call i32 @Mio_GateReadCell(ptr noundef nonnull %i.by) #32
  br label %Io_ReadFinTypeMapped.exit

Abc_NtkIsMappedLogic.exit.thread:                 ; preds = %bb.v, %Abc_NtkIsMappedLogic.exit
  %i.cc = call i32 @Io_ReadFinType(ptr noundef %i.bq)
  br label %Io_ReadFinTypeMapped.exit

Io_ReadFinTypeMapped.exit:                        ; preds = %bb.ab, %bb.z, %Abc_NtkIsMappedLogic.exit.thread
  %.059 = phi i32 [ %i.cc, %Abc_NtkIsMappedLogic.exit.thread ], [ %i.bx, %bb.z ], [ %i.cb, %bb.ab ] ; 2 uses
  %i.cd = icmp eq i32 %.059, -100
  br i1 %i.cd, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %Io_ReadFinTypeMapped.exit.thread, %Io_ReadFinTypeMapped.exit
  %.val79 = load ptr, ptr %i.j, align 8, !tbaa !36
  %i.ce = getelementptr i8, ptr %.val79, i64 8
  %.val79.val = load ptr, ptr %i.ce, align 8, !tbaa !40
  %i.cf = sext i32 %i.bo to i64
  %i.cg = getelementptr inbounds [8 x i8], ptr %.val79.val, i64 %i.cf
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !41
  %i.ci = call ptr @Abc_ObjName(ptr noundef %i.ch) #32
  %i.cj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25, ptr noundef %i.bq, ptr noundef %i.ci) ; 0 uses
  br label %Vec_IntFreeP.exit, !llvm.loop !103

bb.ad:                                            ; preds = %Io_ReadFinTypeMapped.exit
  %i.ck = sext i32 %i.bo to i64
  %i.cl = getelementptr inbounds [4 x i8], ptr %.val86, i64 %i.ck
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !45
  call fastcc void @Vec_IntPushTwo(ptr noundef nonnull %i.bb, i32 noundef %i.cm, i32 noundef %.059)
  br label %Vec_IntFreeP.exit

Vec_IntFreeP.exit:                                ; preds = %bb.ad, %bb.ac, %bb.u
  %i.cn = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 1000, ptr noundef nonnull %i.e)
  %.not = icmp eq ptr %i.cn, null
  br i1 %.not, label %Vec_IntFreeP.exit.thread112.loopexit, label %bb.p

Vec_IntFreeP.exit.thread112.loopexit:             ; preds = %bb.p, %Vec_IntFreeP.exit
  %.058.lcssa.ph = phi i32 [ %i.bj, %Vec_IntFreeP.exit ], [ %.058126, %bb.p ]
  %i.co = add nsw i32 %.058.lcssa.ph, -1
  br label %Vec_IntFreeP.exit.thread112

Vec_IntFreeP.exit.thread112:                      ; preds = %Vec_IntFreeP.exit.thread112.loopexit, %.critedge
  %.058.lcssa = phi i32 [ 0, %.critedge ], [ %i.co, %Vec_IntFreeP.exit.thread112.loopexit ]
  %i.cp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, i32 noundef %.058.lcssa, ptr noundef %1) ; 0 uses
  %.not74 = icmp eq i32 %2, 0
  br i1 %.not74, label %Vec_IntFreeP.exit.thread, label %.preheader

.preheader:                                       ; preds = %Vec_IntFreeP.exit.thread112
  %.val87 = load i32, ptr %i.bc, align 4, !tbaa !49 ; 2 uses
  %i.cq = icmp sgt i32 %.val87, 3
  br i1 %i.cq, label %.critedge2.lr.ph, label %Vec_IntFreeP.exit.thread

.critedge2.lr.ph:                                 ; preds = %.preheader
  %.val85 = load ptr, ptr %i.be, align 8, !tbaa !51 ; 2 uses
  br label %.critedge2

.critedge2:                                       ; preds = %.critedge2.lr.ph, %Io_WriteFinType.exit
  %indvars.iv135 = phi i64 [ 2, %.critedge2.lr.ph ], [ %indvars.iv.next136, %Io_WriteFinType.exit ] ; 4 uses
  %indvars.iv133 = phi i64 [ 3, %.critedge2.lr.ph ], [ %indvars.iv.next134, %Io_WriteFinType.exit ] ; 2 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %.val85, i64 %indvars.iv135
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !45
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %.val85, i64 %indvars.iv133
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !45
  %i.cv = trunc nuw nsw i64 %indvars.iv135 to i32
  %i.cw = lshr exact i32 %i.cv, 1
  %.val78 = load ptr, ptr %i.j, align 8, !tbaa !36
  %i.cx = getelementptr i8, ptr %.val78, i64 8
  %.val78.val = load ptr, ptr %i.cx, align 8, !tbaa !40
  %i.cy = sext i32 %i.cs to i64
  %i.cz = getelementptr inbounds [8 x i8], ptr %.val78.val, i64 %i.cy
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !41
  %i.db = call ptr @Abc_ObjName(ptr noundef %i.da) #32
  %switch.tableidx = add i32 %i.cu, 99            ; 2 uses
  %i.dc = icmp ult i32 %switch.tableidx, 11
  br i1 %i.dc, label %switch.lookup, label %Io_WriteFinType.exit

switch.lookup:                                    ; preds = %.critedge2
  %i.dd = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.Io_ReadFins, i64 %i.dd
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %Io_WriteFinType.exit

Io_WriteFinType.exit:                             ; preds = %.critedge2, %switch.lookup
  %.0.i96 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.18, %.critedge2 ]
  %i.de = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, i32 noundef %i.cw, ptr noundef %i.db, ptr noundef nonnull %.0.i96) ; 0 uses
  %indvars.iv.next136 = add nuw nsw i64 %indvars.iv135, 2
  %i.df = trunc i64 %indvars.iv135 to i32
  %3 = add i32 %i.df, 3
  %i.dg = icmp slt i32 %3, %.val87
  %indvars.iv.next134 = add nuw i64 %indvars.iv133, 2
  br i1 %i.dg, label %.critedge2, label %Vec_IntFreeP.exit.thread, !llvm.loop !104

Vec_IntFreeP.exit.thread:                         ; preds = %Io_WriteFinType.exit, %.preheader, %bb.s, %Vec_IntFreeP.exit.thread112, %bb.e
  %i.dh = phi ptr [ %i.o, %bb.e ], [ %.val86, %Vec_IntFreeP.exit.thread112 ], [ %.val86, %bb.s ], [ %.val86, %.preheader ], [ %.val86, %Io_WriteFinType.exit ] ; 2 uses
  %.3 = phi ptr [ null, %bb.e ], [ %i.bb, %Vec_IntFreeP.exit.thread112 ], [ null, %bb.s ], [ %i.bb, %.preheader ], [ %i.bb, %Io_WriteFinType.exit ]
  %.not.i97 = icmp eq ptr %i.dh, null
  br i1 %.not.i97, label %Vec_IntFree.exit, label %bb.ae

bb.ae:                                            ; preds = %Vec_IntFreeP.exit.thread
  call void @free(ptr noundef nonnull %i.dh) #32
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %Vec_IntFreeP.exit.thread, %bb.ae
  call void @Abc_NamDeref(ptr noundef %i.h) #32
  %i.di = call i32 @fclose(ptr noundef nonnull %i.e) ; 0 uses
  br label %bb.af

bb.af:                                            ; preds = %Vec_IntFree.exit, %bb.b
  %.062 = phi ptr [ null, %bb.b ], [ %.3, %Vec_IntFree.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  ret ptr %.062
}

declare ptr @Abc_NamStart(i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @Abc_NamStrFindOrAdd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal fastcc void @Vec_IntPushTwo(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 6 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !49   ; 7 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !50
  %i.d = icmp eq i32 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %Vec_IntPush.exit

bb.b:                                             ; preds = %bb.a
  %i.e = icmp slt i32 %i.b, 16
  br i1 %i.e, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !51   ; 2 uses
  %.not9.i.i = icmp eq ptr %i.g, null
  br i1 %.not9.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.g, i64 noundef 64) #35
  br label %Vec_IntGrow.exit.i

bb.e:                                             ; preds = %bb.c
  %i.i = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #34
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.e, %bb.d
  %i.j = phi ptr [ %i.h, %bb.d ], [ %i.i, %bb.e ]
  store ptr %i.j, ptr %i.f, align 8, !tbaa !51
  br label %Vec_IntGrow.exit11.sink.split.i

bb.f:                                             ; preds = %bb.b
  %i.k = icmp samesign ult i32 %i.b, 1073741823
  %i.l = shl nuw nsw i32 %i.b, 1
  %spec.select.i = select i1 %i.k, i32 %i.l, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.b, %spec.select.i
  br i1 %.not.i9.i, label %bb.g, label %Vec_IntPush.exit

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !51   ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.n, null
  %i.o = zext nneg i32 %spec.select.i to i64
  %i.p = shl nuw nsw i64 %i.o, 2                  ; 2 uses
  br i1 %.not9.i10.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = tail call ptr @realloc(ptr noundef nonnull %i.n, i64 noundef %i.p) #35
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.r = tail call noalias ptr @malloc(i64 noundef %i.p) #34
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.s = phi ptr [ %i.q, %bb.h ], [ %i.r, %bb.i ]
  store ptr %i.s, ptr %i.m, align 8, !tbaa !51
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.j, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.j ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %0, align 8, !tbaa !50
  %.pre = load i32, ptr %i.a, align 4, !tbaa !49
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.a, %bb.f, %Vec_IntGrow.exit11.sink.split.i
  %i.t = phi i32 [ %i.b, %bb.a ], [ %i.b, %bb.f ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !51   ; 4 uses
  %i.w = add nsw i32 %i.t, 1
  store i32 %i.w, ptr %i.a, align 4, !tbaa !49
  %i.x = sext i32 %i.t to i64
  %i.y = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.x
  store i32 %1, ptr %i.y, align 4, !tbaa !45
  %i.z = load i32, ptr %i.a, align 4, !tbaa !49   ; 7 uses
  %i.aa = load i32, ptr %0, align 8, !tbaa !50
  %i.ab = icmp eq i32 %i.z, %i.aa
  br i1 %i.ab, label %bb.k, label %Vec_IntPush.exit10

bb.k:                                             ; preds = %Vec_IntPush.exit
  %i.ac = icmp slt i32 %i.z, 16
  br i1 %i.ac, label %Vec_IntGrow.exit11.sink.split.i6, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ad = icmp samesign ult i32 %i.z, 1073741823
  %i.ae = shl nuw nsw i32 %i.z, 1
  %spec.select.i3 = select i1 %i.ad, i32 %i.ae, i32 2147483647 ; 3 uses
  %.not.i9.i4 = icmp samesign ult i32 %i.z, %spec.select.i3
  br i1 %.not.i9.i4, label %bb.m, label %Vec_IntPush.exit10

bb.m:                                             ; preds = %bb.l
  %i.af = zext nneg i32 %spec.select.i3 to i64
  %i.ag = shl nuw nsw i64 %i.af, 2
  br label %Vec_IntGrow.exit11.sink.split.i6

Vec_IntGrow.exit11.sink.split.i6:                 ; preds = %bb.k, %bb.m
  %.sink = phi i64 [ %i.ag, %bb.m ], [ 64, %bb.k ]
  %spec.select.sink.i7 = phi i32 [ %spec.select.i3, %bb.m ], [ 16, %bb.k ]
  %i.ah = tail call ptr @realloc(ptr noundef nonnull %i.v, i64 noundef %.sink) #35 ; 2 uses
  store ptr %i.ah, ptr %i.u, align 8, !tbaa !51
  store i32 %spec.select.sink.i7, ptr %0, align 8, !tbaa !50
  %.pre11 = load i32, ptr %i.a, align 4, !tbaa !49
  br label %Vec_IntPush.exit10

Vec_IntPush.exit10:                               ; preds = %Vec_IntPush.exit, %bb.l, %Vec_IntGrow.exit11.sink.split.i6
  %i.ai = phi i32 [ %i.z, %Vec_IntPush.exit ], [ %i.z, %bb.l ], [ %.pre11, %Vec_IntGrow.exit11.sink.split.i6 ] ; 2 uses
  %i.aj = phi ptr [ %i.v, %Vec_IntPush.exit ], [ %i.v, %bb.l ], [ %i.ah, %Vec_IntGrow.exit11.sink.split.i6 ]
  %i.ak = add nsw i32 %i.ai, 1
  store i32 %i.ak, ptr %i.a, align 4, !tbaa !49
  %i.al = sext i32 %i.ai to i64
  %i.am = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %i.al
  store i32 %2, ptr %i.am, align 4, !tbaa !45
  ret void
}

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef writeonly, i32 noundef, ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare ptr @strtok(ptr noundef, ptr noundef readonly captures(none)) local_unnamed_addr #8

declare i32 @Abc_NamStrFind(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @Abc_NamDeref(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @Abc_NtkFrameExtend(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40         ; 3 uses
  %.val122 = load ptr, ptr %i.a, align 8, !tbaa !111 ; 2 uses
  %i.b = getelementptr i8, ptr %.val122, i64 4
  %.val122.val = load i32, ptr %i.b, align 4, !tbaa !39 ; 4 uses
  %i.c = getelementptr i8, ptr %0, i64 48         ; 4 uses
  %.val124 = load ptr, ptr %i.c, align 8, !tbaa !112
  %i.d = getelementptr i8, ptr %.val124, i64 4
  %.val124.val = load i32, ptr %i.d, align 4, !tbaa !39 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !113
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.aq, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %0, i64 124
  %.val120 = load i32, ptr %i.h, align 4, !tbaa !45 ; 2 uses
  %i.i = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #34 ; 5 uses
  %i.j = add i32 %.val120, -1
  %or.cond.i = icmp ult i32 %i.j, 7
  %spec.store.select.i = select i1 %or.cond.i, i32 8, i32 %.val120 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 2 uses
  store i32 0, ptr %i.k, align 4, !tbaa !39
  store i32 %spec.store.select.i, ptr %i.i, align 8, !tbaa !114
  %.not.i = icmp eq i32 %spec.store.select.i, 0
  br i1 %.not.i, label %Vec_PtrAlloc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = sext i32 %spec.store.select.i to i64
  %i.m = shl nsw i64 %i.l, 3
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.m) #34
  br label %Vec_PtrAlloc.exit

Vec_PtrAlloc.exit:                                ; preds = %bb.b, %bb.c
  %i.o = phi ptr [ %i.n, %bb.c ], [ null, %bb.b ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 5 uses
  store ptr %i.o, ptr %i.p, align 8, !tbaa !40
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !36   ; 2 uses
  %i.s = getelementptr i8, ptr %i.r, i64 4
  %.val115162 = load i32, ptr %i.s, align 4, !tbaa !39
  %i.t = icmp sgt i32 %.val115162, 0
end_hunk_0
begin_hunk_1_@Abc_NtkFinSimOneLit:bb.a
  %i.bi = tail call i32 @Gia_ManHashOr(ptr noundef %0, i32 noundef %i.be, i32 noundef %i.bf) #32
  br label %bb.p

bb.k:                                             ; preds = %.thread
  %i.bj = tail call i32 @Gia_ManHashXor(ptr noundef %0, i32 noundef %i.be, i32 noundef %i.bf) #32
  br label %bb.p

bb.l:                                             ; preds = %.thread
  %i.bk = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %i.be, i32 noundef %i.bf) #32
  %i.bl = xor i32 %i.bk, 1
  br label %bb.p

bb.m:                                             ; preds = %.thread
  %i.bm = tail call i32 @Gia_ManHashOr(ptr noundef %0, i32 noundef %i.be, i32 noundef %i.bf) #32
  %i.bn = xor i32 %i.bm, 1
  br label %bb.p

bb.n:                                             ; preds = %.thread
  %i.bo = tail call i32 @Gia_ManHashXor(ptr noundef %0, i32 noundef %i.be, i32 noundef %i.bf) #32
  %i.bp = xor i32 %i.bo, 1
  br label %bb.p

bb.o:                                             ; preds = %.thread
  br label %bb.p

bb.p:                                             ; preds = %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %.thread, %._crit_edge
  %.1 = phi i32 [ %i.ao, %._crit_edge ], [ -1, %bb.o ], [ 1, %bb.f ], [ %i.be, %bb.g ], [ %i.bg, %bb.h ], [ %i.bh, %bb.i ], [ %i.bi, %bb.j ], [ %i.bj, %bb.k ], [ %i.bl, %bb.l ], [ %i.bn, %bb.m ], [ %i.bp, %bb.n ], [ 0, %.thread ]
  ret i32 %.1
}

declare i32 @Gia_ManHashXor(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @Gia_ManHashOr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @Gia_ManCleanup(ptr noundef) local_unnamed_addr #3

declare void @Gia_ManStop(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @Abc_NtkFinSimulateOne(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef readonly captures(none) %7, i32 noundef %8, ptr nofree noundef readonly captures(none) %9, ptr nofree noundef captures(none) %10, i32 noundef %11, i32 noundef %12) local_unnamed_addr #0 {
Vec_WecSizeSize.exit:
  %i.a = alloca [6 x ptr], align 16               ; 8 uses
  %i.b = getelementptr i8, ptr %10, i64 4         ; 5 uses
  %i.c = getelementptr i8, ptr %3, i64 4          ; 2 uses
  %.val225284 = load i32, ptr %i.c, align 4, !tbaa !49 ; 2 uses
  %i.d = icmp sgt i32 %.val225284, 0
  br i1 %i.d, label %.lr.ph287, label %.critedge.preheader

.lr.ph287:                                        ; preds = %Vec_WecSizeSize.exit
  %i.e = getelementptr i8, ptr %3, i64 8
  %i.f = getelementptr i8, ptr %0, i64 32
  %i.g = getelementptr i8, ptr %6, i64 8
  %i.h = getelementptr i8, ptr %7, i64 8
  %i.i = icmp sgt i32 %8, 0
  %i.j = getelementptr i8, ptr %5, i64 8
  %i.k = getelementptr i8, ptr %9, i64 8
  %wide.trip.count = zext i32 %8 to i64           ; 3 uses
  %min.iters.check = icmp ult i32 %8, 4
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %bb.a

.critedge.preheader:                              ; preds = %.loopexit279, %Vec_WecSizeSize.exit
  %i.l = getelementptr i8, ptr %4, i64 4          ; 2 uses
  %.val222293 = load i32, ptr %i.l, align 4, !tbaa !49
  %i.m = icmp sgt i32 %.val222293, 0
  br i1 %i.m, label %.lr.ph296, label %.critedge8.preheader

.lr.ph296:                                        ; preds = %.critedge.preheader
  %i.n = getelementptr i8, ptr %4, i64 8
  %i.o = getelementptr i8, ptr %0, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.q = getelementptr i8, ptr %1, i64 8
  %i.r = getelementptr i8, ptr %7, i64 8
  %i.s = icmp sgt i32 %8, 0                       ; 10 uses
  %wide.trip.count.i237 = zext i32 %8 to i64      ; 41 uses
  %i.t = shl nuw nsw i64 %wide.trip.count.i237, 3 ; 2 uses
  %i.u = getelementptr i8, ptr %5, i64 8
  %i.v = getelementptr i8, ptr %9, i64 8
  %min.iters.check534 = icmp ult i32 %8, 6
  %n.vec536 = and i64 %wide.trip.count.i237, 2147483644 ; 3 uses
  %cmp.n545 = icmp eq i64 %n.vec536, %wide.trip.count.i237
  %xtraiter = and i64 %wide.trip.count.i237, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.w = add nsw i64 %wide.trip.count.i237, -1
  %min.iters.check516 = icmp ult i32 %8, 6
  %n.vec518 = and i64 %wide.trip.count.i237, 2147483644 ; 3 uses
  %cmp.n527 = icmp eq i64 %n.vec518, %wide.trip.count.i237
  %xtraiter563 = and i64 %wide.trip.count.i237, 1
  %lcmp.mod564.not = icmp eq i64 %xtraiter563, 0
  %i.x = add nsw i64 %wide.trip.count.i237, -1
  %min.iters.check498 = icmp ult i32 %8, 6
  %n.vec500 = and i64 %wide.trip.count.i237, 2147483644 ; 3 uses
  %cmp.n509 = icmp eq i64 %n.vec500, %wide.trip.count.i237
  %xtraiter565 = and i64 %wide.trip.count.i237, 1
  %lcmp.mod566.not = icmp eq i64 %xtraiter565, 0
  %i.y = add nsw i64 %wide.trip.count.i237, -1
  %min.iters.check480 = icmp ult i32 %8, 8
  %n.vec482 = and i64 %wide.trip.count.i237, 2147483644 ; 3 uses
  %cmp.n491 = icmp eq i64 %n.vec482, %wide.trip.count.i237
  %xtraiter567 = and i64 %wide.trip.count.i237, 3 ; 2 uses
  %lcmp.mod568.not = icmp eq i64 %xtraiter567, 0
  %min.iters.check462 = icmp ult i32 %8, 8
  %n.vec464 = and i64 %wide.trip.count.i237, 2147483644 ; 3 uses
  %cmp.n473 = icmp eq i64 %n.vec464, %wide.trip.count.i237
  %xtraiter569 = and i64 %wide.trip.count.i237, 3 ; 2 uses
  %lcmp.mod570.not = icmp eq i64 %xtraiter569, 0
  %min.iters.check444 = icmp ult i32 %8, 8
  %n.vec446 = and i64 %wide.trip.count.i237, 2147483644 ; 3 uses
  %cmp.n455 = icmp eq i64 %n.vec446, %wide.trip.count.i237
  %xtraiter572 = and i64 %wide.trip.count.i237, 3 ; 2 uses
  %lcmp.mod573.not = icmp eq i64 %xtraiter572, 0
  %min.iters.check429 = icmp ult i32 %8, 4
  %n.vec431 = and i64 %wide.trip.count.i237, 2147483644 ; 3 uses
  %cmp.n438 = icmp eq i64 %n.vec431, %wide.trip.count.i237
  %xtraiter575 = and i64 %wide.trip.count.i237, 3 ; 2 uses
  %lcmp.mod576.not = icmp eq i64 %xtraiter575, 0
  %min.iters.check416 = icmp ult i32 %8, 6
  %n.vec418 = and i64 %wide.trip.count.i237, 2147483644 ; 3 uses
  %cmp.n424 = icmp eq i64 %n.vec418, %wide.trip.count.i237
  %xtraiter578 = and i64 %wide.trip.count.i237, 3 ; 2 uses
  %lcmp.mod579.not = icmp eq i64 %xtraiter578, 0
  br label %bb.f

bb.a:                                             ; preds = %.lr.ph287, %.loopexit279
  %.val225359 = phi i32 [ %.val225284, %.lr.ph287 ], [ %.val225, %.loopexit279 ] ; 2 uses
  %indvars.iv327 = phi i64 [ 0, %.lr.ph287 ], [ %indvars.iv.next328, %.loopexit279 ] ; 3 uses
  %.val217 = load ptr, ptr %i.e, align 8, !tbaa !51
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.val217, i64 %indvars.iv327
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !45
  %.val196 = load ptr, ptr %i.f, align 8, !tbaa !36
  %i.ab = getelementptr i8, ptr %.val196, i64 8
  %.val196.val = load ptr, ptr %i.ab, align 8, !tbaa !40
  %i.ac = sext i32 %i.aa to i64
  %i.ad = getelementptr inbounds [8 x i8], ptr %.val196.val, i64 %i.ac
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !41 ; 3 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %.loopexit279, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ag = getelementptr i8, ptr %i.ae, i64 16
  %.val200 = load i32, ptr %i.ag, align 8, !tbaa !48 ; 2 uses
  %.val216 = load ptr, ptr %i.g, align 8, !tbaa !51
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.val216, i64 %indvars.iv327
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !45
  %.not194 = icmp ne i32 %i.ai, 0
  %i.aj = sext i1 %.not194 to i64                 ; 2 uses
  %i.ak = mul i32 %.val200, %8
  %.val235 = load ptr, ptr %i.h, align 8, !tbaa !95
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds [8 x i8], ptr %.val235, i64 %i.al ; 4 uses
  br i1 %i.i, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.b
  br i1 %min.iters.check, label %.lr.ph.preheader562, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.aj, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %index ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store <2 x i64> %broadcast.splat, ptr %i.an, align 8, !tbaa !78
  store <2 x i64> %broadcast.splat, ptr %i.ao, align 8, !tbaa !78
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !157

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader562

.lr.ph.preheader562:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader562, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader562 ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv
  store i64 %i.aj, ptr %i.aq, align 8, !tbaa !78
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !158

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.b
  %.val233 = load ptr, ptr %i.j, align 8, !tbaa !71
  %i.ar = sext i32 %.val200 to i64
  %i.as = getelementptr inbounds [16 x i8], ptr %.val233, i64 %i.ar ; 2 uses
  %i.at = getelementptr i8, ptr %i.as, i64 4      ; 2 uses
  %.val224 = load i32, ptr %i.at, align 4, !tbaa !49
  %or.cond = icmp slt i32 %.val224, 2
  br i1 %or.cond, label %.loopexit279, label %.critedge2.lr.ph

.critedge2.lr.ph:                                 ; preds = %._crit_edge
  %i.au = getelementptr i8, ptr %i.as, i64 8
  br label %.critedge2

.critedge2:                                       ; preds = %.critedge2.lr.ph, %bb.e
  %indvars.iv324 = phi i64 [ 0, %.critedge2.lr.ph ], [ %indvars.iv.next325, %bb.e ] ; 3 uses
  %.val215 = load ptr, ptr %i.au, align 8, !tbaa !51
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %.val215, i64 %indvars.iv324 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !45
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !45 ; 5 uses
  %i.az = shl nsw i32 %i.aw, 1
  %.val213 = load ptr, ptr %i.k, align 8, !tbaa !51
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr [4 x i8], ptr %.val213, i64 %i.ba
  %i.bc = getelementptr i8, ptr %i.bb, i64 4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !45 ; 2 uses
  %i.be = icmp eq i32 %i.bd, -97
  br i1 %i.be, label %.critedge2._crit_edge, label %bb.c

.critedge2._crit_edge:                            ; preds = %.critedge2
  %.pre371 = and i32 %i.ay, 31
  %.pre373 = ashr i32 %i.ay, 5
  %.pre375 = sext i32 %.pre373 to i64
  br label %bb.d

bb.c:                                             ; preds = %.critedge2
  %i.bf = ashr i32 %i.ay, 5
  %i.bg = sext i32 %i.bf to i64                   ; 2 uses
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !45
  %i.bj = and i32 %i.ay, 31                       ; 2 uses
  %i.bk = lshr i32 %i.bi, %i.bj
  %i.bl = and i32 %i.bk, 1
  %i.bm = tail call fastcc i32 @Abc_NtkFinSimOneBit(ptr noundef %i.ae, i32 noundef %i.bd, ptr noundef %7, i32 noundef %8, i32 noundef %i.ay)
  %.not195 = icmp eq i32 %i.bl, %i.bm
  br i1 %.not195, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.critedge2._crit_edge, %bb.c
  %.pre-phi376 = phi i64 [ %.pre375, %.critedge2._crit_edge ], [ %i.bg, %bb.c ]
  %.pre-phi372 = phi i32 [ %.pre371, %.critedge2._crit_edge ], [ %i.bj, %bb.c ]
  %i.bn = shl nuw i32 1, %.pre-phi372
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.am, i64 %.pre-phi376 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !45
  %i.bq = xor i32 %i.bp, %i.bn
  store i32 %i.bq, ptr %i.bo, align 4, !tbaa !45
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %indvars.iv.next325 = add nuw nsw i64 %indvars.iv324, 2
  %.val223 = load i32, ptr %i.at, align 4, !tbaa !49
  %i.br = trunc i64 %indvars.iv324 to i32
  %13 = add i32 %i.br, 3
  %i.bs = icmp slt i32 %13, %.val223
  br i1 %i.bs, label %.critedge2, label %.loopexit279.loopexit, !llvm.loop !159

.loopexit279.loopexit:                            ; preds = %bb.e
  %.val225.pre = load i32, ptr %i.c, align 4, !tbaa !49
  br label %.loopexit279

.loopexit279:                                     ; preds = %.loopexit279.loopexit, %._crit_edge, %bb.a
  %.val225 = phi i32 [ %.val225359, %bb.a ], [ %.val225359, %._crit_edge ], [ %.val225.pre, %.loopexit279.loopexit ] ; 2 uses
  %indvars.iv.next328 = add nuw nsw i64 %indvars.iv327, 1 ; 2 uses
  %i.bt = sext i32 %.val225 to i64
  %i.bu = icmp slt i64 %indvars.iv.next328, %i.bt
  br i1 %i.bu, label %bb.a, label %.critedge.preheader, !llvm.loop !160

bb.f:                                             ; preds = %.lr.ph296, %.critedge
  %indvars.iv333 = phi i64 [ 0, %.lr.ph296 ], [ %indvars.iv.next334, %.critedge ] ; 2 uses
  %.val211 = load ptr, ptr %i.n, align 8, !tbaa !51
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %.val211, i64 %indvars.iv333
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !45
  %.val = load ptr, ptr %i.o, align 8, !tbaa !36
  %i.bx = getelementptr i8, ptr %.val, i64 8
  %.val.val = load ptr, ptr %i.bx, align 8, !tbaa !40
  %i.by = sext i32 %i.bw to i64
  %i.bz = getelementptr inbounds [8 x i8], ptr %.val.val, i64 %i.by
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !41 ; 9 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cc = getelementptr i8, ptr %i.ca, i64 16
  %.val198 = load i32, ptr %i.cc, align 8, !tbaa !48 ; 3 uses
  %i.cd = load i32, ptr %i.p, align 4, !tbaa !52
  %i.ce = icmp eq i32 %i.cd, 4
  br i1 %i.ce, label %Abc_NtkIsMappedLogic.exit, label %Abc_NtkIsMappedLogic.exit.thread

Abc_NtkIsMappedLogic.exit:                        ; preds = %bb.g
  %i.cf = load i32, ptr %0, align 8, !tbaa !53
  %.not269 = icmp eq i32 %i.cf, 2
  br i1 %.not269, label %bb.h, label %Abc_NtkIsMappedLogic.exit.thread

Abc_NtkIsMappedLogic.exit.thread:                 ; preds = %bb.g, %Abc_NtkIsMappedLogic.exit
  %.val210 = load ptr, ptr %i.q, align 8, !tbaa !51
  %i.cg = sext i32 %.val198 to i64
  %i.ch = getelementptr inbounds [4 x i8], ptr %.val210, i64 %i.cg
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !45
  br label %bb.h

bb.h:                                             ; preds = %Abc_NtkIsMappedLogic.exit, %Abc_NtkIsMappedLogic.exit.thread
  %i.cj = phi i32 [ %i.ci, %Abc_NtkIsMappedLogic.exit.thread ], [ -1, %Abc_NtkIsMappedLogic.exit ]
  %i.ck = mul i32 %.val198, %8
  %.val234 = load ptr, ptr %i.r, align 8, !tbaa !95 ; 9 uses
  %.val234414 = ptrtoaddr ptr %.val234 to i64     ; 8 uses
  %i.cl = sext i32 %i.ck to i64                   ; 9 uses
  %i.cm = getelementptr [8 x i8], ptr %.val234, i64 %i.cl ; 47 uses
  %i.cn = load ptr, ptr %i.ca, align 8, !tbaa !54 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !52
  %i.cq = icmp eq i32 %i.cp, 4
  br i1 %i.cq, label %Abc_NtkIsMappedLogic.exit.i, label %Abc_NtkIsMappedLogic.exit.thread.i

Abc_NtkIsMappedLogic.exit.i:                      ; preds = %bb.h
  %i.cr = load i32, ptr %i.cn, align 8, !tbaa !53
  %.not.i = icmp eq i32 %i.cr, 2
  br i1 %.not.i, label %bb.i, label %Abc_NtkIsMappedLogic.exit.thread.i

bb.i:                                             ; preds = %Abc_NtkIsMappedLogic.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  %i.cs = getelementptr i8, ptr %i.ca, i64 28
  %.val118.i = load i32, ptr %i.cs, align 4, !tbaa !56 ; 3 uses
  %i.ct = icmp sgt i32 %.val118.i, 0
  br i1 %i.ct, label %.lr.ph167.i, label %._crit_edge.i

.lr.ph167.i:                                      ; preds = %bb.i
  %i.cu = getelementptr i8, ptr %i.ca, i64 32
  %.val119.i = load ptr, ptr %i.cu, align 8, !tbaa !55 ; 5 uses
  %wide.trip.count222.i = zext nneg i32 %.val118.i to i64 ; 2 uses
  %xtraiter581 = and i64 %wide.trip.count222.i, 3 ; 3 uses
  %i.cv = icmp ult i32 %.val118.i, 4
  br i1 %i.cv, label %.epil.preheader, label %.lr.ph167.i.new

.lr.ph167.i.new:                                  ; preds = %.lr.ph167.i
  %unroll_iter = and i64 %wide.trip.count222.i, 2147483644
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph167.i.new
  %indvars.iv219.i = phi i64 [ 0, %.lr.ph167.i.new ], [ %indvars.iv.next220.i.3, %bb.j ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph167.i.new ], [ %niter.next.3, %bb.j ]
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %.val119.i, i64 %indvars.iv219.i
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !45
  %i.cy = mul nsw i32 %i.cx, %8
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr inbounds [8 x i8], ptr %.val234, i64 %i.cz
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv219.i
  store ptr %i.da, ptr %i.db, align 16, !tbaa !76
  %indvars.iv.next220.i = or disjoint i64 %indvars.iv219.i, 1 ; 2 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %.val119.i, i64 %indvars.iv.next220.i
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !45
  %i.de = mul nsw i32 %i.dd, %8
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr inbounds [8 x i8], ptr %.val234, i64 %i.df
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next220.i
  store ptr %i.dg, ptr %i.dh, align 8, !tbaa !76
  %indvars.iv.next220.i.1 = or disjoint i64 %indvars.iv219.i, 2 ; 2 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %.val119.i, i64 %indvars.iv.next220.i.1
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !45
  %i.dk = mul nsw i32 %i.dj, %8
  %i.dl = sext i32 %i.dk to i64
  %i.dm = getelementptr inbounds [8 x i8], ptr %.val234, i64 %i.dl
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next220.i.1
  store ptr %i.dm, ptr %i.dn, align 16, !tbaa !76
  %indvars.iv.next220.i.2 = or disjoint i64 %indvars.iv219.i, 3 ; 2 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %.val119.i, i64 %indvars.iv.next220.i.2
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !45
  %i.dq = mul nsw i32 %i.dp, %8
  %i.dr = sext i32 %i.dq to i64
  %i.ds = getelementptr inbounds [8 x i8], ptr %.val234, i64 %i.dr
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next220.i.2
  store ptr %i.ds, ptr %i.dt, align 8, !tbaa !76
  %indvars.iv.next220.i.3 = add nuw nsw i64 %indvars.iv219.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.loopexit.unr-lcssa, label %bb.j, !llvm.loop !161

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %bb.j
  %lcmp.mod582.not = icmp eq i64 %xtraiter581, 0
  br i1 %lcmp.mod582.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph167.i
  %indvars.iv219.i.epil.init = phi i64 [ 0, %.lr.ph167.i ], [ %indvars.iv.next220.i.3, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod583 = icmp ne i64 %xtraiter581, 0
  tail call void @llvm.assume(i1 %lcmp.mod583)
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.epil.preheader
  %indvars.iv219.i.epil = phi i64 [ %indvars.iv219.i.epil.init, %.epil.preheader ], [ %indvars.iv.next220.i.epil, %bb.k ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.k ]
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %.val119.i, i64 %indvars.iv219.i.epil
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !45
  %i.dw = mul nsw i32 %i.dv, %8
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr inbounds [8 x i8], ptr %.val234, i64 %i.dx
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv219.i.epil
  store ptr %i.dy, ptr %i.dz, align 8, !tbaa !76
  %indvars.iv.next220.i.epil = add nuw nsw i64 %indvars.iv219.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter581
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %bb.k, !llvm.loop !162

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %bb.k, %bb.i
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ca, i64 64
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !42
  call void @Mio_LibGateSimulate(ptr noundef %i.eb, ptr noundef nonnull %i.a, i32 noundef %8, ptr noundef %i.cm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  br label %Abc_NtkFinSimOneWord.exit

Abc_NtkIsMappedLogic.exit.thread.i:               ; preds = %Abc_NtkIsMappedLogic.exit.i, %bb.h
  %i.ec = getelementptr i8, ptr %i.ca, i64 28
  %.val117.i = load i32, ptr %i.ec, align 4, !tbaa !56 ; 2 uses
  %i.ed = icmp sgt i32 %.val117.i, 0
  br i1 %i.ed, label %bb.l, label %.thread.i

bb.l:                                             ; preds = %Abc_NtkIsMappedLogic.exit.thread.i
  %i.ee = getelementptr i8, ptr %i.ca, i64 32
  %.val120.i = load ptr, ptr %i.ee, align 8, !tbaa !55 ; 2 uses
  %.val120.val.i = load i32, ptr %.val120.i, align 4, !tbaa !45
  %i.ef = mul nsw i32 %.val120.val.i, %8
  %i.eg = sext i32 %i.ef to i64
  %i.eh = getelementptr inbounds [8 x i8], ptr %.val234, i64 %i.eg ; 2 uses
  %.not128.i = icmp eq i32 %.val117.i, 1
  br i1 %.not128.i, label %.thread.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ei = getelementptr i8, ptr %.val120.i, i64 4
  %.val121.val.i = load i32, ptr %i.ei, align 4, !tbaa !45
  %i.ej = mul nsw i32 %.val121.val.i, %8
  %i.ek = sext i32 %i.ej to i64
  %i.el = getelementptr inbounds [8 x i8], ptr %.val234, i64 %i.ek
  br label %.thread.i

.thread.i:                                        ; preds = %bb.m, %bb.l, %Abc_NtkIsMappedLogic.exit.thread.i
  %i.em = phi ptr [ %i.eh, %bb.m ], [ %i.eh, %bb.l ], [ null, %Abc_NtkIsMappedLogic.exit.thread.i ] ; 43 uses
  %i.en = phi ptr [ %i.el, %bb.m ], [ null, %bb.l ], [ null, %Abc_NtkIsMappedLogic.exit.thread.i ] ; 31 uses
  %i.eo = ptrtoaddr ptr %i.en to i64              ; 6 uses
  %i.ep = ptrtoaddr ptr %i.em to i64              ; 8 uses
  switch i32 %i.cj, label %Abc_NtkFinSimOneWord.exit [
    i32 -99, label %.preheader.i
    i32 -98, label %.preheader129.i
    i32 -89, label %.preheader131.i
    i32 -90, label %.preheader133.i
    i32 -96, label %.preheader135.i
    i32 -94, label %.preheader137.i
    i32 -92, label %.preheader139.i
    i32 -95, label %.preheader141.i
    i32 -93, label %.preheader143.i
    i32 -91, label %.preheader145.i
  ]

.preheader145.i:                                  ; preds = %.thread.i
  br i1 %i.s, label %.lr.ph.i238.preheader, label %Abc_NtkFinSimOneWord.exit

end_hunk_1
begin_hunk_2_@Abc_NtkFinSimulateOne:Vec_WecSizeSize.exit
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %indvars.iv.next204.i.2
  store i64 %i.lv, ptr %i.lw, align 8, !tbaa !78
  %indvars.iv.next204.i.3 = add nuw nsw i64 %indvars.iv203.i, 4 ; 2 uses
  %exitcond207.not.i.3 = icmp eq i64 %indvars.iv.next204.i.3, %wide.trip.count.i237
  br i1 %exitcond207.not.i.3, label %Abc_NtkFinSimOneWord.exit, label %.lr.ph159.i, !llvm.loop !177

.lr.ph157.i:                                      ; preds = %.lr.ph157.i.prol.loopexit, %.lr.ph157.i
  %indvars.iv198.i = phi i64 [ %indvars.iv.next199.i.3, %.lr.ph157.i ], [ %indvars.iv198.i.unr, %.lr.ph157.i.prol.loopexit ] ; 7 uses
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %indvars.iv198.i
  %i.ly = load i64, ptr %i.lx, align 8, !tbaa !78
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %indvars.iv198.i
  %i.ma = load i64, ptr %i.lz, align 8, !tbaa !78
  %i.mb = and i64 %i.ma, %i.ly
  %i.mc = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %indvars.iv198.i
  store i64 %i.mb, ptr %i.mc, align 8, !tbaa !78
  %indvars.iv.next199.i = add nuw nsw i64 %indvars.iv198.i, 1 ; 3 uses
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %indvars.iv.next199.i
  %i.me = load i64, ptr %i.md, align 8, !tbaa !78
  %i.mf = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %indvars.iv.next199.i
  %i.mg = load i64, ptr %i.mf, align 8, !tbaa !78
  %i.mh = and i64 %i.mg, %i.me
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %indvars.iv.next199.i
  store i64 %i.mh, ptr %i.mi, align 8, !tbaa !78
  %indvars.iv.next199.i.1 = add nuw nsw i64 %indvars.iv198.i, 2 ; 3 uses
  %i.mj = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %indvars.iv.next199.i.1
  %i.mk = load i64, ptr %i.mj, align 8, !tbaa !78
  %i.ml = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %indvars.iv.next199.i.1
  %i.mm = load i64, ptr %i.ml, align 8, !tbaa !78
  %i.mn = and i64 %i.mm, %i.mk
  %i.mo = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %indvars.iv.next199.i.1
  store i64 %i.mn, ptr %i.mo, align 8, !tbaa !78
  %indvars.iv.next199.i.2 = add nuw nsw i64 %indvars.iv198.i, 3 ; 3 uses
  %i.mp = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %indvars.iv.next199.i.2
  %i.mq = load i64, ptr %i.mp, align 8, !tbaa !78
  %i.mr = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %indvars.iv.next199.i.2
  %i.ms = load i64, ptr %i.mr, align 8, !tbaa !78
  %i.mt = and i64 %i.ms, %i.mq
  %i.mu = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %indvars.iv.next199.i.2
  store i64 %i.mt, ptr %i.mu, align 8, !tbaa !78
  %indvars.iv.next199.i.3 = add nuw nsw i64 %indvars.iv198.i, 4 ; 2 uses
  %exitcond202.not.i.3 = icmp eq i64 %indvars.iv.next199.i.3, %wide.trip.count.i237
  br i1 %exitcond202.not.i.3, label %Abc_NtkFinSimOneWord.exit, label %.lr.ph157.i, !llvm.loop !178

.lr.ph155.i:                                      ; preds = %.lr.ph155.i.prol.loopexit, %.lr.ph155.i
  %indvars.iv193.i = phi i64 [ %indvars.iv.next194.i.3, %.lr.ph155.i ], [ %indvars.iv193.i.unr, %.lr.ph155.i.prol.loopexit ] ; 7 uses
  %i.mv = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %indvars.iv193.i
  %i.mw = load i64, ptr %i.mv, align 8, !tbaa !78
  %i.mx = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %indvars.iv193.i
  %i.my = load i64, ptr %i.mx, align 8, !tbaa !78
  %i.mz = or i64 %i.my, %i.mw
  %i.na = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %indvars.iv193.i
  store i64 %i.mz, ptr %i.na, align 8, !tbaa !78
  %indvars.iv.next194.i = add nuw nsw i64 %indvars.iv193.i, 1 ; 3 uses
  %i.nb = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %indvars.iv.next194.i
  %i.nc = load i64, ptr %i.nb, align 8, !tbaa !78
  %i.nd = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %indvars.iv.next194.i
  %i.ne = load i64, ptr %i.nd, align 8, !tbaa !78
  %i.nf = or i64 %i.ne, %i.nc
  %i.ng = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %indvars.iv.next194.i
  store i64 %i.nf, ptr %i.ng, align 8, !tbaa !78
  %indvars.iv.next194.i.1 = add nuw nsw i64 %indvars.iv193.i, 2 ; 3 uses
  %i.nh = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %indvars.iv.next194.i.1
  %i.ni = load i64, ptr %i.nh, align 8, !tbaa !78
  %i.nj = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %indvars.iv.next194.i.1
  %i.nk = load i64, ptr %i.nj, align 8, !tbaa !78
  %i.nl = or i64 %i.nk, %i.ni
  %i.nm = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %indvars.iv.next194.i.1
  store i64 %i.nl, ptr %i.nm, align 8, !tbaa !78
  %indvars.iv.next194.i.2 = add nuw nsw i64 %indvars.iv193.i, 3 ; 3 uses
  %i.nn = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %indvars.iv.next194.i.2
  %i.no = load i64, ptr %i.nn, align 8, !tbaa !78
  %i.np = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %indvars.iv.next194.i.2
  %i.nq = load i64, ptr %i.np, align 8, !tbaa !78
  %i.nr = or i64 %i.nq, %i.no
  %i.ns = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %indvars.iv.next194.i.2
  store i64 %i.nr, ptr %i.ns, align 8, !tbaa !78
  %indvars.iv.next194.i.3 = add nuw nsw i64 %indvars.iv193.i, 4 ; 2 uses
  %exitcond197.not.i.3 = icmp eq i64 %indvars.iv.next194.i.3, %wide.trip.count.i237
  br i1 %exitcond197.not.i.3, label %Abc_NtkFinSimOneWord.exit, label %.lr.ph155.i, !llvm.loop !179

.lr.ph153.i:                                      ; preds = %.lr.ph153.i.prol.loopexit, %.lr.ph153.i
  %indvars.iv188.i = phi i64 [ %indvars.iv.next189.i.3, %.lr.ph153.i ], [ %indvars.iv188.i.unr, %.lr.ph153.i.prol.loopexit ] ; 7 uses
  %i.nt = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %indvars.iv188.i
  %i.nu = load i64, ptr %i.nt, align 8, !tbaa !78
  %i.nv = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %indvars.iv188.i
  %i.nw = load i64, ptr %i.nv, align 8, !tbaa !78
  %i.nx = xor i64 %i.nw, %i.nu
  %i.ny = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %indvars.iv188.i
  store i64 %i.nx, ptr %i.ny, align 8, !tbaa !78
  %indvars.iv.next189.i = add nuw nsw i64 %indvars.iv188.i, 1 ; 3 uses
  %i.nz = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %indvars.iv.next189.i
  %i.oa = load i64, ptr %i.nz, align 8, !tbaa !78
  %i.ob = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %indvars.iv.next189.i
  %i.oc = load i64, ptr %i.ob, align 8, !tbaa !78
  %i.od = xor i64 %i.oc, %i.oa
  %i.oe = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %indvars.iv.next189.i
  store i64 %i.od, ptr %i.oe, align 8, !tbaa !78
  %indvars.iv.next189.i.1 = add nuw nsw i64 %indvars.iv188.i, 2 ; 3 uses
  %i.of = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %indvars.iv.next189.i.1
  %i.og = load i64, ptr %i.of, align 8, !tbaa !78
  %i.oh = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %indvars.iv.next189.i.1
  %i.oi = load i64, ptr %i.oh, align 8, !tbaa !78
  %i.oj = xor i64 %i.oi, %i.og
  %i.ok = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %indvars.iv.next189.i.1
  store i64 %i.oj, ptr %i.ok, align 8, !tbaa !78
  %indvars.iv.next189.i.2 = add nuw nsw i64 %indvars.iv188.i, 3 ; 3 uses
  %i.ol = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %indvars.iv.next189.i.2
  %i.om = load i64, ptr %i.ol, align 8, !tbaa !78
  %i.on = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %indvars.iv.next189.i.2
  %i.oo = load i64, ptr %i.on, align 8, !tbaa !78
  %i.op = xor i64 %i.oo, %i.om
  %i.oq = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %indvars.iv.next189.i.2
  store i64 %i.op, ptr %i.oq, align 8, !tbaa !78
  %indvars.iv.next189.i.3 = add nuw nsw i64 %indvars.iv188.i, 4 ; 2 uses
  %exitcond192.not.i.3 = icmp eq i64 %indvars.iv.next189.i.3, %wide.trip.count.i237
  br i1 %exitcond192.not.i.3, label %Abc_NtkFinSimOneWord.exit, label %.lr.ph153.i, !llvm.loop !180

.lr.ph151.i:                                      ; preds = %.lr.ph151.i.prol.loopexit, %.lr.ph151.i
  %indvars.iv183.i = phi i64 [ %indvars.iv.next184.i.1, %.lr.ph151.i ], [ %indvars.iv183.i.unr, %.lr.ph151.i.prol.loopexit ] ; 5 uses
  %i.or = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %indvars.iv183.i
  %i.os = load i64, ptr %i.or, align 8, !tbaa !78
  %i.ot = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %indvars.iv183.i
  %i.ou = load i64, ptr %i.ot, align 8, !tbaa !78
  %i.ov = and i64 %i.ou, %i.os
  %i.ow = xor i64 %i.ov, -1
  %i.ox = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %indvars.iv183.i
  store i64 %i.ow, ptr %i.ox, align 8, !tbaa !78
  %indvars.iv.next184.i = add nuw nsw i64 %indvars.iv183.i, 1 ; 3 uses
  %i.oy = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %indvars.iv.next184.i
  %i.oz = load i64, ptr %i.oy, align 8, !tbaa !78
  %i.pa = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %indvars.iv.next184.i
  %i.pb = load i64, ptr %i.pa, align 8, !tbaa !78
  %i.pc = and i64 %i.pb, %i.oz
  %i.pd = xor i64 %i.pc, -1
  %i.pe = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %indvars.iv.next184.i
  store i64 %i.pd, ptr %i.pe, align 8, !tbaa !78
  %indvars.iv.next184.i.1 = add nuw nsw i64 %indvars.iv183.i, 2 ; 2 uses
  %exitcond187.not.i.1 = icmp eq i64 %indvars.iv.next184.i.1, %wide.trip.count.i237
  br i1 %exitcond187.not.i.1, label %Abc_NtkFinSimOneWord.exit, label %.lr.ph151.i, !llvm.loop !181

.lr.ph149.i:                                      ; preds = %.lr.ph149.i.prol.loopexit, %.lr.ph149.i
  %indvars.iv178.i = phi i64 [ %indvars.iv.next179.i.1, %.lr.ph149.i ], [ %indvars.iv178.i.unr, %.lr.ph149.i.prol.loopexit ] ; 5 uses
  %i.pf = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %indvars.iv178.i
  %i.pg = load i64, ptr %i.pf, align 8, !tbaa !78
  %i.ph = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %indvars.iv178.i
  %i.pi = load i64, ptr %i.ph, align 8, !tbaa !78
  %i.pj = or i64 %i.pi, %i.pg
  %i.pk = xor i64 %i.pj, -1
  %i.pl = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %indvars.iv178.i
  store i64 %i.pk, ptr %i.pl, align 8, !tbaa !78
  %indvars.iv.next179.i = add nuw nsw i64 %indvars.iv178.i, 1 ; 3 uses
  %i.pm = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %indvars.iv.next179.i
  %i.pn = load i64, ptr %i.pm, align 8, !tbaa !78
  %i.po = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %indvars.iv.next179.i
  %i.pp = load i64, ptr %i.po, align 8, !tbaa !78
  %i.pq = or i64 %i.pp, %i.pn
  %i.pr = xor i64 %i.pq, -1
  %i.ps = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %indvars.iv.next179.i
  store i64 %i.pr, ptr %i.ps, align 8, !tbaa !78
  %indvars.iv.next179.i.1 = add nuw nsw i64 %indvars.iv178.i, 2 ; 2 uses
  %exitcond182.not.i.1 = icmp eq i64 %indvars.iv.next179.i.1, %wide.trip.count.i237
  br i1 %exitcond182.not.i.1, label %Abc_NtkFinSimOneWord.exit, label %.lr.ph149.i, !llvm.loop !182

.lr.ph.i238:                                      ; preds = %.lr.ph.i238.prol.loopexit, %.lr.ph.i238
  %indvars.iv.i239 = phi i64 [ %indvars.iv.next.i240.1, %.lr.ph.i238 ], [ %indvars.iv.i239.unr, %.lr.ph.i238.prol.loopexit ] ; 5 uses
  %i.pt = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %indvars.iv.i239
  %i.pu = load i64, ptr %i.pt, align 8, !tbaa !78
  %i.pv = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %indvars.iv.i239
  %i.pw = load i64, ptr %i.pv, align 8, !tbaa !78
  %i.px = xor i64 %i.pu, %i.pw
  %i.py = xor i64 %i.px, -1
  %i.pz = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %indvars.iv.i239
  store i64 %i.py, ptr %i.pz, align 8, !tbaa !78
  %indvars.iv.next.i240 = add nuw nsw i64 %indvars.iv.i239, 1 ; 3 uses
  %i.qa = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %indvars.iv.next.i240
  %i.qb = load i64, ptr %i.qa, align 8, !tbaa !78
  %i.qc = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %indvars.iv.next.i240
  %i.qd = load i64, ptr %i.qc, align 8, !tbaa !78
  %i.qe = xor i64 %i.qb, %i.qd
  %i.qf = xor i64 %i.qe, -1
  %i.qg = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %indvars.iv.next.i240
  store i64 %i.qf, ptr %i.qg, align 8, !tbaa !78
  %indvars.iv.next.i240.1 = add nuw nsw i64 %indvars.iv.i239, 2 ; 2 uses
  %exitcond.not.i241.1 = icmp eq i64 %indvars.iv.next.i240.1, %wide.trip.count.i237
  br i1 %exitcond.not.i241.1, label %Abc_NtkFinSimOneWord.exit, label %.lr.ph.i238, !llvm.loop !183

Abc_NtkFinSimOneWord.exit:                        ; preds = %.lr.ph.i238.prol.loopexit, %.lr.ph.i238, %.lr.ph149.i.prol.loopexit, %.lr.ph149.i, %.lr.ph151.i.prol.loopexit, %.lr.ph151.i, %.lr.ph153.i.prol.loopexit, %.lr.ph153.i, %.lr.ph155.i.prol.loopexit, %.lr.ph155.i, %.lr.ph157.i.prol.loopexit, %.lr.ph157.i, %.lr.ph159.i.prol.loopexit, %.lr.ph159.i, %.lr.ph161.i.prol.loopexit, %.lr.ph161.i, %middle.block544, %middle.block526, %middle.block508, %middle.block490, %middle.block472, %middle.block454, %middle.block437, %middle.block423, %._crit_edge.i, %.thread.i, %.preheader145.i, %.preheader143.i, %.preheader141.i, %.preheader139.i, %.preheader137.i, %.preheader135.i, %.preheader133.i, %.preheader131.i, %.preheader129.i, %.lr.ph163.preheader.i, %.preheader.i, %.lr.ph165.preheader.i
  %.val232 = load ptr, ptr %i.u, align 8, !tbaa !71
  %i.qh = sext i32 %.val198 to i64
  %i.qi = getelementptr inbounds [16 x i8], ptr %.val232, i64 %i.qh ; 2 uses
  %i.qj = getelementptr i8, ptr %i.qi, i64 4      ; 2 uses
  %.val221 = load i32, ptr %i.qj, align 4, !tbaa !49
  %or.cond402 = icmp slt i32 %.val221, 2
  br i1 %or.cond402, label %.critedge, label %.critedge6.lr.ph

.critedge6.lr.ph:                                 ; preds = %Abc_NtkFinSimOneWord.exit
  %i.qk = getelementptr i8, ptr %i.qi, i64 8
  br label %.critedge6

.critedge6:                                       ; preds = %.critedge6.lr.ph, %bb.p
  %indvars.iv330 = phi i64 [ 0, %.critedge6.lr.ph ], [ %indvars.iv.next331, %bb.p ] ; 3 uses
  %.val209 = load ptr, ptr %i.qk, align 8, !tbaa !51
  %i.ql = getelementptr inbounds nuw [4 x i8], ptr %.val209, i64 %indvars.iv330 ; 2 uses
  %i.qm = load i32, ptr %i.ql, align 4, !tbaa !45
  %i.qn = getelementptr inbounds nuw i8, ptr %i.ql, i64 4
  %i.qo = load i32, ptr %i.qn, align 4, !tbaa !45 ; 5 uses
  %i.qp = shl nsw i32 %i.qm, 1
  %.val207 = load ptr, ptr %i.v, align 8, !tbaa !51
  %i.qq = sext i32 %i.qp to i64
  %i.qr = getelementptr [4 x i8], ptr %.val207, i64 %i.qq
  %i.qs = getelementptr i8, ptr %i.qr, i64 4
  %i.qt = load i32, ptr %i.qs, align 4, !tbaa !45 ; 2 uses
  %i.qu = icmp eq i32 %i.qt, -97
  br i1 %i.qu, label %.critedge6._crit_edge, label %bb.n

.critedge6._crit_edge:                            ; preds = %.critedge6
  %.pre = and i32 %i.qo, 31
  %.pre367 = ashr i32 %i.qo, 5
  %.pre369 = sext i32 %.pre367 to i64
  br label %bb.o

bb.n:                                             ; preds = %.critedge6
  %i.qv = ashr i32 %i.qo, 5
  %i.qw = sext i32 %i.qv to i64                   ; 2 uses
  %i.qx = getelementptr inbounds [4 x i8], ptr %i.cm, i64 %i.qw
  %i.qy = load i32, ptr %i.qx, align 4, !tbaa !45
  %i.qz = and i32 %i.qo, 31                       ; 2 uses
  %i.ra = lshr i32 %i.qy, %i.qz
  %i.rb = and i32 %i.ra, 1
  %i.rc = tail call fastcc i32 @Abc_NtkFinSimOneBit(ptr noundef %i.ca, i32 noundef %i.qt, ptr noundef %7, i32 noundef %8, i32 noundef %i.qo)
  %.not193 = icmp eq i32 %i.rb, %i.rc
  br i1 %.not193, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.critedge6._crit_edge, %bb.n
  %.pre-phi370 = phi i64 [ %.pre369, %.critedge6._crit_edge ], [ %i.qw, %bb.n ]
  %.pre-phi = phi i32 [ %.pre, %.critedge6._crit_edge ], [ %i.qz, %bb.n ]
  %i.rd = shl nuw i32 1, %.pre-phi
  %i.re = getelementptr inbounds [4 x i8], ptr %i.cm, i64 %.pre-phi370 ; 2 uses
  %i.rf = load i32, ptr %i.re, align 4, !tbaa !45
  %i.rg = xor i32 %i.rf, %i.rd
  store i32 %i.rg, ptr %i.re, align 4, !tbaa !45
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %indvars.iv.next331 = add nuw nsw i64 %indvars.iv330, 2
  %.val220 = load i32, ptr %i.qj, align 4, !tbaa !49
  %i.rh = trunc i64 %indvars.iv330 to i32
  %14 = add i32 %i.rh, 3
  %i.ri = icmp slt i32 %14, %.val220
  br i1 %i.ri, label %.critedge6, label %.critedge, !llvm.loop !184

.critedge:                                        ; preds = %bb.p, %Abc_NtkFinSimOneWord.exit, %bb.f
  %indvars.iv.next334 = add nuw nsw i64 %indvars.iv333, 1 ; 2 uses
  %.val222 = load i32, ptr %i.l, align 4, !tbaa !49
  %i.rj = sext i32 %.val222 to i64
  %i.rk = icmp slt i64 %indvars.iv.next334, %i.rj
  br i1 %i.rk, label %bb.f, label %.critedge8.preheader, !llvm.loop !185

.critedge8.preheader:                             ; preds = %.critedge, %.critedge.preheader
  %.val228310 = load i32, ptr %i.b, align 4, !tbaa !69 ; 2 uses
  %i.rl = icmp slt i32 %11, %.val228310
  br i1 %i.rl, label %.lr.ph312, label %.critedge12

.lr.ph312:                                        ; preds = %.critedge8.preheader
  %i.rm = getelementptr i8, ptr %10, i64 8        ; 4 uses
  %i.rn = shl nsw i32 %12, 1
  %i.ro = getelementptr i8, ptr %2, i64 4
  %i.rp = getelementptr i8, ptr %2, i64 8
  %i.rq = getelementptr i8, ptr %0, i64 32
  %i.rr = getelementptr i8, ptr %7, i64 8
  %i.rs = sext i32 %11 to i64                     ; 2 uses
  %.val230.pre = load ptr, ptr %i.rm, align 8, !tbaa !71
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph312, %.critedge8
  %.val228365 = phi i32 [ %.val228310, %.lr.ph312 ], [ %.val228, %.critedge8 ]
  %.val230 = phi ptr [ %.val230.pre, %.lr.ph312 ], [ %.val230361, %.critedge8 ] ; 3 uses
  %indvars.iv356 = phi i64 [ %i.rs, %.lr.ph312 ], [ %indvars.iv.next357, %.critedge8 ] ; 4 uses
  %i.rt = getelementptr inbounds [16 x i8], ptr %.val230, i64 %indvars.iv356 ; 4 uses
  %i.ru = icmp eq i64 %indvars.iv356, %i.rs
  %i.rv = select i1 %i.ru, i32 %i.rn, i32 2       ; 4 uses
  %i.rw = or disjoint i32 %i.rv, 1                ; 2 uses
  %i.rx = getelementptr i8, ptr %i.rt, i64 4
  %.0178.val218302 = load i32, ptr %i.rx, align 4, !tbaa !49
  %i.ry = icmp slt i32 %i.rw, %.0178.val218302
  br i1 %i.ry, label %.critedge14.lr.ph, label %.critedge8

.critedge14.lr.ph:                                ; preds = %bb.q
  %i.rz = getelementptr i8, ptr %i.rt, i64 8
  %.val202 = load ptr, ptr %i.rz, align 8, !tbaa !51
  %i.sa = getelementptr inbounds nuw i8, ptr %.val202, i64 4
  %i.sb = load i32, ptr %i.sa, align 4, !tbaa !45 ; 2 uses
  %i.sc = ashr i32 %i.sb, 5
  %i.sd = sext i32 %i.sc to i64
  %i.se = and i32 %i.sb, 31
  %i.sf = sext i32 %i.rv to i64
  %i.sg = sext i32 %i.rw to i64
  br label %.critedge14

.critedge14:                                      ; preds = %.critedge14.lr.ph, %bb.aq
  %i.sh = phi ptr [ %.val230, %.critedge14.lr.ph ], [ %.val230362, %bb.aq ] ; 6 uses
  %indvars.iv353 = phi i64 [ %i.sf, %.critedge14.lr.ph ], [ %indvars.iv.next354, %bb.aq ] ; 3 uses
  %i.si = phi i64 [ %i.sg, %.critedge14.lr.ph ], [ %15, %bb.aq ]
  %.0306 = phi ptr [ null, %.critedge14.lr.ph ], [ %.1, %bb.aq ] ; 3 uses
  %.0165305 = phi i32 [ %i.rv, %.critedge14.lr.ph ], [ %.1166, %bb.aq ] ; 3 uses
  %.0178303 = phi ptr [ %i.rt, %.critedge14.lr.ph ], [ %.1179, %bb.aq ] ; 2 uses
  %i.sj = getelementptr i8, ptr %.0178303, i64 8
  %.0178.val201 = load ptr, ptr %i.sj, align 8, !tbaa !51 ; 3 uses
  %i.sk = getelementptr inbounds [4 x i8], ptr %.0178.val201, i64 %indvars.iv353
  %i.sl = load i32, ptr %i.sk, align 4, !tbaa !45 ; 2 uses
  %i.sm = getelementptr inbounds [4 x i8], ptr %.0178.val201, i64 %i.si
  %i.sn = load i32, ptr %i.sm, align 4, !tbaa !45 ; 4 uses
  %.val19.i249 = load i32, ptr %i.ro, align 4, !tbaa !49 ; 2 uses
  %i.so = icmp sgt i32 %.val19.i249, 0
  br i1 %i.so, label %.lr.ph.i251, label %.loopexit

.lr.ph.i251:                                      ; preds = %.critedge14
  %.val18.i252 = load ptr, ptr %i.rp, align 8, !tbaa !51
  %.val.i253 = load ptr, ptr %i.rq, align 8, !tbaa !36
  %i.sp = getelementptr i8, ptr %.val.i253, i64 8
  %.val.val.i254 = load ptr, ptr %i.sp, align 8, !tbaa !40
  %i.sq = ashr i32 %i.sn, 5
  %i.sr = sext i32 %i.sq to i64
  %i.ss = and i32 %i.sn, 31
  %wide.trip.count.i255 = zext nneg i32 %.val19.i249 to i64
  br label %bb.r

bb.r:                                             ; preds = %bb.t, %.lr.ph.i251
  %indvars.iv.i256 = phi i64 [ 0, %.lr.ph.i251 ], [ %indvars.iv.next.i261, %bb.t ] ; 2 uses
  %i.st = getelementptr inbounds nuw [4 x i8], ptr %.val18.i252, i64 %indvars.iv.i256
  %i.su = load i32, ptr %i.st, align 4, !tbaa !45
  %i.sv = sext i32 %i.su to i64
  %i.sw = getelementptr inbounds [8 x i8], ptr %.val.val.i254, i64 %i.sv
  %i.sx = load ptr, ptr %i.sw, align 8, !tbaa !41 ; 2 uses
  %i.sy = icmp eq ptr %i.sx, null
  br i1 %i.sy, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.sz = getelementptr i8, ptr %i.sx, i64 32
  %.val20.i257 = load ptr, ptr %i.sz, align 8, !tbaa !55
  %.val20.val.i258 = load i32, ptr %.val20.i257, align 4, !tbaa !45
  %i.ta = mul nsw i32 %.val20.val.i258, %8
  %.val21.i259 = load ptr, ptr %i.rr, align 8, !tbaa !95
  %i.tb = sext i32 %i.ta to i64
  %i.tc = getelementptr inbounds [8 x i8], ptr %.val21.i259, i64 %i.tb ; 2 uses
  %i.td = getelementptr inbounds [4 x i8], ptr %i.tc, i64 %i.sd
  %i.te = load i32, ptr %i.td, align 4, !tbaa !45
  %i.tf = lshr i32 %i.te, %i.se
  %i.tg = getelementptr inbounds [4 x i8], ptr %i.tc, i64 %i.sr
  %i.th = load i32, ptr %i.tg, align 4, !tbaa !45
  %i.ti = lshr i32 %i.th, %i.ss
  %i.tj = xor i32 %i.ti, %i.tf
  %i.tk = and i32 %i.tj, 1
  %.not.i260 = icmp eq i32 %i.tk, 0
  br i1 %.not.i260, label %bb.t, label %Abc_NtkFinCompareSimTwo.exit263

bb.t:                                             ; preds = %bb.s, %bb.r
  %indvars.iv.next.i261 = add nuw nsw i64 %indvars.iv.i256, 1 ; 2 uses
  %exitcond.not.i262 = icmp eq i64 %indvars.iv.next.i261, %wide.trip.count.i255
  br i1 %exitcond.not.i262, label %.loopexit, label %bb.r, !llvm.loop !186

.loopexit:                                        ; preds = %bb.t, %.critedge14
  %i.tl = sext i32 %.0165305 to i64
  %i.tm = getelementptr [4 x i8], ptr %.0178.val201, i64 %i.tl ; 2 uses
  store i32 %i.sl, ptr %i.tm, align 4, !tbaa !45
  %i.tn = add nsw i32 %.0165305, 2
  %i.to = getelementptr i8, ptr %i.tm, i64 4
  store i32 %i.sn, ptr %i.to, align 4, !tbaa !45
  br label %bb.aq

Abc_NtkFinCompareSimTwo.exit263:                  ; preds = %bb.s
  %.not190 = icmp eq ptr %.0306, null
  br i1 %.not190, label %bb.u, label %bb.ad

bb.u:                                             ; preds = %Abc_NtkFinCompareSimTwo.exit263
  %i.tp = load i32, ptr %i.b, align 4, !tbaa !69  ; 5 uses
  %i.tq = load i32, ptr %10, align 8, !tbaa !70
  %i.tr = icmp eq i32 %i.tp, %i.tq
  br i1 %i.tr, label %bb.v, label %Vec_WecPushLevel.exit

bb.v:                                             ; preds = %bb.u
  %i.ts = icmp slt i32 %i.tp, 16
  br i1 %i.ts, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %.not13.i.i = icmp eq ptr %i.sh, null
  br i1 %.not13.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.tt = tail call dereferenceable_or_null(256) ptr @realloc(ptr noundef nonnull %i.sh, i64 noundef 256) #35
  %.pre.i.i = load i32, ptr %10, align 8, !tbaa !70
  br label %Vec_WecGrow.exit.i

bb.y:                                             ; preds = %bb.w
  %i.tu = tail call noalias dereferenceable_or_null(256) ptr @malloc(i64 noundef 256) #34
  br label %Vec_WecGrow.exit.i

Vec_WecGrow.exit.i:                               ; preds = %bb.y, %bb.x
  %i.tv = phi i32 [ %.pre.i.i, %bb.x ], [ %i.tp, %bb.y ] ; 2 uses
  %i.tw = phi ptr [ %i.tt, %bb.x ], [ %i.tu, %bb.y ] ; 3 uses
  store ptr %i.tw, ptr %i.rm, align 8, !tbaa !71
  %i.tx = sext i32 %i.tv to i64
  %i.ty = getelementptr inbounds [16 x i8], ptr %i.tw, i64 %i.tx
  %i.tz = sub nsw i32 16, %i.tv
  br label %Vec_WecPushLevel.exit.sink.split

bb.z:                                             ; preds = %bb.v
  %i.ua = shl nuw nsw i32 %i.tp, 1                ; 3 uses
  %.not13.i10.i = icmp eq ptr %i.sh, null
  %i.ub = zext nneg i32 %i.ua to i64
  %i.uc = shl nuw nsw i64 %i.ub, 4                ; 2 uses
  br i1 %.not13.i10.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ud = tail call ptr @realloc(ptr noundef nonnull %i.sh, i64 noundef %i.uc) #35
  %.pre.i11.i = load i32, ptr %10, align 8, !tbaa !70
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.ue = tail call noalias ptr @malloc(i64 noundef %i.uc) #34
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.uf = phi i32 [ %.pre.i11.i, %bb.aa ], [ %i.tp, %bb.ab ] ; 2 uses
  %i.ug = phi ptr [ %i.ud, %bb.aa ], [ %i.ue, %bb.ab ] ; 3 uses
  store ptr %i.ug, ptr %i.rm, align 8, !tbaa !71
  %i.uh = sext i32 %i.uf to i64
  %i.ui = getelementptr inbounds [16 x i8], ptr %i.ug, i64 %i.uh
  %i.uj = sub nsw i32 %i.ua, %i.uf
  br label %Vec_WecPushLevel.exit.sink.split

Vec_WecPushLevel.exit.sink.split:                 ; preds = %bb.ac, %Vec_WecGrow.exit.i
  %.sink406 = phi i32 [ %i.tz, %Vec_WecGrow.exit.i ], [ %i.uj, %bb.ac ]
  %.sink403 = phi ptr [ %i.ty, %Vec_WecGrow.exit.i ], [ %i.ui, %bb.ac ]
  %.sink = phi i32 [ 16, %Vec_WecGrow.exit.i ], [ %i.ua, %bb.ac ]
  %.val8.i264.ph = phi ptr [ %i.tw, %Vec_WecGrow.exit.i ], [ %i.ug, %bb.ac ]
  %i.uk = sext i32 %.sink406 to i64
  %i.ul = shl nsw i64 %i.uk, 4
  tail call void @llvm.memset.p0.i64(ptr align 8 %.sink403, i8 0, i64 %i.ul, i1 false)
  store i32 %.sink, ptr %10, align 8, !tbaa !70
  br label %Vec_WecPushLevel.exit

Vec_WecPushLevel.exit:                            ; preds = %Vec_WecPushLevel.exit.sink.split, %bb.u
  %.val8.i264 = phi ptr [ %i.sh, %bb.u ], [ %.val8.i264.ph, %Vec_WecPushLevel.exit.sink.split ]
  %i.um = load i32, ptr %i.b, align 4, !tbaa !69
  %i.un = add nsw i32 %i.um, 1                    ; 2 uses
  store i32 %i.un, ptr %i.b, align 4, !tbaa !69
  %i.uo = sext i32 %i.un to i64
  %i.up = getelementptr inbounds [16 x i8], ptr %.val8.i264, i64 %i.uo
  %i.uq = getelementptr inbounds i8, ptr %i.up, i64 -16
  br label %bb.ad

bb.ad:                                            ; preds = %Abc_NtkFinCompareSimTwo.exit263, %Vec_WecPushLevel.exit
  %i.ur = phi ptr [ %i.uq, %Vec_WecPushLevel.exit ], [ %.0306, %Abc_NtkFinCompareSimTwo.exit263 ] ; 9 uses
  %i.us = getelementptr inbounds nuw i8, ptr %i.ur, i64 4 ; 6 uses
  %i.ut = load i32, ptr %i.us, align 4, !tbaa !49 ; 7 uses
  %i.uu = load i32, ptr %i.ur, align 8, !tbaa !50
  %i.uv = icmp eq i32 %i.ut, %i.uu
  br i1 %i.uv, label %bb.ae, label %Vec_IntPush.exit.i

bb.ae:                                            ; preds = %bb.ad
  %i.uw = icmp slt i32 %i.ut, 16
  br i1 %i.uw, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.ux = getelementptr inbounds nuw i8, ptr %i.ur, i64 8 ; 2 uses
  %i.uy = load ptr, ptr %i.ux, align 8, !tbaa !51 ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.uy, null
  br i1 %.not9.i.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.uz = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.uy, i64 noundef 64) #35
  br label %Vec_IntGrow.exit.i.i

bb.ah:                                            ; preds = %bb.af
  %i.va = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #34
  br label %Vec_IntGrow.exit.i.i

Vec_IntGrow.exit.i.i:                             ; preds = %bb.ah, %bb.ag
  %i.vb = phi ptr [ %i.uz, %bb.ag ], [ %i.va, %bb.ah ]
  store ptr %i.vb, ptr %i.ux, align 8, !tbaa !51
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.ai:                                            ; preds = %bb.ae
  %i.vc = icmp samesign ult i32 %i.ut, 1073741823
  %i.vd = shl nuw nsw i32 %i.ut, 1
  %spec.select.i.i = select i1 %i.vc, i32 %i.vd, i32 2147483647 ; 3 uses
  %.not.i9.i.i = icmp samesign ult i32 %i.ut, %spec.select.i.i
  br i1 %.not.i9.i.i, label %bb.aj, label %Vec_IntPush.exit.i

bb.aj:                                            ; preds = %bb.ai
  %i.ve = getelementptr inbounds nuw i8, ptr %i.ur, i64 8 ; 2 uses
  %i.vf = load ptr, ptr %i.ve, align 8, !tbaa !51 ; 2 uses
  %.not9.i10.i.i = icmp eq ptr %i.vf, null
  %i.vg = zext nneg i32 %spec.select.i.i to i64
  %i.vh = shl nuw nsw i64 %i.vg, 2                ; 2 uses
  br i1 %.not9.i10.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.vi = tail call ptr @realloc(ptr noundef nonnull %i.vf, i64 noundef %i.vh) #35
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.vj = tail call noalias ptr @malloc(i64 noundef %i.vh) #34
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.vk = phi ptr [ %i.vi, %bb.ak ], [ %i.vj, %bb.al ]
  store ptr %i.vk, ptr %i.ve, align 8, !tbaa !51
  br label %Vec_IntGrow.exit11.sink.split.i.i

Vec_IntGrow.exit11.sink.split.i.i:                ; preds = %bb.am, %Vec_IntGrow.exit.i.i
  %spec.select.sink.i.i = phi i32 [ %spec.select.i.i, %bb.am ], [ 16, %Vec_IntGrow.exit.i.i ]
  store i32 %spec.select.sink.i.i, ptr %i.ur, align 8, !tbaa !50
  %.pre.i = load i32, ptr %i.us, align 4, !tbaa !49
  br label %Vec_IntPush.exit.i

Vec_IntPush.exit.i:                               ; preds = %Vec_IntGrow.exit11.sink.split.i.i, %bb.ai, %bb.ad
  %i.vl = phi i32 [ %i.ut, %bb.ad ], [ %i.ut, %bb.ai ], [ %.pre.i, %Vec_IntGrow.exit11.sink.split.i.i ] ; 2 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %i.ur, i64 8 ; 2 uses
  %i.vn = load ptr, ptr %i.vm, align 8, !tbaa !51 ; 4 uses
  %i.vo = add nsw i32 %i.vl, 1
  store i32 %i.vo, ptr %i.us, align 4, !tbaa !49
  %i.vp = sext i32 %i.vl to i64
  %i.vq = getelementptr inbounds [4 x i8], ptr %i.vn, i64 %i.vp
  store i32 %i.sl, ptr %i.vq, align 4, !tbaa !45
  %i.vr = load i32, ptr %i.us, align 4, !tbaa !49 ; 7 uses
  %i.vs = load i32, ptr %i.ur, align 8, !tbaa !50
  %i.vt = icmp eq i32 %i.vr, %i.vs
  br i1 %i.vt, label %bb.an, label %Vec_IntPushTwo.exit

bb.an:                                            ; preds = %Vec_IntPush.exit.i
  %i.vu = icmp slt i32 %i.vr, 16
  br i1 %i.vu, label %Vec_IntGrow.exit11.sink.split.i6.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.vv = icmp samesign ult i32 %i.vr, 1073741823
  %i.vw = shl nuw nsw i32 %i.vr, 1
  %spec.select.i3.i = select i1 %i.vv, i32 %i.vw, i32 2147483647 ; 3 uses
  %.not.i9.i4.i = icmp samesign ult i32 %i.vr, %spec.select.i3.i
  br i1 %.not.i9.i4.i, label %bb.ap, label %Vec_IntPushTwo.exit

bb.ap:                                            ; preds = %bb.ao
  %i.vx = zext nneg i32 %spec.select.i3.i to i64
  %i.vy = shl nuw nsw i64 %i.vx, 2
  br label %Vec_IntGrow.exit11.sink.split.i6.i

Vec_IntGrow.exit11.sink.split.i6.i:               ; preds = %bb.ap, %bb.an
  %.sink.i = phi i64 [ %i.vy, %bb.ap ], [ 64, %bb.an ]
  %spec.select.sink.i7.i = phi i32 [ %spec.select.i3.i, %bb.ap ], [ 16, %bb.an ]
  %i.vz = tail call ptr @realloc(ptr noundef nonnull %i.vn, i64 noundef %.sink.i) #35 ; 2 uses
  store ptr %i.vz, ptr %i.vm, align 8, !tbaa !51
  store i32 %spec.select.sink.i7.i, ptr %i.ur, align 8, !tbaa !50
  %.pre11.i = load i32, ptr %i.us, align 4, !tbaa !49
  br label %Vec_IntPushTwo.exit

Vec_IntPushTwo.exit:                              ; preds = %Vec_IntPush.exit.i, %bb.ao, %Vec_IntGrow.exit11.sink.split.i6.i
  %i.wa = phi i32 [ %i.vr, %Vec_IntPush.exit.i ], [ %i.vr, %bb.ao ], [ %.pre11.i, %Vec_IntGrow.exit11.sink.split.i6.i ] ; 2 uses
  %i.wb = phi ptr [ %i.vn, %Vec_IntPush.exit.i ], [ %i.vn, %bb.ao ], [ %i.vz, %Vec_IntGrow.exit11.sink.split.i6.i ]
  %i.wc = add nsw i32 %i.wa, 1
  store i32 %i.wc, ptr %i.us, align 4, !tbaa !49
  %i.wd = sext i32 %i.wa to i64
  %i.we = getelementptr inbounds [4 x i8], ptr %i.wb, i64 %i.wd
  store i32 %i.sn, ptr %i.we, align 4, !tbaa !45
  %.val229 = load ptr, ptr %i.rm, align 8, !tbaa !71 ; 2 uses
  %i.wf = getelementptr inbounds [16 x i8], ptr %.val229, i64 %indvars.iv356
  br label %bb.aq

bb.aq:                                            ; preds = %Vec_IntPushTwo.exit, %.loopexit
  %.val230362 = phi ptr [ %i.sh, %.loopexit ], [ %.val229, %Vec_IntPushTwo.exit ] ; 2 uses
  %.1179 = phi ptr [ %.0178303, %.loopexit ], [ %i.wf, %Vec_IntPushTwo.exit ] ; 3 uses
  %.1166 = phi i32 [ %i.tn, %.loopexit ], [ %.0165305, %Vec_IntPushTwo.exit ] ; 2 uses
  %.1 = phi ptr [ %.0306, %.loopexit ], [ %i.ur, %Vec_IntPushTwo.exit ]
  %indvars.iv.next354 = add nsw i64 %indvars.iv353, 2
  %15 = add nsw i64 %indvars.iv353, 3             ; 2 uses
  %i.wg = getelementptr i8, ptr %.1179, i64 4
  %.0178.val218 = load i32, ptr %i.wg, align 4, !tbaa !49
  %i.wh = sext i32 %.0178.val218 to i64
  %i.wi = icmp slt i64 %15, %i.wh
  br i1 %i.wi, label %.critedge14, label %.critedge8.loopexit, !llvm.loop !187

.critedge8.loopexit:                              ; preds = %bb.aq
  %.val228.pre = load i32, ptr %i.b, align 4, !tbaa !69
  br label %.critedge8

.critedge8:                                       ; preds = %.critedge8.loopexit, %bb.q
  %.val228 = phi i32 [ %.val228365, %bb.q ], [ %.val228.pre, %.critedge8.loopexit ] ; 2 uses
  %.val230361 = phi ptr [ %.val230, %bb.q ], [ %.val230362, %.critedge8.loopexit ]
  %.0178.lcssa = phi ptr [ %i.rt, %bb.q ], [ %.1179, %.critedge8.loopexit ]
  %.0165.lcssa = phi i32 [ %i.rv, %bb.q ], [ %.1166, %.critedge8.loopexit ]
  %i.wj = getelementptr i8, ptr %.0178.lcssa, i64 4
  store i32 %.0165.lcssa, ptr %i.wj, align 4, !tbaa !49
  %indvars.iv.next357 = add nsw i64 %indvars.iv356, 1 ; 2 uses
  %i.wk = sext i32 %.val228 to i64
  %i.wl = icmp slt i64 %indvars.iv.next357, %i.wk
  br i1 %i.wl, label %bb.q, label %.critedge12, !llvm.loop !188

.critedge12:                                      ; preds = %.critedge8, %.critedge8.preheader
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @Abc_NtkFinSimOneBit(ptr nofree noundef nonnull readonly captures(none) %0, i32 noundef range(i32 -96, -97) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4) unnamed_addr #11 {
bb.a:
  %i.a = alloca [6 x i32], align 16               ; 7 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !54     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !52
  %i.e = icmp eq i32 %i.d, 4
  br i1 %i.e, label %Abc_NtkIsMappedLogic.exit, label %Abc_NtkIsMappedLogic.exit.thread

Abc_NtkIsMappedLogic.exit:                        ; preds = %bb.a
  %i.f = load i32, ptr %i.b, align 8, !tbaa !53
  %i.g = icmp eq i32 %i.f, 2
  %i.h = icmp sgt i32 %1, -1
  %or.cond = and i1 %i.h, %i.g
  br i1 %or.cond, label %bb.b, label %Abc_NtkIsMappedLogic.exit.thread

bb.b:                                             ; preds = %Abc_NtkIsMappedLogic.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  %i.k = getelementptr i8, ptr %0, i64 28
  %.val63 = load i32, ptr %i.k, align 4, !tbaa !56 ; 4 uses
  %i.l = icmp sgt i32 %.val63, 0
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.m = getelementptr i8, ptr %0, i64 32
  %.val64 = load ptr, ptr %i.m, align 8, !tbaa !55 ; 3 uses
  %i.n = getelementptr i8, ptr %2, i64 8
  %.val69 = load ptr, ptr %i.n, align 8, !tbaa !95
  %i.o = ashr i32 %4, 5
  %i.p = sext i32 %i.o to i64
  %invariant.gep = getelementptr [4 x i8], ptr %.val69, i64 %i.p ; 3 uses
  %i.q = and i32 %4, 31                           ; 3 uses
  %wide.trip.count = zext nneg i32 %.val63 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.r = icmp eq i32 %.val63, 1
  br i1 %i.r, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.c ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.c ]
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %.val64, i64 %indvars.iv
  %i.t = load i32, ptr %i.s, align 4, !tbaa !45
  %i.u = mul nsw i32 %i.t, %3
  %i.v = sext i32 %i.u to i64
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.v
  %i.w = load i32, ptr %gep, align 4, !tbaa !45
  %i.x = lshr i32 %i.w, %i.q
  %i.y = and i32 %i.x, 1
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  store i32 %i.y, ptr %i.z, align 8, !tbaa !45
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %.val64, i64 %indvars.iv.next
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !45
  %i.ac = mul nsw i32 %i.ab, %3
  %i.ad = sext i32 %i.ac to i64
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ad
  %i.ae = load i32, ptr %gep.1, align 4, !tbaa !45
  %i.af = lshr i32 %i.ae, %i.q
  %i.ag = and i32 %i.af, 1
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !45
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.c, !llvm.loop !189

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod83 = trunc i32 %.val63 to i1
  tail call void @llvm.assume(i1 %lcmp.mod83)
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.val64, i64 %indvars.iv.epil.init
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !45
  %i.ak = mul nsw i32 %i.aj, %3
  %i.al = sext i32 %i.ak to i64
  %gep.epil = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.al
  %i.am = load i32, ptr %gep.epil, align 4, !tbaa !45
  %i.an = lshr i32 %i.am, %i.q
  %i.ao = and i32 %i.an, 1
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.epil.init
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !45
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.b
  %i.aq = tail call ptr @Mio_LibraryReadGateById(ptr noundef %i.j, i32 noundef %1) #32 ; 2 uses
  %i.ar = tail call i32 @Mio_GateReadPinNum(ptr noundef %i.aq) #32 ; 3 uses
  %i.as = icmp sgt i32 %i.ar, 0
  br i1 %i.as, label %.lr.ph.preheader.i, label %Mio_LibGateSimulateOne.exit

.lr.ph.preheader.i:                               ; preds = %._crit_edge
  %wide.trip.count.i = zext nneg i32 %i.ar to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.ar, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bb, %vector.body ]
  %vec.phi80 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bc, %vector.body ]
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %wide.load = load <4 x i32>, ptr %i.at, align 16, !tbaa !45
  %wide.load81 = load <4 x i32>, ptr %i.au, align 16, !tbaa !45
  %i.av = icmp eq <4 x i32> %wide.load, zeroinitializer
  %i.aw = icmp eq <4 x i32> %wide.load81, zeroinitializer
  %i.ax = shl nuw <4 x i32> splat (i32 1), %vec.ind
  %i.ay = shl nuw <4 x i32> splat (i32 1), %step.add
  %i.az = select <4 x i1> %i.av, <4 x i32> zeroinitializer, <4 x i32> %i.ax
  %i.ba = select <4 x i1> %i.aw, <4 x i32> zeroinitializer, <4 x i32> %i.ay
  %i.bb = or <4 x i32> %i.az, %vec.phi            ; 2 uses
  %i.bc = or <4 x i32> %i.ba, %vec.phi80          ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !190

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i32> %i.bc, %i.bb
  %i.be = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %Mio_LibGateSimulateOne.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  %.011.i.ph = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.be, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %.011.i = phi i32 [ %.1.i, %.lr.ph.i ], [ %.011.i.ph, %.lr.ph.i.preheader ]
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !45
  %.not.i = icmp eq i32 %i.bg, 0
  %i.bh = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.bi = shl nuw i32 1, %i.bh
  %i.bj = select i1 %.not.i, i32 0, i32 %i.bi
  %.1.i = or i32 %i.bj, %.011.i                   ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Mio_LibGateSimulateOne.exit, label %.lr.ph.i, !llvm.loop !191

Mio_LibGateSimulateOne.exit:                      ; preds = %.lr.ph.i, %middle.block, %._crit_edge
  %.0.lcssa.i = phi i32 [ 0, %._crit_edge ], [ %i.be, %middle.block ], [ %.1.i, %.lr.ph.i ] ; 2 uses
  %i.bk = tail call ptr @Mio_GateReadTruthP(ptr noundef %i.aq) #32
  %i.bl = ashr i32 %.0.lcssa.i, 5
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !45
  %i.bp = and i32 %.0.lcssa.i, 31
  %i.bq = lshr i32 %i.bo, %i.bp
  %i.br = and i32 %i.bq, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  br label %bb.q

Abc_NtkIsMappedLogic.exit.thread:                 ; preds = %bb.a, %Abc_NtkIsMappedLogic.exit
  %i.bs = getelementptr i8, ptr %0, i64 28
  %.val62 = load i32, ptr %i.bs, align 4, !tbaa !56 ; 2 uses
  %i.bt = icmp sgt i32 %.val62, 0
  br i1 %i.bt, label %bb.d, label %.thread72
end_hunk_2
begin_hunk_3_@Abc_NtkFinRefinement:bb.a
  %indvars.iv.i167 = phi i64 [ %i.do, %.lr.ph.i166 ], [ %indvars.iv.next.i168, %bb.an ] ; 2 uses
  %indvars.iv.next.i168 = add nsw i64 %indvars.iv.i167, 1 ; 3 uses
  %i.hn = getelementptr inbounds [4 x i8], ptr %i.hm, i64 %indvars.iv.next.i168
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !45
  %i.hp = getelementptr inbounds [4 x i8], ptr %i.hm, i64 %indvars.iv.i167
  store i32 %i.ho, ptr %i.hp, align 4, !tbaa !45
  %i.hq = load i32, ptr %i.gw, align 4, !tbaa !49
  %i.hr = sext i32 %i.hq to i64
  %i.hs = icmp slt i64 %indvars.iv.next.i168, %i.hr
  br i1 %i.hs, label %bb.an, label %Vec_IntDrop.exit169, !llvm.loop !208

bb.ao:                                            ; preds = %bb.q
  %i.ht = sdiv i32 %.0112198, 2
  tail call void @Abc_NtkFinSimulateOne(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %4, ptr noundef %7, ptr noundef nonnull %i.ef, ptr noundef nonnull %i.p, i32 noundef %i.l, ptr noundef nonnull %5, ptr noundef nonnull %i.c, i32 noundef %i.dk, i32 noundef %i.ht)
  br label %Vec_IntDrop.exit169

Vec_IntDrop.exit169:                              ; preds = %bb.an, %Vec_IntDrop.exit, %bb.ao
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !51 ; 2 uses
  %.not.i170 = icmp eq ptr %i.hv, null
  br i1 %.not.i170, label %Vec_IntFree.exit171, label %bb.ap

bb.ap:                                            ; preds = %Vec_IntDrop.exit169
  tail call void @free(ptr noundef nonnull %i.hv) #32
  br label %Vec_IntFree.exit171

Vec_IntFree.exit171:                              ; preds = %Vec_IntDrop.exit169, %bb.ap
  tail call void @free(ptr noundef nonnull %i.ef) #32
  %.val141 = load ptr, ptr %i.f, align 8, !tbaa !71 ; 2 uses
  %i.hw = getelementptr inbounds nuw [16 x i8], ptr %.val141, i64 %indvars.iv
  br label %bb.aq

bb.aq:                                            ; preds = %Vec_IntFree.exit171, %bb.p
  %.val143219 = phi ptr [ %i.dl, %bb.p ], [ %.val141, %Vec_IntFree.exit171 ] ; 2 uses
  %.1118 = phi ptr [ %.0117197, %bb.p ], [ %i.hw, %Vec_IntFree.exit171 ] ; 2 uses
  %.1113 = phi i32 [ %i.eh, %bb.p ], [ %.0112198, %Vec_IntFree.exit171 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  %i.hx = add nsw i32 %.1113, 1                   ; 2 uses
  %i.hy = getelementptr i8, ptr %.1118, i64 4
  %.0117.val132 = load i32, ptr %i.hy, align 4, !tbaa !49
  %i.hz = icmp slt i32 %i.hx, %.0117.val132
  br i1 %i.hz, label %.critedge2, label %._crit_edge.loopexit, !llvm.loop !209

._crit_edge.loopexit:                             ; preds = %bb.aq
  %.val139.pre = load i32, ptr %i.d, align 4, !tbaa !69
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.o
  %.val139 = phi i32 [ %.val139222, %bb.o ], [ %.val139.pre, %._crit_edge.loopexit ] ; 3 uses
  %.val143218 = phi ptr [ %.val143, %bb.o ], [ %.val143219, %._crit_edge.loopexit ]
  %.1.lcssa = phi i32 [ %.0202, %bb.o ], [ %i.ee, %._crit_edge.loopexit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ia = sext i32 %.val139 to i64
  %i.ib = icmp slt i64 %indvars.iv.next, %i.ia
  br i1 %i.ib, label %bb.o, label %.critedge, !llvm.loop !210

.critedge:                                        ; preds = %._crit_edge, %Vec_IntFree.exit.1
  %.0.lcssa = phi i32 [ 0, %Vec_IntFree.exit.1 ], [ %.1.lcssa, %._crit_edge ]
  %.val139.lcssa = phi i32 [ %.val139200, %Vec_IntFree.exit.1 ], [ %.val139, %._crit_edge ] ; 2 uses
  %.val1012.i = load i32, ptr %i.g, align 4, !tbaa !49
  %i.ic = icmp sgt i32 %.val1012.i, 0
  br i1 %i.ic, label %.lr.ph.i172, label %Abc_NtkFinLocalSetdown.exit

.lr.ph.i172:                                      ; preds = %.critedge
  %i.id = getelementptr i8, ptr %6, i64 8
  %.val9.i = load ptr, ptr %i.id, align 8, !tbaa !51
  %i.ie = getelementptr i8, ptr %5, i64 8
  %.val.i173 = load ptr, ptr %i.ie, align 8, !tbaa !51
  %i.if = getelementptr i8, ptr %7, i64 8
  %.val11.i = load ptr, ptr %i.if, align 8, !tbaa !71
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ar, %.lr.ph.i172
  %indvars.iv.i174 = phi i64 [ 0, %.lr.ph.i172 ], [ %indvars.iv.next.i175, %bb.ar ] ; 2 uses
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %.val9.i, i64 %indvars.iv.i174
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !45
  %i.ii = shl nsw i32 %i.ih, 1
  %i.ij = sext i32 %i.ii to i64
  %i.ik = getelementptr inbounds [4 x i8], ptr %.val.i173, i64 %i.ij
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !45
  %i.im = sext i32 %i.il to i64
  %i.in = getelementptr inbounds [16 x i8], ptr %.val11.i, i64 %i.im
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 4
  store i32 0, ptr %i.io, align 4, !tbaa !49
  %indvars.iv.next.i175 = add nuw nsw i64 %indvars.iv.i174, 1 ; 2 uses
  %.val10.i = load i32, ptr %i.g, align 4, !tbaa !49
  %i.ip = sext i32 %.val10.i to i64
  %i.iq = icmp slt i64 %indvars.iv.next.i175, %i.ip
  br i1 %i.iq, label %bb.ar, label %Abc_NtkFinLocalSetdown.exit, !llvm.loop !6

Abc_NtkFinLocalSetdown.exit:                      ; preds = %bb.ar, %.critedge
  %i.ir = icmp sgt i32 %.val139.lcssa, 0
  %.pre.i.i188.pre = load ptr, ptr %i.f, align 8, !tbaa !71 ; 4 uses
  br i1 %i.ir, label %.lr.ph208, label %.critedge4

.lr.ph208:                                        ; preds = %Abc_NtkFinLocalSetdown.exit
  %i.is = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 3 uses
  %.phi.trans.insert.i177 = getelementptr i8, ptr %8, i64 8 ; 5 uses
  %wide.trip.count = zext nneg i32 %.val139.lcssa to i64
  br label %bb.as

bb.as:                                            ; preds = %.lr.ph208, %.loopexit
  %indvars.iv214 = phi i64 [ 0, %.lr.ph208 ], [ %indvars.iv.next215, %.loopexit ] ; 2 uses
  %i.it = getelementptr inbounds nuw [16 x i8], ptr %.pre.i.i188.pre, i64 %indvars.iv214 ; 2 uses
  %i.iu = getelementptr i8, ptr %i.it, i64 4      ; 3 uses
  %.val130 = load i32, ptr %i.iu, align 4, !tbaa !49
  %i.iv = icmp slt i32 %.val130, 3
  br i1 %i.iv, label %.loopexit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.iw = load i32, ptr %i.is, align 4, !tbaa !69 ; 5 uses
  %i.ix = load i32, ptr %8, align 8, !tbaa !70
  %i.iy = icmp eq i32 %i.iw, %i.ix
  br i1 %i.iy, label %bb.au, label %.Vec_WecGrow.exit12_crit_edge.i176

.Vec_WecGrow.exit12_crit_edge.i176:               ; preds = %bb.at
  %.val8.pre.i178 = load ptr, ptr %.phi.trans.insert.i177, align 8, !tbaa !71
  br label %Vec_WecPushLevel.exit185

bb.au:                                            ; preds = %bb.at
  %i.iz = icmp slt i32 %i.iw, 16
  br i1 %i.iz, label %bb.av, label %bb.ay

bb.av:                                            ; preds = %bb.au
  %i.ja = load ptr, ptr %.phi.trans.insert.i177, align 8, !tbaa !71 ; 2 uses
  %.not13.i.i182 = icmp eq ptr %i.ja, null
  br i1 %.not13.i.i182, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.jb = tail call dereferenceable_or_null(256) ptr @realloc(ptr noundef nonnull %i.ja, i64 noundef 256) #35
  %.pre.i.i183 = load i32, ptr %8, align 8, !tbaa !70
  br label %Vec_WecGrow.exit.i184

bb.ax:                                            ; preds = %bb.av
  %i.jc = tail call noalias dereferenceable_or_null(256) ptr @malloc(i64 noundef 256) #34
  br label %Vec_WecGrow.exit.i184

Vec_WecGrow.exit.i184:                            ; preds = %bb.ax, %bb.aw
  %i.jd = phi i32 [ %.pre.i.i183, %bb.aw ], [ %i.iw, %bb.ax ] ; 2 uses
  %i.je = phi ptr [ %i.jb, %bb.aw ], [ %i.jc, %bb.ax ] ; 3 uses
  store ptr %i.je, ptr %.phi.trans.insert.i177, align 8, !tbaa !71
  %i.jf = sext i32 %i.jd to i64
  %i.jg = getelementptr inbounds [16 x i8], ptr %i.je, i64 %i.jf
  %i.jh = sub nsw i32 16, %i.jd
  %i.ji = sext i32 %i.jh to i64
  %i.jj = shl nsw i64 %i.ji, 4
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.jg, i8 0, i64 %i.jj, i1 false)
  store i32 16, ptr %8, align 8, !tbaa !70
  br label %Vec_WecPushLevel.exit185

bb.ay:                                            ; preds = %bb.au
  %i.jk = shl nuw nsw i32 %i.iw, 1                ; 3 uses
  %i.jl = load ptr, ptr %.phi.trans.insert.i177, align 8, !tbaa !71 ; 2 uses
  %.not13.i10.i180 = icmp eq ptr %i.jl, null
  %i.jm = zext nneg i32 %i.jk to i64
  %i.jn = shl nuw nsw i64 %i.jm, 4                ; 2 uses
  br i1 %.not13.i10.i180, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.jo = tail call ptr @realloc(ptr noundef nonnull %i.jl, i64 noundef %i.jn) #35
  %.pre.i11.i181 = load i32, ptr %8, align 8, !tbaa !70
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ay
  %i.jp = tail call noalias ptr @malloc(i64 noundef %i.jn) #34
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.jq = phi i32 [ %.pre.i11.i181, %bb.az ], [ %i.iw, %bb.ba ] ; 2 uses
  %i.jr = phi ptr [ %i.jo, %bb.az ], [ %i.jp, %bb.ba ] ; 3 uses
  store ptr %i.jr, ptr %.phi.trans.insert.i177, align 8, !tbaa !71
  %i.js = sext i32 %i.jq to i64
  %i.jt = getelementptr inbounds [16 x i8], ptr %i.jr, i64 %i.js
  %i.ju = sub nsw i32 %i.jk, %i.jq
  %i.jv = sext i32 %i.ju to i64
  %i.jw = shl nsw i64 %i.jv, 4
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.jt, i8 0, i64 %i.jw, i1 false)
  store i32 %i.jk, ptr %8, align 8, !tbaa !70
  br label %Vec_WecPushLevel.exit185

Vec_WecPushLevel.exit185:                         ; preds = %.Vec_WecGrow.exit12_crit_edge.i176, %Vec_WecGrow.exit.i184, %bb.bb
  %.val8.i179 = phi ptr [ %.val8.pre.i178, %.Vec_WecGrow.exit12_crit_edge.i176 ], [ %i.jr, %bb.bb ], [ %i.je, %Vec_WecGrow.exit.i184 ]
  %i.jx = load i32, ptr %i.is, align 4, !tbaa !69
  %i.jy = add nsw i32 %i.jx, 1                    ; 2 uses
  store i32 %i.jy, ptr %i.is, align 4, !tbaa !69
  %i.jz = sext i32 %i.jy to i64
  %i.ka = getelementptr inbounds [16 x i8], ptr %.val8.i179, i64 %i.jz ; 3 uses
  %i.kb = getelementptr inbounds i8, ptr %i.ka, i64 -16 ; 2 uses
  %.val129205 = load i32, ptr %i.iu, align 4, !tbaa !49
  %i.kc = icmp sgt i32 %.val129205, 1
  br i1 %i.kc, label %.critedge6.lr.ph, label %.loopexit

.critedge6.lr.ph:                                 ; preds = %Vec_WecPushLevel.exit185
  %i.kd = getelementptr i8, ptr %i.it, i64 8
  %i.ke = getelementptr inbounds i8, ptr %i.ka, i64 -12 ; 3 uses
  %i.kf = getelementptr inbounds i8, ptr %i.ka, i64 -8 ; 4 uses
  br label %.critedge6

.critedge6:                                       ; preds = %.critedge6.lr.ph, %Vec_IntPush.exit
  %indvars.iv211 = phi i64 [ 0, %.critedge6.lr.ph ], [ %indvars.iv.next212, %Vec_IntPush.exit ] ; 3 uses
  %.val122 = load ptr, ptr %i.kd, align 8, !tbaa !51
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %.val122, i64 %indvars.iv211
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !45
  %i.ki = load i32, ptr %i.ke, align 4, !tbaa !49 ; 7 uses
  %i.kj = load i32, ptr %i.kb, align 8, !tbaa !50
  %i.kk = icmp eq i32 %i.ki, %i.kj
  br i1 %i.kk, label %bb.bc, label %.critedge6.Vec_IntPush.exit_crit_edge

.critedge6.Vec_IntPush.exit_crit_edge:            ; preds = %.critedge6
  %.pre = load ptr, ptr %i.kf, align 8, !tbaa !51
  br label %Vec_IntPush.exit

bb.bc:                                            ; preds = %.critedge6
  %i.kl = icmp slt i32 %i.ki, 16
  br i1 %i.kl, label %bb.bd, label %bb.bg

bb.bd:                                            ; preds = %bb.bc
  %i.km = load ptr, ptr %i.kf, align 8, !tbaa !51 ; 2 uses
  %.not9.i.i186 = icmp eq ptr %i.km, null
  br i1 %.not9.i.i186, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.kn = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.km, i64 noundef 64) #35
  br label %Vec_IntGrow.exit11.sink.split.i

bb.bf:                                            ; preds = %bb.bd
  %i.ko = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #34
  br label %Vec_IntGrow.exit11.sink.split.i

bb.bg:                                            ; preds = %bb.bc
  %i.kp = icmp samesign ult i32 %i.ki, 1073741823
  %i.kq = shl nuw nsw i32 %i.ki, 1
  %spec.select.i = select i1 %i.kp, i32 %i.kq, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.ki, %spec.select.i
  %.pre224 = load ptr, ptr %i.kf, align 8, !tbaa !51 ; 3 uses
  br i1 %.not.i9.i, label %bb.bh, label %Vec_IntPush.exit

bb.bh:                                            ; preds = %bb.bg
  %.not9.i10.i = icmp eq ptr %.pre224, null
  %i.kr = zext nneg i32 %spec.select.i to i64
  %i.ks = shl nuw nsw i64 %i.kr, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.kt = tail call ptr @realloc(ptr noundef nonnull %.pre224, i64 noundef %i.ks) #35
  br label %Vec_IntGrow.exit11.sink.split.i

bb.bj:                                            ; preds = %bb.bh
  %i.ku = tail call noalias ptr @malloc(i64 noundef %i.ks) #34
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.bi, %bb.bj, %bb.be, %bb.bf
  %i.kv = phi ptr [ %i.ko, %bb.bf ], [ %i.kn, %bb.be ], [ %i.kt, %bb.bi ], [ %i.ku, %bb.bj ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.bf ], [ 16, %bb.be ], [ %spec.select.i, %bb.bi ], [ %spec.select.i, %bb.bj ]
  store ptr %i.kv, ptr %i.kf, align 8, !tbaa !51
  store i32 %spec.select.sink.i, ptr %i.kb, align 8, !tbaa !50
  %.pre225 = load i32, ptr %i.ke, align 4, !tbaa !49
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %.critedge6.Vec_IntPush.exit_crit_edge, %bb.bg, %Vec_IntGrow.exit11.sink.split.i
  %i.kw = phi i32 [ %i.ki, %.critedge6.Vec_IntPush.exit_crit_edge ], [ %i.ki, %bb.bg ], [ %.pre225, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.kx = phi ptr [ %.pre, %.critedge6.Vec_IntPush.exit_crit_edge ], [ %.pre224, %bb.bg ], [ %i.kv, %Vec_IntGrow.exit11.sink.split.i ]
  %i.ky = add nsw i32 %i.kw, 1
  store i32 %i.ky, ptr %i.ke, align 4, !tbaa !49
  %i.kz = sext i32 %i.kw to i64
  %i.la = getelementptr inbounds [4 x i8], ptr %i.kx, i64 %i.kz
  store i32 %i.kh, ptr %i.la, align 4, !tbaa !45
  %indvars.iv.next212 = add nuw nsw i64 %indvars.iv211, 2
  %.val129 = load i32, ptr %i.iu, align 4, !tbaa !49
  %9 = trunc i64 %indvars.iv211 to i32
  %10 = add i32 %9, 3
  %i.lb = icmp slt i32 %10, %.val129
  br i1 %i.lb, label %.critedge6, label %.loopexit, !llvm.loop !211

.loopexit:                                        ; preds = %Vec_IntPush.exit, %Vec_WecPushLevel.exit185, %bb.as
  %indvars.iv.next215 = add nuw nsw i64 %indvars.iv214, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next215, %wide.trip.count
  br i1 %exitcond.not, label %.critedge4, label %bb.as, !llvm.loop !212

.critedge4:                                       ; preds = %.loopexit, %Abc_NtkFinLocalSetdown.exit
  %i.lc = load i32, ptr %i.c, align 8, !tbaa !70  ; 2 uses
  %i.ld = icmp sgt i32 %i.lc, 0
  br i1 %i.ld, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i

.lr.ph.i.i.preheader:                             ; preds = %.critedge4
  %i.le = zext nneg i32 %i.lc to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.bl
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.bl ], [ 0, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.lf = getelementptr inbounds nuw [16 x i8], ptr %.pre.i.i188.pre, i64 %indvars.iv.i.i
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 8 ; 2 uses
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !51 ; 2 uses
  %.not15.i.i = icmp eq ptr %i.lh, null
  br i1 %.not15.i.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %.lr.ph.i.i
  tail call void @free(ptr noundef nonnull %i.lh) #32
  store ptr null, ptr %i.lg, align 8, !tbaa !51
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond217.not = icmp eq i64 %indvars.iv.next.i.i, %i.le
  br i1 %exitcond217.not, label %._crit_edge.thread.i.i, label %.lr.ph.i.i, !llvm.loop !4

._crit_edge.i.i:                                  ; preds = %.critedge4
  %.not.i.i189 = icmp eq ptr %.pre.i.i188.pre, null
  br i1 %.not.i.i189, label %Vec_WecFree.exit, label %._crit_edge.thread.i.i

._crit_edge.thread.i.i:                           ; preds = %bb.bl, %._crit_edge.i.i
  tail call void @free(ptr noundef nonnull %.pre.i.i188.pre) #32
  br label %Vec_WecFree.exit

Vec_WecFree.exit:                                 ; preds = %._crit_edge.i.i, %._crit_edge.thread.i.i
  tail call void @free(ptr noundef nonnull %i.c) #32
  %i.li = load ptr, ptr %i.w, align 8, !tbaa !95  ; 2 uses
  %.not.i190 = icmp eq ptr %i.li, null
  br i1 %.not.i190, label %Vec_WrdFree.exit, label %bb.bm

bb.bm:                                            ; preds = %Vec_WecFree.exit
  tail call void @free(ptr noundef nonnull %i.li) #32
  br label %Vec_WrdFree.exit

Vec_WrdFree.exit:                                 ; preds = %Vec_WecFree.exit, %bb.bm
  tail call void @free(ptr noundef nonnull %i.p) #32
  %i.lj = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !51 ; 2 uses
  %.not.i191 = icmp eq ptr %i.lk, null
  br i1 %.not.i191, label %Vec_IntFree.exit192, label %bb.bn

bb.bn:                                            ; preds = %Vec_WrdFree.exit
  tail call void @free(ptr noundef nonnull %i.lk) #32
  br label %Vec_IntFree.exit192

Vec_IntFree.exit192:                              ; preds = %Vec_WrdFree.exit, %bb.bn
  tail call void @free(ptr noundef nonnull %i.aa) #32
  ret i32 %.0.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -2147483648, 2147483647) i32 @Abc_NtkFinCheckTypesOk(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36   ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 4
  %.val = load i32, ptr %i.c, align 4, !tbaa !39  ; 2 uses
  %i.d = icmp sgt i32 %.val, 0
  br i1 %i.d, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.b, i64 8
  %.val11.val = load ptr, ptr %i.e, align 8, !tbaa !40
  %wide.trip.count = zext nneg i32 %.val to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %.val11.val, i64 %indvars.iv
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !41   ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %i.g, i64 20
  %.val12 = load i32, ptr %i.i, align 4
  %i.j = and i32 %.val12, 15
  %.not = icmp eq i32 %i.j, 7
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %i.g, i64 64
  %.val13 = load ptr, ptr %i.k, align 8, !tbaa !42
  %i.l = tail call fastcc i32 @Abc_ObjFinGateType(ptr %.val13)
  %i.m = icmp eq i32 %i.l, -100
  br i1 %i.m, label %.critedge.loopexit.split.loop.exit18, label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.b, !llvm.loop !7

.critedge.loopexit.split.loop.exit18:             ; preds = %bb.d
  %i.n = trunc nuw nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %.critedge.loopexit.split.loop.exit18, %bb.a
  %.09 = phi i32 [ 0, %bb.a ], [ %i.n, %.critedge.loopexit.split.loop.exit18 ], [ 0, %bb.e ]
  ret i32 %.09
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc range(i32 -100, -88) i32 @Abc_ObjFinGateType(ptr nofree readonly captures(none) %.64.val) unnamed_addr #14 {
bb.a:
  %i.a = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.64.val, ptr noundef nonnull dereferenceable(5) @.str.41) #33
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.64.val, ptr noundef nonnull dereferenceable(5) @.str.42) #33
  %.not9 = icmp eq i32 %i.b, 0
  br i1 %.not9, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.64.val, ptr noundef nonnull dereferenceable(6) @.str.43) #33
  %.not10 = icmp eq i32 %i.c, 0
  br i1 %.not10, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.64.val, ptr noundef nonnull dereferenceable(6) @.str.44) #33
  %.not11 = icmp eq i32 %i.d, 0
  br i1 %.not11, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.64.val, ptr noundef nonnull dereferenceable(6) @.str.45) #33
  %.not12 = icmp eq i32 %i.e, 0
  br i1 %.not12, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.64.val, ptr noundef nonnull dereferenceable(6) @.str.46) #33
  %.not13 = icmp eq i32 %i.f, 0
  br i1 %.not13, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.64.val, ptr noundef nonnull dereferenceable(11) @.str.47) #33
  %.not14 = icmp eq i32 %i.g, 0
  br i1 %.not14, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.h = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.64.val, ptr noundef nonnull dereferenceable(11) @.str.48) #33
  %.not15 = icmp eq i32 %i.h, 0
  %. = select i1 %.not15, i32 -91, i32 -100
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -92, %bb.g ], [ %., %bb.h ], [ -93, %bb.f ], [ -94, %bb.e ], [ -95, %bb.d ], [ -96, %bb.c ], [ -90, %bb.b ], [ -89, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @Abc_NtkFinCheckTypesOk2(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !98   ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 4
  %.val2529 = load i32, ptr %i.e, align 4, !tbaa !49
  %i.f = icmp sgt i32 %.val2529, 3
  br i1 %i.f, label %.critedge.lr.ph, label %._crit_edge

.critedge.lr.ph:                                  ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 32
  br label %.critedge

.critedge:                                        ; preds = %.critedge.lr.ph, %select.unfold
  %indvars.iv33 = phi i64 [ 2, %.critedge.lr.ph ], [ %indvars.iv.next34, %select.unfold ] ; 3 uses
  %indvars.iv = phi i64 [ 3, %.critedge.lr.ph ], [ %indvars.iv.next, %select.unfold ] ; 2 uses
  %i.h = phi ptr [ %i.d, %.critedge.lr.ph ], [ %i.z, %select.unfold ]
  %i.i = getelementptr i8, ptr %i.h, i64 8
  %.val24 = load ptr, ptr %i.i, align 8, !tbaa !51 ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %.val24, i64 %indvars.iv33
  %i.k = load i32, ptr %i.j, align 4, !tbaa !45   ; 2 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %.val24, i64 %indvars.iv
  %i.m = load i32, ptr %i.l, align 4, !tbaa !45   ; 2 uses
  %.val = load ptr, ptr %i.g, align 8, !tbaa !36
  %i.n = getelementptr i8, ptr %.val, i64 8
  %.val.val = load ptr, ptr %i.n, align 8, !tbaa !40
  %i.o = sext i32 %i.k to i64
  %i.p = getelementptr inbounds [8 x i8], ptr %.val.val, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !41
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !42
  %i.t = icmp slt i32 %i.m, 0
  br i1 %i.t, label %select.unfold, label %bb.b

bb.b:                                             ; preds = %.critedge
  %i.u = tail call ptr @Mio_LibraryReadGateById(ptr noundef %i.b, i32 noundef %i.m) #32 ; 2 uses
  %i.v = tail call i32 @Mio_GateReadPinNum(ptr noundef %i.u) #32
  %i.w = icmp slt i32 %i.v, 1
  br i1 %i.w, label %select.unfold, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = tail call i32 @Mio_GateReadPinNum(ptr noundef %i.s) #32
  %i.y = tail call i32 @Mio_GateReadPinNum(ptr noundef %i.u) #32
  %.not = icmp eq i32 %i.x, %i.y
  br i1 %.not, label %select.unfold, label %._crit_edge

select.unfold:                                    ; preds = %bb.c, %bb.b, %.critedge
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 2
  %i.z = load ptr, ptr %i.c, align 8, !tbaa !98   ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 4
  %.val25 = load i32, ptr %i.aa, align 4, !tbaa !49
  %i.ab = trunc i64 %indvars.iv33 to i32
  %1 = add i32 %i.ab, 3
  %i.ac = icmp slt i32 %1, %.val25
  %indvars.iv.next = add nuw i64 %indvars.iv, 2
  br i1 %i.ac, label %.critedge, label %._crit_edge, !llvm.loop !8

._crit_edge:                                      ; preds = %select.unfold, %bb.c, %bb.a
  %.2 = phi i32 [ 0, %bb.a ], [ %i.k, %bb.c ], [ 0, %select.unfold ]
  ret i32 %.2
}

declare ptr @Mio_LibraryReadGateById(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @Abc_NtkFinComputeTypes(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #15 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %.val16 = load ptr, ptr %i.a, align 8, !tbaa !36 ; 2 uses
  %i.b = getelementptr i8, ptr %.val16, i64 4
  %.val16.val = load i32, ptr %i.b, align 4, !tbaa !39 ; 7 uses
  %i.c = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #34 ; 5 uses
  %i.d = add i32 %.val16.val, -1
  %or.cond.i.i = icmp ult i32 %i.d, 15
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 16, i32 %.val16.val ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  store i32 %spec.store.select.i.i, ptr %i.c, align 8, !tbaa !50
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %Vec_IntAlloc.exit.thread.i, label %Vec_IntAlloc.exit.i

Vec_IntAlloc.exit.thread.i:                       ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr null, ptr %i.f, align 8, !tbaa !51
  store i32 %.val16.val, ptr %i.e, align 4, !tbaa !49
  br label %Vec_IntStart.exit

Vec_IntAlloc.exit.i:                              ; preds = %bb.a
  %i.g = sext i32 %spec.store.select.i.i to i64
  %i.h = shl nsw i64 %i.g, 2
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.h) #34 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.i, ptr %i.j, align 8, !tbaa !51
  store i32 %.val16.val, ptr %i.e, align 4, !tbaa !49
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %Vec_IntStart.exit, label %bb.b

bb.b:                                             ; preds = %Vec_IntAlloc.exit.i
  %i.k = sext i32 %.val16.val to i64
  %i.l = shl nsw i64 %i.k, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.i, i8 0, i64 %i.l, i1 false)
  br label %Vec_IntStart.exit

Vec_IntStart.exit:                                ; preds = %Vec_IntAlloc.exit.thread.i, %Vec_IntAlloc.exit.i, %bb.b
  %.val15 = phi ptr [ null, %Vec_IntAlloc.exit.thread.i ], [ null, %Vec_IntAlloc.exit.i ], [ %i.i, %bb.b ]
  %i.m = icmp sgt i32 %.val16.val, 0
  br i1 %i.m, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %Vec_IntStart.exit
  %i.n = getelementptr i8, ptr %.val16, i64 8
  %.val12.val = load ptr, ptr %i.n, align 8, !tbaa !40
  %i.o = zext nneg i32 %.val16.val to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %.val12.val, i64 %indvars.iv
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !41   ; 4 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr i8, ptr %i.q, i64 20
  %.val13 = load i32, ptr %i.s, align 4
  %i.t = and i32 %.val13, 15
  %.not = icmp eq i32 %i.t, 7
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr i8, ptr %i.q, i64 16
  %.val14 = load i32, ptr %i.u, align 8, !tbaa !48
  %i.v = getelementptr i8, ptr %i.q, i64 64
  %.val17 = load ptr, ptr %i.v, align 8, !tbaa !42
  %i.w = tail call fastcc i32 @Abc_ObjFinGateType(ptr %.val17)
  %i.x = sext i32 %.val14 to i64
  %i.y = getelementptr inbounds [4 x i8], ptr %.val15, i64 %i.x
  store i32 %i.w, ptr %i.y, align 4, !tbaa !45
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.z = icmp samesign ult i64 %indvars.iv.next, %i.o
  br i1 %i.z, label %bb.c, label %.critedge, !llvm.loop !9

.critedge:                                        ; preds = %bb.f, %Vec_IntStart.exit
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define noalias noundef ptr @Abc_NtkFinComputeObjects(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) initializes((0, 8)) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #34 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 3 uses
  store i32 0, ptr %i.b, align 4, !tbaa !49
  store i32 100, ptr %i.a, align 8, !tbaa !50
  %i.c = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #34 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !51
  %i.e = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #34 ; 4 uses
  %i.f = add i32 %2, -1
  %or.cond.i.i = icmp ult i32 %i.f, 7
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 8, i32 %2 ; 3 uses
  store i32 %spec.store.select.i.i, ptr %i.e, align 8, !tbaa !70
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %Vec_WecStart.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sext i32 %spec.store.select.i.i to i64
  %i.h = tail call noalias ptr @calloc(i64 noundef %i.g, i64 noundef 16) #36
  br label %Vec_WecStart.exit

Vec_WecStart.exit:                                ; preds = %bb.a, %bb.b
  %i.i = phi ptr [ %i.h, %bb.b ], [ null, %bb.a ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.i, ptr %i.k, align 8, !tbaa !71
  store i32 %2, ptr %i.j, align 4, !tbaa !69
  store ptr %i.e, ptr %1, align 8, !tbaa !73
  %i.l = getelementptr i8, ptr %0, i64 4          ; 2 uses
  %.val1721 = load i32, ptr %i.l, align 4, !tbaa !49
  %i.m = icmp sgt i32 %.val1721, 3
  br i1 %i.m, label %.critedge.lr.ph, label %Vec_IntUniqify.exit

.critedge.lr.ph:                                  ; preds = %Vec_WecStart.exit
  %i.n = getelementptr i8, ptr %0, i64 8
  br label %.critedge

.critedge:                                        ; preds = %.critedge.lr.ph, %Vec_WecPush.exit
  %indvars.iv29 = phi i64 [ 2, %.critedge.lr.ph ], [ %indvars.iv.next30, %Vec_WecPush.exit ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.critedge.lr.ph ], [ %indvars.iv.next, %Vec_WecPush.exit ] ; 8 uses
  %storemerge27 = phi ptr [ %i.c, %.critedge.lr.ph ], [ %storemerge28, %Vec_WecPush.exit ] ; 6 uses
  %spec.select.sink.i25 = phi i32 [ 100, %.critedge.lr.ph ], [ %spec.select.sink.i24, %Vec_WecPush.exit ] ; 3 uses
  %.val16 = load ptr, ptr %i.n, align 8, !tbaa !51
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %.val16, i64 %indvars.iv29
  %i.p = load i32, ptr %i.o, align 4, !tbaa !45   ; 4 uses
  %i.q = trunc nsw i64 %indvars.iv to i32
  %i.r = icmp eq i32 %spec.select.sink.i25, %i.q
  br i1 %i.r, label %bb.c, label %Vec_IntPush.exit

bb.c:                                             ; preds = %.critedge
  %i.s = icmp samesign ult i64 %indvars.iv, 16
  br i1 %i.s, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %.not9.i.i = icmp eq ptr %storemerge27, null
  br i1 %.not9.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge27, i64 noundef 64) #35
  br label %Vec_IntPush.exit

bb.f:                                             ; preds = %bb.d
  %i.u = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #34
  br label %Vec_IntPush.exit

bb.g:                                             ; preds = %bb.c
  %i.v = icmp samesign ult i64 %indvars.iv, 1073741823
  %indvars.iv.tr = trunc nsw i64 %indvars.iv to i32
  %i.w = shl nsw i32 %indvars.iv.tr, 1
  %spec.select.i = select i1 %i.v, i32 %i.w, i32 2147483647 ; 4 uses
  %i.x = sext i32 %spec.select.i to i64
  %.not.i9.i = icmp samesign ult i64 %indvars.iv, %i.x
  br i1 %.not.i9.i, label %bb.h, label %Vec_IntPush.exit

bb.h:                                             ; preds = %bb.g
  %.not9.i10.i = icmp eq ptr %storemerge27, null
  %i.y = zext nneg i32 %spec.select.i to i64
  %i.z = shl nuw nsw i64 %i.y, 2                  ; 2 uses
  br i1 %.not9.i10.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = tail call ptr @realloc(ptr noundef nonnull %storemerge27, i64 noundef %i.z) #35
  br label %Vec_IntPush.exit

bb.j:                                             ; preds = %bb.h
  %i.ab = tail call noalias ptr @malloc(i64 noundef %i.z) #34
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.f, %bb.e, %bb.j, %bb.i, %.critedge, %bb.g
  %storemerge28 = phi ptr [ %storemerge27, %.critedge ], [ %storemerge27, %bb.g ], [ %i.u, %bb.f ], [ %i.t, %bb.e ], [ %i.aa, %bb.i ], [ %i.ab, %bb.j ] ; 10 uses
  %spec.select.sink.i24 = phi i32 [ %spec.select.sink.i25, %.critedge ], [ %spec.select.sink.i25, %bb.g ], [ 16, %bb.f ], [ 16, %bb.e ], [ %spec.select.i, %bb.i ], [ %spec.select.i, %bb.j ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %storemerge28, i64 %indvars.iv
  store i32 %i.p, ptr %i.ac, align 4, !tbaa !45
  %i.ad = load ptr, ptr %1, align 8, !tbaa !73    ; 6 uses
  %3 = trunc nuw nsw i64 %indvars.iv29 to i32
  %4 = lshr exact i32 %3, 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !69 ; 2 uses
  %.not.i = icmp sgt i32 %i.af, %i.p
  br i1 %.not.i, label %bb.p, label %bb.k

bb.k:                                             ; preds = %Vec_IntPush.exit
  %i.ag = add nsw i32 %i.p, 1                     ; 2 uses
  %i.ah = shl nsw i32 %i.af, 1
  %i.ai = tail call range(i32 -2147483647, -2147483648) i32 @llvm.smax.i32(i32 %i.ah, i32 range(i32 -2147483647, -2147483648) %i.ag) ; 4 uses
  %i.aj = load i32, ptr %i.ad, align 8, !tbaa !70 ; 2 uses
  %.not.i.i18 = icmp slt i32 %i.aj, %i.ai
  br i1 %.not.i.i18, label %bb.l, label %Vec_WecGrow.exit.i

bb.l:                                             ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !71 ; 2 uses
  %.not13.i.i = icmp eq ptr %i.al, null
  %i.am = sext i32 %i.ai to i64
  %i.an = shl nsw i64 %i.am, 4                    ; 2 uses
  br i1 %.not13.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = tail call ptr @realloc(ptr noundef nonnull %i.al, i64 noundef %i.an) #35
  %.pre.i.i = load i32, ptr %i.ad, align 8, !tbaa !70
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.ap = tail call noalias ptr @malloc(i64 noundef %i.an) #34
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.aq = phi i32 [ %.pre.i.i, %bb.m ], [ %i.aj, %bb.n ] ; 2 uses
  %i.ar = phi ptr [ %i.ao, %bb.m ], [ %i.ap, %bb.n ] ; 2 uses
  store ptr %i.ar, ptr %i.ak, align 8, !tbaa !71
  %i.as = sext i32 %i.aq to i64
  %i.at = getelementptr inbounds [16 x i8], ptr %i.ar, i64 %i.as
  %i.au = sub nsw i32 %i.ai, %i.aq
  %i.av = sext i32 %i.au to i64
  %i.aw = shl nsw i64 %i.av, 4
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.at, i8 0, i64 %i.aw, i1 false)
  store i32 %i.ai, ptr %i.ad, align 8, !tbaa !70
  br label %Vec_WecGrow.exit.i

Vec_WecGrow.exit.i:                               ; preds = %bb.o, %bb.k
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !69
  br label %bb.p

bb.p:                                             ; preds = %Vec_WecGrow.exit.i, %Vec_IntPush.exit
  %i.ax = getelementptr i8, ptr %i.ad, i64 8
  %.val.i = load ptr, ptr %i.ax, align 8, !tbaa !71
  %i.ay = sext i32 %i.p to i64
  %i.az = getelementptr inbounds [16 x i8], ptr %.val.i, i64 %i.ay ; 6 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 4 ; 3 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !49 ; 7 uses
  %i.bc = load i32, ptr %i.az, align 8, !tbaa !50
  %i.bd = icmp eq i32 %i.bb, %i.bc
  br i1 %i.bd, label %bb.q, label %Vec_WecPush.exit

bb.q:                                             ; preds = %bb.p
  %i.be = icmp slt i32 %i.bb, 16
  br i1 %i.be, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.bf = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !51 ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not9.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bh = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.bg, i64 noundef 64) #35
  br label %Vec_IntGrow.exit.i.i

bb.t:                                             ; preds = %bb.r
  %i.bi = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #34
  br label %Vec_IntGrow.exit.i.i

Vec_IntGrow.exit.i.i:                             ; preds = %bb.t, %bb.s
  %i.bj = phi ptr [ %i.bh, %bb.s ], [ %i.bi, %bb.t ]
  store ptr %i.bj, ptr %i.bf, align 8, !tbaa !51
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.u:                                             ; preds = %bb.q
  %i.bk = icmp samesign ult i32 %i.bb, 1073741823
  %i.bl = shl nuw nsw i32 %i.bb, 1
  %spec.select.i.i = select i1 %i.bk, i32 %i.bl, i32 2147483647 ; 3 uses
  %.not.i9.i.i = icmp samesign ult i32 %i.bb, %spec.select.i.i
  br i1 %.not.i9.i.i, label %bb.v, label %Vec_WecPush.exit

bb.v:                                             ; preds = %bb.u
  %i.bm = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !51 ; 2 uses
  %.not9.i10.i.i = icmp eq ptr %i.bn, null
  %i.bo = zext nneg i32 %spec.select.i.i to i64
  %i.bp = shl nuw nsw i64 %i.bo, 2                ; 2 uses
  br i1 %.not9.i10.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bq = tail call ptr @realloc(ptr noundef nonnull %i.bn, i64 noundef %i.bp) #35
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.br = tail call noalias ptr @malloc(i64 noundef %i.bp) #34
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.bs = phi ptr [ %i.bq, %bb.w ], [ %i.br, %bb.x ]
  store ptr %i.bs, ptr %i.bm, align 8, !tbaa !51
  br label %Vec_IntGrow.exit11.sink.split.i.i

Vec_IntGrow.exit11.sink.split.i.i:                ; preds = %bb.y, %Vec_IntGrow.exit.i.i
  %spec.select.sink.i.i = phi i32 [ %spec.select.i.i, %bb.y ], [ 16, %Vec_IntGrow.exit.i.i ]
  store i32 %spec.select.sink.i.i, ptr %i.az, align 8, !tbaa !50
  %.pre.i = load i32, ptr %i.ba, align 4, !tbaa !49
  br label %Vec_WecPush.exit

Vec_WecPush.exit:                                 ; preds = %bb.p, %bb.u, %Vec_IntGrow.exit11.sink.split.i.i
  %i.bt = phi i32 [ %i.bb, %bb.p ], [ %i.bb, %bb.u ], [ %.pre.i, %Vec_IntGrow.exit11.sink.split.i.i ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !51
  %i.bw = add nsw i32 %i.bt, 1
  store i32 %i.bw, ptr %i.ba, align 4, !tbaa !49
  %i.bx = sext i32 %i.bt to i64
  %i.by = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.bx
  store i32 %4, ptr %i.by, align 4, !tbaa !45
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 2
  %.val17 = load i32, ptr %i.l, align 4, !tbaa !49
  %5 = trunc i64 %indvars.iv29 to i32
  %6 = add i32 %5, 3
  %i.bz = icmp slt i32 %6, %.val17
  br i1 %i.bz, label %.critedge, label %bb.z, !llvm.loop !215

bb.z:                                             ; preds = %Vec_WecPush.exit
  %i.ca = trunc nsw i64 %indvars.iv.next to i32
  store i32 %i.ca, ptr %i.b, align 4, !tbaa !49
  store i32 %spec.select.sink.i24, ptr %i.a, align 8
  store ptr %storemerge28, ptr %i.d, align 8
  %i.cb = icmp eq i64 %indvars.iv, 0
  br i1 %i.cb, label %Vec_IntUniqify.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.z
  %i.cc = and i64 %indvars.iv.next, 4294967295    ; 3 uses
  tail call void @qsort(ptr noundef nonnull %storemerge28, i64 noundef %i.cc, i64 noundef 4, ptr noundef nonnull @Vec_IntSortCompare1) #32
  %7 = add nsw i64 %i.cc, -1                      ; 3 uses
  %xtraiter = and i64 %7, 1
  %i.cd = icmp eq i64 %i.cc, 2
  br i1 %i.cd, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %7, -2
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ae, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.ae ] ; 3 uses
  %.024.i = phi i32 [ 1, %.lr.ph.i.new ], [ %.1.i.1, %bb.ae ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.ae ]
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %storemerge28, i64 %indvars.iv.i ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !45 ; 2 uses
  %i.cg = getelementptr i8, ptr %i.ce, i64 -4
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !45
  %.not.i19 = icmp eq i32 %i.cf, %i.ch
  br i1 %.not.i19, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ci = add nsw i32 %.024.i, 1
  %i.cj = sext i32 %.024.i to i64
  %i.ck = getelementptr inbounds [4 x i8], ptr %storemerge28, i64 %i.cj
  store i32 %i.cf, ptr %i.ck, align 4, !tbaa !45
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.1.i = phi i32 [ %i.ci, %bb.ab ], [ %.024.i, %bb.aa ] ; 3 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %storemerge28, i64 %indvars.iv.i ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !45 ; 2 uses
  %i.co = load i32, ptr %i.cl, align 4, !tbaa !45
  %.not.i19.1 = icmp eq i32 %i.cn, %i.co
  br i1 %.not.i19.1, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cp = add nsw i32 %.1.i, 1
  %i.cq = sext i32 %.1.i to i64
  %i.cr = getelementptr inbounds [4 x i8], ptr %storemerge28, i64 %i.cq
  store i32 %i.cn, ptr %i.cr, align 4, !tbaa !45
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.1.i.1 = phi i32 [ %i.cp, %bb.ad ], [ %.1.i, %bb.ac ] ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %bb.aa, !llvm.loop !216

._crit_edge.i.unr-lcssa:                          ; preds = %bb.ae
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 1, %.lr.ph.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.unr-lcssa ]
  %.024.i.epil.init = phi i32 [ 1, %.lr.ph.i ], [ %.1.i.1, %._crit_edge.i.unr-lcssa ] ; 3 uses
  %lcmp.mod46 = trunc i64 %7 to i1
  tail call void @llvm.assume(i1 %lcmp.mod46)
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %storemerge28, i64 %indvars.iv.i.epil.init ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !45 ; 2 uses
  %i.cu = getelementptr i8, ptr %i.cs, i64 -4
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !45
  %.not.i19.epil = icmp eq i32 %i.ct, %i.cv
  br i1 %.not.i19.epil, label %._crit_edge.i, label %bb.af

bb.af:                                            ; preds = %.epil.preheader
  %i.cw = add nsw i32 %.024.i.epil.init, 1
  %i.cx = sext i32 %.024.i.epil.init to i64
  %i.cy = getelementptr inbounds [4 x i8], ptr %storemerge28, i64 %i.cx
  store i32 %i.ct, ptr %i.cy, align 4, !tbaa !45
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.epil.preheader, %bb.af, %._crit_edge.i.unr-lcssa
  %.1.i.lcssa = phi i32 [ %.1.i.1, %._crit_edge.i.unr-lcssa ], [ %i.cw, %bb.af ], [ %.024.i.epil.init, %.epil.preheader ]
  store i32 %.1.i.lcssa, ptr %i.b, align 4, !tbaa !49
  br label %Vec_IntUniqify.exit

Vec_IntUniqify.exit:                              ; preds = %Vec_WecStart.exit, %bb.z, %._crit_edge.i
  ret ptr %i.a
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @Abc_NtkFinCreateList(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #9 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #34 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 3 uses
  store i32 0, ptr %i.b, align 4, !tbaa !49
  store i32 100, ptr %i.a, align 8, !tbaa !50
  %i.c = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #34 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !51
  %i.e = getelementptr i8, ptr %1, i64 4          ; 2 uses
  %.val810 = load i32, ptr %i.e, align 4, !tbaa !49 ; 2 uses
  %i.f = icmp sgt i32 %.val810, 0
  br i1 %i.f, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr i8, ptr %1, i64 8
  %i.h = getelementptr i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %Vec_IntAppend.exit
  %.val821 = phi i32 [ %.val810, %.lr.ph ], [ %.val8, %Vec_IntAppend.exit ]
  %.pre10.i17 = phi ptr [ %i.c, %.lr.ph ], [ %.pre10.i18, %Vec_IntAppend.exit ] ; 2 uses
  %.pre.i13 = phi ptr [ %i.c, %.lr.ph ], [ %.pre.i14, %Vec_IntAppend.exit ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Vec_IntAppend.exit ] ; 2 uses
  %.val = load ptr, ptr %i.g, align 8, !tbaa !51
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %indvars.iv
  %i.j = load i32, ptr %i.i, align 4, !tbaa !45
  %.val9 = load ptr, ptr %i.h, align 8, !tbaa !71
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds [16 x i8], ptr %.val9, i64 %i.k ; 2 uses
  %i.m = getelementptr i8, ptr %i.l, i64 4        ; 2 uses
  %.val67.i = load i32, ptr %i.m, align 4, !tbaa !49
  %i.n = icmp sgt i32 %.val67.i, 0
  br i1 %i.n, label %.lr.ph.i, label %Vec_IntAppend.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.o = getelementptr i8, ptr %i.l, i64 8
  br label %bb.c

bb.c:                                             ; preds = %Vec_IntPush.exit.i, %.lr.ph.i
  %i.p = phi ptr [ %.pre10.i17, %.lr.ph.i ], [ %.pre10.i20, %Vec_IntPush.exit.i ] ; 7 uses
  %.pre.i = phi ptr [ %.pre.i13, %.lr.ph.i ], [ %.pre.i16, %Vec_IntPush.exit.i ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %Vec_IntPush.exit.i ] ; 2 uses
  %.val.i = load ptr, ptr %i.o, align 8, !tbaa !51
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %indvars.iv.i
  %i.r = load i32, ptr %i.q, align 4, !tbaa !45
  %i.s = load i32, ptr %i.b, align 4, !tbaa !49   ; 7 uses
  %i.t = load i32, ptr %i.a, align 8, !tbaa !50
  %i.u = icmp eq i32 %i.s, %i.t
  br i1 %i.u, label %bb.d, label %Vec_IntPush.exit.i

bb.d:                                             ; preds = %bb.c
  %i.v = icmp slt i32 %i.s, 16
  br i1 %i.v, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %.not9.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not9.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.p, i64 noundef 64) #35
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.g:                                             ; preds = %bb.e
  %i.x = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #34
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.h:                                             ; preds = %bb.d
  %i.y = icmp samesign ult i32 %i.s, 1073741823
  %i.z = shl nuw nsw i32 %i.s, 1
  %spec.select.i.i = select i1 %i.y, i32 %i.z, i32 2147483647 ; 4 uses
  %.not.i9.i.i = icmp samesign ult i32 %i.s, %spec.select.i.i
  br i1 %.not.i9.i.i, label %bb.i, label %Vec_IntPush.exit.i

bb.i:                                             ; preds = %bb.h
  %.not9.i10.i.i = icmp eq ptr %i.p, null
  %i.aa = zext nneg i32 %spec.select.i.i to i64
  %i.ab = shl nuw nsw i64 %i.aa, 2                ; 2 uses
  br i1 %.not9.i10.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = tail call ptr @realloc(ptr noundef nonnull %i.p, i64 noundef %i.ab) #35
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.k:                                             ; preds = %bb.i
  %i.ad = tail call noalias ptr @malloc(i64 noundef %i.ab) #34
  br label %Vec_IntGrow.exit11.sink.split.i.i

Vec_IntGrow.exit11.sink.split.i.i:                ; preds = %bb.k, %bb.j, %bb.g, %bb.f
  %i.ae = phi ptr [ %i.x, %bb.g ], [ %i.w, %bb.f ], [ %i.ac, %bb.j ], [ %i.ad, %bb.k ] ; 3 uses
  %spec.select.sink.i.i = phi i32 [ 16, %bb.g ], [ 16, %bb.f ], [ %spec.select.i.i, %bb.j ], [ %spec.select.i.i, %bb.k ]
  store ptr %i.ae, ptr %i.d, align 8, !tbaa !51
  store i32 %spec.select.sink.i.i, ptr %i.a, align 8, !tbaa !50
  br label %Vec_IntPush.exit.i

Vec_IntPush.exit.i:                               ; preds = %bb.c, %Vec_IntGrow.exit11.sink.split.i.i, %bb.h
  %.pre10.i20 = phi ptr [ %i.ae, %Vec_IntGrow.exit11.sink.split.i.i ], [ %i.p, %bb.h ], [ %i.p, %bb.c ] ; 2 uses
  %.pre.i16 = phi ptr [ %i.ae, %Vec_IntGrow.exit11.sink.split.i.i ], [ %i.p, %bb.h ], [ %.pre.i, %bb.c ] ; 3 uses
  %i.af = add nsw i32 %i.s, 1
  store i32 %i.af, ptr %i.b, align 4, !tbaa !49
  %i.ag = sext i32 %i.s to i64
  %i.ah = getelementptr inbounds [4 x i8], ptr %.pre.i16, i64 %i.ag
  store i32 %i.r, ptr %i.ah, align 4, !tbaa !45
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.val6.i = load i32, ptr %i.m, align 4, !tbaa !49
  %i.ai = sext i32 %.val6.i to i64
  %i.aj = icmp slt i64 %indvars.iv.next.i, %i.ai
  br i1 %i.aj, label %bb.c, label %Vec_IntAppend.exit.loopexit, !llvm.loop !0

Vec_IntAppend.exit.loopexit:                      ; preds = %Vec_IntPush.exit.i
  %.val8.pre = load i32, ptr %i.e, align 4, !tbaa !49
  br label %Vec_IntAppend.exit

Vec_IntAppend.exit:                               ; preds = %Vec_IntAppend.exit.loopexit, %bb.b
  %.val8 = phi i32 [ %.val8.pre, %Vec_IntAppend.exit.loopexit ], [ %.val821, %bb.b ] ; 2 uses
  %.pre10.i18 = phi ptr [ %.pre10.i20, %Vec_IntAppend.exit.loopexit ], [ %.pre10.i17, %bb.b ]
  %.pre.i14 = phi ptr [ %.pre.i16, %Vec_IntAppend.exit.loopexit ], [ %.pre.i13, %bb.b ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ak = sext i32 %.val8 to i64
  %i.al = icmp slt i64 %indvars.iv.next, %i.ak
  br i1 %i.al, label %bb.b, label %.critedge, !llvm.loop !217

.critedge:                                        ; preds = %Vec_IntAppend.exit, %bb.a
  ret ptr %i.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i32 @Abc_NtkFinCountPairs(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #13 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4
  %.val8 = load i32, ptr %i.a, align 4, !tbaa !69 ; 3 uses
  %i.b = icmp sgt i32 %.val8, 0
  br i1 %i.b, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val9 = load ptr, ptr %i.c, align 8, !tbaa !71 ; 9 uses
  %wide.trip.count = zext nneg i32 %.val8 to i64  ; 3 uses
  %min.iters.check = icmp ult i32 %.val8, 9
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %i.d = and i64 %wide.trip.count, 7              ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  %i.f = select i1 %i.e, i64 8, i64 %i.d
  %n.vec = sub nsw i64 %wide.trip.count, %i.f     ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 9 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ao, %vector.body ]
  %vec.phi13 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ap, %vector.body ]
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %.val9, i64 %index
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %.val9, i64 %index
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %.val9, i64 %index
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %.val9, i64 %index
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %.val9, i64 %index
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %.val9, i64 %index
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %.val9, i64 %index
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %.val9, i64 %index
  %i.o = getelementptr i8, ptr %i.g, i64 4
  %i.p = getelementptr i8, ptr %i.h, i64 20
  %i.q = getelementptr i8, ptr %i.i, i64 36
  %i.r = getelementptr i8, ptr %i.j, i64 52
  %i.s = getelementptr i8, ptr %i.k, i64 68
  %i.t = getelementptr i8, ptr %i.l, i64 84
  %i.u = getelementptr i8, ptr %i.m, i64 100
  %i.v = getelementptr i8, ptr %i.n, i64 116
  %i.w = load i32, ptr %i.o, align 4, !tbaa !49
  %i.x = load i32, ptr %i.p, align 4, !tbaa !49
  %i.y = load i32, ptr %i.q, align 4, !tbaa !49
  %i.z = load i32, ptr %i.r, align 4, !tbaa !49
  %i.aa = insertelement <4 x i32> poison, i32 %i.w, i64 0
  %i.ab = insertelement <4 x i32> %i.aa, i32 %i.x, i64 1
  %i.ac = insertelement <4 x i32> %i.ab, i32 %i.y, i64 2
end_hunk_3
begin_hunk_4_@Abc_NtkFinCountPairs:bb.a
  %i.ap = add <4 x i32> %i.an, %i.al              ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !218

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ap, %i.ao
  %i.ar = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %.011.ph = phi i32 [ 0, %.lr.ph ], [ %i.ar, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.011 = phi i32 [ %i.av, %scalar.ph ], [ %.011.ph, %scalar.ph.preheader ]
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %.val9, i64 %indvars.iv
  %i.at = getelementptr i8, ptr %i.as, i64 4
  %.val = load i32, ptr %i.at, align 4, !tbaa !49
  %i.au = add i32 %.011, -1
  %i.av = add i32 %i.au, %.val                    ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %scalar.ph, !llvm.loop !219

.critedge:                                        ; preds = %scalar.ph, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.av, %scalar.ph ]
  ret i32 %.0.lcssa
}

; Function Attrs: nounwind uwtable
define noalias noundef ptr @Abc_NtkDetectFinClasses(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !98   ; 9 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  br label %bb.ak

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !52
  switch i32 %i.g, label %Abc_NtkFinComputeTypes.exit [
    i32 1, label %Abc_NtkIsSopLogic.exit
    i32 4, label %Abc_NtkIsMappedLogic.exit
  ]

Abc_NtkIsSopLogic.exit:                           ; preds = %bb.c
  %i.h = load i32, ptr %0, align 8, !tbaa !53
  %.not = icmp eq i32 %i.h, 2
  br i1 %.not, label %bb.d, label %Abc_NtkFinComputeTypes.exit

bb.d:                                             ; preds = %Abc_NtkIsSopLogic.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !36   ; 3 uses
  %i.k = getelementptr i8, ptr %i.j, i64 4
  %.val.i = load i32, ptr %i.k, align 4, !tbaa !39 ; 8 uses
  %i.l = icmp sgt i32 %.val.i, 0                  ; 2 uses
  br i1 %i.l, label %.lr.ph.i, label %Abc_NtkFinCheckTypesOk.exit.thread

.lr.ph.i:                                         ; preds = %bb.d
  %i.m = getelementptr i8, ptr %i.j, i64 8
  %.val11.val.i = load ptr, ptr %i.m, align 8, !tbaa !40
  %wide.trip.count.i = zext nneg i32 %.val.i to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.h ] ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.val11.val.i, i64 %indvars.iv.i
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !41   ; 4 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr i8, ptr %i.o, i64 20
  %.val12.i = load i32, ptr %i.q, align 4
  %i.r = and i32 %.val12.i, 15
  %.not.i = icmp eq i32 %i.r, 7
  br i1 %.not.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr i8, ptr %i.o, i64 64
  %.val13.i = load ptr, ptr %i.s, align 8, !tbaa !42
  %i.t = tail call fastcc i32 @Abc_ObjFinGateType(ptr %.val13.i)
  %i.u = icmp eq i32 %i.t, -100
  br i1 %i.u, label %Abc_NtkFinCheckTypesOk.exit, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Abc_NtkFinCheckTypesOk.exit.thread, label %bb.e, !llvm.loop !7

Abc_NtkFinCheckTypesOk.exit:                      ; preds = %bb.g
  %.not66 = icmp eq i64 %indvars.iv.i, 0
  br i1 %.not66, label %Abc_NtkFinCheckTypesOk.exit.thread, label %bb.i

bb.i:                                             ; preds = %Abc_NtkFinCheckTypesOk.exit
  %i.v = tail call ptr @Abc_ObjName(ptr noundef nonnull %i.o) #32
  %i.w = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, ptr noundef %i.v) ; 0 uses
  br label %bb.ak

Abc_NtkFinCheckTypesOk.exit.thread:               ; preds = %bb.h, %bb.d, %Abc_NtkFinCheckTypesOk.exit
  %i.x = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #34 ; 6 uses
  %i.y = add i32 %.val.i, -1
  %or.cond.i.i.i = icmp ult i32 %i.y, 15
  %spec.store.select.i.i.i = select i1 %or.cond.i.i.i, i32 16, i32 %.val.i ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 4 ; 2 uses
  store i32 %spec.store.select.i.i.i, ptr %i.x, align 8, !tbaa !50
  %.not.i.i.i = icmp eq i32 %spec.store.select.i.i.i, 0
  br i1 %.not.i.i.i, label %Vec_IntAlloc.exit.thread.i.i, label %Vec_IntAlloc.exit.i.i

Vec_IntAlloc.exit.thread.i.i:                     ; preds = %Abc_NtkFinCheckTypesOk.exit.thread
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr null, ptr %i.aa, align 8, !tbaa !51
  store i32 %.val.i, ptr %i.z, align 4, !tbaa !49
  br label %Vec_IntStart.exit.i

Vec_IntAlloc.exit.i.i:                            ; preds = %Abc_NtkFinCheckTypesOk.exit.thread
  %i.ab = sext i32 %spec.store.select.i.i.i to i64
  %i.ac = shl nsw i64 %i.ab, 2
  %i.ad = tail call noalias ptr @malloc(i64 noundef %i.ac) #34 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !51
  store i32 %.val.i, ptr %i.z, align 4, !tbaa !49
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %Vec_IntStart.exit.i, label %bb.j

bb.j:                                             ; preds = %Vec_IntAlloc.exit.i.i
  %i.af = sext i32 %.val.i to i64
  %i.ag = shl nsw i64 %i.af, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ad, i8 0, i64 %i.ag, i1 false)
  br label %Vec_IntStart.exit.i

Vec_IntStart.exit.i:                              ; preds = %bb.j, %Vec_IntAlloc.exit.i.i, %Vec_IntAlloc.exit.thread.i.i
  %.val15.i = phi ptr [ null, %Vec_IntAlloc.exit.thread.i.i ], [ null, %Vec_IntAlloc.exit.i.i ], [ %i.ad, %bb.j ]
  br i1 %i.l, label %.lr.ph.i85, label %Abc_NtkFinComputeTypes.exit

.lr.ph.i85:                                       ; preds = %Vec_IntStart.exit.i
  %i.ah = getelementptr i8, ptr %i.j, i64 8
  %.val12.val.i = load ptr, ptr %i.ah, align 8, !tbaa !40
  %i.ai = zext nneg i32 %.val.i to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.n, %.lr.ph.i85
  %indvars.iv.i86 = phi i64 [ 0, %.lr.ph.i85 ], [ %indvars.iv.next.i89, %bb.n ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %.val12.val.i, i64 %indvars.iv.i86
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !41 ; 4 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = getelementptr i8, ptr %i.ak, i64 20
  %.val13.i87 = load i32, ptr %i.am, align 4
  %i.an = and i32 %.val13.i87, 15
  %.not.i88 = icmp eq i32 %i.an, 7
  br i1 %.not.i88, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ao = getelementptr i8, ptr %i.ak, i64 16
  %.val14.i = load i32, ptr %i.ao, align 8, !tbaa !48
  %i.ap = getelementptr i8, ptr %i.ak, i64 64
  %.val17.i = load ptr, ptr %i.ap, align 8, !tbaa !42
  %i.aq = tail call fastcc i32 @Abc_ObjFinGateType(ptr %.val17.i)
  %i.ar = sext i32 %.val14.i to i64
  %i.as = getelementptr inbounds [4 x i8], ptr %.val15.i, i64 %i.ar
  store i32 %i.aq, ptr %i.as, align 4, !tbaa !45
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %indvars.iv.next.i89 = add nuw nsw i64 %indvars.iv.i86, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.i89, %i.ai
  br i1 %exitcond.not, label %Abc_NtkFinComputeTypes.exit, label %bb.k, !llvm.loop !9

Abc_NtkIsMappedLogic.exit:                        ; preds = %bb.c
  %i.at = load i32, ptr %0, align 8, !tbaa !53
  %.not143 = icmp eq i32 %i.at, 2
  br i1 %.not143, label %bb.o, label %Abc_NtkFinComputeTypes.exit

bb.o:                                             ; preds = %Abc_NtkIsMappedLogic.exit
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !35
  %i.aw = getelementptr i8, ptr %i.d, i64 4
  %.val2529.i = load i32, ptr %i.aw, align 4, !tbaa !49
  %i.ax = icmp sgt i32 %.val2529.i, 3
  br i1 %i.ax, label %.critedge.lr.ph.i, label %Abc_NtkFinComputeTypes.exit

.critedge.lr.ph.i:                                ; preds = %bb.o
  %i.ay = getelementptr i8, ptr %0, i64 32        ; 2 uses
  br label %.critedge.i

.critedge.i:                                      ; preds = %select.unfold.i, %.critedge.lr.ph.i
  %indvars.iv33.i = phi i64 [ 2, %.critedge.lr.ph.i ], [ %indvars.iv.next34.i, %select.unfold.i ] ; 3 uses
  %indvars.iv.i90 = phi i64 [ 3, %.critedge.lr.ph.i ], [ %indvars.iv.next.i93, %select.unfold.i ] ; 2 uses
  %i.az = phi ptr [ %i.d, %.critedge.lr.ph.i ], [ %i.br, %select.unfold.i ]
  %i.ba = getelementptr i8, ptr %i.az, i64 8
  %.val24.i = load ptr, ptr %i.ba, align 8, !tbaa !51 ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %.val24.i, i64 %indvars.iv33.i
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !45 ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.val24.i, i64 %indvars.iv.i90
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !45 ; 2 uses
  %.val.i91 = load ptr, ptr %i.ay, align 8, !tbaa !36
  %i.bf = getelementptr i8, ptr %.val.i91, i64 8
  %.val.val.i = load ptr, ptr %i.bf, align 8, !tbaa !40
  %i.bg = sext i32 %i.bc to i64                   ; 2 uses
  %i.bh = getelementptr inbounds [8 x i8], ptr %.val.val.i, i64 %i.bg
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !41
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 64
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !42
  %i.bl = icmp slt i32 %i.be, 0
  br i1 %i.bl, label %select.unfold.i, label %bb.p

bb.p:                                             ; preds = %.critedge.i
  %i.bm = tail call ptr @Mio_LibraryReadGateById(ptr noundef %i.av, i32 noundef %i.be) #32 ; 2 uses
  %i.bn = tail call i32 @Mio_GateReadPinNum(ptr noundef %i.bm) #32
  %i.bo = icmp slt i32 %i.bn, 1
  br i1 %i.bo, label %select.unfold.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bp = tail call i32 @Mio_GateReadPinNum(ptr noundef %i.bk) #32
  %i.bq = tail call i32 @Mio_GateReadPinNum(ptr noundef %i.bm) #32
  %.not.i92 = icmp eq i32 %i.bp, %i.bq
  br i1 %.not.i92, label %select.unfold.i, label %Abc_NtkFinCheckTypesOk2.exit

select.unfold.i:                                  ; preds = %bb.q, %bb.p, %.critedge.i
  %indvars.iv.next34.i = add nuw nsw i64 %indvars.iv33.i, 2
  %i.br = load ptr, ptr %i.c, align 8, !tbaa !98  ; 3 uses
  %i.bs = getelementptr i8, ptr %i.br, i64 4
  %.val25.i = load i32, ptr %i.bs, align 4, !tbaa !49
  %i.bt = trunc i64 %indvars.iv33.i to i32
  %2 = add i32 %i.bt, 3
  %i.bu = icmp slt i32 %2, %.val25.i
  %indvars.iv.next.i93 = add nuw i64 %indvars.iv.i90, 2
  br i1 %i.bu, label %.critedge.i, label %Abc_NtkFinComputeTypes.exit, !llvm.loop !8

Abc_NtkFinCheckTypesOk2.exit:                     ; preds = %bb.q
  %.not65 = icmp eq i32 %i.bc, 0
  br i1 %.not65, label %Abc_NtkFinCheckTypesOk2.exit.Abc_NtkFinComputeTypes.exit_crit_edge, label %bb.r

Abc_NtkFinCheckTypesOk2.exit.Abc_NtkFinComputeTypes.exit_crit_edge: ; preds = %Abc_NtkFinCheckTypesOk2.exit
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !98
  br label %Abc_NtkFinComputeTypes.exit

bb.r:                                             ; preds = %Abc_NtkFinCheckTypesOk2.exit
  %.val = load ptr, ptr %i.ay, align 8, !tbaa !36
  %i.bv = getelementptr i8, ptr %.val, i64 8
  %.val.val = load ptr, ptr %i.bv, align 8, !tbaa !40
  %i.bw = getelementptr inbounds [8 x i8], ptr %.val.val, i64 %i.bg
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !41
  %i.by = tail call ptr @Abc_ObjName(ptr noundef %i.bx) #32
  %i.bz = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.31, ptr noundef %i.by) ; 0 uses
  br label %bb.ak

Abc_NtkFinComputeTypes.exit:                      ; preds = %select.unfold.i, %bb.n, %Abc_NtkFinCheckTypesOk2.exit.Abc_NtkFinComputeTypes.exit_crit_edge, %bb.c, %bb.o, %Abc_NtkIsSopLogic.exit, %Vec_IntStart.exit.i, %Abc_NtkIsMappedLogic.exit
  %i.ca = phi ptr [ %i.d, %Abc_NtkIsMappedLogic.exit ], [ %.pre, %Abc_NtkFinCheckTypesOk2.exit.Abc_NtkFinComputeTypes.exit_crit_edge ], [ %i.d, %Vec_IntStart.exit.i ], [ %i.d, %bb.n ], [ %i.d, %Abc_NtkIsSopLogic.exit ], [ %i.d, %bb.c ], [ %i.d, %bb.o ], [ %i.br, %select.unfold.i ] ; 2 uses
  %.0136 = phi ptr [ null, %Abc_NtkIsMappedLogic.exit ], [ null, %Abc_NtkFinCheckTypesOk2.exit.Abc_NtkFinComputeTypes.exit_crit_edge ], [ %i.x, %Vec_IntStart.exit.i ], [ %i.x, %bb.n ], [ null, %Abc_NtkIsSopLogic.exit ], [ null, %bb.c ], [ null, %bb.o ], [ null, %select.unfold.i ] ; 4 uses
  %i.cb = getelementptr i8, ptr %0, i64 32        ; 2 uses
  %.val75 = load ptr, ptr %i.cb, align 8, !tbaa !36
  %i.cc = getelementptr i8, ptr %.val75, i64 4
  %.val75.val = load i32, ptr %i.cc, align 4, !tbaa !39
  %i.cd = call ptr @Abc_NtkFinComputeObjects(ptr noundef %i.ca, ptr noundef nonnull %i.a, i32 noundef %.val75.val) ; 3 uses
  %i.ce = call ptr @Abc_NtkDetectObjClasses(ptr noundef %0, ptr noundef %i.cd, ptr noundef nonnull %i.b) ; 5 uses
  %i.cf = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #34 ; 6 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 4 ; 2 uses
  store i32 0, ptr %i.cg, align 4, !tbaa !49
  store i32 1000, ptr %i.cf, align 8, !tbaa !50
  %i.ch = tail call noalias dereferenceable_or_null(4000) ptr @malloc(i64 noundef 4000) #34
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 8 ; 2 uses
  store ptr %i.ch, ptr %i.ci, align 8, !tbaa !51
  %i.cj = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #34 ; 6 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 4 ; 2 uses
  store i32 0, ptr %i.ck, align 4, !tbaa !49
  store i32 1000, ptr %i.cj, align 8, !tbaa !50
  %i.cl = tail call noalias dereferenceable_or_null(4000) ptr @malloc(i64 noundef 4000) #34
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 2 uses
  store ptr %i.cl, ptr %i.cm, align 8, !tbaa !51
  %.val74 = load ptr, ptr %i.cb, align 8, !tbaa !36
  %i.cn = getelementptr i8, ptr %.val74, i64 4
  %.val74.val = load i32, ptr %i.cn, align 4, !tbaa !39 ; 3 uses
  %i.co = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #34 ; 6 uses
  %i.cp = add i32 %.val74.val, -1
  %or.cond.i.i = icmp ult i32 %i.cp, 7
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 8, i32 %.val74.val ; 4 uses
  store i32 %spec.store.select.i.i, ptr %i.co, align 8, !tbaa !70
  %.not.i.i94 = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i94, label %Vec_WecStart.exit, label %bb.s

bb.s:                                             ; preds = %Abc_NtkFinComputeTypes.exit
  %i.cq = sext i32 %spec.store.select.i.i to i64
  %i.cr = tail call noalias ptr @calloc(i64 noundef %i.cq, i64 noundef 16) #36
  br label %Vec_WecStart.exit

Vec_WecStart.exit:                                ; preds = %Abc_NtkFinComputeTypes.exit, %bb.s
  %i.cs = phi ptr [ %i.cr, %bb.s ], [ null, %Abc_NtkFinComputeTypes.exit ] ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  %i.cu = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 2 uses
  store ptr %i.cs, ptr %i.cu, align 8, !tbaa !71
  store i32 %.val74.val, ptr %i.ct, align 4, !tbaa !69
  %i.cv = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #34 ; 5 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 4 ; 2 uses
  store i32 0, ptr %i.cw, align 4, !tbaa !69
  store i32 1000, ptr %i.cv, align 8, !tbaa !70
  %i.cx = tail call noalias dereferenceable_or_null(16000) ptr @calloc(i64 noundef 1000, i64 noundef 16) #36 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 8 ; 2 uses
  store ptr %i.cx, ptr %i.cy, align 8, !tbaa !71
  %i.cz = getelementptr i8, ptr %i.ce, i64 4
  %.val79 = load i32, ptr %i.cz, align 4, !tbaa !69 ; 2 uses
  %i.da = icmp sgt i32 %.val79, 0
  br i1 %i.da, label %.lr.ph, label %.critedge2

.lr.ph:                                           ; preds = %Vec_WecStart.exit
  %i.db = getelementptr i8, ptr %i.ce, i64 8
  %.val82 = load ptr, ptr %i.db, align 8, !tbaa !71
  %i.dc = load ptr, ptr %i.b, align 8, !tbaa !73
  %i.dd = getelementptr i8, ptr %i.dc, i64 8
  %i.de = load ptr, ptr %i.a, align 8
  %.not67 = icmp eq i32 %1, 0
  %wide.trip.count = zext nneg i32 %.val79 to i64
  br label %bb.t

.critedge.preheader:                              ; preds = %Vec_IntFree.exit
  %.val78.pre = load i32, ptr %i.cw, align 4, !tbaa !69 ; 4 uses
  %.val84.pre.pre = load ptr, ptr %i.cy, align 8, !tbaa !71 ; 3 uses
  %i.df = icmp sgt i32 %.val78.pre, 0
  br i1 %i.df, label %.lr.ph151, label %.critedge2

.lr.ph151:                                        ; preds = %.critedge.preheader
  %wide.trip.count162 = zext nneg i32 %.val78.pre to i64
  br label %.critedge

bb.t:                                             ; preds = %.lr.ph, %Vec_IntFree.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Vec_IntFree.exit ] ; 4 uses
  %i.dg = getelementptr inbounds nuw [16 x i8], ptr %.val82, i64 %indvars.iv ; 2 uses
  %.val81 = load ptr, ptr %i.dd, align 8, !tbaa !71
  %i.dh = getelementptr inbounds nuw [16 x i8], ptr %.val81, i64 %indvars.iv ; 3 uses
  tail call void @Abc_NtkFinMiterCollect(ptr noundef %0, ptr noundef %i.dh, ptr noundef nonnull %i.cf, ptr noundef nonnull %i.cj)
  %i.di = tail call ptr @Abc_NtkFinCreateList(ptr noundef %i.de, ptr noundef %i.dg) ; 4 uses
  %i.dj = tail call i32 @Abc_NtkFinRefinement(ptr noundef %0, ptr noundef %.0136, ptr noundef %i.dh, ptr noundef nonnull %i.cf, ptr noundef nonnull %i.cj, ptr noundef %i.ca, ptr noundef %i.di, ptr noundef nonnull %i.co, ptr noundef nonnull %i.cv)
  br i1 %.not67, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dk = getelementptr i8, ptr %i.dg, i64 4
  %.val73 = load i32, ptr %i.dk, align 4, !tbaa !49
  %i.dl = getelementptr i8, ptr %i.di, i64 4
  %.val72 = load i32, ptr %i.dl, align 4, !tbaa !49
  %.val71 = load i32, ptr %i.cg, align 4, !tbaa !49
  %i.dm = getelementptr i8, ptr %i.dh, i64 4
  %.val70 = load i32, ptr %i.dm, align 4, !tbaa !49
  %.val69 = load i32, ptr %i.ck, align 4, !tbaa !49
  %i.dn = trunc nuw nsw i64 %indvars.iv to i32
  %i.do = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.32, i32 noundef %i.dn, i32 noundef %.val73, i32 noundef %.val72, i32 noundef %.val71, i32 noundef %.val70, i32 noundef %.val69, i32 noundef %i.dj) ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.dp = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !51 ; 2 uses
  %.not.i95 = icmp eq ptr %i.dq, null
  br i1 %.not.i95, label %Vec_IntFree.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @free(ptr noundef nonnull %i.dq) #32
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %bb.v, %bb.w
  tail call void @free(ptr noundef nonnull %i.di) #32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond158.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond158.not, label %.critedge.preheader, label %bb.t, !llvm.loop !220

.critedge:                                        ; preds = %.lr.ph151, %.critedge
  %indvars.iv159 = phi i64 [ 0, %.lr.ph151 ], [ %indvars.iv.next160, %.critedge ] ; 2 uses
  %i.dr = getelementptr inbounds nuw [16 x i8], ptr %.val84.pre.pre, i64 %indvars.iv159 ; 2 uses
  %i.ds = getelementptr i8, ptr %i.dr, i64 4
  %.val76 = load i32, ptr %i.ds, align 4, !tbaa !49
  %i.dt = getelementptr i8, ptr %i.dr, i64 8
  %.val77 = load ptr, ptr %i.dt, align 8, !tbaa !51
  %i.du = sext i32 %.val76 to i64
  tail call void @qsort(ptr noundef %.val77, i64 noundef %i.du, i64 noundef 4, ptr noundef nonnull @Vec_IntSortCompare1) #32
  %indvars.iv.next160 = add nuw nsw i64 %indvars.iv159, 1 ; 2 uses
  %exitcond163.not = icmp eq i64 %indvars.iv.next160, %wide.trip.count162
  br i1 %exitcond163.not, label %.critedge2, label %.critedge, !llvm.loop !221

.critedge2:                                       ; preds = %.critedge, %Vec_WecStart.exit, %.critedge.preheader
  %.val78190 = phi i32 [ 0, %Vec_WecStart.exit ], [ %.val78.pre, %.critedge.preheader ], [ %.val78.pre, %.critedge ]
  %.val84.pre189 = phi ptr [ %i.cx, %Vec_WecStart.exit ], [ %.val84.pre.pre, %.critedge.preheader ], [ %.val84.pre.pre, %.critedge ]
  %i.dv = sext i32 %.val78190 to i64
  tail call void @qsort(ptr noundef %.val84.pre189, i64 noundef %i.dv, i64 noundef 16, ptr noundef nonnull @Vec_WecSortCompare3) #32
  %i.dw = icmp eq ptr %.0136, null
  br i1 %i.dw, label %Vec_IntFreeP.exit, label %bb.x

bb.x:                                             ; preds = %.critedge2
  %i.dx = getelementptr inbounds nuw i8, ptr %.0136, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !51 ; 2 uses
  %.not.i96 = icmp eq ptr %i.dy, null
  br i1 %.not.i96, label %bb.y, label %.thread.i

.thread.i:                                        ; preds = %bb.x
  tail call void @free(ptr noundef nonnull %i.dy) #32
  br label %bb.y

bb.y:                                             ; preds = %.thread.i, %bb.x
  tail call void @free(ptr noundef nonnull %.0136) #32
  br label %Vec_IntFreeP.exit

Vec_IntFreeP.exit:                                ; preds = %.critedge2, %bb.y
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !51 ; 2 uses
  %.not.i97 = icmp eq ptr %i.ea, null
  br i1 %.not.i97, label %Vec_IntFree.exit98, label %bb.z

bb.z:                                             ; preds = %Vec_IntFreeP.exit
  tail call void @free(ptr noundef nonnull %i.ea) #32
  br label %Vec_IntFree.exit98

Vec_IntFree.exit98:                               ; preds = %Vec_IntFreeP.exit, %bb.z
  tail call void @free(ptr noundef nonnull %i.cd) #32
  %i.eb = load i32, ptr %i.ce, align 8, !tbaa !70 ; 2 uses
  %i.ec = icmp sgt i32 %i.eb, 0
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %.pre.i.i = load ptr, ptr %i.ed, align 8, !tbaa !71 ; 3 uses
  br i1 %i.ec, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i

.lr.ph.i.i.preheader:                             ; preds = %Vec_IntFree.exit98
  %i.ee = zext nneg i32 %i.eb to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.ab
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.ab ], [ 0, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.ef = getelementptr inbounds nuw [16 x i8], ptr %.pre.i.i, i64 %indvars.iv.i.i
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8 ; 2 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !51 ; 2 uses
end_hunk_4
