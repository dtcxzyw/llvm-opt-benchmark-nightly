Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/combine-diff?download=true
inline.NumInlined: 73
inline.NumDeleted: 33
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 10
begin_hunk_0_@show_combined_diff:bb.a
  tail call fastcc void @show_raw_diff(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %2)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 16
  %.not8 = icmp eq i32 %i.d, 0
  br i1 %.not8, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @show_patch_diff(ptr noundef %0, i32 noundef %1, i32 noundef 1, ptr noundef nonnull %2)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @show_raw_diff(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 1520
  %i.b = tail call ptr @diff_line_prefix(ptr noundef nonnull %i.a) #16
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 1796
  %i.d = load i32, ptr %i.c, align 4, !tbaa !29   ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  %spec.store.select = select i1 %.not, i32 0, i32 9 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 384
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !68
  %.not47 = icmp eq ptr %i.f, null
  br i1 %.not47, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 332
  %i.h = load i64, ptr %i.g, align 4
  %i.i = and i64 %i.h, 562949953421312
  %.not48 = icmp eq i64 %i.i, 0
  br i1 %.not48, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @show_log(ptr noundef nonnull %2) #16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 1800 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !28   ; 2 uses
  %i.l = and i32 %i.k, 1
  %.not49 = icmp eq i32 %i.l, 0
  br i1 %.not49, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, ptr noundef %i.b) ; 0 uses
  %i.n = icmp sgt i32 %1, 0
  br i1 %i.n, label %.lr.ph, label %._crit_edge

.lr.ph56.preheader:                               ; preds = %.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph56

.lr.ph:                                           ; preds = %bb.e, %.lr.ph
  %.054 = phi i32 [ %i.q, %.lr.ph ], [ 0, %bb.e ]
  %i.o = load ptr, ptr @stdout, align 8, !tbaa !69
  %i.p = tail call i32 @putc(i32 noundef 58, ptr noundef %i.o), !inline_history !0 ; 0 uses
  %i.q = add nuw nsw i32 %.054, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.q, %1
  br i1 %exitcond.not, label %.lr.ph56.preheader, label %.lr.ph, !llvm.loop !130

.lr.ph56:                                         ; preds = %.lr.ph56.preheader, %.lr.ph56
  %indvars.iv = phi i64 [ 0, %.lr.ph56.preheader ], [ %indvars.iv.next, %.lr.ph56 ] ; 2 uses
  %i.r = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %indvars.iv
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 60
  %i.t = load i32, ptr %i.s, align 4, !tbaa !73
  %i.u = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %i.t) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond69.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond69.not, label %.lr.ph59, label %.lr.ph56, !llvm.loop !131

._crit_edge:                                      ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load i32, ptr %i.v, align 8, !tbaa !74
  %i.x = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.w) ; 0 uses
  br label %._crit_edge60

.lr.ph59:                                         ; preds = %.lr.ph56
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load i32, ptr %i.y, align 8, !tbaa !74
  %i.aa = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.z) ; 0 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 1832
  %wide.trip.count73 = zext nneg i32 %1 to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph59, %bb.f
  %indvars.iv70 = phi i64 [ 0, %.lr.ph59 ], [ %indvars.iv.next71, %bb.f ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %indvars.iv70
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  %i.ae = load i32, ptr %i.ab, align 8, !tbaa !135
  %i.af = tail call ptr @diff_aligned_abbrev(ptr noundef nonnull %i.ad, i32 noundef %i.ae) #16
  %i.ag = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef %i.af) ; 0 uses
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1 ; 2 uses
  %exitcond74.not = icmp eq i64 %indvars.iv.next71, %wide.trip.count73
  br i1 %exitcond74.not, label %._crit_edge60, label %bb.f, !llvm.loop !132

._crit_edge60:                                    ; preds = %bb.f, %._crit_edge
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 1832
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !135
  %i.ak = tail call ptr @diff_aligned_abbrev(ptr noundef nonnull %i.ah, i32 noundef %i.aj) #16
  %i.al = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, ptr noundef %i.ak) ; 0 uses
  %.pre = load i32, ptr %i.j, align 8, !tbaa !28
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge60, %bb.d
  %i.am = phi i32 [ %.pre, %._crit_edge60 ], [ %i.k, %bb.d ]
  %i.an = and i32 %i.am, 513
  %.not50 = icmp eq i32 %i.an, 0
  br i1 %.not50, label %bb.i, label %.preheader

.preheader:                                       ; preds = %bb.g
  %i.ao = icmp sgt i32 %1, 0
  br i1 %i.ao, label %.lr.ph62, label %._crit_edge63

.lr.ph62:                                         ; preds = %.preheader
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 56
  %wide.trip.count78 = zext nneg i32 %1 to i64
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph62, %bb.h
  %indvars.iv75 = phi i64 [ 0, %.lr.ph62 ], [ %indvars.iv.next76, %bb.h ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [56 x i8], ptr %i.ap, i64 %indvars.iv75
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !75
  %i.as = sext i8 %i.ar to i32
  %i.at = load ptr, ptr @stdout, align 8, !tbaa !69
  %i.au = tail call i32 @putc(i32 noundef %i.as, ptr noundef %i.at), !inline_history !0 ; 0 uses
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1 ; 2 uses
  %exitcond79.not = icmp eq i64 %indvars.iv.next76, %wide.trip.count78
  br i1 %exitcond79.not, label %._crit_edge63, label %bb.h, !llvm.loop !133

._crit_edge63:                                    ; preds = %bb.h, %.preheader
  %i.av = load ptr, ptr @stdout, align 8, !tbaa !69
  %i.aw = tail call i32 @putc(i32 noundef %spec.store.select, ptr noundef %i.av), !inline_history !0 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge63, %bb.g
  %i.ax = icmp sgt i32 %1, 0
  br i1 %i.ax, label %.lr.ph66, label %._crit_edge67

.lr.ph66:                                         ; preds = %bb.i
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 332
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  %wide.trip.count83 = zext nneg i32 %1 to i64
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph66, %bb.n
  %indvars.iv80 = phi i64 [ 0, %.lr.ph66 ], [ %indvars.iv.next81, %bb.n ] ; 2 uses
  %i.ba = load i64, ptr %i.ay, align 4
  %i.bb = and i64 %i.ba, 144115188075855872
  %.not51 = icmp eq i64 %i.bb, 0
  br i1 %.not51, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bc = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %indvars.iv80
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 104
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !76 ; 2 uses
  %.not52 = icmp eq ptr %i.be, null
  br i1 %.not52, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bf = load ptr, ptr %i.az, align 8, !tbaa !77
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.bg = phi ptr [ %i.bf, %bb.l ], [ %i.be, %bb.k ]
  %i.bh = load ptr, ptr @stdout, align 8, !tbaa !69
  tail call void @write_name_quoted(ptr noundef %i.bg, ptr noundef %i.bh, i32 noundef %spec.store.select) #16
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %bb.m
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1 ; 2 uses
  %exitcond84.not = icmp eq i64 %indvars.iv.next81, %wide.trip.count83
  br i1 %exitcond84.not, label %._crit_edge67, label %bb.j, !llvm.loop !134

._crit_edge67:                                    ; preds = %bb.n, %bb.i
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !77
  %i.bk = load ptr, ptr @stdout, align 8, !tbaa !69
  tail call void @write_name_quoted(ptr noundef %i.bj, ptr noundef %i.bk, i32 noundef %i.d) #16
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @show_patch_diff(ptr noundef %0, i32 noundef %1, i32 noundef range(i32 0, 2) %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.s_xpparam, align 8          ; 5 uses
  %5 = alloca %struct.s_xdemitconf, align 8       ; 4 uses
  %6 = alloca %struct.s_mmfile, align 8           ; 6 uses
  %7 = alloca %struct.combine_diff_state, align 8 ; 9 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 11 uses
  %i.c = alloca ptr, align 8                      ; 16 uses
  %8 = alloca %struct.s_mmfile, align 8           ; 7 uses
  %9 = alloca %struct.stat, align 8               ; 7 uses
  %10 = alloca %struct.strbuf, align 8            ; 7 uses
  %11 = alloca %struct.object_id, align 4         ; 4 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %12 = alloca %struct.strbuf, align 8            ; 5 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 1520
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  %i.g = tail call ptr @diff_line_prefix(ptr noundef nonnull %i.f) #16 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 1772
  %i.i = load i32, ptr %i.h, align 4, !tbaa !195
  %i.j = zext i32 %i.i to i64
  store i64 %i.j, ptr @context, align 8, !tbaa !78
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 2096 ; 8 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !196
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 432
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !197
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 11 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !77
  %i.q = tail call ptr @userdiff_find_by_path(ptr noundef %i.n, ptr noundef %i.p) #16 ; 2 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.r = tail call ptr @userdiff_find_by_name(ptr noundef nonnull @.str.10) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0192 = phi ptr [ %i.q, %bb.a ], [ %i.r, %bb.b ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 1700
  %i.t = load i32, ptr %i.s, align 4, !tbaa !198
  %.not218 = icmp eq i32 %i.t, 0
  br i1 %.not218, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %i.k, align 8, !tbaa !196
  %i.v = tail call ptr @userdiff_get_textconv(ptr noundef %i.u, ptr noundef %.0192) #16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0191 = phi ptr [ %i.v, %bb.d ], [ null, %bb.c ] ; 5 uses
  %.not233 = icmp eq i32 %2, 0
  br i1 %.not233, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %i.k, align 8, !tbaa !196
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load i32, ptr %i.y, align 8, !tbaa !74
  %i.aa = load ptr, ptr %i.o, align 8, !tbaa !77
  %i.ab = call fastcc ptr @grab_blob(ptr noundef %i.w, ptr noundef nonnull %i.x, i32 noundef %i.z, ptr noundef %i.b, ptr noundef %.0191, ptr noundef %i.aa)
  store ptr %i.ab, ptr %i.c, align 8, !tbaa !77
  br label %bb.ad

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  %i.ac = load ptr, ptr %i.o, align 8, !tbaa !77
  %i.ad = call i32 @lstat64(ptr noundef %i.ac, ptr noundef nonnull %9) #16
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %bb.ab, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !201 ; 2 uses
  %i.ah = trunc i32 %i.ag to i16                  ; 2 uses
  %trunc = and i16 %i.ah, -4096                   ; 2 uses
  switch i16 %trunc, label %bb.k [
    i16 -24576, label %bb.i
    i16 16384, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) @__const.grab_blob.buf, i64 24, i1 false)
  %i.ai = load ptr, ptr %i.o, align 8, !tbaa !77
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !202
  %i.al = call i32 @strbuf_readlink(ptr noundef nonnull %10, ptr noundef %i.ai, i64 noundef %i.ak) #16
  %i.am = icmp sgt i32 %i.al, -1
  br i1 %i.am, label %.thread, label %.critedge

.thread:                                          ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !98
  store i64 %i.ao, ptr %i.b, align 8, !tbaa !78
  %i.ap = call ptr @strbuf_detach(ptr noundef nonnull %10, ptr noundef null) #16
  store ptr %i.ap, ptr %i.c, align 8, !tbaa !77
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 40960, ptr %i.aq, align 8, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  br label %.thread281

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  %i.ar = load ptr, ptr @the_repository, align 8, !tbaa !99
  %i.as = load ptr, ptr %i.o, align 8, !tbaa !77
  %i.at = call i32 @repo_resolve_gitlink_ref(ptr noundef %i.ar, ptr noundef %i.as, ptr noundef nonnull @.str.12, ptr noundef nonnull %11) #16
  %i.au = icmp slt i32 %i.at, 0
  %i.av = load ptr, ptr %i.k, align 8, !tbaa !196
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sink = select i1 %i.au, ptr %i.aw, ptr %11
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !74
  %i.az = call fastcc ptr @grab_blob(ptr noundef %i.av, ptr noundef nonnull %.sink, i32 noundef %i.ay, ptr noundef %i.b, ptr noundef null, ptr noundef null)
  store ptr %i.az, ptr %i.c, align 8, !tbaa !77
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  br label %.thread281

bb.k:                                             ; preds = %bb.h
  %.not219 = icmp eq ptr %.0191, null
  %i.ba = load ptr, ptr %i.o, align 8, !tbaa !77  ; 2 uses
  br i1 %.not219, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bb = tail call ptr @alloc_filespec(ptr noundef %i.ba) #16 ; 3 uses
  %i.bc = load ptr, ptr @the_repository, align 8, !tbaa !99
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 448
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !100
  %i.bf = tail call ptr @null_oid(ptr noundef %i.be) #16
  tail call void @fill_filespec(ptr noundef %i.bb, ptr noundef %i.bf, i32 noundef 0, i16 noundef zeroext %i.ah) #16
  %i.bg = load ptr, ptr %i.k, align 8, !tbaa !196
  %i.bh = call i64 @fill_textconv(ptr noundef %i.bg, ptr noundef nonnull %.0191, ptr noundef %i.bb, ptr noundef nonnull %i.c) #16
  store i64 %i.bh, ptr %i.b, align 8, !tbaa !78
  call void @free_filespec(ptr noundef %i.bb) #16
  br label %.thread281

bb.m:                                             ; preds = %bb.k
  %i.bi = tail call i32 (ptr, i32, ...) @open64(ptr noundef %i.ba, i32 noundef 0) #16 ; 3 uses
  %i.bj = icmp sgt i32 %i.bi, -1
  br i1 %i.bj, label %bb.n, label %bb.ab

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  %i.bk = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !202 ; 7 uses
  %i.bm = icmp slt i64 %i.bl, 0
  br i1 %i.bm, label %bb.o, label %xsize_t.exit

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.21) #17
  unreachable

xsize_t.exit:                                     ; preds = %bb.n
  store i64 %i.bl, ptr %i.d, align 8, !tbaa !78
  switch i16 %trunc, label %bb.r [
    i16 -32768, label %bb.p
    i16 -24576, label %canon_mode.exit243
    i16 16384, label %bb.q
  ]

bb.p:                                             ; preds = %xsize_t.exit
  %i.bn = and i32 %i.ag, 64
  %.not.i242 = icmp eq i32 %i.bn, 0
  %i.bo = select i1 %.not.i242, i32 33188, i32 33261
  br label %canon_mode.exit243

bb.q:                                             ; preds = %xsize_t.exit
  br label %canon_mode.exit243

bb.r:                                             ; preds = %xsize_t.exit
  br label %canon_mode.exit243

canon_mode.exit243:                               ; preds = %xsize_t.exit, %bb.p, %bb.q, %bb.r
  %.0.i241 = phi i32 [ %i.bo, %bb.p ], [ 57344, %bb.r ], [ 16384, %bb.q ], [ 40960, %xsize_t.exit ]
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i32 %.0.i241, ptr %i.bp, align 8, !tbaa !74
  %i.bq = load i32, ptr @has_symlinks, align 4, !tbaa !74
  %i.br = icmp eq i32 %i.bq, 0                    ; 2 uses
  %i.bs = icmp sgt i32 %1, 0
  %i.bt = and i1 %i.br, %i.bs
  br i1 %i.bt, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %canon_mode.exit243
  %i.bu = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.bv = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %indvars.iv
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 60
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !73
  %i.by = and i32 %i.bx, 61440
  %i.bz = icmp eq i32 %i.by, 40960                ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ca = icmp samesign ult i64 %indvars.iv.next, %i.bu
  %i.cb = select i1 %i.bz, i1 %i.ca, i1 false
  br i1 %i.cb, label %.lr.ph, label %._crit_edge, !llvm.loop !136

._crit_edge:                                      ; preds = %.lr.ph, %canon_mode.exit243
  %.0182.lcssa = phi i1 [ %i.br, %canon_mode.exit243 ], [ %i.bz, %.lr.ph ] ; 2 uses
  br i1 %.0182.lcssa, label %bb.s, label %bb.t

bb.s:                                             ; preds = %._crit_edge
  store i32 40960, ptr %i.bp, align 8, !tbaa !74
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge
  store i64 %i.bl, ptr %i.b, align 8, !tbaa !78
  %i.cc = tail call ptr @xmallocz(i64 noundef %i.bl) #16 ; 3 uses
  store ptr %i.cc, ptr %i.c, align 8, !tbaa !77
  %i.cd = tail call i64 @read_in_full(i32 noundef %i.bi, ptr noundef %i.cc, i64 noundef %i.bl) #16 ; 2 uses
  %i.ce = icmp slt i64 %i.cd, 0
  br i1 %i.ce, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cf = load ptr, ptr %i.o, align 8, !tbaa !77
  tail call void (ptr, ...) @die_errno(ptr noundef nonnull @.str.13, ptr noundef %i.cf) #17
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.cg = icmp samesign ult i64 %i.cd, %i.bl
  br i1 %i.cg, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ch = load ptr, ptr %i.o, align 8, !tbaa !77
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.14, ptr noundef %i.ch) #17
  unreachable

bb.x:                                             ; preds = %bb.v
  br i1 %.0182.lcssa, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) @__const.grab_blob.buf, i64 24, i1 false)
  %i.ci = load ptr, ptr %i.k, align 8, !tbaa !203
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 432
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !197
  %i.cl = load ptr, ptr %i.o, align 8, !tbaa !77
  %i.cm = load i32, ptr @global_conv_flags_eol, align 4, !tbaa !74
  %i.cn = call i32 @convert_to_git(ptr noundef %i.ck, ptr noundef %i.cl, ptr noundef %i.cc, i64 noundef %i.bl, ptr noundef nonnull %12, i32 noundef %i.cm) #16
  %.not221 = icmp eq i32 %i.cn, 0
  br i1 %.not221, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.co = load ptr, ptr %i.c, align 8, !tbaa !77
  call void @free(ptr noundef %i.co) #16
  %i.cp = call ptr @strbuf_detach(ptr noundef nonnull %12, ptr noundef nonnull %i.d) #16
  store ptr %i.cp, ptr %i.c, align 8, !tbaa !77
  %i.cq = load i64, ptr %i.d, align 8, !tbaa !78
  store i64 %i.cq, ptr %i.b, align 8, !tbaa !78
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  br label %bb.ac

bb.ab:                                            ; preds = %bb.m, %bb.g
  store i64 0, ptr %i.b, align 8, !tbaa !78
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.cr, align 8, !tbaa !74
  %i.cs = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 1) #16
  store ptr %i.cs, ptr %i.c, align 8, !tbaa !77
  br label %.thread281

bb.ac:                                            ; preds = %bb.x, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  %i.ct = call i32 @close(i32 noundef %i.bi) #16  ; 0 uses
  br label %.thread281

.thread281:                                       ; preds = %bb.l, %bb.j, %.thread, %bb.ab, %bb.ac
  %i.cu = phi i1 [ true, %bb.ac ], [ false, %bb.ab ], [ true, %bb.l ], [ true, %bb.j ], [ true, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  br label %bb.ad

bb.ad:                                            ; preds = %.thread281, %bb.f
  %.2201 = phi i1 [ %i.cu, %.thread281 ], [ true, %bb.f ] ; 2 uses
  %i.cv = icmp sgt i32 %1, 0                      ; 6 uses
  br i1 %i.cv, label %.lr.ph334, label %._crit_edge335

.lr.ph334:                                        ; preds = %bb.ad
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !74
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %bb.af

bb.ae:                                            ; preds = %bb.af
  %indvars.iv.next409 = add nuw nsw i64 %indvars.iv408, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next409, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge335, label %bb.af, !llvm.loop !137

bb.af:                                            ; preds = %.lr.ph334, %bb.ae
  %indvars.iv408 = phi i64 [ 0, %.lr.ph334 ], [ %indvars.iv.next409, %bb.ae ] ; 2 uses
  %i.cy = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %indvars.iv408
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 60
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !73
  %.not222.not.not = icmp ne i32 %i.da, %i.cx     ; 3 uses
  br i1 %.not222.not.not, label %._crit_edge335, label %bb.ae

._crit_edge335:                                   ; preds = %bb.ae, %bb.af, %bb.ad
  %.lcssa330 = phi i1 [ false, %bb.ad ], [ %.not222.not.not, %bb.af ], [ %.not222.not.not, %bb.ae ]
  %.0196 = phi i32 [ 0, %bb.ad ], [ 0, %bb.ae ], [ 1, %bb.af ] ; 2 uses
  %.not223 = icmp eq ptr %.0191, null
  br i1 %.not223, label %bb.ag, label %.thread285

bb.ag:                                            ; preds = %._crit_edge335
  %i.db = getelementptr inbounds nuw i8, ptr %.0192, i64 40
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !208 ; 2 uses
  %.not224 = icmp eq i32 %i.dc, -1
  br i1 %.not224, label %bb.ah, label %.loopexit300

bb.ah:                                            ; preds = %bb.ag
  %i.dd = load ptr, ptr %i.c, align 8, !tbaa !77
  %i.de = load i64, ptr %i.b, align 8, !tbaa !78
  %i.df = call i32 @buffer_is_binary(ptr noundef %i.dd, i64 noundef %i.de) #16 ; 2 uses
  %.not225341 = icmp eq i32 %i.df, 0
  %i.dg = and i1 %.not225341, %i.cv
  br i1 %i.dg, label %.lr.ph345, label %.loopexit300

.lr.ph345:                                        ; preds = %bb.ah
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.di = zext nneg i32 %1 to i64
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph345, %bb.ai
  %indvars.iv411 = phi i64 [ 0, %.lr.ph345 ], [ %indvars.iv.next412, %bb.ai ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  %i.dj = load ptr, ptr %i.k, align 8, !tbaa !196
  %i.dk = getelementptr inbounds nuw [56 x i8], ptr %i.dh, i64 %indvars.iv411 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 4
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !73
  %i.do = call fastcc ptr @grab_blob(ptr noundef %i.dj, ptr noundef nonnull %i.dl, i32 noundef %i.dn, ptr noundef %i.e, ptr noundef null, ptr noundef null) ; 2 uses
  %i.dp = load i64, ptr %i.e, align 8, !tbaa !78
  %i.dq = call i32 @buffer_is_binary(ptr noundef %i.do, i64 noundef %i.dp) #16
  %.not226 = icmp eq i32 %i.dq, 0                 ; 2 uses
  call void @free(ptr noundef %i.do) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  %indvars.iv.next412 = add nuw nsw i64 %indvars.iv411, 1 ; 2 uses
  %i.dr = icmp samesign ult i64 %indvars.iv.next412, %i.di
  %i.ds = select i1 %.not226, i1 %i.dr, i1 false
  br i1 %i.ds, label %bb.ai, label %.loopexit300.loopexit, !llvm.loop !138

.loopexit300.loopexit:                            ; preds = %bb.ai
  %not..not226 = xor i1 %.not226, true
  %spec.select = zext i1 %not..not226 to i32
  br label %.loopexit300

.loopexit300:                                     ; preds = %.loopexit300.loopexit, %bb.ah, %bb.ag
  %.2190 = phi i32 [ %i.dc, %bb.ag ], [ %i.df, %bb.ah ], [ %spec.select, %.loopexit300.loopexit ]
  %.not227 = icmp eq i32 %.2190, 0
  br i1 %.not227, label %.thread285, label %bb.aj

bb.aj:                                            ; preds = %.loopexit300
  call fastcc void @show_combined_header(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %3, ptr noundef %i.g, i32 noundef %.0196, i32 noundef 0)
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %i.dt = load ptr, ptr %i.c, align 8, !tbaa !77
  call void @free(ptr noundef %i.dt) #16
  br label %bb.ee

.thread285:                                       ; preds = %._crit_edge335, %.loopexit300
  %i.du = load ptr, ptr %i.c, align 8, !tbaa !77  ; 5 uses
  %i.dv = load i64, ptr %i.b, align 8, !tbaa !78  ; 8 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.dv ; 2 uses
  %.not370 = icmp eq i64 %i.dv, 0                 ; 2 uses
  br i1 %.not370, label %._crit_edge350.thread, label %.lr.ph349.preheader

.lr.ph349.preheader:                              ; preds = %.thread285
  %i.dx = ptrtoaddr ptr %i.du to i64              ; 3 uses
  %i.dy = add i64 %i.dv, %i.dx
  %i.dz = add i64 %i.dx, 1
  %i.ea = call i64 @llvm.umax.i64(i64 %i.dy, i64 %i.dz)
  %i.eb = sub i64 %i.ea, %i.dx                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.eb, 4
  br i1 %min.iters.check, label %.lr.ph349.preheader600, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph349.preheader
  %n.vec = and i64 %i.eb, -4                      ; 3 uses
  %i.ec = getelementptr i8, ptr %i.du, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ei, %vector.body ]
  %vec.phi565 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ej, %vector.body ]
  %next.gep = getelementptr i8, ptr %i.du, i64 %index ; 2 uses
  %i.ed = getelementptr i8, ptr %next.gep, i64 2
  %wide.load = load <2 x i8>, ptr %next.gep, align 1, !tbaa !101
  %wide.load566 = load <2 x i8>, ptr %i.ed, align 1, !tbaa !101
  %i.ee = icmp eq <2 x i8> %wide.load, splat (i8 10)
  %i.ef = icmp eq <2 x i8> %wide.load566, splat (i8 10)
  %i.eg = zext <2 x i1> %i.ee to <2 x i64>
  %i.eh = zext <2 x i1> %i.ef to <2 x i64>
  %i.ei = add <2 x i64> %vec.phi, %i.eg           ; 2 uses
  %i.ej = add <2 x i64> %vec.phi565, %i.eh        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ek = icmp eq i64 %index.next, %n.vec
  br i1 %i.ek, label %middle.block, label %vector.body, !llvm.loop !139

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ej, %i.ei
  %i.el = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.eb, %n.vec
  br i1 %cmp.n, label %._crit_edge350, label %.lr.ph349.preheader600

.lr.ph349.preheader600:                           ; preds = %.lr.ph349.preheader, %middle.block
  %.0183348.ph = phi i64 [ 0, %.lr.ph349.preheader ], [ %i.el, %middle.block ]
  %.0197347.ph = phi ptr [ %i.du, %.lr.ph349.preheader ], [ %i.ec, %middle.block ]
  br label %.lr.ph349

.lr.ph349:                                        ; preds = %.lr.ph349.preheader600, %.lr.ph349
  %.0183348 = phi i64 [ %spec.select238, %.lr.ph349 ], [ %.0183348.ph, %.lr.ph349.preheader600 ]
  %.0197347 = phi ptr [ %i.ep, %.lr.ph349 ], [ %.0197347.ph, %.lr.ph349.preheader600 ] ; 2 uses
  %i.em = load i8, ptr %.0197347, align 1, !tbaa !101
  %i.en = icmp eq i8 %i.em, 10
  %i.eo = zext i1 %i.en to i64
  %spec.select238 = add i64 %.0183348, %i.eo      ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.0197347, i64 1 ; 2 uses
  %i.eq = icmp ult ptr %i.ep, %i.dw
  br i1 %i.eq, label %.lr.ph349, label %._crit_edge350, !llvm.loop !140

._crit_edge350:                                   ; preds = %.lr.ph349, %middle.block
  %spec.select238.lcssa = phi i64 [ %i.el, %middle.block ], [ %spec.select238, %.lr.ph349 ]
  %i.er = getelementptr i8, ptr %i.dw, i64 -1
  %i.es = load i8, ptr %i.er, align 1, !tbaa !101
  %.not229 = icmp ne i8 %i.es, 10
  %i.et = zext i1 %.not229 to i64
  %spec.select239 = add i64 %spec.select238.lcssa, %i.et
  br label %._crit_edge350.thread

._crit_edge350.thread:                            ; preds = %.thread285, %._crit_edge350
  %.2 = phi i64 [ %spec.select239, %._crit_edge350 ], [ 0, %.thread285 ] ; 21 uses
  %i.eu = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %.2, i64 2) ; 2 uses
  %i.ev = extractvalue { i64, i1 } %i.eu, 1
  br i1 %i.ev, label %bb.ak, label %st_add.exit

bb.ak:                                            ; preds = %._crit_edge350.thread
  call void (ptr, ...) @die(ptr noundef nonnull @.str.49, i64 noundef %.2, i64 noundef 2) #17
  unreachable

st_add.exit:                                      ; preds = %._crit_edge350.thread
  %i.ew = extractvalue { i64, i1 } %i.eu, 0       ; 6 uses
  %i.ex = call ptr @xcalloc(i64 noundef %i.ew, i64 noundef 72) #16 ; 54 uses
  %i.ey = load ptr, ptr %i.c, align 8, !tbaa !77  ; 4 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 40
  store ptr %i.ey, ptr %i.ez, align 8, !tbaa !209
  br i1 %.not370, label %st_add.exit245.thread, label %.lr.ph356

st_add.exit245.thread:                            ; preds = %st_add.exit
  store ptr %i.ey, ptr %8, align 8, !tbaa !211
  %13 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.dv, ptr %13, align 8, !tbaa !212
  %14 = sext i32 %1 to i64
  br label %15

.lr.ph356:                                        ; preds = %st_add.exit, %bb.an
  %i.fa = phi ptr [ %i.fq, %bb.an ], [ %i.ey, %st_add.exit ] ; 2 uses
  %.1198355 = phi ptr [ %i.fr, %bb.an ], [ %i.ey, %st_add.exit ] ; 4 uses
  %.0202354 = phi i64 [ %.1203, %bb.an ], [ 0, %st_add.exit ] ; 3 uses
  %i.fb = load i8, ptr %.1198355, align 1, !tbaa !101
  %i.fc = icmp eq i8 %i.fb, 10
  br i1 %i.fc, label %bb.al, label %bb.an

bb.al:                                            ; preds = %.lr.ph356
  %i.fd = getelementptr inbounds nuw [72 x i8], ptr %i.ex, i64 %.0202354 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 40
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !209
  %i.fg = ptrtoint ptr %.1198355 to i64
  %i.fh = ptrtoint ptr %i.ff to i64
  %i.fi = sub i64 %i.fg, %i.fh
  %i.fj = trunc i64 %i.fi to i32
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fd, i64 48
  store i32 %i.fj, ptr %i.fk, align 8, !tbaa !213
  %i.fl = add i64 %.0202354, 1                    ; 4 uses
  %i.fm = icmp ult i64 %i.fl, %.2
  br i1 %i.fm, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.fn = getelementptr inbounds nuw i8, ptr %.1198355, i64 1
  %i.fo = getelementptr inbounds nuw [72 x i8], ptr %i.ex, i64 %i.fl
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 40
  store ptr %i.fn, ptr %i.fp, align 8, !tbaa !209
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !77
  br label %bb.an

bb.an:                                            ; preds = %.lr.ph356, %bb.am, %bb.al
  %i.fq = phi ptr [ %.pre, %bb.am ], [ %i.fa, %bb.al ], [ %i.fa, %.lr.ph356 ] ; 5 uses
  %.1203 = phi i64 [ %i.fl, %bb.am ], [ %i.fl, %bb.al ], [ %.0202354, %.lr.ph356 ]
  %i.fr = getelementptr inbounds nuw i8, ptr %.1198355, i64 1 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.dv
  %i.ft = icmp ult ptr %i.fr, %i.fs
  br i1 %i.ft, label %.lr.ph356, label %._crit_edge357, !llvm.loop !141

._crit_edge357:                                   ; preds = %bb.an
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.dv
  %i.fv = getelementptr i8, ptr %i.fu, i64 -1
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !101
  %.not231 = icmp eq i8 %i.fw, 10
  br i1 %.not231, label %st_add.exit245, label %bb.ao

bb.ao:                                            ; preds = %._crit_edge357
  %i.fx = getelementptr [72 x i8], ptr %i.ex, i64 %.2 ; 2 uses
  %i.fy = getelementptr i8, ptr %i.fx, i64 -32
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !209
  %i.ga = ptrtoint ptr %i.fz to i64
  %i.gb = ptrtoint ptr %i.fq to i64
  %.neg = add i64 %i.dv, %i.gb
  %i.gc = sub i64 %.neg, %i.ga
  %i.gd = trunc i64 %i.gc to i32
  %i.ge = getelementptr i8, ptr %i.fx, i64 -24
  store i32 %i.gd, ptr %i.ge, align 8, !tbaa !213
  br label %st_add.exit245

st_add.exit245:                                   ; preds = %._crit_edge357, %bb.ao
  store ptr %i.fq, ptr %8, align 8, !tbaa !211
  %i.gf = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.dv, ptr %i.gf, align 8, !tbaa !212
  %i.gg = sext i32 %1 to i64                      ; 2 uses
  %.not.i246 = icmp eq i64 %i.ew, 0
  br i1 %.not.i246, label %st_mult.exit, label %15

15:                                               ; preds = %st_add.exit245.thread, %st_add.exit245
  %16 = phi i64 [ %14, %st_add.exit245.thread ], [ %i.gg, %st_add.exit245 ] ; 3 uses
  %mul.i = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ew, i64 %16)
  %mul.ov.i = extractvalue { i64, i1 } %mul.i, 1
  br i1 %mul.ov.i, label %bb.ap, label %st_mult.exit

bb.ap:                                            ; preds = %15
  call void (ptr, ...) @die(ptr noundef nonnull @.str.48, i64 noundef %i.ew, i64 noundef %16) #17
  unreachable

st_mult.exit:                                     ; preds = %st_add.exit245, %15
  %.not.i246495 = phi i1 [ true, %st_add.exit245 ], [ false, %15 ]
  %17 = phi i64 [ %i.gg, %st_add.exit245 ], [ %16, %15 ] ; 10 uses
  %i.gh = mul i64 %i.ew, %17
  %i.gi = call ptr @xcalloc(i64 noundef %i.gh, i64 noundef 8) #16 ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ex, i64 64 ; 2 uses
  store ptr %i.gi, ptr %i.gj, align 8, !tbaa !108
  %i.gk = add i64 %.2, 1                          ; 4 uses
  %umax = call i64 @llvm.umax.i64(i64 %i.gk, i64 1) ; 4 uses
  %xtraiter = and i64 %umax, 7                    ; 3 uses
  %i.gl = icmp ult i64 %i.gk, 8
  br i1 %i.gl, label %.epil.preheader, label %st_mult.exit.new

st_mult.exit.new:                                 ; preds = %st_mult.exit
  %unroll_iter = and i64 %umax, -8
  br label %bb.ar

.preheader299.unr-lcssa:                          ; preds = %bb.ar
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader299, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader299.unr-lcssa, %st_mult.exit
  %.epil.init = phi ptr [ %i.gi, %st_mult.exit ], [ %i.hw, %.preheader299.unr-lcssa ]
  %.2204360.epil.init = phi i64 [ 0, %st_mult.exit ], [ %i.hx, %.preheader299.unr-lcssa ]
  %lcmp.mod605 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod605)
  br label %bb.aq

bb.aq:                                            ; preds = %bb.aq, %.epil.preheader
  %i.gm = phi ptr [ %.epil.init, %.epil.preheader ], [ %i.gn, %bb.aq ]
  %.2204360.epil = phi i64 [ %.2204360.epil.init, %.epil.preheader ], [ %i.go, %bb.aq ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.aq ]
  %i.gn = getelementptr inbounds [8 x i8], ptr %i.gm, i64 %17 ; 2 uses
  %i.go = add nuw i64 %.2204360.epil, 1           ; 2 uses
  %i.gp = getelementptr inbounds nuw [72 x i8], ptr %i.ex, i64 %i.go
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 64
  store ptr %i.gn, ptr %i.gq, align 8, !tbaa !108
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader299, label %bb.aq, !llvm.loop !142

.preheader299:                                    ; preds = %bb.aq, %.preheader299.unr-lcssa
  br i1 %i.cv, label %.preheader298.lr.ph, label %.preheader299.._crit_edge365_crit_edge

.preheader299.._crit_edge365_crit_edge:           ; preds = %.preheader299
  %.pre426 = zext nneg i32 %1 to i64
  br label %._crit_edge365

.preheader298.lr.ph:                              ; preds = %.preheader299
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.gs = trunc i64 %.2 to i32                    ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %3, i64 1872
  %i.gu = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.gv = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.gw = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.gx = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.gy = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.gz = getelementptr inbounds nuw i8, ptr %7, i64 36
  %wide.trip.count423 = zext nneg i32 %1 to i64   ; 2 uses
  br label %.preheader298

bb.ar:                                            ; preds = %bb.ar, %st_mult.exit.new
  %i.ha = phi ptr [ %i.gi, %st_mult.exit.new ], [ %i.hw, %bb.ar ]
  %.2204360 = phi i64 [ 0, %st_mult.exit.new ], [ %i.hx, %bb.ar ] ; 8 uses
  %niter = phi i64 [ 0, %st_mult.exit.new ], [ %niter.next.7, %bb.ar ]
  %i.hb = getelementptr inbounds [8 x i8], ptr %i.ha, i64 %17 ; 2 uses
  %i.hc = getelementptr inbounds nuw [72 x i8], ptr %i.ex, i64 %.2204360
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 136
  store ptr %i.hb, ptr %i.hd, align 8, !tbaa !108
  %i.he = getelementptr inbounds [8 x i8], ptr %i.hb, i64 %17 ; 2 uses
  %i.hf = getelementptr inbounds nuw [72 x i8], ptr %i.ex, i64 %.2204360
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 208
  store ptr %i.he, ptr %i.hg, align 8, !tbaa !108
  %i.hh = getelementptr inbounds [8 x i8], ptr %i.he, i64 %17 ; 2 uses
  %i.hi = getelementptr inbounds nuw [72 x i8], ptr %i.ex, i64 %.2204360
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 280
  store ptr %i.hh, ptr %i.hj, align 8, !tbaa !108
  %i.hk = getelementptr inbounds [8 x i8], ptr %i.hh, i64 %17 ; 2 uses
  %i.hl = getelementptr inbounds nuw [72 x i8], ptr %i.ex, i64 %.2204360
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 352
  store ptr %i.hk, ptr %i.hm, align 8, !tbaa !108
  %i.hn = getelementptr inbounds [8 x i8], ptr %i.hk, i64 %17 ; 2 uses
  %i.ho = getelementptr inbounds nuw [72 x i8], ptr %i.ex, i64 %.2204360
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 424
  store ptr %i.hn, ptr %i.hp, align 8, !tbaa !108
  %i.hq = getelementptr inbounds [8 x i8], ptr %i.hn, i64 %17 ; 2 uses
  %i.hr = getelementptr inbounds nuw [72 x i8], ptr %i.ex, i64 %.2204360
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 496
  store ptr %i.hq, ptr %i.hs, align 8, !tbaa !108
  %i.ht = getelementptr inbounds [8 x i8], ptr %i.hq, i64 %17 ; 2 uses
  %i.hu = getelementptr inbounds nuw [72 x i8], ptr %i.ex, i64 %.2204360
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 568
  store ptr %i.ht, ptr %i.hv, align 8, !tbaa !108
  %i.hw = getelementptr inbounds [8 x i8], ptr %i.ht, i64 %17 ; 3 uses
  %i.hx = add nuw i64 %.2204360, 8                ; 3 uses
  %i.hy = getelementptr inbounds nuw [72 x i8], ptr %i.ex, i64 %i.hx
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 64
  store ptr %i.hw, ptr %i.hz, align 8, !tbaa !108
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.preheader299.unr-lcssa, label %bb.ar, !llvm.loop !143

.preheader298:                                    ; preds = %.preheader298.lr.ph, %bb.ct
  %indvars.iv420 = phi i64 [ 0, %.preheader298.lr.ph ], [ %indvars.iv.next421, %bb.ct ] ; 13 uses
  %.not372 = icmp eq i64 %indvars.iv420, 0
  br i1 %.not372, label %.thread288, label %.lr.ph362

.lr.ph362:                                        ; preds = %.preheader298
  %i.ia = getelementptr inbounds nuw [56 x i8], ptr %i.gr, i64 %indvars.iv420
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 8 ; 2 uses
  br label %bb.as

bb.as:                                            ; preds = %.lr.ph362, %bb.az
  %indvars.iv415 = phi i64 [ 0, %.lr.ph362 ], [ %indvars.iv.next416, %bb.az ] ; 5 uses
  %i.ic = getelementptr inbounds nuw [56 x i8], ptr %i.gr, i64 %indvars.iv415
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 8 ; 2 uses
  %i.ie = load i128, ptr %i.ib, align 1
  %i.if = load i128, ptr %i.id, align 1
  %i.ig = xor i128 %i.ie, %i.if
  %i.ih = getelementptr i8, ptr %i.ib, i64 16
  %i.ii = getelementptr i8, ptr %i.id, i64 16
  %i.ij = load i128, ptr %i.ih, align 1
  %i.ik = load i128, ptr %i.ii, align 1
  %i.il = xor i128 %i.ij, %i.ik
  %i.im = or i128 %i.ig, %i.il
  %i.in = icmp ne i128 %i.im, 0
  %i.io = zext i1 %i.in to i32
  %.not.i247.not = icmp eq i32 %i.io, 0
  br i1 %.not.i247.not, label %bb.at, label %bb.az

bb.at:                                            ; preds = %bb.as
  %i.ip = shl nuw i64 1, %indvars.iv420           ; 2 uses
  %i.iq = shl nuw i64 1, %indvars.iv415           ; 2 uses
  br label %bb.au

bb.au:                                            ; preds = %bb.ay, %bb.at
  %.02432.i = phi i64 [ 0, %bb.at ], [ %i.jh, %bb.ay ]
  %.02531.i = phi ptr [ %i.ex, %bb.at ], [ %i.jg, %bb.ay ] ; 5 uses
  %i.ir = load ptr, ptr %.02531.i, align 8, !tbaa !214 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %.02531.i, i64 64
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !108 ; 2 uses
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.it, i64 %indvars.iv415
  %i.iv = load i64, ptr %i.iu, align 8, !tbaa !78
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.it, i64 %indvars.iv420
  store i64 %i.iv, ptr %i.iw, align 8, !tbaa !78
  %.not2629.i = icmp eq ptr %i.ir, null
  br i1 %.not2629.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.au, %bb.aw
  %.030.i = phi ptr [ %i.jb, %bb.aw ], [ %i.ir, %bb.au ] ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.030.i, i64 24 ; 2 uses
  %i.iy = load i64, ptr %i.ix, align 8, !tbaa !78 ; 2 uses
  %i.iz = and i64 %i.iy, %i.iq
  %.not28.i = icmp eq i64 %i.iz, 0
  br i1 %.not28.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %.lr.ph.i
  %i.ja = or i64 %i.iy, %i.ip
  store i64 %i.ja, ptr %i.ix, align 8, !tbaa !78
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %.lr.ph.i
  %i.jb = load ptr, ptr %.030.i, align 8, !tbaa !110 ; 2 uses
  %.not26.i = icmp eq ptr %i.jb, null
  br i1 %.not26.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !144

._crit_edge.i:                                    ; preds = %bb.aw, %bb.au
  %i.jc = getelementptr inbounds nuw i8, ptr %.02531.i, i64 56 ; 2 uses
  %i.jd = load i64, ptr %i.jc, align 8, !tbaa !111 ; 2 uses
  %i.je = and i64 %i.jd, %i.iq
  %.not27.i = icmp eq i64 %i.je, 0
  br i1 %.not27.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %._crit_edge.i
  %i.jf = or i64 %i.jd, %i.ip
  store i64 %i.jf, ptr %i.jc, align 8, !tbaa !111
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %._crit_edge.i
  %i.jg = getelementptr inbounds nuw i8, ptr %.02531.i, i64 72
  %i.jh = add nuw i64 %.02432.i, 1                ; 2 uses
  %exitcond.i = icmp eq i64 %i.jh, %umax
  br i1 %exitcond.i, label %bb.ba, label %bb.au, !llvm.loop !145

bb.az:                                            ; preds = %bb.as
  %indvars.iv.next416 = add nuw nsw i64 %indvars.iv415, 1 ; 2 uses
  %exitcond419.not = icmp eq i64 %indvars.iv.next416, %indvars.iv420
  br i1 %exitcond419.not, label %.thread288, label %bb.as, !llvm.loop !146

bb.ba:                                            ; preds = %bb.ay
  %i.ji = getelementptr inbounds nuw i8, ptr %.02531.i, i64 136
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !108 ; 2 uses
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.jj, i64 %indvars.iv415
  %i.jl = load i64, ptr %i.jk, align 8, !tbaa !78
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.jj, i64 %indvars.iv420
  store i64 %i.jl, ptr %i.jm, align 8, !tbaa !78
  br label %bb.ct

.thread288:                                       ; preds = %bb.az, %.preheader298
  %i.jn = load ptr, ptr %i.k, align 8, !tbaa !196
  %i.jo = getelementptr inbounds nuw [56 x i8], ptr %i.gr, i64 %indvars.iv420 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 4
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !73
  %i.jr = load ptr, ptr %i.o, align 8, !tbaa !77
  %i.js = load i32, ptr %i.gt, align 8, !tbaa !215 ; 2 uses
  %i.jt = shl nuw i64 1, %indvars.iv420           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  br i1 %.2201, label %bb.bb, label %combine_diff.exit

bb.bb:                                            ; preds = %.thread288
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jo, i64 8 ; 2 uses
  %i.jv = sext i32 %i.js to i64
  %i.jw = call fastcc ptr @grab_blob(ptr noundef %i.jn, ptr noundef nonnull %i.ju, i32 noundef %i.jq, ptr noundef %i.a, ptr noundef %.0191, ptr noundef %i.jr)
  store ptr %i.jw, ptr %6, align 8, !tbaa !211
  %i.jx = load i64, ptr %i.a, align 8, !tbaa !78
  store i64 %i.jx, ptr %i.gu, align 8, !tbaa !212
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.gv, i8 0, i64 32, i1 false)
  store i64 %i.jv, ptr %4, align 8, !tbaa !217
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %5, i8 0, i64 48, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %7, i8 0, i64 56, i1 false)
  store i64 %i.jt, ptr %i.gw, align 8, !tbaa !114
  store ptr %i.ex, ptr %i.gx, align 8, !tbaa !115
  store i32 1, ptr %7, align 8, !tbaa !116
  store i32 %1, ptr %i.gy, align 8, !tbaa !117
  %i.jy = trunc nuw nsw i64 %indvars.iv420 to i32 ; 2 uses
  store i32 %i.jy, ptr %i.gz, align 4, !tbaa !118
  %i.jz = call i32 @xdi_diff_outf(ptr noundef nonnull %6, ptr noundef nonnull %8, ptr noundef nonnull @consume_hunk, ptr noundef nonnull @consume_line, ptr noundef nonnull %7, ptr noundef nonnull %4, ptr noundef nonnull %5) #16
  %.not55.i = icmp eq i32 %i.jz, 0
  br i1 %.not55.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ka = call ptr @oid_to_hex(ptr noundef nonnull %i.ju) #16
  call void (ptr, ...) @die(ptr noundef nonnull @.str.42, ptr noundef %i.ka) #17
  unreachable

bb.bd:                                            ; preds = %bb.bb
  %i.kb = load ptr, ptr %6, align 8, !tbaa !211
  call void @free(ptr noundef %i.kb) #16
  %i.kc = insertelement <4 x i32> poison, i32 %i.js, i64 0
  %i.kd = shufflevector <4 x i32> %i.kc, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ke = and <4 x i32> %i.kd, <i32 2, i32 4, i32 6, i32 30>
  %i.kf = icmp eq <4 x i32> %i.ke, zeroinitializer ; 5 uses
  %i.kg = shl nuw i32 1, %i.jy
  %i.kh = sext i32 %i.kg to i64
  %i.ki = extractelement <4 x i1> %i.kf, i64 0
  %i.kj = extractelement <4 x i1> %i.kf, i64 2
  %i.kk = extractelement <4 x i1> %i.kf, i64 3
  %i.kl = extractelement <4 x i1> %i.kf, i64 1
  %i.km = extractelement <4 x i1> %i.kf, i64 1
  br label %bb.be

bb.be:                                            ; preds = %bb.cr, %bb.bd
  %.079.i = phi i32 [ 1, %bb.bd ], [ %.3.i, %bb.cr ] ; 3 uses
  %.05278.i = phi i32 [ 0, %bb.bd ], [ %i.sz, %bb.cr ] ; 3 uses
  %i.kn = zext i32 %.079.i to i64
  %i.ko = zext i32 %.05278.i to i64
  %i.kp = getelementptr inbounds nuw [72 x i8], ptr %i.ex, i64 %i.ko ; 7 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 64
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !108
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.kr, i64 %indvars.iv420
  store i64 %i.kn, ptr %i.ks, align 8, !tbaa !78
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kp, i64 16 ; 2 uses
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !119 ; 7 uses
  %.not57.i = icmp eq ptr %i.ku, null
  %.05174.pre.i = load ptr, ptr %i.kp, align 8, !tbaa !110 ; 9 uses
  br i1 %.not57.i, label %bb.cp, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kp, i64 8 ; 4 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kp, i64 32
  %i.kx = load i32, ptr %i.kw, align 8, !tbaa !120 ; 6 uses
  %i.ky = load i32, ptr %i.kv, align 8, !tbaa !74 ; 11 uses
  %.not.i.i = icmp eq ptr %.05174.pre.i, null
  br i1 %.not.i.i, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  store i32 %i.kx, ptr %i.kv, align 8, !tbaa !74
  br label %coalesce_lines.exit.i

bb.bh:                                            ; preds = %bb.bf
  %i.kz = sext i32 %i.ky to i64                   ; 2 uses
  %i.la = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.kz, i64 1) ; 2 uses
  %i.lb = extractvalue { i64, i1 } %i.la, 1
  br i1 %i.lb, label %bb.bi, label %st_add.exit186.i.i

bb.bi:                                            ; preds = %bb.bh
  call void (ptr, ...) @die(ptr noundef nonnull @.str.49, i64 noundef %i.kz, i64 noundef 1) #17
  unreachable

st_add.exit186.i.i:                               ; preds = %bb.bh
  %i.lc = extractvalue { i64, i1 } %i.la, 0       ; 2 uses
  %i.ld = call ptr @xcalloc(i64 noundef %i.lc, i64 noundef 8) #16 ; 4 uses
  %i.le = call ptr @xcalloc(i64 noundef %i.lc, i64 noundef 8) #16 ; 6 uses
  %.not170204.i.i = icmp slt i32 %i.ky, 0         ; 3 uses
  br i1 %.not170204.i.i, label %.preheader197.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %st_add.exit186.i.i
  %i.lf = sext i32 %i.kx to i64                   ; 2 uses
  %i.lg = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.lf, i64 1) ; 2 uses
  %i.lh = extractvalue { i64, i1 } %i.lg, 1
  %i.li = extractvalue { i64, i1 } %i.lg, 0       ; 2 uses
  br i1 %i.lh, label %bb.bj, label %st_add.exit188.preheader.i.i

st_add.exit188.preheader.i.i:                     ; preds = %.lr.ph.i.i
  %i.lj = add nuw i32 %i.ky, 1
  %wide.trip.count.i.i = zext i32 %i.lj to i64
  br label %st_add.exit188.i.i

.preheader197.i.i:                                ; preds = %st_add.exit188.i.i, %st_add.exit186.i.i
  %.not171206.i.i = icmp slt i32 %i.kx, 1
  br i1 %.not171206.i.i, label %.preheader196.i.i, label %.lr.ph208.i.i

.lr.ph208.i.i:                                    ; preds = %.preheader197.i.i
  %i.lk = load ptr, ptr %i.le, align 8, !tbaa !121 ; 2 uses
  %i.ll = add nuw i32 %i.kx, 1                    ; 3 uses
  %wide.trip.count259.i.i = zext i32 %i.ll to i64 ; 2 uses
  %i.lm = zext nneg i32 %i.kx to i64              ; 2 uses
  %min.iters.check568 = icmp ult i32 %i.kx, 8
  br i1 %min.iters.check568, label %scalar.ph567.preheader, label %vector.ph569

vector.ph569:                                     ; preds = %.lr.ph208.i.i
  %n.vec570 = and i64 %i.lm, 2147483640           ; 3 uses
  %i.ln = or disjoint i64 %n.vec570, 1
  br label %vector.body571

vector.body571:                                   ; preds = %vector.body571, %vector.ph569
  %index572 = phi i64 [ 0, %vector.ph569 ], [ %index.next573, %vector.body571 ] ; 2 uses
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %i.lk, i64 %index572 ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 4
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lo, i64 20
  store <4 x i32> splat (i32 2), ptr %i.lp, align 4, !tbaa !74
  store <4 x i32> splat (i32 2), ptr %i.lq, align 4, !tbaa !74
  %index.next573 = add nuw i64 %index572, 8       ; 2 uses
  %i.lr = icmp eq i64 %index.next573, %n.vec570
  br i1 %i.lr, label %middle.block574, label %vector.body571, !llvm.loop !147

middle.block574:                                  ; preds = %vector.body571
  %cmp.n575 = icmp eq i64 %n.vec570, %i.lm
  br i1 %cmp.n575, label %.preheader196.i.thread.i, label %scalar.ph567.preheader

scalar.ph567.preheader:                           ; preds = %.lr.ph208.i.i, %middle.block574
  %indvars.iv256.i.i.ph = phi i64 [ 1, %.lr.ph208.i.i ], [ %i.ln, %middle.block574 ]
  br label %scalar.ph567

st_add.exit188.i.i:                               ; preds = %st_add.exit188.i.i, %st_add.exit188.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %st_add.exit188.preheader.i.i ], [ %indvars.iv.next.i.i, %st_add.exit188.i.i ] ; 3 uses
  %i.ls = call ptr @xcalloc(i64 noundef %i.li, i64 noundef 4) #16
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %i.ld, i64 %indvars.iv.i.i
  store ptr %i.ls, ptr %i.lt, align 8, !tbaa !218
  %i.lu = call ptr @xcalloc(i64 noundef %i.li, i64 noundef 4) #16 ; 2 uses
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.le, i64 %indvars.iv.i.i
  store ptr %i.lu, ptr %i.lv, align 8, !tbaa !121
  store i32 1, ptr %i.lu, align 4, !tbaa !74
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.preheader197.i.i, label %st_add.exit188.i.i, !llvm.loop !148

bb.bj:                                            ; preds = %.lr.ph.i.i
  call void (ptr, ...) @die(ptr noundef nonnull @.str.49, i64 noundef %i.lf, i64 noundef 1) #17
  unreachable

.preheader196.i.i:                                ; preds = %.preheader197.i.i
  %.not172217.i.i = icmp slt i32 %i.ky, 1
  br i1 %.not172217.i.i, label %.preheader194.i.i, label %.preheader195.us.i.i.preheader

.preheader195.us.i.i.preheader:                   ; preds = %.preheader196.i.i
  %xtraiter606 = and i32 %i.ky, 3                 ; 3 uses
  %i.lw = icmp ult i32 %i.ky, 4
  br i1 %i.lw, label %.preheader195.us.i.i.epil.preheader, label %.preheader195.us.i.i.preheader.new

.preheader195.us.i.i.preheader.new:               ; preds = %.preheader195.us.i.i.preheader
  %unroll_iter611 = and i32 %i.ky, 2147483644
  br label %.preheader195.us.i.i

.preheader196.i.thread.i:                         ; preds = %scalar.ph567, %middle.block574
  %.not172217.i105.i = icmp slt i32 %i.ky, 1
  br i1 %.not172217.i105.i, label %.preheader194.i.i, label %.preheader195.preheader.i.i

.preheader195.preheader.i.i:                      ; preds = %.preheader196.i.thread.i
  %i.lx = add nuw i32 %i.ky, 1
  %wide.trip.count269.i.i = zext i32 %i.lx to i64
  br label %.preheader195.i.i

.preheader195.us.i.i:                             ; preds = %.preheader195.us.i.i, %.preheader195.us.i.i.preheader.new
  %.0148218.us.i.i = phi ptr [ %.05174.pre.i, %.preheader195.us.i.i.preheader.new ], [ %spec.select185.us.i.i.3, %.preheader195.us.i.i ] ; 2 uses
  %niter612 = phi i32 [ 0, %.preheader195.us.i.i.preheader.new ], [ %niter612.next.3, %.preheader195.us.i.i ]
  %i.ly = load ptr, ptr %.0148218.us.i.i, align 8, !tbaa !110 ; 2 uses
  %.not181.us.i.i = icmp eq ptr %i.ly, null
  %spec.select185.us.i.i = select i1 %.not181.us.i.i, ptr %.0148218.us.i.i, ptr %i.ly ; 2 uses
  %i.lz = load ptr, ptr %spec.select185.us.i.i, align 8, !tbaa !110 ; 2 uses
  %.not181.us.i.i.1 = icmp eq ptr %i.lz, null
  %spec.select185.us.i.i.1 = select i1 %.not181.us.i.i.1, ptr %spec.select185.us.i.i, ptr %i.lz ; 2 uses
  %i.ma = load ptr, ptr %spec.select185.us.i.i.1, align 8, !tbaa !110 ; 2 uses
  %.not181.us.i.i.2 = icmp eq ptr %i.ma, null
  %spec.select185.us.i.i.2 = select i1 %.not181.us.i.i.2, ptr %spec.select185.us.i.i.1, ptr %i.ma ; 2 uses
  %i.mb = load ptr, ptr %spec.select185.us.i.i.2, align 8, !tbaa !110 ; 2 uses
  %.not181.us.i.i.3 = icmp eq ptr %i.mb, null
  %spec.select185.us.i.i.3 = select i1 %.not181.us.i.i.3, ptr %spec.select185.us.i.i.2, ptr %i.mb ; 3 uses
  %niter612.next.3 = add nuw nsw i32 %niter612, 4 ; 2 uses
  %niter612.ncmp.3 = icmp eq i32 %niter612.next.3, %unroll_iter611
  br i1 %niter612.ncmp.3, label %.lr.ph227.preheader.i.i.loopexit.unr-lcssa, label %.preheader195.us.i.i, !llvm.loop !149

scalar.ph567:                                     ; preds = %scalar.ph567.preheader, %scalar.ph567
  %indvars.iv256.i.i = phi i64 [ %indvars.iv.next257.i.i, %scalar.ph567 ], [ %indvars.iv256.i.i.ph, %scalar.ph567.preheader ] ; 2 uses
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %i.lk, i64 %indvars.iv256.i.i
  store i32 2, ptr %i.mc, align 4, !tbaa !74
  %indvars.iv.next257.i.i = add nuw nsw i64 %indvars.iv256.i.i, 1 ; 2 uses
  %exitcond260.not.i.i = icmp eq i64 %indvars.iv.next257.i.i, %wide.trip.count259.i.i
  br i1 %exitcond260.not.i.i, label %.preheader196.i.thread.i, label %scalar.ph567, !llvm.loop !150

.preheader195.i.i:                                ; preds = %._crit_edge.i.i, %.preheader195.preheader.i.i
  %indvars.iv266.i.i = phi i64 [ 1, %.preheader195.preheader.i.i ], [ %indvars.iv.next267.i.i, %._crit_edge.i.i ] ; 3 uses
  %.0148218.i.i = phi ptr [ %.05174.pre.i, %.preheader195.preheader.i.i ], [ %spec.select185.i.i, %._crit_edge.i.i ] ; 4 uses
  %i.md = getelementptr inbounds nuw i8, ptr %.0148218.i.i, i64 32 ; 6 uses
  %i.me = getelementptr inbounds nuw i8, ptr %.0148218.i.i, i64 16
  %i.mf = getelementptr [8 x i8], ptr %i.ld, i64 %indvars.iv266.i.i ; 3 uses
  %i.mg = getelementptr i8, ptr %i.mf, i64 -8     ; 2 uses
  %i.mh = getelementptr inbounds nuw [8 x i8], ptr %i.le, i64 %indvars.iv266.i.i
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !121
  br label %bb.bk

.preheader194.i.i:                                ; preds = %._crit_edge.i.i, %.preheader196.i.thread.i, %.preheader196.i.i
  %.0148.lcssa.i.i = phi ptr [ %.05174.pre.i, %.preheader196.i.i ], [ %.05174.pre.i, %.preheader196.i.thread.i ], [ %spec.select185.i.i, %._crit_edge.i.i ] ; 2 uses
  %.0142.lcssa.i.i = phi ptr [ null, %.preheader196.i.i ], [ null, %.preheader196.i.thread.i ], [ %spec.select.i.i, %._crit_edge.i.i ] ; 2 uses
  %.1.lcssa.i.i = phi i32 [ 1, %.preheader196.i.i ], [ %i.ll, %.preheader196.i.thread.i ], [ %i.ll, %._crit_edge.i.i ] ; 2 uses
  br i1 %.not170204.i.i, label %._crit_edge228.i.i, label %.lr.ph227.preheader.i.i

.lr.ph227.preheader.i.i.loopexit.unr-lcssa:       ; preds = %.preheader195.us.i.i
  %lcmp.mod608.not.a = icmp eq i32 %xtraiter606, 0
  br i1 %lcmp.mod608.not.a, label %.lr.ph227.preheader.i.i, label %.preheader195.us.i.i.epil.preheader

.preheader195.us.i.i.epil.preheader:              ; preds = %.lr.ph227.preheader.i.i.loopexit.unr-lcssa, %.preheader195.us.i.i.preheader
  %.0148218.us.i.i.epil.init = phi ptr [ %.05174.pre.i, %.preheader195.us.i.i.preheader ], [ %spec.select185.us.i.i.3, %.lr.ph227.preheader.i.i.loopexit.unr-lcssa ]
  %lcmp.mod610 = icmp ne i32 %xtraiter606, 0
  call void @llvm.assume(i1 %lcmp.mod610)
  br label %.preheader195.us.i.i.epil

end_hunk_0
begin_hunk_1_@show_patch_diff:bb.a
.preheader.i:                                     ; preds = %._crit_edge224.i, %bb.dr
  %indvars.iv261.i = phi i64 [ %indvars.iv.next262.i.1, %bb.dr ], [ 0, %._crit_edge224.i ] ; 4 uses
  %.0120226.i = phi i32 [ %spec.select165.i.1, %bb.dr ], [ 0, %._crit_edge224.i ] ; 3 uses
  %i.acw = getelementptr inbounds nuw i8, ptr %.0126198.i, i64 %indvars.iv261.i
  %i.acx = load i8, ptr %i.acw, align 1, !tbaa !101 ; 2 uses
  switch i8 %i.acx, label %.preheader.i.1 [
    i8 10, label %bb.ds
    i8 0, label %bb.ds
  ]

.preheader.i.1:                                   ; preds = %.preheader.i
  %i.acy = zext i8 %i.acx to i64
  %i.acz = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.acy
  %i.ada = load i8, ptr %i.acz, align 1, !tbaa !101
  %i.adb = and i8 %i.ada, 1
  %.not155.i = icmp eq i8 %i.adb, 0
  %i.adc = trunc nuw nsw i64 %indvars.iv261.i to i32
  %spec.select165.i = select i1 %.not155.i, i32 %i.adc, i32 %.0120226.i ; 3 uses
  %indvars.iv.next262.i = or disjoint i64 %indvars.iv261.i, 1 ; 2 uses
  %i.add = getelementptr inbounds nuw i8, ptr %.0126198.i, i64 %indvars.iv.next262.i
  %i.ade = load i8, ptr %i.add, align 1, !tbaa !101 ; 2 uses
  switch i8 %i.ade, label %bb.dr [
    i8 10, label %bb.ds
    i8 0, label %bb.ds
  ]

bb.dr:                                            ; preds = %.preheader.i.1
  %i.adf = zext i8 %i.ade to i64
  %i.adg = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.adf
  %i.adh = load i8, ptr %i.adg, align 1, !tbaa !101
  %i.adi = and i8 %i.adh, 1
  %.not155.i.1 = icmp eq i8 %i.adi, 0
  %i.adj = trunc nuw nsw i64 %indvars.iv.next262.i to i32
  %spec.select165.i.1 = select i1 %.not155.i.1, i32 %i.adj, i32 %spec.select165.i ; 2 uses
  %indvars.iv.next262.i.1 = add nuw nsw i64 %indvars.iv261.i, 2 ; 2 uses
  %exitcond264.not.i.1 = icmp eq i64 %indvars.iv.next262.i.1, 40
  br i1 %exitcond264.not.i.1, label %bb.ds, label %.preheader.i, !llvm.loop !187

bb.ds:                                            ; preds = %bb.dr, %.preheader.i.1, %.preheader.i.1, %.preheader.i, %.preheader.i
  %.0120.lcssa.i = phi i32 [ %.0120226.i, %.preheader.i ], [ %.0120226.i, %.preheader.i ], [ %spec.select165.i.1, %bb.dr ], [ %spec.select165.i, %.preheader.i.1 ], [ %spec.select165.i, %.preheader.i.1 ] ; 2 uses
  %.not156.i = icmp eq i32 %.0120.lcssa.i, 0
  br i1 %.not156.i, label %.loopexit.i, label %.lr.ph229.preheader.i

.lr.ph229.preheader.i:                            ; preds = %bb.ds
  %i.adk = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, ptr noundef %i.aaj, ptr noundef %i.aai, ptr noundef %i.aaj, ptr noundef %i.aaf) ; 0 uses
  %wide.trip.count268.i = zext i32 %.0120.lcssa.i to i64
  br label %.lr.ph229.i

.lr.ph229.i:                                      ; preds = %.lr.ph229.i, %.lr.ph229.preheader.i
  %indvars.iv265.i = phi i64 [ 0, %.lr.ph229.preheader.i ], [ %indvars.iv.next266.i, %.lr.ph229.i ] ; 2 uses
  %i.adl = getelementptr inbounds nuw i8, ptr %.0126198.i, i64 %indvars.iv265.i
  %i.adm = load i8, ptr %i.adl, align 1, !tbaa !101
  %i.adn = sext i8 %i.adm to i32
  %i.ado = load ptr, ptr @stdout, align 8, !tbaa !69
  %i.adp = call i32 @putc(i32 noundef %i.adn, ptr noundef %i.ado), !inline_history !0 ; 0 uses
  %indvars.iv.next266.i = add nuw nsw i64 %indvars.iv265.i, 1 ; 2 uses
  %exitcond269.not.i = icmp eq i64 %indvars.iv.next266.i, %wide.trip.count268.i
  br i1 %exitcond269.not.i, label %.loopexit.i, label %.lr.ph229.i, !llvm.loop !188

.loopexit.i:                                      ; preds = %.lr.ph229.i, %bb.ds, %._crit_edge224.i
  %puts.i = call i32 @puts(ptr nonnull dereferenceable(1) %i.aaj) ; 0 uses
  %i.adq = icmp ult i64 %.1135197.i, %.0130.lcssa.i
  br i1 %i.adq, label %.lr.ph246.i, label %.thread179.i

.lr.ph246.i:                                      ; preds = %.loopexit.i, %bb.ed
  %.2136244.i = phi i64 [ %i.adr, %bb.ed ], [ %.1135197.i, %.loopexit.i ] ; 3 uses
  %i.adr = add i64 %.2136244.i, 1                 ; 3 uses
  %i.ads = getelementptr inbounds nuw [72 x i8], ptr %i.ex, i64 %.2136244.i ; 4 uses
  %i.adt = getelementptr inbounds nuw i8, ptr %i.ads, i64 56 ; 3 uses
  %i.adu = load i64, ptr %i.adt, align 8, !tbaa !111
  %i.adv = and i64 %i.adu, %i.vz
  %.not157.i = icmp eq i64 %i.adv, 0
  br i1 %.not157.i, label %bb.dt, label %._crit_edge238.i

bb.dt:                                            ; preds = %.lr.ph246.i
  %i.adw = load ptr, ptr %i.ads, align 8, !tbaa !214 ; 3 uses
  %.not158234.i = icmp eq ptr %i.adw, null
  br i1 %.not158234.i, label %._crit_edge238.i, label %.lr.ph237.i

.lr.ph237.i:                                      ; preds = %bb.dt
  br i1 %i.cv, label %.lr.ph232.us.i, label %.lr.ph237.split.i

.lr.ph232.us.i:                                   ; preds = %.lr.ph237.i, %show_line_to_eol.exit.us.i
  %.0119235.us.i = phi ptr [ %i.aen, %show_line_to_eol.exit.us.i ], [ %i.adw, %.lr.ph237.i ] ; 3 uses
  %i.adx = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, ptr noundef %i.g, ptr noundef %i.aah) ; 0 uses
  %i.ady = getelementptr inbounds nuw i8, ptr %.0119235.us.i, i64 24
  br label %bb.du

bb.du:                                            ; preds = %bb.du, %.lr.ph232.us.i
  %indvars.iv270.i = phi i64 [ 0, %.lr.ph232.us.i ], [ %indvars.iv.next271.i, %bb.du ] ; 2 uses
  %i.adz = load i64, ptr %i.ady, align 8, !tbaa !78
  %i.aea = shl nuw i64 1, %indvars.iv270.i
  %i.aeb = and i64 %i.adz, %i.aea
  %.not162.us.i = icmp eq i64 %i.aeb, 0
  %i.aec = load ptr, ptr @stdout, align 8, !tbaa !69
  %..i266 = select i1 %.not162.us.i, i32 32, i32 45
  %i.aed = call i32 @putc(i32 noundef %..i266, ptr noundef %i.aec) ; 0 uses
  %indvars.iv.next271.i = add nuw nsw i64 %indvars.iv270.i, 1 ; 2 uses
  %exitcond274.not.i = icmp eq i64 %indvars.iv.next271.i, %.pre-phi
  br i1 %exitcond274.not.i, label %._crit_edge233.us.i, label %bb.du, !llvm.loop !189

bb.dv:                                            ; preds = %._crit_edge233.us.i
  %sext.us.i = shl i64 %i.aep, 32
  %i.aee = ashr exact i64 %sext.us.i, 32
  %i.aef = getelementptr i8, ptr %i.aeo, i64 %i.aee
  %i.aeg = getelementptr i8, ptr %i.aef, i64 -1
  %i.aeh = load i8, ptr %i.aeg, align 1, !tbaa !101
  %.fr.i.us.i = freeze i8 %i.aeh
  %i.aei = icmp eq i8 %.fr.i.us.i, 13             ; 2 uses
  %.neg.i.us.i = sext i1 %i.aei to i32
  %i.aej = add i32 %.neg.i.us.i, %i.aeq
  %spec.select.i.us.i = select i1 %i.aei, ptr @.str.47, ptr @.str.4
  br label %show_line_to_eol.exit.us.i

show_line_to_eol.exit.us.i:                       ; preds = %._crit_edge233.us.i, %bb.dv
  %i.aek = phi i32 [ 0, %._crit_edge233.us.i ], [ %i.aej, %bb.dv ]
  %i.ael = phi ptr [ @.str.4, %._crit_edge233.us.i ], [ %spec.select.i.us.i, %bb.dv ]
  %i.aem = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.46, i32 noundef %i.aek, ptr noundef nonnull %i.aeo, ptr noundef nonnull %i.aaj, ptr noundef nonnull %i.ael) ; 0 uses
  %i.aen = load ptr, ptr %.0119235.us.i, align 8, !tbaa !110 ; 2 uses
  %.not158.us.i = icmp eq ptr %i.aen, null
  br i1 %.not158.us.i, label %._crit_edge238.i, label %.lr.ph232.us.i, !llvm.loop !190

._crit_edge233.us.i:                              ; preds = %bb.du
  %i.aeo = getelementptr inbounds nuw i8, ptr %.0119235.us.i, i64 32 ; 3 uses
  %i.aep = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aeo) #18 ; 2 uses
  %i.aeq = trunc i64 %i.aep to i32                ; 2 uses
  %.not.i167.us.i = icmp eq i32 %i.aeq, 0
  br i1 %.not.i167.us.i, label %show_line_to_eol.exit.us.i, label %bb.dv

.lr.ph237.split.i:                                ; preds = %.lr.ph237.i, %show_line_to_eol.exit.i
  %.0119235.i = phi ptr [ %i.afe, %show_line_to_eol.exit.i ], [ %i.adw, %.lr.ph237.i ] ; 2 uses
  %i.aer = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, ptr noundef %i.g, ptr noundef %i.aah) ; 0 uses
  %i.aes = getelementptr inbounds nuw i8, ptr %.0119235.i, i64 32 ; 3 uses
  %i.aet = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aes) #18 ; 2 uses
  %i.aeu = trunc i64 %i.aet to i32                ; 2 uses
  %.not.i167.i = icmp eq i32 %i.aeu, 0
  br i1 %.not.i167.i, label %show_line_to_eol.exit.i, label %bb.dw

bb.dw:                                            ; preds = %.lr.ph237.split.i
  %sext.i = shl i64 %i.aet, 32
  %i.aev = ashr exact i64 %sext.i, 32
  %i.aew = getelementptr i8, ptr %i.aes, i64 %i.aev
  %i.aex = getelementptr i8, ptr %i.aew, i64 -1
  %i.aey = load i8, ptr %i.aex, align 1, !tbaa !101
  %.fr.i.i = freeze i8 %i.aey
  %i.aez = icmp eq i8 %.fr.i.i, 13                ; 2 uses
  %.neg.i.i = sext i1 %i.aez to i32
  %i.afa = add i32 %.neg.i.i, %i.aeu
  %spec.select.i.i265 = select i1 %i.aez, ptr @.str.47, ptr @.str.4
  br label %show_line_to_eol.exit.i

show_line_to_eol.exit.i:                          ; preds = %bb.dw, %.lr.ph237.split.i
  %i.afb = phi i32 [ 0, %.lr.ph237.split.i ], [ %i.afa, %bb.dw ]
  %i.afc = phi ptr [ @.str.4, %.lr.ph237.split.i ], [ %spec.select.i.i265, %bb.dw ]
  %i.afd = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.46, i32 noundef %i.afb, ptr noundef nonnull %i.aes, ptr noundef nonnull %i.aaj, ptr noundef nonnull %i.afc) ; 0 uses
  %i.afe = load ptr, ptr %.0119235.i, align 8, !tbaa !110 ; 2 uses
  %.not158.i = icmp eq ptr %i.afe, null
  br i1 %.not158.i, label %._crit_edge238.i, label %.lr.ph237.split.i, !llvm.loop !190

._crit_edge238.i:                                 ; preds = %show_line_to_eol.exit.i, %show_line_to_eol.exit.us.i, %bb.dt, %.lr.ph246.i
  %.not185.i = icmp ugt i64 %.2, %.2136244.i
  br i1 %.not185.i, label %bb.dx, label %.thread179.i

bb.dx:                                            ; preds = %._crit_edge238.i
  %i.aff = load ptr, ptr @stdout, align 8, !tbaa !69
  %i.afg = call i32 @fputs(ptr noundef %i.g, ptr noundef %i.aff) ; 0 uses
  %i.afh = load i64, ptr %i.adt, align 8, !tbaa !111
  %i.afi = and i64 %i.afh, %i.tj
  %.not159.i = icmp eq i64 %i.afi, 0
  br i1 %.not159.i, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  %i.afj = load i64, ptr @context, align 8, !tbaa !78
  %.not160.i = icmp eq i64 %i.afj, 0
  br i1 %.not160.i, label %bb.ed, label %bb.dz, !llvm.loop !191

bb.dz:                                            ; preds = %bb.dy, %bb.dx
  %.sink298.i = phi ptr [ %i.aai, %bb.dy ], [ %i.aag, %bb.dx ]
  %i.afk = load ptr, ptr @stdout, align 8, !tbaa !69
  %i.afl = call i32 @fputs(ptr noundef %.sink298.i, ptr noundef %i.afk) ; 0 uses
  br i1 %i.cv, label %.lr.ph242.i, label %._crit_edge243.i

.lr.ph242.i:                                      ; preds = %bb.dz, %.lr.ph242.i
  %.0240.i = phi i64 [ %i.afq, %.lr.ph242.i ], [ 1, %bb.dz ] ; 2 uses
  %.1239.i = phi i32 [ %i.afr, %.lr.ph242.i ], [ 0, %bb.dz ]
  %i.afm = load i64, ptr %i.adt, align 8, !tbaa !111
  %i.afn = and i64 %i.afm, %.0240.i
  %.not161.i = icmp eq i64 %i.afn, 0
  %i.afo = load ptr, ptr @stdout, align 8, !tbaa !69
  %.301.i = select i1 %.not161.i, i32 32, i32 43
  %i.afp = call i32 @putc(i32 noundef %.301.i, ptr noundef %i.afo) ; 0 uses
  %i.afq = shl i64 %.0240.i, 1
  %i.afr = add nuw nsw i32 %.1239.i, 1            ; 2 uses
  %exitcond275.not.i = icmp eq i32 %i.afr, %1
  br i1 %exitcond275.not.i, label %._crit_edge243.i, label %.lr.ph242.i, !llvm.loop !192

._crit_edge243.i:                                 ; preds = %.lr.ph242.i, %bb.dz
  %i.afs = getelementptr inbounds nuw i8, ptr %i.ads, i64 40
  %i.aft = load ptr, ptr %i.afs, align 8, !tbaa !209 ; 3 uses
  %i.afu = getelementptr inbounds nuw i8, ptr %i.ads, i64 48
  %i.afv = load i32, ptr %i.afu, align 8, !tbaa !213 ; 2 uses
  %i.afw = icmp slt i32 %i.afv, 0
  br i1 %i.afw, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %._crit_edge243.i
  %i.afx = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aft) #18
  %i.afy = trunc i64 %i.afx to i32
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %._crit_edge243.i
  %.0.i168.i = phi i32 [ %i.afy, %bb.ea ], [ %i.afv, %._crit_edge243.i ] ; 3 uses
  %.not.i169.i = icmp eq i32 %.0.i168.i, 0
  br i1 %.not.i169.i, label %show_line_to_eol.exit173.i, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.afz = sext i32 %.0.i168.i to i64
  %i.aga = getelementptr i8, ptr %i.aft, i64 %i.afz
  %i.agb = getelementptr i8, ptr %i.aga, i64 -1
  %i.agc = load i8, ptr %i.agb, align 1, !tbaa !101
  %.fr.i170.i = freeze i8 %i.agc
  %i.agd = icmp eq i8 %.fr.i170.i, 13             ; 2 uses
  %.neg.i171.i = sext i1 %i.agd to i32
  %i.age = add i32 %.0.i168.i, %.neg.i171.i
  %spec.select.i172.i = select i1 %i.agd, ptr @.str.47, ptr @.str.4
  br label %show_line_to_eol.exit173.i

show_line_to_eol.exit173.i:                       ; preds = %bb.ec, %bb.eb
  %i.agf = phi i32 [ 0, %bb.eb ], [ %i.age, %bb.ec ]
  %i.agg = phi ptr [ @.str.4, %bb.eb ], [ %spec.select.i172.i, %bb.ec ]
  %i.agh = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.46, i32 noundef %i.agf, ptr noundef %i.aft, ptr noundef nonnull %i.aaj, ptr noundef nonnull %i.agg) ; 0 uses
  br label %bb.ed

bb.ed:                                            ; preds = %show_line_to_eol.exit173.i, %bb.dy
  %exitcond276.not.i = icmp eq i64 %i.adr, %.0130.lcssa.i
  br i1 %exitcond276.not.i, label %.thread179.i, label %.lr.ph246.i

.thread179.i:                                     ; preds = %bb.ed, %._crit_edge238.i, %.loopexit.i
  %.4.i = phi i64 [ %.1135197.i, %.loopexit.i ], [ %i.adr, %._crit_edge238.i ], [ %.0130.lcssa.i, %bb.ed ] ; 2 uses
  %.not146196.i = icmp ugt i64 %.4.i, %.2
  br i1 %.not146196.i, label %dump_sline.exit, label %.lr.ph.i260.backedge

dump_sline.exit:                                  ; preds = %.thread179.i, %hunk_comment_line.exit.thread.i, %bb.dm, %give_context.exit
  %i.agi = load ptr, ptr %i.c, align 8, !tbaa !77
  call void @free(ptr noundef %i.agi) #16
  br i1 %.not.i246495, label %._crit_edge369, label %.lr.ph368

.lr.ph368:                                        ; preds = %dump_sline.exit, %.loopexit
  %.3367 = phi i64 [ %i.agm, %.loopexit ], [ 0, %dump_sline.exit ] ; 2 uses
  %i.agj = getelementptr inbounds nuw [72 x i8], ptr %i.ex, i64 %.3367
  %i.agk = load ptr, ptr %i.agj, align 8, !tbaa !214 ; 2 uses
  %.not234 = icmp eq ptr %i.agk, null
  br i1 %.not234, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.lr.ph368, %.preheader
  %.0366 = phi ptr [ %i.agl, %.preheader ], [ %i.agk, %.lr.ph368 ] ; 2 uses
  %i.agl = load ptr, ptr %.0366, align 8, !tbaa !110 ; 2 uses
  call void @free(ptr noundef nonnull %.0366) #16
  %.not235 = icmp eq ptr %i.agl, null
  br i1 %.not235, label %.loopexit, label %.preheader, !llvm.loop !193

.loopexit:                                        ; preds = %.preheader, %.lr.ph368
  %i.agm = add nuw i64 %.3367, 1                  ; 2 uses
  %exitcond425.not = icmp eq i64 %i.agm, %i.ew
  br i1 %exitcond425.not, label %._crit_edge369, label %.lr.ph368, !llvm.loop !194

._crit_edge369:                                   ; preds = %.loopexit, %dump_sline.exit
  %i.agn = load ptr, ptr %i.gj, align 8, !tbaa !108
  call void @free(ptr noundef %i.agn) #16
  call void @free(ptr noundef %i.ex) #16
  br label %bb.ee

.critedge:                                        ; preds = %bb.i
  %i.ago = load ptr, ptr %i.o, align 8, !tbaa !77
  %i.agp = call i32 (ptr, ...) @error_errno(ptr noundef nonnull @.str.11, ptr noundef %i.ago) #16 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  br label %bb.ee

bb.ee:                                            ; preds = %.critedge, %._crit_edge369, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local void @diff_tree_combined(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.diff_queue_struct, align 8  ; 8 uses
  %i.a = alloca ptr, align 8                      ; 7 uses
  %4 = alloca %struct.diff_options, align 8       ; 18 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 1520 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !124  ; 4 uses
  %i.e = trunc i64 %i.d to i32                    ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 1568
  %i.g = load i64, ptr %i.f, align 8, !tbaa !235
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 1976
  %i.i = load i32, ptr %i.h, align 8, !tbaa !236
  %.not118 = icmp eq i32 %i.i, 0
  br i1 %.not118, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #17
  unreachable

bb.e:                                             ; preds = %bb.c
  %.not119 = icmp eq i32 %i.e, 0
  br i1 %.not119, label %bb.az, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 384
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !68
  %.not120 = icmp eq ptr %i.k, null
  br i1 %.not120, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 332 ; 2 uses
  %i.m = load i64, ptr %i.l, align 4
  %i.n = and i64 %i.m, 562949953421312
  %.not121 = icmp eq i64 %i.n, 0
  br i1 %.not121, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  tail call void @show_log(ptr noundef nonnull %2) #16
  %i.o = load i64, ptr %i.l, align 4
  %i.p = and i64 %i.o, 1125899906842624
  %.not122 = icmp eq i64 %i.p, 0
  br i1 %.not122, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 1800
  %i.r = load i32, ptr %i.q, align 8, !tbaa !28
  switch i32 %i.r, label %bb.j [
    i32 0, label %.critedge
    i32 2048, label %.critedge
  ]

bb.j:                                             ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 380
  %i.t = load i32, ptr %i.s, align 4, !tbaa !237
  %i.u = tail call i32 @commit_format_is_empty(i32 noundef %i.t) #16
  %.not125 = icmp eq i32 %i.u, 0
  br i1 %.not125, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.v = tail call ptr @diff_line_prefix(ptr noundef nonnull %i.b) #16
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 1796
  %i.x = load i32, ptr %i.w, align 4, !tbaa !29
  %i.y = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef %i.v, i32 noundef %i.x) ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.i, %bb.i, %bb.h, %bb.j, %bb.k, %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(608) %4, ptr noundef nonnull align 8 dereferenceable(608) %i.b, i64 608, i1 false), !tbaa.struct !244
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 464 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 1984
  call void @copy_pathspec(ptr noundef nonnull %i.z, ptr noundef nonnull %i.aa) #16
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 148
  store i32 0, ptr %i.ab, align 4, !tbaa !245
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 1624
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !246
  %.not126 = icmp eq i32 %i.ad, 0
  br i1 %.not126, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.critedge
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 96
  store i32 1, ptr %i.ae, align 8, !tbaa !247
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.critedge
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 1792
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !248
  %.not127 = icmp eq i32 %i.ag, 0
  br i1 %.not127, label %bb.n, label %.critedge146

bb.n:                                             ; preds = %bb.m
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 1648
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !249
  %.not128 = icmp eq i32 %i.ai, 0
  br i1 %.not128, label %bb.o, label %.critedge146

bb.o:                                             ; preds = %bb.n
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 1780
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !250
  %.not129 = icmp eq i32 %i.ak, -1
  br i1 %.not129, label %bb.p, label %.critedge146

bb.p:                                             ; preds = %bb.o
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 1784
  %i.am = load i32, ptr %i.al, align 8, !tbaa !251
  %.not130 = icmp eq i32 %i.am, 0
  br i1 %.not130, label %bb.q, label %.critedge146

bb.q:                                             ; preds = %bb.p
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 1552 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !252
  %i.ap = and i32 %i.ao, 12
  %.not131 = icmp eq i32 %i.ap, 0
  br i1 %.not131, label %bb.r, label %.critedge146

bb.r:                                             ; preds = %bb.q
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 1760
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !253
  %.not154 = icmp eq i32 %i.ar, 0
  br i1 %.not154, label %bb.aj, label %.critedge146

.critedge146:                                     ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.r
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 332
  %i.at = load i64, ptr %i.as, align 4
  %i.au = load i64, ptr %i.c, align 8, !tbaa !124 ; 2 uses
  %i.av = trunc i64 %i.au to i32
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 280 ; 4 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !28 ; 2 uses
  %i.ay = load ptr, ptr %4, align 8, !tbaa !254   ; 3 uses
  store ptr null, ptr %4, align 8, !tbaa !254
  %i.az = icmp sgt i32 %i.av, 0
  br i1 %i.az, label %.lr.ph.i, label %find_paths_generic.exit

.lr.ph.i:                                         ; preds = %.critedge146
  %i.ba = and i32 %i.ax, 110                      ; 2 uses
  %i.bb = icmp ne i32 %i.ba, 0
  %i.bc = and i64 %i.at, 144115188075855872
  %.not90.i.i = icmp eq i64 %i.bc, 0              ; 2 uses
  %wide.trip.count.i.i = and i64 %i.au, 2147483647 ; 4 uses
  %i.bd = icmp ne ptr %i.ay, null
  br label %bb.s

bb.s:                                             ; preds = %bb.ai, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.ai ] ; 4 uses
  %.03440.i = phi ptr [ null, %.lr.ph.i ], [ %.0..0..0..0..0..0..0..078.i.i, %bb.ai ] ; 3 uses
  %i.be = icmp eq i64 %indvars.iv.i, 0            ; 2 uses
  %or.cond.i = select i1 %i.be, i1 %i.bb, i1 false
  %..i = select i1 %or.cond.i, i32 %i.ba, i32 2048
  store i32 %..i, ptr %i.aw, align 8, !tbaa !28
  %i.bf = load ptr, ptr %1, align 8, !tbaa !125
  %i.bg = getelementptr inbounds nuw [36 x i8], ptr %i.bf, i64 %indvars.iv.i
  call void @diff_tree_oid(ptr noundef %i.bg, ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull %4) #16
  call void @diffcore_std(ptr noundef nonnull %4) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.03440.i, ptr %i.a, align 8, !tbaa !127
  br i1 %i.be, label %.preheader.i.i, label %.preheader98.i.i

.preheader98.i.i:                                 ; preds = %bb.s
  %.not87101.i.i = icmp eq ptr %.03440.i, null
  br i1 %.not87101.i.i, label %intersect_paths.exit.i, label %.lr.ph104.i.i

.preheader.i.i:                                   ; preds = %bb.s
  %i.bh = load i32, ptr getelementptr inbounds nuw (i8, ptr @diff_queued_diff, i64 12), align 4, !tbaa !257
  %i.bi = icmp sgt i32 %i.bh, 0
  br i1 %i.bi, label %.lr.ph107.i.i, label %intersect_paths.exit.i

.lr.ph107.i.i:                                    ; preds = %.preheader.i.i
  br i1 %.not90.i.i, label %.lr.ph107.split.us.i.i, label %.lr.ph107.split.i.i

.lr.ph107.split.us.i.i:                           ; preds = %.lr.ph107.i.i, %bb.u
  %indvars.iv114.i.i = phi i64 [ %indvars.iv.next115.i.i, %bb.u ], [ 0, %.lr.ph107.i.i ] ; 4 uses
  %.076105.us.i.i = phi ptr [ %.177.us.i.i, %bb.u ], [ %i.a, %.lr.ph107.i.i ] ; 2 uses
end_hunk_1
begin_hunk_2_@llvm.assume
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"any pointer", !9, i64 0}
!14 = !{!"p1 omnipotent char", !13, i64 0}
!15 = !{!"any p2 pointer", !13, i64 0}
!16 = !{!"p2 _ZTS17re_pattern_buffer", !15, i64 0}
!17 = !{!"long", !9, i64 0}
!18 = !{!"diff_flags", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !10, i64 72, !10, i64 76, !10, i64 80, !10, i64 84, !10, i64 88, !10, i64 92, !10, i64 96, !10, i64 100, !10, i64 104, !10, i64 108, !10, i64 112, !10, i64 116, !10, i64 120, !10, i64 124, !10, i64 128, !10, i64 132, !10, i64 136, !10, i64 140}
!19 = !{!"p2 omnipotent char", !15, i64 0}
!20 = !{!"p1 _ZTS6oidset", !13, i64 0}
!21 = !{!"p1 _ZTS8_IO_FILE", !13, i64 0}
!22 = !{!"p1 _ZTS13pathspec_item", !13, i64 0}
!23 = !{!"pathspec", !10, i64 0, !10, i64 4, !10, i64 4, !10, i64 4, !10, i64 8, !10, i64 12, !22, i64 16}
!24 = !{!"p1 _ZTS20emitted_diff_symbols", !13, i64 0}
!25 = !{!"p1 _ZTS10repository", !13, i64 0}
!26 = !{!"p1 _ZTS6strmap", !13, i64 0}
!27 = !{!"diff_options", !14, i64 0, !14, i64 8, !10, i64 16, !10, i64 20, !14, i64 24, !10, i64 32, !16, i64 40, !17, i64 48, !17, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !14, i64 88, !18, i64 96, !10, i64 240, !10, i64 244, !10, i64 248, !10, i64 252, !10, i64 256, !10, i64 260, !10, i64 264, !10, i64 268, !10, i64 272, !10, i64 276, !10, i64 280, !10, i64 284, !10, i64 288, !10, i64 292, !10, i64 296, !10, i64 300, !10, i64 304, !10, i64 308, !10, i64 312, !10, i64 316, !10, i64 320, !10, i64 324, !14, i64 328, !10, i64 336, !14, i64 344, !10, i64 352, !10, i64 356, !19, i64 360, !17, i64 368, !17, i64 376, !10, i64 384, !10, i64 388, !10, i64 392, !10, i64 396, !14, i64 400, !10, i64 408, !10, i64 412, !20, i64 416, !10, i64 424, !10, i64 428, !10, i64 432, !13, i64 440, !21, i64 448, !10, i64 456, !9, i64 460, !23, i64 464, !13, i64 488, !13, i64 496, !13, i64 504, !13, i64 512, !13, i64 520, !13, i64 528, !13, i64 536, !13, i64 544, !10, i64 552, !24, i64 560, !10, i64 568, !10, i64 572, !25, i64 576, !26, i64 584, !10, i64 592, !10, i64 596, !10, i64 600}
!28 = !{!27, !10, i64 280}
!29 = !{!27, !10, i64 276}
!30 = !{!"p1 _ZTS11commit_list", !13, i64 0}
!31 = !{!"p1 _ZTS16prio_queue_entry", !13, i64 0}
!32 = !{!"prio_queue", !13, i64 0, !17, i64 8, !13, i64 16, !17, i64 24, !17, i64 32, !31, i64 40}
!33 = !{!"p1 _ZTS18object_array_entry", !13, i64 0}
!34 = !{!"object_array", !10, i64 0, !10, i64 4, !33, i64 8}
!35 = !{!"p1 _ZTS17rev_cmdline_entry", !13, i64 0}
!36 = !{!"rev_cmdline_info", !10, i64 0, !10, i64 4, !35, i64 8}
!37 = !{!"strbuf", !17, i64 0, !17, i64 8, !14, i64 16}
!38 = !{!"p1 _ZTS27list_objects_filter_options", !13, i64 0}
!39 = !{!"list_objects_filter_options", !37, i64 0, !10, i64 24, !10, i64 28, !10, i64 28, !14, i64 32, !17, i64 40, !17, i64 48, !10, i64 56, !17, i64 64, !17, i64 72, !38, i64 80}
!40 = !{!"p1 _ZTS16string_list_item", !13, i64 0}
!41 = !{!"string_list", !40, i64 0, !17, i64 8, !17, i64 16, !10, i64 24, !13, i64 32}
!42 = !{!"strvec", !19, i64 0, !17, i64 8, !17, i64 16}
!43 = !{!"ref_exclusions", !41, i64 0, !42, i64 40, !9, i64 64}
!44 = !{!"date_mode", !10, i64 0, !10, i64 4, !14, i64 8}
!45 = !{!"p1 _ZTS8log_info", !13, i64 0}
!46 = !{!"ident_split", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56}
!47 = !{!"p1 _ZTS11string_list", !13, i64 0}
!48 = !{!"p1 _ZTS8grep_pat", !13, i64 0}
!49 = !{!"p2 _ZTS8grep_pat", !15, i64 0}
!50 = !{!"p1 _ZTS9grep_expr", !13, i64 0}
!51 = !{!"grep_opt", !48, i64 0, !49, i64 8, !48, i64 16, !49, i64 24, !50, i64 32, !25, i64 40, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !10, i64 72, !10, i64 76, !10, i64 80, !10, i64 84, !10, i64 88, !10, i64 92, !10, i64 96, !10, i64 100, !10, i64 104, !10, i64 108, !10, i64 112, !10, i64 116, !10, i64 120, !10, i64 124, !10, i64 128, !10, i64 132, !10, i64 136, !10, i64 140, !10, i64 144, !10, i64 148, !9, i64 152, !10, i64 828, !10, i64 832, !10, i64 836, !10, i64 840, !10, i64 844, !10, i64 848, !10, i64 852, !13, i64 856, !13, i64 864, !13, i64 872}
!52 = !{!"p1 _ZTS9git_graph", !13, i64 0}
!53 = !{!"p1 _ZTS16reflog_walk_info", !13, i64 0}
!54 = !{!"p1 _ZTS16decoration_entry", !13, i64 0}
!55 = !{!"decoration", !14, i64 0, !10, i64 8, !10, i64 12, !54, i64 16}
!56 = !{!"display_notes_opt", !10, i64 0, !41, i64 8}
!57 = !{!"p1 _ZTS9object_id", !13, i64 0}
!58 = !{!"p1 _ZTS13saved_parents", !13, i64 0}
!59 = !{!"p1 _ZTS16revision_sources", !13, i64 0}
!60 = !{!"p1 _ZTS14topo_walk_info", !13, i64 0}
!61 = !{!"p2 _ZTS12bloom_keyvec", !15, i64 0}
!62 = !{!"p1 _ZTS21bloom_filter_settings", !13, i64 0}
!63 = !{!"p1 _ZTS10tmp_objdir", !13, i64 0}
!64 = !{!"p1 int", !13, i64 0}
!65 = !{!"kh_oid_set", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !64, i64 16, !57, i64 24, !64, i64 32}
!66 = !{!"oidset", !65, i64 0}
!67 = !{!"rev_info", !30, i64 0, !32, i64 8, !34, i64 56, !25, i64 72, !34, i64 80, !36, i64 96, !39, i64 112, !43, i64 200, !14, i64 272, !14, i64 280, !14, i64 288, !23, i64 296, !10, i64 320, !10, i64 324, !10, i64 328, !10, i64 332, !10, i64 332, !10, i64 332, !10, i64 332, !10, i64 332, !10, i64 332, !10, i64 332, !10, i64 332, !10, i64 333, !10, i64 333, !10, i64 333, !10, i64 333, !10, i64 333, !10, i64 333, !10, i64 333, !10, i64 333, !10, i64 334, !10, i64 334, !10, i64 334, !10, i64 334, !10, i64 334, !10, i64 334, !10, i64 334, !10, i64 335, !10, i64 335, !10, i64 335, !10, i64 335, !10, i64 335, !10, i64 335, !10, i64 335, !10, i64 335, !10, i64 336, !10, i64 336, !10, i64 336, !10, i64 336, !10, i64 336, !10, i64 336, !10, i64 336, !10, i64 336, !10, i64 337, !10, i64 337, !10, i64 337, !10, i64 337, !10, i64 337, !10, i64 337, !10, i64 337, !10, i64 337, !10, i64 338, !10, i64 338, !10, i64 338, !10, i64 338, !10, i64 338, !10, i64 338, !10, i64 338, !10, i64 338, !10, i64 339, !10, i64 339, !10, i64 339, !10, i64 339, !10, i64 339, !10, i64 340, !10, i64 344, !10, i64 344, !10, i64 344, !10, i64 344, !10, i64 344, !10, i64 344, !10, i64 344, !10, i64 344, !10, i64 345, !10, i64 345, !10, i64 345, !10, i64 345, !10, i64 345, !10, i64 345, !10, i64 345, !10, i64 345, !10, i64 346, !10, i64 346, !10, i64 346, !10, i64 346, !10, i64 346, !44, i64 352, !10, i64 368, !10, i64 372, !10, i64 376, !10, i64 380, !45, i64 384, !10, i64 392, !10, i64 396, !14, i64 400, !14, i64 408, !10, i64 416, !14, i64 424, !14, i64 432, !46, i64 440, !47, i64 504, !10, i64 512, !14, i64 520, !14, i64 528, !10, i64 536, !10, i64 540, !10, i64 544, !47, i64 552, !51, i64 560, !52, i64 1440, !10, i64 1448, !10, i64 1452, !10, i64 1456, !10, i64 1460, !10, i64 1460, !17, i64 1464, !17, i64 1472, !17, i64 1480, !10, i64 1488, !10, i64 1492, !13, i64 1496, !13, i64 1504, !13, i64 1512, !27, i64 1520, !27, i64 2128, !53, i64 2736, !55, i64 2744, !55, i64 2768, !55, i64 2792, !56, i64 2816, !57, i64 2864, !57, i64 2872, !14, i64 2880, !14, i64 2888, !14, i64 2896, !42, i64 2904, !10, i64 2928, !14, i64 2936, !10, i64 2944, !10, i64 2948, !10, i64 2952, !55, i64 2960, !58, i64 2984, !30, i64 2992, !30, i64 3000, !14, i64 3008, !59, i64 3016, !60, i64 3024, !61, i64 3032, !10, i64 3040, !62, i64 3048, !10, i64 3056, !63, i64 3064, !66, i64 3072}
!68 = !{!67, !45, i64 384}
!69 = !{!21, !21, i64 0}
!70 = !{!"llvm.loop.mustprogress"}
!71 = !{!"object_id", !9, i64 0, !10, i64 32}
!72 = !{!"combine_diff_parent", !9, i64 0, !10, i64 4, !71, i64 8, !14, i64 48}
!73 = !{!72, !10, i64 4}
!74 = !{!10, !10, i64 0}
!75 = !{!72, !9, i64 0}
!76 = !{!72, !14, i64 48}
!77 = !{!14, !14, i64 0}
!78 = !{!17, !17, i64 0}
!79 = !{!"p1 _ZTS15object_database", !13, i64 0}
!80 = !{!"p1 _ZTS18parsed_object_pool", !13, i64 0}
!81 = !{!"p1 _ZTS9ref_store", !13, i64 0}
!82 = !{!"_Bool", !9, i64 0}
!83 = !{!"p2 _ZTS13hashmap_entry", !15, i64 0}
!84 = !{!"hashmap", !83, i64 0, !13, i64 8, !13, i64 16, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40}
!85 = !{!"p1 _ZTS8mem_pool", !13, i64 0}
!86 = !{!"strmap", !84, i64 0, !85, i64 48, !10, i64 56}
!87 = !{!"repo_path_cache", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48}
!88 = !{!"p1 _ZTS18fsmonitor_settings", !13, i64 0}
!89 = !{!"repo_settings", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !88, i64 56, !10, i64 64, !10, i64 68, !10, i64 72, !10, i64 76, !10, i64 80, !10, i64 84, !10, i64 88, !10, i64 92, !17, i64 96, !17, i64 104, !17, i64 112, !17, i64 120, !10, i64 128, !14, i64 136}
!90 = !{!"p1 _ZTS10config_set", !13, i64 0}
!91 = !{!"p1 _ZTS15submodule_cache", !13, i64 0}
!92 = !{!"p1 _ZTS11index_state", !13, i64 0}
!93 = !{!"p1 _ZTS12remote_state", !13, i64 0}
!94 = !{!"p1 _ZTS13git_hash_algo", !13, i64 0}
!95 = !{!"repo_config_values", !14, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44}
!96 = !{!"p1 _ZTS22promisor_remote_config", !13, i64 0}
!97 = !{!"repository", !14, i64 0, !14, i64 8, !79, i64 16, !80, i64 24, !81, i64 32, !82, i64 40, !86, i64 48, !86, i64 112, !87, i64 176, !14, i64 232, !14, i64 240, !14, i64 248, !82, i64 256, !82, i64 257, !14, i64 264, !89, i64 272, !90, i64 416, !91, i64 424, !92, i64 432, !93, i64 440, !94, i64 448, !94, i64 456, !95, i64 464, !10, i64 512, !14, i64 520, !10, i64 528, !10, i64 532, !26, i64 536, !10, i64 544, !86, i64 552, !41, i64 616, !14, i64 656, !96, i64 664, !10, i64 672, !10, i64 676, !10, i64 680, !10, i64 684, !10, i64 688, !82, i64 689, !82, i64 690}
!98 = !{!37, !17, i64 8}
!99 = !{!25, !25, i64 0}
!100 = !{!97, !94, i64 448}
!101 = !{!9, !9, i64 0}
!102 = !{!"llvm.loop.isvectorized", i32 1}
!103 = !{!"llvm.loop.unroll.runtime.disable"}
!104 = !{!"p1 _ZTS5lline", !13, i64 0}
!105 = !{!"plost", !104, i64 0, !104, i64 8, !10, i64 16}
!106 = !{!"p1 long", !13, i64 0}
!107 = !{!"sline", !104, i64 0, !10, i64 8, !105, i64 16, !14, i64 40, !10, i64 48, !17, i64 56, !106, i64 64}
!108 = !{!107, !106, i64 64}
!109 = !{!"llvm.loop.unroll.disable"}
!110 = !{!104, !104, i64 0}
!111 = !{!107, !17, i64 56}
!112 = !{!"p1 _ZTS5sline", !13, i64 0}
!113 = !{!"combine_diff_state", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !17, i64 24, !10, i64 32, !10, i64 36, !112, i64 40, !112, i64 48}
!114 = !{!113, !17, i64 24}
!115 = !{!113, !112, i64 40}
!116 = !{!113, !10, i64 0}
!117 = !{!113, !10, i64 32}
!118 = !{!113, !10, i64 36}
!119 = !{!107, !104, i64 16}
!120 = !{!107, !10, i64 32}
!121 = !{!13, !13, i64 0}
!122 = !{!27, !10, i64 248}
!123 = !{!"oid_array", !57, i64 0, !17, i64 8, !17, i64 16, !10, i64 24}
!124 = !{!123, !17, i64 8}
!125 = !{!123, !57, i64 0}
!126 = !{!"p1 _ZTS17combine_diff_path", !13, i64 0}
!127 = !{!126, !126, i64 0}
!128 = !{!71, !10, i64 32}
!129 = !{!113, !112, i64 48}
!130 = distinct !{!130, !70}
!131 = distinct !{!131, !70}
!132 = distinct !{!132, !70}
!133 = distinct !{!133, !70}
!134 = distinct !{!134, !70}
!135 = !{!27, !10, i64 312}
!136 = distinct !{!136, !70}
!137 = distinct !{!137, !70}
!138 = distinct !{!138, !70}
!139 = distinct !{!139, !70, !102, !103}
!140 = distinct !{!140, !70, !103, !102}
!141 = distinct !{!141, !70}
!142 = distinct !{!142, !109}
!143 = distinct !{!143, !70}
!144 = distinct !{!144, !70}
!145 = distinct !{!145, !70}
!146 = distinct !{!146, !70}
!147 = distinct !{!147, !70, !102, !103}
!148 = distinct !{!148, !70}
!149 = distinct !{!149, !70}
!150 = distinct !{!150, !70, !103, !102}
!151 = distinct !{!151, !109}
!152 = distinct !{!152, !70}
!153 = distinct !{!153, !70}
!154 = distinct !{!154, !70}
!155 = distinct !{!155, !70}
!156 = distinct !{!156, !70}
!157 = distinct !{!157, !70}
!158 = distinct !{!158, !70}
!159 = distinct !{!159, !70}
!160 = distinct !{!160, !70}
!161 = distinct !{!161, !70}
!162 = distinct !{!162, !70}
!163 = distinct !{!163, !70}
!164 = distinct !{!164, !70}
!165 = distinct !{!165, !70}
!166 = distinct !{!166, !70}
!167 = distinct !{!167, !70}
!168 = distinct !{!168, !70}
!169 = distinct !{!169, !70}
!170 = distinct !{!170, !70}
!171 = distinct !{!171, !70}
!172 = distinct !{!172, !70}
!173 = distinct !{!173, !109}
!174 = distinct !{!174, !70}
!175 = distinct !{!175, !70}
!176 = distinct !{!176, !70}
!177 = distinct !{!177, !109}
!178 = distinct !{!178, !70}
!179 = distinct !{!179, !109}
!180 = distinct !{!180, !70}
!181 = distinct !{!181, !70}
!182 = distinct !{!182, !70}
!183 = distinct !{!183, !70}
!184 = distinct !{!184, !70}
!185 = distinct !{!185, !70}
!186 = distinct !{!186, !70}
!187 = distinct !{!187, !70}
!188 = distinct !{!188, !70}
!189 = distinct !{!189, !70}
!190 = distinct !{!190, !70}
!191 = distinct !{!191, !70}
!192 = distinct !{!192, !70}
!193 = distinct !{!193, !70}
!194 = distinct !{!194, !70}
!195 = !{!27, !10, i64 252}
!196 = !{!27, !25, i64 576}
!197 = !{!97, !92, i64 432}
!198 = !{!27, !10, i64 180}
!199 = !{!"timespec", !17, i64 0, !17, i64 8}
!200 = !{!"stat", !17, i64 0, !17, i64 8, !17, i64 16, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !17, i64 40, !17, i64 48, !17, i64 56, !17, i64 64, !199, i64 72, !199, i64 88, !199, i64 104, !9, i64 120}
!201 = !{!200, !10, i64 24}
!202 = !{!200, !17, i64 48}
!203 = !{!67, !25, i64 2096}
!204 = !{!"external_diff", !14, i64 0, !10, i64 8}
!205 = !{!"userdiff_funcname", !14, i64 0, !14, i64 8, !10, i64 16}
!206 = !{!"p1 _ZTS11notes_cache", !13, i64 0}
!207 = !{!"userdiff_driver", !14, i64 0, !204, i64 8, !14, i64 24, !14, i64 32, !10, i64 40, !205, i64 48, !14, i64 72, !14, i64 80, !14, i64 88, !14, i64 96, !14, i64 104, !206, i64 112, !10, i64 120}
!208 = !{!207, !10, i64 40}
!209 = !{!107, !14, i64 40}
!210 = !{!"s_mmfile", !14, i64 0, !17, i64 8}
!211 = !{!210, !14, i64 0}
!212 = !{!210, !17, i64 8}
!213 = !{!107, !10, i64 48}
!214 = !{!107, !104, i64 0}
!215 = !{!27, !10, i64 352}
!216 = !{!"s_xpparam", !17, i64 0, !16, i64 8, !17, i64 16, !19, i64 24, !17, i64 32}
!217 = !{!216, !17, i64 0}
!218 = !{!64, !64, i64 0}
!219 = distinct !{!219, !70}
!220 = distinct !{!220, !70}
!221 = distinct !{!221, !70}
!222 = distinct !{!222, !70}
!223 = distinct !{!223, !70}
!224 = distinct !{!224, !70}
!225 = distinct !{!225, !70}
!226 = distinct !{!226, !109}
!227 = distinct !{!227, !70}
!228 = distinct !{!228, !70}
!229 = distinct !{!229, !70}
!230 = distinct !{null}
!231 = distinct !{!231, !70}
!232 = distinct !{!232, !70}
!233 = distinct !{!233, !70}
!234 = distinct !{!234, !70}
!235 = !{!27, !17, i64 48}
!236 = !{!27, !10, i64 456}
!237 = !{!67, !10, i64 380}
!238 = !{!16, !16, i64 0}
!239 = !{!19, !19, i64 0}
!240 = !{!20, !20, i64 0}
!241 = !{!22, !22, i64 0}
!242 = !{!24, !24, i64 0}
!243 = !{!26, !26, i64 0}
!244 = !{i64 0, i64 8, !77, i64 8, i64 8, !77, i64 16, i64 4, !74, i64 20, i64 4, !74, i64 24, i64 8, !77, i64 32, i64 4, !74, i64 40, i64 8, !238, i64 48, i64 8, !78, i64 56, i64 8, !78, i64 64, i64 8, !77, i64 72, i64 8, !77, i64 80, i64 8, !77, i64 88, i64 8, !77, i64 96, i64 4, !74, i64 100, i64 4, !74, i64 104, i64 4, !74, i64 108, i64 4, !74, i64 112, i64 4, !74, i64 116, i64 4, !74, i64 120, i64 4, !74, i64 124, i64 4, !74, i64 128, i64 4, !74, i64 132, i64 4, !74, i64 136, i64 4, !74, i64 140, i64 4, !74, i64 144, i64 4, !74, i64 148, i64 4, !74, i64 152, i64 4, !74, i64 156, i64 4, !74, i64 160, i64 4, !74, i64 164, i64 4, !74, i64 168, i64 4, !74, i64 172, i64 4, !74, i64 176, i64 4, !74, i64 180, i64 4, !74, i64 184, i64 4, !74, i64 188, i64 4, !74, i64 192, i64 4, !74, i64 196, i64 4, !74, i64 200, i64 4, !74, i64 204, i64 4, !74, i64 208, i64 4, !74, i64 212, i64 4, !74, i64 216, i64 4, !74, i64 220, i64 4, !74, i64 224, i64 4, !74, i64 228, i64 4, !74, i64 232, i64 4, !74, i64 236, i64 4, !74, i64 240, i64 4, !74, i64 244, i64 4, !74, i64 248, i64 4, !74, i64 252, i64 4, !74, i64 256, i64 4, !74, i64 260, i64 4, !74, i64 264, i64 4, !74, i64 268, i64 4, !74, i64 272, i64 4, !74, i64 276, i64 4, !74, i64 280, i64 4, !74, i64 284, i64 4, !74, i64 288, i64 4, !74, i64 292, i64 4, !74, i64 296, i64 4, !74, i64 300, i64 4, !74, i64 304, i64 4, !74, i64 308, i64 4, !74, i64 312, i64 4, !74, i64 316, i64 4, !74, i64 320, i64 4, !74, i64 324, i64 4, !74, i64 328, i64 8, !77, i64 336, i64 4, !74, i64 344, i64 8, !77, i64 352, i64 4, !74, i64 356, i64 4, !74, i64 360, i64 8, !239, i64 368, i64 8, !78, i64 376, i64 8, !78, i64 384, i64 4, !74, i64 388, i64 4, !74, i64 392, i64 4, !74, i64 396, i64 4, !74, i64 400, i64 8, !77, i64 408, i64 4, !74, i64 412, i64 4, !74, i64 416, i64 8, !240, i64 424, i64 4, !74, i64 428, i64 4, !74, i64 432, i64 4, !74, i64 440, i64 8, !121, i64 448, i64 8, !69, i64 456, i64 4, !74, i64 460, i64 3, !101, i64 464, i64 4, !74, i64 468, i64 1, !101, i64 472, i64 4, !74, i64 476, i64 4, !74, i64 480, i64 8, !241, i64 488, i64 8, !121, i64 496, i64 8, !121, i64 504, i64 8, !121, i64 512, i64 8, !121, i64 520, i64 8, !121, i64 528, i64 8, !121, i64 536, i64 8, !121, i64 544, i64 8, !121, i64 552, i64 4, !74, i64 560, i64 8, !242, i64 568, i64 4, !74, i64 572, i64 4, !74, i64 576, i64 8, !99, i64 584, i64 8, !243, i64 592, i64 4, !74, i64 596, i64 4, !74, i64 600, i64 4, !74}
!245 = !{!27, !10, i64 148}
!246 = !{!27, !10, i64 104}
!247 = !{!27, !10, i64 96}
!248 = !{!27, !10, i64 272}
!249 = !{!27, !10, i64 128}
!250 = !{!27, !10, i64 260}
!251 = !{!27, !10, i64 264}
!252 = !{!27, !10, i64 32}
!253 = !{!27, !10, i64 240}
!254 = !{!27, !14, i64 0}
!255 = !{!"p2 _ZTS13diff_filepair", !15, i64 0}
!256 = !{!"diff_queue_struct", !255, i64 0, !10, i64 8, !10, i64 12}
!257 = !{!256, !10, i64 12}
!258 = !{!256, !255, i64 0}
!259 = !{!"p1 _ZTS13diff_filepair", !13, i64 0}
!260 = !{!259, !259, i64 0}
!261 = !{!"p1 _ZTS13diff_filespec", !13, i64 0}
!262 = !{!"p1 _ZTS9range_set", !13, i64 0}
!263 = !{!"short", !9, i64 0}
!264 = !{!"diff_filepair", !261, i64 0, !261, i64 8, !262, i64 16, !263, i64 24, !9, i64 26, !10, i64 27, !10, i64 27, !10, i64 27, !10, i64 27, !10, i64 27}
!265 = !{!264, !261, i64 8}
!266 = !{!"p1 _ZTS15userdiff_driver", !13, i64 0}
!267 = !{!"diff_filespec", !71, i64 0, !14, i64 40, !13, i64 48, !13, i64 56, !17, i64 64, !10, i64 72, !10, i64 76, !263, i64 80, !10, i64 82, !10, i64 82, !10, i64 82, !10, i64 82, !10, i64 82, !10, i64 82, !10, i64 82, !266, i64 88}
!268 = !{!267, !14, i64 40}
!269 = !{!267, !263, i64 80}
!270 = !{!264, !261, i64 0}
!271 = !{!264, !9, i64 26}
!272 = !{!"obj_order", !13, i64 0, !10, i64 8, !10, i64 12}
!273 = !{!272, !13, i64 0}
!274 = !{!256, !10, i64 8}
!275 = !{!27, !13, i64 520}
!276 = !{!27, !13, i64 528}
!277 = distinct !{!277, !"LVerDomain"}
!278 = distinct !{!278, !277}
!279 = distinct !{!279, !277}
!280 = distinct !{!280, !70, !102, !103}
!281 = distinct !{!281, !109}
!282 = distinct !{!282, !70, !102}
!283 = !{!278}
!284 = !{!57, !57, i64 0}
!285 = !{!279}
!286 = distinct !{!286, !70}
!287 = distinct !{!287, !70}
!288 = !{!27, !20, i64 416}
!289 = distinct !{!289, !70}
!290 = !{!"p1 _ZTS6commit", !13, i64 0}
!291 = !{!"commit_list", !290, i64 0, !30, i64 8}
!292 = !{!291, !290, i64 0}
!293 = !{!291, !30, i64 8}
!294 = !{!97, !79, i64 16}
!295 = distinct !{!295, !70, !304}
!296 = distinct !{!296, !70}
!297 = distinct !{!297, !70, !304}
!298 = distinct !{!298, !70}
!299 = !{!27, !10, i64 116}
!300 = !{!"git_hash_algo", !14, i64 0, !10, i64 8, !17, i64 16, !17, i64 24, !17, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !57, i64 80, !57, i64 88, !57, i64 96, !94, i64 104}
!301 = !{!300, !17, i64 24}
!302 = !{!27, !14, i64 72}
!303 = !{!27, !14, i64 80}
!304 = !{!"llvm.loop.peeled.count", i32 1}
!305 = !{!37, !14, i64 16}
!306 = !{!113, !10, i64 4}
!307 = !{!113, !10, i64 8}
!308 = !{!113, !10, i64 12}
!309 = !{!113, !10, i64 16}
!310 = !{!107, !104, i64 24}
end_hunk_2
