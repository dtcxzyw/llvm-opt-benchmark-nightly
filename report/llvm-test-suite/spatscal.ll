inline.NumInlined: 6
inline.NumDeleted: 2
begin_hunk_0_@Deinterlace:bb.a
  %i.ae = add nuw nsw i32 %i.ad, %i.aa
  %i.af = shl nuw nsw i32 %i.ae, 3
  %i.ag = getelementptr inbounds nuw i8, ptr %i.u, i64 %indvars.iv74
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !15
  %i.ai = zext i8 %i.ah to i32
  %i.aj = shl nuw nsw i32 %i.ai, 1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.w, i64 %indvars.iv74
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !15
  %i.am = zext i8 %i.al to i32
  %i.an = getelementptr inbounds nuw i8, ptr %i.x, i64 %indvars.iv74
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !15
  %i.ap = zext i8 %i.ao to i32
  %.neg62.us = add nuw nsw i32 %i.af, %i.aj
  %i.aq = add nuw nsw i32 %i.am, %i.ap
  %i.ar = sub nsw i32 %.neg62.us, %i.aq           ; 2 uses
  %i.as = load ptr, ptr @Clip, align 8, !tbaa !8
  %i.at = icmp sgt i32 %i.ar, -1
  %i.au = select i1 %i.at, i32 8, i32 7
  %i.av = add nsw i32 %i.au, %i.ar
  %i.aw = ashr i32 %i.av, 4
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds i8, ptr %i.as, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !15
  %i.ba = getelementptr inbounds nuw i8, ptr %i.p, i64 %indvars.iv74
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !15
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1 ; 2 uses
  %exitcond78.not = icmp eq i64 %indvars.iv.next75, %i.k
  br i1 %exitcond78.not, label %..loopexit_crit_edge.us, label %bb.b, !llvm.loop !79

..loopexit_crit_edge.us:                          ; preds = %bb.b
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79.a, 2 ; 2 uses
  %i.bb = icmp samesign ult i64 %indvars.iv.next80, %i.n
  br i1 %i.bb, label %.lr.ph66.us, label %._crit_edge, !llvm.loop !80

.lr.ph68.split:                                   ; preds = %.lr.ph68
  br i1 %i.i, label %.preheader.preheader, label %._crit_edge

.preheader.preheader:                             ; preds = %.lr.ph68.split
  %i.bc = zext nneg i32 %2 to i64
  %i.bd = zext nneg i32 %3 to i64                 ; 9 uses
  %i.be = zext nneg i32 %i.d to i64
  %i.bf = zext nneg i32 %4 to i64
  %min.iters.check = icmp ult i32 %3, 8
  %min.iters.check87 = icmp ult i32 %3, 32
  %n.mod.vf = and i64 %i.bd, 24
  %n.vec = and i64 %i.bd, 2147483616              ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %i.bd
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  %n.vec92 = and i64 %i.bd, 2147483640            ; 3 uses
  %cmp.n97 = icmp eq i64 %n.vec92, %i.bd
  %xtraiter = and i64 %i.bd, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.bg = add nsw i64 %i.bd, -1
  br label %iter.check

iter.check:                                       ; preds = %.preheader.preheader, %..loopexit63_crit_edge
  %indvars.iv71 = phi i64 [ %i.bc, %.preheader.preheader ], [ %indvars.iv.next72, %..loopexit63_crit_edge ] ; 4 uses
  %i.bh = mul nuw nsw i64 %indvars.iv71, %i.bd
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 %i.bh ; 7 uses
  %i.bj = icmp eq i64 %indvars.iv71, 0
  %.pn = select i1 %i.bj, i64 %i.b, i64 %i.c      ; 2 uses
  %i.bk = getelementptr inbounds i8, ptr %i.bi, i64 %.pn ; 5 uses
  %i.bl = icmp eq i64 %indvars.iv71, %i.be
  %.pn58 = select i1 %i.bl, i64 %i.c, i64 %i.b    ; 2 uses
  %i.bm = getelementptr inbounds i8, ptr %i.bi, i64 %.pn58 ; 5 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bn = add nsw i64 %.pn, 31
  %diff.check = icmp ult i64 %i.bn, 32
  %i.bo = add nsw i64 %.pn58, 31
  %diff.check86 = icmp ult i64 %i.bo, 32
  %conflict.rdx = or i1 %diff.check, %diff.check86
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check87, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 %index ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %wide.load = load <16 x i8>, ptr %i.bp, align 1, !tbaa !15
  %wide.load88 = load <16 x i8>, ptr %i.bq, align 1, !tbaa !15
  %i.br = zext <16 x i8> %wide.load to <16 x i16>
  %i.bs = zext <16 x i8> %wide.load88 to <16 x i16>
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 %index ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %wide.load89 = load <16 x i8>, ptr %i.bt, align 1, !tbaa !15
  %wide.load90 = load <16 x i8>, ptr %i.bu, align 1, !tbaa !15
  %i.bv = zext <16 x i8> %wide.load89 to <16 x i16>
  %i.bw = zext <16 x i8> %wide.load90 to <16 x i16>
  %i.bx = add nuw nsw <16 x i16> %i.br, splat (i16 1)
  %i.by = add nuw nsw <16 x i16> %i.bs, splat (i16 1)
  %i.bz = add nuw nsw <16 x i16> %i.bx, %i.bv
  %i.ca = add nuw nsw <16 x i16> %i.by, %i.bw
  %i.cb = lshr <16 x i16> %i.bz, splat (i16 1)
  %i.cc = lshr <16 x i16> %i.ca, splat (i16 1)
  %i.cd = trunc nuw <16 x i16> %i.cb to <16 x i8>
  %i.ce = trunc nuw <16 x i16> %i.cc to <16 x i8>
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bi, i64 %index ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  store <16 x i8> %i.cd, ptr %i.cf, align 1, !tbaa !15
  store <16 x i8> %i.ce, ptr %i.cg, align 1, !tbaa !15
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ch = icmp eq i64 %index.next, %n.vec
  br i1 %i.ch, label %middle.block, label %vector.body, !llvm.loop !81

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit63_crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !82

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index93 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next96, %vec.epilog.vector.body ] ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bk, i64 %index93
  %wide.load94 = load <8 x i8>, ptr %i.ci, align 1, !tbaa !15
  %i.cj = zext <8 x i8> %wide.load94 to <8 x i16>
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bm, i64 %index93
  %wide.load95 = load <8 x i8>, ptr %i.ck, align 1, !tbaa !15
  %i.cl = zext <8 x i8> %wide.load95 to <8 x i16>
  %i.cm = add nuw nsw <8 x i16> %i.cj, splat (i16 1)
  %i.cn = add nuw nsw <8 x i16> %i.cm, %i.cl
  %i.co = lshr <8 x i16> %i.cn, splat (i16 1)
  %i.cp = trunc nuw <8 x i16> %i.co to <8 x i8>
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bi, i64 %index93
  store <8 x i8> %i.cp, ptr %i.cq, align 1, !tbaa !15
  %index.next96 = add nuw i64 %index93, 8         ; 2 uses
  %i.cr = icmp eq i64 %index.next96, %n.vec92
  br i1 %i.cr, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !83

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n97, label %..loopexit63_crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec92, %vec.epilog.middle.block ] ; 6 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bk, i64 %indvars.iv.ph
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !15
  %i.cu = zext i8 %i.ct to i16
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bm, i64 %indvars.iv.ph
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !15
  %i.cx = zext i8 %i.cw to i16
  %i.cy = add nuw nsw i16 %i.cu, 1
  %i.cz = add nuw nsw i16 %i.cy, %i.cx
  %i.da = lshr i16 %i.cz, 1
  %i.db = trunc nuw i16 %i.da to i8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bi, i64 %indvars.iv.ph
  store i8 %i.db, ptr %i.dc, align 1, !tbaa !15
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.dd = icmp eq i64 %indvars.iv.ph, %i.bg
  br i1 %i.dd, label %..loopexit63_crit_edge, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.bk, i64 %indvars.iv
  %i.df = load i8, ptr %i.de, align 1, !tbaa !15
  %i.dg = zext i8 %i.df to i16
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bm, i64 %indvars.iv
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !15
  %i.dj = zext i8 %i.di to i16
  %i.dk = add nuw nsw i16 %i.dg, 1
  %i.dl = add nuw nsw i16 %i.dk, %i.dj
  %i.dm = lshr i16 %i.dl, 1
  %i.dn = trunc nuw i16 %i.dm to i8
  %i.do = getelementptr inbounds nuw i8, ptr %i.bi, i64 %indvars.iv
  store i8 %i.dn, ptr %i.do, align 1, !tbaa !15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.bk, i64 %indvars.iv.next
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !15
  %i.dr = zext i8 %i.dq to i16
  %i.ds = getelementptr inbounds nuw i8, ptr %i.bm, i64 %indvars.iv.next
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !15
  %i.du = zext i8 %i.dt to i16
  %i.dv = add nuw nsw i16 %i.dr, 1
  %i.dw = add nuw nsw i16 %i.dv, %i.du
  %i.dx = lshr i16 %i.dw, 1
  %i.dy = trunc nuw i16 %i.dx to i8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.bi, i64 %indvars.iv.next
  store i8 %i.dy, ptr %i.dz, align 1, !tbaa !15
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %i.bd
  br i1 %exitcond.not.1, label %..loopexit63_crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !84

..loopexit63_crit_edge:                           ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 2 ; 2 uses
  %i.ea = icmp samesign ult i64 %indvars.iv.next72, %i.bf
  br i1 %i.ea, label %iter.check, label %._crit_edge, !llvm.loop !80

._crit_edge:                                      ; preds = %..loopexit63_crit_edge, %..loopexit_crit_edge.us, %.lr.ph68.split.us, %.lr.ph68.split, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }
attributes #9 = { cold noreturn nounwind }

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
!9 = !{!"p1 omnipotent char", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"p1 short", !10, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!6, !6, i64 0}
!16 = distinct !{!16, !14}
!17 = distinct !{!17, !14}
!18 = distinct !{!18, !14}
!19 = distinct !{!19, !14}
!20 = distinct !{!20, !14}
!21 = distinct !{!21, !14}
!22 = !{!23}
!23 = distinct !{!23, !24}
!24 = distinct !{!24, !"LVerDomain"}
!25 = !{!26}
!26 = distinct !{!26, !24}
!27 = !{!28, !28, i64 0}
!28 = !{!"short", !6, i64 0}
!29 = !{!30}
!30 = distinct !{!30, !24}
!31 = !{!26, !23}
!32 = distinct !{!32, !14, !33, !34}
!33 = !{!"llvm.loop.isvectorized", i32 1}
!34 = !{!"llvm.loop.unroll.runtime.disable"}
!35 = distinct !{!35, !14, !33}
!36 = distinct !{!36, !14}
!37 = !{!38}
!38 = distinct !{!38, !39}
!39 = distinct !{!39, !"LVerDomain"}
!40 = !{!41}
!41 = distinct !{!41, !39}
!42 = !{!43}
!43 = distinct !{!43, !39}
!44 = !{!41, !38}
!45 = distinct !{!45, !14, !33, !34}
!46 = distinct !{!46, !14, !33}
!47 = !{!48}
!48 = distinct !{!48, !49}
!49 = distinct !{!49, !"LVerDomain"}
!50 = !{!51}
!51 = distinct !{!51, !49}
!52 = !{!53}
!53 = distinct !{!53, !49}
!54 = !{!51, !48}
!55 = distinct !{!55, !14, !33, !34}
!56 = distinct !{!56, !14, !33}
!57 = !{!58}
!58 = distinct !{!58, !59}
!59 = distinct !{!59, !"LVerDomain"}
!60 = !{!61}
!61 = distinct !{!61, !59}
!62 = !{!63}
!63 = distinct !{!63, !59}
!64 = !{!61, !58}
!65 = distinct !{!65, !14, !33, !34}
!66 = distinct !{!66, !14, !33}
!67 = !{!68}
!68 = distinct !{!68, !69}
!69 = distinct !{!69, !"LVerDomain"}
!70 = !{!71}
!71 = distinct !{!71, !69}
!72 = !{!73}
!73 = distinct !{!73, !69}
!74 = !{!71, !68}
!75 = distinct !{!75, !14, !33, !34}
!76 = distinct !{!76, !14, !33}
!77 = distinct !{!77, !14}
!78 = distinct !{!78, !14}
!79 = distinct !{!79, !14}
!80 = distinct !{!80, !14}
!81 = distinct !{!81, !14, !33, !34}
!82 = !{!"branch_weights", i32 8, i32 24}
!83 = distinct !{!83, !14, !33, !34}
!84 = distinct !{!84, !14, !33}
end_hunk_0
