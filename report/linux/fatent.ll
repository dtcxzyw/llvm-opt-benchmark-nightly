Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/fatent?download=true
inline.NumInlined: 128
inline.NumDeleted: 43
begin_hunk_0_@fat_count_free_clusters:bb.a
  %i.bi = add i64 %i.bh, %.sroa.16.4
  %.val28.i = load i64, ptr %i.az, align 8
  %.val29.i = load ptr, ptr %i.ba, align 64
  %i.bj = trunc i64 %.val28.i to i32
  call void @__breadahead(ptr noundef %.val29.i, i64 noundef %i.bi, i32 noundef %i.bj) #8
  %i.bk = add i64 %.sroa.16.4, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.bk, %.sroa.20.058
  br i1 %exitcond.not, label %._crit_edge.i, label %bb.i, !llvm.loop !7

._crit_edge.i:                                    ; preds = %bb.i
  call void @blk_finish_plug(ptr noundef nonnull %1) #8
  %i.bl = add i64 %.sroa.1238.056, %.sroa.10.0
  %i.bm = sub i64 %.sroa.8.0, %.sroa.20.058
  %i.bn = call i64 @llvm.umin.i64(i64 %i.bm, i64 %.sroa.10.0)
  %i.bo = add i64 %i.bn, %.sroa.20.058
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge.i, %bb.h
  %.sroa.1238.2 = phi i64 [ %.sroa.1238.056, %bb.h ], [ %i.bl, %._crit_edge.i ]
  %.sroa.16.3 = phi i64 [ %.sroa.16.057, %bb.h ], [ %.sroa.20.058, %._crit_edge.i ]
  %.sroa.20.2 = phi i64 [ %.sroa.20.058, %bb.h ], [ %i.bo, %._crit_edge.i ]
  %i.bp = add i64 %.sroa.0.055, 1
  br label %fat_ent_reada.exit

fat_ent_reada.exit:                               ; preds = %bb.g, %bb.j
  %.sroa.0.2 = phi i64 [ %i.bp, %bb.j ], [ %.sroa.0.055, %bb.g ]
  %.sroa.1238.3 = phi i64 [ %.sroa.1238.2, %bb.j ], [ %.sroa.1238.056, %bb.g ]
  %.sroa.16.5 = phi i64 [ %.sroa.16.3, %bb.j ], [ %.sroa.16.057, %bb.g ]
  %.sroa.20.3 = phi i64 [ %.sroa.20.2, %bb.j ], [ %.sroa.20.058, %bb.g ]
  %.val.i31 = load ptr, ptr %i.h, align 32
  %i.bq = getelementptr i8, ptr %.val.i31, i64 248
  %i.br = load ptr, ptr %i.bq, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store ptr null, ptr %i.q, align 8
  %i.bs = load i32, ptr %i.p, align 8             ; 2 uses
  %i.bt = icmp sgt i32 %i.bs, 0
  br i1 %i.bt, label %.lr.ph.i.i, label %fat_ent_read_block.exit

.lr.ph.i.i:                                       ; preds = %fat_ent_reada.exit, %brelse.exit.i.i
  %i.bu = phi i32 [ %i.bx, %brelse.exit.i.i ], [ %i.bs, %fat_ent_reada.exit ]
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %brelse.exit.i.i ], [ 0, %fat_ent_reada.exit ] ; 2 uses
  %i.bv = getelementptr [8 x i8], ptr %i.r, i64 %indvars.iv.i.i
  %i.bw = load ptr, ptr %i.bv, align 8            ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i, label %brelse.exit.i.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i
  call void @__brelse(ptr noundef nonnull %i.bw) #8
  %.pre.i.i = load i32, ptr %i.p, align 8
  br label %brelse.exit.i.i

brelse.exit.i.i:                                  ; preds = %bb.k, %.lr.ph.i.i
  %i.bx = phi i32 [ %i.bu, %.lr.ph.i.i ], [ %.pre.i.i, %bb.k ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.by = sext i32 %i.bx to i64
  %i.bz = icmp slt i64 %indvars.iv.next.i.i, %i.by
  br i1 %i.bz, label %.lr.ph.i.i, label %fat_ent_read_block.exit, !llvm.loop !0

fat_ent_read_block.exit:                          ; preds = %brelse.exit.i.i, %fat_ent_reada.exit
  store i64 0, ptr %i.a, align 8, !annotation !18
  store i32 0, ptr %i.b, align 4, !annotation !18
  store i32 0, ptr %i.p, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false)
  %i.ca = load ptr, ptr %i.br, align 8
  %i.cb = load i32, ptr %2, align 8
  call void %i.ca(ptr noundef %0, i32 noundef %i.cb, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #8, !inline_history !1
  %i.cc = getelementptr i8, ptr %i.br, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = load i32, ptr %i.b, align 4
  %i.cf = load i64, ptr %i.a, align 8
  %i.cg = call i32 %i.cd(ptr noundef %0, ptr noundef nonnull %2, i32 noundef %i.ce, i64 noundef %i.cf) #8, !inline_history !1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %.not23 = icmp eq i32 %i.cg, 0
  br i1 %.not23, label %fat_ent_next.exit, label %.loopexit

fat_ent_next.exit:                                ; preds = %fat_ent_read_block.exit, %bb.l
  %.1 = phi i32 [ %spec.select, %bb.l ], [ %.059, %fat_ent_read_block.exit ]
  %i.ch = load ptr, ptr %i.bb, align 8
  %i.ci = call i32 %i.ch(ptr noundef nonnull %2) #8
  %i.cj = icmp eq i32 %i.ci, 0
  %i.ck = zext i1 %i.cj to i32
  %spec.select = add i32 %.1, %i.ck               ; 3 uses
  %i.cl = load ptr, ptr %i.i, align 8
  %i.cm = getelementptr i8, ptr %i.cl, i64 40
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = call i32 %i.cn(ptr noundef nonnull %2) #8, !inline_history !4
  %.not.i32 = icmp eq i32 %i.co, 0
  br i1 %.not.i32, label %bb.m, label %bb.l

bb.l:                                             ; preds = %fat_ent_next.exit
  %i.cp = load i32, ptr %2, align 8
  %i.cq = sext i32 %i.cp to i64
  %i.cr = load i64, ptr %i.s, align 8
  %i.cs = icmp ugt i64 %i.cr, %i.cq
  br i1 %i.cs, label %fat_ent_next.exit, label %bb.m, !llvm.loop !48

bb.m:                                             ; preds = %fat_ent_next.exit, %bb.l
  %i.ct = call i32 @__SCT__cond_resched() #8      ; 0 uses
  %i.cu = load i32, ptr %2, align 8               ; 2 uses
  %i.cv = sext i32 %i.cu to i64
  %i.cw = load i64, ptr %i.s, align 8
  %i.cx = icmp ugt i64 %i.cw, %i.cv
  br i1 %i.cx, label %bb.g, label %._crit_edge, !llvm.loop !49

._crit_edge:                                      ; preds = %bb.m, %fat_ra_init.exit
  %.0.lcssa = phi i32 [ 0, %fat_ra_init.exit ], [ %spec.select, %bb.m ]
  store i32 %.0.lcssa, ptr %i.l, align 4
  %i.cy = getelementptr i8, ptr %.val, i64 152
  store i32 1, ptr %i.cy, align 8
  %i.cz = getelementptr i8, ptr %0, i64 80
  %.val25 = load i64, ptr %i.cz, align 16
  %.val26 = load ptr, ptr %i.h, align 32          ; 2 uses
  %i.da = trunc i64 %.val25 to i1
  br i1 %i.da, label %mark_fsinfo_dirty.exit, label %bb.n

bb.n:                                             ; preds = %._crit_edge
  %i.db = getelementptr i8, ptr %.val26, i64 9
  %.val4.i = load i8, ptr %i.db, align 1
  %i.dc = icmp eq i8 %.val4.i, 32
  br i1 %i.dc, label %bb.o, label %mark_fsinfo_dirty.exit

bb.o:                                             ; preds = %bb.n
  %i.dd = getelementptr i8, ptr %.val26, i64 264
  %i.de = load ptr, ptr %i.dd, align 8
  call void @__mark_inode_dirty(ptr noundef %i.de, i32 noundef 16) #8
  br label %mark_fsinfo_dirty.exit

mark_fsinfo_dirty.exit:                           ; preds = %._crit_edge, %bb.n, %bb.o
  store ptr null, ptr %i.q, align 8
  %i.df = load i32, ptr %i.p, align 8             ; 2 uses
  %i.dg = icmp sgt i32 %i.df, 0
  br i1 %i.dg, label %.lr.ph.i35, label %fatent_brelse.exit

.lr.ph.i35:                                       ; preds = %mark_fsinfo_dirty.exit, %brelse.exit.i
  %i.dh = phi i32 [ %i.dk, %brelse.exit.i ], [ %i.df, %mark_fsinfo_dirty.exit ]
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %brelse.exit.i ], [ 0, %mark_fsinfo_dirty.exit ] ; 2 uses
  %i.di = getelementptr [8 x i8], ptr %i.r, i64 %indvars.iv.i
  %i.dj = load ptr, ptr %i.di, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.dj, null
  br i1 %.not.i.i, label %brelse.exit.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i35
  call void @__brelse(ptr noundef nonnull %i.dj) #8
  %.pre.i36 = load i32, ptr %i.p, align 8
  br label %brelse.exit.i

brelse.exit.i:                                    ; preds = %bb.p, %.lr.ph.i35
  %i.dk = phi i32 [ %i.dh, %.lr.ph.i35 ], [ %.pre.i36, %bb.p ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.dl = sext i32 %i.dk to i64
  %i.dm = icmp slt i64 %indvars.iv.next.i, %i.dl
  br i1 %i.dm, label %.lr.ph.i35, label %fatent_brelse.exit, !llvm.loop !0

fatent_brelse.exit:                               ; preds = %brelse.exit.i, %mark_fsinfo_dirty.exit
  store i32 0, ptr %i.p, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %fat_ent_read_block.exit, %bb.b, %fatent_brelse.exit
  %.120 = phi i32 [ 0, %bb.b ], [ 0, %fatent_brelse.exit ], [ %i.cg, %fat_ent_read_block.exit ]
  call void @mutex_unlock(ptr noundef %i.k) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret i32 %.120
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @fat_trim_fs(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %2 = alloca %struct.blk_plug, align 8           ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %3 = alloca %struct.fat_entry, align 8          ; 15 uses
  %i.h = getelementptr i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8              ; 12 uses
  %i.j = getelementptr i8, ptr %i.i, i64 864      ; 5 uses
  %.val = load ptr, ptr %i.j, align 32            ; 5 uses
  %i.k = getelementptr i8, ptr %.val, i64 248     ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 32, i1 false), !annotation !18
  %i.m = load i64, ptr %1, align 8
  %i.n = getelementptr i8, ptr %.val, i64 2       ; 2 uses
  %i.o = load i16, ptr %i.n, align 2
  %i.p = zext i16 %i.o to i64                     ; 3 uses
  %i.q = lshr i64 %i.m, %i.p
  %i.r = tail call i64 @llvm.umax.i64(i64 %i.q, i64 2) ; 3 uses
  %i.s = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.t = load i64, ptr %i.s, align 8              ; 2 uses
  %i.u = lshr i64 %i.t, %i.p
  %i.v = add i64 %i.u, -1
  %i.w = add i64 %i.v, %i.r                       ; 2 uses
  %i.x = getelementptr i8, ptr %1, i64 16
  %i.y = load i64, ptr %i.x, align 8
  %i.z = lshr i64 %i.y, %i.p                      ; 2 uses
  %i.aa = getelementptr i8, ptr %.val, i64 48     ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8            ; 3 uses
  %.not = icmp ult i64 %i.r, %i.ab
  br i1 %.not, label %bb.b, label %bb.z

bb.b:                                             ; preds = %bb.a
  %i.ac = getelementptr i8, ptr %.val, i64 4
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = zext i32 %i.ad to i64
  %i.af = icmp ult i64 %i.t, %i.ae
  br i1 %i.af, label %bb.z, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not93 = icmp ult i64 %i.w, %i.ab
  %i.ag = add i64 %i.ab, -1
  %spec.select = select i1 %.not93, i64 %i.w, i64 %i.ag ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 9 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i8 0, i64 24, i1 false)
  %i.ak = getelementptr i8, ptr %.val, i64 72     ; 4 uses
  tail call void @mutex_lock(ptr noundef %i.ak) #8
  %i.al = trunc i64 %i.r to i32                   ; 4 uses
  store i32 %i.al, ptr %3, align 8
  store ptr null, ptr %i.ai, align 8
  %i.am = trunc i64 %spec.select to i32           ; 2 uses
  %i.an = add i32 %i.am, 1
  %.val.i = load ptr, ptr %i.j, align 32
  %i.ao = getelementptr i8, ptr %.val.i, i64 248
  %i.ap = load ptr, ptr %i.ao, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  store i64 0, ptr %i.e, align 8, !annotation !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #10
  store i64 0, ptr %i.f, align 8, !annotation !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #10
  %i.aq = getelementptr i8, ptr %i.i, i64 208
  %i.ar = load ptr, ptr %i.aq, align 16           ; 2 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 48
  %i.at = load i64, ptr %i.as, align 8            ; 4 uses
  %.not.i = icmp sgt i32 %i.an, %i.al
  br i1 %.not.i, label %bb.d, label %fat_ra_init.exit

bb.d:                                             ; preds = %bb.c
  %i.au = getelementptr i8, ptr %i.ar, i64 56
  %i.av = load i64, ptr %i.au, align 8            ; 2 uses
  %i.aw = icmp ugt i64 %i.at, %i.av
  br i1 %i.aw, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ax = urem i64 %i.at, %i.av
  %i.ay = sub i64 %i.at, %i.ax
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.i = phi i64 [ %i.ay, %bb.e ], [ %i.at, %bb.d ]
  store i32 0, ptr %i.g, align 4, !annotation !18
  %i.az = getelementptr i8, ptr %i.i, i64 20
  %i.ba = load i8, ptr %i.az, align 4
  %i.bb = zext i8 %i.ba to i64
  %i.bc = sub nsw i64 13, %i.bb
  %i.bd = and i64 %i.bc, 4294967295
  %i.be = shl i64 %.0.i, %i.bd                    ; 2 uses
  %i.bf = load ptr, ptr %i.ap, align 8
  call void %i.bf(ptr noundef %i.i, i32 noundef %i.al, ptr noundef nonnull %i.g, ptr noundef nonnull %i.e) #8, !inline_history !5
  %i.bg = load ptr, ptr %i.ap, align 8
  call void %i.bg(ptr noundef %i.i, i32 noundef %i.am, ptr noundef nonnull %i.g, ptr noundef nonnull %i.f) #8, !inline_history !5
  %i.bh = load i64, ptr %i.f, align 8
  %i.bi = add i64 %i.bh, 1
  %i.bj = load i64, ptr %i.e, align 8
  %i.bk = sub i64 %i.bi, %i.bj                    ; 2 uses
  %i.bl = lshr i64 %i.be, 1
  %i.bm = and i64 %i.be, 4294967295
  %i.bn = call i64 @llvm.umin.i64(i64 %i.bm, i64 %i.bk)
  %i.bo = and i64 %i.bl, 2147483647
  %.pre = load i32, ptr %3, align 8
  br label %fat_ra_init.exit

fat_ra_init.exit:                                 ; preds = %bb.c, %bb.f
  %i.bp = phi i32 [ %.pre, %bb.f ], [ %i.al, %bb.c ] ; 2 uses
  %.sroa.8.0 = phi i64 [ %i.bk, %bb.f ], [ 0, %bb.c ]
  %.sroa.10.0 = phi i64 [ %i.bo, %bb.f ], [ 0, %bb.c ] ; 2 uses
  %.sroa.20.1 = phi i64 [ %i.bn, %bb.f ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  %i.bq = sext i32 %i.bp to i64
  %.not94154 = icmp ult i64 %spec.select, %i.bq
  br i1 %.not94154, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %fat_ra_init.exit
  %i.br = getelementptr i8, ptr %i.i, i64 24
  %i.bs = getelementptr i8, ptr %i.i, i64 192     ; 2 uses
  %i.bt = getelementptr i8, ptr %i.l, i64 24
  %i.bu = getelementptr i8, ptr %i.i, i64 20
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.t
  %i.bv = phi i32 [ %i.bp, %.lr.ph ], [ %i.ew, %bb.t ]
  %.073160 = phi i32 [ 0, %.lr.ph ], [ %.275, %bb.t ]
  %.076159 = phi i64 [ 0, %.lr.ph ], [ %.581, %bb.t ] ; 2 uses
  %.sroa.20.0158 = phi i64 [ %.sroa.20.1, %.lr.ph ], [ %.sroa.20.3, %bb.t ] ; 7 uses
  %.sroa.16.0157 = phi i64 [ 0, %.lr.ph ], [ %.sroa.16.5, %bb.t ] ; 4 uses
  %.sroa.12124.0156 = phi i64 [ 0, %.lr.ph ], [ %.sroa.12124.3, %bb.t ] ; 4 uses
  %.sroa.0.0155 = phi i64 [ 0, %.lr.ph ], [ %.sroa.0.2, %bb.t ] ; 4 uses
  %.not.i104 = icmp ult i64 %.sroa.16.0157, %.sroa.20.0158
  br i1 %.not.i104, label %bb.h, label %fat_ent_reada.exit

bb.h:                                             ; preds = %bb.g
  %.not27.i = icmp ult i64 %.sroa.0.0155, %.sroa.12124.0156
  br i1 %.not27.i, label %bb.j, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h
  %.val.i105 = load ptr, ptr %i.j, align 32
  %i.bw = getelementptr i8, ptr %.val.i105, i64 248
  %i.bx = load ptr, ptr %i.bw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %2, i8 0, i64 64, i1 false), !annotation !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store i64 0, ptr %i.c, align 8, !annotation !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  store i32 0, ptr %i.d, align 4, !annotation !18
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef %i.i, i32 noundef %i.bv, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c) #8, !inline_history !6
  %i.bz = load i64, ptr %i.c, align 8
  %i.ca = sub i64 %i.bz, %.sroa.0.0155
  call void @blk_start_plug(ptr noundef nonnull %2) #8
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i
  %.sroa.16.4 = phi i64 [ %.sroa.16.0157, %.lr.ph.i ], [ %i.cd, %bb.i ] ; 2 uses
  %i.cb = add i64 %i.ca, %.sroa.16.4
  %.val28.i = load i64, ptr %i.br, align 8
  %.val29.i = load ptr, ptr %i.bs, align 64
  %i.cc = trunc i64 %.val28.i to i32
  call void @__breadahead(ptr noundef %.val29.i, i64 noundef %i.cb, i32 noundef %i.cc) #8
  %i.cd = add nuw i64 %.sroa.16.4, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.cd, %.sroa.20.0158
  br i1 %exitcond.not, label %._crit_edge.i, label %bb.i, !llvm.loop !7

._crit_edge.i:                                    ; preds = %bb.i
  call void @blk_finish_plug(ptr noundef nonnull %2) #8
  %i.ce = add i64 %.sroa.12124.0156, %.sroa.10.0
  %i.cf = sub i64 %.sroa.8.0, %.sroa.20.0158
  %i.cg = call i64 @llvm.umin.i64(i64 %i.cf, i64 %.sroa.10.0)
  %i.ch = add i64 %i.cg, %.sroa.20.0158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge.i, %bb.h
  %.sroa.12124.2 = phi i64 [ %.sroa.12124.0156, %bb.h ], [ %i.ce, %._crit_edge.i ]
  %.sroa.16.3 = phi i64 [ %.sroa.16.0157, %bb.h ], [ %.sroa.20.0158, %._crit_edge.i ]
  %.sroa.20.2 = phi i64 [ %.sroa.20.0158, %bb.h ], [ %i.ch, %._crit_edge.i ]
  %i.ci = add i64 %.sroa.0.0155, 1
  br label %fat_ent_reada.exit

fat_ent_reada.exit:                               ; preds = %bb.g, %bb.j
  %.sroa.0.2 = phi i64 [ %i.ci, %bb.j ], [ %.sroa.0.0155, %bb.g ]
  %.sroa.12124.3 = phi i64 [ %.sroa.12124.2, %bb.j ], [ %.sroa.12124.0156, %bb.g ]
  %.sroa.16.5 = phi i64 [ %.sroa.16.3, %bb.j ], [ %.sroa.16.0157, %bb.g ]
  %.sroa.20.3 = phi i64 [ %.sroa.20.2, %bb.j ], [ %.sroa.20.0158, %bb.g ]
  %.val.i106 = load ptr, ptr %i.j, align 32
  %i.cj = getelementptr i8, ptr %.val.i106, i64 248
  %i.ck = load ptr, ptr %i.cj, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store ptr null, ptr %i.ai, align 8
  %i.cl = load i32, ptr %i.ah, align 8            ; 2 uses
  %i.cm = icmp sgt i32 %i.cl, 0
  br i1 %i.cm, label %.lr.ph.i.i, label %fat_ent_read_block.exit

.lr.ph.i.i:                                       ; preds = %fat_ent_reada.exit, %brelse.exit.i.i
  %i.cn = phi i32 [ %i.cq, %brelse.exit.i.i ], [ %i.cl, %fat_ent_reada.exit ]
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %brelse.exit.i.i ], [ 0, %fat_ent_reada.exit ] ; 2 uses
  %i.co = getelementptr [8 x i8], ptr %i.aj, i64 %indvars.iv.i.i
  %i.cp = load ptr, ptr %i.co, align 8            ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cp, null
  br i1 %.not.i.i.i, label %brelse.exit.i.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i
  call void @__brelse(ptr noundef nonnull %i.cp) #8
  %.pre.i.i = load i32, ptr %i.ah, align 8
  br label %brelse.exit.i.i

brelse.exit.i.i:                                  ; preds = %bb.k, %.lr.ph.i.i
  %i.cq = phi i32 [ %i.cn, %.lr.ph.i.i ], [ %.pre.i.i, %bb.k ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.cr = sext i32 %i.cq to i64
  %i.cs = icmp slt i64 %indvars.iv.next.i.i, %i.cr
  br i1 %i.cs, label %.lr.ph.i.i, label %fat_ent_read_block.exit, !llvm.loop !0

fat_ent_read_block.exit:                          ; preds = %brelse.exit.i.i, %fat_ent_reada.exit
  store i64 0, ptr %i.a, align 8, !annotation !18
  store i32 0, ptr %i.b, align 4, !annotation !18
  store i32 0, ptr %i.ah, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i8 0, i64 24, i1 false)
  %i.ct = load ptr, ptr %i.ck, align 8
  %i.cu = load i32, ptr %3, align 8
  call void %i.ct(ptr noundef %i.i, i32 noundef %i.cu, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #8, !inline_history !1
  %i.cv = getelementptr i8, ptr %i.ck, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = load i32, ptr %i.b, align 4
  %i.cy = load i64, ptr %i.a, align 8
  %i.cz = call i32 %i.cw(ptr noundef %i.i, ptr noundef nonnull %3, i32 noundef %i.cx, i64 noundef %i.cy) #8, !inline_history !1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %.not97 = icmp eq i32 %i.cz, 0
  br i1 %.not97, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %fat_ent_read_block.exit, %bb.q
  %.177 = phi i64 [ %.581, %bb.q ], [ %.076159, %fat_ent_read_block.exit ] ; 6 uses
  %.174 = phi i32 [ %.275, %bb.q ], [ %.073160, %fat_ent_read_block.exit ] ; 5 uses
  %i.da = load ptr, ptr %i.bt, align 8
  %i.db = call i32 %i.da(ptr noundef nonnull %3) #8
  %i.dc = icmp eq i32 %i.db, 0
end_hunk_0
