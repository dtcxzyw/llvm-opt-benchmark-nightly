inline.NumInlined: 8
inline.NumDeleted: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.VP8DistoStats = type { i32, i32, i32, i32, i32, i32 }

@VP8AccumulateSSE = external local_unnamed_addr global ptr, align 8
@VP8SSIMGet = external local_unnamed_addr global ptr, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @VP8SSIMDspInitSSE2() local_unnamed_addr #0 {
bb.a:
  store ptr @AccumulateSSE_SSE2, ptr @VP8AccumulateSSE, align 8, !tbaa !7
  store ptr @SSIMGet_SSE2, ptr @VP8SSIMGet, align 8, !tbaa !7
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal i32 @AccumulateSSE_SSE2(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #1 {
bb.a:
  %i.a = icmp sgt i32 %2, 15
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.04354 = load <2 x i64>, ptr %1, align 1, !tbaa !9 ; 2 uses
  %.04455 = load <2 x i64>, ptr %0, align 1, !tbaa !9 ; 2 uses
  %.not56 = icmp samesign ult i32 %2, 48
  br i1 %.not56, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.b = add nsw i32 %2, -32
  %i.c = zext nneg i32 %i.b to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 16, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 4 uses
  %.04459 = phi <2 x i64> [ %.04455, %.lr.ph.preheader ], [ %.044, %.lr.ph ]
  %.04358 = phi <2 x i64> [ %.04354, %.lr.ph.preheader ], [ %.043, %.lr.ph ]
  %i.d = phi <4 x i32> [ zeroinitializer, %.lr.ph.preheader ], [ %i.ai, %.lr.ph ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.f = load <16 x i8>, ptr %i.e, align 1, !tbaa !9 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.h = load <16 x i8>, ptr %i.g, align 1, !tbaa !9 ; 2 uses
  %i.i = add nuw nsw i64 %indvars.iv, 16          ; 2 uses
  %i.j = bitcast <2 x i64> %.04459 to <16 x i8>   ; 2 uses
  %i.k = bitcast <2 x i64> %.04358 to <16 x i8>   ; 2 uses
  %i.l = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.j, <16 x i8> %i.k)
  %i.m = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.k, <16 x i8> %i.j)
  %i.n = or <16 x i8> %i.l, %i.m                  ; 2 uses
  %i.o = shufflevector <16 x i8> %i.n, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.p = shufflevector <16 x i8> %i.n, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.q = bitcast <16 x i8> %i.o to <8 x i16>      ; 2 uses
  %i.r = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.q, <8 x i16> %i.q)
  %i.s = bitcast <16 x i8> %i.p to <8 x i16>      ; 2 uses
  %i.t = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.s, <8 x i16> %i.s)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %i.i
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %i.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 32 ; 2 uses
  %i.w = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.f, <16 x i8> %i.h)
  %i.x = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.h, <16 x i8> %i.f)
  %i.y = or <16 x i8> %i.w, %i.x                  ; 2 uses
  %i.z = shufflevector <16 x i8> %i.y, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.aa = shufflevector <16 x i8> %i.y, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.ab = bitcast <16 x i8> %i.z to <8 x i16>     ; 2 uses
  %i.ac = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ab, <8 x i16> %i.ab)
  %i.ad = bitcast <16 x i8> %i.aa to <8 x i16>    ; 2 uses
  %i.ae = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ad, <8 x i16> %i.ad)
  %i.af = add <4 x i32> %i.r, %i.d
  %i.ag = add <4 x i32> %i.af, %i.t
  %i.ah = add <4 x i32> %i.ag, %i.ac
  %i.ai = add <4 x i32> %i.ah, %i.ae              ; 2 uses
  %.043 = load <2 x i64>, ptr %i.v, align 1, !tbaa !9 ; 2 uses
  %.044 = load <2 x i64>, ptr %i.u, align 1, !tbaa !9 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.c
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !10

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.aj = add nuw i32 %2, 2147483600
  %i.ak = and i32 %i.aj, 2147483616
  %i.al = add nuw i32 %i.ak, 48
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %.lcssa = phi <4 x i32> [ zeroinitializer, %bb.b ], [ %i.ai, %._crit_edge.loopexit ]
  %.0.lcssa = phi i32 [ 16, %bb.b ], [ %i.al, %._crit_edge.loopexit ]
  %.043.lcssa = phi <2 x i64> [ %.04354, %bb.b ], [ %.043, %._crit_edge.loopexit ]
  %.044.lcssa = phi <2 x i64> [ %.04455, %bb.b ], [ %.044, %._crit_edge.loopexit ]
  %i.am = bitcast <2 x i64> %.044.lcssa to <16 x i8> ; 2 uses
  %i.an = bitcast <2 x i64> %.043.lcssa to <16 x i8> ; 2 uses
  %i.ao = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.am, <16 x i8> %i.an)
  %i.ap = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.an, <16 x i8> %i.am)
  %i.aq = or <16 x i8> %i.ao, %i.ap               ; 2 uses
  %i.ar = shufflevector <16 x i8> %i.aq, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.as = shufflevector <16 x i8> %i.aq, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.at = bitcast <16 x i8> %i.ar to <8 x i16>    ; 2 uses
  %i.au = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.at, <8 x i16> %i.at)
  %i.av = bitcast <16 x i8> %i.as to <8 x i16>    ; 2 uses
  %i.aw = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.av, <8 x i16> %i.av)
  %i.ax = add <4 x i32> %i.au, %.lcssa
  %i.ay = add <4 x i32> %i.ax, %i.aw
  %i.az = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ay)
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  %.040 = phi i32 [ %i.az, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %.1 = phi i32 [ %.0.lcssa, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.ba = icmp slt i32 %.1, %2
  br i1 %i.ba, label %.lr.ph66.preheader, label %._crit_edge67

.lr.ph66.preheader:                               ; preds = %bb.c
  %i.bb = zext nneg i32 %.1 to i64                ; 3 uses
  %i.bc = xor i32 %.1, -1
  %i.bd = add i32 %2, %i.bc                       ; 2 uses
  %i.be = zext i32 %i.bd to i64
  %i.bf = add nuw nsw i64 %i.be, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.bd, 7
  br i1 %min.iters.check, label %.lr.ph66.preheader90, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph66.preheader
  %n.vec = and i64 %i.bf, 8589934584              ; 3 uses
  %i.bg = add nuw nsw i64 %n.vec, %i.bb
  %i.bh = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.040, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.bh, %vector.ph ], [ %i.bv, %vector.body ]
  %vec.phi86 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bw, %vector.body ]
  %i.bi = add nuw i64 %index, %i.bb               ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 %i.bi ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  %wide.load = load <4 x i8>, ptr %i.bj, align 1, !tbaa !9
  %wide.load87 = load <4 x i8>, ptr %i.bk, align 1, !tbaa !9
  %i.bl = zext <4 x i8> %wide.load to <4 x i32>
  %i.bm = zext <4 x i8> %wide.load87 to <4 x i32>
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 %i.bi ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %wide.load88 = load <4 x i8>, ptr %i.bn, align 1, !tbaa !9
  %wide.load89 = load <4 x i8>, ptr %i.bo, align 1, !tbaa !9
  %i.bp = zext <4 x i8> %wide.load88 to <4 x i32>
  %i.bq = zext <4 x i8> %wide.load89 to <4 x i32>
  %i.br = sub nsw <4 x i32> %i.bl, %i.bp          ; 2 uses
  %i.bs = sub nsw <4 x i32> %i.bm, %i.bq          ; 2 uses
  %i.bt = mul nsw <4 x i32> %i.br, %i.br
  %i.bu = mul nsw <4 x i32> %i.bs, %i.bs
  %i.bv = add <4 x i32> %i.bt, %vec.phi           ; 2 uses
  %i.bw = add <4 x i32> %i.bu, %vec.phi86         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bx = icmp eq i64 %index.next, %n.vec
  br i1 %i.bx, label %middle.block, label %vector.body, !llvm.loop !12

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bw, %i.bv
  %i.by = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.bf, %n.vec
  br i1 %cmp.n, label %._crit_edge67, label %.lr.ph66.preheader90

.lr.ph66.preheader90:                             ; preds = %.lr.ph66.preheader, %middle.block
  %indvars.iv75.ph = phi i64 [ %i.bb, %.lr.ph66.preheader ], [ %i.bg, %middle.block ]
  %.14163.ph = phi i32 [ %.040, %.lr.ph66.preheader ], [ %i.by, %middle.block ]
  br label %.lr.ph66

.lr.ph66:                                         ; preds = %.lr.ph66.preheader90, %.lr.ph66
  %indvars.iv75 = phi i64 [ %indvars.iv.next76, %.lr.ph66 ], [ %indvars.iv75.ph, %.lr.ph66.preheader90 ] ; 3 uses
  %.14163 = phi i32 [ %i.ch, %.lr.ph66 ], [ %.14163.ph, %.lr.ph66.preheader90 ]
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv75
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !9
  %i.cb = zext i8 %i.ca to i32
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv75
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !9
  %i.ce = zext i8 %i.cd to i32
  %i.cf = sub nsw i32 %i.cb, %i.ce                ; 2 uses
  %i.cg = mul nsw i32 %i.cf, %i.cf
  %i.ch = add i32 %i.cg, %.14163                  ; 2 uses
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1 ; 2 uses
  %i.ci = trunc nuw i64 %indvars.iv.next76 to i32
  %i.cj = icmp sgt i32 %2, %i.ci
  br i1 %i.cj, label %.lr.ph66, label %._crit_edge67, !llvm.loop !15

._crit_edge67:                                    ; preds = %.lr.ph66, %middle.block, %bb.c
  %.141.lcssa = phi i32 [ %.040, %bb.c ], [ %i.by, %middle.block ], [ %i.ch, %.lr.ph66 ]
  ret i32 %.141.lcssa
}

; Function Attrs: nounwind uwtable
define internal double @SSIMGet_SSE2(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #2 {
bb.a:
  %4 = alloca %struct.VP8DistoStats, align 4      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %i.a = load i64, ptr %0, align 1, !tbaa !9
  %i.b = insertelement <2 x i64> poison, i64 %i.a, i64 0
  %i.c = load i64, ptr %2, align 1, !tbaa !9
  %i.d = insertelement <2 x i64> poison, i64 %i.c, i64 0
  %i.e = bitcast <2 x i64> %i.b to <16 x i8>
  %i.f = shufflevector <16 x i8> %i.e, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.g = bitcast <2 x i64> %i.d to <16 x i8>
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.i = bitcast <16 x i8> %i.f to <8 x i16>      ; 3 uses
  %i.j = mul nuw nsw <8 x i16> %i.i, <i16 1, i16 2, i16 3, i16 4, i16 3, i16 2, i16 1, i16 0> ; 2 uses
  %i.k = bitcast <16 x i8> %i.h to <8 x i16>      ; 2 uses
  %i.l = mul nuw nsw <8 x i16> %i.k, <i16 1, i16 2, i16 3, i16 4, i16 3, i16 2, i16 1, i16 0> ; 3 uses
  %i.m = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.i, <8 x i16> %i.j)
  %i.n = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.i, <8 x i16> %i.l)
  %i.o = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.k, <8 x i16> %i.l)
  %i.p = sext i32 %1 to i64                       ; 6 uses
  %i.q = getelementptr inbounds i8, ptr %0, i64 %i.p ; 2 uses
  %i.r = sext i32 %3 to i64                       ; 6 uses
  %i.s = getelementptr inbounds i8, ptr %2, i64 %i.r ; 2 uses
  %i.t = load i64, ptr %i.q, align 1, !tbaa !9
  %i.u = insertelement <2 x i64> poison, i64 %i.t, i64 0
  %i.v = load i64, ptr %i.s, align 1, !tbaa !9
  %i.w = insertelement <2 x i64> poison, i64 %i.v, i64 0
  %i.x = bitcast <2 x i64> %i.u to <16 x i8>
  %i.y = shufflevector <16 x i8> %i.x, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.z = bitcast <2 x i64> %i.w to <16 x i8>
  %i.aa = shufflevector <16 x i8> %i.z, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ab = bitcast <16 x i8> %i.y to <8 x i16>     ; 3 uses
  %i.ac = mul nuw nsw <8 x i16> %i.ab, <i16 2, i16 4, i16 6, i16 8, i16 6, i16 4, i16 2, i16 0> ; 2 uses
  %i.ad = bitcast <16 x i8> %i.aa to <8 x i16>    ; 2 uses
  %i.ae = mul nuw nsw <8 x i16> %i.ad, <i16 2, i16 4, i16 6, i16 8, i16 6, i16 4, i16 2, i16 0> ; 3 uses
  %i.af = add nuw nsw <8 x i16> %i.ac, %i.j
  %i.ag = add nuw nsw <8 x i16> %i.ae, %i.l
  %i.ah = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ab, <8 x i16> %i.ac)
  %i.ai = add <4 x i32> %i.ah, %i.m
  %i.aj = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ab, <8 x i16> %i.ae)
  %i.ak = add <4 x i32> %i.aj, %i.n
  %i.al = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ad, <8 x i16> %i.ae)
  %i.am = add <4 x i32> %i.al, %i.o
  %i.an = getelementptr inbounds i8, ptr %i.q, i64 %i.p ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %i.s, i64 %i.r ; 2 uses
  %i.ap = load i64, ptr %i.an, align 1, !tbaa !9
  %i.aq = insertelement <2 x i64> poison, i64 %i.ap, i64 0
  %i.ar = load i64, ptr %i.ao, align 1, !tbaa !9
  %i.as = insertelement <2 x i64> poison, i64 %i.ar, i64 0
  %i.at = bitcast <2 x i64> %i.aq to <16 x i8>
  %i.au = shufflevector <16 x i8> %i.at, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.av = bitcast <2 x i64> %i.as to <16 x i8>
  %i.aw = shufflevector <16 x i8> %i.av, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ax = bitcast <16 x i8> %i.au to <8 x i16>    ; 3 uses
  %i.ay = mul nuw nsw <8 x i16> %i.ax, <i16 3, i16 6, i16 9, i16 12, i16 9, i16 6, i16 3, i16 0> ; 2 uses
  %i.az = bitcast <16 x i8> %i.aw to <8 x i16>    ; 2 uses
  %i.ba = mul nuw nsw <8 x i16> %i.az, <i16 3, i16 6, i16 9, i16 12, i16 9, i16 6, i16 3, i16 0> ; 3 uses
  %i.bb = add nuw nsw <8 x i16> %i.af, %i.ay
  %i.bc = add nuw nsw <8 x i16> %i.ag, %i.ba
  %i.bd = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ax, <8 x i16> %i.ay)
  %i.be = add <4 x i32> %i.ai, %i.bd
  %i.bf = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ax, <8 x i16> %i.ba)
  %i.bg = add <4 x i32> %i.ak, %i.bf
  %i.bh = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.az, <8 x i16> %i.ba)
  %i.bi = add <4 x i32> %i.am, %i.bh
  %i.bj = getelementptr inbounds i8, ptr %i.an, i64 %i.p ; 2 uses
  %i.bk = getelementptr inbounds i8, ptr %i.ao, i64 %i.r ; 2 uses
  %i.bl = load i64, ptr %i.bj, align 1, !tbaa !9
  %i.bm = insertelement <2 x i64> poison, i64 %i.bl, i64 0
  %i.bn = load i64, ptr %i.bk, align 1, !tbaa !9
  %i.bo = insertelement <2 x i64> poison, i64 %i.bn, i64 0
  %i.bp = bitcast <2 x i64> %i.bm to <16 x i8>
  %i.bq = shufflevector <16 x i8> %i.bp, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.br = bitcast <2 x i64> %i.bo to <16 x i8>
  %i.bs = shufflevector <16 x i8> %i.br, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.bt = bitcast <16 x i8> %i.bq to <8 x i16>    ; 3 uses
  %i.bu = mul nuw nsw <8 x i16> %i.bt, <i16 4, i16 8, i16 12, i16 16, i16 12, i16 8, i16 4, i16 0> ; 2 uses
  %i.bv = bitcast <16 x i8> %i.bs to <8 x i16>    ; 2 uses
  %i.bw = mul nuw nsw <8 x i16> %i.bv, <i16 4, i16 8, i16 12, i16 16, i16 12, i16 8, i16 4, i16 0> ; 3 uses
  %i.bx = add nuw nsw <8 x i16> %i.bb, %i.bu
  %i.by = add nuw nsw <8 x i16> %i.bc, %i.bw
  %i.bz = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.bt, <8 x i16> %i.bu)
  %i.ca = add <4 x i32> %i.be, %i.bz
  %i.cb = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.bt, <8 x i16> %i.bw)
  %i.cc = add <4 x i32> %i.bg, %i.cb
  %i.cd = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.bv, <8 x i16> %i.bw)
  %i.ce = add <4 x i32> %i.bi, %i.cd
  %i.cf = getelementptr inbounds i8, ptr %i.bj, i64 %i.p ; 2 uses
  %i.cg = getelementptr inbounds i8, ptr %i.bk, i64 %i.r ; 2 uses
  %i.ch = load i64, ptr %i.cf, align 1, !tbaa !9
  %i.ci = insertelement <2 x i64> poison, i64 %i.ch, i64 0
  %i.cj = load i64, ptr %i.cg, align 1, !tbaa !9
  %i.ck = insertelement <2 x i64> poison, i64 %i.cj, i64 0
  %i.cl = bitcast <2 x i64> %i.ci to <16 x i8>
  %i.cm = shufflevector <16 x i8> %i.cl, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
end_hunk_0
