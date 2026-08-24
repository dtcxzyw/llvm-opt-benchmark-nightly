Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/linkCells?download=true
inline.NumInlined: 13
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: read, inaccessiblemem: readwrite, target_mem: none) uwtable
define dso_local noalias noundef ptr @initLinkCells(ptr nofree noundef readonly captures(none) %0, double noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias noundef dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #13 ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.f = load <2 x double>, ptr %i.b, align 8, !tbaa !8
  store <2 x double> %i.f, ptr %i.c, align 8, !tbaa !8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128
  %2 = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.i = load <2 x double>, ptr %i.d, align 8, !tbaa !8 ; 2 uses
  %i.j = insertelement <2 x double> poison, double %1, i64 0
  %i.k = shufflevector <2 x double> %i.j, <2 x double> poison, <2 x i32> zeroinitializer
  %i.l = fdiv <2 x double> %i.i, %i.k
  %i.m = fptosi <2 x double> %i.l to <2 x i32>    ; 3 uses
  %3 = extractelement <2 x i32> %i.m, i64 0       ; 3 uses
  store i32 %3, ptr %i.a, align 8, !tbaa !4
  %i.n = sitofp <2 x i32> %i.m to <2 x double>
  %i.o = fdiv <2 x double> %i.i, %i.n             ; 3 uses
  %4 = extractelement <2 x i32> %i.m, i64 1       ; 3 uses
  store i32 %4, ptr %i.h, align 4, !tbaa !4
  store <2 x double> %i.o, ptr %i.e, align 8, !tbaa !8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.s = load <2 x double>, ptr %i.q, align 8, !tbaa !8
  store <2 x double> %i.s, ptr %i.r, align 8, !tbaa !8
  %i.t = load <2 x double>, ptr %i.g, align 8, !tbaa !8
  store <2 x double> %i.t, ptr %2, align 8, !tbaa !8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.v = load double, ptr %i.u, align 8, !tbaa !8 ; 2 uses
  %i.w = fdiv double %i.v, %1
  %i.x = fptosi double %i.w to i32                ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %i.x, ptr %i.y, align 8, !tbaa !4
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.aa = sitofp i32 %i.x to double
  %i.ab = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.v, i64 0
  %i.ac = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ad = insertelement <2 x double> %i.ac, double %i.aa, i64 0
  %i.ae = fdiv <2 x double> %i.ab, %i.ad          ; 2 uses
  store <2 x double> %i.ae, ptr %i.z, align 8, !tbaa !8
  %i.af = shufflevector <2 x double> %i.o, <2 x double> %i.ae, <2 x i32> <i32 1, i32 2>
  %i.ag = fdiv <2 x double> splat (double 1.000000e+00), %i.af
  store <2 x double> %i.ag, ptr %i.p, align 8, !tbaa !8
  %i.ah = mul i32 %4, %i.x                        ; 2 uses
  %i.ai = mul i32 %i.ah, %3                       ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !10
  %i.ak = add nsw i32 %3, 2
  %i.al = add i32 %4, 2
  %i.am = add i32 %i.al, %i.x
  %i.an = mul nsw i32 %i.am, %i.ak
  %i.ao = add nsw i32 %i.an, %i.ah
  %i.ap = shl nsw i32 %i.ao, 1                    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 %i.ap, ptr %i.aq, align 8, !tbaa !14
  %i.ar = add nsw i32 %i.ap, %i.ai                ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !15
  %i.at = sext i32 %i.ar to i64
  %i.au = shl nsw i64 %i.at, 2
  %i.av = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934592, 8589934589) %i.au) #13 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !16
  %i.ax = icmp sgt i32 %i.ar, 0
  br i1 %i.ax, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.ay = zext nneg i32 %i.ar to i64
  %i.az = shl nuw nsw i64 %i.ay, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.av, i8 0, i64 %i.az, i1 false), !tbaa !4
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.a
  ret ptr %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define dso_local void @destroyLinkCells(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !17     ; 2 uses
  %.not6 = icmp eq ptr %i.a, null
  br i1 %.not6, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16
  tail call void @free(ptr noundef %i.c) #14
  %i.d = load ptr, ptr %0, align 8, !tbaa !17
  tail call void @free(ptr noundef %i.d) #14
  store ptr null, ptr %0, align 8, !tbaa !17
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i32 @getNeighborBoxes(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 7 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !10   ; 2 uses
  %i.c = icmp slt i32 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %0, align 4, !tbaa !4      ; 2 uses
  %i.e = srem i32 %1, %i.d
  %i.f = sdiv i32 %1, %i.d                        ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !4    ; 2 uses
  %i.i = srem i32 %i.f, %i.h
  %i.j = sdiv i32 %i.f, %i.h
  br label %getTuple.exit

bb.c:                                             ; preds = %bb.a
  %i.k = sub nsw i32 %1, %i.b                     ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !4    ; 7 uses
  %i.n = shl nsw i32 %i.m, 1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load i32, ptr %i.o, align 4, !tbaa !4    ; 5 uses
  %i.q = mul nsw i32 %i.n, %i.p
  %i.r = icmp slt i32 %i.k, %i.q
  br i1 %i.r, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.s = mul nsw i32 %i.p, %i.m                   ; 2 uses
  %i.t = icmp slt i32 %i.k, %i.s
  br i1 %i.t, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = sub nsw i32 %i.k, %i.s
  %i.v = load i32, ptr %0, align 4, !tbaa !4
  %i.w = add nsw i32 %i.v, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.074.i = phi i32 [ %i.w, %bb.e ], [ 0, %bb.d ]
  %.0.i = phi i32 [ %i.u, %bb.e ], [ %i.k, %bb.d ] ; 2 uses
  %i.x = srem i32 %.0.i, %i.m
  %i.y = add nsw i32 %i.x, 1
  %i.z = sdiv i32 %.0.i, %i.m
  br label %bb.j

bb.g:                                             ; preds = %bb.c
  %i.aa = shl nsw i32 %i.p, 1                     ; 2 uses
  %i.ab = load i32, ptr %0, align 4, !tbaa !4     ; 3 uses
  %i.ac = add i32 %i.m, 2                         ; 2 uses
  %i.ad = add i32 %i.ab, %i.ac
  %i.ae = mul nsw i32 %i.ad, %i.aa                ; 2 uses
  %i.af = icmp slt i32 %i.k, %i.ae
  br i1 %i.af, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ag = mul nsw i32 %i.aa, %i.m
  %i.ah = sub nsw i32 %i.k, %i.ag                 ; 2 uses
  %i.ai = add nsw i32 %i.ab, 2                    ; 3 uses
  %i.aj = mul nsw i32 %i.ai, %i.p                 ; 2 uses
  %i.ak = icmp slt i32 %i.ah, %i.aj               ; 2 uses
  %i.al = add nsw i32 %i.m, 1
  %.071.i = select i1 %i.ak, i32 0, i32 %i.al
  %i.am = select i1 %i.ak, i32 0, i32 %i.aj
  %.1.i = sub nsw i32 %i.ah, %i.am                ; 2 uses
  %i.an = srem i32 %.1.i, %i.ai
  %i.ao = sdiv i32 %.1.i, %i.ai
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ap = sub nsw i32 %i.k, %i.ae                 ; 2 uses
  %i.aq = add nsw i32 %i.ab, 2                    ; 3 uses
  %i.ar = mul nsw i32 %i.aq, %i.ac                ; 2 uses
  %i.as = icmp slt i32 %i.ap, %i.ar               ; 2 uses
  %.068.i = select i1 %i.as, i32 -1, i32 %i.p
  %i.at = select i1 %i.as, i32 0, i32 %i.ar
  %.2.i = sub nsw i32 %i.ap, %i.at                ; 2 uses
  %i.au = srem i32 %.2.i, %i.aq
  %i.av = sdiv i32 %.2.i, %i.aq
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.f
  %.175.i = phi i32 [ %.074.i, %bb.f ], [ %i.an, %bb.h ], [ %i.au, %bb.i ]
  %.172.i = phi i32 [ %i.y, %bb.f ], [ %.071.i, %bb.h ], [ %i.av, %bb.i ]
  %.169.i = phi i32 [ %i.z, %bb.f ], [ %i.ao, %bb.h ], [ %.068.i, %bb.i ]
  %i.aw = add nsw i32 %.175.i, -1
  %i.ax = add nsw i32 %.172.i, -1
  br label %getTuple.exit

getTuple.exit:                                    ; preds = %bb.b, %bb.j
  %.276.i = phi i32 [ %i.e, %bb.b ], [ %i.aw, %bb.j ] ; 2 uses
  %.273.i = phi i32 [ %i.i, %bb.b ], [ %i.ax, %bb.j ] ; 2 uses
  %.270.i = phi i32 [ %i.j, %bb.b ], [ %.169.i, %bb.j ] ; 2 uses
  %i.ay = add nsw i32 %.276.i, -1
  %i.az = add nsw i32 %.273.i, -1
  %i.ba = add nsw i32 %.270.i, -1
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  br label %bb.l

bb.k:                                             ; preds = %bb.m
  %i.bd = trunc nsw i64 %indvars.iv.next to i32
  ret i32 %i.bd

bb.l:                                             ; preds = %getTuple.exit, %bb.m
  %.01530 = phi i32 [ %i.ay, %getTuple.exit ], [ %i.bf, %bb.m ] ; 5 uses
  %.01629 = phi i64 [ 0, %getTuple.exit ], [ %indvars.iv.next, %bb.m ]
  %i.be = icmp eq i32 %.01530, -1
  %i.bf = add i32 %.01530, 1                      ; 5 uses
  br label %bb.n

bb.m:                                             ; preds = %bb.o
  %.not = icmp sgt i32 %.01530, %.276.i
  br i1 %.not, label %bb.k, label %bb.l

bb.n:                                             ; preds = %bb.l, %bb.o
  %.01428 = phi i32 [ %i.az, %bb.l ], [ %i.bi, %bb.o ] ; 9 uses
  %.127 = phi i64 [ %.01629, %bb.l ], [ %indvars.iv.next, %bb.o ]
  %i.bg = icmp eq i32 %.01428, -1
  %i.bh = shl i32 %.01428, 1
  %i.bi = add nsw i32 %.01428, 1                  ; 2 uses
  %i.bj = add i32 %.01428, 3
  br label %bb.p

bb.o:                                             ; preds = %getBoxFromTuple.exit
  %.not17 = icmp sgt i32 %.01428, %.273.i
  br i1 %.not17, label %bb.m, label %bb.n

bb.p:                                             ; preds = %bb.n, %getBoxFromTuple.exit
  %indvars.iv = phi i64 [ %.127, %bb.n ], [ %indvars.iv.next, %getBoxFromTuple.exit ] ; 2 uses
  %.026 = phi i32 [ %i.ba, %bb.n ], [ %i.dj, %getBoxFromTuple.exit ] ; 10 uses
  %i.bk = load i32, ptr %i.bb, align 4, !tbaa !4  ; 6 uses
  %i.bl = icmp eq i32 %.026, %i.bk
  br i1 %i.bl, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bm = load i32, ptr %i.a, align 4, !tbaa !10
  %i.bn = shl nsw i32 %.026, 1                    ; 2 uses
  %i.bo = load i32, ptr %i.bc, align 4, !tbaa !4  ; 2 uses
  %i.bp = mul nsw i32 %i.bo, %i.bn
  %i.bq = load i32, ptr %0, align 4, !tbaa !4
end_hunk_0
