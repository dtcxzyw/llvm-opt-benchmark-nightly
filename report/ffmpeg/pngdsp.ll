Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/pngdsp?download=true
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @ff_png_add_paeth_prediction(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.b = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.c = ptrtoaddr ptr %1 to i64
  %i.d = icmp sgt i32 %3, 0
  br i1 %i.d, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.a
  %i.e = sext i32 %4 to i64                       ; 5 uses
  %wide.trip.count = zext nneg i32 %3 to i64      ; 6 uses
  %min.iters.check = icmp ult i32 %3, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.f = add nsw i64 %i.e, -1
  %diff.check = icmp ult i64 %i.f, 15
  %5 = add i64 %i.a, %i.e
  %i.g = sub i64 %i.b, %5
  %diff.check44 = icmp ugt i64 %i.g, -16
  %conflict.rdx = or i1 %diff.check, %diff.check44
  %i.h = sub i64 %i.b, %i.a
  %diff.check45 = icmp ugt i64 %i.h, -16
  %conflict.rdx46 = or i1 %conflict.rdx, %diff.check45
  %i.i = sub i64 %i.c, %i.a
  %diff.check47 = icmp ugt i64 %i.i, -16
  %conflict.rdx48 = or i1 %conflict.rdx46, %diff.check47
  br i1 %conflict.rdx48, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check49 = icmp ult i32 %3, 16
  br i1 %min.iters.check49, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.j = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.k = sub nsw i64 %index, %i.e                 ; 2 uses
  %i.l = getelementptr inbounds i8, ptr %0, i64 %i.k
  %wide.load = load <16 x i8>, ptr %i.l, align 1, !tbaa !9 ; 2 uses
  %i.m = zext <16 x i8> %wide.load to <16 x i32>
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 %index
  %wide.load50 = load <16 x i8>, ptr %i.n, align 1, !tbaa !9 ; 2 uses
  %i.o = zext <16 x i8> %wide.load50 to <16 x i32>
  %i.p = getelementptr inbounds i8, ptr %2, i64 %i.k
  %wide.load51 = load <16 x i8>, ptr %i.p, align 1, !tbaa !9 ; 2 uses
  %i.q = zext <16 x i8> %wide.load51 to <16 x i32> ; 2 uses
  %i.r = sub nsw <16 x i32> %i.o, %i.q            ; 2 uses
  %i.s = sub nsw <16 x i32> %i.m, %i.q            ; 2 uses
  %i.t = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.r, i1 true) ; 2 uses
  %i.u = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.s, i1 true) ; 2 uses
  %i.v = add nsw <16 x i32> %i.r, %i.s
  %i.w = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.v, i1 true) ; 2 uses
  %i.x = icmp samesign ugt <16 x i32> %i.t, %i.u
  %i.y = icmp samesign ugt <16 x i32> %i.t, %i.w
  %i.z = select <16 x i1> %i.x, <16 x i1> splat (i1 true), <16 x i1> %i.y
  %i.aa = icmp samesign ugt <16 x i32> %i.u, %i.w
  %i.ab = select <16 x i1> %i.aa, <16 x i8> %wide.load51, <16 x i8> %wide.load50
  %i.ac = select <16 x i1> %i.z, <16 x i8> %i.ab, <16 x i8> %wide.load
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %index
  %wide.load52 = load <16 x i8>, ptr %i.ad, align 1, !tbaa !9
  %i.ae = add <16 x i8> %i.ac, %wide.load52
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 %index
  store <16 x i8> %i.ae, ptr %i.af, align 1, !tbaa !9
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !13

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.j, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !16

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec53 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index54 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next59, %vec.epilog.vector.body ] ; 5 uses
  %i.ah = sub nsw i64 %index54, %i.e              ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %0, i64 %i.ah
  %wide.load55 = load <4 x i8>, ptr %i.ai, align 1, !tbaa !9 ; 2 uses
  %i.aj = zext <4 x i8> %wide.load55 to <4 x i32>
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 %index54
  %wide.load56 = load <4 x i8>, ptr %i.ak, align 1, !tbaa !9 ; 2 uses
  %i.al = zext <4 x i8> %wide.load56 to <4 x i32>
  %i.am = getelementptr inbounds i8, ptr %2, i64 %i.ah
  %wide.load57 = load <4 x i8>, ptr %i.am, align 1, !tbaa !9 ; 2 uses
  %i.an = zext <4 x i8> %wide.load57 to <4 x i32> ; 2 uses
  %i.ao = sub nsw <4 x i32> %i.al, %i.an          ; 2 uses
  %i.ap = sub nsw <4 x i32> %i.aj, %i.an          ; 2 uses
  %i.aq = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.ao, i1 true) ; 2 uses
  %i.ar = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.ap, i1 true) ; 2 uses
  %i.as = add nsw <4 x i32> %i.ao, %i.ap
  %i.at = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.as, i1 true) ; 2 uses
  %i.au = icmp samesign ugt <4 x i32> %i.aq, %i.ar
  %i.av = icmp samesign ugt <4 x i32> %i.aq, %i.at
  %i.aw = select <4 x i1> %i.au, <4 x i1> splat (i1 true), <4 x i1> %i.av
  %i.ax = icmp samesign ugt <4 x i32> %i.ar, %i.at
  %i.ay = select <4 x i1> %i.ax, <4 x i8> %wide.load57, <4 x i8> %wide.load56
  %i.az = select <4 x i1> %i.aw, <4 x i8> %i.ay, <4 x i8> %wide.load55
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 %index54
  %wide.load58 = load <4 x i8>, ptr %i.ba, align 1, !tbaa !9
  %i.bb = add <4 x i8> %i.az, %wide.load58
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 %index54
  store <4 x i8> %i.bb, ptr %i.bc, align 1, !tbaa !9
  %index.next59 = add nuw i64 %index54, 4         ; 2 uses
  %i.bd = icmp eq i64 %index.next59, %n.vec53
  br i1 %i.bd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !14

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n60 = icmp eq i64 %n.vec53, %wide.trip.count
  br i1 %cmp.n60, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec53, %vec.epilog.middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 5 uses
  %i.be = sub nsw i64 %indvars.iv, %i.e           ; 2 uses
  %i.bf = getelementptr inbounds i8, ptr %0, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !9   ; 2 uses
  %i.bh = zext i8 %i.bg to i32
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !9   ; 2 uses
  %i.bk = zext i8 %i.bj to i32
  %i.bl = getelementptr inbounds i8, ptr %2, i64 %i.be
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !9   ; 2 uses
  %i.bn = zext i8 %i.bm to i32                    ; 2 uses
  %i.bo = sub nsw i32 %i.bk, %i.bn                ; 2 uses
  %i.bp = sub nsw i32 %i.bh, %i.bn                ; 2 uses
  %i.bq = tail call i32 @llvm.abs.i32(i32 %i.bo, i1 true) ; 2 uses
  %i.br = tail call i32 @llvm.abs.i32(i32 %i.bp, i1 true) ; 2 uses
  %i.bs = add nsw i32 %i.bo, %i.bp
  %i.bt = tail call i32 @llvm.abs.i32(i32 %i.bs, i1 true) ; 2 uses
  %.not = icmp samesign ugt i32 %i.bq, %i.br
  %.not34 = icmp samesign ugt i32 %i.bq, %i.bt
  %or.cond = select i1 %.not, i1 true, i1 %.not34
  %.not35 = icmp samesign ugt i32 %i.br, %i.bt
  %. = select i1 %.not35, i8 %i.bm, i8 %i.bj
  %.0 = select i1 %or.cond, i8 %., i8 %i.bg
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !9
  %i.bw = add i8 %.0, %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !15
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define hidden void @ff_pngdsp_init(ptr nofree noundef writeonly captures(none) initializes((0, 16)) %0) local_unnamed_addr #2 {
bb.a:
  store ptr @add_bytes_l2_c, ptr %0, align 8, !tbaa !19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @ff_png_add_paeth_prediction, ptr %i.a, align 8, !tbaa !20
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @add_bytes_l2_c(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.c = ptrtoaddr ptr %0 to i64                  ; 4 uses
  %i.d = add i32 %3, -4                           ; 2 uses
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %.not21 = icmp slt i32 %3, 4
  br i1 %.not21, label %.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.f = lshr i64 %i.e, 2
  %i.g = add nuw nsw i64 %i.f, 1                  ; 2 uses
  %min.iters.check = icmp ult i32 %i.d, 28
  br i1 %min.iters.check, label %.lr.ph.preheader60, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.h = sub i64 %i.b, %i.c
  %diff.check = icmp ugt i64 %i.h, -32
  %i.i = sub i64 %i.a, %i.c
  %diff.check27 = icmp ugt i64 %i.i, -32
  %conflict.rdx = or i1 %diff.check, %diff.check27
  br i1 %conflict.rdx, label %.lr.ph.preheader60, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.g, 2147483640               ; 3 uses
  %i.j = shl nuw nsw i64 %n.vec, 2                ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.k = shl nuw i64 %index, 2                    ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %i.k ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %wide.load = load <4 x i32>, ptr %i.l, align 4, !tbaa !9 ; 2 uses
  %wide.load28 = load <4 x i32>, ptr %i.m, align 4, !tbaa !9 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 %i.k ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %wide.load29 = load <4 x i32>, ptr %i.n, align 1, !tbaa !9 ; 2 uses
  %wide.load30 = load <4 x i32>, ptr %i.o, align 1, !tbaa !9 ; 2 uses
  %i.p = and <4 x i32> %wide.load, splat (i32 2139062143)
  %i.q = and <4 x i32> %wide.load28, splat (i32 2139062143)
  %i.r = and <4 x i32> %wide.load29, splat (i32 2139062143)
  %i.s = and <4 x i32> %wide.load30, splat (i32 2139062143)
  %i.t = add nuw <4 x i32> %i.r, %i.p
  %i.u = add nuw <4 x i32> %i.s, %i.q
  %i.v = xor <4 x i32> %wide.load29, %wide.load
end_hunk_0
