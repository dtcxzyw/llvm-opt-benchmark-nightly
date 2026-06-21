inline.NumInlined: 8
inline.NumDeleted: 4
begin_hunk_0_@encode_mcu_gather:bb.a
  %i.bi = add nsw i64 %i.bh, 1
  store i64 %i.bi, ptr %i.bg, align 8, !tbaa !44
  %i.bj = getelementptr inbounds nuw i8, ptr %i.as, i64 1920 ; 2 uses
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.backedge, %bb.g
  %indvars.iv.i = phi i64 [ 1, %bb.g ], [ %indvars.iv.i.be, %.backedge.i.backedge ] ; 3 uses
  %.03657.i = phi i32 [ 0, %bb.g ], [ %.03657.i.be, %.backedge.i.backedge ] ; 6 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr @jpeg_natural_order, i64 %indvars.iv.i
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !3
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds [2 x i8], ptr %i.ag, i64 %i.bm
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !79 ; 2 uses
  %i.bp = icmp eq i16 %i.bo, 0
  br i1 %i.bp, label %bb.j, label %.preheader.i

.preheader.i:                                     ; preds = %.backedge.i
  %i.bq = icmp sgt i32 %.03657.i, 15
  br i1 %i.bq, label %.lr.ph53.i, label %bb.h

.lr.ph53.i:                                       ; preds = %.preheader.i
  %.promoted.i = load i64, ptr %i.bj, align 8, !tbaa !44
  %i.br = tail call i32 @llvm.usub.sat.i32(i32 %.03657.i, i32 31)
  %i.bs = add nuw nsw i32 %i.br, 15               ; 2 uses
  %i.bt = lshr i32 %i.bs, 4
  %narrow = add nuw nsw i32 %i.bt, 1
  %i.bu = zext nneg i32 %narrow to i64
  %i.bv = add i64 %.promoted.i, %i.bu
  %i.bw = add nsw i32 %.03657.i, -16
  %i.bx = and i32 %i.bs, 2147483632
  %i.by = sub nsw i32 %i.bw, %i.bx
  store i64 %i.bv, ptr %i.bj, align 8, !tbaa !44
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph53.i, %.preheader.i
  %.137.lcssa.i = phi i32 [ %i.by, %.lr.ph53.i ], [ %.03657.i, %.preheader.i ]
  %i.bz = tail call i16 @llvm.abs.i16(i16 %i.bo, i1 false)
  %i.ca = lshr i16 %i.bz, 1
  %i.cb = zext nneg i16 %i.ca to i32
  %i.cc = tail call range(i32 17, 33) i32 @llvm.ctlz.i32(i32 %i.cb, i1 false)
  %i.cd = sub nuw nsw i32 33, %i.cc               ; 2 uses
  %i.ce = icmp sgt i32 %i.cd, %i.au
  br i1 %i.ce, label %bb.i, label %.thread.i

bb.i:                                             ; preds = %bb.h
  %i.cf = load ptr, ptr %0, align 8, !tbaa !7     ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 40
  store i32 6, ptr %i.cg, align 8, !tbaa !26
  %i.ch = load ptr, ptr %i.cf, align 8, !tbaa !32
  tail call void %i.ch(ptr noundef nonnull %0) #7, !inline_history !81
  br label %.thread.i

bb.j:                                             ; preds = %.backedge.i
  %i.ci = add nsw i32 %.03657.i, 1
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 64
  br i1 %exitcond.not.i, label %bb.k, label %.backedge.i.backedge

.thread.i:                                        ; preds = %bb.i, %bb.h
  %i.cj = shl i32 %.137.lcssa.i, 4
  %i.ck = add nsw i32 %i.cj, %i.cd
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.cl ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !44
  %i.co = add nsw i64 %i.cn, 1
  store i64 %i.co, ptr %i.cm, align 8, !tbaa !44
  %indvars.iv.next62.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not63.i = icmp eq i64 %indvars.iv.next62.i, 64
  br i1 %exitcond.not63.i, label %htest_one_block.exit, label %.backedge.i.backedge

.backedge.i.backedge:                             ; preds = %.thread.i, %bb.j
  %indvars.iv.i.be = phi i64 [ %indvars.iv.next.i, %bb.j ], [ %indvars.iv.next62.i, %.thread.i ]
  %.03657.i.be = phi i32 [ %i.ci, %bb.j ], [ 0, %.thread.i ]
  br label %.backedge.i, !llvm.loop !82

bb.k:                                             ; preds = %bb.j
  %i.cp = icmp sgt i32 %.03657.i, -1
  br i1 %i.cp, label %bb.l, label %htest_one_block.exit

bb.l:                                             ; preds = %bb.k
  %i.cq = load i64, ptr %i.as, align 8, !tbaa !44
  %i.cr = add nsw i64 %i.cq, 1
  store i64 %i.cr, ptr %i.as, align 8, !tbaa !44
  br label %htest_one_block.exit

htest_one_block.exit:                             ; preds = %.thread.i, %bb.k, %bb.l
  %i.cs = load ptr, ptr %i.af, align 8, !tbaa !76
  %i.ct = load i16, ptr %i.cs, align 2, !tbaa !79
  %i.cu = sext i16 %i.ct to i32
  store i32 %i.cu, ptr %i.ah, align 4, !tbaa !3
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1 ; 2 uses
  %i.cv = load i32, ptr %i.r, align 8, !tbaa !75
  %i.cw = sext i32 %i.cv to i64
  %i.cx = icmp slt i64 %indvars.iv.next40, %i.cw
  br i1 %i.cx, label %bb.e, label %._crit_edge36, !llvm.loop !83

._crit_edge36:                                    ; preds = %htest_one_block.exit, %bb.d
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal void @finish_pass_gather(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca [4 x i32], align 16               ; 4 uses
  %i.b = alloca [4 x i32], align 16               ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !56   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !63
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.j
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.j ] ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !33   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 20
  %i.p = load i32, ptr %i.o, align 4, !tbaa !64
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.r = load i32, ptr %i.q, align 8, !tbaa !66
  %i.s = sext i32 %i.p to i64                     ; 3 uses
  %i.t = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.s ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !3
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.s ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !33   ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.y = tail call ptr @jpeg_alloc_huff_table(ptr noundef nonnull %0) #7 ; 2 uses
  store ptr %i.y, ptr %i.v, align 8, !tbaa !33
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.z = phi ptr [ %i.y, %bb.d ], [ %i.w, %bb.c ]
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.s
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !68
  tail call void @jpeg_gen_optimal_table(ptr noundef nonnull %0, ptr noundef %i.z, ptr noundef %i.ab)
  store i32 1, ptr %i.t, align 4, !tbaa !3
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %i.ac = sext i32 %i.r to i64                    ; 3 uses
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !3
  %.not29 = icmp eq i32 %i.ae, 0
  br i1 %.not29, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.ac ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !33 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ai = tail call ptr @jpeg_alloc_huff_table(ptr noundef nonnull %0) #7 ; 2 uses
  store ptr %i.ai, ptr %i.af, align 8, !tbaa !33
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.aj = phi ptr [ %i.ai, %bb.h ], [ %i.ag, %bb.g ]
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.ac
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !68
  tail call void @jpeg_gen_optimal_table(ptr noundef nonnull %0, ptr noundef %i.aj, ptr noundef %i.al)
  store i32 1, ptr %i.ad, align 4, !tbaa !3
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %bb.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.am = load i32, ptr %i.e, align 8, !tbaa !63
  %i.an = sext i32 %i.am to i64
  %i.ao = icmp slt i64 %indvars.iv.next, %i.an
  br i1 %i.ao, label %bb.b, label %._crit_edge, !llvm.loop !84

._crit_edge:                                      ; preds = %bb.j, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @encode_mcu_huff(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = alloca [512 x i8], align 16              ; 6 uses
  %2 = alloca %struct.working_state, align 8      ; 18 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !56   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !85   ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !86   ; 7 uses
  store ptr %i.f, ptr %2, align 8, !tbaa !89
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !92   ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 9 uses
  store i64 %i.h, ptr %i.i, align 8, !tbaa !93
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false), !tbaa.struct !94
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  store ptr %0, ptr %i.l, align 8, !tbaa !95
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 316 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !71
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %emit_restart.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.p = load i32, ptr %i.o, align 8, !tbaa !72
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.c, label %emit_restart.exit

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 68
  %i.s = load i32, ptr %i.r, align 4, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !96   ; 2 uses
  %i.v = sub i32 64, %i.u                         ; 2 uses
  %i.w = load i64, ptr %i.j, align 8, !tbaa !31   ; 2 uses
  %i.x = icmp ugt i64 %i.h, 511                   ; 2 uses
  %spec.select = select i1 %i.x, ptr %i.f, ptr %i.a ; 2 uses
  %i.y = icmp slt i32 %i.u, 57
  br i1 %i.y, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.c
  %i.z = zext i32 %i.v to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %i.z, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %.lr.ph.i.i ] ; 2 uses
  %.15569.i.i = phi ptr [ %spec.select, %.lr.ph.preheader.i.i ], [ %.neg63.sroa.sel.i.i, %.lr.ph.i.i ] ; 3 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -8 ; 3 uses
  %i.aa = and i64 %indvars.iv.next.i.i, 4294967295
  %i.ab = lshr i64 %i.w, %i.aa                    ; 2 uses
  %i.ac = trunc i64 %i.ab to i8
  store i8 %i.ac, ptr %.15569.i.i, align 1, !tbaa !31
  %i.ad = getelementptr inbounds nuw i8, ptr %.15569.i.i, i64 1 ; 2 uses
  store i8 0, ptr %i.ad, align 1, !tbaa !31
  %i.ae = and i64 %i.ab, 255
  %.not62.i.i = icmp eq i64 %i.ae, 255
  %.sroa.gep.i.i = getelementptr inbounds nuw i8, ptr %.15569.i.i, i64 2
  %.neg63.sroa.sel.i.i = select i1 %.not62.i.i, ptr %.sroa.gep.i.i, ptr %i.ad ; 2 uses
  %i.af = trunc nuw i64 %indvars.iv.i.i to i32
  %i.ag = icmp sgt i32 %i.af, 15
  br i1 %i.ag, label %.lr.ph.i.i, label %._crit_edge.loopexit.i.i, !llvm.loop !97

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %indvars.i.i = trunc i64 %indvars.iv.next.i.i to i32
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.c
  %.155.lcssa.i.i = phi ptr [ %spec.select, %bb.c ], [ %.neg63.sroa.sel.i.i, %._crit_edge.loopexit.i.i ] ; 4 uses
  %.053.lcssa.i.i = phi i32 [ %i.v, %bb.c ], [ %indvars.i.i, %._crit_edge.loopexit.i.i ] ; 3 uses
  %.not.i.i = icmp eq i32 %.053.lcssa.i.i, 0
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.ah = sub nsw i32 8, %.053.lcssa.i.i
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = shl i64 %i.w, %i.ai
  %i.ak = lshr i32 255, %.053.lcssa.i.i
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = or i64 %i.aj, %i.al                     ; 2 uses
  %i.an = trunc i64 %i.am to i8
  store i8 %i.an, ptr %.155.lcssa.i.i, align 1, !tbaa !31
  %i.ao = getelementptr inbounds nuw i8, ptr %.155.lcssa.i.i, i64 1 ; 2 uses
  store i8 0, ptr %i.ao, align 1, !tbaa !31
  %i.ap = and i64 %i.am, 255
  %.not57.i.i = icmp eq i64 %i.ap, 255
  %.sroa.gep65.i.i = getelementptr inbounds nuw i8, ptr %.155.lcssa.i.i, i64 2
  %.neg.sroa.sel.i.i = select i1 %.not57.i.i, ptr %.sroa.gep65.i.i, ptr %i.ao
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i
  %.2.i.i = phi ptr [ %.neg.sroa.sel.i.i, %bb.d ], [ %.155.lcssa.i.i, %._crit_edge.i.i ] ; 2 uses
  store i64 0, ptr %i.j, align 8, !tbaa !31
  store i32 64, ptr %i.t, align 8, !tbaa !96
  %3 = ptrtoint ptr %.2.i.i to i64                ; 2 uses
  br i1 %i.x, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = ptrtoint ptr %i.a to i64
  %i.ar = sub i64 %3, %i.aq                       ; 2 uses
  %.not6072.i.i = icmp eq i64 %i.ar, 0
  br i1 %.not6072.i.i, label %.loopexit.i, label %.lr.ph76.i.i

.lr.ph76.i.i:                                     ; preds = %bb.f, %bb.h
  %i.as = phi ptr [ %i.bj, %bb.h ], [ %i.f, %bb.f ]
  %i.at = phi i64 [ %i.bk, %bb.h ], [ %i.h, %bb.f ]
  %.05174.i.i = phi i64 [ %i.bl, %bb.h ], [ %i.ar, %bb.f ] ; 2 uses
  %.373.i.i = phi ptr [ %i.aw, %bb.h ], [ %i.a, %bb.f ] ; 2 uses
  %.051..i.i = call i64 @llvm.umin.i64(i64 %.05174.i.i, i64 %i.at) ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.as, ptr align 1 %.373.i.i, i64 %.051..i.i, i1 false)
  %i.au = load ptr, ptr %2, align 8, !tbaa !89
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %.051..i.i ; 2 uses
  store ptr %i.av, ptr %2, align 8, !tbaa !89
  %i.aw = getelementptr inbounds nuw i8, ptr %.373.i.i, i64 %.051..i.i
  %i.ax = load i64, ptr %i.i, align 8, !tbaa !93  ; 2 uses
  %i.ay = sub i64 %i.ax, %.051..i.i               ; 2 uses
  store i64 %i.ay, ptr %i.i, align 8, !tbaa !93
  %i.az = icmp eq i64 %i.ax, %.051..i.i
  br i1 %i.az, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph76.i.i
  %i.ba = load ptr, ptr %i.l, align 8, !tbaa !95  ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !85 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !98
  %i.bf = call i32 %i.be(ptr noundef %i.ba) #7, !inline_history !99
  %.not.i.i.i = icmp eq i32 %i.bf, 0
  br i1 %.not.i.i.i, label %flush_bits.exit.i, label %dump_buffer.exit.i.i

dump_buffer.exit.i.i:                             ; preds = %bb.g
  %i.bg = load ptr, ptr %i.bc, align 8, !tbaa !86 ; 2 uses
  store ptr %i.bg, ptr %2, align 8, !tbaa !89
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !92 ; 2 uses
  store i64 %i.bi, ptr %i.i, align 8, !tbaa !93
  br label %bb.h

bb.h:                                             ; preds = %dump_buffer.exit.i.i, %.lr.ph76.i.i
  %i.bj = phi ptr [ %i.bg, %dump_buffer.exit.i.i ], [ %i.av, %.lr.ph76.i.i ] ; 2 uses
  %i.bk = phi i64 [ %i.bi, %dump_buffer.exit.i.i ], [ %i.ay, %.lr.ph76.i.i ]
  %i.bl = sub i64 %.05174.i.i, %.051..i.i         ; 2 uses
  %.not60.i.i = icmp eq i64 %i.bl, 0
  br i1 %.not60.i.i, label %.loopexit.i, label %.lr.ph76.i.i, !llvm.loop !100

bb.i:                                             ; preds = %bb.e
  %i.bm = ptrtoint ptr %i.f to i64
  %.neg59.i.i = sub i64 %i.bm, %3
  %i.bn = add i64 %.neg59.i.i, %i.h
  store i64 %i.bn, ptr %i.i, align 8, !tbaa !93
  br label %.loopexit.i

flush_bits.exit.i:                                ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %emit_restart.exit.thread

.loopexit.i:                                      ; preds = %bb.h, %bb.i, %bb.f
  %i.bo = phi ptr [ %i.f, %bb.f ], [ %.2.i.i, %bb.i ], [ %i.bj, %bb.h ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 1
  store ptr %i.bp, ptr %2, align 8, !tbaa !89
  store i8 -1, ptr %i.bo, align 1, !tbaa !31
  %i.bq = load i64, ptr %i.i, align 8, !tbaa !93
  %i.br = add i64 %i.bq, -1                       ; 2 uses
  %i.bs = icmp eq i64 %i.br, 0
  %i.bt = load ptr, ptr %i.l, align 8, !tbaa !95  ; 5 uses
  br i1 %i.bs, label %bb.j, label %.loopexit._crit_edge.i

bb.j:                                             ; preds = %.loopexit.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 40
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !85 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !98
  %i.by = call i32 %i.bx(ptr noundef %i.bt) #7, !inline_history !101
  %.not.i16.i = icmp eq i32 %i.by, 0
  br i1 %.not.i16.i, label %emit_restart.exit.thread, label %dump_buffer.exit.i

dump_buffer.exit.i:                               ; preds = %bb.j
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !92
  br label %.loopexit._crit_edge.i

.loopexit._crit_edge.i:                           ; preds = %.loopexit.i, %dump_buffer.exit.i
  %i.cb = phi i64 [ %i.ca, %dump_buffer.exit.i ], [ %i.br, %.loopexit.i ]
  %.in = phi ptr [ %i.bv, %dump_buffer.exit.i ], [ %2, %.loopexit.i ]
  %i.cc = load ptr, ptr %.in, align 8, !tbaa !102 ; 2 uses
  %i.cd = trunc i32 %i.s to i8
  %i.ce = add i8 %i.cd, -48
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 1 ; 2 uses
  store ptr %i.cf, ptr %2, align 8, !tbaa !89
  store i8 %i.ce, ptr %i.cc, align 1, !tbaa !31
  %i.cg = add i64 %i.cb, -1                       ; 3 uses
  store i64 %i.cg, ptr %i.i, align 8, !tbaa !93
  %i.ch = icmp eq i64 %i.cg, 0
  br i1 %i.ch, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.loopexit._crit_edge.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bt, i64 40
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !85 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !98
  %i.cm = call i32 %i.cl(ptr noundef %i.bt) #7, !inline_history !101
  %.not.i17.i = icmp eq i32 %i.cm, 0
  br i1 %.not.i17.i, label %emit_restart.exit.thread, label %dump_buffer.exit19.i

dump_buffer.exit19.i:                             ; preds = %bb.k
  %i.cn = load ptr, ptr %i.cj, align 8, !tbaa !86 ; 2 uses
  store ptr %i.cn, ptr %2, align 8, !tbaa !89
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !92 ; 2 uses
  store i64 %i.cp, ptr %i.i, align 8, !tbaa !93
  br label %bb.l

bb.l:                                             ; preds = %dump_buffer.exit19.i, %.loopexit._crit_edge.i
  %i.cq = phi i64 [ %i.cp, %dump_buffer.exit19.i ], [ %i.cg, %.loopexit._crit_edge.i ] ; 2 uses
  %i.cr = phi ptr [ %i.cn, %dump_buffer.exit19.i ], [ %i.cf, %.loopexit._crit_edge.i ] ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bt, i64 368
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !63 ; 2 uses
  %i.cu = icmp sgt i32 %i.ct, 0
  br i1 %i.cu, label %.lr.ph.i, label %emit_restart.exit

.lr.ph.i:                                         ; preds = %bb.l
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.cw = zext nneg i32 %i.ct to i64
  %i.cx = shl nuw nsw i64 %i.cw, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.cv, i8 0, i64 %i.cx, i1 false), !tbaa !3
  br label %emit_restart.exit

emit_restart.exit:                                ; preds = %.lr.ph.i, %bb.l, %bb.b, %bb.a
  %i.cy = phi i64 [ %i.cq, %.lr.ph.i ], [ %i.cq, %bb.l ], [ %i.h, %bb.b ], [ %i.h, %bb.a ]
  %i.cz = phi ptr [ %i.cr, %.lr.ph.i ], [ %i.cr, %bb.l ], [ %i.f, %bb.b ], [ %i.f, %bb.a ]
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.db = load i32, ptr %i.da, align 8, !tbaa !75
  %i.dc = icmp sgt i32 %i.db, 0
  br i1 %i.dc, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %emit_restart.exit
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 420
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.dg = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.dh = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %bb.n
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.n ] ; 3 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !3
  %i.dk = sext i32 %i.dj to i64                   ; 2 uses
  %i.dl = getelementptr inbounds [8 x i8], ptr %i.de, i64 %i.dk
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !33 ; 2 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !76
  %i.dp = getelementptr inbounds [4 x i8], ptr %i.df, i64 %i.dk ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !3
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dm, i64 20
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !64
  %i.dt = sext i32 %i.ds to i64
  %i.du = getelementptr inbounds [8 x i8], ptr %i.dg, i64 %i.dt
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !33
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !66
  %i.dy = sext i32 %i.dx to i64
  %i.dz = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %i.dy
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !33
  %i.eb = call fastcc i32 @encode_one_block(ptr noundef %2, ptr noundef %i.do, i32 noundef %i.dq, ptr noundef %i.dv, ptr noundef %i.ea)
  %.not39 = icmp eq i32 %i.eb, 0
  br i1 %.not39, label %emit_restart.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ec = load ptr, ptr %i.dn, align 8, !tbaa !76
  %i.ed = load i16, ptr %i.ec, align 2, !tbaa !79
  %i.ee = sext i16 %i.ed to i32
  store i32 %i.ee, ptr %i.dp, align 4, !tbaa !3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ef = load i32, ptr %i.da, align 8, !tbaa !75
  %i.eg = sext i32 %i.ef to i64
  %i.eh = icmp slt i64 %indvars.iv.next, %i.eg
  br i1 %i.eh, label %bb.m, label %._crit_edge.loopexit, !llvm.loop !103

._crit_edge.loopexit:                             ; preds = %bb.n
  %.pre44 = load ptr, ptr %2, align 8, !tbaa !89
  %.pre45 = load i64, ptr %i.i, align 8, !tbaa !93
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %emit_restart.exit
  %i.ei = phi i64 [ %.pre45, %._crit_edge.loopexit ], [ %i.cy, %emit_restart.exit ]
  %i.ej = phi ptr [ %.pre44, %._crit_edge.loopexit ], [ %i.cz, %emit_restart.exit ]
  %i.ek = load ptr, ptr %i.d, align 8, !tbaa !85  ; 2 uses
  store ptr %i.ej, ptr %i.ek, align 8, !tbaa !86
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  store i64 %i.ei, ptr %i.el, align 8, !tbaa !92
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false), !tbaa.struct !94
  %i.em = load i32, ptr %i.m, align 4, !tbaa !71  ; 2 uses
  %.not38 = icmp eq i32 %i.em, 0
  br i1 %.not38, label %emit_restart.exit.thread, label %bb.o

bb.o:                                             ; preds = %._crit_edge
  %i.en = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 2 uses
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !72 ; 2 uses
  %i.ep = icmp eq i32 %i.eo, 0
  br i1 %i.ep, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.eq = getelementptr inbounds nuw i8, ptr %i.c, i64 68 ; 2 uses
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !73
  %i.es = add nsw i32 %i.er, 1
  %i.et = and i32 %i.es, 7
  store i32 %i.et, ptr %i.eq, align 4, !tbaa !73
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.eu = phi i32 [ %i.em, %bb.p ], [ %i.eo, %bb.o ]
  %i.ev = add i32 %i.eu, -1
  store i32 %i.ev, ptr %i.en, align 8, !tbaa !72
  br label %emit_restart.exit.thread

emit_restart.exit.thread:                         ; preds = %bb.m, %flush_bits.exit.i, %bb.k, %bb.j, %._crit_edge, %bb.q
  %.0 = phi i32 [ 1, %._crit_edge ], [ 0, %flush_bits.exit.i ], [ 1, %bb.q ], [ 0, %bb.j ], [ 0, %bb.k ], [ 0, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal void @finish_pass_huff(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca [512 x i8], align 16              ; 6 uses
  %.sroa.26 = alloca [20 x i8], align 4           ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !56   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.26)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !85   ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !86   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !92   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %.sroa.20.16.copyload18 = load i64, ptr %i.i, align 8, !tbaa !31 ; 2 uses
  %.sroa.24.16..sroa_idx19 = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %.sroa.24.16.copyload20 = load i32, ptr %.sroa.24.16..sroa_idx19, align 8, !tbaa !3 ; 2 uses
  %.sroa.26.16..sroa_idx21 = getelementptr inbounds nuw i8, ptr %i.c, i64 44 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.26, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.26.16..sroa_idx21, i64 20, i1 false), !tbaa.struct !104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.j = sub i32 64, %.sroa.24.16.copyload20      ; 2 uses
  %i.k = icmp ugt i64 %i.h, 511                   ; 2 uses
  %spec.select = select i1 %i.k, ptr %i.f, ptr %i.a ; 2 uses
  %i.l = icmp slt i32 %.sroa.24.16.copyload20, 57
  br i1 %i.l, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.m = zext i32 %i.j to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.m, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %.15569.i = phi ptr [ %spec.select, %.lr.ph.preheader.i ], [ %.neg63.sroa.sel.i, %.lr.ph.i ] ; 3 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -8 ; 3 uses
  %i.n = and i64 %indvars.iv.next.i, 4294967295
end_hunk_0
