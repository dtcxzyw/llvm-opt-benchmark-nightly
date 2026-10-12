Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/saigIso?download=true
inline.NumInlined: 240
inline.NumDeleted: 58
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.timespec = type { i64, i64 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [43 x i8] c"Structural equivalence failed at node %d.\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"%6d finished...\0D\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"Duplicate time\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"Isomorph  time\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"AIGER     time\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"Sorting   time\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"Time\00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c"Reduced %d outputs to %d outputs.  \00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"%s =\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"%9.2f sec\0A\00", align 1
@enable_dbg_outs = external local_unnamed_addr global i32, align 4
@stdout = external local_unnamed_addr global ptr, align 8
@.str.21 = private unnamed_addr constant [9 x i8] c" %4d : {\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"Vector has %d entries: {\00", align 1
@str = private unnamed_addr constant [51 x i8] c"Structural equivalence failed at primary output 0.\00", align 1
@str.2 = private unnamed_addr constant [6 x i8] c"AIG1:\00", align 1
@str.3 = private unnamed_addr constant [20 x i8] c"Nontrivial classes:\00", align 1
@str.5 = private unnamed_addr constant [30 x i8] c"Mapping of AIGs is NOT found.\00", align 1
@str.6 = private unnamed_addr constant [26 x i8] c"Mapping of AIGs is found.\00", align 1
@str.7 = private unnamed_addr constant [3 x i8] c" }\00", align 1

; Function Attrs: nounwind uwtable
define noalias noundef ptr @Saig_ManFindIsoPermCos(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 140
  %.val = load i32, ptr %i.a, align 4, !tbaa !8   ; 2 uses
  %i.b = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #23 ; 10 uses
  %i.c = add i32 %.val, -1
  %or.cond.i = icmp ult i32 %i.c, 15
  %spec.store.select.i = select i1 %or.cond.i, i32 16, i32 %.val ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 6 uses
  store i32 0, ptr %i.d, align 4, !tbaa !12
  store i32 %spec.store.select.i, ptr %i.b, align 8, !tbaa !13
  %.not.i = icmp eq i32 %spec.store.select.i, 0
  br i1 %.not.i, label %Vec_IntAlloc.exit, label %Vec_IntAlloc.exit.thread

Vec_IntAlloc.exit:                                ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  store ptr null, ptr %i.e, align 8, !tbaa !14
  %i.f = getelementptr i8, ptr %0, i64 112        ; 2 uses
  %.val42 = load i32, ptr %i.f, align 8, !tbaa !28 ; 2 uses
  %i.g = icmp eq i32 %.val42, 1
  br i1 %i.g, label %Vec_IntGrow.exit11.sink.split.i, label %bb.b

Vec_IntAlloc.exit.thread:                         ; preds = %bb.a
  %i.h = sext i32 %spec.store.select.i to i64
  %i.i = shl nsw i64 %i.h, 2
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.i) #23 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !14
  %i.l = getelementptr i8, ptr %0, i64 112        ; 2 uses
  %.val4276 = load i32, ptr %i.l, align 8, !tbaa !28 ; 2 uses
  %i.m = icmp eq i32 %.val4276, 1
  br i1 %i.m, label %Vec_IntPush.exit, label %bb.b

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %Vec_IntAlloc.exit
  %i.n = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #23 ; 2 uses
  store ptr %i.n, ptr %i.e, align 8, !tbaa !14
  store i32 16, ptr %i.b, align 8, !tbaa !13
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %Vec_IntAlloc.exit.thread, %Vec_IntGrow.exit11.sink.split.i
  %i.o = phi ptr [ %i.n, %Vec_IntGrow.exit11.sink.split.i ], [ %i.j, %Vec_IntAlloc.exit.thread ]
  %i.p = phi ptr [ %i.e, %Vec_IntGrow.exit11.sink.split.i ], [ %i.k, %Vec_IntAlloc.exit.thread ]
  store i32 1, ptr %i.d, align 4, !tbaa !12
  store i32 0, ptr %i.o, align 4, !tbaa !8
  br label %bb.v

bb.b:                                             ; preds = %Vec_IntAlloc.exit.thread, %Vec_IntAlloc.exit
  %.val4080 = phi i32 [ %.val4276, %Vec_IntAlloc.exit.thread ], [ %.val42, %Vec_IntAlloc.exit ] ; 3 uses
  %i.q = phi ptr [ %i.l, %Vec_IntAlloc.exit.thread ], [ %i.f, %Vec_IntAlloc.exit ] ; 2 uses
  %i.r = phi ptr [ %i.k, %Vec_IntAlloc.exit.thread ], [ %i.e, %Vec_IntAlloc.exit ] ; 3 uses
  %i.s = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #23 ; 5 uses
  %i.t = add i32 %.val4080, -1
  %or.cond.i53 = icmp ult i32 %i.t, 7
  %spec.store.select.i54 = select i1 %or.cond.i53, i32 8, i32 %.val4080 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 4 ; 2 uses
  store i32 0, ptr %i.u, align 4, !tbaa !30
  store i32 %spec.store.select.i54, ptr %i.s, align 8, !tbaa !31
  %.not.i55 = icmp eq i32 %spec.store.select.i54, 0
  br i1 %.not.i55, label %Vec_PtrAlloc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = sext i32 %spec.store.select.i54 to i64
  %i.w = shl nsw i64 %i.v, 3
  %i.x = tail call noalias ptr @malloc(i64 noundef %i.w) #23
  br label %Vec_PtrAlloc.exit

Vec_PtrAlloc.exit:                                ; preds = %bb.b, %bb.c
  %.promoted85 = phi ptr [ %i.x, %bb.c ], [ null, %bb.b ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  store ptr %.promoted85, ptr %i.y, align 8, !tbaa !32
  %i.z = icmp sgt i32 %.val4080, 0
  br i1 %i.z, label %.lr.ph, label %.critedge2

.lr.ph:                                           ; preds = %Vec_PtrAlloc.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %Vec_PtrPush.exit
  %indvars.iv102 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next103, %Vec_PtrPush.exit ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Vec_PtrPush.exit ] ; 8 uses
  %storemerge7886 = phi ptr [ %.promoted85, %.lr.ph ], [ %storemerge7887, %Vec_PtrPush.exit ] ; 6 uses
  %spec.select.sink.i5784 = phi i32 [ %spec.store.select.i54, %.lr.ph ], [ %spec.select.sink.i5783, %Vec_PtrPush.exit ] ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !33
  %i.ac = getelementptr i8, ptr %i.ab, i64 8
  %.val44 = load ptr, ptr %i.ac, align 8, !tbaa !32
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %.val44, i64 %indvars.iv102
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !34 ; 3 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 8
  %.val45 = load ptr, ptr %i.af, align 8, !tbaa !35
  %i.ag = ptrtoint ptr %.val45 to i64             ; 2 uses
  %i.ah = and i64 %i.ag, -2
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !36
  %i.al = trunc i64 %i.ag to i32
  %i.am = and i32 %i.al, 1
  %i.an = shl nsw i32 %i.ak, 1
  %i.ao = or disjoint i32 %i.am, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  store i32 %i.ao, ptr %i.ap, align 8, !tbaa !36
  %i.aq = trunc nsw i64 %indvars.iv to i32
  %i.ar = icmp eq i32 %spec.select.sink.i5784, %i.aq
  br i1 %i.ar, label %bb.e, label %Vec_PtrPush.exit

bb.e:                                             ; preds = %bb.d
  %i.as = icmp samesign ult i64 %indvars.iv, 16
  br i1 %i.as, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %.not9.i.i58 = icmp eq ptr %storemerge7886, null
  br i1 %.not9.i.i58, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.at = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %storemerge7886, i64 noundef 128) #24
  br label %Vec_PtrPush.exit

bb.h:                                             ; preds = %bb.f
  %i.au = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #23
  br label %Vec_PtrPush.exit

bb.i:                                             ; preds = %bb.e
  %i.av = icmp samesign ult i64 %indvars.iv, 1073741823
  %indvars.iv.tr = trunc nsw i64 %indvars.iv to i32
  %i.aw = shl nuw nsw i32 %indvars.iv.tr, 1
  %spec.select.i56 = select i1 %i.av, i32 %i.aw, i32 2147483647 ; 4 uses
  %2 = zext nneg i32 %spec.select.i56 to i64
  %.not.i10.i = icmp samesign ult i64 %indvars.iv, %2
  br i1 %.not.i10.i, label %bb.j, label %Vec_PtrPush.exit

bb.j:                                             ; preds = %bb.i
  %.not9.i11.i = icmp eq ptr %storemerge7886, null
  %i.ax = zext nneg i32 %spec.select.i56 to i64
  %i.ay = shl nuw nsw i64 %i.ax, 3                ; 2 uses
  br i1 %.not9.i11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.az = tail call ptr @realloc(ptr noundef nonnull %storemerge7886, i64 noundef %i.ay) #24
  br label %Vec_PtrPush.exit

bb.l:                                             ; preds = %bb.j
  %i.ba = tail call noalias ptr @malloc(i64 noundef %i.ay) #23
  br label %Vec_PtrPush.exit

Vec_PtrPush.exit:                                 ; preds = %bb.h, %bb.g, %bb.l, %bb.k, %bb.d, %bb.i
  %storemerge7887 = phi ptr [ %storemerge7886, %bb.d ], [ %storemerge7886, %bb.i ], [ %i.au, %bb.h ], [ %i.at, %bb.g ], [ %i.az, %bb.k ], [ %i.ba, %bb.l ] ; 5 uses
  %spec.select.sink.i5783 = phi i32 [ %spec.select.sink.i5784, %bb.d ], [ %spec.select.sink.i5784, %bb.i ], [ 16, %bb.h ], [ 16, %bb.g ], [ %spec.select.i56, %bb.k ], [ %spec.select.i56, %bb.l ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %storemerge7887, i64 %indvars.iv
  store ptr %i.ae, ptr %i.bb, align 8, !tbaa !34
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1 ; 2 uses
  %.val40 = load i32, ptr %i.q, align 8, !tbaa !28
  %i.bc = sext i32 %.val40 to i64
  %i.bd = icmp slt i64 %indvars.iv.next103, %i.bc
  br i1 %i.bd, label %bb.d, label %.critedge, !llvm.loop !53

.critedge:                                        ; preds = %Vec_PtrPush.exit
  %i.be = trunc nsw i64 %indvars.iv.next to i32
  store i32 %i.be, ptr %i.u, align 4, !tbaa !30
  store i32 %spec.select.sink.i5783, ptr %i.s, align 8
  store ptr %storemerge7887, ptr %i.y, align 8
  %i.bf = icmp eq i64 %indvars.iv, 0
  br i1 %i.bf, label %.lr.ph89, label %Vec_PtrSort.exit.thread

Vec_PtrSort.exit.thread:                          ; preds = %.critedge
  %i.bg = and i64 %indvars.iv.next, 4294967295
  tail call void @qsort(ptr noundef nonnull %storemerge7887, i64 noundef %i.bg, i64 noundef 8, ptr noundef nonnull @Iso_ObjCompareByData) #25
  %.pre117.pre = load ptr, ptr %i.y, align 8, !tbaa !32
  br label %.lr.ph89

.lr.ph89:                                         ; preds = %.critedge, %Vec_PtrSort.exit.thread
  %.pre117130 = phi ptr [ %.pre117.pre, %Vec_PtrSort.exit.thread ], [ %storemerge7887, %.critedge ]
  %.promoted90 = load i32, ptr %i.d, align 4, !tbaa !12
  %.promoted92 = load i32, ptr %i.b, align 8, !tbaa !13
  %.promoted95 = load ptr, ptr %i.r, align 8, !tbaa !14
  %i.bh = sext i32 %.promoted90 to i64
  %wide.trip.count = and i64 %indvars.iv.next, 4294967295
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph89, %Vec_IntPush.exit66
  %indvars.iv109 = phi i64 [ 0, %.lr.ph89 ], [ %indvars.iv.next110, %Vec_IntPush.exit66 ] ; 2 uses
  %indvars.iv107 = phi i64 [ %i.bh, %.lr.ph89 ], [ %indvars.iv.next108, %Vec_IntPush.exit66 ] ; 7 uses
  %storemerge96 = phi ptr [ %.promoted95, %.lr.ph89 ], [ %storemerge97, %Vec_IntPush.exit66 ] ; 6 uses
  %spec.select.sink.i6394 = phi i32 [ %.promoted92, %.lr.ph89 ], [ %spec.select.sink.i6393, %Vec_IntPush.exit66 ] ; 3 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %.pre117130, i64 %indvars.iv109
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !34
  %.val48 = load i32, ptr %i.bj, align 8, !tbaa !36
  %i.bk = trunc nsw i64 %indvars.iv107 to i32
  %i.bl = icmp eq i32 %spec.select.sink.i6394, %i.bk
  br i1 %i.bl, label %bb.n, label %Vec_IntPush.exit66

bb.n:                                             ; preds = %bb.m
  %i.bm = icmp slt i64 %indvars.iv107, 16
  br i1 %i.bm, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %.not9.i.i64 = icmp eq ptr %storemerge96, null
  br i1 %.not9.i.i64, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bn = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge96, i64 noundef 64) #24
  br label %Vec_IntGrow.exit11.sink.split.i62

bb.q:                                             ; preds = %bb.o
  %i.bo = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #23
  br label %Vec_IntGrow.exit11.sink.split.i62

bb.r:                                             ; preds = %bb.n
  %i.bp = icmp samesign ult i64 %indvars.iv107, 1073741823
  %indvars.iv107.tr = trunc nsw i64 %indvars.iv107 to i32
  %i.bq = shl nuw nsw i32 %indvars.iv107.tr, 1
  %spec.select.i59 = select i1 %i.bp, i32 %i.bq, i32 2147483647 ; 4 uses
  %3 = zext nneg i32 %spec.select.i59 to i64
  %.not.i9.i60 = icmp samesign ult i64 %indvars.iv107, %3
  br i1 %.not.i9.i60, label %bb.s, label %Vec_IntPush.exit66

bb.s:                                             ; preds = %bb.r
  %.not9.i10.i61 = icmp eq ptr %storemerge96, null
  %i.br = zext nneg i32 %spec.select.i59 to i64
  %i.bs = shl nuw nsw i64 %i.br, 2                ; 2 uses
  br i1 %.not9.i10.i61, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bt = tail call ptr @realloc(ptr noundef nonnull %storemerge96, i64 noundef %i.bs) #24
  br label %Vec_IntGrow.exit11.sink.split.i62

bb.u:                                             ; preds = %bb.s
  %i.bu = tail call noalias ptr @malloc(i64 noundef %i.bs) #23
  br label %Vec_IntGrow.exit11.sink.split.i62

Vec_IntGrow.exit11.sink.split.i62:                ; preds = %bb.t, %bb.u, %bb.p, %bb.q
  %storemerge = phi ptr [ %i.bo, %bb.q ], [ %i.bn, %bb.p ], [ %i.bt, %bb.t ], [ %i.bu, %bb.u ] ; 2 uses
  %spec.select.sink.i63 = phi i32 [ 16, %bb.q ], [ 16, %bb.p ], [ %spec.select.i59, %bb.t ], [ %spec.select.i59, %bb.u ]
  store ptr %storemerge, ptr %i.r, align 8, !tbaa !14
  br label %Vec_IntPush.exit66

Vec_IntPush.exit66:                               ; preds = %bb.m, %bb.r, %Vec_IntGrow.exit11.sink.split.i62
  %storemerge97 = phi ptr [ %storemerge96, %bb.m ], [ %storemerge96, %bb.r ], [ %storemerge, %Vec_IntGrow.exit11.sink.split.i62 ] ; 2 uses
  %spec.select.sink.i6393 = phi i32 [ %spec.select.sink.i6394, %bb.m ], [ %spec.select.sink.i6394, %bb.r ], [ %spec.select.sink.i63, %Vec_IntGrow.exit11.sink.split.i62 ] ; 2 uses
  %indvars.iv.next108 = add nsw i64 %indvars.iv107, 1 ; 2 uses
  %i.bv = getelementptr inbounds [4 x i8], ptr %storemerge97, i64 %indvars.iv107
  store i32 %.val48, ptr %i.bv, align 4, !tbaa !8
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next110, %wide.trip.count
  br i1 %exitcond.not, label %..critedge2_crit_edge, label %bb.m, !llvm.loop !54

..critedge2_crit_edge:                            ; preds = %Vec_IntPush.exit66
  %i.bw = trunc nsw i64 %indvars.iv.next108 to i32
  store i32 %i.bw, ptr %i.d, align 4, !tbaa !12
  store i32 %spec.select.sink.i6393, ptr %i.b, align 8
  %.pre = load ptr, ptr %i.y, align 8, !tbaa !32
  br label %.critedge2

.critedge2:                                       ; preds = %Vec_PtrAlloc.exit, %..critedge2_crit_edge
  %i.bx = phi ptr [ %.pre, %..critedge2_crit_edge ], [ %.promoted85, %Vec_PtrAlloc.exit ] ; 2 uses
  %.not.i67 = icmp eq ptr %i.bx, null
  br i1 %.not.i67, label %Vec_PtrFree.exit, label %.critedge2.thread

.critedge2.thread:                                ; preds = %.critedge2
  tail call void @free(ptr noundef nonnull %i.bx) #25
  br label %Vec_PtrFree.exit

Vec_PtrFree.exit:                                 ; preds = %.critedge2, %.critedge2.thread
  tail call void @free(ptr noundef nonnull %i.s) #25
  %.val39.pre = load i32, ptr %i.q, align 8, !tbaa !28
  br label %bb.v

bb.v:                                             ; preds = %Vec_PtrFree.exit, %Vec_IntPush.exit
  %.val39 = phi i32 [ %.val39.pre, %Vec_PtrFree.exit ], [ 1, %Vec_IntPush.exit ]
  %i.by = phi ptr [ %i.r, %Vec_PtrFree.exit ], [ %i.p, %Vec_IntPush.exit ] ; 4 uses
  %i.bz = getelementptr i8, ptr %0, i64 108
  %.val50 = load i32, ptr %i.bz, align 4, !tbaa !56 ; 3 uses
  %i.ca = sub i32 %.val39, %.val50
  %i.cb = getelementptr i8, ptr %1, i64 4         ; 2 uses
  %.val5198 = load i32, ptr %i.cb, align 4, !tbaa !12
  %i.cc = icmp slt i32 %.val50, %.val5198
  br i1 %i.cc, label %.lr.ph100, label %.critedge4

.lr.ph100:                                        ; preds = %bb.v
  %i.cd = getelementptr i8, ptr %1, i64 8
  %i.ce = sext i32 %.val50 to i64
  %.pre120 = load i32, ptr %i.d, align 4, !tbaa !12
  %.pre121 = load i32, ptr %i.b, align 8, !tbaa !13
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph100, %Vec_IntPush.exit75
  %i.cf = phi i32 [ %.pre121, %.lr.ph100 ], [ %i.cw, %Vec_IntPush.exit75 ] ; 7 uses
  %i.cg = phi i32 [ %.pre120, %.lr.ph100 ], [ %i.cx, %Vec_IntPush.exit75 ] ; 3 uses
  %indvars.iv114 = phi i64 [ %i.ce, %.lr.ph100 ], [ %indvars.iv.next115, %Vec_IntPush.exit75 ] ; 2 uses
  %.val52 = load ptr, ptr %i.cd, align 8, !tbaa !14
  %i.ch = getelementptr inbounds [4 x i8], ptr %.val52, i64 %indvars.iv114
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !8
  %i.cj = add nsw i32 %i.ca, %i.ci
  %i.ck = icmp eq i32 %i.cg, %i.cf
  br i1 %i.ck, label %bb.x, label %.Vec_IntPush.exit75_crit_edge

.Vec_IntPush.exit75_crit_edge:                    ; preds = %bb.w
  %.pre122 = load ptr, ptr %i.by, align 8, !tbaa !14
  br label %Vec_IntPush.exit75

bb.x:                                             ; preds = %bb.w
  %i.cl = icmp slt i32 %i.cf, 16
  br i1 %i.cl, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.cm = load ptr, ptr %i.by, align 8, !tbaa !14 ; 2 uses
  %.not9.i.i73 = icmp eq ptr %i.cm, null
  br i1 %.not9.i.i73, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cn = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.cm, i64 noundef 64) #24
  br label %Vec_IntGrow.exit11.sink.split.i71

bb.aa:                                            ; preds = %bb.y
  %i.co = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #23
  br label %Vec_IntGrow.exit11.sink.split.i71

bb.ab:                                            ; preds = %bb.x
  %i.cp = icmp samesign ult i32 %i.cf, 1073741823
  %i.cq = shl nuw nsw i32 %i.cf, 1
  %spec.select.i68 = select i1 %i.cp, i32 %i.cq, i32 2147483647 ; 4 uses
  %.not.i9.i69 = icmp samesign ult i32 %i.cf, %spec.select.i68
  %.pre123 = load ptr, ptr %i.by, align 8, !tbaa !14 ; 3 uses
  br i1 %.not.i9.i69, label %bb.ac, label %Vec_IntPush.exit75

bb.ac:                                            ; preds = %bb.ab
  %.not9.i10.i70 = icmp eq ptr %.pre123, null
  %i.cr = zext nneg i32 %spec.select.i68 to i64
  %i.cs = shl nuw nsw i64 %i.cr, 2                ; 2 uses
  br i1 %.not9.i10.i70, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ct = tail call ptr @realloc(ptr noundef nonnull %.pre123, i64 noundef %i.cs) #24
  br label %Vec_IntGrow.exit11.sink.split.i71

bb.ae:                                            ; preds = %bb.ac
  %i.cu = tail call noalias ptr @malloc(i64 noundef %i.cs) #23
  br label %Vec_IntGrow.exit11.sink.split.i71

Vec_IntGrow.exit11.sink.split.i71:                ; preds = %bb.ad, %bb.ae, %bb.z, %bb.aa
  %storemerge79 = phi ptr [ %i.co, %bb.aa ], [ %i.cn, %bb.z ], [ %i.ct, %bb.ad ], [ %i.cu, %bb.ae ] ; 2 uses
  %spec.select.sink.i72 = phi i32 [ 16, %bb.aa ], [ 16, %bb.z ], [ %spec.select.i68, %bb.ad ], [ %spec.select.i68, %bb.ae ] ; 2 uses
  store ptr %storemerge79, ptr %i.by, align 8, !tbaa !14
  store i32 %spec.select.sink.i72, ptr %i.b, align 8, !tbaa !13
  br label %Vec_IntPush.exit75

Vec_IntPush.exit75:                               ; preds = %.Vec_IntPush.exit75_crit_edge, %bb.ab, %Vec_IntGrow.exit11.sink.split.i71
  %i.cv = phi ptr [ %.pre122, %.Vec_IntPush.exit75_crit_edge ], [ %.pre123, %bb.ab ], [ %storemerge79, %Vec_IntGrow.exit11.sink.split.i71 ]
  %i.cw = phi i32 [ %i.cf, %.Vec_IntPush.exit75_crit_edge ], [ %i.cf, %bb.ab ], [ %spec.select.sink.i72, %Vec_IntGrow.exit11.sink.split.i71 ]
  %i.cx = add nsw i32 %i.cg, 1                    ; 2 uses
  store i32 %i.cx, ptr %i.d, align 4, !tbaa !12
  %i.cy = sext i32 %i.cg to i64
  %i.cz = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %i.cy
  store i32 %i.cj, ptr %i.cz, align 4, !tbaa !8
  %indvars.iv.next115 = add nsw i64 %indvars.iv114, 1 ; 2 uses
  %.val51 = load i32, ptr %i.cb, align 4, !tbaa !12
  %i.da = sext i32 %.val51 to i64
  %i.db = icmp slt i64 %indvars.iv.next115, %i.da
  br i1 %i.db, label %bb.w, label %.critedge4, !llvm.loop !55

.critedge4:                                       ; preds = %Vec_IntPush.exit75, %bb.v
  ret ptr %i.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @Iso_ObjCompareByData(ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define void @Saig_ManDupIsoCanonical_rec(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 312
  %.val36 = load i32, ptr %i.a, align 8, !tbaa !38 ; 2 uses
  %i.b = getelementptr i8, ptr %2, i64 32         ; 2 uses
  %.val37 = load i32, ptr %i.b, align 8, !tbaa !39
  %.not = icmp eq i32 %.val37, %.val36
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %.val36, ptr %i.b, align 8, !tbaa !39
  %i.c = getelementptr i8, ptr %2, i64 8          ; 3 uses
  %.val35 = load ptr, ptr %i.c, align 8, !tbaa !35
  %i.d = ptrtoint ptr %.val35 to i64
  %i.e = and i64 %i.d, -2
  %i.f = inttoptr i64 %i.e to ptr                 ; 4 uses
  %i.g = getelementptr i8, ptr %i.f, i64 24
  %.val40 = load i64, ptr %i.g, align 8
  %i.h = trunc i64 %.val40 to i32
  %i.i = and i32 %i.h, 7
  %i.j = add nsw i32 %i.i, -7
  %narrow.i = icmp ult i32 %i.j, -2
  br i1 %narrow.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr i8, ptr %2, i64 16         ; 2 uses
  %.val45 = load ptr, ptr %i.k, align 8, !tbaa !40
  %i.l = ptrtoint ptr %.val45 to i64
  %i.m = and i64 %i.l, -2
  %i.n = inttoptr i64 %i.m to ptr                 ; 3 uses
  %i.o = getelementptr i8, ptr %i.n, i64 24
  %.val39 = load i64, ptr %i.o, align 8
  %i.p = trunc i64 %.val39 to i32
  %i.q = and i32 %i.p, 7
  %i.r = add nsw i32 %i.q, -7
  %narrow.i48 = icmp ult i32 %i.r, -2
  br i1 %narrow.i48, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @Saig_ManDupIsoCanonical_rec(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %i.f)
  %i.s = getelementptr i8, ptr %2, i64 16
end_hunk_0
begin_hunk_1_@Iso_ManFilterPos:Abc_Clock.exit
  br i1 %i.fn, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fh, i64 8 ; 2 uses
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !14 ; 2 uses
  %.not9.i.i132 = icmp eq ptr %i.fp, null
  br i1 %.not9.i.i132, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fq = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.fp, i64 noundef 64) #24
  br label %Vec_IntGrow.exit.i133

bb.al:                                            ; preds = %bb.aj
  %i.fr = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #23
  br label %Vec_IntGrow.exit.i133

Vec_IntGrow.exit.i133:                            ; preds = %bb.al, %bb.ak
  %i.fs = phi ptr [ %i.fq, %bb.ak ], [ %i.fr, %bb.al ]
  store ptr %i.fs, ptr %i.fo, align 8, !tbaa !14
  br label %Vec_IntGrow.exit11.sink.split.i130

bb.am:                                            ; preds = %bb.ai
  %i.ft = icmp samesign ult i32 %i.fk, 1073741823
  %i.fu = shl nuw nsw i32 %i.fk, 1
  %spec.select.i127 = select i1 %i.ft, i32 %i.fu, i32 2147483647 ; 3 uses
  %.not.i9.i128 = icmp samesign ult i32 %i.fk, %spec.select.i127
  br i1 %.not.i9.i128, label %bb.an, label %Vec_IntPush.exit134

bb.an:                                            ; preds = %bb.am
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fh, i64 8 ; 2 uses
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !14 ; 2 uses
  %.not9.i10.i129 = icmp eq ptr %i.fw, null
  %i.fx = zext nneg i32 %spec.select.i127 to i64
  %i.fy = shl nuw nsw i64 %i.fx, 2                ; 2 uses
  br i1 %.not9.i10.i129, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fz = call ptr @realloc(ptr noundef nonnull %i.fw, i64 noundef %i.fy) #24
  br label %bb.aq

bb.ap:                                            ; preds = %bb.an
  %i.ga = call noalias ptr @malloc(i64 noundef %i.fy) #23
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.gb = phi ptr [ %i.fz, %bb.ao ], [ %i.ga, %bb.ap ]
  store ptr %i.gb, ptr %i.fv, align 8, !tbaa !14
  br label %Vec_IntGrow.exit11.sink.split.i130

Vec_IntGrow.exit11.sink.split.i130:               ; preds = %bb.aq, %Vec_IntGrow.exit.i133
  %spec.select.sink.i131 = phi i32 [ %spec.select.i127, %bb.aq ], [ 16, %Vec_IntGrow.exit.i133 ]
  store i32 %spec.select.sink.i131, ptr %i.fh, align 8, !tbaa !13
  %.pre196 = load i32, ptr %i.fj, align 4, !tbaa !12
  br label %Vec_IntPush.exit134

Vec_IntPush.exit134:                              ; preds = %bb.ah, %bb.am, %Vec_IntGrow.exit11.sink.split.i130
  %i.gc = phi i32 [ %i.fk, %bb.ah ], [ %i.fk, %bb.am ], [ %.pre196, %Vec_IntGrow.exit11.sink.split.i130 ] ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !14
  %i.gf = add nsw i32 %i.gc, 1
  store i32 %i.gf, ptr %i.fj, align 4, !tbaa !12
  %i.gg = sext i32 %i.gc to i64
  %i.gh = getelementptr inbounds [4 x i8], ptr %i.ge, i64 %i.gg
  store i32 %i.fi, ptr %i.gh, align 4, !tbaa !8
  %i.gi = load i32, ptr %i.a, align 4, !tbaa !8
  %i.gj = add nsw i32 %i.gi, 1                    ; 3 uses
  store i32 %i.gj, ptr %i.a, align 4, !tbaa !8
  %i.gk = icmp slt i32 %i.gj, %.val74
  br i1 %i.gk, label %.lr.ph172, label %.critedge, !llvm.loop !83

.critedge:                                        ; preds = %Vec_IntPush.exit134, %Vec_IntPush.exit
  %.val72179 = phi i32 [ 1, %Vec_IntPush.exit ], [ %.val79, %Vec_IntPush.exit134 ] ; 3 uses
  %i.gl = icmp sgt i32 %.val74, 0
  br i1 %i.gl, label %.lr.ph.i.preheader, label %Vec_VecFree.exit

.lr.ph.i.preheader:                               ; preds = %.critedge
  %i.gm = zext nneg i32 %.val74 to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.at
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.at ], [ 0, %.lr.ph.i.preheader ] ; 2 uses
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %.val71, i64 %indvars.iv.i
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !34 ; 3 uses
  %.not.i136 = icmp eq ptr %i.go, null
  br i1 %.not.i136, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph.i
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.gq, null
  br i1 %.not.i.i, label %Vec_PtrFree.exit.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @free(ptr noundef nonnull %i.gq) #25
  br label %Vec_PtrFree.exit.i

Vec_PtrFree.exit.i:                               ; preds = %bb.as, %bb.ar
  call void @free(ptr noundef nonnull %i.go) #25
  br label %bb.at

bb.at:                                            ; preds = %Vec_PtrFree.exit.i, %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.i, %i.gm
  br i1 %exitcond.not, label %Vec_VecFree.exit, label %.lr.ph.i, !llvm.loop !84

Vec_VecFree.exit:                                 ; preds = %bb.at, %.critedge
  call void @free(ptr noundef nonnull %.val71) #25
  call void @free(ptr noundef nonnull %i.f) #25
  br i1 %.not, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %Vec_VecFree.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.gr = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %3) #25
  %i.gs = icmp slt i32 %i.gr, 0
  br i1 %i.gs, label %Abc_Clock.exit138, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.gt = load i64, ptr %3, align 8, !tbaa !51
  %i.gu = mul nsw i64 %i.gt, 1000000
  %i.gv = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !52
  %i.gx = sdiv i64 %i.gw, 1000
  %i.gy = add nsw i64 %i.gx, %i.gu
  br label %Abc_Clock.exit138

Abc_Clock.exit138:                                ; preds = %bb.au, %bb.av
  %.0.i137 = phi i64 [ %i.gy, %bb.av ], [ -1, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.gz = add i64 %.0.i137, %.0.i99.neg
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.11)
  %i.ha = sitofp i64 %i.gz to double
  %i.hb = fdiv double %i.ha, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.18, double noundef %i.hb)
  br label %bb.aw

bb.aw:                                            ; preds = %Abc_Clock.exit138, %Vec_VecFree.exit
  store i32 0, ptr %i.a, align 4, !tbaa !8
  %i.hc = icmp sgt i32 %.val72179, 0              ; 2 uses
  %.val84.pre = load ptr, ptr %i.dk, align 8, !tbaa !88 ; 2 uses
  br i1 %i.hc, label %.lr.ph177, label %.critedge2

.lr.ph177:                                        ; preds = %bb.aw, %.lr.ph177
  %storemerge64175 = phi i32 [ %i.hk, %.lr.ph177 ], [ 0, %bb.aw ]
  %i.hd = sext i32 %storemerge64175 to i64
  %i.he = getelementptr inbounds [8 x i8], ptr %.val84.pre, i64 %i.hd
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !34 ; 2 uses
  %i.hg = getelementptr i8, ptr %i.hf, i64 4
  %.val81 = load i32, ptr %i.hg, align 4, !tbaa !12
  %i.hh = getelementptr i8, ptr %i.hf, i64 8
  %.val82 = load ptr, ptr %i.hh, align 8, !tbaa !14
  %i.hi = sext i32 %.val81 to i64
  call void @qsort(ptr noundef %.val82, i64 noundef %i.hi, i64 noundef 4, ptr noundef nonnull @Vec_IntSortCompare1) #25
  %i.hj = load i32, ptr %i.a, align 4, !tbaa !8
  %i.hk = add nsw i32 %i.hj, 1                    ; 3 uses
  store i32 %i.hk, ptr %i.a, align 4, !tbaa !8
  %i.hl = icmp slt i32 %i.hk, %.val72179
  br i1 %i.hl, label %.lr.ph177, label %.critedge2, !llvm.loop !85

.critedge2:                                       ; preds = %.lr.ph177, %bb.aw
  %i.hm = sext i32 %.val72179 to i64
  call void @qsort(ptr noundef %.val84.pre, i64 noundef %i.hm, i64 noundef 8, ptr noundef nonnull @Vec_VecSortCompare3) #25
  %i.hn = call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #23 ; 4 uses
  store i32 0, ptr %i.a, align 4, !tbaa !8
  br i1 %i.hc, label %.lr.ph181, label %.critedge4

.lr.ph181:                                        ; preds = %.critedge2, %Vec_IntPush.exit146
  %indvars.iv = phi i64 [ %indvars.iv.next, %Vec_IntPush.exit146 ], [ 0, %.critedge2 ] ; 7 uses
  %storemerge152186 = phi ptr [ %storemerge152187, %Vec_IntPush.exit146 ], [ %i.hn, %.critedge2 ] ; 6 uses
  %spec.select.sink.i143184 = phi i32 [ %spec.select.sink.i143183, %Vec_IntPush.exit146 ], [ 100, %.critedge2 ] ; 3 uses
  %storemerge65180 = phi i32 [ %i.ig, %Vec_IntPush.exit146 ], [ 0, %.critedge2 ]
  %.val68 = load ptr, ptr %i.dk, align 8, !tbaa !32
  %i.ho = sext i32 %storemerge65180 to i64
  %i.hp = getelementptr inbounds [8 x i8], ptr %.val68, i64 %i.ho
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !34
  %i.hr = getelementptr i8, ptr %i.hq, i64 8
  %.val76 = load ptr, ptr %i.hr, align 8, !tbaa !14
  %i.hs = load i32, ptr %.val76, align 4, !tbaa !8
  %i.ht = trunc nsw i64 %indvars.iv to i32
  %i.hu = icmp eq i32 %spec.select.sink.i143184, %i.ht
  br i1 %i.hu, label %bb.ax, label %Vec_IntPush.exit146

bb.ax:                                            ; preds = %.lr.ph181
  %i.hv = icmp samesign ult i64 %indvars.iv, 16
  br i1 %i.hv, label %bb.ay, label %bb.bb

bb.ay:                                            ; preds = %bb.ax
  %.not9.i.i144 = icmp eq ptr %storemerge152186, null
  br i1 %.not9.i.i144, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hw = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge152186, i64 noundef 64) #24
  br label %Vec_IntPush.exit146

bb.ba:                                            ; preds = %bb.ay
  %i.hx = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #23
  br label %Vec_IntPush.exit146

bb.bb:                                            ; preds = %bb.ax
  %i.hy = icmp samesign ult i64 %indvars.iv, 1073741823
  %indvars.iv.tr = trunc nsw i64 %indvars.iv to i32
  %i.hz = shl nuw nsw i32 %indvars.iv.tr, 1
  %spec.select.i139 = select i1 %i.hy, i32 %i.hz, i32 2147483647 ; 4 uses
  %13 = zext nneg i32 %spec.select.i139 to i64
  %.not.i9.i140 = icmp samesign ult i64 %indvars.iv, %13
  br i1 %.not.i9.i140, label %bb.bc, label %Vec_IntPush.exit146

bb.bc:                                            ; preds = %bb.bb
  %.not9.i10.i141 = icmp eq ptr %storemerge152186, null
  %i.ia = zext nneg i32 %spec.select.i139 to i64
  %i.ib = shl nuw nsw i64 %i.ia, 2                ; 2 uses
  br i1 %.not9.i10.i141, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ic = call ptr @realloc(ptr noundef nonnull %storemerge152186, i64 noundef %i.ib) #24
  br label %Vec_IntPush.exit146

bb.be:                                            ; preds = %bb.bc
  %i.id = call noalias ptr @malloc(i64 noundef %i.ib) #23
  br label %Vec_IntPush.exit146

Vec_IntPush.exit146:                              ; preds = %bb.ba, %bb.az, %bb.be, %bb.bd, %.lr.ph181, %bb.bb
  %storemerge152187 = phi ptr [ %storemerge152186, %.lr.ph181 ], [ %storemerge152186, %bb.bb ], [ %i.hx, %bb.ba ], [ %i.hw, %bb.az ], [ %i.ic, %bb.bd ], [ %i.id, %bb.be ] ; 4 uses
  %spec.select.sink.i143183 = phi i32 [ %spec.select.sink.i143184, %.lr.ph181 ], [ %spec.select.sink.i143184, %bb.bb ], [ 16, %bb.ba ], [ 16, %bb.az ], [ %spec.select.i139, %bb.bd ], [ %spec.select.i139, %bb.be ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %storemerge152187, i64 %indvars.iv
  store i32 %i.hs, ptr %i.ie, align 4, !tbaa !8
  %i.if = load i32, ptr %i.a, align 4, !tbaa !8
  %i.ig = add nsw i32 %i.if, 1                    ; 3 uses
  store i32 %i.ig, ptr %i.a, align 4, !tbaa !8
  %.val72 = load i32, ptr %i.df, align 4, !tbaa !30
  %i.ih = icmp slt i32 %i.ig, %.val72
  br i1 %i.ih, label %.lr.ph181, label %.critedge4.thread, !llvm.loop !86

.critedge4.thread:                                ; preds = %Vec_IntPush.exit146
  %i.ii = trunc nsw i64 %indvars.iv.next to i32
  %i.ij = call ptr @Saig_ManDupCones(ptr noundef %0, ptr noundef nonnull %storemerge152187, i32 noundef %i.ii) #25
  br label %bb.bf

.critedge4:                                       ; preds = %.critedge2
  %i.ik = call ptr @Saig_ManDupCones(ptr noundef %0, ptr noundef %i.hn, i32 noundef 0) #25 ; 2 uses
  %.not.i147 = icmp eq ptr %i.hn, null
  br i1 %.not.i147, label %Vec_IntFree.exit, label %bb.bf

bb.bf:                                            ; preds = %.critedge4.thread, %.critedge4
  %i.il = phi ptr [ %i.ij, %.critedge4.thread ], [ %i.ik, %.critedge4 ]
  %.val78220 = phi ptr [ %storemerge152187, %.critedge4.thread ], [ %i.hn, %.critedge4 ]
  call void @free(ptr noundef nonnull %.val78220) #25
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %.critedge4, %bb.bf
  %i.im = phi ptr [ %i.ik, %.critedge4 ], [ %i.il, %bb.bf ]
  store ptr %i.dd, ptr %1, align 8, !tbaa !49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret ptr %i.im
}

declare ptr @Ioa_WriteAigerIntoMemoryStr(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define noalias noundef ptr @Iso_ManTest(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.a = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %3) #25
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %Abc_Clock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %3, align 8, !tbaa !51
  %.neg5 = mul i64 %i.c, -1000000
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !52
  %.neg = sdiv i64 %i.e, -1000
  %.neg6 = add i64 %.neg, %.neg5
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i.neg = phi i64 [ %.neg6, %bb.b ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.f = call ptr @Saig_ManFindIsoPerm(ptr noundef %0, i32 noundef %1) #25 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !14   ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %Vec_IntFree.exit, label %bb.c

bb.c:                                             ; preds = %Abc_Clock.exit
  call void @free(ptr noundef nonnull %i.h) #25
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %Abc_Clock.exit, %bb.c
  call void @free(ptr noundef nonnull %i.f) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.i = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %2) #25
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %Abc_Clock.exit4, label %bb.d

bb.d:                                             ; preds = %Vec_IntFree.exit
  %i.k = load i64, ptr %2, align 8, !tbaa !51
  %i.l = mul nsw i64 %i.k, 1000000
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !52
  %i.o = sdiv i64 %i.n, 1000
  %i.p = add nsw i64 %i.o, %i.l
  br label %Abc_Clock.exit4

Abc_Clock.exit4:                                  ; preds = %Vec_IntFree.exit, %bb.d
  %.0.i3 = phi i64 [ %i.p, %bb.d ], [ -1, %Vec_IntFree.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.q = add i64 %.0.i3, %.0.i.neg
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.12)
  %i.r = sitofp i64 %i.q to double
  %i.s = fdiv double %i.r, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.18, double noundef %i.s)
  ret ptr null
}

; Function Attrs: nounwind uwtable
define ptr @Saig_ManIsoReduce(ptr noundef %0, ptr nofree noundef captures(none) initializes((0, 8)) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.a = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %4) #25
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %Abc_Clock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %4, align 8, !tbaa !51
  %.neg18 = mul i64 %i.c, -1000000
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !52
  %.neg = sdiv i64 %i.e, -1000
  %.neg19 = add i64 %.neg, %.neg18
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i.neg = phi i64 [ %.neg19, %bb.b ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.f = call ptr @Iso_ManFilterPos(ptr noundef %0, ptr noundef %1, i32 noundef %2) ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 112        ; 2 uses
  %.val14 = load i32, ptr %i.g, align 8, !tbaa !28
  %i.h = getelementptr i8, ptr %i.f, i64 112
  %.val13 = load i32, ptr %i.h, align 8, !tbaa !28
  %i.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef %.val14, i32 noundef %.val13) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.j = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %3) #25
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %Abc_Clock.exit17, label %bb.c

bb.c:                                             ; preds = %Abc_Clock.exit
  %i.l = load i64, ptr %3, align 8, !tbaa !51
  %i.m = mul nsw i64 %i.l, 1000000
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !52
  %i.p = sdiv i64 %i.o, 1000
  %i.q = add nsw i64 %i.p, %i.m
  br label %Abc_Clock.exit17

Abc_Clock.exit17:                                 ; preds = %Abc_Clock.exit, %bb.c
  %.0.i16 = phi i64 [ %i.q, %bb.c ], [ -1, %Abc_Clock.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.r = add i64 %.0.i16, %.0.i.neg
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.12)
  %i.s = sitofp i64 %i.r to double
  %i.t = fdiv double %i.s, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.18, double noundef %i.t)
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %Vec_VecPrintInt.exit, label %bb.d

bb.d:                                             ; preds = %Abc_Clock.exit17
  %i.u = load ptr, ptr %1, align 8, !tbaa !49     ; 2 uses
  %.not11 = icmp eq ptr %i.u, null
  br i1 %.not11, label %Vec_VecPrintInt.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.val = load i32, ptr %i.g, align 8, !tbaa !28
  %i.v = getelementptr i8, ptr %i.u, i64 4
  %.val15 = load i32, ptr %i.v, align 4, !tbaa !30
  %.not12 = icmp eq i32 %.val, %.val15
  br i1 %.not12, label %Vec_VecPrintInt.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  %i.w = load ptr, ptr %1, align 8, !tbaa !49     ; 2 uses
  %i.x = getelementptr i8, ptr %i.w, i64 4        ; 2 uses
  %.val2031.i = load i32, ptr %i.x, align 4, !tbaa !92 ; 2 uses
  %i.y = icmp sgt i32 %.val2031.i, 0
  br i1 %i.y, label %.preheader.lr.ph.i, label %Vec_VecPrintInt.exit

.preheader.lr.ph.i:                               ; preds = %bb.f
  %i.z = getelementptr i8, ptr %i.w, i64 8        ; 5 uses
  %.val2226.pre.i = load ptr, ptr %i.z, align 8, !tbaa !93
  br label %.preheader.i

.preheader.i:                                     ; preds = %.critedge.i, %.preheader.lr.ph.i
  %.val2052.i = phi i32 [ %.val2031.i, %.preheader.lr.ph.i ], [ %.val20.i, %.critedge.i ]
  %.val2226.i = phi ptr [ %.val2226.pre.i, %.preheader.lr.ph.i ], [ %.val222638.i, %.critedge.i ] ; 3 uses
  %indvars.iv35.i = phi i64 [ 0, %.preheader.lr.ph.i ], [ %indvars.iv.next36.i, %.critedge.i ] ; 7 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.val2226.i, i64 %indvars.iv35.i
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !34 ; 2 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 4
  %.val27.i = load i32, ptr %i.ac, align 4, !tbaa !12 ; 2 uses
end_hunk_1
