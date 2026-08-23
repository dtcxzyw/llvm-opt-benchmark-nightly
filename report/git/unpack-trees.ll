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
  %i.ae = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ac) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) @__const.display_error_msgs.path, i64 24, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 60
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !81
  %.not.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i, label %update_sparsity_for_prefix.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.s
  %i.ah = trunc i64 %i.ae to i32                  ; 2 uses
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.t
  %.014.i = phi i32 [ %9, %bb.t ], [ %i.ah, %.preheader.i ] ; 4 uses
  %8 = zext nneg i32 %.014.i to i64               ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ac, i64 %8
  %i.ak = getelementptr i8, ptr %i.aj, i64 -1
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !82
  %i.am = icmp eq i8 %i.al, 47
  br i1 %i.am, label %bb.t, label %.critedge.i

bb.t:                                             ; preds = %.lr.ph.i
  %9 = add nsw i32 %.014.i, -1
  %i.an = icmp sgt i32 %.014.i, 1
  br i1 %i.an, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !83

._crit_edge.i:                                    ; preds = %bb.t, %.preheader.i
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.27, i32 noundef 1851, ptr noundef nonnull @.str.47) #18
  unreachable

.critedge.i:                                      ; preds = %.lr.ph.i
  %10 = add nuw nsw i32 %.014.i, 1
  %11 = zext nneg i32 %10 to i64
  call void @strbuf_grow(ptr noundef nonnull %4, i64 noundef %11) #16
  call void @strbuf_add(ptr noundef nonnull %4, ptr noundef nonnull %i.ac, i64 noundef %8) #16
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
  br i1 %.not.i, label %.lr.ph.i95, label %unpack_failed.exit.thread

.lr.ph.i95:                                       ; preds = %bb.k, %skip_prefix_impl.exit.i
  %.02646.i = phi i32 [ %8, %skip_prefix_impl.exit.i ], [ %i.ay, %bb.k ] ; 3 uses
  %i.bd = load ptr, ptr %i.az, align 8, !tbaa !43
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !102
  %7 = zext nneg i32 %.02646.i to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %7
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
  %8 = add nsw i32 %.02646.i, -1
  %i.by = icmp sgt i32 %.02646.i, 0
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
