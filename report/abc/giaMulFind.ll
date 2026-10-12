Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaMulFind?download=true
inline.NumInlined: 669
inline.NumDeleted: 86
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 20
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str.1 = private unnamed_addr constant [63 x i8] c"Generated system with %d+%d+%d=%d variables and %d equations.\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Detection of group %d failed.\0A\00", align 1
@__const.Gia_ManMulFindCuts.pTruths = private unnamed_addr constant [3 x i64] [i64 7595718147998050665, i64 3873154779190408640, i64 -921640604013318976], align 16
@.str.4 = private unnamed_addr constant [6 x i8] c"n/a%s\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"%s%d%s\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"~\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"... \00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"%sooth %s%ssigned %d x %d: \00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"Non-b\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"radix-4 \00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"un\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c" * \00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c" = \00", align 1
@.str.19 = private unnamed_addr constant [49 x i8] c"Detected %d booth and %d non-booth multipliers.\0A\00", align 1
@str = private unnamed_addr constant [30 x i8] c"Internal verification failed.\00", align 1

; Function Attrs: nounwind uwtable
define void @Gia_ManMulFindXors2_rec(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %.val = load i64, ptr %1, align 4               ; 2 uses
  %i.c = and i64 %.val, 2147483648
  %.not.i = icmp ne i64 %i.c, 0
  %i.d = and i64 %.val, 536870911
  %i.e = icmp eq i64 %i.d, 536870911
  %narrow.i.not = or i1 %.not.i, %i.e
  br i1 %narrow.i.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !45
  %i.h = getelementptr i8, ptr %0, i64 32
  %.val.i = load ptr, ptr %i.h, align 8, !tbaa !46
  %i.i = ptrtoint ptr %1 to i64
  %i.j = ptrtoint ptr %.val.i to i64              ; 3 uses
  %i.k = sub i64 %i.i, %i.j
  %i.l = sdiv exact i64 %i.k, 12                  ; 2 uses
  %i.m = shl i64 %i.l, 32
  %i.n = ashr exact i64 %i.m, 30
  %i.o = getelementptr inbounds i8, ptr %i.g, i64 %i.n ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !47
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.r = load i32, ptr %i.q, align 8, !tbaa !48   ; 2 uses
  %.not = icmp eq i32 %i.p, %i.r
  br i1 %.not, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %i.r, ptr %i.o, align 4, !tbaa !47
  %i.s = load i64, ptr %1, align 4                ; 5 uses
  %i.t = and i64 %i.s, 1073741824
  %.not23 = icmp eq i64 %i.t, 0
  br i1 %.not23, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.u = trunc i64 %i.s to i32
  %i.v = and i64 %i.s, 2305843009750564864
  %or.cond = icmp eq i64 %i.v, 0
  br i1 %or.cond, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.w = and i64 %i.s, 536870911
  %i.x = sub nsw i64 0, %i.w
  %i.y = getelementptr inbounds [12 x i8], ptr %1, i64 %i.x
  %i.z = getelementptr i8, ptr %0, i64 144
  %.val31 = load ptr, ptr %i.z, align 8, !tbaa !49 ; 2 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.aa, %i.j
  %i.ac = sdiv exact i64 %i.ab, 12
  %i.ad = shl i64 %i.ac, 32
  %i.ae = ashr exact i64 %i.ad, 30
  %i.af = getelementptr inbounds i8, ptr %.val31, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !47
  %i.ah = icmp sgt i32 %i.ag, 3
  br i1 %i.ah, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ai = lshr i64 %i.s, 32                       ; 2 uses
  %i.aj = and i64 %i.ai, 536870911
  %i.ak = sub nsw i64 0, %i.aj
  %i.al = getelementptr inbounds [12 x i8], ptr %1, i64 %i.ak
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = sub i64 %i.am, %i.j
  %i.ao = sdiv exact i64 %i.an, 12
  %i.ap = shl i64 %i.ao, 32
  %i.aq = ashr exact i64 %i.ap, 30
  %i.ar = getelementptr inbounds i8, ptr %.val31, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !47
  %i.at = icmp sgt i32 %i.as, 3
  br i1 %i.at, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.au = trunc i64 %i.l to i32                   ; 2 uses
  %i.av = and i32 %i.u, 536870911
  %i.aw = sub nsw i32 %i.au, %i.av
  %i.ax = trunc nuw i64 %i.ai to i32
  %i.ay = and i32 %i.ax, 536870911
  %i.az = sub nsw i32 %i.au, %i.ay
  tail call fastcc void @Vec_IntPushTwo(ptr noundef %2, i32 noundef %i.aw, i32 noundef %i.az)
  br label %bb.i

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.ba = call i32 @Gia_ObjRecognizeExor(ptr noundef nonnull %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #22 ; 0 uses
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !50
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = and i64 %i.bc, -2
  %i.be = inttoptr i64 %i.bd to ptr
  call void @Gia_ManMulFindXors2_rec(ptr noundef nonnull %0, ptr noundef %i.be, ptr noundef %2)
  %i.bf = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = and i64 %i.bg, -2
  %i.bi = inttoptr i64 %i.bh to ptr
  call void @Gia_ManMulFindXors2_rec(ptr noundef nonnull %0, ptr noundef %i.bi, ptr noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.b, %bb.a, %bb.h
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal fastcc void @Vec_IntPushTwo(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 6 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !51   ; 7 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !52
  %i.d = icmp eq i32 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %Vec_IntPush.exit

bb.b:                                             ; preds = %bb.a
  %i.e = icmp slt i32 %i.b, 16
  br i1 %i.e, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !53   ; 2 uses
  %.not9.i.i = icmp eq ptr %i.g, null
  br i1 %.not9.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.g, i64 noundef 64) #23
  br label %Vec_IntGrow.exit.i

bb.e:                                             ; preds = %bb.c
  %i.i = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #24
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.e, %bb.d
  %i.j = phi ptr [ %i.h, %bb.d ], [ %i.i, %bb.e ]
  store ptr %i.j, ptr %i.f, align 8, !tbaa !53
  br label %Vec_IntGrow.exit11.sink.split.i

bb.f:                                             ; preds = %bb.b
  %i.k = icmp samesign ult i32 %i.b, 1073741823
  %i.l = shl nuw nsw i32 %i.b, 1
  %spec.select.i = select i1 %i.k, i32 %i.l, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.b, %spec.select.i
  br i1 %.not.i9.i, label %bb.g, label %Vec_IntPush.exit

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !53   ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.n, null
  %i.o = zext nneg i32 %spec.select.i to i64
  %i.p = shl nuw nsw i64 %i.o, 2                  ; 2 uses
  br i1 %.not9.i10.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = tail call ptr @realloc(ptr noundef nonnull %i.n, i64 noundef %i.p) #23
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.r = tail call noalias ptr @malloc(i64 noundef %i.p) #24
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.s = phi ptr [ %i.q, %bb.h ], [ %i.r, %bb.i ]
  store ptr %i.s, ptr %i.m, align 8, !tbaa !53
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.j, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.j ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %0, align 8, !tbaa !52
  %.pre = load i32, ptr %i.a, align 4, !tbaa !51
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.a, %bb.f, %Vec_IntGrow.exit11.sink.split.i
  %i.t = phi i32 [ %i.b, %bb.a ], [ %i.b, %bb.f ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !53   ; 4 uses
  %i.w = add nsw i32 %i.t, 1
  store i32 %i.w, ptr %i.a, align 4, !tbaa !51
  %i.x = sext i32 %i.t to i64
  %i.y = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.x
  store i32 %1, ptr %i.y, align 4, !tbaa !47
  %i.z = load i32, ptr %i.a, align 4, !tbaa !51   ; 7 uses
  %i.aa = load i32, ptr %0, align 8, !tbaa !52
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
end_hunk_0
begin_hunk_1_@Gia_ManMulFindArg1:bb.a
.lr.ph.i:                                         ; preds = %.lr.ph.i.lr.ph, %Vec_IntPush.exit31
  %.val23.i43 = phi i32 [ %.val23.i41, %.lr.ph.i.lr.ph ], [ %.val23.i, %Vec_IntPush.exit31 ]
  %.242 = phi i32 [ %.1, %.lr.ph.i.lr.ph ], [ %spec.select.i23, %Vec_IntPush.exit31 ] ; 2 uses
  %.val28.i = load ptr, ptr %i.ad, align 8, !tbaa !53
  %.val29.i = load ptr, ptr %i.ae, align 8, !tbaa !57
  %wide.trip.count.i = zext nneg i32 %.val23.i43 to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.i ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %.val28.i, i64 %indvars.iv.i
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !47
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds [16 x i8], ptr %.val29.i, i64 %i.ai ; 3 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 4
  %.val.i = load i32, ptr %i.ak, align 4, !tbaa !51
  %i.al = icmp eq i32 %.val.i, 0
  br i1 %i.al, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr i8, ptr %i.aj, i64 8
  %.val27.i = load ptr, ptr %i.am, align 8, !tbaa !53 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.val27.i, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !47 ; 2 uses
  %i.ap = icmp eq i32 %i.ao, %.242
  %i.aq = getelementptr inbounds nuw i8, ptr %.val27.i, i64 8
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !47 ; 2 uses
  %..i = select i1 %i.ap, i32 %i.ar, i32 -1
  %i.as = icmp eq i32 %i.ar, %.242
  %spec.select.i23 = select i1 %i.as, i32 %i.ao, i32 %..i ; 3 uses
  %i.at = icmp eq i32 %spec.select.i23, -1
  br i1 %i.at, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit, label %bb.g, !llvm.loop !9

bb.j:                                             ; preds = %bb.h
  %i.au = getelementptr i8, ptr %i.aj, i64 4
  store i32 0, ptr %i.au, align 4, !tbaa !51
  %i.av = load i32, ptr %i.b, align 4, !tbaa !51  ; 7 uses
  %i.aw = load i32, ptr %2, align 8, !tbaa !52
  %i.ax = icmp eq i32 %i.av, %i.aw
  br i1 %i.ax, label %bb.k, label %.Vec_IntPush.exit31_crit_edge

.Vec_IntPush.exit31_crit_edge:                    ; preds = %bb.j
  %.pre54 = load ptr, ptr %i.af, align 8, !tbaa !53
  br label %Vec_IntPush.exit31

bb.k:                                             ; preds = %bb.j
  %i.ay = icmp slt i32 %i.av, 16
  br i1 %i.ay, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.az = load ptr, ptr %i.af, align 8, !tbaa !53 ; 2 uses
  %.not9.i.i29 = icmp eq ptr %i.az, null
  br i1 %.not9.i.i29, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ba = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.az, i64 noundef 64) #23
  br label %Vec_IntGrow.exit11.sink.split.i27

bb.n:                                             ; preds = %bb.l
  %i.bb = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #24
  br label %Vec_IntGrow.exit11.sink.split.i27

bb.o:                                             ; preds = %bb.k
  %i.bc = icmp samesign ult i32 %i.av, 1073741823
  %i.bd = shl nuw nsw i32 %i.av, 1
  %spec.select.i24 = select i1 %i.bc, i32 %i.bd, i32 2147483647 ; 4 uses
  %.not.i9.i25 = icmp samesign ult i32 %i.av, %spec.select.i24
  %.pre55 = load ptr, ptr %i.af, align 8, !tbaa !53 ; 3 uses
  br i1 %.not.i9.i25, label %bb.p, label %Vec_IntPush.exit31

bb.p:                                             ; preds = %bb.o
  %.not9.i10.i26 = icmp eq ptr %.pre55, null
  %i.be = zext nneg i32 %spec.select.i24 to i64
  %i.bf = shl nuw nsw i64 %i.be, 2                ; 2 uses
  br i1 %.not9.i10.i26, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bg = tail call ptr @realloc(ptr noundef nonnull %.pre55, i64 noundef %i.bf) #23
  br label %Vec_IntGrow.exit11.sink.split.i27

bb.r:                                             ; preds = %bb.p
  %i.bh = tail call noalias ptr @malloc(i64 noundef %i.bf) #24
  br label %Vec_IntGrow.exit11.sink.split.i27

Vec_IntGrow.exit11.sink.split.i27:                ; preds = %bb.q, %bb.r, %bb.m, %bb.n
  %i.bi = phi ptr [ %i.bb, %bb.n ], [ %i.ba, %bb.m ], [ %i.bg, %bb.q ], [ %i.bh, %bb.r ] ; 2 uses
  %spec.select.sink.i28 = phi i32 [ 16, %bb.n ], [ 16, %bb.m ], [ %spec.select.i24, %bb.q ], [ %spec.select.i24, %bb.r ]
  store ptr %i.bi, ptr %i.af, align 8, !tbaa !53
  store i32 %spec.select.sink.i28, ptr %2, align 8, !tbaa !52
  %.pre56 = load i32, ptr %i.b, align 4, !tbaa !51
  br label %Vec_IntPush.exit31

Vec_IntPush.exit31:                               ; preds = %.Vec_IntPush.exit31_crit_edge, %bb.o, %Vec_IntGrow.exit11.sink.split.i27
  %i.bj = phi i32 [ %i.av, %.Vec_IntPush.exit31_crit_edge ], [ %i.av, %bb.o ], [ %.pre56, %Vec_IntGrow.exit11.sink.split.i27 ] ; 2 uses
  %i.bk = phi ptr [ %.pre54, %.Vec_IntPush.exit31_crit_edge ], [ %.pre55, %bb.o ], [ %i.bi, %Vec_IntGrow.exit11.sink.split.i27 ]
  %i.bl = add nsw i32 %i.bj, 1
  store i32 %i.bl, ptr %i.b, align 4, !tbaa !51
  %i.bm = sext i32 %i.bj to i64
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %i.bm
  store i32 %spec.select.i23, ptr %i.bn, align 4, !tbaa !47
  %.val23.i = load i32, ptr %i.ab, align 4, !tbaa !51 ; 2 uses
  %i.bo = icmp sgt i32 %.val23.i, 0
  br i1 %i.bo, label %.lr.ph.i, label %.loopexit, !llvm.loop !102

.loopexit:                                        ; preds = %Vec_IntPush.exit31, %bb.i, %.loopexit35
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !53 ; 2 uses
  %.not.i = icmp eq ptr %i.bq, null
  br i1 %.not.i, label %Vec_IntFree.exit, label %bb.s

bb.s:                                             ; preds = %.loopexit
  tail call void @free(ptr noundef nonnull %i.bq) #22
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %.loopexit, %bb.s
  tail call void @free(ptr noundef nonnull %i.a) #22
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i32 @Gia_ManMulFindNextEntryCount(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4
  %.val = load i32, ptr %i.a, align 4, !tbaa !51  ; 2 uses
  %i.b = icmp sgt i32 %.val, 1
  br i1 %i.b, label %.critedge.lr.ph, label %.split.loop.exit

.critedge.lr.ph:                                  ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val13 = load ptr, ptr %i.c, align 8, !tbaa !53 ; 2 uses
  br label %.critedge

bb.b:                                             ; preds = %.critedge
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.d = trunc i64 %indvars.iv.next to i32
  %i.e = or disjoint i32 %i.d, 1
  %i.f = icmp slt i32 %i.e, %.val
  br i1 %i.f, label %.critedge, label %.split.loop.exit, !llvm.loop !10

.critedge:                                        ; preds = %.critedge.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.critedge.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %.val13, i64 %indvars.iv
  %i.h = load i32, ptr %i.g, align 4, !tbaa !47
  %i.i = icmp eq i32 %i.h, %1
  br i1 %i.i, label %.split.loop.exit14, label %bb.b

.split.loop.exit14:                               ; preds = %.critedge
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %.val13, i64 %indvars.iv
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !47
  br label %.split.loop.exit

.split.loop.exit:                                 ; preds = %bb.b, %bb.a, %.split.loop.exit14
  %.010 = phi i32 [ %i.l, %.split.loop.exit14 ], [ -1, %bb.a ], [ -1, %bb.b ]
  ret i32 %.010
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @Gia_ManMulFindNextEntry2(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 4          ; 3 uses
  %.val59 = load i32, ptr %i.a, align 4, !tbaa !51 ; 2 uses
  %i.b = icmp sgt i32 %.val59, 0
  br i1 %i.b, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 8
  %.val67 = load ptr, ptr %i.c, align 8, !tbaa !53 ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 8
  %.val69 = load ptr, ptr %i.d, align 8, !tbaa !57 ; 2 uses
  %wide.trip.count = zext nneg i32 %.val59 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %Vec_IntFind.exit.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Vec_IntFind.exit.thread ] ; 2 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %.val67, i64 %indvars.iv
  %i.f = load i32, ptr %i.e, align 4, !tbaa !47
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [16 x i8], ptr %.val69, i64 %i.g ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 4
  %.val58 = load i32, ptr %i.i, align 4, !tbaa !51 ; 2 uses
  %i.j = icmp sgt i32 %.val58, 0
  br i1 %i.j, label %.lr.ph.i, label %Vec_IntFind.exit.thread

.lr.ph.i:                                         ; preds = %bb.b
  %i.k = getelementptr i8, ptr %i.h, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !53   ; 3 uses
  %wide.trip.count.i = zext nneg i32 %.val58 to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.d ] ; 3 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i
  %i.n = load i32, ptr %i.m, align 4, !tbaa !47
  %i.o = icmp eq i32 %i.n, %2
  br i1 %i.o, label %Vec_IntFind.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Vec_IntFind.exit.thread, label %bb.c, !llvm.loop !6

Vec_IntFind.exit:                                 ; preds = %bb.c
  %6 = trunc nuw nsw i64 %indvars.iv.i to i32
  switch i32 %6, label %unreachable [
    i32 -1, label %Vec_IntFind.exit.thread
    i32 1, label %.loopexit
    i32 2, label %bb.e
    i32 3, label %7
  ]

7:                                                ; preds = %Vec_IntFind.exit
  br label %bb.e

unreachable:                                      ; preds = %Vec_IntFind.exit
  unreachable

.loopexit:                                        ; preds = %Vec_IntFind.exit
  br label %bb.e

bb.e:                                             ; preds = %Vec_IntFind.exit, %.loopexit, %7
  %.sink154 = phi i64 [ 8, %.loopexit ], [ 4, %7 ], [ 4, %Vec_IntFind.exit ]
  %.sink = phi i64 [ 12, %.loopexit ], [ 8, %7 ], [ 12, %Vec_IntFind.exit ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sink154
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sink
  %.0 = load i32, ptr %i.q, align 4, !tbaa !47    ; 3 uses
  %.048 = load i32, ptr %i.p, align 4, !tbaa !47  ; 3 uses
  %i.r = getelementptr i8, ptr %3, i64 4
  %.val.i = load i32, ptr %i.r, align 4, !tbaa !51 ; 3 uses
  %i.s = icmp sgt i32 %.val.i, 1
  br i1 %i.s, label %.critedge.lr.ph.i, label %Gia_ManMulFindNextEntryCount.exit80

.critedge.lr.ph.i:                                ; preds = %bb.e
  %i.t = getelementptr i8, ptr %3, i64 8
  %.val13.i = load ptr, ptr %i.t, align 8, !tbaa !53 ; 4 uses
  br label %.critedge.i

bb.f:                                             ; preds = %.critedge.i
  %indvars.iv.next.i71 = add nuw nsw i64 %indvars.iv.i70, 2 ; 2 uses
  %i.u = trunc i64 %indvars.iv.next.i71 to i32
  %i.v = or disjoint i32 %i.u, 1
  %i.w = icmp slt i32 %i.v, %.val.i
  br i1 %i.w, label %.critedge.i, label %.critedge.lr.ph.i74, !llvm.loop !10

.critedge.i:                                      ; preds = %bb.f, %.critedge.lr.ph.i
  %indvars.iv.i70 = phi i64 [ 0, %.critedge.lr.ph.i ], [ %indvars.iv.next.i71, %bb.f ] ; 3 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %.val13.i, i64 %indvars.iv.i70
  %i.y = load i32, ptr %i.x, align 4, !tbaa !47
  %i.z = icmp eq i32 %i.y, %.048
  br i1 %i.z, label %.split.loop.exit14.i, label %bb.f

.split.loop.exit14.i:                             ; preds = %.critedge.i
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %.val13.i, i64 %indvars.iv.i70
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !47
  br label %.critedge.lr.ph.i74

.critedge.lr.ph.i74:                              ; preds = %bb.f, %.split.loop.exit14.i
  %.010.i = phi i32 [ %i.ac, %.split.loop.exit14.i ], [ -1, %bb.f ] ; 2 uses
  br label %.critedge.i76

bb.g:                                             ; preds = %.critedge.i76
  %indvars.iv.next.i78 = add nuw nsw i64 %indvars.iv.i77, 2 ; 2 uses
  %i.ad = trunc i64 %indvars.iv.next.i78 to i32
  %i.ae = or disjoint i32 %i.ad, 1
  %i.af = icmp slt i32 %i.ae, %.val.i
  br i1 %i.af, label %.critedge.i76, label %Gia_ManMulFindNextEntryCount.exit80, !llvm.loop !10

.critedge.i76:                                    ; preds = %bb.g, %.critedge.lr.ph.i74
  %indvars.iv.i77 = phi i64 [ 0, %.critedge.lr.ph.i74 ], [ %indvars.iv.next.i78, %bb.g ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %.val13.i, i64 %indvars.iv.i77
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !47
  %i.ai = icmp eq i32 %i.ah, %.0
  br i1 %i.ai, label %.split.loop.exit14.i79, label %bb.g

.split.loop.exit14.i79:                           ; preds = %.critedge.i76
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.val13.i, i64 %indvars.iv.i77
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !47
  br label %Gia_ManMulFindNextEntryCount.exit80

Gia_ManMulFindNextEntryCount.exit80:              ; preds = %bb.g, %bb.e, %.split.loop.exit14.i79
  %.010.i91 = phi i32 [ %.010.i, %.split.loop.exit14.i79 ], [ -1, %bb.e ], [ %.010.i, %bb.g ]
  %.010.i73 = phi i32 [ %i.al, %.split.loop.exit14.i79 ], [ -1, %bb.e ], [ -1, %bb.g ]
  %.not = icmp sgt i32 %.010.i91, %.010.i73       ; 2 uses
  %i.am = select i1 %.not, i32 %.0, i32 %.048
  store i32 %i.am, ptr %4, align 4, !tbaa !47
  %i.an = select i1 %.not, i32 %.048, i32 %.0
  store i32 %i.an, ptr %5, align 4, !tbaa !47
  %.val57120 = load i32, ptr %i.a, align 4, !tbaa !51 ; 2 uses
  %i.ao = icmp sgt i32 %.val57120, 0
  br i1 %i.ao, label %.lr.ph122, label %.critedge

.lr.ph122:                                        ; preds = %Gia_ManMulFindNextEntryCount.exit80, %Vec_IntFind.exit88.thread
  %.val57135 = phi i32 [ %.val57, %Vec_IntFind.exit88.thread ], [ %.val57120, %Gia_ManMulFindNextEntryCount.exit80 ] ; 2 uses
  %indvars.iv132 = phi i64 [ %indvars.iv.next133, %Vec_IntFind.exit88.thread ], [ 0, %Gia_ManMulFindNextEntryCount.exit80 ] ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %.val67, i64 %indvars.iv132
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !47
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds [16 x i8], ptr %.val69, i64 %i.ar ; 2 uses
  %i.at = getelementptr i8, ptr %i.as, i64 4      ; 2 uses
  %.val = load i32, ptr %i.at, align 4, !tbaa !51 ; 2 uses
  %i.au = icmp sgt i32 %.val, 0
  br i1 %i.au, label %.lr.ph.i82, label %Vec_IntFind.exit88.thread

.lr.ph.i82:                                       ; preds = %.lr.ph122
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !53
  %wide.trip.count.i83 = zext nneg i32 %.val to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i82
  %indvars.iv.i84 = phi i64 [ 0, %.lr.ph.i82 ], [ %indvars.iv.next.i85, %bb.i ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv.i84
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !47
  %i.az = icmp eq i32 %i.ay, %2
  br i1 %i.az, label %Vec_IntFind.exit88, label %bb.i

bb.i:                                             ; preds = %bb.h
  %indvars.iv.next.i85 = add nuw nsw i64 %indvars.iv.i84, 1 ; 2 uses
  %exitcond.not.i86 = icmp eq i64 %indvars.iv.next.i85, %wide.trip.count.i83
  br i1 %exitcond.not.i86, label %Vec_IntFind.exit88.thread, label %bb.h, !llvm.loop !6

Vec_IntFind.exit88:                               ; preds = %bb.h
  store i32 0, ptr %i.at, align 4, !tbaa !51
  %.val57.pre = load i32, ptr %i.a, align 4, !tbaa !51
  br label %Vec_IntFind.exit88.thread

Vec_IntFind.exit88.thread:                        ; preds = %bb.i, %Vec_IntFind.exit88, %.lr.ph122
  %.val57 = phi i32 [ %.val57135, %.lr.ph122 ], [ %.val57.pre, %Vec_IntFind.exit88 ], [ %.val57135, %bb.i ] ; 2 uses
  %indvars.iv.next133 = add nuw nsw i64 %indvars.iv132, 1 ; 2 uses
  %i.ba = sext i32 %.val57 to i64
  %i.bb = icmp slt i64 %indvars.iv.next133, %i.ba
  br i1 %i.bb, label %.lr.ph122, label %.critedge, !llvm.loop !103

Vec_IntFind.exit.thread:                          ; preds = %bb.d, %Vec_IntFind.exit, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.b, !llvm.loop !104

.critedge:                                        ; preds = %Vec_IntFind.exit.thread, %Vec_IntFind.exit88.thread, %bb.a, %Gia_ManMulFindNextEntryCount.exit80
  %.355 = phi i32 [ 1, %Gia_ManMulFindNextEntryCount.exit80 ], [ 0, %bb.a ], [ 1, %Vec_IntFind.exit88.thread ], [ 0, %Vec_IntFind.exit.thread ]
  ret i32 %.355
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @Gia_ManMulFindArg2(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) initializes((4, 8)) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #5 {
._crit_edge:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  store i32 %3, ptr %i.a, align 4, !tbaa !47
  store i32 %4, ptr %i.b, align 4, !tbaa !47
  %i.c = tail call ptr @Gia_ManMulFindCounts(ptr noundef %0, ptr noundef %1) ; 6 uses
  %i.d = getelementptr i8, ptr %i.c, i64 4
  %.val42 = load i32, ptr %i.d, align 4, !tbaa !51 ; 2 uses
  %i.e = icmp sgt i32 %.val42, 1
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 6 uses
  store i32 0, ptr %i.f, align 4, !tbaa !51
  br i1 %i.e, label %.critedge2.lr.ph, label %.loopexit

.critedge2.lr.ph:                                 ; preds = %._crit_edge
  %i.g = getelementptr i8, ptr %i.c, i64 8
  %.val45 = load ptr, ptr %i.g, align 8, !tbaa !53
  br label %.critedge2

bb.a:                                             ; preds = %.critedge2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.h = trunc i64 %indvars.iv.next to i32
  %i.i = or disjoint i32 %i.h, 1
  %i.j = icmp slt i32 %i.i, %.val42
  br i1 %i.j, label %.critedge2, label %.loopexit, !llvm.loop !105

.critedge2:                                       ; preds = %.critedge2.lr.ph, %bb.a
  %indvars.iv = phi i64 [ 0, %.critedge2.lr.ph ], [ %indvars.iv.next, %bb.a ] ; 2 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %.val45, i64 %indvars.iv
  %i.l = load i32, ptr %i.k, align 4, !tbaa !47   ; 3 uses
  %i.m = icmp eq i32 %i.l, %3                     ; 2 uses
  %i.n = icmp eq i32 %i.l, %4
  %or.cond = or i1 %i.m, %i.n
  br i1 %or.cond, label %bb.b, label %bb.a

bb.b:                                             ; preds = %.critedge2
  %i.o = select i1 %i.m, i32 %4, i32 %3
  %i.p = load i32, ptr %2, align 8, !tbaa !52
  %i.q = icmp eq i32 %i.p, 0
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !53   ; 3 uses
  br i1 %i.q, label %bb.c, label %Vec_IntPush.exit

bb.c:                                             ; preds = %bb.b
  %.not9.i.i = icmp eq ptr %i.s, null
  br i1 %.not9.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.s, i64 noundef 64) #23
  %.pre69.pre = load i32, ptr %i.f, align 4, !tbaa !51
  br label %Vec_IntGrow.exit11.sink.split.i

bb.e:                                             ; preds = %bb.c
  %i.u = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #24
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.d, %bb.e
  %.pre69 = phi i32 [ %.pre69.pre, %bb.d ], [ 0, %bb.e ]
  %i.v = phi ptr [ %i.t, %bb.d ], [ %i.u, %bb.e ] ; 2 uses
  store ptr %i.v, ptr %i.r, align 8, !tbaa !53
  store i32 16, ptr %2, align 8, !tbaa !52
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.b, %Vec_IntGrow.exit11.sink.split.i
  %i.w = phi i32 [ %.pre69, %Vec_IntGrow.exit11.sink.split.i ], [ 0, %bb.b ] ; 2 uses
  %i.x = phi ptr [ %i.v, %Vec_IntGrow.exit11.sink.split.i ], [ %i.s, %bb.b ] ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.z = add nsw i32 %i.w, 1
  store i32 %i.z, ptr %i.f, align 4, !tbaa !51
  %i.aa = sext i32 %i.w to i64
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.aa
  store i32 %i.o, ptr %i.ab, align 4, !tbaa !47
  %i.ac = load i32, ptr %i.f, align 4, !tbaa !51  ; 7 uses
  %i.ad = load i32, ptr %2, align 8, !tbaa !52
  %i.ae = icmp eq i32 %i.ac, %i.ad
  br i1 %i.ae, label %bb.f, label %Vec_IntPush.exit55

bb.f:                                             ; preds = %Vec_IntPush.exit
  %i.af = icmp slt i32 %i.ac, 16
  br i1 %i.af, label %Vec_IntGrow.exit11.sink.split.i51, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = icmp samesign ult i32 %i.ac, 1073741823
  %i.ah = shl nuw nsw i32 %i.ac, 1
  %spec.select.i48 = select i1 %i.ag, i32 %i.ah, i32 2147483647 ; 3 uses
  %.not.i9.i49 = icmp samesign ult i32 %i.ac, %spec.select.i48
  br i1 %.not.i9.i49, label %bb.h, label %Vec_IntPush.exit55

bb.h:                                             ; preds = %bb.g
  %i.ai = zext nneg i32 %spec.select.i48 to i64
  %i.aj = shl nuw nsw i64 %i.ai, 2
  br label %Vec_IntGrow.exit11.sink.split.i51

Vec_IntGrow.exit11.sink.split.i51:                ; preds = %bb.f, %bb.h
  %.sink = phi i64 [ %i.aj, %bb.h ], [ 64, %bb.f ]
  %spec.select.sink.i52 = phi i32 [ %spec.select.i48, %bb.h ], [ 16, %bb.f ]
  %i.ak = tail call ptr @realloc(ptr noundef nonnull %i.x, i64 noundef %.sink) #23 ; 2 uses
  store ptr %i.ak, ptr %i.y, align 8, !tbaa !53
  store i32 %spec.select.sink.i52, ptr %2, align 8, !tbaa !52
  %.pre70 = load i32, ptr %i.f, align 4, !tbaa !51
  br label %Vec_IntPush.exit55

Vec_IntPush.exit55:                               ; preds = %Vec_IntPush.exit, %bb.g, %Vec_IntGrow.exit11.sink.split.i51
  %i.al = phi i32 [ %i.ac, %Vec_IntPush.exit ], [ %i.ac, %bb.g ], [ %.pre70, %Vec_IntGrow.exit11.sink.split.i51 ] ; 2 uses
  %i.am = phi ptr [ %i.x, %Vec_IntPush.exit ], [ %i.x, %bb.g ], [ %i.ak, %Vec_IntGrow.exit11.sink.split.i51 ]
  %i.an = add nsw i32 %i.al, 1
  store i32 %i.an, ptr %i.f, align 4, !tbaa !51
  %i.ao = sext i32 %i.al to i64
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.ao
  store i32 %i.l, ptr %i.ap, align 4, !tbaa !47
  br label %.loopexit

.loopexit:                                        ; preds = %bb.a, %._crit_edge, %Vec_IntPush.exit55
  %i.aq = getelementptr i8, ptr %2, i64 8
  %.val43 = load ptr, ptr %i.aq, align 8, !tbaa !53
  %i.ar = getelementptr inbounds nuw i8, ptr %.val43, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !47
  %i.at = call i32 @Gia_ManMulFindNextEntry2(ptr noundef %0, ptr noundef %1, i32 noundef %i.as, ptr noundef %i.c, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %.not61 = icmp eq i32 %i.at, 0
  br i1 %.not61, label %._crit_edge63, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit, %.lr.ph
  %i.au = load i32, ptr %i.a, align 4, !tbaa !47
  %i.av = load i32, ptr %i.b, align 4, !tbaa !47  ; 2 uses
  tail call fastcc void @Vec_IntPushTwo(ptr noundef nonnull %2, i32 noundef %i.au, i32 noundef %i.av)
  %i.aw = call i32 @Gia_ManMulFindNextEntry2(ptr noundef %0, ptr noundef %1, i32 noundef %i.av, ptr noundef %i.c, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %.not = icmp eq i32 %i.aw, 0
  br i1 %.not, label %._crit_edge63, label %.lr.ph, !llvm.loop !106

._crit_edge63:                                    ; preds = %.lr.ph, %.loopexit
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !53 ; 2 uses
  %.not.i = icmp eq ptr %i.ay, null
  br i1 %.not.i, label %Vec_IntFree.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge63
  tail call void @free(ptr noundef nonnull %i.ay) #22
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %._crit_edge63, %bb.i
  tail call void @free(ptr noundef nonnull %i.c) #22
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @Gia_ManMulFindAddEntry(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4          ; 10 uses
  %.val20 = load i32, ptr %i.a, align 4, !tbaa !51 ; 4 uses
  %i.b = icmp sgt i32 %.val20, 2
  br i1 %i.b, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val23 = load ptr, ptr %i.c, align 8, !tbaa !53
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %.val23, i64 %indvars.iv ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !47
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !47
  %i.h = icmp eq i32 %1, %i.e
  %i.i = icmp eq i32 %2, %i.g
  %or.cond = select i1 %i.h, i1 %i.i, i1 false
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = trunc nuw nsw i64 %indvars.iv to i32
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !47
  %i.m = add nsw i32 %i.l, 1
  store i32 %i.m, ptr %i.k, align 4, !tbaa !47
  %.val.pr = load i32, ptr %i.a, align 4, !tbaa !51
  br label %.critedge

bb.d:                                             ; preds = %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.n = trunc i64 %indvars.iv to i32
  %i.o = add i32 %i.n, 5
  %i.p = icmp slt i32 %i.o, %.val20
  br i1 %i.p, label %bb.b, label %.critedge.loopexit.loopexit, !llvm.loop !107

.critedge.loopexit.loopexit:                      ; preds = %bb.d
  %i.q = trunc nuw i64 %indvars.iv.next to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %.critedge.loopexit.loopexit, %bb.c
  %.030 = phi i32 [ %i.j, %bb.c ], [ 0, %bb.a ], [ %i.q, %.critedge.loopexit.loopexit ] ; 8 uses
end_hunk_1
begin_hunk_2_@Gia_ManMulFindXors:bb.a
  %i.be = load ptr, ptr %i.j, align 8, !tbaa !53  ; 2 uses
  %.not9.i.i.peel = icmp eq ptr %i.be, null
  br i1 %.not9.i.i.peel, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bf = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.be, i64 noundef 64) #23
  br label %Vec_IntGrow.exit11.sink.split.i.peel

bb.l:                                             ; preds = %bb.j
  %i.bg = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #24
  br label %Vec_IntGrow.exit11.sink.split.i.peel

Vec_IntGrow.exit11.sink.split.i.peel:             ; preds = %bb.l, %bb.k, %bb.i, %bb.h
  %storemerge.peel = phi ptr [ %i.bg, %bb.l ], [ %i.bf, %bb.k ], [ %i.bc, %bb.h ], [ %i.bd, %bb.i ] ; 2 uses
  %spec.select.sink.i.peel = phi i32 [ 16, %bb.l ], [ 16, %bb.k ], [ %spec.select.i.peel, %bb.h ], [ %spec.select.i.peel, %bb.i ]
  store ptr %storemerge.peel, ptr %i.j, align 8, !tbaa !53
  store i32 %spec.select.sink.i.peel, ptr %i.g, align 8, !tbaa !52
  br label %Vec_IntPush.exit.peel

Vec_IntPush.exit.peel:                            ; preds = %.Vec_IntPush.exit.peel_crit_edge, %Vec_IntGrow.exit11.sink.split.i.peel, %bb.f
  %i.bh = phi ptr [ %.pre, %.Vec_IntPush.exit.peel_crit_edge ], [ %storemerge.peel, %Vec_IntGrow.exit11.sink.split.i.peel ], [ %.pre130, %bb.f ]
  %i.bi = add nsw i32 %i.ah, 1                    ; 3 uses
  store i32 %i.bi, ptr %i.h, align 4, !tbaa !51
  %i.bj = sext i32 %i.ah to i64
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %i.bj
  store i32 %i.am, ptr %i.bk, align 4, !tbaa !47
  %.val57.peel.pre = load i32, ptr %i.aj, align 4, !tbaa !51
  br label %bb.m

bb.m:                                             ; preds = %Vec_IntPush.exit.peel, %.lr.ph
  %i.bl = phi i32 [ %i.bi, %Vec_IntPush.exit.peel ], [ %i.ag, %.lr.ph ] ; 2 uses
  %.val57.peel = phi i32 [ %.val57.peel.pre, %Vec_IntPush.exit.peel ], [ %.val57105, %.lr.ph ] ; 2 uses
  %i.bm = phi i32 [ %i.bi, %Vec_IntPush.exit.peel ], [ %i.ah, %.lr.ph ] ; 2 uses
  %i.bn = icmp sgt i32 %.val57.peel, 1
  br i1 %i.bn, label %.peel.next, label %.critedge4.loopexit

.peel.next:                                       ; preds = %bb.m, %bb.w
  %.val57134 = phi i32 [ %.val57, %bb.w ], [ %.val57.peel, %bb.m ]
  %i.bo = phi i32 [ %i.cq, %bb.w ], [ %i.bl, %bb.m ] ; 8 uses
  %i.bp = phi i32 [ %i.cr, %bb.w ], [ %i.bm, %bb.m ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.w ], [ 1, %bb.m ] ; 2 uses
  %.val60 = load ptr, ptr %i.al, align 8, !tbaa !53
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %.val60, i64 %indvars.iv
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !47 ; 3 uses
  %i.bs = ashr i32 %i.br, 5
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr inbounds [4 x i8], ptr %.val71171, i64 %i.bt ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !47 ; 2 uses
  %i.bw = and i32 %i.br, 31
  %i.bx = shl nuw i32 1, %i.bw                    ; 2 uses
  %i.by = and i32 %i.bv, %i.bx
  %.not56 = icmp eq i32 %i.by, 0
  br i1 %.not56, label %bb.n, label %bb.w

bb.n:                                             ; preds = %.peel.next
  %i.bz = or i32 %i.bv, %i.bx
  store i32 %i.bz, ptr %i.bu, align 4, !tbaa !47
  %i.ca = load i32, ptr %i.g, align 8, !tbaa !52
  %i.cb = icmp eq i32 %i.bo, %i.ca
  br i1 %i.cb, label %bb.o, label %.Vec_IntPush.exit_crit_edge

.Vec_IntPush.exit_crit_edge:                      ; preds = %bb.n
  %.pre132 = load ptr, ptr %i.j, align 8, !tbaa !53
  br label %Vec_IntPush.exit

bb.o:                                             ; preds = %bb.n
  %i.cc = icmp slt i32 %i.bo, 16
  br i1 %i.cc, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.cd = load ptr, ptr %i.j, align 8, !tbaa !53  ; 2 uses
  %.not9.i.i = icmp eq ptr %i.cd, null
  br i1 %.not9.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ce = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.cd, i64 noundef 64) #23
  br label %Vec_IntGrow.exit11.sink.split.i

bb.r:                                             ; preds = %bb.p
  %i.cf = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #24
  br label %Vec_IntGrow.exit11.sink.split.i

bb.s:                                             ; preds = %bb.o
  %i.cg = icmp samesign ult i32 %i.bo, 1073741823
  %i.ch = shl nuw nsw i32 %i.bo, 1
  %spec.select.i = select i1 %i.cg, i32 %i.ch, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.bo, %spec.select.i
  %.pre133 = load ptr, ptr %i.j, align 8, !tbaa !53 ; 3 uses
  br i1 %.not.i9.i, label %bb.t, label %Vec_IntPush.exit

bb.t:                                             ; preds = %bb.s
  %.not9.i10.i = icmp eq ptr %.pre133, null
  %i.ci = zext nneg i32 %spec.select.i to i64
  %i.cj = shl nuw nsw i64 %i.ci, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ck = tail call ptr @realloc(ptr noundef nonnull %.pre133, i64 noundef %i.cj) #23
  br label %Vec_IntGrow.exit11.sink.split.i

bb.v:                                             ; preds = %bb.t
  %i.cl = tail call noalias ptr @malloc(i64 noundef %i.cj) #24
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.u, %bb.v, %bb.q, %bb.r
  %storemerge = phi ptr [ %i.cf, %bb.r ], [ %i.ce, %bb.q ], [ %i.ck, %bb.u ], [ %i.cl, %bb.v ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.r ], [ 16, %bb.q ], [ %spec.select.i, %bb.u ], [ %spec.select.i, %bb.v ]
  store ptr %storemerge, ptr %i.j, align 8, !tbaa !53
  store i32 %spec.select.sink.i, ptr %i.g, align 8, !tbaa !52
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %.Vec_IntPush.exit_crit_edge, %bb.s, %Vec_IntGrow.exit11.sink.split.i
  %i.cm = phi ptr [ %.pre132, %.Vec_IntPush.exit_crit_edge ], [ %.pre133, %bb.s ], [ %storemerge, %Vec_IntGrow.exit11.sink.split.i ]
  %i.cn = add nsw i32 %i.bo, 1                    ; 3 uses
  store i32 %i.cn, ptr %i.h, align 4, !tbaa !51
  %i.co = sext i32 %i.bo to i64
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.cm, i64 %i.co
  store i32 %i.br, ptr %i.cp, align 4, !tbaa !47
  %.val57.pre = load i32, ptr %i.aj, align 4, !tbaa !51
  br label %bb.w

bb.w:                                             ; preds = %.peel.next, %Vec_IntPush.exit
  %.val57 = phi i32 [ %.val57134, %.peel.next ], [ %.val57.pre, %Vec_IntPush.exit ] ; 2 uses
  %i.cq = phi i32 [ %i.bo, %.peel.next ], [ %i.cn, %Vec_IntPush.exit ] ; 2 uses
  %i.cr = phi i32 [ %i.bp, %.peel.next ], [ %i.cn, %Vec_IntPush.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cs = sext i32 %.val57 to i64
  %i.ct = icmp slt i64 %indvars.iv.next, %i.cs
  br i1 %i.ct, label %.peel.next, label %.critedge4.loopexit, !llvm.loop !131

.critedge4.loopexit:                              ; preds = %bb.w, %bb.m
  %i.cu = phi i32 [ %i.bl, %bb.m ], [ %i.cq, %bb.w ]
  %i.cv = phi i32 [ %i.bm, %bb.m ], [ %i.cr, %bb.w ]
  %.pre136 = load i32, ptr %i.ab, align 4, !tbaa !47
  br label %.critedge4

.critedge4:                                       ; preds = %.critedge4.loopexit, %.lr.ph108
  %i.cw = phi i32 [ %.pre136, %.critedge4.loopexit ], [ %i.af, %.lr.ph108 ] ; 2 uses
  %i.cx = phi i32 [ %i.cu, %.critedge4.loopexit ], [ %i.ag, %.lr.ph108 ]
  %i.cy = phi i32 [ %i.cv, %.critedge4.loopexit ], [ %i.ah, %.lr.ph108 ]
  %indvars.iv.next118 = add nsw i64 %indvars.iv117, 1 ; 2 uses
  %i.cz = sext i32 %i.cw to i64
  %i.da = icmp slt i64 %indvars.iv.next118, %i.cz
  br i1 %i.da, label %.lr.ph108, label %.critedge2.loopexit, !llvm.loop !132

.critedge2.loopexit:                              ; preds = %.critedge4
  %.pre137 = load i32, ptr %i.a, align 8, !tbaa !56
  br label %.critedge2

.critedge2:                                       ; preds = %.critedge2.loopexit, %bb.c
  %i.db = phi i32 [ %.pre137, %.critedge2.loopexit ], [ %i.y, %bb.c ] ; 5 uses
  %i.dc = trunc nsw i64 %indvars.iv123 to i32
  %i.dd = icmp eq i32 %i.db, %i.dc
  br i1 %i.dd, label %bb.x, label %Vec_WecPushLevel.exit

bb.x:                                             ; preds = %.critedge2
  %i.de = icmp samesign ult i64 %indvars.iv123, 16
  %.not13.i.i = icmp eq ptr %.val8.pre.i77139, null ; 2 uses
  br i1 %i.de, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  br i1 %.not13.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.df = tail call dereferenceable_or_null(256) ptr @realloc(ptr noundef nonnull %.val8.pre.i77139, i64 noundef 256) #23
  br label %Vec_WecGrow.exit.i

bb.aa:                                            ; preds = %bb.y
  %i.dg = tail call noalias dereferenceable_or_null(256) ptr @malloc(i64 noundef 256) #24
  br label %Vec_WecGrow.exit.i

Vec_WecGrow.exit.i:                               ; preds = %bb.aa, %bb.z
  %i.dh = phi ptr [ %i.df, %bb.z ], [ %i.dg, %bb.aa ] ; 3 uses
  store ptr %i.dh, ptr %i.d, align 8, !tbaa !57
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %i.dh, i64 %indvars.iv123
  %i.dj = sub nsw i32 16, %i.db
  %i.dk = sext i32 %i.dj to i64
  %i.dl = shl nsw i64 %i.dk, 4
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.di, i8 0, i64 %i.dl, i1 false)
  br label %Vec_WecPushLevel.exit.thread

bb.ab:                                            ; preds = %bb.x
  %i.dm = shl nuw nsw i64 %indvars.iv123, 5       ; 2 uses
  br i1 %.not13.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dn = tail call ptr @realloc(ptr noundef nonnull %.val8.pre.i77139, i64 noundef %i.dm) #23
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.do = tail call noalias ptr @malloc(i64 noundef %i.dm) #24
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.dp = phi ptr [ %i.dn, %bb.ac ], [ %i.do, %bb.ad ] ; 3 uses
  store ptr %i.dp, ptr %i.d, align 8, !tbaa !57
  %i.dq = getelementptr inbounds nuw [16 x i8], ptr %i.dp, i64 %indvars.iv123
  %i.dr = shl nsw i64 %indvars.iv123, 4
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.dq, i8 0, i64 %i.dr, i1 false)
  %indvars.iv123.tr = trunc nsw i64 %indvars.iv123 to i32
  %i.ds = shl nsw i32 %indvars.iv123.tr, 1
  br label %Vec_WecPushLevel.exit.thread

Vec_WecPushLevel.exit.thread:                     ; preds = %Vec_WecGrow.exit.i, %bb.ae
  %.sink = phi i32 [ 16, %Vec_WecGrow.exit.i ], [ %i.ds, %bb.ae ] ; 2 uses
  %.ph = phi ptr [ %i.dh, %Vec_WecGrow.exit.i ], [ %i.dp, %bb.ae ] ; 2 uses
  store i32 %.sink, ptr %i.a, align 8, !tbaa !56
  %i.dt = getelementptr inbounds nuw [16 x i8], ptr %.ph, i64 %indvars.iv123 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  br label %Vec_WecPushLevel.exit84

Vec_WecPushLevel.exit:                            ; preds = %.critedge2
  %i.dv = or disjoint i64 %indvars.iv123, 1       ; 7 uses
  %i.dw = getelementptr inbounds nuw [16 x i8], ptr %.val8.pre.i77139, i64 %i.dv ; 4 uses
  %i.dx = getelementptr inbounds i8, ptr %i.dw, i64 -16 ; 3 uses
  %i.dy = trunc nsw i64 %i.dv to i32
  %i.dz = icmp eq i32 %i.db, %i.dy
  br i1 %i.dz, label %bb.af, label %Vec_WecPushLevel.exit84

bb.af:                                            ; preds = %Vec_WecPushLevel.exit
  %i.ea = icmp samesign ult i64 %indvars.iv123, 15
  %.not13.i.i81 = icmp eq ptr %.val8.pre.i77139, null ; 2 uses
  br i1 %i.ea, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  br i1 %.not13.i.i81, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.eb = tail call dereferenceable_or_null(256) ptr @realloc(ptr noundef nonnull %.val8.pre.i77139, i64 noundef 256) #23
  br label %Vec_WecGrow.exit.i83

bb.ai:                                            ; preds = %bb.ag
  %i.ec = tail call noalias dereferenceable_or_null(256) ptr @malloc(i64 noundef 256) #24
  br label %Vec_WecGrow.exit.i83

Vec_WecGrow.exit.i83:                             ; preds = %bb.ai, %bb.ah
  %i.ed = phi ptr [ %i.eb, %bb.ah ], [ %i.ec, %bb.ai ] ; 3 uses
  store ptr %i.ed, ptr %i.d, align 8, !tbaa !57
  %i.ee = getelementptr inbounds nuw [16 x i8], ptr %i.ed, i64 %i.dv
  %i.ef = sub nsw i32 16, %i.db
  %i.eg = sext i32 %i.ef to i64
  %i.eh = shl nsw i64 %i.eg, 4
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ee, i8 0, i64 %i.eh, i1 false)
  store i32 16, ptr %i.a, align 8, !tbaa !56
  br label %Vec_WecPushLevel.exit84

bb.aj:                                            ; preds = %bb.af
  %i.ei = shl nuw nsw i64 %i.dv, 5                ; 2 uses
  br i1 %.not13.i.i81, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ej = tail call ptr @realloc(ptr noundef nonnull %.val8.pre.i77139, i64 noundef %i.ei) #23
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.ek = tail call noalias ptr @malloc(i64 noundef %i.ei) #24
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.el = phi ptr [ %i.ej, %bb.ak ], [ %i.ek, %bb.al ] ; 3 uses
  store ptr %i.el, ptr %i.d, align 8, !tbaa !57
  %i.em = getelementptr inbounds nuw [16 x i8], ptr %i.el, i64 %i.dv
  %i.en = shl nsw i64 %i.dv, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.em, i8 0, i64 %i.en, i1 false)
  %.tr = trunc nsw i64 %i.dv to i32
  %i.eo = shl nsw i32 %.tr, 1                     ; 2 uses
  store i32 %i.eo, ptr %i.a, align 8, !tbaa !56
  br label %Vec_WecPushLevel.exit84

Vec_WecPushLevel.exit84:                          ; preds = %Vec_WecPushLevel.exit, %Vec_WecPushLevel.exit.thread, %Vec_WecGrow.exit.i83, %bb.am
  %i.ep = phi ptr [ %i.dx, %Vec_WecGrow.exit.i83 ], [ %i.dx, %bb.am ], [ %i.dt, %Vec_WecPushLevel.exit.thread ], [ %i.dx, %Vec_WecPushLevel.exit ] ; 2 uses
  %i.eq = phi ptr [ %i.dw, %Vec_WecGrow.exit.i83 ], [ %i.dw, %bb.am ], [ %i.du, %Vec_WecPushLevel.exit.thread ], [ %i.dw, %Vec_WecPushLevel.exit ] ; 2 uses
  %.val8.pre.i77140 = phi ptr [ %i.ed, %Vec_WecGrow.exit.i83 ], [ %i.el, %bb.am ], [ %.ph, %Vec_WecPushLevel.exit.thread ], [ %.val8.pre.i77139, %Vec_WecPushLevel.exit ] ; 2 uses
  %i.er = phi i32 [ 16, %Vec_WecGrow.exit.i83 ], [ %i.eo, %bb.am ], [ %.sink, %Vec_WecPushLevel.exit.thread ], [ %i.db, %Vec_WecPushLevel.exit ]
  %indvars.iv.next124 = add nuw nsw i64 %indvars.iv123, 2 ; 3 uses
  %i.es = getelementptr inbounds nuw [16 x i8], ptr %.val8.pre.i77140, i64 %indvars.iv.next124 ; 3 uses
  %i.et = getelementptr inbounds i8, ptr %i.es, i64 -16 ; 2 uses
  %.val109 = load i32, ptr %i.h, align 4, !tbaa !51
  %i.eu = icmp sgt i32 %.val109, 0
  br i1 %i.eu, label %.lr.ph111, label %.critedge6

.lr.ph111:                                        ; preds = %Vec_WecPushLevel.exit84
  %i.ev = getelementptr inbounds i8, ptr %i.eq, i64 -12 ; 3 uses
  %i.ew = getelementptr inbounds i8, ptr %i.eq, i64 -8 ; 4 uses
  %i.ex = getelementptr inbounds i8, ptr %i.es, i64 -12 ; 3 uses
  %i.ey = getelementptr inbounds i8, ptr %i.es, i64 -8 ; 4 uses
  br label %bb.an

bb.an:                                            ; preds = %.lr.ph111, %bb.bj
  %indvars.iv120 = phi i64 [ 0, %.lr.ph111 ], [ %indvars.iv.next121, %bb.bj ] ; 2 uses
  %.val59 = load ptr, ptr %i.j, align 8, !tbaa !53
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %.val59, i64 %indvars.iv120
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !47 ; 4 uses
  %i.fb = ashr i32 %i.fa, 5
  %i.fc = sext i32 %i.fb to i64                   ; 4 uses
  %i.fd = getelementptr inbounds [4 x i8], ptr %.val71171, i64 %i.fc ; 4 uses
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !47 ; 3 uses
  %i.ff = and i32 %i.fa, 31
  %i.fg = shl nuw i32 1, %i.ff                    ; 5 uses
  %i.fh = and i32 %i.fg, %i.fe
  %.not = icmp eq i32 %i.fh, 0
  br i1 %.not, label %bb.ay, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fi = getelementptr inbounds [4 x i8], ptr %.val71.peel, i64 %i.fc
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !47
  %i.fk = and i32 %i.fj, %i.fg
  %.not53 = icmp eq i32 %i.fk, 0
  br i1 %.not53, label %bb.ap, label %bb.ay

bb.ap:                                            ; preds = %bb.ao
  %i.fl = load i32, ptr %i.ev, align 4, !tbaa !51 ; 7 uses
  %i.fm = load i32, ptr %i.ep, align 8, !tbaa !52
  %i.fn = icmp eq i32 %i.fl, %i.fm
  br i1 %i.fn, label %bb.aq, label %.Vec_IntPush.exit92_crit_edge

.Vec_IntPush.exit92_crit_edge:                    ; preds = %bb.ap
  %.pre142 = load ptr, ptr %i.ew, align 8, !tbaa !53
  br label %Vec_IntPush.exit92

bb.aq:                                            ; preds = %bb.ap
  %i.fo = icmp slt i32 %i.fl, 16
  br i1 %i.fo, label %bb.ar, label %bb.au

bb.ar:                                            ; preds = %bb.aq
  %i.fp = load ptr, ptr %i.ew, align 8, !tbaa !53 ; 2 uses
  %.not9.i.i90 = icmp eq ptr %i.fp, null
  br i1 %.not9.i.i90, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fq = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.fp, i64 noundef 64) #23
  br label %Vec_IntGrow.exit11.sink.split.i88

bb.at:                                            ; preds = %bb.ar
  %i.fr = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #24
  br label %Vec_IntGrow.exit11.sink.split.i88

bb.au:                                            ; preds = %bb.aq
  %i.fs = icmp samesign ult i32 %i.fl, 1073741823
  %i.ft = shl nuw nsw i32 %i.fl, 1
  %spec.select.i85 = select i1 %i.fs, i32 %i.ft, i32 2147483647 ; 4 uses
  %.not.i9.i86 = icmp samesign ult i32 %i.fl, %spec.select.i85
  %.pre143 = load ptr, ptr %i.ew, align 8, !tbaa !53 ; 3 uses
  br i1 %.not.i9.i86, label %bb.av, label %Vec_IntPush.exit92

bb.av:                                            ; preds = %bb.au
  %.not9.i10.i87 = icmp eq ptr %.pre143, null
  %i.fu = zext nneg i32 %spec.select.i85 to i64
  %i.fv = shl nuw nsw i64 %i.fu, 2                ; 2 uses
  br i1 %.not9.i10.i87, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fw = tail call ptr @realloc(ptr noundef nonnull %.pre143, i64 noundef %i.fv) #23
  br label %Vec_IntGrow.exit11.sink.split.i88

bb.ax:                                            ; preds = %bb.av
  %i.fx = tail call noalias ptr @malloc(i64 noundef %i.fv) #24
  br label %Vec_IntGrow.exit11.sink.split.i88

Vec_IntGrow.exit11.sink.split.i88:                ; preds = %bb.aw, %bb.ax, %bb.as, %bb.at
  %i.fy = phi ptr [ %i.fr, %bb.at ], [ %i.fq, %bb.as ], [ %i.fw, %bb.aw ], [ %i.fx, %bb.ax ] ; 2 uses
  %spec.select.sink.i89 = phi i32 [ 16, %bb.at ], [ 16, %bb.as ], [ %spec.select.i85, %bb.aw ], [ %spec.select.i85, %bb.ax ]
  store ptr %i.fy, ptr %i.ew, align 8, !tbaa !53
  store i32 %spec.select.sink.i89, ptr %i.ep, align 8, !tbaa !52
  %.pre144 = load i32, ptr %i.ev, align 4, !tbaa !51
  br label %Vec_IntPush.exit92

Vec_IntPush.exit92:                               ; preds = %.Vec_IntPush.exit92_crit_edge, %bb.au, %Vec_IntGrow.exit11.sink.split.i88
  %i.fz = phi i32 [ %i.fl, %.Vec_IntPush.exit92_crit_edge ], [ %i.fl, %bb.au ], [ %.pre144, %Vec_IntGrow.exit11.sink.split.i88 ] ; 2 uses
  %i.ga = phi ptr [ %.pre142, %.Vec_IntPush.exit92_crit_edge ], [ %.pre143, %bb.au ], [ %i.fy, %Vec_IntGrow.exit11.sink.split.i88 ]
  %i.gb = add nsw i32 %i.fz, 1
  store i32 %i.gb, ptr %i.ev, align 4, !tbaa !51
  %i.gc = sext i32 %i.fz to i64
  %i.gd = getelementptr inbounds [4 x i8], ptr %i.ga, i64 %i.gc
  store i32 %i.fa, ptr %i.gd, align 4, !tbaa !47
  %.pre145 = load i32, ptr %i.fd, align 4, !tbaa !47
  br label %bb.ay

bb.ay:                                            ; preds = %Vec_IntPush.exit92, %bb.ao, %bb.an
  %i.ge = phi i32 [ %.pre145, %Vec_IntPush.exit92 ], [ %i.fe, %bb.ao ], [ %i.fe, %bb.an ] ; 3 uses
  %i.gf = and i32 %i.ge, %i.fg
  %.not54 = icmp eq i32 %i.gf, 0
  br i1 %.not54, label %bb.az, label %bb.bj

bb.az:                                            ; preds = %bb.ay
  %i.gg = getelementptr inbounds [4 x i8], ptr %.val71.peel, i64 %i.fc
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !47
  %i.gi = and i32 %i.gh, %i.fg
  %.not55 = icmp eq i32 %i.gi, 0
  br i1 %.not55, label %bb.bj, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gj = load i32, ptr %i.ex, align 4, !tbaa !51 ; 7 uses
  %i.gk = load i32, ptr %i.et, align 8, !tbaa !52
  %i.gl = icmp eq i32 %i.gj, %i.gk
  br i1 %i.gl, label %bb.bb, label %.Vec_IntPush.exit100_crit_edge

.Vec_IntPush.exit100_crit_edge:                   ; preds = %bb.ba
  %.pre146 = load ptr, ptr %i.ey, align 8, !tbaa !53
  br label %Vec_IntPush.exit100

bb.bb:                                            ; preds = %bb.ba
  %i.gm = icmp slt i32 %i.gj, 16
  br i1 %i.gm, label %bb.bc, label %bb.bf

bb.bc:                                            ; preds = %bb.bb
  %i.gn = load ptr, ptr %i.ey, align 8, !tbaa !53 ; 2 uses
  %.not9.i.i98 = icmp eq ptr %i.gn, null
  br i1 %.not9.i.i98, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.go = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.gn, i64 noundef 64) #23
  br label %Vec_IntGrow.exit11.sink.split.i96

bb.be:                                            ; preds = %bb.bc
  %i.gp = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #24
  br label %Vec_IntGrow.exit11.sink.split.i96

bb.bf:                                            ; preds = %bb.bb
  %i.gq = icmp samesign ult i32 %i.gj, 1073741823
  %i.gr = shl nuw nsw i32 %i.gj, 1
  %spec.select.i93 = select i1 %i.gq, i32 %i.gr, i32 2147483647 ; 4 uses
  %.not.i9.i94 = icmp samesign ult i32 %i.gj, %spec.select.i93
  %.pre147 = load ptr, ptr %i.ey, align 8, !tbaa !53 ; 3 uses
  br i1 %.not.i9.i94, label %bb.bg, label %Vec_IntPush.exit100

bb.bg:                                            ; preds = %bb.bf
  %.not9.i10.i95 = icmp eq ptr %.pre147, null
  %i.gs = zext nneg i32 %spec.select.i93 to i64
  %i.gt = shl nuw nsw i64 %i.gs, 2                ; 2 uses
  br i1 %.not9.i10.i95, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.gu = tail call ptr @realloc(ptr noundef nonnull %.pre147, i64 noundef %i.gt) #23
  br label %Vec_IntGrow.exit11.sink.split.i96

bb.bi:                                            ; preds = %bb.bg
  %i.gv = tail call noalias ptr @malloc(i64 noundef %i.gt) #24
  br label %Vec_IntGrow.exit11.sink.split.i96

Vec_IntGrow.exit11.sink.split.i96:                ; preds = %bb.bh, %bb.bi, %bb.bd, %bb.be
  %i.gw = phi ptr [ %i.gp, %bb.be ], [ %i.go, %bb.bd ], [ %i.gu, %bb.bh ], [ %i.gv, %bb.bi ] ; 2 uses
  %spec.select.sink.i97 = phi i32 [ 16, %bb.be ], [ 16, %bb.bd ], [ %spec.select.i93, %bb.bh ], [ %spec.select.i93, %bb.bi ]
  store ptr %i.gw, ptr %i.ey, align 8, !tbaa !53
  store i32 %spec.select.sink.i97, ptr %i.et, align 8, !tbaa !52
  %.pre148 = load i32, ptr %i.ex, align 4, !tbaa !51
  br label %Vec_IntPush.exit100

Vec_IntPush.exit100:                              ; preds = %.Vec_IntPush.exit100_crit_edge, %bb.bf, %Vec_IntGrow.exit11.sink.split.i96
  %i.gx = phi i32 [ %i.gj, %.Vec_IntPush.exit100_crit_edge ], [ %i.gj, %bb.bf ], [ %.pre148, %Vec_IntGrow.exit11.sink.split.i96 ] ; 2 uses
  %i.gy = phi ptr [ %.pre146, %.Vec_IntPush.exit100_crit_edge ], [ %.pre147, %bb.bf ], [ %i.gw, %Vec_IntGrow.exit11.sink.split.i96 ]
  %i.gz = add nsw i32 %i.gx, 1
  store i32 %i.gz, ptr %i.ex, align 4, !tbaa !51
  %i.ha = sext i32 %i.gx to i64
  %i.hb = getelementptr inbounds [4 x i8], ptr %i.gy, i64 %i.ha
  store i32 %i.fa, ptr %i.hb, align 4, !tbaa !47
  %.pre149 = load i32, ptr %i.fd, align 4, !tbaa !47
  br label %bb.bj

bb.bj:                                            ; preds = %Vec_IntPush.exit100, %bb.az, %bb.ay
  %i.hc = phi i32 [ %.pre149, %Vec_IntPush.exit100 ], [ %i.ge, %bb.az ], [ %i.ge, %bb.ay ]
  %i.hd = xor i32 %i.fg, -1                       ; 2 uses
  %i.he = and i32 %i.hc, %i.hd
  store i32 %i.he, ptr %i.fd, align 4, !tbaa !47
  %i.hf = getelementptr inbounds [4 x i8], ptr %.val71.peel, i64 %i.fc ; 2 uses
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !47
end_hunk_2
begin_hunk_3_@Gia_ManMulFindXors:bb.a
  %indvars.iv.next121 = add nuw nsw i64 %indvars.iv120, 1 ; 2 uses
  %.val = load i32, ptr %i.h, align 4, !tbaa !51
  %i.hi = sext i32 %.val to i64
  %i.hj = icmp slt i64 %indvars.iv.next121, %i.hi
  br i1 %i.hj, label %bb.an, label %.critedge6, !llvm.loop !133

.critedge6:                                       ; preds = %bb.bj, %Vec_WecPushLevel.exit84
  store i32 0, ptr %i.h, align 4, !tbaa !51
  %.val58 = load i32, ptr %i.u, align 4, !tbaa !51
  %i.hk = add nsw i32 %.val58, -1
  %i.hl = sext i32 %i.hk to i64
  %i.hm = icmp slt i64 %indvars.iv.next126, %i.hl
  br i1 %i.hm, label %bb.c, label %..critedge_crit_edge, !llvm.loop !134

..critedge_crit_edge:                             ; preds = %.critedge6
  %i.hn = trunc nsw i64 %indvars.iv.next124 to i32
  store i32 %i.hn, ptr %i.b, align 4, !tbaa !55
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge, %Vec_BitStart.exit74
  ret ptr %i.a
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @Gia_ManFindMulDetectOrder(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = sub nsw i32 %2, %1                       ; 6 uses
  %i.b = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #24 ; 6 uses
  %i.c = add i32 %i.a, -1
  %or.cond.i = icmp ult i32 %i.c, 15
  %spec.store.select.i = select i1 %or.cond.i, i32 16, i32 %i.a ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 3 uses
  store i32 0, ptr %i.d, align 4, !tbaa !51
  store i32 %spec.store.select.i, ptr %i.b, align 8, !tbaa !52
  %.not.i = icmp eq i32 %spec.store.select.i, 0
  br i1 %.not.i, label %Vec_IntAlloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = sext i32 %spec.store.select.i to i64
  %i.f = shl nsw i64 %i.e, 2
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.f) #24
  br label %Vec_IntAlloc.exit

Vec_IntAlloc.exit:                                ; preds = %bb.a, %bb.b
  %i.h = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr %i.h, ptr %i.i, align 8, !tbaa !53
  %i.j = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #24 ; 6 uses
  %i.k = add i32 %2, -1
  %or.cond.i.i = icmp ult i32 %i.k, 15
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 16, i32 %2 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 2 uses
  store i32 %spec.store.select.i.i, ptr %i.j, align 8, !tbaa !52
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %Vec_IntAlloc.exit.thread.i, label %Vec_IntAlloc.exit.i

Vec_IntAlloc.exit.thread.i:                       ; preds = %Vec_IntAlloc.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr null, ptr %i.m, align 8, !tbaa !53
  store i32 %2, ptr %i.l, align 4, !tbaa !51
  br label %Vec_IntStart.exit

Vec_IntAlloc.exit.i:                              ; preds = %Vec_IntAlloc.exit
  %i.n = sext i32 %spec.store.select.i.i to i64
  %i.o = shl nsw i64 %i.n, 2
  %i.p = tail call noalias ptr @malloc(i64 noundef %i.o) #24 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.p, ptr %i.q, align 8, !tbaa !53
  store i32 %2, ptr %i.l, align 4, !tbaa !51
  %.not.i61 = icmp eq ptr %i.p, null
  br i1 %.not.i61, label %Vec_IntStart.exit, label %bb.c

bb.c:                                             ; preds = %Vec_IntAlloc.exit.i
  %i.r = sext i32 %2 to i64
  %i.s = shl nsw i64 %i.r, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.p, i8 0, i64 %i.s, i1 false)
  br label %Vec_IntStart.exit

Vec_IntStart.exit:                                ; preds = %Vec_IntAlloc.exit.thread.i, %Vec_IntAlloc.exit.i, %bb.c
  %.val58 = phi ptr [ null, %Vec_IntAlloc.exit.thread.i ], [ null, %Vec_IntAlloc.exit.i ], [ %i.p, %bb.c ] ; 4 uses
  %i.t = icmp slt i32 %1, %2
  br i1 %i.t, label %.lr.ph, label %.critedge.thread

.lr.ph:                                           ; preds = %Vec_IntStart.exit
  %i.u = getelementptr i8, ptr %0, i64 8
  %.val57 = load ptr, ptr %i.u, align 8, !tbaa !57 ; 5 uses
  %i.v = sext i32 %1 to i64                       ; 4 uses
  %wide.trip.count = sext i32 %2 to i64           ; 2 uses
  %i.w = sub nsw i64 %wide.trip.count, %i.v       ; 3 uses
  %min.iters.check = icmp ult i64 %i.w, 17
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %i.x = and i64 %i.w, 3                          ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  %i.z = select i1 %i.y, i64 4, i64 %i.x
  %n.vec = sub nsw i64 %i.w, %i.z                 ; 2 uses
  %i.aa = add nsw i64 %n.vec, %i.v
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %1, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add <4 x i32> %broadcast.splat, <i32 0, i32 1, i32 2, i32 3>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ splat (i32 -1), %vector.ph ], [ %i.ay, %vector.body ]
  %i.ab = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.ax, %vector.body ]
  %vec.phi121 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.av, %vector.body ]
  %vec.ind = phi <4 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.ac = add i64 %index, %i.v                    ; 4 uses
  %i.ad = getelementptr inbounds [16 x i8], ptr %.val57, i64 %i.ac
  %i.ae = getelementptr [16 x i8], ptr %.val57, i64 %i.ac
  %i.af = getelementptr [16 x i8], ptr %.val57, i64 %i.ac
  %i.ag = getelementptr [16 x i8], ptr %.val57, i64 %i.ac
  %i.ah = getelementptr i8, ptr %i.ad, i64 4
  %i.ai = getelementptr i8, ptr %i.ae, i64 20
  %i.aj = getelementptr i8, ptr %i.af, i64 36
  %i.ak = getelementptr i8, ptr %i.ag, i64 52
  %i.al = load i32, ptr %i.ah, align 4, !tbaa !51
  %i.am = load i32, ptr %i.ai, align 4, !tbaa !51
  %i.an = load i32, ptr %i.aj, align 4, !tbaa !51
  %i.ao = load i32, ptr %i.ak, align 4, !tbaa !51
  %i.ap = insertelement <4 x i32> poison, i32 %i.al, i64 0
  %i.aq = insertelement <4 x i32> %i.ap, i32 %i.am, i64 1
  %i.ar = insertelement <4 x i32> %i.aq, i32 %i.an, i64 2
  %i.as = insertelement <4 x i32> %i.ar, i32 %i.ao, i64 3
  %.fr = freeze <4 x i32> %i.as
  %i.at = icmp eq <4 x i32> %.fr, splat (i32 2)   ; 3 uses
  %i.au = zext <4 x i1> %i.at to <4 x i32>
  %i.av = add <4 x i32> %vec.phi121, %i.au        ; 2 uses
  %i.aw = bitcast <4 x i1> %i.at to i4
  %.not = icmp eq i4 %i.aw, 0                     ; 2 uses
  %i.ax = select i1 %.not, <4 x i1> %i.ab, <4 x i1> %i.at ; 2 uses
  %i.ay = select i1 %.not, <4 x i32> %vec.phi, <4 x i32> %vec.ind ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !136

middle.block:                                     ; preds = %vector.body
  %i.ba = tail call i32 @llvm.experimental.vector.extract.last.active.v4i32(<4 x i32> %i.ay, <4 x i1> %i.ax, i32 -1)
  %i.bb = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.av)
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %i.v, %.lr.ph ], [ %i.aa, %middle.block ]
  %.073.ph = phi i32 [ -1, %.lr.ph ], [ %i.ba, %middle.block ]
  %.03772.ph = phi i32 [ 0, %.lr.ph ], [ %i.bb, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %.073 = phi i32 [ %spec.select46, %scalar.ph ], [ %.073.ph, %scalar.ph.preheader ]
  %.03772 = phi i32 [ %spec.select, %scalar.ph ], [ %.03772.ph, %scalar.ph.preheader ]
  %i.bc = getelementptr inbounds [16 x i8], ptr %.val57, i64 %indvars.iv
  %i.bd = getelementptr i8, ptr %i.bc, i64 4
  %.val53 = load i32, ptr %i.bd, align 4, !tbaa !51
  %i.be = icmp eq i32 %.val53, 2                  ; 2 uses
  %i.bf = zext i1 %i.be to i32
  %spec.select = add nuw nsw i32 %.03772, %i.bf   ; 2 uses
  %i.bg = trunc nsw i64 %indvars.iv to i32
  %spec.select46 = select i1 %i.be, i32 %i.bg, i32 %.073 ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %scalar.ph, !llvm.loop !137

.critedge:                                        ; preds = %scalar.ph
  %i.bh = icmp eq i32 %spec.select, 1
  br i1 %i.bh, label %.preheader.split.us.preheader, label %.critedge.thread

.preheader.split.us.preheader:                    ; preds = %.critedge
  %i.bi = getelementptr i8, ptr %i.j, i64 8
  %i.bj = getelementptr i8, ptr %0, i64 8
  %i.bk = sext i32 %1 to i64
  %wide.trip.count90 = zext nneg i32 %i.a to i64
  %wide.trip.count85 = sext i32 %2 to i64
  %exitcond91.not115 = icmp eq i32 %i.a, 0
  br i1 %exitcond91.not115, label %.loopexit, label %.lr.ph120

.preheader.split.us:                              ; preds = %..critedge2_crit_edge.us
  %exitcond91.not = icmp eq i64 %indvars.iv.next88, %wide.trip.count90
  br i1 %exitcond91.not, label %.loopexit, label %.lr.ph120, !llvm.loop !138

.lr.ph120:                                        ; preds = %.preheader.split.us.preheader, %.preheader.split.us
  %.2.us119 = phi i32 [ %.5.us, %.preheader.split.us ], [ %spec.select46, %.preheader.split.us.preheader ] ; 3 uses
  %indvars.iv87117 = phi i64 [ %indvars.iv.next88, %.preheader.split.us ], [ 0, %.preheader.split.us.preheader ] ; 7 uses
  %i.bl = phi i32 [ %i.bz, %.preheader.split.us ], [ %spec.store.select.i, %.preheader.split.us.preheader ] ; 3 uses
  %i.bm = phi ptr [ %i.by, %.preheader.split.us ], [ %i.h, %.preheader.split.us.preheader ] ; 6 uses
  %.val58.us93116 = phi ptr [ %.val58.us, %.preheader.split.us ], [ %.val58, %.preheader.split.us.preheader ] ; 2 uses
  %i.bn = trunc nsw i64 %indvars.iv87117 to i32
  %i.bo = icmp eq i32 %i.bl, %i.bn
  br i1 %i.bo, label %bb.d, label %Vec_IntPush.exit.us

bb.d:                                             ; preds = %.lr.ph120
  %i.bp = icmp samesign ult i64 %indvars.iv87117, 16
  br i1 %i.bp, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bq = icmp samesign ult i64 %indvars.iv87117, 1073741823
  %indvars.iv87.tr = trunc nsw i64 %indvars.iv87117 to i32
  %i.br = shl nsw i32 %indvars.iv87.tr, 1
  %spec.select.i.us = select i1 %i.bq, i32 %i.br, i32 2147483647 ; 4 uses
  %3 = sext i32 %spec.select.i.us to i64
  %.not.i9.i.us = icmp samesign ult i64 %indvars.iv87117, %3
  br i1 %.not.i9.i.us, label %bb.f, label %Vec_IntPush.exit.us

bb.f:                                             ; preds = %bb.e
  %.not9.i10.i.us = icmp eq ptr %i.bm, null
  %i.bs = zext nneg i32 %spec.select.i.us to i64
  %i.bt = shl nuw nsw i64 %i.bs, 2                ; 2 uses
  br i1 %.not9.i10.i.us, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bu = tail call ptr @realloc(ptr noundef nonnull %i.bm, i64 noundef %i.bt) #23
  br label %Vec_IntGrow.exit11.sink.split.i.us

bb.h:                                             ; preds = %bb.f
  %i.bv = tail call noalias ptr @malloc(i64 noundef %i.bt) #24
  br label %Vec_IntGrow.exit11.sink.split.i.us

bb.i:                                             ; preds = %bb.d
  %.not9.i.i.us = icmp eq ptr %i.bm, null
  br i1 %.not9.i.i.us, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bw = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.bm, i64 noundef 64) #23
  br label %Vec_IntGrow.exit11.sink.split.i.us

bb.k:                                             ; preds = %bb.i
  %i.bx = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #24
  br label %Vec_IntGrow.exit11.sink.split.i.us

Vec_IntGrow.exit11.sink.split.i.us:               ; preds = %bb.k, %bb.j, %bb.h, %bb.g
  %storemerge.us = phi ptr [ %i.bx, %bb.k ], [ %i.bw, %bb.j ], [ %i.bu, %bb.g ], [ %i.bv, %bb.h ] ; 2 uses
  %spec.select.sink.i.us = phi i32 [ 16, %bb.k ], [ 16, %bb.j ], [ %spec.select.i.us, %bb.g ], [ %spec.select.i.us, %bb.h ] ; 2 uses
  store ptr %storemerge.us, ptr %i.i, align 8, !tbaa !53
  store i32 %spec.select.sink.i.us, ptr %i.b, align 8, !tbaa !52
  %.val58.us.pre = load ptr, ptr %i.bi, align 8, !tbaa !53
  br label %Vec_IntPush.exit.us

Vec_IntPush.exit.us:                              ; preds = %Vec_IntGrow.exit11.sink.split.i.us, %bb.e, %.lr.ph120
  %.val58.us = phi ptr [ %.val58.us.pre, %Vec_IntGrow.exit11.sink.split.i.us ], [ %.val58.us93116, %bb.e ], [ %.val58.us93116, %.lr.ph120 ] ; 5 uses
  %i.by = phi ptr [ %storemerge.us, %Vec_IntGrow.exit11.sink.split.i.us ], [ %i.bm, %bb.e ], [ %i.bm, %.lr.ph120 ] ; 3 uses
  %i.bz = phi i32 [ %spec.select.sink.i.us, %Vec_IntGrow.exit11.sink.split.i.us ], [ %i.bl, %bb.e ], [ %i.bl, %.lr.ph120 ]
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87117, 1 ; 4 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv87117
  store i32 %.2.us119, ptr %i.ca, align 4, !tbaa !47
  %i.cb = sext i32 %.2.us119 to i64
  %i.cc = getelementptr inbounds [4 x i8], ptr %.val58.us, i64 %i.cb
  store i32 1, ptr %i.cc, align 4, !tbaa !47
  %.val56.us = load ptr, ptr %i.bj, align 8, !tbaa !57 ; 2 uses
  %i.cd = getelementptr [4 x i8], ptr %i.by, i64 %indvars.iv.next88
  %i.ce = getelementptr i8, ptr %i.cd, i64 -4
  br label %bb.l

bb.l:                                             ; preds = %Vec_IntPush.exit.us, %bb.o
  %indvars.iv82 = phi i64 [ %i.bk, %Vec_IntPush.exit.us ], [ %indvars.iv.next83, %bb.o ] ; 4 uses
  %.377.us = phi i32 [ %.2.us119, %Vec_IntPush.exit.us ], [ %.5.us, %bb.o ] ; 3 uses
  %.23976.us = phi i32 [ 0, %Vec_IntPush.exit.us ], [ %.441.us, %bb.o ] ; 3 uses
  %i.cf = getelementptr inbounds [16 x i8], ptr %.val56.us, i64 %indvars.iv82 ; 2 uses
  %i.cg = getelementptr inbounds [4 x i8], ptr %.val58.us, i64 %indvars.iv82
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !47
  %.not45.us = icmp eq i32 %i.ch, 0
  br i1 %.not45.us, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ci = load i32, ptr %i.ce, align 4, !tbaa !47
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds [16 x i8], ptr %.val56.us, i64 %i.cj ; 3 uses
  %i.cl = getelementptr i8, ptr %i.cf, i64 4
  %.val17.i.us = load i32, ptr %i.cl, align 4, !tbaa !51 ; 3 uses
  %i.cm = icmp sgt i32 %.val17.i.us, 0
  br i1 %i.cm, label %.lr.ph24.i.us, label %.Gia_ManMulFindOverlap.exit.us_crit_edge

.Gia_ManMulFindOverlap.exit.us_crit_edge:         ; preds = %bb.m
  %.phi.trans.insert = getelementptr i8, ptr %i.ck, i64 4
  %.val51.us.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !51
  br label %Gia_ManMulFindOverlap.exit.us

.lr.ph24.i.us:                                    ; preds = %bb.m
  %i.cn = getelementptr i8, ptr %i.cf, i64 8
  %.val19.i.us = load ptr, ptr %i.cn, align 8, !tbaa !53
  %i.co = getelementptr i8, ptr %i.ck, i64 4
  %.val.i.us = load i32, ptr %i.co, align 4, !tbaa !51 ; 5 uses
  %i.cp = icmp sgt i32 %.val.i.us, 0
  br i1 %i.cp, label %.lr.ph24.split.us.i.us, label %Gia_ManMulFindOverlap.exit.us

.lr.ph24.split.us.i.us:                           ; preds = %.lr.ph24.i.us
  %i.cq = getelementptr i8, ptr %i.ck, i64 8
  %.val18.us.i.us = load ptr, ptr %i.cq, align 8, !tbaa !53 ; 2 uses
  %wide.trip.count31.i.us = zext nneg i32 %.val17.i.us to i64
  %wide.trip.count.i.us = zext nneg i32 %.val.i.us to i64 ; 3 uses
  %min.iters.check124 = icmp ult i32 %.val.i.us, 8
  %n.vec126 = and i64 %wide.trip.count.i.us, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec126, %wide.trip.count.i.us
  br label %.lr.ph.us.i.us

.lr.ph.us.i.us:                                   ; preds = %..critedge2_crit_edge.us.i.us, %.lr.ph24.split.us.i.us
  %indvars.iv28.i.us = phi i64 [ %indvars.iv.next29.i.us, %..critedge2_crit_edge.us.i.us ], [ 0, %.lr.ph24.split.us.i.us ] ; 2 uses
  %.023.us.i.us = phi i32 [ %spec.select.us.i.us.lcssa, %..critedge2_crit_edge.us.i.us ], [ 0, %.lr.ph24.split.us.i.us ] ; 2 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %.val19.i.us, i64 %indvars.iv28.i.us
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !47 ; 2 uses
  br i1 %min.iters.check124, label %scalar.ph123.preheader, label %vector.ph125

vector.ph125:                                     ; preds = %.lr.ph.us.i.us
  %i.ct = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.023.us.i.us, i64 0
  %broadcast.splatinsert127 = insertelement <4 x i32> poison, i32 %i.cs, i64 0
  %broadcast.splat128 = shufflevector <4 x i32> %broadcast.splatinsert127, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body129

vector.body129:                                   ; preds = %vector.body129, %vector.ph125
  %index130 = phi i64 [ 0, %vector.ph125 ], [ %index.next134, %vector.body129 ] ; 2 uses
  %vec.phi131 = phi <4 x i32> [ %i.ct, %vector.ph125 ], [ %i.da, %vector.body129 ]
  %vec.phi132 = phi <4 x i32> [ zeroinitializer, %vector.ph125 ], [ %i.db, %vector.body129 ]
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %.val18.us.i.us, i64 %index130 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %wide.load = load <4 x i32>, ptr %i.cu, align 4, !tbaa !47
  %wide.load133 = load <4 x i32>, ptr %i.cv, align 4, !tbaa !47
  %i.cw = icmp eq <4 x i32> %broadcast.splat128, %wide.load
  %i.cx = icmp eq <4 x i32> %broadcast.splat128, %wide.load133
  %i.cy = zext <4 x i1> %i.cw to <4 x i32>
  %i.cz = zext <4 x i1> %i.cx to <4 x i32>
  %i.da = add <4 x i32> %vec.phi131, %i.cy        ; 2 uses
  %i.db = add <4 x i32> %vec.phi132, %i.cz        ; 2 uses
  %index.next134 = add nuw i64 %index130, 8       ; 2 uses
  %i.dc = icmp eq i64 %index.next134, %n.vec126
  br i1 %i.dc, label %middle.block135, label %vector.body129, !llvm.loop !139

middle.block135:                                  ; preds = %vector.body129
  %bin.rdx = add <4 x i32> %i.db, %i.da
  %i.dd = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %..critedge2_crit_edge.us.i.us, label %scalar.ph123.preheader

scalar.ph123.preheader:                           ; preds = %.lr.ph.us.i.us, %middle.block135
  %indvars.iv.i.us.ph = phi i64 [ 0, %.lr.ph.us.i.us ], [ %n.vec126, %middle.block135 ]
  %.121.us.i.us.ph = phi i32 [ %.023.us.i.us, %.lr.ph.us.i.us ], [ %i.dd, %middle.block135 ]
  br label %scalar.ph123

scalar.ph123:                                     ; preds = %scalar.ph123.preheader, %scalar.ph123
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us, %scalar.ph123 ], [ %indvars.iv.i.us.ph, %scalar.ph123.preheader ] ; 2 uses
  %.121.us.i.us = phi i32 [ %spec.select.us.i.us, %scalar.ph123 ], [ %.121.us.i.us.ph, %scalar.ph123.preheader ]
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %.val18.us.i.us, i64 %indvars.iv.i.us
  %i.df = load i32, ptr %i.de, align 4, !tbaa !47
  %i.dg = icmp eq i32 %i.cs, %i.df
  %i.dh = zext i1 %i.dg to i32
  %spec.select.us.i.us = add nsw i32 %.121.us.i.us, %i.dh ; 2 uses
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %wide.trip.count.i.us
  br i1 %exitcond.not.i.us, label %..critedge2_crit_edge.us.i.us, label %scalar.ph123, !llvm.loop !140

..critedge2_crit_edge.us.i.us:                    ; preds = %scalar.ph123, %middle.block135
  %spec.select.us.i.us.lcssa = phi i32 [ %i.dd, %middle.block135 ], [ %spec.select.us.i.us, %scalar.ph123 ] ; 2 uses
  %indvars.iv.next29.i.us = add nuw nsw i64 %indvars.iv28.i.us, 1 ; 2 uses
  %exitcond32.not.i.us = icmp eq i64 %indvars.iv.next29.i.us, %wide.trip.count31.i.us
  br i1 %exitcond32.not.i.us, label %Gia_ManMulFindOverlap.exit.us, label %.lr.ph.us.i.us, !llvm.loop !11

Gia_ManMulFindOverlap.exit.us:                    ; preds = %..critedge2_crit_edge.us.i.us, %.Gia_ManMulFindOverlap.exit.us_crit_edge, %.lr.ph24.i.us
  %.val51.us = phi i32 [ %.val51.us.pre, %.Gia_ManMulFindOverlap.exit.us_crit_edge ], [ %.val.i.us, %.lr.ph24.i.us ], [ %.val.i.us, %..critedge2_crit_edge.us.i.us ] ; 2 uses
  %.0.lcssa.i.us = phi i32 [ 0, %.Gia_ManMulFindOverlap.exit.us_crit_edge ], [ 0, %.lr.ph24.i.us ], [ %spec.select.us.i.us.lcssa, %..critedge2_crit_edge.us.i.us ]
  %i.di = icmp eq i32 %.0.lcssa.i.us, %.val51.us
  br i1 %i.di, label %bb.n, label %bb.o

bb.n:                                             ; preds = %Gia_ManMulFindOverlap.exit.us
  %i.dj = add nsw i32 %.val51.us, 2
  %i.dk = icmp eq i32 %.val17.i.us, %i.dj         ; 2 uses
  %i.dl = zext i1 %i.dk to i32
  %spec.select47.us = add nsw i32 %.23976.us, %i.dl
  %i.dm = trunc nsw i64 %indvars.iv82 to i32
  %spec.select48.us = select i1 %i.dk, i32 %i.dm, i32 %.377.us
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %Gia_ManMulFindOverlap.exit.us, %bb.l
  %.441.us = phi i32 [ %.23976.us, %bb.l ], [ %.23976.us, %Gia_ManMulFindOverlap.exit.us ], [ %spec.select47.us, %bb.n ] ; 2 uses
  %.5.us = phi i32 [ %.377.us, %bb.l ], [ %.377.us, %Gia_ManMulFindOverlap.exit.us ], [ %spec.select48.us, %bb.n ] ; 2 uses
  %indvars.iv.next83 = add nsw i64 %indvars.iv82, 1 ; 2 uses
  %exitcond86.not = icmp eq i64 %indvars.iv.next83, %wide.trip.count85
  br i1 %exitcond86.not, label %..critedge2_crit_edge.us, label %bb.l, !llvm.loop !141

..critedge2_crit_edge.us:                         ; preds = %bb.o
  %.not.us = icmp eq i32 %.441.us, 1
  br i1 %.not.us, label %.preheader.split.us, label %.loopexit.split.loop.exit111, !llvm.loop !138

.loopexit.split.loop.exit111:                     ; preds = %..critedge2_crit_edge.us
  %indvars.le = trunc i64 %indvars.iv.next88 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.split.us, %.preheader.split.us.preheader, %.loopexit.split.loop.exit111
  %i.dn = phi ptr [ %.val58.us, %.loopexit.split.loop.exit111 ], [ %.val58, %.preheader.split.us.preheader ], [ %.val58.us, %.preheader.split.us ]
  %.us-phi.ph = phi i32 [ %indvars.le, %.loopexit.split.loop.exit111 ], [ %i.a, %.preheader.split.us.preheader ], [ %i.a, %.preheader.split.us ] ; 2 uses
  store i32 %.us-phi.ph, ptr %i.d, align 4
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %Vec_IntStart.exit, %.loopexit, %.critedge
  %.val97 = phi i32 [ %.us-phi.ph, %.loopexit ], [ 0, %.critedge ], [ 0, %Vec_IntStart.exit ]
  %i.do = phi ptr [ %i.dn, %.loopexit ], [ %.val58, %.critedge ], [ %.val58, %Vec_IntStart.exit ] ; 2 uses
  %.not.i62 = icmp eq ptr %i.do, null
  br i1 %.not.i62, label %Vec_IntFree.exit, label %bb.p

bb.p:                                             ; preds = %.critedge.thread
  tail call void @free(ptr noundef nonnull %i.do) #22
  %.val.pre = load i32, ptr %i.d, align 4, !tbaa !51
  br label %Vec_IntFree.exit

end_hunk_3
begin_hunk_4_@Gia_ManMulFindAInputs:bb.a
  %i.lk = load i32, ptr %i.gf, align 4, !tbaa !51
  %i.ll = add i32 %i.lk, %i.lf
  %i.lm = sext i32 %i.ll to i64
  %i.ln = getelementptr inbounds [4 x i8], ptr %i.la, i64 %i.lm
  store i32 %i.ld, ptr %i.ln, align 4, !tbaa !47
  %indvars.iv.next.i218 = add nuw nsw i64 %indvars.iv.i217, 1 ; 2 uses
  %i.lo = load i32, ptr %i.gf, align 4, !tbaa !51 ; 2 uses
  %i.lp = sdiv i32 %i.lo, 2
  %i.lq = sext i32 %i.lp to i64
  %i.lr = icmp slt i64 %indvars.iv.next.i218, %i.lq
  br i1 %i.lr, label %bb.cg, label %Vec_IntReverseOrder.exit, !llvm.loop !147

Vec_IntReverseOrder.exit:                         ; preds = %bb.cg, %.critedge6
  %i.ls = load i32, ptr %i.hg, align 4, !tbaa !51 ; 2 uses
  %i.lt = icmp sgt i32 %i.ls, 1
  br i1 %i.lt, label %.lr.ph.i219, label %Vec_IntReverseOrder.exit222

.lr.ph.i219:                                      ; preds = %Vec_IntReverseOrder.exit
  %i.lu = load ptr, ptr %i.ia, align 8, !tbaa !53 ; 3 uses
  br label %bb.ch

bb.ch:                                            ; preds = %bb.ch, %.lr.ph.i219
  %indvars.iv.i220 = phi i64 [ 0, %.lr.ph.i219 ], [ %indvars.iv.next.i221, %bb.ch ] ; 3 uses
  %i.lv = phi i32 [ %i.ls, %.lr.ph.i219 ], [ %i.mi, %bb.ch ]
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %i.lu, i64 %indvars.iv.i220 ; 2 uses
  %i.lx = load i32, ptr %i.lw, align 4, !tbaa !47
  %i.ly = trunc nuw nsw i64 %indvars.iv.i220 to i32
  %i.lz = xor i32 %i.ly, -1                       ; 2 uses
  %i.ma = add i32 %i.lv, %i.lz
  %i.mb = sext i32 %i.ma to i64
  %i.mc = getelementptr inbounds [4 x i8], ptr %i.lu, i64 %i.mb
  %i.md = load i32, ptr %i.mc, align 4, !tbaa !47
  store i32 %i.md, ptr %i.lw, align 4, !tbaa !47
  %i.me = load i32, ptr %i.hg, align 4, !tbaa !51
  %i.mf = add i32 %i.me, %i.lz
  %i.mg = sext i32 %i.mf to i64
  %i.mh = getelementptr inbounds [4 x i8], ptr %i.lu, i64 %i.mg
  store i32 %i.lx, ptr %i.mh, align 4, !tbaa !47
  %indvars.iv.next.i221 = add nuw nsw i64 %indvars.iv.i220, 1 ; 2 uses
  %i.mi = load i32, ptr %i.hg, align 4, !tbaa !51 ; 2 uses
  %i.mj = sdiv i32 %i.mi, 2
  %i.mk = sext i32 %i.mj to i64
  %i.ml = icmp slt i64 %indvars.iv.next.i221, %i.mk
  br i1 %i.ml, label %bb.ch, label %Vec_IntReverseOrder.exit222, !llvm.loop !147

Vec_IntReverseOrder.exit222:                      ; preds = %bb.ch, %Vec_IntReverseOrder.exit, %bb.r
  %.val110 = load i32, ptr %i.dd, align 4, !tbaa !51
  %i.mm = add nsw i32 %.val110, -1
  %i.mn = sext i32 %i.mm to i64
  %i.mo = icmp slt i64 %indvars.iv.next268, %i.mn
  br i1 %i.mo, label %bb.r, label %.critedge4, !llvm.loop !148

.critedge4:                                       ; preds = %Vec_IntReverseOrder.exit222, %._crit_edge
  %i.mp = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !53 ; 2 uses
  %.not.i223 = icmp eq ptr %i.mq, null
  br i1 %.not.i223, label %Vec_IntFree.exit, label %bb.ci

bb.ci:                                            ; preds = %.critedge4
  tail call void @free(ptr noundef nonnull %i.mq) #22
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %.critedge4, %bb.ci
  tail call void @free(ptr noundef nonnull %i.dc) #22
  %i.mr = load i32, ptr %i.g, align 8, !tbaa !56  ; 2 uses
  %i.ms = icmp sgt i32 %i.mr, 0
  %.pre.i.i224 = load ptr, ptr %i.m, align 8, !tbaa !57 ; 3 uses
  br i1 %i.ms, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i

.lr.ph.i.i.preheader:                             ; preds = %Vec_IntFree.exit
  %i.mt = zext nneg i32 %i.mr to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.ck
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.ck ], [ 0, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.mu = getelementptr inbounds nuw [16 x i8], ptr %.pre.i.i224, i64 %indvars.iv.i.i
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 8 ; 2 uses
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !53 ; 2 uses
  %.not15.i.i = icmp eq ptr %i.mw, null
  br i1 %.not15.i.i, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %.lr.ph.i.i
  tail call void @free(ptr noundef nonnull %i.mw) #22
  store ptr null, ptr %i.mv, align 8, !tbaa !53
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.i.i, %i.mt
  br i1 %exitcond.not, label %._crit_edge.thread.i.i, label %.lr.ph.i.i, !llvm.loop !7

._crit_edge.i.i:                                  ; preds = %Vec_IntFree.exit
  %.not.i.i = icmp eq ptr %.pre.i.i224, null
  br i1 %.not.i.i, label %Vec_WecFree.exit, label %._crit_edge.thread.i.i

._crit_edge.thread.i.i:                           ; preds = %bb.ck, %._crit_edge.i.i
  tail call void @free(ptr noundef nonnull %.pre.i.i224) #22
  br label %Vec_WecFree.exit

Vec_WecFree.exit:                                 ; preds = %._crit_edge.i.i, %._crit_edge.thread.i.i
  tail call void @free(ptr noundef nonnull %i.g) #22
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define noalias noundef ptr @Gia_ManMulFindBInputs(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #24 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 5 uses
  store i32 0, ptr %i.b, align 4, !tbaa !55
  store i32 10, ptr %i.a, align 8, !tbaa !56
  %i.c = tail call noalias dereferenceable_or_null(160) ptr @calloc(i64 noundef 10, i64 noundef 16) #25
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 10 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !57
  %i.e = getelementptr i8, ptr %0, i64 24
  %.val128 = load i32, ptr %i.e, align 8, !tbaa !58
  %i.f = tail call ptr @Gia_ManMulFindGroups(ptr noundef %1, i32 noundef %.val128, i32 noundef 0) ; 4 uses
  %i.g = getelementptr i8, ptr %i.f, i64 4        ; 2 uses
  %.val107254 = load i32, ptr %i.g, align 4, !tbaa !51
  %i.h = icmp sgt i32 %.val107254, 1
  br i1 %i.h, label %.lr.ph256, label %.critedge

.lr.ph256:                                        ; preds = %bb.a
  %i.i = getelementptr i8, ptr %i.f, i64 8
  %i.j = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.k = getelementptr i8, ptr %2, i64 4          ; 2 uses
  %i.l = getelementptr i8, ptr %2, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph256, %bb.ca
  %indvars.iv285 = phi i64 [ 0, %.lr.ph256 ], [ %indvars.iv.next286, %bb.ca ] ; 3 uses
  %.val116 = load ptr, ptr %i.i, align 8, !tbaa !53 ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %.val116, i64 %indvars.iv285
  %i.n = load i32, ptr %i.m, align 4, !tbaa !47   ; 5 uses
  %i.o = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #24 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4 ; 5 uses
  store i32 0, ptr %i.p, align 4, !tbaa !51
  store i32 100, ptr %i.o, align 8, !tbaa !52
  %i.q = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #24 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 4 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !53
  %indvars.iv.next286 = add nuw nsw i64 %indvars.iv285, 1 ; 3 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %.val116, i64 %indvars.iv.next286 ; 5 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !47   ; 3 uses
  %i.u = icmp slt i32 %i.n, %i.t
  br i1 %i.u, label %.lr.ph238.preheader, label %Vec_IntUniqify.exit

.lr.ph238.preheader:                              ; preds = %bb.b
  %i.v = sext i32 %i.n to i64
  br label %.lr.ph238

.lr.ph238:                                        ; preds = %.lr.ph238.preheader, %.critedge4
  %i.w = phi i32 [ %i.t, %.lr.ph238.preheader ], [ %i.at, %.critedge4 ]
  %.promoted233 = phi ptr [ %i.q, %.lr.ph238.preheader ], [ %.promoted233293, %.critedge4 ] ; 2 uses
  %.promoted230 = phi i32 [ 100, %.lr.ph238.preheader ], [ %.promoted230291, %.critedge4 ] ; 2 uses
  %.promoted = phi i32 [ 0, %.lr.ph238.preheader ], [ %.promoted289, %.critedge4 ] ; 2 uses
  %indvars.iv267 = phi i64 [ %i.v, %.lr.ph238.preheader ], [ %indvars.iv.next268, %.critedge4 ] ; 2 uses
  %.val120 = load ptr, ptr %i.j, align 8, !tbaa !57
  %i.x = getelementptr inbounds [16 x i8], ptr %.val120, i64 %indvars.iv267 ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 4        ; 2 uses
  %.val106227 = load i32, ptr %i.y, align 4, !tbaa !51
  %i.z = icmp sgt i32 %.val106227, 1
  br i1 %i.z, label %.lr.ph, label %.critedge4

.lr.ph:                                           ; preds = %.lr.ph238
  %i.aa = getelementptr i8, ptr %i.x, i64 8
  %i.ab = sext i32 %.promoted to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %Vec_IntPush.exit
  %indvars.iv262 = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next263, %Vec_IntPush.exit ] ; 2 uses
  %indvars.iv = phi i64 [ %i.ab, %.lr.ph ], [ %indvars.iv.next, %Vec_IntPush.exit ] ; 7 uses
  %storemerge221234 = phi ptr [ %.promoted233, %.lr.ph ], [ %storemerge221235, %Vec_IntPush.exit ] ; 6 uses
  %spec.select.sink.i232 = phi i32 [ %.promoted230, %.lr.ph ], [ %spec.select.sink.i231, %Vec_IntPush.exit ] ; 3 uses
  %.val114 = load ptr, ptr %i.aa, align 8, !tbaa !53
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.val114, i64 %indvars.iv262
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !47
  %i.ae = trunc nsw i64 %indvars.iv to i32
  %i.af = icmp eq i32 %spec.select.sink.i232, %i.ae
  br i1 %i.af, label %bb.d, label %Vec_IntPush.exit

bb.d:                                             ; preds = %bb.c
  %i.ag = icmp slt i64 %indvars.iv, 16
  br i1 %i.ag, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %.not9.i.i = icmp eq ptr %storemerge221234, null
  br i1 %.not9.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge221234, i64 noundef 64) #23
  br label %Vec_IntPush.exit

bb.g:                                             ; preds = %bb.e
  %i.ai = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #24
  br label %Vec_IntPush.exit

bb.h:                                             ; preds = %bb.d
  %i.aj = icmp samesign ult i64 %indvars.iv, 1073741823
  %indvars.iv.tr = trunc nsw i64 %indvars.iv to i32
  %i.ak = shl nsw i32 %indvars.iv.tr, 1
  %spec.select.i = select i1 %i.aj, i32 %i.ak, i32 2147483647 ; 4 uses
  %4 = sext i32 %spec.select.i to i64
  %.not.i9.i = icmp samesign ult i64 %indvars.iv, %4
  br i1 %.not.i9.i, label %bb.i, label %Vec_IntPush.exit

bb.i:                                             ; preds = %bb.h
  %.not9.i10.i = icmp eq ptr %storemerge221234, null
  %i.al = zext nneg i32 %spec.select.i to i64
  %i.am = shl nuw nsw i64 %i.al, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = tail call ptr @realloc(ptr noundef nonnull %storemerge221234, i64 noundef %i.am) #23
  br label %Vec_IntPush.exit

bb.k:                                             ; preds = %bb.i
  %i.ao = tail call noalias ptr @malloc(i64 noundef %i.am) #24
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.g, %bb.f, %bb.k, %bb.j, %bb.c, %bb.h
  %storemerge221235 = phi ptr [ %storemerge221234, %bb.c ], [ %storemerge221234, %bb.h ], [ %i.ai, %bb.g ], [ %i.ah, %bb.f ], [ %i.an, %bb.j ], [ %i.ao, %bb.k ] ; 4 uses
  %spec.select.sink.i231 = phi i32 [ %spec.select.sink.i232, %bb.c ], [ %spec.select.sink.i232, %bb.h ], [ 16, %bb.g ], [ 16, %bb.f ], [ %spec.select.i, %bb.j ], [ %spec.select.i, %bb.k ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ap = getelementptr inbounds [4 x i8], ptr %storemerge221235, i64 %indvars.iv
  store i32 %i.ad, ptr %i.ap, align 4, !tbaa !47
  %indvars.iv.next263 = add nuw nsw i64 %indvars.iv262, 1 ; 2 uses
  %.val106 = load i32, ptr %i.y, align 4, !tbaa !51
  %i.aq = sext i32 %.val106 to i64
  %i.ar = icmp slt i64 %indvars.iv.next263, %i.aq
  br i1 %i.ar, label %bb.c, label %..critedge4_crit_edge, !llvm.loop !149

..critedge4_crit_edge:                            ; preds = %Vec_IntPush.exit
  %i.as = trunc nsw i64 %indvars.iv.next to i32   ; 2 uses
  store i32 %i.as, ptr %i.p, align 4, !tbaa !51
  store i32 %spec.select.sink.i231, ptr %i.o, align 8
  store ptr %storemerge221235, ptr %i.r, align 8
  %.pre = load i32, ptr %i.s, align 4, !tbaa !47
  br label %.critedge4

.critedge4:                                       ; preds = %..critedge4_crit_edge, %.lr.ph238
  %i.at = phi i32 [ %.pre, %..critedge4_crit_edge ], [ %i.w, %.lr.ph238 ] ; 3 uses
  %.promoted233293 = phi ptr [ %storemerge221235, %..critedge4_crit_edge ], [ %.promoted233, %.lr.ph238 ] ; 8 uses
  %.promoted230291 = phi i32 [ %spec.select.sink.i231, %..critedge4_crit_edge ], [ %.promoted230, %.lr.ph238 ]
  %.promoted289 = phi i32 [ %i.as, %..critedge4_crit_edge ], [ %.promoted, %.lr.ph238 ] ; 5 uses
  %indvars.iv.next268 = add nsw i64 %indvars.iv267, 1 ; 2 uses
  %i.au = sext i32 %i.at to i64
  %i.av = icmp slt i64 %indvars.iv.next268, %i.au
  br i1 %i.av, label %.lr.ph238, label %.critedge2, !llvm.loop !150

.critedge2:                                       ; preds = %.critedge4
  %i.aw = icmp slt i32 %.promoted289, 2
  br i1 %i.aw, label %Vec_IntUniqify.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge2
  %i.ax = zext nneg i32 %.promoted289 to i64      ; 2 uses
  tail call void @qsort(ptr noundef %.promoted233293, i64 noundef %i.ax, i64 noundef 4, ptr noundef nonnull @Vec_IntSortCompare1) #22
  %i.ay = add nsw i64 %i.ax, -1                   ; 3 uses
  %xtraiter = and i64 %i.ay, 1
  %i.az = icmp eq i32 %.promoted289, 2
  br i1 %i.az, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.ay, -2
  br label %bb.l

bb.l:                                             ; preds = %bb.p, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.p ] ; 3 uses
  %.024.i = phi i32 [ 1, %.lr.ph.i.new ], [ %.1.i.1, %bb.p ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.p ]
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %.promoted233293, i64 %indvars.iv.i ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !47 ; 2 uses
  %i.bc = getelementptr i8, ptr %i.ba, i64 -4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !47
  %.not.i = icmp eq i32 %i.bb, %i.bd
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.be = add nsw i32 %.024.i, 1
  %i.bf = sext i32 %.024.i to i64
  %i.bg = getelementptr inbounds [4 x i8], ptr %.promoted233293, i64 %i.bf
  store i32 %i.bb, ptr %i.bg, align 4, !tbaa !47
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.1.i = phi i32 [ %i.be, %bb.m ], [ %.024.i, %bb.l ] ; 3 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %.promoted233293, i64 %indvars.iv.i ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !47 ; 2 uses
  %i.bk = load i32, ptr %i.bh, align 4, !tbaa !47
  %.not.i.1 = icmp eq i32 %i.bj, %i.bk
  br i1 %.not.i.1, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bl = add nsw i32 %.1.i, 1
  %i.bm = sext i32 %.1.i to i64
  %i.bn = getelementptr inbounds [4 x i8], ptr %.promoted233293, i64 %i.bm
  store i32 %i.bj, ptr %i.bn, align 4, !tbaa !47
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.1.i.1 = phi i32 [ %i.bl, %bb.o ], [ %.1.i, %bb.n ] ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %bb.l, !llvm.loop !151

._crit_edge.i.unr-lcssa:                          ; preds = %bb.p
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 1, %.lr.ph.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.unr-lcssa ]
  %.024.i.epil.init = phi i32 [ 1, %.lr.ph.i ], [ %.1.i.1, %._crit_edge.i.unr-lcssa ] ; 3 uses
  %lcmp.mod441 = trunc i64 %i.ay to i1
  tail call void @llvm.assume(i1 %lcmp.mod441)
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %.promoted233293, i64 %indvars.iv.i.epil.init ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !47 ; 2 uses
  %i.bq = getelementptr i8, ptr %i.bo, i64 -4
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !47
  %.not.i.epil = icmp eq i32 %i.bp, %i.br
  br i1 %.not.i.epil, label %._crit_edge.i, label %bb.q

bb.q:                                             ; preds = %.epil.preheader
  %i.bs = add nsw i32 %.024.i.epil.init, 1
  %i.bt = sext i32 %.024.i.epil.init to i64
  %i.bu = getelementptr inbounds [4 x i8], ptr %.promoted233293, i64 %i.bt
  store i32 %i.bp, ptr %i.bu, align 4, !tbaa !47
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.epil.preheader, %bb.q, %._crit_edge.i.unr-lcssa
  %.1.i.lcssa = phi i32 [ %.1.i.1, %._crit_edge.i.unr-lcssa ], [ %i.bs, %bb.q ], [ %.024.i.epil.init, %.epil.preheader ] ; 2 uses
  store i32 %.1.i.lcssa, ptr %i.p, align 4, !tbaa !51
  %.pre295 = load i32, ptr %i.s, align 4, !tbaa !47
  br label %Vec_IntUniqify.exit

Vec_IntUniqify.exit:                              ; preds = %bb.b, %.critedge2, %._crit_edge.i
  %i.bv = phi i32 [ %i.at, %.critedge2 ], [ %.pre295, %._crit_edge.i ], [ %i.t, %bb.b ]
  %i.bw = phi i32 [ %.promoted289, %.critedge2 ], [ %.1.i.lcssa, %._crit_edge.i ], [ 0, %bb.b ] ; 12 uses
  %i.bx = sub nsw i32 %i.bv, %i.n                 ; 3 uses
  %i.by = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #24 ; 5 uses
  %i.bz = add i32 %i.bw, -1
  %or.cond.i.i = icmp ult i32 %i.bz, 15
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 16, i32 %i.bw ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 4 ; 2 uses
  store i32 %spec.store.select.i.i, ptr %i.by, align 8, !tbaa !52
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %Vec_IntAlloc.exit.thread.i, label %Vec_IntAlloc.exit.i

Vec_IntAlloc.exit.thread.i:                       ; preds = %Vec_IntUniqify.exit
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store ptr null, ptr %i.cb, align 8, !tbaa !53
  store i32 %i.bw, ptr %i.ca, align 4, !tbaa !51
  br label %Vec_IntStart.exit

Vec_IntAlloc.exit.i:                              ; preds = %Vec_IntUniqify.exit
  %i.cc = sext i32 %spec.store.select.i.i to i64
  %i.cd = shl nsw i64 %i.cc, 2
  %i.ce = tail call noalias ptr @malloc(i64 noundef %i.cd) #24 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store ptr %i.ce, ptr %i.cf, align 8, !tbaa !53
  store i32 %i.bw, ptr %i.ca, align 4, !tbaa !51
  %.not.i129 = icmp eq ptr %i.ce, null
  br i1 %.not.i129, label %Vec_IntStart.exit, label %bb.r

bb.r:                                             ; preds = %Vec_IntAlloc.exit.i
  %i.cg = sext i32 %i.bw to i64
  %i.ch = shl nsw i64 %i.cg, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ce, i8 0, i64 %i.ch, i1 false)
  br label %Vec_IntStart.exit

Vec_IntStart.exit:                                ; preds = %Vec_IntAlloc.exit.thread.i, %Vec_IntAlloc.exit.i, %bb.r
  %i.ci = phi ptr [ null, %Vec_IntAlloc.exit.thread.i ], [ null, %Vec_IntAlloc.exit.i ], [ %i.ce, %bb.r ] ; 8 uses
  %i.cj = load i32, ptr %i.s, align 4, !tbaa !47
  %i.ck = icmp slt i32 %i.n, %i.cj
  br i1 %i.ck, label %.lr.ph244, label %.critedge6

.lr.ph244:                                        ; preds = %Vec_IntStart.exit
  %.val119 = load ptr, ptr %i.j, align 8, !tbaa !57
  %i.cl = icmp sgt i32 %i.bw, 0
  %wide.trip.count.i = zext nneg i32 %i.bw to i64
  %i.cm = sext i32 %i.n to i64
  %i.cn = getelementptr inbounds i8, ptr %i.ci, i64 -4 ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph244, %.critedge8
  %indvars.iv273 = phi i64 [ %i.cm, %.lr.ph244 ], [ %indvars.iv.next274, %.critedge8 ] ; 2 uses
  %i.co = getelementptr inbounds [16 x i8], ptr %.val119, i64 %indvars.iv273 ; 2 uses
  %i.cp = getelementptr i8, ptr %i.co, i64 4      ; 3 uses
  %.val104240 = load i32, ptr %i.cp, align 4, !tbaa !51
  %i.cq = icmp sgt i32 %.val104240, 1
  br i1 %i.cq, label %.lr.ph242, label %.critedge8

.lr.ph242:                                        ; preds = %bb.s
  %i.cr = getelementptr i8, ptr %i.co, i64 8
  %.val111 = load ptr, ptr %i.cr, align 8, !tbaa !53
  br i1 %i.cl, label %.lr.ph242.split.us, label %.lr.ph242.split

.lr.ph242.split.us:                               ; preds = %.lr.ph242
  %i.cs = load ptr, ptr %i.r, align 8, !tbaa !53
  br label %.lr.ph.i131.us

.lr.ph.i131.us:                                   ; preds = %Vec_IntFind.exit.loopexit.us, %.lr.ph242.split.us
end_hunk_4
begin_hunk_5_@Gia_ManMulFindSimCone:bb.a
  %niter = phi i64 [ 0, %.lr.ph.split.preheader.new ], [ %niter.next.1, %.lr.ph.split ]
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %.val89, i64 %indvars.iv
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !47 ; 2 uses
  %i.cv = ashr i32 %i.cu, 1
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %.val96, i64 %indvars.iv
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !68
  %i.cy = and i32 %i.cu, 1
  %sext = sub nsw i32 0, %i.cy
  %i.cz = sext i32 %sext to i64
  %i.da = xor i64 %i.cx, %i.cz
  %i.db = sext i32 %i.cv to i64
  %i.dc = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.db
  store i64 %i.da, ptr %i.dc, align 8, !tbaa !68
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %.val89, i64 %indvars.iv.next
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !47 ; 2 uses
  %i.df = ashr i32 %i.de, 1
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %.val96, i64 %indvars.iv.next
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !68
  %i.di = and i32 %i.de, 1
  %sext.1 = sub nsw i32 0, %i.di
  %i.dj = sext i32 %sext.1 to i64
  %i.dk = xor i64 %i.dh, %i.dj
  %i.dl = sext i32 %i.df to i64
  %i.dm = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.dl
  store i64 %i.dk, ptr %i.dm, align 8, !tbaa !68
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.critedge.preheader.loopexit.unr-lcssa, label %.lr.ph.split, !llvm.loop !169

.critedge2.preheader.loopexit.unr-lcssa:          ; preds = %.thread103.us
  %lcmp.mod173.not = icmp eq i64 %xtraiter171, 0
  br i1 %lcmp.mod173.not, label %.critedge2.preheader, label %.thread103.us.epil.preheader

.thread103.us.epil.preheader:                     ; preds = %.critedge2.preheader.loopexit.unr-lcssa, %.lr.ph106.split.us
  %indvars.iv131.epil.init = phi i64 [ 0, %.lr.ph106.split.us ], [ %indvars.iv.next132.3, %.critedge2.preheader.loopexit.unr-lcssa ]
  %lcmp.mod174 = icmp ne i64 %xtraiter171, 0
  tail call void @llvm.assume(i1 %lcmp.mod174)
  br label %.thread103.us.epil

.thread103.us.epil:                               ; preds = %.thread103.us.epil, %.thread103.us.epil.preheader
  %indvars.iv131.epil = phi i64 [ %indvars.iv.next132.epil, %.thread103.us.epil ], [ %indvars.iv131.epil.init, %.thread103.us.epil.preheader ] ; 3 uses
  %epil.iter172 = phi i64 [ %epil.iter172.next, %.thread103.us.epil ], [ 0, %.thread103.us.epil.preheader ]
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %.val88154, i64 %indvars.iv131.epil
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !47
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %.val94.us, i64 %indvars.iv131.epil
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !68
  %i.dr = sext i32 %i.do to i64
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.dr
  store i64 %i.dq, ptr %i.ds, align 8, !tbaa !68
  %indvars.iv.next132.epil = add nuw nsw i64 %indvars.iv131.epil, 1
  %epil.iter172.next = add i64 %epil.iter172, 1   ; 2 uses
  %epil.iter172.cmp.not = icmp eq i64 %epil.iter172.next, %xtraiter171
  br i1 %epil.iter172.cmp.not, label %.critedge2.preheader, label %.thread103.us.epil, !llvm.loop !172

.critedge2.preheader.loopexit159.unr-lcssa:       ; preds = %.lr.ph106.split
  %lcmp.mod162.not = icmp eq i64 %xtraiter161, 0
  br i1 %lcmp.mod162.not, label %.critedge2.preheader, label %.lr.ph106.split.epil.preheader

.lr.ph106.split.epil.preheader:                   ; preds = %.critedge2.preheader.loopexit159.unr-lcssa, %.lr.ph106.split.preheader
  %indvars.iv126.epil.init = phi i64 [ 0, %.lr.ph106.split.preheader ], [ %indvars.iv.next127.1, %.critedge2.preheader.loopexit159.unr-lcssa ] ; 2 uses
  %lcmp.mod163 = trunc i32 %.val83 to i1
  tail call void @llvm.assume(i1 %lcmp.mod163)
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %.val88, i64 %indvars.iv126.epil.init
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !47 ; 2 uses
  %i.dv = ashr i32 %i.du, 1
  %.val94.epil = load ptr, ptr %i.br, align 8, !tbaa !67
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %.val94.epil, i64 %indvars.iv126.epil.init
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !68
  %i.dy = and i32 %i.du, 1
  %sext157.epil = sub nsw i32 0, %i.dy
  %i.dz = sext i32 %sext157.epil to i64
  %i.ea = xor i64 %i.dx, %i.dz
  %i.eb = sext i32 %i.dv to i64
  %i.ec = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.eb
  store i64 %i.ea, ptr %i.ec, align 8, !tbaa !68
  br label %.critedge2.preheader

.critedge2.preheader:                             ; preds = %.lr.ph106.split.epil.preheader, %.critedge2.preheader.loopexit159.unr-lcssa, %.critedge2.preheader.loopexit.unr-lcssa, %.thread103.us.epil, %.critedge.preheader.thread, %.critedge.preheader
  %i.ed = icmp sgt i32 %.val85, 0
  br i1 %i.ed, label %.lr.ph108, label %.critedge6

.lr.ph108:                                        ; preds = %.critedge2.preheader
  %i.ee = getelementptr i8, ptr %0, i64 32
  %.val80 = load ptr, ptr %i.ee, align 8, !tbaa !46 ; 2 uses
  %.not = icmp eq ptr %.val80, null
  br i1 %.not, label %.lr.ph111, label %.lr.ph108.split

.lr.ph108.split:                                  ; preds = %.lr.ph108
  %i.ef = getelementptr i8, ptr %5, i64 8
  %.val87 = load ptr, ptr %i.ef, align 8, !tbaa !53
  %wide.trip.count139 = zext nneg i32 %.val85 to i64
  br label %.critedge2

.lr.ph106.split:                                  ; preds = %.lr.ph106.split, %.lr.ph106.split.preheader.new
  %indvars.iv126 = phi i64 [ 0, %.lr.ph106.split.preheader.new ], [ %indvars.iv.next127.1, %.lr.ph106.split ] ; 4 uses
  %niter165 = phi i64 [ 0, %.lr.ph106.split.preheader.new ], [ %niter165.next.1, %.lr.ph106.split ]
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %.val88, i64 %indvars.iv126
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !47 ; 2 uses
  %i.ei = ashr i32 %i.eh, 1
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %.val94, i64 %indvars.iv126
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !68
  %i.el = and i32 %i.eh, 1
  %sext157 = sub nsw i32 0, %i.el
  %i.em = sext i32 %sext157 to i64
  %i.en = xor i64 %i.ek, %i.em
  %i.eo = sext i32 %i.ei to i64
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.eo
  store i64 %i.en, ptr %i.ep, align 8, !tbaa !68
  %indvars.iv.next127 = or disjoint i64 %indvars.iv126, 1 ; 2 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %.val88, i64 %indvars.iv.next127
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !47 ; 2 uses
  %i.es = ashr i32 %i.er, 1
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %.val94, i64 %indvars.iv.next127
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !68
  %i.ev = and i32 %i.er, 1
  %sext157.1 = sub nsw i32 0, %i.ev
  %i.ew = sext i32 %sext157.1 to i64
  %i.ex = xor i64 %i.eu, %i.ew
  %i.ey = sext i32 %i.es to i64
  %i.ez = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.ey
  store i64 %i.ex, ptr %i.ez, align 8, !tbaa !68
  %indvars.iv.next127.1 = add nuw nsw i64 %indvars.iv126, 2 ; 2 uses
  %niter165.next.1 = add i64 %niter165, 2         ; 2 uses
  %niter165.ncmp.1 = icmp eq i64 %niter165.next.1, %unroll_iter164
  br i1 %niter165.ncmp.1, label %.critedge2.preheader.loopexit159.unr-lcssa, label %.lr.ph106.split, !llvm.loop !171

.critedge2:                                       ; preds = %.lr.ph108.split, %.critedge2
  %indvars.iv136 = phi i64 [ 0, %.lr.ph108.split ], [ %indvars.iv.next137, %.critedge2 ] ; 2 uses
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %.val87, i64 %indvars.iv136
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !47 ; 3 uses
  %i.fc = sext i32 %i.fb to i64                   ; 2 uses
  %i.fd = getelementptr inbounds [12 x i8], ptr %.val80, i64 %i.fc
  %.val3.i = load i64, ptr %i.fd, align 4         ; 3 uses
  %i.fe = trunc i64 %.val3.i to i32               ; 2 uses
  %i.ff = and i32 %i.fe, 536870911
  %i.fg = sub nsw i32 %i.fb, %i.ff
  %i.fh = sext i32 %i.fg to i64
  %i.fi = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.fh
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !68
  %i.fk = lshr i64 %.val3.i, 32
  %i.fl = trunc nuw i64 %i.fk to i32
  %i.fm = and i32 %i.fl, 536870911
  %i.fn = sub nsw i32 %i.fb, %i.fm
  %i.fo = sext i32 %i.fn to i64
  %i.fp = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.fo
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !68
  %i.fr = shl i32 %i.fe, 2
  %i.fs = ashr i32 %i.fr, 31
  %i.ft = sext i32 %i.fs to i64
  %i.fu = xor i64 %i.fj, %i.ft
  %i.fv = shl i64 %.val3.i, 2
  %i.fw = ashr i64 %i.fv, 63
  %i.fx = xor i64 %i.fq, %i.fw
  %i.fy = and i64 %i.fu, %i.fx
  %i.fz = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.fc
  store i64 %i.fy, ptr %i.fz, align 8, !tbaa !68
  %indvars.iv.next137 = add nuw nsw i64 %indvars.iv136, 1 ; 2 uses
  %exitcond140.not = icmp eq i64 %indvars.iv.next137, %wide.trip.count139
  br i1 %exitcond140.not, label %.lr.ph111, label %.critedge2, !llvm.loop !173

.lr.ph111:                                        ; preds = %.critedge2, %.lr.ph108
  %i.ga = getelementptr i8, ptr %5, i64 8
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph111, %Vec_WrdPush.exit
  %indvars.iv143 = phi i64 [ 0, %.lr.ph111 ], [ %indvars.iv.next144, %Vec_WrdPush.exit ] ; 2 uses
  %indvars.iv141 = phi i64 [ 0, %.lr.ph111 ], [ %indvars.iv.next142, %Vec_WrdPush.exit ] ; 7 uses
  %storemerge116 = phi ptr [ %.promoted115, %.lr.ph111 ], [ %storemerge117, %Vec_WrdPush.exit ] ; 6 uses
  %spec.select.sink.i114 = phi i32 [ %spec.store.select.i, %.lr.ph111 ], [ %spec.select.sink.i113, %Vec_WrdPush.exit ] ; 3 uses
  %.val86 = load ptr, ptr %i.ga, align 8, !tbaa !53
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %.val86, i64 %indvars.iv143
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !47
  %i.gd = sext i32 %i.gc to i64
  %i.ge = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.gd
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !68
  %i.gg = trunc nsw i64 %indvars.iv141 to i32
  %i.gh = icmp eq i32 %spec.select.sink.i114, %i.gg
  br i1 %i.gh, label %bb.e, label %Vec_WrdPush.exit

bb.e:                                             ; preds = %bb.d
  %i.gi = icmp samesign ult i64 %indvars.iv141, 16
  br i1 %i.gi, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %.not9.i.i = icmp eq ptr %storemerge116, null
  br i1 %.not9.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.gj = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %storemerge116, i64 noundef 128) #23
  br label %Vec_WrdPush.exit

bb.h:                                             ; preds = %bb.f
  %i.gk = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #24
  br label %Vec_WrdPush.exit

bb.i:                                             ; preds = %bb.e
  %i.gl = icmp samesign ult i64 %indvars.iv141, 1073741823
  %indvars.iv141.tr = trunc nsw i64 %indvars.iv141 to i32
  %i.gm = shl nsw i32 %indvars.iv141.tr, 1
  %spec.select.i = select i1 %i.gl, i32 %i.gm, i32 2147483647 ; 4 uses
  %7 = sext i32 %spec.select.i to i64
  %.not.i9.i = icmp samesign ult i64 %indvars.iv141, %7
  br i1 %.not.i9.i, label %bb.j, label %Vec_WrdPush.exit

bb.j:                                             ; preds = %bb.i
  %.not9.i10.i = icmp eq ptr %storemerge116, null
  %i.gn = zext nneg i32 %spec.select.i to i64
  %i.go = shl nuw nsw i64 %i.gn, 3                ; 2 uses
  br i1 %.not9.i10.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.gp = tail call ptr @realloc(ptr noundef nonnull %storemerge116, i64 noundef %i.go) #23
  br label %Vec_WrdPush.exit

bb.l:                                             ; preds = %bb.j
  %i.gq = tail call noalias ptr @malloc(i64 noundef %i.go) #24
  br label %Vec_WrdPush.exit

Vec_WrdPush.exit:                                 ; preds = %bb.h, %bb.g, %bb.l, %bb.k, %bb.d, %bb.i
  %storemerge117 = phi ptr [ %storemerge116, %bb.d ], [ %storemerge116, %bb.i ], [ %i.gk, %bb.h ], [ %i.gj, %bb.g ], [ %i.gp, %bb.k ], [ %i.gq, %bb.l ] ; 3 uses
  %spec.select.sink.i113 = phi i32 [ %spec.select.sink.i114, %bb.d ], [ %spec.select.sink.i114, %bb.i ], [ 16, %bb.h ], [ 16, %bb.g ], [ %spec.select.i, %bb.k ], [ %spec.select.i, %bb.l ] ; 2 uses
  %indvars.iv.next142 = add nuw nsw i64 %indvars.iv141, 1 ; 2 uses
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %storemerge117, i64 %indvars.iv141
  store i64 %i.gf, ptr %i.gr, align 8, !tbaa !68
  %indvars.iv.next144 = add nuw nsw i64 %indvars.iv143, 1 ; 2 uses
  %.val81 = load i32, ptr %i.a, align 4, !tbaa !51
  %i.gs = sext i32 %.val81 to i64
  %i.gt = icmp slt i64 %indvars.iv.next144, %i.gs
  br i1 %i.gt, label %bb.d, label %.critedge6.thread, !llvm.loop !174

.critedge6.thread:                                ; preds = %Vec_WrdPush.exit
  %i.gu = trunc nsw i64 %indvars.iv.next142 to i32
  store i32 %i.gu, ptr %i.d, align 4, !tbaa !65
  store i32 %spec.select.sink.i113, ptr %i.b, align 8
  store ptr %storemerge117, ptr %i.h, align 8
  br label %bb.m

.critedge6:                                       ; preds = %.critedge2.preheader
  %.not.i102 = icmp eq ptr %i.n, null
  br i1 %.not.i102, label %Vec_WrdFree.exit, label %bb.m

bb.m:                                             ; preds = %.critedge6.thread, %.critedge6
  tail call void @free(ptr noundef nonnull %i.n) #22
  br label %Vec_WrdFree.exit

Vec_WrdFree.exit:                                 ; preds = %.critedge6, %bb.m
  ret ptr %i.b
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i64 @Gia_ManMulFindGetArg(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4
  %.val19 = load i32, ptr %i.a, align 4, !tbaa !65 ; 5 uses
  %i.b = icmp sgt i32 %.val19, 0
  br i1 %i.b, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.c, align 8, !tbaa !67  ; 3 uses
  %i.d = zext nneg i32 %1 to i64
  %i.e = shl nuw i64 1, %i.d                      ; 3 uses
  %wide.trip.count = zext nneg i32 %.val19 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.f = icmp eq i32 %.val19, 1
  br i1 %i.f, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 5 uses
  %.01421 = phi i64 [ 0, %.lr.ph.new ], [ %.1.1, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %indvars.iv
  %i.h = load i64, ptr %i.g, align 8, !tbaa !68
  %i.i = and i64 %i.h, %i.e
  %.not17 = icmp eq i64 %i.i, 0
  %i.j = shl nuw i64 1, %indvars.iv
  %i.k = select i1 %.not17, i64 0, i64 %i.j
  %.1 = or i64 %i.k, %.01421
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %indvars.iv
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !68   ; 2 uses
  %i.o = and i64 %i.n, %i.e
  %.not17.1 = icmp eq i64 %i.o, 0
  %i.p = shl nuw i64 2, %indvars.iv
  %i.q = select i1 %.not17.1, i64 0, i64 %i.p
  %.1.1 = or i64 %i.q, %.1                        ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.critedge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !14

.critedge.loopexit.unr-lcssa:                     ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge, label %.epil.preheader

.epil.preheader:                                  ; preds = %.critedge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.critedge.loopexit.unr-lcssa ] ; 2 uses
  %.01421.epil.init = phi i64 [ 0, %.lr.ph ], [ %.1.1, %.critedge.loopexit.unr-lcssa ]
  %lcmp.mod27 = trunc i32 %.val19 to i1
  tail call void @llvm.assume(i1 %lcmp.mod27)
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %indvars.iv.epil.init
  %i.s = load i64, ptr %i.r, align 8, !tbaa !68   ; 2 uses
  %i.t = and i64 %i.s, %i.e
  %.not17.epil = icmp eq i64 %i.t, 0
  %i.u = shl nuw i64 1, %indvars.iv.epil.init
  %i.v = select i1 %.not17.epil, i64 0, i64 %i.u
  %.1.epil = or i64 %i.v, %.01421.epil.init
  br label %.critedge

.critedge:                                        ; preds = %.epil.preheader, %.critedge.loopexit.unr-lcssa, %bb.a
  %.014.lcssa = phi i64 [ 0, %bb.a ], [ %.1.1, %.critedge.loopexit.unr-lcssa ], [ %.1.epil, %.epil.preheader ] ; 3 uses
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.n, %.critedge.loopexit.unr-lcssa ], [ %i.s, %.epil.preheader ]
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.w = zext nneg i32 %1 to i64
  %i.x = shl nuw i64 1, %i.w
  %i.y = and i64 %.0.lcssa, %i.x
  %.not16 = icmp eq i64 %i.y, 0
  br i1 %.not16, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = zext nneg i32 %.val19 to i64
  %i.aa = shl nsw i64 -1, %i.z
  %i.ab = or i64 %i.aa, %.014.lcssa
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %.critedge
  %.2 = phi i64 [ %i.ab, %bb.d ], [ %.014.lcssa, %bb.c ], [ %.014.lcssa, %.critedge ]
  ret i64 %.2
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @Gia_ManMulFindSetArg(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val8 = load ptr, ptr %i.a, align 8, !tbaa !67 ; 3 uses
  %i.b = getelementptr i8, ptr %0, i64 4
  %.val = load i32, ptr %i.b, align 4, !tbaa !65  ; 4 uses
  %i.c = icmp sgt i32 %.val, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = zext nneg i32 %1 to i64
  %i.e = shl nuw i64 1, %i.d                      ; 3 uses
  %wide.trip.count = zext nneg i32 %.val to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.f = icmp eq i32 %.val, 1
  br i1 %i.f, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.f ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.f ]
  %i.g = shl nuw i64 1, %indvars.iv
  %i.h = and i64 %i.g, %2
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %.val8, i64 %indvars.iv ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !68
  %i.k = or i64 %i.j, %i.e
  store i64 %i.k, ptr %i.i, align 8, !tbaa !68
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.l = shl nuw i64 2, %indvars.iv
  %i.m = and i64 %i.l, %2
  %.not.1 = icmp eq i64 %i.m, 0
  br i1 %.not.1, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.val8, i64 %indvars.iv
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !68
  %i.q = or i64 %i.p, %i.e
  store i64 %i.q, ptr %i.o, align 8, !tbaa !68
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !15

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod11 = trunc i32 %.val to i1
end_hunk_5
