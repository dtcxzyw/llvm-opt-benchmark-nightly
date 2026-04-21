inline.NumInlined: 5
inline.NumDeleted: 3
begin_hunk_0_@CRYPTO_ctr128_encrypt:bb.a
; Function Attrs: nounwind uwtable
define dso_local void @CRYPTO_ctr128_encrypt_ctr32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef captures(none) %6, ptr noundef readonly captures(none) %7) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %6, align 4, !tbaa !5      ; 3 uses
  %i.b = icmp ne i32 %i.a, 0
  %i.c = icmp ne i64 %2, 0
end_hunk_0
begin_hunk_1_@CRYPTO_ctr128_encrypt_ctr32:bb.a
  br i1 %i.q, label %.lr.ph, label %._crit_edge, !llvm.loop !16

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.070.lcssa = phi i32 [ %i.a, %bb.a ], [ %i.n, %.lr.ph ] ; 4 uses
  %.068.lcssa = phi i64 [ %2, %bb.a ], [ %i.l, %.lr.ph ] ; 3 uses
  %.066.lcssa = phi ptr [ %1, %bb.a ], [ %i.k, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.e, %.lr.ph ] ; 2 uses
end_hunk_1
begin_hunk_2_@CRYPTO_ctr128_encrypt_ctr32:bb.a

._crit_edge92:                                    ; preds = %bb.d, %._crit_edge
  %.074.lcssa = phi i32 [ %i.t, %._crit_edge ], [ %spec.select, %bb.d ]
  %.169.lcssa = phi i64 [ %.068.lcssa, %._crit_edge ], [ %i.cv, %bb.d ] ; 5 uses
  %.167.lcssa = phi ptr [ %.066.lcssa, %._crit_edge ], [ %i.cw, %bb.d ] ; 3 uses
  %.1.lcssa = phi ptr [ %.0.lcssa, %._crit_edge ], [ %i.cx, %bb.d ] ; 3 uses
  %.not = icmp eq i64 %.169.lcssa, 0
  br i1 %.not, label %.loopexit, label %bb.e

end_hunk_2
begin_hunk_3_@CRYPTO_ctr128_encrypt_ctr32:bb.a
  %i.da = tail call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.cz) #4, !srcloc !20
  store i32 %i.da, ptr %i.r, align 4, !tbaa !5
  %i.db = icmp eq i32 %i.cz, 0
  br i1 %i.db, label %bb.f, label %scalar.ph.preheader

bb.f:                                             ; preds = %bb.e
  %i.dc = getelementptr inbounds nuw i8, ptr %4, i64 11 ; 2 uses
end_hunk_3
begin_hunk_4_@CRYPTO_ctr128_encrypt_ctr32:bb.a
  %i.fr = trunc nuw nsw i32 %i.fp to i8
  %i.fs = add i8 %i.fq, %i.fr
  store i8 %i.fs, ptr %4, align 1, !tbaa !9
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.e, %bb.f
  %xtraiter = and i64 %.169.lcssa, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ft = add nsw i64 %.169.lcssa, -1
  %i.fu = zext i32 %.070.lcssa to i64             ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 %i.fu
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !9
  %i.fx = getelementptr inbounds nuw i8, ptr %5, i64 %i.fu
end_hunk_4
begin_hunk_5_@CRYPTO_ctr128_encrypt_ctr32:bb.a
  %i.fz = xor i8 %i.fy, %i.fw
  %i.ga = getelementptr inbounds nuw i8, ptr %.167.lcssa, i64 %i.fu
  store i8 %i.fz, ptr %i.ga, align 1, !tbaa !9
  %i.gb = add i32 %.070.lcssa, 1                  ; 2 uses
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i32 [ poison, %scalar.ph.preheader ], [ %i.gb, %scalar.ph.prol ]
  %.298.unr = phi i64 [ %.169.lcssa, %scalar.ph.preheader ], [ %i.ft, %scalar.ph.prol ]
  %.17197.unr = phi i32 [ %.070.lcssa, %scalar.ph.preheader ], [ %i.gb, %scalar.ph.prol ]
  %i.gc = icmp eq i64 %.169.lcssa, 1
  br i1 %i.gc, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
end_hunk_5
begin_hunk_6_@CRYPTO_ctr128_encrypt_ctr32:bb.a
  store i8 %i.gr, ptr %i.gs, align 1, !tbaa !9
  %i.gt = add i32 %.17197, 2                      ; 2 uses
  %.not77.1 = icmp eq i64 %i.gl, 0
  br i1 %.not77.1, label %.loopexit, label %scalar.ph, !llvm.loop !21

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %._crit_edge92
  %.272 = phi i32 [ %.070.lcssa, %._crit_edge92 ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.gt, %scalar.ph ]
  store i32 %.272, ptr %6, align 4, !tbaa !5
  ret void
}
end_hunk_6
begin_hunk_7_@llvm.umin.i64
!18 = !{i64 2148299214}
!19 = distinct !{!19, !11}
!20 = !{i64 2148299405}
!21 = distinct !{!21, !11, !22}
!22 = !{!"llvm.loop.isvectorized", i32 1}
end_hunk_7
