inline.NumInlined: 9
inline.NumDeleted: 5
begin_hunk_0_@createCommonDataFile:bb.a
  %i.cu = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aa) #19
  %i.cv = add i64 %i.cu, 1
  %i.cw = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %spec.store.select) #19
  %i.cx = add i64 %i.cv, %i.cw                    ; 5 uses
  %i.cy = trunc i64 %i.cx to i32                  ; 5 uses
  %i.cz = add i32 %i.cy, 1                        ; 2 uses
  %i.da = load i32, ptr @_ZL9stringTop, align 4   ; 2 uses
  %i.db = add i32 %i.cz, %i.da                    ; 4 uses
end_hunk_0
begin_hunk_1_@createCommonDataFile:bb.a

_ZL11allocStringj.exit69.i:                       ; preds = %bb.ae
  %i.df = zext nneg i32 %i.da to i64              ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr @_ZL11stringStore, i64 %i.df ; 10 uses
  store i32 %i.db, ptr @_ZL9stringTop, align 4
  %i.dh = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.dg, ptr noundef nonnull readonly dereferenceable(1) %spec.store.select) #14 ; 0 uses
  %strlen65.i = tail call i64 @strlen(ptr nonnull dereferenceable(1) %i.dg)
end_hunk_1
begin_hunk_2_@createCommonDataFile:bb.a

_ZL11allocStringj.exit70.i:                       ; preds = %_ZL11allocStringj.exit69.i
  %i.ds = zext nneg i32 %i.db to i64              ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr @_ZL11stringStore, i64 %i.ds ; 7 uses
  store i32 %i.do, ptr @_ZL9stringTop, align 4
  store ptr %i.dt, ptr %i.dm, align 8
  %.not6771.i = icmp eq i32 %i.cy, 0
  br i1 %.not6771.i, label %._crit_edge.i, label %.lr.ph.i.preheader.a

.lr.ph.i.preheader.a:                             ; preds = %_ZL11allocStringj.exit70.i
  %i.du = and i64 %i.cx, 4294967295               ; 4 uses
  %min.iters.check = icmp samesign ult i64 %i.du, 8
  %i.dv = sub nsw i64 %i.ds, %i.df
  %diff.check = icmp ult i64 %i.dv, 32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader378, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %.lr.ph.i.preheader.a
  %min.iters.check365 = icmp samesign ult i64 %i.du, 32
  br i1 %min.iters.check365, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.cx, 24
  %n.vec = and i64 %i.cx, 4294967264              ; 6 uses
  %.cast = trunc nuw i64 %n.vec to i32
  %i.dw = sub i32 %i.cy, %.cast
  %i.dx = getelementptr i8, ptr %i.dt, i64 %n.vec ; 2 uses
end_hunk_2
begin_hunk_3_@createCommonDataFile:bb.a
  store <16 x i8> %i.ef, ptr %i.eg, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.eh = icmp eq i64 %index.next, %n.vec
  br i1 %i.eh, label %middle.block, label %vector.body, !llvm.loop !7

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.du, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader378, label %vec.epilog.ph, !prof !10

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec371 = and i64 %i.cx, 4294967288           ; 5 uses
  %.cast372 = trunc nuw i64 %n.vec371 to i32
  %11 = sub i32 %i.cy, %.cast372
  %12 = getelementptr i8, ptr %i.dt, i64 %n.vec371 ; 2 uses
  %13 = getelementptr i8, ptr %i.dg, i64 %n.vec371
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index373 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next377, %vec.epilog.vector.body ] ; 3 uses
  %next.gep374 = getelementptr i8, ptr %i.dt, i64 %index373
  %next.gep375 = getelementptr i8, ptr %i.dg, i64 %index373
  %wide.load376 = load <8 x i8>, ptr %next.gep375, align 1 ; 2 uses
  %14 = add <8 x i8> %wide.load376, splat (i8 -45)
  %15 = icmp ult <8 x i8> %14, splat (i8 3)
  %16 = select <8 x i1> %15, <8 x i8> splat (i8 95), <8 x i8> %wide.load376
  store <8 x i8> %16, ptr %next.gep374, align 1
  %index.next377 = add nuw i64 %index373, 8       ; 2 uses
  %17 = icmp eq i64 %index.next377, %n.vec371
  br i1 %17, label %middle.block.a, label %vec.epilog.vector.body, !llvm.loop !11

middle.block.a:                                   ; preds = %vec.epilog.vector.body
  %cmp.n.a = icmp eq i64 %i.du, %n.vec371
  br i1 %cmp.n.a, label %._crit_edge.i, label %.lr.ph.i.preheader378

.lr.ph.i.preheader378:                            ; preds = %.lr.ph.i.preheader.a, %vec.epilog.iter.check, %middle.block.a
  %.ph = phi i32 [ %i.cy, %.lr.ph.i.preheader.a ], [ %i.dw, %vec.epilog.iter.check ], [ %11, %middle.block.a ] ; 4 uses
  %.073.i.ph = phi ptr [ %i.dt, %.lr.ph.i.preheader.a ], [ %i.dx, %vec.epilog.iter.check ], [ %12, %middle.block.a ] ; 2 uses
  %.05472.i.ph = phi ptr [ %i.dg, %.lr.ph.i.preheader.a ], [ %i.dy, %vec.epilog.iter.check ], [ %13, %middle.block.a ] ; 2 uses
  %i.ei = add i32 %.ph, -1
  %xtraiter = and i32 %.ph, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
end_hunk_3
begin_hunk_4_@createCommonDataFile:bb.a
  %i.en = add i32 %i.ej, -1                       ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !12

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader378
  %.lcssa381.unr = phi ptr [ poison, %.lr.ph.i.preheader378 ], [ %i.em, %.lr.ph.i.prol ]
end_hunk_4
begin_hunk_5_@createCommonDataFile:bb.a
  %i.fb = getelementptr inbounds nuw i8, ptr %.073.i, i64 4 ; 2 uses
  %i.fc = add i32 %i.ep, -4                       ; 2 uses
  %.not67.i.3 = icmp eq i32 %i.fc, 0
  br i1 %.not67.i.3, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !14

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %middle.block.a, %_ZL11allocStringj.exit70.i
  %.0.lcssa.i = phi ptr [ %i.dt, %_ZL11allocStringj.exit70.i ], [ %12, %middle.block.a ], [ %i.dx, %middle.block ], [ %.lcssa381.unr, %.lr.ph.i.prol.loopexit ], [ %i.fb, %.lr.ph.i ]
  store i8 0, ptr %.0.lcssa.i, align 1
  br label %bb.ah

end_hunk_5
begin_hunk_6_@createCommonDataFile:bb.a
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.ah, %bb.ad, %bb.ac, %.loopexit
  br label %.backedge, !llvm.loop !15

bb.ai:                                            ; preds = %bb.l
  tail call void @uprv_free_78(ptr noundef nonnull %i.b) #14
end_hunk_6
begin_hunk_7_@createCommonDataFile:bb.a
  %indvars.iv.next281.1 = add nuw nsw i64 %indvars.iv280, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge233.loopexit.unr-lcssa, label %bb.ao, !llvm.loop !16

._crit_edge233.loopexit.unr-lcssa:                ; preds = %bb.ao
  %lcmp.mod393.not = icmp eq i64 %xtraiter392, 0
end_hunk_7
begin_hunk_8_@createCommonDataFile:bb.a
  %i.hp = load i32, ptr @_ZL9fileCount, align 4   ; 2 uses
  %i.hq = zext i32 %i.hp to i64
  %i.hr = icmp samesign ult i64 %indvars.iv.next284, %i.hq
  br i1 %i.hr, label %.lr.ph236, label %.preheader203, !llvm.loop !17

.lr.ph238:                                        ; preds = %.preheader203, %.lr.ph238
  %indvars.iv286 = phi i64 [ %indvars.iv.next287, %.lr.ph238 ], [ 0, %.preheader203 ] ; 2 uses
end_hunk_8
begin_hunk_9_@createCommonDataFile:bb.a
  %i.hy = load i32, ptr @_ZL9fileCount, align 4   ; 3 uses
  %i.hz = zext i32 %i.hy to i64
  %i.ia = icmp samesign ult i64 %indvars.iv.next287, %i.hz
  br i1 %i.ia, label %.lr.ph238, label %._crit_edge239, !llvm.loop !18

._crit_edge239.thread:                            ; preds = %.preheader203, %bb.aq
  %i.ib = load i32, ptr @_ZL13basenameTotal, align 4
end_hunk_9
begin_hunk_10_@createCommonDataFile:bb.a
  %i.ih = add nuw i32 %.3244, 1                   ; 2 uses
  %i.ii = load i32, ptr @_ZL9fileCount, align 4
  %i.ij = icmp ult i32 %i.ih, %i.ii
  br i1 %i.ij, label %.lr.ph247, label %._crit_edge248, !llvm.loop !19

.lr.ph247:                                        ; preds = %._crit_edge239, %bb.ar
  %.0155245 = phi i32 [ %.0154.lcssa, %bb.ar ], [ %i.ig, %._crit_edge239 ]
end_hunk_10
begin_hunk_11_@createCommonDataFile:bb.a
  call void @udata_writeBlock(ptr noundef %i.gx, ptr noundef nonnull @_ZZ20createCommonDataFileE6buffer, i32 noundef %i.jg) #14
  %i.ji = call i32 @T_FileStream_read(ptr noundef nonnull %i.ix, ptr noundef nonnull @_ZZ20createCommonDataFileE6buffer, i32 noundef 4096) #14 ; 2 uses
  %i.jj = icmp eq i32 %i.ji, 0
  br i1 %i.jj, label %._crit_edge242, label %.lr.ph241, !llvm.loop !20

._crit_edge242:                                   ; preds = %.lr.ph241, %.preheader
  %.0154.lcssa = phi i32 [ 0, %.preheader ], [ %i.jh, %.lr.ph241 ] ; 4 uses
end_hunk_11
begin_hunk_12_@createCommonDataFile:bb.a
  %i.ll = load i32, ptr @_ZL9fileCount, align 4
  %i.lm = zext i32 %i.ll to i64
  %i.ln = icmp samesign ult i64 %indvars.iv.next, %i.lm
  br i1 %i.ln, label %.lr.ph, label %._crit_edge, !llvm.loop !21

._crit_edge:                                      ; preds = %.lr.ph, %bb.bj
  %i.lo = tail call i32 @T_FileStream_writeLine(ptr noundef nonnull %i.ks, ptr noundef nonnull @.str.25) #14 ; 0 uses
end_hunk_12
begin_hunk_13_@createCommonDataFile:bb.a
  %i.mi = load i32, ptr @_ZL9fileCount, align 4
  %i.mj = zext i32 %i.mi to i64
  %i.mk = icmp samesign ult i64 %indvars.iv.next278, %i.mj
  br i1 %i.mk, label %.lr.ph226, label %._crit_edge227, !llvm.loop !22

._crit_edge227:                                   ; preds = %.lr.ph226, %._crit_edge
  %i.ml = tail call i32 @T_FileStream_writeLine(ptr noundef nonnull %i.ks, ptr noundef nonnull @.str.29) #14 ; 0 uses
end_hunk_13
begin_hunk_14_@llvm.assume
!7 = distinct !{!7, !6, !8, !9}
!8 = !{!"llvm.loop.isvectorized", i32 1}
!9 = !{!"llvm.loop.unroll.runtime.disable"}
!10 = !{!"branch_weights", i32 8, i32 24}
!11 = distinct !{!11, !6, !8, !9}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = distinct !{!14, !6, !8}
!15 = distinct !{!15, !6}
!16 = distinct !{!16, !6}
!17 = distinct !{!17, !6}
!18 = distinct !{!18, !6}
!19 = distinct !{!19, !6}
!20 = distinct !{!20, !6}
!21 = distinct !{!21, !6}
!22 = distinct !{!22, !6}
end_hunk_14
