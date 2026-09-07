Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/ir_cfg?download=true
inline.NumInlined: 22
inline.NumDeleted: 10
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@ir_cfg_remove_dead_inputs:bb.a

.lr.ph.preheader:                                 ; preds = %bb.k
  %xtraiter = and i64 %indvar, 1
  %i.az = icmp eq i64 %indvar, 1
  br i1 %i.az, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %indvar, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.07392 = phi i32 [ 1, %.lr.ph.preheader.new ], [ %i.br, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.ba = and i32 %.07392, 63
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = shl nuw i64 1, %i.bb
  %i.bd = lshr i32 %.07392, 6
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.be ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !38
  %i.bh = or i64 %i.bg, %i.bc
  store i64 %i.bh, ptr %i.bf, align 8, !tbaa !38
  %i.bi = add nuw nsw i32 %.07392, 1              ; 2 uses
  %i.bj = and i32 %i.bi, 63
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = shl nuw i64 1, %i.bk
  %i.bm = lshr i32 %i.bi, 6
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.bn ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !38
  %i.bq = or i64 %i.bp, %i.bl
  store i64 %i.bq, ptr %i.bo, align 8, !tbaa !38
  %i.br = add nuw nsw i32 %.07392, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !108

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %.07392.epil.init = phi i32 [ 1, %.lr.ph.preheader ], [ %i.br, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1 = trunc i64 %indvar to i1
  tail call void @llvm.assume(i1 %lcmp.mod1)
  %i.bs = and i32 %.07392.epil.init, 63
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = shl nuw i64 1, %i.bt
  %i.bv = lshr i32 %.07392.epil.init, 6
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.bw ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !38
  %i.bz = or i64 %i.by, %i.bu
  store i64 %i.bz, ptr %i.bx, align 8, !tbaa !38
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.k, %bb.j
  %.2 = phi ptr [ %.197, %bb.j ], [ %i.ax, %bb.k ], [ %i.ax, %.loopexit.loopexit.unr-lcssa ], [ %i.ax, %.lr.ph.epil.preheader ]
  %i.ca = load ptr, ptr %i.a, align 8, !tbaa !41  ; 2 uses
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.ca, i64 %i.ac
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  store i32 0, ptr %i.cc, align 4, !tbaa !43
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %.loopexit
  %i.cd = phi ptr [ %i.z, %bb.i ], [ %i.ca, %.loopexit ]
  %.176 = phi i32 [ %i.ap, %bb.i ], [ %.07596, %.loopexit ] ; 2 uses
  %.3 = phi ptr [ %.197, %bb.i ], [ %.2, %.loopexit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond117.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond117.not, label %._crit_edge, label %bb.d, !llvm.loop !109

._crit_edge:                                      ; preds = %bb.l, %bb.c
  %.075.lcssa = phi i32 [ 1, %bb.c ], [ %.176, %bb.l ] ; 4 uses
  %.1.lcssa = phi ptr [ %.074109, %bb.c ], [ %.3, %bb.l ] ; 4 uses
  %i.ce = add nsw i32 %.075.lcssa, -1             ; 4 uses
  %.not86 = icmp eq i32 %i.ce, %i.u
  br i1 %.not86, label %bb.q, label %bb.m

bb.m:                                             ; preds = %._crit_edge
  %i.cf = icmp eq i32 %i.ce, 1
  br i1 %i.cf, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i8 101, ptr %i.q, align 8, !tbaa !37
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.cg = trunc i32 %i.ce to i16
  store i16 %i.cg, ptr %i.s, align 2, !tbaa !37
  %i.ch = getelementptr inbounds nuw i8, ptr %.pn108, i64 76
  store i32 %i.ce, ptr %i.ch, align 4, !tbaa !55
  %.not87100 = icmp sgt i32 %.075.lcssa, %i.u
  br i1 %.not87100, label %._crit_edge104, label %.lr.ph103.preheader

.lr.ph103.preheader:                              ; preds = %bb.o
  %i.ci = shl nsw i64 %i.p, 4
  %i.cj = sext i32 %.075.lcssa to i64
  %i.ck = shl nsw i64 %i.cj, 2
  %i.cl = getelementptr i8, ptr %i.m, i64 %i.ci
  %scevgep = getelementptr i8, ptr %i.cl, i64 %i.ck
  %i.cm = sub i32 %i.u, %.075.lcssa
  %i.cn = zext i32 %i.cm to i64
  %i.co = shl nuw nsw i64 %i.cn, 2
  %i.cp = add nuw nsw i64 %i.co, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 %i.cp, i1 false), !tbaa !39
  br label %._crit_edge104

._crit_edge104:                                   ; preds = %.lr.ph103.preheader, %bb.o
  %.not88 = icmp eq ptr %.1.lcssa, null
  br i1 %.not88, label %bb.q, label %bb.p

bb.p:                                             ; preds = %._crit_edge104
  %i.cq = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.cr = load i32, ptr %i.n, align 4, !tbaa !49
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.cq, i64 %i.cs
  %i.cu = load i16, ptr %i.s, align 2, !tbaa !37
  %i.cv = zext i16 %i.cu to i32
  tail call fastcc void @ir_remove_phis_inputs(ptr noundef nonnull %0, ptr noundef %i.ct, i32 noundef %i.cv, ptr noundef nonnull %.1.lcssa)
  tail call void @_efree(ptr noundef nonnull %.1.lcssa) #17
  br label %bb.q

bb.q:                                             ; preds = %bb.b, %._crit_edge, %bb.p, %._crit_edge104
  %.4 = phi ptr [ null, %bb.p ], [ null, %._crit_edge104 ], [ %.1.lcssa, %._crit_edge ], [ %.074109, %bb.b ]
  %i.cw = getelementptr inbounds nuw i8, ptr %.pn108, i64 76
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !55
  %i.cy = add i32 %i.cx, %i.j
  %i.cz = add i32 %.0110, 1                       ; 2 uses
  %.not = icmp ugt i32 %i.cz, %3
  br i1 %.not, label %._crit_edge114, label %bb.b, !llvm.loop !110

._crit_edge114:                                   ; preds = %bb.q, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden noundef i32 @ir_build_dominators_tree(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
ir_array_init.exit:
  %1 = alloca %struct._ir_list, align 8           ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !31
  %i.c = lshr i32 %i.b, 1                         ; 2 uses
  %i.d = zext nneg i32 %i.c to i64
  %i.e = shl nuw nsw i64 %i.d, 2
  %i.f = tail call noalias ptr @_emalloc(i64 noundef %i.e) #19 ; 5 uses
  store ptr %i.f, ptr %1, align 8, !tbaa !58
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  store i32 %i.c, ptr %i.g, align 8, !tbaa !59
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 11 uses
  store i32 0, ptr %i.h, align 8, !tbaa !61
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 6 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !47
  %i.k = or i32 %i.j, 33554432
  store i32 %i.k, ptr %i.i, align 4, !tbaa !47
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !33   ; 14 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !34
  %i.p = load i32, ptr %i.a, align 4, !tbaa !31   ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 80 ; 3 uses
  store i32 1, ptr %i.q, align 4, !tbaa !37
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 84
  store i32 0, ptr %i.r, align 4, !tbaa !37
  %.not176 = icmp ult i32 %i.p, 2
  br i1 %.not176, label %.critedge135.thread, label %.lr.ph180.preheader

.critedge135.thread:                              ; preds = %ir_array_init.exit
  store i32 0, ptr %i.q, align 4, !tbaa !37
  br label %._crit_edge190

.lr.ph180.preheader:                              ; preds = %ir_array_init.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 104
  br label %.lr.ph180

.lr.ph180:                                        ; preds = %.lr.ph180.preheader, %._crit_edge
  %i.t = phi ptr [ %i.cs, %._crit_edge ], [ %i.f, %.lr.ph180.preheader ] ; 2 uses
  %i.u = phi ptr [ %i.ct, %._crit_edge ], [ %i.f, %.lr.ph180.preheader ] ; 3 uses
  %i.v = phi ptr [ %i.cu, %._crit_edge ], [ %i.f, %.lr.ph180.preheader ] ; 2 uses
  %.0107179 = phi ptr [ %i.dd, %._crit_edge ], [ %i.s, %.lr.ph180.preheader ] ; 5 uses
  %.0110177 = phi i32 [ %i.dc, %._crit_edge ], [ 2, %.lr.ph180.preheader ] ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0107179, i64 24
  %i.x = load i32, ptr %i.w, align 4, !tbaa !55   ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0107179, i64 20
  %i.z = load i32, ptr %i.y, align 4, !tbaa !53
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.aa ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !39 ; 3 uses
  %.not131 = icmp ult i32 %i.ac, %.0110177
  br i1 %.not131, label %.loopexit145, label %bb.a, !prof !62

bb.a:                                             ; preds = %.lr.ph180
  %i.ad = load i32, ptr %i.i, align 4, !tbaa !47
  %i.ae = and i32 %i.ad, -33554433
  store i32 %i.ae, ptr %i.i, align 4, !tbaa !47
  %i.af = icmp ult i32 %i.x, 2
  br i1 %i.af, label %.critedge, label %bb.b, !prof !46

.critedge:                                        ; preds = %bb.a, %.lr.ph
  %2 = phi ptr [ %i.bc, %.lr.ph ], [ %i.u, %bb.a ]
  call void @_efree(ptr noundef %2) #17
  store ptr null, ptr %1, align 8, !tbaa !58
  store i32 0, ptr %i.g, align 8, !tbaa !59
  store i32 0, ptr %i.h, align 8, !tbaa !61
  call fastcc void @ir_build_dominators_tree_slow(ptr noundef %0)
  br label %ir_build_dominators_tree_iterative.exit

bb.b:                                             ; preds = %bb.a
  %i.ag = load i32, ptr %i.h, align 8, !tbaa !61  ; 3 uses
  %i.ah = add i32 %i.ag, 1                        ; 2 uses
  store i32 %i.ah, ptr %i.h, align 8, !tbaa !61
  %i.ai = load i32, ptr %i.g, align 8, !tbaa !59
  %.not.i = icmp ult i32 %i.ag, %i.ai
  br i1 %.not.i, label %ir_array_set.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @ir_array_grow(ptr noundef nonnull %1, i32 noundef %i.ah) #17
  %.pre = load ptr, ptr %1, align 8, !tbaa !58    ; 3 uses
  br label %ir_array_set.exit

ir_array_set.exit:                                ; preds = %bb.b, %bb.c
  %i.aj = phi ptr [ %i.t, %bb.b ], [ %.pre, %bb.c ] ; 2 uses
  %i.ak = phi ptr [ %i.u, %bb.b ], [ %.pre, %bb.c ] ; 2 uses
  %i.al = phi ptr [ %i.v, %bb.b ], [ %.pre, %bb.c ] ; 2 uses
  %i.am = zext i32 %i.ag to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.am
  store i32 %i.ac, ptr %i.an, align 4, !tbaa !39
  %i.ao = add i32 %i.x, -1                        ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ab, i64 4 ; 3 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !39 ; 3 uses
  %i.ar = icmp ult i32 %i.aq, %.0110177
  br i1 %i.ar, label %.loopexit145, label %.lr.ph276

.lr.ph:                                           ; preds = %ir_array_set.exit138
  %i.as = icmp eq i32 %i.bf, 0
  br i1 %i.as, label %.critedge, label %.lr.ph276, !prof !129

.lr.ph276:                                        ; preds = %ir_array_set.exit, %.lr.ph
  %i.at = phi i32 [ %i.bf, %.lr.ph ], [ %i.ao, %ir_array_set.exit ]
  %i.au = phi ptr [ %i.bg, %.lr.ph ], [ %i.ap, %ir_array_set.exit ]
  %i.av = phi i32 [ %i.bh, %.lr.ph ], [ %i.aq, %ir_array_set.exit ]
  %i.aw = phi ptr [ %i.bc, %.lr.ph ], [ %i.ak, %ir_array_set.exit ]
  %i.ax = phi ptr [ %i.bb, %.lr.ph ], [ %i.aj, %ir_array_set.exit ]
  %i.ay = load i32, ptr %i.h, align 8, !tbaa !61  ; 3 uses
  %i.az = add i32 %i.ay, 1                        ; 2 uses
  store i32 %i.az, ptr %i.h, align 8, !tbaa !61
  %i.ba = load i32, ptr %i.g, align 8, !tbaa !59
  %.not.i137 = icmp ult i32 %i.ay, %i.ba
  br i1 %.not.i137, label %ir_array_set.exit138, label %bb.d

bb.d:                                             ; preds = %.lr.ph276
  call void @ir_array_grow(ptr noundef nonnull %1, i32 noundef %i.az) #17
  %.pre202 = load ptr, ptr %1, align 8, !tbaa !58 ; 2 uses
  br label %ir_array_set.exit138

ir_array_set.exit138:                             ; preds = %.lr.ph276, %bb.d
  %i.bb = phi ptr [ %i.ax, %.lr.ph276 ], [ %.pre202, %bb.d ] ; 2 uses
  %i.bc = phi ptr [ %i.aw, %.lr.ph276 ], [ %.pre202, %bb.d ] ; 5 uses
  %i.bd = zext i32 %i.ay to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.bd
  store i32 %i.av, ptr %i.be, align 4, !tbaa !39
  %i.bf = add i32 %i.at, -1                       ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.au, i64 4 ; 3 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !39 ; 3 uses
  %i.bi = icmp ult i32 %i.bh, %.0110177
  br i1 %i.bi, label %.loopexit145, label %.lr.ph

.loopexit145:                                     ; preds = %ir_array_set.exit138, %ir_array_set.exit, %.lr.ph180
  %i.bj = phi ptr [ %i.t, %.lr.ph180 ], [ %i.aj, %ir_array_set.exit ], [ %i.bb, %ir_array_set.exit138 ] ; 2 uses
  %i.bk = phi ptr [ %i.u, %.lr.ph180 ], [ %i.ak, %ir_array_set.exit ], [ %i.bc, %ir_array_set.exit138 ] ; 2 uses
  %i.bl = phi ptr [ %i.v, %.lr.ph180 ], [ %i.al, %ir_array_set.exit ], [ %i.bc, %ir_array_set.exit138 ] ; 2 uses
  %.1105 = phi i32 [ %i.x, %.lr.ph180 ], [ %i.ao, %ir_array_set.exit ], [ %i.bf, %ir_array_set.exit138 ]
  %.1102 = phi ptr [ %i.ab, %.lr.ph180 ], [ %i.ap, %ir_array_set.exit ], [ %i.bg, %ir_array_set.exit138 ]
  %.097 = phi i32 [ %i.ac, %.lr.ph180 ], [ %i.aq, %ir_array_set.exit ], [ %i.bh, %ir_array_set.exit138 ] ; 2 uses
  %i.bm = add i32 %.1105, -1                      ; 2 uses
  %.not132171 = icmp eq i32 %i.bm, 0
  br i1 %.not132171, label %._crit_edge, label %.lr.ph174

.lr.ph174:                                        ; preds = %.loopexit145, %.loopexit144
  %i.bn = phi ptr [ %i.co, %.loopexit144 ], [ %i.bj, %.loopexit145 ] ; 3 uses
  %i.bo = phi ptr [ %i.cp, %.loopexit144 ], [ %i.bk, %.loopexit145 ] ; 2 uses
  %i.bp = phi ptr [ %i.cq, %.loopexit144 ], [ %i.bl, %.loopexit145 ] ; 2 uses
  %i.bq = phi i32 [ %i.cr, %.loopexit144 ], [ %i.bm, %.loopexit145 ]
  %.198173 = phi i32 [ %.4, %.loopexit144 ], [ %.097, %.loopexit145 ] ; 4 uses
  %.2103172 = phi ptr [ %i.br, %.loopexit144 ], [ %.1102, %.loopexit145 ]
  %i.br = getelementptr inbounds nuw i8, ptr %.2103172, i64 4 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !39 ; 4 uses
  %i.bt = icmp ult i32 %i.bs, %.0110177
  br i1 %i.bt, label %.preheader143, label %bb.e

.preheader143:                                    ; preds = %.lr.ph174
  %.not133167 = icmp eq i32 %.198173, %i.bs
  br i1 %.not133167, label %.loopexit144, label %.preheader142

.loopexit:                                        ; preds = %.lr.ph165, %.preheader141
  %.3100.lcssa = phi i32 [ %.299168, %.preheader141 ], [ %i.ce, %.lr.ph165 ] ; 2 uses
  %.not133 = icmp eq i32 %.3100.lcssa, %.194.lcssa
  br i1 %.not133, label %.loopexit144, label %.preheader142, !llvm.loop !111

.preheader142:                                    ; preds = %.preheader143, %.loopexit
  %.093169 = phi i32 [ %.194.lcssa, %.loopexit ], [ %i.bs, %.preheader143 ] ; 3 uses
  %.299168 = phi i32 [ %.3100.lcssa, %.loopexit ], [ %.198173, %.preheader143 ] ; 5 uses
  %i.bu = icmp ugt i32 %.093169, %.299168
  br i1 %i.bu, label %.lr.ph162, label %.preheader141

.preheader141:                                    ; preds = %.lr.ph162, %.preheader142
  %.194.lcssa = phi i32 [ %.093169, %.preheader142 ], [ %i.bz, %.lr.ph162 ] ; 5 uses
  %i.bv = icmp ugt i32 %.299168, %.194.lcssa
  br i1 %i.bv, label %.lr.ph165, label %.loopexit

.lr.ph162:                                        ; preds = %.preheader142, %.lr.ph162
  %.194161 = phi i32 [ %i.bz, %.lr.ph162 ], [ %.093169, %.preheader142 ]
  %i.bw = zext i32 %.194161 to i64
  %i.bx = getelementptr inbounds nuw [52 x i8], ptr %i.m, i64 %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 28
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !37 ; 3 uses
  %i.ca = icmp ugt i32 %i.bz, %.299168
  br i1 %i.ca, label %.lr.ph162, label %.preheader141, !llvm.loop !112

.lr.ph165:                                        ; preds = %.preheader141, %.lr.ph165
  %.3100164 = phi i32 [ %i.ce, %.lr.ph165 ], [ %.299168, %.preheader141 ]
  %i.cb = zext i32 %.3100164 to i64
  %i.cc = getelementptr inbounds nuw [52 x i8], ptr %i.m, i64 %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 28
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !37 ; 3 uses
  %i.cf = icmp ugt i32 %i.ce, %.194.lcssa
  br i1 %i.cf, label %.lr.ph165, label %.loopexit, !llvm.loop !113

bb.e:                                             ; preds = %.lr.ph174
  %i.cg = load i32, ptr %i.i, align 4, !tbaa !47
  %i.ch = and i32 %i.cg, -33554433
  store i32 %i.ch, ptr %i.i, align 4, !tbaa !47
  %i.ci = load i32, ptr %i.h, align 8, !tbaa !61  ; 3 uses
  %i.cj = add i32 %i.ci, 1                        ; 2 uses
  store i32 %i.cj, ptr %i.h, align 8, !tbaa !61
  %i.ck = load i32, ptr %i.g, align 8, !tbaa !59
  %.not.i139 = icmp ult i32 %i.ci, %i.ck
  br i1 %.not.i139, label %ir_array_set.exit140, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @ir_array_grow(ptr noundef nonnull %1, i32 noundef %i.cj) #17
  %.pre203 = load ptr, ptr %1, align 8, !tbaa !58
  br label %ir_array_set.exit140

ir_array_set.exit140:                             ; preds = %bb.e, %bb.f
  %i.cl = phi ptr [ %i.bn, %bb.e ], [ %.pre203, %bb.f ] ; 4 uses
  %i.cm = zext i32 %i.ci to i64
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.cm
  store i32 %i.bs, ptr %i.cn, align 4, !tbaa !39
  br label %.loopexit144

.loopexit144:                                     ; preds = %.loopexit, %.preheader143, %ir_array_set.exit140
  %i.co = phi ptr [ %i.cl, %ir_array_set.exit140 ], [ %i.bn, %.preheader143 ], [ %i.bn, %.loopexit ] ; 2 uses
  %i.cp = phi ptr [ %i.cl, %ir_array_set.exit140 ], [ %i.bo, %.preheader143 ], [ %i.bo, %.loopexit ] ; 2 uses
  %i.cq = phi ptr [ %i.cl, %ir_array_set.exit140 ], [ %i.bp, %.preheader143 ], [ %i.bp, %.loopexit ] ; 2 uses
  %.4 = phi i32 [ %.198173, %ir_array_set.exit140 ], [ %.198173, %.preheader143 ], [ %.194.lcssa, %.loopexit ] ; 2 uses
  %i.cr = add i32 %i.bq, -1                       ; 2 uses
  %.not132 = icmp eq i32 %i.cr, 0
  br i1 %.not132, label %._crit_edge, label %.lr.ph174, !llvm.loop !114

._crit_edge:                                      ; preds = %.loopexit144, %.loopexit145
  %i.cs = phi ptr [ %i.bj, %.loopexit145 ], [ %i.co, %.loopexit144 ] ; 4 uses
  %i.ct = phi ptr [ %i.bk, %.loopexit145 ], [ %i.cp, %.loopexit144 ]
  %i.cu = phi ptr [ %i.bl, %.loopexit145 ], [ %i.cq, %.loopexit144 ]
  %.198.lcssa = phi i32 [ %.097, %.loopexit145 ], [ %.4, %.loopexit144 ] ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.0107179, i64 28
  store i32 %.198.lcssa, ptr %i.cv, align 4, !tbaa !37
  %i.cw = zext i32 %.198.lcssa to i64
  %i.cx = getelementptr inbounds nuw [52 x i8], ptr %i.m, i64 %i.cw
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 32
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !37
  %i.da = add i32 %i.cz, 1
  %i.db = getelementptr inbounds nuw i8, ptr %.0107179, i64 32
  store i32 %i.da, ptr %i.db, align 4, !tbaa !37
  %i.dc = add i32 %.0110177, 1                    ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.0107179, i64 52
  %.not = icmp ugt i32 %i.dc, %i.p
  br i1 %.not, label %._crit_edge181, label %.lr.ph180, !llvm.loop !115

._crit_edge181:                                   ; preds = %._crit_edge
  %.pre204 = load i32, ptr %i.h, align 8, !tbaa !61 ; 2 uses
  store i32 0, ptr %i.q, align 4, !tbaa !37
  %.not124 = icmp eq i32 %.pre204, 0
  br i1 %.not124, label %.lr.ph189.preheader, label %.preheader

.preheader:                                       ; preds = %._crit_edge181
  %i.de = load ptr, ptr %i.n, align 8, !tbaa !34  ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.preheader, %bb.k
  %i.df = phi i32 [ %.pre204, %.preheader ], [ %i.dg, %bb.k ]
  %i.dg = add i32 %i.df, -1                       ; 4 uses
  store i32 %i.dg, ptr %i.h, align 8, !tbaa !61
  %i.dh = zext i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.dh
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !39 ; 2 uses
  %i.dk = zext i32 %i.dj to i64                   ; 2 uses
  %i.dl = getelementptr inbounds nuw [52 x i8], ptr %i.m, i64 %i.dk ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 12
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !51 ; 2 uses
  %i.do = zext i32 %i.dn to i64
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.do
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !39 ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !52
  switch i32 %i.ds, label %bb.l [
    i32 1, label %bb.j
    i32 2, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.dt = zext i32 %i.dq to i64
  %i.du = getelementptr inbounds nuw [52 x i8], ptr %i.m, i64 %i.dt
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !54
  %i.dw = and i32 %i.dv, 4
  %.not127 = icmp eq i32 %i.dw, 0
  %i.dx = add i32 %i.dn, 1
  %i.dy = zext i32 %i.dx to i64
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.dy
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !39 ; 2 uses
  br i1 %.not127, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.eb = zext i32 %i.ea to i64
  %i.ec = getelementptr inbounds nuw [52 x i8], ptr %i.m, i64 %i.eb
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !54
  %i.ee = and i32 %i.ed, 4
  %.not128 = icmp eq i32 %i.ee, 0
  br i1 %.not128, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.g, %bb.i
  %.092 = phi i32 [ %i.dq, %bb.g ], [ %i.dq, %bb.i ], [ %i.ea, %bb.h ] ; 2 uses
  %i.ef = zext i32 %.092 to i64
  %i.eg = getelementptr inbounds nuw [52 x i8], ptr %i.m, i64 %i.ef
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 32
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !37 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dl, i64 32
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !37
  %i.el = icmp ugt i32 %i.ek, %i.ei
  br i1 %i.el, label %.lr.ph184, label %._crit_edge185

.lr.ph184:                                        ; preds = %bb.j, %.lr.ph184
  %i.em = phi i64 [ %i.eq, %.lr.ph184 ], [ %i.dk, %bb.j ]
  %i.en = getelementptr inbounds nuw [52 x i8], ptr %i.m, i64 %i.em
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 28
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !37 ; 2 uses
  %i.eq = zext i32 %i.ep to i64                   ; 2 uses
  %i.er = getelementptr inbounds nuw [52 x i8], ptr %i.m, i64 %i.eq
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 32
  %i.et = load i32, ptr %i.es, align 4, !tbaa !37
  %i.eu = icmp ugt i32 %i.et, %i.ei
  br i1 %i.eu, label %.lr.ph184, label %._crit_edge185, !llvm.loop !116

._crit_edge185:                                   ; preds = %.lr.ph184, %bb.j
  %.1111.lcssa = phi i32 [ %i.dj, %bb.j ], [ %i.ep, %.lr.ph184 ]
  %.not129 = icmp eq i32 %.1111.lcssa, %.092
  br i1 %.not129, label %bb.k, label %bb.l, !prof !62

bb.k:                                             ; preds = %._crit_edge185
  %.not130 = icmp eq i32 %i.dg, 0
  br i1 %.not130, label %.lr.ph189.preheader, label %bb.g, !llvm.loop !117

bb.l:                                             ; preds = %bb.g, %bb.i, %._crit_edge185
  call void @_efree(ptr noundef nonnull %i.cs) #17
  store ptr null, ptr %1, align 8, !tbaa !58
  store i32 0, ptr %i.g, align 8, !tbaa !59
  store i32 0, ptr %i.h, align 8, !tbaa !61
  %i.ev = load ptr, ptr %i.l, align 8, !tbaa !33  ; 18 uses
  %i.ew = load ptr, ptr %i.n, align 8, !tbaa !34
  %i.ex = load i32, ptr %i.a, align 4, !tbaa !31  ; 4 uses
  %i.ey = add i32 %i.ex, 1                        ; 4 uses
  %umax.i = call i32 @llvm.umax.i32(i32 %i.ey, i32 1) ; 2 uses
  %xtraiter = and i32 %umax.i, 7                  ; 3 uses
  %i.ez = icmp ult i32 %i.ey, 8
  br i1 %i.ez, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.l
  %unroll_iter = and i32 %umax.i, -8
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.new
  %.086111.i = phi ptr [ %i.ev, %.new ], [ %i.fi, %bb.m ] ; 9 uses
  %niter = phi i32 [ 0, %.new ], [ %niter.next.7, %bb.m ]
  %i.fa = getelementptr inbounds nuw i8, ptr %.086111.i, i64 32
  store i32 0, ptr %i.fa, align 4, !tbaa !37
  %i.fb = getelementptr inbounds nuw i8, ptr %.086111.i, i64 84
  store i32 0, ptr %i.fb, align 4, !tbaa !37
  %i.fc = getelementptr inbounds nuw i8, ptr %.086111.i, i64 136
  store i32 0, ptr %i.fc, align 4, !tbaa !37
  %i.fd = getelementptr inbounds nuw i8, ptr %.086111.i, i64 188
  store i32 0, ptr %i.fd, align 4, !tbaa !37
  %i.fe = getelementptr inbounds nuw i8, ptr %.086111.i, i64 240
  store i32 0, ptr %i.fe, align 4, !tbaa !37
  %i.ff = getelementptr inbounds nuw i8, ptr %.086111.i, i64 292
  store i32 0, ptr %i.ff, align 4, !tbaa !37
  %i.fg = getelementptr inbounds nuw i8, ptr %.086111.i, i64 344
  store i32 0, ptr %i.fg, align 4, !tbaa !37
  %i.fh = getelementptr inbounds nuw i8, ptr %.086111.i, i64 396
  store i32 0, ptr %i.fh, align 4, !tbaa !37
  %i.fi = getelementptr inbounds nuw i8, ptr %.086111.i, i64 416 ; 2 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.unr-lcssa, label %bb.m, !llvm.loop !118

.unr-lcssa:                                       ; preds = %bb.m
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.l
  %.086111.i.epil.init = phi ptr [ %i.ev, %bb.l ], [ %i.fi, %.unr-lcssa ]
  %lcmp.mod306 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod306)
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.epil.preheader
  %.086111.i.epil = phi ptr [ %.086111.i.epil.init, %.epil.preheader ], [ %i.fk, %bb.n ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.n ]
  %i.fj = getelementptr inbounds nuw i8, ptr %.086111.i.epil, i64 32
  store i32 0, ptr %i.fj, align 4, !tbaa !37
  %i.fk = getelementptr inbounds nuw i8, ptr %.086111.i.epil, i64 52
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.n, !llvm.loop !119

.epilog-lcssa:                                    ; preds = %bb.n, %.unr-lcssa
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ev, i64 80 ; 3 uses
  store i32 1, ptr %i.fl, align 4, !tbaa !37
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ev, i64 104 ; 4 uses
  %.not94126.i = icmp ult i32 %i.ex, 2
  br i1 %.not94126.i, label %.split135.us.thread.i, label %.lr.ph131.preheader.i

.split135.us.thread.i:                            ; preds = %.epilog-lcssa
  store i32 0, ptr %i.fl, align 4, !tbaa !37
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ev, i64 84
  store i32 0, ptr %i.fn, align 4, !tbaa !37
  br label %ir_build_dominators_tree_iterative.exit

.lr.ph131.preheader.i:                            ; preds = %.epilog-lcssa
  %umax151.i = call i32 @llvm.umax.i32(i32 %i.ey, i32 3) ; 2 uses
  br label %.lr.ph131.i

.lr.ph131.i:                                      ; preds = %.thread.i, %.lr.ph131.preheader.i
  %.0129.i = phi i1 [ %.2.i.mux, %.thread.i ], [ false, %.lr.ph131.preheader.i ] ; 3 uses
  %.171128.i = phi i32 [ %.mux, %.thread.i ], [ 2, %.lr.ph131.preheader.i ]
  %.187127.i = phi ptr [ %.mux280, %.thread.i ], [ %i.fm, %.lr.ph131.preheader.i ] ; 4 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.187127.i, i64 24
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !55 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.187127.i, i64 20
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !53
  %i.fs = zext i32 %i.fr to i64
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %i.fs ; 3 uses
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !39 ; 2 uses
  %i.fv = zext i32 %i.fu to i64
  %i.fw = getelementptr inbounds nuw [52 x i8], ptr %i.ev, i64 %i.fv
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 28
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !37
  %i.fz = icmp eq i32 %i.fy, 0
  br i1 %i.fz, label %.preheader106.i.preheader, label %.loopexit107.i

.preheader106.i.preheader:                        ; preds = %.lr.ph131.i
  %i.ga = add i32 %i.fp, -1                       ; 2 uses
  %i.gb = icmp eq i32 %i.ga, 0
  br i1 %i.gb, label %.thread.i, label %.lr.ph279, !prof !130

.preheader106.i:                                  ; preds = %.lr.ph279
  %i.gc = add i32 %i.ge, -1                       ; 2 uses
  %i.gd = icmp eq i32 %i.gc, 0
  br i1 %i.gd, label %.thread.i, label %.lr.ph279, !prof !129

.lr.ph279:                                        ; preds = %.preheader106.i.preheader, %.preheader106.i
  %i.ge = phi i32 [ %i.gc, %.preheader106.i ], [ %i.ga, %.preheader106.i.preheader ] ; 2 uses
  %.079.i278 = phi ptr [ %i.gf, %.preheader106.i ], [ %i.ft, %.preheader106.i.preheader ]
  %i.gf = getelementptr inbounds nuw i8, ptr %.079.i278, i64 4 ; 3 uses
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !39 ; 2 uses
  %i.gh = zext i32 %i.gg to i64
  %i.gi = getelementptr inbounds nuw [52 x i8], ptr %i.ev, i64 %i.gh
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 28
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !37
  %.not96.i = icmp eq i32 %i.gk, 0
  br i1 %.not96.i, label %.preheader106.i, label %.loopexit107.i

.loopexit107.i:                                   ; preds = %.lr.ph279, %.lr.ph131.i
  %.184.i = phi i32 [ %i.fp, %.lr.ph131.i ], [ %i.ge, %.lr.ph279 ]
  %.281.i = phi ptr [ %i.ft, %.lr.ph131.i ], [ %i.gf, %.lr.ph279 ]
  %.277.i = phi i32 [ %i.fu, %.lr.ph131.i ], [ %i.gg, %.lr.ph279 ] ; 2 uses
  %i.gl = add i32 %.184.i, -1                     ; 2 uses
  %.not97121.i = icmp eq i32 %i.gl, 0
  br i1 %.not97121.i, label %._crit_edge.i, label %.lr.ph124.i

.lr.ph124.i:                                      ; preds = %.loopexit107.i, %.loopexit105.i
  %i.gm = phi i32 [ %i.hf, %.loopexit105.i ], [ %i.gl, %.loopexit107.i ]
  %.378123.i = phi i32 [ %.6.i, %.loopexit105.i ], [ %.277.i, %.loopexit107.i ] ; 3 uses
  %.382122.i = phi ptr [ %i.gn, %.loopexit105.i ], [ %.281.i, %.loopexit107.i ]
  %i.gn = getelementptr inbounds nuw i8, ptr %.382122.i, i64 4 ; 2 uses
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !39 ; 3 uses
  %i.gp = zext i32 %i.go to i64
  %i.gq = getelementptr inbounds nuw [52 x i8], ptr %i.ev, i64 %i.gp
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 28
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !37
  %.not99.i = icmp eq i32 %i.gs, 0
  %.not100117.i = icmp eq i32 %.378123.i, %i.go
  %or.cond.i = select i1 %.not99.i, i1 true, i1 %.not100117.i
  br i1 %or.cond.i, label %.loopexit105.i, label %.preheader103.i

.loopexit.i:                                      ; preds = %.lr.ph115.i, %.preheader.i
  %.5.lcssa.i = phi i32 [ %.4118.i, %.preheader.i ], [ %i.hd, %.lr.ph115.i ] ; 2 uses
  %.not100.i = icmp eq i32 %.5.lcssa.i, %.174.lcssa.i
  br i1 %.not100.i, label %.loopexit105.i, label %.preheader103.i, !llvm.loop !120

.preheader103.i:                                  ; preds = %.lr.ph124.i, %.loopexit.i
  %.073119.i = phi i32 [ %.174.lcssa.i, %.loopexit.i ], [ %i.go, %.lr.ph124.i ] ; 3 uses
  %.4118.i = phi i32 [ %.5.lcssa.i, %.loopexit.i ], [ %.378123.i, %.lr.ph124.i ] ; 5 uses
  %i.gt = icmp ugt i32 %.073119.i, %.4118.i
  br i1 %i.gt, label %.lr.ph.i, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.i, %.preheader103.i
  %.174.lcssa.i = phi i32 [ %.073119.i, %.preheader103.i ], [ %i.gy, %.lr.ph.i ] ; 5 uses
  %i.gu = icmp ugt i32 %.4118.i, %.174.lcssa.i
  br i1 %i.gu, label %.lr.ph115.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %.preheader103.i, %.lr.ph.i
  %.174113.i = phi i32 [ %i.gy, %.lr.ph.i ], [ %.073119.i, %.preheader103.i ]
  %i.gv = zext i32 %.174113.i to i64
  %i.gw = getelementptr inbounds nuw [52 x i8], ptr %i.ev, i64 %i.gv
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 28
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !37 ; 3 uses
  %i.gz = icmp ugt i32 %i.gy, %.4118.i
  br i1 %i.gz, label %.lr.ph.i, label %.preheader.i, !llvm.loop !121

.lr.ph115.i:                                      ; preds = %.preheader.i, %.lr.ph115.i
  %.5114.i = phi i32 [ %i.hd, %.lr.ph115.i ], [ %.4118.i, %.preheader.i ]
  %i.ha = zext i32 %.5114.i to i64
  %i.hb = getelementptr inbounds nuw [52 x i8], ptr %i.ev, i64 %i.ha
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 28
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !37 ; 3 uses
  %i.he = icmp ugt i32 %i.hd, %.174.lcssa.i
  br i1 %i.he, label %.lr.ph115.i, label %.loopexit.i, !llvm.loop !122

.loopexit105.i:                                   ; preds = %.loopexit.i, %.lr.ph124.i
  %.6.i = phi i32 [ %.378123.i, %.lr.ph124.i ], [ %.174.lcssa.i, %.loopexit.i ] ; 2 uses
  %i.hf = add i32 %i.gm, -1                       ; 2 uses
  %.not97.i = icmp eq i32 %i.hf, 0
  br i1 %.not97.i, label %._crit_edge.i, label %.lr.ph124.i, !llvm.loop !123

._crit_edge.i:                                    ; preds = %.loopexit105.i, %.loopexit107.i
  %.378.lcssa.i = phi i32 [ %.277.i, %.loopexit107.i ], [ %.6.i, %.loopexit105.i ] ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.187127.i, i64 28 ; 2 uses
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !37
  %.not98.i = icmp eq i32 %i.hh, %.378.lcssa.i
  br i1 %.not98.i, label %.thread.i, label %bb.o

bb.o:                                             ; preds = %._crit_edge.i
  store i32 %.378.lcssa.i, ptr %i.hg, align 4, !tbaa !37
  br label %.thread.i

.thread.i:                                        ; preds = %.preheader106.i, %.preheader106.i.preheader, %bb.o, %._crit_edge.i
  %.2.i = phi i1 [ %.0129.i, %._crit_edge.i ], [ true, %bb.o ], [ %.0129.i, %.preheader106.i.preheader ], [ %.0129.i, %.preheader106.i ] ; 2 uses
  %i.hi = add nuw i32 %.171128.i, 1               ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.187127.i, i64 52
  %exitcond152.i = icmp ne i32 %i.hi, %umax151.i  ; 4 uses
  %brmerge = select i1 %exitcond152.i, i1 true, i1 %.2.i
  %.2.i.mux = select i1 %exitcond152.i, i1 %.2.i, i1 false
  %.mux = select i1 %exitcond152.i, i32 %i.hi, i32 2
  %.mux280 = select i1 %exitcond152.i, ptr %i.hj, ptr %i.fm
  br i1 %brmerge, label %.lr.ph131.i, label %.split135.us.i, !llvm.loop !124

.split135.us.i:                                   ; preds = %.thread.i
  store i32 0, ptr %i.fl, align 4, !tbaa !37
  %i.hk = getelementptr inbounds nuw i8, ptr %i.ev, i64 84
  store i32 0, ptr %i.hk, align 4, !tbaa !37
  %i.hl = add i32 %umax151.i, -2                  ; 2 uses
  %xtraiter307 = and i32 %i.hl, 3                 ; 3 uses
  %i.hm = icmp ult i32 %i.ey, 6
  br i1 %i.hm, label %.lr.ph140.i.epil.preheader, label %.split135.us.i.new

.split135.us.i.new:                               ; preds = %.split135.us.i
  %unroll_iter311 = and i32 %i.hl, -4
  br label %.lr.ph140.i

.lr.ph140.i:                                      ; preds = %.lr.ph140.i, %.split135.us.i.new
  %.288137.i = phi ptr [ %i.fm, %.split135.us.i.new ], [ %i.it, %.lr.ph140.i ] ; 9 uses
  %niter312 = phi i32 [ 0, %.split135.us.i.new ], [ %niter312.next.3, %.lr.ph140.i ]
  %i.hn = getelementptr inbounds nuw i8, ptr %.288137.i, i64 28
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !37
  %i.hp = zext i32 %i.ho to i64
  %i.hq = getelementptr inbounds nuw [52 x i8], ptr %i.ev, i64 %i.hp
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 32
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !37
  %i.ht = add i32 %i.hs, 1
  %i.hu = getelementptr inbounds nuw i8, ptr %.288137.i, i64 32
  store i32 %i.ht, ptr %i.hu, align 4, !tbaa !37
  %i.hv = getelementptr inbounds nuw i8, ptr %.288137.i, i64 80
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !37
  %i.hx = zext i32 %i.hw to i64
  %i.hy = getelementptr inbounds nuw [52 x i8], ptr %i.ev, i64 %i.hx
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 32
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !37
  %i.ib = add i32 %i.ia, 1
  %i.ic = getelementptr inbounds nuw i8, ptr %.288137.i, i64 84
  store i32 %i.ib, ptr %i.ic, align 4, !tbaa !37
  %i.id = getelementptr inbounds nuw i8, ptr %.288137.i, i64 132
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !37
  %i.if = zext i32 %i.ie to i64
  %i.ig = getelementptr inbounds nuw [52 x i8], ptr %i.ev, i64 %i.if
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 32
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !37
  %i.ij = add i32 %i.ii, 1
  %i.ik = getelementptr inbounds nuw i8, ptr %.288137.i, i64 136
  store i32 %i.ij, ptr %i.ik, align 4, !tbaa !37
  %i.il = getelementptr inbounds nuw i8, ptr %.288137.i, i64 184
  %i.im = load i32, ptr %i.il, align 4, !tbaa !37
  %i.in = zext i32 %i.im to i64
  %i.io = getelementptr inbounds nuw [52 x i8], ptr %i.ev, i64 %i.in
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 32
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !37
  %i.ir = add i32 %i.iq, 1
  %i.is = getelementptr inbounds nuw i8, ptr %.288137.i, i64 188
  store i32 %i.ir, ptr %i.is, align 4, !tbaa !37
  %i.it = getelementptr inbounds nuw i8, ptr %.288137.i, i64 208 ; 2 uses
  %niter312.next.3 = add i32 %niter312, 4         ; 2 uses
  %niter312.ncmp.3 = icmp eq i32 %niter312.next.3, %unroll_iter311
  br i1 %niter312.ncmp.3, label %.lr.ph145.preheader.i.unr-lcssa, label %.lr.ph140.i, !llvm.loop !125

.lr.ph145.preheader.i.unr-lcssa:                  ; preds = %.lr.ph140.i
  %lcmp.mod309.not = icmp eq i32 %xtraiter307, 0
  br i1 %lcmp.mod309.not, label %.lr.ph145.preheader.i, label %.lr.ph140.i.epil.preheader

.lr.ph140.i.epil.preheader:                       ; preds = %.lr.ph145.preheader.i.unr-lcssa, %.split135.us.i
  %.288137.i.epil.init = phi ptr [ %i.fm, %.split135.us.i ], [ %i.it, %.lr.ph145.preheader.i.unr-lcssa ]
  %lcmp.mod310 = icmp ne i32 %xtraiter307, 0
  call void @llvm.assume(i1 %lcmp.mod310)
  br label %.lr.ph140.i.epil

.lr.ph140.i.epil:                                 ; preds = %.lr.ph140.i.epil, %.lr.ph140.i.epil.preheader
  %.288137.i.epil = phi ptr [ %i.jc, %.lr.ph140.i.epil ], [ %.288137.i.epil.init, %.lr.ph140.i.epil.preheader ] ; 3 uses
  %epil.iter308 = phi i32 [ %epil.iter308.next, %.lr.ph140.i.epil ], [ 0, %.lr.ph140.i.epil.preheader ]
  %i.iu = getelementptr inbounds nuw i8, ptr %.288137.i.epil, i64 28
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !37
  %i.iw = zext i32 %i.iv to i64
  %i.ix = getelementptr inbounds nuw [52 x i8], ptr %i.ev, i64 %i.iw
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 32
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !37
  %i.ja = add i32 %i.iz, 1
  %i.jb = getelementptr inbounds nuw i8, ptr %.288137.i.epil, i64 32
  store i32 %i.ja, ptr %i.jb, align 4, !tbaa !37
  %i.jc = getelementptr inbounds nuw i8, ptr %.288137.i.epil, i64 52
  %epil.iter308.next = add i32 %epil.iter308, 1   ; 2 uses
  %epil.iter308.cmp.not = icmp eq i32 %epil.iter308.next, %xtraiter307
  br i1 %epil.iter308.cmp.not, label %.lr.ph145.preheader.i, label %.lr.ph140.i.epil, !llvm.loop !126

.lr.ph145.preheader.i:                            ; preds = %.lr.ph140.i.epil, %.lr.ph145.preheader.i.unr-lcssa
  %i.jd = zext i32 %i.ex to i64
  %i.je = getelementptr inbounds nuw [52 x i8], ptr %i.ev, i64 %i.jd
  br label %.lr.ph145.i

.lr.ph145.i:                                      ; preds = %.lr.ph145.i, %.lr.ph145.preheader.i
  %.3143.i = phi i32 [ %i.jm, %.lr.ph145.i ], [ %i.ex, %.lr.ph145.preheader.i ] ; 2 uses
  %.389142.i = phi ptr [ %i.jn, %.lr.ph145.i ], [ %i.je, %.lr.ph145.preheader.i ] ; 3 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %.389142.i, i64 28
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !37
  %i.jh = zext i32 %i.jg to i64
  %i.ji = getelementptr inbounds nuw [52 x i8], ptr %i.ev, i64 %i.jh
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 36 ; 2 uses
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !64
  %i.jl = getelementptr inbounds nuw i8, ptr %.389142.i, i64 40
  store i32 %i.jk, ptr %i.jl, align 4, !tbaa !65
  store i32 %.3143.i, ptr %i.jj, align 4, !tbaa !64
  %i.jm = add i32 %.3143.i, -1                    ; 2 uses
end_hunk_0
begin_hunk_1_@ir_chain_head_path_compress:bb.a
  %.phi.trans.insert17 = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert17, align 4, !tbaa !72
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %i.a = phi i32 [ %.pre, %bb.a ], [ %i.d, %bb.b ] ; 5 uses
  %i.b = zext i32 %i.a to i64
  %i.c = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.b
  %i.d = load i32, ptr %i.c, align 4, !tbaa !72   ; 2 uses
  %.not = icmp eq i32 %i.d, %i.a
  br i1 %.not, label %.preheader, label %bb.b, !llvm.loop !191

.preheader:                                       ; preds = %bb.b
  %.phi.trans.insert18 = zext i32 %1 to i64
  %.phi.trans.insert19 = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %.phi.trans.insert18
  %.pre20 = load i32, ptr %.phi.trans.insert19, align 4, !tbaa !72
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.c
  %i.e = phi i32 [ %i.j, %bb.c ], [ %.pre20, %.preheader ] ; 2 uses
  %.0 = phi i32 [ %i.e, %bb.c ], [ %1, %.preheader ]
  %i.f = zext i32 %.0 to i64
  %i.g = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.f
  store i32 %i.a, ptr %i.g, align 4, !tbaa !72
  %i.h = zext i32 %i.e to i64
  %i.i = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !tbaa !72   ; 2 uses
  %.not16 = icmp eq i32 %i.j, %i.a
  br i1 %.not16, label %bb.d, label %bb.c, !llvm.loop !192

bb.d:                                             ; preds = %bb.c
  ret i32 %i.a
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nofree noinline norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nounwind }
attributes #18 = { nounwind allocsize(0,1) }
attributes #19 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"p1 _ZTS8_ir_insn", !12, i64 0}
!14 = !{!"long", !8, i64 0}
!15 = !{!"p1 int", !12, i64 0}
!16 = !{!"", !8, i64 0, !8, i64 4}
!17 = !{!"_ir_insn", !16, i64 0, !8, i64 8}
!18 = !{!"p1 _ZTS11_ir_hashtab", !12, i64 0}
!19 = !{!"p1 _ZTS12_ir_use_list", !12, i64 0}
!20 = !{!"p1 _ZTS9_ir_block", !12, i64 0}
!21 = !{!"any p2 pointer", !12, i64 0}
!22 = !{!"p2 _ZTS17_ir_live_interval", !21, i64 0}
!23 = !{!"p1 _ZTS9_ir_arena", !12, i64 0}
!24 = !{!"p1 _ZTS14_ir_live_range", !12, i64 0}
!25 = !{!"p1 omnipotent char", !12, i64 0}
!26 = !{!"p1 _ZTS10_ir_strtab", !12, i64 0}
!27 = !{!"p1 _ZTS15_ir_code_buffer", !12, i64 0}
!28 = !{!"p1 _ZTS10_ir_loader", !12, i64 0}
!29 = !{!"_ir_strtab", !12, i64 0, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !25, i64 24, !9, i64 32, !9, i64 36}
!30 = !{!"_ir_ctx", !13, i64 0, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !14, i64 24, !15, i64 32, !9, i64 40, !9, i64 44, !9, i64 48, !9, i64 52, !9, i64 56, !9, i64 60, !17, i64 64, !12, i64 80, !18, i64 88, !19, i64 96, !15, i64 104, !9, i64 112, !9, i64 116, !9, i64 120, !20, i64 128, !15, i64 136, !15, i64 144, !15, i64 152, !15, i64 160, !15, i64 168, !9, i64 176, !9, i64 180, !14, i64 184, !9, i64 192, !9, i64 196, !9, i64 200, !14, i64 208, !9, i64 216, !9, i64 220, !9, i64 224, !9, i64 228, !22, i64 232, !23, i64 240, !24, i64 248, !25, i64 256, !26, i64 264, !15, i64 272, !8, i64 280, !12, i64 288, !9, i64 296, !9, i64 300, !14, i64 304, !9, i64 312, !9, i64 316, !9, i64 320, !15, i64 328, !12, i64 336, !27, i64 344, !28, i64 352, !29, i64 360, !8, i64 400, !8, i64 660}
!31 = !{!30, !9, i64 116}
!32 = !{!30, !9, i64 120}
!33 = !{!30, !20, i64 128}
!34 = !{!30, !15, i64 136}
!35 = !{!30, !15, i64 144}
!36 = !{!30, !13, i64 0}
!37 = !{!8, !8, i64 0}
!38 = !{!14, !14, i64 0}
!39 = !{!9, !9, i64 0}
!40 = !{!"llvm.loop.mustprogress"}
!41 = !{!30, !19, i64 96}
!42 = !{!"_ir_use_list", !9, i64 0, !9, i64 4}
!43 = !{!42, !9, i64 4}
!44 = !{!30, !15, i64 104}
!45 = !{!42, !9, i64 0}
!46 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!47 = !{!30, !9, i64 44}
!48 = !{!"_ir_block", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !8, i64 28, !8, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !8, i64 48}
!49 = !{!48, !9, i64 4}
!50 = !{!48, !9, i64 8}
!51 = !{!48, !9, i64 12}
!52 = !{!48, !9, i64 16}
!53 = !{!48, !9, i64 20}
!54 = !{!48, !9, i64 0}
!55 = !{!48, !9, i64 24}
!56 = !{!30, !9, i64 320}
!57 = !{!"_ir_array", !15, i64 0, !9, i64 8}
!58 = !{!57, !15, i64 0}
!59 = !{!57, !9, i64 8}
!60 = !{!"_ir_list", !57, i64 0, !9, i64 16}
!61 = !{!60, !9, i64 16}
!62 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!63 = !{!"llvm.loop.unroll.disable"}
!64 = !{!48, !9, i64 36}
!65 = !{!48, !9, i64 40}
!66 = !{!"p1 long", !12, i64 0}
!67 = !{!"_ir_worklist", !60, i64 0, !66, i64 24}
!68 = !{!67, !66, i64 24}
!69 = !{!48, !9, i64 44}
!70 = !{!30, !15, i64 152}
!71 = !{!"_ir_chain", !9, i64 0, !9, i64 4, !8, i64 8}
!72 = !{!71, !9, i64 0}
!73 = !{!"float", !8, i64 0}
!74 = !{!"_ir_edge_info", !9, i64 0, !9, i64 4, !73, i64 8}
!75 = !{!74, !9, i64 0}
!76 = !{!74, !9, i64 4}
!77 = !{!74, !73, i64 8}
!78 = distinct !{!78, !40}
!79 = distinct !{!79, !40}
!80 = distinct !{!80, !40}
!81 = distinct !{!81, !40}
!82 = distinct !{!82, !40}
!83 = distinct !{!83, !40}
!84 = distinct !{!84, !40, !105, !106}
!85 = distinct !{!85, !40, !106, !105}
!86 = distinct !{!86, !40}
!87 = distinct !{!87, !40}
!88 = distinct !{!88, !40}
!89 = distinct !{!89, !40}
!90 = distinct !{!90, !40}
!91 = distinct !{!91, !40}
!92 = distinct !{!92, !40}
!93 = distinct !{!93, !40}
!94 = distinct !{!94, !40}
!95 = distinct !{!95, !40}
!96 = distinct !{!96, !40}
!97 = distinct !{!97, !40}
!98 = distinct !{!98, !40}
!99 = distinct !{!99, !40}
!100 = distinct !{!100, !40}
!101 = distinct !{!101, !40}
!102 = distinct !{!102, !40}
!103 = !{!30, !9, i64 8}
!104 = !{!30, !9, i64 12}
!105 = !{!"llvm.loop.isvectorized", i32 1}
!106 = !{!"llvm.loop.unroll.runtime.disable"}
!107 = !{!"branch_weights", !"expected", i32 2145766520, i32 1717128}
!108 = distinct !{!108, !40}
!109 = distinct !{!109, !40}
!110 = distinct !{!110, !40}
!111 = distinct !{!111, !40}
!112 = distinct !{!112, !40}
!113 = distinct !{!113, !40}
!114 = distinct !{!114, !40}
!115 = distinct !{!115, !40}
!116 = distinct !{!116, !40}
!117 = distinct !{!117, !40}
!118 = distinct !{!118, !40}
!119 = distinct !{!119, !63}
!120 = distinct !{!120, !40}
!121 = distinct !{!121, !40}
!122 = distinct !{!122, !40}
!123 = distinct !{!123, !40}
!124 = distinct !{!124, !40}
!125 = distinct !{!125, !40}
!126 = distinct !{!126, !63}
!127 = distinct !{!127, !40}
!128 = distinct !{!128, !40}
!129 = !{!"branch_weights", i32 127, i32 255873}
!130 = !{!"branch_weights", i32 1, i32 127}
!131 = distinct !{!131, !40}
!132 = distinct !{!132, !40}
!133 = distinct !{!133, !40}
!134 = distinct !{!134, !40}
!135 = distinct !{!135, !40}
!136 = distinct !{!136, !40}
!137 = distinct !{!137, !40}
!138 = distinct !{!138, !40}
!139 = distinct !{!139, !40}
!140 = distinct !{!140, !40}
!141 = distinct !{!141, !40}
!142 = distinct !{!142, !40}
!143 = distinct !{!143, !40}
!144 = distinct !{!144, !40}
!145 = distinct !{!145, !40}
!146 = distinct !{!146, !40}
!147 = distinct !{!147, !40}
!148 = distinct !{!148, !40}
!149 = distinct !{!149, !40}
!150 = distinct !{!150, !40}
!151 = distinct !{!151, !40}
!152 = distinct !{!152, !40}
!153 = distinct !{!153, !40}
!154 = distinct !{!154, !40}
!155 = distinct !{!155, !40}
!156 = distinct !{!156, !40}
!157 = distinct !{!157, !40}
!158 = distinct !{!158, !40}
!159 = distinct !{!159, !40}
!160 = distinct !{!160, !40}
!161 = !{!60, !15, i64 0}
!162 = distinct !{!162, !40}
!163 = distinct !{!163, !40}
!164 = distinct !{!164, !40}
!165 = distinct !{!165, !40}
!166 = distinct !{!166, !40}
!167 = distinct !{!167, !40}
!168 = distinct !{!168, !40}
!169 = distinct !{!169, !63}
!170 = distinct !{!170, !40}
!171 = distinct !{!171, !40}
!172 = distinct !{!172, !40}
!173 = distinct !{!173, !40}
!174 = distinct !{!174, !40}
!175 = distinct !{!175, !40}
!176 = distinct !{!176, !40}
!177 = distinct !{!177, !40}
!178 = distinct !{!178, !40}
!179 = distinct !{!179, !40}
!180 = !{!"branch_weights", i32 2002, i32 2000}
!181 = !{!30, !9, i64 40}
!182 = !{!71, !9, i64 4}
!183 = !{!73, !73, i64 0}
!184 = !{!30, !15, i64 328}
!185 = distinct !{!185, !40}
!186 = distinct !{!186, !40}
!187 = distinct !{!187, !40}
!188 = distinct !{!188, !40}
!189 = distinct !{!189, !40}
!190 = distinct !{!190, !40}
!191 = distinct !{!191, !40}
!192 = distinct !{!192, !40}
end_hunk_1
