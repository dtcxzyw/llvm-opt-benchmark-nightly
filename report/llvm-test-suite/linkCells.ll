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
  %i.a = tail call noalias noundef dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #13 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.f = load <2 x double>, ptr %i.b, align 8, !tbaa !8
  store <2 x double> %i.f, ptr %i.c, align 8, !tbaa !8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.i = load <2 x double>, ptr %i.d, align 8, !tbaa !8 ; 2 uses
  %i.j = insertelement <2 x double> poison, double %1, i64 0
  %i.k = shufflevector <2 x double> %i.j, <2 x double> poison, <2 x i32> zeroinitializer
  %i.l = fdiv <2 x double> %i.i, %i.k
  %i.m = fptosi <2 x double> %i.l to <2 x i32>    ; 4 uses
  %i.n = sitofp <2 x i32> %i.m to <2 x double>
  %i.o = fdiv <2 x double> %i.i, %i.n             ; 3 uses
  store <2 x i32> %i.m, ptr %i.a, align 8, !tbaa !4
  store <2 x double> %i.o, ptr %i.e, align 8, !tbaa !8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.s = load <2 x double>, ptr %i.q, align 8, !tbaa !8
  store <2 x double> %i.s, ptr %i.r, align 8, !tbaa !8
  %i.t = load <2 x double>, ptr %i.g, align 8, !tbaa !8
  store <2 x double> %i.t, ptr %i.h, align 8, !tbaa !8
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
  %i.ah = extractelement <2 x i32> %i.m, i64 1    ; 2 uses
  %i.ai = mul i32 %i.ah, %i.x                     ; 2 uses
  %i.aj = extractelement <2 x i32> %i.m, i64 0    ; 2 uses
  %i.ak = mul i32 %i.ai, %i.aj                    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !10
  %i.am = add nsw i32 %i.aj, 2
  %i.an = add i32 %i.ah, 2
  %i.ao = add i32 %i.an, %i.x
  %i.ap = mul nsw i32 %i.ao, %i.am
  %i.aq = add nsw i32 %i.ap, %i.ai
  %i.ar = shl nsw i32 %i.aq, 1                    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 %i.ar, ptr %i.as, align 8, !tbaa !14
  %i.at = add nsw i32 %i.ar, %i.ak                ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i32 %i.at, ptr %i.au, align 4, !tbaa !15
  %i.av = sext i32 %i.at to i64
  %i.aw = shl nsw i64 %i.av, 2
  %i.ax = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934592, 8589934589) %i.aw) #13 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !16
  %i.az = icmp sgt i32 %i.at, 0
  br i1 %i.az, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.ba = zext nneg i32 %i.at to i64
  %i.bb = shl nuw nsw i64 %i.ba, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ax, i8 0, i64 %i.bb, i1 false), !tbaa !4
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
  %i.m = load i32, ptr %i.l, align 4, !tbaa !4    ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load i32, ptr %i.n, align 4, !tbaa !4    ; 4 uses
  %3 = shl i32 %i.o, 1                            ; 2 uses
  %i.p = mul i32 %3, %i.m                         ; 2 uses
  %i.q = icmp slt i32 %i.k, %i.p
  br i1 %i.q, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.r = mul nsw i32 %i.o, %i.m                   ; 2 uses
  %i.s = icmp slt i32 %i.k, %i.r
  br i1 %i.s, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = sub nsw i32 %i.k, %i.r
  %i.u = load i32, ptr %0, align 4, !tbaa !4
  %i.v = add nsw i32 %i.u, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.074.i = phi i32 [ %i.v, %bb.e ], [ 0, %bb.d ]
  %.0.i = phi i32 [ %i.t, %bb.e ], [ %i.k, %bb.d ] ; 2 uses
  %i.w = srem i32 %.0.i, %i.m
  %i.x = add nsw i32 %i.w, 1
  %i.y = sdiv i32 %.0.i, %i.m
  br label %bb.j

bb.g:                                             ; preds = %bb.c
  %i.z = load i32, ptr %0, align 4, !tbaa !4      ; 2 uses
  %i.aa = add i32 %i.m, 2                         ; 2 uses
  %i.ab = add i32 %i.z, %i.aa
  %i.ac = mul nsw i32 %i.ab, %3                   ; 2 uses
  %i.ad = icmp slt i32 %i.k, %i.ac
  %4 = add nsw i32 %i.z, 2                        ; 6 uses
  br i1 %i.ad, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ae = sub nsw i32 %i.k, %i.p                  ; 2 uses
  %i.af = mul nsw i32 %4, %i.o                    ; 2 uses
  %i.ag = icmp slt i32 %i.ae, %i.af               ; 2 uses
  %i.ah = add nsw i32 %i.m, 1
  %.071.i = select i1 %i.ag, i32 0, i32 %i.ah
  %i.ai = select i1 %i.ag, i32 0, i32 %i.af
  %.1.i = sub nsw i32 %i.ae, %i.ai                ; 2 uses
  %i.aj = srem i32 %.1.i, %4
  %i.ak = sdiv i32 %.1.i, %4
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.al = sub nsw i32 %i.k, %i.ac                 ; 2 uses
  %i.am = mul nsw i32 %4, %i.aa                   ; 2 uses
  %i.an = icmp slt i32 %i.al, %i.am               ; 2 uses
  %.068.i = select i1 %i.an, i32 -1, i32 %i.o
  %i.ao = select i1 %i.an, i32 0, i32 %i.am
  %.2.i = sub nsw i32 %i.al, %i.ao                ; 2 uses
  %i.ap = srem i32 %.2.i, %4
  %i.aq = sdiv i32 %.2.i, %4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.f
  %.175.i = phi i32 [ %.074.i, %bb.f ], [ %i.aj, %bb.h ], [ %i.ap, %bb.i ]
  %.172.i = phi i32 [ %i.x, %bb.f ], [ %.071.i, %bb.h ], [ %i.aq, %bb.i ]
  %.169.i = phi i32 [ %i.y, %bb.f ], [ %i.ak, %bb.h ], [ %.068.i, %bb.i ]
  %i.ar = add nsw i32 %.175.i, -1
  %i.as = add nsw i32 %.172.i, -1
  br label %getTuple.exit

getTuple.exit:                                    ; preds = %bb.b, %bb.j
  %.276.i = phi i32 [ %i.e, %bb.b ], [ %i.ar, %bb.j ] ; 2 uses
  %.273.i = phi i32 [ %i.i, %bb.b ], [ %i.as, %bb.j ] ; 2 uses
  %.270.i = phi i32 [ %i.j, %bb.b ], [ %.169.i, %bb.j ] ; 2 uses
  %i.at = add nsw i32 %.276.i, -1
  %i.au = add nsw i32 %.273.i, -1
  %i.av = add nsw i32 %.270.i, -1
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  br label %bb.l

bb.k:                                             ; preds = %bb.m
  %i.ay = trunc nsw i64 %indvars.iv.next to i32
  ret i32 %i.ay

bb.l:                                             ; preds = %getTuple.exit, %bb.m
  %.01530 = phi i32 [ %i.at, %getTuple.exit ], [ %i.ba, %bb.m ] ; 5 uses
  %.01629 = phi i64 [ 0, %getTuple.exit ], [ %indvars.iv.next, %bb.m ]
  %i.az = icmp eq i32 %.01530, -1
  %i.ba = add i32 %.01530, 1                      ; 5 uses
  br label %bb.n

bb.m:                                             ; preds = %bb.o
  %.not = icmp sgt i32 %.01530, %.276.i
  br i1 %.not, label %bb.k, label %bb.l

bb.n:                                             ; preds = %bb.l, %bb.o
  %.01428 = phi i32 [ %i.au, %bb.l ], [ %i.bd, %bb.o ] ; 9 uses
  %.127 = phi i64 [ %.01629, %bb.l ], [ %indvars.iv.next, %bb.o ]
  %i.bb = icmp eq i32 %.01428, -1
  %i.bc = shl i32 %.01428, 1
  %i.bd = add nsw i32 %.01428, 1                  ; 2 uses
  %i.be = add i32 %.01428, 3
  br label %bb.p

bb.o:                                             ; preds = %getBoxFromTuple.exit
  %.not17 = icmp sgt i32 %.01428, %.273.i
  br i1 %.not17, label %bb.m, label %bb.n

bb.p:                                             ; preds = %bb.n, %getBoxFromTuple.exit
  %indvars.iv = phi i64 [ %.127, %bb.n ], [ %indvars.iv.next, %getBoxFromTuple.exit ] ; 2 uses
  %.026 = phi i32 [ %i.av, %bb.n ], [ %i.de, %getBoxFromTuple.exit ] ; 10 uses
  %i.bf = load i32, ptr %i.aw, align 4, !tbaa !4  ; 6 uses
  %i.bg = icmp eq i32 %.026, %i.bf
  br i1 %i.bg, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bh = load i32, ptr %i.a, align 4, !tbaa !10
  %i.bi = shl nsw i32 %.026, 1                    ; 2 uses
  %i.bj = load i32, ptr %i.ax, align 4, !tbaa !4  ; 2 uses
  %i.bk = mul nsw i32 %i.bj, %i.bi
  %i.bl = load i32, ptr %0, align 4, !tbaa !4
  %i.bm = add nsw i32 %i.bl, 2
  %reass.add71.i = add i32 %i.be, %i.bi
  %reass.add72.i = add i32 %reass.add71.i, %i.bj
  %reass.mul73.i = mul i32 %i.bm, %reass.add72.i
  %i.bn = add i32 %i.ba, %i.bh
  %i.bo = add i32 %i.bn, %i.bk
  %i.bp = add i32 %i.bo, %reass.mul73.i
  br label %getBoxFromTuple.exit

bb.r:                                             ; preds = %bb.p
  %i.bq = icmp eq i32 %.026, -1
  br i1 %i.bq, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.br = load i32, ptr %i.a, align 4, !tbaa !10
  %i.bs = shl nsw i32 %i.bf, 1                    ; 2 uses
  %i.bt = load i32, ptr %i.ax, align 4, !tbaa !4
  %i.bu = mul nsw i32 %i.bt, %i.bs
  %i.bv = load i32, ptr %0, align 4, !tbaa !4
  %i.bw = add nsw i32 %i.bv, 2
  %reass.add69.i = add i32 %i.bd, %i.bs
  %reass.mul70.i = mul i32 %i.bw, %reass.add69.i
  %i.bx = add i32 %i.ba, %i.br
  %i.by = add i32 %i.bx, %i.bu
  %i.bz = add i32 %i.by, %reass.mul70.i
  br label %getBoxFromTuple.exit

bb.t:                                             ; preds = %bb.r
  %i.ca = load i32, ptr %i.ax, align 4, !tbaa !4  ; 5 uses
  %i.cb = icmp eq i32 %.01428, %i.ca
  br i1 %i.cb, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cc = load i32, ptr %i.a, align 4, !tbaa !10
  %i.cd = mul i32 %i.bc, %i.bf
  %i.ce = load i32, ptr %0, align 4, !tbaa !4
  %i.cf = add nsw i32 %i.ce, 2
  %reass.add67.i = add i32 %i.bf, %.026
  %reass.mul68.i = mul i32 %i.cf, %reass.add67.i
  %i.cg = add i32 %i.ba, %i.cd
  %i.ch = add i32 %i.cg, %i.cc
  %i.ci = add i32 %i.ch, %reass.mul68.i
  br label %getBoxFromTuple.exit

bb.v:                                             ; preds = %bb.t
  br i1 %i.bb, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cj = load i32, ptr %i.a, align 4, !tbaa !10
  %i.ck = shl nsw i32 %i.bf, 1
  %i.cl = mul nsw i32 %i.ck, %i.ca
  %i.cm = load i32, ptr %0, align 4, !tbaa !4
  %i.cn = add nsw i32 %i.cm, 2
  %i.co = mul nsw i32 %i.cn, %.026
  %i.cp = add i32 %i.ba, %i.cl
  %i.cq = add i32 %i.cp, %i.cj
  %i.cr = add i32 %i.cq, %i.co
  br label %getBoxFromTuple.exit

bb.x:                                             ; preds = %bb.v
  %i.cs = load i32, ptr %0, align 4, !tbaa !4     ; 2 uses
  %i.ct = icmp eq i32 %.01530, %i.cs
  br i1 %i.ct, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cu = load i32, ptr %i.a, align 4, !tbaa !10
  %reass.add65.i = add i32 %i.bf, %.026
  %reass.mul66.i = mul i32 %i.ca, %reass.add65.i
  %i.cv = add i32 %reass.mul66.i, %.01428
  %i.cw = add i32 %i.cv, %i.cu
  br label %getBoxFromTuple.exit

bb.z:                                             ; preds = %bb.x
  br i1 %i.az, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cx = load i32, ptr %i.a, align 4, !tbaa !10
  %i.cy = mul nsw i32 %i.ca, %.026
  %i.cz = add i32 %i.cy, %.01428
  %i.da = add i32 %i.cz, %i.cx
  br label %getBoxFromTuple.exit

bb.ab:                                            ; preds = %bb.z
  %i.db = mul i32 %i.ca, %.026
  %reass.add.i = add i32 %i.db, %.01428
  %reass.mul.i = mul i32 %i.cs, %reass.add.i
  %i.dc = add i32 %reass.mul.i, %.01530
  br label %getBoxFromTuple.exit

getBoxFromTuple.exit:                             ; preds = %bb.q, %bb.s, %bb.u, %bb.w, %bb.y, %bb.aa, %bb.ab
  %.0.i19 = phi i32 [ %i.bp, %bb.q ], [ %i.bz, %bb.s ], [ %i.ci, %bb.u ], [ %i.cr, %bb.w ], [ %i.cw, %bb.y ], [ %i.da, %bb.aa ], [ %i.dc, %bb.ab ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 4 uses
  %i.dd = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv
  store i32 %.0.i19, ptr %i.dd, align 4, !tbaa !4
  %i.de = add nsw i32 %.026, 1
  %.not18 = icmp sgt i32 %.026, %.270.i
  br i1 %.not18, label %bb.o, label %bb.p
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @getBoxFromTuple(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 4, !tbaa !4    ; 6 uses
  %i.c = icmp eq i32 %3, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !10
  %i.f = shl nsw i32 %3, 1                        ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !4    ; 2 uses
  %i.i = mul nsw i32 %i.h, %i.f
  %i.j = load i32, ptr %0, align 4, !tbaa !4
  %i.k = add nsw i32 %i.j, 2
  %i.l = add i32 %2, 3
  %reass.add71 = add i32 %i.l, %i.f
  %reass.add72 = add i32 %reass.add71, %i.h
  %reass.mul73 = mul i32 %reass.add72, %i.k
  %i.m = add i32 %1, 1
  %i.n = add i32 %i.m, %i.e
  %i.o = add i32 %i.n, %i.i
  %i.p = add i32 %i.o, %reass.mul73
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.q = icmp eq i32 %3, -1
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !10
  %i.t = shl nsw i32 %i.b, 1                      ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !4
  %i.w = mul nsw i32 %i.v, %i.t
  %i.x = load i32, ptr %0, align 4, !tbaa !4
end_hunk_0
