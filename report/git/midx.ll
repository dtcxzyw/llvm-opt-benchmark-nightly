Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/midx?download=true
inline.NumInlined: 114
inline.NumDeleted: 25
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@load_multi_pack_index:bb.a
  %i.bx = add i32 %i.bp, %i.bn
  %i.by = getelementptr inbounds nuw i8, ptr %i.bc, i64 168
  store i32 %i.bx, ptr %i.by, align 8, !tbaa !87
  br label %bb.aa

_.exit.i.i.i:                                     ; preds = %bb.x, %bb.w, %bb.u, %bb.t
  %.sink106.i.i = phi i32 [ %i.be, %bb.t ], [ %.pre20.i.i.i, %bb.u ], [ %.pre.i.i.i, %bb.x ], [ %i.bn, %bb.w ]
  %.0.i.i.sink.i.i = phi ptr [ @.str.58, %bb.t ], [ %i.bl, %bb.u ], [ %i.bu, %bb.x ], [ @.str.59, %bb.w ]
  %i.bz = zext i32 %.sink106.i.i to i64
  call void (ptr, ...) @warning(ptr noundef %.0.i.i.sink.i.i, i64 noundef %i.bz) #21
  call void @close_midx(ptr noundef nonnull %i.bc)
  br label %.loopexit11.i.i

.loopexit11.i.i:                                  ; preds = %strbuf_setlen.exit.i.i, %_.exit.i.i.i
  %i.ca = load i32, ptr @git_gettext_enabled, align 4, !tbaa !82
  %.not4.i33.i.i = icmp eq i32 %i.ca, 0
  br i1 %.not4.i33.i.i, label %_.exit35.i.i, label %bb.z

bb.z:                                             ; preds = %.loopexit11.i.i
  %i.cb = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.57, i32 noundef 5) #21
  br label %_.exit35.i.i

_.exit35.i.i:                                     ; preds = %bb.z, %.loopexit11.i.i
  %.0.i34.i.i = phi ptr [ %i.cb, %bb.z ], [ @.str.57, %.loopexit11.i.i ]
  call void (ptr, ...) @warning(ptr noundef %.0.i34.i.i) #21
  br label %.thread7.i.i

.thread7.i.i:                                     ; preds = %bb.j, %_.exit35.i.i, %_.exit.i6.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %load_midx_chain_fd_st.exit.i

bb.aa:                                            ; preds = %bb.y, %bb.r
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bc, i64 160
  store ptr %.02343.i.i, ptr %i.cc, align 8, !tbaa !89
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bc, i64 68
  store i32 1, ptr %i.cd, align 4, !tbaa !120
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.ce = add nuw i32 %.02144.i.i, 1              ; 2 uses
  %i.cf = icmp ult i32 %i.ce, %i.ak
  br i1 %i.cf, label %bb.j, label %load_midx_chain_fd_st.exit.i, !llvm.loop !118

load_midx_chain_fd_st.exit.i:                     ; preds = %bb.aa, %.thread7.i.i, %open_multi_pack_index_chain.exit.i
  %.02318.i.i = phi ptr [ %.02343.i.i, %.thread7.i.i ], [ null, %open_multi_pack_index_chain.exit.i ], [ %i.bc, %bb.aa ]
  %i.cg = call i32 @fclose(ptr noundef %i.af)     ; 0 uses
  call void @strbuf_release(ptr noundef nonnull %1) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %load_multi_pack_index_chain.exit

load_multi_pack_index_chain.exit:                 ; preds = %bb.b, %bb.d, %bb.g, %_.exit.i.i, %load_midx_chain_fd_st.exit.i
  %.0.i = phi ptr [ %.02318.i.i, %load_midx_chain_fd_st.exit.i ], [ null, %bb.g ], [ null, %bb.d ], [ null, %bb.b ], [ null, %_.exit.i.i ]
  call void @strbuf_release(ptr noundef nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.ab

bb.ab:                                            ; preds = %load_multi_pack_index_chain.exit, %bb.a
  %.0 = phi ptr [ %i.e, %bb.a ], [ %.0.i, %load_multi_pack_index_chain.exit ]
  call void @strbuf_release(ptr noundef nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @load_multi_pack_index_one(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.stat, align 8               ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !45   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.d = tail call i32 @git_open_cloexec(ptr noundef %1, i32 noundef 0) #21 ; 6 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.ah, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = call i32 @fstat64(i32 noundef %i.d, ptr noundef nonnull %2) #21
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr @git_gettext_enabled, align 4, !tbaa !82
  %.not4.i = icmp eq i32 %i.g, 0
  br i1 %.not4.i, label %_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.34, i32 noundef 5) #21
  br label %_.exit

_.exit:                                           ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ %i.h, %bb.d ], [ @.str.34, %bb.c ]
  %i.i = tail call i32 (ptr, ...) @error_errno(ptr noundef %.0.i, ptr noundef %1) #21 ; 0 uses
  br label %bb.ah

bb.e:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.k = load i64, ptr %i.j, align 8, !tbaa !81   ; 8 uses
  %i.l = icmp slt i64 %i.k, 0
  br i1 %i.l, label %bb.f, label %xsize_t.exit

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.49) #22
  unreachable

xsize_t.exit:                                     ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 448 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !62
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !65
  %i.q = add i64 %i.p, 12
  %i.r = icmp ult i64 %i.k, %i.q
  br i1 %i.r, label %bb.g, label %bb.i

bb.g:                                             ; preds = %xsize_t.exit
  %i.s = load i32, ptr @git_gettext_enabled, align 4, !tbaa !82
  %.not4.i128 = icmp eq i32 %i.s, 0
  br i1 %.not4.i128, label %_.exit130, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.35, i32 noundef 5) #21
  br label %_.exit130

_.exit130:                                        ; preds = %bb.g, %bb.h
  %.0.i129 = phi ptr [ %i.t, %bb.h ], [ @.str.35, %bb.g ]
  %i.u = tail call i32 (ptr, ...) @error(ptr noundef %.0.i129, ptr noundef %1) #21 ; 0 uses
  br label %bb.ah

bb.i:                                             ; preds = %xsize_t.exit
  %i.v = tail call ptr @xmmap(ptr noundef null, i64 noundef %i.k, i32 noundef 1, i32 noundef 2, i32 noundef %i.d, i64 noundef 0) #21 ; 6 uses
  %i.w = tail call i32 @close(i32 noundef %i.d) #21 ; 0 uses
  %i.x = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 200) #21 ; 26 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 3 uses
  store ptr %i.v, ptr %i.y, align 8, !tbaa !27
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 %i.k, ptr %i.z, align 8, !tbaa !28
  store ptr %0, ptr %i.x, align 8, !tbaa !29
  %i.aa = load i32, ptr %i.v, align 1             ; 2 uses
  %i.ab = tail call i32 @llvm.bswap.i32(i32 %i.aa)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 48 ; 2 uses
  store i32 %i.ab, ptr %i.ac, align 8, !tbaa !122
  %.not115 = icmp eq i32 %i.aa, 1480870221
  br i1 %.not115, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = tail call fastcc ptr @_(ptr noundef nonnull @.str.36)
  %i.ae = load i32, ptr %i.ac, align 8, !tbaa !122
  tail call void (ptr, ...) @die(ptr noundef %i.ad, i32 noundef %i.ae, i32 noundef 1296647256) #22
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !84  ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 52 ; 3 uses
  store i8 %i.ag, ptr %i.ah, align 4, !tbaa !91
  %.off = add i8 %i.ag, -1
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = tail call fastcc ptr @_(ptr noundef nonnull @.str.37)
  %i.aj = load i8, ptr %i.ah, align 4, !tbaa !91
  %i.ak = zext i8 %i.aj to i32
  tail call void (ptr, ...) @die(ptr noundef %i.ai, i32 noundef %i.ak) #22
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 5
  %i.am = load i8, ptr %i.al, align 1, !tbaa !84  ; 2 uses
  %i.an = load ptr, ptr %i.m, align 8, !tbaa !62
  %i.ao = tail call zeroext i8 @oid_version(ptr noundef %i.an) #21
  %.not118 = icmp eq i8 %i.am, %i.ao
  br i1 %.not118, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ap = zext i8 %i.am to i32
  %i.aq = load i32, ptr @git_gettext_enabled, align 4, !tbaa !82
  %.not4.i131 = icmp eq i32 %i.aq, 0
  br i1 %.not4.i131, label %_.exit133, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.38, i32 noundef 5) #21
  br label %_.exit133

_.exit133:                                        ; preds = %bb.n, %bb.o
  %.0.i132 = phi ptr [ %i.ar, %bb.o ], [ @.str.38, %bb.n ]
  %i.as = load ptr, ptr %i.m, align 8, !tbaa !62
  %i.at = tail call zeroext i8 @oid_version(ptr noundef %i.as) #21
  %i.au = zext i8 %i.at to i32
  %i.av = tail call i32 (ptr, ...) @error(ptr noundef %.0.i132, i32 noundef %i.ap, i32 noundef %i.au) #21 ; 0 uses
  br label %bb.ah

bb.p:                                             ; preds = %bb.m
  %i.aw = load ptr, ptr %i.m, align 8, !tbaa !62
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !65
  %i.az = trunc i64 %i.ay to i8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.x, i64 53
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !92
  %i.bb = load ptr, ptr %i.y, align 8, !tbaa !27  ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 6
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !84
  %i.be = getelementptr inbounds nuw i8, ptr %i.x, i64 54 ; 2 uses
  store i8 %i.bd, ptr %i.be, align 2, !tbaa !123
  %3 = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %4 = load i8, ptr %3, align 1, !tbaa !84
  %5 = zext i8 %4 to i32
  %6 = shl nuw i32 %5, 24
  %7 = getelementptr inbounds nuw i8, ptr %i.bb, i64 9
  %8 = load i8, ptr %7, align 1, !tbaa !84
  %9 = zext i8 %8 to i32
  %10 = shl nuw nsw i32 %9, 16
  %11 = or disjoint i32 %10, %6
  %12 = getelementptr inbounds nuw i8, ptr %i.bb, i64 10
  %13 = load i8, ptr %12, align 1, !tbaa !84
  %14 = zext i8 %13 to i32
  %15 = shl nuw nsw i32 %14, 8
  %16 = or disjoint i32 %11, %15
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 11
  %17 = load i8, ptr %i.bf, align 1, !tbaa !84
  %18 = zext i8 %17 to i32
  %19 = or disjoint i32 %16, %18
  %i.bg = getelementptr inbounds nuw i8, ptr %i.x, i64 56 ; 4 uses
  store i32 %19, ptr %i.bg, align 8, !tbaa !86
  %i.bh = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  store i32 -1, ptr %i.bh, align 8, !tbaa !93
  %i.bi = tail call ptr @init_chunkfile(ptr noundef null) #21 ; 10 uses
  %i.bj = load ptr, ptr %i.y, align 8, !tbaa !27
  %i.bk = load i8, ptr %i.be, align 2, !tbaa !123
  %i.bl = zext i8 %i.bk to i32
  %i.bm = tail call i32 @read_table_of_contents(ptr noundef %i.bi, ptr noundef %i.bj, i64 noundef %i.k, i64 noundef 12, i32 noundef %i.bl, i32 noundef 4) #21
  %.not119 = icmp eq i32 %i.bm, 0
  br i1 %.not119, label %bb.q, label %bb.ah

bb.q:                                             ; preds = %bb.p
  %i.bn = getelementptr inbounds nuw i8, ptr %i.x, i64 72 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.x, i64 80 ; 2 uses
  %i.bp = tail call i32 @pair_chunk(ptr noundef %i.bi, i32 noundef 1347305805, ptr noundef nonnull %i.bn, ptr noundef nonnull %i.bo) #21
  %.not120 = icmp eq i32 %i.bp, 0
  br i1 %.not120, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bq = tail call fastcc ptr @_(ptr noundef nonnull @.str.39)
  tail call void (ptr, ...) @die(ptr noundef %i.bq) #22
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.br = tail call i32 @read_chunk(ptr noundef %i.bi, i32 noundef 1330201670, ptr noundef nonnull @midx_read_oid_fanout, ptr noundef nonnull %i.x) #21
  %.not121 = icmp eq i32 %i.br, 0
  br i1 %.not121, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bs = tail call fastcc ptr @_(ptr noundef nonnull @.str.40)
  tail call void (ptr, ...) @die(ptr noundef %i.bs) #22
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.bt = tail call i32 @read_chunk(ptr noundef %i.bi, i32 noundef 1330201676, ptr noundef nonnull @midx_read_oid_lookup, ptr noundef nonnull %i.x) #21
  %.not122 = icmp eq i32 %i.bt, 0
  br i1 %.not122, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bu = tail call fastcc ptr @_(ptr noundef nonnull @.str.41)
  tail call void (ptr, ...) @die(ptr noundef %i.bu) #22
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.bv = tail call i32 @read_chunk(ptr noundef %i.bi, i32 noundef 1330595398, ptr noundef nonnull @midx_read_object_offsets, ptr noundef nonnull %i.x) #21
  %.not123 = icmp eq i32 %i.bv, 0
  br i1 %.not123, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bw = tail call fastcc ptr @_(ptr noundef nonnull @.str.42)
  tail call void (ptr, ...) @die(ptr noundef %i.bw) #22
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.bx = getelementptr inbounds nuw i8, ptr %i.x, i64 128
  %i.by = getelementptr inbounds nuw i8, ptr %i.x, i64 136
  %i.bz = tail call i32 @pair_chunk(ptr noundef %i.bi, i32 noundef 1280263750, ptr noundef nonnull %i.bx, ptr noundef nonnull %i.by) #21 ; 0 uses
  %i.ca = tail call i32 @git_env_bool(ptr noundef nonnull @.str.43, i32 noundef 1) #21
  %.not124 = icmp eq i32 %i.ca, 0
  br i1 %.not124, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cb = getelementptr inbounds nuw i8, ptr %i.x, i64 88
  %i.cc = getelementptr inbounds nuw i8, ptr %i.x, i64 96
  %i.cd = tail call i32 @pair_chunk(ptr noundef %i.bi, i32 noundef 1112821072, ptr noundef nonnull %i.cb, ptr noundef nonnull %i.cc) #21 ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.ce = tail call i32 @git_env_bool(ptr noundef nonnull @.str.44, i32 noundef 1) #21
  %.not125 = icmp eq i32 %i.ce, 0
  br i1 %.not125, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cf = getelementptr inbounds nuw i8, ptr %i.x, i64 144
  %i.cg = getelementptr inbounds nuw i8, ptr %i.x, i64 152
  %i.ch = tail call i32 @pair_chunk(ptr noundef %i.bi, i32 noundef 1380533336, ptr noundef nonnull %i.cf, ptr noundef nonnull %i.cg) #21 ; 0 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.ci = load i32, ptr %i.bg, align 8, !tbaa !86
  %i.cj = zext i32 %i.ci to i64
  %i.ck = tail call ptr @xcalloc(i64 noundef %i.cj, i64 noundef 8) #21
  %i.cl = getelementptr inbounds nuw i8, ptr %i.x, i64 176 ; 3 uses
  store ptr %i.ck, ptr %i.cl, align 8, !tbaa !94
  %i.cm = load i32, ptr %i.bg, align 8, !tbaa !86
  %i.cn = zext i32 %i.cm to i64
  %i.co = tail call ptr @xcalloc(i64 noundef %i.cn, i64 noundef 8) #21
  %i.cp = getelementptr inbounds nuw i8, ptr %i.x, i64 192
  store ptr %i.co, ptr %i.cp, align 8, !tbaa !95
  %i.cq = load i32, ptr %i.bg, align 8, !tbaa !86 ; 3 uses
  %.not142 = icmp eq i32 %i.cq, 0
  br i1 %.not142, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ac
  %i.cr = load ptr, ptr %i.bn, align 8, !tbaa !124 ; 2 uses
  %i.cs = load i64, ptr %i.bo, align 8, !tbaa !125 ; 2 uses
  %i.ct = load ptr, ptr %i.cl, align 8, !tbaa !94 ; 3 uses
  %wide.trip.count = zext i32 %i.cq to i64        ; 2 uses
  store ptr %i.cr, ptr %i.ct, align 8, !tbaa !96
  %i.cu = tail call ptr @memchr(ptr noundef %i.cr, i32 noundef 0, i64 noundef %i.cs) #24 ; 2 uses
  %.not126.peel = icmp eq ptr %i.cu, null
  br i1 %.not126.peel, label %.loopexit, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph
  %i.cv = load i8, ptr %i.ah, align 4, !tbaa !91
  %i.cw = icmp eq i8 %i.cv, 1
  %exitcond.peel.not = icmp eq i32 %i.cq, 1
  br i1 %exitcond.peel.not, label %._crit_edge, label %.peel.next

.peel.next:                                       ; preds = %bb.ad, %bb.ag
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ag ], [ 1, %bb.ad ] ; 4 uses
  %.pn = phi ptr [ %i.dc, %bb.ag ], [ %i.cu, %bb.ad ]
  %.0102141 = getelementptr inbounds nuw i8, ptr %.pn, i64 1 ; 4 uses
  %i.cx = load ptr, ptr %i.bn, align 8, !tbaa !124
  %i.cy = ptrtoint ptr %.0102141 to i64
  %i.cz = ptrtoint ptr %i.cx to i64
  %.neg = sub i64 %i.cs, %i.cy
  %i.da = add i64 %.neg, %i.cz
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %indvars.iv
  store ptr %.0102141, ptr %i.db, align 8, !tbaa !96
  %i.dc = tail call ptr @memchr(ptr noundef nonnull %.0102141, i32 noundef 0, i64 noundef %i.da) #24 ; 2 uses
  %.not126 = icmp eq ptr %i.dc, null
  br i1 %.not126, label %.loopexit, label %bb.ae

.loopexit:                                        ; preds = %.peel.next, %.lr.ph
  %i.dd = tail call fastcc ptr @_(ptr noundef nonnull @.str.45)
  tail call void (ptr, ...) @die(ptr noundef %i.dd) #22
  unreachable

bb.ae:                                            ; preds = %.peel.next
  br i1 %i.cw, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.de = add nsw i64 %indvars.iv, -1             ; 2 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.de
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !96
  %i.dh = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.0102141, ptr noundef nonnull dereferenceable(1) %i.dg) #24
  %i.di = icmp slt i32 %i.dh, 1
  br i1 %i.di, label %.loopexit148, label %bb.ag

.loopexit148:                                     ; preds = %bb.af
  %i.dj = tail call fastcc ptr @_(ptr noundef nonnull @.str.46)
  %i.dk = load ptr, ptr %i.cl, align 8, !tbaa !94 ; 2 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.de
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !96
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %indvars.iv
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !96
  tail call void (ptr, ...) @die(ptr noundef %i.dj, ptr noundef %i.dm, ptr noundef %i.do) #22
  unreachable

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.peel.next, !llvm.loop !121

._crit_edge:                                      ; preds = %bb.ag, %bb.ad, %bb.ac
  %.pre-phi = phi i64 [ 0, %bb.ac ], [ 1, %bb.ad ], [ %wide.trip.count, %bb.ag ]
  tail call void @trace2_data_intmax_fl(ptr noundef nonnull @.str.11, i32 noundef 221, ptr noundef nonnull @.str.19, ptr noundef %i.c, ptr noundef nonnull @.str.47, i64 noundef %.pre-phi) #21
  %i.dp = getelementptr inbounds nuw i8, ptr %i.x, i64 60
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !88
  %i.dr = zext i32 %i.dq to i64
  tail call void @trace2_data_intmax_fl(ptr noundef nonnull @.str.11, i32 noundef 222, ptr noundef nonnull @.str.19, ptr noundef %i.c, ptr noundef nonnull @.str.48, i64 noundef %i.dr) #21
  tail call void @free_chunkfile(ptr noundef %i.bi) #21
  br label %bb.al

bb.ah:                                            ; preds = %bb.p, %bb.a, %_.exit133, %_.exit130, %_.exit
  %.0106 = phi ptr [ null, %bb.a ], [ null, %_.exit ], [ null, %_.exit130 ], [ %i.x, %_.exit133 ], [ %i.x, %bb.p ]
  %.0105 = phi i64 [ undef, %bb.a ], [ undef, %_.exit ], [ %i.k, %_.exit130 ], [ %i.k, %_.exit133 ], [ %i.k, %bb.p ]
  %.0104 = phi ptr [ null, %bb.a ], [ null, %_.exit ], [ null, %_.exit130 ], [ %i.v, %_.exit133 ], [ %i.v, %bb.p ] ; 2 uses
  %.0 = phi ptr [ null, %bb.a ], [ null, %_.exit ], [ null, %_.exit130 ], [ null, %_.exit133 ], [ %i.bi, %bb.p ]
  tail call void @free(ptr noundef %.0106) #21
  tail call void @free_chunkfile(ptr noundef %.0) #21
  %.not127 = icmp eq ptr %.0104, null
  br i1 %.not127, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ds = tail call i32 @munmap(ptr noundef nonnull %.0104, i64 noundef %.0105) #21 ; 0 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.dt = icmp sgt i32 %i.d, -1
  br i1 %i.dt, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.du = tail call i32 @close(i32 noundef %i.d) #21 ; 0 uses
  br label %bb.al

bb.al:                                            ; preds = %bb.aj, %bb.ak, %._crit_edge
  %.0107 = phi ptr [ %i.x, %._crit_edge ], [ null, %bb.ak ], [ null, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret ptr %.0107
}

declare void @strbuf_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @close_midx(ptr noundef captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.f, label %bb.b

end_hunk_0
begin_hunk_1_@prepare_midx_pack:bb.a

midx_for_pack.exit:                               ; preds = %.critedge.i
  %i.p = sub nuw i32 %1, %i.e
  %i.q = getelementptr inbounds nuw i8, ptr %.023.i, i64 192 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !95
  %i.s = zext i32 %i.p to i64                     ; 4 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !98
  %magicptr = ptrtoint ptr %i.u to i64
  switch i64 %magicptr, label %bb.e [
    i64 -1, label %bb.i
    i64 0, label %bb.f
  ]

bb.e:                                             ; preds = %midx_for_pack.exit
  br label %bb.i

bb.f:                                             ; preds = %midx_for_pack.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !128
  %i.x = getelementptr inbounds nuw i8, ptr %.023.i, i64 176
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !94
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.s
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !96
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %2, ptr noundef nonnull @.str.5, ptr noundef %i.w, ptr noundef %i.aa) #21
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !71
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !78
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.ag = load i8, ptr %i.af, align 4, !tbaa !129, !range !130, !noundef !131
  %i.ah = zext nneg i8 %i.ag to i32
  %i.ai = call ptr @packfile_store_load_pack(ptr noundef %i.ac, ptr noundef %i.ae, i32 noundef %i.ah) #21 ; 3 uses
  call void @strbuf_release(ptr noundef nonnull %2) #21
  %.not14 = icmp eq ptr %i.ai, null
  br i1 %.not14, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aj = load ptr, ptr %i.q, align 8, !tbaa !95
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.s
  store ptr inttoptr (i64 -1 to ptr), ptr %i.ak, align 8, !tbaa !98
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 112 ; 2 uses
  %i.am = load i16, ptr %i.al, align 8
  %i.an = or i16 %i.am, 128
  store i16 %i.an, ptr %i.al, align 8
  %i.ao = load ptr, ptr %i.q, align 8, !tbaa !95
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.s
  store ptr %i.ai, ptr %i.ap, align 8, !tbaa !98
  br label %bb.i

bb.i:                                             ; preds = %midx_for_pack.exit, %bb.h, %bb.g, %bb.e
  %.0 = phi i32 [ 1, %bb.g ], [ 0, %bb.e ], [ 0, %bb.h ], [ 1, %midx_for_pack.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret i32 %.0
}

declare ptr @packfile_store_load_pack(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @nth_midxed_pack(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not22.i = icmp eq ptr %0, null
  br i1 %.not22.i, label %.critedge18.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.023.i = phi ptr [ %.0.i, %bb.b ], [ %0, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.023.i, i64 172
  %i.b = load i32, ptr %i.a, align 4, !tbaa !85   ; 3 uses
  %i.c = icmp ult i32 %1, %i.b
  br i1 %i.c, label %bb.b, label %.critedge.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.d = getelementptr inbounds nuw i8, ptr %.023.i, i64 160
  %.0.i = load ptr, ptr %i.d, align 8, !tbaa !100 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %.critedge18.i, label %.lr.ph.i, !llvm.loop !0

.critedge18.i:                                    ; preds = %bb.b, %bb.a
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.11, i32 noundef 445, ptr noundef nonnull @.str.60, i32 noundef %1) #22
  unreachable

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.e = getelementptr inbounds nuw i8, ptr %.023.i, i64 56 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !86
  %i.g = add i32 %i.f, %i.b
  %.not17.i = icmp ult i32 %1, %i.g
  br i1 %.not17.i, label %midx_for_pack.exit, label %bb.c

bb.c:                                             ; preds = %.critedge.i
  %i.h = getelementptr inbounds nuw i8, ptr %.023.i, i64 172
  %i.i = tail call fastcc ptr @_(ptr noundef nonnull @.str.61)
  %i.j = load i32, ptr %i.e, align 8, !tbaa !86
  %i.k = load i32, ptr %i.h, align 4, !tbaa !85
  %i.l = add i32 %i.k, %i.j
  tail call void (ptr, ...) @die(ptr noundef %i.i, i32 noundef %1, i32 noundef %i.l) #22
  unreachable

midx_for_pack.exit:                               ; preds = %.critedge.i
  %i.m = sub nuw i32 %1, %i.b
  %i.n = getelementptr inbounds nuw i8, ptr %.023.i, i64 192
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !95
  %i.p = zext i32 %i.m to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !98   ; 2 uses
  %i.s = icmp eq ptr %i.r, inttoptr (i64 -1 to ptr)
  %. = select i1 %i.s, ptr null, ptr %i.r
  ret ptr %.
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @nth_bitmapped_pack(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not22.i = icmp eq ptr %0, null
  br i1 %.not22.i, label %.critedge18.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.023.i = phi ptr [ %.0.i, %bb.b ], [ %0, %bb.a ] ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.023.i, i64 172
  %i.b = load i32, ptr %i.a, align 4, !tbaa !85   ; 3 uses
  %i.c = icmp ult i32 %2, %i.b
  br i1 %i.c, label %bb.b, label %.critedge.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.d = getelementptr inbounds nuw i8, ptr %.023.i, i64 160
  %.0.i = load ptr, ptr %i.d, align 8, !tbaa !100 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %.critedge18.i, label %.lr.ph.i, !llvm.loop !0

.critedge18.i:                                    ; preds = %bb.b, %bb.a
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.11, i32 noundef 445, ptr noundef nonnull @.str.60, i32 noundef %2) #22
  unreachable

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.e = getelementptr inbounds nuw i8, ptr %.023.i, i64 56 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !86
  %i.g = add i32 %i.f, %i.b
  %.not17.i = icmp ult i32 %2, %i.g
  br i1 %.not17.i, label %midx_for_pack.exit, label %bb.c

bb.c:                                             ; preds = %.critedge.i
  %i.h = getelementptr inbounds nuw i8, ptr %.023.i, i64 172
  %i.i = tail call fastcc ptr @_(ptr noundef nonnull @.str.61)
  %i.j = load i32, ptr %i.e, align 8, !tbaa !86
  %i.k = load i32, ptr %i.h, align 4, !tbaa !85
  %i.l = add i32 %i.k, %i.j
  tail call void (ptr, ...) @die(ptr noundef %i.i, i32 noundef %2, i32 noundef %i.l) #22
  unreachable

midx_for_pack.exit:                               ; preds = %.critedge.i
  %i.m = sub nuw i32 %2, %i.b
  %i.n = getelementptr inbounds nuw i8, ptr %.023.i, i64 88 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !132
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %bb.d, label %bb.f

bb.d:                                             ; preds = %midx_for_pack.exit
  %i.p = load i32, ptr @git_gettext_enabled, align 4, !tbaa !82
  %.not4.i = icmp eq i32 %i.p, 0
  br i1 %.not4.i, label %_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #21
  br label %_.exit

_.exit:                                           ; preds = %bb.d, %bb.e
  %.0.i13 = phi ptr [ %i.q, %bb.e ], [ @.str.6, %bb.d ]
  %i.r = tail call i32 (ptr, ...) @error(ptr noundef %.0.i13) #21 ; 0 uses
  br label %bb.j

bb.f:                                             ; preds = %midx_for_pack.exit
  %i.s = tail call i32 @prepare_midx_pack(ptr noundef nonnull %.023.i, i32 noundef %2)
  %.not12 = icmp eq i32 %i.s, 0
  br i1 %.not12, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = load i32, ptr @git_gettext_enabled, align 4, !tbaa !82
  %.not4.i14 = icmp eq i32 %i.t, 0
  br i1 %.not4.i14, label %_.exit16, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #21
  br label %_.exit16

_.exit16:                                         ; preds = %bb.g, %bb.h
  %.0.i15 = phi ptr [ %i.u, %bb.h ], [ @.str.7, %bb.g ]
  %i.v = tail call i32 (ptr, ...) @error(ptr noundef %.0.i15, i32 noundef %2) #21 ; 0 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %.023.i, i64 192
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !95
  %i.y = zext i32 %i.m to i64                     ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !98
  store ptr %i.aa, ptr %1, align 8, !tbaa !134
  %i.ab = load ptr, ptr %i.n, align 8, !tbaa !132
  %i.ac = shl nuw nsw i64 %i.y, 3
  %3 = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ac ; 8 uses
  %4 = load i8, ptr %3, align 1, !tbaa !84
  %5 = zext i8 %4 to i32
  %6 = shl nuw i32 %5, 24
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 1
  %8 = load i8, ptr %7, align 1, !tbaa !84
  %9 = zext i8 %8 to i32
  %10 = shl nuw nsw i32 %9, 16
  %11 = or disjoint i32 %10, %6
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 2
  %13 = load i8, ptr %12, align 1, !tbaa !84
  %14 = zext i8 %13 to i32
  %15 = shl nuw nsw i32 %14, 8
  %16 = or disjoint i32 %11, %15
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 3
  %17 = load i8, ptr %i.ad, align 1, !tbaa !84
  %18 = zext i8 %17 to i32
  %19 = or disjoint i32 %16, %18
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %19, ptr %i.ae, align 8, !tbaa !135
  %20 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %21 = load i8, ptr %20, align 1, !tbaa !84
  %22 = zext i8 %21 to i32
  %23 = shl nuw i32 %22, 24
  %24 = getelementptr inbounds nuw i8, ptr %3, i64 5
  %25 = load i8, ptr %24, align 1, !tbaa !84
  %26 = zext i8 %25 to i32
  %27 = shl nuw nsw i32 %26, 16
  %28 = or disjoint i32 %27, %23
  %29 = getelementptr inbounds nuw i8, ptr %3, i64 6
  %30 = load i8, ptr %29, align 1, !tbaa !84
  %31 = zext i8 %30 to i32
  %32 = shl nuw nsw i32 %31, 8
  %33 = or disjoint i32 %28, %32
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 7
  %34 = load i8, ptr %i.af, align 1, !tbaa !84
  %35 = zext i8 %34 to i32
  %36 = or disjoint i32 %33, %35
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %36, ptr %i.ag, align 4, !tbaa !136
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 %2, ptr %i.ah, align 8, !tbaa !137
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %.023.i, ptr %i.ai, align 8, !tbaa !138
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_.exit16, %_.exit
  %.0 = phi i32 [ -1, %_.exit16 ], [ 0, %bb.i ], [ -1, %_.exit ]
  ret i32 %.0
}

declare i32 @error(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @_(ptr noundef %0) unnamed_addr #6 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !84
  %.not = icmp eq i8 %i.a, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr @git_gettext_enabled, align 4, !tbaa !82
  %.not4 = icmp eq i32 %i.b, 0
  br i1 %.not4, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %0, i32 noundef 5) #21
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi ptr [ %i.c, %bb.c ], [ @.str.62, %bb.a ], [ %0, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @bsearch_one_midx(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !101
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !102
  %i.e = load ptr, ptr %1, align 8, !tbaa !29
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !45
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 448
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !62
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !65
  %i.m = tail call i32 @bsearch_hash(ptr noundef %0, ptr noundef %i.b, ptr noundef %i.d, i64 noundef %i.l, ptr noundef %2) #21
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.o = load i32, ptr %i.n, align 8, !tbaa !87
  %i.p = load i32, ptr %2, align 4, !tbaa !82
  %i.q = add i32 %i.p, %i.o
  store i32 %i.q, ptr %2, align 4, !tbaa !82
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 %i.m
}

declare i32 @bsearch_hash(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @bsearch_midx(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not7 = icmp eq ptr %1, null
  br i1 %.not7, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %bsearch_one_midx.exit.us, label %bsearch_one_midx.exit

bsearch_one_midx.exit.us:                         ; preds = %.lr.ph, %bb.b
  %.058.us = phi ptr [ %i.o, %bb.b ], [ %1, %.lr.ph ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.058.us, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !101
  %i.c = getelementptr inbounds nuw i8, ptr %.058.us, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !102
  %i.e = load ptr, ptr %.058.us, align 8, !tbaa !29
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !45
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 448
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !62
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !65
  %i.m = tail call i32 @bsearch_hash(ptr noundef %0, ptr noundef %i.b, ptr noundef %i.d, i64 noundef %i.l, ptr noundef null) #21
  %.not6.us = icmp eq i32 %i.m, 0
  br i1 %.not6.us, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %bsearch_one_midx.exit.us
  %i.n = getelementptr inbounds nuw i8, ptr %.058.us, i64 160
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !89   ; 2 uses
  %.not.us = icmp eq ptr %i.o, null
  br i1 %.not.us, label %._crit_edge, label %bsearch_one_midx.exit.us, !llvm.loop !1

bsearch_one_midx.exit:                            ; preds = %.lr.ph, %bb.c
  %.058 = phi ptr [ %i.ah, %bb.c ], [ %1, %.lr.ph ] ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.058, i64 104
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !101
  %i.r = getelementptr inbounds nuw i8, ptr %.058, i64 112
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !102
  %i.t = load ptr, ptr %.058, align 8, !tbaa !29
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !33
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !45
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 448
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !62
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !65
  %i.ab = tail call i32 @bsearch_hash(ptr noundef %0, ptr noundef %i.q, ptr noundef %i.s, i64 noundef %i.aa, ptr noundef nonnull %2) #21
  %i.ac = getelementptr inbounds nuw i8, ptr %.058, i64 168
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !87
  %i.ae = load i32, ptr %2, align 4, !tbaa !82
  %i.af = add i32 %i.ae, %i.ad
  store i32 %i.af, ptr %2, align 4, !tbaa !82
  %.not6 = icmp eq i32 %i.ab, 0
  br i1 %.not6, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bsearch_one_midx.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %.058, i64 160
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !89 ; 2 uses
  %.not = icmp eq ptr %i.ah, null
  br i1 %.not, label %._crit_edge, label %bsearch_one_midx.exit, !llvm.loop !1

._crit_edge:                                      ; preds = %bsearch_one_midx.exit, %bb.c, %bsearch_one_midx.exit.us, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.a ], [ 1, %bsearch_one_midx.exit.us ], [ 0, %bb.c ], [ 1, %bsearch_one_midx.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @midx_has_oid(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not7.i = icmp eq ptr %0, null
  br i1 %.not7.i, label %bsearch_midx.exit, label %bsearch_one_midx.exit.us.i

bsearch_one_midx.exit.us.i:                       ; preds = %bb.a, %bb.b
  %.058.us.i = phi ptr [ %i.o, %bb.b ], [ %0, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.058.us.i, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !101
  %i.c = getelementptr inbounds nuw i8, ptr %.058.us.i, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !102
  %i.e = load ptr, ptr %.058.us.i, align 8, !tbaa !29
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !45
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 448
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !62
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !65
  %i.m = tail call i32 @bsearch_hash(ptr noundef %1, ptr noundef %i.b, ptr noundef %i.d, i64 noundef %i.l, ptr noundef null) #21
  %.not6.us.i = icmp eq i32 %i.m, 0
  br i1 %.not6.us.i, label %bb.b, label %bsearch_midx.exit

bb.b:                                             ; preds = %bsearch_one_midx.exit.us.i
  %i.n = getelementptr inbounds nuw i8, ptr %.058.us.i, i64 160
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !89   ; 2 uses
  %.not.us.i = icmp eq ptr %i.o, null
  br i1 %.not.us.i, label %bsearch_midx.exit, label %bsearch_one_midx.exit.us.i, !llvm.loop !1

bsearch_midx.exit:                                ; preds = %bsearch_one_midx.exit.us.i, %bb.b, %bb.a
  %.0.i = phi i32 [ 0, %bb.a ], [ 1, %bsearch_one_midx.exit.us.i ], [ 0, %bb.b ]
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @nth_midxed_object_oid(ptr nofree noundef writeonly captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.b = load i32, ptr %i.a, align 4, !tbaa !88
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.d = load i32, ptr %i.c, align 8, !tbaa !87
  %i.e = add i32 %i.d, %i.b
  %.not = icmp ult i32 %2, %i.e
  br i1 %.not, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.019.i = phi ptr [ %.0.i, %bb.b ], [ %1, %bb.a ] ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.019.i, i64 168
  %i.g = load i32, ptr %i.f, align 8, !tbaa !87   ; 3 uses
  %i.h = icmp ult i32 %2, %i.g
  br i1 %i.h, label %bb.b, label %.critedge.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.i = getelementptr inbounds nuw i8, ptr %.019.i, i64 160
  %.0.i = load ptr, ptr %i.i, align 8, !tbaa !100 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %.critedge15.i, label %.lr.ph.i, !llvm.loop !2

.critedge15.i:                                    ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.11, i32 noundef 427, ptr noundef nonnull @.str.63, i32 noundef %2) #22
  unreachable

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.j = getelementptr inbounds nuw i8, ptr %.019.i, i64 60
  %i.k = load i32, ptr %i.j, align 4, !tbaa !88
  %i.l = add i32 %i.k, %i.g
  %.not14.i = icmp ult i32 %2, %i.l
  br i1 %.not14.i, label %midx_for_object.exit, label %bb.c

bb.c:                                             ; preds = %.critedge.i
  %i.m = tail call fastcc ptr @_(ptr noundef nonnull @.str.64)
  tail call void (ptr, ...) @die(ptr noundef %i.m) #22
  unreachable

midx_for_object.exit:                             ; preds = %.critedge.i
  %i.n = sub nuw i32 %2, %i.g
  %i.o = getelementptr inbounds nuw i8, ptr %.019.i, i64 112
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !102
  %i.q = getelementptr inbounds nuw i8, ptr %.019.i, i64 53
  %i.r = load i8, ptr %i.q, align 1, !tbaa !92
  %i.s = zext i8 %i.r to i64
  %i.t = zext i32 %i.n to i64
  %i.u = mul nuw nsw i64 %i.s, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.u
  %i.w = load ptr, ptr %.019.i, align 8, !tbaa !29
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !33
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !45
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 448
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !62 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !65
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %0, ptr readonly align 1 %i.v, i64 %i.ad, i1 false)
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !65 ; 3 uses
  %i.af = icmp ult i64 %i.ae, 32
  br i1 %i.af, label %bb.d, label %bb.e

bb.d:                                             ; preds = %midx_for_object.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %i.ae
  %i.ah = sub nuw nsw i64 32, %i.ae
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ag, i8 0, i64 %i.ah, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %midx_for_object.exit
  %.not.i.i = icmp eq ptr %i.ab, @hash_algos
  br i1 %.not.i.i, label %oidread.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not.1.i.i = icmp eq ptr %i.ab, getelementptr inbounds nuw (i8, ptr @hash_algos, i64 112)
  br i1 %.not.1.i.i, label %oidread.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not.2.i.i = icmp eq ptr %i.ab, getelementptr inbounds nuw (i8, ptr @hash_algos, i64 224)
  %spec.select.i.i = select i1 %.not.2.i.i, i32 2, i32 0
  br label %oidread.exit

oidread.exit:                                     ; preds = %bb.e, %bb.f, %bb.g
  %.2.i.i = phi i32 [ %spec.select.i.i, %bb.g ], [ 0, %bb.e ], [ 1, %bb.f ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %.2.i.i, ptr %i.ai, align 4, !tbaa !104
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %oidread.exit
  %.0 = phi ptr [ %0, %oidread.exit ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local i64 @nth_midxed_offset(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not18.i = icmp eq ptr %0, null
  br i1 %.not18.i, label %.critedge15.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.019.i = phi ptr [ %.0.i, %bb.b ], [ %0, %bb.a ] ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.019.i, i64 168
  %i.b = load i32, ptr %i.a, align 8, !tbaa !87   ; 3 uses
  %i.c = icmp ult i32 %1, %i.b
  br i1 %i.c, label %bb.b, label %.critedge.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.d = getelementptr inbounds nuw i8, ptr %.019.i, i64 160
  %.0.i = load ptr, ptr %i.d, align 8, !tbaa !100 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %.critedge15.i, label %.lr.ph.i, !llvm.loop !2

.critedge15.i:                                    ; preds = %bb.b, %bb.a
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.11, i32 noundef 427, ptr noundef nonnull @.str.63, i32 noundef %1) #22
  unreachable

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.e = getelementptr inbounds nuw i8, ptr %.019.i, i64 60
  %i.f = load i32, ptr %i.e, align 4, !tbaa !88
  %i.g = add i32 %i.f, %i.b
  %.not14.i = icmp ult i32 %1, %i.g
  br i1 %.not14.i, label %midx_for_object.exit, label %bb.c

bb.c:                                             ; preds = %.critedge.i
  %i.h = tail call fastcc ptr @_(ptr noundef nonnull @.str.64)
  tail call void (ptr, ...) @die(ptr noundef %i.h) #22
  unreachable

midx_for_object.exit:                             ; preds = %.critedge.i
  %i.i = sub nuw i32 %1, %i.b
  %i.j = getelementptr inbounds nuw i8, ptr %.019.i, i64 120
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !105
  %i.l = zext i32 %i.i to i64
  %i.m = shl nuw nsw i64 %i.l, 3
  %2 = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.m ; 4 uses
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %4 = load i8, ptr %3, align 1, !tbaa !84
  %5 = zext i8 %4 to i32
  %6 = shl nuw i32 %5, 24                         ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %2, i64 5
  %8 = load i8, ptr %7, align 1, !tbaa !84
  %9 = zext i8 %8 to i32
  %10 = shl nuw nsw i32 %9, 16
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 6
  %11 = load i8, ptr %i.n, align 1, !tbaa !84
  %12 = zext i8 %11 to i32
  %13 = shl nuw nsw i32 %12, 8
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 7
  %14 = load i8, ptr %i.o, align 1, !tbaa !84
  %15 = zext i8 %14 to i32
  %16 = or disjoint i32 %10, %15
  %17 = or disjoint i32 %16, %13
  %18 = or disjoint i32 %17, %6                   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.019.i, i64 128
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !139  ; 2 uses
  %.not = icmp eq ptr %i.q, null
  %.not10 = icmp sgt i32 %6, -1
  %or.cond = select i1 %.not, i1 true, i1 %.not10
  br i1 %or.cond, label %bb.g, label %bb.d

bb.d:                                             ; preds = %midx_for_object.exit
  %i.r = and i32 %18, 2147483647
  %i.s = zext nneg i32 %i.r to i64                ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.019.i, i64 136
  %i.u = load i64, ptr %i.t, align 8, !tbaa !140
  %i.v = lshr i64 %i.u, 3
  %.not11 = icmp samesign ugt i64 %i.v, %i.s
  br i1 %.not11, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = tail call fastcc ptr @_(ptr noundef nonnull @.str.8)
  tail call void (ptr, ...) @die(ptr noundef %i.w) #22
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.x = shl nuw nsw i64 %i.s, 3
  %19 = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.x ; 2 uses
  %20 = load i32, ptr %19, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %19, i64 4
  %21 = load i32, ptr %i.y, align 1
  %22 = zext i32 %20 to i64
  %23 = zext i32 %21 to i64
  %24 = shl nuw i64 %23, 32
  %25 = or disjoint i64 %24, %22
  %op.rdx = tail call i64 @llvm.bswap.i64(i64 %25)
  br label %bb.h

bb.g:                                             ; preds = %midx_for_object.exit
  %i.z = zext i32 %18 to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0 = phi i64 [ %op.rdx, %bb.f ], [ %i.z, %bb.g ]
  ret i64 %.0
}

; Function Attrs: noreturn
declare void @die(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i32 @nth_midxed_pack_int_id(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not18.i = icmp eq ptr %0, null
  br i1 %.not18.i, label %.critedge15.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.019.i = phi ptr [ %.0.i, %bb.b ], [ %0, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.019.i, i64 168
  %i.b = load i32, ptr %i.a, align 8, !tbaa !87   ; 3 uses
  %i.c = icmp ult i32 %1, %i.b
  br i1 %i.c, label %bb.b, label %.critedge.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.d = getelementptr inbounds nuw i8, ptr %.019.i, i64 160
  %.0.i = load ptr, ptr %i.d, align 8, !tbaa !100 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %.critedge15.i, label %.lr.ph.i, !llvm.loop !2

.critedge15.i:                                    ; preds = %bb.b, %bb.a
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.11, i32 noundef 427, ptr noundef nonnull @.str.63, i32 noundef %1) #22
  unreachable

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.e = getelementptr inbounds nuw i8, ptr %.019.i, i64 60
  %i.f = load i32, ptr %i.e, align 4, !tbaa !88
  %i.g = add i32 %i.f, %i.b
  %.not14.i = icmp ult i32 %1, %i.g
  br i1 %.not14.i, label %midx_for_object.exit, label %bb.c

bb.c:                                             ; preds = %.critedge.i
  %i.h = tail call fastcc ptr @_(ptr noundef nonnull @.str.64)
  tail call void (ptr, ...) @die(ptr noundef %i.h) #22
  unreachable

midx_for_object.exit:                             ; preds = %.critedge.i
  %i.i = sub nuw i32 %1, %i.b
  %i.j = getelementptr inbounds nuw i8, ptr %.019.i, i64 172
  %i.k = load i32, ptr %i.j, align 4, !tbaa !85
  %i.l = getelementptr inbounds nuw i8, ptr %.019.i, i64 120
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !105
  %i.n = zext i32 %i.i to i64
  %i.o = shl nuw nsw i64 %i.n, 3
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.o
  %i.q = load i32, ptr %i.p, align 1
  %i.r = tail call i32 @llvm.bswap.i32(i32 %i.q)
  %i.s = add i32 %i.r, %i.k
  ret i32 %i.s
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @fill_midx_entry(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %.not7.i = icmp eq ptr %0, null
  br i1 %.not7.i, label %bsearch_midx.exit.thread, label %bsearch_one_midx.exit.i

bsearch_one_midx.exit.i:                          ; preds = %bb.a, %bb.b
  %.058.i = phi ptr [ %i.t, %bb.b ], [ %0, %bb.a ] ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.058.i, i64 104
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !101
  %i.d = getelementptr inbounds nuw i8, ptr %.058.i, i64 112
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !102
  %i.f = load ptr, ptr %.058.i, align 8, !tbaa !29
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !33
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !45
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 448
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !62
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !65
  %i.n = call i32 @bsearch_hash(ptr noundef %1, ptr noundef %i.c, ptr noundef %i.e, i64 noundef %i.m, ptr noundef nonnull %i.a) #21
  %i.o = getelementptr inbounds nuw i8, ptr %.058.i, i64 168
  %i.p = load i32, ptr %i.o, align 8, !tbaa !87
  %i.q = load i32, ptr %i.a, align 4, !tbaa !82
  %i.r = add i32 %i.q, %i.p                       ; 8 uses
  store i32 %i.r, ptr %i.a, align 4, !tbaa !82
  %.not6.i = icmp eq i32 %i.n, 0
  br i1 %.not6.i, label %bb.b, label %.lr.ph.i14

bb.b:                                             ; preds = %bsearch_one_midx.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %.058.i, i64 160
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !89   ; 2 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %bsearch_midx.exit.thread, label %bsearch_one_midx.exit.i, !llvm.loop !1

.lr.ph.i14:                                       ; preds = %bsearch_one_midx.exit.i, %bb.c
  %.019.i = phi ptr [ %.0.i15, %bb.c ], [ %0, %bsearch_one_midx.exit.i ] ; 8 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.019.i, i64 168
  %i.v = load i32, ptr %i.u, align 8, !tbaa !87   ; 2 uses
  %i.w = icmp ult i32 %i.r, %i.v
  br i1 %i.w, label %bb.c, label %.critedge.i

bb.c:                                             ; preds = %.lr.ph.i14
  %i.x = getelementptr inbounds nuw i8, ptr %.019.i, i64 160
  %.0.i15 = load ptr, ptr %i.x, align 8, !tbaa !100 ; 2 uses
  %.not.i16 = icmp eq ptr %.0.i15, null
  br i1 %.not.i16, label %.critedge15.i, label %.lr.ph.i14, !llvm.loop !2

.critedge15.i:                                    ; preds = %bb.c
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.11, i32 noundef 427, ptr noundef nonnull @.str.63, i32 noundef %i.r) #22
  unreachable

.critedge.i:                                      ; preds = %.lr.ph.i14
  %i.y = getelementptr inbounds nuw i8, ptr %.019.i, i64 60
  %i.z = load i32, ptr %i.y, align 4, !tbaa !88
  %i.aa = add i32 %i.z, %i.v
  %.not14.i = icmp ult i32 %i.r, %i.aa
  br i1 %.not14.i, label %.lr.ph.i.i, label %bb.d

bb.d:                                             ; preds = %.critedge.i
  %i.ab = call fastcc ptr @_(ptr noundef nonnull @.str.64)
  call void (ptr, ...) @die(ptr noundef %i.ab) #22
  unreachable

.lr.ph.i.i:                                       ; preds = %.critedge.i, %bb.e
  %.019.i.i = phi ptr [ %.0.i.i, %bb.e ], [ %.019.i, %.critedge.i ] ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 168
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !87 ; 3 uses
  %i.ae = icmp ult i32 %i.r, %i.ad
  br i1 %i.ae, label %bb.e, label %.critedge.i.i

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 160
  %.0.i.i = load ptr, ptr %i.af, align 8, !tbaa !100 ; 2 uses
  %.not.i.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.i.i, label %.critedge15.i.i, label %.lr.ph.i.i, !llvm.loop !2

.critedge15.i.i:                                  ; preds = %bb.e
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.11, i32 noundef 427, ptr noundef nonnull @.str.63, i32 noundef %i.r) #22
  unreachable

.critedge.i.i:                                    ; preds = %.lr.ph.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 60
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !88
  %i.ai = add i32 %i.ah, %i.ad
  %.not14.i.i = icmp ult i32 %i.r, %i.ai
  br i1 %.not14.i.i, label %nth_midxed_pack_int_id.exit, label %bb.f

bb.f:                                             ; preds = %.critedge.i.i
  %i.aj = call fastcc ptr @_(ptr noundef nonnull @.str.64)
  call void (ptr, ...) @die(ptr noundef %i.aj) #22
  unreachable

nth_midxed_pack_int_id.exit:                      ; preds = %.critedge.i.i
  %i.ak = sub nuw i32 %i.r, %i.ad
  %i.al = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 172
  %i.am = load i32, ptr %i.al, align 4, !tbaa !85
  %i.an = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 120
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !105
  %i.ap = zext i32 %i.ak to i64
  %i.aq = shl nuw nsw i64 %i.ap, 3
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 1
  %i.at = call i32 @llvm.bswap.i32(i32 %i.as)
  %i.au = add i32 %i.at, %i.am                    ; 2 uses
  %i.av = call i32 @prepare_midx_pack(ptr noundef nonnull %.019.i, i32 noundef %i.au)
  %.not10 = icmp eq i32 %i.av, 0
  br i1 %.not10, label %bb.g, label %bsearch_midx.exit.thread

bb.g:                                             ; preds = %nth_midxed_pack_int_id.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %.019.i, i64 192
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !95
  %i.ay = getelementptr inbounds nuw i8, ptr %.019.i, i64 172
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !85
  %i.ba = sub i32 %i.au, %i.az
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !98 ; 4 uses
  %i.be = call i32 @is_pack_valid(ptr noundef %i.bd) #21
  %.not11 = icmp eq i32 %i.be, 0
  br i1 %.not11, label %bsearch_midx.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bf = getelementptr i8, ptr %i.bd, i64 52
  %.val = load i32, ptr %i.bf, align 4, !tbaa !143
  %.not12 = icmp eq i32 %.val, 0
  br i1 %.not12, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  %i.bh = call i32 @oidset_contains(ptr noundef nonnull %i.bg, ptr noundef %1) #21
  %.not13 = icmp eq i32 %i.bh, 0
  br i1 %.not13, label %bb.j, label %bsearch_midx.exit.thread

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bi = load i32, ptr %i.a, align 4, !tbaa !82
  %i.bj = call i64 @nth_midxed_offset(ptr noundef nonnull %.019.i, i32 noundef %i.bi)
  store i64 %i.bj, ptr %2, align 8, !tbaa !107
end_hunk_1
