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
  %diff.check38 = icmp ugt i64 %i.h, -16
  %conflict.rdx = or i1 %diff.check, %diff.check38
  %i.i = sub i64 %i.b, %i.c
  %diff.check39 = icmp ugt i64 %i.i, -16
  %conflict.rdx40 = or i1 %conflict.rdx, %diff.check39
  %i.j = sub i64 %i.a, %i.c
  %diff.check41 = icmp ugt i64 %i.j, -16
  %conflict.rdx42 = or i1 %conflict.rdx40, %diff.check41
  br i1 %conflict.rdx42, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check43 = icmp ult i32 %3, 16
  br i1 %min.iters.check43, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.k = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.l = sub nsw i64 %index, %i.e                 ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %0, i64 %i.l
  %wide.load = load <16 x i8>, ptr %i.m, align 1, !tbaa !9 ; 2 uses
  %i.n = zext <16 x i8> %wide.load to <16 x i32>
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 %index
  %wide.load44 = load <16 x i8>, ptr %i.o, align 1, !tbaa !9 ; 2 uses
  %i.p = zext <16 x i8> %wide.load44 to <16 x i32>
  %i.q = getelementptr inbounds i8, ptr %2, i64 %i.l
  %wide.load45 = load <16 x i8>, ptr %i.q, align 1, !tbaa !9 ; 2 uses
  %i.r = zext <16 x i8> %wide.load45 to <16 x i32> ; 2 uses
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
  %i.ac = select <16 x i1> %i.ab, <16 x i8> %wide.load45, <16 x i8> %wide.load44
  %i.ad = select <16 x i1> %i.aa, <16 x i8> %i.ac, <16 x i8> %wide.load
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 %index
  %wide.load46 = load <16 x i8>, ptr %i.ae, align 1, !tbaa !9
  %i.af = add <16 x i8> %i.ad, %wide.load46
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %index
  store <16 x i8> %i.af, ptr %i.ag, align 1, !tbaa !9
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !10

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.k, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !14

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec47 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index48 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next53, %vec.epilog.vector.body ] ; 5 uses
  %i.ai = sub nsw i64 %index48, %i.e              ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %0, i64 %i.ai
  %wide.load49 = load <4 x i8>, ptr %i.aj, align 1, !tbaa !9 ; 2 uses
  %i.ak = zext <4 x i8> %wide.load49 to <4 x i32>
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 %index48
  %wide.load50 = load <4 x i8>, ptr %i.al, align 1, !tbaa !9 ; 2 uses
  %i.am = zext <4 x i8> %wide.load50 to <4 x i32>
  %i.an = getelementptr inbounds i8, ptr %2, i64 %i.ai
  %wide.load51 = load <4 x i8>, ptr %i.an, align 1, !tbaa !9 ; 2 uses
  %i.ao = zext <4 x i8> %wide.load51 to <4 x i32> ; 2 uses
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
  %i.az = select <4 x i1> %i.ay, <4 x i8> %wide.load51, <4 x i8> %wide.load50
  %i.ba = select <4 x i1> %i.ax, <4 x i8> %i.az, <4 x i8> %wide.load49
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 %index48
  %wide.load52 = load <4 x i8>, ptr %i.bb, align 1, !tbaa !9
  %i.bc = add <4 x i8> %i.ba, %wide.load52
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 %index48
  store <4 x i8> %i.bc, ptr %i.bd, align 1, !tbaa !9
  %index.next53 = add nuw i64 %index48, 4         ; 2 uses
  %i.be = icmp eq i64 %index.next53, %n.vec47
  br i1 %i.be, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !15

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n54 = icmp eq i64 %n.vec47, %wide.trip.count
  br i1 %cmp.n54, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec47, %vec.epilog.middle.block ]
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
  %.032 = select i1 %or.cond, i8 %., i8 %i.bh
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !9
  %i.bx = add i8 %.032, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !16
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define hidden void @ff_pngdsp_init(ptr nofree noundef writeonly captures(none) initializes((0, 16)) %0) local_unnamed_addr #2 {
bb.a:
  store ptr @add_bytes_l2_c, ptr %0, align 8, !tbaa !17
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
  %4 = sext i32 %i.d to i64                       ; 2 uses
  %.not21 = icmp slt i32 %3, 4
  br i1 %.not21, label %.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %5 = tail call i64 @llvm.smax.i64(i64 %4, i64 3)
  %i.e = lshr i64 %5, 2
  %i.f = add nuw nsw i64 %i.e, 1                  ; 2 uses
  %min.iters.check = icmp slt i32 %i.d, 28
  br i1 %min.iters.check, label %.lr.ph.preheader56, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.g = sub i64 %i.b, %i.c
  %diff.check = icmp ugt i64 %i.g, -32
  %i.h = sub i64 %i.a, %i.c
  %diff.check26 = icmp ugt i64 %i.h, -32
  %conflict.rdx = or i1 %diff.check, %diff.check26
  br i1 %conflict.rdx, label %.lr.ph.preheader56, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.f, 1073741816               ; 3 uses
  %i.i = shl nuw nsw i64 %n.vec, 2                ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.j = shl nuw i64 %index, 2                    ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %i.j ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %wide.load = load <4 x i32>, ptr %i.k, align 4, !tbaa !9 ; 2 uses
  %wide.load27 = load <4 x i32>, ptr %i.l, align 4, !tbaa !9 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 %i.j ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %wide.load28 = load <4 x i32>, ptr %i.m, align 1, !tbaa !9 ; 2 uses
  %wide.load29 = load <4 x i32>, ptr %i.n, align 1, !tbaa !9 ; 2 uses
  %i.o = and <4 x i32> %wide.load, splat (i32 2139062143)
  %i.p = and <4 x i32> %wide.load27, splat (i32 2139062143)
  %i.q = and <4 x i32> %wide.load28, splat (i32 2139062143)
  %i.r = and <4 x i32> %wide.load29, splat (i32 2139062143)
  %i.s = add nuw <4 x i32> %i.q, %i.o
  %i.t = add nuw <4 x i32> %i.r, %i.p
  %i.u = xor <4 x i32> %wide.load28, %wide.load
  %i.v = xor <4 x i32> %wide.load29, %wide.load27
  %i.w = and <4 x i32> %i.u, splat (i32 -2139062144)
  %i.x = and <4 x i32> %i.v, splat (i32 -2139062144)
  %i.y = xor <4 x i32> %i.s, %i.w
  %i.z = xor <4 x i32> %i.t, %i.x
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %i.j ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store <4 x i32> %i.y, ptr %i.aa, align 1, !tbaa !9
  store <4 x i32> %i.z, ptr %i.ab, align 1, !tbaa !9
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !21

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.f, %n.vec
  br i1 %cmp.n, label %.preheader, label %.lr.ph.preheader56

.lr.ph.preheader56:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.022.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %i.i, %middle.block ]
  br label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %middle.block, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.i, %middle.block ], [ %i.bw, %.lr.ph ] ; 8 uses
  %i.ad = sext i32 %3 to i64                      ; 5 uses
  %i.ae = icmp slt i64 %.0.lcssa, %i.ad
  br i1 %i.ae, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader
  %i.af = sub i64 %i.ad, %.0.lcssa                ; 7 uses
  %min.iters.check35 = icmp ult i64 %i.af, 8
  br i1 %min.iters.check35, label %.lr.ph24.preheader, label %vector.memcheck30

vector.memcheck30:                                ; preds = %iter.check
  %i.ag = sub i64 %i.b, %i.c
  %diff.check31 = icmp ugt i64 %i.ag, -32
  %i.ah = sub i64 %i.a, %i.c
  %diff.check32 = icmp ugt i64 %i.ah, -32
  %conflict.rdx33 = or i1 %diff.check31, %diff.check32
  br i1 %conflict.rdx33, label %.lr.ph24.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck30
  %min.iters.check36 = icmp ult i64 %i.af, 32
  br i1 %min.iters.check36, label %vec.epilog.ph, label %vector.ph37

vector.ph37:                                      ; preds = %vector.main.loop.iter.check
  %i.ai = and i64 %i.af, 24
  %n.vec38 = and i64 %i.af, -32                   ; 4 uses
  %i.aj = add i64 %.0.lcssa, %n.vec38
  br label %vector.body39

vector.body39:                                    ; preds = %vector.body39, %vector.ph37
  %index40 = phi i64 [ 0, %vector.ph37 ], [ %index.next45, %vector.body39 ] ; 2 uses
  %i.ak = add nuw i64 %.0.lcssa, %index40         ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 %i.ak ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %wide.load41 = load <16 x i8>, ptr %i.al, align 1, !tbaa !9
  %wide.load42 = load <16 x i8>, ptr %i.am, align 1, !tbaa !9
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 %i.ak ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %wide.load43 = load <16 x i8>, ptr %i.an, align 1, !tbaa !9
  %wide.load44 = load <16 x i8>, ptr %i.ao, align 1, !tbaa !9
  %i.ap = add <16 x i8> %wide.load43, %wide.load41
  %i.aq = add <16 x i8> %wide.load44, %wide.load42
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %i.ak ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store <16 x i8> %i.ap, ptr %i.ar, align 1, !tbaa !9
  store <16 x i8> %i.aq, ptr %i.as, align 1, !tbaa !9
  %index.next45 = add nuw i64 %index40, 32        ; 2 uses
  %i.at = icmp eq i64 %index.next45, %n.vec38
  br i1 %i.at, label %middle.block46, label %vector.body39, !llvm.loop !22

middle.block46:                                   ; preds = %vector.body39
  %cmp.n47 = icmp eq i64 %i.af, %n.vec38
  br i1 %cmp.n47, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block46
  %min.epilog.iters.check = icmp eq i64 %i.ai, 0
  br i1 %min.epilog.iters.check, label %.lr.ph24.preheader, label %vec.epilog.ph, !prof !23

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec38, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec49 = and i64 %i.af, -8                    ; 3 uses
  %i.au = add i64 %.0.lcssa, %n.vec49
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index50 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next53, %vec.epilog.vector.body ] ; 2 uses
  %i.av = add nuw i64 %.0.lcssa, %index50         ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 %i.av
  %wide.load51 = load <8 x i8>, ptr %i.aw, align 1, !tbaa !9
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 %i.av
  %wide.load52 = load <8 x i8>, ptr %i.ax, align 1, !tbaa !9
  %i.ay = add <8 x i8> %wide.load52, %wide.load51
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 %i.av
  store <8 x i8> %i.ay, ptr %i.az, align 1, !tbaa !9
  %index.next53 = add nuw i64 %index50, 8         ; 2 uses
  %i.ba = icmp eq i64 %index.next53, %n.vec49
  br i1 %i.ba, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !24

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n54 = icmp eq i64 %i.af, %n.vec49
  br i1 %cmp.n54, label %._crit_edge, label %.lr.ph24.preheader

.lr.ph24.preheader:                               ; preds = %vector.memcheck30, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.123.ph = phi i64 [ %.0.lcssa, %iter.check ], [ %.0.lcssa, %vector.memcheck30 ], [ %i.aj, %vec.epilog.iter.check ], [ %i.au, %vec.epilog.middle.block ] ; 4 uses
  %i.bb = sub i64 %i.ad, %.123.ph
  %xtraiter = and i64 %i.bb, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph24.prol.loopexit, label %.lr.ph24.prol

.lr.ph24.prol:                                    ; preds = %.lr.ph24.preheader, %.lr.ph24.prol
  %.123.prol = phi i64 [ %i.bi, %.lr.ph24.prol ], [ %.123.ph, %.lr.ph24.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph24.prol ], [ 0, %.lr.ph24.preheader ]
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 %.123.prol
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !9
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 %.123.prol
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !9
  %i.bg = add i8 %i.bf, %i.bd
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 %.123.prol
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !9
  %i.bi = add nuw nsw i64 %.123.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph24.prol.loopexit, label %.lr.ph24.prol, !llvm.loop !25

.lr.ph24.prol.loopexit:                           ; preds = %.lr.ph24.prol, %.lr.ph24.preheader
  %.123.unr = phi i64 [ %.123.ph, %.lr.ph24.preheader ], [ %i.bi, %.lr.ph24.prol ]
  %i.bj = sub i64 %.123.ph, %i.ad
  %i.bk = icmp ugt i64 %i.bj, -4
  br i1 %i.bk, label %._crit_edge, label %.lr.ph24

.lr.ph:                                           ; preds = %.lr.ph.preheader56, %.lr.ph
  %.022 = phi i64 [ %i.bw, %.lr.ph ], [ %.022.ph, %.lr.ph.preheader56 ] ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 %.022
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !9  ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 %.022
  %i.bo = load i32, ptr %i.bn, align 1, !tbaa !9  ; 2 uses
  %i.bp = and i32 %i.bm, 2139062143
  %i.bq = and i32 %i.bo, 2139062143
  %i.br = add nuw i32 %i.bq, %i.bp
  %i.bs = xor i32 %i.bo, %i.bm
  %i.bt = and i32 %i.bs, -2139062144
  %i.bu = xor i32 %i.br, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 %.022
  store i32 %i.bu, ptr %i.bv, align 1, !tbaa !9
  %i.bw = add nuw nsw i64 %.022, 4                ; 3 uses
  %.not = icmp sgt i64 %i.bw, %4
  br i1 %.not, label %.preheader, label %.lr.ph, !llvm.loop !27

.lr.ph24:                                         ; preds = %.lr.ph24.prol.loopexit, %.lr.ph24
  %.123 = phi i64 [ %i.cy, %.lr.ph24 ], [ %.123.unr, %.lr.ph24.prol.loopexit ] ; 7 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 %.123
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !9
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 %.123
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !9
  %i.cb = add i8 %i.ca, %i.by
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 %.123
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !9
  %i.cd = add nuw nsw i64 %.123, 1                ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !9
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 %i.cd
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !9
  %i.ci = add i8 %i.ch, %i.cf
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 %i.cd
  store i8 %i.ci, ptr %i.cj, align 1, !tbaa !9
  %i.ck = add nuw nsw i64 %.123, 2                ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !9
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 %i.ck
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !9
  %i.cp = add i8 %i.co, %i.cm
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 %i.ck
  store i8 %i.cp, ptr %i.cq, align 1, !tbaa !9
  %i.cr = add nuw nsw i64 %.123, 3                ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !9
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 %i.cr
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !9
  %i.cw = add i8 %i.cv, %i.ct
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 %i.cr
  store i8 %i.cw, ptr %i.cx, align 1, !tbaa !9
  %i.cy = add nuw nsw i64 %.123, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.cy, %i.ad
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph24, !llvm.loop !28

._crit_edge:                                      ; preds = %.lr.ph24.prol.loopexit, %.lr.ph24, %middle.block46, %vec.epilog.middle.block, %.preheader
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.abs.v16i32(<16 x i32>, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.abs.v4i32(<4 x i32>, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #3

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!7, !7, i64 0}
!10 = distinct !{!10, !11, !12, !13}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = !{!"branch_weights", i32 4, i32 12}
!15 = distinct !{!15, !11, !12, !13}
!16 = distinct !{!16, !11, !12}
!17 = !{!18, !19, i64 0}
!18 = !{!"PNGDSPContext", !19, i64 0, !19, i64 8}
!19 = !{!"any pointer", !7, i64 0}
!20 = !{!18, !19, i64 8}
!21 = distinct !{!21, !11, !12, !13}
!22 = distinct !{!22, !11, !12, !13}
!23 = !{!"branch_weights", i32 8, i32 24}
!24 = distinct !{!24, !11, !12, !13}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.unroll.disable"}
!27 = distinct !{!27, !11, !12}
!28 = distinct !{!28, !11, !12}
end_hunk_0
