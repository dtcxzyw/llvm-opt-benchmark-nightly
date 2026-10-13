Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/bwdifdsp?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ff_bwdif_filter_intra_c(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 %7, i32 noundef %8) #0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 4 uses
  %i.b = ptrtoaddr ptr %0 to i64                  ; 4 uses
  %i.c = icmp sgt i32 %2, 0
  br i1 %i.c, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.a
  %i.d = sext i32 %4 to i64                       ; 4 uses
  %i.e = sext i32 %3 to i64                       ; 4 uses
  %i.f = sext i32 %6 to i64                       ; 4 uses
  %i.g = sext i32 %5 to i64                       ; 4 uses
  %i.h = zext nneg i32 %2 to i64                  ; 5 uses
  %min.iters.check = icmp ult i32 %2, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.i = add i64 %i.a, %i.g
  %i.j = sub i64 %i.i, %i.b
  %diff.check = icmp ugt i64 %i.j, -16
  %i.k = add i64 %i.a, %i.f
  %i.l = sub i64 %i.k, %i.b
  %diff.check22 = icmp ugt i64 %i.l, -16
  %conflict.rdx = or i1 %diff.check, %diff.check22
  %i.m = add i64 %i.a, %i.e
  %i.n = sub i64 %i.m, %i.b
  %diff.check23 = icmp ugt i64 %i.n, -16
  %conflict.rdx24 = or i1 %conflict.rdx, %diff.check23
  %i.o = add i64 %i.a, %i.d
  %i.p = sub i64 %i.o, %i.b
  %diff.check25 = icmp ugt i64 %i.p, -16
  %conflict.rdx26 = or i1 %conflict.rdx24, %diff.check25
  br i1 %conflict.rdx26, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check27 = icmp ult i32 %2, 16
  br i1 %min.iters.check27, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.q = and i64 %i.h, 12
  %n.vec = and i64 %i.h, 2147483632               ; 6 uses
  %i.r = trunc nuw nsw i64 %n.vec to i32
  %i.s = getelementptr i8, ptr %1, i64 %n.vec
  %i.t = getelementptr i8, ptr %0, i64 %n.vec
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %8, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %1, i64 %index ; 4 uses
  %next.gep28 = getelementptr i8, ptr %0, i64 %index
  %i.u = getelementptr inbounds i8, ptr %next.gep, i64 %i.d
  %wide.load = load <16 x i8>, ptr %i.u, align 1, !tbaa !9
  %i.v = zext <16 x i8> %wide.load to <16 x i32>
  %i.w = getelementptr inbounds i8, ptr %next.gep, i64 %i.e
  %wide.load29 = load <16 x i8>, ptr %i.w, align 1, !tbaa !9
  %i.x = zext <16 x i8> %wide.load29 to <16 x i32>
  %i.y = add nuw nsw <16 x i32> %i.x, %i.v
  %i.z = mul nuw nsw <16 x i32> %i.y, splat (i32 5077)
  %i.aa = getelementptr inbounds i8, ptr %next.gep, i64 %i.f
  %wide.load30 = load <16 x i8>, ptr %i.aa, align 1, !tbaa !9
  %i.ab = zext <16 x i8> %wide.load30 to <16 x i32>
  %i.ac = getelementptr inbounds i8, ptr %next.gep, i64 %i.g
  %wide.load31 = load <16 x i8>, ptr %i.ac, align 1, !tbaa !9
  %i.ad = zext <16 x i8> %wide.load31 to <16 x i32>
  %i.ae = add nuw nsw <16 x i32> %i.ad, %i.ab
  %i.af = mul nsw <16 x i32> %i.ae, splat (i32 -981)
  %i.ag = add nsw <16 x i32> %i.af, %i.z
  %i.ah = ashr <16 x i32> %i.ag, splat (i32 13)   ; 2 uses
  %i.ai = icmp slt <16 x i32> %i.ah, zeroinitializer
  %i.aj = tail call <16 x i32> @llvm.smin.v16i32(<16 x i32> %i.ah, <16 x i32> %broadcast.splat)
  %i.ak = trunc <16 x i32> %i.aj to <16 x i8>
  %i.al = select <16 x i1> %i.ai, <16 x i8> zeroinitializer, <16 x i8> %i.ak
  store <16 x i8> %i.al, ptr %next.gep28, align 1, !tbaa !9
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !15

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.h
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.q, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !18

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec34 = and i64 %i.h, 2147483644             ; 5 uses
  %i.an = trunc nuw nsw i64 %n.vec34 to i32
  %i.ao = getelementptr i8, ptr %1, i64 %n.vec34
  %i.ap = getelementptr i8, ptr %0, i64 %n.vec34
  %broadcast.splatinsert35 = insertelement <4 x i32> poison, i32 %8, i64 0
  %broadcast.splat36 = shufflevector <4 x i32> %broadcast.splatinsert35, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index37 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next44, %vec.epilog.vector.body ] ; 3 uses
  %next.gep38 = getelementptr i8, ptr %1, i64 %index37 ; 4 uses
  %next.gep39 = getelementptr i8, ptr %0, i64 %index37
  %i.aq = getelementptr inbounds i8, ptr %next.gep38, i64 %i.d
  %wide.load40 = load <4 x i8>, ptr %i.aq, align 1, !tbaa !9
  %i.ar = zext <4 x i8> %wide.load40 to <4 x i32>
  %i.as = getelementptr inbounds i8, ptr %next.gep38, i64 %i.e
  %wide.load41 = load <4 x i8>, ptr %i.as, align 1, !tbaa !9
  %i.at = zext <4 x i8> %wide.load41 to <4 x i32>
  %i.au = add nuw nsw <4 x i32> %i.at, %i.ar
  %i.av = mul nuw nsw <4 x i32> %i.au, splat (i32 5077)
  %i.aw = getelementptr inbounds i8, ptr %next.gep38, i64 %i.f
  %wide.load42 = load <4 x i8>, ptr %i.aw, align 1, !tbaa !9
  %i.ax = zext <4 x i8> %wide.load42 to <4 x i32>
  %i.ay = getelementptr inbounds i8, ptr %next.gep38, i64 %i.g
  %wide.load43 = load <4 x i8>, ptr %i.ay, align 1, !tbaa !9
  %i.az = zext <4 x i8> %wide.load43 to <4 x i32>
  %i.ba = add nuw nsw <4 x i32> %i.az, %i.ax
  %i.bb = mul nsw <4 x i32> %i.ba, splat (i32 -981)
  %i.bc = add nsw <4 x i32> %i.bb, %i.av
  %i.bd = ashr <4 x i32> %i.bc, splat (i32 13)    ; 2 uses
  %i.be = icmp slt <4 x i32> %i.bd, zeroinitializer
  %i.bf = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.bd, <4 x i32> %broadcast.splat36)
  %i.bg = trunc <4 x i32> %i.bf to <4 x i8>
  %i.bh = select <4 x i1> %i.be, <4 x i8> zeroinitializer, <4 x i8> %i.bg
  store <4 x i8> %i.bh, ptr %next.gep39, align 1, !tbaa !9
  %index.next44 = add nuw i64 %index37, 4         ; 2 uses
  %i.bi = icmp eq i64 %index.next44, %n.vec34
  br i1 %i.bi, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !16

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n45 = icmp eq i64 %n.vec34, %i.h
  br i1 %cmp.n45, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.021.ph = phi i32 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.r, %vec.epilog.iter.check ], [ %i.an, %vec.epilog.middle.block ]
  %.01720.ph = phi ptr [ %1, %iter.check ], [ %1, %vector.memcheck ], [ %i.s, %vec.epilog.iter.check ], [ %i.ao, %vec.epilog.middle.block ]
  %.01819.ph = phi ptr [ %0, %iter.check ], [ %0, %vector.memcheck ], [ %i.t, %vec.epilog.iter.check ], [ %i.ap, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.021 = phi i32 [ %i.cf, %vec.epilog.scalar.ph ], [ %.021.ph, %vec.epilog.scalar.ph.preheader ]
  %.01720 = phi ptr [ %i.ce, %vec.epilog.scalar.ph ], [ %.01720.ph, %vec.epilog.scalar.ph.preheader ] ; 5 uses
  %.01819 = phi ptr [ %i.cd, %vec.epilog.scalar.ph ], [ %.01819.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.bj = getelementptr inbounds i8, ptr %.01720, i64 %i.d
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !9
  %i.bl = zext i8 %i.bk to i32
  %i.bm = getelementptr inbounds i8, ptr %.01720, i64 %i.e
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !9
  %i.bo = zext i8 %i.bn to i32
  %i.bp = add nuw nsw i32 %i.bo, %i.bl
  %i.bq = mul nuw nsw i32 %i.bp, 5077
  %i.br = getelementptr inbounds i8, ptr %.01720, i64 %i.f
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !9
  %i.bt = zext i8 %i.bs to i32
  %i.bu = getelementptr inbounds i8, ptr %.01720, i64 %i.g
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !9
  %i.bw = zext i8 %i.bv to i32
  %i.bx = add nuw nsw i32 %i.bw, %i.bt
  %.neg = mul nsw i32 %i.bx, -981
  %i.by = add nsw i32 %.neg, %i.bq
  %i.bz = ashr i32 %i.by, 13                      ; 2 uses
  %i.ca = icmp slt i32 %i.bz, 0
  %..i = tail call i32 @llvm.smin.i32(i32 %i.bz, i32 %8)
  %i.cb = trunc i32 %..i to i8
  %i.cc = select i1 %i.ca, i8 0, i8 %i.cb
  store i8 %i.cc, ptr %.01819, align 1, !tbaa !9
  %i.cd = getelementptr inbounds nuw i8, ptr %.01819, i64 1
  %i.ce = getelementptr inbounds nuw i8, ptr %.01720, i64 1
  %i.cf = add nuw nsw i32 %.021, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.cf, %2
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !17

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ff_bwdif_filter_line_c(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %14) #1 {
bb.a:
  %i.a = icmp sgt i32 %4, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.not = icmp eq i32 %13, 0                      ; 2 uses
  %i.b = select i1 %.not, ptr %3, ptr %2
  %i.c = select i1 %.not, ptr %2, ptr %1
  %i.d = sext i32 %6 to i64                       ; 3 uses
  %i.e = sext i32 %5 to i64                       ; 3 uses
  %i.f = sext i32 %8 to i64                       ; 2 uses
  %i.g = sext i32 %7 to i64                       ; 2 uses
  %i.h = sext i32 %10 to i64                      ; 2 uses
  %i.i = sext i32 %9 to i64                       ; 2 uses
  %i.j = sext i32 %12 to i64                      ; 2 uses
  %i.k = sext i32 %11 to i64                      ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %.0225 = phi i32 [ 0, %.lr.ph ], [ %i.eg, %bb.g ]
  %.0186224 = phi ptr [ %i.b, %.lr.ph ], [ %i.ef, %bb.g ] ; 6 uses
  %.0187223 = phi ptr [ %i.c, %.lr.ph ], [ %i.ee, %bb.g ] ; 6 uses
  %.0188222 = phi ptr [ %3, %.lr.ph ], [ %i.ed, %bb.g ] ; 3 uses
  %.0189220 = phi ptr [ %2, %.lr.ph ], [ %i.eb, %bb.g ] ; 7 uses
  %.0190219 = phi ptr [ %1, %.lr.ph ], [ %i.ec, %bb.g ] ; 3 uses
  %.0191218 = phi ptr [ %0, %.lr.ph ], [ %i.ea, %bb.g ] ; 2 uses
  %i.l = getelementptr inbounds i8, ptr %.0189220, i64 %i.d
  %i.m = load i8, ptr %i.l, align 1, !tbaa !9     ; 2 uses
  %i.n = zext i8 %i.m to i32                      ; 7 uses
  %i.o = load i8, ptr %.0187223, align 1, !tbaa !9
  %i.p = zext i8 %i.o to i32                      ; 2 uses
  %i.q = load i8, ptr %.0186224, align 1, !tbaa !9
  %i.r = zext i8 %i.q to i32                      ; 2 uses
  %i.s = add nuw nsw i32 %i.r, %i.p               ; 2 uses
  %i.t = lshr i32 %i.s, 1                         ; 5 uses
  %i.u = getelementptr inbounds i8, ptr %.0189220, i64 %i.e
  %i.v = load i8, ptr %i.u, align 1, !tbaa !9     ; 2 uses
  %i.w = zext i8 %i.v to i32                      ; 7 uses
  %i.x = sub nsw i32 %i.p, %i.r
  %i.y = tail call i32 @llvm.abs.i32(i32 %i.x, i1 true) ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %.0190219, i64 %i.d
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !9
  %i.ab = zext i8 %i.aa to i32
  %i.ac = sub nsw i32 %i.ab, %i.n
  %i.ad = tail call i32 @llvm.abs.i32(i32 %i.ac, i1 true)
  %i.ae = getelementptr inbounds i8, ptr %.0190219, i64 %i.e
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !9
  %i.ag = zext i8 %i.af to i32
  %i.ah = sub nsw i32 %i.ag, %i.w
  %i.ai = tail call i32 @llvm.abs.i32(i32 %i.ah, i1 true)
  %i.aj = add nuw nsw i32 %i.ai, %i.ad
  %i.ak = lshr i32 %i.aj, 1
  %i.al = getelementptr inbounds i8, ptr %.0188222, i64 %i.d
end_hunk_0
begin_hunk_1_@ff_bwdif_filter_line_c:bb.a
bb.e:                                             ; preds = %bb.c
  %i.dm = add nuw nsw i32 %i.w, %i.n
  %i.dn = mul nuw nsw i32 %i.dm, 5077
  %i.do = getelementptr inbounds i8, ptr %.0189220, i64 %i.h
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !9
  %i.dq = zext i8 %i.dp to i32
  %i.dr = getelementptr inbounds i8, ptr %.0189220, i64 %i.i
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !9
  %i.dt = zext i8 %i.ds to i32
  %i.du = add nuw nsw i32 %i.dt, %i.dq
  %.neg = mul nsw i32 %i.du, -981
  %i.dv = add nsw i32 %.neg, %i.dn
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0185.in = phi i32 [ %i.dl, %bb.d ], [ %i.dv, %bb.e ]
  %.0185 = ashr i32 %.0185.in, 13                 ; 2 uses
  %i.dw = add nuw nsw i32 %i.cc, %i.t             ; 2 uses
  %i.dx = icmp sgt i32 %.0185, %i.dw
  %i.dy = sub nsw i32 %i.t, %i.cc
  %spec.select = tail call i32 @llvm.smax.i32(i32 %.0185, i32 %i.dy)
  %.1 = select i1 %i.dx, i32 %i.dw, i32 %spec.select ; 2 uses
  %i.dz = icmp slt i32 %.1, 0
  %..i = tail call i32 @llvm.smin.i32(i32 %.1, i32 %14)
  %.0.i = select i1 %i.dz, i32 0, i32 %..i
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.f
  %storemerge.in = phi i32 [ %.0.i, %bb.f ], [ %i.t, %bb.b ]
  %storemerge = trunc i32 %storemerge.in to i8
  store i8 %storemerge, ptr %.0191218, align 1, !tbaa !9
  %i.ea = getelementptr inbounds nuw i8, ptr %.0191218, i64 1
  %i.eb = getelementptr inbounds nuw i8, ptr %.0189220, i64 1
  %i.ec = getelementptr inbounds nuw i8, ptr %.0190219, i64 1
  %i.ed = getelementptr inbounds nuw i8, ptr %.0188222, i64 1
  %i.ee = getelementptr inbounds nuw i8, ptr %.0187223, i64 1
  %i.ef = getelementptr inbounds nuw i8, ptr %.0186224, i64 1
  %i.eg = add nuw nsw i32 %.0225, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.eg, %4
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !19

._crit_edge:                                      ; preds = %bb.g, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ff_bwdif_filter_edge_c(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11) #1 {
bb.a:
  %i.a = icmp sgt i32 %4, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.not = icmp eq i32 %9, 0                       ; 2 uses
  %i.b = select i1 %.not, ptr %3, ptr %2
  %i.c = select i1 %.not, ptr %2, ptr %1
  %i.d = sext i32 %6 to i64                       ; 3 uses
  %i.e = sext i32 %5 to i64                       ; 3 uses
  %.not181 = icmp eq i32 %11, 0
  %i.f = sext i32 %8 to i64                       ; 2 uses
  %i.g = sext i32 %7 to i64                       ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.0151188 = phi i32 [ 0, %.lr.ph ], [ %i.ck, %bb.f ]
  %.0153187 = phi ptr [ %i.b, %.lr.ph ], [ %i.cj, %bb.f ] ; 4 uses
  %.0154186 = phi ptr [ %i.c, %.lr.ph ], [ %i.ci, %bb.f ] ; 4 uses
  %.0155185 = phi ptr [ %3, %.lr.ph ], [ %i.ch, %bb.f ] ; 3 uses
  %.0156184 = phi ptr [ %2, %.lr.ph ], [ %i.cf, %bb.f ] ; 3 uses
  %.0157183 = phi ptr [ %1, %.lr.ph ], [ %i.cg, %bb.f ] ; 3 uses
  %.0158182 = phi ptr [ %0, %.lr.ph ], [ %i.ce, %bb.f ] ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %.0156184, i64 %i.d
  %i.i = load i8, ptr %i.h, align 1, !tbaa !9     ; 2 uses
  %i.j = zext i8 %i.i to i32                      ; 5 uses
  %i.k = load i8, ptr %.0154186, align 1, !tbaa !9
  %i.l = zext i8 %i.k to i32                      ; 2 uses
  %i.m = load i8, ptr %.0153187, align 1, !tbaa !9
  %i.n = zext i8 %i.m to i32                      ; 2 uses
  %i.o = add nuw nsw i32 %i.n, %i.l
  %i.p = lshr i32 %i.o, 1                         ; 5 uses
  %i.q = getelementptr inbounds i8, ptr %.0156184, i64 %i.e
  %i.r = load i8, ptr %i.q, align 1, !tbaa !9     ; 2 uses
  %i.s = zext i8 %i.r to i32                      ; 5 uses
  %i.t = sub nsw i32 %i.l, %i.n
  %i.u = tail call i32 @llvm.abs.i32(i32 %i.t, i1 true)
  %i.v = getelementptr inbounds i8, ptr %.0157183, i64 %i.d
  %i.w = load i8, ptr %i.v, align 1, !tbaa !9
  %i.x = zext i8 %i.w to i32
  %i.y = sub nsw i32 %i.x, %i.j
  %i.z = tail call i32 @llvm.abs.i32(i32 %i.y, i1 true)
  %i.aa = getelementptr inbounds i8, ptr %.0157183, i64 %i.e
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !9
  %i.ac = zext i8 %i.ab to i32
  %i.ad = sub nsw i32 %i.ac, %i.s
  %i.ae = tail call i32 @llvm.abs.i32(i32 %i.ad, i1 true)
  %i.af = add nuw nsw i32 %i.ae, %i.z
  %i.ag = lshr i32 %i.af, 1
  %i.ah = getelementptr inbounds i8, ptr %.0155185, i64 %i.d
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !9
  %i.aj = zext i8 %i.ai to i32
  %i.ak = sub nsw i32 %i.aj, %i.j
  %i.al = tail call i32 @llvm.abs.i32(i32 %i.ak, i1 true)
  %i.am = getelementptr inbounds i8, ptr %.0155185, i64 %i.e
  %i.an = load i8, ptr %i.am, align 1, !tbaa !9
  %i.ao = zext i8 %i.an to i32
  %i.ap = sub nsw i32 %i.ao, %i.s
  %i.aq = tail call i32 @llvm.abs.i32(i32 %i.ap, i1 true)
  %i.ar = add nuw nsw i32 %i.aq, %i.al
  %i.as = lshr i32 %i.ar, 1
  %i.at = lshr i32 %i.u, 1
  %i.au = tail call i32 @llvm.umax.i32(i32 %i.at, i32 %i.ag)
  %i.av = tail call i32 @llvm.umax.i32(i32 %i.au, i32 %i.as) ; 3 uses
  %.not180 = icmp eq i32 %i.av, 0
  br i1 %.not180, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %.not181, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aw = getelementptr inbounds i8, ptr %.0154186, i64 %i.f
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !9
  %i.ay = zext i8 %i.ax to i32
  %i.az = getelementptr inbounds i8, ptr %.0153187, i64 %i.f
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !9
  %i.bb = zext i8 %i.ba to i32
  %i.bc = add nuw nsw i32 %i.bb, %i.ay
  %i.bd = lshr i32 %i.bc, 1
  %i.be = sub nsw i32 %i.bd, %i.j                 ; 2 uses
  %i.bf = getelementptr inbounds i8, ptr %.0154186, i64 %i.g
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !9
  %i.bh = zext i8 %i.bg to i32
  %i.bi = getelementptr inbounds i8, ptr %.0153187, i64 %i.g
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !9
  %i.bk = zext i8 %i.bj to i32
  %i.bl = add nuw nsw i32 %i.bk, %i.bh
  %i.bm = lshr i32 %i.bl, 1
  %i.bn = sub nsw i32 %i.bm, %i.s                 ; 2 uses
  %i.bo = sub nsw i32 %i.p, %i.j                  ; 2 uses
  %i.bp = sub nsw i32 %i.p, %i.s                  ; 2 uses
  %i.bq = icmp ugt i8 %i.i, %i.r                  ; 2 uses
  %i.br = select i1 %i.bq, i32 %i.bp, i32 %i.bo
  %i.bs = tail call i32 @llvm.smin.i32(i32 %i.be, i32 %i.bn)
  %. = tail call i32 @llvm.smax.i32(i32 %i.br, i32 %i.bs)
  %i.bt = select i1 %i.bq, i32 %i.bo, i32 %i.bp
  %i.bu = tail call i32 @llvm.smax.i32(i32 %i.be, i32 %i.bn)
  %i.bv = tail call i32 @llvm.smin.i32(i32 %i.bt, i32 %i.bu)
  %i.bw = tail call i32 @llvm.smax.i32(i32 %i.av, i32 %i.bv)
  %i.bx = sub nsw i32 0, %.
  %i.by = tail call i32 @llvm.smax.i32(i32 %i.bw, i32 %i.bx)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i32 [ %i.by, %bb.d ], [ %i.av, %bb.c ] ; 2 uses
  %i.bz = add nuw nsw i32 %i.s, %i.j
  %i.ca = lshr i32 %i.bz, 1                       ; 2 uses
  %i.cb = add nuw nsw i32 %.0, %i.p               ; 2 uses
  %i.cc = icmp samesign ugt i32 %i.ca, %i.cb
  %i.cd = sub nsw i32 %i.p, %.0
  %spec.select = tail call i32 @llvm.smax.i32(i32 %i.ca, i32 %i.cd)
  %.0152 = select i1 %i.cc, i32 %i.cb, i32 %spec.select
  %..i = tail call i32 @llvm.smin.i32(i32 %.0152, i32 %10)
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e
  %storemerge.in = phi i32 [ %..i, %bb.e ], [ %i.p, %bb.b ]
  %storemerge = trunc i32 %storemerge.in to i8
  store i8 %storemerge, ptr %.0158182, align 1, !tbaa !9
  %i.ce = getelementptr inbounds nuw i8, ptr %.0158182, i64 1
  %i.cf = getelementptr inbounds nuw i8, ptr %.0156184, i64 1
  %i.cg = getelementptr inbounds nuw i8, ptr %.0157183, i64 1
  %i.ch = getelementptr inbounds nuw i8, ptr %.0155185, i64 1
  %i.ci = getelementptr inbounds nuw i8, ptr %.0154186, i64 1
  %i.cj = getelementptr inbounds nuw i8, ptr %.0153187, i64 1
  %i.ck = add nuw nsw i32 %.0151188, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.ck, %4
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !20

._crit_edge:                                      ; preds = %bb.f, %bb.a
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define void @ff_bwdif_init_filter_line(ptr nofree noundef writeonly captures(none) initializes((0, 32)) %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.a, align 8, !tbaa !23
  %i.b = icmp sgt i32 %1, 8                       ; 3 uses
  %ff_bwdif_filter_intra_c.sink = select i1 %i.b, ptr @filter_intra_16bit, ptr @ff_bwdif_filter_intra_c
  %ff_bwdif_filter_line_c.sink = select i1 %i.b, ptr @filter_line_c_16bit, ptr @ff_bwdif_filter_line_c
  %ff_bwdif_filter_edge_c.sink = select i1 %i.b, ptr @filter_edge_16bit, ptr @ff_bwdif_filter_edge_c
  store ptr %ff_bwdif_filter_intra_c.sink, ptr %0, align 8, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %ff_bwdif_filter_line_c.sink, ptr %i.c, align 8, !tbaa !25
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %ff_bwdif_filter_edge_c.sink, ptr %i.d, align 8, !tbaa !26
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @filter_intra_16bit(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 %7, i32 noundef %8) #0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.c = icmp sgt i32 %2, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = sext i32 %4 to i64                       ; 3 uses
  %i.e = sext i32 %3 to i64                       ; 3 uses
  %i.f = sext i32 %6 to i64                       ; 3 uses
  %i.g = sext i32 %5 to i64                       ; 3 uses
  %i.h = zext nneg i32 %2 to i64                  ; 2 uses
  %min.iters.check = icmp ult i32 %2, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %9 = sub i64 %i.b, %i.a                         ; 2 uses
  %10 = shl nsw i64 %i.g, 1
  %i.i = sub i64 %10, %9
  %diff.check = icmp ugt i64 %i.i, -16
  %i.j = shl nsw i64 %i.f, 1
  %i.k = sub i64 %i.j, %9
  %diff.check22 = icmp ugt i64 %i.k, -16
  %conflict.rdx = or i1 %diff.check, %diff.check22
  %11 = sub i64 %i.b, %i.a                        ; 2 uses
  %i.l = shl nsw i64 %i.e, 1
  %i.m = sub i64 %i.l, %11
  %diff.check23 = icmp ugt i64 %i.m, -16
  %conflict.rdx24 = or i1 %conflict.rdx, %diff.check23
  %i.n = shl nsw i64 %i.d, 1
  %i.o = sub i64 %i.n, %11
  %diff.check25 = icmp ugt i64 %i.o, -16
  %conflict.rdx26 = or i1 %conflict.rdx24, %diff.check25
  br i1 %conflict.rdx26, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, 2147483640               ; 4 uses
  %i.p = trunc nuw nsw i64 %n.vec to i32
  %i.q = shl nuw nsw i64 %n.vec, 1                ; 2 uses
  %i.r = getelementptr i8, ptr %1, i64 %i.q
  %i.s = getelementptr i8, ptr %0, i64 %i.q
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %8, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.t = shl i64 %index, 1                        ; 2 uses
  %next.gep = getelementptr i8, ptr %1, i64 %i.t  ; 4 uses
  %next.gep27 = getelementptr i8, ptr %0, i64 %i.t
  %i.u = getelementptr inbounds [2 x i8], ptr %next.gep, i64 %i.d
  %wide.load = load <8 x i16>, ptr %i.u, align 2, !tbaa !14
  %i.v = zext <8 x i16> %wide.load to <8 x i32>
  %i.w = getelementptr inbounds [2 x i8], ptr %next.gep, i64 %i.e
  %wide.load28 = load <8 x i16>, ptr %i.w, align 2, !tbaa !14
  %i.x = zext <8 x i16> %wide.load28 to <8 x i32>
  %i.y = add nuw nsw <8 x i32> %i.x, %i.v
  %i.z = mul nuw nsw <8 x i32> %i.y, splat (i32 5077)
  %i.aa = getelementptr inbounds [2 x i8], ptr %next.gep, i64 %i.f
  %wide.load29 = load <8 x i16>, ptr %i.aa, align 2, !tbaa !14
  %i.ab = zext <8 x i16> %wide.load29 to <8 x i32>
  %i.ac = getelementptr inbounds [2 x i8], ptr %next.gep, i64 %i.g
  %wide.load30 = load <8 x i16>, ptr %i.ac, align 2, !tbaa !14
  %i.ad = zext <8 x i16> %wide.load30 to <8 x i32>
  %i.ae = add nuw nsw <8 x i32> %i.ad, %i.ab
  %i.af = mul nsw <8 x i32> %i.ae, splat (i32 -981)
  %i.ag = add nsw <8 x i32> %i.af, %i.z
  %i.ah = ashr <8 x i32> %i.ag, splat (i32 13)    ; 2 uses
  %i.ai = icmp slt <8 x i32> %i.ah, zeroinitializer
  %i.aj = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.ah, <8 x i32> %broadcast.splat)
  %i.ak = trunc <8 x i32> %i.aj to <8 x i16>
  %i.al = select <8 x i1> %i.ai, <8 x i16> zeroinitializer, <8 x i16> %i.ak
  store <8 x i16> %i.al, ptr %next.gep27, align 2, !tbaa !14
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !27

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.h
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.021.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %i.p, %middle.block ]
  %.01720.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph ], [ %i.r, %middle.block ]
  %.01819.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph ], [ %i.s, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.021 = phi i32 [ %i.bj, %scalar.ph ], [ %.021.ph, %scalar.ph.preheader ]
  %.01720 = phi ptr [ %i.bi, %scalar.ph ], [ %.01720.ph, %scalar.ph.preheader ] ; 5 uses
  %.01819 = phi ptr [ %i.bh, %scalar.ph ], [ %.01819.ph, %scalar.ph.preheader ] ; 2 uses
  %i.an = getelementptr inbounds [2 x i8], ptr %.01720, i64 %i.d
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !14
  %i.ap = zext i16 %i.ao to i32
  %i.aq = getelementptr inbounds [2 x i8], ptr %.01720, i64 %i.e
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !14
  %i.as = zext i16 %i.ar to i32
  %i.at = add nuw nsw i32 %i.as, %i.ap
  %i.au = mul nuw nsw i32 %i.at, 5077
  %i.av = getelementptr inbounds [2 x i8], ptr %.01720, i64 %i.f
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !14
  %i.ax = zext i16 %i.aw to i32
  %i.ay = getelementptr inbounds [2 x i8], ptr %.01720, i64 %i.g
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !14
  %i.ba = zext i16 %i.az to i32
  %i.bb = add nuw nsw i32 %i.ba, %i.ax
  %.neg = mul nsw i32 %i.bb, -981
  %i.bc = add nsw i32 %.neg, %i.au
  %i.bd = ashr i32 %i.bc, 13                      ; 2 uses
  %i.be = icmp slt i32 %i.bd, 0
  %..i = tail call i32 @llvm.smin.i32(i32 %i.bd, i32 %8)
  %i.bf = trunc i32 %..i to i16
  %i.bg = select i1 %i.be, i16 0, i16 %i.bf
  store i16 %i.bg, ptr %.01819, align 2, !tbaa !14
  %i.bh = getelementptr inbounds nuw i8, ptr %.01819, i64 2
  %i.bi = getelementptr inbounds nuw i8, ptr %.01720, i64 2
  %i.bj = add nuw nsw i32 %.021, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.bj, %2
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !28

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @filter_line_c_16bit(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %14) #1 {
bb.a:
  %i.a = icmp sgt i32 %4, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.not = icmp eq i32 %13, 0                      ; 2 uses
  %i.b = select i1 %.not, ptr %3, ptr %2
  %i.c = select i1 %.not, ptr %2, ptr %1
  %i.d = sext i32 %6 to i64                       ; 3 uses
  %i.e = sext i32 %5 to i64                       ; 3 uses
  %i.f = sext i32 %8 to i64                       ; 2 uses
  %i.g = sext i32 %7 to i64                       ; 2 uses
  %i.h = sext i32 %10 to i64                      ; 2 uses
  %i.i = sext i32 %9 to i64                       ; 2 uses
  %i.j = sext i32 %12 to i64                      ; 2 uses
  %i.k = sext i32 %11 to i64                      ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %.0224 = phi i32 [ 0, %.lr.ph ], [ %i.eg, %bb.g ]
  %.0186223 = phi ptr [ %i.b, %.lr.ph ], [ %i.ef, %bb.g ] ; 6 uses
  %.0187222 = phi ptr [ %i.c, %.lr.ph ], [ %i.ee, %bb.g ] ; 6 uses
  %.0188221 = phi ptr [ %3, %.lr.ph ], [ %i.ed, %bb.g ] ; 3 uses
  %.0189220 = phi ptr [ %2, %.lr.ph ], [ %i.eb, %bb.g ] ; 7 uses
  %.0190219 = phi ptr [ %1, %.lr.ph ], [ %i.ec, %bb.g ] ; 3 uses
  %.0191218 = phi ptr [ %0, %.lr.ph ], [ %i.ea, %bb.g ] ; 2 uses
  %i.l = getelementptr inbounds [2 x i8], ptr %.0189220, i64 %i.d
  %i.m = load i16, ptr %i.l, align 2, !tbaa !14   ; 2 uses
  %i.n = zext i16 %i.m to i32                     ; 7 uses
  %i.o = load i16, ptr %.0187222, align 2, !tbaa !14
  %i.p = zext i16 %i.o to i32                     ; 2 uses
  %i.q = load i16, ptr %.0186223, align 2, !tbaa !14
  %i.r = zext i16 %i.q to i32                     ; 2 uses
  %i.s = add nuw nsw i32 %i.r, %i.p               ; 2 uses
  %i.t = lshr i32 %i.s, 1                         ; 5 uses
  %i.u = getelementptr inbounds [2 x i8], ptr %.0189220, i64 %i.e
  %i.v = load i16, ptr %i.u, align 2, !tbaa !14   ; 2 uses
  %i.w = zext i16 %i.v to i32                     ; 7 uses
  %i.x = sub nsw i32 %i.p, %i.r
  %i.y = tail call i32 @llvm.abs.i32(i32 %i.x, i1 true) ; 2 uses
  %i.z = getelementptr inbounds [2 x i8], ptr %.0190219, i64 %i.d
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !14
  %i.ab = zext i16 %i.aa to i32
  %i.ac = sub nsw i32 %i.ab, %i.n
  %i.ad = tail call i32 @llvm.abs.i32(i32 %i.ac, i1 true)
  %i.ae = getelementptr inbounds [2 x i8], ptr %.0190219, i64 %i.e
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !14
  %i.ag = zext i16 %i.af to i32
  %i.ah = sub nsw i32 %i.ag, %i.w
  %i.ai = tail call i32 @llvm.abs.i32(i32 %i.ah, i1 true)
  %i.aj = add nuw nsw i32 %i.ai, %i.ad
  %i.ak = lshr i32 %i.aj, 1
  %i.al = getelementptr inbounds [2 x i8], ptr %.0188221, i64 %i.d
  %i.am = load i16, ptr %i.al, align 2, !tbaa !14
  %i.an = zext i16 %i.am to i32
  %i.ao = sub nsw i32 %i.an, %i.n
  %i.ap = tail call i32 @llvm.abs.i32(i32 %i.ao, i1 true)
  %i.aq = getelementptr inbounds [2 x i8], ptr %.0188221, i64 %i.e
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !14
  %i.as = zext i16 %i.ar to i32
  %i.at = sub nsw i32 %i.as, %i.w
  %i.au = tail call i32 @llvm.abs.i32(i32 %i.at, i1 true)
  %i.av = add nuw nsw i32 %i.au, %i.ap
  %i.aw = lshr i32 %i.av, 1
  %i.ax = lshr i32 %i.y, 1
  %i.ay = tail call i32 @llvm.umax.i32(i32 %i.ax, i32 %i.ak)
  %i.az = tail call i32 @llvm.umax.i32(i32 %i.ay, i32 %i.aw) ; 2 uses
  %.not215 = icmp eq i32 %i.az, 0
  br i1 %.not215, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ba = getelementptr inbounds [2 x i8], ptr %.0187222, i64 %i.f
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !14
  %i.bc = zext i16 %i.bb to i32
  %i.bd = getelementptr inbounds [2 x i8], ptr %.0186223, i64 %i.f
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !14
  %i.bf = zext i16 %i.be to i32
  %i.bg = add nuw nsw i32 %i.bf, %i.bc            ; 2 uses
  %i.bh = lshr i32 %i.bg, 1
  %i.bi = sub nsw i32 %i.bh, %i.n                 ; 2 uses
  %i.bj = getelementptr inbounds [2 x i8], ptr %.0187222, i64 %i.g
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !14
  %i.bl = zext i16 %i.bk to i32
  %i.bm = getelementptr inbounds [2 x i8], ptr %.0186223, i64 %i.g
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !14
  %i.bo = zext i16 %i.bn to i32
  %i.bp = add nuw nsw i32 %i.bo, %i.bl            ; 2 uses
  %i.bq = lshr i32 %i.bp, 1
  %i.br = sub nsw i32 %i.bq, %i.w                 ; 2 uses
  %i.bs = sub nsw i32 %i.t, %i.n                  ; 2 uses
  %i.bt = sub nsw i32 %i.t, %i.w                  ; 2 uses
  %i.bu = icmp ugt i16 %i.m, %i.v                 ; 2 uses
  %i.bv = select i1 %i.bu, i32 %i.bt, i32 %i.bs
  %i.bw = tail call i32 @llvm.smin.i32(i32 %i.bi, i32 %i.br)
  %. = tail call i32 @llvm.smax.i32(i32 %i.bv, i32 %i.bw)
  %i.bx = select i1 %i.bu, i32 %i.bs, i32 %i.bt
  %i.by = tail call i32 @llvm.smax.i32(i32 %i.bi, i32 %i.br)
  %i.bz = tail call i32 @llvm.smin.i32(i32 %i.bx, i32 %i.by)
  %i.ca = tail call i32 @llvm.smax.i32(i32 %i.az, i32 %i.bz)
  %i.cb = sub nsw i32 0, %.
  %i.cc = tail call i32 @llvm.smax.i32(i32 %i.ca, i32 %i.cb) ; 2 uses
  %i.cd = sub nsw i32 %i.n, %i.w
  %i.ce = tail call i32 @llvm.abs.i32(i32 %i.cd, i1 true)
  %i.cf = icmp samesign ugt i32 %i.ce, %i.y
  br i1 %i.cf, label %bb.d, label %bb.e
end_hunk_1
