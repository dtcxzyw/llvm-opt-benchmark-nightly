begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_delta_decoder_init(ptr noundef initializes((24, 32)) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @delta_decode, ptr %i.a, align 8, !tbaa !9
  %i.b = tail call i32 @lzma_delta_coder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define internal i32 @delta_decode(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noalias noundef %2, ptr noalias noundef %3, i64 noundef %4, ptr noalias noundef %5, ptr noalias noundef %6, i64 noundef %7, i32 noundef %8) #0 {
bb.a:
  %i.a = load i64, ptr %6, align 8, !tbaa !13     ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.d = load ptr, ptr %0, align 8, !tbaa !16
  %i.e = tail call i32 %i.c(ptr noundef %i.d, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef nonnull %6, i64 noundef %7, i32 noundef %8) #2
  %i.f = load i64, ptr %6, align 8, !tbaa !13     ; 5 uses
  %.not = icmp eq i64 %i.f, %i.a
  br i1 %.not, label %decode_buffer.exit, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.g = sub i64 %i.f, %i.a                       ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 %i.a ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.j = load i64, ptr %i.i, align 8, !tbaa !17
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 89 ; 10 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %.tr.i = trunc i64 %i.j to i8                   ; 7 uses
  %.pre.i = load i8, ptr %i.l, align 8, !tbaa !18 ; 11 uses
  %min.iters.check = icmp ult i64 %i.g, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.m = xor i64 %i.a, -1
  %i.n = add i64 %i.f, %i.m                       ; 3 uses
  %i.o = trunc i64 %i.n to i8
  %i.p = icmp ult i8 %.pre.i, %i.o
  %i.q = add i8 %.pre.i, %.tr.i
  %9 = trunc i64 %i.n to i8
  %i.r = icmp ult i8 %i.q, %9
  %i.s = icmp ugt i64 %i.n, 255
  %i.t = or i1 %i.r, %i.s
  %i.u = or i1 %i.p, %i.t
  br i1 %i.u, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.v = add i8 %.pre.i, %.tr.i
  %i.w = zext i8 %i.v to i64
  %i.x = zext i8 %.pre.i to i64
  %i.y = sub nsw i64 %i.x, %i.w
  %diff.check = icmp ugt i64 %i.y, -16
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check21 = icmp ult i64 %i.g, 16
  br i1 %min.iters.check21, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.g, 12
  %n.vec = and i64 %i.g, -16                      ; 5 uses
  %i.z = trunc i64 %n.vec to i8
  %i.aa = sub i8 %.pre.i, %i.z                    ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ab = trunc i64 %index to i8
  %i.ac = sub i8 %.pre.i, %i.ab                   ; 2 uses
  %i.ad = add i8 %i.ac, %.tr.i
  %i.ae = zext i8 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.ae
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -15
  %wide.load = load <16 x i8>, ptr %i.ag, align 1, !tbaa !19
  %reverse = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 %index ; 2 uses
  %wide.load22 = load <16 x i8>, ptr %i.ah, align 1, !tbaa !19
  %i.ai = add <16 x i8> %wide.load22, %reverse    ; 2 uses
  store <16 x i8> %i.ai, ptr %i.ah, align 1, !tbaa !19
  %i.aj = zext i8 %i.ac to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.aj
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 -15
  %reverse23 = shufflevector <16 x i8> %i.ai, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %reverse23, ptr %i.al, align 1, !tbaa !19
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !20

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %decode_buffer.exit.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !24

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec25 = and i64 %i.g, -4                     ; 4 uses
  %i.an = trunc i64 %n.vec25 to i8
  %i.ao = sub i8 %.pre.i, %i.an                   ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index26 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next31, %vec.epilog.vector.body ] ; 3 uses
  %i.ap = trunc i64 %index26 to i8
  %i.aq = sub i8 %.pre.i, %i.ap                   ; 2 uses
  %i.ar = add i8 %i.aq, %.tr.i
  %i.as = zext i8 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.as
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 -3
  %wide.load27 = load <4 x i8>, ptr %i.au, align 1, !tbaa !19
  %reverse28 = shufflevector <4 x i8> %wide.load27, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.av = getelementptr inbounds nuw i8, ptr %i.h, i64 %index26 ; 2 uses
  %wide.load29 = load <4 x i8>, ptr %i.av, align 1, !tbaa !19
  %i.aw = add <4 x i8> %wide.load29, %reverse28   ; 2 uses
  store <4 x i8> %i.aw, ptr %i.av, align 1, !tbaa !19
  %i.ax = zext i8 %i.aq to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.ax
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 -3
  %reverse30 = shufflevector <4 x i8> %i.aw, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %reverse30, ptr %i.az, align 1, !tbaa !19
  %index.next31 = add nuw i64 %index26, 4         ; 2 uses
  %i.ba = icmp eq i64 %index.next31, %n.vec25
  br i1 %i.ba, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !25

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n32 = icmp eq i64 %i.g, %n.vec25
  br i1 %cmp.n32, label %decode_buffer.exit.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i8 [ %.pre.i, %iter.check ], [ %.pre.i, %vector.scevcheck ], [ %.pre.i, %vector.memcheck ], [ %i.aa, %vec.epilog.iter.check ], [ %i.ao, %vec.epilog.middle.block ] ; 4 uses
  %.012.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec25, %vec.epilog.middle.block ] ; 4 uses
  %i.bb = sub i64 %i.f, %i.a
  %i.bc = xor i64 %.012.i.ph, -1
  %i.bd = add i64 %i.f, %i.bc
  %xtraiter = and i64 %i.bb, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %.narrow.i.prol = add i8 %.ph, %.tr.i
  %i.be = zext i8 %.narrow.i.prol to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !19
  %i.bh = getelementptr inbounds nuw i8, ptr %i.h, i64 %.012.i.ph ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !19
  %i.bj = add i8 %i.bi, %i.bg                     ; 2 uses
  store i8 %i.bj, ptr %i.bh, align 1, !tbaa !19
  %i.bk = add i8 %.ph, -1                         ; 2 uses
  %i.bl = zext i8 %.ph to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.bl
  store i8 %i.bj, ptr %i.bm, align 1, !tbaa !19
  %i.bn = or disjoint i64 %.012.i.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa35.unr = phi i8 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.bk, %vec.epilog.scalar.ph.prol ]
  %.unr = phi i8 [ %.ph, %vec.epilog.scalar.ph.preheader ], [ %i.bk, %vec.epilog.scalar.ph.prol ]
  %.012.i.unr = phi i64 [ %.012.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.bn, %vec.epilog.scalar.ph.prol ]
  %i.bo = icmp eq i64 %i.bd, %i.a
  br i1 %i.bo, label %decode_buffer.exit.loopexit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %i.bp = phi i8 [ %i.cg, %vec.epilog.scalar.ph ], [ %.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 4 uses
  %.012.i = phi i64 [ %i.cj, %vec.epilog.scalar.ph ], [ %.012.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 3 uses
  %.narrow.i = add i8 %i.bp, %.tr.i
  %i.bq = zext i8 %.narrow.i to i64
  %i.br = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !19
  %i.bt = getelementptr inbounds nuw i8, ptr %i.h, i64 %.012.i ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !19
  %i.bv = add i8 %i.bu, %i.bs                     ; 2 uses
  store i8 %i.bv, ptr %i.bt, align 1, !tbaa !19
  %i.bw = add i8 %i.bp, -1                        ; 2 uses
  %i.bx = zext i8 %i.bp to i64
  %i.by = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.bx
  store i8 %i.bv, ptr %i.by, align 1, !tbaa !19
  %.narrow.i.1 = add i8 %i.bw, %.tr.i
  %i.bz = zext i8 %.narrow.i.1 to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !19
  %i.cc = getelementptr inbounds nuw i8, ptr %i.h, i64 %.012.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 1 ; 2 uses
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !19
  %i.cf = add i8 %i.ce, %i.cb                     ; 2 uses
  store i8 %i.cf, ptr %i.cd, align 1, !tbaa !19
  %i.cg = add i8 %i.bp, -2                        ; 2 uses
  %i.ch = zext i8 %i.bw to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.ch
  store i8 %i.cf, ptr %i.ci, align 1, !tbaa !19
  %i.cj = add nuw i64 %.012.i, 2                  ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.cj, %i.g
  br i1 %exitcond.not.i.1, label %decode_buffer.exit.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !26

decode_buffer.exit.loopexit:                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi i8 [ %i.ao, %vec.epilog.middle.block ], [ %i.aa, %middle.block ], [ %.lcssa35.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.cg, %vec.epilog.scalar.ph ]
  store i8 %.lcssa, ptr %i.l, align 8, !tbaa !18
  br label %decode_buffer.exit

decode_buffer.exit:                               ; preds = %decode_buffer.exit.loopexit, %bb.a
  ret i32 %i.e
}

declare i32 @lzma_delta_coder_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 9) i32 @lzma_delta_props_decode(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i64 %3, 1
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @lzma_alloc(i64 noundef 40, ptr noundef %1) #2 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.a, align 8, !tbaa !27
  %i.c = load i8, ptr %2, align 1, !tbaa !19
  %i.d = zext i8 %i.c to i32
  %i.e = add nuw nsw i32 %i.d, 1
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.e, ptr %i.f, align 4, !tbaa !29
  store ptr %i.a, ptr %0, align 8, !tbaa !30
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.1 = phi i32 [ 8, %bb.a ], [ 0, %bb.c ], [ 5, %bb.b ]
  ret i32 %.1
}

declare ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}
end_hunk_0
