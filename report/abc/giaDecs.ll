Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaDecs?download=true
inline.NumInlined: 136
inline.NumDeleted: 34
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 13
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@s_Truths6 = internal unnamed_addr constant [6 x i64] [i64 -6148914691236517206, i64 -3689348814741910324, i64 -1085102592571150096, i64 -71777214294589696, i64 -281470681808896, i64 -4294967296], align 16
@.str.1 = private unnamed_addr constant [59 x i8] c"Verification for function %d failed for %d minterm pairs.\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Size = %2d  \00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"Resub =%3d  \00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"Bidec =%3d  \00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"Isop =%3d  \00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"Bdd =%3d  \00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@__const.Vec_WrdStartTruthTables.Masks = private unnamed_addr constant [5 x i32] [i32 -1431655766, i32 -858993460, i32 -252645136, i32 -16711936, i32 -65536], align 16
@.str.9 = private unnamed_addr constant [22 x i8] c"OFF =%6d (%6.2f %%)  \00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"ON =%6d (%6.2f %%)  \00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"DC =%6d (%6.2f %%)\00", align 1
@str = private unnamed_addr constant [42 x i8] c"Internal error: Onset and Offset overlap.\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -2147483648, 2147483647) i32 @Gia_ResubVarNum(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4
  %.val4 = load i32, ptr %i.a, align 4, !tbaa !8  ; 3 uses
  %i.b = icmp eq i32 %.val4, 1
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val8 = load ptr, ptr %i.c, align 8, !tbaa !12 ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %.val8, align 4, !tbaa !13
  %i.e = icmp sgt i32 %i.d, 1
  %i.f = zext i1 %i.e to i32
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = sext i32 %.val4 to i64
  %i.h = getelementptr [4 x i8], ptr %.val8, i64 %i.g
  %i.i = getelementptr i8, ptr %i.h, i64 -4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !13
  %i.k = sdiv i32 %i.j, 2
  %.neg = sdiv i32 %.val4, -2
  %i.l = add nsw i32 %.neg, -1
  %i.m = add nsw i32 %i.l, %i.k
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.f, %bb.b ], [ %i.m, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i64 @Gia_ResubToTruth6_rec(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp slt i32 %1, %2
  br i1 %i.a, label %common.ret, label %bb.b

common.ret:                                       ; preds = %bb.a
  %i.b = sext i32 %1 to i64
  %i.c = getelementptr inbounds [8 x i8], ptr @s_Truths6, i64 %i.b
  %i.d = load i64, ptr %i.c, align 8, !tbaa !14
  br label %common.ret32

common.ret32:                                     ; preds = %bb.b, %common.ret
  %common.ret32.op = phi i64 [ %i.d, %common.ret ], [ %i.ab, %bb.b ]
  ret i64 %common.ret32.op

bb.b:                                             ; preds = %bb.a
  %i.e = sub nsw i32 %1, %2
  %i.f = shl nuw nsw i32 %i.e, 1
  %i.g = getelementptr i8, ptr %0, i64 8
  %.val30 = load ptr, ptr %i.g, align 8, !tbaa !12
  %i.h = zext nneg i32 %i.f to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %.val30, i64 %i.h ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !13   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !13   ; 3 uses
  %i.m = ashr i32 %i.j, 1
  %i.n = add nsw i32 %i.m, -2
  %i.o = tail call i64 @Gia_ResubToTruth6_rec(ptr noundef %0, i32 noundef %i.n, i32 noundef %2)
  %i.p = ashr i32 %i.l, 1
  %i.q = add nsw i32 %i.p, -2
  %i.r = tail call i64 @Gia_ResubToTruth6_rec(ptr noundef %0, i32 noundef %i.q, i32 noundef %2)
  %i.s = and i32 %i.j, 1
  %sext = sub nsw i32 0, %i.s
  %i.t = sext i32 %sext to i64
  %i.u = xor i64 %i.o, %i.t                       ; 2 uses
  %i.v = and i32 %i.l, 1
  %sext29 = sub nsw i32 0, %i.v
  %i.w = sext i32 %sext29 to i64
  %i.x = xor i64 %i.r, %i.w                       ; 2 uses
  %i.y = icmp sgt i32 %i.j, %i.l
  %i.z = xor i64 %i.x, %i.u
  %i.aa = and i64 %i.x, %i.u
  %i.ab = select i1 %i.y, i64 %i.z, i64 %i.aa
  br label %common.ret32
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i64 @Gia_ResubToTruth6(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4
  %.val = load i32, ptr %i.a, align 4, !tbaa !8   ; 3 uses
  %i.b = getelementptr i8, ptr %0, i64 8
  %.val10 = load ptr, ptr %i.b, align 8, !tbaa !12 ; 2 uses
  %i.c = sext i32 %.val to i64
  %i.d = getelementptr [4 x i8], ptr %.val10, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 -4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !13   ; 4 uses
  %i.g = icmp slt i32 %i.f, 2
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not = icmp ne i32 %i.f, 0
  %i.h = sext i1 %.not to i64
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.i = lshr i32 %i.f, 1                         ; 2 uses
  %i.j = add nsw i32 %i.i, -2
  %i.k = icmp eq i32 %.val, 1
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = load i32, ptr %.val10, align 4, !tbaa !13
  %i.m = icmp sgt i32 %i.l, 1
  %i.n = zext i1 %i.m to i32
  br label %Gia_ResubVarNum.exit

bb.e:                                             ; preds = %bb.c
  %.neg.i = sdiv i32 %.val, -2
  %i.o = add nsw i32 %.neg.i, -1
  %i.p = add nsw i32 %i.o, %i.i
  br label %Gia_ResubVarNum.exit

Gia_ResubVarNum.exit:                             ; preds = %bb.d, %bb.e
  %.0.i = phi i32 [ %i.n, %bb.d ], [ %i.p, %bb.e ]
  %i.q = tail call i64 @Gia_ResubToTruth6_rec(ptr noundef nonnull %0, i32 noundef %i.j, i32 noundef %.0.i)
  %i.r = and i32 %i.f, 1
  %sext = sub nsw i32 0, %i.r
  %i.s = sext i32 %sext to i64
  %i.t = xor i64 %i.q, %i.s
  br label %bb.f

bb.f:                                             ; preds = %Gia_ResubVarNum.exit, %bb.b
  %.0 = phi i64 [ %i.h, %bb.b ], [ %i.t, %Gia_ResubVarNum.exit ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define noalias noundef ptr @Gia_ManDeriveTruths(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 10 uses
  %i.b = getelementptr i8, ptr %4, i64 4          ; 2 uses
  %.val75 = load i32, ptr %i.b, align 4, !tbaa !8 ; 4 uses
  %i.c = icmp slt i32 %.val75, 7                  ; 2 uses
  %i.d = add nsw i32 %.val75, -6                  ; 2 uses
  %i.e = shl nuw i32 1, %i.d
  %i.f = select i1 %i.c, i32 1, i32 %i.e
  %.fr139 = freeze i32 %i.f                       ; 2 uses
  %i.g = getelementptr i8, ptr %2, i64 4
  %.val80 = load i32, ptr %i.g, align 4, !tbaa !16
  %i.h = sdiv i32 %.val80, 2
  %i.i = sdiv i32 %i.h, %5                        ; 4 uses
  %i.j = shl nsw i32 %i.i, 1
  %i.k = select i1 %i.c, i32 0, i32 %i.d          ; 5 uses
  %i.l = shl i32 %i.j, %i.k                       ; 6 uses
  %i.m = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #14 ; 4 uses
  %i.n = add i32 %i.l, -1
  %or.cond.i.i = icmp ult i32 %i.n, 15
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 16, i32 %i.l ; 3 uses
  store i32 %spec.store.select.i.i, ptr %i.m, align 8, !tbaa !19
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %Vec_WrdStart.exit93, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = sext i32 %spec.store.select.i.i to i64
  %i.p = shl nsw i64 %i.o, 3
  %i.q = tail call noalias ptr @malloc(i64 noundef %i.p) #14
  br label %Vec_WrdStart.exit93

Vec_WrdStart.exit93:                              ; preds = %bb.a, %bb.b
  %i.r = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ] ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.r, ptr %i.t, align 8, !tbaa !20
  store i32 %i.l, ptr %i.s, align 4, !tbaa !16
  %i.u = sext i32 %i.l to i64
  %i.v = shl nsw i64 %i.u, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.r, i8 0, i64 %i.v, i1 false)
  %i.w = shl nsw i32 %5, 6                        ; 7 uses
  %i.x = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #14 ; 5 uses
  store i32 %i.w, ptr %i.x, align 8, !tbaa !19
  %i.y = sext i32 %i.w to i64
  %i.z = shl nsw i64 %i.y, 3                      ; 2 uses
  %calloc177 = tail call ptr @calloc(i64 1, i64 %i.z) ; 3 uses
  %calloc177184 = ptrtoaddr ptr %calloc177 to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  store ptr %calloc177, ptr %i.ab, align 8, !tbaa !20
  store i32 %i.w, ptr %i.aa, align 4, !tbaa !16
  %i.ac = icmp sgt i32 %.val75, 0
  br i1 %i.ac, label %.lr.ph, label %Vec_WrdStart.exit97

.lr.ph:                                           ; preds = %Vec_WrdStart.exit93
  %i.ad = getelementptr i8, ptr %4, i64 8
  %.val77 = load ptr, ptr %i.ad, align 8, !tbaa !12
  %i.ae = getelementptr i8, ptr %3, i64 8
  %.val76 = load ptr, ptr %i.ae, align 8, !tbaa !12
  %i.af = getelementptr i8, ptr %1, i64 8
  %.val85 = load ptr, ptr %i.af, align 8, !tbaa !20 ; 2 uses
  %i.ag = icmp sgt i32 %5, 0
  %wide.trip.count.i = zext i32 %5 to i64         ; 7 uses
  br i1 %i.ag, label %.lr.ph.preheader.i.preheader, label %Vec_WrdStart.exit97

.lr.ph.preheader.i.preheader:                     ; preds = %.lr.ph
  %.val85185 = ptrtoaddr ptr %.val85 to i64
  %wide.trip.count = zext nneg i32 %.val75 to i64
  %i.ah = shl nuw nsw i64 %wide.trip.count.i, 3
  %min.iters.check = icmp ult i32 %5, 6
  %n.vec = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph.preheader.i.preheader, %Abc_TtCopy.exit.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.i.preheader ], [ %indvars.iv.next, %Abc_TtCopy.exit.loopexit ] ; 4 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.val77, i64 %indvars.iv
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !13
  %i.ak = mul nuw nsw i64 %indvars.iv, %wide.trip.count.i
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %calloc177, i64 %i.ak ; 6 uses
  %i.am = sext i32 %i.aj to i64
  %i.an = getelementptr inbounds [4 x i8], ptr %.val76, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !13
  %i.ap = mul nsw i32 %i.ao, %5
  %i.aq = sext i32 %i.ap to i64                   ; 2 uses
  %i.ar = getelementptr inbounds [8 x i8], ptr %.val85, i64 %i.aq ; 6 uses
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i
  %i.as = mul i64 %i.ah, %indvars.iv
  %i.at = shl nsw i64 %i.aq, 3
  %i.au = add i64 %i.as, %calloc177184
  %i.av = add i64 %i.at, %.val85185
  %i.aw = sub i64 %i.av, %i.au
  %diff.check = icmp ugt i64 %i.aw, -32
  br i1 %diff.check, label %.lr.ph.i.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %index ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %wide.load = load <2 x i64>, ptr %i.ax, align 8, !tbaa !14
  %wide.load186 = load <2 x i64>, ptr %i.ay, align 8, !tbaa !14
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %index ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store <2 x i64> %wide.load, ptr %i.az, align 8, !tbaa !14
  store <2 x i64> %wide.load186, ptr %i.ba, align 8, !tbaa !14
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !21

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %Abc_TtCopy.exit.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv.i.prol
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !14
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.i.prol
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !14
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !25

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.bf = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.bg = icmp ugt i64 %i.bf, -4
  br i1 %i.bg, label %Abc_TtCopy.exit.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv.i
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !14
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.i
  store i64 %i.bi, ptr %i.bj, align 8, !tbaa !14
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv.next.i
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !14
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.next.i
  store i64 %i.bl, ptr %i.bm, align 8, !tbaa !14
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv.next.i.1
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !14
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.next.i.1
  store i64 %i.bo, ptr %i.bp, align 8, !tbaa !14
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv.next.i.2
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !14
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.next.i.2
  store i64 %i.br, ptr %i.bs, align 8, !tbaa !14
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %Abc_TtCopy.exit.loopexit, label %.lr.ph.i, !llvm.loop !27

Abc_TtCopy.exit.loopexit:                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %Vec_WrdStart.exit97, label %.lr.ph.preheader.i, !llvm.loop !28

Vec_WrdStart.exit97:                              ; preds = %Abc_TtCopy.exit.loopexit, %.lr.ph, %Vec_WrdStart.exit93
  %i.bt = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #14 ; 5 uses
  store i32 %i.w, ptr %i.bt, align 8, !tbaa !19
  %calloc = tail call ptr @calloc(i64 1, i64 %i.z)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 4 uses
  store ptr %calloc, ptr %i.bv, align 8, !tbaa !20
  store i32 %i.w, ptr %i.bu, align 4, !tbaa !16
  tail call void @Extra_BitMatrixTransposeP(ptr noundef nonnull %i.x, i32 noundef %5, ptr noundef nonnull %i.bt, i32 noundef 1) #15
  %i.bw = icmp sgt i32 %i.i, 0
  br i1 %i.bw, label %.lr.ph125, label %._crit_edge126

.lr.ph125:                                        ; preds = %Vec_WrdStart.exit97
  %i.bx = getelementptr i8, ptr %2, i64 8         ; 2 uses
  %i.by = icmp sgt i32 %5, 0                      ; 2 uses
  %i.bz = icmp sgt i32 %.fr139, 0
  %wide.trip.count.i99 = zext nneg i32 %.fr139 to i64 ; 2 uses
  br i1 %i.bz, label %.lr.ph125.split.us.preheader, label %.lr.ph125.split

.lr.ph125.split.us.preheader:                     ; preds = %.lr.ph125
  %smax158 = tail call i32 @llvm.smax.i32(i32 %i.w, i32 1)
  %i.ca = sext i32 %5 to i64                      ; 2 uses
  %wide.trip.count164 = zext nneg i32 %i.i to i64
  %wide.trip.count159 = zext nneg i32 %smax158 to i64
  %.8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %.lr.ph125.split.us

.lr.ph125.split.us:                               ; preds = %.lr.ph125.split.us.preheader, %Abc_TtCountOnesVecMask.exit.thread.us
  %indvars.iv161 = phi i64 [ 0, %.lr.ph125.split.us.preheader ], [ %indvars.iv.next162, %Abc_TtCountOnesVecMask.exit.thread.us ] ; 3 uses
  %i.cb = shl nuw nsw i64 %indvars.iv161, 1       ; 3 uses
  %i.cc = mul nsw i64 %i.cb, %i.ca
  %.val84.us = load ptr, ptr %i.bx, align 8, !tbaa !20 ; 2 uses
  %i.cd = getelementptr inbounds [8 x i8], ptr %.val84.us, i64 %i.cc
  %i.ce = or disjoint i64 %i.cb, 1                ; 2 uses
  %i.cf = mul nsw i64 %i.ce, %i.ca
  %i.cg = getelementptr inbounds [8 x i8], ptr %.val84.us, i64 %i.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ch = trunc nsw i64 %i.cb to i32
  %i.ci = shl i32 %i.ch, %i.k
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.cj ; 3 uses
  store ptr %i.ck, ptr %i.a, align 16, !tbaa !29
  %i.cl = trunc nsw i64 %i.ce to i32
  %i.cm = shl i32 %i.cl, %i.k
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.cn ; 3 uses
  store ptr %i.co, ptr %.8..8..sroa_idx, align 8, !tbaa !29
  br i1 %i.by, label %.lr.ph123.us, label %.lr.ph.i100.us.preheader

.lr.ph123.us:                                     ; preds = %.lr.ph125.split.us, %bb.f
  %indvars.iv155 = phi i64 [ %indvars.iv.next156, %bb.f ], [ 0, %.lr.ph125.split.us ] ; 4 uses
  %.val88.us = load ptr, ptr %i.bv, align 8, !tbaa !20
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %.val88.us, i64 %indvars.iv155
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !14 ; 2 uses
  %i.cr = trunc i64 %i.cq to i32
  %i.cs = lshr i64 %indvars.iv155, 6
  %i.ct = and i64 %i.cs, 67108863                 ; 2 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.ct
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !14
  %i.cw = and i64 %indvars.iv155, 63              ; 2 uses
  %i.cx = lshr i64 %i.cv, %i.cw
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.ct
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !14
  %i.da = lshr i64 %i.cz, %i.cw                   ; 2 uses
  %i.db = trunc i64 %i.cx to i1                   ; 2 uses
  %i.dc = trunc i64 %i.da to i1                   ; 2 uses
  %or.cond.us = select i1 %i.db, i1 true, i1 %i.dc
  br i1 %or.cond.us, label %bb.c, label %bb.f

bb.c:                                             ; preds = %.lr.ph123.us
  %or.cond3.us = select i1 %i.db, i1 %i.dc, i1 false
  br i1 %or.cond3.us, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %puts.us = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %6 = shl i64 %i.da, 3
  %.0..sroa_stride = and i64 %6, 8
  %.0..0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 %.0..sroa_stride
  %i.dd = load ptr, ptr %.0..0..sroa_idx, align 8, !tbaa !29
  %i.de = and i64 %i.cq, 63
  %i.df = shl nuw i64 1, %i.de
  %i.dg = ashr i32 %i.cr, 6
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr inbounds [8 x i8], ptr %i.dd, i64 %i.dh ; 2 uses
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !14
  %i.dk = or i64 %i.dj, %i.df
  store i64 %i.dk, ptr %i.di, align 8, !tbaa !14
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph123.us
  %indvars.iv.next156 = add nuw nsw i64 %indvars.iv155, 1 ; 2 uses
  %exitcond160.not = icmp eq i64 %indvars.iv.next156, %wide.trip.count159
  br i1 %exitcond160.not, label %.lr.ph.i100.us.preheader, label %.lr.ph123.us, !llvm.loop !30

.lr.ph.i100.us.preheader:                         ; preds = %bb.f, %.lr.ph125.split.us
  br label %.lr.ph.i100.us

.lr.ph.i100.us:                                   ; preds = %.lr.ph.i100.us.preheader, %Abc_TtCountOnes2.exit.i.us
  %indvars.iv.i101.us = phi i64 [ %indvars.iv.next.i103.us, %Abc_TtCountOnes2.exit.i.us ], [ 0, %.lr.ph.i100.us.preheader ] ; 3 uses
  %.120.i.us = phi i32 [ %i.dt, %Abc_TtCountOnes2.exit.i.us ], [ 0, %.lr.ph.i100.us.preheader ]
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %indvars.iv.i101.us
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !14
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %indvars.iv.i101.us
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !14
  %i.dp = and i64 %i.do, %i.dm                    ; 2 uses
  %.not.i.i102.us = icmp eq i64 %i.dp, 0
  br i1 %.not.i.i102.us, label %Abc_TtCountOnes2.exit.i.us, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i100.us
  %i.dq = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 range(i64 1, 0) %i.dp)
  %i.dr = trunc nuw nsw i64 %i.dq to i32
  br label %Abc_TtCountOnes2.exit.i.us

Abc_TtCountOnes2.exit.i.us:                       ; preds = %bb.g, %.lr.ph.i100.us
  %i.ds = phi i32 [ %i.dr, %bb.g ], [ 0, %.lr.ph.i100.us ]
  %i.dt = add nuw nsw i32 %i.ds, %.120.i.us       ; 2 uses
  %indvars.iv.next.i103.us = add nuw nsw i64 %indvars.iv.i101.us, 1 ; 2 uses
  %exitcond.not.i104.us = icmp eq i64 %indvars.iv.next.i103.us, %wide.trip.count.i99
  br i1 %exitcond.not.i104.us, label %Abc_TtCountOnesVecMask.exit.us, label %.lr.ph.i100.us, !llvm.loop !31

Abc_TtCountOnesVecMask.exit.us:                   ; preds = %Abc_TtCountOnes2.exit.i.us
  %.not.us = icmp eq i32 %i.dt, 0
  br i1 %.not.us, label %Abc_TtCountOnesVecMask.exit.thread.us, label %.lr.ph.i108.us

.lr.ph.i108.us:                                   ; preds = %Abc_TtCountOnesVecMask.exit.us, %Abc_TtCountOnes2.exit.i112.us
  %indvars.iv.i109.us = phi i64 [ %indvars.iv.next.i113.us, %Abc_TtCountOnes2.exit.i112.us ], [ 0, %Abc_TtCountOnesVecMask.exit.us ] ; 3 uses
  %.120.i110.us = phi i32 [ %i.ec, %Abc_TtCountOnes2.exit.i112.us ], [ 0, %Abc_TtCountOnesVecMask.exit.us ]
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %indvars.iv.i109.us
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !14
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %indvars.iv.i109.us
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !14
  %i.dy = and i64 %i.dx, %i.dv                    ; 2 uses
  %.not.i.i111.us = icmp eq i64 %i.dy, 0
  br i1 %.not.i.i111.us, label %Abc_TtCountOnes2.exit.i112.us, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i108.us
  %i.dz = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 range(i64 1, 0) %i.dy)
  %i.ea = trunc nuw nsw i64 %i.dz to i32
  br label %Abc_TtCountOnes2.exit.i112.us

Abc_TtCountOnes2.exit.i112.us:                    ; preds = %bb.h, %.lr.ph.i108.us
  %i.eb = phi i32 [ %i.ea, %bb.h ], [ 0, %.lr.ph.i108.us ]
  %i.ec = add nuw nsw i32 %i.eb, %.120.i110.us    ; 2 uses
  %indvars.iv.next.i113.us = add nuw nsw i64 %indvars.iv.i109.us, 1 ; 2 uses
  %exitcond.not.i114.us = icmp eq i64 %indvars.iv.next.i113.us, %wide.trip.count.i99
  br i1 %exitcond.not.i114.us, label %Abc_TtCountOnesVecMask.exit115.us, label %.lr.ph.i108.us, !llvm.loop !31

Abc_TtCountOnesVecMask.exit115.us:                ; preds = %Abc_TtCountOnes2.exit.i112.us
  %i.ed = trunc nuw nsw i64 %indvars.iv161 to i32
  %i.ee = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %i.ed, i32 noundef %i.ec) ; 0 uses
  br label %Abc_TtCountOnesVecMask.exit.thread.us

Abc_TtCountOnesVecMask.exit.thread.us:            ; preds = %Abc_TtCountOnesVecMask.exit115.us, %Abc_TtCountOnesVecMask.exit.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %indvars.iv.next162 = add nuw nsw i64 %indvars.iv161, 1 ; 2 uses
  %exitcond165.not = icmp eq i64 %indvars.iv.next162, %wide.trip.count164
  br i1 %exitcond165.not, label %._crit_edge126, label %.lr.ph125.split.us, !llvm.loop !32

.lr.ph125.split:                                  ; preds = %.lr.ph125
  br i1 %i.by, label %.lr.ph123.us135.preheader, label %._crit_edge126

.lr.ph123.us135.preheader:                        ; preds = %.lr.ph125.split
  %i.ef = zext nneg i32 %5 to i64                 ; 2 uses
  %wide.trip.count153 = zext nneg i32 %i.i to i64
  %wide.trip.count148 = zext nneg i32 %i.w to i64
  %.8..8..sroa_idx198 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %.lr.ph123.us135

.lr.ph123.us135:                                  ; preds = %.lr.ph123.us135.preheader, %._crit_edge.us136
  %indvars.iv150 = phi i64 [ 0, %.lr.ph123.us135.preheader ], [ %indvars.iv.next151, %._crit_edge.us136 ] ; 2 uses
  %i.eg = shl nuw nsw i64 %indvars.iv150, 1       ; 3 uses
  %i.eh = mul nuw nsw i64 %i.eg, %i.ef
  %.val84.us128 = load ptr, ptr %i.bx, align 8, !tbaa !20 ; 2 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %.val84.us128, i64 %i.eh
  %i.ej = or disjoint i64 %i.eg, 1                ; 2 uses
  %i.ek = mul nuw nsw i64 %i.ej, %i.ef
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %.val84.us128, i64 %i.ek
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.em = trunc nuw nsw i64 %i.eg to i32
  %i.en = shl i32 %i.em, %i.k
  %i.eo = sext i32 %i.en to i64
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.eo
  store ptr %i.ep, ptr %i.a, align 16, !tbaa !29
  %i.eq = trunc nuw nsw i64 %i.ej to i32
  %i.er = shl i32 %i.eq, %i.k
  %i.es = sext i32 %i.er to i64
  %i.et = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.es
  store ptr %i.et, ptr %.8..8..sroa_idx198, align 8, !tbaa !29
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph123.us135, %bb.m
  %indvars.iv145 = phi i64 [ 0, %.lr.ph123.us135 ], [ %indvars.iv.next146, %bb.m ] ; 4 uses
  %.val88.us130 = load ptr, ptr %i.bv, align 8, !tbaa !20
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %.val88.us130, i64 %indvars.iv145
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !14 ; 2 uses
  %i.ew = trunc i64 %i.ev to i32
  %i.ex = lshr i64 %indvars.iv145, 6
  %i.ey = and i64 %i.ex, 67108863                 ; 2 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %i.ey
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !14
  %i.fb = and i64 %indvars.iv145, 63              ; 2 uses
  %i.fc = lshr i64 %i.fa, %i.fb
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %i.ey
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !14
  %i.ff = lshr i64 %i.fe, %i.fb                   ; 2 uses
  %i.fg = trunc i64 %i.fc to i1                   ; 2 uses
  %i.fh = trunc i64 %i.ff to i1                   ; 2 uses
  %or.cond.us131 = select i1 %i.fg, i1 true, i1 %i.fh
  br i1 %or.cond.us131, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %or.cond3.us132 = select i1 %i.fg, i1 %i.fh, i1 false
  br i1 %or.cond3.us132, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %puts.us133 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %7 = shl i64 %i.ff, 3
  %.0..sroa_stride171 = and i64 %7, 8
  %.0..0..sroa_idx197 = getelementptr inbounds nuw i8, ptr %i.a, i64 %.0..sroa_stride171
  %i.fi = load ptr, ptr %.0..0..sroa_idx197, align 8, !tbaa !29
  %i.fj = and i64 %i.ev, 63
  %i.fk = shl nuw i64 1, %i.fj
  %i.fl = ashr i32 %i.ew, 6
  %i.fm = sext i32 %i.fl to i64
  %i.fn = getelementptr inbounds [8 x i8], ptr %i.fi, i64 %i.fm ; 2 uses
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !14
  %i.fp = or i64 %i.fo, %i.fk
  store i64 %i.fp, ptr %i.fn, align 8, !tbaa !14
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i
  %indvars.iv.next146 = add nuw nsw i64 %indvars.iv145, 1 ; 2 uses
  %exitcond149.not = icmp eq i64 %indvars.iv.next146, %wide.trip.count148
  br i1 %exitcond149.not, label %._crit_edge.us136, label %bb.i, !llvm.loop !30

._crit_edge.us136:                                ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %indvars.iv.next151 = add nuw nsw i64 %indvars.iv150, 1 ; 2 uses
  %exitcond154.not = icmp eq i64 %indvars.iv.next151, %wide.trip.count153
  br i1 %exitcond154.not, label %._crit_edge126, label %.lr.ph123.us135, !llvm.loop !32

._crit_edge126:                                   ; preds = %._crit_edge.us136, %Abc_TtCountOnesVecMask.exit.thread.us, %.lr.ph125.split, %Vec_WrdStart.exit97
  %.val73 = load i32, ptr %i.b, align 4, !tbaa !8 ; 7 uses
  %i.fq = icmp slt i32 %.val73, 6
  %i.fr = icmp sgt i32 %i.l, 0
  %or.cond = and i1 %i.fq, %i.fr
  br i1 %or.cond, label %.lr.ph138, label %.critedge5

.lr.ph138:                                        ; preds = %._crit_edge126
  %i.fs = icmp eq i32 %.val73, 0
  %i.ft = icmp ult i32 %.val73, 2
  %i.fu = icmp ult i32 %.val73, 3
  %i.fv = icmp ult i32 %.val73, 4
  %i.fw = icmp ult i32 %.val73, 5
  %i.fx = icmp ult i32 %.val73, 6
  %wide.trip.count169 = zext nneg i32 %i.l to i64
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph138, %bb.n
  %indvars.iv166 = phi i64 [ 0, %.lr.ph138 ], [ %indvars.iv.next167, %bb.n ] ; 2 uses
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv166 ; 2 uses
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !14 ; 7 uses
  %i.ga = trunc i64 %i.fz to i1
  %i.gb = select i1 %i.ga, i64 3, i64 0
  %i.gc = and i64 %i.fz, 3
  %i.gd = select i1 %i.fs, i64 %i.gb, i64 %i.gc
  %i.ge = mul nuw nsw i64 %i.gd, 5
  %.126.i = select i1 %i.ft, i64 %i.ge, i64 %i.fz
  %i.gf = and i64 %.126.i, 15
  %i.gg = mul nuw nsw i64 %i.gf, 17
  %.227.i = select i1 %i.fu, i64 %i.gg, i64 %i.fz
  %i.gh = and i64 %.227.i, 255
  %i.gi = mul nuw nsw i64 %i.gh, 257
  %.328.i = select i1 %i.fv, i64 %i.gi, i64 %i.fz
  %i.gj = and i64 %.328.i, 65535
  %i.gk = mul nuw nsw i64 %i.gj, 65537
  %.429.i = select i1 %i.fw, i64 %i.gk, i64 %i.fz
  %i.gl = and i64 %.429.i, 4294967295
  %i.gm = mul nuw i64 %i.gl, 4294967297
  %.5.i = select i1 %i.fx, i64 %i.gm, i64 %i.fz
  store i64 %.5.i, ptr %i.fy, align 8, !tbaa !14
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1 ; 2 uses
  %exitcond170.not = icmp eq i64 %indvars.iv.next167, %wide.trip.count169
  br i1 %exitcond170.not, label %.critedge5, label %bb.n, !llvm.loop !33

.critedge5:                                       ; preds = %bb.n, %._crit_edge126
  %i.gn = load ptr, ptr %i.ab, align 8, !tbaa !20 ; 2 uses
  %.not.i = icmp eq ptr %i.gn, null
  br i1 %.not.i, label %Vec_WrdFree.exit, label %bb.o

bb.o:                                             ; preds = %.critedge5
  tail call void @free(ptr noundef nonnull %i.gn) #15
  br label %Vec_WrdFree.exit

Vec_WrdFree.exit:                                 ; preds = %.critedge5, %bb.o
  tail call void @free(ptr noundef nonnull %i.x) #15
  %i.go = load ptr, ptr %i.bv, align 8, !tbaa !20 ; 2 uses
  %.not.i116 = icmp eq ptr %i.go, null
  br i1 %.not.i116, label %Vec_WrdFree.exit117, label %bb.p

bb.p:                                             ; preds = %Vec_WrdFree.exit
  tail call void @free(ptr noundef nonnull %i.go) #15
  br label %Vec_WrdFree.exit117

Vec_WrdFree.exit117:                              ; preds = %Vec_WrdFree.exit, %bb.p
  tail call void @free(ptr noundef nonnull %i.bt) #15
  ret ptr %i.m
}

declare void @Extra_BitMatrixTransposeP(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define range(i32 -1073741824, 1073741824) i32 @Gia_ManCountResub(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp slt i32 %1, 7                       ; 2 uses
  %i.b = add nsw i32 %1, -6                       ; 2 uses
  %i.c = shl nuw i32 1, %i.b
  %.fr.i = freeze i32 %i.c
  %i.d = select i1 %i.a, i32 1, i32 %.fr.i        ; 5 uses
  %i.e = select i1 %i.a, i32 0, i32 %i.b          ; 2 uses
  %i.f = shl i32 %1, %i.e                         ; 3 uses
  %i.g = add i32 %i.f, -1
  %or.cond.i.i.i = icmp ult i32 %i.g, 15
  %spec.store.select.i.i.i = select i1 %or.cond.i.i.i, i32 16, i32 %i.f ; 2 uses
  %.not.i.i.i = icmp eq i32 %spec.store.select.i.i.i, 0
  br i1 %.not.i.i.i, label %Vec_WrdStart.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = sext i32 %spec.store.select.i.i.i to i64
  %i.i = shl nsw i64 %i.h, 3
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.i) #14
  br label %Vec_WrdStart.exit.i

Vec_WrdStart.exit.i:                              ; preds = %bb.b, %bb.a
  %i.k = phi ptr [ %i.j, %bb.b ], [ null, %bb.a ] ; 5 uses
  %i.l = sext i32 %i.f to i64
  %i.m = shl nsw i64 %i.l, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.k, i8 0, i64 %i.m, i1 false)
  %i.n = icmp sgt i32 %1, 0                       ; 2 uses
  %i.o = icmp sgt i32 %i.d, 0
  %or.cond = and i1 %i.n, %i.o
  br i1 %or.cond, label %.lr.ph34.split.us.split.us.preheader.i, label %Vec_WrdStartTruthTables.exit

.lr.ph34.split.us.split.us.preheader.i:           ; preds = %Vec_WrdStart.exit.i
  %i.p = shl nuw i32 %i.d, 1                      ; 2 uses
  %smax64.i = tail call i32 @llvm.smax.i32(i32 %i.p, i32 1)
  %wide.trip.count76.i = zext nneg i32 %1 to i64
  %wide.trip.count65.i = zext nneg i32 %smax64.i to i64 ; 6 uses
  %min.iters.check = icmp slt i32 %i.p, 8         ; 2 uses
  %n.vec72 = and i64 %wide.trip.count65.i, 2147483640 ; 3 uses
  %cmp.n79 = icmp eq i64 %n.vec72, %wide.trip.count65.i
  %n.vec = and i64 %wide.trip.count65.i, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count65.i
  br label %.lr.ph34.split.us.split.us.i

.lr.ph34.split.us.split.us.i:                     ; preds = %..loopexit28_crit_edge.us.us.i, %.lr.ph34.split.us.split.us.preheader.i
  %indvars.iv73.i = phi i64 [ 0, %.lr.ph34.split.us.split.us.preheader.i ], [ %indvars.iv.next74.i, %..loopexit28_crit_edge.us.us.i ] ; 4 uses
  %i.q = trunc i64 %indvars.iv73.i to i32         ; 2 uses
  %i.r = shl i32 %i.q, %i.e
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.s ; 4 uses
  %i.u = icmp samesign ult i64 %indvars.iv73.i, 5
  br i1 %i.u, label %.preheader.us.us.i, label %.preheader27.us.us.i

scalar.ph69:                                      ; preds = %scalar.ph69.preheader, %scalar.ph69
  %indvars.iv61.i = phi i64 [ %indvars.iv.next62.i, %scalar.ph69 ], [ %indvars.iv61.i.ph, %scalar.ph69.preheader ] ; 3 uses
  %i.v = trunc nuw nsw i64 %indvars.iv61.i to i32
  %i.w = and i32 %i.af, %i.v
  %.not.us.us.i = icmp ne i32 %i.w, 0
  %spec.select.i = sext i1 %.not.us.us.i to i32
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv61.i
  store i32 %spec.select.i, ptr %i.x, align 4, !tbaa !13
  %indvars.iv.next62.i = add nuw nsw i64 %indvars.iv61.i, 1 ; 2 uses
  %exitcond66.not.i = icmp eq i64 %indvars.iv.next62.i, %wide.trip.count65.i
  br i1 %exitcond66.not.i, label %..loopexit28_crit_edge.us.us.i, label %scalar.ph69, !llvm.loop !34

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv67.i = phi i64 [ %indvars.iv.next68.i, %scalar.ph ], [ %indvars.iv67.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv67.i
  store i32 %i.aa, ptr %i.y, align 4, !tbaa !13
  %indvars.iv.next68.i = add nuw nsw i64 %indvars.iv67.i, 1 ; 2 uses
  %exitcond72.not.i = icmp eq i64 %indvars.iv.next68.i, %wide.trip.count65.i
  br i1 %exitcond72.not.i, label %..loopexit28_crit_edge.us.us.i, label %scalar.ph, !llvm.loop !35

..loopexit28_crit_edge.us.us.i:                   ; preds = %scalar.ph69, %scalar.ph, %middle.block78, %middle.block
  %indvars.iv.next74.i = add nuw nsw i64 %indvars.iv73.i, 1 ; 2 uses
  %exitcond77.not.i = icmp eq i64 %indvars.iv.next74.i, %wide.trip.count76.i
  br i1 %exitcond77.not.i, label %Vec_WrdStartTruthTables.exit, label %.lr.ph34.split.us.split.us.i, !llvm.loop !36

.preheader.us.us.i:                               ; preds = %.lr.ph34.split.us.split.us.i
  %i.z = getelementptr inbounds nuw [4 x i8], ptr @__const.Vec_WrdStartTruthTables.Masks, i64 %indvars.iv73.i
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !13  ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.us.us.i
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.aa, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %index ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.ab, align 4, !tbaa !13
  store <4 x i32> %broadcast.splat, ptr %i.ac, align 4, !tbaa !13
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !37

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit28_crit_edge.us.us.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us.us.i, %middle.block
  %indvars.iv67.i.ph = phi i64 [ 0, %.preheader.us.us.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.preheader27.us.us.i:                             ; preds = %.lr.ph34.split.us.split.us.i
  %i.ae = add i32 %i.q, -5
  %i.af = shl nuw i32 1, %i.ae                    ; 2 uses
  br i1 %min.iters.check, label %scalar.ph69.preheader, label %vector.ph71

vector.ph71:                                      ; preds = %.preheader27.us.us.i
  %broadcast.splatinsert73 = insertelement <4 x i32> poison, i32 %i.af, i64 0
  %broadcast.splat74 = shufflevector <4 x i32> %broadcast.splatinsert73, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body75

vector.body75:                                    ; preds = %vector.body75, %vector.ph71
  %index76 = phi i64 [ 0, %vector.ph71 ], [ %index.next77, %vector.body75 ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph71 ], [ %vec.ind.next, %vector.body75 ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.ag = and <4 x i32> %broadcast.splat74, %vec.ind
  %i.ah = and <4 x i32> %broadcast.splat74, %step.add
  %i.ai = icmp ne <4 x i32> %i.ag, zeroinitializer
  %i.aj = icmp ne <4 x i32> %i.ah, zeroinitializer
end_hunk_0
