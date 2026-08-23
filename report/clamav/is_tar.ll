Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/is_tar?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@is_tar:bb.a
  br i1 %.not.i, label %.lr.ph.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 149 ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !11
  %i.l = zext i8 %i.k to i64
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.l
  %i.n = load i16, ptr %i.m, align 2, !tbaa !12
  %i.o = and i16 %i.n, 8192
  %.not.1.i = icmp eq i16 %i.o, 0
  br i1 %.not.1.i, label %.lr.ph.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 150 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !11
  %i.r = zext i8 %i.q to i64
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.r
  %i.t = load i16, ptr %i.s, align 2, !tbaa !12
  %i.u = and i16 %i.t, 8192
  %.not.2.i = icmp eq i16 %i.u, 0
  br i1 %.not.2.i, label %.lr.ph.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 151 ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !11
  %i.x = zext i8 %i.w to i64
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.x
  %i.z = load i16, ptr %i.y, align 2, !tbaa !12
  %i.aa = and i16 %i.z, 8192
  %.not.3.i = icmp eq i16 %i.aa, 0
  br i1 %.not.3.i, label %.lr.ph.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !11
  %i.ad = zext i8 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.ad
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !12
  %i.ag = and i16 %i.af, 8192
  %.not.4.i = icmp eq i16 %i.ag, 0
  br i1 %.not.4.i, label %.lr.ph.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 153 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !11
  %i.aj = zext i8 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.aj
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !12
  %i.am = and i16 %i.al, 8192
  %.not.5.i = icmp eq i16 %i.am, 0
  br i1 %.not.5.i, label %.lr.ph.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 154 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !11
  %i.ap = zext i8 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.ap
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !12
  %i.as = and i16 %i.ar, 8192
  %.not.6.i = icmp eq i16 %i.as, 0
  br i1 %.not.6.i, label %.lr.ph.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 155 ; 2 uses
  %i.au = load i8, ptr %i.at, align 1, !tbaa !11
  %i.av = zext i8 %i.au to i64
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.av
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !12
  %i.ay = and i16 %i.ax, 8192
  %.not.7.i = icmp eq i16 %i.ay, 0
  br i1 %.not.7.i, label %.lr.ph.i, label %vector.ph

.lr.ph.i:                                         ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i
  %.129.i.ph = phi ptr [ %i.b, %bb.b ], [ %i.j, %bb.c ], [ %i.p, %bb.d ], [ %i.v, %bb.e ], [ %i.ab, %bb.f ], [ %i.ah, %bb.g ], [ %i.an, %bb.h ], [ %i.at, %bb.i ] ; 8 uses
  %i.az = phi i1 [ true, %bb.b ], [ true, %bb.c ], [ true, %bb.d ], [ true, %bb.e ], [ true, %bb.f ], [ true, %bb.g ], [ true, %bb.h ], [ false, %bb.i ]
  %i.ba = phi i1 [ true, %bb.b ], [ true, %bb.c ], [ true, %bb.d ], [ true, %bb.e ], [ true, %bb.f ], [ true, %bb.g ], [ false, %bb.h ], [ false, %bb.i ]
  %i.bb = phi i1 [ true, %bb.b ], [ true, %bb.c ], [ true, %bb.d ], [ true, %bb.e ], [ true, %bb.f ], [ false, %bb.g ], [ false, %bb.h ], [ false, %bb.i ]
  %i.bc = phi i1 [ true, %bb.b ], [ true, %bb.c ], [ true, %bb.d ], [ true, %bb.e ], [ false, %bb.f ], [ false, %bb.g ], [ false, %bb.h ], [ false, %bb.i ]
  %i.bd = phi i1 [ true, %bb.b ], [ true, %bb.c ], [ true, %bb.d ], [ false, %bb.e ], [ false, %bb.f ], [ false, %bb.g ], [ false, %bb.h ], [ false, %bb.i ]
  %i.be = phi i1 [ true, %bb.b ], [ true, %bb.c ], [ false, %bb.d ], [ false, %bb.e ], [ false, %bb.f ], [ false, %bb.g ], [ false, %bb.h ], [ false, %bb.i ]
  %i.bf = load i8, ptr %.129.i.ph, align 1, !tbaa !11 ; 3 uses
  %i.bg = and i8 %i.bf, -8
  %or.cond.i = icmp eq i8 %i.bg, 48
  br i1 %or.cond.i, label %bb.j, label %.critedge.i

bb.j:                                             ; preds = %.lr.ph.i
  %narrow.i = add nsw i8 %i.bf, -48
  %i.bh = zext nneg i8 %narrow.i to i32           ; 3 uses
  br i1 %i.az, label %.lr.ph.i.1, label %vector.ph

.lr.ph.i.1:                                       ; preds = %bb.j
  %i.bi = getelementptr inbounds nuw i8, ptr %.129.i.ph, i64 1
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !11  ; 3 uses
  %i.bk = and i8 %i.bj, -8
  %or.cond.i.1 = icmp eq i8 %i.bk, 48
  br i1 %or.cond.i.1, label %bb.k, label %.critedge.i

bb.k:                                             ; preds = %.lr.ph.i.1
  %i.bl = shl nuw nsw i32 %i.bh, 3
  %narrow.i.1 = add nsw i8 %i.bj, -48
  %i.bm = zext nneg i8 %narrow.i.1 to i32
  %i.bn = or disjoint i32 %i.bl, %i.bm            ; 3 uses
  br i1 %i.ba, label %.lr.ph.i.2, label %vector.ph

.lr.ph.i.2:                                       ; preds = %bb.k
  %i.bo = getelementptr inbounds nuw i8, ptr %.129.i.ph, i64 2
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !11  ; 3 uses
  %i.bq = and i8 %i.bp, -8
  %or.cond.i.2 = icmp eq i8 %i.bq, 48
  br i1 %or.cond.i.2, label %bb.l, label %.critedge.i

bb.l:                                             ; preds = %.lr.ph.i.2
  %i.br = shl nuw nsw i32 %i.bn, 3
  %narrow.i.2 = add nsw i8 %i.bp, -48
  %i.bs = zext nneg i8 %narrow.i.2 to i32
  %i.bt = or disjoint i32 %i.br, %i.bs            ; 3 uses
  br i1 %i.bb, label %.lr.ph.i.3, label %vector.ph

.lr.ph.i.3:                                       ; preds = %bb.l
  %i.bu = getelementptr inbounds nuw i8, ptr %.129.i.ph, i64 3
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !11  ; 3 uses
  %i.bw = and i8 %i.bv, -8
  %or.cond.i.3 = icmp eq i8 %i.bw, 48
  br i1 %or.cond.i.3, label %bb.m, label %.critedge.i

bb.m:                                             ; preds = %.lr.ph.i.3
  %i.bx = shl nuw nsw i32 %i.bt, 3
  %narrow.i.3 = add nsw i8 %i.bv, -48
  %i.by = zext nneg i8 %narrow.i.3 to i32
  %i.bz = or disjoint i32 %i.bx, %i.by            ; 3 uses
  br i1 %i.bc, label %.lr.ph.i.4, label %vector.ph

.lr.ph.i.4:                                       ; preds = %bb.m
  %i.ca = getelementptr inbounds nuw i8, ptr %.129.i.ph, i64 4
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !11  ; 3 uses
  %i.cc = and i8 %i.cb, -8
  %or.cond.i.4 = icmp eq i8 %i.cc, 48
  br i1 %or.cond.i.4, label %bb.n, label %.critedge.i

bb.n:                                             ; preds = %.lr.ph.i.4
  %i.cd = shl i32 %i.bz, 3
  %narrow.i.4 = add nsw i8 %i.cb, -48
  %i.ce = zext nneg i8 %narrow.i.4 to i32
  %i.cf = or disjoint i32 %i.cd, %i.ce            ; 3 uses
  br i1 %i.bd, label %.lr.ph.i.5, label %vector.ph

.lr.ph.i.5:                                       ; preds = %bb.n
  %i.cg = getelementptr inbounds nuw i8, ptr %.129.i.ph, i64 5
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !11  ; 3 uses
  %i.ci = and i8 %i.ch, -8
  %or.cond.i.5 = icmp eq i8 %i.ci, 48
  br i1 %or.cond.i.5, label %bb.o, label %.critedge.i

bb.o:                                             ; preds = %.lr.ph.i.5
  %i.cj = shl i32 %i.cf, 3
  %narrow.i.5 = add nsw i8 %i.ch, -48
  %i.ck = zext nneg i8 %narrow.i.5 to i32
  %i.cl = or disjoint i32 %i.cj, %i.ck            ; 3 uses
  br i1 %i.be, label %.lr.ph.i.6, label %vector.ph

.lr.ph.i.6:                                       ; preds = %bb.o
  %i.cm = getelementptr inbounds nuw i8, ptr %.129.i.ph, i64 6
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !11  ; 3 uses
  %i.co = and i8 %i.cn, -8
  %or.cond.i.6 = icmp eq i8 %i.co, 48
  br i1 %or.cond.i.6, label %bb.p, label %.critedge.i

bb.p:                                             ; preds = %.lr.ph.i.6
  %i.cp = shl i32 %i.cl, 3
  %narrow.i.6 = add nsw i8 %i.cn, -48
  %i.cq = zext nneg i8 %narrow.i.6 to i32
  %i.cr = or disjoint i32 %i.cp, %i.cq            ; 3 uses
  br i1 %.not.i, label %.lr.ph.i.7, label %vector.ph

.lr.ph.i.7:                                       ; preds = %bb.p
  %i.cs = getelementptr inbounds nuw i8, ptr %.129.i.ph, i64 7
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !11  ; 3 uses
  %i.cu = and i8 %i.ct, -8
  %or.cond.i.7 = icmp eq i8 %i.cu, 48
  br i1 %or.cond.i.7, label %bb.q, label %.critedge.i

bb.q:                                             ; preds = %.lr.ph.i.7
  %i.cv = shl i32 %i.cr, 3
  %narrow.i.7 = add nsw i8 %i.ct, -48
  %i.cw = zext nneg i8 %narrow.i.7 to i32
  %i.cx = or disjoint i32 %i.cv, %i.cw
  br label %vector.ph

.critedge.i:                                      ; preds = %.lr.ph.i.7, %.lr.ph.i.6, %.lr.ph.i.5, %.lr.ph.i.4, %.lr.ph.i.3, %.lr.ph.i.2, %.lr.ph.i.1, %.lr.ph.i
  %.030.i.lcssa = phi i32 [ 0, %.lr.ph.i ], [ %i.bh, %.lr.ph.i.1 ], [ %i.bn, %.lr.ph.i.2 ], [ %i.bt, %.lr.ph.i.3 ], [ %i.bz, %.lr.ph.i.4 ], [ %i.cf, %.lr.ph.i.5 ], [ %i.cl, %.lr.ph.i.6 ], [ %i.cr, %.lr.ph.i.7 ] ; 2 uses
  %.lcssa49 = phi i8 [ %i.bf, %.lr.ph.i ], [ %i.bj, %.lr.ph.i.1 ], [ %i.bp, %.lr.ph.i.2 ], [ %i.bv, %.lr.ph.i.3 ], [ %i.cb, %.lr.ph.i.4 ], [ %i.ch, %.lr.ph.i.5 ], [ %i.cn, %.lr.ph.i.6 ], [ %i.ct, %.lr.ph.i.7 ] ; 2 uses
  %.not19.i = icmp eq i8 %.lcssa49, 0
  br i1 %.not19.i, label %vector.ph, label %bb.r

bb.r:                                             ; preds = %.critedge.i
  %i.cy = zext i8 %.lcssa49 to i64
  %i.cz = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.cy
  %i.da = load i16, ptr %i.cz, align 2, !tbaa !12
  %i.db = and i16 %i.da, 8192
  %.not20.i = icmp eq i16 %i.db, 0
  %spec.select.i = select i1 %.not20.i, i32 -1, i32 %.030.i.lcssa
  br label %vector.ph

vector.ph:                                        ; preds = %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %.critedge.i, %bb.i
  %.016.i = phi i32 [ %spec.select.i, %bb.r ], [ -1, %bb.i ], [ %.030.i.lcssa, %.critedge.i ], [ %i.bh, %bb.j ], [ %i.bn, %bb.k ], [ %i.bt, %bb.l ], [ %i.bz, %bb.m ], [ %i.cf, %bb.n ], [ %i.cl, %bb.o ], [ %i.cr, %bb.p ], [ %i.cx, %bb.q ]
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.dl, %vector.body ]
  %vec.phi43 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.dm, %vector.body ]
  %next.gep = getelementptr i8, ptr %0, i64 %index ; 2 uses
  %i.dc = getelementptr i8, ptr %next.gep, i64 4
  %wide.load = load <4 x i8>, ptr %next.gep, align 1, !tbaa !11
  %wide.load44 = load <4 x i8>, ptr %i.dc, align 1, !tbaa !11
  %i.dd = zext <4 x i8> %wide.load to <4 x i32>
  %i.de = zext <4 x i8> %wide.load44 to <4 x i32>
  %i.df = add <4 x i32> %vec.phi, %i.dd
  %i.dg = add <4 x i32> %vec.phi43, %i.de
  %i.dh = getelementptr i8, ptr %0, i64 %index    ; 2 uses
  %next.gep.1 = getelementptr i8, ptr %i.dh, i64 8
  %i.di = getelementptr i8, ptr %i.dh, i64 12
  %wide.load.1 = load <4 x i8>, ptr %next.gep.1, align 1, !tbaa !11
  %wide.load44.1 = load <4 x i8>, ptr %i.di, align 1, !tbaa !11
  %i.dj = zext <4 x i8> %wide.load.1 to <4 x i32>
  %i.dk = zext <4 x i8> %wide.load44.1 to <4 x i32>
  %i.dl = add <4 x i32> %i.df, %i.dj              ; 2 uses
  %i.dm = add <4 x i32> %i.dg, %i.dk              ; 2 uses
  %index.next.1 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.dn = icmp eq i64 %index.next.1, 512
  br i1 %i.dn, label %.preheader.preheader, label %vector.body, !llvm.loop !14

.preheader.preheader:                             ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.dm, %i.dl
  %i.do = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.dq = load <4 x i8>, ptr %i.dp, align 1, !tbaa !11
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 151
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !11
  %i.dt = zext i8 %i.ds to i32
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 150
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !11
  %i.dw = zext i8 %i.dv to i32
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 149
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !11
  %i.dz = zext i8 %i.dy to i32
  %i.ea = zext i8 %i.e to i32
  %i.eb = zext <4 x i8> %i.dq to <4 x i32>
  %i.ec = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.eb)
  %op.rdx = add nuw nsw i32 %i.ec, %i.dt
  %op.rdx45 = add nuw nsw i32 %i.dw, %i.dz
  %op.rdx46 = add nuw nsw i32 %op.rdx, %op.rdx45
  %op.rdx47 = add nuw nsw i32 %op.rdx46, %i.ea
  %i.ed = sub i32 %i.do, %op.rdx47
  %i.ee = add i32 %i.ed, 256
  %.not = icmp eq i32 %i.ee, %.016.i
  br i1 %.not, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.preheader.preheader
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 257
  %i.eg = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ef, ptr noundef nonnull dereferenceable(8) @.str) #5
  %i.eh = icmp eq i32 %i.eg, 0
  %. = select i1 %i.eh, i32 2, i32 1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.preheader.preheader, %bb.a
  %.018 = phi i32 [ 0, %.preheader.preheader ], [ 0, %bb.a ], [ %., %bb.s ]
  ret i32 %.018
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #3

attributes #0 = { nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind willreturn memory(none) }
attributes #5 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 short", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!6, !6, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"short", !6, i64 0}
!14 = distinct !{!14, !15, !16}
!15 = !{!"llvm.loop.isvectorized", i32 1}
!16 = !{!"llvm.loop.unroll.runtime.disable"}
end_hunk_0
