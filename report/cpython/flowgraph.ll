begin_hunk_0
  %i.d = alloca ptr, align 8                      ; 6 uses
  %10 = alloca %struct._Py_c_array_t, align 8     ; 11 uses
  %11 = alloca %struct._Py_c_array_t, align 8     ; 11 uses
  %.02875.i = load ptr, ptr %0, align 8, !tbaa !26 ; 2 uses
  %.not76.not.i = icmp eq ptr %.02875.i, null
  br i1 %.not76.not.i, label %.loopexit, label %.preheader.lr.ph.i
end_hunk_0
begin_hunk_1
  %i.y = icmp eq i32 %i.w, 258
  %i.z = select i1 %i.y, i32 100, i32 103
  store i32 %i.z, ptr %i.v, align 8, !tbaa !29
  %i.aa = getelementptr i8, ptr %i.v, i64 8
  %.sroa.0.0.copyload.i = load <4 x i32>, ptr %i.aa, align 8 ; 2 uses
  %i.ab = getelementptr i8, ptr %i.v, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !147 ; 2 uses
  %i.ad = add nsw i32 %.02974.i, 1                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #9
  store ptr %i.t, ptr %11, align 8, !tbaa !37
end_hunk_1
begin_hunk_2

basicblock_next_instr.exit.thread.i.i:            ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  br label %normalize_jumps.exit.thread

basicblock_next_instr.exit.i.i:                   ; preds = %bb.c
  %i.aj = load ptr, ptr %11, align 8, !tbaa !37   ; 2 uses
end_hunk_2
begin_hunk_3
  store i32 %i.am, ptr %i.o, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  %i.an = icmp eq i32 %i.al, -1
  br i1 %i.an, label %normalize_jumps.exit.thread, label %bb.d

bb.d:                                             ; preds = %basicblock_next_instr.exit.i.i
  %i.ao = icmp sgt i32 %i.al, %.02974.i
end_hunk_3
begin_hunk_4
  %.sroa.457.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  store i32 1, ptr %.sroa.457.0..sroa_idx.i, align 4, !tbaa !7
  %.sroa.558.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store <4 x i32> %.sroa.0.0.copyload.i, ptr %.sroa.558.0..sroa_idx.i, align 8
  %.sroa.659.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  store ptr null, ptr %.sroa.659.0..sroa_idx.i, align 8, !tbaa !26
  %.sroa.760.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
end_hunk_4
begin_hunk_5

basicblock_next_instr.exit.thread.i54.i:          ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  br label %normalize_jumps.exit.thread

basicblock_next_instr.exit.i41.i:                 ; preds = %bb.e
  %i.bt = load ptr, ptr %10, align 8, !tbaa !37   ; 2 uses
end_hunk_5
begin_hunk_6
  store i32 %i.bw, ptr %i.o, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  %i.bx = icmp eq i32 %i.bv, -1
  br i1 %i.bx, label %normalize_jumps.exit.thread, label %bb.f

bb.f:                                             ; preds = %basicblock_next_instr.exit.i41.i
  %i.by = icmp sgt i32 %i.bv, %i.ad
end_hunk_6
begin_hunk_7
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cw, i64 4
  store i32 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !7
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store <4 x i32> %.sroa.0.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  store ptr null, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !26
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cw, i64 32
  store ptr %i.ac, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !26
  %.pre.i = load i32, ptr %i.o, align 8, !tbaa !28
  br label %bb.h

end_hunk_7
begin_hunk_8
  %.332.i = phi i32 [ %.02974.i, %bb.b ], [ %i.bm, %bb.g ]
  %i.cy = add i32 %.332.i, 1                      ; 2 uses
  %.not39.i = icmp slt i32 %i.cy, %i.cx
  br i1 %.not39.i, label %bb.b, label %.critedge40.i, !llvm.loop !179

.critedge40.i:                                    ; preds = %bb.h, %.preheader.i
  %i.cz = getelementptr i8, ptr %.02877.i, i64 32
  %.028.i = load ptr, ptr %i.cz, align 8, !tbaa !26 ; 2 uses
  %.not.not.i = icmp eq ptr %.028.i, null
  br i1 %.not.not.i, label %.loopexit.loopexit, label %.preheader.i, !llvm.loop !180

.loopexit.loopexit:                               ; preds = %.critedge40.i
  %.val.pre = load ptr, ptr %0, align 8, !tbaa !21
end_hunk_8
begin_hunk_9

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.a
  %.val = phi ptr [ %.val.pre, %.loopexit.loopexit ], [ null, %bb.a ]
  %i.da = call fastcc i32 @calculate_stackdepth(ptr %.val) ; 2 uses
  store i32 %i.da, ptr %2, align 4, !tbaa !7
  %i.db = icmp slt i32 %i.da, 0
end_hunk_9
begin_hunk_10

bb.i:                                             ; preds = %.loopexit
  %i.dc = getelementptr i8, ptr %1, i64 32        ; 4 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !181
  %i.de = getelementptr i8, ptr %i.dd, i64 16
  %.val24.i = load i64, ptr %i.de, align 8, !tbaa !183
  %i.df = trunc i64 %.val24.i to i32              ; 3 uses
  %i.dg = getelementptr i8, ptr %1, i64 40        ; 5 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !187
  %i.di = getelementptr i8, ptr %i.dh, i64 16
  %.val23.i = load i64, ptr %i.di, align 8, !tbaa !183
  %i.dj = trunc i64 %.val23.i to i32
  %i.dk = getelementptr i8, ptr %1, i64 48        ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !188
  %i.dm = getelementptr i8, ptr %i.dl, i64 16
  %.val.i = load i64, ptr %i.dm, align 8, !tbaa !183
  %i.dn = trunc i64 %.val.i to i32                ; 3 uses
  %i.do = add i32 %i.dn, %i.dj                    ; 5 uses
  %i.dp = icmp slt i32 %i.do, 0
end_hunk_10
begin_hunk_11
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.dx = icmp eq i64 %index.next, %n.vec
  br i1 %i.dx, label %middle.block, label %vector.body, !llvm.loop !189

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.dq
end_hunk_11
begin_hunk_12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i64 0, ptr %i.c, align 8, !tbaa !90
  %i.dz = load ptr, ptr %i.dg, align 8, !tbaa !187
  %i.ea = call i32 @PyDict_Next(ptr noundef %i.dz, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #9
  %.not39.i.i = icmp eq i32 %i.ea, 0
  br i1 %.not39.i.i, label %build_cellfixedoffsets.exit.thread49.i, label %.lr.ph41.i.i
end_hunk_12
begin_hunk_13
  store i32 %i.ec, ptr %i.ed, align 4, !tbaa !7
  %indvars.iv.next.i.i16 = add nuw nsw i64 %indvars.iv.i.i15, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i16, %i.dq
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i14, !llvm.loop !190

.lr.ph41.i.i:                                     ; preds = %._crit_edge.i.i, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  %i.ee = load ptr, ptr %i.dc, align 8, !tbaa !181
  %i.ef = load ptr, ptr %i.a, align 8, !tbaa !49
  %i.eg = call i32 @PyDict_GetItemRef(ptr noundef %i.ee, ptr noundef %i.ef, ptr noundef nonnull %i.d) #9
  %i.eh = icmp slt i32 %i.eg, 0
end_hunk_13
begin_hunk_14
bb.k:                                             ; preds = %.lr.ph41.i.i
  %i.ei = load ptr, ptr %i.d, align 8, !tbaa !49  ; 2 uses
  %i.ej = icmp eq ptr %i.ei, null
  br i1 %i.ej, label %bb.s, label %bb.l, !llvm.loop !191

bb.l:                                             ; preds = %bb.k
  %i.ek = call i32 @PyLong_AsInt(ptr noundef nonnull %i.ei) #9 ; 2 uses
end_hunk_14
begin_hunk_15

bb.s:                                             ; preds = %bb.r, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  %i.ex = load ptr, ptr %i.dg, align 8, !tbaa !187
  %i.ey = call i32 @PyDict_Next(ptr noundef %i.ex, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #9
  %.not.i.i = icmp eq i32 %i.ey, 0
  br i1 %.not.i.i, label %build_cellfixedoffsets.exit.thread49.i, label %.lr.ph41.i.i
end_hunk_15
begin_hunk_16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %i.ez = load ptr, ptr %0, align 8, !tbaa !21    ; 6 uses
  %i.fa = load ptr, ptr %i.dg, align 8, !tbaa !187
  %i.fb = getelementptr i8, ptr %i.fa, i64 16
  %.val50.i.i = load i64, ptr %i.fb, align 8, !tbaa !183 ; 5 uses
  %i.fc = trunc i64 %.val50.i.i to i32            ; 3 uses
  %.not.i25.i = icmp eq i32 %i.fc, 0
  br i1 %.not.i25.i, label %bb.z, label %bb.t

bb.t:                                             ; preds = %build_cellfixedoffsets.exit.thread49.i
  %i.fd = load ptr, ptr %i.dc, align 8, !tbaa !181
  %i.fe = getelementptr i8, ptr %i.fd, i64 16
  %.val.i26.i = load i64, ptr %i.fe, align 8, !tbaa !183
  %i.ff = add i64 %.val.i26.i, %.val50.i.i
  %sext.i.i = shl i64 %i.ff, 32
  %i.fg = ashr exact i64 %sext.i.i, 32
end_hunk_16
begin_hunk_17
  store i32 %i.fr, ptr %i.fq, align 4, !tbaa !7
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter70
  br i1 %epil.iter.cmp.not, label %.lr.ph90.i.i, label %.lr.ph.i28.i.epil, !llvm.loop !192

.lr.ph90.i.i:                                     ; preds = %.lr.ph.i28.i.epil, %.lr.ph90.i.i.unr-lcssa
  %i.fs = getelementptr i8, ptr %i.ez, i64 24     ; 6 uses
end_hunk_17
begin_hunk_18
  store i32 %i.gt, ptr %i.gs, align 4, !tbaa !7
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph90.i.i.unr-lcssa, label %.lr.ph.i28.i, !llvm.loop !193

bb.v:                                             ; preds = %.thread.i32.i, %.lr.ph90.i.i
  %.03489.i.i = phi i32 [ 0, %.lr.ph90.i.i ], [ %.23673.i.i, %.thread.i32.i ] ; 5 uses
end_hunk_18
begin_hunk_19
  %.sroa.466.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ii, i64 4
  store i32 %i.gy, ptr %.sroa.466.0..sroa_idx.i.i, align 4, !tbaa !7
  %.sroa.567.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  store <4 x i32> splat (i32 -1), ptr %.sroa.567.0..sroa_idx.i.i, align 8
  %.sroa.668.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ii, i64 24
  %i.ij = add nsw i32 %.03489.i.i, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.668.0..sroa_idx.i.i, i8 0, i64 16, i1 false)
end_hunk_19
begin_hunk_20
  %.23673.i.i = phi i32 [ %i.ij, %bb.y ], [ %.03489.i.i, %bb.v ] ; 2 uses
  %i.ik = add i32 %.03788.i.i, 1
  %i.il = icmp slt i32 %.23673.i.i, %i.fc
  br i1 %i.il, label %bb.v, label %._crit_edge.i27.i, !llvm.loop !194

.loopexit.i33.i:                                  ; preds = %basicblock_next_instr.exit.i.i.i, %basicblock_next_instr.exit.thread.i.i.i
  call void @PyMem_RawFree(ptr noundef nonnull %i.fh) #9
end_hunk_20
begin_hunk_21
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.jy, i64 4
  store i32 %i.dn, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !tbaa !7
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.jy, i64 8
  store <4 x i32> splat (i32 -1), ptr %.sroa.5.0..sroa_idx.i.i, align 8
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.jy, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i.i, i8 0, i64 16, i1 false)
  br label %insert_prefix_instructions.exit.i
end_hunk_21
begin_hunk_22

insert_prefix_instructions.exit.i:                ; preds = %basicblock_insert_instruction.exit64.i.i, %bb.z
  %i.jz = load ptr, ptr %0, align 8, !tbaa !21    ; 2 uses
  %i.ka = load ptr, ptr %i.dc, align 8, !tbaa !181
  %i.kb = getelementptr i8, ptr %i.ka, i64 16
  %.val34.i34.i = load i64, ptr %i.kb, align 8, !tbaa !183
  %i.kc = trunc i64 %.val34.i34.i to i32          ; 3 uses
  %i.kd = load ptr, ptr %i.dg, align 8, !tbaa !187
  %i.ke = getelementptr i8, ptr %i.kd, i64 16
  %.val33.i.i = load i64, ptr %i.ke, align 8, !tbaa !183
  %i.kf = trunc i64 %.val33.i.i to i32
  %i.kg = load ptr, ptr %i.dk, align 8, !tbaa !188
  %i.kh = getelementptr i8, ptr %i.kg, i64 16
  %.val.i35.i = load i64, ptr %i.kh, align 8, !tbaa !183
  %i.ki = trunc i64 %.val.i35.i to i32
  %i.kj = add i32 %i.ki, %i.kf                    ; 4 uses
  %i.kk = icmp sgt i32 %i.kj, 0
end_hunk_22
begin_hunk_23
  %indvars.iv.next.i44.i.1 = add nuw nsw i64 %indvars.iv.i42.i, 2 ; 2 uses
  %niter83.next.1 = add i64 %niter83, 2           ; 2 uses
  %niter83.ncmp.1 = icmp eq i64 %niter83.next.1, %unroll_iter82
  br i1 %niter83.ncmp.1, label %.preheader35.i.i.loopexit.unr-lcssa, label %.lr.ph.i41.i, !llvm.loop !195

.preheader.i36.i:                                 ; preds = %.preheader35.i.i, %._crit_edge.i37.i
  %.03141.i.i = phi ptr [ %i.ls, %._crit_edge.i37.i ], [ %i.jz, %.preheader35.i.i ] ; 3 uses
end_hunk_23
begin_hunk_24
  %i.lr = getelementptr i8, ptr %.03141.i.i, i64 32
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !36 ; 2 uses
  %.not.i38.i = icmp eq ptr %i.ls, null
  br i1 %.not.i38.i, label %fix_cell_offsets.exit.i, label %.preheader.i36.i, !llvm.loop !196

bb.al:                                            ; preds = %bb.ap, %.lr.ph39.i.i.new
  %indvars.iv44.i.i = phi i64 [ 0, %.lr.ph39.i.i.new ], [ %indvars.iv.next45.i.i.1, %bb.ap ] ; 3 uses
end_hunk_24
begin_hunk_25
  %indvars.iv.next45.i.i.1 = add nuw nsw i64 %indvars.iv44.i.i, 2 ; 2 uses
  %niter89.next.1 = add i64 %niter89, 2           ; 2 uses
  %niter89.ncmp.1 = icmp eq i64 %niter89.next.1, %unroll_iter88
  br i1 %niter89.ncmp.1, label %._crit_edge.i37.i.loopexit.unr-lcssa, label %bb.al, !llvm.loop !197

fix_cell_offsets.exit.i:                          ; preds = %._crit_edge.i37.i, %.preheader35.i.i
  call void @PyMem_Free(ptr noundef nonnull %i.ds) #9
end_hunk_25
begin_hunk_26
  %i.mq = getelementptr i8, ptr %.023.i, i64 32
  %.0.i19 = load ptr, ptr %i.mq, align 8, !tbaa !26 ; 2 uses
  %.not.i = icmp eq ptr %.0.i19, null
  br i1 %.not.i, label %convert_pseudo_ops.exit, label %.preheader.i18, !llvm.loop !198

bb.ar:                                            ; preds = %bb.aw, %.lr.ph.i20
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i20 ], [ %indvars.iv.next.i, %bb.aw ] ; 2 uses
end_hunk_26
begin_hunk_27
bb.aw:                                            ; preds = %bb.av, %bb.au, %bb.at, %bb.as
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.ar, !llvm.loop !199

convert_pseudo_ops.exit:                          ; preds = %._crit_edge.i, %bb.aq
  %i.mu = call fastcc range(i32 -1, 1) i32 @remove_redundant_nops_and_jumps(ptr noundef nonnull readonly %0)
end_hunk_27
begin_hunk_28
  %i.nq = getelementptr i8, ptr %.01323.i, i64 32
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !36 ; 2 uses
  %.not.i24 = icmp eq ptr %i.nr, null
  br i1 %.not.i24, label %.lr.ph27.i, label %.lr.ph.i23, !llvm.loop !200

bb.ay:                                            ; preds = %normalize_jumps_in_block.exit.i, %.lr.ph27.i
  %.01225.i = phi ptr [ %i.mw, %.lr.ph27.i ], [ %i.rw, %normalize_jumps_in_block.exit.i ] ; 6 uses
end_hunk_28
begin_hunk_29
  %i.rv = getelementptr i8, ptr %.01225.i, i64 32
  %i.rw = load ptr, ptr %i.rv, align 8, !tbaa !36 ; 2 uses
  %.not15.not.i = icmp eq ptr %i.rw, null
  br i1 %.not15.not.i, label %normalize_jumps.exit.loopexit, label %bb.ay, !llvm.loop !201

normalize_jumps.exit.loopexit:                    ; preds = %normalize_jumps_in_block.exit.i
  %.val13.pre = load ptr, ptr %0, align 8, !tbaa !21
end_hunk_29
begin_hunk_30
  %i.rz = call i32 @_PyCfg_ToInstructionSequence(ptr noundef nonnull %0, ptr noundef %4)
  br label %normalize_jumps.exit.thread

normalize_jumps.exit.thread:                      ; preds = %basicblock_next_instr.exit.i.i, %basicblock_next_instr.exit.i41.i, %basicblock_next_instr.exit.i.i.i.i, %bb.be, %basicblock_next_instr.exit.i36.i.i, %basicblock_next_instr.exit.i.i.i26, %cfg_builder_new_block.exit.thread.i.i, %basicblock_next_instr.exit.thread.i39.i.i, %basicblock_next_instr.exit.thread.i.i.i.i, %basicblock_next_instr.exit.thread.i.i.i27, %basicblock_next_instr.exit.thread.i54.i, %basicblock_next_instr.exit.thread.i.i, %prepare_localsplus.exit.thread, %bb.bg, %normalize_jumps.exit, %convert_pseudo_ops.exit, %prepare_localsplus.exit, %.loopexit
  %.0 = phi i32 [ -1, %normalize_jumps.exit ], [ -1, %prepare_localsplus.exit.thread ], [ -1, %.loopexit ], [ -1, %prepare_localsplus.exit ], [ -1, %convert_pseudo_ops.exit ], [ -1, %cfg_builder_new_block.exit.thread.i.i ], [ %i.rz, %bb.bg ], [ -1, %basicblock_next_instr.exit.thread.i.i ], [ -1, %basicblock_next_instr.exit.thread.i54.i ], [ -1, %basicblock_next_instr.exit.i.i.i.i ], [ -1, %basicblock_next_instr.exit.thread.i.i.i27 ], [ -1, %basicblock_next_instr.exit.thread.i.i.i.i ], [ -1, %basicblock_next_instr.exit.thread.i39.i.i ], [ -1, %basicblock_next_instr.exit.i.i.i26 ], [ -1, %basicblock_next_instr.exit.i36.i.i ], [ -1, %bb.be ], [ -1, %basicblock_next_instr.exit.i41.i ], [ -1, %basicblock_next_instr.exit.i.i ]
  ret i32 %.0
}

end_hunk_30
begin_hunk_31
  %i.l = getelementptr i8, ptr %.065109, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !36   ; 2 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %.lr.ph.i, label %.lr.ph, !llvm.loop !202

make_cfg_traversal_stack.exit:                    ; preds = %._crit_edge.i
  %i.n = getelementptr i8, ptr %.0.val, i64 60    ; 2 uses
end_hunk_31
begin_hunk_32
  %i.cr = load i32, ptr %i.z, align 8, !tbaa !28
  %i.cs = sext i32 %i.cr to i64
  %i.ct = icmp slt i64 %indvars.iv.next, %i.cs
  br i1 %i.ct, label %bb.c, label %._crit_edge116, !llvm.loop !203

._crit_edge116:                                   ; preds = %bb.q, %.lr.ph122
  %.27.lcssa = phi ptr [ %i.t, %.lr.ph122 ], [ %.49, %bb.q ] ; 4 uses
end_hunk_32
begin_hunk_33
  %i.h = getelementptr i8, ptr %.0206431, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !36   ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge.thread, label %.lr.ph, !llvm.loop !204

bb.b:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.j = tail call ptr @PyErr_NoMemory() #9       ; 0 uses
end_hunk_33
begin_hunk_34
  %indvars = trunc i64 %i.av to i32
  %i.aw = load i32, ptr %i.ak, align 4, !tbaa !173
  %.not232 = icmp sgt i32 %i.aw, %indvars
  br i1 %.not232, label %.lr.ph439, label %.preheader339, !llvm.loop !205

bb.h:                                             ; preds = %.lr.ph477, %.thread241
  %indvars.iv = phi i64 [ 0, %.lr.ph477 ], [ %indvars.iv.next, %.thread241 ] ; 14 uses
end_hunk_34
begin_hunk_35
  %i.bk = phi i64 [ %.sroa.63.3472, %bb.j ], [ %i.bd, %.lr.ph.i249 ] ; 2 uses
  %i.bl = add nuw nsw i64 %.06.i, 1               ; 2 uses
  %i.bm = icmp slt i64 %i.bl, %i.bk
  br i1 %i.bm, label %.lr.ph.i249, label %.thread241, !llvm.loop !206

bb.l:                                             ; preds = %bb.h
  %.sroa.289.0.insert.ext = zext i32 %i.bb to i64
end_hunk_35
begin_hunk_36
  %i.cc = phi i64 [ %.sroa.63.3472, %bb.o ], [ %i.bv, %.lr.ph.i258 ] ; 2 uses
  %i.cd = add nuw nsw i64 %.06.i259, 1            ; 2 uses
  %i.ce = icmp slt i64 %i.cd, %i.cc
  br i1 %i.ce, label %.lr.ph.i258, label %kill_local.exit266, !llvm.loop !206

kill_local.exit266:                               ; preds = %bb.p, %bb.n
  %.sroa.287.0.insert.ext = zext i32 %i.bb to i64
end_hunk_36
begin_hunk_37
  %i.dt = add nuw nsw i64 %.06.i.i, 2             ; 2 uses
  %niter665.next.1 = add i64 %niter665, 2         ; 2 uses
  %niter665.ncmp.1 = icmp eq i64 %niter665.next.1, %unroll_iter664
  br i1 %niter665.ncmp.1, label %kill_local.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !206

kill_local.exit.i.loopexit.unr-lcssa:             ; preds = %bb.y
  %lcmp.mod662.not = icmp eq i64 %xtraiter661, 0
end_hunk_37
begin_hunk_38
  %i.ex = add nuw nsw i64 %.06.i.i292, 2          ; 2 uses
  %niter660.next.1 = add i64 %niter660, 2         ; 2 uses
  %niter660.ncmp.1 = icmp eq i64 %niter660.next.1, %unroll_iter659
  br i1 %niter660.ncmp.1, label %kill_local.exit.i288.loopexit.unr-lcssa, label %.lr.ph.i.i291, !llvm.loop !206

kill_local.exit.i288.loopexit.unr-lcssa:          ; preds = %bb.ae
  %lcmp.mod657.not = icmp eq i64 %xtraiter656, 0
end_hunk_38
begin_hunk_39
  %i.gi = add nuw nsw i64 %.06.i.i311, 2          ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %kill_local.exit.i307.loopexit.unr-lcssa, label %.lr.ph.i.i310, !llvm.loop !206

kill_local.exit.i307.loopexit.unr-lcssa:          ; preds = %bb.al
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
end_hunk_39
begin_hunk_40
  %i.hm = add nuw nsw i64 %.06.i.i324, 2          ; 2 uses
  %niter655.next.1 = add i64 %niter655, 2         ; 2 uses
  %niter655.ncmp.1 = icmp eq i64 %niter655.next.1, %unroll_iter654
  br i1 %niter655.ncmp.1, label %kill_local.exit.i320.loopexit.unr-lcssa, label %.lr.ph.i.i323, !llvm.loop !206

kill_local.exit.i320.loopexit.unr-lcssa:          ; preds = %bb.aq
  %lcmp.mod652.not = icmp eq i64 %xtraiter651, 0
end_hunk_40
begin_hunk_41
  %i.ii = sext i32 %i.bb to i64
  %i.ij = sub i64 %.sroa.63.3472, %i.ii
  %i.ik = getelementptr [8 x i8], ptr %.sroa.0.5471, i64 %i.ij ; 2 uses
  %.sroa.0.0.copyload.i339 = load <2 x i32>, ptr %i.ik, align 4
  %i.il = getelementptr [8 x i8], ptr %.sroa.0.5471, i64 %.sroa.63.3472
  %i.im = getelementptr i8, ptr %i.il, i64 -8     ; 2 uses
  %i.in = load i64, ptr %i.im, align 4
  store i64 %i.in, ptr %i.ik, align 4
  store <2 x i32> %.sroa.0.0.copyload.i339, ptr %i.im, align 4
  br label %.thread241

bb.aw:                                            ; preds = %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h
end_hunk_41
begin_hunk_42
  %i.ix = add i64 %.sroa.63.10450, 1              ; 2 uses
  %i.iy = add nuw nsw i32 %.0223452, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.iy, %i.iq
  br i1 %exitcond.not, label %.thread241, label %bb.ax, !llvm.loop !207

bb.ba:                                            ; preds = %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h
  %i.iz = tail call i32 @_PyOpcode_num_popped(i32 noundef %i.az, i32 noundef %i.bb) #9 ; 2 uses
end_hunk_42
begin_hunk_43
  %i.ni = add i64 %.sroa.63.27464, 1              ; 2 uses
  %i.nj = add nuw nsw i32 %.0219466, 1            ; 2 uses
  %exitcond521.not = icmp eq i32 %i.nj, %i.mj
  br i1 %exitcond521.not, label %.thread241, label %bb.bx, !llvm.loop !208

.thread241:                                       ; preds = %bb.az, %bb.k, %bb.bz, %.lr.ph446.preheader, %bb.ba, %bb.aw, %.preheader334, %load_fast_push_block.exit406, %bb.bk, %ref_stack_push.exit382, %ref_stack_push.exit404, %.thread257, %ref_stack_push.exit367, %ref_stack_push.exit360, %ref_stack_push.exit353.thread, %ref_stack_push.exit338.thread, %bb.as, %kill_local.exit.i320, %ref_stack_push.exit305.thread, %bb.aa, %kill_local.exit.i, %ref_stack_push.exit284, %ref_stack_push.exit272, %ref_stack_push.exit256, %bb.i, %bb.av
  %.sroa.0.48.ph = phi ptr [ %.sroa.0.5471, %bb.ba ], [ %.sroa.0.5471, %kill_local.exit.i320 ], [ %.sroa.0.5471, %kill_local.exit.i ], [ %.sroa.0.5471, %bb.i ], [ %.sroa.0.36, %.thread257 ], [ %.sroa.0.28, %bb.bk ], [ %.sroa.0.26, %ref_stack_push.exit367 ], [ %.sroa.0.24, %ref_stack_push.exit360 ], [ %.sroa.0.22, %ref_stack_push.exit353.thread ], [ %.sroa.0.5471, %.lr.ph446.preheader ], [ %.sroa.0.5471, %bb.as ], [ %.sroa.0.5471, %bb.av ], [ %.sroa.0.16, %ref_stack_push.exit338.thread ], [ %.sroa.0.5471, %bb.aa ], [ %.sroa.0.14, %ref_stack_push.exit305.thread ], [ %.sroa.0.42, %bb.bz ], [ %.sroa.0.12, %ref_stack_push.exit284 ], [ %.sroa.0.8, %ref_stack_push.exit272 ], [ %.sroa.0.6, %ref_stack_push.exit256 ], [ %.sroa.0.39, %ref_stack_push.exit404 ], [ %.sroa.0.30, %ref_stack_push.exit382 ], [ %.sroa.0.5471, %load_fast_push_block.exit406 ], [ %.sroa.0.5471, %.preheader334 ], [ %.sroa.0.5471, %bb.aw ], [ %.sroa.0.5471, %bb.k ], [ %.sroa.0.19, %bb.az ] ; 12 uses
end_hunk_43
begin_hunk_44
  %i.nk = load i32, ptr %i.ah, align 8, !tbaa !28 ; 3 uses
  %i.nl = sext i32 %i.nk to i64
  %i.nm = icmp slt i64 %indvars.iv.next, %i.nl
  br i1 %i.nm, label %bb.h, label %kill_local.exit, !llvm.loop !209

kill_local.exit:                                  ; preds = %.thread241
  %i.nn = icmp sgt i32 %i.nk, 0
end_hunk_44
begin_hunk_45
  %i.pa = add nuw nsw i64 %.0205482, 2            ; 2 uses
  %niter670.next.1 = add i64 %niter670, 2         ; 2 uses
  %niter670.ncmp.1 = icmp eq i64 %niter670.next.1, %unroll_iter669
  br i1 %niter670.ncmp.1, label %.preheader338.loopexit.unr-lcssa, label %.lr.ph483, !llvm.loop !210

bb.cg:                                            ; preds = %bb.cm, %.lr.ph485.new
  %indvars.iv525 = phi i64 [ 0, %.lr.ph485.new ], [ %indvars.iv.next526.1, %bb.cm ] ; 4 uses
end_hunk_45
begin_hunk_46
  %indvars.iv.next526.1 = add nuw nsw i64 %indvars.iv525, 2 ; 2 uses
  %niter675.next.1 = add i64 %niter675, 2         ; 2 uses
  %niter675.ncmp.1 = icmp eq i64 %niter675.next.1, %unroll_iter674
  br i1 %niter675.ncmp.1, label %kill_local.exit.thread292.loopexit.loopexit.unr-lcssa, label %bb.cg, !llvm.loop !211

kill_local.exit.thread292.thread.sink.split:      ; preds = %bb.f, %bb.bt, %bb.bh, %bb.be, %bb.s, %bb.q, %bb.m, %bb.ay, %bb.by
  %.sroa.0.51.ph = phi ptr [ %.sroa.0.41463, %bb.by ], [ %.sroa.0.5471, %bb.bt ], [ %.sroa.0.18449, %bb.ay ], [ %.sroa.0.5471, %bb.m ], [ %.sroa.0.5471, %bb.q ], [ %.sroa.0.5471, %bb.s ], [ %.sroa.0.5471, %bb.be ], [ %.sroa.0.5471, %bb.bh ], [ %.sroa.0.1434, %bb.f ]
end_hunk_46
begin_hunk_47
  %i.l = getelementptr i8, ptr %.04262, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !36   ; 2 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %.lr.ph.i, label %.lr.ph, !llvm.loop !212

make_cfg_traversal_stack.exit:                    ; preds = %._crit_edge.i
  %i.n = getelementptr i8, ptr %0, i64 56
end_hunk_47
begin_hunk_48
.loopexit60:                                      ; preds = %bb.j, %basicblock_nofallthrough.exit.thread57
  %.3.lcssa = phi ptr [ %.2, %basicblock_nofallthrough.exit.thread57 ], [ %.5, %bb.j ] ; 2 uses
  %i.t = icmp ugt ptr %.3.lcssa, %i.c
  br i1 %i.t, label %.lr.ph67, label %._crit_edge68, !llvm.loop !213

.lr.ph67:                                         ; preds = %make_cfg_traversal_stack.exit, %.loopexit60
  %.04466 = phi ptr [ %.3.lcssa, %.loopexit60 ], [ %i.o, %make_cfg_traversal_stack.exit ] ; 2 uses
end_hunk_48
begin_hunk_49
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.br = sext i32 %i.bq to i64
  %i.bs = icmp slt i64 %indvars.iv.next, %i.br
  br i1 %i.bs, label %bb.f, label %.loopexit60, !llvm.loop !214

._crit_edge68:                                    ; preds = %.loopexit60
  tail call void @PyMem_Free(ptr noundef nonnull %i.c) #9
end_hunk_49
begin_hunk_50
  %i.ca = getelementptr i8, ptr %.070, i64 32
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !36 ; 2 uses
  %.not46 = icmp eq ptr %i.cb, null
  br i1 %.not46, label %.loopexit, label %.lr.ph72, !llvm.loop !215

.loopexit:                                        ; preds = %bb.l, %._crit_edge68, %make_cfg_traversal_stack.exit.thread
  %.041 = phi i32 [ -1, %make_cfg_traversal_stack.exit.thread ], [ 0, %._crit_edge68 ], [ 0, %bb.l ]
end_hunk_50
begin_hunk_51
  %i.ae = getelementptr i8, ptr %.03066.i, i64 32
  %.030.i = load ptr, ptr %i.ae, align 8, !tbaa !26 ; 2 uses
  %.not.i = icmp eq ptr %.030.i, null
  br i1 %.not.i, label %remove_redundant_jumps.exit, label %.lr.ph.i, !llvm.loop !216

remove_redundant_jumps.exit:                      ; preds = %basicblock_last_instr.exit.thread.i
  %i.af = icmp eq i32 %.428.ph.i, -1
end_hunk_51
begin_hunk_52
  %spec.select.i11 = phi i32 [ %.428.ph.i, %remove_redundant_jumps.exit ], [ 0, %bb.c ]
  %i.ag = add i32 %spec.select.i11, %i.a
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %bb.b, label %.loopexit, !llvm.loop !217

.loopexit:                                        ; preds = %remove_redundant_jumps.exit.thread9, %remove_redundant_jumps.exit, %bb.b, %remove_redundant_jumps.exit.thread
  %.0 = phi i32 [ -1, %remove_redundant_jumps.exit.thread ], [ 0, %remove_redundant_jumps.exit.thread9 ], [ -1, %bb.b ], [ -1, %remove_redundant_jumps.exit ]
end_hunk_52
begin_hunk_53
bb.f:                                             ; preds = %bb.e
  %i.p = add nuw nsw i64 %.022, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.p, %.val21
  br i1 %exitcond.not, label %._crit_edge.thread, label %bb.e, !llvm.loop !218

._crit_edge:                                      ; preds = %bb.e, %.preheader
  %.0.lcssa = phi i64 [ 0, %.preheader ], [ %.022, %bb.e ] ; 3 uses
end_hunk_53
begin_hunk_54
  %i.m = add nuw nsw i64 %.01429, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.m, %.val22
  %or.cond = select i1 %i.l, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %.critedge, label %.lr.ph, !llvm.loop !219

.critedge:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  %.117 = phi i64 [ %1, %bb.a ], [ %i.e, %bb.b ], [ %i.k, %.lr.ph ]
end_hunk_54
begin_hunk_55
  %i.ba = getelementptr i8, ptr %.01331, i64 32
  %.013 = load ptr, ptr %i.ba, align 8, !tbaa !26 ; 2 uses
  %.not = icmp eq ptr %.013, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !220

._crit_edge:                                      ; preds = %basicblock_remove_redundant_nops.exit, %bb.m, %bb.a
  %spec.select = phi i32 [ 0, %bb.a ], [ %i.az, %bb.m ], [ -1, %basicblock_remove_redundant_nops.exit ]
end_hunk_55
begin_hunk_56
  %i.ak = load i32, ptr %i.c, align 8, !tbaa !28  ; 2 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = icmp slt i64 %indvars.iv.next, %i.al
  br i1 %i.am, label %bb.b, label %._crit_edge, !llvm.loop !221

bb.n:                                             ; preds = %._crit_edge
  %i.an = icmp sgt i32 %.lcssa, 0
end_hunk_56
begin_hunk_57
!176 = distinct !{!176, !25}
!177 = distinct !{!177, !25}
!178 = distinct !{!178, !25}
!179 = distinct !{!179, !25}
!180 = distinct !{!180, !25}
!181 = !{!182, !50, i64 32}
!182 = !{!"", !50, i64 0, !50, i64 8, !50, i64 16, !50, i64 24, !50, i64 32, !50, i64 40, !50, i64 48, !50, i64 56, !20, i64 64, !20, i64 72, !20, i64 80, !8, i64 88}
!183 = !{!184, !20, i64 16}
!184 = !{!"", !60, i64 0, !20, i64 16, !20, i64 24, !185, i64 32, !186, i64 40}
!185 = !{!"p1 _ZTS15_dictkeysobject", !14, i64 0}
!186 = !{!"p1 _ZTS11_dictvalues", !14, i64 0}
!187 = !{!182, !50, i64 40}
!188 = !{!182, !50, i64 48}
!189 = distinct !{!189, !25, !93, !94}
!190 = distinct !{!190, !25, !94, !93}
!191 = distinct !{!191, !25}
!192 = distinct !{!192, !73}
!193 = distinct !{!193, !25}
!194 = distinct !{!194, !25}
!195 = distinct !{!195, !25}
!196 = distinct !{!196, !25}
end_hunk_57
begin_hunk_58
!219 = distinct !{!219, !25}
!220 = distinct !{!220, !25}
!221 = distinct !{!221, !25}
end_hunk_58
