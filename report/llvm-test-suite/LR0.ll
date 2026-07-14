inline.NumInlined: 12
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@allocate_storage:bb.a
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv.next.i.2
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !11
  %i.as = sext i16 %i.ar to i32
  %i.at = add nsw i32 %i.am, %i.as                ; 2 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %allocate_itemsets.exit.loopexit.unr-lcssa, label %bb.d, !llvm.loop !18

allocate_itemsets.exit.loopexit.unr-lcssa:        ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %allocate_itemsets.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %allocate_itemsets.exit.loopexit.unr-lcssa, %.lr.ph38.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph38.i ], [ %indvars.iv.next.i.3, %allocate_itemsets.exit.loopexit.unr-lcssa ]
  %.235.i.epil.init = phi i32 [ 0, %.lr.ph38.i ], [ %i.at, %allocate_itemsets.exit.loopexit.unr-lcssa ]
  %lcmp.mod1 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod1)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.e ] ; 3 uses
  %.235.i.epil = phi i32 [ %.235.i.epil.init, %.epil.preheader ], [ %i.ba, %bb.e ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.e ]
  %i.au = sext i32 %.235.i.epil to i64
  %i.av = getelementptr inbounds [2 x i8], ptr %i.n, i64 %i.au
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.i.epil
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !8
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv.i.epil
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !11
  %i.az = sext i16 %i.ay to i32
  %i.ba = add nsw i32 %.235.i.epil, %i.az
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %allocate_itemsets.exit, label %bb.e, !llvm.loop !21

allocate_itemsets.exit:                           ; preds = %allocate_itemsets.exit.loopexit.unr-lcssa, %bb.e, %._crit_edge.i
  store ptr %i.c, ptr @shift_symbol, align 8, !tbaa !8
  %i.bb = shl i32 %i.o, 3
  %i.bc = tail call ptr (i32, ...) @mallocate(i32 noundef %i.bb) #8
  store ptr %i.bc, ptr @kernel_end, align 8, !tbaa !15
  %i.bd = load i32, ptr @nsyms, align 4, !tbaa !4
  %i.be = shl i32 %i.bd, 1
  %i.bf = tail call ptr (i32, ...) @mallocate(i32 noundef %i.be) #8
  store ptr %i.bf, ptr @shiftset, align 8, !tbaa !8
  %i.bg = load i32, ptr @nrules, align 4, !tbaa !4
  %i.bh = shl i32 %i.bg, 1
  %i.bi = add i32 %i.bh, 2
  %i.bj = tail call ptr (i32, ...) @mallocate(i32 noundef %i.bi) #8
  store ptr %i.bj, ptr @redset, align 8, !tbaa !8
  %i.bk = tail call ptr (i32, ...) @mallocate(i32 noundef 8072) #8
  store ptr %i.bk, ptr @state_table, align 8, !tbaa !22
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define dso_local void @free_storage() local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr @shift_symbol, align 8, !tbaa !8 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.a) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = load ptr, ptr @redset, align 8, !tbaa !8 ; 2 uses
  %.not7 = icmp eq ptr %i.b, null
  br i1 %.not7, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.b) #8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.c = load ptr, ptr @shiftset, align 8, !tbaa !8 ; 2 uses
  %.not8 = icmp eq ptr %i.c, null
  br i1 %.not8, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %i.c) #8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.d = load ptr, ptr @kernel_base, align 8, !tbaa !15 ; 2 uses
  %.not9 = icmp eq ptr %i.d, null
  br i1 %.not9, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @free(ptr noundef nonnull %i.d) #8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.e = load ptr, ptr @kernel_end, align 8, !tbaa !15 ; 2 uses
  %.not10 = icmp eq ptr %i.e, null
  br i1 %.not10, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @free(ptr noundef nonnull %i.e) #8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.f = load ptr, ptr @kernel_items, align 8, !tbaa !8 ; 2 uses
  %.not11 = icmp eq ptr %i.f, null
  br i1 %.not11, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @free(ptr noundef nonnull %i.f) #8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.g = load ptr, ptr @state_table, align 8, !tbaa !22 ; 2 uses
  %.not12 = icmp eq ptr %i.g, null
  br i1 %.not12, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @free(ptr noundef nonnull %i.g) #8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @generate_states() local_unnamed_addr #0 {
bb.a:
  tail call void @allocate_storage()
  %i.a = load i32, ptr @nitems, align 4, !tbaa !4
  tail call void @initialize_closure(i32 noundef %i.a) #8
  %i.b = tail call ptr (i32, ...) @mallocate(i32 noundef 22) #8 ; 5 uses
  store ptr %i.b, ptr @this_state, align 8, !tbaa !24
  store ptr %i.b, ptr @last_state, align 8, !tbaa !24
  store ptr %i.b, ptr @first_state, align 8, !tbaa !24
  store i32 1, ptr @nstates, align 4, !tbaa !4
  %.not26 = icmp eq ptr %i.b, null
  br i1 %.not26, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %append_states.exit.thread71
  %i.c = phi ptr [ %i.lb, %append_states.exit.thread71 ], [ %i.b, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 22
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.f = load i16, ptr %i.e, align 4, !tbaa !26
  %i.g = sext i16 %i.f to i32
  tail call void @closure(ptr noundef nonnull %i.d, i32 noundef %i.g) #8
  %i.h = load ptr, ptr @itemset, align 8, !tbaa !8 ; 2 uses
  %i.i = load ptr, ptr @itemsetend, align 8, !tbaa !8 ; 2 uses
  %i.j = icmp ult ptr %i.h, %i.i
  br i1 %i.j, label %.lr.ph.i, label %save_reductions.exit

.lr.ph.i:                                         ; preds = %.lr.ph
  %i.k = load ptr, ptr @ritem, align 8, !tbaa !8
  %i.l = load ptr, ptr @redset, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %.028.i = phi ptr [ %i.h, %.lr.ph.i ], [ %i.v, %bb.d ] ; 2 uses
  %.02227.i = phi i32 [ 0, %.lr.ph.i ], [ %.1.i, %bb.d ] ; 3 uses
  %i.m = load i16, ptr %.028.i, align 2, !tbaa !11
  %i.n = sext i16 %i.m to i64
  %i.o = getelementptr inbounds [2 x i8], ptr %i.k, i64 %i.n
  %i.p = load i16, ptr %i.o, align 2, !tbaa !11   ; 2 uses
  %i.q = icmp slt i16 %i.p, 0
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = sub i16 0, %i.p
  %i.s = add nsw i32 %.02227.i, 1
  %i.t = sext i32 %.02227.i to i64
  %i.u = getelementptr inbounds [2 x i8], ptr %i.l, i64 %i.t
  store i16 %i.r, ptr %i.u, align 2, !tbaa !11
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1.i = phi i32 [ %i.s, %bb.c ], [ %.02227.i, %bb.b ] ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.028.i, i64 2 ; 2 uses
  %i.w = icmp ult ptr %i.v, %i.i
  br i1 %i.w, label %bb.b, label %._crit_edge.i, !llvm.loop !28

._crit_edge.i:                                    ; preds = %bb.d
  %.not.i = icmp eq i32 %.1.i, 0
  br i1 %.not.i, label %save_reductions.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i
  %i.x = shl i32 %.1.i, 1
  %i.y = add i32 %i.x, 14
  %i.z = tail call ptr (i32, ...) @mallocate(i32 noundef %i.y) #8 ; 6 uses
  %i.aa = ptrtoaddr ptr %i.z to i64
  %i.ab = load ptr, ptr @this_state, align 8, !tbaa !24
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load i16, ptr %i.ac, align 8, !tbaa !29
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i16 %i.ad, ptr %i.ae, align 8, !tbaa !30
  %i.af = trunc i32 %.1.i to i16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 10
  store i16 %i.af, ptr %i.ag, align 2, !tbaa !33
  %i.ah = load ptr, ptr @redset, align 8, !tbaa !8 ; 8 uses
  %i.ai = ptrtoaddr ptr %i.ah to i64              ; 4 uses
  %i.aj = sext i32 %.1.i to i64
  %.idx.i = shl nsw i64 %i.aj, 1                  ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %i.ah, i64 %.idx.i
  %i.al = icmp sgt i32 %.1.i, 0
  br i1 %i.al, label %iter.check205, label %._crit_edge33.i

iter.check205:                                    ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %i.z, i64 12 ; 6 uses
  %i.an = xor i64 %i.ai, -1
  %i.ao = add i64 %.idx.i, %i.ai
  %i.ap = add i64 %i.ai, 2
  %umax185 = tail call i64 @llvm.umax.i64(i64 %i.ao, i64 %i.ap)
  %i.aq = add i64 %umax185, %i.an                 ; 3 uses
  %i.ar = lshr i64 %i.aq, 1
  %i.as = add nuw i64 %i.ar, 1                    ; 5 uses
  %min.iters.check187 = icmp ult i64 %i.aq, 6
  br i1 %min.iters.check187, label %.lr.ph32.i.preheader, label %vector.memcheck183

vector.memcheck183:                               ; preds = %iter.check205
  %i.at = sub i64 %i.aa, %i.ai
  %i.au = add i64 %i.at, 11
  %diff.check184 = icmp ult i64 %i.au, 31
  br i1 %diff.check184, label %.lr.ph32.i.preheader, label %vector.main.loop.iter.check188

vector.main.loop.iter.check188:                   ; preds = %vector.memcheck183
  %min.iters.check189 = icmp ult i64 %i.aq, 30
  br i1 %min.iters.check189, label %vec.epilog.ph209, label %vector.ph190

vector.ph190:                                     ; preds = %vector.main.loop.iter.check188
  %n.mod.vf191 = and i64 %i.as, 12
  %n.vec192 = and i64 %i.as, -16                  ; 4 uses
  %i.av = shl i64 %n.vec192, 1                    ; 2 uses
  %i.aw = getelementptr i8, ptr %i.ah, i64 %i.av
  %i.ax = getelementptr i8, ptr %i.am, i64 %i.av
  br label %vector.body193

vector.body193:                                   ; preds = %vector.body193, %vector.ph190
  %index194 = phi i64 [ 0, %vector.ph190 ], [ %index.next199, %vector.body193 ] ; 2 uses
  %i.ay = shl i64 %index194, 1                    ; 2 uses
  %next.gep195 = getelementptr i8, ptr %i.ah, i64 %i.ay ; 2 uses
  %next.gep196 = getelementptr i8, ptr %i.am, i64 %i.ay ; 2 uses
  %i.az = getelementptr i8, ptr %next.gep195, i64 16
  %wide.load197 = load <8 x i16>, ptr %next.gep195, align 2, !tbaa !11
  %wide.load198 = load <8 x i16>, ptr %i.az, align 2, !tbaa !11
  %i.ba = getelementptr i8, ptr %next.gep196, i64 16
  store <8 x i16> %wide.load197, ptr %next.gep196, align 2, !tbaa !11
  store <8 x i16> %wide.load198, ptr %i.ba, align 2, !tbaa !11
  %index.next199 = add nuw i64 %index194, 16      ; 2 uses
  %i.bb = icmp eq i64 %index.next199, %n.vec192
  br i1 %i.bb, label %middle.block200, label %vector.body193, !llvm.loop !34

middle.block200:                                  ; preds = %vector.body193
  %cmp.n201 = icmp eq i64 %i.as, %n.vec192
  br i1 %cmp.n201, label %._crit_edge33.i, label %vec.epilog.iter.check207

vec.epilog.iter.check207:                         ; preds = %middle.block200
  %min.epilog.iters.check208 = icmp eq i64 %n.mod.vf191, 0
  br i1 %min.epilog.iters.check208, label %.lr.ph32.i.preheader, label %vec.epilog.ph209, !prof !37

vec.epilog.ph209:                                 ; preds = %vector.main.loop.iter.check188, %vec.epilog.iter.check207
  %vec.epilog.resume.val202 = phi i64 [ %n.vec192, %vec.epilog.iter.check207 ], [ 0, %vector.main.loop.iter.check188 ]
  %n.vec211 = and i64 %i.as, -4                   ; 3 uses
  %i.bc = shl i64 %n.vec211, 1                    ; 2 uses
  %i.bd = getelementptr i8, ptr %i.ah, i64 %i.bc
  %i.be = getelementptr i8, ptr %i.am, i64 %i.bc
  br label %vec.epilog.vector.body212

vec.epilog.vector.body212:                        ; preds = %vec.epilog.vector.body212, %vec.epilog.ph209
  %index213 = phi i64 [ %vec.epilog.resume.val202, %vec.epilog.ph209 ], [ %index.next217, %vec.epilog.vector.body212 ] ; 2 uses
  %i.bf = shl i64 %index213, 1                    ; 2 uses
  %next.gep214 = getelementptr i8, ptr %i.ah, i64 %i.bf
  %next.gep215 = getelementptr i8, ptr %i.am, i64 %i.bf
  %wide.load216 = load <4 x i16>, ptr %next.gep214, align 2, !tbaa !11
  store <4 x i16> %wide.load216, ptr %next.gep215, align 2, !tbaa !11
  %index.next217 = add nuw i64 %index213, 4       ; 2 uses
  %i.bg = icmp eq i64 %index.next217, %n.vec211
  br i1 %i.bg, label %vec.epilog.middle.block218, label %vec.epilog.vector.body212, !llvm.loop !38

vec.epilog.middle.block218:                       ; preds = %vec.epilog.vector.body212
  %cmp.n219 = icmp eq i64 %i.as, %n.vec211
  br i1 %cmp.n219, label %._crit_edge33.i, label %.lr.ph32.i.preheader

.lr.ph32.i.preheader:                             ; preds = %vector.memcheck183, %iter.check205, %vec.epilog.iter.check207, %vec.epilog.middle.block218
  %.02130.i.ph = phi ptr [ %i.ah, %iter.check205 ], [ %i.ah, %vector.memcheck183 ], [ %i.aw, %vec.epilog.iter.check207 ], [ %i.bd, %vec.epilog.middle.block218 ]
  %.02329.i.ph = phi ptr [ %i.am, %iter.check205 ], [ %i.am, %vector.memcheck183 ], [ %i.ax, %vec.epilog.iter.check207 ], [ %i.be, %vec.epilog.middle.block218 ]
  br label %.lr.ph32.i

.lr.ph32.i:                                       ; preds = %.lr.ph32.i.preheader, %.lr.ph32.i
  %.02130.i = phi ptr [ %i.bh, %.lr.ph32.i ], [ %.02130.i.ph, %.lr.ph32.i.preheader ] ; 2 uses
  %.02329.i = phi ptr [ %i.bj, %.lr.ph32.i ], [ %.02329.i.ph, %.lr.ph32.i.preheader ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.02130.i, i64 2 ; 2 uses
  %i.bi = load i16, ptr %.02130.i, align 2, !tbaa !11
  %i.bj = getelementptr inbounds nuw i8, ptr %.02329.i, i64 2
  store i16 %i.bi, ptr %.02329.i, align 2, !tbaa !11
  %i.bk = icmp ult ptr %i.bh, %i.ak
  br i1 %i.bk, label %.lr.ph32.i, label %._crit_edge33.i, !llvm.loop !39

._crit_edge33.i:                                  ; preds = %.lr.ph32.i, %middle.block200, %vec.epilog.middle.block218, %bb.e
  %i.bl = load ptr, ptr @last_reduction, align 8, !tbaa !40 ; 2 uses
  %.not26.i = icmp eq ptr %i.bl, null
  %first_reduction..i = select i1 %.not26.i, ptr @first_reduction, ptr %i.bl
  store ptr %i.z, ptr %first_reduction..i, align 8, !tbaa !40
  store ptr %i.z, ptr @last_reduction, align 8, !tbaa !40
  br label %save_reductions.exit

save_reductions.exit:                             ; preds = %.lr.ph, %._crit_edge.i, %._crit_edge33.i
  %i.bm = load i32, ptr @nsyms, align 4, !tbaa !4 ; 2 uses
  %i.bn = icmp sgt i32 %i.bm, 0
  br i1 %i.bn, label %.lr.ph.i4, label %._crit_edge.i1

.lr.ph.i4:                                        ; preds = %save_reductions.exit
  %i.bo = load ptr, ptr @kernel_end, align 8, !tbaa !15
  %i.bp = zext nneg i32 %i.bm to i64
  %i.bq = shl nuw nsw i64 %i.bp, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bo, i8 0, i64 %i.bq, i1 false), !tbaa !8
  br label %._crit_edge.i1

._crit_edge.i1:                                   ; preds = %.lr.ph.i4, %save_reductions.exit
  %i.br = load ptr, ptr @itemset, align 8, !tbaa !8 ; 2 uses
  %i.bs = load ptr, ptr @itemsetend, align 8, !tbaa !8 ; 2 uses
  %i.bt = icmp ult ptr %i.br, %i.bs
  br i1 %i.bt, label %.lr.ph25.i, label %append_states.exit.thread

append_states.exit.thread:                        ; preds = %._crit_edge.i1
  store i32 0, ptr @nshifts, align 4, !tbaa !4
  br label %append_states.exit.thread71

.lr.ph25.i:                                       ; preds = %._crit_edge.i1
  %i.bu = load ptr, ptr @kernel_end, align 8
  %i.bv = load ptr, ptr @shift_symbol, align 8    ; 4 uses
  %i.bw = load ptr, ptr @kernel_base, align 8
  %.pre28.i = load ptr, ptr @ritem, align 8, !tbaa !8
  br label %bb.f

bb.f:                                             ; preds = %bb.j, %.lr.ph25.i
  %i.bx = phi ptr [ %i.bs, %.lr.ph25.i ], [ %i.cp, %bb.j ]
  %i.by = phi ptr [ %.pre28.i, %.lr.ph25.i ], [ %i.cq, %bb.j ] ; 2 uses
  %.01723.i = phi ptr [ %i.br, %.lr.ph25.i ], [ %i.bz, %bb.j ] ; 2 uses
  %.01822.i = phi i32 [ 0, %.lr.ph25.i ], [ %.pr, %bb.j ] ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.01723.i, i64 2 ; 2 uses
  %i.ca = load i16, ptr %.01723.i, align 2, !tbaa !11 ; 2 uses
  %i.cb = sext i16 %i.ca to i64
  %i.cc = getelementptr inbounds [2 x i8], ptr %i.by, i64 %i.cb
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !11 ; 3 uses
  %i.ce = icmp sgt i16 %i.cd, 0
  br i1 %i.ce, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.cf = zext nneg i16 %i.cd to i64              ; 2 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.cf ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !8  ; 2 uses
  %.not.i2 = icmp eq ptr %i.ch, null
  br i1 %.not.i2, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ci = add nsw i32 %.01822.i, 1
  %i.cj = sext i32 %.01822.i to i64
  %i.ck = getelementptr inbounds [2 x i8], ptr %i.bv, i64 %i.cj
  store i16 %i.cd, ptr %i.ck, align 2, !tbaa !11
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.cf
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.1.i3 = phi i32 [ %.01822.i, %bb.g ], [ %i.ci, %bb.h ]
  %.016.i = phi ptr [ %i.ch, %bb.g ], [ %i.cm, %bb.h ] ; 2 uses
  %i.cn = add i16 %i.ca, 1
  %i.co = getelementptr inbounds nuw i8, ptr %.016.i, i64 2
  store i16 %i.cn, ptr %.016.i, align 2, !tbaa !11
  store ptr %i.co, ptr %i.cg, align 8, !tbaa !8
  %.pre.i = load ptr, ptr @ritem, align 8, !tbaa !8
  %.pre29.i = load ptr, ptr @itemsetend, align 8, !tbaa !8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  %i.cp = phi ptr [ %.pre29.i, %bb.i ], [ %i.bx, %bb.f ] ; 2 uses
  %i.cq = phi ptr [ %.pre.i, %bb.i ], [ %i.by, %bb.f ]
  %.pr = phi i32 [ %.1.i3, %bb.i ], [ %.01822.i, %bb.f ] ; 5 uses
  %i.cr = icmp ult ptr %i.bz, %i.cp
  br i1 %i.cr, label %bb.f, label %new_itemsets.exit, !llvm.loop !41

new_itemsets.exit:                                ; preds = %bb.j
  store i32 %.pr, ptr @nshifts, align 4, !tbaa !4
  %i.cs = icmp sgt i32 %.pr, 1
  br i1 %i.cs, label %.lr.ph.i6, label %.preheader.i

.lr.ph.i6:                                        ; preds = %new_itemsets.exit
  %wide.trip.count.i = zext nneg i32 %.pr to i64
  br label %bb.k

.preheader.i:                                     ; preds = %.critedge.i, %new_itemsets.exit
  %i.ct = icmp sgt i32 %.pr, 0
  br i1 %i.ct, label %.lr.ph21.i, label %append_states.exit.thread71

bb.k:                                             ; preds = %.critedge.i, %.lr.ph.i6
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.i6 ], [ %indvars.iv.next.i, %.critedge.i ] ; 3 uses
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %i.bv, i64 %indvars.iv.i
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !11 ; 2 uses
  %i.cw = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %bb.k
  %.018.i = phi i32 [ %i.cw, %bb.k ], [ %i.dc, %bb.m ] ; 4 uses
  %i.cx = zext nneg i32 %.018.i to i64
  %i.cy = getelementptr [2 x i8], ptr %i.bv, i64 %i.cx ; 2 uses
  %i.cz = getelementptr i8, ptr %i.cy, i64 -2
  %i.da = load i16, ptr %i.cz, align 2, !tbaa !11 ; 2 uses
  %i.db = icmp sgt i16 %i.da, %i.cv
  br i1 %i.db, label %bb.m, label %.critedge.i

bb.m:                                             ; preds = %bb.l
  store i16 %i.da, ptr %i.cy, align 2, !tbaa !11
  %i.dc = add nsw i32 %.018.i, -1
  %i.dd = icmp sgt i32 %.018.i, 1
  br i1 %i.dd, label %bb.l, label %.critedge.i, !llvm.loop !42

.critedge.i:                                      ; preds = %bb.m, %bb.l
  %.0.lcssa.i = phi i32 [ 0, %bb.m ], [ %.018.i, %bb.l ]
  %i.de = sext i32 %.0.lcssa.i to i64
  %i.df = getelementptr inbounds [2 x i8], ptr %i.bv, i64 %i.de
  store i16 %i.cv, ptr %i.df, align 2, !tbaa !11
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader.i, label %bb.k, !llvm.loop !43

.lr.ph21.i:                                       ; preds = %.preheader.i, %get_state.exit
  %indvars.iv23.i = phi i64 [ %indvars.iv.next24.i, %get_state.exit ], [ 0, %.preheader.i ] ; 3 uses
  %i.dg = load ptr, ptr @shift_symbol, align 8, !tbaa !8
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %i.dg, i64 %indvars.iv23.i
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !11 ; 3 uses
  %i.dj = load ptr, ptr @kernel_base, align 8, !tbaa !15
  %i.dk = sext i16 %i.di to i64                   ; 6 uses
  %i.dl = getelementptr inbounds [8 x i8], ptr %i.dj, i64 %i.dk
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !8  ; 8 uses
  %i.dn = load ptr, ptr @kernel_end, align 8, !tbaa !15
  %i.do = getelementptr inbounds [8 x i8], ptr %i.dn, i64 %i.dk
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !8  ; 6 uses
  %i.dq = ptrtoint ptr %i.dp to i64               ; 2 uses
  %i.dr = ptrtoint ptr %i.dm to i64               ; 3 uses
  %i.ds = sub i64 %i.dq, %i.dr                    ; 3 uses
  %i.dt = lshr exact i64 %i.ds, 1                 ; 3 uses
  %i.du = trunc i64 %i.dt to i32                  ; 2 uses
  %i.dv = icmp ult ptr %i.dm, %i.dp
  br i1 %i.dv, label %.lr.ph.i16.preheader, label %._crit_edge.i11.thread

.lr.ph.i16.preheader:                             ; preds = %.lr.ph21.i
  %i.dw = add i64 %i.dr, 2
  %i.dx = tail call i64 @llvm.umax.i64(i64 %i.dq, i64 %i.dw)
  %i.dy = xor i64 %i.dr, -1
  %i.dz = add i64 %i.dx, %i.dy                    ; 2 uses
  %i.ea = lshr i64 %i.dz, 1
  %i.eb = add nuw i64 %i.ea, 1                    ; 2 uses
  %min.iters.check170 = icmp ult i64 %i.dz, 14
  br i1 %min.iters.check170, label %.lr.ph.i16.preheader222, label %vector.ph171

vector.ph171:                                     ; preds = %.lr.ph.i16.preheader
  %n.vec173 = and i64 %i.eb, -8                   ; 3 uses
  %i.ec = shl i64 %n.vec173, 1
  %i.ed = getelementptr i8, ptr %i.dm, i64 %i.ec
  br label %vector.body174

vector.body174:                                   ; preds = %vector.body174, %vector.ph171
  %index175 = phi i64 [ 0, %vector.ph171 ], [ %index.next180, %vector.body174 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph171 ], [ %i.ei, %vector.body174 ]
  %vec.phi176 = phi <4 x i32> [ zeroinitializer, %vector.ph171 ], [ %i.ej, %vector.body174 ]
  %i.ee = shl i64 %index175, 1
  %next.gep177 = getelementptr i8, ptr %i.dm, i64 %i.ee ; 2 uses
  %i.ef = getelementptr i8, ptr %next.gep177, i64 8
  %wide.load178 = load <4 x i16>, ptr %next.gep177, align 2, !tbaa !11
  %wide.load179 = load <4 x i16>, ptr %i.ef, align 2, !tbaa !11
  %i.eg = sext <4 x i16> %wide.load178 to <4 x i32>
  %i.eh = sext <4 x i16> %wide.load179 to <4 x i32>
  %i.ei = add <4 x i32> %vec.phi, %i.eg           ; 2 uses
  %i.ej = add <4 x i32> %vec.phi176, %i.eh        ; 2 uses
  %index.next180 = add nuw i64 %index175, 8       ; 2 uses
  %i.ek = icmp eq i64 %index.next180, %n.vec173
  br i1 %i.ek, label %middle.block181, label %vector.body174, !llvm.loop !44

middle.block181:                                  ; preds = %vector.body174
  %bin.rdx = add <4 x i32> %i.ej, %i.ei
  %i.el = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n182 = icmp eq i64 %i.eb, %n.vec173
  br i1 %cmp.n182, label %._crit_edge.i11, label %.lr.ph.i16.preheader222

.lr.ph.i16.preheader222:                          ; preds = %.lr.ph.i16.preheader, %middle.block181
  %.050.i.ph = phi i32 [ 0, %.lr.ph.i16.preheader ], [ %i.el, %middle.block181 ]
  %.03249.i.ph = phi ptr [ %i.dm, %.lr.ph.i16.preheader ], [ %i.ed, %middle.block181 ]
  br label %.lr.ph.i16

.lr.ph.i16:                                       ; preds = %.lr.ph.i16.preheader222, %.lr.ph.i16
  %.050.i = phi i32 [ %i.ep, %.lr.ph.i16 ], [ %.050.i.ph, %.lr.ph.i16.preheader222 ]
  %.03249.i = phi ptr [ %i.em, %.lr.ph.i16 ], [ %.03249.i.ph, %.lr.ph.i16.preheader222 ] ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.03249.i, i64 2 ; 2 uses
  %i.en = load i16, ptr %.03249.i, align 2, !tbaa !11
  %i.eo = sext i16 %i.en to i32
  %i.ep = add nsw i32 %.050.i, %i.eo              ; 2 uses
  %i.eq = icmp ult ptr %i.em, %i.dp
  br i1 %i.eq, label %.lr.ph.i16, label %._crit_edge.i11, !llvm.loop !45

._crit_edge.i11:                                  ; preds = %.lr.ph.i16, %middle.block181
  %.lcssa = phi i32 [ %i.el, %middle.block181 ], [ %i.ep, %.lr.ph.i16 ]
  %i.er = srem i32 %.lcssa, 1009
  %i.es = sext i32 %i.er to i64                   ; 2 uses
  %i.et = load ptr, ptr @state_table, align 8, !tbaa !22
  %i.eu = getelementptr inbounds [8 x i8], ptr %i.et, i64 %i.es
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !24 ; 2 uses
  %.not.i13 = icmp eq ptr %i.ev, null
  br i1 %.not.i13, label %bb.p, label %.preheader.i14.us

._crit_edge.i11.thread:                           ; preds = %.lr.ph21.i
  %i.ew = load ptr, ptr @state_table, align 8, !tbaa !22
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !24 ; 2 uses
  %.not.i1369 = icmp eq ptr %i.ex, null
  br i1 %.not.i1369, label %bb.p, label %.preheader.i14

.preheader.i14.us:                                ; preds = %._crit_edge.i11, %.thread.i.us
  %.02957.i.us = phi ptr [ %i.fk, %.thread.i.us ], [ %i.ev, %._crit_edge.i11 ] ; 5 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.02957.i.us, i64 20
  %i.ez = load i16, ptr %i.ey, align 4, !tbaa !26
  %i.fa = sext i16 %i.ez to i32
  %i.fb = icmp eq i32 %i.fa, %i.du
  br i1 %i.fb, label %.lr.ph54.preheader.i.us, label %.thread.i.us

.lr.ph54.preheader.i.us:                          ; preds = %.preheader.i14.us
  %i.fc = getelementptr inbounds nuw i8, ptr %.02957.i.us, i64 22
  br label %.lr.ph54.i.us

.lr.ph54.i.us:                                    ; preds = %.lr.ph54.i.us, %.lr.ph54.preheader.i.us
  %.13352.i.us = phi ptr [ %i.fd, %.lr.ph54.i.us ], [ %i.dm, %.lr.ph54.preheader.i.us ] ; 2 uses
  %.03451.i.us = phi ptr [ %i.ff, %.lr.ph54.i.us ], [ %i.fc, %.lr.ph54.preheader.i.us ] ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.13352.i.us, i64 2 ; 2 uses
  %i.fe = load i16, ptr %.13352.i.us, align 2, !tbaa !11
  %i.ff = getelementptr inbounds nuw i8, ptr %.03451.i.us, i64 2
  %i.fg = load i16, ptr %.03451.i.us, align 2, !tbaa !11
  %.not41.i.us = icmp eq i16 %i.fe, %i.fg         ; 2 uses
  %i.fh = icmp ult ptr %i.fd, %i.dp
  %i.fi = select i1 %.not41.i.us, i1 %i.fh, i1 false
  br i1 %i.fi, label %.lr.ph54.i.us, label %._crit_edge55.i.us, !llvm.loop !46

._crit_edge55.i.us:                               ; preds = %.lr.ph54.i.us
  br i1 %.not41.i.us, label %get_state.exit, label %.thread.i.us

.thread.i.us:                                     ; preds = %._crit_edge55.i.us, %.preheader.i14.us
  %i.fj = getelementptr inbounds nuw i8, ptr %.02957.i.us, i64 8
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !47 ; 2 uses
  %.not40.i.us = icmp eq ptr %i.fk, null
  br i1 %.not40.i.us, label %.split.us, label %.preheader.i14.us, !llvm.loop !48

.preheader.i14:                                   ; preds = %._crit_edge.i11.thread, %.thread.i
  %.02957.i = phi ptr [ %i.fq, %.thread.i ], [ %i.ex, %._crit_edge.i11.thread ] ; 4 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.02957.i, i64 20
  %i.fm = load i16, ptr %i.fl, align 4, !tbaa !26
  %i.fn = sext i16 %i.fm to i32
  %i.fo = icmp eq i32 %i.fn, %i.du
  br i1 %i.fo, label %get_state.exit, label %.thread.i

.thread.i:                                        ; preds = %.preheader.i14
  %i.fp = getelementptr inbounds nuw i8, ptr %.02957.i, i64 8
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !47 ; 2 uses
  %.not40.i = icmp eq ptr %i.fq, null
  br i1 %.not40.i, label %.split.us, label %.preheader.i14, !llvm.loop !48

.split.us:                                        ; preds = %.thread.i, %.thread.i.us
  %.us-phi24 = phi ptr [ %.02957.i.us, %.thread.i.us ], [ %.02957.i, %.thread.i ]
  %i.fr = getelementptr inbounds nuw i8, ptr %.us-phi24, i64 8
  %i.fs = load i32, ptr @nstates, align 4, !tbaa !4
  %i.ft = icmp sgt i32 %i.fs, 32766
  br i1 %i.ft, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.split.us
  tail call void @toomany(ptr noundef nonnull @.str) #8
  %.pre = load ptr, ptr @kernel_base, align 8, !tbaa !15
  %.phi.trans.insert = getelementptr inbounds [8 x i8], ptr %.pre, i64 %i.dk
  %.pre33 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !8 ; 2 uses
  %.pre34 = load ptr, ptr @kernel_end, align 8, !tbaa !15
  %.phi.trans.insert35 = getelementptr inbounds [8 x i8], ptr %.pre34, i64 %i.dk
  %.pre36 = load ptr, ptr %.phi.trans.insert35, align 8, !tbaa !8 ; 2 uses
  %.pre37 = ptrtoint ptr %.pre36 to i64
  %.pre38 = ptrtoint ptr %.pre33 to i64
  %.pre40 = sub i64 %.pre37, %.pre38              ; 2 uses
  %.pre42 = lshr exact i64 %.pre40, 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.split.us
  %.pre-phi43 = phi i64 [ %.pre42, %bb.n ], [ %i.dt, %.split.us ]
  %.pre-phi41 = phi i64 [ %.pre40, %bb.n ], [ %i.ds, %.split.us ]
  %i.fu = phi ptr [ %.pre36, %bb.n ], [ %i.dp, %.split.us ] ; 3 uses
  %i.fv = phi ptr [ %.pre33, %bb.n ], [ %i.dm, %.split.us ] ; 8 uses
  %i.fw = ptrtoaddr ptr %i.fv to i64              ; 3 uses
  %i.fx = trunc i64 %.pre-phi41 to i32
  %i.fy = and i32 %i.fx, -2
  %i.fz = add i32 %i.fy, 22
  %i.ga = tail call ptr (i32, ...) @mallocate(i32 noundef %i.fz) #8 ; 9 uses
  %i.gb = ptrtoaddr ptr %i.ga to i64
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 18
  store i16 %i.di, ptr %i.gc, align 2, !tbaa !49
  %i.gd = load i32, ptr @nstates, align 4, !tbaa !4 ; 2 uses
  %i.ge = trunc i32 %i.gd to i16
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  store i16 %i.ge, ptr %i.gf, align 8, !tbaa !29
  %i.gg = trunc i64 %.pre-phi43 to i16
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ga, i64 20
  store i16 %i.gg, ptr %i.gh, align 4, !tbaa !26
  %i.gi = icmp ult ptr %i.fv, %i.fu
  br i1 %i.gi, label %iter.check153, label %new_state.exit.i

iter.check153:                                    ; preds = %bb.o
  %0 = ptrtoaddr ptr %i.fu to i64
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ga, i64 22 ; 6 uses
  %i.gk = add i64 %i.fw, 2
  %umax135 = tail call i64 @llvm.umax.i64(i64 %0, i64 %i.gk)
  %i.gl = xor i64 %i.fw, -1
  %i.gm = add i64 %umax135, %i.gl                 ; 3 uses
  %i.gn = lshr i64 %i.gm, 1
  %i.go = add nuw i64 %i.gn, 1                    ; 5 uses
  %min.iters.check136 = icmp ult i64 %i.gm, 6
  br i1 %min.iters.check136, label %.lr.ph.i.i.preheader, label %vector.memcheck133

vector.memcheck133:                               ; preds = %iter.check153
  %i.gp = sub i64 %i.gb, %i.fw
  %i.gq = add i64 %i.gp, 21
  %diff.check134 = icmp ult i64 %i.gq, 31
  br i1 %diff.check134, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check137

vector.main.loop.iter.check137:                   ; preds = %vector.memcheck133
  %min.iters.check138 = icmp ult i64 %i.gm, 30
  br i1 %min.iters.check138, label %vec.epilog.ph157, label %vector.ph139

vector.ph139:                                     ; preds = %vector.main.loop.iter.check137
  %n.mod.vf140 = and i64 %i.go, 12
  %n.vec141 = and i64 %i.go, -16                  ; 4 uses
  %i.gr = shl i64 %n.vec141, 1                    ; 2 uses
  %i.gs = getelementptr i8, ptr %i.fv, i64 %i.gr
  %i.gt = getelementptr i8, ptr %i.gj, i64 %i.gr
  br label %vector.body142

vector.body142:                                   ; preds = %vector.body142, %vector.ph139
  %index143 = phi i64 [ 0, %vector.ph139 ], [ %index.next148, %vector.body142 ] ; 2 uses
  %i.gu = shl i64 %index143, 1                    ; 2 uses
  %next.gep144 = getelementptr i8, ptr %i.fv, i64 %i.gu ; 2 uses
  %next.gep145 = getelementptr i8, ptr %i.gj, i64 %i.gu ; 2 uses
  %i.gv = getelementptr i8, ptr %next.gep144, i64 16
  %wide.load146 = load <8 x i16>, ptr %next.gep144, align 2, !tbaa !11
  %wide.load147 = load <8 x i16>, ptr %i.gv, align 2, !tbaa !11
  %i.gw = getelementptr i8, ptr %next.gep145, i64 16
  store <8 x i16> %wide.load146, ptr %next.gep145, align 2, !tbaa !11
  store <8 x i16> %wide.load147, ptr %i.gw, align 2, !tbaa !11
  %index.next148 = add nuw i64 %index143, 16      ; 2 uses
  %i.gx = icmp eq i64 %index.next148, %n.vec141
  br i1 %i.gx, label %middle.block149, label %vector.body142, !llvm.loop !50

middle.block149:                                  ; preds = %vector.body142
  %cmp.n150 = icmp eq i64 %i.go, %n.vec141
  br i1 %cmp.n150, label %new_state.exit.i, label %vec.epilog.iter.check155

vec.epilog.iter.check155:                         ; preds = %middle.block149
  %min.epilog.iters.check156 = icmp eq i64 %n.mod.vf140, 0
  br i1 %min.epilog.iters.check156, label %.lr.ph.i.i.preheader, label %vec.epilog.ph157, !prof !37

vec.epilog.ph157:                                 ; preds = %vector.main.loop.iter.check137, %vec.epilog.iter.check155
  %vec.epilog.resume.val151 = phi i64 [ %n.vec141, %vec.epilog.iter.check155 ], [ 0, %vector.main.loop.iter.check137 ]
  %n.vec159 = and i64 %i.go, -4                   ; 3 uses
  %i.gy = shl i64 %n.vec159, 1                    ; 2 uses
  %i.gz = getelementptr i8, ptr %i.fv, i64 %i.gy
  %i.ha = getelementptr i8, ptr %i.gj, i64 %i.gy
  br label %vec.epilog.vector.body160

vec.epilog.vector.body160:                        ; preds = %vec.epilog.vector.body160, %vec.epilog.ph157
  %index161 = phi i64 [ %vec.epilog.resume.val151, %vec.epilog.ph157 ], [ %index.next165, %vec.epilog.vector.body160 ] ; 2 uses
  %i.hb = shl i64 %index161, 1                    ; 2 uses
  %next.gep162 = getelementptr i8, ptr %i.fv, i64 %i.hb
  %next.gep163 = getelementptr i8, ptr %i.gj, i64 %i.hb
  %wide.load164 = load <4 x i16>, ptr %next.gep162, align 2, !tbaa !11
  store <4 x i16> %wide.load164, ptr %next.gep163, align 2, !tbaa !11
  %index.next165 = add nuw i64 %index161, 4       ; 2 uses
  %i.hc = icmp eq i64 %index.next165, %n.vec159
  br i1 %i.hc, label %vec.epilog.middle.block166, label %vec.epilog.vector.body160, !llvm.loop !51

vec.epilog.middle.block166:                       ; preds = %vec.epilog.vector.body160
  %cmp.n167 = icmp eq i64 %i.go, %n.vec159
  br i1 %cmp.n167, label %new_state.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck133, %iter.check153, %vec.epilog.iter.check155, %vec.epilog.middle.block166
  %.019.i.i.ph = phi ptr [ %i.fv, %iter.check153 ], [ %i.fv, %vector.memcheck133 ], [ %i.gs, %vec.epilog.iter.check155 ], [ %i.gz, %vec.epilog.middle.block166 ]
  %.01718.i.i.ph = phi ptr [ %i.gj, %iter.check153 ], [ %i.gj, %vector.memcheck133 ], [ %i.gt, %vec.epilog.iter.check155 ], [ %i.ha, %vec.epilog.middle.block166 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.019.i.i = phi ptr [ %i.hd, %.lr.ph.i.i ], [ %.019.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.01718.i.i = phi ptr [ %i.hf, %.lr.ph.i.i ], [ %.01718.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 2 ; 2 uses
  %i.he = load i16, ptr %.019.i.i, align 2, !tbaa !11
  %i.hf = getelementptr inbounds nuw i8, ptr %.01718.i.i, i64 2
  store i16 %i.he, ptr %.01718.i.i, align 2, !tbaa !11
  %i.hg = icmp ult ptr %i.hd, %i.fu
  br i1 %i.hg, label %.lr.ph.i.i, label %new_state.exit.i, !llvm.loop !52

new_state.exit.i:                                 ; preds = %.lr.ph.i.i, %middle.block149, %vec.epilog.middle.block166, %bb.o
  %i.hh = load ptr, ptr @last_state, align 8, !tbaa !24
  store ptr %i.ga, ptr %i.hh, align 8, !tbaa !53
  store ptr %i.ga, ptr @last_state, align 8, !tbaa !24
  %i.hi = add nsw i32 %i.gd, 1
  store i32 %i.hi, ptr @nstates, align 4, !tbaa !4
  store ptr %i.ga, ptr %i.fr, align 8, !tbaa !47
  br label %get_state.exit

bb.p:                                             ; preds = %._crit_edge.i11.thread, %._crit_edge.i11
  %.0.lcssa.i1270 = phi i64 [ 0, %._crit_edge.i11.thread ], [ %i.es, %._crit_edge.i11 ]
  %i.hj = load i32, ptr @nstates, align 4, !tbaa !4
  %i.hk = icmp sgt i32 %i.hj, 32766
  br i1 %i.hk, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  tail call void @toomany(ptr noundef nonnull @.str) #8
  %.pre.i15 = load ptr, ptr @kernel_base, align 8, !tbaa !15
  %.phi.trans.insert.i = getelementptr inbounds [8 x i8], ptr %.pre.i15, i64 %i.dk
  %.pre59.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !8 ; 2 uses
  %.pre60.i = load ptr, ptr @kernel_end, align 8, !tbaa !15
  %.phi.trans.insert61.i = getelementptr inbounds [8 x i8], ptr %.pre60.i, i64 %i.dk
  %.pre62.i = load ptr, ptr %.phi.trans.insert61.i, align 8, !tbaa !8 ; 2 uses
  %.pre63.i = ptrtoint ptr %.pre62.i to i64
  %.pre64.i = ptrtoint ptr %.pre59.i to i64
  %.pre66.i = sub i64 %.pre63.i, %.pre64.i        ; 2 uses
  %.pre68.i = lshr exact i64 %.pre66.i, 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pre-phi69.i = phi i64 [ %.pre68.i, %bb.q ], [ %i.dt, %bb.p ]
  %.pre-phi67.i = phi i64 [ %.pre66.i, %bb.q ], [ %i.ds, %bb.p ]
  %i.hl = phi ptr [ %.pre62.i, %bb.q ], [ %i.dp, %bb.p ] ; 3 uses
  %i.hm = phi ptr [ %.pre59.i, %bb.q ], [ %i.dm, %bb.p ] ; 8 uses
  %i.hn = ptrtoaddr ptr %i.hm to i64              ; 3 uses
  %i.ho = trunc i64 %.pre-phi67.i to i32
  %i.hp = and i32 %i.ho, -2
  %i.hq = add i32 %i.hp, 22
  %i.hr = tail call ptr (i32, ...) @mallocate(i32 noundef %i.hq) #8 ; 9 uses
  %i.hs = ptrtoaddr ptr %i.hr to i64
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hr, i64 18
  store i16 %i.di, ptr %i.ht, align 2, !tbaa !49
  %i.hu = load i32, ptr @nstates, align 4, !tbaa !4 ; 2 uses
  %i.hv = trunc i32 %i.hu to i16
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hr, i64 16
  store i16 %i.hv, ptr %i.hw, align 8, !tbaa !29
  %i.hx = trunc i64 %.pre-phi69.i to i16
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hr, i64 20
  store i16 %i.hx, ptr %i.hy, align 4, !tbaa !26
  %i.hz = icmp ult ptr %i.hm, %i.hl
  br i1 %i.hz, label %iter.check116, label %new_state.exit46.i

iter.check116:                                    ; preds = %bb.r
  %1 = ptrtoaddr ptr %i.hl to i64
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hr, i64 22 ; 6 uses
  %i.ib = add i64 %i.hn, 2
  %umax98 = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.ib)
  %i.ic = xor i64 %i.hn, -1
  %i.id = add i64 %umax98, %i.ic                  ; 3 uses
  %i.ie = lshr i64 %i.id, 1
  %i.if = add nuw i64 %i.ie, 1                    ; 5 uses
  %min.iters.check99 = icmp ult i64 %i.id, 6
  br i1 %min.iters.check99, label %.lr.ph.i43.i.preheader, label %vector.memcheck96

vector.memcheck96:                                ; preds = %iter.check116
  %i.ig = sub i64 %i.hs, %i.hn
  %i.ih = add i64 %i.ig, 21
  %diff.check97 = icmp ult i64 %i.ih, 31
  br i1 %diff.check97, label %.lr.ph.i43.i.preheader, label %vector.main.loop.iter.check100

vector.main.loop.iter.check100:                   ; preds = %vector.memcheck96
  %min.iters.check101 = icmp ult i64 %i.id, 30
  br i1 %min.iters.check101, label %vec.epilog.ph120, label %vector.ph102

vector.ph102:                                     ; preds = %vector.main.loop.iter.check100
  %n.mod.vf103 = and i64 %i.if, 12
  %n.vec104 = and i64 %i.if, -16                  ; 4 uses
  %i.ii = shl i64 %n.vec104, 1                    ; 2 uses
  %i.ij = getelementptr i8, ptr %i.hm, i64 %i.ii
  %i.ik = getelementptr i8, ptr %i.ia, i64 %i.ii
  br label %vector.body105

vector.body105:                                   ; preds = %vector.body105, %vector.ph102
  %index106 = phi i64 [ 0, %vector.ph102 ], [ %index.next111, %vector.body105 ] ; 2 uses
  %i.il = shl i64 %index106, 1                    ; 2 uses
  %next.gep107 = getelementptr i8, ptr %i.hm, i64 %i.il ; 2 uses
  %next.gep108 = getelementptr i8, ptr %i.ia, i64 %i.il ; 2 uses
  %i.im = getelementptr i8, ptr %next.gep107, i64 16
  %wide.load109 = load <8 x i16>, ptr %next.gep107, align 2, !tbaa !11
  %wide.load110 = load <8 x i16>, ptr %i.im, align 2, !tbaa !11
  %i.in = getelementptr i8, ptr %next.gep108, i64 16
  store <8 x i16> %wide.load109, ptr %next.gep108, align 2, !tbaa !11
  store <8 x i16> %wide.load110, ptr %i.in, align 2, !tbaa !11
  %index.next111 = add nuw i64 %index106, 16      ; 2 uses
  %i.io = icmp eq i64 %index.next111, %n.vec104
  br i1 %i.io, label %middle.block112, label %vector.body105, !llvm.loop !54

middle.block112:                                  ; preds = %vector.body105
  %cmp.n113 = icmp eq i64 %i.if, %n.vec104
  br i1 %cmp.n113, label %new_state.exit46.i, label %vec.epilog.iter.check118

vec.epilog.iter.check118:                         ; preds = %middle.block112
  %min.epilog.iters.check119 = icmp eq i64 %n.mod.vf103, 0
  br i1 %min.epilog.iters.check119, label %.lr.ph.i43.i.preheader, label %vec.epilog.ph120, !prof !37

vec.epilog.ph120:                                 ; preds = %vector.main.loop.iter.check100, %vec.epilog.iter.check118
  %vec.epilog.resume.val114 = phi i64 [ %n.vec104, %vec.epilog.iter.check118 ], [ 0, %vector.main.loop.iter.check100 ]
  %n.vec122 = and i64 %i.if, -4                   ; 3 uses
  %i.ip = shl i64 %n.vec122, 1                    ; 2 uses
  %i.iq = getelementptr i8, ptr %i.hm, i64 %i.ip
  %i.ir = getelementptr i8, ptr %i.ia, i64 %i.ip
  br label %vec.epilog.vector.body123

vec.epilog.vector.body123:                        ; preds = %vec.epilog.vector.body123, %vec.epilog.ph120
  %index124 = phi i64 [ %vec.epilog.resume.val114, %vec.epilog.ph120 ], [ %index.next128, %vec.epilog.vector.body123 ] ; 2 uses
  %i.is = shl i64 %index124, 1                    ; 2 uses
  %next.gep125 = getelementptr i8, ptr %i.hm, i64 %i.is
  %next.gep126 = getelementptr i8, ptr %i.ia, i64 %i.is
  %wide.load127 = load <4 x i16>, ptr %next.gep125, align 2, !tbaa !11
  store <4 x i16> %wide.load127, ptr %next.gep126, align 2, !tbaa !11
  %index.next128 = add nuw i64 %index124, 4       ; 2 uses
  %i.it = icmp eq i64 %index.next128, %n.vec122
  br i1 %i.it, label %vec.epilog.middle.block129, label %vec.epilog.vector.body123, !llvm.loop !55

vec.epilog.middle.block129:                       ; preds = %vec.epilog.vector.body123
  %cmp.n130 = icmp eq i64 %i.if, %n.vec122
  br i1 %cmp.n130, label %new_state.exit46.i, label %.lr.ph.i43.i.preheader

.lr.ph.i43.i.preheader:                           ; preds = %vector.memcheck96, %iter.check116, %vec.epilog.iter.check118, %vec.epilog.middle.block129
  %.019.i44.i.ph = phi ptr [ %i.hm, %iter.check116 ], [ %i.hm, %vector.memcheck96 ], [ %i.ij, %vec.epilog.iter.check118 ], [ %i.iq, %vec.epilog.middle.block129 ]
  %.01718.i45.i.ph = phi ptr [ %i.ia, %iter.check116 ], [ %i.ia, %vector.memcheck96 ], [ %i.ik, %vec.epilog.iter.check118 ], [ %i.ir, %vec.epilog.middle.block129 ]
  br label %.lr.ph.i43.i

.lr.ph.i43.i:                                     ; preds = %.lr.ph.i43.i.preheader, %.lr.ph.i43.i
  %.019.i44.i = phi ptr [ %i.iu, %.lr.ph.i43.i ], [ %.019.i44.i.ph, %.lr.ph.i43.i.preheader ] ; 2 uses
  %.01718.i45.i = phi ptr [ %i.iw, %.lr.ph.i43.i ], [ %.01718.i45.i.ph, %.lr.ph.i43.i.preheader ] ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %.019.i44.i, i64 2 ; 2 uses
  %i.iv = load i16, ptr %.019.i44.i, align 2, !tbaa !11
  %i.iw = getelementptr inbounds nuw i8, ptr %.01718.i45.i, i64 2
  store i16 %i.iv, ptr %.01718.i45.i, align 2, !tbaa !11
  %i.ix = icmp ult ptr %i.iu, %i.hl
  br i1 %i.ix, label %.lr.ph.i43.i, label %new_state.exit46.i, !llvm.loop !56

new_state.exit46.i:                               ; preds = %.lr.ph.i43.i, %middle.block112, %vec.epilog.middle.block129, %bb.r
  %i.iy = load ptr, ptr @last_state, align 8, !tbaa !24
  store ptr %i.hr, ptr %i.iy, align 8, !tbaa !53
  store ptr %i.hr, ptr @last_state, align 8, !tbaa !24
  %i.iz = add nsw i32 %i.hu, 1
  store i32 %i.iz, ptr @nstates, align 4, !tbaa !4
  %i.ja = load ptr, ptr @state_table, align 8, !tbaa !22
  %i.jb = getelementptr inbounds [8 x i8], ptr %i.ja, i64 %.0.lcssa.i1270
  store ptr %i.hr, ptr %i.jb, align 8, !tbaa !24
  br label %get_state.exit

get_state.exit:                                   ; preds = %.preheader.i14, %._crit_edge55.i.us, %new_state.exit.i, %new_state.exit46.i
  %.231.i = phi ptr [ %i.hr, %new_state.exit46.i ], [ %i.ga, %new_state.exit.i ], [ %.02957.i.us, %._crit_edge55.i.us ], [ %.02957.i, %.preheader.i14 ]
  %i.jc = getelementptr inbounds nuw i8, ptr %.231.i, i64 16
  %i.jd = load i16, ptr %i.jc, align 8, !tbaa !29
  %i.je = load ptr, ptr @shiftset, align 8, !tbaa !8
  %i.jf = getelementptr inbounds nuw [2 x i8], ptr %i.je, i64 %indvars.iv23.i
  store i16 %i.jd, ptr %i.jf, align 2, !tbaa !11
  %indvars.iv.next24.i = add nuw nsw i64 %indvars.iv23.i, 1 ; 2 uses
  %i.jg = load i32, ptr @nshifts, align 4, !tbaa !4 ; 3 uses
  %i.jh = sext i32 %i.jg to i64
  %i.ji = icmp slt i64 %indvars.iv.next24.i, %i.jh
  br i1 %i.ji, label %.lr.ph21.i, label %append_states.exit, !llvm.loop !57

append_states.exit:                               ; preds = %get_state.exit
  %i.jj = icmp sgt i32 %i.jg, 0
  br i1 %i.jj, label %bb.s, label %append_states.exit.thread71

bb.s:                                             ; preds = %append_states.exit
  %i.jk = shl nuw i32 %i.jg, 1
  %i.jl = add i32 %i.jk, 14
  %i.jm = tail call ptr (i32, ...) @mallocate(i32 noundef %i.jl) #8 ; 6 uses
  %i.jn = ptrtoaddr ptr %i.jm to i64
  %i.jo = load ptr, ptr @this_state, align 8, !tbaa !24
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 16
  %i.jq = load i16, ptr %i.jp, align 8, !tbaa !29
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jm, i64 8
  store i16 %i.jq, ptr %i.jr, align 8, !tbaa !58
  %i.js = load i32, ptr @nshifts, align 4, !tbaa !4 ; 3 uses
  %i.jt = trunc i32 %i.js to i16
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jm, i64 10
  store i16 %i.jt, ptr %i.ju, align 2, !tbaa !61
  %i.jv = load ptr, ptr @shiftset, align 8, !tbaa !8 ; 8 uses
  %i.jw = ptrtoaddr ptr %i.jv to i64              ; 4 uses
  %i.jx = sext i32 %i.js to i64
  %.idx.i7 = shl nsw i64 %i.jx, 1                 ; 2 uses
  %i.jy = getelementptr inbounds i8, ptr %i.jv, i64 %.idx.i7
  %i.jz = icmp sgt i32 %i.js, 0
  br i1 %i.jz, label %iter.check, label %save_shifts.exit

iter.check:                                       ; preds = %bb.s
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jm, i64 12 ; 6 uses
  %i.kb = add i64 %.idx.i7, %i.jw
  %i.kc = add i64 %i.jw, 2
  %umax = tail call i64 @llvm.umax.i64(i64 %i.kb, i64 %i.kc)
  %i.kd = xor i64 %i.jw, -1
  %i.ke = add i64 %umax, %i.kd                    ; 3 uses
  %i.kf = lshr i64 %i.ke, 1
  %i.kg = add nuw i64 %i.kf, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %i.ke, 6
  br i1 %min.iters.check, label %.lr.ph.i10.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.kh = sub i64 %i.jn, %i.jw
  %i.ki = add i64 %i.kh, 11
  %diff.check = icmp ult i64 %i.ki, 31
  br i1 %diff.check, label %.lr.ph.i10.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check82 = icmp ult i64 %i.ke, 30
  br i1 %min.iters.check82, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.kg, 12
  %n.vec = and i64 %i.kg, -16                     ; 4 uses
  %i.kj = shl i64 %n.vec, 1                       ; 2 uses
  %i.kk = getelementptr i8, ptr %i.jv, i64 %i.kj
  %i.kl = getelementptr i8, ptr %i.ka, i64 %i.kj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.km = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.jv, i64 %i.km ; 2 uses
  %next.gep83 = getelementptr i8, ptr %i.ka, i64 %i.km ; 2 uses
  %i.kn = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep, align 2, !tbaa !11
  %wide.load84 = load <8 x i16>, ptr %i.kn, align 2, !tbaa !11
  %i.ko = getelementptr i8, ptr %next.gep83, i64 16
  store <8 x i16> %wide.load, ptr %next.gep83, align 2, !tbaa !11
  store <8 x i16> %wide.load84, ptr %i.ko, align 2, !tbaa !11
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.kp = icmp eq i64 %index.next, %n.vec
  br i1 %i.kp, label %middle.block, label %vector.body, !llvm.loop !62

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.kg, %n.vec
  br i1 %cmp.n, label %save_shifts.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i10.preheader, label %vec.epilog.ph, !prof !37

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec87 = and i64 %i.kg, -4                    ; 3 uses
  %i.kq = shl i64 %n.vec87, 1                     ; 2 uses
  %i.kr = getelementptr i8, ptr %i.jv, i64 %i.kq
  %i.ks = getelementptr i8, ptr %i.ka, i64 %i.kq
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index88 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next92, %vec.epilog.vector.body ] ; 2 uses
  %i.kt = shl i64 %index88, 1                     ; 2 uses
  %next.gep89 = getelementptr i8, ptr %i.jv, i64 %i.kt
  %next.gep90 = getelementptr i8, ptr %i.ka, i64 %i.kt
  %wide.load91 = load <4 x i16>, ptr %next.gep89, align 2, !tbaa !11
  store <4 x i16> %wide.load91, ptr %next.gep90, align 2, !tbaa !11
  %index.next92 = add nuw i64 %index88, 4         ; 2 uses
  %i.ku = icmp eq i64 %index.next92, %n.vec87
  br i1 %i.ku, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !63

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n93 = icmp eq i64 %i.kg, %n.vec87
  br i1 %cmp.n93, label %save_shifts.exit, label %.lr.ph.i10.preheader

.lr.ph.i10.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.014.i.ph = phi ptr [ %i.jv, %iter.check ], [ %i.jv, %vector.memcheck ], [ %i.kk, %vec.epilog.iter.check ], [ %i.kr, %vec.epilog.middle.block ]
  %.01113.i.ph = phi ptr [ %i.ka, %iter.check ], [ %i.ka, %vector.memcheck ], [ %i.kl, %vec.epilog.iter.check ], [ %i.ks, %vec.epilog.middle.block ]
  br label %.lr.ph.i10

.lr.ph.i10:                                       ; preds = %.lr.ph.i10.preheader, %.lr.ph.i10
  %.014.i = phi ptr [ %i.kv, %.lr.ph.i10 ], [ %.014.i.ph, %.lr.ph.i10.preheader ] ; 2 uses
  %.01113.i = phi ptr [ %i.kx, %.lr.ph.i10 ], [ %.01113.i.ph, %.lr.ph.i10.preheader ] ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %.014.i, i64 2 ; 2 uses
  %i.kw = load i16, ptr %.014.i, align 2, !tbaa !11
  %i.kx = getelementptr inbounds nuw i8, ptr %.01113.i, i64 2
  store i16 %i.kw, ptr %.01113.i, align 2, !tbaa !11
  %i.ky = icmp ult ptr %i.kv, %i.jy
  br i1 %i.ky, label %.lr.ph.i10, label %save_shifts.exit, !llvm.loop !64

save_shifts.exit:                                 ; preds = %.lr.ph.i10, %middle.block, %vec.epilog.middle.block, %bb.s
  %i.kz = load ptr, ptr @last_shift, align 8, !tbaa !65 ; 2 uses
  %.not.i9 = icmp eq ptr %i.kz, null
  %first_shift..i = select i1 %.not.i9, ptr @first_shift, ptr %i.kz
  store ptr %i.jm, ptr %first_shift..i, align 8, !tbaa !65
  store ptr %i.jm, ptr @last_shift, align 8, !tbaa !65
  br label %append_states.exit.thread71

append_states.exit.thread71:                      ; preds = %.preheader.i, %append_states.exit.thread, %save_shifts.exit, %append_states.exit
  %i.la = load ptr, ptr @this_state, align 8, !tbaa !24
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !53 ; 3 uses
  store ptr %i.lb, ptr @this_state, align 8, !tbaa !24
  %.not = icmp eq ptr %i.lb, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !66

._crit_edge:                                      ; preds = %append_states.exit.thread71, %bb.a
  tail call void @finalize_closure() #8
  tail call void @free_storage()
  tail call void @augment_automaton()
  ret void
}

declare void @initialize_closure(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @initialize_states() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr (i32, ...) @mallocate(i32 noundef 22) #8 ; 3 uses
  store ptr %i.a, ptr @this_state, align 8, !tbaa !24
  store ptr %i.a, ptr @last_state, align 8, !tbaa !24
  store ptr %i.a, ptr @first_state, align 8, !tbaa !24
  store i32 1, ptr @nstates, align 4, !tbaa !4
  ret void
}

declare void @closure(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @save_reductions() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @itemset, align 8, !tbaa !8 ; 2 uses
  %i.b = load ptr, ptr @itemsetend, align 8, !tbaa !8 ; 2 uses
  %i.c = icmp ult ptr %i.a, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.a
  %i.d = load ptr, ptr @ritem, align 8, !tbaa !8
  %i.e = load ptr, ptr @redset, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.028 = phi ptr [ %i.a, %.lr.ph ], [ %i.o, %bb.d ] ; 2 uses
  %.02227 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.d ] ; 3 uses
  %i.f = load i16, ptr %.028, align 2, !tbaa !11
  %i.g = sext i16 %i.f to i64
  %i.h = getelementptr inbounds [2 x i8], ptr %i.d, i64 %i.g
  %i.i = load i16, ptr %i.h, align 2, !tbaa !11   ; 2 uses
  %i.j = icmp slt i16 %i.i, 0
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = sub i16 0, %i.i
  %i.l = add nsw i32 %.02227, 1
  %i.m = sext i32 %.02227 to i64
  %i.n = getelementptr inbounds [2 x i8], ptr %i.e, i64 %i.m
  store i16 %i.k, ptr %i.n, align 2, !tbaa !11
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.1 = phi i32 [ %i.l, %bb.c ], [ %.02227, %bb.b ] ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.028, i64 2 ; 2 uses
  %i.p = icmp ult ptr %i.o, %i.b
  br i1 %i.p, label %bb.b, label %._crit_edge, !llvm.loop !28

._crit_edge:                                      ; preds = %bb.d
  %.not = icmp eq i32 %.1, 0
  br i1 %.not, label %._crit_edge.thread, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.q = shl i32 %.1, 1
  %i.r = add i32 %i.q, 14
  %i.s = tail call ptr (i32, ...) @mallocate(i32 noundef %i.r) #8 ; 6 uses
  %i.t = ptrtoaddr ptr %i.s to i64
  %i.u = load ptr, ptr @this_state, align 8, !tbaa !24
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load i16, ptr %i.v, align 8, !tbaa !29
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i16 %i.w, ptr %i.x, align 8, !tbaa !30
  %i.y = trunc i32 %.1 to i16
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 10
  store i16 %i.y, ptr %i.z, align 2, !tbaa !33
  %i.aa = load ptr, ptr @redset, align 8, !tbaa !8 ; 8 uses
  %i.ab = ptrtoaddr ptr %i.aa to i64              ; 4 uses
  %i.ac = sext i32 %.1 to i64
  %.idx = shl nsw i64 %i.ac, 1                    ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %i.aa, i64 %.idx
  %i.ae = icmp sgt i32 %.1, 0
  br i1 %i.ae, label %iter.check, label %._crit_edge33

iter.check:                                       ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %i.s, i64 12 ; 6 uses
  %i.ag = xor i64 %i.ab, -1
  %i.ah = add i64 %.idx, %i.ab
  %i.ai = add i64 %i.ab, 2
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ah, i64 %i.ai)
  %i.aj = add i64 %umax, %i.ag                    ; 3 uses
  %i.ak = lshr i64 %i.aj, 1
  %i.al = add nuw i64 %i.ak, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %i.aj, 6
  br i1 %min.iters.check, label %.lr.ph32.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.am = sub i64 %i.t, %i.ab
  %i.an = add i64 %i.am, 11
  %diff.check = icmp ult i64 %i.an, 31
  br i1 %diff.check, label %.lr.ph32.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check40 = icmp ult i64 %i.aj, 30
  br i1 %min.iters.check40, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.al, 12
  %n.vec = and i64 %i.al, -16                     ; 4 uses
  %i.ao = shl i64 %n.vec, 1                       ; 2 uses
  %i.ap = getelementptr i8, ptr %i.aa, i64 %i.ao
  %i.aq = getelementptr i8, ptr %i.af, i64 %i.ao
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ar = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aa, i64 %i.ar ; 2 uses
  %next.gep41 = getelementptr i8, ptr %i.af, i64 %i.ar ; 2 uses
  %i.as = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep, align 2, !tbaa !11
  %wide.load42 = load <8 x i16>, ptr %i.as, align 2, !tbaa !11
  %i.at = getelementptr i8, ptr %next.gep41, i64 16
  store <8 x i16> %wide.load, ptr %next.gep41, align 2, !tbaa !11
  store <8 x i16> %wide.load42, ptr %i.at, align 2, !tbaa !11
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !67

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.al, %n.vec
  br i1 %cmp.n, label %._crit_edge33, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph32.preheader, label %vec.epilog.ph, !prof !37

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec45 = and i64 %i.al, -4                    ; 3 uses
  %i.av = shl i64 %n.vec45, 1                     ; 2 uses
  %i.aw = getelementptr i8, ptr %i.aa, i64 %i.av
  %i.ax = getelementptr i8, ptr %i.af, i64 %i.av
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index46 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next50, %vec.epilog.vector.body ] ; 2 uses
  %i.ay = shl i64 %index46, 1                     ; 2 uses
  %next.gep47 = getelementptr i8, ptr %i.aa, i64 %i.ay
  %next.gep48 = getelementptr i8, ptr %i.af, i64 %i.ay
  %wide.load49 = load <4 x i16>, ptr %next.gep47, align 2, !tbaa !11
  store <4 x i16> %wide.load49, ptr %next.gep48, align 2, !tbaa !11
  %index.next50 = add nuw i64 %index46, 4         ; 2 uses
  %i.az = icmp eq i64 %index.next50, %n.vec45
  br i1 %i.az, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !68

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n51 = icmp eq i64 %i.al, %n.vec45
  br i1 %cmp.n51, label %._crit_edge33, label %.lr.ph32.preheader

.lr.ph32.preheader:                               ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.02130.ph = phi ptr [ %i.aa, %iter.check ], [ %i.aa, %vector.memcheck ], [ %i.ap, %vec.epilog.iter.check ], [ %i.aw, %vec.epilog.middle.block ]
  %.02329.ph = phi ptr [ %i.af, %iter.check ], [ %i.af, %vector.memcheck ], [ %i.aq, %vec.epilog.iter.check ], [ %i.ax, %vec.epilog.middle.block ]
  br label %.lr.ph32

.lr.ph32:                                         ; preds = %.lr.ph32.preheader, %.lr.ph32
  %.02130 = phi ptr [ %i.ba, %.lr.ph32 ], [ %.02130.ph, %.lr.ph32.preheader ] ; 2 uses
  %.02329 = phi ptr [ %i.bc, %.lr.ph32 ], [ %.02329.ph, %.lr.ph32.preheader ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.02130, i64 2 ; 2 uses
  %i.bb = load i16, ptr %.02130, align 2, !tbaa !11
  %i.bc = getelementptr inbounds nuw i8, ptr %.02329, i64 2
  store i16 %i.bb, ptr %.02329, align 2, !tbaa !11
  %i.bd = icmp ult ptr %i.ba, %i.ad
  br i1 %i.bd, label %.lr.ph32, label %._crit_edge33, !llvm.loop !69

._crit_edge33:                                    ; preds = %.lr.ph32, %middle.block, %vec.epilog.middle.block, %bb.e
  %i.be = load ptr, ptr @last_reduction, align 8, !tbaa !40 ; 2 uses
  %.not26 = icmp eq ptr %i.be, null
  %first_reduction. = select i1 %.not26, ptr @first_reduction, ptr %i.be
  store ptr %i.s, ptr %first_reduction., align 8, !tbaa !40
  store ptr %i.s, ptr @last_reduction, align 8, !tbaa !40
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %._crit_edge33, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @new_itemsets() local_unnamed_addr #4 {
bb.a:
  %i.a = load i32, ptr @nsyms, align 4, !tbaa !4  ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = load ptr, ptr @kernel_end, align 8, !tbaa !15
  %i.d = zext nneg i32 %i.a to i64
  %i.e = shl nuw nsw i64 %i.d, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.c, i8 0, i64 %i.e, i1 false), !tbaa !8
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.f = load ptr, ptr @itemset, align 8, !tbaa !8 ; 2 uses
  %i.g = load ptr, ptr @itemsetend, align 8, !tbaa !8 ; 2 uses
  %i.h = icmp ult ptr %i.f, %i.g
  br i1 %i.h, label %.lr.ph25, label %._crit_edge26

.lr.ph25:                                         ; preds = %._crit_edge
  %i.i = load ptr, ptr @kernel_end, align 8
  %i.j = load ptr, ptr @shift_symbol, align 8
  %i.k = load ptr, ptr @kernel_base, align 8
  %.pre28 = load ptr, ptr @ritem, align 8, !tbaa !8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph25, %bb.f
  %i.l = phi ptr [ %i.g, %.lr.ph25 ], [ %i.ad, %bb.f ]
  %i.m = phi ptr [ %.pre28, %.lr.ph25 ], [ %i.ae, %bb.f ] ; 2 uses
  %.01723 = phi ptr [ %i.f, %.lr.ph25 ], [ %i.n, %bb.f ] ; 2 uses
  %.01822 = phi i32 [ 0, %.lr.ph25 ], [ %.2, %bb.f ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.01723, i64 2 ; 2 uses
  %i.o = load i16, ptr %.01723, align 2, !tbaa !11 ; 2 uses
  %i.p = sext i16 %i.o to i64
  %i.q = getelementptr inbounds [2 x i8], ptr %i.m, i64 %i.p
  %i.r = load i16, ptr %i.q, align 2, !tbaa !11   ; 3 uses
  %i.s = icmp sgt i16 %i.r, 0
  br i1 %i.s, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.t = zext nneg i16 %i.r to i64                ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !8    ; 2 uses
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = add nsw i32 %.01822, 1
  %i.x = sext i32 %.01822 to i64
  %i.y = getelementptr inbounds [2 x i8], ptr %i.j, i64 %i.x
  store i16 %i.r, ptr %i.y, align 2, !tbaa !11
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.t
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1 = phi i32 [ %.01822, %bb.c ], [ %i.w, %bb.d ]
  %.016 = phi ptr [ %i.v, %bb.c ], [ %i.aa, %bb.d ] ; 2 uses
  %i.ab = add i16 %i.o, 1
  %i.ac = getelementptr inbounds nuw i8, ptr %.016, i64 2
  store i16 %i.ab, ptr %.016, align 2, !tbaa !11
  store ptr %i.ac, ptr %i.u, align 8, !tbaa !8
  %.pre = load ptr, ptr @ritem, align 8, !tbaa !8
  %.pre29 = load ptr, ptr @itemsetend, align 8, !tbaa !8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %i.ad = phi ptr [ %.pre29, %bb.e ], [ %i.l, %bb.b ] ; 2 uses
  %i.ae = phi ptr [ %.pre, %bb.e ], [ %i.m, %bb.b ]
  %.2 = phi i32 [ %.1, %bb.e ], [ %.01822, %bb.b ] ; 2 uses
  %i.af = icmp ult ptr %i.n, %i.ad
  br i1 %i.af, label %bb.b, label %._crit_edge26, !llvm.loop !41

._crit_edge26:                                    ; preds = %bb.f, %._crit_edge
  %.018.lcssa = phi i32 [ 0, %._crit_edge ], [ %.2, %bb.f ]
  store i32 %.018.lcssa, ptr @nshifts, align 4, !tbaa !4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @append_states() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @nshifts, align 4, !tbaa !4 ; 3 uses
  %i.b = icmp sgt i32 %i.a, 1
  br i1 %i.b, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.a
  %i.c = load ptr, ptr @shift_symbol, align 8, !tbaa !8 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.a to i64
  br label %bb.b

.preheader:                                       ; preds = %.critedge, %bb.a
  %i.d = icmp sgt i32 %i.a, 0
  br i1 %i.d, label %.lr.ph21, label %._crit_edge

bb.b:                                             ; preds = %.lr.ph, %.critedge
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %.critedge ] ; 3 uses
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv
  %i.f = load i16, ptr %i.e, align 2, !tbaa !11   ; 2 uses
  %i.g = trunc nuw nsw i64 %indvars.iv to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.d
  %.018 = phi i32 [ %i.g, %bb.b ], [ %i.m, %bb.d ] ; 4 uses
  %i.h = zext nneg i32 %.018 to i64
  %i.i = getelementptr [2 x i8], ptr %i.c, i64 %i.h ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 -2
  %i.k = load i16, ptr %i.j, align 2, !tbaa !11   ; 2 uses
  %i.l = icmp sgt i16 %i.k, %i.f
  br i1 %i.l, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  store i16 %i.k, ptr %i.i, align 2, !tbaa !11
  %i.m = add nsw i32 %.018, -1
  %i.n = icmp sgt i32 %.018, 1
  br i1 %i.n, label %bb.c, label %.critedge, !llvm.loop !42

.critedge:                                        ; preds = %bb.d, %bb.c
  %.0.lcssa = phi i32 [ 0, %bb.d ], [ %.018, %bb.c ]
  %i.o = sext i32 %.0.lcssa to i64
  %i.p = getelementptr inbounds [2 x i8], ptr %i.c, i64 %i.o
  store i16 %i.f, ptr %i.p, align 2, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %bb.b, !llvm.loop !43

.lr.ph21:                                         ; preds = %.preheader, %.lr.ph21
  %indvars.iv23 = phi i64 [ %indvars.iv.next24, %.lr.ph21 ], [ 0, %.preheader ] ; 3 uses
  %i.q = load ptr, ptr @shift_symbol, align 8, !tbaa !8
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %indvars.iv23
  %i.s = load i16, ptr %i.r, align 2, !tbaa !11
  %i.t = sext i16 %i.s to i32
  %i.u = tail call i32 @get_state(i32 noundef %i.t)
  %i.v = trunc nsw i32 %i.u to i16
  %i.w = load ptr, ptr @shiftset, align 8, !tbaa !8
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %indvars.iv23
  store i16 %i.v, ptr %i.x, align 2, !tbaa !11
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1 ; 2 uses
  %i.y = load i32, ptr @nshifts, align 4, !tbaa !4
  %i.z = sext i32 %i.y to i64
  %i.aa = icmp slt i64 %indvars.iv.next24, %i.z
  br i1 %i.aa, label %.lr.ph21, label %._crit_edge, !llvm.loop !57

._crit_edge:                                      ; preds = %.lr.ph21, %.preheader
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @save_shifts() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @nshifts, align 4, !tbaa !4
  %i.b = shl i32 %i.a, 1
  %i.c = add i32 %i.b, 14
  %i.d = tail call ptr (i32, ...) @mallocate(i32 noundef %i.c) #8 ; 6 uses
  %i.e = ptrtoaddr ptr %i.d to i64
  %i.f = load ptr, ptr @this_state, align 8, !tbaa !24
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load i16, ptr %i.g, align 8, !tbaa !29
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i16 %i.h, ptr %i.i, align 8, !tbaa !58
  %i.j = load i32, ptr @nshifts, align 4, !tbaa !4 ; 3 uses
  %i.k = trunc i32 %i.j to i16
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 10
  store i16 %i.k, ptr %i.l, align 2, !tbaa !61
  %i.m = load ptr, ptr @shiftset, align 8, !tbaa !8 ; 8 uses
  %i.n = ptrtoaddr ptr %i.m to i64                ; 4 uses
  %i.o = sext i32 %i.j to i64
  %.idx = shl nsw i64 %i.o, 1                     ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 %.idx
  %i.q = icmp sgt i32 %i.j, 0
  br i1 %i.q, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 6 uses
  %i.s = add i64 %.idx, %i.n
  %i.t = add i64 %i.n, 2
  %umax = tail call i64 @llvm.umax.i64(i64 %i.s, i64 %i.t)
  %i.u = xor i64 %i.n, -1
  %i.v = add i64 %umax, %i.u                      ; 3 uses
  %i.w = lshr i64 %i.v, 1
  %i.x = add nuw i64 %i.w, 1                      ; 5 uses
  %min.iters.check = icmp ult i64 %i.v, 6
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.y = sub i64 %i.e, %i.n
  %i.z = add i64 %i.y, 11
  %diff.check = icmp ult i64 %i.z, 31
  br i1 %diff.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check15 = icmp ult i64 %i.v, 30
  br i1 %min.iters.check15, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.x, 12
  %n.vec = and i64 %i.x, -16                      ; 4 uses
  %i.aa = shl i64 %n.vec, 1                       ; 2 uses
  %i.ab = getelementptr i8, ptr %i.m, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.r, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.m, i64 %i.ad ; 2 uses
  %next.gep16 = getelementptr i8, ptr %i.r, i64 %i.ad ; 2 uses
  %i.ae = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep, align 2, !tbaa !11
  %wide.load17 = load <8 x i16>, ptr %i.ae, align 2, !tbaa !11
  %i.af = getelementptr i8, ptr %next.gep16, i64 16
  store <8 x i16> %wide.load, ptr %next.gep16, align 2, !tbaa !11
  store <8 x i16> %wide.load17, ptr %i.af, align 2, !tbaa !11
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !70

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !37

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec20 = and i64 %i.x, -4                     ; 3 uses
  %i.ah = shl i64 %n.vec20, 1                     ; 2 uses
  %i.ai = getelementptr i8, ptr %i.m, i64 %i.ah
  %i.aj = getelementptr i8, ptr %i.r, i64 %i.ah
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index21 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next25, %vec.epilog.vector.body ] ; 2 uses
  %i.ak = shl i64 %index21, 1                     ; 2 uses
  %next.gep22 = getelementptr i8, ptr %i.m, i64 %i.ak
  %next.gep23 = getelementptr i8, ptr %i.r, i64 %i.ak
  %wide.load24 = load <4 x i16>, ptr %next.gep22, align 2, !tbaa !11
  store <4 x i16> %wide.load24, ptr %next.gep23, align 2, !tbaa !11
  %index.next25 = add nuw i64 %index21, 4         ; 2 uses
  %i.al = icmp eq i64 %index.next25, %n.vec20
  br i1 %i.al, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !71

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n26 = icmp eq i64 %i.x, %n.vec20
  br i1 %cmp.n26, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.014.ph = phi ptr [ %i.m, %iter.check ], [ %i.m, %vector.memcheck ], [ %i.ab, %vec.epilog.iter.check ], [ %i.ai, %vec.epilog.middle.block ]
  %.01113.ph = phi ptr [ %i.r, %iter.check ], [ %i.r, %vector.memcheck ], [ %i.ac, %vec.epilog.iter.check ], [ %i.aj, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.014 = phi ptr [ %i.am, %.lr.ph ], [ %.014.ph, %.lr.ph.preheader ] ; 2 uses
  %.01113 = phi ptr [ %i.ao, %.lr.ph ], [ %.01113.ph, %.lr.ph.preheader ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.014, i64 2 ; 2 uses
  %i.an = load i16, ptr %.014, align 2, !tbaa !11
  %i.ao = getelementptr inbounds nuw i8, ptr %.01113, i64 2
  store i16 %i.an, ptr %.01113, align 2, !tbaa !11
  %i.ap = icmp ult ptr %i.am, %i.p
  br i1 %i.ap, label %.lr.ph, label %._crit_edge, !llvm.loop !72

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %i.aq = load ptr, ptr @last_shift, align 8, !tbaa !65 ; 2 uses
  %.not = icmp eq ptr %i.aq, null
  %first_shift. = select i1 %.not, ptr @first_shift, ptr %i.aq
  store ptr %i.d, ptr %first_shift., align 8, !tbaa !65
  store ptr %i.d, ptr @last_shift, align 8, !tbaa !65
  ret void
}

declare void @finalize_closure() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @augment_automaton() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @first_shift, align 8, !tbaa !65 ; 11 uses
  %i.b = ptrtoaddr ptr %i.a to i64
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i16, ptr %i.c, align 8, !tbaa !58
  %i.e = icmp eq i16 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 10 ; 4 uses
  %i.g = load i16, ptr %i.f, align 2, !tbaa !61   ; 2 uses
  %i.h = load ptr, ptr @first_state, align 8, !tbaa !24
  %i.i = load i32, ptr @start_symbol, align 4, !tbaa !4 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.091.in = phi ptr [ %i.h, %bb.c ], [ %.091, %bb.e ]
  %.091 = load ptr, ptr %.091.in, align 8, !tbaa !53 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.091, i64 18
  %i.k = load i16, ptr %i.j, align 2, !tbaa !49
  %i.l = sext i16 %i.k to i32                     ; 2 uses
  %i.m = icmp sgt i32 %i.i, %i.l
  br i1 %i.m, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.091, i64 16
  %i.o = load i16, ptr %i.n, align 8, !tbaa !29
  %i.p = icmp slt i16 %i.o, %i.g
  br i1 %i.p, label %bb.d, label %.critedge, !llvm.loop !73

.critedge:                                        ; preds = %bb.d, %bb.e
  %i.q = icmp eq i32 %i.i, %i.l
  %i.r = getelementptr inbounds nuw i8, ptr %.091, i64 16
  %i.s = load i16, ptr %i.r, align 8, !tbaa !29   ; 11 uses
  br i1 %i.q, label %bb.f, label %bb.i

bb.f:                                             ; preds = %.critedge
  %i.t = icmp sgt i16 %i.s, 0
  br i1 %i.t, label %.lr.ph107, label %._crit_edge108

.lr.ph107:                                        ; preds = %bb.f, %.lr.ph107
  %.090105 = phi ptr [ %i.u, %.lr.ph107 ], [ %i.a, %bb.f ] ; 2 uses
  %i.u = load ptr, ptr %.090105, align 8, !tbaa !74 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i16, ptr %i.v, align 8, !tbaa !58   ; 2 uses
  %i.x = icmp slt i16 %i.w, %i.s
  br i1 %i.x, label %.lr.ph107, label %._crit_edge108, !llvm.loop !75

._crit_edge108:                                   ; preds = %.lr.ph107, %bb.f
  %.090.lcssa = phi ptr [ %i.a, %bb.f ], [ %i.u, %.lr.ph107 ] ; 8 uses
  %.0.lcssa = phi ptr [ undef, %bb.f ], [ %.090105, %.lr.ph107 ] ; 2 uses
  %.lcssa = phi i16 [ 0, %bb.f ], [ %i.w, %.lr.ph107 ]
  %.090.lcssa143 = ptrtoaddr ptr %.090.lcssa to i64
  %i.y = icmp eq i16 %.lcssa, %i.s
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge108
  %i.z = getelementptr inbounds nuw i8, ptr %.090.lcssa, i64 10 ; 3 uses
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !61
  %i.ab = sext i16 %i.aa to i32
  %i.ac = shl nsw i32 %i.ab, 1
  %i.ad = add nsw i32 %i.ac, 16
  %i.ae = tail call ptr (i32, ...) @mallocate(i32 noundef %i.ad) #8 ; 6 uses
  %i.af = ptrtoaddr ptr %i.ae to i64
  %i.ag = load ptr, ptr %.090.lcssa, align 8, !tbaa !74
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !74
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i16 %i.s, ptr %i.ah, align 8, !tbaa !58
  %i.ai = load i16, ptr %i.z, align 2, !tbaa !61
  %i.aj = add i16 %i.ai, 1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 10
  store i16 %i.aj, ptr %i.ak, align 2, !tbaa !61
  %i.al = load i32, ptr @nstates, align 4, !tbaa !4
  %i.am = trunc i32 %i.al to i16
  %i.an = getelementptr inbounds nuw i8, ptr %i.ae, i64 12 ; 4 uses
  store i16 %i.am, ptr %i.an, align 4, !tbaa !11
  %i.ao = load i16, ptr %i.z, align 2, !tbaa !61  ; 4 uses
  %i.ap = icmp sgt i16 %i.ao, 0
  br i1 %i.ap, label %iter.check160, label %._crit_edge114

iter.check160:                                    ; preds = %bb.g
  %i.aq = zext nneg i16 %i.ao to i64              ; 11 uses
  %min.iters.check145 = icmp ult i16 %i.ao, 4
  br i1 %min.iters.check145, label %.lr.ph113.preheader, label %vector.memcheck142

vector.memcheck142:                               ; preds = %iter.check160
  %i.ar = sub i64 %.090.lcssa143, %i.af
  %i.as = add i64 %i.ar, -3
  %diff.check144 = icmp ult i64 %i.as, 31
  br i1 %diff.check144, label %.lr.ph113.preheader, label %vector.main.loop.iter.check146

vector.main.loop.iter.check146:                   ; preds = %vector.memcheck142
  %min.iters.check147 = icmp ult i16 %i.ao, 16
  br i1 %min.iters.check147, label %vec.epilog.ph164, label %vector.ph148

vector.ph148:                                     ; preds = %vector.main.loop.iter.check146
  %n.mod.vf149 = and i64 %i.aq, 12
  %n.vec150 = and i64 %i.aq, 32752                ; 3 uses
end_hunk_0
begin_hunk_1_@augment_automaton:bb.a
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr %i.ce, i64 %indvars.iv.next.2
  %i.de = load i16, ptr %i.dd, align 2, !tbaa !11
  %i.df = getelementptr inbounds nuw [2 x i8], ptr %i.cf, i64 %indvars.iv.next.2
  store i16 %i.de, ptr %i.df, align 2, !tbaa !11
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !82

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.i
  %i.dg = load i32, ptr @nstates, align 4, !tbaa !4
  %i.dh = trunc i32 %i.dg to i16
  %i.di = getelementptr inbounds nuw i8, ptr %i.bx, i64 12 ; 2 uses
  %i.dj = sext i16 %i.s to i64                    ; 2 uses
  %i.dk = getelementptr inbounds [2 x i8], ptr %i.di, i64 %i.dj
  store i16 %i.dh, ptr %i.dk, align 2, !tbaa !11
  %i.dl = load i16, ptr %i.f, align 2, !tbaa !61
  %i.dm = icmp slt i16 %i.s, %i.dl
  br i1 %i.dm, label %.lr.ph103, label %._crit_edge104

.lr.ph103:                                        ; preds = %._crit_edge
  %i.dn = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph103, %bb.j
  %indvars.iv119 = phi i64 [ %i.dj, %.lr.ph103 ], [ %indvars.iv.next120, %bb.j ] ; 2 uses
  %i.do = getelementptr inbounds [2 x i8], ptr %i.dn, i64 %indvars.iv119
  %i.dp = load i16, ptr %i.do, align 2, !tbaa !11
  %indvars.iv.next120 = add nsw i64 %indvars.iv119, 1 ; 3 uses
  %i.dq = getelementptr inbounds [2 x i8], ptr %i.di, i64 %indvars.iv.next120
  store i16 %i.dp, ptr %i.dq, align 2, !tbaa !11
  %i.dr = load i16, ptr %i.f, align 2, !tbaa !61
  %i.ds = sext i16 %i.dr to i64
  %i.dt = icmp slt i64 %indvars.iv.next120, %i.ds
  br i1 %i.dt, label %bb.j, label %._crit_edge104, !llvm.loop !83

._crit_edge104:                                   ; preds = %bb.j, %._crit_edge
  store ptr %i.bx, ptr @first_shift, align 8, !tbaa !65
  %i.du = load ptr, ptr @last_shift, align 8, !tbaa !65
  %i.dv = icmp eq ptr %i.du, %i.a
  br i1 %i.dv, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge104
  store ptr %i.bx, ptr @last_shift, align 8, !tbaa !65
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge104, %bb.k
  tail call void @free(ptr noundef nonnull %i.a) #8
  %i.dw = tail call ptr (i32, ...) @mallocate(i32 noundef 22) #8 ; 4 uses
  %i.dx = load i32, ptr @nstates, align 4, !tbaa !4
  %i.dy = trunc i32 %i.dx to i16
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  store i16 %i.dy, ptr %i.dz, align 8, !tbaa !29
  %i.ea = load i32, ptr @start_symbol, align 4, !tbaa !4
  %i.eb = trunc i32 %i.ea to i16
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dw, i64 18
  store i16 %i.eb, ptr %i.ec, align 2, !tbaa !49
  %i.ed = load ptr, ptr @last_state, align 8, !tbaa !24
  store ptr %i.dw, ptr %i.ed, align 8, !tbaa !53
  store ptr %i.dw, ptr @last_state, align 8, !tbaa !24
  %i.ee = tail call ptr (i32, ...) @mallocate(i32 noundef 16) #8 ; 5 uses
  %i.ef = load i32, ptr @nstates, align 4, !tbaa !4 ; 2 uses
  %i.eg = add nsw i32 %i.ef, 1                    ; 2 uses
  store i32 %i.eg, ptr @nstates, align 4, !tbaa !4
  %i.eh = trunc i32 %i.ef to i16
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  store i16 %i.eh, ptr %i.ei, align 8, !tbaa !58
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ee, i64 10
  store i16 1, ptr %i.ej, align 2, !tbaa !61
  %i.ek = trunc i32 %i.eg to i16
  %i.el = getelementptr inbounds nuw i8, ptr %i.ee, i64 12
  store i16 %i.ek, ptr %i.el, align 4, !tbaa !11
  %i.em = load ptr, ptr @last_shift, align 8, !tbaa !65
  store ptr %i.ee, ptr %i.em, align 8, !tbaa !74
  store ptr %i.ee, ptr @last_shift, align 8, !tbaa !65
  br label %bb.o

bb.m:                                             ; preds = %bb.b
  %i.en = tail call ptr (i32, ...) @mallocate(i32 noundef 16) #8 ; 4 uses
  %i.eo = load ptr, ptr @first_shift, align 8, !tbaa !65
  store ptr %i.eo, ptr %i.en, align 8, !tbaa !74
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 10
  store i16 1, ptr %i.ep, align 2, !tbaa !61
  %i.eq = load i32, ptr @nstates, align 4, !tbaa !4
  %i.er = trunc i32 %i.eq to i16
  %i.es = getelementptr inbounds nuw i8, ptr %i.en, i64 12
  store i16 %i.er, ptr %i.es, align 4, !tbaa !11
  store ptr %i.en, ptr @first_shift, align 8, !tbaa !65
  %i.et = tail call ptr (i32, ...) @mallocate(i32 noundef 22) #8 ; 4 uses
  %i.eu = load i32, ptr @nstates, align 4, !tbaa !4
  %i.ev = trunc i32 %i.eu to i16
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  store i16 %i.ev, ptr %i.ew, align 8, !tbaa !29
  %i.ex = load i32, ptr @start_symbol, align 4, !tbaa !4
  %i.ey = trunc i32 %i.ex to i16
  %i.ez = getelementptr inbounds nuw i8, ptr %i.et, i64 18
  store i16 %i.ey, ptr %i.ez, align 2, !tbaa !49
  %i.fa = load ptr, ptr @last_state, align 8, !tbaa !24
  store ptr %i.et, ptr %i.fa, align 8, !tbaa !53
  store ptr %i.et, ptr @last_state, align 8, !tbaa !24
  %i.fb = tail call ptr (i32, ...) @mallocate(i32 noundef 16) #8 ; 5 uses
  %i.fc = load i32, ptr @nstates, align 4, !tbaa !4 ; 2 uses
  %i.fd = add nsw i32 %i.fc, 1                    ; 2 uses
  store i32 %i.fd, ptr @nstates, align 4, !tbaa !4
  %i.fe = trunc i32 %i.fc to i16
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  store i16 %i.fe, ptr %i.ff, align 8, !tbaa !58
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fb, i64 10
  store i16 1, ptr %i.fg, align 2, !tbaa !61
  %i.fh = trunc i32 %i.fd to i16
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fb, i64 12
  store i16 %i.fh, ptr %i.fi, align 4, !tbaa !11
  %i.fj = load ptr, ptr @last_shift, align 8, !tbaa !65
  store ptr %i.fb, ptr %i.fj, align 8, !tbaa !74
  store ptr %i.fb, ptr @last_shift, align 8, !tbaa !65
  br label %bb.o

bb.n:                                             ; preds = %bb.a
  %i.fk = tail call ptr (i32, ...) @mallocate(i32 noundef 16) #8 ; 4 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 10
  store i16 1, ptr %i.fl, align 2, !tbaa !61
  %i.fm = load i32, ptr @nstates, align 4, !tbaa !4
  %i.fn = trunc i32 %i.fm to i16
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fk, i64 12
  store i16 %i.fn, ptr %i.fo, align 4, !tbaa !11
  store ptr %i.fk, ptr @first_shift, align 8, !tbaa !65
  store ptr %i.fk, ptr @last_shift, align 8, !tbaa !65
  %i.fp = tail call ptr (i32, ...) @mallocate(i32 noundef 22) #8 ; 4 uses
  %i.fq = load i32, ptr @nstates, align 4, !tbaa !4
  %i.fr = trunc i32 %i.fq to i16
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  store i16 %i.fr, ptr %i.fs, align 8, !tbaa !29
  %i.ft = load i32, ptr @start_symbol, align 4, !tbaa !4
  %i.fu = trunc i32 %i.ft to i16
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fp, i64 18
  store i16 %i.fu, ptr %i.fv, align 2, !tbaa !49
  %i.fw = load ptr, ptr @last_state, align 8, !tbaa !24
  store ptr %i.fp, ptr %i.fw, align 8, !tbaa !53
  store ptr %i.fp, ptr @last_state, align 8, !tbaa !24
  %i.fx = tail call ptr (i32, ...) @mallocate(i32 noundef 16) #8 ; 5 uses
  %i.fy = load i32, ptr @nstates, align 4, !tbaa !4 ; 2 uses
  %i.fz = add nsw i32 %i.fy, 1                    ; 2 uses
  store i32 %i.fz, ptr @nstates, align 4, !tbaa !4
  %i.ga = trunc i32 %i.fy to i16
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  store i16 %i.ga, ptr %i.gb, align 8, !tbaa !58
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fx, i64 10
  store i16 1, ptr %i.gc, align 2, !tbaa !61
  %i.gd = trunc i32 %i.fz to i16
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fx, i64 12
  store i16 %i.gd, ptr %i.ge, align 4, !tbaa !11
  %i.gf = load ptr, ptr @last_shift, align 8, !tbaa !65
  store ptr %i.fx, ptr %i.gf, align 8, !tbaa !74
  store ptr %i.fx, ptr @last_shift, align 8, !tbaa !65
  br label %bb.o

bb.o:                                             ; preds = %bb.h, %bb.m, %._crit_edge114, %bb.l, %bb.n
  %i.gg = tail call ptr (i32, ...) @mallocate(i32 noundef 22) #8 ; 3 uses
  %i.gh = load i32, ptr @nstates, align 4, !tbaa !4
  %i.gi = trunc i32 %i.gh to i16
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  store i16 %i.gi, ptr %i.gj, align 8, !tbaa !29
  %i.gk = load ptr, ptr @last_state, align 8, !tbaa !24
  store ptr %i.gg, ptr %i.gk, align 8, !tbaa !53
  store ptr %i.gg, ptr @last_state, align 8, !tbaa !24
  %i.gl = tail call ptr (i32, ...) @mallocate(i32 noundef 16) #8 ; 5 uses
  %i.gm = load i32, ptr @nstates, align 4, !tbaa !4 ; 2 uses
  %i.gn = add nsw i32 %i.gm, 1                    ; 3 uses
  store i32 %i.gn, ptr @nstates, align 4, !tbaa !4
  %i.go = trunc i32 %i.gm to i16
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  store i16 %i.go, ptr %i.gp, align 8, !tbaa !58
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gl, i64 10
  store i16 1, ptr %i.gq, align 2, !tbaa !61
  %i.gr = trunc i32 %i.gn to i16
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gl, i64 12
  store i16 %i.gr, ptr %i.gs, align 4, !tbaa !11
  %i.gt = load ptr, ptr @last_shift, align 8, !tbaa !65
  store ptr %i.gl, ptr %i.gt, align 8, !tbaa !74
  store ptr %i.gl, ptr @last_shift, align 8, !tbaa !65
  store i32 %i.gn, ptr @final_state, align 4, !tbaa !4
  %i.gu = tail call ptr (i32, ...) @mallocate(i32 noundef 22) #8 ; 3 uses
  %i.gv = load i32, ptr @nstates, align 4, !tbaa !4 ; 2 uses
  %i.gw = add nsw i32 %i.gv, 1
  store i32 %i.gw, ptr @nstates, align 4, !tbaa !4
  %i.gx = trunc i32 %i.gv to i16
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gu, i64 16
  store i16 %i.gx, ptr %i.gy, align 8, !tbaa !29
  %i.gz = load ptr, ptr @last_state, align 8, !tbaa !24
  store ptr %i.gu, ptr %i.gz, align 8, !tbaa !53
  store ptr %i.gu, ptr @last_state, align 8, !tbaa !24
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -32768, 32768) i32 @get_state(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @kernel_base, align 8, !tbaa !15
  %i.b = sext i32 %0 to i64                       ; 7 uses
  %i.c = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !8    ; 6 uses
  %i.e = load ptr, ptr @kernel_end, align 8, !tbaa !15
  %i.f = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.b
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !8    ; 6 uses
  %i.h = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.i = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.j = sub i64 %i.h, %i.i                       ; 2 uses
  %i.k = lshr exact i64 %i.j, 1                   ; 2 uses
  %i.l = trunc i64 %i.k to i32
  %i.m = icmp ult ptr %i.d, %i.g
  br i1 %i.m, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.n = add i64 %i.i, 2
  %umax = tail call i64 @llvm.umax.i64(i64 %i.h, i64 %i.n)
  %i.o = xor i64 %i.i, -1
  %i.p = add i64 %umax, %i.o                      ; 2 uses
  %i.q = lshr i64 %i.p, 1
  %i.r = add nuw i64 %i.q, 1                      ; 2 uses
  %min.iters.check = icmp ult i64 %i.p, 14
  br i1 %min.iters.check, label %.lr.ph.preheader157, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.r, -8                       ; 3 uses
  %i.s = shl i64 %n.vec, 1
  %i.t = getelementptr i8, ptr %i.d, i64 %i.s
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.y, %vector.body ]
  %vec.phi87 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.z, %vector.body ]
  %i.u = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.u ; 2 uses
  %i.v = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <4 x i16>, ptr %next.gep, align 2, !tbaa !11
  %wide.load88 = load <4 x i16>, ptr %i.v, align 2, !tbaa !11
  %i.w = sext <4 x i16> %wide.load to <4 x i32>
  %i.x = sext <4 x i16> %wide.load88 to <4 x i32>
  %i.y = add <4 x i32> %vec.phi, %i.w             ; 2 uses
  %i.z = add <4 x i32> %vec.phi87, %i.x           ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !84

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.z, %i.y
  %i.ab = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.r, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit, label %.lr.ph.preheader157

.lr.ph.preheader157:                              ; preds = %.lr.ph.preheader, %middle.block
  %.050.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.ab, %middle.block ]
  %.03249.ph = phi ptr [ %i.d, %.lr.ph.preheader ], [ %i.t, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader157, %.lr.ph
  %.050 = phi i32 [ %i.af, %.lr.ph ], [ %.050.ph, %.lr.ph.preheader157 ]
  %.03249 = phi ptr [ %i.ac, %.lr.ph ], [ %.03249.ph, %.lr.ph.preheader157 ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.03249, i64 2 ; 2 uses
  %i.ad = load i16, ptr %.03249, align 2, !tbaa !11
  %i.ae = sext i16 %i.ad to i32
  %i.af = add nsw i32 %.050, %i.ae                ; 2 uses
  %i.ag = icmp ult ptr %i.ac, %i.g
  br i1 %i.ag, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !85

._crit_edge.loopexit:                             ; preds = %.lr.ph, %middle.block
  %.lcssa = phi i32 [ %i.ab, %middle.block ], [ %i.af, %.lr.ph ]
  %i.ah = srem i32 %.lcssa, 1009
  %i.ai = sext i32 %i.ah to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.ai, %._crit_edge.loopexit ] ; 2 uses
  %i.aj = load ptr, ptr @state_table, align 8, !tbaa !22
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %.0.lcssa
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !24 ; 2 uses
  %.not = icmp eq ptr %i.al, null
  br i1 %.not, label %bb.g, label %.preheader

.preheader:                                       ; preds = %._crit_edge
  %i.am = trunc i32 %0 to i16
  %i.an = load ptr, ptr @kernel_base, align 8
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.b
  br label %bb.b

bb.b:                                             ; preds = %.thread, %.preheader
  %.02957 = phi ptr [ %i.al, %.preheader ], [ %i.bd, %.thread ] ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.02957, i64 20
  %i.aq = load i16, ptr %i.ap, align 4, !tbaa !26
  %i.ar = sext i16 %i.aq to i32
  %i.as = icmp eq i32 %i.ar, %i.l
  br i1 %i.as, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.at = load ptr, ptr %i.ao, align 8, !tbaa !8  ; 2 uses
  %i.au = icmp ult ptr %i.at, %i.g
  br i1 %i.au, label %.lr.ph54.preheader, label %.loopexit

.lr.ph54.preheader:                               ; preds = %bb.c
  %i.av = getelementptr inbounds nuw i8, ptr %.02957, i64 22
  br label %.lr.ph54

.lr.ph54:                                         ; preds = %.lr.ph54.preheader, %.lr.ph54
  %.13352 = phi ptr [ %i.aw, %.lr.ph54 ], [ %i.at, %.lr.ph54.preheader ] ; 2 uses
  %.03451 = phi ptr [ %i.ay, %.lr.ph54 ], [ %i.av, %.lr.ph54.preheader ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.13352, i64 2 ; 2 uses
  %i.ax = load i16, ptr %.13352, align 2, !tbaa !11
  %i.ay = getelementptr inbounds nuw i8, ptr %.03451, i64 2
  %i.az = load i16, ptr %.03451, align 2, !tbaa !11
  %.not41 = icmp eq i16 %i.ax, %i.az              ; 2 uses
  %i.ba = icmp ult ptr %i.aw, %i.g
  %i.bb = select i1 %.not41, i1 %i.ba, i1 false
  br i1 %i.bb, label %.lr.ph54, label %._crit_edge55, !llvm.loop !46

._crit_edge55:                                    ; preds = %.lr.ph54
  br i1 %.not41, label %.loopexit, label %.thread

.thread:                                          ; preds = %bb.b, %._crit_edge55
  %i.bc = getelementptr inbounds nuw i8, ptr %.02957, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !47 ; 2 uses
  %.not40 = icmp eq ptr %i.bd, null
  br i1 %.not40, label %bb.d, label %bb.b, !llvm.loop !48

bb.d:                                             ; preds = %.thread
  %i.be = getelementptr inbounds nuw i8, ptr %.02957, i64 8
  %i.bf = load i32, ptr @nstates, align 4, !tbaa !4
  %i.bg = icmp sgt i32 %i.bf, 32766
  br i1 %i.bg, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @toomany(ptr noundef nonnull @.str) #8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bh = load ptr, ptr @kernel_base, align 8, !tbaa !15
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.b
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !8  ; 8 uses
  %i.bk = load ptr, ptr @kernel_end, align 8, !tbaa !15
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.b
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !8  ; 3 uses
  %i.bn = ptrtoint ptr %i.bm to i64               ; 2 uses
  %i.bo = ptrtoint ptr %i.bj to i64               ; 4 uses
  %i.bp = sub i64 %i.bn, %i.bo                    ; 2 uses
  %i.bq = lshr exact i64 %i.bp, 1
  %i.br = trunc i64 %i.bp to i32
  %i.bs = and i32 %i.br, -2
  %i.bt = add i32 %i.bs, 22
  %i.bu = tail call ptr (i32, ...) @mallocate(i32 noundef %i.bt) #8 ; 9 uses
  %i.bv = ptrtoaddr ptr %i.bu to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 18
  store i16 %i.am, ptr %i.bw, align 2, !tbaa !49
  %i.bx = load i32, ptr @nstates, align 4, !tbaa !4 ; 2 uses
  %i.by = trunc i32 %i.bx to i16
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store i16 %i.by, ptr %i.bz, align 8, !tbaa !29
  %i.ca = trunc i64 %i.bq to i16
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bu, i64 20
  store i16 %i.ca, ptr %i.cb, align 4, !tbaa !26
  %i.cc = icmp ult ptr %i.bj, %i.bm
  br i1 %i.cc, label %iter.check, label %new_state.exit

iter.check:                                       ; preds = %bb.f
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bu, i64 22 ; 6 uses
  %i.ce = add i64 %i.bo, 2
  %umax89 = tail call i64 @llvm.umax.i64(i64 %i.bn, i64 %i.ce)
  %i.cf = xor i64 %i.bo, -1
  %i.cg = add i64 %umax89, %i.cf                  ; 3 uses
  %i.ch = lshr i64 %i.cg, 1
  %i.ci = add nuw i64 %i.ch, 1                    ; 5 uses
  %min.iters.check91 = icmp ult i64 %i.cg, 6
  br i1 %min.iters.check91, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.cj = sub i64 %i.bv, %i.bo
  %i.ck = add i64 %i.cj, 21
  %diff.check = icmp ult i64 %i.ck, 31
  br i1 %diff.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check92 = icmp ult i64 %i.cg, 30
  br i1 %min.iters.check92, label %vec.epilog.ph, label %vector.ph93

vector.ph93:                                      ; preds = %vector.main.loop.iter.check
  %n.mod.vf94 = and i64 %i.ci, 12
  %n.vec95 = and i64 %i.ci, -16                   ; 4 uses
  %i.cl = shl i64 %n.vec95, 1                     ; 2 uses
  %i.cm = getelementptr i8, ptr %i.bj, i64 %i.cl
  %i.cn = getelementptr i8, ptr %i.cd, i64 %i.cl
  br label %vector.body96

vector.body96:                                    ; preds = %vector.body96, %vector.ph93
  %index97 = phi i64 [ 0, %vector.ph93 ], [ %index.next102, %vector.body96 ] ; 2 uses
  %i.co = shl i64 %index97, 1                     ; 2 uses
  %next.gep98 = getelementptr i8, ptr %i.bj, i64 %i.co ; 2 uses
  %next.gep99 = getelementptr i8, ptr %i.cd, i64 %i.co ; 2 uses
  %i.cp = getelementptr i8, ptr %next.gep98, i64 16
  %wide.load100 = load <8 x i16>, ptr %next.gep98, align 2, !tbaa !11
  %wide.load101 = load <8 x i16>, ptr %i.cp, align 2, !tbaa !11
  %i.cq = getelementptr i8, ptr %next.gep99, i64 16
  store <8 x i16> %wide.load100, ptr %next.gep99, align 2, !tbaa !11
  store <8 x i16> %wide.load101, ptr %i.cq, align 2, !tbaa !11
  %index.next102 = add nuw i64 %index97, 16       ; 2 uses
  %i.cr = icmp eq i64 %index.next102, %n.vec95
  br i1 %i.cr, label %middle.block103, label %vector.body96, !llvm.loop !86

middle.block103:                                  ; preds = %vector.body96
  %cmp.n104 = icmp eq i64 %i.ci, %n.vec95
  br i1 %cmp.n104, label %new_state.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block103
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf94, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !37

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec95, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec108 = and i64 %i.ci, -4                   ; 3 uses
  %i.cs = shl i64 %n.vec108, 1                    ; 2 uses
  %i.ct = getelementptr i8, ptr %i.bj, i64 %i.cs
  %i.cu = getelementptr i8, ptr %i.cd, i64 %i.cs
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index109 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next113, %vec.epilog.vector.body ] ; 2 uses
  %i.cv = shl i64 %index109, 1                    ; 2 uses
  %next.gep110 = getelementptr i8, ptr %i.bj, i64 %i.cv
  %next.gep111 = getelementptr i8, ptr %i.cd, i64 %i.cv
  %wide.load112 = load <4 x i16>, ptr %next.gep110, align 2, !tbaa !11
  store <4 x i16> %wide.load112, ptr %next.gep111, align 2, !tbaa !11
  %index.next113 = add nuw i64 %index109, 4       ; 2 uses
  %i.cw = icmp eq i64 %index.next113, %n.vec108
  br i1 %i.cw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !87

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n114 = icmp eq i64 %i.ci, %n.vec108
  br i1 %cmp.n114, label %new_state.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.019.i.ph = phi ptr [ %i.bj, %iter.check ], [ %i.bj, %vector.memcheck ], [ %i.cm, %vec.epilog.iter.check ], [ %i.ct, %vec.epilog.middle.block ]
  %.01718.i.ph = phi ptr [ %i.cd, %iter.check ], [ %i.cd, %vector.memcheck ], [ %i.cn, %vec.epilog.iter.check ], [ %i.cu, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.019.i = phi ptr [ %i.cx, %.lr.ph.i ], [ %.019.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.01718.i = phi ptr [ %i.cz, %.lr.ph.i ], [ %.01718.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.019.i, i64 2 ; 2 uses
  %i.cy = load i16, ptr %.019.i, align 2, !tbaa !11
  %i.cz = getelementptr inbounds nuw i8, ptr %.01718.i, i64 2
  store i16 %i.cy, ptr %.01718.i, align 2, !tbaa !11
  %i.da = icmp ult ptr %i.cx, %i.bm
  br i1 %i.da, label %.lr.ph.i, label %new_state.exit, !llvm.loop !88

new_state.exit:                                   ; preds = %.lr.ph.i, %middle.block103, %vec.epilog.middle.block, %bb.f
  %i.db = load ptr, ptr @last_state, align 8, !tbaa !24
  store ptr %i.bu, ptr %i.db, align 8, !tbaa !53
  store ptr %i.bu, ptr @last_state, align 8, !tbaa !24
  %i.dc = add nsw i32 %i.bx, 1
  store i32 %i.dc, ptr @nstates, align 4, !tbaa !4
  store ptr %i.bu, ptr %i.be, align 8, !tbaa !47
  br label %.loopexit

bb.g:                                             ; preds = %._crit_edge
  %i.dd = load i32, ptr @nstates, align 4, !tbaa !4
  %i.de = icmp sgt i32 %i.dd, 32766
  br i1 %i.de, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @toomany(ptr noundef nonnull @.str) #8
  %.pre = load ptr, ptr @kernel_base, align 8, !tbaa !15
  %.phi.trans.insert = getelementptr inbounds [8 x i8], ptr %.pre, i64 %i.b
  %.pre59 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !8 ; 2 uses
  %.pre60 = load ptr, ptr @kernel_end, align 8, !tbaa !15
  %.phi.trans.insert61 = getelementptr inbounds [8 x i8], ptr %.pre60, i64 %i.b
  %.pre62 = load ptr, ptr %.phi.trans.insert61, align 8, !tbaa !8 ; 2 uses
  %.pre63 = ptrtoint ptr %.pre62 to i64
  %.pre64 = ptrtoint ptr %.pre59 to i64
  %.pre66 = sub i64 %.pre63, %.pre64              ; 2 uses
  %.pre68 = lshr exact i64 %.pre66, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pre-phi69 = phi i64 [ %.pre68, %bb.h ], [ %i.k, %bb.g ]
  %.pre-phi67 = phi i64 [ %.pre66, %bb.h ], [ %i.j, %bb.g ]
  %i.df = phi ptr [ %.pre62, %bb.h ], [ %i.g, %bb.g ] ; 3 uses
  %i.dg = phi ptr [ %.pre59, %bb.h ], [ %i.d, %bb.g ] ; 8 uses
  %i.dh = ptrtoaddr ptr %i.dg to i64              ; 3 uses
  %i.di = trunc i64 %.pre-phi67 to i32
  %i.dj = and i32 %i.di, -2
  %i.dk = add i32 %i.dj, 22
  %i.dl = tail call ptr (i32, ...) @mallocate(i32 noundef %i.dk) #8 ; 9 uses
  %i.dm = ptrtoaddr ptr %i.dl to i64
  %i.dn = trunc i32 %0 to i16
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 18
  store i16 %i.dn, ptr %i.do, align 2, !tbaa !49
  %i.dp = load i32, ptr @nstates, align 4, !tbaa !4 ; 2 uses
  %i.dq = trunc i32 %i.dp to i16
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  store i16 %i.dq, ptr %i.dr, align 8, !tbaa !29
  %i.ds = trunc i64 %.pre-phi69 to i16
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dl, i64 20
  store i16 %i.ds, ptr %i.dt, align 4, !tbaa !26
  %i.du = icmp ult ptr %i.dg, %i.df
  br i1 %i.du, label %iter.check139, label %new_state.exit46

iter.check139:                                    ; preds = %bb.i
  %1 = ptrtoaddr ptr %i.df to i64
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dl, i64 22 ; 6 uses
  %i.dw = add i64 %i.dh, 2
  %umax119 = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.dw)
  %i.dx = xor i64 %i.dh, -1
  %i.dy = add i64 %umax119, %i.dx                 ; 3 uses
  %i.dz = lshr i64 %i.dy, 1
  %i.ea = add nuw i64 %i.dz, 1                    ; 5 uses
  %min.iters.check121 = icmp ult i64 %i.dy, 6
  br i1 %min.iters.check121, label %.lr.ph.i43.preheader, label %vector.memcheck117

vector.memcheck117:                               ; preds = %iter.check139
  %i.eb = sub i64 %i.dm, %i.dh
  %i.ec = add i64 %i.eb, 21
  %diff.check118 = icmp ult i64 %i.ec, 31
  br i1 %diff.check118, label %.lr.ph.i43.preheader, label %vector.main.loop.iter.check122

vector.main.loop.iter.check122:                   ; preds = %vector.memcheck117
  %min.iters.check123 = icmp ult i64 %i.dy, 30
  br i1 %min.iters.check123, label %vec.epilog.ph143, label %vector.ph124

vector.ph124:                                     ; preds = %vector.main.loop.iter.check122
  %n.mod.vf125 = and i64 %i.ea, 12
  %n.vec126 = and i64 %i.ea, -16                  ; 4 uses
  %i.ed = shl i64 %n.vec126, 1                    ; 2 uses
  %i.ee = getelementptr i8, ptr %i.dg, i64 %i.ed
  %i.ef = getelementptr i8, ptr %i.dv, i64 %i.ed
  br label %vector.body127

vector.body127:                                   ; preds = %vector.body127, %vector.ph124
  %index128 = phi i64 [ 0, %vector.ph124 ], [ %index.next133, %vector.body127 ] ; 2 uses
  %i.eg = shl i64 %index128, 1                    ; 2 uses
  %next.gep129 = getelementptr i8, ptr %i.dg, i64 %i.eg ; 2 uses
  %next.gep130 = getelementptr i8, ptr %i.dv, i64 %i.eg ; 2 uses
  %i.eh = getelementptr i8, ptr %next.gep129, i64 16
  %wide.load131 = load <8 x i16>, ptr %next.gep129, align 2, !tbaa !11
  %wide.load132 = load <8 x i16>, ptr %i.eh, align 2, !tbaa !11
  %i.ei = getelementptr i8, ptr %next.gep130, i64 16
  store <8 x i16> %wide.load131, ptr %next.gep130, align 2, !tbaa !11
  store <8 x i16> %wide.load132, ptr %i.ei, align 2, !tbaa !11
  %index.next133 = add nuw i64 %index128, 16      ; 2 uses
  %i.ej = icmp eq i64 %index.next133, %n.vec126
  br i1 %i.ej, label %middle.block134, label %vector.body127, !llvm.loop !89

middle.block134:                                  ; preds = %vector.body127
  %cmp.n135 = icmp eq i64 %i.ea, %n.vec126
  br i1 %cmp.n135, label %new_state.exit46, label %vec.epilog.iter.check141

vec.epilog.iter.check141:                         ; preds = %middle.block134
  %min.epilog.iters.check142 = icmp eq i64 %n.mod.vf125, 0
  br i1 %min.epilog.iters.check142, label %.lr.ph.i43.preheader, label %vec.epilog.ph143, !prof !37

vec.epilog.ph143:                                 ; preds = %vector.main.loop.iter.check122, %vec.epilog.iter.check141
  %vec.epilog.resume.val136 = phi i64 [ %n.vec126, %vec.epilog.iter.check141 ], [ 0, %vector.main.loop.iter.check122 ]
  %n.vec145 = and i64 %i.ea, -4                   ; 3 uses
  %i.ek = shl i64 %n.vec145, 1                    ; 2 uses
  %i.el = getelementptr i8, ptr %i.dg, i64 %i.ek
  %i.em = getelementptr i8, ptr %i.dv, i64 %i.ek
  br label %vec.epilog.vector.body146

vec.epilog.vector.body146:                        ; preds = %vec.epilog.vector.body146, %vec.epilog.ph143
  %index147 = phi i64 [ %vec.epilog.resume.val136, %vec.epilog.ph143 ], [ %index.next151, %vec.epilog.vector.body146 ] ; 2 uses
  %i.en = shl i64 %index147, 1                    ; 2 uses
  %next.gep148 = getelementptr i8, ptr %i.dg, i64 %i.en
  %next.gep149 = getelementptr i8, ptr %i.dv, i64 %i.en
  %wide.load150 = load <4 x i16>, ptr %next.gep148, align 2, !tbaa !11
  store <4 x i16> %wide.load150, ptr %next.gep149, align 2, !tbaa !11
  %index.next151 = add nuw i64 %index147, 4       ; 2 uses
  %i.eo = icmp eq i64 %index.next151, %n.vec145
  br i1 %i.eo, label %vec.epilog.middle.block152, label %vec.epilog.vector.body146, !llvm.loop !90

vec.epilog.middle.block152:                       ; preds = %vec.epilog.vector.body146
  %cmp.n153 = icmp eq i64 %i.ea, %n.vec145
  br i1 %cmp.n153, label %new_state.exit46, label %.lr.ph.i43.preheader

.lr.ph.i43.preheader:                             ; preds = %vector.memcheck117, %iter.check139, %vec.epilog.iter.check141, %vec.epilog.middle.block152
  %.019.i44.ph = phi ptr [ %i.dg, %iter.check139 ], [ %i.dg, %vector.memcheck117 ], [ %i.ee, %vec.epilog.iter.check141 ], [ %i.el, %vec.epilog.middle.block152 ]
  %.01718.i45.ph = phi ptr [ %i.dv, %iter.check139 ], [ %i.dv, %vector.memcheck117 ], [ %i.ef, %vec.epilog.iter.check141 ], [ %i.em, %vec.epilog.middle.block152 ]
  br label %.lr.ph.i43

.lr.ph.i43:                                       ; preds = %.lr.ph.i43.preheader, %.lr.ph.i43
  %.019.i44 = phi ptr [ %i.ep, %.lr.ph.i43 ], [ %.019.i44.ph, %.lr.ph.i43.preheader ] ; 2 uses
  %.01718.i45 = phi ptr [ %i.er, %.lr.ph.i43 ], [ %.01718.i45.ph, %.lr.ph.i43.preheader ] ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.019.i44, i64 2 ; 2 uses
  %i.eq = load i16, ptr %.019.i44, align 2, !tbaa !11
  %i.er = getelementptr inbounds nuw i8, ptr %.01718.i45, i64 2
  store i16 %i.eq, ptr %.01718.i45, align 2, !tbaa !11
  %i.es = icmp ult ptr %i.ep, %i.df
  br i1 %i.es, label %.lr.ph.i43, label %new_state.exit46, !llvm.loop !91

new_state.exit46:                                 ; preds = %.lr.ph.i43, %middle.block134, %vec.epilog.middle.block152, %bb.i
  %i.et = load ptr, ptr @last_state, align 8, !tbaa !24
  store ptr %i.dl, ptr %i.et, align 8, !tbaa !53
  store ptr %i.dl, ptr @last_state, align 8, !tbaa !24
  %i.eu = add nsw i32 %i.dp, 1
  store i32 %i.eu, ptr @nstates, align 4, !tbaa !4
  %i.ev = load ptr, ptr @state_table, align 8, !tbaa !22
  %i.ew = getelementptr inbounds [8 x i8], ptr %i.ev, i64 %.0.lcssa
  store ptr %i.dl, ptr %i.ew, align 8, !tbaa !24
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %._crit_edge55, %new_state.exit, %new_state.exit46
  %.231 = phi ptr [ %i.dl, %new_state.exit46 ], [ %i.bu, %new_state.exit ], [ %.02957, %._crit_edge55 ], [ %.02957, %bb.c ]
  %i.ex = getelementptr inbounds nuw i8, ptr %.231, i64 16
  %i.ey = load i16, ptr %i.ex, align 8, !tbaa !29
  %i.ez = sext i16 %i.ey to i32
  ret i32 %i.ez
}

; Function Attrs: nounwind uwtable
define dso_local ptr @new_state(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @nstates, align 4, !tbaa !4
  %i.b = icmp sgt i32 %i.a, 32766
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @toomany(ptr noundef nonnull @.str) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = load ptr, ptr @kernel_base, align 8, !tbaa !15
  %i.d = sext i32 %0 to i64                       ; 2 uses
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !8    ; 8 uses
  %i.g = load ptr, ptr @kernel_end, align 8, !tbaa !15
  %i.h = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.d
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !8    ; 3 uses
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = ptrtoint ptr %i.f to i64                 ; 4 uses
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = lshr exact i64 %i.l, 1
  %i.n = trunc i64 %i.l to i32
  %i.o = and i32 %i.n, -2
  %i.p = add i32 %i.o, 22
  %i.q = tail call ptr (i32, ...) @mallocate(i32 noundef %i.p) #8 ; 8 uses
  %i.r = ptrtoaddr ptr %i.q to i64
  %i.s = trunc i32 %0 to i16
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 18
  store i16 %i.s, ptr %i.t, align 2, !tbaa !49
  %i.u = load i32, ptr @nstates, align 4, !tbaa !4 ; 2 uses
  %i.v = trunc i32 %i.u to i16
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i16 %i.v, ptr %i.w, align 8, !tbaa !29
  %i.x = trunc i64 %i.m to i16
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  store i16 %i.x, ptr %i.y, align 4, !tbaa !26
  %i.z = icmp ult ptr %i.f, %i.i
  br i1 %i.z, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 22 ; 6 uses
  %i.ab = add i64 %i.k, 2
  %umax = tail call i64 @llvm.umax.i64(i64 %i.j, i64 %i.ab)
  %i.ac = xor i64 %i.k, -1
  %i.ad = add i64 %umax, %i.ac                    ; 3 uses
  %i.ae = lshr i64 %i.ad, 1
  %i.af = add nuw i64 %i.ae, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %i.ad, 6
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ag = sub i64 %i.r, %i.k
  %i.ah = add i64 %i.ag, 21
  %diff.check = icmp ult i64 %i.ah, 31
  br i1 %diff.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check21 = icmp ult i64 %i.ad, 30
  br i1 %min.iters.check21, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.af, 12
  %n.vec = and i64 %i.af, -16                     ; 4 uses
  %i.ai = shl i64 %n.vec, 1                       ; 2 uses
  %i.aj = getelementptr i8, ptr %i.f, i64 %i.ai
  %i.ak = getelementptr i8, ptr %i.aa, i64 %i.ai
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.al = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.f, i64 %i.al ; 2 uses
  %next.gep22 = getelementptr i8, ptr %i.aa, i64 %i.al ; 2 uses
  %i.am = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep, align 2, !tbaa !11
  %wide.load23 = load <8 x i16>, ptr %i.am, align 2, !tbaa !11
  %i.an = getelementptr i8, ptr %next.gep22, i64 16
  store <8 x i16> %wide.load, ptr %next.gep22, align 2, !tbaa !11
  store <8 x i16> %wide.load23, ptr %i.an, align 2, !tbaa !11
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !92

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.af, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !37

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec26 = and i64 %i.af, -4                    ; 3 uses
  %i.ap = shl i64 %n.vec26, 1                     ; 2 uses
  %i.aq = getelementptr i8, ptr %i.f, i64 %i.ap
  %i.ar = getelementptr i8, ptr %i.aa, i64 %i.ap
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index27 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next31, %vec.epilog.vector.body ] ; 2 uses
  %i.as = shl i64 %index27, 1                     ; 2 uses
  %next.gep28 = getelementptr i8, ptr %i.f, i64 %i.as
  %next.gep29 = getelementptr i8, ptr %i.aa, i64 %i.as
  %wide.load30 = load <4 x i16>, ptr %next.gep28, align 2, !tbaa !11
  store <4 x i16> %wide.load30, ptr %next.gep29, align 2, !tbaa !11
  %index.next31 = add nuw i64 %index27, 4         ; 2 uses
  %i.at = icmp eq i64 %index.next31, %n.vec26
  br i1 %i.at, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !93

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n32 = icmp eq i64 %i.af, %n.vec26
  br i1 %cmp.n32, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.019.ph = phi ptr [ %i.f, %iter.check ], [ %i.f, %vector.memcheck ], [ %i.aj, %vec.epilog.iter.check ], [ %i.aq, %vec.epilog.middle.block ]
  %.01718.ph = phi ptr [ %i.aa, %iter.check ], [ %i.aa, %vector.memcheck ], [ %i.ak, %vec.epilog.iter.check ], [ %i.ar, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.019 = phi ptr [ %i.au, %.lr.ph ], [ %.019.ph, %.lr.ph.preheader ] ; 2 uses
  %.01718 = phi ptr [ %i.aw, %.lr.ph ], [ %.01718.ph, %.lr.ph.preheader ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.019, i64 2 ; 2 uses
  %i.av = load i16, ptr %.019, align 2, !tbaa !11
  %i.aw = getelementptr inbounds nuw i8, ptr %.01718, i64 2
  store i16 %i.av, ptr %.01718, align 2, !tbaa !11
  %i.ax = icmp ult ptr %i.au, %i.i
  br i1 %i.ax, label %.lr.ph, label %._crit_edge, !llvm.loop !94

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.c
  %i.ay = load ptr, ptr @last_state, align 8, !tbaa !24
  store ptr %i.q, ptr %i.ay, align 8, !tbaa !53
  store ptr %i.q, ptr @last_state, align 8, !tbaa !24
  %i.az = add nsw i32 %i.u, 1
  store i32 %i.az, ptr @nstates, align 4, !tbaa !4
  ret ptr %i.q
}

declare void @toomany(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @insert_start_shift() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr (i32, ...) @mallocate(i32 noundef 22) #8 ; 4 uses
  %i.b = load i32, ptr @nstates, align 4, !tbaa !4
  %i.c = trunc i32 %i.b to i16
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i16 %i.c, ptr %i.d, align 8, !tbaa !29
  %i.e = load i32, ptr @start_symbol, align 4, !tbaa !4
  %i.f = trunc i32 %i.e to i16
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  store i16 %i.f, ptr %i.g, align 2, !tbaa !49
  %i.h = load ptr, ptr @last_state, align 8, !tbaa !24
  store ptr %i.a, ptr %i.h, align 8, !tbaa !53
  store ptr %i.a, ptr @last_state, align 8, !tbaa !24
  %i.i = tail call ptr (i32, ...) @mallocate(i32 noundef 16) #8 ; 5 uses
  %i.j = load i32, ptr @nstates, align 4, !tbaa !4 ; 2 uses
  %i.k = add nsw i32 %i.j, 1                      ; 2 uses
  store i32 %i.k, ptr @nstates, align 4, !tbaa !4
  %i.l = trunc i32 %i.j to i16
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i16 %i.l, ptr %i.m, align 8, !tbaa !58
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 10
  store i16 1, ptr %i.n, align 2, !tbaa !61
  %i.o = trunc i32 %i.k to i16
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i16 %i.o, ptr %i.p, align 4, !tbaa !11
  %i.q = load ptr, ptr @last_shift, align 8, !tbaa !65
  store ptr %i.i, ptr %i.q, align 8, !tbaa !74
  store ptr %i.i, ptr @last_shift, align 8, !tbaa !65
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 short", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"short", !6, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!16, !16, i64 0}
!16 = !{!"p2 short", !17, i64 0}
!17 = !{!"any p2 pointer", !10, i64 0}
!18 = distinct !{!18, !14}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.unroll.disable"}
!21 = distinct !{!21, !20}
!22 = !{!23, !23, i64 0}
!23 = !{!"p2 _ZTS4core", !17, i64 0}
!24 = !{!25, !25, i64 0}
!25 = !{!"p1 _ZTS4core", !10, i64 0}
!26 = !{!27, !12, i64 20}
!27 = !{!"core", !25, i64 0, !25, i64 8, !12, i64 16, !12, i64 18, !12, i64 20, !6, i64 22}
!28 = distinct !{!28, !14}
!29 = !{!27, !12, i64 16}
!30 = !{!31, !12, i64 8}
!31 = !{!"reductions", !32, i64 0, !12, i64 8, !12, i64 10, !6, i64 12}
!32 = !{!"p1 _ZTS10reductions", !10, i64 0}
!33 = !{!31, !12, i64 10}
!34 = distinct !{!34, !14, !35, !36}
!35 = !{!"llvm.loop.isvectorized", i32 1}
!36 = !{!"llvm.loop.unroll.runtime.disable"}
!37 = !{!"branch_weights", i32 4, i32 12}
!38 = distinct !{!38, !14, !35, !36}
!39 = distinct !{!39, !14, !35}
!40 = !{!32, !32, i64 0}
!41 = distinct !{!41, !14}
!42 = distinct !{!42, !14}
!43 = distinct !{!43, !14}
!44 = distinct !{!44, !14, !35, !36}
end_hunk_1
