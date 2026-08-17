inline.NumInlined: 318
inline.NumDeleted: 102
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_PyCfg_OptimizeCodeUnit:bb.a
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @translate_jump_labels_to_targets(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %.not8.i = icmp eq ptr %0, null                 ; 2 uses
  br i1 %.not8.i, label %get_max_label.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.010.i = phi ptr [ %i.d, %.lr.ph.i ], [ %0, %bb.a ] ; 2 uses
  %.069.i = phi i32 [ %spec.select.i, %.lr.ph.i ], [ -1, %bb.a ]
  %i.a = getelementptr i8, ptr %.010.i, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !35
  %spec.select.i = tail call i32 @llvm.smax.i32(i32 %i.b, i32 %.069.i) ; 2 uses
  %i.c = getelementptr i8, ptr %.010.i, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !36   ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %get_max_label.exit.loopexit, label %.lr.ph.i, !llvm.loop !137

get_max_label.exit.loopexit:                      ; preds = %.lr.ph.i
  %i.e = add i32 %spec.select.i, 1
  %i.f = sext i32 %i.e to i64
  %i.g = shl nsw i64 %i.f, 3
  br label %get_max_label.exit

get_max_label.exit:                               ; preds = %get_max_label.exit.loopexit, %bb.a
  %.06.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.g, %get_max_label.exit.loopexit ] ; 2 uses
  %i.h = tail call ptr @PyMem_Malloc(i64 noundef %.06.lcssa.i) #8 ; 5 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %get_max_label.exit
  %i.i = tail call ptr @PyErr_NoMemory() #8       ; 0 uses
  br label %bb.i

bb.c:                                             ; preds = %get_max_label.exit
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.h, i8 0, i64 %.06.lcssa.i, i1 false)
  br i1 %.not8.i, label %._crit_edge50, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.e
  %.03245 = phi ptr [ %i.p, %bb.e ], [ %0, %bb.c ] ; 3 uses
  %i.j = getelementptr i8, ptr %.03245, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !35   ; 2 uses
  %i.l = icmp sgt i32 %i.k, -1
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.m = zext nneg i32 %i.k to i64
  %i.n = getelementptr [8 x i8], ptr %i.h, i64 %i.m
  store ptr %.03245, ptr %i.n, align 8, !tbaa !26
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %i.o = getelementptr i8, ptr %.03245, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !36   ; 2 uses
  %.not36 = icmp eq ptr %i.p, null
  br i1 %.not36, label %.preheader, label %.lr.ph, !llvm.loop !142

.preheader:                                       ; preds = %bb.e, %._crit_edge
  %.03149 = phi ptr [ %i.w, %._crit_edge ], [ %0, %bb.e ] ; 3 uses
  %i.q = getelementptr i8, ptr %.03149, i64 40
  %i.r = load i32, ptr %i.q, align 8, !tbaa !28   ; 2 uses
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.lr.ph47, label %._crit_edge

.lr.ph47:                                         ; preds = %.preheader
  %i.t = getelementptr i8, ptr %.03149, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !23
  %wide.trip.count = zext nneg i32 %i.r to i64
  br label %bb.f

._crit_edge50:                                    ; preds = %._crit_edge, %bb.c
  tail call void @PyMem_Free(ptr noundef nonnull %i.h) #8
  br label %bb.i

._crit_edge:                                      ; preds = %bb.h, %.preheader
  %i.v = getelementptr i8, ptr %.03149, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !36   ; 2 uses
  %.not37 = icmp eq ptr %i.w, null
  br i1 %.not37, label %._crit_edge50, label %.preheader, !llvm.loop !143

bb.f:                                             ; preds = %.lr.ph47, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph47 ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %i.x = getelementptr [40 x i8], ptr %i.u, i64 %indvars.iv ; 3 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !29   ; 2 uses
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr [8 x i8], ptr @_PyOpcode_opcode_metadata, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !32
  %.fr42 = freeze i32 %i.ac
  %i.ad = and i32 %.fr42, 8
  %.not38 = icmp ne i32 %i.ad, 0
  %i.ae = add i32 %i.y, -263
  %i.af = icmp ult i32 %i.ae, 3
  %or.cond = or i1 %i.af, %.not38
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr i8, ptr %i.x, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !43
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr [8 x i8], ptr %i.h, i64 %i.ai
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !26
  %i.al = getelementptr i8, ptr %i.x, i64 24
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !45
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.f, !llvm.loop !144

bb.i:                                             ; preds = %._crit_edge50, %bb.b
  %.0 = phi i32 [ 0, %._crit_edge50 ], [ -1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @label_exception_targets(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %.not9.i = icmp eq ptr %0, null
  br i1 %.not9.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %i.a = sext i32 %i.g to i64
  %i.b = shl nsw i64 %i.a, 3
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.a
  %.0.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.b, %._crit_edge.loopexit.i ]
  %i.c = tail call ptr @PyMem_Malloc(i64 noundef %.0.lcssa.i) #8 ; 8 uses
  %.not8.i = icmp eq ptr %i.c, null
  br i1 %.not8.i, label %make_cfg_traversal_stack.exit.thread, label %make_cfg_traversal_stack.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.011.i = phi i32 [ %i.g, %.lr.ph.i ], [ 0, %bb.a ]
  %.0710.i = phi ptr [ %i.i, %.lr.ph.i ], [ %0, %bb.a ] ; 2 uses
  %i.d = getelementptr i8, ptr %.0710.i, i64 64   ; 2 uses
  %i.e = load i8, ptr %i.d, align 8
  %i.f = and i8 %i.e, -3
  store i8 %i.f, ptr %i.d, align 8
  %i.g = add i32 %.011.i, 1                       ; 2 uses
  %i.h = getelementptr i8, ptr %.0710.i, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !36   ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !122

make_cfg_traversal_stack.exit.thread:             ; preds = %._crit_edge.i
  %i.j = tail call ptr @PyErr_NoMemory() #8       ; 0 uses
  br label %bb.ab

make_cfg_traversal_stack.exit:                    ; preds = %._crit_edge.i
  %i.k = tail call ptr @PyMem_Malloc(i64 noundef 192) #8 ; 4 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %make_cfg_traversal_stack.exit
  %i.m = tail call ptr @PyErr_NoMemory() #8       ; 0 uses
  tail call void @PyMem_Free(ptr noundef nonnull %i.c) #8
  %i.n = tail call ptr @PyErr_NoMemory() #8       ; 0 uses
  br label %bb.ab

bb.c:                                             ; preds = %make_cfg_traversal_stack.exit
  %i.o = getelementptr i8, ptr %i.k, i64 184
  store ptr null, ptr %i.k, align 8, !tbaa !26
  store i32 0, ptr %i.o, align 8, !tbaa !145
  store ptr %0, ptr %i.c, align 8, !tbaa !26
  %i.p = getelementptr i8, ptr %0, i64 64         ; 2 uses
  %i.q = load i8, ptr %i.p, align 8
  %i.r = or i8 %i.q, 2
  store i8 %i.r, ptr %i.p, align 8
  %i.s = getelementptr i8, ptr %0, i64 16
  store ptr %i.k, ptr %i.s, align 8, !tbaa !147
  %i.t = getelementptr i8, ptr %i.c, i64 8        ; 2 uses
  %i.u = icmp ugt ptr %i.t, %i.c
  br i1 %i.u, label %.lr.ph186, label %._crit_edge187

.lr.ph186:                                        ; preds = %bb.c, %bb.aa
  %.098184 = phi ptr [ %.8, %bb.aa ], [ %i.t, %bb.c ]
  %i.v = getelementptr i8, ptr %.098184, i64 -8   ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !26   ; 5 uses
  %i.x = getelementptr i8, ptr %i.w, i64 16       ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !147  ; 4 uses
  store ptr null, ptr %i.x, align 8, !tbaa !147
  %i.z = getelementptr i8, ptr %i.w, i64 40       ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !28  ; 2 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.lr.ph, label %basicblock_nofallthrough.exit133.thread

.lr.ph:                                           ; preds = %.lr.ph186
  %i.ac = getelementptr i8, ptr %i.y, i64 184
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !145
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr [8 x i8], ptr %i.y, i64 %i.ae
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !26
  %i.ah = getelementptr i8, ptr %i.w, i64 24
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.w
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.w ] ; 2 uses
  %i.ai = phi i32 [ %i.aa, %.lr.ph ], [ %i.ct, %bb.w ] ; 2 uses
  %.093182 = phi ptr [ %i.y, %.lr.ph ], [ %.396.ph, %bb.w ] ; 26 uses
  %.199181 = phi ptr [ %i.v, %.lr.ph ], [ %.5.ph, %bb.w ] ; 13 uses
  %.0104179 = phi i32 [ -1, %.lr.ph ], [ %.2106.ph, %bb.w ] ; 8 uses
  %.0107178 = phi ptr [ %i.ag, %.lr.ph ], [ %.2109.ph, %bb.w ] ; 12 uses
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !23 ; 2 uses
  %i.ak = getelementptr [40 x i8], ptr %i.aj, i64 %indvars.iv ; 8 uses
  %.val = load i32, ptr %i.ak, align 8, !tbaa !29 ; 5 uses
  %i.al = add i32 %.val, -266
  %narrow.i = icmp ult i32 %i.al, -3
  br i1 %narrow.i, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.am = getelementptr i8, ptr %i.ak, i64 24     ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !45 ; 2 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 64
  %i.ap = load i8, ptr %i.ao, align 8
  %i.aq = and i8 %i.ap, 2
  %.not121 = icmp eq i8 %i.aq, 0
  br i1 %.not121, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ar = tail call ptr @PyMem_Malloc(i64 noundef 192) #8 ; 3 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.ar, ptr noundef nonnull readonly align 8 dereferenceable(192) %.093182, i64 192, i1 false)
  %i.at = load ptr, ptr %i.am, align 8, !tbaa !45 ; 3 uses
  %i.au = getelementptr i8, ptr %i.at, i64 16
  store ptr %i.ar, ptr %i.au, align 8, !tbaa !147
  store ptr %i.at, ptr %.199181, align 8, !tbaa !26
  %i.av = getelementptr i8, ptr %i.at, i64 64     ; 2 uses
  %i.aw = load i8, ptr %i.av, align 8
  %i.ax = or i8 %i.aw, 2
  store i8 %i.ax, ptr %i.av, align 8
  %i.ay = getelementptr i8, ptr %.199181, i64 8
  %.val126.pre = load i32, ptr %i.ak, align 8, !tbaa !29
  %.val127.pre = load ptr, ptr %i.am, align 8, !tbaa !45
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %.val127 = phi ptr [ %i.an, %bb.e ], [ %.val127.pre, %bb.g ] ; 3 uses
  %.val126 = phi i32 [ %.val, %bb.e ], [ %.val126.pre, %bb.g ]
  %.3101 = phi ptr [ %.199181, %bb.e ], [ %i.ay, %bb.g ]
  switch i32 %.val126, label %push_except_block.exit [
    i32 265, label %bb.i
    i32 263, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h
  %i.az = getelementptr i8, ptr %.val127, i64 64  ; 2 uses
  %i.ba = load i8, ptr %i.az, align 8
  %i.bb = or i8 %i.ba, 1
  store i8 %i.bb, ptr %i.az, align 8
  br label %push_except_block.exit

push_except_block.exit:                           ; preds = %bb.h, %bb.i
  %i.bc = getelementptr i8, ptr %.093182, i64 184 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !145
  %i.be = add i32 %i.bd, 1                        ; 2 uses
  store i32 %i.be, ptr %i.bc, align 8, !tbaa !145
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr [8 x i8], ptr %.093182, i64 %i.bf
  store ptr %.val127, ptr %i.bg, align 8, !tbaa !26
  br label %bb.w

bb.j:                                             ; preds = %bb.d
  %i.bh = icmp eq i32 %.val, 262
  br i1 %i.bh, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bi = getelementptr i8, ptr %.093182, i64 184 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !145
  %i.bk = add i32 %i.bj, -1                       ; 2 uses
  store i32 %i.bk, ptr %i.bi, align 8, !tbaa !145
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr [8 x i8], ptr %.093182, i64 %i.bl
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !26
  store i32 27, ptr %i.ak, align 8, !tbaa !29
  %i.bo = getelementptr i8, ptr %i.ak, i64 4
  store i32 0, ptr %i.bo, align 4, !tbaa !43
  br label %bb.w

bb.l:                                             ; preds = %bb.j
  %i.bp = sext i32 %.val to i64
  %i.bq = getelementptr [8 x i8], ptr @_PyOpcode_opcode_metadata, i64 %i.bp
  %i.br = getelementptr i8, ptr %i.bq, i64 4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !32
  %i.bt = and i32 %i.bs, 8
  %.not116 = icmp eq i32 %i.bt, 0
  %i.bu = getelementptr i8, ptr %i.ak, i64 32     ; 5 uses
  br i1 %.not116, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  store ptr %.0107178, ptr %i.bu, align 8, !tbaa !148
  %i.bv = getelementptr i8, ptr %i.ak, i64 24     ; 3 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !45 ; 9 uses
  %i.bx = getelementptr i8, ptr %i.bw, i64 64
  %i.by = load i8, ptr %i.bx, align 8
  %i.bz = and i8 %i.by, 2
  %.not118 = icmp eq i8 %i.bz, 0
  br i1 %.not118, label %1, label %bb.w

1:                                                ; preds = %bb.m
  %2 = icmp sgt i32 %i.ai, 0
  br i1 %2, label %basicblock_last_instr.exit.i, label %basicblock_nofallthrough.exit.thread

basicblock_last_instr.exit.i:                     ; preds = %1
  %i.ca = zext nneg i32 %i.ai to i64
  %i.cb = getelementptr [40 x i8], ptr %i.aj, i64 %i.ca
  %i.cc = getelementptr i8, ptr %i.cb, i64 -40    ; 2 uses
  %.not.i129 = icmp eq ptr %i.cc, null
  br i1 %.not.i129, label %basicblock_nofallthrough.exit.thread, label %bb.n

bb.n:                                             ; preds = %basicblock_last_instr.exit.i
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !29
  switch i32 %i.cd, label %basicblock_nofallthrough.exit.thread [
    i32 35, label %basicblock_nofallthrough.exit.thread138
    i32 104, label %basicblock_nofallthrough.exit.thread138
    i32 105, label %basicblock_nofallthrough.exit.thread138
    i32 257, label %basicblock_nofallthrough.exit.thread138
    i32 260, label %basicblock_nofallthrough.exit.thread138
    i32 77, label %basicblock_nofallthrough.exit.thread138
    i32 75, label %basicblock_nofallthrough.exit.thread138
    i32 76, label %basicblock_nofallthrough.exit.thread138
  ]

basicblock_nofallthrough.exit.thread:             ; preds = %bb.n, %1, %basicblock_last_instr.exit.i
  %i.ce = tail call ptr @PyMem_Malloc(i64 noundef 192) #8 ; 3 uses
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %.thread, label %bb.o

bb.o:                                             ; preds = %basicblock_nofallthrough.exit.thread
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.ce, ptr noundef nonnull readonly align 8 dereferenceable(192) %.093182, i64 192, i1 false)
  %i.cg = load ptr, ptr %i.bv, align 8, !tbaa !45
  br label %basicblock_nofallthrough.exit.thread138

basicblock_nofallthrough.exit.thread138:          ; preds = %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.o
  %.sink216 = phi ptr [ %i.cg, %bb.o ], [ %i.bw, %bb.n ], [ %i.bw, %bb.n ], [ %i.bw, %bb.n ], [ %i.bw, %bb.n ], [ %i.bw, %bb.n ], [ %i.bw, %bb.n ], [ %i.bw, %bb.n ], [ %i.bw, %bb.n ] ; 2 uses
  %.sink = phi ptr [ %i.ce, %bb.o ], [ %.093182, %bb.n ], [ %.093182, %bb.n ], [ %.093182, %bb.n ], [ %.093182, %bb.n ], [ %.093182, %bb.n ], [ %.093182, %bb.n ], [ %.093182, %bb.n ], [ %.093182, %bb.n ]
  %.194 = phi ptr [ %.093182, %bb.o ], [ null, %bb.n ], [ null, %bb.n ], [ null, %bb.n ], [ null, %bb.n ], [ null, %bb.n ], [ null, %bb.n ], [ null, %bb.n ], [ null, %bb.n ]
  %i.ch = getelementptr i8, ptr %.sink216, i64 16
  store ptr %.sink, ptr %i.ch, align 8, !tbaa !147
  store ptr %.sink216, ptr %.199181, align 8, !tbaa !26
  %i.ci = load ptr, ptr %i.bv, align 8, !tbaa !45
  %i.cj = getelementptr i8, ptr %i.ci, i64 64     ; 2 uses
  %i.ck = load i8, ptr %i.cj, align 8
  %i.cl = or i8 %i.ck, 2
  store i8 %i.cl, ptr %i.cj, align 8
  %i.cm = getelementptr i8, ptr %.199181, i64 8
  br label %bb.w

bb.p:                                             ; preds = %bb.l
  switch i32 %.val, label %bb.v [
    i32 120, label %bb.q
    i32 128, label %bb.r
    i32 34, label %bb.u
  ]

bb.q:                                             ; preds = %bb.p
  store ptr %.0107178, ptr %i.bu, align 8, !tbaa !148
  %i.cn = getelementptr i8, ptr %.093182, i64 184
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !145
  br label %bb.w

bb.r:                                             ; preds = %bb.p
  store ptr %.0107178, ptr %i.bu, align 8, !tbaa !148
  %i.cp = getelementptr i8, ptr %i.ak, i64 4      ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !43 ; 2 uses
  %.not117 = icmp eq i32 %i.cq, 0
  br i1 %.not117, label %bb.w, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cr = icmp eq i32 %.0104179, 1
  br i1 %i.cr, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.cs = or i32 %i.cq, 4
  store i32 %i.cs, ptr %i.cp, align 4, !tbaa !43
  br label %bb.w

bb.u:                                             ; preds = %bb.p
  store ptr null, ptr %i.bu, align 8, !tbaa !148
  br label %bb.w

bb.v:                                             ; preds = %bb.p
  store ptr %.0107178, ptr %i.bu, align 8, !tbaa !148
  br label %bb.w

bb.w:                                             ; preds = %bb.s, %bb.t, %bb.k, %bb.q, %bb.u, %bb.v, %bb.r, %bb.m, %basicblock_nofallthrough.exit.thread138, %push_except_block.exit
  %.2109.ph = phi ptr [ %.0107178, %bb.s ], [ %.0107178, %bb.t ], [ %.0107178, %bb.u ], [ %.0107178, %bb.r ], [ %.0107178, %bb.v ], [ %.0107178, %bb.q ], [ %.0107178, %basicblock_nofallthrough.exit.thread138 ], [ %.0107178, %bb.m ], [ %i.bn, %bb.k ], [ %.val127, %push_except_block.exit ]
  %.2106.ph = phi i32 [ -1, %bb.s ], [ -1, %bb.t ], [ %.0104179, %bb.u ], [ %.0104179, %bb.r ], [ %.0104179, %bb.v ], [ %i.co, %bb.q ], [ %.0104179, %basicblock_nofallthrough.exit.thread138 ], [ %.0104179, %bb.m ], [ %.0104179, %bb.k ], [ %.0104179, %push_except_block.exit ]
  %.5.ph = phi ptr [ %.199181, %bb.s ], [ %.199181, %bb.t ], [ %.199181, %bb.u ], [ %.199181, %bb.r ], [ %.199181, %bb.v ], [ %.199181, %bb.q ], [ %i.cm, %basicblock_nofallthrough.exit.thread138 ], [ %.199181, %bb.m ], [ %.199181, %bb.k ], [ %.3101, %push_except_block.exit ] ; 12 uses
  %.396.ph = phi ptr [ %.093182, %bb.s ], [ %.093182, %bb.t ], [ %.093182, %bb.u ], [ %.093182, %bb.r ], [ %.093182, %bb.v ], [ %.093182, %bb.q ], [ %.194, %basicblock_nofallthrough.exit.thread138 ], [ %.093182, %bb.m ], [ %.093182, %bb.k ], [ %.093182, %push_except_block.exit ] ; 12 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ct = load i32, ptr %i.z, align 8, !tbaa !28  ; 4 uses
  %i.cu = sext i32 %i.ct to i64
  %i.cv = icmp slt i64 %indvars.iv.next, %i.cu
  br i1 %i.cv, label %bb.d, label %._crit_edge, !llvm.loop !149

._crit_edge:                                      ; preds = %bb.w
  %i.cw = icmp sgt i32 %i.ct, 0
  br i1 %i.cw, label %basicblock_last_instr.exit.i131, label %basicblock_nofallthrough.exit133.thread

basicblock_last_instr.exit.i131:                  ; preds = %._crit_edge
  %i.cx = getelementptr i8, ptr %i.w, i64 24
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !23
  %i.cz = zext nneg i32 %i.ct to i64
  %i.da = getelementptr [40 x i8], ptr %i.cy, i64 %i.cz
  %i.db = getelementptr i8, ptr %i.da, i64 -40    ; 2 uses
  %.not.i132 = icmp eq ptr %i.db, null
  br i1 %.not.i132, label %basicblock_nofallthrough.exit133.thread, label %bb.x

bb.x:                                             ; preds = %basicblock_last_instr.exit.i131
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !29
  switch i32 %i.dc, label %basicblock_nofallthrough.exit133.thread [
    i32 35, label %basicblock_nofallthrough.exit133.thread162
    i32 104, label %basicblock_nofallthrough.exit133.thread162
    i32 105, label %basicblock_nofallthrough.exit133.thread162
    i32 257, label %basicblock_nofallthrough.exit133.thread162
    i32 260, label %basicblock_nofallthrough.exit133.thread162
    i32 77, label %basicblock_nofallthrough.exit133.thread162
    i32 75, label %basicblock_nofallthrough.exit133.thread162
    i32 76, label %basicblock_nofallthrough.exit133.thread162
  ]

basicblock_nofallthrough.exit133.thread:          ; preds = %.lr.ph186, %bb.x, %._crit_edge, %basicblock_last_instr.exit.i131
  %.093.lcssa210 = phi ptr [ %.396.ph, %basicblock_last_instr.exit.i131 ], [ %.396.ph, %bb.x ], [ %.396.ph, %._crit_edge ], [ %i.y, %.lr.ph186 ] ; 2 uses
  %.199.lcssa207.a = phi ptr [ %.5.ph, %basicblock_last_instr.exit.i131 ], [ %.5.ph, %bb.x ], [ %.5.ph, %._crit_edge ], [ %i.v, %.lr.ph186 ] ; 3 uses
  %i.dd = getelementptr i8, ptr %i.w, i64 32      ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !36 ; 3 uses
  %i.df = getelementptr i8, ptr %i.de, i64 64
  %i.dg = load i8, ptr %i.df, align 8
  %i.dh = and i8 %i.dg, 2
  %.not124 = icmp eq i8 %i.dh, 0
  br i1 %.not124, label %bb.y, label %basicblock_nofallthrough.exit133.thread162

bb.y:                                             ; preds = %basicblock_nofallthrough.exit133.thread
  %i.di = getelementptr i8, ptr %i.de, i64 16
  store ptr %.093.lcssa210, ptr %i.di, align 8, !tbaa !147
  store ptr %i.de, ptr %.199.lcssa207.a, align 8, !tbaa !26
  %i.dj = load ptr, ptr %i.dd, align 8, !tbaa !36
  %i.dk = getelementptr i8, ptr %i.dj, i64 64     ; 2 uses
  %i.dl = load i8, ptr %i.dk, align 8
  %i.dm = or i8 %i.dl, 2
  store i8 %i.dm, ptr %i.dk, align 8
  %i.dn = getelementptr i8, ptr %.199.lcssa207.a, i64 8
  br label %bb.aa

basicblock_nofallthrough.exit133.thread162:       ; preds = %bb.x, %bb.x, %bb.x, %bb.x, %bb.x, %bb.x, %bb.x, %bb.x, %basicblock_nofallthrough.exit133.thread
  %.093.lcssa209 = phi ptr [ %.396.ph, %bb.x ], [ %.396.ph, %bb.x ], [ %.396.ph, %bb.x ], [ %.396.ph, %bb.x ], [ %.396.ph, %bb.x ], [ %.396.ph, %bb.x ], [ %.396.ph, %bb.x ], [ %.396.ph, %bb.x ], [ %.093.lcssa210, %basicblock_nofallthrough.exit133.thread ] ; 2 uses
  %.199.lcssa208 = phi ptr [ %.5.ph, %bb.x ], [ %.5.ph, %bb.x ], [ %.5.ph, %bb.x ], [ %.5.ph, %bb.x ], [ %.5.ph, %bb.x ], [ %.5.ph, %bb.x ], [ %.5.ph, %bb.x ], [ %.5.ph, %bb.x ], [ %.199.lcssa207.a, %basicblock_nofallthrough.exit133.thread ] ; 2 uses
  %.not125 = icmp eq ptr %.093.lcssa209, null
  br i1 %.not125, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %basicblock_nofallthrough.exit133.thread162
  tail call void @PyMem_Free(ptr noundef nonnull %.093.lcssa209) #8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z, %basicblock_nofallthrough.exit133.thread162
  %.8 = phi ptr [ %i.dn, %bb.y ], [ %.199.lcssa208, %bb.z ], [ %.199.lcssa208, %basicblock_nofallthrough.exit133.thread162 ] ; 2 uses
  %i.do = icmp ugt ptr %.8, %i.c
  br i1 %i.do, label %.lr.ph186, label %._crit_edge187

._crit_edge187:                                   ; preds = %bb.aa, %bb.c
  tail call void @PyMem_Free(ptr noundef nonnull %i.c) #8
  br label %bb.ab

.thread:                                          ; preds = %basicblock_nofallthrough.exit.thread, %bb.f
  %i.dp = tail call ptr @PyErr_NoMemory() #8      ; 0 uses
  tail call void @PyMem_Free(ptr noundef nonnull %i.c) #8
  tail call void @PyMem_Free(ptr noundef %.093182) #8
  br label %bb.ab

bb.ab:                                            ; preds = %make_cfg_traversal_stack.exit.thread, %bb.b, %.thread, %._crit_edge187
  %.2 = phi i32 [ -1, %make_cfg_traversal_stack.exit.thread ], [ -1, %bb.b ], [ 0, %._crit_edge187 ], [ -1, %.thread ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @resolve_line_numbers(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct._Py_c_array_t, align 8      ; 11 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !21     ; 4 uses
  %.not8.i.i = icmp eq ptr %i.a, null
  br i1 %.not8.i.i, label %propagate_line_numbers.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.e, %.lr.ph.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %.069.i.i = phi i32 [ %spec.select.i.i, %.lr.ph.i.i ], [ -1, %bb.a ]
  %i.b = getelementptr i8, ptr %.010.i.i, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !35
  %spec.select.i.i = tail call i32 @llvm.smax.i32(i32 %i.c, i32 %.069.i.i) ; 2 uses
  %i.d = getelementptr i8, ptr %.010.i.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !36   ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %.lr.ph.i, label %.lr.ph.i.i, !llvm.loop !137

.lr.ph.i:                                         ; preds = %.lr.ph.i.i
  %i.f = add i32 %spec.select.i.i, 1
  %i.g = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 28
  br label %bb.b

bb.b:                                             ; preds = %basicblock_last_instr.exit.thread.i, %.lr.ph.i
  %.043122.i = phi i32 [ %i.f, %.lr.ph.i ], [ %.548.ph.i, %basicblock_last_instr.exit.thread.i ] ; 9 uses
  %.049121.i = phi ptr [ %i.a, %.lr.ph.i ], [ %i.co, %basicblock_last_instr.exit.thread.i ] ; 3 uses
  %i.m = getelementptr i8, ptr %.049121.i, i64 40
  %i.n = load i32, ptr %i.m, align 8, !tbaa !28   ; 2 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %basicblock_last_instr.exit.i, label %basicblock_last_instr.exit.thread.i

basicblock_last_instr.exit.i:                     ; preds = %bb.b
  %i.p = getelementptr i8, ptr %.049121.i, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !23
  %i.r = zext nneg i32 %i.n to i64
  %i.s = getelementptr [40 x i8], ptr %i.q, i64 %i.r ; 3 uses
  %i.t = getelementptr i8, ptr %i.s, i64 -40      ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %basicblock_last_instr.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %basicblock_last_instr.exit.i
  %.val.i = load i32, ptr %i.t, align 8, !tbaa !29
  %i.v = sext i32 %.val.i to i64
end_hunk_0
