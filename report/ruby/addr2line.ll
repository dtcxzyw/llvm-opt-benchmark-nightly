Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/addr2line?download=true
inline.NumInlined: 199
inline.NumDeleted: 47
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@fill_lines:bb.a
.loopexit370:                                     ; preds = %..loopexit_crit_edge.us, %.lr.ph492, %bb.dr, %._crit_edge487, %bb.dq
  %i.abw = getelementptr i8, ptr %i.c, i64 96
  %i.abx = load ptr, ptr %i.abw, align 8, !tbaa !91 ; 2 uses
  %.not252 = icmp eq ptr %i.abx, null
  br i1 %.not252, label %bb.dy, label %bb.ec

bb.dy:                                            ; preds = %.loopexit370
  %i.aby = icmp ne ptr %.0233.lcssa, null
  %i.abz = icmp ne i32 %2, 0                      ; 2 uses
  %or.cond7 = and i1 %i.abz, %i.aby
  br i1 %or.cond7, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  %i.aca = getelementptr i8, ptr %.0233.lcssa, i64 24
  %i.acb = load i64, ptr %i.aca, align 8, !tbaa !138
  %i.acc = getelementptr i8, ptr %i.n, i64 %i.acb
  call fastcc void @follow_debuglink(ptr noundef %i.acc, i32 noundef %0, ptr noundef %1, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6)
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.dy
  %i.acd = icmp ne ptr %.0230.lcssa, null
  %or.cond9 = and i1 %i.abz, %i.acd
  br i1 %or.cond9, label %bb.eb, label %bb.ed

bb.eb:                                            ; preds = %bb.ea
  %i.ace = getelementptr i8, ptr %.0230.lcssa, i64 24
  %i.acf = load i64, ptr %i.ace, align 8, !tbaa !138
  %i.acg = getelementptr i8, ptr %i.n, i64 %i.acf ; 3 uses
  %i.ach = getelementptr i8, ptr %i.acg, i64 12
  %i.aci = load i32, ptr %i.acg, align 4, !tbaa !171
  %i.acj = zext i32 %i.aci to i64
  %i.ack = getelementptr i8, ptr %i.ach, i64 %i.acj
  %i.acl = getelementptr i8, ptr %i.acg, i64 4
  %i.acm = load i32, ptr %i.acl, align 4, !tbaa !172
  %i.acn = zext i32 %i.acm to i64
  call fastcc void @follow_debuglink_build_id(ptr noundef %i.ack, i64 noundef %i.acn, i32 noundef %0, ptr noundef %1, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6)
  br label %bb.ed

bb.ec:                                            ; preds = %.loopexit370
  %i.aco = getelementptr i8, ptr %i.c, i64 104
  %i.acp = load i64, ptr %i.aco, align 8, !tbaa !173
  %i.acq = call fastcc i32 @parse_debug_line(i32 noundef %0, ptr noundef %1, ptr noundef %i.abx, i64 noundef %i.acp, ptr noundef nonnull %i.c, ptr noundef %4, i32 noundef %5, ptr noundef %6)
  %i.acr = icmp eq i32 %i.acq, -1
  br i1 %i.acr, label %.loopexit379, label %bb.ed

.loopexit379:                                     ; preds = %uncompress_debug_section.exit, %uncompress_debug_section.exit.thread, %bb.e, %bb.c, %bb.ec, %bb.f, %bb.a
  br label %bb.ed

bb.ed:                                            ; preds = %bb.eb, %bb.ea, %bb.ec, %.loopexit379
  %.0 = phi i64 [ -1, %.loopexit379 ], [ %.4215, %bb.eb ], [ %.4215, %bb.ec ], [ %.4215, %bb.ea ]
  ret i64 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind
declare i32 @dladdr(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare i64 @strlcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @munmap(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @readlink(ptr noundef readonly captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree
declare noundef i32 @open(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #8

declare i32 @close(i32 noundef) local_unnamed_addr #9

declare i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare ptr @mmap(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind
declare ptr @dlopen(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare ptr @dlsym(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @dlclose(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @follow_debuglink(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull captures(none) %3, ptr nofree noundef captures(none) %4, i32 noundef %5, ptr noundef %6) unnamed_addr #0 !guid !174 {
bb.a:
  %i.a = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) @binary_filename, i32 noundef 47) #16 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %3, align 8, !tbaa !54     ; 2 uses
  %i.c = getelementptr i8, ptr %i.a, i64 1
  store i8 0, ptr %i.c, align 1, !tbaa !55
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @binary_filename) #16
  %spec.store.select = tail call i64 @llvm.umin.i64(i64 %i.d, i64 4081) ; 3 uses
  %i.e = tail call ptr @__memmove_chk(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @binary_filename, i64 14), ptr noundef nonnull @binary_filename, i64 noundef %spec.store.select, i64 noundef 4083) #15 ; 0 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(14) @binary_filename, ptr noundef nonnull align 1 dereferenceable(14) @follow_debuglink.global_debug_dir, i64 noundef 14, i1 noundef false) #15
  %i.f = getelementptr i8, ptr @binary_filename, i64 %spec.store.select
  %i.g = getelementptr i8, ptr %i.f, i64 14
  %i.h = sub nuw nsw i64 4082, %spec.store.select
  %i.i = tail call i64 @strlcpy(ptr noundef %i.g, ptr noundef nonnull dereferenceable(1) %0, i64 noundef %i.h) #15 ; 0 uses
  %i.j = tail call noalias dereferenceable_or_null(272) ptr @calloc(i64 noundef 1, i64 noundef 272) #14 ; 4 uses
  %i.k = load ptr, ptr %3, align 8, !tbaa !54     ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %append_obj.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr i8, ptr %i.k, i64 264
  store ptr %i.j, ptr %i.l, align 8, !tbaa !70
  br label %append_obj.exit

append_obj.exit:                                  ; preds = %bb.b, %bb.c
  store ptr %i.j, ptr %3, align 8, !tbaa !54
  %i.m = getelementptr i8, ptr %i.b, i64 32
  %i.n = load i64, ptr %i.m, align 8, !tbaa !71
  %i.o = getelementptr i8, ptr %i.j, i64 32
  store i64 %i.n, ptr %i.o, align 8, !tbaa !71
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !60
  store ptr %i.p, ptr %i.j, align 8, !tbaa !60
  %i.q = tail call fastcc i64 @fill_lines(i32 noundef %1, ptr noundef %2, i32 noundef 0, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %append_obj.exit
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @follow_debuglink_build_id(ptr nofree noundef readonly captures(none) %0, i64 noundef range(i64 0, 4294967296) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef nonnull captures(none) %4, ptr nofree noundef captures(none) %5, i32 noundef %6, ptr noundef %7) unnamed_addr #0 !guid !176 {
bb.a:
  %i.a = load ptr, ptr %4, align 8, !tbaa !54     ; 2 uses
  %i.b = icmp samesign ugt i64 %1, 2032
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(25) @binary_filename, ptr noundef nonnull align 16 dereferenceable(25) @follow_debuglink_build_id.global_debug_dir, i64 noundef 25, i1 noundef false) #15
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i8, ptr %0, align 1, !tbaa !55
  %i.d = zext i8 %i.c to i32                      ; 2 uses
  %i.e = lshr i32 %i.d, 4
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr i8, ptr @follow_debuglink_build_id.tbl, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !55
  store i8 %i.h, ptr getelementptr inbounds nuw (i8, ptr @binary_filename, i64 25), align 1, !tbaa !55
  %i.i = and i32 %i.d, 15
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr i8, ptr @follow_debuglink_build_id.tbl, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !55
  store i8 %i.l, ptr getelementptr inbounds nuw (i8, ptr @binary_filename, i64 26), align 2, !tbaa !55
  store i8 47, ptr getelementptr inbounds nuw (i8, ptr @binary_filename, i64 27), align 1, !tbaa !55
  %exitcond.peel.not = icmp eq i64 %1, 1
  br i1 %exitcond.peel.not, label %._crit_edge, label %.lr.ph.peel.next.preheader

.lr.ph.peel.next.preheader:                       ; preds = %bb.c
  %i.m = add nsw i64 %1, -1                       ; 3 uses
  %xtraiter = and i64 %i.m, 1
  %i.n = icmp eq i64 %1, 2
  br i1 %i.n, label %.lr.ph.peel.next.epil.preheader, label %.lr.ph.peel.next.preheader.new

.lr.ph.peel.next.preheader.new:                   ; preds = %.lr.ph.peel.next.preheader
  %unroll_iter = and i64 %i.m, -2
  br label %.lr.ph.peel.next

.lr.ph.peel.next:                                 ; preds = %.lr.ph.peel.next, %.lr.ph.peel.next.preheader.new
  %.027 = phi i64 [ 1, %.lr.ph.peel.next.preheader.new ], [ %i.ap, %.lr.ph.peel.next ] ; 3 uses
  %.02526 = phi ptr [ getelementptr inbounds nuw (i8, ptr @binary_filename, i64 28), %.lr.ph.peel.next.preheader.new ], [ %i.ao, %.lr.ph.peel.next ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.peel.next.preheader.new ], [ %niter.next.1, %.lr.ph.peel.next ]
  %i.o = getelementptr i8, ptr %0, i64 %.027
  %i.p = load i8, ptr %i.o, align 1, !tbaa !55
  %i.q = zext i8 %i.p to i32                      ; 2 uses
  %i.r = lshr i32 %i.q, 4
  %i.s = zext nneg i32 %i.r to i64
  %i.t = getelementptr i8, ptr @follow_debuglink_build_id.tbl, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !55
  %i.v = getelementptr i8, ptr %.02526, i64 1
  store i8 %i.u, ptr %.02526, align 2, !tbaa !55
  %i.w = and i32 %i.q, 15
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr i8, ptr @follow_debuglink_build_id.tbl, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !55
  %i.aa = getelementptr i8, ptr %.02526, i64 2
  store i8 %i.z, ptr %i.v, align 1, !tbaa !55
  %i.ab = getelementptr i8, ptr %0, i64 %.027
  %i.ac = getelementptr i8, ptr %i.ab, i64 1
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !55
  %i.ae = zext i8 %i.ad to i32                    ; 2 uses
  %i.af = lshr i32 %i.ae, 4
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr i8, ptr @follow_debuglink_build_id.tbl, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !55
  %i.aj = getelementptr i8, ptr %.02526, i64 3
  store i8 %i.ai, ptr %i.aa, align 2, !tbaa !55
  %i.ak = and i32 %i.ae, 15
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr i8, ptr @follow_debuglink_build_id.tbl, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !55
  %i.ao = getelementptr i8, ptr %.02526, i64 4    ; 3 uses
  store i8 %i.an, ptr %i.aj, align 1, !tbaa !55
  %i.ap = add nuw nsw i64 %.027, 2                ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph.peel.next, !llvm.loop !175

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph.peel.next
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.peel.next.epil.preheader

.lr.ph.peel.next.epil.preheader:                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.peel.next.preheader
  %.027.epil.init = phi i64 [ 1, %.lr.ph.peel.next.preheader ], [ %i.ap, %._crit_edge.loopexit.unr-lcssa ]
  %.02526.epil.init = phi ptr [ getelementptr inbounds nuw (i8, ptr @binary_filename, i64 28), %.lr.ph.peel.next.preheader ], [ %i.ao, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod32 = trunc i64 %i.m to i1
  tail call void @llvm.assume(i1 %lcmp.mod32)
  %i.aq = getelementptr i8, ptr %0, i64 %.027.epil.init
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !55
  %i.as = zext i8 %i.ar to i32                    ; 2 uses
  %i.at = lshr i32 %i.as, 4
  %i.au = zext nneg i32 %i.at to i64
  %i.av = getelementptr i8, ptr @follow_debuglink_build_id.tbl, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !55
  %i.ax = getelementptr i8, ptr %.02526.epil.init, i64 1
  store i8 %i.aw, ptr %.02526.epil.init, align 2, !tbaa !55
  %i.ay = and i32 %i.as, 15
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr i8, ptr @follow_debuglink_build_id.tbl, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !55
  %i.bc = getelementptr i8, ptr %.02526.epil.init, i64 2
  store i8 %i.bb, ptr %i.ax, align 1, !tbaa !55
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.peel.next.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.c, %bb.b
  %.025.lcssa = phi ptr [ getelementptr inbounds nuw (i8, ptr @binary_filename, i64 25), %bb.b ], [ getelementptr inbounds nuw (i8, ptr @binary_filename, i64 28), %bb.c ], [ %i.ao, %._crit_edge.loopexit.unr-lcssa ], [ %i.bc, %.lr.ph.peel.next.epil.preheader ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.025.lcssa, ptr noundef nonnull align 1 dereferenceable(7) @follow_debuglink_build_id.debug_suffix, i64 noundef 7, i1 noundef false) #15
  %i.bd = tail call noalias dereferenceable_or_null(272) ptr @calloc(i64 noundef 1, i64 noundef 272) #14 ; 4 uses
  %i.be = load ptr, ptr %4, align 8, !tbaa !54    ; 2 uses
  %.not.i = icmp eq ptr %i.be, null
  br i1 %.not.i, label %append_obj.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.bf = getelementptr i8, ptr %i.be, i64 264
  store ptr %i.bd, ptr %i.bf, align 8, !tbaa !70
  br label %append_obj.exit

append_obj.exit:                                  ; preds = %._crit_edge, %bb.d
  store ptr %i.bd, ptr %4, align 8, !tbaa !54
  %i.bg = getelementptr i8, ptr %i.a, i64 32
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !71
  %i.bi = getelementptr i8, ptr %i.bd, i64 32
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !71
  %i.bj = load ptr, ptr %i.a, align 8, !tbaa !60
  store ptr %i.bj, ptr %i.bd, align 8, !tbaa !60
  %i.bk = tail call fastcc i64 @fill_lines(i32 noundef %2, ptr noundef %3, i32 noundef 0, ptr noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %append_obj.exit
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 -1, 1) i32 @parse_debug_line(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef nonnull %2, i64 noundef %3, ptr noundef %4, ptr nofree noundef writeonly captures(none) %5, i32 noundef %6, ptr noundef %7) unnamed_addr #0 !guid !180 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %8 = alloca %struct.LineNumberProgramHeader, align 8 ; 13 uses
  %i.b = getelementptr i8, ptr %2, i64 %3         ; 3 uses
  %i.c = icmp ult ptr %2, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 10
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.i = getelementptr i8, ptr %4, i64 32         ; 3 uses
  %i.j = getelementptr i8, ptr %4, i64 40         ; 3 uses
  %i.k = icmp slt i32 %6, %0                      ; 3 uses
  %i.l = sext i32 %6 to i64                       ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 29
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 28
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 27
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %parse_debug_line_cu.exit
  %.01438 = phi ptr [ %2, %.lr.ph ], [ %.1, %parse_debug_line_cu.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store ptr %.01438, ptr %i.a, align 8, !tbaa !83
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  %i.q = call fastcc i32 @parse_debug_line_header(ptr noundef %4, ptr noundef %i.a, ptr noundef %8, ptr noundef %7)
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %bb.c, label %parse_debug_line_cu.exit.thread

parse_debug_line_cu.exit.thread:                  ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.ad

bb.c:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !98   ; 2 uses
  %.promoted.i = load ptr, ptr %i.a, align 8, !tbaa !83 ; 3 uses
  %i.s = icmp ult ptr %.promoted.i, %i.r
  br i1 %i.s, label %.lr.ph.i, label %parse_debug_line_cu.exit

.lr.ph.i:                                         ; preds = %bb.c
  %i.t = load i8, ptr %i.e, align 2               ; 3 uses
  %i.u = load i16, ptr %i.f, align 8              ; 3 uses
  %i.v = load ptr, ptr %i.g, align 8              ; 3 uses
  %i.w = load ptr, ptr %i.h, align 8              ; 3 uses
  %i.x = load i8, ptr %i.m, align 1               ; 2 uses
  %i.y = xor i8 %i.x, -1
  %i.z = load i8, ptr %i.n, align 4               ; 3 uses
  %i.aa = load i8, ptr %i.o, align 8
  %i.ab = zext i8 %i.aa to i64                    ; 3 uses
  %i.ac = load i8, ptr %i.p, align 1
  %i.ad = sext i8 %i.ac to i32
  br label %bb.d

bb.d:                                             ; preds = %fill_line.exit.i, %.lr.ph.i
  %.051171.i = phi i64 [ 0, %.lr.ph.i ], [ %.1.i, %fill_line.exit.i ] ; 22 uses
  %.052170.i = phi i32 [ 1, %.lr.ph.i ], [ %.153.i, %fill_line.exit.i ] ; 24 uses
  %.056168.i = phi i32 [ 1, %.lr.ph.i ], [ %.157.i, %fill_line.exit.i ] ; 23 uses
  %.lcssa160162167.i = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %.lcssa160163.i, %fill_line.exit.i ] ; 9 uses
  %i.ae = getelementptr i8, ptr %.lcssa160162167.i, i64 1 ; 16 uses
  %i.af = load i8, ptr %.lcssa160162167.i, align 1, !tbaa !55 ; 2 uses
  switch i8 %i.af, label %bb.y [
    i8 1, label %bb.e
    i8 2, label %bb.i
    i8 3, label %bb.j
    i8 4, label %bb.k
    i8 5, label %bb.l
    i8 6, label %fill_line.exit.i
    i8 7, label %fill_line.exit.i
    i8 8, label %bb.m
    i8 9, label %bb.n
    i8 10, label %fill_line.exit.i
    i8 11, label %fill_line.exit.i
    i8 12, label %bb.o
    i8 0, label %bb.p
  ]

bb.e:                                             ; preds = %bb.d
  %i.ag = load i64, ptr %i.i, align 8, !tbaa !71
  %i.ah = load i64, ptr %i.j, align 8, !tbaa !111
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = add i64 %i.ai, %.051171.i               ; 2 uses
  br i1 %i.k, label %.lr.ph.i.i, label %fill_line.exit.i

.lr.ph.i.i:                                       ; preds = %bb.e
  %i.ak = add i64 %i.aj, 100
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %i.l, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.h ] ; 3 uses
  %i.al = getelementptr [8 x i8], ptr %1, i64 %indvars.iv.i.i
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !61
  %i.an = ptrtoint ptr %i.am to i64               ; 2 uses
  %i.ao = icmp ult i64 %i.aj, %i.an
  %i.ap = icmp ugt i64 %i.ak, %i.an
  %or.cond.i.i = and i1 %i.ao, %i.ap
  br i1 %or.cond.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aq = getelementptr [64 x i8], ptr %5, i64 %indvars.iv.i.i ; 2 uses
  tail call fastcc void @fill_filename(i32 noundef %.052170.i, i8 noundef zeroext %i.t, i16 noundef zeroext %i.u, ptr noundef %i.v, ptr noundef %i.w, ptr noundef %i.aq, ptr noundef %4, ptr noundef %7)
  %i.ar = getelementptr i8, ptr %i.aq, i64 24
  store i32 %.056168.i, ptr %i.ar, align 8, !tbaa !64
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %lftr.wideiv.i.i = trunc i64 %indvars.iv.next.i.i to i32
  %exitcond.not.i.i = icmp eq i32 %0, %lftr.wideiv.i.i
  br i1 %exitcond.not.i.i, label %fill_line.exit.i, label %bb.f, !llvm.loop !177

bb.i:                                             ; preds = %bb.d
  %i.as = getelementptr i8, ptr %.lcssa160162167.i, i64 2 ; 2 uses
  %i.at = load i8, ptr %i.ae, align 1, !tbaa !55  ; 3 uses
  %i.au = icmp sgt i8 %i.at, -1
  br i1 %i.au, label %uleb128.exit.i, label %.lr.ph.i61.i

.lr.ph.i61.i:                                     ; preds = %bb.i, %.lr.ph.i61.i
  %i.av = phi i8 [ %i.bd, %.lr.ph.i61.i ], [ %i.at, %bb.i ]
  %i.aw = phi ptr [ %i.bc, %.lr.ph.i61.i ], [ %i.as, %bb.i ] ; 2 uses
  %.01020.i.i = phi i32 [ %i.bb, %.lr.ph.i61.i ], [ 0, %bb.i ] ; 2 uses
  %.01119.i.i = phi i64 [ %.112.i.i, %.lr.ph.i61.i ], [ 0, %bb.i ]
  %i.ax = and i8 %i.av, 127
  %i.ay = zext nneg i8 %i.ax to i32
  %i.az = shl i32 %i.ay, %.01020.i.i
  %i.ba = sext i32 %i.az to i64
  %i.bb = add i32 %.01020.i.i, 7                  ; 2 uses
  %.112.i.i = add i64 %.01119.i.i, %i.ba          ; 2 uses
  %i.bc = getelementptr i8, ptr %i.aw, i64 1      ; 2 uses
  %i.bd = load i8, ptr %i.aw, align 1, !tbaa !55  ; 3 uses
  %i.be = icmp sgt i8 %i.bd, -1
  br i1 %i.be, label %._crit_edge.loopexit.i.i, label %.lr.ph.i61.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i61.i
  %i.bf = zext nneg i32 %i.bb to i64
  br label %uleb128.exit.i

uleb128.exit.i:                                   ; preds = %._crit_edge.loopexit.i.i, %bb.i
  %.lcssa160166.i = phi ptr [ %i.as, %bb.i ], [ %i.bc, %._crit_edge.loopexit.i.i ]
  %.011.lcssa.i.i = phi i64 [ 0, %bb.i ], [ %.112.i.i, %._crit_edge.loopexit.i.i ]
  %.010.lcssa.i.i = phi i64 [ 0, %bb.i ], [ %i.bf, %._crit_edge.loopexit.i.i ]
  %.lcssa.i.i = phi i8 [ %i.at, %bb.i ], [ %i.bd, %._crit_edge.loopexit.i.i ]
  %i.bg = zext nneg i8 %.lcssa.i.i to i64
  %i.bh = shl i64 %i.bg, %.010.lcssa.i.i
  %.11217.i.i = add i64 %i.bh, %.011.lcssa.i.i
  %i.bi = mul i64 %.11217.i.i, %i.ab
  %i.bj = add i64 %i.bi, %.051171.i
  br label %fill_line.exit.i

bb.j:                                             ; preds = %bb.d
  %i.bk = getelementptr i8, ptr %.lcssa160162167.i, i64 2 ; 2 uses
  %i.bl = load i8, ptr %i.ae, align 1, !tbaa !55  ; 3 uses
  %i.bm = zext i8 %i.bl to i32                    ; 2 uses
  %i.bn = icmp sgt i8 %i.bl, -1
  br i1 %i.bn, label %._crit_edge.i.i, label %.lr.ph.i63.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i63.i, %bb.j
  %.lcssa160165.i = phi ptr [ %i.bk, %bb.j ], [ %i.bv, %.lr.ph.i63.i ]
  %.015.lcssa.i.i = phi i32 [ 0, %bb.j ], [ %i.bt, %.lr.ph.i63.i ]
end_hunk_0
