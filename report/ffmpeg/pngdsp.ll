Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/pngdsp?download=true
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @ff_png_add_paeth_prediction(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.c = ptrtoaddr ptr %0 to i64                  ; 3 uses
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
  %i.g = add i64 %i.c, %i.e
  %i.h = sub i64 %i.b, %i.g
  %diff.check39 = icmp ugt i64 %i.h, -16
  %conflict.rdx = or i1 %diff.check, %diff.check39
  %i.i = sub i64 %i.b, %i.c
  %diff.check40 = icmp ugt i64 %i.i, -16
  %conflict.rdx41 = or i1 %conflict.rdx, %diff.check40
  %i.j = sub i64 %i.a, %i.c
  %diff.check42 = icmp ugt i64 %i.j, -16
  %conflict.rdx43 = or i1 %conflict.rdx41, %diff.check42
  br i1 %conflict.rdx43, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check44 = icmp ult i32 %3, 16
  br i1 %min.iters.check44, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.k = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.l = sub nsw i64 %index, %i.e                 ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %0, i64 %i.l
  %wide.load = load <16 x i8>, ptr %i.m, align 1, !tbaa !9 ; 2 uses
  %i.n = zext <16 x i8> %wide.load to <16 x i32>
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 %index
  %wide.load45 = load <16 x i8>, ptr %i.o, align 1, !tbaa !9 ; 2 uses
  %i.p = zext <16 x i8> %wide.load45 to <16 x i32>
  %i.q = getelementptr inbounds i8, ptr %2, i64 %i.l
  %wide.load46 = load <16 x i8>, ptr %i.q, align 1, !tbaa !9 ; 2 uses
  %i.r = zext <16 x i8> %wide.load46 to <16 x i32> ; 2 uses
  %i.s = sub nsw <16 x i32> %i.p, %i.r            ; 2 uses
  %i.t = sub nsw <16 x i32> %i.n, %i.r            ; 2 uses
  %i.u = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.s, i1 true) ; 2 uses
  %i.v = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.t, i1 true) ; 2 uses
  %i.w = add nsw <16 x i32> %i.s, %i.t
  %i.x = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.w, i1 true) ; 2 uses
  %i.y = icmp samesign ugt <16 x i32> %i.u, %i.v
  %i.z = icmp samesign ugt <16 x i32> %i.u, %i.x
  %i.aa = select <16 x i1> %i.y, <16 x i1> splat (i1 true), <16 x i1> %i.z
  %i.ab = icmp samesign ugt <16 x i32> %i.v, %i.x
  %i.ac = select <16 x i1> %i.ab, <16 x i8> %wide.load46, <16 x i8> %wide.load45
  %i.ad = select <16 x i1> %i.aa, <16 x i8> %i.ac, <16 x i8> %wide.load
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 %index
  %wide.load47 = load <16 x i8>, ptr %i.ae, align 1, !tbaa !9
  %i.af = add <16 x i8> %i.ad, %wide.load47
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %index
  store <16 x i8> %i.af, ptr %i.ag, align 1, !tbaa !9
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !13

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.k, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !16

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec48 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index49 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next54, %vec.epilog.vector.body ] ; 5 uses
  %i.ai = sub nsw i64 %index49, %i.e              ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %0, i64 %i.ai
  %wide.load50 = load <4 x i8>, ptr %i.aj, align 1, !tbaa !9 ; 2 uses
  %i.ak = zext <4 x i8> %wide.load50 to <4 x i32>
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 %index49
  %wide.load51 = load <4 x i8>, ptr %i.al, align 1, !tbaa !9 ; 2 uses
  %i.am = zext <4 x i8> %wide.load51 to <4 x i32>
  %i.an = getelementptr inbounds i8, ptr %2, i64 %i.ai
  %wide.load52 = load <4 x i8>, ptr %i.an, align 1, !tbaa !9 ; 2 uses
  %i.ao = zext <4 x i8> %wide.load52 to <4 x i32> ; 2 uses
  %i.ap = sub nsw <4 x i32> %i.am, %i.ao          ; 2 uses
  %i.aq = sub nsw <4 x i32> %i.ak, %i.ao          ; 2 uses
  %i.ar = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.ap, i1 true) ; 2 uses
  %i.as = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.aq, i1 true) ; 2 uses
  %i.at = add nsw <4 x i32> %i.ap, %i.aq
  %i.au = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.at, i1 true) ; 2 uses
  %i.av = icmp samesign ugt <4 x i32> %i.ar, %i.as
  %i.aw = icmp samesign ugt <4 x i32> %i.ar, %i.au
  %i.ax = select <4 x i1> %i.av, <4 x i1> splat (i1 true), <4 x i1> %i.aw
  %i.ay = icmp samesign ugt <4 x i32> %i.as, %i.au
  %i.az = select <4 x i1> %i.ay, <4 x i8> %wide.load52, <4 x i8> %wide.load51
  %i.ba = select <4 x i1> %i.ax, <4 x i8> %i.az, <4 x i8> %wide.load50
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 %index49
  %wide.load53 = load <4 x i8>, ptr %i.bb, align 1, !tbaa !9
  %i.bc = add <4 x i8> %i.ba, %wide.load53
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 %index49
  store <4 x i8> %i.bc, ptr %i.bd, align 1, !tbaa !9
  %index.next54 = add nuw i64 %index49, 4         ; 2 uses
  %i.be = icmp eq i64 %index.next54, %n.vec48
  br i1 %i.be, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !14

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n55 = icmp eq i64 %n.vec48, %wide.trip.count
  br i1 %cmp.n55, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec48, %vec.epilog.middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 5 uses
  %i.bf = sub nsw i64 %indvars.iv, %i.e           ; 2 uses
  %i.bg = getelementptr inbounds i8, ptr %0, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !9   ; 2 uses
  %i.bi = zext i8 %i.bh to i32
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !9   ; 2 uses
  %i.bl = zext i8 %i.bk to i32
  %i.bm = getelementptr inbounds i8, ptr %2, i64 %i.bf
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !9   ; 2 uses
  %i.bo = zext i8 %i.bn to i32                    ; 2 uses
  %i.bp = sub nsw i32 %i.bl, %i.bo                ; 2 uses
  %i.bq = sub nsw i32 %i.bi, %i.bo                ; 2 uses
  %i.br = tail call i32 @llvm.abs.i32(i32 %i.bp, i1 true) ; 2 uses
  %i.bs = tail call i32 @llvm.abs.i32(i32 %i.bq, i1 true) ; 2 uses
  %i.bt = add nsw i32 %i.bp, %i.bq
  %i.bu = tail call i32 @llvm.abs.i32(i32 %i.bt, i1 true) ; 2 uses
  %.not = icmp samesign ugt i32 %i.br, %i.bs
  %.not34 = icmp samesign ugt i32 %i.br, %i.bu
  %or.cond = select i1 %.not, i1 true, i1 %.not34
  %.not35 = icmp samesign ugt i32 %i.bs, %i.bu
  %. = select i1 %.not35, i8 %i.bn, i8 %i.bk
  %.0 = select i1 %or.cond, i8 %., i8 %i.bh
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !9
  %i.bx = add i8 %.0, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !9
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
  br i1 %min.iters.check, label %.lr.ph.preheader56, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.h = sub i64 %i.b, %i.c
  %diff.check = icmp ugt i64 %i.h, -32
  %i.i = sub i64 %i.a, %i.c
  %diff.check26 = icmp ugt i64 %i.i, -32
  %conflict.rdx = or i1 %diff.check, %diff.check26
  br i1 %conflict.rdx, label %.lr.ph.preheader56, label %vector.ph

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
  %wide.load27 = load <4 x i32>, ptr %i.m, align 4, !tbaa !9 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 %i.k ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %wide.load28 = load <4 x i32>, ptr %i.n, align 1, !tbaa !9 ; 2 uses
  %wide.load29 = load <4 x i32>, ptr %i.o, align 1, !tbaa !9 ; 2 uses
  %i.p = and <4 x i32> %wide.load, splat (i32 2139062143)
  %i.q = and <4 x i32> %wide.load27, splat (i32 2139062143)
  %i.r = and <4 x i32> %wide.load28, splat (i32 2139062143)
  %i.s = and <4 x i32> %wide.load29, splat (i32 2139062143)
  %i.t = add nuw <4 x i32> %i.r, %i.p
  %i.u = add nuw <4 x i32> %i.s, %i.q
  %i.v = xor <4 x i32> %wide.load28, %wide.load
  %i.w = xor <4 x i32> %wide.load29, %wide.load27
  %i.x = and <4 x i32> %i.v, splat (i32 -2139062144)
  %i.y = and <4 x i32> %i.w, splat (i32 -2139062144)
end_hunk_0
