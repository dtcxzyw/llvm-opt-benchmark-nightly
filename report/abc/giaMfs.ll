Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaMfs?download=true
inline.NumInlined: 356
inline.NumDeleted: 83
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 11
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [55 x i8] c"Timing manager is given but there is no GIA of boxes.\0A\00", align 1
@.str.1 = private unnamed_addr constant [94 x i8] c"Currently \22&mfs\22 cannot process the network containing white-boxes with more than 15 inputs.\0A\00", align 1
@.str.2 = private unnamed_addr constant [88 x i8] c"Currently \22&mfs\22 cannot process the network containing nodes with more than 15 fanins.\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"The network is not changed by \22&mfs\22.\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"The network has %d nodes changed by \22&mfs\22.\0A\00", align 1
@s_Truths6Neg = internal unnamed_addr constant [6 x i64] [i64 6148914691236517205, i64 3689348814741910323, i64 1085102592571150095, i64 71777214294589695, i64 281470681808895, i64 4294967295], align 16
@s_PPMasks = internal unnamed_addr constant [5 x [6 x [3 x i64]]] [[6 x [3 x i64]] [[3 x i64] zeroinitializer, [3 x i64] [i64 -7378697629483820647, i64 2459565876494606882, i64 4919131752989213764], [3 x i64] [i64 -6510615555426900571, i64 723401728380766730, i64 5787213827046133840], [3 x i64] [i64 -6172840429334713771, i64 47851476196393130, i64 6124988953138320640], [3 x i64] [i64 -6149008514797120171, i64 187647121205930, i64 6148820867675914240], [3 x i64] [i64 -6148914692668172971, i64 2863311530, i64 6148914689804861440]], [6 x [3 x i64]] [[3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x i64] [i64 -4340410370284600381, i64 868082074056920076, i64 3472328296227680304], [3 x i64] [i64 -3732415143318664141, i64 57421771435671756, i64 3674993371882992384], [3 x i64] [i64 -3689517697150995661, i64 225176545447116, i64 3689292520605548544], [3 x i64] [i64 -3689348817318890701, i64 3435973836, i64 3689348813882916864]], [6 x [3 x i64]] [[3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x i64] [i64 -1148435428713435121, i64 67555025218437360, i64 1080880403494997760], [3 x i64] [i64 -1085350949055099121, i64 264913582878960, i64 1085086035472220160], [3 x i64] [i64 -1085102596360827121, i64 4042322160, i64 1085102592318504960]], [6 x [3 x i64]] [[3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x i64] [i64 -72056494543077121, i64 280375465148160, i64 71776119077928960], [3 x i64] [i64 -71777218556133121, i64 4278255360, i64 71777214277877760]], [6 x [3 x i64]] [[3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x i64] [i64 -281474976645121, i64 4294901760, i64 281470681743360]]], align 16
@s_Truths6 = internal unnamed_addr constant [6 x i64] [i64 -6148914691236517206, i64 -3689348814741910324, i64 -1085102592571150096, i64 -71777214294589696, i64 -281470681808896, i64 -4294967296], align 16
@.str.6 = private unnamed_addr constant [41 x i8] c"Extending GIA object storage: %d -> %d.\0A\00", align 1
@s_PMasks = internal unnamed_addr constant [5 x [3 x i64]] [[3 x i64] [i64 -7378697629483820647, i64 2459565876494606882, i64 4919131752989213764], [3 x i64] [i64 -4340410370284600381, i64 868082074056920076, i64 3472328296227680304], [3 x i64] [i64 -1148435428713435121, i64 67555025218437360, i64 1080880403494997760], [3 x i64] [i64 -72056494543077121, i64 280375465148160, i64 71776119077928960], [3 x i64] [i64 -281474976645121, i64 4294901760, i64 281470681743360]], align 16
@enable_dbg_outs = external local_unnamed_addr global i32, align 4
@stdout = external local_unnamed_addr global ptr, align 8
@str = private unnamed_addr constant [65 x i8] c"Hard limit on the number of nodes (2^29) is reached. Quitting...\00", align 1

; Function Attrs: nounwind uwtable
define ptr @Gia_ManExtractMfs(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca [6 x i64], align 16               ; 9 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %i.d = alloca i32, align 4                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i64 -6148914691236517206, ptr %i.b, align 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 -3689348814741910324, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 -1085102592571150096, ptr %i.f, align 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 -71777214294589696, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 -281470681808896, ptr %i.h, align 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 -4294967296, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !8    ; 7 uses
  %i.l = tail call i32 @Gia_ManBoxNum(ptr noundef %0) #20 ; 3 uses
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = tail call i32 @Tim_ManPiNum(ptr noundef %i.k) #20
  %i.n = tail call i32 @Tim_ManPoNum(ptr noundef %i.k) #20
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr i8, ptr %0, i64 16
  %.val321 = load i32, ptr %i.o, align 8, !tbaa !30 ; 2 uses
  %i.p = getelementptr i8, ptr %0, i64 64
  %.val322 = load ptr, ptr %i.p, align 8, !tbaa !31
  %i.q = getelementptr i8, ptr %.val322, i64 4
  %.val322.val = load i32, ptr %i.q, align 4, !tbaa !32
  %i.r = sub nsw i32 %.val322.val, %.val321
  %i.s = getelementptr i8, ptr %0, i64 72
  %.val324 = load ptr, ptr %i.s, align 8, !tbaa !33
  %i.t = getelementptr i8, ptr %.val324, i64 4
  %.val324.val = load i32, ptr %i.t, align 4, !tbaa !32
  %i.u = sub nsw i32 %.val324.val, %.val321
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.v = phi i32 [ %i.m, %bb.b ], [ %i.r, %bb.c ] ; 3 uses
  %i.w = phi i32 [ %i.n, %bb.b ], [ %i.u, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i32 0, ptr %i.c, align 4, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  store i32 0, ptr %i.d, align 4, !tbaa !34
  %i.x = tail call i32 @Gia_ManLutSizeMax(ptr noundef nonnull %0) #20 ; 2 uses
  %i.y = tail call noundef range(i32 6, -2147483648) i32 @llvm.smax.i32(i32 %i.x, i32 6)
  %.not300 = icmp eq ptr %i.k, null
  br i1 %.not300, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @Tim_ManBlackBoxIoNum(ptr noundef nonnull %i.k, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #20
  %.pre = load i32, ptr %i.d, align 4, !tbaa !34
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.z = phi i32 [ %.pre, %bb.e ], [ 0, %bb.d ]   ; 2 uses
  %i.aa = getelementptr i8, ptr %0, i64 64        ; 4 uses
  %.val326 = load ptr, ptr %i.aa, align 8, !tbaa !31
  %i.ab = getelementptr i8, ptr %.val326, i64 4
  %.val326.val = load i32, ptr %i.ab, align 4, !tbaa !32
  %i.ac = add nsw i32 %.val326.val, 1
  %i.ad = call i32 @Gia_ManLutNum(ptr noundef nonnull %0) #20
  %i.ae = add nsw i32 %i.ac, %i.ad
  %i.af = getelementptr i8, ptr %0, i64 72        ; 7 uses
  %.val328 = load ptr, ptr %i.af, align 8, !tbaa !33
  %i.ag = getelementptr i8, ptr %.val328, i64 4
  %.val328.val = load i32, ptr %i.ag, align 4, !tbaa !32
  %i.ah = add nsw i32 %i.ae, %.val328.val
  %i.ai = load i32, ptr %i.c, align 4, !tbaa !34
  %i.aj = add nsw i32 %i.ah, %i.ai
  %i.ak = load i32, ptr %i.d, align 4, !tbaa !34
  %i.al = add nsw i32 %i.aj, %i.ak                ; 11 uses
  %i.am = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21 ; 4 uses
  %i.an = add i32 %i.al, -1                       ; 2 uses
  %or.cond.i.i = icmp ult i32 %i.an, 7
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 8, i32 %i.al ; 3 uses
  store i32 %spec.store.select.i.i, ptr %i.am, align 8, !tbaa !35
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %Vec_WecStart.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = sext i32 %spec.store.select.i.i to i64
  %i.ap = call noalias ptr @calloc(i64 noundef %i.ao, i64 noundef 16) #22
  br label %Vec_WecStart.exit

Vec_WecStart.exit:                                ; preds = %bb.f, %bb.g
  %.val370 = phi ptr [ %i.ap, %bb.g ], [ null, %bb.f ] ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %.val370, ptr %i.ar, align 8, !tbaa !37
  store i32 %i.al, ptr %i.aq, align 4, !tbaa !38
  %i.as = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21 ; 4 uses
  %or.cond.i.i409 = icmp ult i32 %i.an, 15
  %spec.store.select.i.i410 = select i1 %or.cond.i.i409, i32 16, i32 %i.al ; 9 uses
  store i32 %spec.store.select.i.i410, ptr %i.as, align 8, !tbaa !39
  %.not.i.i411 = icmp eq i32 %spec.store.select.i.i410, 0 ; 4 uses
  br i1 %.not.i.i411, label %Vec_StrStart.exit, label %bb.h

bb.h:                                             ; preds = %Vec_WecStart.exit
  %i.at = sext i32 %spec.store.select.i.i410 to i64
  %i.au = call noalias ptr @malloc(i64 noundef %i.at) #21
  br label %Vec_StrStart.exit

Vec_StrStart.exit:                                ; preds = %Vec_WecStart.exit, %bb.h
  %.val361 = phi ptr [ %i.au, %bb.h ], [ null, %Vec_WecStart.exit ] ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 5 uses
  store ptr %.val361, ptr %i.aw, align 8, !tbaa !41
  store i32 %i.al, ptr %i.av, align 4, !tbaa !42
  %i.ax = sext i32 %i.al to i64                   ; 4 uses
  call void @llvm.memset.p0.i64(ptr align 1 %.val361, i8 0, i64 %i.ax, i1 false)
  %i.ay = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21 ; 4 uses
  store i32 %spec.store.select.i.i410, ptr %i.ay, align 8, !tbaa !39
  br i1 %.not.i.i411, label %Vec_StrStart.exit415, label %bb.i

bb.i:                                             ; preds = %Vec_StrStart.exit
  %i.az = sext i32 %spec.store.select.i.i410 to i64
  %i.ba = call noalias ptr @malloc(i64 noundef %i.az) #21
  br label %Vec_StrStart.exit415

Vec_StrStart.exit415:                             ; preds = %Vec_StrStart.exit, %bb.i
  %i.bb = phi ptr [ %i.ba, %bb.i ], [ null, %Vec_StrStart.exit ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 5 uses
  store ptr %i.bb, ptr %i.bd, align 8, !tbaa !41
  store i32 %i.al, ptr %i.bc, align 4, !tbaa !42
  call void @llvm.memset.p0.i64(ptr align 1 %i.bb, i8 0, i64 %i.ax, i1 false)
  %i.be = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21 ; 4 uses
  store i32 %spec.store.select.i.i410, ptr %i.be, align 8, !tbaa !43
  br i1 %.not.i.i411, label %Vec_WrdStart.exit, label %bb.j

bb.j:                                             ; preds = %Vec_StrStart.exit415
  %i.bf = sext i32 %spec.store.select.i.i410 to i64
  %i.bg = shl nsw i64 %i.bf, 3
  %i.bh = call noalias ptr @malloc(i64 noundef %i.bg) #21
  br label %Vec_WrdStart.exit

Vec_WrdStart.exit:                                ; preds = %Vec_StrStart.exit415, %bb.j
  %.val363 = phi ptr [ %i.bh, %bb.j ], [ null, %Vec_StrStart.exit415 ] ; 7 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr %.val363, ptr %i.bj, align 8, !tbaa !46
  store i32 %i.al, ptr %i.bi, align 4, !tbaa !47
  %i.bk = shl nsw i64 %i.ax, 3
  call void @llvm.memset.p0.i64(ptr align 8 %.val363, i8 0, i64 %i.bk, i1 false)
  %i.bl = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21 ; 7 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 4 ; 2 uses
  store i32 %spec.store.select.i.i410, ptr %i.bl, align 8, !tbaa !48
  br i1 %.not.i.i411, label %Vec_IntAlloc.exit.thread.i, label %Vec_IntAlloc.exit.i

Vec_IntAlloc.exit.thread.i:                       ; preds = %Vec_WrdStart.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr null, ptr %i.bn, align 8, !tbaa !49
  store i32 %i.al, ptr %i.bm, align 4, !tbaa !32
  br label %Vec_IntStart.exit

Vec_IntAlloc.exit.i:                              ; preds = %Vec_WrdStart.exit
  %i.bo = sext i32 %spec.store.select.i.i410 to i64
  %i.bp = shl nsw i64 %i.bo, 2
  %i.bq = call noalias ptr @malloc(i64 noundef %i.bp) #21 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !49
  store i32 %i.al, ptr %i.bm, align 4, !tbaa !32
  %.not.i = icmp eq ptr %i.bq, null
  br i1 %.not.i, label %Vec_IntStart.exit, label %bb.k

bb.k:                                             ; preds = %Vec_IntAlloc.exit.i
  %i.bs = shl nsw i64 %i.ax, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bq, i8 0, i64 %i.bs, i1 false)
  br label %Vec_IntStart.exit

Vec_IntStart.exit:                                ; preds = %Vec_IntAlloc.exit.thread.i, %Vec_IntAlloc.exit.i, %bb.k
  %.val348 = phi ptr [ null, %Vec_IntAlloc.exit.thread.i ], [ null, %Vec_IntAlloc.exit.i ], [ %i.bq, %bb.k ]
  %i.bt = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21 ; 10 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 4 ; 10 uses
  store i32 0, ptr %i.bu, align 4, !tbaa !47
  store i32 10000, ptr %i.bt, align 8, !tbaa !43
  %i.bv = call noalias dereferenceable_or_null(80000) ptr @malloc(i64 noundef 80000) #21 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 4 uses
  store ptr %i.bv, ptr %i.bw, align 8, !tbaa !46
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.by = getelementptr i8, ptr %0, i64 24        ; 3 uses
  %.val.i = load i32, ptr %i.by, align 8, !tbaa !50 ; 6 uses
  %i.bz = load i32, ptr %i.bx, align 8, !tbaa !48
  %.not.i.i.i = icmp slt i32 %i.bz, %.val.i
  br i1 %.not.i.i.i, label %bb.l, label %Vec_IntGrow.exit.i.i

bb.l:                                             ; preds = %Vec_IntStart.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !49 ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.cb, null
  %i.cc = sext i32 %.val.i to i64
  %i.cd = shl nsw i64 %i.cc, 2                    ; 2 uses
  br i1 %.not9.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ce = call ptr @realloc(ptr noundef nonnull %i.cb, i64 noundef %i.cd) #23
  br label %bb.o

bb.n:                                             ; preds = %bb.l
end_hunk_0
begin_hunk_1_@Gia_ManExtractMfs:bb.a
  %i.fu = shl nuw nsw i64 %i.ft, 2                ; 2 uses
  br i1 %.not9.i10.i426, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fv = call ptr @realloc(ptr noundef nonnull %.pre635, i64 noundef %i.fu) #23
  br label %Vec_IntGrow.exit11.sink.split.i427

bb.an:                                            ; preds = %bb.al
  %i.fw = call noalias ptr @malloc(i64 noundef %i.fu) #21
  br label %Vec_IntGrow.exit11.sink.split.i427

Vec_IntGrow.exit11.sink.split.i427:               ; preds = %bb.am, %bb.an, %bb.ai, %bb.aj
  %storemerge503 = phi ptr [ %i.fq, %bb.aj ], [ %i.fp, %bb.ai ], [ %i.fv, %bb.am ], [ %i.fw, %bb.an ] ; 2 uses
  %spec.select.sink.i428 = phi i32 [ 16, %bb.aj ], [ 16, %bb.ai ], [ %spec.select.i424, %bb.am ], [ %spec.select.i424, %bb.an ]
  store ptr %storemerge503, ptr %i.di, align 8, !tbaa !49
  store i32 %spec.select.sink.i428, ptr %i.dd, align 8, !tbaa !48
  %.pre636 = load i32, ptr %i.de, align 4, !tbaa !32
  br label %Vec_IntPush.exit431

Vec_IntPush.exit431:                              ; preds = %Vec_IntPush.exit.Vec_IntPush.exit431_crit_edge, %bb.ak, %Vec_IntGrow.exit11.sink.split.i427
  %i.fx = phi i32 [ %i.fk, %Vec_IntPush.exit.Vec_IntPush.exit431_crit_edge ], [ %i.fk, %bb.ak ], [ %.pre636, %Vec_IntGrow.exit11.sink.split.i427 ] ; 2 uses
  %i.fy = phi ptr [ %.pre634, %Vec_IntPush.exit.Vec_IntPush.exit431_crit_edge ], [ %.pre635, %bb.ak ], [ %storemerge503, %Vec_IntGrow.exit11.sink.split.i427 ]
  %i.fz = add nsw i32 %i.fx, 1
  store i32 %i.fz, ptr %i.de, align 4, !tbaa !32
  %i.ga = sext i32 %i.fx to i64
  %i.gb = getelementptr inbounds [4 x i8], ptr %i.fy, i64 %i.ga
  store i32 %i.en, ptr %i.gb, align 4, !tbaa !34
  %indvars.iv.next573 = add nuw nsw i64 %indvars.iv572, 1 ; 2 uses
  %.val373 = load ptr, ptr %i.dk, align 8, !tbaa !55
  %i.gc = getelementptr i8, ptr %.val373, i64 8
  %.val373.val = load ptr, ptr %i.gc, align 8, !tbaa !49 ; 2 uses
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %.val373.val, i64 %indvars.iv578
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !34
  %i.gf = sext i32 %i.ge to i64
  %i.gg = getelementptr inbounds [4 x i8], ptr %.val373.val, i64 %i.gf ; 2 uses
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !34
  %i.gi = sext i32 %i.gh to i64
  %i.gj = icmp slt i64 %indvars.iv.next573, %i.gi
  br i1 %i.gj, label %bb.x, label %.critedge2, !llvm.loop !56

.critedge2:                                       ; preds = %Vec_IntPush.exit431, %Vec_IntGrow.exit
  %.val330 = load ptr, ptr %i.dl, align 8, !tbaa !57
  %i.gk = getelementptr inbounds nuw [12 x i8], ptr %.val330, i64 %indvars.iv578
  %i.gl = call ptr @Gia_ObjComputeTruthTableCut(ptr noundef nonnull %0, ptr noundef nonnull %i.gk, ptr noundef nonnull %i.dd) #20 ; 3 uses
  %i.gm = getelementptr i8, ptr %i.ds, i64 8
  %.val384 = load ptr, ptr %i.gm, align 8, !tbaa !49
  %i.gn = getelementptr i8, ptr %i.ds, i64 4      ; 2 uses
  %.val319 = load i32, ptr %i.gn, align 4, !tbaa !32
  %.val318 = load i32, ptr %i.de, align 4, !tbaa !32
  %i.go = call fastcc i32 @Abc_TtMinBase(ptr noundef %i.gl, ptr noundef %.val384, i32 noundef %.val319, i32 noundef %.val318) ; 3 uses
  store i32 %i.go, ptr %i.gn, align 4, !tbaa !32
  %i.gp = load i64, ptr %i.gl, align 8, !tbaa !54
  %i.gq = getelementptr inbounds [8 x i8], ptr %.val363, i64 %i.dr
  store i64 %i.gp, ptr %i.gq, align 8, !tbaa !54
  %i.gr = icmp slt i32 %i.go, 7
  %i.gs = add nsw i32 %i.go, -6
  %i.gt = shl nuw i32 1, %i.gs
  %i.gu = select i1 %i.gr, i32 1, i32 %i.gt       ; 2 uses
  %.val387 = load i32, ptr %i.bu, align 4, !tbaa !47 ; 2 uses
  %i.gv = getelementptr inbounds [4 x i8], ptr %.val348, i64 %i.dr
  store i32 %.val387, ptr %i.gv, align 4, !tbaa !34
  %i.gw = icmp sgt i32 %i.gu, 0
  br i1 %i.gw, label %.lr.ph519.preheader, label %._crit_edge

.lr.ph519.preheader:                              ; preds = %.critedge2
  %wide.trip.count = zext nneg i32 %i.gu to i64
  %.pre638 = load i32, ptr %i.bt, align 8, !tbaa !43
  br label %.lr.ph519

.lr.ph519:                                        ; preds = %.lr.ph519.preheader, %Vec_WrdPush.exit
  %i.gx = phi ptr [ %i.dm, %.lr.ph519.preheader ], [ %i.ho, %Vec_WrdPush.exit ] ; 2 uses
  %i.gy = phi ptr [ %i.dn, %.lr.ph519.preheader ], [ %i.ho, %Vec_WrdPush.exit ] ; 4 uses
  %i.gz = phi i32 [ %.pre638, %.lr.ph519.preheader ], [ %i.hp, %Vec_WrdPush.exit ] ; 8 uses
  %i.ha = phi i32 [ %.val387, %.lr.ph519.preheader ], [ %i.hq, %Vec_WrdPush.exit ] ; 2 uses
  %indvars.iv575 = phi i64 [ 0, %.lr.ph519.preheader ], [ %indvars.iv.next576, %Vec_WrdPush.exit ] ; 2 uses
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.gl, i64 %indvars.iv575
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !54
  %i.hd = icmp eq i32 %i.ha, %i.gz
  br i1 %i.hd, label %bb.ao, label %Vec_WrdPush.exit

bb.ao:                                            ; preds = %.lr.ph519
  %i.he = icmp slt i32 %i.gz, 16
  br i1 %i.he, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %bb.ao
  %.not9.i.i436 = icmp eq ptr %i.gy, null
  br i1 %.not9.i.i436, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.hf = call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.gy, i64 noundef 128) #23
  br label %Vec_WrdGrow.exit11.sink.split.i

bb.ar:                                            ; preds = %bb.ap
  %i.hg = call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #21
  br label %Vec_WrdGrow.exit11.sink.split.i

bb.as:                                            ; preds = %bb.ao
  %i.hh = icmp samesign ult i32 %i.gz, 1073741823
  %i.hi = shl nuw nsw i32 %i.gz, 1
  %spec.select.i432 = select i1 %i.hh, i32 %i.hi, i32 2147483647 ; 4 uses
  %.not.i9.i433 = icmp samesign ult i32 %i.gz, %spec.select.i432
  br i1 %.not.i9.i433, label %bb.at, label %Vec_WrdPush.exit

bb.at:                                            ; preds = %bb.as
  %.not9.i10.i434 = icmp eq ptr %i.gy, null
  %i.hj = zext nneg i32 %spec.select.i432 to i64
  %i.hk = shl nuw nsw i64 %i.hj, 3                ; 2 uses
  br i1 %.not9.i10.i434, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.hl = call ptr @realloc(ptr noundef nonnull %i.gy, i64 noundef %i.hk) #23
  br label %Vec_WrdGrow.exit11.sink.split.i

bb.av:                                            ; preds = %bb.at
  %i.hm = call noalias ptr @malloc(i64 noundef %i.hk) #21
  br label %Vec_WrdGrow.exit11.sink.split.i

Vec_WrdGrow.exit11.sink.split.i:                  ; preds = %bb.au, %bb.av, %bb.aq, %bb.ar
  %storemerge502 = phi ptr [ %i.hg, %bb.ar ], [ %i.hf, %bb.aq ], [ %i.hl, %bb.au ], [ %i.hm, %bb.av ] ; 2 uses
  %spec.select.sink.i435 = phi i32 [ 16, %bb.ar ], [ 16, %bb.aq ], [ %spec.select.i432, %bb.au ], [ %spec.select.i432, %bb.av ] ; 2 uses
  store ptr %storemerge502, ptr %i.bw, align 8, !tbaa !46
  store i32 %spec.select.sink.i435, ptr %i.bt, align 8, !tbaa !43
  %.pre639 = load i32, ptr %i.bu, align 4, !tbaa !47
  br label %Vec_WrdPush.exit

Vec_WrdPush.exit:                                 ; preds = %.lr.ph519, %bb.as, %Vec_WrdGrow.exit11.sink.split.i
  %i.hn = phi i32 [ %i.ha, %.lr.ph519 ], [ %i.gz, %bb.as ], [ %.pre639, %Vec_WrdGrow.exit11.sink.split.i ] ; 2 uses
  %i.ho = phi ptr [ %i.gx, %.lr.ph519 ], [ %i.gx, %bb.as ], [ %storemerge502, %Vec_WrdGrow.exit11.sink.split.i ] ; 5 uses
  %i.hp = phi i32 [ %i.gz, %.lr.ph519 ], [ %i.gz, %bb.as ], [ %spec.select.sink.i435, %Vec_WrdGrow.exit11.sink.split.i ]
  %i.hq = add nsw i32 %i.hn, 1                    ; 2 uses
  store i32 %i.hq, ptr %i.bu, align 4, !tbaa !47
  %i.hr = sext i32 %i.hn to i64
  %i.hs = getelementptr inbounds [8 x i8], ptr %i.ho, i64 %i.hr
  store i64 %i.hc, ptr %i.hs, align 8, !tbaa !54
  %indvars.iv.next576 = add nuw nsw i64 %indvars.iv575, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next576, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph519, !llvm.loop !58

._crit_edge:                                      ; preds = %Vec_WrdPush.exit, %.critedge2
  %i.ht = phi ptr [ %i.dm, %.critedge2 ], [ %i.ho, %Vec_WrdPush.exit ]
  %i.hu = phi ptr [ %i.dn, %.critedge2 ], [ %i.ho, %Vec_WrdPush.exit ]
  %.val388 = load ptr, ptr %i.dk, align 8, !tbaa !55
  %i.hv = getelementptr i8, ptr %.val388, i64 8
  %.val388.val = load ptr, ptr %i.hv, align 8, !tbaa !49 ; 2 uses
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %.val388.val, i64 %indvars.iv578
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !34
  %i.hy = sext i32 %i.hx to i64
  %i.hz = getelementptr inbounds [4 x i8], ptr %.val388.val, i64 %i.hy ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 4
  %i.ib = load i32, ptr %i.hz, align 4, !tbaa !34
  %i.ic = sext i32 %i.ib to i64
  %i.id = getelementptr inbounds [4 x i8], ptr %i.ia, i64 %i.ic
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !34
  %.not314 = icmp sgt i32 %i.ie, -1
  br i1 %.not314, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %._crit_edge
  %.val360 = load ptr, ptr %i.aw, align 8, !tbaa !41
  %i.if = getelementptr inbounds i8, ptr %.val360, i64 %i.dr
  store i8 1, ptr %i.if, align 1, !tbaa !53
  %.val359 = load ptr, ptr %i.bd, align 8, !tbaa !41
  %i.ig = getelementptr inbounds i8, ptr %.val359, i64 %i.dr
  store i8 1, ptr %i.ig, align 1, !tbaa !53
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %._crit_edge
  %i.ih = add nsw i32 %.1278522, 1
  %.val350 = load ptr, ptr %i.dc, align 8, !tbaa !49
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %.val350, i64 %indvars.iv578
  store i32 %.1278522, ptr %i.ii, align 4, !tbaa !34
  %.val329.pre = load i32, ptr %i.by, align 8, !tbaa !50
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.r
  %.val329 = phi i32 [ %.val329.pre, %bb.ax ], [ %.val329640, %bb.r ] ; 2 uses
  %i.ij = phi ptr [ %i.ht, %bb.ax ], [ %i.dm, %bb.r ] ; 2 uses
  %i.ik = phi ptr [ %i.hu, %bb.ax ], [ %i.dn, %bb.r ]
  %.2279 = phi i32 [ %i.ih, %bb.ax ], [ %.1278522, %bb.r ] ; 2 uses
  %indvars.iv.next579 = add nuw nsw i64 %indvars.iv578, 1 ; 2 uses
  %i.il = sext i32 %.val329 to i64
  %i.im = icmp slt i64 %indvars.iv.next579, %i.il
  br i1 %i.im, label %bb.r, label %._crit_edge524.loopexit, !llvm.loop !59

._crit_edge524.loopexit:                          ; preds = %bb.ay
  %.promoted.pre = load i64, ptr %i.a, align 8
  br label %._crit_edge524

._crit_edge524:                                   ; preds = %._crit_edge524.loopexit, %.critedge
  %i.in = phi ptr [ %i.bv, %.critedge ], [ %i.ij, %._crit_edge524.loopexit ] ; 3 uses
  %.promoted = phi i64 [ undef, %.critedge ], [ %.promoted.pre, %._crit_edge524.loopexit ] ; 2 uses
  %.1278.lcssa = phi i32 [ %i.db, %.critedge ], [ %.2279, %._crit_edge524.loopexit ]
  call void @Gia_ObjComputeTruthTableStop(ptr noundef nonnull %0) #20
  %i.io = getelementptr i8, ptr %0, i64 32        ; 3 uses
  %i.ip = load ptr, ptr %i.af, align 8, !tbaa !33 ; 3 uses
  %i.iq = getelementptr i8, ptr %i.ip, i64 4
  %.val317526 = load i32, ptr %i.iq, align 4, !tbaa !32
  %i.ir = icmp sgt i32 %.val317526, 0
  br i1 %i.ir, label %.lr.ph530, label %.critedge4

.lr.ph530:                                        ; preds = %._crit_edge524
  %i.is = getelementptr i8, ptr %i.bl, i64 8
  %i.it = sext i32 %.1278.lcssa to i64
  %.val397.pre = load ptr, ptr %i.io, align 8, !tbaa !57
  br label %bb.az

bb.az:                                            ; preds = %.lr.ph530, %bb.bo
  %.val327.pre670 = phi ptr [ %i.ip, %.lr.ph530 ], [ %.val327.pre671, %bb.bo ] ; 2 uses
  %i.iu = phi ptr [ %i.ip, %.lr.ph530 ], [ %i.kx, %bb.bo ] ; 2 uses
  %i.iv = phi ptr [ %i.in, %.lr.ph530 ], [ %i.ky, %bb.bo ] ; 4 uses
  %i.iw = phi ptr [ %i.in, %.lr.ph530 ], [ %i.kz, %bb.bo ] ; 5 uses
  %.val397 = phi ptr [ %.val397.pre, %.lr.ph530 ], [ %.val344, %bb.bo ] ; 2 uses
  %indvars.iv583 = phi i64 [ 0, %.lr.ph530 ], [ %indvars.iv.next584, %bb.bo ] ; 3 uses
  %indvars.iv581 = phi i64 [ %i.it, %.lr.ph530 ], [ %indvars.iv.next582, %bb.bo ] ; 7 uses
  %i.ix = phi i64 [ %.promoted, %.lr.ph530 ], [ %i.la, %bb.bo ] ; 2 uses
  %i.iy = getelementptr i8, ptr %i.iu, i64 8
  %.val398.val = load ptr, ptr %i.iy, align 8, !tbaa !49
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %.val398.val, i64 %indvars.iv583
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !34 ; 2 uses
  %i.jb = sext i32 %i.ja to i64
  %i.jc = getelementptr inbounds [12 x i8], ptr %.val397, i64 %i.jb ; 3 uses
  %.not302 = icmp eq ptr %.val397, null
  br i1 %.not302, label %.critedge4, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.jd = ptrtoint ptr %i.jc to i64
  %.val3.i = load i64, ptr %i.jc, align 4
  %i.je = trunc i64 %.val3.i to i32
  %i.jf = and i32 %i.je, 536870911
  %i.jg = sub nsw i32 %i.ja, %i.jf
  %i.jh = getelementptr inbounds [16 x i8], ptr %.val370, i64 %indvars.iv581 ; 4 uses
  %.val381 = load ptr, ptr %i.dc, align 8, !tbaa !49
  %i.ji = sext i32 %i.jg to i64
  %i.jj = getelementptr inbounds [4 x i8], ptr %.val381, i64 %i.ji
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !34
  %i.jl = load i32, ptr %i.jh, align 8, !tbaa !48
  %.not.i.i437 = icmp slt i32 %i.jl, 1
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jh, i64 8 ; 2 uses
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !49 ; 3 uses
  br i1 %.not.i.i437, label %bb.bb, label %Vec_IntGrow.exit.i438

bb.bb:                                            ; preds = %bb.ba
  %.not9.i.i439 = icmp eq ptr %i.jn, null
  br i1 %.not9.i.i439, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.jo = call dereferenceable_or_null(4) ptr @realloc(ptr noundef nonnull %i.jn, i64 noundef 4) #23
  %.val327.pre.pre = load ptr, ptr %i.af, align 8, !tbaa !33
  br label %bb.be

bb.bd:                                            ; preds = %bb.bb
  %i.jp = call noalias dereferenceable_or_null(4) ptr @malloc(i64 noundef 4) #21
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.val327.pre = phi ptr [ %.val327.pre.pre, %bb.bc ], [ %.val327.pre670, %bb.bd ] ; 2 uses
  %i.jq = phi ptr [ %i.jo, %bb.bc ], [ %i.jp, %bb.bd ] ; 2 uses
  store ptr %i.jq, ptr %i.jm, align 8, !tbaa !49
  store i32 1, ptr %i.jh, align 8, !tbaa !48
  br label %Vec_IntGrow.exit.i438

Vec_IntGrow.exit.i438:                            ; preds = %bb.ba, %bb.be
  %.val327.pre672 = phi ptr [ %.val327.pre, %bb.be ], [ %.val327.pre670, %bb.ba ]
  %i.jr = phi ptr [ %.val327.pre, %bb.be ], [ %i.iu, %bb.ba ] ; 2 uses
  %i.js = phi ptr [ %i.jq, %bb.be ], [ %i.jn, %bb.ba ]
  store i32 %i.jk, ptr %i.js, align 4, !tbaa !34
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jh, i64 4
  store i32 1, ptr %i.jt, align 4, !tbaa !32
  %i.ju = getelementptr i8, ptr %i.jr, i64 4
  %.val327.val = load i32, ptr %i.ju, align 4, !tbaa !32
  %i.jv = sub nsw i32 %.val327.val, %i.w
  %i.jw = sext i32 %i.jv to i64
  %i.jx = icmp slt i64 %indvars.iv583, %i.jw
  br i1 %i.jx, label %bb.bf, label %bb.bo

bb.bf:                                            ; preds = %Vec_IntGrow.exit.i438
  %.val358 = load ptr, ptr %i.aw, align 8, !tbaa !41
  %i.jy = getelementptr inbounds i8, ptr %.val358, i64 %indvars.iv581
  store i8 1, ptr %i.jy, align 1, !tbaa !53
  %.val357 = load ptr, ptr %i.bd, align 8, !tbaa !41
  %i.jz = getelementptr inbounds i8, ptr %.val357, i64 %indvars.iv581
  store i8 1, ptr %i.jz, align 1, !tbaa !53
  %.val405 = load i64, ptr %i.jc, align 4
  %i.ka = trunc i64 %.val405 to i32
  %i.kb = shl i32 %i.ka, 2
  %i.kc = ashr i32 %i.kb, 31
  %i.kd = sext i32 %i.kc to i64
  %i.ke = xor i64 %i.kd, -6148914691236517206     ; 3 uses
  %i.kf = getelementptr inbounds [8 x i8], ptr %.val363, i64 %indvars.iv581
  store i64 %i.ke, ptr %i.kf, align 8, !tbaa !54
  %.val386 = load i32, ptr %i.bu, align 4, !tbaa !47 ; 8 uses
  %.val347 = load ptr, ptr %i.is, align 8, !tbaa !49
  %i.kg = getelementptr inbounds [4 x i8], ptr %.val347, i64 %indvars.iv581
  store i32 %.val386, ptr %i.kg, align 4, !tbaa !34
  %i.kh = load i32, ptr %i.bt, align 8, !tbaa !43
  %i.ki = icmp eq i32 %.val386, %i.kh
  br i1 %i.ki, label %bb.bg, label %Vec_WrdPush.exit447

bb.bg:                                            ; preds = %bb.bf
  %i.kj = icmp slt i32 %.val386, 16
  br i1 %i.kj, label %bb.bh, label %bb.bk

bb.bh:                                            ; preds = %bb.bg
  %.not9.i.i445 = icmp eq ptr %i.iw, null
  br i1 %.not9.i.i445, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.kk = call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.iw, i64 noundef 128) #23
  br label %Vec_WrdGrow.exit11.sink.split.i443

bb.bj:                                            ; preds = %bb.bh
  %i.kl = call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #21
  br label %Vec_WrdGrow.exit11.sink.split.i443

bb.bk:                                            ; preds = %bb.bg
  %i.km = icmp samesign ult i32 %.val386, 1073741823
  %i.kn = shl nuw nsw i32 %.val386, 1
  %spec.select.i440 = select i1 %i.km, i32 %i.kn, i32 2147483647 ; 4 uses
  %.not.i9.i441 = icmp samesign ult i32 %.val386, %spec.select.i440
  br i1 %.not.i9.i441, label %bb.bl, label %Vec_WrdPush.exit447

bb.bl:                                            ; preds = %bb.bk
  %.not9.i10.i442 = icmp eq ptr %i.iw, null
  %i.ko = zext nneg i32 %spec.select.i440 to i64
  %i.kp = shl nuw nsw i64 %i.ko, 3                ; 2 uses
  br i1 %.not9.i10.i442, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.kq = call ptr @realloc(ptr noundef nonnull %i.iw, i64 noundef %i.kp) #23
  br label %Vec_WrdGrow.exit11.sink.split.i443

bb.bn:                                            ; preds = %bb.bl
  %i.kr = call noalias ptr @malloc(i64 noundef %i.kp) #21
  br label %Vec_WrdGrow.exit11.sink.split.i443

Vec_WrdGrow.exit11.sink.split.i443:               ; preds = %bb.bm, %bb.bn, %bb.bi, %bb.bj
  %storemerge = phi ptr [ %i.kl, %bb.bj ], [ %i.kk, %bb.bi ], [ %i.kq, %bb.bm ], [ %i.kr, %bb.bn ] ; 2 uses
  %spec.select.sink.i444 = phi i32 [ 16, %bb.bj ], [ 16, %bb.bi ], [ %spec.select.i440, %bb.bm ], [ %spec.select.i440, %bb.bn ]
  store ptr %storemerge, ptr %i.bw, align 8, !tbaa !46
  store i32 %spec.select.sink.i444, ptr %i.bt, align 8, !tbaa !43
  %.pre647 = load i32, ptr %i.bu, align 4, !tbaa !47
  br label %Vec_WrdPush.exit447

Vec_WrdPush.exit447:                              ; preds = %bb.bf, %bb.bk, %Vec_WrdGrow.exit11.sink.split.i443
  %i.ks = phi i32 [ %.val386, %bb.bf ], [ %.val386, %bb.bk ], [ %.pre647, %Vec_WrdGrow.exit11.sink.split.i443 ] ; 2 uses
  %i.kt = phi ptr [ %i.iv, %bb.bf ], [ %i.iv, %bb.bk ], [ %storemerge, %Vec_WrdGrow.exit11.sink.split.i443 ] ; 3 uses
  %i.ku = add nsw i32 %i.ks, 1
  store i32 %i.ku, ptr %i.bu, align 4, !tbaa !47
  %i.kv = sext i32 %i.ks to i64
  %i.kw = getelementptr inbounds [8 x i8], ptr %i.kt, i64 %i.kv
  store i64 %i.ke, ptr %i.kw, align 8, !tbaa !54
  %.pre648 = load ptr, ptr %i.af, align 8, !tbaa !33 ; 2 uses
  br label %bb.bo

bb.bo:                                            ; preds = %Vec_WrdPush.exit447, %Vec_IntGrow.exit.i438
  %.val327.pre671 = phi ptr [ %.pre648, %Vec_WrdPush.exit447 ], [ %.val327.pre672, %Vec_IntGrow.exit.i438 ]
  %i.kx = phi ptr [ %.pre648, %Vec_WrdPush.exit447 ], [ %i.jr, %Vec_IntGrow.exit.i438 ] ; 2 uses
  %i.ky = phi ptr [ %i.kt, %Vec_WrdPush.exit447 ], [ %i.iv, %Vec_IntGrow.exit.i438 ] ; 2 uses
  %i.kz = phi ptr [ %i.kt, %Vec_WrdPush.exit447 ], [ %i.iw, %Vec_IntGrow.exit.i438 ]
  %i.la = phi i64 [ %i.ke, %Vec_WrdPush.exit447 ], [ %i.ix, %Vec_IntGrow.exit.i438 ] ; 2 uses
  %.val344 = load ptr, ptr %i.io, align 8, !tbaa !57 ; 2 uses
  %i.lb = ptrtoint ptr %.val344 to i64
  %i.lc = sub i64 %i.jd, %i.lb
  %i.ld = sdiv exact i64 %i.lc, 12
  %indvars.iv.next582 = add nsw i64 %indvars.iv581, 1
  %.val349 = load ptr, ptr %i.dc, align 8, !tbaa !49
  %sext498 = shl i64 %i.ld, 32
  %i.le = ashr exact i64 %sext498, 30
  %i.lf = getelementptr inbounds i8, ptr %.val349, i64 %i.le
  %i.lg = trunc nsw i64 %indvars.iv581 to i32
  store i32 %i.lg, ptr %i.lf, align 4, !tbaa !34
  %indvars.iv.next584 = add nuw nsw i64 %indvars.iv583, 1 ; 2 uses
  %i.lh = getelementptr i8, ptr %i.kx, i64 4
  %.val317 = load i32, ptr %i.lh, align 4, !tbaa !32
  %i.li = sext i32 %.val317 to i64
  %i.lj = icmp slt i64 %indvars.iv.next584, %i.li
  br i1 %i.lj, label %bb.az, label %.critedge4, !llvm.loop !60

.critedge4:                                       ; preds = %bb.az, %bb.bo, %._crit_edge524
  %i.lk = phi ptr [ %i.in, %._crit_edge524 ], [ %i.ky, %bb.bo ], [ %i.iv, %bb.az ] ; 2 uses
  %.lcssa = phi i64 [ %.promoted, %._crit_edge524 ], [ %i.la, %bb.bo ], [ %i.ix, %bb.az ]
  store i64 %.lcssa, ptr %i.a, align 8
  %i.ll = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 4 uses
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !61 ; 3 uses
  %.not303 = icmp eq ptr %i.lm, null
  br i1 %.not303, label %bb.dn, label %bb.bp

bb.bp:                                            ; preds = %.critedge4
  %i.ln = getelementptr i8, ptr %i.lm, i64 64
  %.val325 = load ptr, ptr %i.ln, align 8, !tbaa !31
  %i.lo = getelementptr i8, ptr %.val325, i64 4
  %.val325.val = load i32, ptr %i.lo, align 4, !tbaa !32
  call void @Gia_ObjComputeTruthTableStart(ptr noundef nonnull %i.lm, i32 noundef %.val325.val) #20
  %i.lp = icmp sgt i32 %i.l, 0
  br i1 %i.lp, label %.lr.ph565, label %._crit_edge566

.lr.ph565:                                        ; preds = %bb.bp
  %i.lq = getelementptr i8, ptr %i.bl, i64 8
  br label %bb.bq

bb.bq:                                            ; preds = %.lr.ph565, %._crit_edge556
  %i.lr = phi ptr [ %i.lk, %.lr.ph565 ], [ %i.up, %._crit_edge556 ] ; 4 uses
  %i.ls = phi ptr [ %i.lk, %.lr.ph565 ], [ %i.uo, %._crit_edge556 ] ; 4 uses
  %.0273563 = phi i32 [ 0, %.lr.ph565 ], [ %.2724, %._crit_edge556 ] ; 4 uses
  %.0274562 = phi i32 [ 0, %.lr.ph565 ], [ %.2276723, %._crit_edge556 ] ; 4 uses
  %.0282560 = phi i32 [ 0, %.lr.ph565 ], [ %i.uq, %._crit_edge556 ] ; 4 uses
  %.0283558 = phi i32 [ %i.v, %.lr.ph565 ], [ %i.ur, %._crit_edge556 ] ; 4 uses
  %.1285557 = phi i32 [ 0, %.lr.ph565 ], [ %i.us, %._crit_edge556 ] ; 4 uses
  %i.lt = call i32 @Tim_ManBoxInputNum(ptr noundef %i.k, i32 noundef %.1285557) #20 ; 11 uses
  %i.lu = call i32 @Tim_ManBoxOutputNum(ptr noundef %i.k, i32 noundef %.1285557) #20 ; 5 uses
  %i.lv = call i32 @Tim_ManBoxIsBlack(ptr noundef %i.k, i32 noundef %.1285557) #20
  %.not304 = icmp eq i32 %i.lv, 0
  br i1 %.not304, label %bb.br, label %.preheader508

.preheader508:                                    ; preds = %bb.bq
  %i.lw = icmp sgt i32 %i.lu, 0
  br i1 %i.lw, label %.lr.ph536.preheader, label %.preheader506

.lr.ph536.preheader:                              ; preds = %.preheader508
  %i.lx = sext i32 %.0283558 to i64
  %wide.trip.count591 = zext nneg i32 %i.lu to i64
  br label %.lr.ph536

bb.br:                                            ; preds = %bb.bq
  store i32 0, ptr %i.de, align 4, !tbaa !32
  %i.ly = icmp sgt i32 %i.lt, 0                   ; 2 uses
  br i1 %i.ly, label %.lr.ph544.preheader, label %.preheader

.lr.ph544.preheader:                              ; preds = %bb.br
  %wide.trip.count601 = zext nneg i32 %i.lt to i64
  br label %.lr.ph544

.preheader:                                       ; preds = %Vec_IntPush.exit455, %bb.br
  %i.lz = icmp sgt i32 %i.lu, 0
  br i1 %i.lz, label %.lr.ph552, label %.loopexit505

.lr.ph552:                                        ; preds = %.preheader
  %i.ma = sext i32 %i.lt to i64
  %i.mb = shl nsw i64 %i.ma, 2                    ; 2 uses
  %i.mc = sub i32 %.0283558, %i.v
  %i.md = sext i32 %.0282560 to i64
  %i.me = sext i32 %.0283558 to i64
  %i.mf = sext i32 %i.mc to i64
  %wide.trip.count616 = zext nneg i32 %i.lu to i64
  %wide.trip.count606 = zext nneg i32 %i.lt to i64
  br label %bb.ca

.lr.ph544:                                        ; preds = %.lr.ph544.preheader, %Vec_IntPush.exit455
  %indvars.iv598 = phi i64 [ 0, %.lr.ph544.preheader ], [ %indvars.iv.next599, %Vec_IntPush.exit455 ] ; 2 uses
  %i.mg = load ptr, ptr %i.ll, align 8, !tbaa !61
  %i.mh = getelementptr i8, ptr %i.mg, i64 64
  %.val336 = load ptr, ptr %i.mh, align 8, !tbaa !31
  %i.mi = getelementptr i8, ptr %.val336, i64 8
  %.val336.val = load ptr, ptr %i.mi, align 8, !tbaa !49
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %.val336.val, i64 %indvars.iv598
  %i.mk = load i32, ptr %i.mj, align 4, !tbaa !34
  %i.ml = load i32, ptr %i.de, align 4, !tbaa !32 ; 7 uses
  %i.mm = load i32, ptr %i.dd, align 8, !tbaa !48
  %i.mn = icmp eq i32 %i.ml, %i.mm
  br i1 %i.mn, label %bb.bs, label %.lr.ph544.Vec_IntPush.exit455_crit_edge

.lr.ph544.Vec_IntPush.exit455_crit_edge:          ; preds = %.lr.ph544
  %.pre661 = load ptr, ptr %i.di, align 8, !tbaa !49
  br label %Vec_IntPush.exit455

bb.bs:                                            ; preds = %.lr.ph544
  %i.mo = icmp slt i32 %i.ml, 16
  br i1 %i.mo, label %bb.bt, label %bb.bw

bb.bt:                                            ; preds = %bb.bs
  %i.mp = load ptr, ptr %i.di, align 8, !tbaa !49 ; 2 uses
  %.not9.i.i453 = icmp eq ptr %i.mp, null
  br i1 %.not9.i.i453, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.mq = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.mp, i64 noundef 64) #23
  br label %Vec_IntGrow.exit11.sink.split.i451

bb.bv:                                            ; preds = %bb.bt
  %i.mr = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #21
  br label %Vec_IntGrow.exit11.sink.split.i451

bb.bw:                                            ; preds = %bb.bs
  %i.ms = icmp samesign ult i32 %i.ml, 1073741823
  %i.mt = shl nuw nsw i32 %i.ml, 1
  %spec.select.i448 = select i1 %i.ms, i32 %i.mt, i32 2147483647 ; 4 uses
  %.not.i9.i449 = icmp samesign ult i32 %i.ml, %spec.select.i448
  %.pre662 = load ptr, ptr %i.di, align 8, !tbaa !49 ; 3 uses
  br i1 %.not.i9.i449, label %bb.bx, label %Vec_IntPush.exit455

bb.bx:                                            ; preds = %bb.bw
  %.not9.i10.i450 = icmp eq ptr %.pre662, null
  %i.mu = zext nneg i32 %spec.select.i448 to i64
  %i.mv = shl nuw nsw i64 %i.mu, 2                ; 2 uses
  br i1 %.not9.i10.i450, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.mw = call ptr @realloc(ptr noundef nonnull %.pre662, i64 noundef %i.mv) #23
  br label %Vec_IntGrow.exit11.sink.split.i451

bb.bz:                                            ; preds = %bb.bx
  %i.mx = call noalias ptr @malloc(i64 noundef %i.mv) #21
  br label %Vec_IntGrow.exit11.sink.split.i451

Vec_IntGrow.exit11.sink.split.i451:               ; preds = %bb.by, %bb.bz, %bb.bu, %bb.bv
  %storemerge500 = phi ptr [ %i.mr, %bb.bv ], [ %i.mq, %bb.bu ], [ %i.mw, %bb.by ], [ %i.mx, %bb.bz ] ; 2 uses
  %spec.select.sink.i452 = phi i32 [ 16, %bb.bv ], [ 16, %bb.bu ], [ %spec.select.i448, %bb.by ], [ %spec.select.i448, %bb.bz ]
  store ptr %storemerge500, ptr %i.di, align 8, !tbaa !49
  store i32 %spec.select.sink.i452, ptr %i.dd, align 8, !tbaa !48
  %.pre663 = load i32, ptr %i.de, align 4, !tbaa !32
  br label %Vec_IntPush.exit455

Vec_IntPush.exit455:                              ; preds = %.lr.ph544.Vec_IntPush.exit455_crit_edge, %bb.bw, %Vec_IntGrow.exit11.sink.split.i451
  %i.my = phi i32 [ %i.ml, %.lr.ph544.Vec_IntPush.exit455_crit_edge ], [ %i.ml, %bb.bw ], [ %.pre663, %Vec_IntGrow.exit11.sink.split.i451 ] ; 2 uses
  %i.mz = phi ptr [ %.pre661, %.lr.ph544.Vec_IntPush.exit455_crit_edge ], [ %.pre662, %bb.bw ], [ %storemerge500, %Vec_IntGrow.exit11.sink.split.i451 ]
  %i.na = add nsw i32 %i.my, 1
  store i32 %i.na, ptr %i.de, align 4, !tbaa !32
  %i.nb = sext i32 %i.my to i64
  %i.nc = getelementptr inbounds [4 x i8], ptr %i.mz, i64 %i.nb
  store i32 %i.mk, ptr %i.nc, align 4, !tbaa !34
  %indvars.iv.next599 = add nuw nsw i64 %indvars.iv598, 1 ; 2 uses
  %exitcond602.not = icmp eq i64 %indvars.iv.next599, %wide.trip.count601
  br i1 %exitcond602.not, label %.preheader, label %.lr.ph544, !llvm.loop !62

bb.ca:                                            ; preds = %.lr.ph552, %.loopexit
  %i.nd = phi ptr [ %i.lr, %.lr.ph552 ], [ %i.rx, %.loopexit ] ; 3 uses
  %i.ne = phi ptr [ %i.ls, %.lr.ph552 ], [ %i.ry, %.loopexit ] ; 3 uses
  %indvars.iv613 = phi i64 [ 0, %.lr.ph552 ], [ %indvars.iv.next614, %.loopexit ] ; 3 uses
  %.val334 = load ptr, ptr %i.aa, align 8, !tbaa !31
  %i.nf = getelementptr i8, ptr %.val334, i64 8
  %.val334.val = load ptr, ptr %i.nf, align 8, !tbaa !49
  %i.ng = getelementptr [4 x i8], ptr %.val334.val, i64 %indvars.iv613
  %i.nh = getelementptr [4 x i8], ptr %i.ng, i64 %i.me
  %i.ni = load i32, ptr %i.nh, align 4, !tbaa !34
  %.val380 = load ptr, ptr %i.dc, align 8, !tbaa !49
  %i.nj = sext i32 %i.ni to i64
  %i.nk = getelementptr inbounds [4 x i8], ptr %.val380, i64 %i.nj
  %i.nl = load i32, ptr %i.nk, align 4, !tbaa !34
  %i.nm = sext i32 %i.nl to i64                   ; 4 uses
  %i.nn = getelementptr inbounds [16 x i8], ptr %.val370, i64 %i.nm ; 9 uses
  %i.no = load i32, ptr %i.nn, align 8, !tbaa !48
  %.not.i456 = icmp slt i32 %i.no, %i.lt
  br i1 %.not.i456, label %bb.cb, label %Vec_IntGrow.exit458

bb.cb:                                            ; preds = %bb.ca
  %i.np = getelementptr inbounds nuw i8, ptr %i.nn, i64 8 ; 2 uses
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !49 ; 2 uses
  %.not9.i457 = icmp eq ptr %i.nq, null
  br i1 %.not9.i457, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.nr = call ptr @realloc(ptr noundef nonnull %i.nq, i64 noundef %i.mb) #23
  br label %bb.ce

bb.cd:                                            ; preds = %bb.cb
  %i.ns = call noalias ptr @malloc(i64 noundef %i.mb) #21
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %i.nt = phi ptr [ %i.nr, %bb.cc ], [ %i.ns, %bb.cd ]
  store ptr %i.nt, ptr %i.np, align 8, !tbaa !49
  store i32 %i.lt, ptr %i.nn, align 8, !tbaa !48
  br label %Vec_IntGrow.exit458

Vec_IntGrow.exit458:                              ; preds = %bb.ca, %bb.ce
  br i1 %i.ly, label %.lr.ph546, label %._crit_edge547

.lr.ph546:                                        ; preds = %Vec_IntGrow.exit458
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nn, i64 4 ; 3 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nn, i64 8 ; 4 uses
  br label %bb.cf

bb.cf:                                            ; preds = %.lr.ph546, %Vec_IntPush.exit466
  %indvars.iv603 = phi i64 [ 0, %.lr.ph546 ], [ %indvars.iv.next604, %Vec_IntPush.exit466 ] ; 2 uses
  %.val396 = load ptr, ptr %i.af, align 8, !tbaa !33
  %i.nw = getelementptr i8, ptr %.val396, i64 8
  %.val396.val = load ptr, ptr %i.nw, align 8, !tbaa !49
  %i.nx = getelementptr [4 x i8], ptr %.val396.val, i64 %indvars.iv603
  %i.ny = getelementptr [4 x i8], ptr %i.nx, i64 %i.md
  %i.nz = load i32, ptr %i.ny, align 4, !tbaa !34
  %.val379 = load ptr, ptr %i.dc, align 8, !tbaa !49
  %i.oa = sext i32 %i.nz to i64
  %i.ob = getelementptr inbounds [4 x i8], ptr %.val379, i64 %i.oa
  %i.oc = load i32, ptr %i.ob, align 4, !tbaa !34
  %i.od = load i32, ptr %i.nu, align 4, !tbaa !32 ; 7 uses
  %i.oe = load i32, ptr %i.nn, align 8, !tbaa !48
  %i.of = icmp eq i32 %i.od, %i.oe
  br i1 %i.of, label %bb.cg, label %.Vec_IntPush.exit466_crit_edge

.Vec_IntPush.exit466_crit_edge:                   ; preds = %bb.cf
  %.pre664 = load ptr, ptr %i.nv, align 8, !tbaa !49
  br label %Vec_IntPush.exit466

bb.cg:                                            ; preds = %bb.cf
  %i.og = icmp slt i32 %i.od, 16
  br i1 %i.og, label %bb.ch, label %bb.ck

bb.ch:                                            ; preds = %bb.cg
  %i.oh = load ptr, ptr %i.nv, align 8, !tbaa !49 ; 2 uses
  %.not9.i.i464 = icmp eq ptr %i.oh, null
  br i1 %.not9.i.i464, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.oi = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.oh, i64 noundef 64) #23
  br label %Vec_IntGrow.exit11.sink.split.i462

bb.cj:                                            ; preds = %bb.ch
  %i.oj = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #21
  br label %Vec_IntGrow.exit11.sink.split.i462

bb.ck:                                            ; preds = %bb.cg
  %i.ok = icmp samesign ult i32 %i.od, 1073741823
  %i.ol = shl nuw nsw i32 %i.od, 1
  %spec.select.i459 = select i1 %i.ok, i32 %i.ol, i32 2147483647 ; 4 uses
  %.not.i9.i460 = icmp samesign ult i32 %i.od, %spec.select.i459
  %.pre665 = load ptr, ptr %i.nv, align 8, !tbaa !49 ; 3 uses
  br i1 %.not.i9.i460, label %bb.cl, label %Vec_IntPush.exit466

bb.cl:                                            ; preds = %bb.ck
  %.not9.i10.i461 = icmp eq ptr %.pre665, null
  %i.om = zext nneg i32 %spec.select.i459 to i64
  %i.on = shl nuw nsw i64 %i.om, 2                ; 2 uses
  br i1 %.not9.i10.i461, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.oo = call ptr @realloc(ptr noundef nonnull %.pre665, i64 noundef %i.on) #23
  br label %Vec_IntGrow.exit11.sink.split.i462

bb.cn:                                            ; preds = %bb.cl
  %i.op = call noalias ptr @malloc(i64 noundef %i.on) #21
  br label %Vec_IntGrow.exit11.sink.split.i462

Vec_IntGrow.exit11.sink.split.i462:               ; preds = %bb.cm, %bb.cn, %bb.ci, %bb.cj
  %i.oq = phi ptr [ %i.oj, %bb.cj ], [ %i.oi, %bb.ci ], [ %i.oo, %bb.cm ], [ %i.op, %bb.cn ] ; 2 uses
  %spec.select.sink.i463 = phi i32 [ 16, %bb.cj ], [ 16, %bb.ci ], [ %spec.select.i459, %bb.cm ], [ %spec.select.i459, %bb.cn ]
  store ptr %i.oq, ptr %i.nv, align 8, !tbaa !49
  store i32 %spec.select.sink.i463, ptr %i.nn, align 8, !tbaa !48
  %.pre666 = load i32, ptr %i.nu, align 4, !tbaa !32
  br label %Vec_IntPush.exit466

Vec_IntPush.exit466:                              ; preds = %.Vec_IntPush.exit466_crit_edge, %bb.ck, %Vec_IntGrow.exit11.sink.split.i462
  %i.or = phi i32 [ %i.od, %.Vec_IntPush.exit466_crit_edge ], [ %i.od, %bb.ck ], [ %.pre666, %Vec_IntGrow.exit11.sink.split.i462 ] ; 2 uses
  %i.os = phi ptr [ %.pre664, %.Vec_IntPush.exit466_crit_edge ], [ %.pre665, %bb.ck ], [ %i.oq, %Vec_IntGrow.exit11.sink.split.i462 ]
  %i.ot = add nsw i32 %i.or, 1
  store i32 %i.ot, ptr %i.nu, align 4, !tbaa !32
  %i.ou = sext i32 %i.or to i64
  %i.ov = getelementptr inbounds [4 x i8], ptr %i.os, i64 %i.ou
  store i32 %i.oc, ptr %i.ov, align 4, !tbaa !34
  %indvars.iv.next604 = add nuw nsw i64 %indvars.iv603, 1 ; 2 uses
  %exitcond607.not = icmp eq i64 %indvars.iv.next604, %wide.trip.count606
  br i1 %exitcond607.not, label %._crit_edge547, label %bb.cf, !llvm.loop !63

._crit_edge547:                                   ; preds = %Vec_IntPush.exit466, %Vec_IntGrow.exit458
  %.val356 = load ptr, ptr %i.aw, align 8, !tbaa !41
  %i.ow = getelementptr inbounds i8, ptr %.val356, i64 %i.nm
  store i8 1, ptr %i.ow, align 1, !tbaa !53
  %i.ox = load ptr, ptr %i.ll, align 8, !tbaa !61 ; 3 uses
  %i.oy = getelementptr i8, ptr %i.ox, i64 32
  %.val393 = load ptr, ptr %i.oy, align 8, !tbaa !57
  %i.oz = getelementptr i8, ptr %i.ox, i64 72
  %.val394 = load ptr, ptr %i.oz, align 8, !tbaa !33
  %i.pa = getelementptr i8, ptr %.val394, i64 8
  %.val394.val = load ptr, ptr %i.pa, align 8, !tbaa !49
  %i.pb = getelementptr [4 x i8], ptr %.val394.val, i64 %indvars.iv613
  %i.pc = getelementptr [4 x i8], ptr %i.pb, i64 %i.mf
  %i.pd = load i32, ptr %i.pc, align 4, !tbaa !34 ; 2 uses
  %i.pe = sext i32 %i.pd to i64
  %i.pf = getelementptr inbounds [12 x i8], ptr %.val393, i64 %i.pe ; 3 uses
  %.val3.i467 = load i64, ptr %i.pf, align 4      ; 2 uses
  %i.pg = trunc i64 %.val3.i467 to i32            ; 3 uses
  %i.ph = and i32 %i.pg, 536870911
  %i.pi = icmp eq i32 %i.pd, %i.ph
  br i1 %i.pi, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %._crit_edge547
  %i.pj = shl i32 %i.pg, 2
  %i.pk = ashr i32 %i.pj, 31
  %i.pl = sext i32 %i.pk to i64
  br label %Abc_TtNot.exit.sink.split

bb.cp:                                            ; preds = %._crit_edge547
  %i.pm = and i64 %.val3.i467, 536870911
  %i.pn = sub nsw i64 0, %i.pm
  %i.po = getelementptr inbounds [12 x i8], ptr %i.pf, i64 %i.pn ; 2 uses
  %.val407 = load i64, ptr %i.po, align 4         ; 2 uses
  %i.pp = and i64 %.val407, 2684354559
  %narrow.i.not = icmp eq i64 %i.pp, 2684354559
  br i1 %narrow.i.not, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.pq = lshr i64 %.val407, 32
  %i.pr = and i64 %i.pq, 536870911
  %1 = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.pr
  %i.ps = load i64, ptr %1, align 8, !tbaa !54
  %i.pt = shl i32 %i.pg, 2
  %i.pu = ashr i32 %i.pt, 31
  %i.pv = sext i32 %i.pu to i64
  %i.pw = xor i64 %i.ps, %i.pv
  br label %Abc_TtNot.exit.sink.split

bb.cr:                                            ; preds = %bb.cp
  %i.px = call ptr @Gia_ObjComputeTruthTableCut(ptr noundef nonnull %i.ox, ptr noundef nonnull %i.po, ptr noundef nonnull %i.dd) #20 ; 11 uses
  %.val402 = load i64, ptr %i.pf, align 4
  %i.py = and i64 %.val402, 536870912
  %.not306 = icmp eq i64 %i.py, 0
  br i1 %.not306, label %Abc_TtNot.exit, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %.val316 = load i32, ptr %i.de, align 4, !tbaa !32 ; 2 uses
  %i.pz = icmp slt i32 %.val316, 7
  %i.qa = add nsw i32 %.val316, -6
  %i.qb = shl nuw i32 1, %i.qa
  %i.qc = select i1 %i.pz, i32 1, i32 %i.qb       ; 5 uses
  %i.qd = icmp sgt i32 %i.qc, 0
  br i1 %i.qd, label %.lr.ph.preheader.i, label %Abc_TtNot.exit

.lr.ph.preheader.i:                               ; preds = %bb.cs
  %min.iters.check = icmp ult i32 %i.qc, 4
  br i1 %min.iters.check, label %.lr.ph.i, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %i.qe = and i32 %i.qc, 2147483644
  %n.vec = zext nneg i32 %i.qe to i64
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.qf = getelementptr inbounds nuw [8 x i8], ptr %i.px, i64 %index ; 3 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.qf, align 8, !tbaa !54
  %wide.load741 = load <2 x i64>, ptr %i.qg, align 8, !tbaa !54
  %i.qh = xor <2 x i64> %wide.load, splat (i64 -1)
  %i.qi = xor <2 x i64> %wide.load741, splat (i64 -1)
  store <2 x i64> %i.qh, ptr %i.qf, align 8, !tbaa !54
  store <2 x i64> %i.qi, ptr %i.qg, align 8, !tbaa !54
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.qj = icmp eq i64 %index.next, %n.vec
  br i1 %i.qj, label %Abc_TtNot.exit, label %vector.body, !llvm.loop !64

.lr.ph.i:                                         ; preds = %.lr.ph.preheader.i
  %i.qk = load i64, ptr %i.px, align 8, !tbaa !54
  %i.ql = xor i64 %i.qk, -1
  store i64 %i.ql, ptr %i.px, align 8, !tbaa !54
  %exitcond.not.i470 = icmp eq i32 %i.qc, 1
  br i1 %exitcond.not.i470, label %Abc_TtNot.exit, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %.lr.ph.i
  %i.qm = getelementptr inbounds nuw i8, ptr %i.px, i64 8 ; 2 uses
  %i.qn = load i64, ptr %i.qm, align 8, !tbaa !54
  %i.qo = xor i64 %i.qn, -1
  store i64 %i.qo, ptr %i.qm, align 8, !tbaa !54
  %exitcond.not.i470.1 = icmp eq i32 %i.qc, 2
  br i1 %exitcond.not.i470.1, label %Abc_TtNot.exit, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.1
  %i.qp = getelementptr inbounds nuw i8, ptr %i.px, i64 16 ; 2 uses
  %i.qq = load i64, ptr %i.qp, align 8, !tbaa !54
  %i.qr = xor i64 %i.qq, -1
  store i64 %i.qr, ptr %i.qp, align 8, !tbaa !54
  br label %Abc_TtNot.exit

Abc_TtNot.exit.sink.split:                        ; preds = %bb.co, %bb.cq
  %.sink = phi i64 [ %i.pw, %bb.cq ], [ %i.pl, %bb.co ]
  store i64 %.sink, ptr %i.a, align 8, !tbaa !54
  br label %Abc_TtNot.exit

Abc_TtNot.exit:                                   ; preds = %vector.body, %.lr.ph.i, %.lr.ph.i.1, %.lr.ph.i.2, %Abc_TtNot.exit.sink.split, %bb.cs, %bb.cr
  %.0292 = phi ptr [ %i.px, %bb.cs ], [ %i.a, %Abc_TtNot.exit.sink.split ], [ %i.px, %bb.cr ], [ %i.px, %.lr.ph.i ], [ %i.px, %.lr.ph.i.2 ], [ %i.px, %.lr.ph.i.1 ], [ %i.px, %vector.body ] ; 3 uses
  %i.qs = getelementptr i8, ptr %i.nn, i64 8
  %.val383 = load ptr, ptr %i.qs, align 8, !tbaa !49
  %i.qt = getelementptr i8, ptr %i.nn, i64 4      ; 2 uses
  %.val315 = load i32, ptr %i.qt, align 4, !tbaa !32
  %.val = load i32, ptr %i.de, align 4, !tbaa !32
  %i.qu = call fastcc i32 @Abc_TtMinBase(ptr noundef %.0292, ptr noundef %.val383, i32 noundef %.val315, i32 noundef %.val) ; 3 uses
  store i32 %i.qu, ptr %i.qt, align 4, !tbaa !32
  %i.qv = icmp slt i32 %i.qu, 7
  br i1 %i.qv, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %Abc_TtNot.exit
  %i.qw = load i64, ptr %.0292, align 8, !tbaa !54
  %i.qx = getelementptr inbounds [8 x i8], ptr %.val363, i64 %i.nm
  store i64 %i.qw, ptr %i.qx, align 8, !tbaa !54
  br label %.loopexit

bb.cu:                                            ; preds = %Abc_TtNot.exit
  %i.qy = add nsw i32 %i.qu, -6                   ; 2 uses
  %.val385 = load i32, ptr %i.bu, align 4, !tbaa !47 ; 2 uses
  %.val346 = load ptr, ptr %i.lq, align 8, !tbaa !49
  %i.qz = getelementptr inbounds [4 x i8], ptr %.val346, i64 %i.nm
  store i32 %.val385, ptr %i.qz, align 4, !tbaa !34
  %.not567 = icmp eq i32 %i.qy, 31
  br i1 %.not567, label %.loopexit, label %.lr.ph550.preheader

.lr.ph550.preheader:                              ; preds = %bb.cu
  %i.ra = shl nuw i32 1, %i.qy
  %smax = call i32 @llvm.smax.i32(i32 %i.ra, i32 1)
  %wide.trip.count611 = zext nneg i32 %smax to i64
  %.pre667 = load i32, ptr %i.bt, align 8, !tbaa !43
  br label %.lr.ph550

.lr.ph550:                                        ; preds = %.lr.ph550.preheader, %Vec_WrdPush.exit478
  %i.rb = phi ptr [ %i.nd, %.lr.ph550.preheader ], [ %i.rs, %Vec_WrdPush.exit478 ] ; 2 uses
  %i.rc = phi ptr [ %i.ne, %.lr.ph550.preheader ], [ %i.rs, %Vec_WrdPush.exit478 ] ; 4 uses
  %i.rd = phi i32 [ %.pre667, %.lr.ph550.preheader ], [ %i.rt, %Vec_WrdPush.exit478 ] ; 8 uses
  %i.re = phi i32 [ %.val385, %.lr.ph550.preheader ], [ %i.ru, %Vec_WrdPush.exit478 ] ; 2 uses
  %indvars.iv608 = phi i64 [ 0, %.lr.ph550.preheader ], [ %indvars.iv.next609, %Vec_WrdPush.exit478 ] ; 2 uses
  %i.rf = getelementptr inbounds nuw [8 x i8], ptr %.0292, i64 %indvars.iv608
  %i.rg = load i64, ptr %i.rf, align 8, !tbaa !54
  %i.rh = icmp eq i32 %i.re, %i.rd
  br i1 %i.rh, label %bb.cv, label %Vec_WrdPush.exit478

bb.cv:                                            ; preds = %.lr.ph550
  %i.ri = icmp slt i32 %i.rd, 16
  br i1 %i.ri, label %bb.cw, label %bb.cz

bb.cw:                                            ; preds = %bb.cv
  %.not9.i.i476 = icmp eq ptr %i.rc, null
  br i1 %.not9.i.i476, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.rj = call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.rc, i64 noundef 128) #23
  br label %Vec_WrdGrow.exit11.sink.split.i474

bb.cy:                                            ; preds = %bb.cw
  %i.rk = call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #21
  br label %Vec_WrdGrow.exit11.sink.split.i474

bb.cz:                                            ; preds = %bb.cv
  %i.rl = icmp samesign ult i32 %i.rd, 1073741823
  %i.rm = shl nuw nsw i32 %i.rd, 1
  %spec.select.i471 = select i1 %i.rl, i32 %i.rm, i32 2147483647 ; 4 uses
  %.not.i9.i472 = icmp samesign ult i32 %i.rd, %spec.select.i471
  br i1 %.not.i9.i472, label %bb.da, label %Vec_WrdPush.exit478

bb.da:                                            ; preds = %bb.cz
  %.not9.i10.i473 = icmp eq ptr %i.rc, null
  %i.rn = zext nneg i32 %spec.select.i471 to i64
  %i.ro = shl nuw nsw i64 %i.rn, 3                ; 2 uses
  br i1 %.not9.i10.i473, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.rp = call ptr @realloc(ptr noundef nonnull %i.rc, i64 noundef %i.ro) #23
  br label %Vec_WrdGrow.exit11.sink.split.i474

bb.dc:                                            ; preds = %bb.da
  %i.rq = call noalias ptr @malloc(i64 noundef %i.ro) #21
  br label %Vec_WrdGrow.exit11.sink.split.i474

Vec_WrdGrow.exit11.sink.split.i474:               ; preds = %bb.db, %bb.dc, %bb.cx, %bb.cy
  %storemerge499 = phi ptr [ %i.rk, %bb.cy ], [ %i.rj, %bb.cx ], [ %i.rp, %bb.db ], [ %i.rq, %bb.dc ] ; 2 uses
  %spec.select.sink.i475 = phi i32 [ 16, %bb.cy ], [ 16, %bb.cx ], [ %spec.select.i471, %bb.db ], [ %spec.select.i471, %bb.dc ] ; 2 uses
  store ptr %storemerge499, ptr %i.bw, align 8, !tbaa !46
  store i32 %spec.select.sink.i475, ptr %i.bt, align 8, !tbaa !43
  %.pre668 = load i32, ptr %i.bu, align 4, !tbaa !47
  br label %Vec_WrdPush.exit478

Vec_WrdPush.exit478:                              ; preds = %.lr.ph550, %bb.cz, %Vec_WrdGrow.exit11.sink.split.i474
  %i.rr = phi i32 [ %i.re, %.lr.ph550 ], [ %i.rd, %bb.cz ], [ %.pre668, %Vec_WrdGrow.exit11.sink.split.i474 ] ; 2 uses
  %i.rs = phi ptr [ %i.rb, %.lr.ph550 ], [ %i.rb, %bb.cz ], [ %storemerge499, %Vec_WrdGrow.exit11.sink.split.i474 ] ; 5 uses
  %i.rt = phi i32 [ %i.rd, %.lr.ph550 ], [ %i.rd, %bb.cz ], [ %spec.select.sink.i475, %Vec_WrdGrow.exit11.sink.split.i474 ]
  %i.ru = add nsw i32 %i.rr, 1                    ; 2 uses
  store i32 %i.ru, ptr %i.bu, align 4, !tbaa !47
  %i.rv = sext i32 %i.rr to i64
  %i.rw = getelementptr inbounds [8 x i8], ptr %i.rs, i64 %i.rv
  store i64 %i.rg, ptr %i.rw, align 8, !tbaa !54
  %indvars.iv.next609 = add nuw nsw i64 %indvars.iv608, 1 ; 2 uses
  %exitcond612.not = icmp eq i64 %indvars.iv.next609, %wide.trip.count611
  br i1 %exitcond612.not, label %.loopexit, label %.lr.ph550, !llvm.loop !67

.loopexit:                                        ; preds = %Vec_WrdPush.exit478, %bb.cu, %bb.ct
  %i.rx = phi ptr [ %i.nd, %bb.ct ], [ %i.nd, %bb.cu ], [ %i.rs, %Vec_WrdPush.exit478 ] ; 2 uses
  %i.ry = phi ptr [ %i.ne, %bb.ct ], [ %i.ne, %bb.cu ], [ %i.rs, %Vec_WrdPush.exit478 ] ; 2 uses
  %indvars.iv.next614 = add nuw nsw i64 %indvars.iv613, 1 ; 2 uses
  %exitcond617.not = icmp eq i64 %indvars.iv.next614, %wide.trip.count616
  br i1 %exitcond617.not, label %.loopexit505, label %bb.ca, !llvm.loop !68

.preheader506:                                    ; preds = %Vec_IntGrow.exit.i480, %.preheader508
  %.1.lcssa = phi i32 [ %.0273563, %.preheader508 ], [ %i.sk, %Vec_IntGrow.exit.i480 ] ; 2 uses
  %i.rz = icmp sgt i32 %i.lt, 0
  br i1 %i.rz, label %.lr.ph540.preheader, label %._crit_edge556

.lr.ph540.preheader:                              ; preds = %.preheader506
  %i.sa = sext i32 %.0282560 to i64
  %wide.trip.count596 = zext nneg i32 %i.lt to i64
  br label %.lr.ph540

.lr.ph536:                                        ; preds = %.lr.ph536.preheader, %Vec_IntGrow.exit.i480
  %indvars.iv588 = phi i64 [ 0, %.lr.ph536.preheader ], [ %indvars.iv.next589, %Vec_IntGrow.exit.i480 ] ; 2 uses
  %.1535 = phi i32 [ %.0273563, %.lr.ph536.preheader ], [ %i.sk, %Vec_IntGrow.exit.i480 ] ; 2 uses
  %.val332 = load ptr, ptr %i.aa, align 8, !tbaa !31
  %i.sb = getelementptr i8, ptr %.val332, i64 8
  %.val332.val = load ptr, ptr %i.sb, align 8, !tbaa !49
  %i.sc = getelementptr [4 x i8], ptr %.val332.val, i64 %indvars.iv588
  %i.sd = getelementptr [4 x i8], ptr %i.sc, i64 %i.lx
  %i.se = load i32, ptr %i.sd, align 4, !tbaa !34
  %.val378 = load ptr, ptr %i.dc, align 8, !tbaa !49
  %i.sf = sext i32 %i.se to i64
  %i.sg = getelementptr inbounds [4 x i8], ptr %.val378, i64 %i.sf
  %i.sh = load i32, ptr %i.sg, align 4, !tbaa !34
  %i.si = sext i32 %i.sh to i64                   ; 4 uses
  %i.sj = getelementptr inbounds [16 x i8], ptr %.val370, i64 %i.si ; 4 uses
  %i.sk = add nsw i32 %.1535, 1                   ; 2 uses
  %i.sl = load i32, ptr %i.sj, align 8, !tbaa !48
  %.not.i.i479 = icmp slt i32 %i.sl, 1
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sj, i64 8 ; 2 uses
  %i.sn = load ptr, ptr %i.sm, align 8, !tbaa !49 ; 3 uses
  br i1 %.not.i.i479, label %bb.dd, label %Vec_IntGrow.exit.i480

bb.dd:                                            ; preds = %.lr.ph536
  %.not9.i.i485 = icmp eq ptr %i.sn, null
  br i1 %.not9.i.i485, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.so = call dereferenceable_or_null(4) ptr @realloc(ptr noundef nonnull %i.sn, i64 noundef 4) #23
  br label %bb.dg

bb.df:                                            ; preds = %bb.dd
  %i.sp = call noalias dereferenceable_or_null(4) ptr @malloc(i64 noundef 4) #21
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de
  %i.sq = phi ptr [ %i.so, %bb.de ], [ %i.sp, %bb.df ] ; 2 uses
  store ptr %i.sq, ptr %i.sm, align 8, !tbaa !49
  store i32 1, ptr %i.sj, align 8, !tbaa !48
  br label %Vec_IntGrow.exit.i480

Vec_IntGrow.exit.i480:                            ; preds = %.lr.ph536, %bb.dg
  %i.sr = phi ptr [ %i.sq, %bb.dg ], [ %i.sn, %.lr.ph536 ]
  store i32 %.1535, ptr %i.sr, align 4, !tbaa !34
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sj, i64 4
  store i32 1, ptr %i.ss, align 4, !tbaa !32
  %.val355 = load ptr, ptr %i.aw, align 8, !tbaa !41
  %i.st = getelementptr inbounds i8, ptr %.val355, i64 %i.si
  store i8 1, ptr %i.st, align 1, !tbaa !53
  %.val354 = load ptr, ptr %i.bd, align 8, !tbaa !41
  %i.su = getelementptr inbounds i8, ptr %.val354, i64 %i.si
  store i8 1, ptr %i.su, align 1, !tbaa !53
  %i.sv = getelementptr inbounds [8 x i8], ptr %.val363, i64 %i.si
  store i64 -6148914691236517206, ptr %i.sv, align 8, !tbaa !54
  %indvars.iv.next589 = add nuw nsw i64 %indvars.iv588, 1 ; 2 uses
  %exitcond592.not = icmp eq i64 %indvars.iv.next589, %wide.trip.count591
  br i1 %exitcond592.not, label %.preheader506, label %.lr.ph536, !llvm.loop !69

.lr.ph540:                                        ; preds = %.lr.ph540.preheader, %Vec_IntGrow.exit.i488
  %indvars.iv593 = phi i64 [ 0, %.lr.ph540.preheader ], [ %indvars.iv.next594, %Vec_IntGrow.exit.i488 ] ; 2 uses
  %.1275539 = phi i32 [ %.0274562, %.lr.ph540.preheader ], [ %i.te, %Vec_IntGrow.exit.i488 ] ; 2 uses
  %.val392 = load ptr, ptr %i.af, align 8, !tbaa !33
  %i.sw = getelementptr i8, ptr %.val392, i64 8
  %.val392.val = load ptr, ptr %i.sw, align 8, !tbaa !49
  %i.sx = getelementptr [4 x i8], ptr %.val392.val, i64 %indvars.iv593
  %i.sy = getelementptr [4 x i8], ptr %i.sx, i64 %i.sa
  %i.sz = load i32, ptr %i.sy, align 4, !tbaa !34
  %.val377 = load ptr, ptr %i.dc, align 8, !tbaa !49
  %i.ta = sext i32 %i.sz to i64
  %i.tb = getelementptr inbounds [4 x i8], ptr %.val377, i64 %i.ta
  %i.tc = load i32, ptr %i.tb, align 4, !tbaa !34
  %i.td = load i32, ptr %i.c, align 4, !tbaa !34
  %i.te = add nsw i32 %.1275539, 1                ; 2 uses
  %i.tf = add i32 %.1275539, %i.al
  %i.tg = sub i32 %i.tf, %i.td
  %i.th = sext i32 %i.tg to i64
  %i.ti = getelementptr inbounds [16 x i8], ptr %.val370, i64 %i.th ; 4 uses
  %i.tj = load i32, ptr %i.ti, align 8, !tbaa !48
  %.not.i.i487 = icmp slt i32 %i.tj, 1
  %i.tk = getelementptr inbounds nuw i8, ptr %i.ti, i64 8 ; 2 uses
  %i.tl = load ptr, ptr %i.tk, align 8, !tbaa !49 ; 3 uses
  br i1 %.not.i.i487, label %bb.dh, label %Vec_IntGrow.exit.i488

bb.dh:                                            ; preds = %.lr.ph540
  %.not9.i.i493 = icmp eq ptr %i.tl, null
  br i1 %.not9.i.i493, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.tm = call dereferenceable_or_null(4) ptr @realloc(ptr noundef nonnull %i.tl, i64 noundef 4) #23
  br label %bb.dk

bb.dj:                                            ; preds = %bb.dh
  %i.tn = call noalias dereferenceable_or_null(4) ptr @malloc(i64 noundef 4) #21
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di
  %i.to = phi ptr [ %i.tm, %bb.di ], [ %i.tn, %bb.dj ] ; 2 uses
  store ptr %i.to, ptr %i.tk, align 8, !tbaa !49
  store i32 1, ptr %i.ti, align 8, !tbaa !48
  br label %Vec_IntGrow.exit.i488

Vec_IntGrow.exit.i488:                            ; preds = %.lr.ph540, %bb.dk
  %i.tp = phi ptr [ %i.to, %bb.dk ], [ %i.tl, %.lr.ph540 ]
  store i32 %i.tc, ptr %i.tp, align 4, !tbaa !34
  %i.tq = getelementptr inbounds nuw i8, ptr %i.ti, i64 4
  store i32 1, ptr %i.tq, align 4, !tbaa !32
  %indvars.iv.next594 = add nuw nsw i64 %indvars.iv593, 1 ; 2 uses
  %exitcond597.not = icmp eq i64 %indvars.iv.next594, %wide.trip.count596
  br i1 %exitcond597.not, label %.loopexit505, label %.lr.ph540, !llvm.loop !70

.loopexit505:                                     ; preds = %Vec_IntGrow.exit.i488, %.loopexit, %.preheader
  %i.tr = phi ptr [ %i.lr, %.preheader ], [ %i.rx, %.loopexit ], [ %i.lr, %Vec_IntGrow.exit.i488 ] ; 2 uses
  %i.ts = phi ptr [ %i.ls, %.preheader ], [ %i.ry, %.loopexit ], [ %i.ls, %Vec_IntGrow.exit.i488 ] ; 2 uses
  %.2276 = phi i32 [ %.0274562, %.preheader ], [ %.0274562, %.loopexit ], [ %i.te, %Vec_IntGrow.exit.i488 ] ; 2 uses
  %.2 = phi i32 [ %.0273563, %.preheader ], [ %.0273563, %.loopexit ], [ %.1.lcssa, %Vec_IntGrow.exit.i488 ] ; 2 uses
  %i.tt = icmp sgt i32 %i.lt, 0
  br i1 %i.tt, label %.lr.ph555.preheader, label %._crit_edge556

.lr.ph555.preheader:                              ; preds = %.loopexit505
  %i.tu = sext i32 %.0282560 to i64
  %wide.trip.count621 = zext nneg i32 %i.lt to i64
  br label %.lr.ph555

.lr.ph555:                                        ; preds = %.lr.ph555.preheader, %bb.dm
  %indvars.iv618 = phi i64 [ 0, %.lr.ph555.preheader ], [ %indvars.iv.next619, %bb.dm ] ; 2 uses
  %.val389 = load ptr, ptr %i.io, align 8, !tbaa !57
  %.val390 = load ptr, ptr %i.af, align 8, !tbaa !33
  %i.tv = getelementptr i8, ptr %.val390, i64 8
  %.val390.val = load ptr, ptr %i.tv, align 8, !tbaa !49
  %i.tw = getelementptr [4 x i8], ptr %.val390.val, i64 %indvars.iv618
  %i.tx = getelementptr [4 x i8], ptr %i.tw, i64 %i.tu
  %i.ty = load i32, ptr %i.tx, align 4, !tbaa !34 ; 2 uses
  %i.tz = sext i32 %i.ty to i64
  %i.ua = getelementptr inbounds [12 x i8], ptr %.val389, i64 %i.tz ; 2 uses
  %i.ub = load i64, ptr %i.ua, align 4            ; 2 uses
  %i.uc = and i64 %i.ub, 536870911
  %i.ud = sub nsw i64 0, %i.uc
  %i.ue = getelementptr inbounds [12 x i8], ptr %i.ua, i64 %i.ud
  %.val406 = load i64, ptr %i.ue, align 4
  %i.uf = and i64 %.val406, 2684354559
  %narrow.i495.not = icmp eq i64 %i.uf, 2684354559
  br i1 %narrow.i495.not, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %.lr.ph555
  %i.ug = trunc i64 %i.ub to i32
  %i.uh = and i32 %i.ug, 536870911
  %i.ui = sub nsw i32 %i.ty, %i.uh
  %.val376 = load ptr, ptr %i.dc, align 8, !tbaa !49
  %i.uj = sext i32 %i.ui to i64
  %i.uk = getelementptr inbounds [4 x i8], ptr %.val376, i64 %i.uj
  %i.ul = load i32, ptr %i.uk, align 4, !tbaa !34
  %.val353 = load ptr, ptr %i.bd, align 8, !tbaa !41
  %i.um = sext i32 %i.ul to i64
  %i.un = getelementptr inbounds i8, ptr %.val353, i64 %i.um
  store i8 1, ptr %i.un, align 1, !tbaa !53
  br label %bb.dm

bb.dm:                                            ; preds = %.lr.ph555, %bb.dl
  %indvars.iv.next619 = add nuw nsw i64 %indvars.iv618, 1 ; 2 uses
  %exitcond622.not = icmp eq i64 %indvars.iv.next619, %wide.trip.count621
  br i1 %exitcond622.not, label %._crit_edge556, label %.lr.ph555, !llvm.loop !71

._crit_edge556:                                   ; preds = %bb.dm, %.preheader506, %.loopexit505
  %.2724 = phi i32 [ %.1.lcssa, %.preheader506 ], [ %.2, %.loopexit505 ], [ %.2, %bb.dm ]
  %.2276723 = phi i32 [ %.0274562, %.preheader506 ], [ %.2276, %.loopexit505 ], [ %.2276, %bb.dm ]
  %i.uo = phi ptr [ %i.ls, %.preheader506 ], [ %i.ts, %.loopexit505 ], [ %i.ts, %bb.dm ]
  %i.up = phi ptr [ %i.lr, %.preheader506 ], [ %i.tr, %.loopexit505 ], [ %i.tr, %bb.dm ]
  %i.uq = add nsw i32 %i.lt, %.0282560
  %i.ur = add nsw i32 %i.lu, %.0283558
  %i.us = add nuw nsw i32 %.1285557, 1            ; 2 uses
  %exitcond623.not = icmp eq i32 %i.us, %i.l
  br i1 %exitcond623.not, label %._crit_edge566, label %bb.bq, !llvm.loop !72

._crit_edge566:                                   ; preds = %._crit_edge556, %bb.bp
  %i.ut = load ptr, ptr %i.ll, align 8, !tbaa !61
  call void @Gia_ObjComputeTruthTableStop(ptr noundef %i.ut) #20
  br label %bb.dn

bb.dn:                                            ; preds = %._crit_edge566, %.critedge4
  %i.uu = load ptr, ptr %i.di, align 8, !tbaa !49 ; 2 uses
  %.not.i497 = icmp eq ptr %i.uu, null
  br i1 %.not.i497, label %Vec_IntFree.exit, label %bb.do

bb.do:                                            ; preds = %bb.dn
  call void @free(ptr noundef nonnull %i.uu) #20
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %bb.dn, %bb.do
  call void @free(ptr noundef nonnull %i.dd) #20
  %i.uv = load i32, ptr %i.d, align 4, !tbaa !34
  %i.uw = add nsw i32 %i.uv, %i.v
  %i.ux = load i32, ptr %i.c, align 4, !tbaa !34
  %i.uy = add nsw i32 %i.ux, %i.w
  %i.uz = call ptr @Sfm_NtkConstruct(ptr noundef nonnull %i.am, i32 noundef %i.uw, i32 noundef %i.uy, ptr noundef nonnull %i.as, ptr noundef nonnull %i.ay, ptr noundef nonnull %i.be, ptr noundef nonnull %i.bl, ptr noundef nonnull %i.bt) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret ptr %i.uz
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @Gia_ManBoxNum(ptr noundef) local_unnamed_addr #3

declare i32 @Tim_ManPiNum(ptr noundef) local_unnamed_addr #3

declare i32 @Tim_ManPoNum(ptr noundef) local_unnamed_addr #3

declare i32 @Gia_ManLutSizeMax(ptr noundef) local_unnamed_addr #3

declare void @Tim_ManBlackBoxIoNum(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @Gia_ManLutNum(ptr noundef) local_unnamed_addr #3

declare void @Gia_ObjComputeTruthTableStart(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @Gia_ObjComputeTruthTableCut(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc i32 @Abc_TtMinBase(ptr nofree noundef captures(address) %0, ptr nofree noundef captures(address_is_null) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #4 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = icmp slt i32 %3, 7                       ; 2 uses
  %i.c = add nsw i32 %3, -6                       ; 3 uses
  %i.d = shl nuw i32 1, %i.c                      ; 4 uses
  %i.e = sext i32 %i.d to i64
  %.idx.i = shl nsw i64 %i.e, 3
  %i.f = getelementptr inbounds i8, ptr %0, i64 %.idx.i ; 3 uses
  %.not.i = icmp eq i32 %i.c, 31                  ; 5 uses
  %smax56.i = tail call i32 @llvm.smax.i32(i32 %i.d, i32 1)
  %wide.trip.count57.i = zext nneg i32 %smax56.i to i64 ; 2 uses
  %.not26 = icmp eq ptr %1, null
  %wide.trip.count = zext nneg i32 %2 to i64
  %min.iters.check = icmp slt i32 %i.d, 4
  %n.vec = and i64 %wide.trip.count57.i, 2147483644
  %exitcond160.not.i = icmp slt i32 %i.d, 2
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %exitcond160.not.i.1 = icmp eq i32 %i.c, 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %Abc_TtHasVar.exit.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Abc_TtHasVar.exit.thread ] ; 16 uses
  %.052 = phi i32 [ 0, %.lr.ph ], [ %.1, %Abc_TtHasVar.exit.thread ] ; 13 uses
  br i1 %i.b, label %Abc_TtHasVar.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = icmp samesign ult i64 %indvars.iv, 6
  br i1 %i.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  br i1 %.not.i, label %Abc_TtHasVar.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.j = trunc nuw nsw i64 %indvars.iv to i32
  %i.k = shl nuw nsw i32 1, %i.j
  %i.l = zext nneg i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv
  %i.n = load i64, ptr %i.m, align 8, !tbaa !54
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %indvars.iv.next54.i = add nuw nsw i64 %indvars.iv53.i, 1 ; 2 uses
  %exitcond58.not.i = icmp eq i64 %indvars.iv.next54.i, %wide.trip.count57.i
  br i1 %exitcond58.not.i, label %Abc_TtHasVar.exit.thread, label %bb.f, !llvm.loop !73

bb.f:                                             ; preds = %bb.e, %.lr.ph.i
  %indvars.iv53.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next54.i, %bb.e ] ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv53.i
  %i.p = load i64, ptr %i.o, align 8, !tbaa !54   ; 2 uses
  %i.q = lshr i64 %i.p, %i.l
  %i.r = xor i64 %i.q, %i.p
  %i.s = and i64 %i.r, %i.n
  %.not39.i = icmp eq i64 %i.s, 0
  br i1 %.not39.i, label %bb.e, label %Abc_TtHasVar.exit.thread42

bb.g:                                             ; preds = %bb.c
  %i.t = add nsw i64 %indvars.iv, -6              ; 2 uses
  %i.u = trunc nsw i64 %i.t to i32                ; 2 uses
  %i.v = shl nuw i32 1, %i.u                      ; 2 uses
  br i1 %.not.i, label %Abc_TtHasVar.exit.thread, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %bb.g
  %i.w = icmp eq i64 %i.t, 31
  %i.x = shl i32 2, %i.u
  %i.y = sext i32 %i.x to i64
  br i1 %i.w, label %Abc_TtHasVar.exit.thread, label %.preheader.us.preheader.i

.preheader.us.preheader.i:                        ; preds = %.preheader.lr.ph.i
  %i.z = sext i32 %i.v to i64
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.v, i32 1)
  %wide.trip.count.i = zext nneg i32 %smax.i to i64
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %._crit_edge.us.i, %.preheader.us.preheader.i
  %.03343.us.i = phi ptr [ %i.ad, %._crit_edge.us.i ], [ %0, %.preheader.us.preheader.i ] ; 3 uses
  %invariant.gep.i = getelementptr [8 x i8], ptr %.03343.us.i, i64 %i.z
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.us.i, label %bb.i, !llvm.loop !74

bb.i:                                             ; preds = %bb.h, %.preheader.us.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.us.i ], [ %indvars.iv.next.i, %bb.h ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.03343.us.i, i64 %indvars.iv.i
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !54
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  %i.ac = load i64, ptr %gep.i, align 8, !tbaa !54
  %.not.us.i = icmp eq i64 %i.ab, %i.ac
  br i1 %.not.us.i, label %bb.h, label %Abc_TtHasVar.exit.thread42

._crit_edge.us.i:                                 ; preds = %bb.h
  %i.ad = getelementptr inbounds [8 x i8], ptr %.03343.us.i, i64 %i.y ; 2 uses
  %i.ae = icmp ult ptr %i.ad, %i.f
  br i1 %i.ae, label %.preheader.us.i, label %Abc_TtHasVar.exit.thread, !llvm.loop !75

Abc_TtHasVar.exit:                                ; preds = %bb.b
  %i.af = load i64, ptr %0, align 8, !tbaa !54    ; 2 uses
  %i.ag = trunc nuw nsw i64 %indvars.iv to i32
  %i.ah = shl nuw i32 1, %i.ag
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = lshr i64 %i.af, %i.ai
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !54
  %i.am = xor i64 %i.aj, %i.af
  %i.an = and i64 %i.am, %i.al
  %.not45 = icmp eq i64 %i.an, 0
  br i1 %.not45, label %Abc_TtHasVar.exit.thread, label %Abc_TtHasVar.exit.thread42

Abc_TtHasVar.exit.thread42:                       ; preds = %bb.f, %bb.i, %Abc_TtHasVar.exit
  %i.ao = sext i32 %.052 to i64                   ; 5 uses
  %i.ap = icmp sgt i64 %indvars.iv, %i.ao
  br i1 %i.ap, label %bb.j, label %Abc_TtSwapVars.exit

bb.j:                                             ; preds = %Abc_TtHasVar.exit.thread42
  br i1 %.not26, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !34
  %i.as = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ao
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !34
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  br i1 %i.b, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.at = load i64, ptr %0, align 8, !tbaa !54    ; 3 uses
  %i.au = getelementptr inbounds [144 x i8], ptr @s_PPMasks, i64 %i.ao
  %i.av = getelementptr inbounds nuw [24 x i8], ptr %i.au, i64 %indvars.iv ; 3 uses
  %i.aw = trunc nuw nsw i64 %indvars.iv to i32
  %i.ax = shl nuw i32 1, %i.aw
  %.neg.i.i = shl nsw i32 -1, %.052
  %i.ay = add i32 %i.ax, %.neg.i.i
  %i.az = load i64, ptr %i.av, align 8, !tbaa !54
  %i.ba = and i64 %i.az, %i.at
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !54
  %i.bd = and i64 %i.bc, %i.at
  %i.be = zext i32 %i.ay to i64                   ; 2 uses
  %i.bf = shl i64 %i.bd, %i.be
  %i.bg = or i64 %i.bf, %i.ba
  %i.bh = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !54
  %i.bj = and i64 %i.bi, %i.at
  %i.bk = lshr i64 %i.bj, %i.be
  %i.bl = or i64 %i.bg, %i.bk
  store i64 %i.bl, ptr %0, align 8, !tbaa !54
  br label %Abc_TtSwapVars.exit

bb.n:                                             ; preds = %bb.l
  %i.bm = icmp samesign ult i64 %indvars.iv, 6
  br i1 %i.bm, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  br i1 %.not.i, label %Abc_TtSwapVars.exit, label %.lr.ph.i38

.lr.ph.i38:                                       ; preds = %bb.o
  %.neg.i = shl nsw i32 -1, %.052
  %i.bn = trunc nuw nsw i64 %indvars.iv to i32
  %i.bo = shl nuw nsw i32 1, %i.bn
  %i.bp = add nsw i32 %.neg.i, %i.bo
  %i.bq = getelementptr inbounds [144 x i8], ptr @s_PPMasks, i64 %i.ao
  %i.br = getelementptr inbounds nuw [24 x i8], ptr %i.bq, i64 %indvars.iv ; 3 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !54 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8
end_hunk_1
