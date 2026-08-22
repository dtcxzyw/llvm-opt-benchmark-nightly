Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/aptx?download=true
inline.NumInlined: 4
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@ff_aptx_invert_quantize_and_prediction:bb.a
  store i32 %.0.i.i.i, ptr %i.au, align 4, !tbaa !23
  %i.bm = lshr i32 %.0.i.i.i, 3
  %i.bn = and i32 %i.bm, 31
  %i.bo = sub nsw i32 %i.bk, %.0.i.i.i
  %i.bp = ashr i32 %i.bo, 8
  %i.bq = zext nneg i32 %i.bn to i64
  %i.br = getelementptr inbounds nuw [2 x i8], ptr @quantization_factors, i64 %i.bq
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !25
  %i.bt = sext i16 %i.bs to i32
  %i.bu = shl nsw i32 %i.bt, 11
  %i.bv = ashr i32 %i.bu, %i.bp
  store i32 %i.bv, ptr %i.g, align 4, !tbaa !9
  %i.bw = getelementptr inbounds nuw i8, ptr %i.h, i64 312 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !28
  %i.by = sub nsw i32 0, %i.bx
  %i.bz = tail call i32 @llvm.scmp.i32.i32(i32 %i.as, i32 %i.by) ; 3 uses
  %i.ca = load i32, ptr %i.h, align 4, !tbaa !14
  %i.cb = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !14 ; 2 uses
  %i.cd = mul nsw i32 %i.bz, %i.cc                ; 2 uses
  store i32 %i.cc, ptr %i.h, align 4, !tbaa !14
  %i.ce = or i32 %i.bz, 1
  store i32 %i.ce, ptr %i.cb, align 4, !tbaa !14
  %i.cf = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.h, i64 12 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !14 ; 2 uses
  %i.ci = mul i32 %i.cd, %i.ch                    ; 2 uses
  %i.cj = sub i32 0, %i.ci
  %i.ck = sub i32 1, %i.ci
  %i.cl = ashr i32 %i.ck, 1
  %i.cm = and i32 %i.cj, 3
  %i.cn = icmp eq i32 %i.cm, 1
  %.neg.i36.i = sext i1 %i.cn to i32
  %i.co = add nsw i32 %i.cl, %.neg.i36.i
  %i.cp = tail call i32 @llvm.smax.i32(i32 %i.co, i32 -1048576)
  %.0.i40.i = tail call i32 @llvm.smin.i32(i32 %i.cp, i32 1048576)
  %i.cq = shl nsw i32 %.0.i40.i, 4
  %i.cr = and i32 %i.cq, -256
  %i.cs = load i32, ptr %i.cf, align 4, !tbaa !14
  %i.ct = mul nsw i32 %i.cs, 254
  %i.cu = shl i32 %i.ca, 23
  %i.cv = mul i32 %i.cu, %i.bz
  %i.cw = add nsw i32 %i.ct, %i.cv
  %i.cx = add nsw i32 %i.cw, %i.cr                ; 2 uses
  %i.cy = add nsw i32 %i.cx, 128
  %i.cz = ashr i32 %i.cy, 8
  %i.da = and i32 %i.cx, 510
  %i.db = icmp eq i32 %i.da, 128
  %.neg.i35.i = sext i1 %i.db to i32
  %i.dc = add nsw i32 %i.cz, %.neg.i35.i
  %i.dd = tail call i32 @llvm.smax.i32(i32 %i.dc, i32 -3145728)
  %.0.i38.i = tail call i32 @llvm.smin.i32(i32 %i.dd, i32 3145728) ; 4 uses
  store i32 %.0.i38.i, ptr %i.cf, align 4, !tbaa !14
  %.neg.i = add nsw i32 %.0.i38.i, -3932160       ; 2 uses
  %i.de = sub nsw i32 3932160, %.0.i38.i
  %i.df = mul nsw i32 %i.ch, 255                  ; 2 uses
  %i.dg = mul nsw i32 %i.cd, 12582912
  %i.dh = add i32 %i.df, 128
  %i.di = add i32 %i.dh, %i.dg
  %i.dj = ashr i32 %i.di, 8
  %i.dk = and i32 %i.df, 511
  %i.dl = icmp eq i32 %i.dk, 128
  %.neg.i.i = sext i1 %i.dl to i32
  %i.dm = add nsw i32 %i.dj, %.neg.i.i            ; 2 uses
  %i.dn = icmp slt i32 %i.dm, %.neg.i
  %..i.i = tail call i32 @llvm.smin.i32(i32 %i.dm, i32 %i.de)
  %.0.i.i = select i1 %i.dn, i32 %.neg.i, i32 %..i.i ; 2 uses
  store i32 %.0.i.i, ptr %i.cg, align 4, !tbaa !14
  %i.do = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !30 ; 4 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.h, i64 316 ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !31
  %i.ds = add nsw i32 %i.dr, %i.as
  %i.dt = tail call i32 @llvm.smax.i32(i32 %i.ds, i32 -8388608)
  %.0.i40.i.i = tail call i32 @llvm.smin.i32(i32 %i.dt, i32 8388607) ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.h, i64 308 ; 2 uses
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !32
  store i32 %.0.i40.i.i, ptr %i.du, align 4, !tbaa !32
  %i.dw = getelementptr inbounds nuw i8, ptr %i.h, i64 116 ; 2 uses
  %i.dx = sext i32 %i.dp to i64
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %i.dx ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.h, i64 112 ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !33 ; 2 uses
  %i.eb = sext i32 %i.ea to i64                   ; 2 uses
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.dy, i64 %i.eb
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !14
  %i.ee = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %i.eb
  store i32 %i.ed, ptr %i.ee, align 4, !tbaa !14
  %i.ef = add nsw i32 %i.ea, 1
  %i.eg = srem i32 %i.ef, %i.dp                   ; 2 uses
  store i32 %i.eg, ptr %i.dz, align 4, !tbaa !33
  %i.eh = sext i32 %i.eg to i64
  %i.ei = getelementptr inbounds [4 x i8], ptr %i.dy, i64 %i.eh ; 3 uses
  store i32 %i.as, ptr %i.ei, align 4, !tbaa !14
  %i.ej = tail call i32 @llvm.scmp.i32.i32(i32 0, i32 %i.as)
  %.neg.i41.i = shl nsw i32 %i.ej, 23
  %i.ek = icmp sgt i32 %i.dp, 0
  br i1 %i.ek, label %.lr.ph.i.i, label %aptx_process_subband.exit

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.el = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %wide.trip.count.i.i = zext nneg i32 %i.dp to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.c ] ; 4 uses
  %.03343.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ff, %bb.c ]
  %i.em = sub nsw i64 0, %indvars.iv.i.i
  %i.en = xor i64 %indvars.iv.i.i, -1
  %i.eo = getelementptr inbounds [4 x i8], ptr %i.ei, i64 %i.en
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !14
  %i.eq = ashr i32 %i.ep, 31
  %i.er = or i32 %i.eq, 1
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %indvars.iv.i.i ; 2 uses
  %i.et = load i32, ptr %i.es, align 4, !tbaa !14 ; 3 uses
  %.neg34.i.i = mul i32 %.neg.i41.i, %i.er
  %i.eu = add i32 %i.et, 128
  %i.ev = add i32 %i.eu, %.neg34.i.i
  %i.ew = ashr i32 %i.ev, 8
  %i.ex = and i32 %i.et, 511
  %i.ey = icmp eq i32 %i.ex, 128
  %.neg.i.neg45.i.i = zext i1 %i.ey to i32
  %.neg42.i.i = add i32 %i.et, %.neg.i.neg45.i.i
  %i.ez = sub i32 %.neg42.i.i, %i.ew              ; 2 uses
  store i32 %i.ez, ptr %i.es, align 4, !tbaa !14
  %i.fa = getelementptr inbounds [4 x i8], ptr %i.ei, i64 %i.em
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !14
  %i.fc = sext i32 %i.fb to i64
  %i.fd = sext i32 %i.ez to i64
  %i.fe = mul nsw i64 %i.fd, %i.fc
  %i.ff = add nsw i64 %i.fe, %.03343.i.i          ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.loopexit.i.i, label %bb.c, !llvm.loop !34

._crit_edge.loopexit.i.i:                         ; preds = %bb.c
  %i.fg = lshr i64 %i.ff, 22
  %i.fh = trunc i64 %i.fg to i32
  %i.fi = tail call i32 @llvm.smax.i32(i32 %i.fh, i32 -8388608)
  %i.fj = tail call i32 @llvm.smin.i32(i32 %i.fi, i32 8388607)
  br label %aptx_process_subband.exit

aptx_process_subband.exit:                        ; preds = %bb.b, %._crit_edge.loopexit.i.i
  %.033.lcssa.i.i = phi i32 [ 0, %bb.b ], [ %i.fj, %._crit_edge.loopexit.i.i ] ; 2 uses
  %i.fk = sext i32 %.0.i38.i to i64
  %i.fl = sext i32 %i.dv to i64
  %i.fm = mul nsw i64 %i.fk, %i.fl
  %i.fn = sext i32 %.0.i.i to i64
  %i.fo = sext i32 %.0.i40.i.i to i64
  %i.fp = mul nsw i64 %i.fn, %i.fo
  %i.fq = add nsw i64 %i.fp, %i.fm
  %i.fr = lshr i64 %i.fq, 22
  %i.fs = trunc i64 %i.fr to i32
  %i.ft = tail call i32 @llvm.smax.i32(i32 %i.fs, i32 -8388608)
  %.0.i38.i.i = tail call i32 @llvm.smin.i32(i32 %i.ft, i32 8388607)
  store i32 %.033.lcssa.i.i, ptr %i.bw, align 4, !tbaa !28
  %i.fu = add nsw i32 %.033.lcssa.i.i, %.0.i38.i.i
  %i.fv = tail call i32 @llvm.smax.i32(i32 %i.fu, i32 -8388608)
  %.0.i.i42.i = tail call i32 @llvm.smin.i32(i32 %i.fv, i32 8388607)
  store i32 %.0.i.i42.i, ptr %i.dq, align 4, !tbaa !31
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %bb.d, label %bb.b, !llvm.loop !36

bb.d:                                             ; preds = %aptx_process_subband.exit
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -1094995529, 1) i32 @ff_aptx_init(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.d = load i32, ptr %i.c, align 4, !tbaa !54
  %.not = icmp eq i32 %i.d, 2
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !55
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.h = load i32, ptr %i.g, align 4, !tbaa !56
  %i.i = icmp eq i32 %i.h, 86102                  ; 2 uses
  %i.j = zext i1 %i.i to i32
  store i32 %i.j, ptr %i.b, align 4, !tbaa !59
  %i.k = select i1 %i.i, i32 6, i32 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.k, ptr %i.l, align 4, !tbaa !61
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.e
  %i.m = phi i1 [ true, %bb.b ], [ false, %bb.e ]
  %indvars.iv21 = phi i64 [ 0, %bb.b ], [ 1, %bb.e ]
  %i.n = getelementptr inbounds nuw [2192 x i8], ptr %i.b, i64 %indvars.iv21
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 924
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.d
  %indvars.iv = phi i64 [ 0, %bb.c ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.p = getelementptr inbounds nuw [320 x i8], ptr %i.o, i64 %indvars.iv ; 2 uses
  store i32 1, ptr %i.p, align 4, !tbaa !14
  %1 = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store i32 1, ptr %1, align 4, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %bb.e, label %bb.d, !llvm.loop !62

bb.e:                                             ; preds = %bb.d
  br i1 %i.m, label %bb.c, label %.loopexit, !llvm.loop !63

.loopexit:                                        ; preds = %bb.e, %bb.a
  %.0 = phi i32 [ -1094995529, %bb.a ], [ 0, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!9 = !{!10, !6, i64 0}
!10 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8}
!11 = !{!12, !6, i64 0}
!12 = !{!"", !6, i64 0, !6, i64 4, !7, i64 8, !13, i64 24, !7, i64 816, !7, i64 864, !7, i64 912}
!13 = !{!"", !7, i64 0, !7, i64 264}
!14 = !{!6, !6, i64 0}
!15 = !{!12, !6, i64 4}
!16 = !{!17, !18, i64 0}
!17 = !{!"", !18, i64 0, !18, i64 8, !18, i64 16, !20, i64 24, !6, i64 32, !6, i64 36, !6, i64 40}
!18 = !{!"p1 int", !19, i64 0}
!19 = !{!"any pointer", !7, i64 0}
!20 = !{!"p1 short", !19, i64 0}
!21 = !{!17, !18, i64 8}
!22 = !{!10, !6, i64 8}
!23 = !{!10, !6, i64 4}
!24 = !{!17, !20, i64 24}
!25 = !{!26, !26, i64 0}
!26 = !{!"short", !7, i64 0}
!27 = !{!17, !6, i64 36}
!28 = !{!29, !6, i64 312}
!29 = !{!"", !7, i64 0, !7, i64 8, !7, i64 16, !6, i64 112, !7, i64 116, !6, i64 308, !6, i64 312, !6, i64 316}
!30 = !{!17, !6, i64 40}
!31 = !{!29, !6, i64 316}
!32 = !{!29, !6, i64 308}
!33 = !{!29, !6, i64 112}
!34 = distinct !{!34, !35}
!35 = !{!"llvm.loop.mustprogress"}
!36 = distinct !{!36, !35}
!37 = !{!38, !19, i64 32}
!38 = !{!"AVCodecContext", !39, i64 0, !6, i64 8, !6, i64 12, !40, i64 16, !6, i64 24, !6, i64 28, !19, i64 32, !41, i64 40, !19, i64 48, !42, i64 56, !6, i64 64, !6, i64 68, !43, i64 72, !6, i64 80, !44, i64 84, !44, i64 92, !44, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !44, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !19, i64 184, !19, i64 192, !6, i64 200, !45, i64 204, !45, i64 208, !45, i64 212, !45, i64 216, !45, i64 220, !45, i64 224, !45, i64 228, !45, i64 232, !45, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !20, i64 288, !20, i64 296, !20, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !46, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !19, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !45, i64 428, !45, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !47, i64 456, !42, i64 464, !42, i64 472, !45, i64 480, !45, i64 484, !6, i64 488, !6, i64 492, !43, i64 496, !43, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !48, i64 536, !19, i64 544, !49, i64 552, !49, i64 560, !6, i64 568, !6, i64 572, !7, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !19, i64 672, !19, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !50, i64 728, !43, i64 736, !6, i64 744, !6, i64 748, !43, i64 752, !43, i64 760, !43, i64 768, !51, i64 776, !6, i64 784, !6, i64 788, !42, i64 792, !6, i64 800, !6, i64 804, !42, i64 808, !19, i64 816, !42, i64 824, !18, i64 832, !6, i64 840, !52, i64 848, !6, i64 856, !6, i64 860}
!39 = !{!"p1 _ZTS7AVClass", !19, i64 0}
!40 = !{!"p1 _ZTS7AVCodec", !19, i64 0}
!41 = !{!"p1 _ZTS15AVCodecInternal", !19, i64 0}
!42 = !{!"long", !7, i64 0}
!43 = !{!"p1 omnipotent char", !19, i64 0}
!44 = !{!"AVRational", !6, i64 0, !6, i64 4}
!45 = !{!"float", !7, i64 0}
!46 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !7, i64 8, !19, i64 16}
!47 = !{!"p1 _ZTS10RcOverride", !19, i64 0}
!48 = !{!"p1 _ZTS9AVHWAccel", !19, i64 0}
!49 = !{!"p1 _ZTS11AVBufferRef", !19, i64 0}
!50 = !{!"p1 _ZTS17AVCodecDescriptor", !19, i64 0}
!51 = !{!"p1 _ZTS16AVPacketSideData", !19, i64 0}
!52 = !{!"p2 _ZTS15AVFrameSideData", !53, i64 0}
!53 = !{!"any p2 pointer", !19, i64 0}
!54 = !{!38, !6, i64 356}
!55 = !{!38, !40, i64 16}
!56 = !{!57, !6, i64 20}
!57 = !{!"AVCodec", !43, i64 0, !43, i64 8, !6, i64 16, !6, i64 20, !6, i64 24, !7, i64 28, !39, i64 32, !58, i64 40, !43, i64 48}
!58 = !{!"p1 _ZTS9AVProfile", !19, i64 0}
!59 = !{!60, !6, i64 0}
!60 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !7, i64 12}
!61 = !{!60, !6, i64 4}
!62 = distinct !{!62, !35}
!63 = distinct !{!63, !35}
end_hunk_0
