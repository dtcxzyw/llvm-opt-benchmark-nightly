Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/fast-import?download=true
inline.NumInlined: 405
inline.NumDeleted: 120
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 69
begin_hunk_0_@mem_pool_alloc

; Function Attrs: nounwind uwtable
define internal fastcc void @start_packfile() unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.strbuf, align 8             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) @__const.unkeep_all_packs.name, i64 24, i1 false)
  %i.a = load ptr, ptr @the_repository, align 8, !tbaa !26
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !92
  %i.d = call i32 @odb_mkstemp(ptr noundef %i.c, ptr noundef nonnull %0, ptr noundef nonnull @.str.39) #23 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !55
  %i.g = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.f) #25 ; 3 uses
  %i.h = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.g, i64 208) ; 2 uses
  %i.i = extractvalue { i64, i1 } %i.h, 1
  br i1 %i.i, label %bb.b, label %st_add.exit

bb.b:                                             ; preds = %bb.a
  call void (ptr, ...) @die(ptr noundef nonnull @.str.40, i64 noundef 208, i64 noundef %i.g) #24
  unreachable

st_add.exit:                                      ; preds = %bb.a
  %i.j = extractvalue { i64, i1 } %i.h, 0         ; 2 uses
  %i.k = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.j, i64 1) ; 2 uses
  %i.l = extractvalue { i64, i1 } %i.k, 1
  br i1 %i.l, label %bb.c, label %st_add.exit10

bb.c:                                             ; preds = %st_add.exit
  call void (ptr, ...) @die(ptr noundef nonnull @.str.40, i64 noundef %i.j, i64 noundef 1) #24
  unreachable

st_add.exit10:                                    ; preds = %st_add.exit
  %i.m = extractvalue { i64, i1 } %i.k, 0
  %i.n = call ptr @xcalloc(i64 noundef 1, i64 noundef %i.m) #23 ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 208 ; 2 uses
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !55
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.o, ptr align 1 %i.p, i64 %i.g, i1 false)
  call void @strbuf_release(ptr noundef nonnull %0) #23
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 104
  store i32 %i.d, ptr %i.q, align 8, !tbaa !29
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 112 ; 2 uses
  %i.s = load i16, ptr %i.r, align 8
  %i.t = or i16 %i.s, 32
  store i16 %i.t, ptr %i.r, align 8
  %i.u = load ptr, ptr @the_repository, align 8, !tbaa !26 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 200
  store ptr %i.u, ptr %i.v, align 8, !tbaa !26
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 448
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !93
  %i.y = call ptr @hashfd(ptr noundef %i.x, i32 noundef %i.d, ptr noundef nonnull %i.o) #23 ; 2 uses
  store ptr %i.y, ptr @pack_file, align 8, !tbaa !120
  store ptr %i.n, ptr @pack_data, align 8, !tbaa !118
  %i.z = call i64 @write_pack_header(ptr noundef %i.y, i32 noundef 0) #23
  store i64 %i.z, ptr @pack_size, align 8, !tbaa !28
  store i64 0, ptr @object_count, align 8, !tbaa !28
  %i.aa = load i32, ptr @pack_id, align 4, !tbaa !29
  %i.ab = add i32 %i.aa, 1
  %i.ac = zext i32 %i.ab to i64
  %i.ad = load ptr, ptr @all_packs, align 8, !tbaa !116
  %i.ae = shl nuw nsw i64 %i.ac, 3
  %i.af = call ptr @xrealloc(ptr noundef %i.ad, i64 noundef %i.ae) #23 ; 2 uses
  store ptr %i.af, ptr @all_packs, align 8, !tbaa !116
  %i.ag = load i32, ptr @pack_id, align 4, !tbaa !29
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ah
  store ptr %i.n, ptr %i.ai, align 8, !tbaa !118
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #23
  ret void
}

declare void @set_die_routine(ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn nounwind uwtable
define internal void @die_nicely(ptr noundef %0, ptr noundef %1) #5 {
bb.a:
  %2 = alloca %struct.strbuf, align 8             ; 6 uses
  %3 = alloca %struct.timeval, align 8            ; 4 uses
  %4 = alloca [1 x %struct.__va_list_tag], align 16 ; 3 uses
  %i.a = alloca [8192 x i8], align 16             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.b = tail call ptr @get_die_message_routine() #23
  call void @llvm.va_copy.p0(ptr nonnull %4, ptr %1)
  call void %i.b(ptr noundef %0, ptr noundef %1) #23
  %.b = load i1, ptr @die_nicely.zombie, align 4
  br i1 %.b, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i1 true, ptr @die_nicely.zombie, align 4
  %i.c = call i32 @vsnprintf(ptr noundef nonnull %i.a, i64 noundef 8192, ptr noundef %0, ptr noundef nonnull %4) #23 ; 0 uses
  %i.d = load ptr, ptr @the_repository, align 8, !tbaa !26
  %i.e = call i32 @getpid() #23
  %i.f = sext i32 %i.e to i64
  %i.g = call ptr (ptr, ptr, ...) @repo_git_path(ptr noundef %i.d, ptr noundef nonnull @.str.43, i64 noundef %i.f) #23 ; 4 uses
  %i.h = call ptr @git_fopen(ptr noundef %i.g, ptr noundef nonnull @.str.44) #23 ; 56 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr @git_gettext_enabled, align 4, !tbaa !29
  %.not4.i.i = icmp eq i32 %i.i, 0
  br i1 %.not4.i.i, label %_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.45, i32 noundef 5) #23
  br label %_.exit.i

_.exit.i:                                         ; preds = %bb.d, %bb.c
  %.0.i.i = phi ptr [ %i.j, %bb.d ], [ @.str.45, %bb.c ]
  %i.k = call i32 (ptr, ...) @error_errno(ptr noundef %.0.i.i, ptr noundef %i.g) #23 ; 0 uses
  br label %write_crash_report.exit

bb.e:                                             ; preds = %bb.b
  %i.l = load ptr, ptr @stderr, align 8, !tbaa !114
  %i.m = load i32, ptr @git_gettext_enabled, align 4, !tbaa !29
  %.not4.i97.i = icmp eq i32 %i.m, 0
  br i1 %.not4.i97.i, label %_.exit99.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.46, i32 noundef 5) #23
  br label %_.exit99.i

_.exit99.i:                                       ; preds = %bb.f, %bb.e
  %.0.i98.i = phi ptr [ %i.n, %bb.f ], [ @.str.46, %bb.e ]
  %i.o = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef %.0.i98.i, ptr noundef %i.g) #26 ; 0 uses
  %fwrite.i = call i64 @fwrite(ptr nonnull @.str.47, i64 26, i64 1, ptr nonnull %i.h) ; 0 uses
  %i.p = call i32 @getpid() #23
  %i.q = sext i32 %i.p to i64
  %i.r = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.48, i64 noundef %i.q) #23 ; 0 uses
  %i.s = call i32 @getppid() #23
  %i.t = sext i32 %i.s to i64
  %i.u = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.49, i64 noundef %i.t) #23 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.v = call i32 @gettimeofday(ptr noundef nonnull %3, ptr noundef null) #23 ; 0 uses
  %i.w = load i64, ptr %3, align 8, !tbaa !215
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.x = call { i64, ptr } @date_mode_from_type(i32 noundef 4) #23 ; 2 uses
  %i.y = extractvalue { i64, ptr } %i.x, 0
  %i.z = extractvalue { i64, ptr } %i.x, 1
  %i.aa = call ptr @show_date(i64 noundef %i.w, i32 noundef 0, i64 %i.y, ptr %i.z) #23
  %i.ab = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.50, ptr noundef %i.aa) #23 ; 0 uses
  %i.ac = call i32 @fputc(i32 noundef 10, ptr noundef nonnull %i.h) ; 0 uses
  %fwrite74.i = call i64 @fwrite(ptr nonnull @.str.51, i64 7, i64 1, ptr nonnull %i.h) ; 0 uses
  %i.ad = call i32 @fputs(ptr noundef nonnull readonly %i.a, ptr noundef nonnull %i.h) ; 0 uses
  %i.ae = call i32 @fputc(i32 noundef 10, ptr noundef nonnull %i.h) ; 0 uses
  %i.af = call i32 @fputc(i32 noundef 10, ptr noundef nonnull %i.h) ; 0 uses
  %fwrite75.i = call i64 @fwrite(ptr nonnull @.str.52, i64 34, i64 1, ptr nonnull %i.h) ; 0 uses
  %fwrite76.i = call i64 @fwrite(ptr nonnull @.str.53, i64 34, i64 1, ptr nonnull %i.h) ; 0 uses
  %.068100.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cmd_hist, i64 8), align 8, !tbaa !53 ; 2 uses
  %.not77101.i = icmp eq ptr %.068100.i, @cmd_hist
  br i1 %.not77101.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_.exit99.i, %.lr.ph.i
  %.068102.i = phi ptr [ %.068.i, %.lr.ph.i ], [ %.068100.i, %_.exit99.i ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.068102.i, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !53
  %i.ai = icmp eq ptr %i.ah, @cmd_hist
  %.str.54..str.55.i = select i1 %i.ai, ptr @.str.54, ptr @.str.55
  %fwrite95.i = call i64 @fwrite(ptr nonnull %.str.54..str.55.i, i64 2, i64 1, ptr nonnull %i.h) ; 0 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.068102.i, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !121
  %i.al = call i32 @fputs(ptr noundef %i.ak, ptr noundef nonnull %i.h) ; 0 uses
  %i.am = call i32 @fputc(i32 noundef 10, ptr noundef nonnull %i.h) ; 0 uses
  %.068.i = load ptr, ptr %i.ag, align 8, !tbaa !53 ; 2 uses
  %.not77.i = icmp eq ptr %.068.i, @cmd_hist
  br i1 %.not77.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !209

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_.exit99.i
  %i.an = call i32 @fputc(i32 noundef 10, ptr noundef nonnull %i.h) ; 0 uses
  %fwrite78.i = call i64 @fwrite(ptr nonnull @.str.56, i64 18, i64 1, ptr nonnull %i.h) ; 0 uses
  %fwrite79.i = call i64 @fwrite(ptr nonnull @.str.57, i64 18, i64 1, ptr nonnull %i.h) ; 0 uses
  %i.ao = load i64, ptr @cur_active_branches, align 8, !tbaa !28
  %i.ap = load i64, ptr @max_active_branches, align 8, !tbaa !28
  %i.aq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.58, i64 noundef %i.ao, i64 noundef %i.ap) #23 ; 0 uses
  %i.ar = call i32 @fputc(i32 noundef 10, ptr noundef nonnull %i.h) ; 0 uses
  %fwrite80.i = call i64 @fwrite(ptr nonnull @.str.59, i64 18, i64 1, ptr nonnull %i.h) ; 0 uses
  %fwrite81.i = call i64 @fwrite(ptr nonnull @.str.60, i64 48, i64 1, ptr nonnull %i.h) ; 0 uses
  %.070103.i = load ptr, ptr @active_branches, align 8, !tbaa !58 ; 2 uses
  %.not82104.i = icmp eq ptr %.070103.i, null
  br i1 %.not82104.i, label %._crit_edge109.i, label %.lr.ph108.i

.lr.ph108.i:                                      ; preds = %._crit_edge.i, %.lr.ph108.i
  %.070106.i = phi ptr [ %.070.i, %.lr.ph108.i ], [ %.070103.i, %._crit_edge.i ] ; 3 uses
  %.069105.i = phi i64 [ %i.as, %.lr.ph108.i ], [ 0, %._crit_edge.i ]
  %i.as = add i64 %.069105.i, 1                   ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.070106.i, i64 120
  %i.au = load i64, ptr %i.at, align 8, !tbaa !98
  %i.av = getelementptr inbounds nuw i8, ptr %.070106.i, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !64
  %i.ax = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.61, i64 noundef %i.as, i64 noundef %i.au, ptr noundef %i.aw) #23 ; 0 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.070106.i, i64 8
  %.070.i = load ptr, ptr %i.ay, align 8, !tbaa !58 ; 2 uses
  %.not82.i = icmp eq ptr %.070.i, null
  br i1 %.not82.i, label %._crit_edge109.i, label %.lr.ph108.i, !llvm.loop !210

._crit_edge109.i:                                 ; preds = %.lr.ph108.i, %._crit_edge.i
  %i.az = call i32 @fputc(i32 noundef 10, ptr noundef nonnull %i.h) ; 0 uses
  %fwrite83.i = call i64 @fwrite(ptr nonnull @.str.62, i64 18, i64 1, ptr nonnull %i.h) ; 0 uses
  %fwrite84.i = call i64 @fwrite(ptr nonnull @.str.57, i64 18, i64 1, ptr nonnull %i.h) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge115.i, %._crit_edge109.i
  %.1116.i = phi i64 [ 0, %._crit_edge109.i ], [ %i.ci, %._crit_edge115.i ] ; 2 uses
  %5 = load ptr, ptr @branch_table, align 8, !tbaa !39
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.1116.i
  %.171110.i = load ptr, ptr %i.ba, align 8, !tbaa !58 ; 2 uses
  %.not94111.i = icmp eq ptr %.171110.i, null
  br i1 %.not94111.i, label %._crit_edge115.i, label %.lr.ph114.i

.lr.ph114.i:                                      ; preds = %bb.g, %write_branch_report.exit.i
  %.171112.i = phi ptr [ %.171.i, %write_branch_report.exit.i ], [ %.171110.i, %bb.g ] ; 8 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.171112.i, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !64
  %i.bd = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.70, ptr noundef %i.bc) #23 ; 0 uses
  %fwrite.i.i = call i64 @fwrite(ptr nonnull @.str.71, i64 15, i64 1, ptr nonnull %i.h) ; 0 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.171112.i, i64 136 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 8
  %i.bg = and i32 %i.bf, 1
  %.not.i.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph114.i
  %fwrite24.i.i = call i64 @fwrite(ptr nonnull @.str.72, i64 7, i64 1, ptr nonnull %i.h) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph114.i
  %i.bh = getelementptr inbounds nuw i8, ptr %.171112.i, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !97
  %.not25.i.i = icmp eq ptr %i.bi, null
  br i1 %.not25.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %fwrite26.i.i = call i64 @fwrite(ptr nonnull @.str.73, i64 7, i64 1, ptr nonnull %i.h) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.171112.i, i64 84 ; 3 uses
  %i.bk = load i128, ptr %i.bj, align 1
  %i.bl = getelementptr i8, ptr %i.bj, i64 16
  %i.bm = load i128, ptr %i.bl, align 1
  %i.bn = or i128 %i.bk, %i.bm
  %i.bo = icmp ne i128 %i.bn, 0
  %i.bp = zext i1 %i.bo to i32
  %.not.i.not.i.i = icmp eq i32 %i.bp, 0
  br i1 %.not.i.not.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %fwrite28.i.i = call i64 @fwrite(ptr nonnull @.str.74, i64 6, i64 1, ptr nonnull %i.h) ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bq = call i32 @fputc(i32 noundef 10, ptr noundef nonnull %i.h) ; 0 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.171112.i, i64 140
  %i.bs = call ptr @oid_to_hex(ptr noundef nonnull %i.br) #23
  %i.bt = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.75, ptr noundef %i.bs) #23 ; 0 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.171112.i, i64 44
  %i.bv = call ptr @oid_to_hex(ptr noundef nonnull %i.bu) #23
  %i.bw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.76, ptr noundef %i.bv) #23 ; 0 uses
  %i.bx = call ptr @oid_to_hex(ptr noundef nonnull %i.bj) #23
  %i.by = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.77, ptr noundef %i.bx) #23 ; 0 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.171112.i, i64 120
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !98
  %i.cb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.78, i64 noundef %i.ca) #23 ; 0 uses
  %fwrite29.i.i = call i64 @fwrite(ptr nonnull @.str.79, i64 16, i64 1, ptr nonnull %i.h) ; 0 uses
  %i.cc = load i32, ptr %i.be, align 8
  %i.cd = lshr i32 %i.cc, 2
  %i.ce = and i32 %i.cd, 65535                    ; 2 uses
  %.not30.i.i = icmp eq i32 %i.ce, 65535
  br i1 %.not30.i.i, label %write_branch_report.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cf = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.80, i32 noundef %i.ce) #23 ; 0 uses
  br label %write_branch_report.exit.i

write_branch_report.exit.i:                       ; preds = %bb.n, %bb.m
  %i.cg = call i32 @fputc(i32 noundef 10, ptr noundef nonnull %i.h) ; 0 uses
  %i.ch = call i32 @fputc(i32 noundef 10, ptr noundef nonnull %i.h) ; 0 uses
  %.171.i = load ptr, ptr %.171112.i, align 8, !tbaa !58 ; 2 uses
  %.not94.i = icmp eq ptr %.171.i, null
  br i1 %.not94.i, label %._crit_edge115.i, label %.lr.ph114.i, !llvm.loop !211

._crit_edge115.i:                                 ; preds = %write_branch_report.exit.i, %bb.g
  %i.ci = add nuw nsw i64 %.1116.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ci, 1039
  br i1 %exitcond.not.i, label %bb.o, label %bb.g, !llvm.loop !212

bb.o:                                             ; preds = %._crit_edge115.i
  %i.cj = load ptr, ptr @first_tag, align 8, !tbaa !111
  %.not85.i = icmp eq ptr %i.cj, null
  br i1 %.not85.i, label %.loopexit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ck = call i32 @fputc(i32 noundef 10, ptr noundef nonnull %i.h) ; 0 uses
  %fwrite86.i = call i64 @fwrite(ptr nonnull @.str.63, i64 15, i64 1, ptr nonnull %i.h) ; 0 uses
  %fwrite87.i = call i64 @fwrite(ptr nonnull @.str.64, i64 15, i64 1, ptr nonnull %i.h) ; 0 uses
  %.0117.i = load ptr, ptr @first_tag, align 8, !tbaa !111 ; 2 uses
  %.not88118.i = icmp eq ptr %.0117.i, null
  br i1 %.not88118.i, label %.loopexit.i, label %.lr.ph121.i

.lr.ph121.i:                                      ; preds = %bb.p, %.lr.ph121.i
  %.0119.i = phi ptr [ %.0.i, %.lr.ph121.i ], [ %.0117.i, %bb.p ] ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.0119.i, i64 20
  %i.cm = call ptr @oid_to_hex(ptr noundef nonnull %i.cl) #23
  %i.cn = call i32 @fputs(ptr noundef %i.cm, ptr noundef nonnull %i.h) ; 0 uses
  %i.co = call i32 @fputc(i32 noundef 32, ptr noundef nonnull %i.h) ; 0 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.0119.i, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !110
  %i.cr = call i32 @fputs(ptr noundef %i.cq, ptr noundef nonnull %i.h) ; 0 uses
  %i.cs = call i32 @fputc(i32 noundef 10, ptr noundef nonnull %i.h) ; 0 uses
  %.0.i = load ptr, ptr %.0119.i, align 8, !tbaa !111 ; 2 uses
  %.not88.i = icmp eq ptr %.0.i, null
  br i1 %.not88.i, label %.loopexit.i, label %.lr.ph121.i, !llvm.loop !213

.loopexit.i:                                      ; preds = %.lr.ph121.i, %bb.p, %bb.o
  %i.ct = call i32 @fputc(i32 noundef 10, ptr noundef nonnull %i.h) ; 0 uses
  %fwrite89.i = call i64 @fwrite(ptr nonnull @.str.65, i64 6, i64 1, ptr nonnull %i.h) ; 0 uses
  %fwrite90.i = call i64 @fwrite(ptr nonnull @.str.66, i64 6, i64 1, ptr nonnull %i.h) ; 0 uses
  %i.cu = load ptr, ptr @export_marks_file, align 8, !tbaa !45 ; 2 uses
  %.not91.i = icmp eq ptr %i.cu, null
  br i1 %.not91.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.loopexit.i
  %i.cv = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.67, ptr noundef nonnull %i.cu) #23 ; 0 uses
  br label %bb.s

bb.r:                                             ; preds = %.loopexit.i
  %i.cw = load ptr, ptr @marks, align 8, !tbaa !43
  call fastcc void @for_each_mark(ptr noundef %i.cw, i64 noundef 0, ptr noundef nonnull @dump_marks_fn, ptr noundef %i.h)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cx = call i32 @fputc(i32 noundef 10, ptr noundef nonnull %i.h) ; 0 uses
  %fwrite92.i = call i64 @fwrite(ptr nonnull @.str.68, i64 20, i64 1, ptr nonnull %i.h) ; 0 uses
  %fwrite93.i = call i64 @fwrite(ptr nonnull @.str.69, i64 20, i64 1, ptr nonnull %i.h) ; 0 uses
  %i.cy = call i32 @fclose(ptr noundef nonnull %i.h) ; 0 uses
  br label %write_crash_report.exit

write_crash_report.exit:                          ; preds = %_.exit.i, %bb.s
  call void @free(ptr noundef %i.g) #23
  call fastcc void @end_packfile()
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) @__const.unkeep_all_packs.name, i64 24, i1 false)
  %i.cz = load i32, ptr @pack_id, align 4, !tbaa !29
  %.not.i5 = icmp eq i32 %i.cz, 0
  br i1 %.not.i5, label %unkeep_all_packs.exit, label %.lr.ph.i6

.lr.ph.i6:                                        ; preds = %write_crash_report.exit
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.lr.ph.i6
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i6 ], [ %indvars.iv.next.i, %bb.t ] ; 2 uses
  %i.db = load ptr, ptr @all_packs, align 8, !tbaa !116
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %indvars.iv.i
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !118 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 200
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !26
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 114
  %i.dh = call ptr @odb_pack_name(ptr noundef %i.df, ptr noundef nonnull %2, ptr noundef nonnull %i.dg, ptr noundef nonnull @.str.296) #23 ; 0 uses
  %i.di = load ptr, ptr %i.da, align 8, !tbaa !55
  %i.dj = call i32 @unlink_or_warn(ptr noundef %i.di) #23 ; 0 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.dk = load i32, ptr @pack_id, align 4, !tbaa !29
  %i.dl = zext i32 %i.dk to i64
  %i.dm = icmp samesign ult i64 %indvars.iv.next.i, %i.dl
  br i1 %i.dm, label %bb.t, label %unkeep_all_packs.exit, !llvm.loop !7

unkeep_all_packs.exit:                            ; preds = %bb.t, %write_crash_report.exit
  call void @strbuf_release(ptr noundef nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call fastcc void @dump_marks()
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.u

bb.u:                                             ; preds = %unkeep_all_packs.exit, %bb.a
  %i.dn = call i32 @common_exit(ptr noundef nonnull @.str.42, i32 noundef 445, i32 noundef 128) #23
  call void @exit(i32 noundef %i.dn) #24
  unreachable
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @read_next_command() unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @read_next_command.stdin_eof, align 4, !tbaa !29
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %.preheader.preheader, label %bb.b

.preheader.preheader:                             ; preds = %bb.a
  %.b14.pre17 = load i1, ptr @unread_command_buf, align 4
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  store i1 false, ptr @unread_command_buf, align 4
  br label %.loopexit

.preheader:                                       ; preds = %.preheader.preheader, %bb.l
  %.b14 = phi i1 [ %.b14.pre17, %.preheader.preheader ], [ %.b1419, %bb.l ]
  br i1 %.b14, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.preheader
  store i1 false, ptr @unread_command_buf, align 4
  br label %bb.l

bb.d:                                             ; preds = %.preheader
  %i.b = load ptr, ptr @stdin, align 8, !tbaa !114
  %i.c = tail call i32 @strbuf_getline_lf(ptr noundef nonnull @command_buf, ptr noundef %i.b) #23 ; 2 uses
  store i32 %i.c, ptr @read_next_command.stdin_eof, align 4, !tbaa !29
  %.not15.not = icmp eq i32 %i.c, 0
  br i1 %.not15.not, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %.b = load i1, ptr @seen_data_command, align 4
  br i1 %.b, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @command_buf, i64 16), align 8, !tbaa !55
  %i.e = tail call zeroext i1 @starts_with(ptr noundef %i.d, ptr noundef nonnull @.str.13) #23
  br i1 %i.e, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @command_buf, i64 16), align 8, !tbaa !55
  %i.g = tail call zeroext i1 @starts_with(ptr noundef %i.f, ptr noundef nonnull @.str.15) #23
  br i1 %i.g, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @parse_argv()
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %i.h = load ptr, ptr @rc_free, align 8, !tbaa !51 ; 3 uses
  %.not16 = icmp eq ptr %i.h, null
  br i1 %.not16, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !53
  store ptr %i.j, ptr @rc_free, align 8, !tbaa !51
  br label %.thread

bb.k:                                             ; preds = %bb.i
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cmd_hist, i64 8), align 8, !tbaa !53 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !53   ; 2 uses
  store ptr %i.m, ptr getelementptr inbounds nuw (i8, ptr @cmd_hist, i64 8), align 8, !tbaa !53
  store ptr @cmd_hist, ptr %i.m, align 8, !tbaa !216
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !121
  tail call void @free(ptr noundef %i.o) #23
  br label %.thread

.thread:                                          ; preds = %bb.j, %bb.k
  %.011 = phi ptr [ %i.h, %bb.j ], [ %i.k, %bb.k ] ; 5 uses
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @command_buf, i64 16), align 8, !tbaa !55
  %i.q = tail call ptr @xstrdup(ptr noundef %i.p) #23
  %i.r = getelementptr inbounds nuw i8, ptr %.011, i64 16
  store ptr %i.q, ptr %i.r, align 8, !tbaa !121
  %i.s = load ptr, ptr @cmd_tail, align 8, !tbaa !51 ; 2 uses
  store ptr %i.s, ptr %.011, align 8, !tbaa !216
  %i.t = load ptr, ptr @cmd_hist, align 8, !tbaa !216
  %i.u = getelementptr inbounds nuw i8, ptr %.011, i64 8
  store ptr %i.t, ptr %i.u, align 8, !tbaa !53
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %.011, ptr %i.v, align 8, !tbaa !53
  store ptr %.011, ptr @cmd_tail, align 8, !tbaa !51
  %.b14.pre = load i1, ptr @unread_command_buf, align 4
  br label %bb.l

bb.l:                                             ; preds = %.thread, %bb.c
  %.b1419 = phi i1 [ %.b14.pre, %.thread ], [ false, %bb.c ]
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @command_buf, i64 16), align 8, !tbaa !55
  %i.x = load i8, ptr %i.w, align 1, !tbaa !46
  %i.y = icmp eq i8 %i.x, 35
  br i1 %i.y, label %.preheader, label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.l, %bb.b
  %.3 = phi i32 [ -1, %bb.b ], [ -1, %bb.d ], [ 0, %bb.l ]
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define internal fastcc void @parse_ls(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
end_hunk_0
begin_hunk_1_@end_packfile:bb.a
._crit_edge.i:                                    ; preds = %bb.m, %bb.k
  %i.bh = add nuw nsw i64 %.01830.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bh, 1039
  br i1 %exitcond.not.i, label %.preheader.i, label %bb.k, !llvm.loop !223

.lr.ph34.i:                                       ; preds = %.preheader.i, %bb.o
  %.01733.i = phi ptr [ %.017.i, %bb.o ], [ %.01731.i, %.preheader.i ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.01733.i, i64 16 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !112
  %i.bk = icmp eq i32 %i.bj, %i.aq
  br i1 %i.bk, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph34.i
  store i32 65535, ptr %i.bi, align 8, !tbaa !112
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph34.i
  %.017.i = load ptr, ptr %.01733.i, align 8, !tbaa !111 ; 2 uses
  %.not19.i = icmp eq ptr %.017.i, null
  br i1 %.not19.i, label %.loopexit, label %.lr.ph34.i, !llvm.loop !224

bb.p:                                             ; preds = %loosen_small_pack.exit, %odb_source_files_downcast.exit
  %i.bl = load ptr, ptr @pack_data, align 8, !tbaa !118
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 104
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !29
  %i.bo = call i32 @close(i32 noundef %i.bn) #23  ; 0 uses
  %i.bp = load i64, ptr @object_count, align 8, !tbaa !28 ; 3 uses
  %mul.ov.i.i = icmp ugt i64 %i.bp, 2305843009213693951
  br i1 %mul.ov.i.i, label %bb.q, label %st_mult.exit.i

bb.q:                                             ; preds = %bb.p
  call void (ptr, ...) @die(ptr noundef nonnull @.str.41, i64 noundef 8, i64 noundef %i.bp) #24
  unreachable

st_mult.exit.i:                                   ; preds = %bb.p
  %i.bq = shl nuw i64 %i.bp, 3
  %i.br = call ptr @xmalloc(i64 noundef %i.bq) #23 ; 5 uses
  %.022.i = load ptr, ptr @blocks, align 8, !tbaa !32 ; 2 uses
  %.not23.i = icmp eq ptr %.022.i, null
  br i1 %.not23.i, label %._crit_edge.i34, label %.lr.ph26.i

.lr.ph26.i:                                       ; preds = %st_mult.exit.i
  %i.bs = load i32, ptr @pack_id, align 4
  br label %bb.r

.loopexit.i:                                      ; preds = %bb.t, %bb.r
  %.1.lcssa.i = phi ptr [ %.01624.i, %bb.r ], [ %.2.i, %bb.t ] ; 2 uses
  %.0.i32 = load ptr, ptr %.025.i, align 8, !tbaa !32 ; 2 uses
  %.not.i33 = icmp eq ptr %.0.i32, null
  br i1 %.not.i33, label %._crit_edge.i34, label %bb.r, !llvm.loop !225

bb.r:                                             ; preds = %.loopexit.i, %.lr.ph26.i
  %.025.i = phi ptr [ %.022.i, %.lr.ph26.i ], [ %.0.i32, %.loopexit.i ] ; 3 uses
  %.01624.i = phi ptr [ %i.br, %.lr.ph26.i ], [ %.1.lcssa.i, %.loopexit.i ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.025.i, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !34 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.025.i, i64 24 ; 2 uses
  %.not1819.i = icmp eq ptr %i.bu, %i.bv
  br i1 %.not1819.i, label %.loopexit.i, label %.lr.ph.i31

.lr.ph.i31:                                       ; preds = %bb.r, %bb.t
  %.01521.i = phi ptr [ %i.bw, %bb.t ], [ %i.bu, %bb.r ] ; 2 uses
  %.120.i = phi ptr [ %.2.i, %bb.t ], [ %.01624.i, %bb.r ] ; 3 uses
  %i.bw = getelementptr inbounds i8, ptr %.01521.i, i64 -72 ; 3 uses
  %i.bx = getelementptr inbounds i8, ptr %.01521.i, i64 -8
  %i.by = load i32, ptr %i.bx, align 8
  %i.bz = lshr i32 %i.by, 3
  %i.ca = and i32 %i.bz, 65535
  %i.cb = icmp eq i32 %i.bs, %i.ca
  br i1 %i.cb, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph.i31
  %i.cc = getelementptr inbounds nuw i8, ptr %.120.i, i64 8
  store ptr %i.bw, ptr %.120.i, align 8, !tbaa !241
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph.i31
  %.2.i = phi ptr [ %i.cc, %bb.s ], [ %.120.i, %.lr.ph.i31 ] ; 2 uses
  %.not18.i = icmp eq ptr %i.bw, %i.bv
  br i1 %.not18.i, label %.loopexit.i, label %.lr.ph.i31, !llvm.loop !226

._crit_edge.i34:                                  ; preds = %.loopexit.i, %st_mult.exit.i
  %.016.lcssa.i = phi ptr [ %i.br, %st_mult.exit.i ], [ %.1.lcssa.i, %.loopexit.i ]
  %i.cd = load i64, ptr @object_count, align 8, !tbaa !28 ; 2 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.cd
  %.not17.i = icmp eq ptr %.016.lcssa.i, %i.ce
  br i1 %.not17.i, label %create_index.exit, label %bb.u

bb.u:                                             ; preds = %._crit_edge.i34
  %i.cf = call fastcc ptr @_(ptr noundef nonnull @.str.303)
  call void (ptr, ...) @die(ptr noundef %i.cf) #24
  unreachable

create_index.exit:                                ; preds = %._crit_edge.i34
  %i.cg = load ptr, ptr @the_repository, align 8, !tbaa !26
  %i.ch = trunc i64 %i.cd to i32
  %i.ci = load ptr, ptr @pack_data, align 8, !tbaa !118
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 114
  %i.ck = call ptr @write_idx_file(ptr noundef %i.cg, ptr noundef null, ptr noundef %i.br, i32 noundef %i.ch, ptr noundef nonnull @pack_idx_opts, ptr noundef nonnull %i.cj) #23 ; 2 uses
  call void @free(ptr noundef %i.br) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) @__const.unkeep_all_packs.name, i64 24, i1 false)
  %i.cl = load ptr, ptr @pack_data, align 8, !tbaa !118 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 200
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !26
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 114
  %i.cp = call ptr @odb_pack_name(ptr noundef %i.cn, ptr noundef nonnull %0, ptr noundef nonnull %i.co, ptr noundef nonnull @.str.296) #23 ; 0 uses
  %i.cq = load ptr, ptr @pack_data, align 8, !tbaa !118
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 200
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !26
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !55
  %i.cv = call i32 @safe_create_file_with_leading_directories(ptr noundef %i.cs, ptr noundef %i.cu) #23 ; 3 uses
  %i.cw = icmp slt i32 %i.cv, 0
  br i1 %i.cw, label %bb.v, label %bb.w

bb.v:                                             ; preds = %create_index.exit
  %i.cx = call fastcc ptr @_(ptr noundef nonnull @.str.297)
  call void (ptr, ...) @die_errno(ptr noundef %i.cx) #24
  unreachable

bb.w:                                             ; preds = %create_index.exit
  call void @write_or_die(i32 noundef %i.cv, ptr noundef nonnull @.str.295, i64 noundef 11) #23
  %i.cy = call i32 @close(i32 noundef %i.cv) #23
  %.not.i35 = icmp eq i32 %i.cy, 0
  br i1 %.not.i35, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cz = call fastcc ptr @_(ptr noundef nonnull @.str.298)
  call void (ptr, ...) @die_errno(ptr noundef %i.cz) #24
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.da = load ptr, ptr @pack_data, align 8, !tbaa !118 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 200
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !26
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 114
  %i.de = call ptr @odb_pack_name(ptr noundef %i.dc, ptr noundef nonnull %0, ptr noundef nonnull %i.dd, ptr noundef nonnull @.str.299) #23 ; 0 uses
  %i.df = load ptr, ptr @pack_data, align 8, !tbaa !118 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 200
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !26
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 208
  %i.dj = load ptr, ptr %i.ct, align 8, !tbaa !55
  %i.dk = call i32 @finalize_object_file(ptr noundef %i.dh, ptr noundef nonnull %i.di, ptr noundef %i.dj) #23
  %.not4.i = icmp eq i32 %i.dk, 0
  br i1 %.not4.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dl = call fastcc ptr @_(ptr noundef nonnull @.str.300)
  call void (ptr, ...) @die(ptr noundef %i.dl) #24
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.dm = load ptr, ptr @pack_data, align 8, !tbaa !118 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 200
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !26
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 114
  %i.dq = call ptr @odb_pack_name(ptr noundef %i.do, ptr noundef nonnull %0, ptr noundef nonnull %i.dp, ptr noundef nonnull @.str.301) #23 ; 0 uses
  %i.dr = load ptr, ptr @pack_data, align 8, !tbaa !118
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 200
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !26
  %i.du = load ptr, ptr %i.ct, align 8, !tbaa !55
  %i.dv = call i32 @finalize_object_file(ptr noundef %i.dt, ptr noundef %i.ck, ptr noundef %i.du) #23
  %.not5.i = icmp eq i32 %i.dv, 0
  br i1 %.not5.i, label %keep_pack.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dw = call fastcc ptr @_(ptr noundef nonnull @.str.302)
  call void (ptr, ...) @die(ptr noundef %i.dw) #24
  unreachable

keep_pack.exit:                                   ; preds = %bb.aa
  call void @free(ptr noundef %i.ck) #23
  %i.dx = call ptr @strbuf_detach(ptr noundef nonnull %0, ptr noundef null) #23 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #23
  %i.dy = getelementptr inbounds nuw i8, ptr %i.j, i64 160
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !142
  %i.ea = call ptr @packfile_store_load_pack(ptr noundef %i.dz, ptr noundef %i.dx, i32 noundef 1) #23 ; 3 uses
  %.not27 = icmp eq ptr %i.ea, null
  br i1 %.not27, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %keep_pack.exit
  %i.eb = call fastcc ptr @_(ptr noundef nonnull @.str.289)
  call void (ptr, ...) @die(ptr noundef %i.eb, ptr noundef %i.dx) #24
  unreachable

bb.ad:                                            ; preds = %keep_pack.exit
  %i.ec = load ptr, ptr @all_packs, align 8, !tbaa !116
  %i.ed = load i32, ptr @pack_id, align 4, !tbaa !29 ; 2 uses
  %i.ee = zext i32 %i.ed to i64
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.ee
  store ptr %i.ea, ptr %i.ef, align 8, !tbaa !118
  call void @free(ptr noundef %i.dx) #23
  %i.eg = load ptr, ptr @pack_edges, align 8, !tbaa !114 ; 2 uses
  %.not28 = icmp eq ptr %i.eg, null
  br i1 %.not28, label %.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ea, i64 208
  %i.ei = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.eg, ptr noundef nonnull @.str.290, ptr noundef nonnull %i.eh) #23 ; 0 uses
  br label %bb.af

.preheader:                                       ; preds = %._crit_edge
  %.01941 = load ptr, ptr @first_tag, align 8, !tbaa !111 ; 2 uses
  %.not2942 = icmp eq ptr %.01941, null
  br i1 %.not2942, label %._crit_edge45, label %.lr.ph44.preheader

.lr.ph44.preheader:                               ; preds = %.preheader
  %.pre49.a = load i32, ptr @pack_id, align 4, !tbaa !29
  br label %.lr.ph44

bb.af:                                            ; preds = %bb.ae, %._crit_edge
  %indvars.iv = phi i64 [ 0, %bb.ae ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %4 = load ptr, ptr @branch_table, align 8, !tbaa !39
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv
  %.02037 = load ptr, ptr %i.ej, align 8, !tbaa !58 ; 2 uses
  %.not3038 = icmp eq ptr %.02037, null
  br i1 %.not3038, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.af
  %.pre47.a = load i32, ptr @pack_id, align 4, !tbaa !29
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ah
  %i.ek = phi i32 [ %i.eu, %bb.ah ], [ %.pre47.a, %.lr.ph.preheader ] ; 2 uses
  %.02039 = phi ptr [ %.020, %bb.ah ], [ %.02037, %.lr.ph.preheader ] ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.02039, i64 136
  %i.em = load i32, ptr %i.el, align 8
  %i.en = lshr i32 %i.em, 2
  %i.eo = and i32 %i.en, 65535
  %i.ep = icmp eq i32 %i.eo, %i.ek
  br i1 %i.ep, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.lr.ph
  %i.eq = load ptr, ptr @pack_edges, align 8, !tbaa !114
  %i.er = getelementptr inbounds nuw i8, ptr %.02039, i64 140
  %i.es = call ptr @oid_to_hex(ptr noundef nonnull %i.er) #23
  %i.et = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.eq, ptr noundef nonnull @.str.291, ptr noundef %i.es) #23 ; 0 uses
  %.pre.a = load i32, ptr @pack_id, align 4, !tbaa !29
  br label %bb.ah

bb.ah:                                            ; preds = %.lr.ph, %bb.ag
  %i.eu = phi i32 [ %i.ek, %.lr.ph ], [ %.pre.a, %bb.ag ]
  %.020 = load ptr, ptr %.02039, align 8, !tbaa !58 ; 2 uses
  %.not30 = icmp eq ptr %.020, null
  br i1 %.not30, label %._crit_edge, label %.lr.ph, !llvm.loop !227

._crit_edge:                                      ; preds = %bb.ah, %bb.af
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 1039
  br i1 %exitcond.not, label %.preheader, label %bb.af, !llvm.loop !228

.lr.ph44:                                         ; preds = %.lr.ph44.preheader, %bb.aj
  %i.ev = phi i32 [ %i.fd, %bb.aj ], [ %.pre49.a, %.lr.ph44.preheader ] ; 2 uses
  %.01943 = phi ptr [ %.019, %bb.aj ], [ %.01941, %.lr.ph44.preheader ] ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.01943, i64 16
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !112
  %i.ey = icmp eq i32 %i.ex, %i.ev
  br i1 %i.ey, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.lr.ph44
  %i.ez = load ptr, ptr @pack_edges, align 8, !tbaa !114
  %i.fa = getelementptr inbounds nuw i8, ptr %.01943, i64 20
  %i.fb = call ptr @oid_to_hex(ptr noundef nonnull %i.fa) #23
  %i.fc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ez, ptr noundef nonnull @.str.291, ptr noundef %i.fb) #23 ; 0 uses
  %.pre48 = load i32, ptr @pack_id, align 4, !tbaa !29
  br label %bb.aj

bb.aj:                                            ; preds = %.lr.ph44, %bb.ai
  %i.fd = phi i32 [ %i.ev, %.lr.ph44 ], [ %.pre48, %bb.ai ]
  %.019 = load ptr, ptr %.01943, align 8, !tbaa !111 ; 2 uses
  %.not29 = icmp eq ptr %.019, null
  br i1 %.not29, label %._crit_edge45, label %.lr.ph44, !llvm.loop !229

._crit_edge45:                                    ; preds = %bb.aj, %.preheader
  %i.fe = load ptr, ptr @pack_edges, align 8, !tbaa !114
  %i.ff = call i32 @fputc(i32 noundef 10, ptr noundef %i.fe) ; 0 uses
  %i.fg = load ptr, ptr @pack_edges, align 8, !tbaa !114
  %i.fh = call i32 @fflush(ptr noundef %i.fg)     ; 0 uses
  %.pre50 = load i32, ptr @pack_id, align 4, !tbaa !29
  br label %.thread

.thread:                                          ; preds = %bb.ad, %._crit_edge45
  %i.fi = phi i32 [ %i.ed, %bb.ad ], [ %.pre50, %._crit_edge45 ]
  %i.fj = add i32 %i.fi, 1
  store i32 %i.fj, ptr @pack_id, align 4, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.al

.loopexit:                                        ; preds = %bb.o, %.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.ak

bb.ak:                                            ; preds = %.loopexit, %bb.b
  %i.fk = load ptr, ptr @pack_data, align 8, !tbaa !118
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 104
  %i.fm = load i32, ptr %i.fl, align 8, !tbaa !29
  %i.fn = call i32 @close(i32 noundef %i.fm) #23  ; 0 uses
  %i.fo = load ptr, ptr @pack_data, align 8, !tbaa !118
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 208
  %i.fq = call i32 @unlink_or_warn(ptr noundef nonnull %i.fp) #23 ; 0 uses
  br label %bb.al

bb.al:                                            ; preds = %.thread, %bb.ak
  %i.fr = load ptr, ptr @pack_data, align 8, !tbaa !118
  call void @free(ptr noundef %i.fr) #23
  store ptr null, ptr @pack_data, align 8, !tbaa !118
  store i1 false, ptr @end_packfile.running, align 4
  call void @strbuf_release(ptr noundef nonnull @last_blob) #23
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @last_blob, i64 24), align 8, !tbaa !130
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @last_blob, i64 32), align 8, !tbaa !131
  br label %bb.am

bb.am:                                            ; preds = %bb.a, %bb.al
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @dump_branches() unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.object_id, align 4          ; 10 uses
  %1 = alloca %struct.strbuf, align 8             ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.c = load ptr, ptr @branch_table, align 8, !tbaa !39
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  %.07 = load ptr, ptr %i.d, align 8, !tbaa !58   ; 2 uses
  %.not8 = icmp eq ptr %.07, null
  br i1 %.not8, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %update_branch.exit
  %.09 = phi ptr [ %.0, %update_branch.exit ], [ %.07, %bb.b ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) @__const.unkeep_all_packs.name, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %.09, i64 16 ; 9 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !64
  %i.g = call zeroext i1 @starts_with(ptr noundef %i.f, ptr noundef nonnull @.str.304) #23
  br i1 %i.g, label %bb.c, label %bb.h

bb.c:                                             ; preds = %.lr.ph
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !64
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 13
  %i.j = getelementptr inbounds nuw i8, ptr %.09, i64 140 ; 2 uses
  %i.k = call ptr @oid_to_hex(ptr noundef nonnull %i.j) #23
  %i.l = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.i, ptr noundef nonnull dereferenceable(1) %i.k) #25
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %.b34.i = load i1, ptr @quiet, align 4
  br i1 %.b34.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load i32, ptr @git_gettext_enabled, align 4, !tbaa !29
  %.not4.i.i = icmp eq i32 %i.m, 0
  br i1 %.not4.i.i, label %_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.305, i32 noundef 5) #23
  br label %_.exit.i

_.exit.i:                                         ; preds = %bb.f, %bb.e
  %.0.i.i = phi ptr [ %i.n, %bb.f ], [ @.str.305, %bb.e ]
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !64
  %i.p = call ptr @oid_to_hex(ptr noundef nonnull %i.j) #23
  call void (ptr, ...) @warning(ptr noundef %.0.i.i, ptr noundef %i.o, ptr noundef %i.p) #23
  br label %bb.g

bb.g:                                             ; preds = %_.exit.i, %bb.d
  %i.q = load ptr, ptr @the_repository, align 8, !tbaa !26
  %i.r = call ptr @get_main_ref_store(ptr noundef %i.q) #23
  %i.s = load ptr, ptr %i.e, align 8, !tbaa !64
  %i.t = call i32 @refs_delete_ref(ptr noundef %i.r, ptr noundef null, ptr noundef %i.s, ptr noundef null, i32 noundef 0) #23 ; 0 uses
  br label %update_branch.exit

bb.h:                                             ; preds = %bb.c, %.lr.ph
  %i.u = getelementptr inbounds nuw i8, ptr %.09, i64 140 ; 5 uses
  %i.v = load i128, ptr %i.u, align 1
  %i.w = getelementptr i8, ptr %i.u, i64 16
  %i.x = load i128, ptr %i.w, align 1
  %i.y = or i128 %i.v, %i.x
  %i.z = icmp ne i128 %i.y, 0
  %i.aa = zext i1 %i.z to i32
  %.not.i.not.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i.not.i, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %.09, i64 136
  %i.ac = load i32, ptr %i.ab, align 8
  %i.ad = and i32 %i.ac, 2
  %.not42.i = icmp eq i32 %i.ad, 0
  br i1 %.not42.i, label %update_branch.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = load ptr, ptr @the_repository, align 8, !tbaa !26
  %i.af = call ptr @get_main_ref_store(ptr noundef %i.ae) #23
  %i.ag = load ptr, ptr %i.e, align 8, !tbaa !64
  %i.ah = call i32 @refs_delete_ref(ptr noundef %i.af, ptr noundef null, ptr noundef %i.ag, ptr noundef null, i32 noundef 0) #23 ; 0 uses
  br label %update_branch.exit

bb.k:                                             ; preds = %bb.h
  %i.ai = load ptr, ptr @the_repository, align 8, !tbaa !26
  %i.aj = call ptr @get_main_ref_store(ptr noundef %i.ai) #23
  %i.ak = load ptr, ptr %i.e, align 8, !tbaa !64
  %i.al = call i32 @refs_read_ref(ptr noundef %i.aj, ptr noundef %i.ak, ptr noundef nonnull %0) #23
  %.not36.i = icmp eq i32 %i.al, 0
  br i1 %.not36.i, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = load ptr, ptr @the_repository, align 8, !tbaa !26
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 448
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !93 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %.not.i.i.i = icmp eq ptr %i.ao, @hash_algos
  br i1 %.not.i.i.i, label %oidclr.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not.1.i.i.i = icmp eq ptr %i.ao, getelementptr inbounds nuw (i8, ptr @hash_algos, i64 112)
  br i1 %.not.1.i.i.i, label %oidclr.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not.2.i.i.i = icmp eq ptr %i.ao, getelementptr inbounds nuw (i8, ptr @hash_algos, i64 224)
  %spec.select.i.i.i = select i1 %.not.2.i.i.i, i32 2, i32 0
  br label %oidclr.exit.i

oidclr.exit.i:                                    ; preds = %bb.n, %bb.m, %bb.l
  %.2.i.i.i = phi i32 [ %spec.select.i.i.i, %bb.n ], [ 0, %bb.l ], [ 1, %bb.m ]
  store i32 %.2.i.i.i, ptr %i.a, align 4, !tbaa !67
  br label %bb.o

bb.o:                                             ; preds = %oidclr.exit.i, %bb.k
  %.b.i = load i1, ptr @force_update, align 4
  br i1 %.b.i, label %bb.y, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ap = load i128, ptr %0, align 4
  %i.aq = getelementptr i8, ptr %0, i64 16
  %i.ar = load i128, ptr %i.aq, align 4
  %i.as = or i128 %i.ap, %i.ar
  %i.at = icmp ne i128 %i.as, 0
  %i.au = zext i1 %i.at to i32
  %.not.i44.not.i = icmp eq i32 %i.au, 0
end_hunk_1
