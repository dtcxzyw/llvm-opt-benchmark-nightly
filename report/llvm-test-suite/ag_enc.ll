Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/ag_enc?download=true
inline.NumInlined: 4
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@dyn_comp:bb.a
  %i.dc = icmp ult i32 %i.cz, %3
  %or.cond122 = and i1 %i.dc, %i.db
  br i1 %or.cond122, label %.preheader.preheader, label %bb.bn

.preheader.preheader:                             ; preds = %bb.ab
  %i.dd = add i32 %.0100194, 65536
  %i.de = xor i32 %.0100194, -1
  %i.df = add i32 %3, %i.de                       ; 4 uses
  br label %.preheader

.preheader:                                       ; preds = %bb.af, %.preheader.preheader
  %.1101 = phi i32 [ %i.cz, %.preheader.preheader ], [ %i.dp, %bb.af ] ; 3 uses
  %.098 = phi i32 [ 0, %.preheader.preheader ], [ %i.do, %bb.af ] ; 5 uses
  %.288 = phi i32 [ %.187, %.preheader.preheader ], [ %.389.1, %bb.af ] ; 3 uses
  %.2 = phi ptr [ %.1, %.preheader.preheader ], [ %.3.1, %bb.af ] ; 4 uses
  %exitcond.not = icmp eq i32 %.098, %i.df
  br i1 %exitcond.not, label %.critedge, label %bb.ac

bb.ac:                                            ; preds = %.preheader
  %i.dg = load i32, ptr %.2, align 4, !tbaa !7
  %i.dh = icmp eq i32 %i.dg, 0
  br i1 %i.dh, label %bb.ad, label %.critedge

bb.ad:                                            ; preds = %bb.ac
  %i.di = getelementptr inbounds nuw i8, ptr %.2, i64 4
  %i.dj = or disjoint i32 %.098, 1                ; 2 uses
  %i.dk = add nsw i32 %.288, 1                    ; 2 uses
  %.not120 = icmp slt i32 %i.dk, %i.b             ; 2 uses
  %.389 = select i1 %.not120, i32 %i.dk, i32 0    ; 4 uses
  %.3.idx = select i1 %.not120, i64 0, i64 %i.t
  %.3 = getelementptr inbounds [4 x i8], ptr %i.di, i64 %.3.idx ; 5 uses
  %exitcond199 = icmp eq i32 %.098, 65534
  br i1 %exitcond199, label %.critedge, label %.preheader.1

.preheader.1:                                     ; preds = %bb.ad
  %exitcond.not.1 = icmp eq i32 %i.dj, %i.df
  br i1 %exitcond.not.1, label %.critedge, label %bb.ae

bb.ae:                                            ; preds = %.preheader.1
  %i.dl = load i32, ptr %.3, align 4, !tbaa !7
  %i.dm = icmp eq i32 %i.dl, 0
  br i1 %i.dm, label %bb.af, label %.critedge.split.loop.exit

bb.af:                                            ; preds = %bb.ae
  %i.dn = getelementptr inbounds nuw i8, ptr %.3, i64 4
  %i.do = add nuw nsw i32 %.098, 2
  %i.dp = add nuw i32 %.1101, 2
  %i.dq = add nsw i32 %.389, 1                    ; 2 uses
  %.not120.1 = icmp slt i32 %i.dq, %i.b           ; 2 uses
  %.389.1 = select i1 %.not120.1, i32 %i.dq, i32 0
  %.3.idx.1 = select i1 %.not120.1, i64 0, i64 %i.t
  %.3.1 = getelementptr inbounds [4 x i8], ptr %i.dn, i64 %.3.idx.1
  br label %.preheader

.critedge.split.loop.exit:                        ; preds = %bb.ae
  %i.dr = add nuw i32 %.1101, 1
  br label %.critedge

.critedge:                                        ; preds = %bb.ac, %.preheader, %bb.ad, %.preheader.1, %.critedge.split.loop.exit
  %.2102 = phi i32 [ %3, %.preheader.1 ], [ %i.dd, %bb.ad ], [ %3, %.preheader ], [ %i.dr, %.critedge.split.loop.exit ], [ %.1101, %bb.ac ]
  %.199 = phi i32 [ %i.df, %.preheader.1 ], [ 65535, %bb.ad ], [ %i.df, %.preheader ], [ %i.dj, %.critedge.split.loop.exit ], [ %.098, %bb.ac ] ; 4 uses
  %.196 = phi i32 [ 1, %.preheader.1 ], [ 0, %bb.ad ], [ 1, %.preheader ], [ 1, %.critedge.split.loop.exit ], [ 1, %bb.ac ]
  %.490 = phi i32 [ %.389, %.preheader.1 ], [ %.389, %bb.ad ], [ %.288, %.preheader ], [ %.389, %.critedge.split.loop.exit ], [ %.288, %bb.ac ]
  %.4 = phi ptr [ %.3, %.preheader.1 ], [ %.3, %bb.ad ], [ %.2, %.preheader ], [ %.3, %.critedge.split.loop.exit ], [ %.2, %bb.ac ]
  %.not.i = icmp sgt i32 %spec.store.select, -1
  br i1 %.not.i, label %bb.ag, label %lead.exit154

bb.ag:                                            ; preds = %.critedge
  %.not.1.i125 = icmp samesign ult i32 %spec.store.select, 1073741824
  br i1 %.not.1.i125, label %bb.ah, label %lead.exit154

bb.ah:                                            ; preds = %bb.ag
  %.not.2.i126 = icmp samesign ult i32 %spec.store.select, 536870912
  br i1 %.not.2.i126, label %bb.ai, label %lead.exit154

bb.ai:                                            ; preds = %bb.ah
  %.not.3.i127 = icmp samesign ult i32 %spec.store.select, 268435456
  br i1 %.not.3.i127, label %bb.aj, label %lead.exit154

bb.aj:                                            ; preds = %bb.ai
  %.not.4.i128 = icmp samesign ult i32 %spec.store.select, 134217728
  br i1 %.not.4.i128, label %bb.ak, label %lead.exit154

bb.ak:                                            ; preds = %bb.aj
  %.not.5.i129 = icmp samesign ult i32 %spec.store.select, 67108864
  br i1 %.not.5.i129, label %bb.al, label %lead.exit154

bb.al:                                            ; preds = %bb.ak
  %.not.6.i130 = icmp samesign ult i32 %spec.store.select, 33554432
  br i1 %.not.6.i130, label %bb.am, label %lead.exit154

bb.am:                                            ; preds = %bb.al
  %.not.7.i131 = icmp samesign ult i32 %spec.store.select, 16777216
  br i1 %.not.7.i131, label %bb.an, label %lead.exit154

bb.an:                                            ; preds = %bb.am
  %.not.8.i132 = icmp samesign ult i32 %spec.store.select, 8388608
  br i1 %.not.8.i132, label %bb.ao, label %lead.exit154

bb.ao:                                            ; preds = %bb.an
  %.not.9.i133 = icmp samesign ult i32 %spec.store.select, 4194304
  br i1 %.not.9.i133, label %bb.ap, label %lead.exit154

bb.ap:                                            ; preds = %bb.ao
  %.not.10.i134 = icmp samesign ult i32 %spec.store.select, 2097152
  br i1 %.not.10.i134, label %bb.aq, label %lead.exit154

bb.aq:                                            ; preds = %bb.ap
  %.not.11.i135 = icmp samesign ult i32 %spec.store.select, 1048576
  br i1 %.not.11.i135, label %bb.ar, label %lead.exit154

bb.ar:                                            ; preds = %bb.aq
  %.not.12.i136 = icmp samesign ult i32 %spec.store.select, 524288
  br i1 %.not.12.i136, label %bb.as, label %lead.exit154

bb.as:                                            ; preds = %bb.ar
  %.not.13.i137 = icmp samesign ult i32 %spec.store.select, 262144
  br i1 %.not.13.i137, label %bb.at, label %lead.exit154

bb.at:                                            ; preds = %bb.as
  %.not.14.i138 = icmp samesign ult i32 %spec.store.select, 131072
  br i1 %.not.14.i138, label %bb.au, label %lead.exit154

bb.au:                                            ; preds = %bb.at
  %.not.15.i139 = icmp samesign ult i32 %spec.store.select, 65536
  br i1 %.not.15.i139, label %bb.av, label %lead.exit154

bb.av:                                            ; preds = %bb.au
  %.not.16.i140 = icmp samesign ult i32 %spec.store.select, 32768
  br i1 %.not.16.i140, label %bb.aw, label %lead.exit154

bb.aw:                                            ; preds = %bb.av
  %.not.17.i141 = icmp samesign ult i32 %spec.store.select, 16384
  br i1 %.not.17.i141, label %bb.ax, label %lead.exit154

bb.ax:                                            ; preds = %bb.aw
  %.not.18.i142 = icmp samesign ult i32 %spec.store.select, 8192
  br i1 %.not.18.i142, label %bb.ay, label %lead.exit154

bb.ay:                                            ; preds = %bb.ax
  %.not.19.i143 = icmp samesign ult i32 %spec.store.select, 4096
  br i1 %.not.19.i143, label %bb.az, label %lead.exit154

bb.az:                                            ; preds = %bb.ay
  %.not.20.i144 = icmp samesign ult i32 %spec.store.select, 2048
  br i1 %.not.20.i144, label %bb.ba, label %lead.exit154

bb.ba:                                            ; preds = %bb.az
  %.not.21.i145 = icmp samesign ult i32 %spec.store.select, 1024
  br i1 %.not.21.i145, label %bb.bb, label %lead.exit154

bb.bb:                                            ; preds = %bb.ba
  %.not.22.i146 = icmp samesign ult i32 %spec.store.select, 512
  br i1 %.not.22.i146, label %bb.bc, label %lead.exit154

bb.bc:                                            ; preds = %bb.bb
  %.not.23.i147 = icmp samesign ult i32 %spec.store.select, 256
  br i1 %.not.23.i147, label %bb.bd, label %lead.exit154

bb.bd:                                            ; preds = %bb.bc
  %.not.24.i148 = icmp samesign ult i32 %spec.store.select, 128
  br i1 %.not.24.i148, label %bb.be, label %lead.exit154

bb.be:                                            ; preds = %bb.bd
  %.not.25.i149 = icmp samesign ult i32 %spec.store.select, 64
  br i1 %.not.25.i149, label %bb.bf, label %lead.exit154

bb.bf:                                            ; preds = %bb.be
  %.not.26.i150 = icmp samesign ult i32 %spec.store.select, 32
  br i1 %.not.26.i150, label %bb.bg, label %lead.exit154

bb.bg:                                            ; preds = %bb.bf
  %.not.27.i151 = icmp samesign ult i32 %spec.store.select, 16
  br i1 %.not.27.i151, label %bb.bh, label %lead.exit154

bb.bh:                                            ; preds = %bb.bg
  %.not.28.i152 = icmp samesign ult i32 %spec.store.select, 8
  br i1 %.not.28.i152, label %bb.bi, label %lead.exit154

bb.bi:                                            ; preds = %bb.bh
  %.not.29.i153 = icmp samesign ult i32 %spec.store.select, 4
  br i1 %.not.29.i153, label %bb.bj, label %lead.exit154

bb.bj:                                            ; preds = %bb.bi
  %.not.30.i = icmp samesign ult i32 %spec.store.select, 2
  br i1 %.not.30.i, label %bb.bk, label %lead.exit154

bb.bk:                                            ; preds = %bb.bj
  %.not.31.i = icmp eq i32 %spec.store.select, 0
  %i.ds = select i1 %.not.31.i, i32 8, i32 7
  br label %lead.exit154

lead.exit154:                                     ; preds = %.critedge, %bb.ag, %bb.ah, %bb.ai, %bb.aj, %bb.ak, %bb.al, %bb.am, %bb.an, %bb.ao, %bb.ap, %bb.aq, %bb.ar, %bb.as, %bb.at, %bb.au, %bb.av, %bb.aw, %bb.ax, %bb.ay, %bb.az, %bb.ba, %bb.bb, %bb.bc, %bb.bd, %bb.be, %bb.bf, %bb.bg, %bb.bh, %bb.bi, %bb.bj, %bb.bk
  %.06.lcssa.i124 = phi i32 [ -24, %.critedge ], [ -8, %bb.av ], [ -23, %bb.ag ], [ %i.ds, %bb.bk ], [ -22, %bb.ah ], [ -4, %bb.az ], [ -21, %bb.ai ], [ 6, %bb.bj ], [ -20, %bb.aj ], [ -7, %bb.aw ], [ -19, %bb.ak ], [ 5, %bb.bi ], [ -18, %bb.al ], [ -1, %bb.bc ], [ -17, %bb.am ], [ 4, %bb.bh ], [ -16, %bb.an ], [ -6, %bb.ax ], [ -15, %bb.ao ], [ 3, %bb.bg ], [ -14, %bb.ap ], [ -3, %bb.ba ], [ -13, %bb.aq ], [ 2, %bb.bf ], [ -12, %bb.ar ], [ -5, %bb.ay ], [ -11, %bb.as ], [ 1, %bb.be ], [ -10, %bb.at ], [ -2, %bb.bb ], [ -9, %bb.au ], [ 0, %bb.bd ]
  %i.dt = add nuw nsw i32 %spec.store.select, 16
  %i.du = lshr i32 %i.dt, 6
  %i.dv = add nsw i32 %.06.lcssa.i124, %i.du      ; 2 uses
  %notmask121 = shl nsw i32 -1, %i.dv
  %i.dw = xor i32 %notmask121, -1
  %i.dx = and i32 %i.q, %i.dw                     ; 2 uses
  %6 = udiv i32 %.199, %i.dx                      ; 4 uses
  %7 = urem i32 %.199, %i.dx                      ; 2 uses
  %i.dy = icmp samesign ugt i32 %6, 8
  br i1 %i.dy, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %lead.exit154
  %i.dz = add nuw nsw i32 %.199, 33488896
  br label %dyn_code.exit

bb.bm:                                            ; preds = %lead.exit154
  %i.ea = icmp eq i32 %7, 0                       ; 2 uses
  %.neg23.i = sext i1 %i.ea to i32
  %i.eb = add nsw i32 %i.dv, 1
  %i.ec = add nsw i32 %i.eb, %6
  %i.ed = add nsw i32 %i.ec, %.neg23.i            ; 3 uses
  %notmask.i155 = shl nsw i32 -1, %6
  %i.ee = xor i32 %notmask.i155, -1
  %i.ef = sub nsw i32 %i.ed, %6
  %i.eg = shl i32 %i.ee, %i.ef
  %not. = xor i1 %i.ea, true
  %i.eh = zext i1 %not. to i32
  %i.ei = add nuw nsw i32 %7, %i.eh
  %i.ej = add i32 %i.ei, %i.eg
  %i.ek = icmp ugt i32 %i.ed, 25
  %i.el = add nuw nsw i32 %.199, 33488896
  %spec.select.i156 = tail call i32 @llvm.umin.i32(i32 %i.ed, i32 25)
  %spec.select22.i = select i1 %i.ek, i32 %i.el, i32 %i.ej
  br label %dyn_code.exit

dyn_code.exit:                                    ; preds = %bb.bl, %bb.bm
  %.019.i = phi i32 [ 25, %bb.bl ], [ %spec.select.i156, %bb.bm ] ; 3 uses
  %.0.i157 = phi i32 [ %i.dz, %bb.bl ], [ %spec.select22.i, %bb.bm ]
  %i.em = lshr i32 %.1106, 3
  %i.en = zext nneg i32 %i.em to i64
  %i.eo = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.en ; 2 uses
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !7
  %i.eq = tail call i32 @Swap32NtoB(i32 noundef %i.ep) #4
  %i.er = and i32 %.1106, 7
  %i.es = add nuw nsw i32 %i.er, %.019.i
  %i.et = sub nuw nsw i32 32, %i.es               ; 2 uses
  %i.eu = sub nuw nsw i32 32, %.019.i
  %i.ev = lshr i32 -1, %i.eu                      ; 2 uses
  %i.ew = shl i32 %i.ev, %i.et
  %i.ex = and i32 %i.ev, %.0.i157
  %i.ey = shl i32 %i.ex, %i.et
  %i.ez = xor i32 %i.ew, -1
  %i.fa = and i32 %i.eq, %i.ez
  %i.fb = or i32 %i.ey, %i.fa
  %i.fc = tail call i32 @Swap32BtoN(i32 noundef %i.fb) #4
  store i32 %i.fc, ptr %i.eo, align 4, !tbaa !7
  %i.fd = add i32 %.019.i, %.1106
  br label %bb.bn

bb.bn:                                            ; preds = %dyn_code.exit, %bb.ab
  %.2107 = phi i32 [ %i.fd, %dyn_code.exit ], [ %.1106, %bb.ab ] ; 2 uses
  %.3103 = phi i32 [ %.2102, %dyn_code.exit ], [ %i.cz, %bb.ab ] ; 2 uses
  %.297 = phi i32 [ %.196, %dyn_code.exit ], [ 0, %bb.ab ]
  %.193 = phi i32 [ 0, %dyn_code.exit ], [ %spec.store.select, %bb.ab ]
  %.591 = phi i32 [ %.490, %dyn_code.exit ], [ %.187, %bb.ab ]
  %.5 = phi ptr [ %.4, %dyn_code.exit ], [ %.1, %bb.ab ]
  %i.fe = icmp ult i32 %.3103, %3
  br i1 %i.fe, label %bb.b, label %._crit_edge, !llvm.loop !8

._crit_edge:                                      ; preds = %bb.bn, %.split
  %.0105.lcssa = phi i32 [ %i.i, %.split ], [ %.2107, %bb.bn ]
  %i.ff = sub i32 %.0105.lcssa, %i.i              ; 2 uses
  store i32 %i.ff, ptr %5, align 4, !tbaa !7
  tail call void @BitBufferAdvance(ptr noundef nonnull %2, i32 noundef %i.ff) #4
  br label %bb.bo

bb.bo:                                            ; preds = %._crit_edge, %bb.a
  %.0108 = phi i32 [ -50, %bb.a ], [ 0, %._crit_edge ]
  ret i32 %.0108
}

declare void @BitBufferAdvance(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @Swap32NtoB(i32 noundef) local_unnamed_addr #1

declare i32 @Swap32BtoN(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = distinct !{!8, !24}
!9 = !{i64 7024761363480534824}
!10 = !{!"AGParamRec", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32}
!11 = !{!10, !6, i64 28}
!12 = !{!10, !6, i64 24}
!13 = !{!"any pointer", !5, i64 0}
!14 = !{!"p1 omnipotent char", !13, i64 0}
!15 = !{!"BitBuffer", !14, i64 0, !14, i64 8, !6, i64 16, !6, i64 20}
!16 = !{!15, !14, i64 0}
!17 = !{!15, !6, i64 16}
!18 = !{!10, !6, i64 4}
!19 = !{!10, !6, i64 0}
!20 = !{!10, !6, i64 8}
!21 = !{!10, !6, i64 12}
!22 = !{!10, !6, i64 16}
!23 = !{!5, !5, i64 0}
!24 = !{!"llvm.loop.mustprogress"}
end_hunk_0
