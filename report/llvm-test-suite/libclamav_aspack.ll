inline.NumInlined: 17
inline.NumDeleted: 6
begin_hunk_0_@unaspack212:bb.a

bb.i:                                             ; preds = %bb.h
  %i.bq = zext i32 %.0142.val to i64              ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 %i.bq ; 16 uses
  %i.bs = zext i32 %.val174 to i64                ; 2 uses
  %i.bt = add nuw nsw i64 %i.bs, %i.bq
  %.not163 = icmp samesign ugt i64 %i.bt, %i.ay
end_hunk_0
begin_hunk_1_@unaspack212:bb.a
  br label %.outer.split.i.preheader.i

.outer.split.i.preheader.i:                       ; preds = %.outer.backedge.i.i, %bb.l
  %.074.ph.i21.i = phi i32 [ 0, %bb.l ], [ %.074.ph.be.i.i, %.outer.backedge.i.i ] ; 15 uses
  %i.ca = phi i32 [ 0, %bb.l ], [ %8, %.outer.backedge.i.i ] ; 4 uses
  br label %.outer.split.i.i

end_hunk_1
begin_hunk_2_@unaspack212:bb.a
  %i.ch = add nuw i32 %.074.ph.i21.i, 1
  br label %.outer.backedge.i.i

.outer.backedge.i.i:                              ; preds = %.preheader.i.i.prol.loopexit, %.preheader.i.i, %middle.block, %middle.block.a, %bb.n
  %8 = phi i32 [ %i.ca, %bb.n ], [ %i.gh, %middle.block ], [ %i.gh, %middle.block.a ], [ %i.gh, %.preheader.i.i ], [ %i.gh, %.preheader.i.i.prol.loopexit ]
  %.074.ph.be.i.i = phi i32 [ %i.ch, %bb.n ], [ %i.gv, %middle.block ], [ %9, %middle.block.a ], [ %.lcssa317.unr, %.preheader.i.i.prol.loopexit ], [ %i.ir, %.preheader.i.i ] ; 2 uses
  %i.ci = icmp ult i32 %.074.ph.be.i.i, %.val174
  br i1 %i.ci, label %.outer.split.i.preheader.i, label %bb.ah, !llvm.loop !24

end_hunk_2
begin_hunk_3_@unaspack212:bb.a

bb.v:                                             ; preds = %readstream.exit.i.i, %._crit_edge.i
  %.pr.i99.i.i = phi i32 [ %i.dw, %readstream.exit.i.i ], [ %.pr.i99.i.pre.i, %._crit_edge.i ] ; 5 uses
  %.179.i.i = phi i32 [ %i.dv, %readstream.exit.i.i ], [ %i.co, %._crit_edge.i ] ; 14 uses
  %i.dx = zext nneg i32 %i.cm to i64              ; 2 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.dx
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !4  ; 2 uses
end_hunk_3
begin_hunk_4_@unaspack212:bb.a
  br label %bb.ag

bb.ag:                                            ; preds = %.sink.split.i.i, %bb.ad
  %i.gh = phi i32 [ %i.ca, %bb.ad ], [ %.sink.i.i, %.sink.split.i.i ] ; 4 uses
  %.077.i.i = phi i32 [ %i.ge, %bb.ad ], [ %.sink.i.i, %.sink.split.i.i ] ; 5 uses
  %.neg.i.i = xor i32 %.077.i.i, -1               ; 6 uses
  %or.cond96.i.i = icmp uge i32 %.077.i.i, %.074.ph.i21.i
  %i.gi = sub i32 %.val174, %.074.ph.i21.i
  %i.gj = icmp ugt i32 %.179.i.i, %i.gi
end_hunk_4
begin_hunk_5_@unaspack212:bb.a
  br i1 %or.cond98.i.i, label %decomp_block.exit.thread177, label %.preheader.i.i.preheader.a

.preheader.i.i.preheader.a:                       ; preds = %bb.ag
  %min.iters.check = icmp ult i32 %.179.i.i, 4
  br i1 %min.iters.check, label %.preheader.i.i.preheader305, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader.i.i.preheader.a
end_hunk_5
begin_hunk_6_@unaspack212:bb.a
  %i.gt = zext i32 %i.gs to i64
  %i.gu = sub nsw i64 %i.gq, %i.gt
  %diff.check = icmp ult i64 %i.gu, 32
  br i1 %diff.check, label %.preheader.i.i.preheader305, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check303 = icmp ult i32 %.179.i.i, 32
  br i1 %min.iters.check303, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i32 %.179.i.i, 28
  %n.vec = and i32 %.179.i.i, -32                 ; 4 uses
  %i.gv = add i32 %.074.ph.i21.i, %n.vec          ; 2 uses
  %i.gw = and i32 %.179.i.i, 31
  br label %vector.body
end_hunk_6
begin_hunk_7_@unaspack212:bb.a
  store <16 x i8> %wide.load303, ptr %i.hd, align 1, !tbaa !18
  %index.next = add nuw i32 %index, 32            ; 2 uses
  %i.he = icmp eq i32 %index.next, %n.vec
  br i1 %i.he, label %middle.block, label %vector.body, !llvm.loop !27

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %.179.i.i, %n.vec
  br i1 %cmp.n, label %.outer.backedge.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i32 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.preheader.i.i.preheader305, label %vec.epilog.ph, !prof !30

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i32 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec307 = and i32 %.179.i.i, -4               ; 3 uses
  %9 = add i32 %.074.ph.i21.i, %n.vec307          ; 2 uses
  %10 = and i32 %.179.i.i, 3
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index308 = phi i32 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next310, %vec.epilog.vector.body ] ; 2 uses
  %11 = add i32 %.074.ph.i21.i, %index308         ; 2 uses
  %12 = add i32 %11, %.neg.i.i
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds nuw i8, ptr %i.br, i64 %13
  %wide.load309 = load <4 x i8>, ptr %14, align 1, !tbaa !18
  %15 = zext i32 %11 to i64
  %16 = getelementptr inbounds nuw i8, ptr %i.br, i64 %15
  store <4 x i8> %wide.load309, ptr %16, align 1, !tbaa !18
  %index.next310 = add nuw i32 %index308, 4       ; 2 uses
  %17 = icmp eq i32 %index.next310, %n.vec307
  br i1 %17, label %middle.block.a, label %vec.epilog.vector.body, !llvm.loop !31

middle.block.a:                                   ; preds = %vec.epilog.vector.body
  %cmp.n.a = icmp eq i32 %.179.i.i, %n.vec307
  br i1 %cmp.n.a, label %.outer.backedge.i.i, label %.preheader.i.i.preheader305

.preheader.i.i.preheader305:                      ; preds = %vector.memcheck, %vector.scevcheck, %.preheader.i.i.preheader.a, %vec.epilog.iter.check, %middle.block.a
  %.175129.i.i.ph = phi i32 [ %.074.ph.i21.i, %.preheader.i.i.preheader.a ], [ %.074.ph.i21.i, %vector.scevcheck ], [ %.074.ph.i21.i, %vector.memcheck ], [ %i.gv, %vec.epilog.iter.check ], [ %9, %middle.block.a ] ; 2 uses
  %.280128.i.i.ph = phi i32 [ %.179.i.i, %.preheader.i.i.preheader.a ], [ %.179.i.i, %vector.scevcheck ], [ %.179.i.i, %vector.memcheck ], [ %i.gw, %vec.epilog.iter.check ], [ %10, %middle.block.a ] ; 4 uses
  %i.hf = add nsw i32 %.280128.i.i.ph, -1
  %xtraiter = and i32 %.280128.i.i.ph, 3          ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
end_hunk_7
begin_hunk_8_@unaspack212:bb.a
  %i.hn = add i32 %.175129.i.i.prol, 1            ; 3 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.i.i.prol.loopexit, label %.preheader.i.i.prol, !llvm.loop !32

.preheader.i.i.prol.loopexit:                     ; preds = %.preheader.i.i.prol, %.preheader.i.i.preheader305
  %.lcssa317.unr = phi i32 [ poison, %.preheader.i.i.preheader305 ], [ %i.hn, %.preheader.i.i.prol ]
end_hunk_8
begin_hunk_9_@unaspack212:bb.a
  store i8 %i.io, ptr %i.iq, align 1, !tbaa !18
  %i.ir = add i32 %.175129.i.i, 4                 ; 2 uses
  %.not94.i.i.3 = icmp eq i32 %i.ik, 0
  br i1 %.not94.i.i.3, label %.outer.backedge.i.i, label %.preheader.i.i, !llvm.loop !34

decomp_block.exit.thread177:                      ; preds = %bb.r, %bb.ag, %.loopexit123.i.i, %.outer.split.i.i, %bb.p, %bb.t, %bb.aa, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
end_hunk_9
begin_hunk_10_@unaspack212:bb.a
  %.3 = phi i32 [ %i.ji, %bb.aj ], [ %.2204, %bb.ai ], [ %.2204, %.lr.ph ]
  %i.jj = add i32 %.3, 1                          ; 3 uses
  %i.jk = icmp ult i32 %i.jj, %i.iu
  br i1 %i.jk, label %.lr.ph, label %.loopexit, !llvm.loop !35

.loopexit:                                        ; preds = %bb.ak, %bb.ah
  %.4 = phi i32 [ %.1208, %bb.ah ], [ %i.jj, %bb.ak ]
  br i1 %.not157, label %.critedge172, label %bb.f, !llvm.loop !36

.critedge:                                        ; preds = %bb.g
  %i.jl = load ptr, ptr %i.g, align 8, !tbaa !8
end_hunk_10
begin_hunk_11_@unaspack212:bb.a
  %i.jp = add nsw i32 %i.jo, -2                   ; 2 uses
  %i.jq = zext nneg i32 %i.jp to i64
  %i.jr = getelementptr inbounds nuw [36 x i8], ptr %2, i64 %i.jq
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !37
  %i.jt = icmp eq i32 %4, %i.js
  br i1 %i.jt, label %bb.am, label %bb.an

end_hunk_11
begin_hunk_12_@unaspack212:bb.a
  %i.ju = zext i16 %3 to i64
  %i.jv = getelementptr [36 x i8], ptr %2, i64 %i.ju
  %i.jw = getelementptr i8, ptr %i.jv, i64 -24
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !39
  %.not167 = icmp eq i32 %i.jx, 0
  %i.jy = trunc nuw i32 %i.jp to i16
  %spec.select = select i1 %.not167, i16 %i.jy, i16 %3
end_hunk_12
begin_hunk_13_@unaspack212:bb.a
  %indvars.iv.next240.3 = add nuw nsw i64 %indvars.iv239, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph215, !llvm.loop !40

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph215
  %lcmp.mod326.not = icmp eq i64 %xtraiter325, 0
end_hunk_13
begin_hunk_14_@unaspack212:bb.a
  %indvars.iv.next240.epil = add nuw nsw i64 %indvars.iv239.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter325
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph215.epil, !llvm.loop !41

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph215.epil, %bb.ap
  %i.kx = getelementptr inbounds nuw i8, ptr %i.d, i64 923
end_hunk_14
begin_hunk_15_@build_decrypt_dictionaries:bb.a
  store i8 %i.aw, ptr %i.ay, align 1, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 19
  br i1 %exitcond.not, label %.split.us, label %.preheader115.split.us, !llvm.loop !42

getbits.exit78.thread:                            ; preds = %bb.e
  %i.az = and i64 %indvars.iv, 4294967295
end_hunk_15
begin_hunk_16_@build_decrypt_dictionaries:bb.a
  %i.db = icmp eq i32 %i.da, 0
  %i.dc = icmp samesign ugt i64 %indvars.iv147, 755
  %or.cond = or i1 %i.dc, %i.db
  br i1 %or.cond, label %.loopexit110.loopexit, label %.lr.ph130, !llvm.loop !43

bb.p:                                             ; preds = %bb.i
  br i1 %i.bh, label %.lr.ph.i.i98, label %.preheader111.thread
end_hunk_16
begin_hunk_17_@build_decrypt_dictionaries:bb.a
.loopexit110:                                     ; preds = %.loopexit110.loopexit134, %.loopexit110.loopexit, %bb.s
  %.4 = phi i32 [ %i.ff, %bb.s ], [ %i.fi, %.loopexit110.loopexit ], [ %i.fl, %.loopexit110.loopexit134 ] ; 2 uses
  %i.fm = icmp ult i32 %.4, 757
  br i1 %i.fm, label %bb.g, label %.loopexit110.thread, !llvm.loop !44

.loopexit110.thread:                              ; preds = %.preheader111, %.preheader, %.loopexit110
  %i.fn = tail call fastcc zeroext i8 @build_decrypt_array(ptr noundef %0, ptr noundef %scevgep, i8 noundef zeroext 0)
end_hunk_17
begin_hunk_18_@build_decrypt_array:bb.a
  store i32 %i.r, ptr %i.p, align 4, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !45

._crit_edge:                                      ; preds = %bb.b, %bb.a
  store i32 0, ptr %i.e, align 4, !tbaa !4
end_hunk_18
begin_hunk_19_@build_decrypt_array:bb.a
  %.190 = phi i32 [ %.089118, %bb.d ], [ %.089118, %bb.e ], [ %i.ah, %bb.g ]
  %i.ap = add nsw i32 %.088119, -1
  %exitcond137.not = icmp eq i64 %indvars.iv.next135, 15
  br i1 %exitcond137.not, label %bb.i, label %bb.c, !llvm.loop !46

bb.i:                                             ; preds = %bb.h
  %.not = icmp eq i32 %i.w, 16777216
end_hunk_19
begin_hunk_20_@build_decrypt_array:bb.a
  %indvars.iv.next139 = add nuw nsw i64 %indvars.iv138, 1 ; 2 uses
  %i.bi = zext i32 %i.bh to i64
  %i.bj = icmp samesign ult i64 %indvars.iv.next139, %i.bi
  br i1 %i.bj, label %.lr.ph122, label %.critedge, !llvm.loop !47

.critedge:                                        ; preds = %.lr.ph, %bb.f, %bb.c, %bb.j, %bb.k, %bb.m, %.preheader, %bb.i
  %.3 = phi i8 [ 0, %bb.i ], [ 1, %bb.m ], [ 0, %bb.f ], [ 1, %.preheader ], [ 0, %bb.k ], [ 0, %bb.j ], [ 0, %bb.c ], [ 0, %.lr.ph ]
end_hunk_20
begin_hunk_21_@llvm.usub.sat.i64
!27 = distinct !{!27, !20, !28, !29}
!28 = !{!"llvm.loop.isvectorized", i32 1}
!29 = !{!"llvm.loop.unroll.runtime.disable"}
!30 = !{!"branch_weights", i32 4, i32 28}
!31 = distinct !{!31, !20, !28, !29}
!32 = distinct !{!32, !33}
!33 = !{!"llvm.loop.unroll.disable"}
!34 = distinct !{!34, !20, !28}
!35 = distinct !{!35, !20}
!36 = distinct !{!36, !20}
!37 = !{!38, !5, i64 0}
!38 = !{!"cli_exe_section", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32}
!39 = !{!38, !5, i64 12}
!40 = distinct !{!40, !20}
!41 = distinct !{!41, !33}
!42 = distinct !{!42, !20}
!43 = distinct !{!43, !20}
!44 = distinct !{!44, !20}
!45 = distinct !{!45, !20}
!46 = distinct !{!46, !20}
!47 = distinct !{!47, !20}
end_hunk_21
