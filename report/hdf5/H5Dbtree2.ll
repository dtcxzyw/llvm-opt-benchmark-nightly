Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5Dbtree2?download=true
inline.NumInlined: 6
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@H5D__bt2_idx_open:bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.ad
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !19
  %i.al = zext i8 %i.ak to i32
  %i.am = add nuw nsw i32 %i.al, 48
  br label %H5VM_log2_gen.exit

bb.j:                                             ; preds = %bb.f
  %i.an = lshr i64 %i.o, 40                       ; 2 uses
  %.not27.i = icmp eq i64 %i.an, 0
  br i1 %.not27.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !19
  %i.aq = zext i8 %i.ap to i32
  %i.ar = add nuw nsw i32 %i.aq, 40
  br label %H5VM_log2_gen.exit

bb.l:                                             ; preds = %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.ac
  %i.at = load i8, ptr %i.as, align 1, !tbaa !19
  %i.au = zext i8 %i.at to i32
  %i.av = add nuw nsw i32 %i.au, 32
  br label %H5VM_log2_gen.exit

bb.m:                                             ; preds = %bb.e
  %i.aw = lshr i64 %i.o, 16                       ; 2 uses
  %.not23.i = icmp eq i64 %i.aw, 0
  br i1 %.not23.i, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ax = lshr i64 %i.o, 24                       ; 2 uses
  %.not25.i = icmp eq i64 %i.ax, 0
  br i1 %.not25.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ay = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !19
  %i.ba = zext i8 %i.az to i32
  %i.bb = add nuw nsw i32 %i.ba, 24
  br label %H5VM_log2_gen.exit

bb.p:                                             ; preds = %bb.n
  %i.bc = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.aw
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !19
  %i.be = zext i8 %i.bd to i32
  %i.bf = add nuw nsw i32 %i.be, 16
  br label %H5VM_log2_gen.exit

bb.q:                                             ; preds = %bb.m
  %i.bg = lshr i64 %i.o, 8                        ; 2 uses
  %.not24.i = icmp eq i64 %i.bg, 0
  br i1 %.not24.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bh = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !19
  %i.bj = zext i8 %i.bi to i32
  %i.bk = add nuw nsw i32 %i.bj, 8
  br label %H5VM_log2_gen.exit

bb.s:                                             ; preds = %bb.q
  %i.bl = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.o
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !19
  %i.bn = zext i8 %i.bm to i32
  br label %H5VM_log2_gen.exit

H5VM_log2_gen.exit:                               ; preds = %bb.h, %bb.i, %bb.k, %bb.l, %bb.o, %bb.p, %bb.r, %bb.s
  %.0.i = phi i32 [ %i.bf, %bb.p ], [ %i.am, %bb.i ], [ %i.av, %bb.l ], [ %i.ai, %bb.h ], [ %i.ar, %bb.k ], [ %i.bb, %bb.o ], [ %i.bk, %bb.r ], [ %i.bn, %bb.s ] ; 2 uses
  %i.bo = add nuw nsw i32 %.0.i, 8
  %i.bp = lshr i32 %i.bo, 3
  %i.bq = add nuw nsw i32 %i.bp, 1
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bs = icmp samesign ugt i32 %.0.i, 55
  %narrow = select i1 %i.bs, i32 8, i32 %i.bq
  %spec.store.select = zext nneg i32 %narrow to i64
  store i64 %spec.store.select, ptr %i.br, align 8
  br label %bb.u

bb.t:                                             ; preds = %bb.b
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 0, ptr %i.bt, align 8, !tbaa !37
  br label %bb.u

bb.u:                                             ; preds = %H5VM_log2_gen.exit, %bb.d, %bb.t
  %i.bu = phi ptr [ %i.i, %H5VM_log2_gen.exit ], [ %.pre16, %bb.d ], [ %i.i, %bb.t ]
  %i.bv = phi ptr [ %i.g, %H5VM_log2_gen.exit ], [ %.pre, %bb.d ], [ %i.g, %bb.t ]
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 2208
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !19
  %i.by = call ptr @H5B2_open(ptr noundef %i.bv, i64 noundef %i.bx, ptr noundef nonnull %1) #14 ; 2 uses
  %i.bz = load ptr, ptr %i.h, align 8, !tbaa !18
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 2232
  store ptr %i.by, ptr %i.ca, align 8, !tbaa !19
  %i.cb = icmp eq ptr %i.by, null
  br i1 %i.cb, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cc = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !38
  %i.cd = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !38
  %i.ce = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5D__bt2_idx_open, i32 noundef 775, i64 noundef %i.cc, i64 noundef %i.cd, ptr noundef nonnull @.str.28) #14 ; 0 uses
  br label %bb.z

bb.w:                                             ; preds = %bb.u
  %i.cf = load ptr, ptr %0, align 8, !tbaa !30
  %i.cg = call i32 @H5F_get_intent(ptr noundef %i.cf) #14
  %i.ch = and i32 %i.cg, 32
  %.not15 = icmp eq i32 %i.ch, 0
  br i1 %.not15, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ci = call fastcc i32 @H5D__btree2_idx_depend(ptr noundef nonnull %0)
  %i.cj = icmp slt i32 %i.ci, 0
  br i1 %i.cj, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ck = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !38
  %i.cl = load i64, ptr @H5E_CANTDEPEND_g, align 8, !tbaa !38
  %i.cm = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5D__bt2_idx_open, i32 noundef 781, i64 noundef %i.ck, i64 noundef %i.cl, ptr noundef nonnull @.str.23) #14 ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.v, %bb.y, %bb.x, %bb.w, %bb.a
  %.0 = phi i32 [ -1, %bb.v ], [ -1, %bb.y ], [ 0, %bb.x ], [ 0, %bb.w ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @H5D__bt2_idx_close(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = load i8, ptr @H5D_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.e, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 2232
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !19
  %i.k = tail call i32 @H5B2_close(ptr noundef %i.j) #14
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !38
  %i.n = load i64, ptr @H5E_CANTCLOSEOBJ_g, align 8, !tbaa !38
  %i.o = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5D__bt2_idx_close, i32 noundef 810, i64 noundef %i.m, i64 noundef %i.n, ptr noundef nonnull @.str.29) #14 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 2232
  store ptr null, ptr %i.q, align 8, !tbaa !19
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  %.0 = phi i32 [ -1, %bb.c ], [ 0, %bb.d ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @H5D__bt2_idx_is_open(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) #2 {
bb.a:
  %i.a = load i8, ptr @H5D_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 2232
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !19
  %i.k = icmp ne ptr %i.j, null
  %i.l = zext i1 %i.k to i8
  store i8 %i.l, ptr %1, align 1, !tbaa !9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal zeroext i1 @H5D__bt2_idx_is_space_alloc(ptr nofree noundef readonly captures(none) %0) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !41
  %i.c = icmp ne i64 %i.b, -1
  ret i1 %i.c
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @H5D__bt2_idx_insert(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2) #1 {
bb.a:
  %3 = alloca %struct.H5D_bt2_ud_t, align 8       ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.a = load i8, ptr @H5D_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.l, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 2232
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !19   ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = tail call i32 @H5D__bt2_idx_open(ptr noundef nonnull %0)
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.m = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !38
  %i.n = load i64, ptr @H5E_CANTOPENOBJ_g, align 8, !tbaa !38
  %i.o = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5D__bt2_idx_insert, i32 noundef 943, i64 noundef %i.m, i64 noundef %i.n, ptr noundef nonnull @.str.30) #14 ; 0 uses
  br label %bb.l

bb.e:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %0, align 8, !tbaa !30
  %i.q = tail call i32 @H5B2_patch_file(ptr noundef nonnull %i.j, ptr noundef %i.p) #14
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !38
  %i.t = load i64, ptr @H5E_CANTOPENOBJ_g, align 8, !tbaa !38
  %i.u = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5D__bt2_idx_insert, i32 noundef 947, i64 noundef %i.s, i64 noundef %i.t, ptr noundef nonnull @.str.31) #14 ; 0 uses
  br label %bb.l

bb.g:                                             ; preds = %bb.e, %bb.c
  %i.v = load ptr, ptr %i.g, align 8, !tbaa !18   ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 2232
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !19
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.z = load i32, ptr %i.y, align 8, !tbaa !19   ; 2 uses
  %i.aa = add i32 %i.z, -1                        ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 288
  store i32 %i.aa, ptr %i.ab, align 8, !tbaa !44
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !50
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 280
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !51
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !20
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !25
  %.not23 = icmp eq i64 %i.ai, 0
  br i1 %.not23, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !52
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %i.v, i64 304
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sink27.in = phi ptr [ %i.am, %bb.i ], [ %i.aj, %bb.h ]
  %.sink = phi i32 [ 0, %bb.i ], [ %i.al, %bb.h ]
  %.sink27 = load i64, ptr %.sink27.in, align 8, !tbaa !19
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 264
  store i64 %.sink27, ptr %i.an, align 8, !tbaa !84
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 272
  store i32 %.sink, ptr %i.ao, align 8, !tbaa !85
  %.not25 = icmp eq i32 %i.z, 1
  br i1 %.not25, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !53 ; 2 uses
  %i.ar = zext i32 %i.aa to i64                   ; 3 uses
  %min.iters.check = icmp ult i32 %i.aa, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.ar, 4294967292              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %index ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %wide.load = load <2 x i64>, ptr %i.as, align 8, !tbaa !38
  %wide.load29 = load <2 x i64>, ptr %i.at, align 8, !tbaa !38
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store <2 x i64> %wide.load, ptr %i.au, align 8, !tbaa !38
  store <2 x i64> %wide.load29, ptr %i.av, align 8, !tbaa !38
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !82

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ar
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !38
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  store i64 %i.ay, ptr %i.az, align 8, !tbaa !38
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ba = icmp samesign ult i64 %indvars.iv.next, %i.ar
  br i1 %i.ba, label %scalar.ph, label %._crit_edge, !llvm.loop !83

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.j
  %i.bb = call i32 @H5B2_update(ptr noundef %i.x, ptr noundef nonnull %3, ptr noundef nonnull @H5D__bt2_mod_cb, ptr noundef nonnull %3) #14
  %i.bc = icmp slt i32 %i.bb, 0
  br i1 %i.bc, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge
  %i.bd = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !38
  %i.be = load i64, ptr @H5E_CANTUPDATE_g, align 8, !tbaa !38
  %i.bf = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5D__bt2_idx_insert, i32 noundef 968, i64 noundef %i.bd, i64 noundef %i.be, ptr noundef nonnull @.str.32) #14 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.d, %bb.f, %bb.k, %._crit_edge, %bb.a
  %.0 = phi i32 [ -1, %bb.f ], [ -1, %bb.k ], [ 0, %._crit_edge ], [ -1, %bb.d ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @H5D__bt2_idx_get_addr(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #1 {
bb.a:
  %2 = alloca %struct.H5D_bt2_ud_t, align 8       ; 7 uses
  %3 = alloca %struct.H5D_chunk_rec_t, align 8    ; 6 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.b = load i8, ptr @H5D_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = xor i1 %i.e, true
  %i.g = select i1 %i.c, i1 true, i1 %i.f
  br i1 %i.g, label %bb.b, label %bb.n, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 2232
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !19   ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.l = tail call i32 @H5D__bt2_idx_open(ptr noundef nonnull %0)
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.n = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !38
  %i.o = load i64, ptr @H5E_CANTOPENOBJ_g, align 8, !tbaa !38
  %i.p = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5D__bt2_idx_get_addr, i32 noundef 1032, i64 noundef %i.n, i64 noundef %i.o, ptr noundef nonnull @.str.30) #14 ; 0 uses
  br label %bb.n

bb.e:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %0, align 8, !tbaa !30
  %i.r = tail call i32 @H5B2_patch_file(ptr noundef nonnull %i.k, ptr noundef %i.q) #14
  %i.s = icmp slt i32 %i.r, 0
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !38
  %i.u = load i64, ptr @H5E_CANTOPENOBJ_g, align 8, !tbaa !38
  %i.v = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5D__bt2_idx_get_addr, i32 noundef 1036, i64 noundef %i.t, i64 noundef %i.u, ptr noundef nonnull @.str.31) #14 ; 0 uses
  br label %bb.n

bb.g:                                             ; preds = %bb.e, %bb.c
  %i.w = load ptr, ptr %i.h, align 8, !tbaa !18   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 2232
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !19
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 280 ; 2 uses
  store i64 -1, ptr %i.z, align 8, !tbaa !57
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 264 ; 2 uses
  store i64 0, ptr %i.aa, align 8, !tbaa !58
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 272 ; 2 uses
  store i32 0, ptr %i.ab, align 8, !tbaa !59
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 280
  store i64 -1, ptr %i.ac, align 8, !tbaa !51
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !19 ; 2 uses
  %i.af = add i32 %i.ae, -1                       ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 288
  store i32 %i.af, ptr %i.ag, align 8, !tbaa !44
  %.not30 = icmp eq i32 %i.ae, 1
  br i1 %.not30, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !53 ; 2 uses
  %i.aj = zext i32 %i.af to i64                   ; 3 uses
  %min.iters.check = icmp ult i32 %i.af, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.aj, 4294967292              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %index ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %wide.load = load <2 x i64>, ptr %i.ak, align 8, !tbaa !38
  %wide.load33 = load <2 x i64>, ptr %i.al, align 8, !tbaa !38
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store <2 x i64> %wide.load, ptr %i.am, align 8, !tbaa !38
  store <2 x i64> %wide.load33, ptr %i.an, align 8, !tbaa !38
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !86

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.aj
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !38
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !38
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.as = icmp samesign ult i64 %indvars.iv.next, %i.aj
  br i1 %i.as, label %scalar.ph, label %._crit_edge, !llvm.loop !87

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.g
  store i8 0, ptr %i.a, align 1, !tbaa !9
  %i.at = call i32 @H5B2_find(ptr noundef %i.y, ptr noundef nonnull %2, ptr noundef nonnull %i.a, ptr noundef nonnull @H5D__bt2_found_cb, ptr noundef nonnull %3) #14
  %i.au = icmp slt i32 %i.at, 0
  br i1 %i.au, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge
  %i.av = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !38
  %i.aw = load i64, ptr @H5E_CANTFIND_g, align 8, !tbaa !38
  %i.ax = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5D__bt2_idx_get_addr, i32 noundef 1057, i64 noundef %i.av, i64 noundef %i.aw, ptr noundef nonnull @.str.33) #14 ; 0 uses
  br label %bb.n

bb.i:                                             ; preds = %._crit_edge
  %i.ay = load i8, ptr %i.a, align 1, !tbaa !9, !range !10, !noundef !11
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.ba = load i64, ptr %i.z, align 8, !tbaa !57
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !50
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !20
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 56
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !25
  %.not28 = icmp eq i64 %i.bf, 0
  br i1 %.not28, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bg = load i64, ptr %i.aa, align 8, !tbaa !58
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %i.bg, ptr %i.bh, align 8, !tbaa !60
  %i.bi = load i32, ptr %i.ab, align 8, !tbaa !59
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i32 %i.bi, ptr %i.bj, align 8, !tbaa !52
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  %i.bk = load ptr, ptr %i.h, align 8, !tbaa !18
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 304
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !19
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %i.bm, ptr %i.bn, align 8, !tbaa !60
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i32 0, ptr %i.bo, align 8, !tbaa !52
  br label %bb.n

bb.m:                                             ; preds = %bb.i
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 -1, ptr %i.bp, align 8, !tbaa !50
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 0, ptr %i.bq, align 8, !tbaa !60
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i32 0, ptr %i.br, align 8, !tbaa !52
  br label %bb.n

bb.n:                                             ; preds = %bb.d, %bb.f, %bb.h, %bb.k, %bb.l, %bb.m, %bb.a
  %.0 = phi i32 [ -1, %bb.f ], [ -1, %bb.h ], [ 0, %bb.k ], [ 0, %bb.l ], [ 0, %bb.m ], [ -1, %bb.d ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @H5D__bt2_idx_load_metadata(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %1 = alloca %struct.H5D_chunk_ud_t, align 8     ; 11 uses
  %i.a = alloca [33 x i64], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(264) %i.a, i8 0, i64 264, i1 false)
  %i.b = load i8, ptr @H5D_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = xor i1 %i.e, true
  %i.g = select i1 %i.c, i1 true, i1 %i.f
  br i1 %i.g, label %bb.b, label %bb.d, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !18   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.j, ptr %1, align 8, !tbaa !88
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 2200
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.k, ptr %i.l, align 8, !tbaa !89
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.a, ptr %i.m, align 8, !tbaa !53
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 -1, ptr %i.n, align 8, !tbaa !50
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 0, ptr %i.o, align 8, !tbaa !60
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i32 0, ptr %i.p, align 8, !tbaa !52
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 52
  store i8 0, ptr %i.q, align 4, !tbaa !90
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 -1, ptr %i.r, align 8, !tbaa !91
  %i.s = call i32 @H5D__bt2_idx_get_addr(ptr noundef %0, ptr noundef nonnull %1)
  %i.t = icmp slt i32 %i.s, 0
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.u = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !38
  %i.v = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !38
  %i.w = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5D__bt2_idx_load_metadata, i32 noundef 1124, i64 noundef %i.u, i64 noundef %i.v, ptr noundef nonnull @.str.34) #14 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @H5D__bt2_idx_iterate(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) #1 {
bb.a:
  %3 = alloca %struct.H5D_bt2_it_ud_t, align 8    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.a = load i8, ptr @H5D_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.i, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 2232
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !19   ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = tail call i32 @H5D__bt2_idx_open(ptr noundef nonnull %0)
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.m = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !38
  %i.n = load i64, ptr @H5E_CANTOPENOBJ_g, align 8, !tbaa !38
  %i.o = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5D__bt2_idx_iterate, i32 noundef 1192, i64 noundef %i.m, i64 noundef %i.n, ptr noundef nonnull @.str.30) #14 ; 0 uses
  br label %bb.i

bb.e:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %0, align 8, !tbaa !30
  %i.q = tail call i32 @H5B2_patch_file(ptr noundef nonnull %i.j, ptr noundef %i.p) #14
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !38
  %i.t = load i64, ptr @H5E_CANTOPENOBJ_g, align 8, !tbaa !38
  %i.u = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5D__bt2_idx_iterate, i32 noundef 1196, i64 noundef %i.s, i64 noundef %i.t, ptr noundef nonnull @.str.31) #14 ; 0 uses
  br label %bb.i

bb.g:                                             ; preds = %bb.e, %bb.c
  %i.v = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 2232
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !19
  store ptr %1, ptr %3, align 8, !tbaa !62
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.y, align 8, !tbaa !63
  %i.z = call i32 @H5B2_iterate(ptr noundef %i.x, ptr noundef nonnull @H5D__bt2_idx_iterate_cb, ptr noundef nonnull %3) #14 ; 3 uses
  %i.aa = icmp slt i32 %i.z, 0
  br i1 %i.aa, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ab = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !38
  %i.ac = load i64, ptr @H5E_BADITER_g, align 8, !tbaa !38
  %i.ad = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5D__bt2_idx_iterate, i32 noundef 1207, i64 noundef %i.ab, i64 noundef %i.ac, ptr noundef nonnull @.str.35) #14 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %bb.f, %bb.h, %bb.g, %bb.a
  %.0 = phi i32 [ -1, %bb.f ], [ %i.z, %bb.h ], [ %i.z, %bb.g ], [ -1, %bb.d ], [ -1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @H5D__bt2_idx_remove(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #1 {
bb.a:
  %2 = alloca %struct.H5D_bt2_ud_t, align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.a = load i8, ptr @H5D_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.i, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 2232
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !19   ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = tail call i32 @H5D__bt2_idx_open(ptr noundef nonnull %0)
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.m = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !38
  %i.n = load i64, ptr @H5E_CANTOPENOBJ_g, align 8, !tbaa !38
  %i.o = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5D__bt2_idx_remove, i32 noundef 1278, i64 noundef %i.m, i64 noundef %i.n, ptr noundef nonnull @.str.30) #14 ; 0 uses
  br label %bb.i

bb.e:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %0, align 8, !tbaa !30
  %i.q = tail call i32 @H5B2_patch_file(ptr noundef nonnull %i.j, ptr noundef %i.p) #14
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !38
  %i.t = load i64, ptr @H5E_CANTOPENOBJ_g, align 8, !tbaa !38
  %i.u = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5D__bt2_idx_remove, i32 noundef 1282, i64 noundef %i.s, i64 noundef %i.t, ptr noundef nonnull @.str.31) #14 ; 0 uses
  br label %bb.i

bb.g:                                             ; preds = %bb.e, %bb.c
  %i.v = load ptr, ptr %i.g, align 8, !tbaa !18   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 2232
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !19
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.z = load i32, ptr %i.y, align 8, !tbaa !19   ; 2 uses
  %i.aa = add i32 %i.z, -1                        ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 288
  store i32 %i.aa, ptr %i.ab, align 8, !tbaa !44
  %.not22 = icmp eq i32 %i.z, 1
  br i1 %.not22, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !94 ; 2 uses
  %i.ae = zext i32 %i.aa to i64                   ; 3 uses
  %min.iters.check = icmp ult i32 %i.aa, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.ae, 4294967292              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %index ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %wide.load = load <2 x i64>, ptr %i.af, align 8, !tbaa !38
  %wide.load25 = load <2 x i64>, ptr %i.ag, align 8, !tbaa !38
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store <2 x i64> %wide.load, ptr %i.ah, align 8, !tbaa !38
  store <2 x i64> %wide.load25, ptr %i.ai, align 8, !tbaa !38
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !92

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ae
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !38
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  store i64 %i.al, ptr %i.am, align 8, !tbaa !38
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.an = icmp samesign ult i64 %indvars.iv.next, %i.ae
  br i1 %i.an, label %scalar.ph, label %._crit_edge, !llvm.loop !93

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.g
  %i.ao = load ptr, ptr %0, align 8, !tbaa !30
  %i.ap = tail call i32 @H5F_get_intent(ptr noundef %i.ao) #14
  %i.aq = and i32 %i.ap, 32
  %.not20 = icmp eq i32 %i.aq, 0
  %i.ar = select i1 %.not20, ptr @H5D__bt2_remove_cb, ptr null
  %i.as = load ptr, ptr %0, align 8, !tbaa !30
  %i.at = call i32 @H5B2_remove(ptr noundef %i.x, ptr noundef nonnull %2, ptr noundef %i.ar, ptr noundef %i.as) #14
  %i.au = icmp slt i32 %i.at, 0
  br i1 %i.au, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge
  %i.av = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !38
  %i.aw = load i64, ptr @H5E_CANTREMOVE_g, align 8, !tbaa !38
  %i.ax = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5D__bt2_idx_remove, i32 noundef 1299, i64 noundef %i.av, i64 noundef %i.aw, ptr noundef nonnull @.str.37) #14 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %bb.f, %bb.h, %._crit_edge, %bb.a
  %.0 = phi i32 [ -1, %bb.f ], [ -1, %bb.h ], [ 0, %._crit_edge ], [ -1, %bb.d ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @H5D__bt2_idx_delete(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %1 = alloca %struct.H5D_bt2_ctx_ud_t, align 8   ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  %i.a = load i8, ptr @H5D_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.y, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !18   ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 2208
  %i.j = load i64, ptr %i.i, align 8, !tbaa !19
  %.not = icmp eq i64 %i.j, -1
  br i1 %.not, label %bb.y, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %0, align 8, !tbaa !30     ; 4 uses
  store ptr %i.k, ptr %1, align 8, !tbaa !33
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !19
  %i.n = add i32 %i.m, -1
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %i.n, ptr %i.o, align 8, !tbaa !34
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 304
  %i.q = load i64, ptr %i.p, align 8, !tbaa !19   ; 9 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.q, ptr %i.r, align 8, !tbaa !35
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.s, ptr %i.t, align 8, !tbaa !36
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !20
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  %i.x = load i64, ptr %i.w, align 8, !tbaa !25
  %.not17 = icmp eq i64 %i.x, 0
  br i1 %.not17, label %bb.u, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !29
  %i.aa = icmp ugt i32 %i.z, 4
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ab = tail call zeroext i8 @H5F_sizeof_size(ptr noundef %i.k) #14
  %i.ac = zext i8 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !37
  %.pre = load ptr, ptr %0, align 8, !tbaa !30
  br label %bb.v

bb.f:                                             ; preds = %bb.d
  %i.ae = lshr i64 %i.q, 32                       ; 2 uses
  %.not.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = lshr i64 %i.q, 48                       ; 2 uses
  %.not26.i = icmp eq i64 %i.af, 0
  br i1 %.not26.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = lshr i64 %i.q, 56                       ; 2 uses
  %.not28.i = icmp eq i64 %i.ag, 0
  br i1 %.not28.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !19
  %i.aj = zext i8 %i.ai to i32
  %i.ak = add nuw nsw i32 %i.aj, 56
  br label %H5VM_log2_gen.exit

bb.j:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.af
  %i.am = load i8, ptr %i.al, align 1, !tbaa !19
  %i.an = zext i8 %i.am to i32
  %i.ao = add nuw nsw i32 %i.an, 48
  br label %H5VM_log2_gen.exit

bb.k:                                             ; preds = %bb.g
  %i.ap = lshr i64 %i.q, 40                       ; 2 uses
  %.not27.i = icmp eq i64 %i.ap, 0
  br i1 %.not27.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !19
  %i.as = zext i8 %i.ar to i32
  %i.at = add nuw nsw i32 %i.as, 40
  br label %H5VM_log2_gen.exit

bb.m:                                             ; preds = %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.ae
  %i.av = load i8, ptr %i.au, align 1, !tbaa !19
  %i.aw = zext i8 %i.av to i32
  %i.ax = add nuw nsw i32 %i.aw, 32
  br label %H5VM_log2_gen.exit

bb.n:                                             ; preds = %bb.f
  %i.ay = lshr i64 %i.q, 16                       ; 2 uses
  %.not23.i = icmp eq i64 %i.ay, 0
  br i1 %.not23.i, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.az = lshr i64 %i.q, 24                       ; 2 uses
  %.not25.i = icmp eq i64 %i.az, 0
  br i1 %.not25.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ba = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !19
  %i.bc = zext i8 %i.bb to i32
  %i.bd = add nuw nsw i32 %i.bc, 24
  br label %H5VM_log2_gen.exit

bb.q:                                             ; preds = %bb.o
  %i.be = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.ay
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !19
  %i.bg = zext i8 %i.bf to i32
  %i.bh = add nuw nsw i32 %i.bg, 16
  br label %H5VM_log2_gen.exit

bb.r:                                             ; preds = %bb.n
  %i.bi = lshr i64 %i.q, 8                        ; 2 uses
  %.not24.i = icmp eq i64 %i.bi, 0
  br i1 %.not24.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bj = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !19
  %i.bl = zext i8 %i.bk to i32
  %i.bm = add nuw nsw i32 %i.bl, 8
  br label %H5VM_log2_gen.exit
end_hunk_0
begin_hunk_1_@H5D__bt2_found_cb:bb.a
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %1, ptr noundef nonnull align 8 dereferenceable(288) %0, i64 288, i1 false), !tbaa.struct !71
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

declare i32 @H5B2_iterate(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define internal i32 @H5D__bt2_idx_iterate_cb(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #1 {
bb.a:
  %i.a = load i8, ptr @H5D_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.d, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !62
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !63
  %i.j = tail call i32 %i.g(ptr noundef %0, ptr noundef %i.i) #14 ; 3 uses
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !38
  %i.m = load i64, ptr @H5E_CALLBACK_g, align 8, !tbaa !38
  %i.n = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5D__bt2_idx_iterate_cb, i32 noundef 1155, i64 noundef %i.l, i64 noundef %i.m, ptr noundef nonnull @.str.36) #14 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i32 [ %i.j, %bb.c ], [ %i.j, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

declare i32 @H5B2_remove(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @H5D__bt2_remove_cb(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #1 {
bb.a:
  %i.a = load i8, ptr @H5D_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.d, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.h = load i64, ptr %i.g, align 8, !tbaa !57
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.j = load i64, ptr %i.i, align 8, !tbaa !58
  %i.k = tail call i32 @H5MF_xfree(ptr noundef %1, i32 noundef 3, i64 noundef %i.h, i64 noundef %i.j) #14
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !38
  %i.n = load i64, ptr @H5E_CANTFREE_g, align 8, !tbaa !38
  %i.o = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5D__bt2_remove_cb, i32 noundef 1241, i64 noundef %i.m, i64 noundef %i.n, ptr noundef nonnull @.str.38) #14 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

declare i32 @H5MF_xfree(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #8

declare i32 @H5B2_delete(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

declare void @H5AC_tag(i64 noundef, ptr noundef) local_unnamed_addr #8

declare i32 @H5B2_size(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="16384" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="16384" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="16384" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="16384" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="16384" }
attributes #5 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="16384" }
attributes #6 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="16384" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nofree nounwind }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"_Bool", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{i8 0, i8 2}
!11 = !{}
!12 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!13 = !{!"any pointer", !4, i64 0}
!14 = !{!"p1 _ZTS5H5F_t", !13, i64 0}
!15 = !{!"p1 _ZTS11H5O_pline_t", !13, i64 0}
!16 = !{!"p1 _ZTS12H5O_layout_t", !13, i64 0}
!17 = !{!"H5D_chk_idx_info_t", !14, i64 0, !15, i64 8, !16, i64 16}
!18 = !{!17, !16, i64 16}
!19 = !{!4, !4, i64 0}
!20 = !{!17, !15, i64 8}
!21 = !{!"H5O_shared_t", !5, i64 0, !14, i64 8, !5, i64 16, !4, i64 24}
!22 = !{!"long", !4, i64 0}
!23 = !{!"p1 _ZTS17H5Z_filter_info_t", !13, i64 0}
!24 = !{!"H5O_pline_t", !21, i64 0, !5, i64 40, !22, i64 48, !22, i64 56, !23, i64 64}
!25 = !{!24, !22, i64 56}
!26 = !{!"p1 _ZTS16H5D_layout_ops_t", !13, i64 0}
!27 = !{!"H5O_storage_t", !5, i64 0, !4, i64 8}
!28 = !{!"H5O_layout_t", !5, i64 0, !5, i64 4, !26, i64 8, !4, i64 16, !27, i64 2192}
!29 = !{!28, !5, i64 4}
!30 = !{!17, !14, i64 0}
!31 = !{!"p1 long", !13, i64 0}
!32 = !{!"H5D_bt2_ctx_ud_t", !14, i64 0, !22, i64 8, !5, i64 16, !22, i64 24, !31, i64 32}
!33 = !{!32, !14, i64 0}
!34 = !{!32, !5, i64 16}
!35 = !{!32, !22, i64 8}
!36 = !{!32, !31, i64 32}
!37 = !{!32, !22, i64 24}
!38 = !{!22, !22, i64 0}
!39 = !{!"p1 _ZTS15H5D_chunk_ops_t", !13, i64 0}
!40 = !{!"H5O_storage_chunk_t", !5, i64 0, !22, i64 8, !39, i64 16, !4, i64 24}
!41 = !{!40, !22, i64 8}
!42 = !{!"H5D_chunk_rec_t", !4, i64 0, !22, i64 264, !5, i64 272, !22, i64 280}
!43 = !{!"H5D_bt2_ud_t", !42, i64 0, !5, i64 288}
!44 = !{!43, !5, i64 288}
!45 = !{!"p1 _ZTS18H5O_layout_chunk_t", !13, i64 0}
!46 = !{!"p1 _ZTS19H5O_storage_chunk_t", !13, i64 0}
!47 = !{!"H5D_chunk_common_ud_t", !45, i64 0, !46, i64 8, !31, i64 16}
!48 = !{!"H5F_block_t", !22, i64 0, !22, i64 8}
!49 = !{!"H5D_chunk_ud_t", !47, i64 0, !5, i64 24, !48, i64 32, !5, i64 48, !8, i64 52, !22, i64 56}
!50 = !{!49, !22, i64 32}
!51 = !{!43, !22, i64 280}
!52 = !{!49, !5, i64 48}
!53 = !{!49, !31, i64 16}
!54 = !{!"llvm.loop.mustprogress"}
!55 = !{!"llvm.loop.isvectorized", i32 1}
!56 = !{!"llvm.loop.unroll.runtime.disable"}
!57 = !{!42, !22, i64 280}
!58 = !{!42, !22, i64 264}
!59 = !{!42, !5, i64 272}
!60 = !{!49, !22, i64 40}
!61 = !{!"H5D_bt2_it_ud_t", !13, i64 0, !13, i64 8}
!62 = !{!61, !13, i64 0}
!63 = !{!61, !13, i64 8}
!64 = !{!"H5D_bt2_ctx_t", !22, i64 0, !22, i64 8, !22, i64 16, !5, i64 24, !31, i64 32}
!65 = !{!64, !22, i64 8}
!66 = !{!64, !22, i64 0}
!67 = !{!64, !5, i64 24}
!68 = !{!64, !22, i64 16}
!69 = !{!64, !31, i64 32}
!70 = !{!5, !5, i64 0}
!71 = !{i64 0, i64 264, !19, i64 264, i64 8, !38, i64 272, i64 4, !70, i64 280, i64 8, !38}
!72 = !{!"p1 omnipotent char", !13, i64 0}
!73 = !{!72, !72, i64 0}
!74 = !{!"llvm.loop.peeled.count", i32 1}
!75 = !{!"p1 _ZTS12H5B2_class_t", !13, i64 0}
!76 = !{!"H5B2_create_t", !75, i64 0, !5, i64 8, !5, i64 12, !4, i64 16, !4, i64 17}
!77 = !{!76, !5, i64 12}
!78 = !{!76, !75, i64 0}
!79 = !{!76, !5, i64 8}
!80 = !{!76, !4, i64 16}
!81 = !{!76, !4, i64 17}
!82 = distinct !{!82, !54, !55, !56}
!83 = distinct !{!83, !54, !56, !55}
!84 = !{!43, !22, i64 264}
!85 = !{!43, !5, i64 272}
!86 = distinct !{!86, !54, !55, !56}
!87 = distinct !{!87, !54, !56, !55}
!88 = !{!49, !45, i64 0}
!89 = !{!49, !46, i64 8}
!90 = !{!49, !8, i64 52}
!91 = !{!49, !5, i64 24}
!92 = distinct !{!92, !54, !55, !56}
!93 = distinct !{!93, !54, !56, !55}
!94 = !{!47, !31, i64 16}
!95 = distinct !{!95, !54}
!96 = !{!"branch_weights", i32 2002, i32 2000}
!97 = distinct !{!97, !54}
!98 = distinct !{!98, !54}
!99 = distinct !{!99, !54, !74}
!100 = distinct !{!100, !54}
!101 = distinct !{!101, !54}
!102 = distinct !{!102, !54}
!103 = distinct !{!103, !105}
!104 = distinct !{!104, !54}
!105 = !{!"llvm.loop.unroll.disable"}
!106 = distinct !{!106, !54, !74}
!107 = !{!"H5O_loc_t", !14, i64 0, !22, i64 8, !8, i64 16}
!108 = !{!107, !14, i64 0}
!109 = !{!107, !22, i64 8}
end_hunk_1
