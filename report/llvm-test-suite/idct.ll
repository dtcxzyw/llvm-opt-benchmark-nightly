inline.NumInlined: 2
inline.NumDeleted: 2
begin_hunk_0_@Fast_IDCT:bb.a
  %i.cd = sub nsw i32 %i.bg, %i.bd
  %i.ce = lshr i32 %i.cd, 8
  %i.cf = trunc i32 %i.ce to i16
  %i.cg = sub nsw i32 %i.bi, %i.bq
  %i.ch = lshr i32 %i.cg, 8
  %i.ci = trunc i32 %i.ch to i16
  %i.cj = sub nsw i32 %i.bh, %i.bm
  %i.ck = lshr i32 %i.cj, 8
  %i.cl = trunc i32 %i.ck to i16
  store i16 %i.cl, ptr %i.f, align 2, !tbaa !8
  %i.cm = sub nsw i32 %i.bf, %i.bb
  %i.cn = lshr i32 %i.cm, 8
  %i.co = trunc i32 %i.cn to i16
  store i16 %i.co, ptr %i.o, align 2, !tbaa !8
  br label %idctrow.exit

idctrow.exit:                                     ; preds = %bb.c, %bb.d
  %.sink19 = phi i16 [ %i.af, %bb.c ], [ %i.ci, %bb.d ]
  %.sink18 = phi i16 [ %i.af, %bb.c ], [ %i.cf, %bb.d ]
  %.sink = phi i16 [ %i.af, %bb.c ], [ %i.cc, %bb.d ]
  %.sink86.i = phi i16 [ %i.af, %bb.c ], [ %i.bz, %bb.d ]
  %.sink85.i = phi i16 [ %i.af, %bb.c ], [ %i.bw, %bb.d ]
  %.sink.i = phi i16 [ %i.af, %bb.c ], [ %i.bt, %bb.d ]
  store i16 %.sink19, ptr %i.r, align 2, !tbaa !8
  store i16 %.sink18, ptr %i.c, align 2, !tbaa !8
  store i16 %.sink, ptr %i.u, align 2, !tbaa !8
  store i16 %.sink86.i, ptr %i.i, align 2, !tbaa !8
  store i16 %.sink85.i, ptr %i.l, align 2, !tbaa !8
  store i16 %.sink.i, ptr %i.b, align 2, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %.preheader, label %bb.b, !llvm.loop !10

bb.e:                                             ; preds = %.preheader, %idctcol.exit
  %indvars.iv14 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next15, %idctcol.exit ] ; 2 uses
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv14 ; 10 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 64 ; 3 uses
  %i.cr = load i16, ptr %i.cq, align 2, !tbaa !8
  %i.cs = sext i16 %i.cr to i32                   ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 96 ; 3 uses
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !8
  %i.cv = sext i16 %i.cu to i32                   ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cp, i64 32 ; 3 uses
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !8
  %i.cy = sext i16 %i.cx to i32                   ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cp, i64 16 ; 3 uses
  %i.da = load i16, ptr %i.cz, align 2, !tbaa !8
  %i.db = sext i16 %i.da to i32                   ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cp, i64 112 ; 3 uses
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !8
  %i.de = sext i16 %i.dd to i32                   ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.cp, i64 80 ; 3 uses
  %i.dg = load i16, ptr %i.df, align 2, !tbaa !8
  %i.dh = sext i16 %i.dg to i32                   ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.cp, i64 48 ; 3 uses
  %i.dj = load i16, ptr %i.di, align 2, !tbaa !8
  %i.dk = sext i16 %i.dj to i32                   ; 3 uses
  %i.dl = or i32 %i.cv, %i.cs
  %i.dm = or i32 %i.dl, %i.cy
  %i.dn = or i32 %i.dm, %i.db
  %i.do = or i32 %i.dn, %i.de
  %i.dp = or i32 %i.do, %i.dh
  %i.dq = or i32 %i.dp, %i.dk
  %i.dr = icmp eq i32 %i.dq, 0
  %i.ds = load i16, ptr %i.cp, align 2, !tbaa !8
  %i.dt = sext i16 %i.ds to i32                   ; 2 uses
  br i1 %i.dr, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.du = add nsw i32 %i.dt, 32
  %i.dv = ashr i32 %i.du, 6
  %i.dw = sext i32 %i.dv to i64
  %i.dx = getelementptr inbounds [2 x i8], ptr %i.a, i64 %i.dw
  %i.dy = load i16, ptr %i.dx, align 2, !tbaa !8  ; 8 uses
  store i16 %i.dy, ptr %i.dc, align 2, !tbaa !8
  store i16 %i.dy, ptr %i.ct, align 2, !tbaa !8
  store i16 %i.dy, ptr %i.df, align 2, !tbaa !8
  store i16 %i.dy, ptr %i.cq, align 2, !tbaa !8
  store i16 %i.dy, ptr %i.di, align 2, !tbaa !8
  store i16 %i.dy, ptr %i.cw, align 2, !tbaa !8
  store i16 %i.dy, ptr %i.cz, align 2, !tbaa !8
  store i16 %i.dy, ptr %i.cp, align 2, !tbaa !8
  br label %idctcol.exit

bb.g:                                             ; preds = %bb.e
  %i.dz = shl nsw i32 %i.cs, 8                    ; 2 uses
  %i.ea = shl nsw i32 %i.dt, 8
  %i.eb = add nsw i32 %i.ea, 8192                 ; 2 uses
  %i.ec = add nsw i32 %i.de, %i.db
  %i.ed = mul nsw i32 %i.ec, 565
  %i.ee = add nsw i32 %i.ed, 4                    ; 2 uses
  %i.ef = mul nsw i32 %i.db, 2276
  %i.eg = add nsw i32 %i.ee, %i.ef
  %i.eh = ashr i32 %i.eg, 3                       ; 2 uses
  %.neg.i7 = mul nsw i32 %i.de, -3406
  %i.ei = add nsw i32 %i.ee, %.neg.i7
  %i.ej = ashr i32 %i.ei, 3                       ; 2 uses
  %i.ek = add nsw i32 %i.dk, %i.dh
  %i.el = mul nsw i32 %i.ek, 2408
  %i.em = or disjoint i32 %i.el, 4                ; 2 uses
  %.neg82.i8 = mul nsw i32 %i.dh, -799
  %i.en = add nsw i32 %i.em, %.neg82.i8
  %i.eo = ashr i32 %i.en, 3                       ; 2 uses
  %.neg83.i9 = mul nsw i32 %i.dk, -4017
  %i.ep = add nsw i32 %i.em, %.neg83.i9
  %i.eq = ashr i32 %i.ep, 3                       ; 2 uses
  %i.er = add nsw i32 %i.eb, %i.dz                ; 2 uses
  %i.es = sub nsw i32 %i.eb, %i.dz                ; 2 uses
  %i.et = add nsw i32 %i.cy, %i.cv
  %i.eu = mul nsw i32 %i.et, 1108
  %i.ev = add nsw i32 %i.eu, 4                    ; 2 uses
  %.neg84.i10 = mul nsw i32 %i.cv, -3784
  %i.ew = add nsw i32 %i.ev, %.neg84.i10
  %i.ex = ashr i32 %i.ew, 3                       ; 2 uses
  %i.ey = mul nsw i32 %i.cy, 1568
  %i.ez = add nsw i32 %i.ev, %i.ey
  %i.fa = ashr i32 %i.ez, 3                       ; 2 uses
  %i.fb = add nsw i32 %i.eo, %i.eh                ; 2 uses
  %i.fc = sub nsw i32 %i.eh, %i.eo                ; 2 uses
  %i.fd = add nsw i32 %i.eq, %i.ej                ; 2 uses
  %i.fe = sub nsw i32 %i.ej, %i.eq                ; 2 uses
  %i.ff = add nsw i32 %i.er, %i.fa                ; 2 uses
  %i.fg = sub nsw i32 %i.er, %i.fa                ; 2 uses
  %i.fh = add nsw i32 %i.es, %i.ex                ; 2 uses
  %i.fi = sub nsw i32 %i.es, %i.ex                ; 2 uses
  %i.fj = add nsw i32 %i.fc, %i.fe
  %i.fk = mul nsw i32 %i.fj, 181
  %i.fl = add nsw i32 %i.fk, 128
  %i.fm = ashr i32 %i.fl, 8                       ; 2 uses
  %i.fn = sub nsw i32 %i.fc, %i.fe
  %i.fo = mul nsw i32 %i.fn, 181
  %i.fp = add nsw i32 %i.fo, 128
  %i.fq = ashr i32 %i.fp, 8                       ; 2 uses
  %i.fr = add nsw i32 %i.fb, %i.ff
  %i.fs = ashr i32 %i.fr, 14
  %i.ft = sext i32 %i.fs to i64
  %i.fu = getelementptr inbounds [2 x i8], ptr %i.a, i64 %i.ft
  %i.fv = load i16, ptr %i.fu, align 2, !tbaa !8
  store i16 %i.fv, ptr %i.cp, align 2, !tbaa !8
  %i.fw = add nsw i32 %i.fm, %i.fh
  %i.fx = ashr i32 %i.fw, 14
  %i.fy = sext i32 %i.fx to i64
  %i.fz = getelementptr inbounds [2 x i8], ptr %i.a, i64 %i.fy
  %i.ga = load i16, ptr %i.fz, align 2, !tbaa !8
  store i16 %i.ga, ptr %i.cz, align 2, !tbaa !8
  %i.gb = add nsw i32 %i.fq, %i.fi
  %i.gc = ashr i32 %i.gb, 14
  %i.gd = sext i32 %i.gc to i64
  %i.ge = getelementptr inbounds [2 x i8], ptr %i.a, i64 %i.gd
  %i.gf = load i16, ptr %i.ge, align 2, !tbaa !8
  store i16 %i.gf, ptr %i.cw, align 2, !tbaa !8
  %i.gg = add nsw i32 %i.fd, %i.fg
  %i.gh = ashr i32 %i.gg, 14
  %i.gi = sext i32 %i.gh to i64
  %i.gj = getelementptr inbounds [2 x i8], ptr %i.a, i64 %i.gi
  %i.gk = load i16, ptr %i.gj, align 2, !tbaa !8
  store i16 %i.gk, ptr %i.di, align 2, !tbaa !8
  %i.gl = sub nsw i32 %i.fg, %i.fd
  %i.gm = ashr i32 %i.gl, 14
  %i.gn = sext i32 %i.gm to i64
  %i.go = getelementptr inbounds [2 x i8], ptr %i.a, i64 %i.gn
  %i.gp = load i16, ptr %i.go, align 2, !tbaa !8
  store i16 %i.gp, ptr %i.cq, align 2, !tbaa !8
  %i.gq = sub nsw i32 %i.fi, %i.fq
  %i.gr = ashr i32 %i.gq, 14
  %i.gs = sext i32 %i.gr to i64
  %i.gt = getelementptr inbounds [2 x i8], ptr %i.a, i64 %i.gs
  %i.gu = load i16, ptr %i.gt, align 2, !tbaa !8
  store i16 %i.gu, ptr %i.df, align 2, !tbaa !8
  %i.gv = sub nsw i32 %i.fh, %i.fm
  %i.gw = ashr i32 %i.gv, 14
  %i.gx = sext i32 %i.gw to i64
  %i.gy = getelementptr inbounds [2 x i8], ptr %i.a, i64 %i.gx
  %i.gz = load i16, ptr %i.gy, align 2, !tbaa !8
  store i16 %i.gz, ptr %i.ct, align 2, !tbaa !8
  %i.ha = sub nsw i32 %i.ff, %i.fb
  %i.hb = ashr i32 %i.ha, 14
  %i.hc = sext i32 %i.hb to i64
  %i.hd = getelementptr inbounds [2 x i8], ptr %i.a, i64 %i.hc
  %i.he = load i16, ptr %i.hd, align 2, !tbaa !8
  store i16 %i.he, ptr %i.dc, align 2, !tbaa !8
  br label %idctcol.exit

idctcol.exit:                                     ; preds = %bb.f, %bb.g
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1 ; 2 uses
  %exitcond17.not = icmp eq i64 %indvars.iv.next15, 8
  br i1 %exitcond17.not, label %bb.h, label %bb.e, !llvm.loop !12

bb.h:                                             ; preds = %idctcol.exit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @Initialize_Fast_IDCT() local_unnamed_addr #1 {
vector.ph:
  store ptr getelementptr inbounds nuw (i8, ptr @iclip, i64 1024), ptr @iclp, align 8, !tbaa !13
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i32> [ <i32 -512, i32 -511, i32 -510, i32 -509, i32 -508, i32 -507, i32 -506, i32 -505>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.a = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.ind, <8 x i32> splat (i32 -256))
  %i.b = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.a, <8 x i32> splat (i32 255))
  %i.c = trunc nsw <8 x i32> %i.b to <8 x i16>
  %i.d = getelementptr [2 x i8], ptr @iclip, i64 %index
  store <8 x i16> %i.c, ptr %i.d, align 16, !tbaa !8
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 8)
  %i.e = icmp eq i64 %index.next, 1024
  br i1 %i.e, label %middle.block, label %vector.body, !llvm.loop !16

middle.block:                                     ; preds = %vector.body
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smax.v8i32(<8 x i32>, <8 x i32>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smin.v8i32(<8 x i32>, <8 x i32>) #2

attributes #0 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"short", !6, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = !{!14, !14, i64 0}
!14 = !{!"p1 short", !15, i64 0}
!15 = !{!"any pointer", !6, i64 0}
!16 = distinct !{!16, !11, !17, !18}
!17 = !{!"llvm.loop.isvectorized", i32 1}
!18 = !{!"llvm.loop.unroll.runtime.disable"}
end_hunk_0
