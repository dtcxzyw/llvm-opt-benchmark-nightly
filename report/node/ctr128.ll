inline.NumInlined: 5
inline.NumDeleted: 3
begin_hunk_0_@CRYPTO_ctr128_encrypt:bb.a
; Function Attrs: nounwind uwtable
define dso_local void @CRYPTO_ctr128_encrypt_ctr32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef captures(none) %6, ptr noundef readonly captures(none) %7) local_unnamed_addr #0 {
bb.a:
  %8 = ptrtoaddr ptr %5 to i64
  %i.a = load i32, ptr %6, align 4, !tbaa !5      ; 3 uses
  %i.b = icmp ne i32 %i.a, 0
  %i.c = icmp ne i64 %2, 0
end_hunk_0
begin_hunk_1_@CRYPTO_ctr128_encrypt_ctr32:bb.a
  br i1 %i.q, label %.lr.ph, label %._crit_edge, !llvm.loop !16

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.070.lcssa = phi i32 [ %i.a, %bb.a ], [ %i.n, %.lr.ph ] ; 7 uses
  %.068.lcssa = phi i64 [ %2, %bb.a ], [ %i.l, %.lr.ph ] ; 3 uses
  %.066.lcssa = phi ptr [ %1, %bb.a ], [ %i.k, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.e, %.lr.ph ] ; 2 uses
end_hunk_1
begin_hunk_2_@CRYPTO_ctr128_encrypt_ctr32:bb.a

._crit_edge92:                                    ; preds = %bb.d, %._crit_edge
  %.074.lcssa = phi i32 [ %i.t, %._crit_edge ], [ %spec.select, %bb.d ]
  %.169.lcssa = phi i64 [ %.068.lcssa, %._crit_edge ], [ %i.cv, %bb.d ] ; 9 uses
  %.167.lcssa = phi ptr [ %.066.lcssa, %._crit_edge ], [ %i.cw, %bb.d ] ; 5 uses
  %.1.lcssa = phi ptr [ %.0.lcssa, %._crit_edge ], [ %i.cx, %bb.d ] ; 5 uses
  %.167.lcssa122 = ptrtoaddr ptr %.167.lcssa to i64 ; 2 uses
  %.1.lcssa123 = ptrtoaddr ptr %.1.lcssa to i64
  %.not = icmp eq i64 %.169.lcssa, 0
  br i1 %.not, label %.loopexit, label %bb.e

end_hunk_2
begin_hunk_3_@CRYPTO_ctr128_encrypt_ctr32:bb.a
  %i.da = tail call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.cz) #4, !srcloc !20
  store i32 %i.da, ptr %i.r, align 4, !tbaa !5
  %i.db = icmp eq i32 %i.cz, 0
  br i1 %i.db, label %bb.f, label %iter.check

bb.f:                                             ; preds = %bb.e
  %i.dc = getelementptr inbounds nuw i8, ptr %4, i64 11 ; 2 uses
end_hunk_3
begin_hunk_4_@CRYPTO_ctr128_encrypt_ctr32:bb.a
  %i.fr = trunc nuw nsw i32 %i.fp to i8
  %i.fs = add i8 %i.fq, %i.fr
  store i8 %i.fs, ptr %4, align 1, !tbaa !9
  br label %iter.check

iter.check:                                       ; preds = %bb.f, %bb.e
  %min.iters.check = icmp samesign ult i64 %.169.lcssa, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %9 = add nsw i64 %.169.lcssa, -1                ; 2 uses
  %10 = trunc i64 %9 to i32
  %11 = xor i32 %.070.lcssa, -1
  %12 = icmp ult i32 %11, %10
  %13 = icmp ugt i64 %9, 4294967295
  %14 = or i1 %12, %13
  br i1 %14, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %15 = sub i64 %.167.lcssa122, %.1.lcssa123
  %diff.check = icmp ult i64 %15, 32
  %16 = sub i64 %.167.lcssa122, %8
  %diff.check124 = icmp ult i64 %16, 32
  %conflict.rdx = or i1 %diff.check, %diff.check124
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vector.memcheck
  %n.vec132 = and i64 %.169.lcssa, 12             ; 3 uses
  %17 = and i64 %.169.lcssa, 3
  %.cast133 = trunc nuw nsw i64 %n.vec132 to i32
  %18 = add i32 %.070.lcssa, %.cast133            ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index134 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next138, %vec.epilog.vector.body ] ; 2 uses
  %.cast135 = trunc i64 %index134 to i32
  %19 = add i32 %.070.lcssa, %.cast135
  %20 = zext i32 %19 to i64                       ; 3 uses
  %21 = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 %20
  %wide.load136 = load <4 x i8>, ptr %21, align 1, !tbaa !9
  %22 = getelementptr inbounds nuw i8, ptr %5, i64 %20
  %wide.load137 = load <4 x i8>, ptr %22, align 1, !tbaa !9
  %23 = xor <4 x i8> %wide.load137, %wide.load136
  %24 = getelementptr inbounds nuw i8, ptr %.167.lcssa, i64 %20
  store <4 x i8> %23, ptr %24, align 1, !tbaa !9
  %index.next138 = add nuw i64 %index134, 4       ; 2 uses
  %25 = icmp eq i64 %index.next138, %n.vec132
  br i1 %25, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !21

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n139 = icmp eq i64 %.169.lcssa, %n.vec132
  br i1 %cmp.n139, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %iter.check, %vec.epilog.middle.block
  %.298.ph = phi i64 [ %.169.lcssa, %vector.scevcheck ], [ %.169.lcssa, %vector.memcheck ], [ %.169.lcssa, %iter.check ], [ %17, %vec.epilog.middle.block ] ; 4 uses
  %.17197.ph = phi i32 [ %.070.lcssa, %vector.scevcheck ], [ %.070.lcssa, %vector.memcheck ], [ %.070.lcssa, %iter.check ], [ %18, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.298.ph, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ft = add nsw i64 %.298.ph, -1
  %i.fu = zext i32 %.17197.ph to i64              ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 %i.fu
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !9
  %i.fx = getelementptr inbounds nuw i8, ptr %5, i64 %i.fu
end_hunk_4
begin_hunk_5_@CRYPTO_ctr128_encrypt_ctr32:bb.a
  %i.fz = xor i8 %i.fy, %i.fw
  %i.ga = getelementptr inbounds nuw i8, ptr %.167.lcssa, i64 %i.fu
  store i8 %i.fz, ptr %i.ga, align 1, !tbaa !9
  %i.gb = add i32 %.17197.ph, 1                   ; 2 uses
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i32 [ poison, %scalar.ph.preheader ], [ %i.gb, %scalar.ph.prol ]
  %.298.unr = phi i64 [ %.298.ph, %scalar.ph.preheader ], [ %i.ft, %scalar.ph.prol ]
  %.17197.unr = phi i32 [ %.17197.ph, %scalar.ph.preheader ], [ %i.gb, %scalar.ph.prol ]
  %i.gc = icmp eq i64 %.298.ph, 1
  br i1 %i.gc, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
end_hunk_5
begin_hunk_6_@CRYPTO_ctr128_encrypt_ctr32:bb.a
  store i8 %i.gr, ptr %i.gs, align 1, !tbaa !9
  %i.gt = add i32 %.17197, 2                      ; 2 uses
  %.not77.1 = icmp eq i64 %i.gl, 0
  br i1 %.not77.1, label %.loopexit, label %scalar.ph, !llvm.loop !24

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %vec.epilog.middle.block, %._crit_edge92
  %.272 = phi i32 [ %.070.lcssa, %._crit_edge92 ], [ %18, %vec.epilog.middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.gt, %scalar.ph ]
  store i32 %.272, ptr %6, align 4, !tbaa !5
  ret void
}
end_hunk_6
begin_hunk_7_@llvm.umin.i64
!18 = !{i64 2148299214}
!19 = distinct !{!19, !11}
!20 = !{i64 2148299405}
!21 = distinct !{!21, !11, !22, !23}
!22 = !{!"llvm.loop.isvectorized", i32 1}
!23 = !{!"llvm.loop.unroll.runtime.disable"}
!24 = distinct !{!24, !11, !22}
end_hunk_7
