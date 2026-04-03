begin_hunk_0
  %index263 = phi i64 [ 0, %vector.ph254 ], [ %index.next266, %vector.body262 ] ; 2 uses
  %vec.ind264 = phi <16 x i64> [ %induction261, %vector.ph254 ], [ %vec.ind.next267, %vector.body262 ] ; 2 uses
  %next.gep265 = getelementptr i8, ptr %.182.lcssa.i, i64 %index263
  %i.mq = add <16 x i64> %vec.ind264, splat (i64 4294967288)
  %7 = and <16 x i64> %i.mq, splat (i64 4294967295)
  %i.mr = lshr <16 x i64> %broadcast.splat258, %7
  %i.ms = trunc <16 x i64> %i.mr to <16 x i8>
  store <16 x i8> %i.ms, ptr %next.gep265, align 1, !tbaa !25
  %index.next266 = add nuw i64 %index263, 16      ; 2 uses
end_hunk_0
begin_hunk_1
  br i1 %.not117.i, label %bb.ak, label %hufPackEncTable.exit.thread, !prof !29

bb.ak:                                            ; preds = %.lr.ph187.i
  %8 = trunc nuw i64 %indvars.iv227.i to i32
  %i.mu = add nsw i64 %indvars.iv227.i, -8        ; 3 uses
  %9 = and i64 %i.mu, 4294967295
  %i.mv = lshr i64 %i.mb, %9
  %i.mw = trunc i64 %i.mv to i8
  %i.mx = getelementptr inbounds nuw i8, ptr %.283186.i, i64 1 ; 2 uses
  store i8 %i.mw, ptr %.283186.i, align 1, !tbaa !25
  %i.my = icmp slt i32 %8, 16
  br i1 %i.my, label %.thread132.loopexit207.i, label %.lr.ph187.i, !llvm.loop !32

bb.al:                                            ; preds = %bb.ah
end_hunk_1
begin_hunk_2
  %index307 = phi i64 [ 0, %vector.ph298 ], [ %index.next310, %vector.body306 ] ; 2 uses
  %vec.ind308 = phi <16 x i64> [ %induction305, %vector.ph298 ], [ %vec.ind.next311, %vector.body306 ] ; 2 uses
  %next.gep309 = getelementptr i8, ptr %.081198.i, i64 %index307
  %i.np = add <16 x i64> %vec.ind308, splat (i64 4294967288)
  %10 = and <16 x i64> %i.np, splat (i64 4294967295)
  %i.nq = lshr <16 x i64> %broadcast.splat302, %10
  %i.nr = trunc <16 x i64> %i.nq to <16 x i8>
  store <16 x i8> %i.nr, ptr %next.gep309, align 1, !tbaa !25
  %index.next310 = add nuw i64 %index307, 16      ; 2 uses
end_hunk_2
begin_hunk_3
  br i1 %.not115.i, label %bb.am, label %hufPackEncTable.exit.thread, !prof !29

bb.am:                                            ; preds = %.lr.ph176.i
  %11 = trunc nuw i64 %indvars.iv219.i to i32
  %i.nt = add nsw i64 %indvars.iv219.i, -8        ; 3 uses
  %12 = and i64 %i.nt, 4294967295
  %i.nu = lshr i64 %i.na, %12
  %i.nv = trunc i64 %i.nu to i8
  %i.nw = getelementptr inbounds nuw i8, ptr %.384174.i, i64 1 ; 2 uses
  store i8 %i.nv, ptr %.384174.i, align 1, !tbaa !25
  %i.nx = icmp slt i32 %11, 16
  br i1 %i.nx, label %.thread132.loopexit210.i, label %.lr.ph176.i, !llvm.loop !34

.critedge120.thread.i:                            ; preds = %._crit_edge.i52, %.lr.ph201.i
end_hunk_3
begin_hunk_4
  br label %.thread132.i

.thread132.i:                                     ; preds = %.thread132.loopexit210.i, %.thread132.loopexit207.i, %.thread132.loopexit.i, %.critedge120.thread.i, %bb.al, %.critedge.i
  %.380141.i = phi i32 [ %.279.i, %.thread132.loopexit.i ], [ %.279.i, %.critedge120.thread.i ], [ %.178.lcssa.ph.i, %bb.al ], [ %.178.lcssa.ph.i, %.thread132.loopexit207.i ], [ %.178.lcssa.ph.i, %.critedge.i ], [ %.178.lcssa.ph.i, %.thread132.loopexit210.i ]
  %.889140.i = phi ptr [ %i.ov, %.thread132.loopexit.i ], [ %.081198.i, %.critedge120.thread.i ], [ %.081198.i, %bb.al ], [ %i.mx, %.thread132.loopexit207.i ], [ %.182.lcssa.i, %.critedge.i ], [ %i.nw, %.thread132.loopexit210.i ] ; 5 uses
  %.4101139.i = phi i64 [ %i.nz, %.thread132.loopexit.i ], [ %i.nz, %.critedge120.thread.i ], [ %i.na, %bb.al ], [ %i.mb, %.thread132.loopexit207.i ], [ %i.mb, %.critedge.i ], [ %i.na, %.thread132.loopexit210.i ] ; 2 uses
  %.8111138.i = phi i32 [ %i.oy, %.thread132.loopexit.i ], [ %i.oa, %.critedge120.thread.i ], [ %i.nb, %bb.al ], [ %i.oz, %.thread132.loopexit207.i ], [ %i.mc, %.critedge.i ], [ %i.pa, %.thread132.loopexit210.i ] ; 3 uses
  %i.pb = add i32 %.380141.i, 1                   ; 2 uses
  %.not.i48 = icmp ugt i32 %i.pb, %i.in
  br i1 %.not.i48, label %._crit_edge202.i, label %.lr.ph201.i, !llvm.loop !37
end_hunk_4
begin_hunk_5
  %exitcond.not.i87 = icmp eq i64 %indvars.iv.next.i86, 16384
  br i1 %exitcond.not.i87, label %.critedge, label %bb.bj, !llvm.loop !115

.critedge:                                        ; preds = %bb.bl, %hufUnpackEncTable.exit, %fasthuf_initialize.exit.thread, %bb.as, %bb.ar, %bb.g, %bb.f, %bb.e, %bb.d
  %.2 = phi i32 [ %., %bb.d ], [ 23, %fasthuf_initialize.exit.thread ], [ 1, %bb.g ], [ 3, %bb.e ], [ 23, %bb.f ], [ %i.nx, %bb.as ], [ 1, %bb.ar ], [ 23, %hufUnpackEncTable.exit ], [ %.262, %bb.bl ]
  ret i32 %.2
}

end_hunk_5
begin_hunk_6
  %i.cz = icmp ult i64 %i.cw, %i.cy
  br i1 %i.cz, label %6, label %bb.r, !prof !29

bb.r:                                             ; preds = %bb.q
  %.not117 = icmp eq ptr %0, null
  br i1 %.not117, label %.critedge, label %bb.s
end_hunk_6
begin_hunk_7
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !95
  %i.dc = tail call i32 (ptr, i32, ptr, ...) %i.db(ptr noundef nonnull %0, i32 noundef 23, ptr noundef nonnull @.str.5) #11 ; 0 uses
  br label %.critedge

6:                                                ; preds = %bb.q
  %7 = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.cw
  br label %bb.t

bb.t:                                             ; preds = %6, %bb.c
  %.2246 = phi i64 [ %.1245, %6 ], [ %.0244298, %bb.c ] ; 3 uses
end_hunk_7
begin_hunk_8
  %i.gp = tail call i32 (ptr, i32, ptr, ...) %i.go(ptr noundef nonnull %0, i32 noundef 23, ptr noundef nonnull @.str.8) #11 ; 0 uses
  br label %.critedge

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv334 = phi i64 [ %indvars.iv.next335, %vec.epilog.scalar.ph ], [ %indvars.iv334.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.gq = getelementptr [2 x i8], ptr %i.gf, i64 %indvars.iv334
end_hunk_8
begin_hunk_9
  %indvars.iv.next335 = add nuw nsw i64 %indvars.iv334, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next335, %i.fu
  br i1 %exitcond.not, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !137

.loopexit:                                        ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %8 = shl i64 %.3232, 8
  %9 = add nsw i32 %.390, -8
  br label %bb.am

bb.al:                                            ; preds = %bb.t
  %i.gr = trunc i32 %.298 to i16
end_hunk_9
begin_hunk_10
  br i1 %i.jg, label %.preheader, label %FastHufDecoder_refill.exit157, !llvm.loop !124

FastHufDecoder_refill.exit157:                    ; preds = %.sink.split.i147, %bb.ao, %bb.am
  %.5249 = phi i64 [ %.14258, %bb.ao ], [ %.4248, %bb.am ], [ %.16260, %.sink.split.i147 ] ; 2 uses
  %.5234 = phi i64 [ %i.gz, %bb.ao ], [ %.4233, %bb.am ], [ %.13242, %.sink.split.i147 ]
  %.5213 = phi i64 [ %i.hb, %bb.ao ], [ %.4212, %bb.am ], [ %.19227, %.sink.split.i147 ]
  %.5195 = phi i32 [ %i.hc, %bb.ao ], [ %.4194, %bb.am ], [ 64, %.sink.split.i147 ]
  %.5 = phi ptr [ %.16, %bb.ao ], [ %.4, %bb.am ], [ %.19, %.sink.split.i147 ]
  %.7 = phi i32 [ 64, %bb.ao ], [ %.592, %bb.am ], [ 64, %.sink.split.i147 ]
  %i.jh = icmp ult i64 %.285, %5
  br i1 %i.jh, label %bb.b, label %._crit_edge, !llvm.loop !145

end_hunk_10
begin_hunk_11
  %i.jl = tail call i32 (ptr, i32, ptr, ...) %i.jj(ptr noundef nonnull %0, i32 noundef 23, ptr noundef nonnull @.str.9, i32 noundef %i.jk) #11 ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %bb.aj, %bb.ak, %bb.ah, %bb.ae, %bb.ag, %bb.ad, %bb.r, %bb.s, %bb.p, %bb.o, %._crit_edge, %bb.av, %bb.aw
  %.6 = phi i32 [ 0, %._crit_edge ], [ 23, %bb.av ], [ 23, %bb.aw ], [ 23, %bb.o ], [ 23, %bb.p ], [ 23, %bb.s ], [ 23, %bb.r ], [ 23, %bb.ad ], [ 23, %bb.ag ], [ 23, %bb.ae ], [ 23, %bb.ah ], [ 23, %bb.ak ], [ 23, %bb.aj ]
  ret i32 %.6
}

end_hunk_11
