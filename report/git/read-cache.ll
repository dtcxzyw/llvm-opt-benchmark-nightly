Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/read-cache?download=true
inline.NumInlined: 280
inline.NumDeleted: 95
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@load_cache_entry_block:bb.a
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !45
  %i.hk = zext i8 %i.hj to i32
  %i.hl = or disjoint i32 %i.hh, %i.hk
  %i.hm = getelementptr inbounds nuw i8, ptr %i.ax, i64 44
  store i32 %i.hl, ptr %i.hm, align 4, !tbaa !272
  %i.hn = getelementptr inbounds nuw i8, ptr %i.i, i64 36
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !45
  %i.hp = zext i8 %i.ho to i32
  %i.hq = shl nuw i32 %i.hp, 24
  %i.hr = getelementptr inbounds nuw i8, ptr %i.i, i64 37
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !45
  %i.ht = zext i8 %i.hs to i32
  %i.hu = shl nuw nsw i32 %i.ht, 16
  %i.hv = or disjoint i32 %i.hu, %i.hq
  %i.hw = getelementptr inbounds nuw i8, ptr %i.i, i64 38
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !45
  %i.hy = zext i8 %i.hx to i32
  %i.hz = shl nuw nsw i32 %i.hy, 8
  %i.ia = or disjoint i32 %i.hv, %i.hz
  %i.ib = getelementptr inbounds nuw i8, ptr %i.i, i64 39
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !45
  %i.id = zext i8 %i.ic to i32
  %i.ie = or disjoint i32 %i.ia, %i.id
  %i.if = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  store i32 %i.ie, ptr %i.if, align 8, !tbaa !59
  %i.ig = and i32 %.077.i, -4096
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ax, i64 56
  store i32 %i.ig, ptr %i.ih, align 8, !tbaa !40
  %i.ii = trunc i64 %.080.i to i32
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  store i32 %i.ii, ptr %i.ij, align 8, !tbaa !40
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ax, i64 68
  store i32 0, ptr %i.ik, align 4, !tbaa !40
  %i.il = getelementptr inbounds nuw i8, ptr %i.ax, i64 72 ; 2 uses
  %i.im = load ptr, ptr @the_repository, align 8, !tbaa !58
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 448
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !78 ; 4 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 16 ; 2 uses
  %i.iq = load i64, ptr %i.ip, align 8, !tbaa !92
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.il, ptr nonnull readonly align 1 %i.o, i64 %i.iq, i1 false)
  %i.ir = load i64, ptr %i.ip, align 8, !tbaa !92 ; 3 uses
  %i.is = icmp ult i64 %i.ir, 32
  br i1 %i.is, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.it = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.ir
  %i.iu = sub nuw nsw i64 32, %i.ir
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.it, i8 0, i64 %i.iu, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.not.i.i.i = icmp eq ptr %i.io, @hash_algos
  br i1 %.not.i.i.i, label %oidread.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.not.1.i.i.i = icmp eq ptr %i.io, getelementptr inbounds nuw (i8, ptr @hash_algos, i64 112)
  br i1 %.not.1.i.i.i, label %oidread.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not.2.i.i.i = icmp eq ptr %i.io, getelementptr inbounds nuw (i8, ptr @hash_algos, i64 224)
  %spec.select.i.i.i = select i1 %.not.2.i.i.i, i32 2, i32 0
  br label %oidread.exit.i

oidread.exit.i:                                   ; preds = %bb.r, %bb.q, %bb.p
  %.2.i.i.i = phi i32 [ %spec.select.i.i.i, %bb.r ], [ 0, %bb.p ], [ 1, %bb.q ]
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ax, i64 104
  store i32 %.2.i.i.i, ptr %i.iv, align 8, !tbaa !87
  br i1 %i.r, label %bb.s, label %bb.v

bb.s:                                             ; preds = %oidread.exit.i
  %.not88.i = icmp eq i64 %.1.i, 0
  br i1 %.not88.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ax, i64 108
  %i.ix = getelementptr inbounds nuw i8, ptr %.08, i64 108
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.iw, ptr nonnull align 4 %i.ix, i64 %.1.i, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ax, i64 108
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 %.1.i
  %reass.sub = sub i64 %.080.i, %.1.i
  %i.ja = add i64 %reass.sub, 1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.iz, ptr align 1 %.179.i, i64 %i.ja, i1 false)
  %i.jb = ptrtoint ptr %.179.i to i64
  %i.jc = ptrtoint ptr %i.i to i64
  %i.jd = add i64 %i.jb, 1
  %i.je = add i64 %.1.i, %i.jc
  %i.jf = sub i64 %i.jd, %i.je
  %i.jg = add i64 %i.jf, %.080.i
  br label %create_from_disk.exit

bb.v:                                             ; preds = %oidread.exit.i
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ax, i64 108
  %i.ji = add i64 %.080.i, 1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.jh, ptr align 1 %.179.i, i64 %i.ji, i1 false)
  %i.jj = load ptr, ptr @the_repository, align 8, !tbaa !58
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 448
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !78
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 16
  %i.jn = load i64, ptr %i.jm, align 8, !tbaa !92
  %i.jo = and i32 %.077.i, 16384
  %.not87.i = icmp eq i32 %i.jo, 0
  %i.jp = select i1 %.not87.i, i64 2, i64 4
  %i.jq = and i64 %.080.i, 4294967295
  %i.jr = add nuw nsw i64 %i.jq, %i.jp
  %i.js = add i64 %i.jr, %i.jn
  %i.jt = and i64 %i.js, -8
  %i.ju = add i64 %i.jt, 48
  br label %create_from_disk.exit

create_from_disk.exit:                            ; preds = %bb.u, %bb.v
  %storemerge.i = phi i64 [ %i.ju, %bb.v ], [ %i.jg, %bb.u ]
  %i.jv = icmp eq i32 %i.fz, 16384
  br i1 %i.jv, label %bb.w, label %set_index_entry.exit

bb.w:                                             ; preds = %create_from_disk.exit
  store i32 1, ptr %i.e, align 4, !tbaa !47
  br label %set_index_entry.exit

set_index_entry.exit:                             ; preds = %create_from_disk.exit, %bb.w
  %i.jw = load ptr, ptr %0, align 8, !tbaa !32
  %i.jx = getelementptr inbounds [8 x i8], ptr %i.jw, i64 %indvars.iv
  store ptr %i.ax, ptr %i.jx, align 8, !tbaa !34
  call void @add_name_hash(ptr noundef nonnull %0, ptr noundef nonnull %i.ax) #28
  %i.jy = add i64 %storemerge.i, %.0177           ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.jz = icmp slt i64 %indvars.iv.next, %i.g
  br i1 %i.jz, label %bb.b, label %._crit_edge, !llvm.loop !267

._crit_edge:                                      ; preds = %set_index_entry.exit, %bb.a
  %.017.lcssa = phi i64 [ %5, %bb.a ], [ %i.jy, %set_index_entry.exit ]
  %i.ka = sub i64 %.017.lcssa, %5
  ret i64 %i.ka
}

declare i64 @decode_varint(ptr noundef) local_unnamed_addr #3

declare ptr @mem_pool_alloc(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @tweak_fsmonitor(ptr noundef) local_unnamed_addr #3

declare void @remove_untracked_cache(ptr noundef) local_unnamed_addr #3

declare void @add_untracked_cache(ptr noundef) local_unnamed_addr #3

declare i32 @repo_config_get_split_index(ptr noundef) local_unnamed_addr #3

declare void @remove_split_index(ptr noundef) local_unnamed_addr #3

declare void @add_split_index(ptr noundef) local_unnamed_addr #3

declare i32 @check_and_freshen_file(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @warning(ptr noundef, ...) local_unnamed_addr #3

declare void @strbuf_grow(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @strbuf_add(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i64 @pread_in_full(i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @convert_to_sparse(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @do_write_index(ptr noundef %0, ptr noundef %1, i32 noundef range(i32 -2, 1) %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %i.d = alloca [32 x i8], align 16               ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  %i.j = alloca i32, align 4                      ; 4 uses
  %i.k = alloca i32, align 4                      ; 4 uses
  %i.l = alloca i32, align 4                      ; 4 uses
  %i.m = alloca i32, align 4                      ; 4 uses
  %i.n = alloca i32, align 4                      ; 4 uses
  %i.o = alloca i32, align 4                      ; 4 uses
  %i.p = alloca i32, align 4                      ; 4 uses
  %i.q = alloca i32, align 4                      ; 4 uses
  %i.r = alloca i32, align 4                      ; 4 uses
  %i.s = alloca i32, align 4                      ; 4 uses
  %i.t = alloca i32, align 4                      ; 4 uses
  %i.u = alloca i32, align 4                      ; 4 uses
  %i.v = alloca i32, align 4                      ; 4 uses
  %i.w = alloca i32, align 4                      ; 4 uses
  %i.x = alloca i32, align 4                      ; 4 uses
  %i.y = alloca i32, align 4                      ; 4 uses
  %i.z = alloca i32, align 4                      ; 4 uses
  %i.aa = alloca i32, align 4                     ; 4 uses
  %i.ab = alloca i32, align 4                     ; 4 uses
  %i.ac = alloca i32, align 4                     ; 4 uses
  %i.ad = alloca i32, align 4                     ; 4 uses
  %i.ae = alloca i32, align 4                     ; 4 uses
  %i.af = alloca i32, align 4                     ; 4 uses
  %i.ag = alloca i32, align 4                     ; 11 uses
  %i.ah = alloca i32, align 4                     ; 7 uses
  %i.ai = alloca [16 x i8], align 16              ; 4 uses
  %4 = alloca %struct.stat, align 8               ; 5 uses
  %i.aj = alloca i32, align 4                     ; 7 uses
  %i.ak = alloca ptr, align 8                     ; 4 uses
  %5 = alloca %struct.cache_header, align 4       ; 6 uses
  %6 = alloca %struct.stat, align 8               ; 4 uses
  %7 = alloca %struct.ondisk_cache_entry, align 16 ; 10 uses
  %8 = alloca %struct.strbuf, align 8             ; 9 uses
  %9 = alloca %struct.strbuf, align 8             ; 28 uses
  %i.al = alloca i32, align 4                     ; 6 uses
  %i.am = tail call i64 @getnanotime() #28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.an = load ptr, ptr %0, align 8, !tbaa !32    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !42 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) @__const.do_write_index.sb, i64 24, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ar = load i8, ptr %i.aq, align 8
  %i.as = lshr i8 %i.ar, 2
  %i.at = and i8 %i.as, 1
  %i.au = zext nneg i8 %i.at to i32               ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !52 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) @__const.do_write_index.sb, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al) #28
  %i.ax = load ptr, ptr @the_repository, align 8, !tbaa !58
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 448
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !78
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bb = load volatile i32, ptr %i.ba, align 8, !tbaa !280
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !281
  %i.be = tail call ptr @hashfd(ptr noundef %i.az, i32 noundef %i.bb, ptr noundef %i.bd) #28 ; 38 uses
  tail call void @prepare_repo_settings(ptr noundef %i.aw) #28
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aw, i64 340
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !282
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 2488
  store i32 %i.bg, ptr %i.bh, align 8, !tbaa !285
  %i.bi = icmp sgt i32 %i.ap, 0                   ; 2 uses
  br i1 %i.bi, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.ap to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.0188337 = phi i32 [ 0, %.lr.ph.preheader ], [ %.1189, %.lr.ph ]
  %.0190336 = phi i32 [ 0, %.lr.ph.preheader ], [ %spec.select, %.lr.ph ]
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !34
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 56 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !40 ; 3 uses
  %i.bn = lshr i32 %i.bm, 17
  %i.bo = and i32 %i.bn, 1
  %spec.select = add nuw nsw i32 %i.bo, %.0190336 ; 2 uses
  %i.bp = and i32 %i.bm, -16385
  %i.bq = and i32 %i.bm, 1610612736
  %.not241 = icmp ne i32 %i.bq, 0                 ; 2 uses
  %masksel = select i1 %.not241, i32 16384, i32 0
  %storemerge = or disjoint i32 %i.bp, %masksel
  %i.br = zext i1 %.not241 to i32
  %.1189 = add nuw nsw i32 %.0188337, %i.br       ; 2 uses
  store i32 %storemerge, ptr %i.bl, align 8, !tbaa !40
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !273

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.bs = icmp eq i32 %.1189, 0
  %i.bt = select i1 %i.bs, i32 2, i32 3
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0190.lcssa = phi i32 [ 0, %bb.a ], [ %spec.select, %._crit_edge.loopexit ]
  %.0188.lcssa = phi i32 [ 2, %bb.a ], [ %i.bt, %._crit_edge.loopexit ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !97 ; 2 uses
  %.not = icmp eq i32 %i.bv, 0
  br i1 %.not, label %bb.b, label %bb.i

bb.b:                                             ; preds = %._crit_edge
  %i.bw = tail call ptr @getenv(ptr noundef nonnull @.str.85) #28 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak) #28
  %.not.i = icmp eq ptr %i.bw, null
  br i1 %.not.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  tail call void @prepare_repo_settings(ptr noundef nonnull %i.aw) #28
  %i.bx = getelementptr inbounds nuw i8, ptr %i.aw, i64 336
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !286 ; 2 uses
  %i.bz = icmp sgt i32 %i.by, -1
  %spec.select.i = select i1 %i.bz, i32 %i.by, i32 3 ; 2 uses
  %i.ca = add nsw i32 %spec.select.i, -5
  %or.cond.i = icmp ult i32 %i.ca, -3
  br i1 %or.cond.i, label %bb.d, label %get_index_format_default.exit

bb.d:                                             ; preds = %bb.c
  %i.cb = load i32, ptr @git_gettext_enabled, align 4, !tbaa !40
  %.not4.i.i = icmp eq i32 %i.cb, 0
  br i1 %.not4.i.i, label %_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cc = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.86, i32 noundef 5) #28
  br label %_.exit.i

_.exit.i:                                         ; preds = %bb.e, %bb.d
  %.0.i.i = phi ptr [ %i.cc, %bb.e ], [ @.str.86, %bb.d ]
  tail call void (ptr, ...) @warning(ptr noundef %.0.i.i, i32 noundef 3) #28
  br label %get_index_format_default.exit

bb.f:                                             ; preds = %bb.b
  %i.cd = call i64 @__isoc23_strtoul(ptr noundef nonnull %i.bw, ptr noundef nonnull %i.ak, i32 noundef 10) #28
  %i.ce = trunc i64 %i.cd to i32                  ; 2 uses
  %i.cf = load ptr, ptr %i.ak, align 8, !tbaa !88
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !45
  %i.ch = icmp ne i8 %i.cg, 0
  %i.ci = add i32 %i.ce, -5
  %i.cj = icmp ult i32 %i.ci, -3
  %or.cond5.i = select i1 %i.ch, i1 true, i1 %i.cj
  br i1 %or.cond5.i, label %bb.g, label %get_index_format_default.exit

bb.g:                                             ; preds = %bb.f
  %i.ck = load i32, ptr @git_gettext_enabled, align 4, !tbaa !40
  %.not4.i20.i = icmp eq i32 %i.ck, 0
  br i1 %.not4.i20.i, label %_.exit22.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cl = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.87, i32 noundef 5) #28
  br label %_.exit22.i

_.exit22.i:                                       ; preds = %bb.h, %bb.g
  %.0.i21.i = phi ptr [ %i.cl, %bb.h ], [ @.str.87, %bb.g ]
  call void (ptr, ...) @warning(ptr noundef %.0.i21.i, i32 noundef 3) #28
  br label %get_index_format_default.exit

get_index_format_default.exit:                    ; preds = %bb.c, %_.exit.i, %bb.f, %_.exit22.i
  %.016.i = phi i32 [ %spec.select.i, %bb.c ], [ 3, %_.exit.i ], [ 3, %_.exit22.i ], [ %i.ce, %bb.f ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak) #28
  store i32 %.016.i, ptr %i.bu, align 8, !tbaa !97
  br label %bb.i

bb.i:                                             ; preds = %get_index_format_default.exit, %._crit_edge
  %i.cm = phi i32 [ %.016.i, %get_index_format_default.exit ], [ %i.bv, %._crit_edge ] ; 2 uses
  %i.cn = and i32 %i.cm, -2
  %switch = icmp eq i32 %i.cn, 2
  br i1 %switch, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 %.0188.lcssa, ptr %i.bu, align 8, !tbaa !97
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.co = phi i32 [ %i.cm, %bb.i ], [ %.0188.lcssa, %bb.j ] ; 2 uses
  store i32 1129466180, ptr %5, align 4, !tbaa !94
  %i.cp = call i32 @llvm.bswap.i32(i32 %i.co)
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %i.cp, ptr %i.cq, align 4, !tbaa !95
  %i.cr = sub nsw i32 %i.ap, %.0190.lcssa
  %i.cs = call i32 @llvm.bswap.i32(i32 %i.cr)
  %i.ct = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.cs, ptr %i.ct, align 4, !tbaa !98
  call void @hashwrite(ptr noundef nonnull %i.be, ptr noundef nonnull %5, i32 noundef 12) #28
  %i.cu = load ptr, ptr @the_repository, align 8, !tbaa !58
  %i.cv = call i32 @repo_config_get_index_threads(ptr noundef %i.cu, ptr noundef nonnull %i.al) #28
  %.not208 = icmp eq i32 %i.cv, 0
  br i1 %.not208, label %bb.l, label %.thread

.thread:                                          ; preds = %bb.k
  store i32 1, ptr %i.al, align 4, !tbaa !40
  br label %bb.s

bb.l:                                             ; preds = %bb.k
  %.pr = load i32, ptr %i.al, align 4, !tbaa !40
  %.not209 = icmp eq i32 %.pr, 1
  br i1 %.not209, label %bb.s, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj) #28
  %i.cw = load ptr, ptr @the_repository, align 8, !tbaa !58
  %i.cx = call i32 @repo_config_get_bool(ptr noundef %i.cw, ptr noundef nonnull @.str.88, ptr noundef nonnull %i.aj) #28
  %.not.i251 = icmp eq i32 %i.cx, 0
  br i1 %.not.i251, label %record_ieot.exit, label %.split

.split:                                           ; preds = %bb.m
  %i.cy = load ptr, ptr @the_repository, align 8, !tbaa !58
  %i.cz = call i32 @repo_config_get_index_threads(ptr noundef %i.cy, ptr noundef nonnull %i.aj) #28
  %.not1.i = icmp ne i32 %i.cz, 0
  %i.da = load i32, ptr %i.aj, align 4
  %i.db = icmp eq i32 %i.da, 1
  %.not326 = select i1 %.not1.i, i1 true, i1 %i.db
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj) #28
  br i1 %.not326, label %bb.s, label %bb.n

record_ieot.exit:                                 ; preds = %bb.m
end_hunk_0
begin_hunk_1_@do_write_index:bb.a
.critedge.loopexit.split.loop.exit88.i:           ; preds = %bb.ar
  %i.ia = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.as, %.critedge.loopexit.split.loop.exit88.i, %.critedge.loopexit.split.loop.exit.i, %bb.aq
  %.pre-phi.i = phi i32 [ 0, %bb.aq ], [ %i.hs, %.critedge.loopexit.split.loop.exit.i ], [ %i.hs, %.critedge.loopexit.split.loop.exit88.i ], [ %i.hs, %bb.as ]
  %.0.lcssa.i = phi i32 [ 0, %bb.aq ], [ %i.hz, %.critedge.loopexit.split.loop.exit.i ], [ %i.ia, %.critedge.loopexit.split.loop.exit88.i ], [ %i.hs, %bb.as ] ; 3 uses
  %.lcssa69.i = phi i64 [ 0, %bb.aq ], [ %indvars.iv.i, %.critedge.loopexit.split.loop.exit.i ], [ %indvars.iv.i, %.critedge.loopexit.split.loop.exit88.i ], [ %i.hr, %bb.as ] ; 2 uses
  %i.ib = sub i32 %.pre-phi.i, %.0.lcssa.i
  %i.ic = sext i32 %i.ib to i64                   ; 2 uses
  %i.id = call zeroext i8 @encode_varint(i64 noundef %i.ic, ptr noundef nonnull %i.ai) #28
  %i.ie = load ptr, ptr @the_repository, align 8, !tbaa !58
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 448
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !78
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 16
  %i.ii = load i64, ptr %i.ih, align 8, !tbaa !92 ; 2 uses
  %i.ij = and i64 %i.ii, 4294967295
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.ij ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.im = load <4 x i32>, ptr %i.il, align 8, !tbaa !40
  %i.in = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %i.im)
  store <4 x i32> %i.in, ptr %7, align 16, !tbaa !40
  %i.io = getelementptr inbounds nuw i8, ptr %i.ef, i64 32
  %i.ip = load i32, ptr %i.io, align 8, !tbaa !151
  %i.iq = call i32 @llvm.bswap.i32(i32 %i.ip)
  store i32 %i.iq, ptr %i.eb, align 16, !tbaa !40
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ef, i64 36
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !152
  %i.it = call i32 @llvm.bswap.i32(i32 %i.is)
  store i32 %i.it, ptr %i.ec, align 4, !tbaa !40
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ef, i64 40
  %i.iv = load <4 x i32>, ptr %i.iu, align 8, !tbaa !40
  %i.iw = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %i.iv)
  %i.ix = shufflevector <4 x i32> %i.iw, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  store <4 x i32> %i.ix, ptr %i.ed, align 8, !tbaa !40
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ea, ptr nonnull readonly align 8 %i.ew, i64 %i.ii, i1 false)
  %i.iy = load i32, ptr %i.eg, align 8, !tbaa !40 ; 3 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ef, i64 64 ; 3 uses
  %i.ja = load i32, ptr %i.iz, align 8, !tbaa !40
  %spec.select.i63.i = call i32 @llvm.umin.i32(i32 %i.ja, i32 4095)
  %i.jb = and i32 %i.iy, 61440
  %i.jc = or disjoint i32 %spec.select.i63.i, %i.jb
  %i.jd = trunc nuw i32 %i.jc to i16
  %rev.i.i64.i = call noundef i16 @llvm.bswap.i16(i16 %i.jd)
  store i16 %rev.i.i64.i, ptr %i.ik, align 2, !tbaa !289
  %i.je = and i32 %i.iy, 16384
  %.not.i65.i = icmp eq i32 %i.je, 0
  br i1 %.not.i65.i, label %copy_cache_entry_to_ondisk.exit68.i, label %bb.at

bb.at:                                            ; preds = %.critedge.i
  %sum.shift.i66.i = lshr i32 %i.iy, 24
  %i.jf = trunc nuw nsw i32 %sum.shift.i66.i to i16
  %rev.i32.i67.i = and i16 %i.jf, 96
  %i.jg = getelementptr inbounds nuw i8, ptr %i.ik, i64 2
  store i16 %rev.i32.i67.i, ptr %i.jg, align 2, !tbaa !289
  br label %copy_cache_entry_to_ondisk.exit68.i

copy_cache_entry_to_ondisk.exit68.i:              ; preds = %bb.at, %.critedge.i
  call void @hashwrite(ptr noundef %i.be, ptr noundef nonnull %7, i32 noundef %i.gm) #28
  %i.jh = zext i8 %i.id to i32
  call void @hashwrite(ptr noundef %i.be, ptr noundef nonnull %i.ai, i32 noundef %i.jh) #28
  %i.ji = getelementptr inbounds nuw i8, ptr %i.hq, i64 %.lcssa69.i ; 2 uses
  %i.jj = load i32, ptr %i.iz, align 8, !tbaa !40
  %i.jk = sub i32 %i.jj, %.0.lcssa.i
  call void @hashwrite(ptr noundef %i.be, ptr noundef nonnull %i.ji, i32 noundef %i.jk) #28
  call void @hashwrite(ptr noundef %i.be, ptr noundef nonnull @ce_write_entry.padding, i32 noundef 1) #28
  %i.jl = load i32, ptr %i.iz, align 8, !tbaa !40
  %i.jm = sub i32 %i.jl, %.0.lcssa.i
  %i.jn = zext i32 %i.jm to i64
  call void @strbuf_splice(ptr noundef nonnull %8, i64 noundef %.lcssa69.i, i64 noundef %i.ic, ptr noundef nonnull %i.ji, i64 noundef %i.jn) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai) #28
  br label %bb.au

bb.au:                                            ; preds = %copy_cache_entry_to_ondisk.exit68.i, %copy_cache_entry_to_ondisk.exit.i
  br i1 %.not.i254, label %ce_write_entry.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.jo = getelementptr inbounds nuw i8, ptr %i.ef, i64 64
  store i32 %.055.i, ptr %i.jo, align 8, !tbaa !40
  %i.jp = load i32, ptr %i.eg, align 8, !tbaa !40
  %i.jq = and i32 %i.jp, -268435457
  store i32 %i.jq, ptr %i.eg, align 8, !tbaa !40
  br label %ce_write_entry.exit

ce_write_entry.exit:                              ; preds = %bb.au, %bb.av
  br i1 %.not218, label %bb.aw, label %ce_write_entry.exit._crit_edge

bb.aw:                                            ; preds = %ce_write_entry.exit
  %i.jr = add nsw i32 %.1, 1
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.t
  %.2186.ph = phi i32 [ %.0184342, %bb.t ], [ %.1185, %bb.aw ] ; 2 uses
  %.2182.ph = phi i64 [ %.0180343, %bb.t ], [ %.1181, %bb.aw ] ; 2 uses
  %.2.ph = phi i32 [ %.0174344, %bb.t ], [ %i.jr, %bb.aw ] ; 2 uses
  %indvars.iv.next361 = add nuw nsw i64 %indvars.iv360, 1 ; 2 uses
  %exitcond364.not = icmp eq i64 %indvars.iv.next361, %wide.trip.count363
  br i1 %exitcond364.not, label %ce_write_entry.exit._crit_edge, label %bb.t, !llvm.loop !275

ce_write_entry.exit._crit_edge:                   ; preds = %bb.ax, %ce_write_entry.exit
  %.not329.lcssa = phi i1 [ true, %ce_write_entry.exit ], [ false, %bb.ax ] ; 2 uses
  %.3187 = phi i32 [ %.1185, %ce_write_entry.exit ], [ %.2186.ph, %bb.ax ] ; 2 uses
  %.3183 = phi i64 [ %.1181, %ce_write_entry.exit ], [ %.2182.ph, %bb.ax ]
  %.3 = phi i32 [ %.1, %ce_write_entry.exit ], [ %.2.ph, %bb.ax ] ; 2 uses
  %i.js = icmp ne ptr %.1176, null                ; 3 uses
  %i.jt = icmp ne i32 %.3, 0
  %or.cond3 = select i1 %i.js, i1 %i.jt, i1 false
  br i1 %or.cond3, label %.split395, label %bb.ay

.split395:                                        ; preds = %ce_write_entry.exit._crit_edge
  %i.ju = getelementptr inbounds nuw i8, ptr %.1176, i64 4 ; 2 uses
  %i.jv = load i32, ptr %.1176, align 4, !tbaa !40
  %i.jw = sext i32 %i.jv to i64
  %i.jx = getelementptr inbounds [8 x i8], ptr %i.ju, i64 %i.jw
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 4
  store i32 %.3, ptr %i.jy, align 4, !tbaa !106
  %i.jz = trunc i64 %.3183 to i32
  %i.ka = load i32, ptr %.1176, align 4, !tbaa !40 ; 2 uses
  %i.kb = sext i32 %i.ka to i64
  %i.kc = getelementptr inbounds [8 x i8], ptr %i.ju, i64 %i.kb
  store i32 %i.jz, ptr %i.kc, align 4, !tbaa !105
  %i.kd = add nsw i32 %i.ka, 1
  store i32 %i.kd, ptr %.1176, align 4, !tbaa !40
  call void @strbuf_release(ptr noundef nonnull %8) #28
  br i1 %.not329.lcssa, label %bb.dk, label %bb.az

bb.ay:                                            ; preds = %ce_write_entry.exit._crit_edge
  call void @strbuf_release(ptr noundef nonnull %8) #28
  br i1 %.not329.lcssa, label %bb.dk, label %bb.az

bb.az:                                            ; preds = %.split395, %.thread391, %bb.ay
  %.3187390394 = phi i32 [ %i.au, %.thread391 ], [ %.3187, %bb.ay ], [ %.3187, %.split395 ]
  %i.ke = phi i1 [ %i.dt, %.thread391 ], [ %i.js, %bb.ay ], [ %i.js, %.split395 ]
  %.val = load i32, ptr %i.dr, align 8, !tbaa !288
  %.val246 = load i64, ptr %i.ds, align 8, !tbaa !287
  %i.kf = zext i32 %.val to i64
  %i.kg = add nsw i64 %.val246, %i.kf             ; 5 uses
  %.not220 = icmp eq i64 %i.kg, 0
  br i1 %.not220, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah) #28
  %i.kh = load ptr, ptr @the_repository, align 8, !tbaa !58
  %i.ki = call i32 @repo_config_get_bool(ptr noundef %i.kh, ptr noundef nonnull @.str.89, ptr noundef nonnull %i.ah) #28
  %.not.i256 = icmp eq i32 %i.ki, 0
  br i1 %.not.i256, label %record_eoie.exit, label %.split396

.split396:                                        ; preds = %bb.ba
  %i.kj = load ptr, ptr @the_repository, align 8, !tbaa !58
  %i.kk = call i32 @repo_config_get_index_threads(ptr noundef %i.kj, ptr noundef nonnull %i.ah) #28
  %.not1.i257 = icmp ne i32 %i.kk, 0
  %i.kl = load i32, ptr %i.ah, align 4
  %i.km = icmp eq i32 %i.kl, 1
  %.not331 = select i1 %.not1.i257, i1 true, i1 %i.km
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah) #28
  br i1 %.not331, label %bb.bc, label %bb.bb

record_eoie.exit:                                 ; preds = %bb.ba
  %i.kn = load i32, ptr %i.ah, align 4, !tbaa !40
  %i.ko = icmp eq i32 %i.kn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah) #28
  br i1 %i.ko, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %.split396, %record_eoie.exit
  %i.kp = call ptr @xcalloc(i64 noundef 1, i64 noundef 2408) #28 ; 2 uses
  %i.kq = load ptr, ptr @the_repository, align 8, !tbaa !58
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 448
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !78
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 40
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !96
  call void %i.ku(ptr noundef %i.kp) #28
  br label %bb.bc

bb.bc:                                            ; preds = %.split396, %bb.bb, %record_eoie.exit, %bb.az
  %.0198 = phi ptr [ %i.kp, %bb.bb ], [ null, %record_eoie.exit ], [ null, %bb.az ], [ null, %.split396 ] ; 27 uses
  br i1 %i.ke, label %bb.bd, label %bb.bj

bb.bd:                                            ; preds = %bb.bc
  %i.kv = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store i64 0, ptr %i.kv, align 8, !tbaa !85
  %i.kw = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !86 ; 2 uses
  %.not9.i = icmp eq ptr %i.kx, @strbuf_slopbuf
  br i1 %.not9.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  store i8 0, ptr %i.kx, align 1, !tbaa !45
  br label %strbuf_setlen.exit

bb.bf:                                            ; preds = %bb.bd
  %i.ky = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !45
  %.not10.i = icmp eq i8 %i.ky, 0
  br i1 %.not10.i, label %strbuf_setlen.exit, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @__assert_fail(ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.90, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__.strbuf_setlen) #29
  unreachable

strbuf_setlen.exit:                               ; preds = %bb.be, %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag) #28
  %10 = getelementptr inbounds nuw i8, ptr %i.ag, i64 1 ; 2 uses
  %11 = getelementptr inbounds nuw i8, ptr %i.ag, i64 2 ; 2 uses
  %12 = getelementptr inbounds nuw i8, ptr %i.ag, i64 3 ; 2 uses
  store <4 x i8> <i8 0, i8 0, i8 0, i8 1>, ptr %i.ag, align 4, !tbaa !45
  call void @strbuf_add(ptr noundef nonnull %9, ptr noundef nonnull %i.ag, i64 noundef 4) #28
  %i.kz = load i32, ptr %.1176, align 4, !tbaa !40
  %i.la = icmp sgt i32 %i.kz, 0
  br i1 %i.la, label %.lr.ph.i259, label %write_ieot_extension.exit

.lr.ph.i259:                                      ; preds = %strbuf_setlen.exit
  %i.lb = getelementptr inbounds nuw i8, ptr %.1176, i64 4
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bh, %.lr.ph.i259
  %indvars.iv.i260 = phi i64 [ 0, %.lr.ph.i259 ], [ %indvars.iv.next.i261, %bb.bh ] ; 2 uses
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.lb, i64 %indvars.iv.i260 ; 2 uses
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !105 ; 4 uses
  %13 = lshr i32 %i.ld, 24
  %14 = trunc nuw i32 %13 to i8
  store i8 %14, ptr %i.ag, align 4, !tbaa !45
  %15 = lshr i32 %i.ld, 16
  %16 = trunc i32 %15 to i8
  store i8 %16, ptr %10, align 1, !tbaa !45
  %17 = lshr i32 %i.ld, 8
  %18 = trunc i32 %17 to i8
  store i8 %18, ptr %11, align 2, !tbaa !45
  %19 = trunc i32 %i.ld to i8
  store i8 %19, ptr %12, align 1, !tbaa !45
  call void @strbuf_add(ptr noundef nonnull %9, ptr noundef nonnull %i.ag, i64 noundef 4) #28
  %i.le = getelementptr inbounds nuw i8, ptr %i.lc, i64 4
  %i.lf = load i32, ptr %i.le, align 4, !tbaa !106 ; 4 uses
  %20 = lshr i32 %i.lf, 24
  %21 = trunc nuw i32 %20 to i8
  store i8 %21, ptr %i.ag, align 4, !tbaa !45
  %22 = lshr i32 %i.lf, 16
  %23 = trunc i32 %22 to i8
  store i8 %23, ptr %10, align 1, !tbaa !45
  %24 = lshr i32 %i.lf, 8
  %25 = trunc i32 %24 to i8
  store i8 %25, ptr %11, align 2, !tbaa !45
  %26 = trunc i32 %i.lf to i8
  store i8 %26, ptr %12, align 1, !tbaa !45
  call void @strbuf_add(ptr noundef nonnull %9, ptr noundef nonnull %i.ag, i64 noundef 4) #28
  %indvars.iv.next.i261 = add nuw nsw i64 %indvars.iv.i260, 1 ; 2 uses
  %i.lg = load i32, ptr %.1176, align 4, !tbaa !40
  %i.lh = sext i32 %i.lg to i64
  %i.li = icmp slt i64 %indvars.iv.next.i261, %i.lh
  br i1 %i.li, label %bb.bh, label %write_ieot_extension.exit, !llvm.loop !276

write_ieot_extension.exit:                        ; preds = %bb.bh, %strbuf_setlen.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag) #28
  %i.lj = load i64, ptr %i.kv, align 8, !tbaa !85
  %i.lk = trunc i64 %i.lj to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  store i32 1414481225, ptr %i.ad, align 4, !tbaa !40
  call void @hashwrite(ptr noundef nonnull %i.be, ptr noundef nonnull %i.ad, i32 noundef 4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  %i.ll = call i32 @llvm.bswap.i32(i32 %i.lk)     ; 2 uses
  store i32 %i.ll, ptr %i.ac, align 4, !tbaa !40
  call void @hashwrite(ptr noundef nonnull %i.be, ptr noundef nonnull %i.ac, i32 noundef 4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  %.not.i262 = icmp eq ptr %.0198, null
  br i1 %.not.i262, label %write_index_ext_header.exit, label %bb.bi

bb.bi:                                            ; preds = %write_ieot_extension.exit
  store i32 1414481225, ptr %i.ae, align 4, !tbaa !40
  store i32 %i.ll, ptr %i.af, align 4, !tbaa !40
  call void @git_hash_update(ptr noundef nonnull %.0198, ptr noundef nonnull %i.ae, i64 noundef 4) #28
  call void @git_hash_update(ptr noundef nonnull %.0198, ptr noundef nonnull %i.af, i64 noundef 4) #28
  br label %write_index_ext_header.exit

write_index_ext_header.exit:                      ; preds = %write_ieot_extension.exit, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  %i.lm = load ptr, ptr %i.kw, align 8, !tbaa !86
  %i.ln = load i64, ptr %i.kv, align 8, !tbaa !85
  %i.lo = trunc i64 %i.ln to i32
  call void @hashwrite(ptr noundef nonnull %i.be, ptr noundef %i.lm, i32 noundef %i.lo) #28
  br label %bb.bj

bb.bj:                                            ; preds = %write_index_ext_header.exit, %bb.bc
  %i.lp = and i32 %2, 1
  %.not222 = icmp eq i32 %i.lp, 0
  br i1 %.not222, label %bb.bt, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !35
  %.not223 = icmp eq ptr %i.lr, null
  br i1 %.not223, label %bb.bt, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ls = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  store i64 0, ptr %i.ls, align 8, !tbaa !85
  %i.lt = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !86 ; 2 uses
  %.not9.i263 = icmp eq ptr %i.lu, @strbuf_slopbuf
  br i1 %.not9.i263, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  store i8 0, ptr %i.lu, align 1, !tbaa !45
  br label %strbuf_setlen.exit265

bb.bn:                                            ; preds = %bb.bl
  %i.lv = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !45
  %.not10.i264 = icmp eq i8 %i.lv, 0
  br i1 %.not10.i264, label %strbuf_setlen.exit265, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  call void @__assert_fail(ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.90, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__.strbuf_setlen) #29
  unreachable

strbuf_setlen.exit265:                            ; preds = %bb.bm, %bb.bn
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.lx = load i32, ptr %i.lw, align 4, !tbaa !47
  %.not224 = icmp eq i32 %i.lx, 0
  br i1 %.not224, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %strbuf_setlen.exit265
  %i.ly = call fastcc ptr @_(ptr noundef nonnull @.str.80)
  call void (ptr, ...) @die(ptr noundef %i.ly) #29
  unreachable

bb.bq:                                            ; preds = %strbuf_setlen.exit265
  %i.lz = call i32 @write_link_extension(ptr noundef nonnull %9, ptr noundef nonnull %0) #28
  %i.ma = icmp slt i32 %i.lz, 0
  br i1 %i.ma, label %.thread317, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.mb = load i64, ptr %i.ls, align 8, !tbaa !85
  %i.mc = trunc i64 %i.mb to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store i32 1802398060, ptr %i.z, align 4, !tbaa !40
  call void @hashwrite(ptr noundef nonnull %i.be, ptr noundef nonnull %i.z, i32 noundef 4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  %i.md = call i32 @llvm.bswap.i32(i32 %i.mc)     ; 2 uses
  store i32 %i.md, ptr %i.y, align 4, !tbaa !40
  call void @hashwrite(ptr noundef nonnull %i.be, ptr noundef nonnull %i.y, i32 noundef 4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  %.not.i266 = icmp eq ptr %.0198, null
  br i1 %.not.i266, label %write_index_ext_header.exit267, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  store i32 1802398060, ptr %i.aa, align 4, !tbaa !40
  store i32 %i.md, ptr %i.ab, align 4, !tbaa !40
  call void @git_hash_update(ptr noundef nonnull %.0198, ptr noundef nonnull %i.aa, i64 noundef 4) #28
  call void @git_hash_update(ptr noundef nonnull %.0198, ptr noundef nonnull %i.ab, i64 noundef 4) #28
  br label %write_index_ext_header.exit267

write_index_ext_header.exit267:                   ; preds = %bb.br, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  %i.me = load ptr, ptr %i.lt, align 8, !tbaa !86
  %i.mf = load i64, ptr %i.ls, align 8, !tbaa !85
  %i.mg = trunc i64 %i.mf to i32
  call void @hashwrite(ptr noundef nonnull %i.be, ptr noundef %i.me, i32 noundef %i.mg) #28
  br label %bb.bt

.thread317:                                       ; preds = %bb.bq
  %i.mh = load ptr, ptr %i.lt, align 8, !tbaa !86
  %i.mi = load i64, ptr %i.ls, align 8, !tbaa !85
  %i.mj = trunc i64 %i.mi to i32
  call void @hashwrite(ptr noundef nonnull %i.be, ptr noundef %i.mh, i32 noundef %i.mj) #28
  br label %bb.dl

bb.bt:                                            ; preds = %write_index_ext_header.exit267, %bb.bk, %bb.bj
  %i.mk = and i32 %2, 2
  %i.ml = icmp eq i32 %i.mk, 0
  %i.mm = icmp ne i32 %.3187390394, 0
  %or.cond5 = select i1 %i.ml, i1 true, i1 %i.mm
  br i1 %or.cond5, label %bb.ca, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.mn = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !117 ; 2 uses
  %.not225 = icmp eq ptr %i.mo, null
  br i1 %.not225, label %bb.ca, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.mp = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store i64 0, ptr %i.mp, align 8, !tbaa !85
  %i.mq = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !86 ; 2 uses
  %.not9.i268 = icmp eq ptr %i.mr, @strbuf_slopbuf
  br i1 %.not9.i268, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  store i8 0, ptr %i.mr, align 1, !tbaa !45
  %.pre = load ptr, ptr %i.mn, align 8, !tbaa !117
  br label %strbuf_setlen.exit270

bb.bx:                                            ; preds = %bb.bv
  %i.ms = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !45
  %.not10.i269 = icmp eq i8 %i.ms, 0
  br i1 %.not10.i269, label %strbuf_setlen.exit270, label %bb.by

bb.by:                                            ; preds = %bb.bx
  call void @__assert_fail(ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.90, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__.strbuf_setlen) #29
  unreachable

strbuf_setlen.exit270:                            ; preds = %bb.bw, %bb.bx
  %i.mt = phi ptr [ %.pre, %bb.bw ], [ %i.mo, %bb.bx ]
  call void @cache_tree_write(ptr noundef nonnull %9, ptr noundef %i.mt) #28
  %i.mu = load i64, ptr %i.mp, align 8, !tbaa !85
  %i.mv = trunc i64 %i.mu to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store i32 1162170964, ptr %i.v, align 4, !tbaa !40
  call void @hashwrite(ptr noundef nonnull %i.be, ptr noundef nonnull %i.v, i32 noundef 4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.mw = call i32 @llvm.bswap.i32(i32 %i.mv)     ; 2 uses
  store i32 %i.mw, ptr %i.u, align 4, !tbaa !40
  call void @hashwrite(ptr noundef nonnull %i.be, ptr noundef nonnull %i.u, i32 noundef 4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %.not.i271 = icmp eq ptr %.0198, null
  br i1 %.not.i271, label %write_index_ext_header.exit272, label %bb.bz

bb.bz:                                            ; preds = %strbuf_setlen.exit270
  store i32 1162170964, ptr %i.w, align 4, !tbaa !40
  store i32 %i.mw, ptr %i.x, align 4, !tbaa !40
  call void @git_hash_update(ptr noundef nonnull %.0198, ptr noundef nonnull %i.w, i64 noundef 4) #28
  call void @git_hash_update(ptr noundef nonnull %.0198, ptr noundef nonnull %i.x, i64 noundef 4) #28
  br label %write_index_ext_header.exit272

write_index_ext_header.exit272:                   ; preds = %strbuf_setlen.exit270, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %i.mx = load ptr, ptr %i.mq, align 8, !tbaa !86
  %i.my = load i64, ptr %i.mp, align 8, !tbaa !85
  %i.mz = trunc i64 %i.my to i32
  call void @hashwrite(ptr noundef nonnull %i.be, ptr noundef %i.mx, i32 noundef %i.mz) #28
  br label %bb.ca

bb.ca:                                            ; preds = %write_index_ext_header.exit272, %bb.bu, %bb.bt
end_hunk_1
