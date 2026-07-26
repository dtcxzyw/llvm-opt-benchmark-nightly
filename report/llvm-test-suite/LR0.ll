inline.NumInlined: 12
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@allocate_storage:bb.a
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
  %i.c = phi ptr [ %i.ld, %append_states.exit.thread71 ], [ %i.b, %bb.a ] ; 2 uses
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
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.idx.i
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
end_hunk_0
begin_hunk_1_@generate_states:bb.a

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.019.i.i = phi ptr [ %i.he, %.lr.ph.i.i ], [ %.019.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.01718.i.i = phi ptr [ %i.hg, %.lr.ph.i.i ], [ %.01718.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 2 ; 2 uses
  %i.hf = load i16, ptr %.019.i.i, align 2, !tbaa !11
  %i.hg = getelementptr inbounds nuw i8, ptr %.01718.i.i, i64 2
  store i16 %i.hf, ptr %.01718.i.i, align 2, !tbaa !11
  %i.hh = icmp ult ptr %i.he, %i.fu
  br i1 %i.hh, label %.lr.ph.i.i, label %new_state.exit.i, !llvm.loop !52

new_state.exit.i:                                 ; preds = %.lr.ph.i.i, %middle.block149, %vec.epilog.middle.block166, %bb.o
  %i.hi = load ptr, ptr @last_state, align 8, !tbaa !24
  store ptr %i.ga, ptr %i.hi, align 8, !tbaa !53
  store ptr %i.ga, ptr @last_state, align 8, !tbaa !24
  %i.hj = add nsw i32 %i.gd, 1
  store i32 %i.hj, ptr @nstates, align 4, !tbaa !4
  store ptr %i.ga, ptr %i.fr, align 8, !tbaa !47
  br label %get_state.exit

bb.p:                                             ; preds = %._crit_edge.i11.thread, %._crit_edge.i11
  %.0.lcssa.i1270 = phi i64 [ 0, %._crit_edge.i11.thread ], [ %i.es, %._crit_edge.i11 ]
  %i.hk = load i32, ptr @nstates, align 4, !tbaa !4
  %i.hl = icmp sgt i32 %i.hk, 32766
  br i1 %i.hl, label %bb.q, label %bb.r

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
  %i.hm = phi ptr [ %.pre62.i, %bb.q ], [ %i.dp, %bb.p ] ; 3 uses
  %i.hn = phi ptr [ %.pre59.i, %bb.q ], [ %i.dm, %bb.p ] ; 8 uses
  %i.ho = ptrtoaddr ptr %i.hn to i64              ; 3 uses
  %i.hp = trunc i64 %.pre-phi67.i to i32
  %i.hq = and i32 %i.hp, -2
  %i.hr = add i32 %i.hq, 22
  %i.hs = tail call ptr (i32, ...) @mallocate(i32 noundef %i.hr) #8 ; 9 uses
  %i.ht = ptrtoaddr ptr %i.hs to i64
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hs, i64 18
  store i16 %i.di, ptr %i.hu, align 2, !tbaa !49
  %i.hv = load i32, ptr @nstates, align 4, !tbaa !4 ; 2 uses
  %i.hw = trunc i32 %i.hv to i16
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  store i16 %i.hw, ptr %i.hx, align 8, !tbaa !29
  %i.hy = trunc i64 %.pre-phi69.i to i16
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hs, i64 20
  store i16 %i.hy, ptr %i.hz, align 4, !tbaa !26
  %i.ia = icmp ult ptr %i.hn, %i.hm
  br i1 %i.ia, label %iter.check116, label %new_state.exit46.i

iter.check116:                                    ; preds = %bb.r
  %i.ib = ptrtoaddr ptr %i.hm to i64
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hs, i64 22 ; 6 uses
  %i.id = add i64 %i.ho, 2
  %umax98 = tail call i64 @llvm.umax.i64(i64 %i.ib, i64 %i.id)
  %i.ie = xor i64 %i.ho, -1
  %i.if = add i64 %umax98, %i.ie                  ; 3 uses
  %i.ig = lshr i64 %i.if, 1
  %i.ih = add nuw i64 %i.ig, 1                    ; 5 uses
  %min.iters.check99 = icmp ult i64 %i.if, 6
  br i1 %min.iters.check99, label %.lr.ph.i43.i.preheader, label %vector.memcheck96

vector.memcheck96:                                ; preds = %iter.check116
  %i.ii = sub i64 %i.ht, %i.ho
  %i.ij = add i64 %i.ii, 21
  %diff.check97 = icmp ult i64 %i.ij, 31
  br i1 %diff.check97, label %.lr.ph.i43.i.preheader, label %vector.main.loop.iter.check100

vector.main.loop.iter.check100:                   ; preds = %vector.memcheck96
  %min.iters.check101 = icmp ult i64 %i.if, 30
  br i1 %min.iters.check101, label %vec.epilog.ph120, label %vector.ph102

vector.ph102:                                     ; preds = %vector.main.loop.iter.check100
  %n.mod.vf103 = and i64 %i.ih, 12
  %n.vec104 = and i64 %i.ih, -16                  ; 4 uses
  %i.ik = shl i64 %n.vec104, 1                    ; 2 uses
  %i.il = getelementptr i8, ptr %i.hn, i64 %i.ik
  %i.im = getelementptr i8, ptr %i.ic, i64 %i.ik
  br label %vector.body105

vector.body105:                                   ; preds = %vector.body105, %vector.ph102
  %index106 = phi i64 [ 0, %vector.ph102 ], [ %index.next111, %vector.body105 ] ; 2 uses
  %i.in = shl i64 %index106, 1                    ; 2 uses
  %next.gep107 = getelementptr i8, ptr %i.hn, i64 %i.in ; 2 uses
  %next.gep108 = getelementptr i8, ptr %i.ic, i64 %i.in ; 2 uses
  %i.io = getelementptr i8, ptr %next.gep107, i64 16
  %wide.load109 = load <8 x i16>, ptr %next.gep107, align 2, !tbaa !11
  %wide.load110 = load <8 x i16>, ptr %i.io, align 2, !tbaa !11
  %i.ip = getelementptr i8, ptr %next.gep108, i64 16
  store <8 x i16> %wide.load109, ptr %next.gep108, align 2, !tbaa !11
  store <8 x i16> %wide.load110, ptr %i.ip, align 2, !tbaa !11
  %index.next111 = add nuw i64 %index106, 16      ; 2 uses
  %i.iq = icmp eq i64 %index.next111, %n.vec104
  br i1 %i.iq, label %middle.block112, label %vector.body105, !llvm.loop !54

middle.block112:                                  ; preds = %vector.body105
  %cmp.n113 = icmp eq i64 %i.ih, %n.vec104
  br i1 %cmp.n113, label %new_state.exit46.i, label %vec.epilog.iter.check118

vec.epilog.iter.check118:                         ; preds = %middle.block112
  %min.epilog.iters.check119 = icmp eq i64 %n.mod.vf103, 0
  br i1 %min.epilog.iters.check119, label %.lr.ph.i43.i.preheader, label %vec.epilog.ph120, !prof !37

vec.epilog.ph120:                                 ; preds = %vector.main.loop.iter.check100, %vec.epilog.iter.check118
  %vec.epilog.resume.val114 = phi i64 [ %n.vec104, %vec.epilog.iter.check118 ], [ 0, %vector.main.loop.iter.check100 ]
  %n.vec122 = and i64 %i.ih, -4                   ; 3 uses
  %i.ir = shl i64 %n.vec122, 1                    ; 2 uses
  %i.is = getelementptr i8, ptr %i.hn, i64 %i.ir
  %i.it = getelementptr i8, ptr %i.ic, i64 %i.ir
  br label %vec.epilog.vector.body123

vec.epilog.vector.body123:                        ; preds = %vec.epilog.vector.body123, %vec.epilog.ph120
  %index124 = phi i64 [ %vec.epilog.resume.val114, %vec.epilog.ph120 ], [ %index.next128, %vec.epilog.vector.body123 ] ; 2 uses
  %i.iu = shl i64 %index124, 1                    ; 2 uses
  %next.gep125 = getelementptr i8, ptr %i.hn, i64 %i.iu
  %next.gep126 = getelementptr i8, ptr %i.ic, i64 %i.iu
  %wide.load127 = load <4 x i16>, ptr %next.gep125, align 2, !tbaa !11
  store <4 x i16> %wide.load127, ptr %next.gep126, align 2, !tbaa !11
  %index.next128 = add nuw i64 %index124, 4       ; 2 uses
  %i.iv = icmp eq i64 %index.next128, %n.vec122
  br i1 %i.iv, label %vec.epilog.middle.block129, label %vec.epilog.vector.body123, !llvm.loop !55

vec.epilog.middle.block129:                       ; preds = %vec.epilog.vector.body123
  %cmp.n130 = icmp eq i64 %i.ih, %n.vec122
  br i1 %cmp.n130, label %new_state.exit46.i, label %.lr.ph.i43.i.preheader

.lr.ph.i43.i.preheader:                           ; preds = %vector.memcheck96, %iter.check116, %vec.epilog.iter.check118, %vec.epilog.middle.block129
  %.019.i44.i.ph = phi ptr [ %i.hn, %iter.check116 ], [ %i.hn, %vector.memcheck96 ], [ %i.il, %vec.epilog.iter.check118 ], [ %i.is, %vec.epilog.middle.block129 ]
  %.01718.i45.i.ph = phi ptr [ %i.ic, %iter.check116 ], [ %i.ic, %vector.memcheck96 ], [ %i.im, %vec.epilog.iter.check118 ], [ %i.it, %vec.epilog.middle.block129 ]
  br label %.lr.ph.i43.i

.lr.ph.i43.i:                                     ; preds = %.lr.ph.i43.i.preheader, %.lr.ph.i43.i
  %.019.i44.i = phi ptr [ %i.iw, %.lr.ph.i43.i ], [ %.019.i44.i.ph, %.lr.ph.i43.i.preheader ] ; 2 uses
  %.01718.i45.i = phi ptr [ %i.iy, %.lr.ph.i43.i ], [ %.01718.i45.i.ph, %.lr.ph.i43.i.preheader ] ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %.019.i44.i, i64 2 ; 2 uses
  %i.ix = load i16, ptr %.019.i44.i, align 2, !tbaa !11
  %i.iy = getelementptr inbounds nuw i8, ptr %.01718.i45.i, i64 2
  store i16 %i.ix, ptr %.01718.i45.i, align 2, !tbaa !11
  %i.iz = icmp ult ptr %i.iw, %i.hm
  br i1 %i.iz, label %.lr.ph.i43.i, label %new_state.exit46.i, !llvm.loop !56

new_state.exit46.i:                               ; preds = %.lr.ph.i43.i, %middle.block112, %vec.epilog.middle.block129, %bb.r
  %i.ja = load ptr, ptr @last_state, align 8, !tbaa !24
  store ptr %i.hs, ptr %i.ja, align 8, !tbaa !53
  store ptr %i.hs, ptr @last_state, align 8, !tbaa !24
  %i.jb = add nsw i32 %i.hv, 1
  store i32 %i.jb, ptr @nstates, align 4, !tbaa !4
  %i.jc = load ptr, ptr @state_table, align 8, !tbaa !22
  %i.jd = getelementptr inbounds [8 x i8], ptr %i.jc, i64 %.0.lcssa.i1270
  store ptr %i.hs, ptr %i.jd, align 8, !tbaa !24
  br label %get_state.exit

get_state.exit:                                   ; preds = %.preheader.i14, %._crit_edge55.i.us, %new_state.exit.i, %new_state.exit46.i
  %.231.i = phi ptr [ %i.hs, %new_state.exit46.i ], [ %i.ga, %new_state.exit.i ], [ %.02957.i.us, %._crit_edge55.i.us ], [ %.02957.i, %.preheader.i14 ]
  %i.je = getelementptr inbounds nuw i8, ptr %.231.i, i64 16
  %i.jf = load i16, ptr %i.je, align 8, !tbaa !29
  %i.jg = load ptr, ptr @shiftset, align 8, !tbaa !8
  %i.jh = getelementptr inbounds nuw [2 x i8], ptr %i.jg, i64 %indvars.iv23.i
  store i16 %i.jf, ptr %i.jh, align 2, !tbaa !11
  %indvars.iv.next24.i = add nuw nsw i64 %indvars.iv23.i, 1 ; 2 uses
  %i.ji = load i32, ptr @nshifts, align 4, !tbaa !4 ; 3 uses
  %i.jj = sext i32 %i.ji to i64
  %i.jk = icmp slt i64 %indvars.iv.next24.i, %i.jj
  br i1 %i.jk, label %.lr.ph21.i, label %append_states.exit, !llvm.loop !57

append_states.exit:                               ; preds = %get_state.exit
  %i.jl = icmp sgt i32 %i.ji, 0
  br i1 %i.jl, label %bb.s, label %append_states.exit.thread71

bb.s:                                             ; preds = %append_states.exit
  %i.jm = shl nuw i32 %i.ji, 1
  %i.jn = add i32 %i.jm, 14
  %i.jo = tail call ptr (i32, ...) @mallocate(i32 noundef %i.jn) #8 ; 6 uses
  %i.jp = ptrtoaddr ptr %i.jo to i64
  %i.jq = load ptr, ptr @this_state, align 8, !tbaa !24
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 16
  %i.js = load i16, ptr %i.jr, align 8, !tbaa !29
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jo, i64 8
  store i16 %i.js, ptr %i.jt, align 8, !tbaa !58
  %i.ju = load i32, ptr @nshifts, align 4, !tbaa !4 ; 3 uses
  %i.jv = trunc i32 %i.ju to i16
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jo, i64 10
  store i16 %i.jv, ptr %i.jw, align 2, !tbaa !61
  %i.jx = load ptr, ptr @shiftset, align 8, !tbaa !8 ; 8 uses
  %i.jy = ptrtoaddr ptr %i.jx to i64              ; 4 uses
  %i.jz = sext i32 %i.ju to i64
  %.idx.i7 = shl nsw i64 %i.jz, 1                 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jx, i64 %.idx.i7
  %i.kb = icmp sgt i32 %i.ju, 0
  br i1 %i.kb, label %iter.check, label %save_shifts.exit

iter.check:                                       ; preds = %bb.s
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jo, i64 12 ; 6 uses
  %i.kd = add i64 %.idx.i7, %i.jy
  %i.ke = add i64 %i.jy, 2
  %umax = tail call i64 @llvm.umax.i64(i64 %i.kd, i64 %i.ke)
  %i.kf = xor i64 %i.jy, -1
  %i.kg = add i64 %umax, %i.kf                    ; 3 uses
  %i.kh = lshr i64 %i.kg, 1
  %i.ki = add nuw i64 %i.kh, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %i.kg, 6
  br i1 %min.iters.check, label %.lr.ph.i10.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.kj = sub i64 %i.jp, %i.jy
  %i.kk = add i64 %i.kj, 11
  %diff.check = icmp ult i64 %i.kk, 31
  br i1 %diff.check, label %.lr.ph.i10.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check82 = icmp ult i64 %i.kg, 30
  br i1 %min.iters.check82, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ki, 12
  %n.vec = and i64 %i.ki, -16                     ; 4 uses
  %i.kl = shl i64 %n.vec, 1                       ; 2 uses
  %i.km = getelementptr i8, ptr %i.jx, i64 %i.kl
  %i.kn = getelementptr i8, ptr %i.kc, i64 %i.kl
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ko = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.jx, i64 %i.ko ; 2 uses
  %next.gep83 = getelementptr i8, ptr %i.kc, i64 %i.ko ; 2 uses
  %i.kp = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep, align 2, !tbaa !11
  %wide.load84 = load <8 x i16>, ptr %i.kp, align 2, !tbaa !11
  %i.kq = getelementptr i8, ptr %next.gep83, i64 16
  store <8 x i16> %wide.load, ptr %next.gep83, align 2, !tbaa !11
  store <8 x i16> %wide.load84, ptr %i.kq, align 2, !tbaa !11
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.kr = icmp eq i64 %index.next, %n.vec
  br i1 %i.kr, label %middle.block, label %vector.body, !llvm.loop !62

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ki, %n.vec
  br i1 %cmp.n, label %save_shifts.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i10.preheader, label %vec.epilog.ph, !prof !37

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec87 = and i64 %i.ki, -4                    ; 3 uses
  %i.ks = shl i64 %n.vec87, 1                     ; 2 uses
  %i.kt = getelementptr i8, ptr %i.jx, i64 %i.ks
  %i.ku = getelementptr i8, ptr %i.kc, i64 %i.ks
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index88 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next92, %vec.epilog.vector.body ] ; 2 uses
  %i.kv = shl i64 %index88, 1                     ; 2 uses
  %next.gep89 = getelementptr i8, ptr %i.jx, i64 %i.kv
  %next.gep90 = getelementptr i8, ptr %i.kc, i64 %i.kv
  %wide.load91 = load <4 x i16>, ptr %next.gep89, align 2, !tbaa !11
  store <4 x i16> %wide.load91, ptr %next.gep90, align 2, !tbaa !11
  %index.next92 = add nuw i64 %index88, 4         ; 2 uses
  %i.kw = icmp eq i64 %index.next92, %n.vec87
  br i1 %i.kw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !63

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n93 = icmp eq i64 %i.ki, %n.vec87
  br i1 %cmp.n93, label %save_shifts.exit, label %.lr.ph.i10.preheader

.lr.ph.i10.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.014.i.ph = phi ptr [ %i.jx, %iter.check ], [ %i.jx, %vector.memcheck ], [ %i.km, %vec.epilog.iter.check ], [ %i.kt, %vec.epilog.middle.block ]
  %.01113.i.ph = phi ptr [ %i.kc, %iter.check ], [ %i.kc, %vector.memcheck ], [ %i.kn, %vec.epilog.iter.check ], [ %i.ku, %vec.epilog.middle.block ]
  br label %.lr.ph.i10

.lr.ph.i10:                                       ; preds = %.lr.ph.i10.preheader, %.lr.ph.i10
  %.014.i = phi ptr [ %i.kx, %.lr.ph.i10 ], [ %.014.i.ph, %.lr.ph.i10.preheader ] ; 2 uses
  %.01113.i = phi ptr [ %i.kz, %.lr.ph.i10 ], [ %.01113.i.ph, %.lr.ph.i10.preheader ] ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %.014.i, i64 2 ; 2 uses
  %i.ky = load i16, ptr %.014.i, align 2, !tbaa !11
  %i.kz = getelementptr inbounds nuw i8, ptr %.01113.i, i64 2
  store i16 %i.ky, ptr %.01113.i, align 2, !tbaa !11
  %i.la = icmp ult ptr %i.kx, %i.ka
  br i1 %i.la, label %.lr.ph.i10, label %save_shifts.exit, !llvm.loop !64

save_shifts.exit:                                 ; preds = %.lr.ph.i10, %middle.block, %vec.epilog.middle.block, %bb.s
  %i.lb = load ptr, ptr @last_shift, align 8, !tbaa !65 ; 2 uses
  %.not.i9 = icmp eq ptr %i.lb, null
  %first_shift..i = select i1 %.not.i9, ptr @first_shift, ptr %i.lb
  store ptr %i.jo, ptr %first_shift..i, align 8, !tbaa !65
  store ptr %i.jo, ptr @last_shift, align 8, !tbaa !65
  br label %append_states.exit.thread71

append_states.exit.thread71:                      ; preds = %.preheader.i, %append_states.exit.thread, %save_shifts.exit, %append_states.exit
  %i.lc = load ptr, ptr @this_state, align 8, !tbaa !24
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !53 ; 3 uses
  store ptr %i.ld, ptr @this_state, align 8, !tbaa !24
  %.not = icmp eq ptr %i.ld, null
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
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.idx
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
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx
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
end_hunk_1
