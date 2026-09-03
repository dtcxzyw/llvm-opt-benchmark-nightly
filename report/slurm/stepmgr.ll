Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/stepmgr?download=true
inline.NumInlined: 63
inline.NumDeleted: 15
begin_hunk_0_@_step_alloc_lps:bb.a
  call void @gres_step_state_log(ptr noundef %i.va, i32 noundef %i.vb, i32 noundef %i.vc) #16
  %.not318 = icmp eq i32 %.5, 0
  br i1 %.not318, label %bb.fb, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  call fastcc void @_step_dealloc_lps(ptr noundef nonnull %0)
  br label %bb.fb

bb.fb:                                            ; preds = %bb.ez, %bb.fa, %bb.d, %_get_threads_per_core.exit
  %.0257 = phi i32 [ 0, %bb.d ], [ 0, %_get_threads_per_core.exit ], [ %.5, %bb.fa ], [ 0, %bb.ez ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #16
  ret i32 %.0257
}

declare i32 @xstrcmp(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i1 @switch_g_setup_special_steps() local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtoul(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal fastcc void @_clear_gres_tres(ptr noundef %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store ptr null, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  store ptr null, ptr %i.c, align 8
  %i.d = load ptr, ptr %0, align 8                ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @xstrdup(ptr noundef nonnull %i.d) #16 ; 2 uses
  store ptr %i.f, ptr %i.b, align 8
  %i.g = call ptr @strtok_r(ptr noundef %i.f, ptr noundef nonnull @.str.19, ptr noundef nonnull %i.c) #16 ; 2 uses
  %.not11 = icmp eq ptr %i.g, null
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.d
  %.013 = phi ptr [ %i.i, %bb.d ], [ %i.g, %bb.b ] ; 2 uses
  %.0812 = phi ptr [ %.1, %bb.d ], [ @.str.20, %bb.b ] ; 2 uses
  %i.h = call i32 @xstrncmp(ptr noundef nonnull %.013, ptr noundef nonnull @.str.110, i64 noundef 4) #16
  %.not10 = icmp eq i32 %i.h, 0
  br i1 %.not10, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.21, ptr noundef %.0812, ptr noundef nonnull %.013) #16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph
  %.1 = phi ptr [ @.str.19, %bb.c ], [ %.0812, %.lr.ph ]
  %i.i = call ptr @strtok_r(ptr noundef null, ptr noundef nonnull @.str.19, ptr noundef nonnull %i.c) #16 ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !41

._crit_edge:                                      ; preds = %bb.d, %bb.b
  call void @slurm_xfree(ptr noundef nonnull %i.b) #16
  call void @slurm_xfree(ptr noundef nonnull %0) #16
  %i.j = load ptr, ptr %i.a, align 8
  store ptr %i.j, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @_clear_zero_tres(ptr noundef %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store ptr null, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  store ptr null, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  store ptr null, ptr %i.d, align 8
  %i.e = load ptr, ptr %0, align 8                ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @xstrdup(ptr noundef nonnull %i.e) #16 ; 2 uses
  store ptr %i.g, ptr %i.b, align 8
  %i.h = call ptr @strtok_r(ptr noundef %i.g, ptr noundef nonnull @.str.19, ptr noundef nonnull %i.d) #16 ; 2 uses
  %.not17 = icmp eq ptr %i.h, null
  br i1 %.not17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.e
  %.01119 = phi ptr [ %i.o, %bb.e ], [ %i.h, %bb.b ] ; 2 uses
  %.01218 = phi ptr [ %.1, %bb.e ], [ @.str.20, %bb.b ] ; 2 uses
  %i.i = call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %.01119, i32 noundef 58) #19 ; 2 uses
  %.not15 = icmp eq ptr %i.i, null
  br i1 %.not15, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.k = call i64 @strtoll(ptr noundef nonnull %i.j, ptr noundef nonnull %i.c, i32 noundef 10) #16
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %i.c, align 8
  %i.n = load i8, ptr %i.m, align 1
  %.not16 = icmp eq i8 %i.n, 0
  br i1 %.not16, label %bb.e, label %.critedge

.critedge:                                        ; preds = %.lr.ph, %bb.c, %bb.d
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.21, ptr noundef %.01218, ptr noundef nonnull %.01119) #16
  br label %bb.e

bb.e:                                             ; preds = %.critedge, %bb.d
  %.1 = phi ptr [ @.str.19, %.critedge ], [ %.01218, %bb.d ]
  %i.o = call ptr @strtok_r(ptr noundef null, ptr noundef nonnull @.str.19, ptr noundef nonnull %i.d) #16 ; 2 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !42

._crit_edge:                                      ; preds = %bb.e, %bb.b
  call void @slurm_xfree(ptr noundef nonnull %i.b) #16
  call void @slurm_xfree(ptr noundef nonnull %0) #16
  %i.p = load ptr, ptr %i.a, align 8
  store ptr %i.p, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare ptr @strtok_r(ptr noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #9

declare i32 @xstrncmp(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #9

declare void @bit_and(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @bit_overlap_any(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @list_find_first(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @list_find_feature(ptr noundef, ptr noundef) #3

declare void @bit_clear_all(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @_set_max_num_tasks(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr noundef %2, i32 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.c = load i16, ptr %i.b, align 8              ; 2 uses
  switch i16 %i.c, label %_get_threads_per_core.exit [
    i16 -2, label %bb.b
    i16 0, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 248
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i16, ptr %i.h, align 2              ; 2 uses
  switch i16 %i.i, label %bb.c [
    i16 0, label %_get_threads_per_core.exit
    i16 -2, label %_get_threads_per_core.exit
  ]

bb.c:                                             ; preds = %bb.b
  br label %_get_threads_per_core.exit

_get_threads_per_core.exit:                       ; preds = %bb.a, %bb.b, %bb.b, %bb.c
  %.0.i = phi i16 [ -2, %bb.b ], [ %i.i, %bb.c ], [ -2, %bb.b ], [ %i.c, %bb.a ] ; 2 uses
  %i.j = tail call i32 @bit_set_count(ptr noundef %2) #16 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.l = load i32, ptr %i.k, align 4              ; 2 uses
  %. = tail call i32 @llvm.umin.i32(i32 %i.j, i32 %i.l) ; 2 uses
  %i.m = zext i32 %i.j to i64                     ; 2 uses
  %i.n = tail call ptr @slurm_xcalloc(i64 noundef %i.m, i64 noundef 2, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.2, i32 noundef 1333, ptr noundef nonnull @__func__._set_max_num_tasks) #16 ; 6 uses
  store ptr %i.n, ptr %i.a, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 504 ; 5 uses
  %i.p = load ptr, ptr %i.o, align 8              ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 92
  %i.r = load i32, ptr %i.q, align 4
  %.not64 = icmp eq i32 %i.r, 0
  br i1 %.not64, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_get_threads_per_core.exit
  %.not53 = icmp eq i16 %.0.i, -2
  br i1 %.not53, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.f
  %indvars.iv68 = phi i64 [ %indvars.iv.next69, %bb.f ], [ 0, %.lr.ph ] ; 2 uses
  %i.s = phi ptr [ %i.ai, %bb.f ], [ %i.p, %.lr.ph ]
  %.04555.us = phi i32 [ %.1.us, %bb.f ], [ 0, %.lr.ph ] ; 3 uses
  %.04654.us = phi i64 [ %.147.us, %bb.f ], [ 0, %.lr.ph ]
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 96
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = and i64 %.04654.us, 4294967295
  %i.w = tail call i64 @bit_ffs_from_bit(ptr noundef %i.u, i64 noundef %i.v) #16 ; 3 uses
  %i.x = and i64 %i.w, 2147483648
  %.not.us = icmp eq i64 %i.x, 0
  br i1 %.not.us, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %.lr.ph.split.us
  %i.y = and i64 %i.w, 2147483647
  %i.z = tail call i32 @slurm_bit_test(ptr noundef %2, i64 noundef %i.y) #16
  %.not52.us = icmp eq i32 %i.z, 0
  br i1 %.not52.us, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = load ptr, ptr %i.o, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %i.ac, i64 %indvars.iv68
  %i.ae = load i16, ptr %i.ad, align 2
  %i.af = sext i32 %.04555.us to i64
  %i.ag = getelementptr inbounds [2 x i8], ptr %i.n, i64 %i.af
  store i16 %i.ae, ptr %i.ag, align 2
  %i.ah = add nsw i32 %.04555.us, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.1.us = phi i32 [ %i.ah, %bb.e ], [ %.04555.us, %bb.d ]
  %.147.us = add nuw nsw i64 %i.w, 1
  %indvars.iv.next69 = add nuw nsw i64 %indvars.iv68, 1 ; 2 uses
  %i.ai = load ptr, ptr %i.o, align 8             ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 92
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = zext i32 %i.ak to i64
  %i.am = icmp samesign ult i64 %indvars.iv.next69, %i.al
  br i1 %i.am, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !43

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.i
  %i.an = phi ptr [ %i.bt, %bb.i ], [ %i.n, %.lr.ph ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.i ], [ 0, %.lr.ph ] ; 2 uses
  %i.ao = phi ptr [ %i.bu, %bb.i ], [ %i.p, %.lr.ph ]
  %.04555 = phi i32 [ %.1, %bb.i ], [ 0, %.lr.ph ] ; 3 uses
  %.04654 = phi i64 [ %.147, %bb.i ], [ 0, %.lr.ph ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 96
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = and i64 %.04654, 4294967295
  %i.as = tail call i64 @bit_ffs_from_bit(ptr noundef %i.aq, i64 noundef %i.ar) #16 ; 3 uses
  %i.at = and i64 %i.as, 2147483648
  %.not = icmp eq i64 %i.at, 0
  br i1 %.not, label %bb.g, label %._crit_edge

bb.g:                                             ; preds = %.lr.ph.split
  %i.au = and i64 %i.as, 2147483647               ; 2 uses
  %i.av = tail call i32 @slurm_bit_test(ptr noundef %2, i64 noundef %i.au) #16
  %.not52 = icmp eq i32 %i.av, 0
  br i1 %.not52, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aw = load ptr, ptr %i.o, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %i.ay, i64 %indvars.iv
  %i.ba = load i16, ptr %i.az, align 2
  %i.bb = zext i16 %i.ba to i32
  %i.bc = load ptr, ptr @node_record_table_ptr, align 8
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.au
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 568
  %i.bg = load i16, ptr %i.bf, align 8
  %i.bh = zext i16 %i.bg to i32                   ; 2 uses
  %i.bi = add nsw i32 %i.bb, -1
  %i.bj = add nsw i32 %i.bi, %i.bh
  %i.bk = sdiv i32 %i.bj, %i.bh
  %i.bl = trunc i32 %i.bk to i16
  %i.bm = sext i32 %.04555 to i64                 ; 2 uses
  %i.bn = getelementptr inbounds [2 x i8], ptr %i.an, i64 %i.bm
  store i16 %i.bl, ptr %i.bn, align 2
  %i.bo = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.bp = getelementptr inbounds [2 x i8], ptr %i.bo, i64 %i.bm ; 2 uses
  %i.bq = load i16, ptr %i.bp, align 2
  %i.br = mul i16 %i.bq, %.0.i
  store i16 %i.br, ptr %i.bp, align 2
  %i.bs = add nsw i32 %.04555, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.bt = phi ptr [ %i.bo, %bb.h ], [ %i.an, %bb.g ] ; 2 uses
  %.1 = phi i32 [ %i.bs, %bb.h ], [ %.04555, %bb.g ]
  %.147 = add nuw nsw i64 %i.as, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bu = load ptr, ptr %i.o, align 8             ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 92
  %i.bw = load i32, ptr %i.bv, align 4
  %i.bx = zext i32 %i.bw to i64
  %i.by = icmp samesign ult i64 %indvars.iv.next, %i.bx
  br i1 %i.by, label %.lr.ph.split, label %._crit_edge, !llvm.loop !43

._crit_edge:                                      ; preds = %bb.i, %.lr.ph.split, %bb.f, %.lr.ph.split.us, %_get_threads_per_core.exit
  %i.bz = phi ptr [ %i.n, %bb.f ], [ %i.n, %_get_threads_per_core.exit ], [ %i.n, %.lr.ph.split.us ], [ %i.bt, %bb.i ], [ %i.an, %.lr.ph.split ] ; 2 uses
  %i.ca = icmp ult i32 %i.l, %i.j
  br i1 %i.ca, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge
  tail call void @qsort(ptr noundef %i.bz, i64 noundef %i.m, i64 noundef 2, ptr noundef nonnull @_cmp_cpu_counts) #16
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge
  %.not65.a = icmp eq i32 %., 0
  br i1 %.not65.a, label %._crit_edge63, label %.lr.ph62.a

.lr.ph62.a:                                       ; preds = %bb.k
  %wide.trip.count = zext i32 %. to i64
  br label %bb.l

._crit_edge63:                                    ; preds = %bb.l, %bb.k
  %.044.lcssa = phi i32 [ 0, %bb.k ], [ %i.ci, %bb.l ] ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i32 %.044.lcssa, ptr %i.cb, align 8
  %i.cc = mul i32 %.044.lcssa, %3
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.cc, ptr %i.cd, align 8
  call void @slurm_xfree(ptr noundef nonnull %i.a) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void

bb.l:                                             ; preds = %.lr.ph62.a, %bb.l
  %indvars.iv71 = phi i64 [ 0, %.lr.ph62.a ], [ %indvars.iv.next72, %bb.l ] ; 2 uses
  %.04459 = phi i32 [ 0, %.lr.ph62.a ], [ %i.ci, %bb.l ]
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %i.bz, i64 %indvars.iv71
  %i.cf = load i16, ptr %i.ce, align 2
  %i.cg = zext i16 %i.cf to i32
  %i.ch = sdiv i32 %i.cg, %3
  %i.ci = add i32 %i.ch, %.04459                  ; 2 uses
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next72, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge63, label %bb.l, !llvm.loop !44
}

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 2) i32 @_cmp_node_rank(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %i.e = icmp ugt i32 %i.b, %i.d
  br i1 %i.e, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ult i32 %i.b, %i.d
  br i1 %i.f, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %0, align 4                ; 2 uses
  %i.h = load i32, ptr %1, align 4                ; 2 uses
  %i.i = icmp ugt i32 %i.g, %i.h
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = icmp ult i32 %i.g, %i.h
  %. = sext i1 %i.j to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 1, %bb.c ], [ 1, %bb.a ], [ -1, %bb.b ], [ %., %bb.d ]
  ret i32 %.0
}

declare i32 @bit_super_set(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gres_stepmgr_step_test_per_step(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @bit_pick_cnt(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @_mark_busy_nodes(ptr noundef %0, ptr noundef %1) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.c = load i32, ptr %i.b, align 8
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.f = load i32, ptr %i.e, align 8
  %.off = add i32 %i.f, 6
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.h = load i32, ptr %i.g, align 8
  %i.i = and i32 %i.h, 256
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not14 = icmp eq ptr %i.k, null
  br i1 %.not14, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.143, ptr noundef nonnull @__func__._mark_busy_nodes, ptr noundef nonnull %0) #16 ; 0 uses
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  tail call void @bit_and_not(ptr noundef %1, ptr noundef nonnull %i.k) #16
  %i.m = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.n = and i64 %i.m, 2
  %.not15 = icmp eq i64 %i.n, 0
  br i1 %.not15, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.o = load ptr, ptr %i.j, align 8
  %i.p = tail call ptr @bitmap2node_name(ptr noundef %i.o) #16 ; 2 uses
  store ptr %i.p, ptr %i.a, align 8
  %i.q = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.r = and i64 %i.q, 2
  %.not16 = icmp eq i64 %i.r, 0
  br i1 %.not16, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = tail call i32 @get_log_level() #16
  %i.t = icmp sgt i32 %i.s, 3
  br i1 %i.t, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.144, ptr noundef nonnull @__func__._mark_busy_nodes, ptr noundef nonnull %0, ptr noundef %i.p) #16
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.g
  call void @slurm_xfree(ptr noundef nonnull %i.a) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.k

bb.k:                                             ; preds = %bb.b, %bb.f, %bb.j, %bb.c, %bb.a, %bb.e
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @_opt_cpu_cnt(i32 noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i32 0, ptr %i.a, align 4
  %i.b = call ptr @next_node_bitmap(ptr noundef nonnull %1, ptr noundef nonnull %i.a) #16
  %.not1416 = icmp eq ptr %i.b, null
  br i1 %.not1416, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.01017 = phi i32 [ %i.g, %bb.c ], [ %0, %bb.b ] ; 2 uses
  %i.c = load i32, ptr %i.a, align 4              ; 2 uses
  %i.d = sext i32 %i.c to i64
  %i.e = getelementptr inbounds [4 x i8], ptr %2, i64 %i.d
  %i.f = load i32, ptr %i.e, align 4              ; 2 uses
  %.not15 = icmp ult i32 %i.f, %.01017
  br i1 %.not15, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %.lr.ph
  %i.g = sub nuw i32 %.01017, %i.f                ; 2 uses
  %i.h = add nsw i32 %i.c, 1
  store i32 %i.h, ptr %i.a, align 4
  %i.i = call ptr @next_node_bitmap(ptr noundef nonnull %1, ptr noundef nonnull %i.a) #16
  %.not14 = icmp eq ptr %i.i, null
  br i1 %.not14, label %._crit_edge, label %.lr.ph, !llvm.loop !45

._crit_edge:                                      ; preds = %bb.c, %.lr.ph, %bb.b
  %spec.select = phi i32 [ %0, %bb.b ], [ 0, %.lr.ph ], [ %i.g, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.a
  %.1 = phi i32 [ %0, %bb.a ], [ %spec.select, %._crit_edge ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_pick_step_nodes_cpus(ptr nofree noundef nonnull readonly captures(none) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, i32 noundef %6) unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 14 uses
  %i.b = alloca ptr, align 8                      ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.c = load i32, ptr @node_record_count, align 4
  %i.d = sext i32 %i.c to i64
  %i.e = tail call ptr @bit_alloc(i64 noundef %i.d) #16 ; 3 uses
  store ptr %i.e, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.i = load i32, ptr %i.h, align 8              ; 2 uses
  %.not = icmp slt i32 %i.i, %6
  %spec.store.select = select i1 %.not, i32 %i.i, i32 0 ; 13 uses
  %i.j = add nsw i32 %2, -1
  %i.k = add nsw i32 %i.j, %3
  %i.l = sdiv i32 %i.k, %2                        ; 7 uses
  %i.m = icmp sgt i32 %i.l, 1024
  br i1 %i.m, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.n = tail call i32 @get_log_level() #16
  %i.o = icmp sgt i32 %i.n, 2
  br i1 %i.o, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  tail call void (i32, ptr, ...) @log_var(i32 noundef 3, ptr noundef nonnull @.str.145, ptr noundef nonnull @__func__._pick_step_nodes_cpus, i32 noundef %i.l) #16
  br label %.thread

bb.d:                                             ; preds = %bb.a
  %.not184 = icmp sgt i32 %3, %2
  br i1 %.not184, label %bb.l, label %.thread

.thread:                                          ; preds = %bb.c, %bb.b, %bb.d
  %.not.i244 = icmp sgt i32 %2, 0
  br i1 %.not.i244, label %.lr.ph247, label %.loopexit

.lr.ph247:                                        ; preds = %.thread
  %smax.i = tail call i32 @llvm.smax.i32(i32 %6, i32 0)
  %exitcond.not.i406 = icmp slt i32 %6, 1
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph247, %bb.j
  %.0156246 = phi i32 [ 0, %.lr.ph247 ], [ %i.ac, %bb.j ] ; 2 uses
  %.0162245 = phi i32 [ 0, %.lr.ph247 ], [ %.4166407, %bb.j ]
  %i.p = icmp eq i32 %.0156246, 0
  br i1 %i.p, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i32 %.0162245, 1
  %i.r = srem i32 %i.q, %6                        ; 2 uses
  %i.s = icmp eq i32 %i.r, %spec.store.select
  br i1 %i.s, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.3165 = phi i32 [ %i.r, %bb.f ], [ %spec.store.select, %bb.e ] ; 2 uses
  br i1 %exitcond.not.i406, label %.loopexit, label %.lr.ph410

bb.h:                                             ; preds = %bb.i
  %i.t = add nuw i32 %.026.i408, 1                ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.t, %smax.i
  br i1 %exitcond.not.i, label %.loopexit, label %.lr.ph410

.lr.ph410:                                        ; preds = %bb.g, %bb.h
  %.026.i408 = phi i32 [ %i.t, %bb.h ], [ 0, %bb.g ]
  %.4166407 = phi i32 [ %i.aa, %bb.h ], [ %.3165, %bb.g ] ; 4 uses
  %i.u = sext i32 %.4166407 to i64
  %i.v = getelementptr inbounds [8 x i8], ptr %5, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4
  %i.x = sext i32 %i.w to i64                     ; 2 uses
  %i.y = tail call i32 @slurm_bit_test(ptr noundef %1, i64 noundef %i.x) #16
  %.not31.i = icmp eq i32 %i.y, 0
  br i1 %.not31.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph410
  %i.z = add nsw i32 %.4166407, 1
  %i.aa = srem i32 %i.z, %6                       ; 3 uses
  %i.ab = icmp eq i32 %i.aa, %spec.store.select
  br i1 %i.ab, label %.loopexit, label %bb.h

bb.j:                                             ; preds = %.lr.ph410
  %i.ac = add nuw nsw i32 %.0156246, 1            ; 2 uses
  tail call void @bit_set(ptr noundef %i.e, i64 noundef %i.x) #16
  %exitcond286.not = icmp eq i32 %i.ac, %2
  br i1 %exitcond286.not, label %.loopexit, label %bb.e, !llvm.loop !46

.loopexit:                                        ; preds = %bb.f, %bb.j, %bb.g, %bb.i, %bb.h, %.thread
  %.5167.ph = phi i32 [ 0, %.thread ], [ %i.aa, %bb.h ], [ %spec.store.select, %bb.i ], [ %.3165, %bb.g ], [ %spec.store.select, %bb.f ], [ %.4166407, %bb.j ] ; 4 uses
  %i.ad = sext i32 %.5167.ph to i64
  %i.ae = getelementptr inbounds [8 x i8], ptr %5, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = add nsw i32 %.5167.ph, 1
  %i.ai = srem i32 %i.ah, %6                      ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = sext i32 %6 to i64
  %i.am = getelementptr [8 x i8], ptr %5, i64 %i.al
  %i.an = getelementptr i8, ptr %i.am, i64 -4
  %i.ao = load i32, ptr %i.an, align 4
  %.unshifted.i = xor i32 %i.ao, %i.ak
  %i.ap = icmp ult i32 %.unshifted.i, 65536
  %.not20.i = icmp eq i32 %i.ai, %.5167.ph
  %or.cond.i = select i1 %i.ap, i1 true, i1 %.not20.i
  br i1 %or.cond.i, label %_next_rank_start.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.loopexit, %bb.k
  %.021.i = phi i32 [ %i.av, %bb.k ], [ %i.ai, %.loopexit ] ; 3 uses
  %i.aq = sext i32 %.021.i to i64
  %i.ar = getelementptr inbounds [8 x i8], ptr %5, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.at = load i32, ptr %i.as, align 4
  %.not19.unshifted.i = xor i32 %i.at, %i.ag
  %.not19.i = icmp ult i32 %.not19.unshifted.i, 65536
  br i1 %.not19.i, label %bb.k, label %_next_rank_start.exit

bb.k:                                             ; preds = %.lr.ph.i
  %i.au = add nsw i32 %.021.i, 1
  %i.av = srem i32 %i.au, %6                      ; 2 uses
  %.not.i105 = icmp eq i32 %i.av, %.5167.ph
  br i1 %.not.i105, label %_next_rank_start.exit, label %.lr.ph.i, !llvm.loop !0

_next_rank_start.exit:                            ; preds = %.lr.ph.i, %bb.k, %.loopexit
  %.018.i = phi i32 [ %i.ai, %.loopexit ], [ %i.ai, %bb.k ], [ %.021.i, %.lr.ph.i ]
  %i.aw = load ptr, ptr %i.f, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 88
  store i32 %.018.i, ptr %i.ax, align 8
  br label %bb.ar

bb.l:                                             ; preds = %bb.d
  %i.ay = sext i32 %i.l to i64
  %i.az = tail call ptr @slurm_xcalloc(i64 noundef %i.ay, i64 noundef 4, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.2, i32 noundef 1118, ptr noundef nonnull @__func__._pick_step_nodes_cpus) #16
  store ptr %i.az, ptr %i.b, align 8
  %smax.i108 = tail call i32 @llvm.smax.i32(i32 %6, i32 0) ; 2 uses
  %exitcond.not.i110384 = icmp slt i32 %6, 1
  br label %.outer192

.outer192:                                        ; preds = %bb.v, %bb.l
  %.1163.ph = phi i32 [ %.7385, %bb.v ], [ 0, %bb.l ] ; 2 uses
  %.1157.ph = phi i32 [ %i.bn, %bb.v ], [ 0, %bb.l ] ; 2 uses
  %.085.ph = phi i32 [ %i.cx, %bb.v ], [ %2, %bb.l ] ; 5 uses
  %.084.ph = phi i32 [ %i.bz, %bb.v ], [ %3, %bb.l ] ; 4 uses
  %.not.i106217 = icmp slt i32 %.1157.ph, %6
  br i1 %.not.i106217, label %.lr.ph, label %.loopexit189

.lr.ph:                                           ; preds = %.outer192, %bb.r
  %.1157219 = phi i32 [ %i.bn, %bb.r ], [ %.1157.ph, %.outer192 ] ; 2 uses
  %.1163218 = phi i32 [ %.7385, %bb.r ], [ %.1163.ph, %.outer192 ]
  %i.ba = icmp eq i32 %.1157219, 0
  br i1 %i.ba, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph
  %i.bb = add nsw i32 %.1163218, 1
  %i.bc = srem i32 %i.bb, %6                      ; 2 uses
  %i.bd = icmp eq i32 %i.bc, %spec.store.select
  br i1 %i.bd, label %.loopexit189, label %bb.n

bb.n:                                             ; preds = %.lr.ph, %bb.m
  %.6 = phi i32 [ %i.bc, %bb.m ], [ %spec.store.select, %.lr.ph ] ; 2 uses
  br i1 %exitcond.not.i110384, label %.loopexit189, label %.lr.ph388

bb.o:                                             ; preds = %bb.p
  %i.be = add nuw i32 %.026.i109386, 1            ; 2 uses
  %exitcond.not.i110 = icmp eq i32 %i.be, %smax.i108
  br i1 %exitcond.not.i110, label %.loopexit189, label %.lr.ph388

.lr.ph388:                                        ; preds = %bb.n, %bb.o
  %.026.i109386 = phi i32 [ %i.be, %bb.o ], [ 0, %bb.n ]
  %.7385 = phi i32 [ %i.bl, %bb.o ], [ %.6, %bb.n ] ; 8 uses
  %i.bf = sext i32 %.7385 to i64                  ; 2 uses
  %i.bg = getelementptr inbounds [8 x i8], ptr %5, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4
  %i.bi = sext i32 %i.bh to i64                   ; 4 uses
  %i.bj = tail call i32 @slurm_bit_test(ptr noundef %1, i64 noundef %i.bi) #16
  %.not31.i111 = icmp eq i32 %i.bj, 0
  br i1 %.not31.i111, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph388
  %i.bk = add nsw i32 %.7385, 1
  %i.bl = srem i32 %i.bk, %6                      ; 3 uses
  %i.bm = icmp eq i32 %i.bl, %spec.store.select
  br i1 %i.bm, label %.loopexit189, label %bb.o

bb.q:                                             ; preds = %.lr.ph388
  %i.bn = add i32 %.1157219, 1                    ; 3 uses
  %i.bo = getelementptr inbounds [4 x i8], ptr %4, i64 %i.bi
  %i.bp = load i32, ptr %i.bo, align 4            ; 2 uses
  %i.bq = icmp ult i32 %i.bp, %i.l
  br i1 %i.bq, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.br = load ptr, ptr %i.b, align 8
  %i.bs = zext i32 %i.bp to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.bs ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4
  %i.bv = add nsw i32 %i.bu, 1
  store i32 %i.bv, ptr %i.bt, align 4
  %exitcond.not = icmp eq i32 %i.bn, %6
  br i1 %exitcond.not, label %.loopexit189, label %.lr.ph, !llvm.loop !47

bb.s:                                             ; preds = %bb.q
  %i.bw = getelementptr inbounds [4 x i8], ptr %4, i64 %i.bi
  %i.bx = load ptr, ptr %i.a, align 8
  tail call void @bit_set(ptr noundef %i.bx, i64 noundef %i.bi) #16
  %i.by = load i32, ptr %i.bw, align 4
  %i.bz = sub i32 %.084.ph, %i.by                 ; 2 uses
  %i.ca = icmp slt i32 %i.bz, 1
  %i.cb = icmp slt i32 %.085.ph, 2
  %or.cond3 = and i1 %i.cb, %i.ca
  br i1 %or.cond3, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.cc = getelementptr inbounds [8 x i8], ptr %5, i64 %i.bf
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  %i.ce = load i32, ptr %i.cd, align 4
  %i.cf = add nsw i32 %.7385, 1
  %i.cg = srem i32 %i.cf, %6                      ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ci = load i32, ptr %i.ch, align 4
  %i.cj = zext nneg i32 %6 to i64
  %i.ck = getelementptr [8 x i8], ptr %5, i64 %i.cj
  %i.cl = getelementptr i8, ptr %i.ck, i64 -4
  %i.cm = load i32, ptr %i.cl, align 4
  %.unshifted.i114 = xor i32 %i.cm, %i.ci
  %i.cn = icmp ult i32 %.unshifted.i114, 65536
  %.not20.i115 = icmp eq i32 %i.cg, %.7385
  %or.cond.i116 = select i1 %i.cn, i1 true, i1 %.not20.i115
  br i1 %or.cond.i116, label %_next_rank_start.exit123, label %.lr.ph.i117

.lr.ph.i117:                                      ; preds = %bb.t, %bb.u
  %.021.i118 = phi i32 [ %i.ct, %bb.u ], [ %i.cg, %bb.t ] ; 3 uses
  %i.co = sext i32 %.021.i118 to i64
  %i.cp = getelementptr inbounds [8 x i8], ptr %5, i64 %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  %i.cr = load i32, ptr %i.cq, align 4
  %.not19.unshifted.i119 = xor i32 %i.cr, %i.ce
  %.not19.i120 = icmp ult i32 %.not19.unshifted.i119, 65536
  br i1 %.not19.i120, label %bb.u, label %_next_rank_start.exit123

bb.u:                                             ; preds = %.lr.ph.i117
  %i.cs = add nsw i32 %.021.i118, 1
  %i.ct = srem i32 %i.cs, %6                      ; 2 uses
  %.not.i122 = icmp eq i32 %i.ct, %.7385
  br i1 %.not.i122, label %_next_rank_start.exit123, label %.lr.ph.i117, !llvm.loop !0

_next_rank_start.exit123:                         ; preds = %.lr.ph.i117, %bb.u, %bb.t
  %.018.i121 = phi i32 [ %i.cg, %bb.t ], [ %i.cg, %bb.u ], [ %.021.i118, %.lr.ph.i117 ]
  %i.cu = load ptr, ptr %i.f, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 88
  store i32 %.018.i121, ptr %i.cv, align 8
  call void @slurm_xfree(ptr noundef nonnull %i.b) #16
  %i.cw = load ptr, ptr %i.a, align 8
  br label %bb.ar

bb.v:                                             ; preds = %bb.s
  %i.cx = add nsw i32 %.085.ph, -1                ; 2 uses
  %i.cy = icmp eq i32 %i.cx, 0
  br i1 %i.cy, label %bb.w, label %.outer192, !llvm.loop !47

bb.w:                                             ; preds = %bb.v
  call void @slurm_xfree(ptr noundef nonnull %i.b) #16
  %i.cz = load ptr, ptr %i.a, align 8
  %.not104 = icmp eq ptr %i.cz, null
  br i1 %.not104, label %bb.ar, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @slurm_bit_free(ptr noundef nonnull %i.a) #16
  br label %bb.ar

.loopexit189:                                     ; preds = %.outer192, %bb.m, %bb.r, %bb.n, %bb.p, %bb.o
  %.8.ph = phi i32 [ %i.bl, %bb.o ], [ %.7385, %bb.r ], [ %spec.store.select, %bb.p ], [ %.6, %bb.n ], [ %spec.store.select, %bb.m ], [ %.1163.ph, %.outer192 ]
  %i.da = load ptr, ptr %i.a, align 8
  %.not100 = icmp eq ptr %i.da, null
  br i1 %.not100, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.loopexit189
  call void @slurm_xfree(ptr noundef nonnull %i.b) #16
  br label %bb.ar

bb.z:                                             ; preds = %.loopexit189
  %i.db = load ptr, ptr %i.b, align 8
  store i32 0, ptr %i.db, align 4
  %i.dc = icmp sgt i32 %i.l, 1
  br i1 %i.dc, label %.lr.ph233.preheader, label %._crit_edge

.lr.ph233.preheader:                              ; preds = %bb.z
  %i.dd = zext nneg i32 %i.l to i64
  %.pre287 = load ptr, ptr %i.b, align 8          ; 2 uses
  br label %.lr.ph233

.lr.ph233:                                        ; preds = %.lr.ph233.preheader, %bb.ae
  %i.de = phi ptr [ %.pre287, %.lr.ph233.preheader ], [ %i.dt, %bb.ae ] ; 2 uses
  %i.df = phi ptr [ %.pre287, %.lr.ph233.preheader ], [ %i.du, %bb.ae ] ; 3 uses
  %indvars.iv = phi i64 [ %i.dd, %.lr.ph233.preheader ], [ %indvars.iv.next, %bb.ae ] ; 2 uses
  %.1231 = phi i32 [ %.084.ph, %.lr.ph233.preheader ], [ %.2, %bb.ae ] ; 3 uses
  %.186230 = phi i32 [ %.085.ph, %.lr.ph233.preheader ], [ %.287, %bb.ae ] ; 6 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 4 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %indvars.iv.next ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 4            ; 2 uses
  %i.di = icmp eq i32 %i.dh, 0
  br i1 %i.di, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph233
  %i.dj = icmp sgt i32 %i.dh, %.186230
  br i1 %i.dj, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 %.186230, ptr %i.dg, align 4
  %.pre = load ptr, ptr %i.b, align 8             ; 2 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.dk = phi ptr [ %.pre, %bb.ab ], [ %i.de, %bb.aa ] ; 4 uses
  %i.dl = phi ptr [ %.pre, %bb.ab ], [ %i.df, %bb.aa ]
  %i.dm = icmp sgt i32 %.186230, 0
  br i1 %i.dm, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %indvars.iv.next
  %i.do = load i32, ptr %i.dn, align 4            ; 2 uses
  %i.dp = sub nsw i32 %.186230, %i.do
  %i.dq = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.dr = mul nsw i32 %i.do, %i.dq
  %i.ds = sub nsw i32 %.1231, %i.dr
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad, %.lr.ph233
  %i.dt = phi ptr [ %i.de, %.lr.ph233 ], [ %i.dk, %bb.ad ], [ %i.dk, %bb.ac ]
  %i.du = phi ptr [ %i.df, %.lr.ph233 ], [ %i.dk, %bb.ad ], [ %i.dl, %bb.ac ]
  %.287 = phi i32 [ %.186230, %.lr.ph233 ], [ %i.dp, %bb.ad ], [ %.186230, %bb.ac ] ; 2 uses
  %.2 = phi i32 [ %.1231, %.lr.ph233 ], [ %i.ds, %bb.ad ], [ %.1231, %bb.ac ] ; 2 uses
  %i.dv = icmp samesign ugt i64 %indvars.iv, 2
  br i1 %i.dv, label %.lr.ph233, label %._crit_edge, !llvm.loop !48

._crit_edge:                                      ; preds = %bb.ae, %bb.z
  %.186.lcssa = phi i32 [ %.085.ph, %bb.z ], [ %.287, %bb.ae ]
  %.1.lcssa = phi i32 [ %.084.ph, %bb.z ], [ %.2, %bb.ae ]
  %i.dw = icmp sgt i32 %.1.lcssa, 0
  %i.dx = icmp sgt i32 %.186.lcssa, 0
  %or.cond5 = select i1 %i.dw, i1 true, i1 %i.dx
  br i1 %or.cond5, label %bb.af, label %.outer.preheader

.outer.preheader:                                 ; preds = %._crit_edge
  %exitcond.not.i128399 = icmp slt i32 %6, 1
  br label %.outer

bb.af:                                            ; preds = %._crit_edge
  call void @slurm_xfree(ptr noundef nonnull %i.b) #16
  %i.dy = load ptr, ptr %i.a, align 8
  %.not103 = icmp eq ptr %i.dy, null
  br i1 %.not103, label %bb.ar, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @slurm_bit_free(ptr noundef nonnull %i.a) #16
  br label %bb.ar

bb.ah:                                            ; preds = %.lr.ph242, %.backedge
  %.2158241 = phi i32 [ %.2158.ph, %.lr.ph242 ], [ %i.em, %.backedge ] ; 2 uses
  %.2164240 = phi i32 [ %.2164.ph, %.lr.ph242 ], [ %.10400, %.backedge ]
  %i.dz = icmp eq i32 %.2158241, 0
  br i1 %i.dz, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ea = add nsw i32 %.2164240, 1
  %i.eb = srem i32 %i.ea, %6                      ; 2 uses
  %i.ec = icmp eq i32 %i.eb, %spec.store.select
  br i1 %i.ec, label %_next_node_inx.exit131.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  %.9 = phi i32 [ %i.eb, %bb.ai ], [ %spec.store.select, %bb.ah ]
  br i1 %exitcond.not.i128399, label %_next_node_inx.exit131.thread, label %.lr.ph403

.lr.ph403:                                        ; preds = %bb.aj, %bb.ak
  %.026.i127401 = phi i32 [ %i.el, %bb.ak ], [ 0, %bb.aj ]
  %.10400 = phi i32 [ %i.ej, %bb.ak ], [ %.9, %bb.aj ] ; 5 uses
  %i.ed = sext i32 %.10400 to i64
  %i.ee = getelementptr inbounds [8 x i8], ptr %5, i64 %i.ed
  %i.ef = load i32, ptr %i.ee, align 4
  %i.eg = sext i32 %i.ef to i64                   ; 4 uses
  %i.eh = tail call i32 @slurm_bit_test(ptr noundef %1, i64 noundef %i.eg) #16
  %.not31.i129 = icmp eq i32 %i.eh, 0
  br i1 %.not31.i129, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.lr.ph403
  %i.ei = add nsw i32 %.10400, 1
  %i.ej = srem i32 %i.ei, %6                      ; 2 uses
  %i.ek = icmp eq i32 %i.ej, %spec.store.select
  %i.el = add nuw i32 %.026.i127401, 1            ; 2 uses
  %exitcond.not.i128 = icmp eq i32 %i.el, %smax.i108
  %or.cond = select i1 %i.ek, i1 true, i1 %exitcond.not.i128
  br i1 %or.cond, label %_next_node_inx.exit131.thread, label %.lr.ph403

bb.al:                                            ; preds = %.lr.ph403
  %i.em = add i32 %.2158241, 1                    ; 3 uses
  %i.en = getelementptr inbounds [4 x i8], ptr %4, i64 %i.eg
  %i.eo = load i32, ptr %i.en, align 4            ; 2 uses
  %.not101 = icmp ult i32 %i.eo, %i.l
  br i1 %.not101, label %bb.am, label %.backedge

.backedge:                                        ; preds = %bb.al, %bb.am
  %exitcond285.not = icmp eq i32 %i.em, %6
  br i1 %exitcond285.not, label %_next_node_inx.exit131.thread, label %bb.ah, !llvm.loop !49

bb.am:                                            ; preds = %bb.al
  %i.ep = zext i32 %i.eo to i64                   ; 2 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %i.ep
  %i.er = load i32, ptr %i.eq, align 4            ; 2 uses
  %i.es = icmp eq i32 %i.er, 0
  br i1 %i.es, label %.backedge, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.et = getelementptr inbounds [4 x i8], ptr %4, i64 %i.eg
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %i.ep
  %i.ev = add nsw i32 %i.er, -1
  store i32 %i.ev, ptr %i.eu, align 4
  %i.ew = load ptr, ptr %i.a, align 8
  tail call void @bit_set(ptr noundef %i.ew, i64 noundef %i.eg) #16
  %i.ex = load i32, ptr %i.et, align 4
  %i.ey = sub i32 %.3.ph, %i.ex                   ; 2 uses
  %i.ez = icmp slt i32 %i.ey, 1
  %i.fa = icmp slt i32 %.388.ph, 2
  %or.cond7 = and i1 %i.fa, %i.ez
  br i1 %or.cond7, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.fb = tail call fastcc i32 @_next_rank_start(ptr noundef nonnull %5, i32 noundef %6, i32 noundef %.10400)
  %i.fc = load ptr, ptr %i.f, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 88
  store i32 %i.fb, ptr %i.fd, align 8
  call void @slurm_xfree(ptr noundef nonnull %i.b) #16
  %i.fe = load ptr, ptr %i.a, align 8
  br label %bb.ar

bb.ap:                                            ; preds = %bb.an
  %i.ff = add nsw i32 %.388.ph, -1                ; 2 uses
  %i.fg = icmp eq i32 %i.ff, 0
  br i1 %i.fg, label %_next_node_inx.exit131.thread, label %.outer, !llvm.loop !49

.outer:                                           ; preds = %.outer.preheader, %bb.ap
  %.2164.ph = phi i32 [ %.10400, %bb.ap ], [ %.8.ph, %.outer.preheader ]
  %.2158.ph = phi i32 [ %i.em, %bb.ap ], [ 0, %.outer.preheader ] ; 2 uses
  %.388.ph = phi i32 [ %i.ff, %bb.ap ], [ %.085.ph, %.outer.preheader ] ; 2 uses
  %.3.ph = phi i32 [ %i.ey, %bb.ap ], [ %.084.ph, %.outer.preheader ]
  %.not.i124239 = icmp slt i32 %.2158.ph, %6
  br i1 %.not.i124239, label %.lr.ph242, label %_next_node_inx.exit131.thread

.lr.ph242:                                        ; preds = %.outer
  %i.fh = load ptr, ptr %i.b, align 8             ; 2 uses
  br label %bb.ah

_next_node_inx.exit131.thread:                    ; preds = %.outer, %bb.ap, %.backedge, %bb.ai, %bb.aj, %bb.ak
  call void @slurm_xfree(ptr noundef nonnull %i.b) #16
  %i.fi = load ptr, ptr %i.a, align 8
  %.not102 = icmp eq ptr %i.fi, null
  br i1 %.not102, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %_next_node_inx.exit131.thread
  call void @slurm_bit_free(ptr noundef nonnull %i.a) #16
  br label %bb.ar

bb.ar:                                            ; preds = %_next_node_inx.exit131.thread, %bb.aq, %bb.af, %bb.ag, %bb.w, %bb.x, %bb.ao, %bb.y, %_next_rank_start.exit123, %_next_rank_start.exit
  %.089 = phi ptr [ %i.e, %_next_rank_start.exit ], [ %i.cw, %_next_rank_start.exit123 ], [ null, %bb.y ], [ null, %bb.w ], [ %i.fe, %bb.ao ], [ null, %bb.af ], [ null, %bb.x ], [ null, %bb.ag ], [ null, %bb.aq ], [ null, %_next_node_inx.exit131.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret ptr %.089
}

declare void @bit_or(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @_count_cpus(ptr nofree noundef nonnull readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 2 uses
  store i32 0, ptr %i.a, align 4
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = call ptr @next_node_bitmap(ptr noundef %i.e, ptr noundef nonnull %i.a) #16 ; 2 uses
  %.not11 = icmp eq ptr %i.f, null
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 656
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %i.h = phi ptr [ %i.f, %.lr.ph ], [ %i.aa, %bb.e ]
  %.012 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.e ]  ; 3 uses
  %i.i = load ptr, ptr %i.g, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 216 ; 3 uses
  %i.k = load i32, ptr %i.j, align 8
  %i.l = zext i32 %i.k to i64
  %i.m = call i32 @slurm_bit_test(ptr noundef %i.i, i64 noundef %i.l) #16
  %.not9 = icmp eq i32 %i.m, 0
  br i1 %.not9, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load i32, ptr %i.j, align 8
  %i.o = zext i32 %i.n to i64
  %i.p = call i32 @slurm_bit_test(ptr noundef %1, i64 noundef %i.o) #16
  %.not10 = icmp eq i32 %i.p, 0
  br i1 %.not10, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load i32, ptr %i.j, align 8
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4
  %i.u = add i32 %i.t, %.012
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %.1 = phi i32 [ %i.u, %bb.d ], [ %.012, %bb.c ], [ %.012, %bb.b ] ; 2 uses
  %i.v = load i32, ptr %i.a, align 4
  %i.w = add nsw i32 %i.v, 1
  store i32 %i.w, ptr %i.a, align 4
  %i.x = load ptr, ptr %i.b, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 96
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = call ptr @next_node_bitmap(ptr noundef %i.z, ptr noundef nonnull %i.a) #16 ; 2 uses
  %.not = icmp eq ptr %i.aa, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !50

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %.1, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i32 %.0.lcssa
}

declare i64 @bit_ffs_from_bit(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @bit_not(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 2) i32 @_cmp_cpu_counts(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #13 {
bb.a:
  %i.a = load i16, ptr %0, align 2
  %i.b = load i16, ptr %1, align 2
  %.0 = tail call i32 @llvm.ucmp.i32.i16(i16 %i.b, i16 %i.a)
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc range(i32 -2147483647, -2147483648) i32 @_next_rank_start(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #14 {
bb.a:
  %i.a = sext i32 %2 to i64
  %i.b = getelementptr inbounds [8 x i8], ptr %0, i64 %i.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %i.e = add nsw i32 %2, 1
  %i.f = srem i32 %i.e, %1                        ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.h = load i32, ptr %i.g, align 4
  %i.i = sext i32 %1 to i64
  %i.j = getelementptr [8 x i8], ptr %0, i64 %i.i
  %i.k = getelementptr i8, ptr %i.j, i64 -4
  %i.l = load i32, ptr %i.k, align 4
  %.unshifted = xor i32 %i.l, %i.h
  %i.m = icmp ult i32 %.unshifted, 65536
  %.not20 = icmp eq i32 %i.f, %2
  %or.cond = select i1 %i.m, i1 true, i1 %.not20
  br i1 %or.cond, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.021 = phi i32 [ %i.s, %bb.b ], [ %i.f, %bb.a ] ; 3 uses
  %i.n = sext i32 %.021 to i64
  %i.o = getelementptr inbounds [8 x i8], ptr %0, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.q = load i32, ptr %i.p, align 4
  %.not19.unshifted = xor i32 %i.q, %i.d
  %.not19 = icmp ult i32 %.not19.unshifted, 65536
  br i1 %.not19, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %.lr.ph
  %i.r = add nsw i32 %.021, 1
  %i.s = srem i32 %i.r, %1                        ; 2 uses
  %.not = icmp eq i32 %i.s, %2
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !0

.loopexit:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  %.018 = phi i32 [ %i.f, %bb.a ], [ %.021, %.lr.ph ], [ %i.f, %bb.b ]
  ret i32 %.018
}

declare void @slurm_sprint_cpu_bind_type(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @switch_g_stepinfo_build(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @gres_stepmgr_step_alloc(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i16 noundef zeroext, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @slurm_array16_to_value_reps(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @get_job_resources_cnt(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @get_job_resources_offset(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #3

declare void @bit_nclear(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @_gres_filter_avail_cores(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.h
  %i.j = load i64, ptr %i.i, align 8
  %.not43 = icmp eq i64 %i.j, 0
  br i1 %.not43, label %bb.p, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.n = tail call ptr @list_find_first(ptr noundef %i.l, ptr noundef nonnull @gres_find_id, ptr noundef nonnull %i.m) #16 ; 2 uses
  %.not44 = icmp eq ptr %i.n, null
  br i1 %.not44, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.160) #16 ; 0 uses
  br label %bb.p

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.q = load ptr, ptr %i.p, align 8              ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 64 ; 3 uses
  %i.s = load i16, ptr %i.r, align 8
  %.not45 = icmp eq i16 %i.s, 0
  br i1 %.not45, label %bb.p, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %1, align 8
  %i.u = tail call ptr @bit_copy(ptr noundef %i.t) #16 ; 6 uses
  store ptr %i.u, ptr %i.a, align 8
  %i.v = load i16, ptr %i.r, align 8
  %.not56 = icmp eq i16 %i.v, 0
  br i1 %.not56, label %._crit_edge55, label %.lr.ph54

.lr.ph54:                                         ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 96
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 80 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %bb.g

._crit_edge55:                                    ; preds = %bb.n, %bb.f
  %.not46 = icmp eq ptr %i.u, null
  br i1 %.not46, label %bb.p, label %bb.o

bb.g:                                             ; preds = %.lr.ph54, %bb.n
  %indvars.iv58 = phi i64 [ 0, %.lr.ph54 ], [ %indvars.iv.next59, %bb.n ] ; 6 uses
  %i.ac = load ptr, ptr %i.w, align 8             ; 2 uses
  %.not47 = icmp eq ptr %i.ac, null
  br i1 %.not47, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = load i32, ptr %i.f, align 8
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.ae
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = load ptr, ptr %i.x, align 8
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv58
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = tail call i32 @bit_overlap_any(ptr noundef %i.ag, ptr noundef %i.aj) #16
  %.not48 = icmp eq i32 %i.ak, 0
  br i1 %.not48, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.al = load ptr, ptr %i.y, align 8
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv58
  %i.an = load ptr, ptr %i.am, align 8
  %.not49 = icmp eq ptr %i.an, null
  br i1 %.not49, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ao = load ptr, ptr %i.ab, align 8
  %i.ap = load i32, ptr %i.z, align 4
  %i.aq = sext i32 %i.ap to i64
  %i.ar = load i32, ptr %i.aa, align 8
  %i.as = sext i32 %i.ar to i64
  tail call void @bit_nset(ptr noundef %i.ao, i64 noundef %i.aq, i64 noundef %i.as) #16
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.at = load i32, ptr %i.z, align 4
  %i.au = sext i32 %i.at to i64
  %i.av = load i32, ptr %i.aa, align 8
  %i.aw = sext i32 %i.av to i64
  tail call void @bit_nclear(ptr noundef %i.u, i64 noundef %i.au, i64 noundef %i.aw) #16
  %i.ax = load ptr, ptr %i.y, align 8
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv58
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = tail call i64 @bit_size(ptr noundef %i.az) #16
  %i.bb = icmp sgt i64 %i.ba, 0
  br i1 %i.bb, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.m, %bb.k
  %i.bc = load ptr, ptr %i.ab, align 8
  tail call void @bit_or(ptr noundef %i.bc, ptr noundef %i.u) #16
  %i.bd = load ptr, ptr %1, align 8
  tail call void @bit_and(ptr noundef %i.bd, ptr noundef %i.u) #16
  br label %bb.n

.lr.ph:                                           ; preds = %bb.k, %bb.m
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.m ], [ 0, %bb.k ] ; 3 uses
  %i.be = load ptr, ptr %i.y, align 8
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv58
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = tail call i32 @slurm_bit_test(ptr noundef %i.bg, i64 noundef %indvars.iv) #16
  %.not50 = icmp eq i32 %i.bh, 0
  br i1 %.not50, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.bi = load i32, ptr %i.z, align 4
  %i.bj = trunc nuw nsw i64 %indvars.iv to i32
  %i.bk = add nsw i32 %i.bi, %i.bj
  %i.bl = sext i32 %i.bk to i64
  tail call void @bit_set(ptr noundef %i.u, i64 noundef %i.bl) #16
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %bb.l
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bm = load ptr, ptr %i.y, align 8
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv58
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = tail call i64 @bit_size(ptr noundef %i.bo) #16
  %i.bq = icmp sgt i64 %i.bp, %indvars.iv.next
  br i1 %i.bq, label %.lr.ph, label %._crit_edge, !llvm.loop !51

bb.n:                                             ; preds = %bb.h, %._crit_edge, %bb.j
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1 ; 2 uses
  %i.br = load i16, ptr %i.r, align 8
  %i.bs = zext i16 %i.br to i64
  %i.bt = icmp samesign ult i64 %indvars.iv.next59, %i.bs
  br i1 %i.bt, label %bb.g, label %._crit_edge55, !llvm.loop !52

bb.o:                                             ; preds = %._crit_edge55
  call void @slurm_bit_free(ptr noundef nonnull %i.a) #16
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge55, %bb.o, %bb.e, %bb.a, %bb.b, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @_handle_core_select(ptr nofree noundef nonnull readonly captures(none) %0, ptr noundef %1, ptr noundef %2, i32 noundef range(i32 -2147483647, -2147483648) %3, i16 noundef zeroext %4, i16 noundef zeroext %5, i1 noundef zeroext %6, ptr nofree noundef nonnull captures(none) %7, i16 noundef zeroext %8) unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = load i32, ptr %7, align 4
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %.loopexit79, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 68
  %i.g = load i32, ptr %i.f, align 4
  %i.h = trunc i32 %i.g to i16
  %trunc = and i16 %i.h, -3856
  switch i16 %trunc, label %.thread [
    i16 32, label %.preheader80
    i16 48, label %.preheader84
  ]

.preheader80:                                     ; preds = %bb.c
  %i.i = zext i16 %4 to i32
  %.not110 = icmp eq i16 %4, 0
  br i1 %.not110, label %.loopexit79, label %.preheader78.lr.ph

.preheader78.lr.ph:                               ; preds = %.preheader80
  %i.j = zext i16 %5 to i32
  %.not111 = icmp eq i16 %5, 0
  br i1 %.not111, label %.loopexit79, label %.preheader78

.preheader78:                                     ; preds = %.preheader78.lr.ph, %._crit_edge91
  %.06392 = phi i32 [ %i.p, %._crit_edge91 ], [ 0, %.preheader78.lr.ph ] ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.preheader78, %bb.f
  %.06790 = phi i32 [ 0, %.preheader78 ], [ %i.o, %bb.f ] ; 2 uses
  %i.k = tail call fastcc zeroext i1 @_pick_step_core(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %.06392, i32 noundef %.06790, i1 noundef zeroext %6)
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = load i32, ptr %7, align 4
  %i.m = add nsw i32 %i.l, -1                     ; 2 uses
  store i32 %i.m, ptr %7, align 4
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %.loopexit79, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.o = add nuw nsw i32 %.06790, 1               ; 2 uses
  %exitcond117.not = icmp eq i32 %i.o, %i.j
  br i1 %exitcond117.not, label %._crit_edge91, label %bb.d, !llvm.loop !53

._crit_edge91:                                    ; preds = %bb.f
  %i.p = add nuw nsw i32 %.06392, 1               ; 2 uses
  %exitcond118.not = icmp eq i32 %i.p, %i.i
  br i1 %exitcond118.not, label %.loopexit79, label %.preheader78, !llvm.loop !54

.preheader84:                                     ; preds = %bb.c
  %i.q = zext i16 %5 to i32
  %.not108 = icmp eq i16 %5, 0
  br i1 %.not108, label %.loopexit79, label %.preheader82.lr.ph

.preheader82.lr.ph:                               ; preds = %.preheader84
  %i.r = zext i16 %4 to i32
  %.not109 = icmp eq i16 %4, 0
  br i1 %.not109, label %.loopexit79, label %.preheader82

.preheader82:                                     ; preds = %.preheader82.lr.ph, %._crit_edge
  %.16889 = phi i32 [ %i.x, %._crit_edge ], [ 0, %.preheader82.lr.ph ] ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.preheader82, %bb.i
  %.16488 = phi i32 [ 0, %.preheader82 ], [ %i.w, %bb.i ] ; 2 uses
  %i.s = tail call fastcc zeroext i1 @_pick_step_core(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %.16488, i32 noundef %.16889, i1 noundef zeroext %6)
  br i1 %i.s, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.t = load i32, ptr %7, align 4
  %i.u = add nsw i32 %i.t, -1                     ; 2 uses
  store i32 %i.u, ptr %7, align 4
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %.loopexit79, label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.w = add nuw nsw i32 %.16488, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.w, %i.r
  br i1 %exitcond.not, label %._crit_edge, label %bb.g, !llvm.loop !55

._crit_edge:                                      ; preds = %bb.i
  %i.x = add nuw nsw i32 %.16889, 1               ; 2 uses
  %exitcond116.not = icmp eq i32 %i.x, %i.q
  br i1 %exitcond116.not, label %.loopexit79, label %.preheader82, !llvm.loop !56

.thread:                                          ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.y = zext i16 %4 to i64
  %i.z = tail call ptr @slurm_xcalloc(i64 noundef %i.y, i64 noundef 4, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.2, i32 noundef 2382, ptr noundef nonnull @__func__._handle_core_select) #16
  store ptr %i.z, ptr %i.a, align 8
  %.not112 = icmp eq i16 %4, 0
  %i.aa = zext i16 %5 to i32                      ; 2 uses
  %i.ab = zext i16 %8 to i32
  br i1 %.not112, label %.loopexit79.sink.split, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %.thread
  %wide.trip.count = zext i16 %4 to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %._crit_edge97.us, %.preheader.us.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next.mux, %._crit_edge97.us ], [ 0, %.preheader.us.preheader ] ; 4 uses
  %.1104.us = phi i1 [ %.4.us.mux, %._crit_edge97.us ], [ true, %.preheader.us.preheader ] ; 2 uses
  %.158103.us = phi i32 [ %.461.us, %._crit_edge97.us ], [ 0, %.preheader.us.preheader ] ; 2 uses
  %i.ac = load ptr, ptr %i.a, align 8
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv
  %i.ae = load i32, ptr %i.ad, align 4            ; 2 uses
  %i.af = icmp slt i32 %i.ae, %i.aa
  br i1 %i.af, label %.lr.ph.us.preheader, label %._crit_edge97.us

.lr.ph.us.preheader:                              ; preds = %.preheader.us
  %i.ag = trunc nuw nsw i64 %indvars.iv to i32
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %bb.l
  %.295.us = phi i1 [ %.3.us, %bb.l ], [ %.1104.us, %.lr.ph.us.preheader ]
  %.25994.us = phi i32 [ %.360.us, %bb.l ], [ %.158103.us, %.lr.ph.us.preheader ] ; 2 uses
  %.26993.us = phi i32 [ %i.ah, %bb.l ], [ %i.ae, %.lr.ph.us.preheader ] ; 2 uses
  %i.ah = add i32 %.26993.us, 1                   ; 3 uses
  %i.ai = load ptr, ptr %i.a, align 8
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv
  store i32 %i.ah, ptr %i.aj, align 4
  %i.ak = tail call fastcc zeroext i1 @_pick_step_core(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %i.ag, i32 noundef %.26993.us, i1 noundef zeroext %6)
  br i1 %i.ak, label %bb.j, label %bb.l

bb.j:                                             ; preds = %.lr.ph.us
  %i.al = load i32, ptr %7, align 4
  %i.am = add nsw i32 %i.al, -1                   ; 2 uses
  store i32 %i.am, ptr %7, align 4
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %.loopexit79.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = add nsw i32 %.25994.us, 1               ; 2 uses
  %i.ap = icmp eq i32 %i.ao, %i.ab
  br i1 %i.ap, label %._crit_edge97.us, label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.us
  %.360.us = phi i32 [ %i.ao, %bb.k ], [ %.25994.us, %.lr.ph.us ] ; 2 uses
  %.3.us = phi i1 [ false, %bb.k ], [ %.295.us, %.lr.ph.us ] ; 2 uses
  %exitcond119.not = icmp eq i32 %i.ah, %i.aa
  br i1 %exitcond119.not, label %._crit_edge97.us, label %.lr.ph.us, !llvm.loop !57

._crit_edge97.us:                                 ; preds = %bb.l, %bb.k, %.preheader.us
  %.461.us = phi i32 [ %.158103.us, %.preheader.us ], [ 0, %bb.k ], [ %.360.us, %bb.l ]
  %.4.us = phi i1 [ %.1104.us, %.preheader.us ], [ false, %bb.k ], [ %.3.us, %bb.l ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond120.not = icmp eq i64 %indvars.iv.next, %wide.trip.count ; 3 uses
  %brmerge.not = select i1 %exitcond120.not, i1 %.4.us, i1 false
  %indvars.iv.next.mux = select i1 %exitcond120.not, i64 0, i64 %indvars.iv.next
  %.4.us.mux = select i1 %exitcond120.not, i1 true, i1 %.4.us
  br i1 %brmerge.not, label %.loopexit79.sink.split, label %.preheader.us, !llvm.loop !58

.loopexit79.sink.split:                           ; preds = %._crit_edge97.us, %bb.j, %.thread
  %.171.ph = phi i1 [ false, %.thread ], [ true, %bb.j ], [ false, %._crit_edge97.us ]
  call void @slurm_xfree(ptr noundef nonnull %i.a) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %.loopexit79

.loopexit79:                                      ; preds = %._crit_edge, %bb.h, %._crit_edge91, %bb.e, %.loopexit79.sink.split, %.preheader84, %.preheader82.lr.ph, %.preheader80, %.preheader78.lr.ph, %bb.a
  %.171 = phi i1 [ false, %._crit_edge91 ], [ true, %bb.a ], [ false, %.preheader84 ], [ true, %bb.e ], [ true, %bb.h ], [ false, %.preheader80 ], [ false, %.preheader78.lr.ph ], [ %.171.ph, %.loopexit79.sink.split ], [ false, %.preheader82.lr.ph ], [ false, %._crit_edge ]
  ret i1 %.171
}

declare i32 @gres_find_id(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @_pick_step_core(ptr nofree noundef nonnull readonly captures(none) %0, ptr noundef %1, ptr noundef %2, i32 noundef range(i32 -2147483647, -2147483648) %3, i32 noundef range(i32 -2147483648, 65535) %4, i32 noundef range(i32 -2147483648, 65535) %5, i1 noundef zeroext %6) unnamed_addr #1 {
bb.a:
  %i.a = trunc i32 %4 to i16
  %i.b = trunc i32 %5 to i16
  %i.c = tail call i32 @get_job_resources_offset(ptr noundef %1, i32 noundef %3, i16 noundef zeroext %i.a, i16 noundef zeroext %i.b) #16 ; 2 uses
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @fatal(ptr noundef nonnull @.str.163) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = zext nneg i32 %i.c to i64                ; 5 uses
  %i.f = tail call i32 @slurm_bit_test(ptr noundef %2, i64 noundef %i.e) #16
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call i32 @slurm_bit_test(ptr noundef %i.h, i64 noundef %i.e) #16
  %.not21 = icmp eq i32 %i.i, 0
  br i1 %.not21, label %bb.e, label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.k = load i32, ptr %i.j, align 8
  %i.l = and i32 %i.k, 64
  %.not22 = icmp eq i32 %i.l, 0
  br i1 %.not22, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  br i1 %6, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call i32 @slurm_bit_test(ptr noundef %i.n, i64 noundef %i.e) #16
  %.not23 = icmp eq i32 %i.o, 0
  br i1 %.not23, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  tail call void @bit_set(ptr noundef %i.q, i64 noundef %i.e) #16
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.h
  %i.r = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.s = and i64 %i.r, 2
  %.not24 = icmp eq i64 %i.s, 0
  br i1 %.not24, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = tail call i32 @get_log_level() #16
  %i.u = icmp sgt i32 %i.t, 3
  br i1 %i.u, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.164, ptr noundef nonnull @__func__._pick_step_core, i32 noundef %3, i32 noundef %4, i32 noundef %5) #16
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.i
  %i.v = load ptr, ptr %i.g, align 8
  tail call void @bit_set(ptr noundef %i.v, i64 noundef %i.e) #16
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.d, %bb.c, %bb.l
  %.0 = phi i1 [ false, %bb.c ], [ true, %bb.l ], [ false, %bb.d ], [ false, %bb.g ]
  ret i1 %.0
}

declare void @setup_cred_arg(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @slurm_array64_to_value_reps(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @slurm_cred_create(ptr noundef, i1 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #3

declare ptr @step_launch_state_create(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i16(i16, i16) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #15

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind }
attributes #17 = { noreturn nounwind }
attributes #18 = { nounwind willreturn memory(none) }
attributes #19 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !{!0, !11, !12}
!1 = !{i32 7, !"Dwarf Version", i32 5}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{i32 7, !"frame-pointer", i32 2}
!7 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!8 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!9 = !{i8 0, i8 2}
!10 = !{}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = !{ptr @_set_step_id}
!14 = distinct !{!14, !11, !12}
!15 = distinct !{!15, !11, !12}
!16 = distinct !{!16, !11, !12}
!17 = distinct !{!17, !11, !12}
!18 = distinct !{!18, !11, !12}
!19 = distinct !{null}
!20 = distinct !{!20, !11, !12}
!21 = distinct !{!21, !11, !12}
!22 = distinct !{null}
!23 = distinct !{!23, !11, !12}
!24 = distinct !{!24, !11, !12}
!25 = distinct !{!25, !11, !12}
!26 = distinct !{!26, !11, !12}
!27 = distinct !{!27, !11, !12}
!28 = distinct !{null}
!29 = distinct !{!29, !11, !12}
!30 = distinct !{!30, !11, !12}
!31 = distinct !{!31, !11, !12}
!32 = distinct !{!32, !11, !12}
!33 = distinct !{!33, !11, !12}
!34 = distinct !{!34, !11, !12}
!35 = distinct !{!35, !11, !12}
!36 = distinct !{!36, !11, !12}
!37 = distinct !{!37, !11, !12}
!38 = distinct !{!38, !11, !12}
!39 = distinct !{!39, !11, !12}
!40 = distinct !{!40, !11, !12}
!41 = distinct !{!41, !11, !12}
!42 = distinct !{!42, !11, !12}
!43 = distinct !{!43, !11, !12}
!44 = distinct !{!44, !11, !12}
!45 = distinct !{!45, !11, !12}
!46 = distinct !{!46, !11, !12}
!47 = distinct !{!47, !11, !12}
!48 = distinct !{!48, !11, !12}
!49 = distinct !{!49, !11, !12}
!50 = distinct !{!50, !11, !12}
!51 = distinct !{!51, !11, !12}
!52 = distinct !{!52, !11, !12}
!53 = distinct !{!53, !11, !12}
!54 = distinct !{!54, !11, !12}
!55 = distinct !{!55, !11, !12}
!56 = distinct !{!56, !11, !12}
!57 = distinct !{!57, !11, !12}
!58 = distinct !{!58, !11, !12}
end_hunk_0
