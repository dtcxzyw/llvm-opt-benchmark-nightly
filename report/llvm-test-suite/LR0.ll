Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/LR0?download=true
inline.NumInlined: 12
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@allocate_storage:bb.a
  %i.as = sext i16 %i.ar to i32
  %i.at = add nsw i32 %i.am, %i.as                ; 2 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %allocate_itemsets.exit.loopexit.unr-lcssa, label %bb.d, !llvm.loop !1

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
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !37
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv.i.epil
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !39
  %i.az = sext i16 %i.ay to i32
  %i.ba = add nsw i32 %.235.i.epil, %i.az
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %allocate_itemsets.exit, label %bb.e, !llvm.loop !71

allocate_itemsets.exit:                           ; preds = %allocate_itemsets.exit.loopexit.unr-lcssa, %bb.e, %._crit_edge.i
  store ptr %i.c, ptr @shift_symbol, align 8, !tbaa !37
  %i.bb = shl i32 %i.o, 3
  %i.bc = tail call ptr (i32, ...) @mallocate(i32 noundef %i.bb) #8
  store ptr %i.bc, ptr @kernel_end, align 8, !tbaa !43
  %i.bd = load i32, ptr @nsyms, align 4, !tbaa !16
  %i.be = shl i32 %i.bd, 1
  %i.bf = tail call ptr (i32, ...) @mallocate(i32 noundef %i.be) #8
  store ptr %i.bf, ptr @shiftset, align 8, !tbaa !37
  %i.bg = load i32, ptr @nrules, align 4, !tbaa !16
  %i.bh = shl i32 %i.bg, 1
  %i.bi = add i32 %i.bh, 2
  %i.bj = tail call ptr (i32, ...) @mallocate(i32 noundef %i.bi) #8
  store ptr %i.bj, ptr @redset, align 8, !tbaa !37
  %i.bk = tail call ptr (i32, ...) @mallocate(i32 noundef 8072) #8
  store ptr %i.bk, ptr @state_table, align 8, !tbaa !46
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define dso_local void @free_storage() local_unnamed_addr #2 !guid !73 {
bb.a:
  %i.a = load ptr, ptr @shift_symbol, align 8, !tbaa !37 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.a) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = load ptr, ptr @redset, align 8, !tbaa !37 ; 2 uses
  %.not7 = icmp eq ptr %i.b, null
  br i1 %.not7, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.b) #8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.c = load ptr, ptr @shiftset, align 8, !tbaa !37 ; 2 uses
  %.not8 = icmp eq ptr %i.c, null
  br i1 %.not8, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %i.c) #8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.d = load ptr, ptr @kernel_base, align 8, !tbaa !43 ; 2 uses
  %.not9 = icmp eq ptr %i.d, null
  br i1 %.not9, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @free(ptr noundef nonnull %i.d) #8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.e = load ptr, ptr @kernel_end, align 8, !tbaa !43 ; 2 uses
  %.not10 = icmp eq ptr %i.e, null
  br i1 %.not10, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @free(ptr noundef nonnull %i.e) #8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.f = load ptr, ptr @kernel_items, align 8, !tbaa !37 ; 2 uses
  %.not11 = icmp eq ptr %i.f, null
  br i1 %.not11, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @free(ptr noundef nonnull %i.f) #8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.g = load ptr, ptr @state_table, align 8, !tbaa !46 ; 2 uses
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
define dso_local void @generate_states() local_unnamed_addr #0 !guid !89 {
bb.a:
  tail call void @allocate_storage()
  %i.a = load i32, ptr @nitems, align 4, !tbaa !16
  tail call void @initialize_closure(i32 noundef %i.a) #8
  %i.b = tail call ptr (i32, ...) @mallocate(i32 noundef 22) #8 ; 5 uses
  store ptr %i.b, ptr @this_state, align 8, !tbaa !48
  store ptr %i.b, ptr @last_state, align 8, !tbaa !48
  store ptr %i.b, ptr @first_state, align 8, !tbaa !48
  store i32 1, ptr @nstates, align 4, !tbaa !16
  %.not25 = icmp eq ptr %i.b, null
  br i1 %.not25, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %append_states.exit.thread70
  %i.c = phi ptr [ %i.lb, %append_states.exit.thread70 ], [ %i.b, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 22
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.f = load i16, ptr %i.e, align 4, !tbaa !50
  %i.g = sext i16 %i.f to i32
  tail call void @closure(ptr noundef nonnull %i.d, i32 noundef %i.g) #8
  %i.h = load ptr, ptr @itemset, align 8, !tbaa !37 ; 2 uses
  %i.i = load ptr, ptr @itemsetend, align 8, !tbaa !37 ; 2 uses
  %i.j = icmp ult ptr %i.h, %i.i
  br i1 %i.j, label %.lr.ph.i, label %save_reductions.exit

.lr.ph.i:                                         ; preds = %.lr.ph
  %i.k = load ptr, ptr @ritem, align 8, !tbaa !37
  %i.l = load ptr, ptr @redset, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %.028.i = phi i32 [ 0, %.lr.ph.i ], [ %.1.i, %bb.d ] ; 3 uses
  %.02327.i = phi ptr [ %i.h, %.lr.ph.i ], [ %i.v, %bb.d ] ; 2 uses
  %i.m = load i16, ptr %.02327.i, align 2, !tbaa !39
  %i.n = sext i16 %i.m to i64
  %i.o = getelementptr inbounds [2 x i8], ptr %i.k, i64 %i.n
  %i.p = load i16, ptr %i.o, align 2, !tbaa !39   ; 2 uses
  %i.q = icmp slt i16 %i.p, 0
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = sub i16 0, %i.p
  %i.s = add nsw i32 %.028.i, 1
  %i.t = sext i32 %.028.i to i64
  %i.u = getelementptr inbounds [2 x i8], ptr %i.l, i64 %i.t
  store i16 %i.r, ptr %i.u, align 2, !tbaa !39
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1.i = phi i32 [ %i.s, %bb.c ], [ %.028.i, %bb.b ] ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.02327.i, i64 2 ; 2 uses
  %i.w = icmp ult ptr %i.v, %i.i
  br i1 %i.w, label %bb.b, label %._crit_edge.i, !llvm.loop !2

._crit_edge.i:                                    ; preds = %bb.d
  %.not.i = icmp eq i32 %.1.i, 0
  br i1 %.not.i, label %save_reductions.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i
  %i.x = shl i32 %.1.i, 1
  %i.y = add i32 %i.x, 14
  %i.z = tail call ptr (i32, ...) @mallocate(i32 noundef %i.y) #8 ; 6 uses
  %i.aa = ptrtoaddr ptr %i.z to i64
  %i.ab = load ptr, ptr @this_state, align 8, !tbaa !48
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load i16, ptr %i.ac, align 8, !tbaa !51
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i16 %i.ad, ptr %i.ae, align 8, !tbaa !54
  %i.af = trunc i32 %.1.i to i16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 10
  store i16 %i.af, ptr %i.ag, align 2, !tbaa !55
  %i.ah = load ptr, ptr @redset, align 8, !tbaa !37 ; 8 uses
  %i.ai = ptrtoaddr ptr %i.ah to i64              ; 4 uses
  %0 = sext i32 %.1.i to i64
  %.idx.i = shl nsw i64 %0, 1                     ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.idx.i
  %i.ak = icmp sgt i32 %.1.i, 0
  br i1 %i.ak, label %iter.check195, label %._crit_edge33.i

iter.check195:                                    ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %i.z, i64 12 ; 6 uses
  %i.am = xor i64 %i.ai, -1
  %i.an = add i64 %.idx.i, %i.ai
  %i.ao = add i64 %i.ai, 2
  %umax177 = tail call i64 @llvm.umax.i64(i64 %i.an, i64 %i.ao)
  %i.ap = add i64 %umax177, %i.am                 ; 3 uses
  %i.aq = lshr i64 %i.ap, 1
  %i.ar = add nuw i64 %i.aq, 1                    ; 5 uses
  %min.iters.check179 = icmp ult i64 %i.ap, 6
  br i1 %min.iters.check179, label %.lr.ph32.i.preheader, label %vector.memcheck180

vector.memcheck180:                               ; preds = %iter.check195
  %i.as = sub i64 %i.aa, %i.ai
  %i.at = add i64 %i.as, 11
  %diff.check181 = icmp ult i64 %i.at, 31
  br i1 %diff.check181, label %.lr.ph32.i.preheader, label %vector.main.loop.iter.check182

vector.main.loop.iter.check182:                   ; preds = %vector.memcheck180
  %min.iters.check183 = icmp ult i64 %i.ap, 30
  br i1 %min.iters.check183, label %vec.epilog.ph199, label %vector.ph184

vector.ph184:                                     ; preds = %vector.main.loop.iter.check182
  %i.au = and i64 %i.ar, 12
  %n.vec185 = and i64 %i.ar, -16                  ; 4 uses
  %i.av = shl i64 %n.vec185, 1                    ; 2 uses
  %i.aw = getelementptr i8, ptr %i.al, i64 %i.av
  %i.ax = getelementptr i8, ptr %i.ah, i64 %i.av
  br label %vector.body186

vector.body186:                                   ; preds = %vector.ph184, %vector.body186
  %index187 = phi i64 [ 0, %vector.ph184 ], [ %index.next192, %vector.body186 ] ; 2 uses
  %i.ay = shl i64 %index187, 1                    ; 2 uses
  %next.gep188 = getelementptr i8, ptr %i.al, i64 %i.ay ; 2 uses
  %next.gep189 = getelementptr i8, ptr %i.ah, i64 %i.ay ; 2 uses
  %i.az = getelementptr i8, ptr %next.gep189, i64 16
  %wide.load190 = load <8 x i16>, ptr %next.gep189, align 2, !tbaa !39
  %wide.load191 = load <8 x i16>, ptr %i.az, align 2, !tbaa !39
  %i.ba = getelementptr i8, ptr %next.gep188, i64 16
  store <8 x i16> %wide.load190, ptr %next.gep188, align 2, !tbaa !39
  store <8 x i16> %wide.load191, ptr %i.ba, align 2, !tbaa !39
  %index.next192 = add nuw i64 %index187, 16      ; 2 uses
  %i.bb = icmp eq i64 %index.next192, %n.vec185
  br i1 %i.bb, label %middle.block193, label %vector.body186, !llvm.loop !74

middle.block193:                                  ; preds = %vector.body186
  %cmp.n194 = icmp eq i64 %i.ar, %n.vec185
  br i1 %cmp.n194, label %._crit_edge33.i, label %vec.epilog.iter.check196

vec.epilog.iter.check196:                         ; preds = %middle.block193
  %min.epilog.iters.check198 = icmp eq i64 %i.au, 0
  br i1 %min.epilog.iters.check198, label %.lr.ph32.i.preheader, label %vec.epilog.ph199, !prof !58

vec.epilog.ph199:                                 ; preds = %vector.main.loop.iter.check182, %vec.epilog.iter.check196
  %vec.epilog.resume.val200 = phi i64 [ %n.vec185, %vec.epilog.iter.check196 ], [ 0, %vector.main.loop.iter.check182 ]
  %n.vec201 = and i64 %i.ar, -4                   ; 3 uses
  %i.bc = shl i64 %n.vec201, 1                    ; 2 uses
  %i.bd = getelementptr i8, ptr %i.al, i64 %i.bc
  %i.be = getelementptr i8, ptr %i.ah, i64 %i.bc
  br label %vec.epilog.vector.body202

vec.epilog.vector.body202:                        ; preds = %vec.epilog.vector.body202, %vec.epilog.ph199
  %index203 = phi i64 [ %vec.epilog.resume.val200, %vec.epilog.ph199 ], [ %index.next207, %vec.epilog.vector.body202 ] ; 2 uses
  %i.bf = shl i64 %index203, 1                    ; 2 uses
  %next.gep204 = getelementptr i8, ptr %i.al, i64 %i.bf
  %next.gep205 = getelementptr i8, ptr %i.ah, i64 %i.bf
  %wide.load206 = load <4 x i16>, ptr %next.gep205, align 2, !tbaa !39
  store <4 x i16> %wide.load206, ptr %next.gep204, align 2, !tbaa !39
  %index.next207 = add nuw i64 %index203, 4       ; 2 uses
  %i.bg = icmp eq i64 %index.next207, %n.vec201
  br i1 %i.bg, label %vec.epilog.middle.block208, label %vec.epilog.vector.body202, !llvm.loop !75

vec.epilog.middle.block208:                       ; preds = %vec.epilog.vector.body202
  %cmp.n209 = icmp eq i64 %i.ar, %n.vec201
  br i1 %cmp.n209, label %._crit_edge33.i, label %.lr.ph32.i.preheader

.lr.ph32.i.preheader:                             ; preds = %iter.check195, %vector.memcheck180, %vec.epilog.iter.check196, %vec.epilog.middle.block208
  %.02130.i.ph = phi ptr [ %i.al, %iter.check195 ], [ %i.al, %vector.memcheck180 ], [ %i.aw, %vec.epilog.iter.check196 ], [ %i.bd, %vec.epilog.middle.block208 ]
  %.02229.i.ph = phi ptr [ %i.ah, %iter.check195 ], [ %i.ah, %vector.memcheck180 ], [ %i.ax, %vec.epilog.iter.check196 ], [ %i.be, %vec.epilog.middle.block208 ]
  br label %.lr.ph32.i

.lr.ph32.i:                                       ; preds = %.lr.ph32.i.preheader, %.lr.ph32.i
  %.02130.i = phi ptr [ %i.bj, %.lr.ph32.i ], [ %.02130.i.ph, %.lr.ph32.i.preheader ] ; 2 uses
  %.02229.i = phi ptr [ %i.bh, %.lr.ph32.i ], [ %.02229.i.ph, %.lr.ph32.i.preheader ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.02229.i, i64 2 ; 2 uses
  %i.bi = load i16, ptr %.02229.i, align 2, !tbaa !39
  %i.bj = getelementptr inbounds nuw i8, ptr %.02130.i, i64 2
  store i16 %i.bi, ptr %.02130.i, align 2, !tbaa !39
  %i.bk = icmp ult ptr %i.bh, %i.aj
  br i1 %i.bk, label %.lr.ph32.i, label %._crit_edge33.i, !llvm.loop !76

._crit_edge33.i:                                  ; preds = %.lr.ph32.i, %middle.block193, %vec.epilog.middle.block208, %bb.e
  %i.bl = load ptr, ptr @last_reduction, align 8, !tbaa !59 ; 2 uses
  %.not26.i = icmp eq ptr %i.bl, null
  %first_reduction..i = select i1 %.not26.i, ptr @first_reduction, ptr %i.bl
  store ptr %i.z, ptr %first_reduction..i, align 8, !tbaa !59
  store ptr %i.z, ptr @last_reduction, align 8, !tbaa !59
  br label %save_reductions.exit

save_reductions.exit:                             ; preds = %.lr.ph, %._crit_edge.i, %._crit_edge33.i
  %i.bm = load i32, ptr @nsyms, align 4, !tbaa !16 ; 2 uses
  %i.bn = icmp sgt i32 %i.bm, 0
  br i1 %i.bn, label %.lr.ph.i4, label %._crit_edge.i1

.lr.ph.i4:                                        ; preds = %save_reductions.exit
  %i.bo = load ptr, ptr @kernel_end, align 8, !tbaa !43
  %i.bp = zext nneg i32 %i.bm to i64
  %i.bq = shl nuw nsw i64 %i.bp, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bo, i8 0, i64 %i.bq, i1 false), !tbaa !37
  br label %._crit_edge.i1

._crit_edge.i1:                                   ; preds = %.lr.ph.i4, %save_reductions.exit
  %i.br = load ptr, ptr @itemset, align 8, !tbaa !37 ; 2 uses
  %i.bs = load ptr, ptr @itemsetend, align 8, !tbaa !37 ; 2 uses
  %i.bt = icmp ult ptr %i.br, %i.bs
  br i1 %i.bt, label %.lr.ph25.i, label %append_states.exit.thread

append_states.exit.thread:                        ; preds = %._crit_edge.i1
  store i32 0, ptr @nshifts, align 4, !tbaa !16
  br label %append_states.exit.thread70

.lr.ph25.i:                                       ; preds = %._crit_edge.i1
  %i.bu = load ptr, ptr @kernel_end, align 8
  %i.bv = load ptr, ptr @shift_symbol, align 8    ; 4 uses
  %i.bw = load ptr, ptr @kernel_base, align 8
  %.pre28.i = load ptr, ptr @ritem, align 8, !tbaa !37
  br label %bb.f

bb.f:                                             ; preds = %bb.j, %.lr.ph25.i
  %i.bx = phi ptr [ %i.bs, %.lr.ph25.i ], [ %i.cp, %bb.j ]
  %i.by = phi ptr [ %.pre28.i, %.lr.ph25.i ], [ %i.cq, %bb.j ] ; 2 uses
  %.01623.i = phi ptr [ %i.br, %.lr.ph25.i ], [ %i.bz, %bb.j ] ; 2 uses
  %.01722.i = phi i32 [ 0, %.lr.ph25.i ], [ %.pr, %bb.j ] ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.01623.i, i64 2 ; 2 uses
  %i.ca = load i16, ptr %.01623.i, align 2, !tbaa !39 ; 2 uses
  %i.cb = sext i16 %i.ca to i64
  %i.cc = getelementptr inbounds [2 x i8], ptr %i.by, i64 %i.cb
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !39 ; 3 uses
  %i.ce = icmp sgt i16 %i.cd, 0
  br i1 %i.ce, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.cf = zext nneg i16 %i.cd to i64              ; 2 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.cf ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !37 ; 2 uses
  %.not.i2 = icmp eq ptr %i.ch, null
  br i1 %.not.i2, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ci = add nsw i32 %.01722.i, 1
  %i.cj = sext i32 %.01722.i to i64
  %i.ck = getelementptr inbounds [2 x i8], ptr %i.bv, i64 %i.cj
  store i16 %i.cd, ptr %i.ck, align 2, !tbaa !39
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.cf
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !37
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.1.i3 = phi i32 [ %.01722.i, %bb.g ], [ %i.ci, %bb.h ]
  %.0.i = phi ptr [ %i.ch, %bb.g ], [ %i.cm, %bb.h ] ; 2 uses
  %i.cn = add i16 %i.ca, 1
  %i.co = getelementptr inbounds nuw i8, ptr %.0.i, i64 2
  store i16 %i.cn, ptr %.0.i, align 2, !tbaa !39
  store ptr %i.co, ptr %i.cg, align 8, !tbaa !37
  %.pre.i = load ptr, ptr @ritem, align 8, !tbaa !37
  %.pre29.i = load ptr, ptr @itemsetend, align 8, !tbaa !37
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  %i.cp = phi ptr [ %.pre29.i, %bb.i ], [ %i.bx, %bb.f ] ; 2 uses
  %i.cq = phi ptr [ %.pre.i, %bb.i ], [ %i.by, %bb.f ]
  %.pr = phi i32 [ %.1.i3, %bb.i ], [ %.01722.i, %bb.f ] ; 5 uses
  %i.cr = icmp ult ptr %i.bz, %i.cp
  br i1 %i.cr, label %bb.f, label %new_itemsets.exit, !llvm.loop !3

new_itemsets.exit:                                ; preds = %bb.j
  store i32 %.pr, ptr @nshifts, align 4, !tbaa !16
  %i.cs = icmp sgt i32 %.pr, 1
  br i1 %i.cs, label %.lr.ph.i6, label %.preheader.i

.lr.ph.i6:                                        ; preds = %new_itemsets.exit
  %wide.trip.count.i = zext nneg i32 %.pr to i64
  br label %bb.k

.preheader.i:                                     ; preds = %.critedge.i, %new_itemsets.exit
  %i.ct = icmp sgt i32 %.pr, 0
  br i1 %i.ct, label %.lr.ph21.i, label %append_states.exit.thread70

bb.k:                                             ; preds = %.critedge.i, %.lr.ph.i6
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.i6 ], [ %indvars.iv.next.i, %.critedge.i ] ; 3 uses
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %i.bv, i64 %indvars.iv.i
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !39 ; 2 uses
  %i.cw = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %bb.k
end_hunk_0
begin_hunk_1_@generate_states:bb.a
.lr.ph.i.i.preheader:                             ; preds = %iter.check145, %vector.memcheck130, %vec.epilog.iter.check146, %vec.epilog.middle.block158
  %.019.i.i.ph = phi ptr [ %i.gi, %iter.check145 ], [ %i.gi, %vector.memcheck130 ], [ %i.gr, %vec.epilog.iter.check146 ], [ %i.gy, %vec.epilog.middle.block158 ]
  %.01718.i.i.ph = phi ptr [ %i.ft, %iter.check145 ], [ %i.ft, %vector.memcheck130 ], [ %i.gs, %vec.epilog.iter.check146 ], [ %i.gz, %vec.epilog.middle.block158 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.019.i.i = phi ptr [ %i.he, %.lr.ph.i.i ], [ %.019.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.01718.i.i = phi ptr [ %i.hc, %.lr.ph.i.i ], [ %.01718.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.01718.i.i, i64 2 ; 2 uses
  %i.hd = load i16, ptr %.01718.i.i, align 2, !tbaa !39
  %i.he = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 2
  store i16 %i.hd, ptr %.019.i.i, align 2, !tbaa !39
  %i.hf = icmp ult ptr %i.hc, %i.fs
  br i1 %i.hf, label %.lr.ph.i.i, label %new_state.exit.i, !llvm.loop !81

new_state.exit.i:                                 ; preds = %.lr.ph.i.i, %middle.block143, %vec.epilog.middle.block158, %bb.o
  %i.hg = load ptr, ptr @last_state, align 8, !tbaa !48
  store ptr %i.fy, ptr %i.hg, align 8, !tbaa !62
  store ptr %i.fy, ptr @last_state, align 8, !tbaa !48
  %i.hh = add nsw i32 %i.gb, 1
  store i32 %i.hh, ptr @nstates, align 4, !tbaa !16
  store ptr %i.fy, ptr %i.fp, align 8, !tbaa !60
  br label %get_state.exit

bb.p:                                             ; preds = %._crit_edge.i11.thread, %._crit_edge.i11
  %.034.lcssa.i69 = phi i64 [ 0, %._crit_edge.i11.thread ], [ %i.eq, %._crit_edge.i11 ]
  %i.hi = load i32, ptr @nstates, align 4, !tbaa !16
  %i.hj = icmp sgt i32 %i.hi, 32766
  br i1 %i.hj, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  tail call void @toomany(ptr noundef nonnull @.str) #8
  %.pre.i14 = load ptr, ptr @kernel_base, align 8, !tbaa !43
  %.phi.trans.insert.i = getelementptr inbounds [8 x i8], ptr %.pre.i14, i64 %i.dk
  %.pre59.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !37 ; 2 uses
  %.pre60.i = load ptr, ptr @kernel_end, align 8, !tbaa !43
  %.phi.trans.insert61.i = getelementptr inbounds [8 x i8], ptr %.pre60.i, i64 %i.dk
  %.pre62.i = load ptr, ptr %.phi.trans.insert61.i, align 8, !tbaa !37 ; 2 uses
  %.pre63.i = ptrtoint ptr %.pre62.i to i64
  %.pre64.i = ptrtoint ptr %.pre59.i to i64
  %.pre66.i = sub i64 %.pre63.i, %.pre64.i        ; 2 uses
  %.pre68.i = lshr exact i64 %.pre66.i, 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pre-phi69.i = phi i64 [ %.pre68.i, %bb.q ], [ %i.dt, %bb.p ]
  %.pre-phi67.i = phi i64 [ %.pre66.i, %bb.q ], [ %i.ds, %bb.p ]
  %i.hk = phi ptr [ %.pre62.i, %bb.q ], [ %i.dp, %bb.p ] ; 3 uses
  %i.hl = phi ptr [ %.pre59.i, %bb.q ], [ %i.dm, %bb.p ] ; 8 uses
  %i.hm = ptrtoaddr ptr %i.hl to i64              ; 2 uses
  %i.hn = trunc i64 %.pre-phi67.i to i32
  %i.ho = and i32 %i.hn, -2
  %i.hp = add i32 %i.ho, 22
  %i.hq = tail call ptr (i32, ...) @mallocate(i32 noundef %i.hp) #8 ; 9 uses
  %i.hr = ptrtoaddr ptr %i.hq to i64
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hq, i64 18
  store i16 %i.di, ptr %i.hs, align 2, !tbaa !61
  %i.ht = load i32, ptr @nstates, align 4, !tbaa !16 ; 2 uses
  %i.hu = trunc i32 %i.ht to i16
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  store i16 %i.hu, ptr %i.hv, align 8, !tbaa !51
  %i.hw = trunc i64 %.pre-phi69.i to i16
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hq, i64 20
  store i16 %i.hw, ptr %i.hx, align 4, !tbaa !50
  %i.hy = icmp ult ptr %i.hl, %i.hk
  br i1 %i.hy, label %iter.check110, label %new_state.exit46.i

iter.check110:                                    ; preds = %bb.r
  %i.hz = ptrtoaddr ptr %i.hk to i64
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hq, i64 22 ; 6 uses
  %i.ib = xor i64 %i.hm, -1
  %i.ic = add i64 %i.ib, %i.hz                    ; 3 uses
  %i.id = lshr i64 %i.ic, 1
  %i.ie = add nuw i64 %i.id, 1                    ; 5 uses
  %min.iters.check94 = icmp ult i64 %i.ic, 6
  br i1 %min.iters.check94, label %.lr.ph.i43.i.preheader, label %vector.memcheck95

vector.memcheck95:                                ; preds = %iter.check110
  %i.if = sub i64 %i.hr, %i.hm
  %i.ig = add i64 %i.if, 21
  %diff.check96 = icmp ult i64 %i.ig, 31
  br i1 %diff.check96, label %.lr.ph.i43.i.preheader, label %vector.main.loop.iter.check97

vector.main.loop.iter.check97:                    ; preds = %vector.memcheck95
  %min.iters.check98 = icmp ult i64 %i.ic, 30
  br i1 %min.iters.check98, label %vec.epilog.ph114, label %vector.ph99

vector.ph99:                                      ; preds = %vector.main.loop.iter.check97
  %i.ih = and i64 %i.ie, 12
  %n.vec100 = and i64 %i.ie, -16                  ; 4 uses
  %i.ii = shl i64 %n.vec100, 1                    ; 2 uses
  %i.ij = getelementptr i8, ptr %i.ia, i64 %i.ii
  %i.ik = getelementptr i8, ptr %i.hl, i64 %i.ii
  br label %vector.body101

vector.body101:                                   ; preds = %vector.ph99, %vector.body101
  %index102 = phi i64 [ 0, %vector.ph99 ], [ %index.next107, %vector.body101 ] ; 2 uses
  %i.il = shl i64 %index102, 1                    ; 2 uses
  %next.gep103 = getelementptr i8, ptr %i.ia, i64 %i.il ; 2 uses
  %next.gep104 = getelementptr i8, ptr %i.hl, i64 %i.il ; 2 uses
  %i.im = getelementptr i8, ptr %next.gep104, i64 16
  %wide.load105 = load <8 x i16>, ptr %next.gep104, align 2, !tbaa !39
  %wide.load106 = load <8 x i16>, ptr %i.im, align 2, !tbaa !39
  %i.in = getelementptr i8, ptr %next.gep103, i64 16
  store <8 x i16> %wide.load105, ptr %next.gep103, align 2, !tbaa !39
  store <8 x i16> %wide.load106, ptr %i.in, align 2, !tbaa !39
  %index.next107 = add nuw i64 %index102, 16      ; 2 uses
  %i.io = icmp eq i64 %index.next107, %n.vec100
  br i1 %i.io, label %middle.block108, label %vector.body101, !llvm.loop !82

middle.block108:                                  ; preds = %vector.body101
  %cmp.n109 = icmp eq i64 %i.ie, %n.vec100
  br i1 %cmp.n109, label %new_state.exit46.i, label %vec.epilog.iter.check111

vec.epilog.iter.check111:                         ; preds = %middle.block108
  %min.epilog.iters.check113 = icmp eq i64 %i.ih, 0
  br i1 %min.epilog.iters.check113, label %.lr.ph.i43.i.preheader, label %vec.epilog.ph114, !prof !58

vec.epilog.ph114:                                 ; preds = %vector.main.loop.iter.check97, %vec.epilog.iter.check111
  %vec.epilog.resume.val115 = phi i64 [ %n.vec100, %vec.epilog.iter.check111 ], [ 0, %vector.main.loop.iter.check97 ]
  %n.vec116 = and i64 %i.ie, -4                   ; 3 uses
  %i.ip = shl i64 %n.vec116, 1                    ; 2 uses
  %i.iq = getelementptr i8, ptr %i.ia, i64 %i.ip
  %i.ir = getelementptr i8, ptr %i.hl, i64 %i.ip
  br label %vec.epilog.vector.body117

vec.epilog.vector.body117:                        ; preds = %vec.epilog.vector.body117, %vec.epilog.ph114
  %index118 = phi i64 [ %vec.epilog.resume.val115, %vec.epilog.ph114 ], [ %index.next122, %vec.epilog.vector.body117 ] ; 2 uses
  %i.is = shl i64 %index118, 1                    ; 2 uses
  %next.gep119 = getelementptr i8, ptr %i.ia, i64 %i.is
  %next.gep120 = getelementptr i8, ptr %i.hl, i64 %i.is
  %wide.load121 = load <4 x i16>, ptr %next.gep120, align 2, !tbaa !39
  store <4 x i16> %wide.load121, ptr %next.gep119, align 2, !tbaa !39
  %index.next122 = add nuw i64 %index118, 4       ; 2 uses
  %i.it = icmp eq i64 %index.next122, %n.vec116
  br i1 %i.it, label %vec.epilog.middle.block123, label %vec.epilog.vector.body117, !llvm.loop !83

vec.epilog.middle.block123:                       ; preds = %vec.epilog.vector.body117
  %cmp.n124 = icmp eq i64 %i.ie, %n.vec116
  br i1 %cmp.n124, label %new_state.exit46.i, label %.lr.ph.i43.i.preheader

.lr.ph.i43.i.preheader:                           ; preds = %iter.check110, %vector.memcheck95, %vec.epilog.iter.check111, %vec.epilog.middle.block123
  %.019.i44.i.ph = phi ptr [ %i.ia, %iter.check110 ], [ %i.ia, %vector.memcheck95 ], [ %i.ij, %vec.epilog.iter.check111 ], [ %i.iq, %vec.epilog.middle.block123 ]
  %.01718.i45.i.ph = phi ptr [ %i.hl, %iter.check110 ], [ %i.hl, %vector.memcheck95 ], [ %i.ik, %vec.epilog.iter.check111 ], [ %i.ir, %vec.epilog.middle.block123 ]
  br label %.lr.ph.i43.i

.lr.ph.i43.i:                                     ; preds = %.lr.ph.i43.i.preheader, %.lr.ph.i43.i
  %.019.i44.i = phi ptr [ %i.iw, %.lr.ph.i43.i ], [ %.019.i44.i.ph, %.lr.ph.i43.i.preheader ] ; 2 uses
  %.01718.i45.i = phi ptr [ %i.iu, %.lr.ph.i43.i ], [ %.01718.i45.i.ph, %.lr.ph.i43.i.preheader ] ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %.01718.i45.i, i64 2 ; 2 uses
  %i.iv = load i16, ptr %.01718.i45.i, align 2, !tbaa !39
  %i.iw = getelementptr inbounds nuw i8, ptr %.019.i44.i, i64 2
  store i16 %i.iv, ptr %.019.i44.i, align 2, !tbaa !39
  %i.ix = icmp ult ptr %i.iu, %i.hk
  br i1 %i.ix, label %.lr.ph.i43.i, label %new_state.exit46.i, !llvm.loop !84

new_state.exit46.i:                               ; preds = %.lr.ph.i43.i, %middle.block108, %vec.epilog.middle.block123, %bb.r
  %i.iy = load ptr, ptr @last_state, align 8, !tbaa !48
  store ptr %i.hq, ptr %i.iy, align 8, !tbaa !62
  store ptr %i.hq, ptr @last_state, align 8, !tbaa !48
  %i.iz = add nsw i32 %i.ht, 1
  store i32 %i.iz, ptr @nstates, align 4, !tbaa !16
  %i.ja = load ptr, ptr @state_table, align 8, !tbaa !46
  %i.jb = getelementptr inbounds [8 x i8], ptr %i.ja, i64 %.034.lcssa.i69
  store ptr %i.hq, ptr %i.jb, align 8, !tbaa !48
  br label %get_state.exit

get_state.exit:                                   ; preds = %.preheader.i13, %._crit_edge55.i.us, %new_state.exit.i, %new_state.exit46.i
  %.230.i = phi ptr [ %i.hq, %new_state.exit46.i ], [ %i.fy, %new_state.exit.i ], [ %.02857.i.us, %._crit_edge55.i.us ], [ %.02857.i, %.preheader.i13 ]
  %i.jc = getelementptr inbounds nuw i8, ptr %.230.i, i64 16
  %i.jd = load i16, ptr %i.jc, align 8, !tbaa !51
  %i.je = load ptr, ptr @shiftset, align 8, !tbaa !37
  %i.jf = getelementptr inbounds nuw [2 x i8], ptr %i.je, i64 %indvars.iv23.i
  store i16 %i.jd, ptr %i.jf, align 2, !tbaa !39
  %indvars.iv.next24.i = add nuw nsw i64 %indvars.iv23.i, 1 ; 2 uses
  %i.jg = load i32, ptr @nshifts, align 4, !tbaa !16 ; 3 uses
  %i.jh = sext i32 %i.jg to i64
  %i.ji = icmp slt i64 %indvars.iv.next24.i, %i.jh
  br i1 %i.ji, label %.lr.ph21.i, label %append_states.exit, !llvm.loop !8

append_states.exit:                               ; preds = %get_state.exit
  %i.jj = icmp sgt i32 %i.jg, 0
  br i1 %i.jj, label %bb.s, label %append_states.exit.thread70

bb.s:                                             ; preds = %append_states.exit
  %i.jk = shl nuw i32 %i.jg, 1
  %i.jl = add i32 %i.jk, 14
  %i.jm = tail call ptr (i32, ...) @mallocate(i32 noundef %i.jl) #8 ; 6 uses
  %i.jn = ptrtoaddr ptr %i.jm to i64
  %i.jo = load ptr, ptr @this_state, align 8, !tbaa !48
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 16
  %i.jq = load i16, ptr %i.jp, align 8, !tbaa !51
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jm, i64 8
  store i16 %i.jq, ptr %i.jr, align 8, !tbaa !65
  %i.js = load i32, ptr @nshifts, align 4, !tbaa !16 ; 3 uses
  %i.jt = trunc i32 %i.js to i16
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jm, i64 10
  store i16 %i.jt, ptr %i.ju, align 2, !tbaa !66
  %i.jv = load ptr, ptr @shiftset, align 8, !tbaa !37 ; 8 uses
  %i.jw = ptrtoaddr ptr %i.jv to i64              ; 4 uses
  %1 = sext i32 %i.js to i64
  %.idx.i7 = shl nsw i64 %1, 1                    ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jv, i64 %.idx.i7
  %i.jy = icmp sgt i32 %i.js, 0
  br i1 %i.jy, label %iter.check, label %save_shifts.exit

iter.check:                                       ; preds = %bb.s
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jm, i64 12 ; 6 uses
  %i.ka = add i64 %.idx.i7, %i.jw
  %i.kb = add i64 %i.jw, 2
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ka, i64 %i.kb)
  %i.kc = xor i64 %i.jw, -1
  %i.kd = add i64 %umax, %i.kc                    ; 3 uses
  %i.ke = lshr i64 %i.kd, 1
  %i.kf = add nuw i64 %i.ke, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %i.kd, 6
  br i1 %min.iters.check, label %.lr.ph.i10.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.kg = sub i64 %i.jn, %i.jw
  %i.kh = add i64 %i.kg, 11
  %diff.check = icmp ult i64 %i.kh, 31
  br i1 %diff.check, label %.lr.ph.i10.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check81 = icmp ult i64 %i.kd, 30
  br i1 %min.iters.check81, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ki = and i64 %i.kf, 12
  %n.vec = and i64 %i.kf, -16                     ; 4 uses
  %i.kj = shl i64 %n.vec, 1                       ; 2 uses
  %i.kk = getelementptr i8, ptr %i.jz, i64 %i.kj
  %i.kl = getelementptr i8, ptr %i.jv, i64 %i.kj
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.km = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.jz, i64 %i.km ; 2 uses
  %next.gep82 = getelementptr i8, ptr %i.jv, i64 %i.km ; 2 uses
  %i.kn = getelementptr i8, ptr %next.gep82, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep82, align 2, !tbaa !39
  %wide.load83 = load <8 x i16>, ptr %i.kn, align 2, !tbaa !39
  %i.ko = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %wide.load, ptr %next.gep, align 2, !tbaa !39
  store <8 x i16> %wide.load83, ptr %i.ko, align 2, !tbaa !39
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.kp = icmp eq i64 %index.next, %n.vec
  br i1 %i.kp, label %middle.block, label %vector.body, !llvm.loop !85

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.kf, %n.vec
  br i1 %cmp.n, label %save_shifts.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ki, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i10.preheader, label %vec.epilog.ph, !prof !58

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec84 = and i64 %i.kf, -4                    ; 3 uses
  %i.kq = shl i64 %n.vec84, 1                     ; 2 uses
  %i.kr = getelementptr i8, ptr %i.jz, i64 %i.kq
  %i.ks = getelementptr i8, ptr %i.jv, i64 %i.kq
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index85 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next89, %vec.epilog.vector.body ] ; 2 uses
  %i.kt = shl i64 %index85, 1                     ; 2 uses
  %next.gep86 = getelementptr i8, ptr %i.jz, i64 %i.kt
  %next.gep87 = getelementptr i8, ptr %i.jv, i64 %i.kt
  %wide.load88 = load <4 x i16>, ptr %next.gep87, align 2, !tbaa !39
  store <4 x i16> %wide.load88, ptr %next.gep86, align 2, !tbaa !39
  %index.next89 = add nuw i64 %index85, 4         ; 2 uses
  %i.ku = icmp eq i64 %index.next89, %n.vec84
  br i1 %i.ku, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !86

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n90 = icmp eq i64 %i.kf, %n.vec84
  br i1 %cmp.n90, label %save_shifts.exit, label %.lr.ph.i10.preheader

.lr.ph.i10.preheader:                             ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.014.i.ph = phi ptr [ %i.jz, %iter.check ], [ %i.jz, %vector.memcheck ], [ %i.kk, %vec.epilog.iter.check ], [ %i.kr, %vec.epilog.middle.block ]
  %.01113.i.ph = phi ptr [ %i.jv, %iter.check ], [ %i.jv, %vector.memcheck ], [ %i.kl, %vec.epilog.iter.check ], [ %i.ks, %vec.epilog.middle.block ]
  br label %.lr.ph.i10

.lr.ph.i10:                                       ; preds = %.lr.ph.i10.preheader, %.lr.ph.i10
  %.014.i = phi ptr [ %i.kx, %.lr.ph.i10 ], [ %.014.i.ph, %.lr.ph.i10.preheader ] ; 2 uses
  %.01113.i = phi ptr [ %i.kv, %.lr.ph.i10 ], [ %.01113.i.ph, %.lr.ph.i10.preheader ] ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %.01113.i, i64 2 ; 2 uses
  %i.kw = load i16, ptr %.01113.i, align 2, !tbaa !39
  %i.kx = getelementptr inbounds nuw i8, ptr %.014.i, i64 2
  store i16 %i.kw, ptr %.014.i, align 2, !tbaa !39
  %i.ky = icmp ult ptr %i.kv, %i.jx
  br i1 %i.ky, label %.lr.ph.i10, label %save_shifts.exit, !llvm.loop !87

save_shifts.exit:                                 ; preds = %.lr.ph.i10, %middle.block, %vec.epilog.middle.block, %bb.s
  %i.kz = load ptr, ptr @last_shift, align 8, !tbaa !67 ; 2 uses
  %.not.i9 = icmp eq ptr %i.kz, null
  %first_shift..i = select i1 %.not.i9, ptr @first_shift, ptr %i.kz
  store ptr %i.jm, ptr %first_shift..i, align 8, !tbaa !67
  store ptr %i.jm, ptr @last_shift, align 8, !tbaa !67
  br label %append_states.exit.thread70

append_states.exit.thread70:                      ; preds = %.preheader.i, %append_states.exit.thread, %save_shifts.exit, %append_states.exit
  %i.la = load ptr, ptr @this_state, align 8, !tbaa !48
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !62 ; 3 uses
  store ptr %i.lb, ptr @this_state, align 8, !tbaa !48
  %.not = icmp eq ptr %i.lb, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !88

._crit_edge:                                      ; preds = %append_states.exit.thread70, %bb.a
  tail call void @finalize_closure() #8
  tail call void @free_storage()
  tail call void @augment_automaton()
  ret void
}

declare void @initialize_closure(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @initialize_states() local_unnamed_addr #0 !guid !90 {
bb.a:
  %i.a = tail call ptr (i32, ...) @mallocate(i32 noundef 22) #8 ; 3 uses
  store ptr %i.a, ptr @this_state, align 8, !tbaa !48
  store ptr %i.a, ptr @last_state, align 8, !tbaa !48
  store ptr %i.a, ptr @first_state, align 8, !tbaa !48
  store i32 1, ptr @nstates, align 4, !tbaa !16
  ret void
}

declare void @closure(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @save_reductions() local_unnamed_addr #0 !guid !94 {
bb.a:
  %i.a = load ptr, ptr @itemset, align 8, !tbaa !37 ; 2 uses
  %i.b = load ptr, ptr @itemsetend, align 8, !tbaa !37 ; 2 uses
  %i.c = icmp ult ptr %i.a, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.a
  %i.d = load ptr, ptr @ritem, align 8, !tbaa !37
  %i.e = load ptr, ptr @redset, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.028 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.d ]  ; 3 uses
  %.02327 = phi ptr [ %i.a, %.lr.ph ], [ %i.o, %bb.d ] ; 2 uses
  %i.f = load i16, ptr %.02327, align 2, !tbaa !39
  %i.g = sext i16 %i.f to i64
  %i.h = getelementptr inbounds [2 x i8], ptr %i.d, i64 %i.g
  %i.i = load i16, ptr %i.h, align 2, !tbaa !39   ; 2 uses
  %i.j = icmp slt i16 %i.i, 0
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = sub i16 0, %i.i
  %i.l = add nsw i32 %.028, 1
  %i.m = sext i32 %.028 to i64
  %i.n = getelementptr inbounds [2 x i8], ptr %i.e, i64 %i.m
  store i16 %i.k, ptr %i.n, align 2, !tbaa !39
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.1 = phi i32 [ %i.l, %bb.c ], [ %.028, %bb.b ] ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.02327, i64 2 ; 2 uses
  %i.p = icmp ult ptr %i.o, %i.b
  br i1 %i.p, label %bb.b, label %._crit_edge, !llvm.loop !2

._crit_edge:                                      ; preds = %bb.d
  %.not = icmp eq i32 %.1, 0
  br i1 %.not, label %._crit_edge.thread, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.q = shl i32 %.1, 1
  %i.r = add i32 %i.q, 14
  %i.s = tail call ptr (i32, ...) @mallocate(i32 noundef %i.r) #8 ; 6 uses
  %i.t = ptrtoaddr ptr %i.s to i64
  %i.u = load ptr, ptr @this_state, align 8, !tbaa !48
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load i16, ptr %i.v, align 8, !tbaa !51
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i16 %i.w, ptr %i.x, align 8, !tbaa !54
  %i.y = trunc i32 %.1 to i16
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 10
  store i16 %i.y, ptr %i.z, align 2, !tbaa !55
  %i.aa = load ptr, ptr @redset, align 8, !tbaa !37 ; 8 uses
  %i.ab = ptrtoaddr ptr %i.aa to i64              ; 4 uses
  %0 = sext i32 %.1 to i64
  %.idx = shl nsw i64 %0, 1                       ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.idx
  %i.ad = icmp sgt i32 %.1, 0
  br i1 %i.ad, label %iter.check, label %._crit_edge33

iter.check:                                       ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 12 ; 6 uses
  %i.af = xor i64 %i.ab, -1
  %i.ag = add i64 %.idx, %i.ab
  %i.ah = add i64 %i.ab, 2
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ag, i64 %i.ah)
  %i.ai = add i64 %umax, %i.af                    ; 3 uses
  %i.aj = lshr i64 %i.ai, 1
  %i.ak = add nuw i64 %i.aj, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %i.ai, 6
  br i1 %min.iters.check, label %.lr.ph32.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.al = sub i64 %i.t, %i.ab
  %i.am = add i64 %i.al, 11
  %diff.check = icmp ult i64 %i.am, 31
  br i1 %diff.check, label %.lr.ph32.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check40 = icmp ult i64 %i.ai, 30
  br i1 %min.iters.check40, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.an = and i64 %i.ak, 12
  %n.vec = and i64 %i.ak, -16                     ; 4 uses
  %i.ao = shl i64 %n.vec, 1                       ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ae, i64 %i.ao
  %i.aq = getelementptr i8, ptr %i.aa, i64 %i.ao
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ar = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ae, i64 %i.ar ; 2 uses
  %next.gep41 = getelementptr i8, ptr %i.aa, i64 %i.ar ; 2 uses
  %i.as = getelementptr i8, ptr %next.gep41, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep41, align 2, !tbaa !39
  %wide.load42 = load <8 x i16>, ptr %i.as, align 2, !tbaa !39
  %i.at = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %wide.load, ptr %next.gep, align 2, !tbaa !39
  store <8 x i16> %wide.load42, ptr %i.at, align 2, !tbaa !39
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !91

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ak, %n.vec
  br i1 %cmp.n, label %._crit_edge33, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.an, 0
  br i1 %min.epilog.iters.check, label %.lr.ph32.preheader, label %vec.epilog.ph, !prof !58

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec43 = and i64 %i.ak, -4                    ; 3 uses
  %i.av = shl i64 %n.vec43, 1                     ; 2 uses
  %i.aw = getelementptr i8, ptr %i.ae, i64 %i.av
  %i.ax = getelementptr i8, ptr %i.aa, i64 %i.av
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index44 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next48, %vec.epilog.vector.body ] ; 2 uses
  %i.ay = shl i64 %index44, 1                     ; 2 uses
  %next.gep45 = getelementptr i8, ptr %i.ae, i64 %i.ay
  %next.gep46 = getelementptr i8, ptr %i.aa, i64 %i.ay
  %wide.load47 = load <4 x i16>, ptr %next.gep46, align 2, !tbaa !39
  store <4 x i16> %wide.load47, ptr %next.gep45, align 2, !tbaa !39
  %index.next48 = add nuw i64 %index44, 4         ; 2 uses
  %i.az = icmp eq i64 %index.next48, %n.vec43
  br i1 %i.az, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !92

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n49 = icmp eq i64 %i.ak, %n.vec43
  br i1 %cmp.n49, label %._crit_edge33, label %.lr.ph32.preheader

.lr.ph32.preheader:                               ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.02130.ph = phi ptr [ %i.ae, %iter.check ], [ %i.ae, %vector.memcheck ], [ %i.ap, %vec.epilog.iter.check ], [ %i.aw, %vec.epilog.middle.block ]
  %.02229.ph = phi ptr [ %i.aa, %iter.check ], [ %i.aa, %vector.memcheck ], [ %i.aq, %vec.epilog.iter.check ], [ %i.ax, %vec.epilog.middle.block ]
  br label %.lr.ph32

.lr.ph32:                                         ; preds = %.lr.ph32.preheader, %.lr.ph32
  %.02130 = phi ptr [ %i.bc, %.lr.ph32 ], [ %.02130.ph, %.lr.ph32.preheader ] ; 2 uses
  %.02229 = phi ptr [ %i.ba, %.lr.ph32 ], [ %.02229.ph, %.lr.ph32.preheader ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.02229, i64 2 ; 2 uses
  %i.bb = load i16, ptr %.02229, align 2, !tbaa !39
  %i.bc = getelementptr inbounds nuw i8, ptr %.02130, i64 2
  store i16 %i.bb, ptr %.02130, align 2, !tbaa !39
  %i.bd = icmp ult ptr %i.ba, %i.ac
  br i1 %i.bd, label %.lr.ph32, label %._crit_edge33, !llvm.loop !93

._crit_edge33:                                    ; preds = %.lr.ph32, %middle.block, %vec.epilog.middle.block, %bb.e
  %i.be = load ptr, ptr @last_reduction, align 8, !tbaa !59 ; 2 uses
  %.not26 = icmp eq ptr %i.be, null
  %first_reduction. = select i1 %.not26, ptr @first_reduction, ptr %i.be
  store ptr %i.s, ptr %first_reduction., align 8, !tbaa !59
  store ptr %i.s, ptr @last_reduction, align 8, !tbaa !59
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %._crit_edge33, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @new_itemsets() local_unnamed_addr #4 !guid !95 {
bb.a:
  %i.a = load i32, ptr @nsyms, align 4, !tbaa !16 ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = load ptr, ptr @kernel_end, align 8, !tbaa !43
  %i.d = zext nneg i32 %i.a to i64
  %i.e = shl nuw nsw i64 %i.d, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.c, i8 0, i64 %i.e, i1 false), !tbaa !37
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.f = load ptr, ptr @itemset, align 8, !tbaa !37 ; 2 uses
  %i.g = load ptr, ptr @itemsetend, align 8, !tbaa !37 ; 2 uses
  %i.h = icmp ult ptr %i.f, %i.g
  br i1 %i.h, label %.lr.ph25, label %._crit_edge26

.lr.ph25:                                         ; preds = %._crit_edge
  %i.i = load ptr, ptr @kernel_end, align 8
  %i.j = load ptr, ptr @shift_symbol, align 8
  %i.k = load ptr, ptr @kernel_base, align 8
  %.pre28 = load ptr, ptr @ritem, align 8, !tbaa !37
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph25, %bb.f
  %i.l = phi ptr [ %i.g, %.lr.ph25 ], [ %i.ad, %bb.f ]
  %i.m = phi ptr [ %.pre28, %.lr.ph25 ], [ %i.ae, %bb.f ] ; 2 uses
  %.01623 = phi ptr [ %i.f, %.lr.ph25 ], [ %i.n, %bb.f ] ; 2 uses
  %.01722 = phi i32 [ 0, %.lr.ph25 ], [ %.2, %bb.f ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.01623, i64 2 ; 2 uses
  %i.o = load i16, ptr %.01623, align 2, !tbaa !39 ; 2 uses
  %i.p = sext i16 %i.o to i64
  %i.q = getelementptr inbounds [2 x i8], ptr %i.m, i64 %i.p
  %i.r = load i16, ptr %i.q, align 2, !tbaa !39   ; 3 uses
  %i.s = icmp sgt i16 %i.r, 0
  br i1 %i.s, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.t = zext nneg i16 %i.r to i64                ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !37   ; 2 uses
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = add nsw i32 %.01722, 1
  %i.x = sext i32 %.01722 to i64
  %i.y = getelementptr inbounds [2 x i8], ptr %i.j, i64 %i.x
  store i16 %i.r, ptr %i.y, align 2, !tbaa !39
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.t
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !37
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1 = phi i32 [ %.01722, %bb.c ], [ %i.w, %bb.d ]
  %.0 = phi ptr [ %i.v, %bb.c ], [ %i.aa, %bb.d ] ; 2 uses
  %i.ab = add i16 %i.o, 1
  %i.ac = getelementptr inbounds nuw i8, ptr %.0, i64 2
  store i16 %i.ab, ptr %.0, align 2, !tbaa !39
  store ptr %i.ac, ptr %i.u, align 8, !tbaa !37
  %.pre = load ptr, ptr @ritem, align 8, !tbaa !37
  %.pre29 = load ptr, ptr @itemsetend, align 8, !tbaa !37
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %i.ad = phi ptr [ %.pre29, %bb.e ], [ %i.l, %bb.b ] ; 2 uses
  %i.ae = phi ptr [ %.pre, %bb.e ], [ %i.m, %bb.b ]
  %.2 = phi i32 [ %.1, %bb.e ], [ %.01722, %bb.b ] ; 2 uses
  %i.af = icmp ult ptr %i.n, %i.ad
  br i1 %i.af, label %bb.b, label %._crit_edge26, !llvm.loop !3

._crit_edge26:                                    ; preds = %bb.f, %._crit_edge
  %.017.lcssa = phi i32 [ 0, %._crit_edge ], [ %.2, %bb.f ]
  store i32 %.017.lcssa, ptr @nshifts, align 4, !tbaa !16
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @append_states() local_unnamed_addr #0 !guid !96 {
bb.a:
  %i.a = load i32, ptr @nshifts, align 4, !tbaa !16 ; 3 uses
  %i.b = icmp sgt i32 %i.a, 1
  br i1 %i.b, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.a
  %i.c = load ptr, ptr @shift_symbol, align 8, !tbaa !37 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.a to i64
  br label %bb.b

.preheader:                                       ; preds = %.critedge, %bb.a
  %i.d = icmp sgt i32 %i.a, 0
  br i1 %i.d, label %.lr.ph21, label %._crit_edge

bb.b:                                             ; preds = %.lr.ph, %.critedge
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %.critedge ] ; 3 uses
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv
  %i.f = load i16, ptr %i.e, align 2, !tbaa !39   ; 2 uses
  %i.g = trunc nuw nsw i64 %indvars.iv to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.d
  %.018 = phi i32 [ %i.g, %bb.b ], [ %i.m, %bb.d ] ; 4 uses
  %i.h = zext nneg i32 %.018 to i64
  %i.i = getelementptr [2 x i8], ptr %i.c, i64 %i.h ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 -2
  %i.k = load i16, ptr %i.j, align 2, !tbaa !39   ; 2 uses
  %i.l = icmp sgt i16 %i.k, %i.f
  br i1 %i.l, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  store i16 %i.k, ptr %i.i, align 2, !tbaa !39
  %i.m = add nsw i32 %.018, -1
  %i.n = icmp sgt i32 %.018, 1
  br i1 %i.n, label %bb.c, label %.critedge, !llvm.loop !4

.critedge:                                        ; preds = %bb.d, %bb.c
  %.0.lcssa = phi i32 [ 0, %bb.d ], [ %.018, %bb.c ]
  %i.o = sext i32 %.0.lcssa to i64
  %i.p = getelementptr inbounds [2 x i8], ptr %i.c, i64 %i.o
  store i16 %i.f, ptr %i.p, align 2, !tbaa !39
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %bb.b, !llvm.loop !5

.lr.ph21:                                         ; preds = %.preheader, %.lr.ph21
  %indvars.iv23 = phi i64 [ %indvars.iv.next24, %.lr.ph21 ], [ 0, %.preheader ] ; 3 uses
  %i.q = load ptr, ptr @shift_symbol, align 8, !tbaa !37
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %indvars.iv23
  %i.s = load i16, ptr %i.r, align 2, !tbaa !39
  %i.t = sext i16 %i.s to i32
  %i.u = tail call i32 @get_state(i32 noundef %i.t)
  %i.v = trunc nsw i32 %i.u to i16
  %i.w = load ptr, ptr @shiftset, align 8, !tbaa !37
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %indvars.iv23
  store i16 %i.v, ptr %i.x, align 2, !tbaa !39
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1 ; 2 uses
  %i.y = load i32, ptr @nshifts, align 4, !tbaa !16
  %i.z = sext i32 %i.y to i64
  %i.aa = icmp slt i64 %indvars.iv.next24, %i.z
  br i1 %i.aa, label %.lr.ph21, label %._crit_edge, !llvm.loop !8

._crit_edge:                                      ; preds = %.lr.ph21, %.preheader
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @save_shifts() local_unnamed_addr #0 !guid !100 {
bb.a:
  %i.a = load i32, ptr @nshifts, align 4, !tbaa !16
  %i.b = shl i32 %i.a, 1
  %i.c = add i32 %i.b, 14
  %i.d = tail call ptr (i32, ...) @mallocate(i32 noundef %i.c) #8 ; 6 uses
  %i.e = ptrtoaddr ptr %i.d to i64
  %i.f = load ptr, ptr @this_state, align 8, !tbaa !48
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load i16, ptr %i.g, align 8, !tbaa !51
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i16 %i.h, ptr %i.i, align 8, !tbaa !65
  %i.j = load i32, ptr @nshifts, align 4, !tbaa !16 ; 3 uses
  %i.k = trunc i32 %i.j to i16
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 10
  store i16 %i.k, ptr %i.l, align 2, !tbaa !66
  %i.m = load ptr, ptr @shiftset, align 8, !tbaa !37 ; 8 uses
  %i.n = ptrtoaddr ptr %i.m to i64                ; 4 uses
  %0 = sext i32 %i.j to i64
  %.idx = shl nsw i64 %0, 1                       ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx
  %i.p = icmp sgt i32 %i.j, 0
  br i1 %i.p, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 6 uses
  %i.r = add i64 %.idx, %i.n
  %i.s = add i64 %i.n, 2
  %umax = tail call i64 @llvm.umax.i64(i64 %i.r, i64 %i.s)
  %i.t = xor i64 %i.n, -1
  %i.u = add i64 %umax, %i.t                      ; 3 uses
  %i.v = lshr i64 %i.u, 1
  %i.w = add nuw i64 %i.v, 1                      ; 5 uses
  %min.iters.check = icmp ult i64 %i.u, 6
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.x = sub i64 %i.e, %i.n
  %i.y = add i64 %i.x, 11
  %diff.check = icmp ult i64 %i.y, 31
  br i1 %diff.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check15 = icmp ult i64 %i.u, 30
  br i1 %min.iters.check15, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.z = and i64 %i.w, 12
  %n.vec = and i64 %i.w, -16                      ; 4 uses
  %i.aa = shl i64 %n.vec, 1                       ; 2 uses
  %i.ab = getelementptr i8, ptr %i.q, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.m, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.q, i64 %i.ad ; 2 uses
  %next.gep16 = getelementptr i8, ptr %i.m, i64 %i.ad ; 2 uses
  %i.ae = getelementptr i8, ptr %next.gep16, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep16, align 2, !tbaa !39
  %wide.load17 = load <8 x i16>, ptr %i.ae, align 2, !tbaa !39
  %i.af = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %wide.load, ptr %next.gep, align 2, !tbaa !39
  store <8 x i16> %wide.load17, ptr %i.af, align 2, !tbaa !39
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !97

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.z, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !58

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec18 = and i64 %i.w, -4                     ; 3 uses
  %i.ah = shl i64 %n.vec18, 1                     ; 2 uses
  %i.ai = getelementptr i8, ptr %i.q, i64 %i.ah
  %i.aj = getelementptr i8, ptr %i.m, i64 %i.ah
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index19 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next23, %vec.epilog.vector.body ] ; 2 uses
  %i.ak = shl i64 %index19, 1                     ; 2 uses
  %next.gep20 = getelementptr i8, ptr %i.q, i64 %i.ak
  %next.gep21 = getelementptr i8, ptr %i.m, i64 %i.ak
  %wide.load22 = load <4 x i16>, ptr %next.gep21, align 2, !tbaa !39
  store <4 x i16> %wide.load22, ptr %next.gep20, align 2, !tbaa !39
  %index.next23 = add nuw i64 %index19, 4         ; 2 uses
  %i.al = icmp eq i64 %index.next23, %n.vec18
  br i1 %i.al, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !98

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n24 = icmp eq i64 %i.w, %n.vec18
  br i1 %cmp.n24, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.014.ph = phi ptr [ %i.q, %iter.check ], [ %i.q, %vector.memcheck ], [ %i.ab, %vec.epilog.iter.check ], [ %i.ai, %vec.epilog.middle.block ]
  %.01113.ph = phi ptr [ %i.m, %iter.check ], [ %i.m, %vector.memcheck ], [ %i.ac, %vec.epilog.iter.check ], [ %i.aj, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.014 = phi ptr [ %i.ao, %.lr.ph ], [ %.014.ph, %.lr.ph.preheader ] ; 2 uses
  %.01113 = phi ptr [ %i.am, %.lr.ph ], [ %.01113.ph, %.lr.ph.preheader ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.01113, i64 2 ; 2 uses
  %i.an = load i16, ptr %.01113, align 2, !tbaa !39
  %i.ao = getelementptr inbounds nuw i8, ptr %.014, i64 2
  store i16 %i.an, ptr %.014, align 2, !tbaa !39
  %i.ap = icmp ult ptr %i.am, %i.o
  br i1 %i.ap, label %.lr.ph, label %._crit_edge, !llvm.loop !99

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %i.aq = load ptr, ptr @last_shift, align 8, !tbaa !67 ; 2 uses
  %.not = icmp eq ptr %i.aq, null
  %first_shift. = select i1 %.not, ptr @first_shift, ptr %i.aq
  store ptr %i.d, ptr %first_shift., align 8, !tbaa !67
  store ptr %i.d, ptr @last_shift, align 8, !tbaa !67
  ret void
}

declare void @finalize_closure() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @augment_automaton() local_unnamed_addr #0 !guid !111 {
bb.a:
  %i.a = load ptr, ptr @first_shift, align 8, !tbaa !67 ; 11 uses
  %i.b = ptrtoaddr ptr %i.a to i64
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i16, ptr %i.c, align 8, !tbaa !65
  %i.e = icmp eq i16 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 10 ; 4 uses
  %i.g = load i16, ptr %i.f, align 2, !tbaa !66   ; 2 uses
  %i.h = load ptr, ptr @first_state, align 8, !tbaa !48
  %i.i = load i32, ptr @start_symbol, align 4, !tbaa !16 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.091.in = phi ptr [ %i.h, %bb.c ], [ %.091, %bb.e ]
  %.091 = load ptr, ptr %.091.in, align 8, !tbaa !62 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.091, i64 18
  %i.k = load i16, ptr %i.j, align 2, !tbaa !61
  %i.l = sext i16 %i.k to i32                     ; 2 uses
  %i.m = icmp sgt i32 %i.i, %i.l
  br i1 %i.m, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.091, i64 16
  %i.o = load i16, ptr %i.n, align 8, !tbaa !51
  %i.p = icmp slt i16 %i.o, %i.g
  br i1 %i.p, label %bb.d, label %.critedge, !llvm.loop !101

.critedge:                                        ; preds = %bb.d, %bb.e
  %i.q = icmp eq i32 %i.i, %i.l
  %i.r = getelementptr inbounds nuw i8, ptr %.091, i64 16
  %i.s = load i16, ptr %i.r, align 8, !tbaa !51   ; 11 uses
  br i1 %i.q, label %bb.f, label %bb.i

bb.f:                                             ; preds = %.critedge
  %i.t = icmp sgt i16 %i.s, 0
  br i1 %i.t, label %.lr.ph107, label %._crit_edge108

.lr.ph107:                                        ; preds = %bb.f, %.lr.ph107
  %.090105 = phi ptr [ %i.u, %.lr.ph107 ], [ %i.a, %bb.f ] ; 2 uses
  %i.u = load ptr, ptr %.090105, align 8, !tbaa !68 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i16, ptr %i.v, align 8, !tbaa !65   ; 2 uses
  %i.x = icmp slt i16 %i.w, %i.s
  br i1 %i.x, label %.lr.ph107, label %._crit_edge108, !llvm.loop !102

._crit_edge108:                                   ; preds = %.lr.ph107, %bb.f
  %.090.lcssa = phi ptr [ %i.a, %bb.f ], [ %i.u, %.lr.ph107 ] ; 8 uses
  %.0.lcssa = phi ptr [ undef, %bb.f ], [ %.090105, %.lr.ph107 ] ; 2 uses
  %.lcssa = phi i16 [ 0, %bb.f ], [ %i.w, %.lr.ph107 ]
  %.090.lcssa144 = ptrtoaddr ptr %.090.lcssa to i64
  %i.y = icmp eq i16 %.lcssa, %i.s
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge108
  %i.z = getelementptr inbounds nuw i8, ptr %.090.lcssa, i64 10 ; 3 uses
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !66
  %i.ab = sext i16 %i.aa to i32
  %i.ac = shl nsw i32 %i.ab, 1
  %i.ad = add nsw i32 %i.ac, 16
  %i.ae = tail call ptr (i32, ...) @mallocate(i32 noundef %i.ad) #8 ; 6 uses
  %i.af = ptrtoaddr ptr %i.ae to i64
  %i.ag = load ptr, ptr %.090.lcssa, align 8, !tbaa !68
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !68
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i16 %i.s, ptr %i.ah, align 8, !tbaa !65
  %i.ai = load i16, ptr %i.z, align 2, !tbaa !66
  %i.aj = add i16 %i.ai, 1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 10
  store i16 %i.aj, ptr %i.ak, align 2, !tbaa !66
  %i.al = load i32, ptr @nstates, align 4, !tbaa !16
  %i.am = trunc i32 %i.al to i16
  %i.an = getelementptr inbounds nuw i8, ptr %i.ae, i64 12 ; 4 uses
  store i16 %i.am, ptr %i.an, align 4, !tbaa !39
  %i.ao = load i16, ptr %i.z, align 2, !tbaa !66  ; 4 uses
  %i.ap = icmp sgt i16 %i.ao, 0
  br i1 %i.ap, label %iter.check159, label %._crit_edge114

iter.check159:                                    ; preds = %bb.g
  %i.aq = zext nneg i16 %i.ao to i64              ; 11 uses
  %min.iters.check145 = icmp ult i16 %i.ao, 4
  br i1 %min.iters.check145, label %.lr.ph113.preheader, label %vector.memcheck146

vector.memcheck146:                               ; preds = %iter.check159
  %i.ar = sub i64 %.090.lcssa144, %i.af
  %i.as = add i64 %i.ar, -3
end_hunk_1
