Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/midx-write?download=true
inline.NumInlined: 154
inline.NumDeleted: 56
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@prepare_midx_packing_data:bb.a
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = and i32 %i.an, 1023
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = and i64 %i.ap, -1024
  %i.at = or disjoint i64 %i.as, %i.ar
  store i64 %i.at, ptr %i.ao, align 8
  br label %oe_set_in_pack.exit

bb.f:                                             ; preds = %bb.d
  tail call void @oe_map_new_pack(ptr noundef nonnull %0) #20
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %midx_pack_perm.exit
  %i.au = load ptr, ptr %i.l, align 8, !tbaa !265
  %i.av = load ptr, ptr %i.m, align 8, !tbaa !142
  %i.aw = ptrtoint ptr %i.u to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = sdiv exact i64 %i.ay, 12
  %i.ba = getelementptr inbounds i8, ptr %i.au, i64 %i.az
  store ptr %i.ak, ptr %i.ba, align 8, !tbaa !75
  br label %oe_set_in_pack.exit

oe_set_in_pack.exit:                              ; preds = %bb.e, %bb.g
  %i.bb = add i32 %.020, 1                        ; 2 uses
  %i.bc = zext i32 %i.bb to i64                   ; 2 uses
  %i.bd = load i64, ptr %i.d, align 8, !tbaa !95
  %i.be = icmp ugt i64 %i.bd, %i.bc
  br i1 %i.be, label %bb.b, label %._crit_edge, !llvm.loop !263

._crit_edge:                                      ; preds = %oe_set_in_pack.exit, %bb.a
  %i.bf = load ptr, ptr %i.a, align 8, !tbaa !47
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @trace2_region_leave_fl(ptr noundef nonnull @.str.16, i32 noundef 751, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.86, ptr noundef %i.bf) #20
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @find_commits_for_midx_bitmap(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.strbuf, align 8             ; 8 uses
  %4 = alloca %struct.object_id, align 4          ; 4 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %5 = alloca %struct.rev_info, align 8           ; 11 uses
  %6 = alloca %struct.bitmap_commit_cb, align 8   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store ptr %0, ptr %6, align 8, !tbaa !146
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %2, ptr %i.b, align 8, !tbaa !147
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !47
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @trace2_region_enter_fl(ptr noundef nonnull @.str.16, i32 noundef 845, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.87, ptr noundef %i.d) #20
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !47
  call void @repo_init_revisions(ptr noundef %i.e, ptr noundef nonnull %5, ptr noundef null) #20
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) @__const.clear_midx_files.buf, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.f = call ptr @xfopen(ptr noundef nonnull %1, ptr noundef nonnull @.str.89) #20 ; 3 uses
  %i.g = call i32 @strbuf_getline(ptr noundef nonnull %3, ptr noundef %i.f) #20
  %.not15.i = icmp eq i32 %i.g, -1
  br i1 %.not15.i, label %read_refs_snapshot.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.k, %.lr.ph.i
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !57   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store ptr null, ptr %i.a, align 8, !tbaa !77
  %i.l = load i64, ptr %i.i, align 8, !tbaa !87
  %.not10.i = icmp eq i64 %i.l, 0
  br i1 %.not10.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load i8, ptr %i.k, align 1, !tbaa !88
  %i.n = icmp ne i8 %i.m, 43                      ; 2 uses
  %not..i = xor i1 %i.n, true
  %spec.select13.idx.i = zext i1 %not..i to i64
  %spec.select13.i = getelementptr inbounds nuw i8, ptr %i.k, i64 %spec.select13.idx.i
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not12.i = phi i1 [ true, %bb.c ], [ %i.n, %bb.d ]
  %.0.i = phi ptr [ %i.k, %bb.c ], [ %spec.select13.i, %bb.d ]
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !187
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 448
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !123
  %i.r = call i32 @parse_oid_hex_algop_impl(ptr noundef %.0.i, ptr noundef nonnull %4, ptr noundef nonnull %i.a, ptr noundef %i.q) #20
  %i.s = icmp slt i32 %i.r, 0
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = call fastcc ptr @_(ptr noundef nonnull @.str.90)
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !57
  call void (ptr, ...) @die(ptr noundef %i.t, ptr noundef %i.u) #21
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !77
  %i.w = load i8, ptr %i.v, align 1, !tbaa !88
  %.not11.i = icmp eq i8 %i.w, 0
  br i1 %.not11.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = call fastcc ptr @_(ptr noundef nonnull @.str.91)
  %i.y = load ptr, ptr %i.h, align 8, !tbaa !57
  call void (ptr, ...) @die(ptr noundef %i.x, ptr noundef %i.y) #21
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.z = load ptr, ptr %i.j, align 8, !tbaa !187
  %i.aa = call ptr @parse_object_or_die(ptr noundef %i.z, ptr noundef nonnull %4, ptr noundef null) #20 ; 3 uses
  br i1 %.not12.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = load i64, ptr %i.aa, align 4
  %i.ac = or i64 %i.ab, 18014398509481984
  store i64 %i.ac, ptr %i.aa, align 4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  call void @add_pending_object(ptr noundef nonnull %5, ptr noundef %i.aa, ptr noundef nonnull @.str.92) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.ad = call i32 @strbuf_getline(ptr noundef nonnull %3, ptr noundef %i.f) #20
  %.not.i = icmp eq i32 %i.ad, -1
  br i1 %.not.i, label %read_refs_snapshot.exit, label %bb.c, !llvm.loop !266

read_refs_snapshot.exit:                          ; preds = %bb.k, %bb.b
  %i.ae = call i32 @fclose(ptr noundef %i.f)      ; 0 uses
  call void @strbuf_release(ptr noundef nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.m

bb.l:                                             ; preds = %bb.a
  %i.af = call i32 @setup_revisions(i32 noundef 0, ptr noundef null, ptr noundef nonnull %5, ptr noundef null) #20 ; 0 uses
  %i.ag = load ptr, ptr %i.c, align 8, !tbaa !47
  %i.ah = call ptr @get_main_ref_store(ptr noundef %i.ag) #20
  %i.ai = call i32 @refs_for_each_ref(ptr noundef %i.ah, ptr noundef nonnull @add_ref_to_pending, ptr noundef nonnull %5) #20 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %read_refs_snapshot.exit
  store i32 0, ptr @fetch_if_missing, align 4, !tbaa !59
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 332 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 4
  %i.al = or i64 %i.ak, 17592186044416
  store i64 %i.al, ptr %i.aj, align 4
  %i.am = call i32 @prepare_revision_walk(ptr noundef nonnull %5) #20
  %.not8 = icmp eq i32 %i.am, 0
  br i1 %.not8, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.an = call fastcc ptr @_(ptr noundef nonnull @.str.88)
  call void (ptr, ...) @die(ptr noundef %i.an) #21
  unreachable

bb.o:                                             ; preds = %bb.m
  call void @traverse_commit_list_filtered(ptr noundef nonnull %5, ptr noundef nonnull @bitmap_show_commit, ptr noundef null, ptr noundef nonnull %6, ptr noundef null) #20
  call void @release_revisions(ptr noundef nonnull %5) #20
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !47
  call void (ptr, i32, ptr, ptr, ptr, ...) @trace2_region_leave_fl(ptr noundef nonnull @.str.16, i32 noundef 878, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.87, ptr noundef %i.ao) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @write_midx_bitmap(ptr nofree noundef nonnull readonly captures(none) %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.bitmap_writer, align 8      ; 10 uses
  %7 = alloca %struct.strbuf, align 8             ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) @__const.clear_midx_files.buf, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @trace2_region_enter_fl(ptr noundef nonnull @.str.16, i32 noundef 894, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.94, ptr noundef %i.b) #20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !50
  %.not = icmp eq i32 %i.d, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !48   ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @get_split_midx_filename_ext(ptr noundef %i.f, ptr noundef nonnull %7, ptr noundef nonnull %1, ptr noundef nonnull @.str.31) #20
  br label %st_mult.exit

bb.c:                                             ; preds = %bb.a
  call void @get_midx_filename_ext(ptr noundef %i.f, ptr noundef nonnull %7, ptr noundef nonnull %1, ptr noundef nonnull @.str.31) #20
  br label %st_mult.exit

st_mult.exit:                                     ; preds = %bb.c, %bb.b
  %8 = lshr i32 %5, 1
  %i.g = trunc i32 %8 to i16
  %spec.select = and i16 %i.g, 4
  %9 = trunc i32 %5 to i16
  %i.h = and i16 %9, 16
  %.1 = or disjoint i16 %spec.select, %i.h
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !271
  %i.k = zext i32 %i.j to i64
  %i.l = shl nuw nsw i64 %i.k, 3
  %i.m = call ptr @xmalloc(i64 noundef %i.l) #20  ; 10 uses
  %i.n = load i32, ptr %i.i, align 8, !tbaa !271  ; 3 uses
  %.not51 = icmp eq i32 %i.n, 0
  br i1 %.not51, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %st_mult.exit
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !142  ; 3 uses
  %wide.trip.count = zext i32 %i.n to i64         ; 3 uses
  %min.iters.check = icmp ult i32 %i.n, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 4294967292   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %wide.gep = getelementptr inbounds nuw [96 x i8], ptr %i.p, <2 x i64> %vec.ind
  %wide.gep60 = getelementptr inbounds nuw [96 x i8], ptr %i.p, <2 x i64> %step.add
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store <2 x ptr> %wide.gep, ptr %i.q, align 8, !tbaa !273
  store <2 x ptr> %wide.gep60, ptr %i.r, align 8, !tbaa !273
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !267

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %st_mult.exit
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.u = load i32, ptr %i.c, align 8, !tbaa !50
  %.not44 = icmp eq i32 %i.u, 0
  br i1 %.not44, label %bb.e, label %bb.d

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.v = getelementptr inbounds nuw [96 x i8], ptr %i.p, i64 %indvars.iv
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv
  store ptr %i.v, ptr %i.w, align 8, !tbaa !273
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !268

bb.d:                                             ; preds = %._crit_edge
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !60
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.d
  %i.z = phi ptr [ %i.y, %bb.d ], [ null, %._crit_edge ]
  call void @bitmap_writer_init(ptr noundef nonnull %6, ptr noundef %i.t, ptr noundef nonnull %2, ptr noundef %i.z) #20
  %i.aa = and i32 %5, 1
  call void @bitmap_writer_show_progress(ptr noundef nonnull %6, i32 noundef %i.aa) #20
  call void @bitmap_writer_build_type_index(ptr noundef nonnull %6, ptr noundef %i.m) #20
  %i.ab = load i32, ptr %i.i, align 8, !tbaa !271 ; 3 uses
  %.not52 = icmp eq i32 %i.ab, 0
  br i1 %.not52, label %._crit_edge50, label %.lr.ph49

.lr.ph49:                                         ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !142 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !127 ; 5 uses
  %wide.trip.count57 = zext i32 %i.ab to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count57, 3       ; 3 uses
  %i.ag = icmp ult i32 %i.ab, 4
  br i1 %i.ag, label %.epil.preheader, label %.lr.ph49.new

.lr.ph49.new:                                     ; preds = %.lr.ph49
  %unroll_iter = and i64 %wide.trip.count57, 4294967292
  br label %bb.g

._crit_edge50.loopexit.unr-lcssa:                 ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge50, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge50.loopexit.unr-lcssa, %.lr.ph49
  %indvars.iv54.epil.init = phi i64 [ 0, %.lr.ph49 ], [ %indvars.iv.next55.3, %._crit_edge50.loopexit.unr-lcssa ]
  %lcmp.mod61 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod61)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %indvars.iv54.epil = phi i64 [ %indvars.iv54.epil.init, %.epil.preheader ], [ %indvars.iv.next55.epil, %bb.f ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.f ]
  %i.ah = getelementptr inbounds nuw [96 x i8], ptr %i.ad, i64 %indvars.iv54.epil
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv54.epil
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !59
  %i.ak = zext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.ak
  store ptr %i.ah, ptr %i.al, align 8, !tbaa !273
  %indvars.iv.next55.epil = add nuw nsw i64 %indvars.iv54.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge50, label %bb.f, !llvm.loop !269

._crit_edge50:                                    ; preds = %._crit_edge50.loopexit.unr-lcssa, %bb.f, %bb.e
  call void @bitmap_writer_select_commits(ptr noundef nonnull %6, ptr noundef %3, i32 noundef %4) #20
  %i.am = call i32 @bitmap_writer_build(ptr noundef nonnull %6) #20 ; 2 uses
  %i.an = icmp slt i32 %i.am, 0
  br i1 %i.an, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.g, %.lr.ph49.new
  %indvars.iv54 = phi i64 [ 0, %.lr.ph49.new ], [ %indvars.iv.next55.3, %bb.g ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph49.new ], [ %niter.next.3, %bb.g ]
  %i.ao = getelementptr inbounds nuw [96 x i8], ptr %i.ad, i64 %indvars.iv54
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv54
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !59
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.ar
  store ptr %i.ao, ptr %i.as, align 8, !tbaa !273
  %indvars.iv.next55 = or disjoint i64 %indvars.iv54, 1 ; 2 uses
  %i.at = getelementptr inbounds nuw [96 x i8], ptr %i.ad, i64 %indvars.iv.next55
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv.next55
  %i.av = load i32, ptr %i.au, align 4, !tbaa !59
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.aw
  store ptr %i.at, ptr %i.ax, align 8, !tbaa !273
  %indvars.iv.next55.1 = or disjoint i64 %indvars.iv54, 2 ; 2 uses
  %i.ay = getelementptr inbounds nuw [96 x i8], ptr %i.ad, i64 %indvars.iv.next55.1
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv.next55.1
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !59
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.bb
  store ptr %i.ay, ptr %i.bc, align 8, !tbaa !273
  %indvars.iv.next55.2 = or disjoint i64 %indvars.iv54, 3 ; 2 uses
  %i.bd = getelementptr inbounds nuw [96 x i8], ptr %i.ad, i64 %indvars.iv.next55.2
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv.next55.2
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !59
  %i.bg = zext i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.bg
  store ptr %i.bd, ptr %i.bh, align 8, !tbaa !273
  %indvars.iv.next55.3 = add nuw nsw i64 %indvars.iv54, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge50.loopexit.unr-lcssa, label %bb.g, !llvm.loop !270

bb.h:                                             ; preds = %._crit_edge50
  call void @bitmap_writer_set_checksum(ptr noundef nonnull %6, ptr noundef nonnull %1) #20
  %i.bi = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !57
  call void @bitmap_writer_finish(ptr noundef nonnull %6, ptr noundef %i.m, ptr noundef %i.bj, i16 noundef zeroext %.1) #20
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge50, %bb.h
  call void @free(ptr noundef %i.m) #20
  call void @strbuf_release(ptr noundef nonnull %7) #20
  call void @bitmap_writer_free(ptr noundef nonnull %6) #20
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !47
  call void (ptr, i32, ptr, ptr, ptr, ...) @trace2_region_leave_fl(ptr noundef nonnull @.str.16, i32 noundef 952, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.94, ptr noundef %i.bk) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  ret i32 %i.am
}

declare void @clear_packing_data(ptr noundef) local_unnamed_addr #3

declare void @commit_stack_clear(ptr noundef) local_unnamed_addr #3

declare ptr @hash_to_hex_algop(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @error_errno(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @link_midx_to_chain(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.strbuf, align 8             ; 9 uses
  %2 = alloca %struct.strbuf, align 8             ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) @__const.clear_midx_files.buf, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) @__const.clear_midx_files.buf, i64 24, i1 false)
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.b = load i32, ptr %i.a, align 4, !tbaa !275
  %.not17 = icmp eq i32 %i.b, 0
  br i1 %.not17, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
end_hunk_0
