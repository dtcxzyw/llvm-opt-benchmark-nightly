Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/unpack-trees?download=true
inline.NumInlined: 214
inline.NumDeleted: 66
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@setup_unpack_trees_porcelain:bb.a
  store i8 %i.bf, ptr %i.bd, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 8
  %i.bi = or i8 %i.bh, 1
  store i8 %i.bi, ptr %i.bg, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 8
  %i.bl = or i8 %i.bk, 1
  store i8 %i.bl, ptr %i.bj, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 8
  %i.bo = or i8 %i.bn, 1
  store i8 %i.bo, ptr %i.bm, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 8
  %i.br = or i8 %i.bq, 1
  store i8 %i.br, ptr %i.bp, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 8
  %i.bu = or i8 %i.bt, 1
  store i8 %i.bu, ptr %i.bs, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 2 uses
  %i.bw = load i8, ptr %i.bv, align 8
  %i.bx = or i8 %i.bw, 1
  store i8 %i.bx, ptr %i.bv, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 2 uses
  %i.bz = load i8, ptr %i.by, align 8
  %i.ca = or i8 %i.bz, 1
  store i8 %i.ca, ptr %i.by, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 8
  %i.cd = or i8 %i.cc, 1
  store i8 %i.cd, ptr %i.cb, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 752 ; 2 uses
  %i.cf = load i8, ptr %i.ce, align 8
  %i.cg = or i8 %i.cf, 1
  store i8 %i.cg, ptr %i.ce, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 792 ; 2 uses
  %i.ci = load i8, ptr %i.ch, align 8
  %i.cj = or i8 %i.ci, 1
  store i8 %i.cj, ptr %i.ch, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 2 uses
  %i.cl = load i8, ptr %i.ck, align 8
  %i.cm = or i8 %i.cl, 1
  store i8 %i.cm, ptr %i.ck, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @strvec_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #3

declare i32 @advice_enabled(i32 noundef) local_unnamed_addr #2

declare ptr @strvec_pushf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local void @clear_unpack_trees_porcelain(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 344
  tail call void @strvec_clear(ptr noundef nonnull %i.a) #16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 248
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.b, i8 0, i64 96, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 848
  tail call void @discard_index(ptr noundef nonnull %i.c) #16
  ret void
}

declare void @strvec_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare void @discard_index(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2, 1) i32 @unpack_trees(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.strbuf, align 8             ; 6 uses
  %4 = alloca %struct.strbuf, align 8             ; 12 uses
  %5 = alloca %struct.pattern_list, align 8       ; 6 uses
  %6 = alloca %struct.dir_struct, align 8         ; 6 uses
  %7 = alloca %struct.traverse_info, align 8      ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 136 ; 15 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !44   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %6, i8 0, i64 312, i1 false)
  %i.e = load ptr, ptr @the_repository, align 8, !tbaa !45
  %i.f = tail call ptr @repo_config_values(ptr noundef %i.e) #16
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !46
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.27, i32 noundef 1894, ptr noundef nonnull @.str.28) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = icmp ugt i32 %0, 8
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.29, i32 noundef 8) #18
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 224
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 1112 ; 4 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !47
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.27, i32 noundef 1899, ptr noundef nonnull @.str.30) #18
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 1104 ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !48
  %.not155 = icmp eq ptr %i.o, null
  br i1 %.not155, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.27, i32 noundef 1901, ptr noundef nonnull @.str.31) #18
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !49
  %.not156 = icmp eq ptr %i.q, null
  br i1 %.not156, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.27, i32 noundef 1903, ptr noundef nonnull @.str.32) #18
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.r = tail call i64 @trace_performance_enter() #16 ; 0 uses
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @trace2_region_enter_fl(ptr noundef nonnull @.str.27, i32 noundef 1906, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.33, ptr noundef %i.d) #16
  tail call void @prepare_repo_settings(ptr noundef %i.d) #16
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 296 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !50
  %.not157 = icmp eq i32 %i.t, 0
  br i1 %.not157, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !43
  tail call void @ensure_full_index(ptr noundef %i.u) #16
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !69   ; 2 uses
  %.not158 = icmp eq ptr %i.w, null
  br i1 %.not158, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @ensure_full_index(ptr noundef nonnull %i.w) #16
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.k
  %i.x = load i32, ptr %i.g, align 8, !tbaa !46
  %i.y = icmp eq i32 %i.x, 3
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !70
  %.not159 = icmp eq i32 %i.aa, 0                 ; 2 uses
  br i1 %i.y, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  br i1 %.not159, label %.thread312.a, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.27, i32 noundef 1917, ptr noundef nonnull @.str.34) #18
  unreachable

bb.q:                                             ; preds = %bb.n
  br i1 %.not159, label %.thread312.a, label %bb.r

.thread312.a:                                     ; preds = %bb.o, %bb.q
  store ptr %6, ptr %i.l, align 8, !tbaa !47
  store i32 1, ptr %6, align 8, !tbaa !71
  call void @setup_standard_excludes(ptr noundef nonnull %6) #16
  br label %bb.r

bb.r:                                             ; preds = %.thread312.a, %bb.q
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !80 ; 4 uses
  %.not161 = icmp eq ptr %i.ac, null
  br i1 %.not161, label %bb.x, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !43  ; 4 uses
  %i.ae = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ac) #17 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) @__const.display_error_msgs.path, i64 24, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 60
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !81
  %.not.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i, label %update_sparsity_for_prefix.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.s
  %i.ah = trunc i64 %i.ae to i32
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %8 = and i64 %i.ae, 2147483647
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.t, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %8, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.t ] ; 5 uses
  %i.aj = getelementptr i8, ptr %i.ac, i64 %indvars.iv.i
  %i.ak = getelementptr i8, ptr %i.aj, i64 -1
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !82
  %i.am = icmp eq i8 %i.al, 47
  br i1 %i.am, label %bb.t, label %.critedge.i

bb.t:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.an = icmp sgt i64 %indvars.iv.i, 1
  br i1 %i.an, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !83

._crit_edge.i:                                    ; preds = %bb.t, %.preheader.i
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.27, i32 noundef 1851, ptr noundef nonnull @.str.47) #18
  unreachable

.critedge.i:                                      ; preds = %.lr.ph.i
  %9 = add nuw nsw i64 %indvars.iv.i, 1
  %10 = and i64 %9, 4294967295
  call void @strbuf_grow(ptr noundef nonnull %4, i64 noundef %10) #16
  call void @strbuf_add(ptr noundef nonnull %4, ptr noundef nonnull %i.ac, i64 noundef %indvars.iv.i) #16
  %i.ao = load i64, ptr %4, align 8, !tbaa !85    ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ao, 0
  br i1 %.not.i.i.i, label %strbuf_avail.exit.thread.i.i, label %strbuf_avail.exit.i.i

strbuf_avail.exit.i.i:                            ; preds = %.critedge.i
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !86 ; 2 uses
  %.neg.i.i = add i64 %i.aq, 1                    ; 2 uses
  %.not.i.i = icmp eq i64 %i.ao, %.neg.i.i
  br i1 %.not.i.i, label %strbuf_avail.exit.thread.i.i, label %strbuf_addch.exit.i

strbuf_avail.exit.thread.i.i:                     ; preds = %strbuf_avail.exit.i.i, %.critedge.i
  call void @strbuf_grow(ptr noundef nonnull %4, i64 noundef 1) #16
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !86 ; 2 uses
  %.pre7.i.i = add i64 %.pre.i.i, 1
  br label %strbuf_addch.exit.i

strbuf_addch.exit.i:                              ; preds = %strbuf_avail.exit.thread.i.i, %strbuf_avail.exit.i.i
  %.pre-phi.i.i = phi i64 [ %.pre7.i.i, %strbuf_avail.exit.thread.i.i ], [ %.neg.i.i, %strbuf_avail.exit.i.i ]
  %i.ar = phi i64 [ %.pre.i.i, %strbuf_avail.exit.thread.i.i ], [ %i.aq, %strbuf_avail.exit.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !87
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i64 %.pre-phi.i.i, ptr %i.au, align 8, !tbaa !86
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ar
  store i8 47, ptr %i.av, align 1, !tbaa !82
  %i.aw = load ptr, ptr %i.as, align 8, !tbaa !87
  %i.ax = load i64, ptr %i.au, align 8, !tbaa !86
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ax
  store i8 0, ptr %i.ay, align 1, !tbaa !82
  %i.az = load ptr, ptr %i.as, align 8, !tbaa !87
  %i.ba = call i32 @path_in_cone_mode_sparse_checkout(ptr noundef %i.az, ptr noundef %i.ad) #16
  %.not12.i = icmp eq i32 %i.ba, 0
  br i1 %.not12.i, label %bb.u, label %bb.w

bb.u:                                             ; preds = %strbuf_addch.exit.i
  %i.bb = load ptr, ptr %i.as, align 8, !tbaa !87
  %i.bc = load i64, ptr %i.au, align 8, !tbaa !86
  %i.bd = trunc i64 %i.bc to i32
  %i.be = call i32 @index_name_pos(ptr noundef %i.ad, ptr noundef %i.bb, i32 noundef %i.bd) #16
  %i.bf = icmp sgt i32 %i.be, -1
  br i1 %i.bf, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @ensure_full_index(ptr noundef %i.ad) #16
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %strbuf_addch.exit.i
  call void @strbuf_release(ptr noundef nonnull %4) #16
  br label %update_sparsity_for_prefix.exit

update_sparsity_for_prefix.exit:                  ; preds = %bb.s, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.x

bb.x:                                             ; preds = %update_sparsity_for_prefix.exit, %bb.r
  %i.bg = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !88
  %.not162 = icmp eq i32 %i.bh, 0
  br i1 %.not162, label %.thread314, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !89
  %.not163 = icmp eq i32 %i.bj, 0
  br i1 %.not163, label %.thread314, label %bb.z

.thread314:                                       ; preds = %bb.x, %bb.y
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 44
  store i32 1, ptr %i.bk, align 4, !tbaa !90
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 44
  br label %populate_from_existing_patterns.exit

bb.z:                                             ; preds = %bb.y
  %.phi.trans.insert290 = getelementptr inbounds nuw i8, ptr %2, i64 44
  %.pre291.a = load i32, ptr %.phi.trans.insert290, align 4, !tbaa !90
  %i.bm = icmp eq i32 %.pre291.a, 0
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 4 uses
  br i1 %i.bm, label %bb.aa, label %populate_from_existing_patterns.exit

bb.aa:                                            ; preds = %bb.z
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %5, i8 0, i64 128, i1 false)
  %i.bo = call i32 @get_sparse_checkout_patterns(ptr noundef nonnull %5) #16
  %i.bp = icmp slt i32 %i.bo, 0
  br i1 %i.bp, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 1, ptr %i.bn, align 4, !tbaa !90
  br label %populate_from_existing_patterns.exit

bb.ac:                                            ; preds = %bb.aa
  store ptr %5, ptr %i.n, align 8, !tbaa !48
  br label %populate_from_existing_patterns.exit

populate_from_existing_patterns.exit:             ; preds = %.thread314, %bb.ac, %bb.ab, %bb.z
  %i.bq = phi ptr [ %i.bl, %.thread314 ], [ %i.bn, %bb.ac ], [ %i.bn, %bb.ab ], [ %i.bn, %bb.z ] ; 3 uses
  %.not164.not316 = phi i1 [ false, %.thread314 ], [ true, %bb.ac ], [ true, %bb.ab ], [ false, %bb.z ]
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 848 ; 15 uses
  %i.bs = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 240
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !44
  call void @index_state_init(ptr noundef nonnull %i.br, ptr noundef %i.bu) #16
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 904 ; 6 uses
  %i.bw = load i8, ptr %i.bv, align 8
  %i.bx = or i8 %i.bw, 2
  store i8 %i.bx, ptr %i.bv, align 8
  %i.by = load ptr, ptr %i.a, align 8, !tbaa !43  ; 7 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 48
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 896
  %i.cb = load <2 x i32>, ptr %i.bz, align 8, !tbaa !12
  store <2 x i32> %i.cb, ptr %i.ca, align 8, !tbaa !12
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !91
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 856
  store i32 %i.cd, ptr %i.ce, align 8, !tbaa !92
  %i.cf = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !93 ; 3 uses
  %.not165 = icmp eq ptr %i.cg, null
  br i1 %.not165, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %populate_from_existing_patterns.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 888
  store ptr null, ptr %i.ch, align 8, !tbaa !94
  br label %bb.aj

bb.ae:                                            ; preds = %populate_from_existing_patterns.exit
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !69
  %i.ck = icmp eq ptr %i.by, %i.cj
  br i1 %i.ck, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 888
  store ptr %i.cg, ptr %i.cl, align 8, !tbaa !94
  %i.cm = getelementptr inbounds nuw i8, ptr %i.by, i64 20
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !95
  %i.co = and i32 %i.cn, 64
  %.not166 = icmp eq i32 %i.co, 0
  br i1 %.not166, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 868 ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !96
  %i.cr = or i32 %i.cq, 64
  store i32 %i.cr, ptr %i.cp, align 4, !tbaa !96
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cg, i64 84 ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !97
  %i.cu = add nsw i32 %i.ct, 1
  store i32 %i.cu, ptr %i.cs, align 4, !tbaa !97
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ae
  %i.cv = call ptr @init_split_index(ptr noundef nonnull %i.br) #16
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 888
  store ptr %i.cv, ptr %i.cw, align 8, !tbaa !94
  %.pre292.a = load ptr, ptr %i.a, align 8, !tbaa !43
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai, %bb.ad
  %i.cx = phi ptr [ %i.by, %bb.ah ], [ %.pre292.a, %bb.ai ], [ %i.by, %bb.ad ] ; 6 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 1008
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cy, ptr noundef nonnull readonly align 4 dereferenceable(32) %i.cz, i64 32, i1 false)
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 192
  %i.db = load i32, ptr %i.da, align 4, !tbaa !99
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 1040
  store i32 %i.db, ptr %i.dc, align 8, !tbaa !99
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 236
  store i32 %0, ptr %i.dd, align 4, !tbaa !100
  %i.de = getelementptr inbounds nuw i8, ptr %i.cx, i64 12 ; 2 uses
  %i.df = load i32, ptr %i.de, align 4, !tbaa !101
  %.not.i207 = icmp eq i32 %i.df, 0
  br i1 %.not.i207, label %mark_all_ce_unused.exit, label %.lr.ph.i208

.lr.ph.i208:                                      ; preds = %bb.aj
  %i.dg = load ptr, ptr %i.cx, align 8, !tbaa !102
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ak, %.lr.ph.i208
  %indvars.iv.i.a = phi i64 [ 0, %.lr.ph.i208 ], [ %indvars.iv.next.i.a, %bb.ak ] ; 2 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %indvars.iv.i.a
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !103
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 56 ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !12
  %i.dl = and i32 %i.dk, -50855937
  store i32 %i.dl, ptr %i.dj, align 8, !tbaa !12
  %indvars.iv.next.i.a = add nuw nsw i64 %indvars.iv.i.a, 1 ; 2 uses
  %i.dm = load i32, ptr %i.de, align 4, !tbaa !101
  %i.dn = zext i32 %i.dm to i64
  %i.do = icmp samesign ult i64 %indvars.iv.next.i.a, %i.dn
  br i1 %i.do, label %bb.ak, label %mark_all_ce_unused.exit, !llvm.loop !104

mark_all_ce_unused.exit:                          ; preds = %bb.ak, %bb.aj
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cx, i64 208
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !105 ; 2 uses
  %.not.i210 = icmp eq ptr %i.dq, null
  br i1 %.not.i210, label %xstrdup_or_null.exit, label %bb.al

bb.al:                                            ; preds = %mark_all_ce_unused.exit
  %i.dr = call ptr @xstrdup(ptr noundef nonnull %i.dq) #16
  %.pre293.a = load ptr, ptr %i.a, align 8, !tbaa !43
  br label %xstrdup_or_null.exit

xstrdup_or_null.exit:                             ; preds = %mark_all_ce_unused.exit, %bb.al
  %i.ds = phi ptr [ %.pre293.a, %bb.al ], [ %i.cx, %mark_all_ce_unused.exit ]
  %i.dt = phi ptr [ %i.dr, %bb.al ], [ null, %mark_all_ce_unused.exit ]
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 1056
  store ptr %i.dt, ptr %i.du, align 8, !tbaa !106
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 56 ; 2 uses
  %i.dw = load i8, ptr %i.dv, align 8
  %i.dx = and i8 %i.dw, 32
  %i.dy = load i8, ptr %i.bv, align 8
  %i.dz = and i8 %i.dy, -33
  %i.ea = or disjoint i8 %i.dz, %i.dx
  store i8 %i.ea, ptr %i.bv, align 8
  %i.eb = load i8, ptr %i.dv, align 8
  %i.ec = and i8 %i.eb, 2
  %.not167 = icmp eq i8 %i.ec, 0
  br i1 %.not167, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %xstrdup_or_null.exit
  %i.ed = load i32, ptr %i.s, align 8, !tbaa !50
  %.not168 = icmp eq i32 %i.ed, 0
  br i1 %.not168, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.ee = call i32 @is_sparse_index_allowed(ptr noundef nonnull %i.br, i32 noundef 0) #16
  %.not169 = icmp eq i32 %i.ee, 0
  br i1 %.not169, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 908
  store i32 1, ptr %i.ef, align 4, !tbaa !107
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %bb.am, %xstrdup_or_null.exit
  %i.eg = load i32, ptr %i.bq, align 4, !tbaa !90
  %.not170 = icmp eq i32 %i.eg, 0
  br i1 %.not170, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.eh = load ptr, ptr %i.n, align 8, !tbaa !48
  %i.ei = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !108
  call fastcc void @mark_new_skip_worktree(ptr noundef %i.eh, ptr noundef %i.ei, i32 noundef 0, i32 noundef 33554432, i32 noundef %i.ek)
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.el = load ptr, ptr @unpack_trees.dfc, align 8, !tbaa !103 ; 2 uses
  %.not171 = icmp eq ptr %i.el, null
  br i1 %.not171, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.em = call ptr @xcalloc(i64 noundef 1, i64 noundef 109) #16 ; 2 uses
  store ptr %i.em, ptr @unpack_trees.dfc, align 8, !tbaa !103
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.en = phi ptr [ %i.em, %bb.as ], [ %i.el, %bb.ar ]
  store ptr %i.en, ptr %i.p, align 8, !tbaa !49
  %.not172 = icmp eq i32 %0, 0
  br i1 %.not172, label %bb.bg, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.eo = load ptr, ptr %i.ab, align 8, !tbaa !80 ; 2 uses
  %.not173 = icmp eq ptr %i.eo, null
  %spec.select = select i1 %.not173, ptr @.str.35, ptr %i.eo
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  call void @setup_traverse_info(ptr noundef nonnull %7, ptr noundef nonnull %spec.select) #16
  %i.ep = getelementptr inbounds nuw i8, ptr %7, i64 64
  store ptr @unpack_callback, ptr %i.ep, align 8, !tbaa !109
  %i.eq = getelementptr inbounds nuw i8, ptr %7, i64 72
  store ptr %2, ptr %i.eq, align 8, !tbaa !112
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 228
  %i.es = load i32, ptr %i.er, align 4, !tbaa !16
  %i.et = getelementptr inbounds nuw i8, ptr %7, i64 80
  store i32 %i.es, ptr %i.et, align 8, !tbaa !113
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !114
  %i.ew = getelementptr inbounds nuw i8, ptr %7, i64 48
  store ptr %i.ev, ptr %i.ew, align 8, !tbaa !115
  %i.ex = load ptr, ptr %i.ab, align 8, !tbaa !80
  %.not174 = icmp eq ptr %i.ex, null
  br i1 %.not174, label %.thread, label %.preheader273

.preheader273:                                    ; preds = %bb.au
  %i.ey = getelementptr i8, ptr %2, i64 240
  %i.ez = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.fa = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.fb = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.fc = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.fd = getelementptr inbounds nuw i8, ptr %7, i64 40
  br label %bb.av

bb.av:                                            ; preds = %.preheader273, %ce_in_traverse_path.exit.thread
  %.val202 = load ptr, ptr %i.a, align 8, !tbaa !43 ; 2 uses
  %.val203 = load i32, ptr %i.ey, align 8, !tbaa !116 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.val202, i64 12
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !101 ; 2 uses
  %i.fg = icmp ugt i32 %i.ff, %.val203
  br i1 %i.fg, label %.lr.ph336, label %.thread

.lr.ph336:                                        ; preds = %bb.av
  %i.fh = sext i32 %.val203 to i64
  %i.fi = load ptr, ptr %.val202, align 8, !tbaa !102
  br label %bb.ax

bb.aw:                                            ; preds = %bb.ax
  %indvars.iv.next.i212 = add nuw nsw i64 %indvars.iv.i211334, 1 ; 2 uses
  %i.fj = trunc nsw i64 %indvars.iv.next.i212 to i32
  %i.fk = icmp ugt i32 %i.ff, %i.fj
  br i1 %i.fk, label %bb.ax, label %.thread, !llvm.loop !117

bb.ax:                                            ; preds = %.lr.ph336, %bb.aw
  %indvars.iv.i211334 = phi i64 [ %i.fh, %.lr.ph336 ], [ %indvars.iv.next.i212, %bb.aw ] ; 2 uses
  %i.fl = getelementptr inbounds [8 x i8], ptr %i.fi, i64 %indvars.iv.i211334
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !103 ; 7 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 56
  %i.fo = load i32, ptr %i.fn, align 8, !tbaa !12
  %i.fp = and i32 %i.fo, 16777216
  %.not.not.i = icmp eq i32 %i.fp, 0
  br i1 %.not.not.i, label %next_cache_entry.exit, label %bb.aw, !llvm.loop !117

next_cache_entry.exit:                            ; preds = %bb.ax
  %i.fq = load ptr, ptr %i.ez, align 8, !tbaa !118 ; 4 uses
  %.not.i213 = icmp eq ptr %i.fq, null
  br i1 %.not.i213, label %.thread, label %bb.ay

bb.ay:                                            ; preds = %next_cache_entry.exit
  %i.fr = load ptr, ptr %i.fa, align 8, !tbaa !119 ; 2 uses
  %i.fs = load i64, ptr %i.fb, align 8, !tbaa !120 ; 2 uses
  %i.ft = load i32, ptr %i.fc, align 8, !tbaa !121 ; 2 uses
  %i.fu = load ptr, ptr %i.fq, align 8, !tbaa !122 ; 2 uses
  %.not.i.i214 = icmp eq ptr %i.fu, null
  br i1 %.not.i.i214, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.fv = call fastcc i32 @do_compare_entry_piecewise(ptr noundef nonnull %i.fm, ptr noundef nonnull readonly %i.fq, ptr noundef %i.fr, i64 noundef %i.fs, i32 noundef %i.ft)
  br label %do_compare_entry.exit.i

bb.ba:                                            ; preds = %bb.ay
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fm, i64 108 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fq, i64 40
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !123 ; 3 uses
  %i.fz = call i32 @strncmp(ptr noundef nonnull %i.fw, ptr noundef nonnull %i.fu, i64 noundef %i.fy) #17
  %.not30.i.i = icmp eq i32 %i.fz, 0
  br i1 %.not30.i.i, label %bb.bb, label %ce_in_traverse_path.exit.thread

bb.bb:                                            ; preds = %bb.ba
  %i.ga = trunc i64 %i.fy to i32                  ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fm, i64 64
  %i.gc = load i32, ptr %i.gb, align 8, !tbaa !12 ; 2 uses
  %i.gd = icmp slt i32 %i.gc, %i.ga
  br i1 %i.gd, label %ce_in_traverse_path.exit.thread, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ge = sub nsw i32 %i.gc, %i.ga
  %sext.i.i = shl i64 %i.fy, 32
  %i.gf = ashr exact i64 %sext.i.i, 32
  %i.gg = getelementptr inbounds i8, ptr %i.fw, i64 %i.gf
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fm, i64 52
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !12
end_hunk_0
begin_hunk_1_@mark_new_skip_worktree:bb.a
bb.d:                                             ; preds = %._crit_edge
  store i8 0, ptr %i.ab, align 1, !tbaa !82
  br label %strbuf_setlen.exit.i

bb.e:                                             ; preds = %._crit_edge
  %i.ac = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !82
  %.not10.i.i = icmp eq i8 %i.ac, 0
  br i1 %.not10.i.i, label %strbuf_setlen.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @__assert_fail(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.50, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__.strbuf_setlen) #18
  unreachable

strbuf_setlen.exit.i:                             ; preds = %bb.e, %bb.d
  %.not.i = icmp eq i32 %4, 0
  br i1 %.not.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %strbuf_setlen.exit.i
  %i.ad = load ptr, ptr @the_repository, align 8, !tbaa !45
  %i.ae = load i32, ptr @git_gettext_enabled, align 4, !tbaa !12
  %.not4.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not4.i.i, label %_.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.48, i32 noundef 5) #16
  br label %_.exit.i

_.exit.i:                                         ; preds = %bb.h, %bb.g
  %.0.i.i = phi ptr [ %i.af, %bb.h ], [ @.str.48, %bb.g ]
  %i.ag = load i32, ptr %i.b, align 4, !tbaa !101
  %i.ah = zext i32 %i.ag to i64
  %i.ai = tail call ptr @start_delayed_progress(ptr noundef %i.ad, ptr noundef %.0.i.i, i64 noundef %i.ah) #16
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 232
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !158
  br label %bb.i

bb.i:                                             ; preds = %_.exit.i, %strbuf_setlen.exit.i
  %i.ak = zext nneg i32 %2 to i64
  %i.al = zext nneg i32 %3 to i64
  %i.am = call i32 (ptr, i64, ptr, ...) @xsnprintf(ptr noundef nonnull %i.a, i64 noundef 100, ptr noundef nonnull @.str.49, i64 noundef %i.ak, i64 noundef %i.al) #16 ; 0 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !44
  call void (ptr, i32, ptr, ptr, ptr, ...) @trace2_region_enter_fl(ptr noundef nonnull @.str.27, i32 noundef 1783, ptr noundef nonnull @.str.33, ptr noundef nonnull %i.a, ptr noundef %i.ao) #16
  %i.ap = load ptr, ptr %1, align 8, !tbaa !102
  %i.aq = load i32, ptr %i.b, align 4, !tbaa !101
  %i.ar = call fastcc i32 @clear_ce_flags_1(ptr noundef nonnull %1, ptr noundef %i.ap, i32 noundef %i.aq, i32 noundef range(i32 0, 524289) %2, i32 noundef range(i32 33554432, 1107296257) %3, ptr noundef %0, i32 noundef 0, i32 noundef 0) ; 0 uses
  %i.as = load ptr, ptr %i.an, align 8, !tbaa !44
  call void (ptr, i32, ptr, ptr, ptr, ...) @trace2_region_leave_fl(ptr noundef nonnull @.str.27, i32 noundef 1790, ptr noundef nonnull @.str.33, ptr noundef nonnull %i.a, ptr noundef %i.as) #16
  %i.at = load i32, ptr @git_gettext_enabled, align 4, !tbaa !12
  %.not4.i.i.i = icmp eq i32 %i.at, 0
  br i1 %.not4.i.i.i, label %clear_ce_flags.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.53, i32 noundef 5) #16
  br label %clear_ce_flags.exit

clear_ce_flags.exit:                              ; preds = %bb.i, %bb.j
  %.0.i.i.i = phi ptr [ %i.au, %bb.j ], [ @.str.53, %bb.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 232
  call void @stop_progress_msg(ptr noundef nonnull %i.av, ptr noundef %.0.i.i.i) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @setup_traverse_info(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @unpack_callback(i32 noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) #0 {
bb.a:
  %i.a = alloca [9 x ptr], align 16               ; 9 uses
  %5 = alloca %struct.strbuf, align 8             ; 11 uses
  %6 = alloca %struct.traverse_info, align 8      ; 12 uses
  %i.b = alloca [9 x ptr], align 16               ; 8 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.b, i8 0, i64 72, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !112  ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.071 = phi ptr [ %3, %bb.a ], [ %i.h, %bb.b ]  ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.071, i64 52
  %i.g = load i32, ptr %i.f, align 4, !tbaa !159
  %.not = icmp eq i32 %i.g, 0
  %i.h = getelementptr inbounds nuw i8, ptr %.071, i64 56
  br i1 %.not, label %bb.b, label %bb.c, !llvm.loop !161

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.071, i64 52
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 232
  %i.k = load i32, ptr %i.j, align 8, !tbaa !162
  %.not79 = icmp eq i32 %i.k, 0
  br i1 %.not79, label %debug_unpack_callback.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.54, i64 noundef %1, i64 noundef %2, i32 noundef %0) ; 0 uses
  tail call fastcc void @debug_path(ptr noundef nonnull readonly %4)
  %i.m = load ptr, ptr @stdout, align 8, !tbaa !155
  %i.n = tail call i32 @putc(i32 noundef 10, ptr noundef %i.m), !inline_history !163 ; 0 uses
  %i.o = icmp sgt i32 %0, 0
  br i1 %i.o, label %.lr.ph.preheader.i, label %debug_unpack_callback.exit

.lr.ph.preheader.i:                               ; preds = %bb.d
  %wide.trip.count.i = zext nneg i32 %0 to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %debug_name_entry.exit.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %debug_name_entry.exit.i ] ; 3 uses
  %i.p = getelementptr inbounds nuw [56 x i8], ptr %3, i64 %indvars.iv.i ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !164  ; 2 uses
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %debug_name_entry.exit.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 52
  %i.t = load i32, ptr %i.s, align 4, !tbaa !159
  br label %debug_name_entry.exit.i

debug_name_entry.exit.i:                          ; preds = %bb.e, %.lr.ph.i
  %spec.select.i.i = phi ptr [ %i.r, %bb.e ], [ @.str.57, %.lr.ph.i ]
  %i.u = phi i32 [ %i.t, %bb.e ], [ 0, %.lr.ph.i ]
  %i.v = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.w = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.56, i32 noundef %i.v, i32 noundef %i.u, ptr noundef nonnull %spec.select.i.i) ; 0 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %debug_unpack_callback.exit, label %.lr.ph.i, !llvm.loop !165

debug_unpack_callback.exit:                       ; preds = %debug_name_entry.exit.i, %bb.d, %bb.c
  %i.x = load i32, ptr %i.e, align 8, !tbaa !126
  %.not80 = icmp eq i32 %i.x, 0
  br i1 %.not80, label %unpack_failed.exit.thread, label %unpack_failed.exit.preheader

unpack_failed.exit.preheader:                     ; preds = %debug_unpack_callback.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.z = getelementptr i8, ptr %i.e, i64 136      ; 3 uses
  %i.aa = getelementptr i8, ptr %i.e, i64 240     ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.071, i64 40 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.071, i64 48 ; 4 uses
  %i.ad = getelementptr i8, ptr %4, i64 40        ; 3 uses
  br label %unpack_failed.exit

unpack_failed.exit:                               ; preds = %unpack_failed.exit.preheader, %compare_entry.exit.thread145
  %i.ae = load i32, ptr %i.y, align 8, !tbaa !166
  %.not81 = icmp eq i32 %i.ae, 0
  br i1 %.not81, label %bb.i, label %bb.f

bb.f:                                             ; preds = %unpack_failed.exit
  %.val = load ptr, ptr %i.z, align 8, !tbaa !43  ; 2 uses
  %.val91 = load i32, ptr %i.aa, align 8, !tbaa !116 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.val, i64 12
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !101 ; 2 uses
  %i.ah = icmp ugt i32 %i.ag, %.val91
  br i1 %i.ah, label %.lr.ph, label %unpack_failed.exit.thread

.lr.ph:                                           ; preds = %bb.f
  %i.ai = sext i32 %.val91 to i64
  %i.aj = load ptr, ptr %.val, align 8, !tbaa !102
  br label %bb.h

bb.g:                                             ; preds = %bb.h
  %indvars.iv.next.i93 = add nuw nsw i64 %indvars.iv.i92270, 1 ; 2 uses
  %i.ak = trunc nsw i64 %indvars.iv.next.i93 to i32
  %i.al = icmp ugt i32 %i.ag, %i.ak
  br i1 %i.al, label %bb.h, label %unpack_failed.exit.thread, !llvm.loop !117

bb.h:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv.i92270 = phi i64 [ %i.ai, %.lr.ph ], [ %indvars.iv.next.i93, %bb.g ] ; 2 uses
  %i.am = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %indvars.iv.i92270
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !103 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 56
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !12
  %i.aq = and i32 %i.ap, 16777216
  %.not.not.i = icmp eq i32 %i.aq, 0
  br i1 %.not.not.i, label %next_cache_entry.exit.thread139, label %bb.g, !llvm.loop !117

bb.i:                                             ; preds = %unpack_failed.exit
  %i.ar = load ptr, ptr %i.ab, align 8, !tbaa !164
  %i.as = load i32, ptr %i.ac, align 8, !tbaa !167
  %i.at = sext i32 %i.as to i64
  %i.au = tail call fastcc i32 @find_cache_pos(ptr noundef readonly %4, ptr noundef %i.ar, i64 noundef %i.at) ; 4 uses
  %i.av = load ptr, ptr %i.d, align 8, !tbaa !112 ; 2 uses
  %i.aw = icmp sgt i32 %i.au, -1
  br i1 %i.aw, label %next_cache_entry.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ax = icmp eq i32 %i.au, -1
  br i1 %i.ax, label %unpack_failed.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = sub nuw nsw i32 -2, %i.au               ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 136 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !43
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !101
  %.not.i = icmp ult i32 %i.ay, %i.bc
  br i1 %.not.i, label %.lr.ph.preheader.i95, label %unpack_failed.exit.thread

.lr.ph.preheader.i95:                             ; preds = %bb.k
  %7 = zext nneg i32 %i.ay to i64
  br label %.lr.ph.i95

.lr.ph.i95:                                       ; preds = %skip_prefix_impl.exit.i, %.lr.ph.preheader.i95
  %indvars.iv.i97 = phi i64 [ %7, %.lr.ph.preheader.i95 ], [ %indvars.iv.next.i99, %skip_prefix_impl.exit.i ] ; 3 uses
  %i.bd = load ptr, ptr %i.az, align 8, !tbaa !43
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !102
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.i97
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !103 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 108
  %i.bi = load ptr, ptr %4, align 8, !tbaa !122
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %.lr.ph.i95
  %.07.i.i = phi ptr [ %i.bh, %.lr.ph.i95 ], [ %i.bk, %bb.m ] ; 4 uses
  %.06.i.i = phi ptr [ %i.bi, %.lr.ph.i95 ], [ %i.bm, %bb.m ] ; 2 uses
  %i.bj = load i8, ptr %.06.i.i, align 1, !tbaa !82 ; 2 uses
  %.not.i.i96 = icmp eq i8 %i.bj, 0
  br i1 %.not.i.i96, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bk = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 1
  %i.bl = load i8, ptr %.07.i.i, align 1, !tbaa !82
  %i.bm = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 1
  %i.bn = icmp eq i8 %i.bl, %i.bj
  br i1 %i.bn, label %bb.l, label %unpack_failed.exit.thread, !llvm.loop !168

bb.n:                                             ; preds = %bb.l
  %i.bo = load ptr, ptr %i.ab, align 8, !tbaa !164
  %i.bp = load i32, ptr %i.ac, align 8, !tbaa !167
  %i.bq = sext i32 %i.bp to i64                   ; 2 uses
  %i.br = tail call i32 @strncmp(ptr noundef nonnull %.07.i.i, ptr noundef %i.bo, i64 noundef %i.bq) #17
  %.not32.i = icmp eq i32 %i.br, 0
  br i1 %.not32.i, label %bb.o, label %unpack_failed.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.bs = getelementptr inbounds i8, ptr %.07.i.i, i64 %i.bq
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !82
  %.not33.i = icmp eq i8 %i.bt, 47
  br i1 %.not33.i, label %bb.p, label %unpack_failed.exit.thread

bb.p:                                             ; preds = %bb.o
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bg, i64 52
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !12
  %i.bw = icmp eq i32 %i.bv, 16384
  br i1 %i.bw, label %bb.q, label %skip_prefix_impl.exit.i

bb.q:                                             ; preds = %bb.p
  %i.bx = tail call fastcc i32 @sparse_dir_matches_path(ptr noundef nonnull %i.bg, ptr noundef nonnull readonly %4, ptr noundef nonnull readonly %.071)
  %.not34.i = icmp eq i32 %i.bx, 0
  br i1 %.not34.i, label %skip_prefix_impl.exit.i, label %next_cache_entry.exit.thread139

skip_prefix_impl.exit.i:                          ; preds = %bb.q, %bb.p
  %indvars.iv.next.i99 = add nsw i64 %indvars.iv.i97, -1
  %i.by = icmp sgt i64 %indvars.iv.i97, 0
  br i1 %i.by, label %.lr.ph.i95, label %unpack_failed.exit.thread, !llvm.loop !169

next_cache_entry.exit:                            ; preds = %bb.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.av, i64 136
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !43
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !102
  %i.cc = zext nneg i32 %i.au to i64
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.cc
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !103 ; 2 uses
  %.not82 = icmp eq ptr %i.ce, null
  br i1 %.not82, label %unpack_failed.exit.thread, label %next_cache_entry.exit.thread139

next_cache_entry.exit.thread139:                  ; preds = %bb.h, %bb.q, %next_cache_entry.exit
  %.070142 = phi ptr [ %i.ce, %next_cache_entry.exit ], [ %i.bg, %bb.q ], [ %i.an, %bb.h ] ; 11 uses
  %i.cf = load ptr, ptr %i.ab, align 8, !tbaa !164 ; 2 uses
  %i.cg = load i32, ptr %i.ac, align 8, !tbaa !167
  %i.ch = sext i32 %i.cg to i64                   ; 2 uses
  %i.ci = load i32, ptr %i.i, align 4, !tbaa !159 ; 2 uses
  %i.cj = load ptr, ptr %4, align 8, !tbaa !122   ; 2 uses
  %.not.i.i97 = icmp eq ptr %i.cj, null
  br i1 %.not.i.i97, label %bb.r, label %bb.s

bb.r:                                             ; preds = %next_cache_entry.exit.thread139
  %i.ck = tail call fastcc i32 @do_compare_entry_piecewise(ptr noundef nonnull %.070142, ptr noundef nonnull readonly %4, ptr noundef %i.cf, i64 noundef %i.ch, i32 noundef %i.ci)
  br label %do_compare_entry.exit.i

bb.s:                                             ; preds = %next_cache_entry.exit.thread139
  %i.cl = getelementptr inbounds nuw i8, ptr %.070142, i64 108 ; 2 uses
  %i.cm = load i64, ptr %i.ad, align 8, !tbaa !123 ; 3 uses
  %i.cn = tail call i32 @strncmp(ptr noundef nonnull %i.cl, ptr noundef nonnull %i.cj, i64 noundef %i.cm) #17 ; 2 uses
  %.not30.i.i = icmp eq i32 %i.cn, 0
  br i1 %.not30.i.i, label %bb.t, label %compare_entry.exit

bb.t:                                             ; preds = %bb.s
  %i.co = trunc i64 %i.cm to i32                  ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.070142, i64 64
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !12 ; 2 uses
  %i.cr = icmp slt i32 %i.cq, %i.co
  br i1 %i.cr, label %compare_entry.exit.thread145, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cs = sub nsw i32 %i.cq, %i.co
  %sext.i.i = shl i64 %i.cm, 32
  %i.ct = ashr exact i64 %sext.i.i, 32
  %i.cu = getelementptr inbounds i8, ptr %i.cl, i64 %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %.070142, i64 52
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !12
  %i.cx = icmp eq i32 %i.cw, 16384
  %i.cy = select i1 %i.cx, i32 16384, i32 32768
  %i.cz = zext nneg i32 %i.cs to i64
  %i.da = tail call i32 @df_name_compare(ptr noundef nonnull %i.cu, i64 noundef %i.cz, i32 noundef %i.cy, ptr noundef %i.cf, i64 noundef %i.ch, i32 noundef %i.ci) #16
  br label %do_compare_entry.exit.i

do_compare_entry.exit.i:                          ; preds = %bb.u, %bb.r
  %.0.i.i = phi i32 [ %i.ck, %bb.r ], [ %i.da, %bb.u ] ; 2 uses
  %.not.i98 = icmp eq i32 %.0.i.i, 0
  br i1 %.not.i98, label %bb.v, label %compare_entry.exit

bb.v:                                             ; preds = %do_compare_entry.exit.i
  %i.db = getelementptr inbounds nuw i8, ptr %.070142, i64 52
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !12
  %i.dd = icmp eq i32 %i.dc, 16384
  %.val.pre.i = load i32, ptr %i.ac, align 8, !tbaa !167 ; 2 uses
  br i1 %i.dd, label %bb.w, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.v
  %.val16.pre.i = load i64, ptr %i.ad, align 8, !tbaa !123 ; 2 uses
  %.pre.i = sext i32 %.val.pre.i to i64           ; 2 uses
  %.pre22.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %.val16.pre.i, i64 range(i64 -2147483648, 2147483648) %.pre.i)
  br label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.de = sext i32 %.val.pre.i to i64             ; 3 uses
  %.val17.i = load i64, ptr %i.ad, align 8, !tbaa !123 ; 3 uses
  %i.df = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %.val17.i, i64 range(i64 -2147483648, 2147483648) %i.de) ; 3 uses
  %i.dg = extractvalue { i64, i1 } %i.df, 1
  br i1 %i.dg, label %bb.x, label %traverse_path_len.exit.i

bb.x:                                             ; preds = %bb.w
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.60, i64 noundef %.val17.i, i64 noundef range(i64 -2147483648, 2147483648) %i.de) #18
  unreachable

traverse_path_len.exit.i:                         ; preds = %bb.w
  %i.dh = getelementptr inbounds nuw i8, ptr %.070142, i64 64
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !12 ; 2 uses
  %i.dj = zext i32 %i.di to i64
  %i.dk = extractvalue { i64, i1 } %i.df, 0
  %i.dl = add i64 %i.dk, 1
  %i.dm = icmp eq i64 %i.dl, %i.dj
  br i1 %i.dm, label %.thread149, label %bb.y

bb.y:                                             ; preds = %traverse_path_len.exit.i, %._crit_edge.i
  %.pre-phi23.i = phi { i64, i1 } [ %.pre22.i, %._crit_edge.i ], [ %i.df, %traverse_path_len.exit.i ] ; 2 uses
  %.pre-phi.i = phi i64 [ %.pre.i, %._crit_edge.i ], [ %i.de, %traverse_path_len.exit.i ]
  %.val16.i = phi i64 [ %.val16.pre.i, %._crit_edge.i ], [ %.val17.i, %traverse_path_len.exit.i ]
  %i.dn = extractvalue { i64, i1 } %.pre-phi23.i, 1
  br i1 %i.dn, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.60, i64 noundef %.val16.i, i64 noundef range(i64 -2147483648, 2147483648) %.pre-phi.i) #18
  unreachable

compare_entry.exit:                               ; preds = %bb.s, %do_compare_entry.exit.i
  %.0.i = phi i32 [ %i.cn, %bb.s ], [ %.0.i.i, %do_compare_entry.exit.i ]
  %i.do = icmp slt i32 %.0.i, 0
  br i1 %i.do, label %compare_entry.exit.thread145, label %unpack_failed.exit.thread

compare_entry.exit.thread145:                     ; preds = %bb.t, %compare_entry.exit
  %i.dp = tail call fastcc i32 @unpack_index_entry(ptr noundef %.070142, ptr noundef nonnull %i.e)
  %i.dq = icmp slt i32 %i.dp, 0
  br i1 %i.dq, label %bb.aa, label %unpack_failed.exit

bb.aa:                                            ; preds = %compare_entry.exit.thread145
  %i.dr = getelementptr inbounds nuw i8, ptr %i.e, i64 848
  tail call void @discard_index(ptr noundef nonnull %i.dr) #16
  br label %unpack_failed.exit.thread155

bb.ab:                                            ; preds = %bb.y
  %i.ds = getelementptr inbounds nuw i8, ptr %.070142, i64 64
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !12 ; 2 uses
  %i.du = zext i32 %i.dt to i64
  %i.dv = extractvalue { i64, i1 } %.pre-phi23.i, 0
  %.not160 = icmp ult i64 %i.dv, %i.du
  br i1 %.not160, label %unpack_failed.exit.thread, label %.thread149

.thread149:                                       ; preds = %traverse_path_len.exit.i, %bb.ab
  %i.dw = phi i32 [ %i.di, %traverse_path_len.exit.i ], [ %i.dt, %bb.ab ] ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.070142, i64 56
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !12
  %i.dz = and i32 %i.dy, 12288
  %.not84 = icmp eq i32 %i.dz, 0
  br i1 %.not84, label %bb.am, label %bb.ac

bb.ac:                                            ; preds = %.thread149
  %i.ea = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !170
  %.not85 = icmp eq i32 %i.eb, 0
  br i1 %.not85, label %bb.am, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ec = load ptr, ptr %i.z, align 8, !tbaa !43  ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.070142, i64 108 ; 2 uses
  %i.ee = tail call i32 @index_name_pos(ptr noundef %i.ec, ptr noundef nonnull %i.ed, i32 noundef %i.dw) #16 ; 2 uses
  %i.ef = icmp sgt i32 %i.ee, -1
  br i1 %i.ef, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.61) #18
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.eg = xor i32 %i.ee, -1                       ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ec, i64 12 ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !101
  %i.ej = icmp ugt i32 %i.ei, %i.eg
  br i1 %i.ej, label %.lr.ph.i100, label %add_same_unmerged.exit

.lr.ph.i100:                                      ; preds = %bb.af
  %i.ek = sext i32 %i.dw to i64
  %i.el = getelementptr inbounds nuw i8, ptr %i.e, i64 848 ; 2 uses
  %i.em = zext nneg i32 %i.eg to i64
  br label %bb.ag

bb.ag:                                            ; preds = %bb.al, %.lr.ph.i100
  %indvars.iv.i101 = phi i64 [ %i.em, %.lr.ph.i100 ], [ %indvars.iv.next.i103, %bb.al ] ; 2 uses
  %i.en = load ptr, ptr %i.ec, align 8, !tbaa !102
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %indvars.iv.i101
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !103 ; 5 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 64
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !12
  %.not.i102 = icmp eq i32 %i.dw, %i.er
  br i1 %.not.i102, label %bb.ah, label %add_same_unmerged.exit

bb.ah:                                            ; preds = %bb.ag
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 108
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %i.ed, ptr nonnull %i.es, i64 %i.ek)
  %.not24.i = icmp eq i32 %bcmp.i, 0
  br i1 %.not24.i, label %bb.ai, label %add_same_unmerged.exit

bb.ai:                                            ; preds = %bb.ah
  %i.et = tail call ptr @dup_cache_entry(ptr noundef nonnull %i.ep, ptr noundef nonnull %i.el) #16 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 56 ; 2 uses
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !12
  %i.ew = and i32 %i.ev, -1048577
  store i32 %i.ew, ptr %i.eu, align 8, !tbaa !12
  %i.ex = tail call i32 @add_index_entry(ptr noundef nonnull %i.el, ptr noundef %i.et, i32 noundef 3) #16 ; 0 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ep, i64 56 ; 2 uses
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !12
  %i.fa = or i32 %i.ez, 16777216
  store i32 %i.fa, ptr %i.ey, align 8, !tbaa !12
  %i.fb = load i32, ptr %i.aa, align 8, !tbaa !116 ; 2 uses
  %i.fc = load ptr, ptr %i.z, align 8, !tbaa !43  ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 12
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !101 ; 3 uses
  %i.ff = icmp ult i32 %i.fb, %i.fe
  br i1 %i.ff, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.fg = load ptr, ptr %i.fc, align 8, !tbaa !102 ; 2 uses
  %i.fh = sext i32 %i.fb to i64                   ; 2 uses
end_hunk_1
begin_hunk_2_@unpack_callback:bb.a
bb.bm:                                            ; preds = %strbuf_addch.exit.i.i
  %i.me = load ptr, ptr %i.lx, align 8, !tbaa !43 ; 3 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 60
  %i.mg = load i32, ptr %i.mf, align 4, !tbaa !81
  %.not.i89.i = icmp eq i32 %i.mg, 0
  br i1 %.not.i89.i, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.mh = load ptr, ptr %i.me, align 8, !tbaa !102
  %i.mi = zext nneg i32 %i.mc to i64
  %i.mj = getelementptr inbounds nuw [8 x i8], ptr %i.mh, i64 %i.mi
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !103
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 56
  %i.mm = load i32, ptr %i.ml, align 8, !tbaa !12
  %i.mn = and i32 %i.mm, 1073741824
  %.not19.i.i = icmp eq i32 %i.mn, 0
  br i1 %.not19.i.i, label %bb.bo, label %bb.bq

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.27, i32 noundef 784, ptr noundef nonnull @.str.63) #18
  unreachable

bb.bp:                                            ; preds = %strbuf_addch.exit.i.i
  %i.mo = xor i32 %i.mc, -1
  %.pre.i.i = load ptr, ptr %i.lx, align 8, !tbaa !43
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bn
  %i.mp = phi ptr [ %i.me, %bb.bn ], [ %.pre.i.i, %bb.bp ] ; 2 uses
  %.0.i.i131 = phi i32 [ %i.mc, %bb.bn ], [ %i.mo, %bb.bp ] ; 5 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 12
  %i.mr = load i32, ptr %i.mq, align 4, !tbaa !101
  %.not20.i.i = icmp ult i32 %.0.i.i131, %i.mr
  br i1 %.not20.i.i, label %bb.br, label %bb.bu

bb.br:                                            ; preds = %bb.bq
  %i.ms = load ptr, ptr %i.mp, align 8, !tbaa !102
  %i.mt = zext nneg i32 %.0.i.i131 to i64         ; 4 uses
  %i.mu = getelementptr inbounds nuw [8 x i8], ptr %i.ms, i64 %i.mt
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !103
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 108
  %i.mx = load ptr, ptr %i.lq, align 8, !tbaa !87
  %i.my = call zeroext i1 @starts_with(ptr noundef nonnull %i.mw, ptr noundef %i.mx) #16
  br i1 %i.my, label %bb.bs, label %bb.bu

bb.bs:                                            ; preds = %bb.br
  %.not1.i.i = icmp eq i32 %.0.i.i131, 0
  br i1 %.not1.i.i, label %index_pos_by_traverse_info.exit.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.mz = load ptr, ptr %i.lx, align 8, !tbaa !43
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !102
  %i.nb = getelementptr [8 x i8], ptr %i.na, i64 %i.mt
  %i.nc = getelementptr i8, ptr %i.nb, i64 -8
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !103
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 108
  %i.nf = load ptr, ptr %i.lq, align 8, !tbaa !87
  %i.ng = call zeroext i1 @starts_with(ptr noundef nonnull %i.ne, ptr noundef %i.nf) #16
  br i1 %i.ng, label %bb.bu, label %index_pos_by_traverse_info.exit.i

bb.bu:                                            ; preds = %bb.bt, %bb.br, %bb.bq
  %i.nh = load ptr, ptr %i.lq, align 8, !tbaa !87
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.27, i32 noundef 792, ptr noundef nonnull @.str.64, i32 noundef %.0.i.i131, ptr noundef %i.nh) #18
  unreachable

index_pos_by_traverse_info.exit.i:                ; preds = %bb.bt, %bb.bs
  call void @strbuf_release(ptr noundef nonnull %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %i.ni = load i32, ptr %i.jz, align 8, !tbaa !126
  %i.nj = icmp eq i32 %i.ni, 0
  %i.nk = icmp ne i64 %i.jy, 0
  %or.cond.i132 = or i1 %i.nk, %i.nj
  br i1 %or.cond.i132, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %index_pos_by_traverse_info.exit.i
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.27, i32 noundef 885, ptr noundef nonnull @.str.62) #18
  unreachable

bb.bw:                                            ; preds = %index_pos_by_traverse_info.exit.i
  %i.nl = getelementptr inbounds nuw i8, ptr %i.jz, i64 240 ; 2 uses
  %i.nm = load i32, ptr %i.nl, align 8, !tbaa !116
  %.val87.i = load ptr, ptr %i.d, align 8, !tbaa !112 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.a, i8 0, i64 72, i1 false)
  %i.nn = load i32, ptr %.val87.i, align 8, !tbaa !126
  %.not.i90.i = icmp eq i32 %i.nn, 0
  br i1 %.not.i90.i, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.27, i32 noundef 812, ptr noundef nonnull @.str.65) #18
  unreachable

bb.by:                                            ; preds = %bb.bw
  %i.no = add nuw nsw i32 %.0.i.i131, %i.lg       ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %.val87.i, i64 136 ; 3 uses
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !43 ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 12
  %i.ns = load i32, ptr %i.nr, align 4, !tbaa !101
  %i.nt = icmp ugt i32 %i.no, %i.ns
  br i1 %i.nt, label %bb.bz, label %.preheader.i91.i

.preheader.i91.i:                                 ; preds = %bb.by
  %.not587.i.i = icmp slt i32 %0, 1
  %i.nu = getelementptr inbounds nuw i8, ptr %.val87.i, i64 96
  %i.nv = getelementptr inbounds nuw i8, ptr %.val87.i, i64 240 ; 2 uses
  %i.nw = add i32 %0, 1                           ; 2 uses
  %wide.trip.count19.i.i = zext nneg i32 %i.lg to i64
  %wide.trip.count.i92.i = zext i32 %i.nw to i64  ; 2 uses
  %i.nx = add nsw i64 %wide.trip.count.i92.i, -1  ; 2 uses
  %min.iters.check = icmp ult i32 %i.nw, 5
  %n.vec = and i64 %i.nx, -4                      ; 3 uses
  %i.ny = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %i.nx, %n.vec
  br label %bb.cb

bb.bz:                                            ; preds = %bb.by
  %i.nz = load i32, ptr @git_gettext_enabled, align 4, !tbaa !12
  %.not4.i.i.i = icmp eq i32 %i.nz, 0
  br i1 %.not4.i.i.i, label %_.exit.i.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.oa = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.66, i32 noundef 5) #16
  br label %_.exit.i.i

_.exit.i.i:                                       ; preds = %bb.ca, %bb.bz
  %.0.i.i.i = phi ptr [ %i.oa, %bb.ca ], [ @.str.66, %bb.bz ]
  %i.ob = call i32 (ptr, ...) @error(ptr noundef %.0.i.i.i) #16 ; 0 uses
  br label %traverse_by_cache_tree.exit.i

bb.cb:                                            ; preds = %mark_ce_used.exit.thread.i.i, %.preheader.i91.i
  %i.oc = phi ptr [ %i.nq, %.preheader.i91.i ], [ %i.pq, %mark_ce_used.exit.thread.i.i ]
  %indvars.iv16.i.i = phi i64 [ 0, %.preheader.i91.i ], [ %indvars.iv.next17.i.i, %mark_ce_used.exit.thread.i.i ] ; 2 uses
  %.04810.i.i = phi i32 [ 0, %.preheader.i91.i ], [ %.1.i.i, %mark_ce_used.exit.thread.i.i ] ; 2 uses
  %.0499.i.i = phi ptr [ null, %.preheader.i91.i ], [ %.150.i.i, %mark_ce_used.exit.thread.i.i ] ; 2 uses
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !102
  %i.oe = getelementptr inbounds nuw [8 x i8], ptr %i.od, i64 %indvars.iv16.i.i
  %i.of = getelementptr inbounds nuw [8 x i8], ptr %i.oe, i64 %i.mt
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !103 ; 2 uses
  store ptr %i.og, ptr %i.a, align 16, !tbaa !103
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 64
  %i.oi = load i32, ptr %i.oh, align 8, !tbaa !12 ; 3 uses
  %i.oj = add i32 %i.oi, 109                      ; 2 uses
  %i.ok = icmp sgt i32 %i.oj, %.04810.i.i
  br i1 %i.ok, label %bb.cc, label %.loopexit.i.i

bb.cc:                                            ; preds = %bb.cb
  %i.ol = shl i32 %i.oj, 1                        ; 4 uses
  %i.om = sext i32 %i.ol to i64                   ; 2 uses
  %i.on = call ptr @xrealloc(ptr noundef %.0499.i.i, i64 noundef %i.om) #16 ; 7 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.on, i8 0, i64 %i.om, i1 false)
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 56
  store i32 0, ptr %i.oo, align 8, !tbaa !12
  br i1 %.not587.i.i, label %.loopexit.i.i, label %.lr.ph.i94.i.preheader

.lr.ph.i94.i.preheader:                           ; preds = %bb.cc
  br i1 %min.iters.check, label %.lr.ph.i94.i.preheader272, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i94.i.preheader
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %i.on, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.op = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 8
  %i.or = getelementptr inbounds nuw i8, ptr %i.op, i64 24
  store <2 x ptr> %broadcast.splat, ptr %i.oq, align 8, !tbaa !103
  store <2 x ptr> %broadcast.splat, ptr %i.or, align 8, !tbaa !103
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.os = icmp eq i64 %index.next, %n.vec
  br i1 %i.os, label %middle.block, label %vector.body, !llvm.loop !176

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit.i.i, label %.lr.ph.i94.i.preheader272

.lr.ph.i94.i.preheader272:                        ; preds = %.lr.ph.i94.i.preheader, %middle.block
  %indvars.iv.i95.i.ph = phi i64 [ 1, %.lr.ph.i94.i.preheader ], [ %i.ny, %middle.block ]
  br label %.lr.ph.i94.i

.lr.ph.i94.i:                                     ; preds = %.lr.ph.i94.i.preheader272, %.lr.ph.i94.i
  %indvars.iv.i95.i = phi i64 [ %indvars.iv.next.i96.i, %.lr.ph.i94.i ], [ %indvars.iv.i95.i.ph, %.lr.ph.i94.i.preheader272 ] ; 2 uses
  %i.ot = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i95.i
  store ptr %i.on, ptr %i.ot, align 8, !tbaa !103
  %indvars.iv.next.i96.i = add nuw nsw i64 %indvars.iv.i95.i, 1 ; 2 uses
  %exitcond.not.i97.i = icmp eq i64 %indvars.iv.next.i96.i, %wide.trip.count.i92.i
  br i1 %exitcond.not.i97.i, label %.loopexit.i.i, label %.lr.ph.i94.i, !llvm.loop !179

.loopexit.i.i:                                    ; preds = %.lr.ph.i94.i, %middle.block, %bb.cc, %bb.cb
  %.150.i.i = phi ptr [ %.0499.i.i, %bb.cb ], [ %i.on, %bb.cc ], [ %i.on, %middle.block ], [ %i.on, %.lr.ph.i94.i ] ; 8 uses
  %.1.i.i = phi i32 [ %.04810.i.i, %bb.cb ], [ %i.ol, %bb.cc ], [ %i.ol, %middle.block ], [ %i.ol, %.lr.ph.i94.i ]
  %i.ou = load ptr, ptr %i.a, align 16, !tbaa !103 ; 4 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 52
  %i.ow = load i32, ptr %i.ov, align 4, !tbaa !12
  %i.ox = getelementptr inbounds nuw i8, ptr %.150.i.i, i64 52
  store i32 %i.ow, ptr %i.ox, align 4, !tbaa !12
  %i.oy = getelementptr inbounds nuw i8, ptr %.150.i.i, i64 64
  store i32 %i.oi, ptr %i.oy, align 8, !tbaa !12
  %i.oz = getelementptr inbounds nuw i8, ptr %.150.i.i, i64 72
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ou, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.oz, ptr noundef nonnull readonly align 4 dereferenceable(32) %i.pa, i64 32, i1 false)
  %i.pb = getelementptr inbounds nuw i8, ptr %i.ou, i64 104
  %i.pc = load i32, ptr %i.pb, align 4, !tbaa !99
  %i.pd = getelementptr inbounds nuw i8, ptr %.150.i.i, i64 104
  store i32 %i.pc, ptr %i.pd, align 8, !tbaa !99
  %i.pe = getelementptr inbounds nuw i8, ptr %.150.i.i, i64 108
  %i.pf = getelementptr inbounds nuw i8, ptr %i.ou, i64 108
  %i.pg = add nsw i32 %i.oi, 1
  %i.ph = sext i32 %i.pg to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.pe, ptr nonnull align 4 %i.pf, i64 %i.ph, i1 false)
  %i.pi = load ptr, ptr %i.nu, align 8, !tbaa !180
  %i.pj = call i32 %i.pi(ptr noundef nonnull %i.a, ptr noundef nonnull %.val87.i) #16, !inline_history !181 ; 2 uses
  %i.pk = icmp sgt i32 %i.pj, -1
  br i1 %i.pk, label %bb.cd, label %mark_ce_used.exit.thread3.i.i

mark_ce_used.exit.thread3.i.i:                    ; preds = %.loopexit.i.i
  call void @free(ptr noundef nonnull %.150.i.i) #16
  br label %traverse_by_cache_tree.exit.i

bb.cd:                                            ; preds = %.loopexit.i.i
  %i.pl = load ptr, ptr %i.a, align 16, !tbaa !103 ; 2 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 56 ; 2 uses
  %i.pn = load i32, ptr %i.pm, align 8, !tbaa !12
  %i.po = or i32 %i.pn, 16777216
  store i32 %i.po, ptr %i.pm, align 8, !tbaa !12
  %i.pp = load i32, ptr %i.nv, align 8, !tbaa !116 ; 2 uses
  %i.pq = load ptr, ptr %i.np, align 8, !tbaa !43 ; 3 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 12
  %i.ps = load i32, ptr %i.pr, align 4, !tbaa !101 ; 3 uses
  %i.pt = icmp ult i32 %i.pp, %i.ps
  br i1 %i.pt, label %bb.ce, label %mark_ce_used.exit.thread.i.i

bb.ce:                                            ; preds = %bb.cd
  %i.pu = load ptr, ptr %i.pq, align 8, !tbaa !102 ; 2 uses
  %i.pv = sext i32 %i.pp to i64                   ; 2 uses
  %i.pw = getelementptr inbounds [8 x i8], ptr %i.pu, i64 %i.pv
  %i.px = load ptr, ptr %i.pw, align 8, !tbaa !103
  %i.py = icmp eq ptr %i.px, %i.pl
  br i1 %i.py, label %.lr.ph.i.i.i, label %mark_ce_used.exit.thread.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ce, %bb.cf
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %bb.cf ], [ %i.pv, %bb.ce ] ; 3 uses
  %i.pz = getelementptr inbounds [8 x i8], ptr %i.pu, i64 %indvars.iv.i.i.i
  %i.qa = load ptr, ptr %i.pz, align 8, !tbaa !103
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 56
  %i.qc = load i32, ptr %i.qb, align 8, !tbaa !12
  %i.qd = and i32 %i.qc, 16777216
  %.not.i.i93.i = icmp eq i32 %i.qd, 0
  br i1 %.not.i.i93.i, label %.critedge.split.loop.exit.i.i.i, label %bb.cf

bb.cf:                                            ; preds = %.lr.ph.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.qe = trunc nsw i64 %indvars.iv.next.i.i.i to i32
  %i.qf = icmp ugt i32 %i.ps, %i.qe
  br i1 %i.qf, label %.lr.ph.i.i.i, label %mark_ce_used.exit.i.i, !llvm.loop !171

.critedge.split.loop.exit.i.i.i:                  ; preds = %.lr.ph.i.i.i
  %i.qg = trunc nsw i64 %indvars.iv.i.i.i to i32
  br label %mark_ce_used.exit.i.i

mark_ce_used.exit.i.i:                            ; preds = %bb.cf, %.critedge.split.loop.exit.i.i.i
  %.0.lcssa.ph.i.i.i = phi i32 [ %i.qg, %.critedge.split.loop.exit.i.i.i ], [ %i.ps, %bb.cf ]
  store i32 %.0.lcssa.ph.i.i.i, ptr %i.nv, align 8, !tbaa !116
  br label %mark_ce_used.exit.thread.i.i

mark_ce_used.exit.thread.i.i:                     ; preds = %mark_ce_used.exit.i.i, %bb.ce, %bb.cd
  %indvars.iv.next17.i.i = add nuw nsw i64 %indvars.iv16.i.i, 1 ; 2 uses
  %exitcond20.not.i.i = icmp eq i64 %indvars.iv.next17.i.i, %wide.trip.count19.i.i
  br i1 %exitcond20.not.i.i, label %bb.cg, label %bb.cb, !llvm.loop !182

bb.cg:                                            ; preds = %mark_ce_used.exit.thread.i.i
  call void @free(ptr noundef %.150.i.i) #16
  %i.qh = getelementptr inbounds nuw i8, ptr %.val87.i, i64 232
  %i.qi = load i32, ptr %i.qh, align 8, !tbaa !162
  %.not57.i.i = icmp eq i32 %i.qi, 0
  br i1 %.not57.i.i, label %traverse_by_cache_tree.exit.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.qj = load ptr, ptr %i.np, align 8, !tbaa !43
  %i.qk = load ptr, ptr %i.qj, align 8, !tbaa !102 ; 2 uses
  %i.ql = getelementptr inbounds nuw [8 x i8], ptr %i.qk, i64 %i.mt
  %i.qm = load ptr, ptr %i.ql, align 8, !tbaa !103
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 108
  %i.qo = zext nneg i32 %i.no to i64
  %i.qp = getelementptr [8 x i8], ptr %i.qk, i64 %i.qo
  %i.qq = getelementptr i8, ptr %i.qp, i64 -8
  %i.qr = load ptr, ptr %i.qq, align 8, !tbaa !103
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 108
  %i.qt = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.67, i32 noundef range(i32 1, -2147483648) %i.lg, ptr noundef nonnull %i.qn, ptr noundef nonnull %i.qs) ; 0 uses
  br label %traverse_by_cache_tree.exit.i

traverse_by_cache_tree.exit.i:                    ; preds = %bb.ch, %bb.cg, %mark_ce_used.exit.thread3.i.i, %_.exit.i.i
  %.2.i.i = phi i32 [ -1, %_.exit.i.i ], [ %i.pj, %mark_ce_used.exit.thread3.i.i ], [ 0, %bb.ch ], [ 0, %bb.cg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  store i32 %i.nm, ptr %i.nl, align 8, !tbaa !116
  br label %traverse_trees_recursive.exit

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %.074.i = phi ptr [ %i.qw, %.preheader.i ], [ %3, %.preheader.i.preheader ] ; 4 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %.074.i, i64 52
  %i.qv = load i32, ptr %i.qu, align 4, !tbaa !159 ; 2 uses
  %.not.i124 = icmp eq i32 %i.qv, 0
  %i.qw = getelementptr inbounds nuw i8, ptr %.074.i, i64 56
  br i1 %.not.i124, label %.preheader.i, label %bb.ci, !llvm.loop !183

bb.ci:                                            ; preds = %.preheader.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %6, ptr noundef nonnull align 8 dereferenceable(88) %4, i64 88, i1 false), !tbaa.struct !184
  %i.qx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %4, ptr %i.qx, align 8, !tbaa !118
  %i.qy = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.qz = load ptr, ptr %i.qy, align 8, !tbaa !115
  %i.ra = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %i.qz, ptr %i.ra, align 8, !tbaa !115
  %i.rb = getelementptr inbounds nuw i8, ptr %.074.i, i64 40
  %i.rc = load ptr, ptr %i.rb, align 8, !tbaa !164 ; 2 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.rc, ptr %i.rd, align 8, !tbaa !119
  %i.re = getelementptr inbounds nuw i8, ptr %.074.i, i64 48
  %i.rf = load i32, ptr %i.re, align 8, !tbaa !167
  %i.rg = sext i32 %i.rf to i64                   ; 4 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %i.rg, ptr %i.rh, align 8, !tbaa !120
  %i.ri = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i32 %i.qv, ptr %i.ri, align 8, !tbaa !121
  %i.rj = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.rk = load i64, ptr %i.rj, align 8, !tbaa !123 ; 2 uses
  %i.rl = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.rk, i64 range(i64 -2147483648, 2147483648) %i.rg) ; 2 uses
  %i.rm = extractvalue { i64, i1 } %i.rl, 1
  br i1 %i.rm, label %bb.cj, label %st_add.exit.i

bb.cj:                                            ; preds = %bb.ci
  call void (ptr, ...) @die(ptr noundef nonnull @.str.60, i64 noundef %i.rk, i64 noundef range(i64 -2147483648, 2147483648) %i.rg) #18
  unreachable

st_add.exit.i:                                    ; preds = %bb.ci
  %i.rn = extractvalue { i64, i1 } %i.rl, 0       ; 2 uses
  %i.ro = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.rn, i64 1) ; 2 uses
  %i.rp = extractvalue { i64, i1 } %i.ro, 1
  br i1 %i.rp, label %bb.ck, label %st_add.exit98.i

bb.ck:                                            ; preds = %st_add.exit.i
  call void (ptr, ...) @die(ptr noundef nonnull @.str.60, i64 noundef %i.rn, i64 noundef 1) #18
  unreachable

st_add.exit98.i:                                  ; preds = %st_add.exit.i
  %i.rq = extractvalue { i64, i1 } %i.ro, 0
  store i64 %i.rq, ptr %i.rj, align 8, !tbaa !123
  %i.rr = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  %i.rs = load i64, ptr %i.rr, align 8, !tbaa !188
  %i.rt = or i64 %i.rs, %i.jy
  store i64 %i.rt, ptr %i.rr, align 8, !tbaa !188
  %i.ru = sext i32 %0 to i64                      ; 3 uses
  %mul.ov.i.i = icmp slt i32 %0, 0
  br i1 %mul.ov.i.i, label %bb.cl, label %st_mult.exit.i

bb.cl:                                            ; preds = %st_add.exit98.i
  call void (ptr, ...) @die(ptr noundef nonnull @.str.68, i64 noundef 80, i64 noundef range(i64 -2147483648, 2147483648) %i.ru) #18
  unreachable

st_mult.exit.i:                                   ; preds = %st_add.exit98.i
  %i.rv = mul nuw nsw i64 %i.ru, 80
  %i.rw = call ptr @xmalloc(i64 noundef %i.rv) #16 ; 11 uses
  %i.rx = shl nuw nsw i64 %i.ru, 3
  %i.ry = call ptr @xmalloc(i64 noundef %i.rx) #16 ; 5 uses
  %.not125.i = icmp eq i32 %0, 0
  br i1 %.not125.i, label %._crit_edge.i130, label %bb.cm

bb.cm:                                            ; preds = %st_mult.exit.i
  %wide.trip.count.i125 = zext nneg i32 %0 to i64
  %i.rz = and i64 %2, 1
  %.not85.peel.i = icmp eq i64 %i.rz, 0
  %.0.peel.i = select i1 %.not85.peel.i, ptr null, ptr %3
  %i.sa = load ptr, ptr @the_repository, align 8, !tbaa !45
  %i.sb = call ptr @fill_tree_descriptor(ptr noundef %i.sa, ptr noundef %i.rw, ptr noundef %.0.peel.i) #16
  store ptr %i.sb, ptr %i.ry, align 8, !tbaa !142
  br i1 %i.it, label %._crit_edge.i130, label %.lr.ph.peel.next.i

.lr.ph.peel.next.i:                               ; preds = %bb.cm
  %i.sc = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 5 uses
  %i.sd = load i128, ptr %i.sc, align 1
  %i.se = getelementptr i8, ptr %i.sc, i64 16
  %i.sf = load i128, ptr %i.se, align 1
  %i.sg = or i128 %i.sd, %i.sf
  %i.sh = icmp ne i128 %i.sg, 0
  %i.si = zext i1 %i.sh to i32
  %.not.i.not.i.peel135.i = icmp eq i32 %i.si, 0
  br i1 %.not.i.not.i.peel135.i, label %.thread.peel150.i, label %bb.cn

bb.cn:                                            ; preds = %.lr.ph.peel.next.i
  %i.sj = load i128, ptr %3, align 1
  %i.sk = getelementptr i8, ptr %3, i64 16
  %i.sl = load i128, ptr %i.sk, align 1
  %i.sm = or i128 %i.sj, %i.sl
  %i.sn = icmp ne i128 %i.sm, 0
  %i.so = zext i1 %i.sn to i32
  %.not.i6.not.i.peel137.i = icmp eq i32 %i.so, 0
  br i1 %.not.i6.not.i.peel137.i, label %.thread.peel150.i, label %are_same_oid.exit.peel138.i

are_same_oid.exit.peel138.i:                      ; preds = %bb.cn
  %i.sp = load i128, ptr %i.sc, align 1
  %i.sq = load i128, ptr %3, align 1
end_hunk_2
begin_hunk_3_@sparse_dir_matches_path:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.b = load i32, ptr %i.a, align 4, !tbaa !12
  %i.c = icmp eq i32 %i.b, 16384
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.27, i32 noundef 1355, ptr noundef nonnull @__PRETTY_FUNCTION__.sparse_dir_matches_path) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load i32, ptr %i.e, align 8, !tbaa !12   ; 3 uses
  %i.g = add i32 %i.f, -1
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !82
  %i.k = icmp eq i8 %i.j, 47
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.27, i32 noundef 1356, ptr noundef nonnull @__PRETTY_FUNCTION__.sparse_dir_matches_path) #18
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.m = load i64, ptr %i.l, align 8, !tbaa !123  ; 4 uses
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = zext i32 %i.f to i64
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.p = load i32, ptr %i.o, align 8, !tbaa !167
  %i.q = sext i32 %i.p to i64                     ; 2 uses
  %i.r = add i64 %i.m, 1
  %i.s = add i64 %i.r, %i.q
  %i.t = icmp eq i64 %i.s, %i.n
  br i1 %i.t, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr i8, ptr %i.d, i64 %i.m     ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 -1
  %i.w = load i8, ptr %i.v, align 1, !tbaa !82
  %i.x = icmp eq i8 %i.w, 47
  br i1 %i.x, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.y = load ptr, ptr %1, align 8, !tbaa !122
  %i.z = tail call i32 @strncmp(ptr noundef nonnull %i.d, ptr noundef %i.y, i64 noundef %i.m) #17
  %.not23 = icmp eq i32 %i.z, 0
  br i1 %.not23, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !164
  %i.ac = tail call i32 @strncmp(ptr noundef nonnull %i.u, ptr noundef %i.ab, i64 noundef %i.q) #17
  %.not24 = icmp eq i32 %i.ac, 0
  br label %bb.l

bb.j:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !167 ; 2 uses
  %i.af = add nsw i32 %i.ae, 1
  %i.ag = icmp eq i32 %i.f, %i.af
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !164
  %i.aj = sext i32 %i.ae to i64
  %i.ak = tail call i32 @strncmp(ptr noundef nonnull %i.d, ptr noundef %i.ai, i64 noundef %i.aj) #17
  %.not22 = icmp eq i32 %i.ak, 0
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.f, %bb.g, %bb.h, %bb.i
  %.0.shrunk = phi i1 [ %.not24, %bb.i ], [ false, %bb.h ], [ false, %bb.g ], [ false, %bb.f ], [ false, %bb.j ], [ %.not22, %bb.k ]
  %.0 = zext i1 %.0.shrunk to i32
  ret i32 %.0
}

declare i32 @name_compare(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @do_compare_entry_piecewise(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i64 noundef %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !119
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !120
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load i32, ptr %i.g, align 8, !tbaa !121
  %i.i = tail call fastcc i32 @do_compare_entry_piecewise(ptr noundef %0, ptr noundef nonnull %i.b, ptr noundef %i.d, i64 noundef %i.f, i32 noundef %i.h) ; 2 uses
  %.not26 = icmp eq i32 %i.i, 0
  br i1 %.not26, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.k = load i64, ptr %i.j, align 8, !tbaa !123  ; 2 uses
  %i.l = trunc i64 %i.k to i32                    ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.n = load i32, ptr %i.m, align 8, !tbaa !12   ; 2 uses
  %i.o = icmp slt i32 %i.n, %i.l
  br i1 %i.o, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = sub nsw i32 %i.n, %i.l
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 108
  %sext = shl i64 %i.k, 32
  %i.r = ashr exact i64 %sext, 32
  %i.s = getelementptr inbounds i8, ptr %i.q, i64 %i.r
  %i.t = zext nneg i32 %i.p to i64
  %i.u = tail call i32 @df_name_compare(ptr noundef nonnull %i.s, i64 noundef %i.t, i32 noundef 32768, ptr noundef %2, i64 noundef %3, i32 noundef %4) #16
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.d
  %.1 = phi i32 [ %i.i, %bb.b ], [ %i.u, %bb.d ], [ -1, %bb.c ]
  ret i32 %.1
}

declare i32 @df_name_compare(ptr noundef, i64 noundef, i32 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #12

; Function Attrs: nounwind uwtable
define internal fastcc ptr @create_ce_entry(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef range(i32 0, 4) %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 48         ; 2 uses
  %.val = load i32, ptr %i.a, align 8, !tbaa !167
  %i.b = sext i32 %.val to i64                    ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 40
  %.val30 = load i64, ptr %i.c, align 8, !tbaa !123 ; 2 uses
  %i.d = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %.val30, i64 range(i64 -2147483648, 2147483648) %i.b) ; 2 uses
  %i.e = extractvalue { i64, i1 } %i.d, 1
  br i1 %i.e, label %bb.b, label %traverse_path_len.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.60, i64 noundef %.val30, i64 noundef range(i64 -2147483648, 2147483648) %i.b) #18
  unreachable

traverse_path_len.exit:                           ; preds = %bb.a
  %i.f = extractvalue { i64, i1 } %i.d, 0         ; 4 uses
  %.not = icmp eq i32 %5, 0                       ; 2 uses
  %i.g = add i64 %i.f, 1                          ; 3 uses
  %i.h = select i1 %.not, i64 %i.f, i64 %i.g      ; 2 uses
  %.not29 = icmp eq i32 %4, 0
  br i1 %.not29, label %bb.d, label %bb.c

bb.c:                                             ; preds = %traverse_path_len.exit
  %i.i = tail call ptr @make_empty_transient_cache_entry(i64 noundef %i.h, ptr noundef null) #16
  br label %bb.e

bb.d:                                             ; preds = %traverse_path_len.exit
  %i.j = tail call ptr @make_empty_cache_entry(ptr noundef %3, i64 noundef %i.h) #16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = phi ptr [ %i.i, %bb.c ], [ %i.j, %bb.d ] ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.m = load i32, ptr %i.l, align 4, !tbaa !159  ; 3 uses
  %i.n = and i32 %i.m, 61440                      ; 2 uses
  %i.o = icmp eq i32 %i.n, 40960
  br i1 %i.o, label %create_ce_mode.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = icmp eq i32 %i.m, 16384
  br i1 %i.p, label %create_ce_mode.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %trunc.i = trunc nuw i32 %i.n to i16
  switch i16 %trunc.i, label %bb.h [
    i16 16384, label %create_ce_mode.exit
    i16 -8192, label %create_ce_mode.exit
  ]

bb.h:                                             ; preds = %bb.g
  %i.q = and i32 %i.m, 64
  %.not.i = icmp eq i32 %i.q, 0
  %i.r = select i1 %.not.i, i32 33188, i32 33261
  br label %create_ce_mode.exit

create_ce_mode.exit:                              ; preds = %bb.e, %bb.f, %bb.g, %bb.g, %bb.h
  %.0.i = phi i32 [ %i.r, %bb.h ], [ 40960, %bb.e ], [ 16384, %bb.f ], [ 57344, %bb.g ], [ 57344, %bb.g ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 52
  store i32 %.0.i, ptr %i.s, align 4, !tbaa !12
  %i.t = shl nuw nsw i32 %2, 12
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 56 ; 3 uses
  store i32 %i.t, ptr %i.u, align 8, !tbaa !12
  %i.v = trunc i64 %i.f to i32
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 64 ; 3 uses
  store i32 %i.v, ptr %i.w, align 8, !tbaa !12
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull readonly align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.z = load i32, ptr %i.y, align 8, !tbaa !99
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 104
  store i32 %i.z, ptr %i.aa, align 8, !tbaa !99
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 108 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !164
  %i.ae = load i32, ptr %i.a, align 8, !tbaa !167
  %i.af = sext i32 %i.ae to i64
  %i.ag = tail call ptr @make_traverse_path(ptr noundef nonnull %i.ab, i64 noundef %i.g, ptr noundef nonnull %0, ptr noundef %i.ad, i64 noundef %i.af) #16 ; 0 uses
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %create_ce_mode.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.f
  store i8 47, ptr %i.ah, align 1, !tbaa !82
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.g
  store i8 0, ptr %i.ai, align 1, !tbaa !82
  %i.aj = load i32, ptr %i.w, align 8, !tbaa !12
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr %i.w, align 8, !tbaa !12
  %i.al = load i32, ptr %i.u, align 8, !tbaa !12
  %i.am = or i32 %i.al, 1073741824
  store i32 %i.am, ptr %i.u, align 8, !tbaa !12
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %create_ce_mode.exit
  ret ptr %i.k
}

declare void @discard_cache_entry(ptr noundef) local_unnamed_addr #2

declare i32 @index_name_pos_sparse(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @make_empty_transient_cache_entry(i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @make_empty_cache_entry(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @make_traverse_path(ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @add_index_entry(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #2

declare ptr @fill_tree_descriptor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @strbuf_make_traverse_path(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare zeroext i1 @starts_with(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @fsm_settings__get_mode(ptr noundef) local_unnamed_addr #2

declare void @untracked_cache_invalidate_path(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @trace_printf_key_fl(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @verify_absent_1(ptr noundef %0, i32 noundef range(i32 4, 12) %1, i32 noundef range(i32 0, 2) %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.stat, align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !209
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %add_rejected_path.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !89
  %.not41 = icmp eq i32 %i.d, 0
  br i1 %.not41, label %add_rejected_path.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.f = load i32, ptr %i.e, align 8, !tbaa !46
  %i.g = icmp eq i32 %i.f, 3
  br i1 %i.g, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @startup_info, align 8, !tbaa !233
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !235  ; 2 uses
  %.not48 = icmp eq ptr %i.j, null
  br i1 %.not48, label %add_rejected_path.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 3 uses
  %i.l = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.j, ptr noundef nonnull dereferenceable(1) %i.k) #17
  %.not49 = icmp eq i32 %i.l, 0
  br i1 %.not49, label %bb.f, label %add_rejected_path.exit

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.n = load i32, ptr %i.m, align 8, !tbaa !129
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %bb.g, label %add_rejected_path.exit

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 228
  %i.p = load i32, ptr %i.o, align 4, !tbaa !16
  %.not14.i = icmp eq i32 %i.p, 0
  br i1 %.not14.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 272
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !13   ; 2 uses
  %.not16.i = icmp eq ptr %i.r, null
  %spec.select = select i1 %.not16.i, ptr @.str.87, ptr %i.r
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !153
  %i.u = tail call fastcc ptr @super_prefixed(ptr noundef nonnull %i.k, ptr noundef %i.t)
  %i.v = tail call i32 (ptr, ...) @error(ptr noundef nonnull %spec.select, ptr noundef %i.u) #16 ; 0 uses
  br label %add_rejected_path.exit

bb.i:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 488
  %i.x = tail call ptr @string_list_append(ptr noundef nonnull %i.w, ptr noundef nonnull %i.k) #16 ; 0 uses
  br label %add_rejected_path.exit

bb.j:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !12
  %i.ab = tail call i32 @check_leading_path(ptr noundef nonnull %i.y, i32 noundef %i.aa, i32 noundef 0) #16 ; 4 uses
  %.not42 = icmp eq i32 %i.ab, 0
  br i1 %.not42, label %add_rejected_path.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %bb.l, label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.ad = zext nneg i32 %i.ab to i64
  %i.ae = tail call ptr @xmemdupz(ptr noundef nonnull %i.y, i64 noundef %i.ad) #16 ; 4 uses
  %i.af = call i32 @lstat64(ptr noundef %i.ae, ptr noundef nonnull %4) #16
  %.not46 = icmp eq i32 %i.af, 0
  br i1 %.not46, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = tail call i32 (ptr, ...) @error_errno(ptr noundef nonnull @.str.71, ptr noundef %i.ae) #16 ; 0 uses
  br label %bb.q

bb.n:                                             ; preds = %bb.l
  %i.ah = tail call ptr @submodule_from_ce(ptr noundef nonnull %0) #16
  %.not47 = icmp eq ptr %i.ah, null
  br i1 %.not47, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.aj = tail call ptr @oid_to_hex(ptr noundef nonnull %i.ai) #16
  %i.ak = tail call fastcc i32 @check_submodule_move_head(ptr noundef nonnull %0, ptr noundef %i.aj, ptr noundef null, ptr noundef nonnull %3)
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.al = call fastcc i32 @check_ok_to_remove(ptr noundef %i.ae, i32 noundef %i.ab, i32 noundef 0, ptr noundef null, ptr noundef %4, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %3)
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.m
  %.0 = phi i32 [ -1, %bb.m ], [ %i.ak, %bb.o ], [ %i.al, %bb.p ]
  call void @free(ptr noundef %i.ae) #16
  br label %add_rejected_path.exit

bb.r:                                             ; preds = %bb.k
  %i.am = call i32 @lstat64(ptr noundef nonnull %i.y, ptr noundef nonnull %4) #16
  %.not43 = icmp eq i32 %i.am, 0
  br i1 %.not43, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.an = tail call ptr @__errno_location() #20
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !12
  %.not45 = icmp eq i32 %i.ao, 2
  br i1 %.not45, label %add_rejected_path.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ap = tail call i32 (ptr, ...) @error_errno(ptr noundef nonnull @.str.71, ptr noundef nonnull %i.y) #16 ; 0 uses
  br label %add_rejected_path.exit

bb.u:                                             ; preds = %bb.r
  %i.aq = tail call ptr @submodule_from_ce(ptr noundef nonnull %0) #16
  %.not44 = icmp eq ptr %i.aq, null
  br i1 %.not44, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.as = tail call ptr @oid_to_hex(ptr noundef nonnull %i.ar) #16
  %i.at = tail call fastcc i32 @check_submodule_move_head(ptr noundef nonnull %0, ptr noundef %i.as, ptr noundef null, ptr noundef nonnull %3)
  br label %add_rejected_path.exit

bb.w:                                             ; preds = %bb.u
  %i.au = load i32, ptr %i.z, align 8, !tbaa !12
  %i.av = getelementptr i8, ptr %0, i64 52
  %.val = load i32, ptr %i.av, align 4, !tbaa !12
  %i.aw = lshr i32 %.val, 8
  %i.ax = and i32 %i.aw, 61440                    ; 2 uses
  %i.ay = tail call i32 @llvm.fshl.i32(i32 %i.ax, i32 %i.ax, i32 19)
  %switch.tableidx = add i32 %i.ay, -2            ; 2 uses
  %i.az = icmp ult i32 %switch.tableidx, 6
  br i1 %i.az, label %switch.lookup, label %ce_to_dtype.exit

end_hunk_3
