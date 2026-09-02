Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/read-cache?download=true
inline.NumInlined: 280
inline.NumDeleted: 95
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@do_write_index:bb.a
bb.r:                                             ; preds = %bb.q
  %i.dk = zext nneg i32 %.0172 to i64
  %i.dl = shl nuw nsw i64 %i.dk, 3
  %i.dm = or disjoint i64 %i.dl, 4
  %i.dn = call ptr @xcalloc(i64 noundef 1, i64 noundef %i.dm) #28
  %i.do = add i32 %i.ap, -1
  %i.dp = add i32 %i.do, %.0172
  %i.dq = sdiv i32 %i.dp, %.0172
  br label %bb.s

bb.s:                                             ; preds = %.split, %.thread, %bb.q, %bb.r, %record_ieot.exit, %bb.l
  %.1178 = phi i32 [ 1, %bb.l ], [ 1, %record_ieot.exit ], [ %i.dq, %bb.r ], [ 1, %bb.q ], [ 1, %.thread ], [ 1, %.split ]
  %.1176 = phi ptr [ null, %bb.l ], [ null, %record_ieot.exit ], [ %i.dn, %bb.r ], [ null, %bb.q ], [ null, %.thread ], [ null, %.split ] ; 15 uses
  %i.dr = getelementptr i8, ptr %i.be, i64 8      ; 3 uses
  %i.ds = getelementptr i8, ptr %i.be, i64 2424   ; 3 uses
  %.not328 = icmp eq i32 %i.co, 4                 ; 2 uses
  br i1 %i.bi, label %.lr.ph347, label %.thread391

.thread391:                                       ; preds = %bb.s
  %i.dt = icmp ne ptr %.1176, null
  call void @strbuf_release(ptr noundef nonnull %8) #28
  br label %bb.az

.lr.ph347:                                        ; preds = %bb.s
  %.val250 = load i64, ptr %i.ds, align 8, !tbaa !287
  %.val249 = load i32, ptr %i.dr, align 8, !tbaa !288
  %i.du = zext i32 %.val249 to i64
  %i.dv = add nsw i64 %.val250, %i.du
  %i.dw = getelementptr i8, ptr %0, i64 48
  %i.dx = icmp ne ptr %.1176, null
  %i.dy = getelementptr inbounds nuw i8, ptr %.1176, i64 4 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 4 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %.sroa.gep295 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %wide.trip.count363 = zext nneg i32 %i.ap to i64
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph347, %bb.ax
  %indvars.iv360 = phi i64 [ 0, %.lr.ph347 ], [ %indvars.iv.next361, %bb.ax ] ; 4 uses
  %.0174344 = phi i32 [ 0, %.lr.ph347 ], [ %.2.ph, %bb.ax ] ; 4 uses
  %.0180343 = phi i64 [ %i.dv, %.lr.ph347 ], [ %.2182.ph, %bb.ax ] ; 4 uses
  %.0184342 = phi i32 [ %i.au, %.lr.ph347 ], [ %.2186.ph, %bb.ax ] ; 2 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv360
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !34 ; 23 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 56 ; 6 uses
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !40 ; 2 uses
  %i.ei = and i32 %i.eh, 131072
  %.not213 = icmp eq i32 %i.ei, 0
  br i1 %.not213, label %bb.u, label %bb.ax

bb.u:                                             ; preds = %bb.t
  %i.ej = and i32 %i.eh, 262144
  %.not214 = icmp eq i32 %i.ej, 0
  br i1 %.not214, label %bb.v, label %is_racy_timestamp.exit.thread

bb.v:                                             ; preds = %bb.u
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ef, i64 52
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !40
  %i.em = and i32 %i.el, 61440
  %i.en = icmp eq i32 %i.em, 57344
  br i1 %i.en, label %is_racy_timestamp.exit.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.val.i = load i32, ptr %i.dw, align 8, !tbaa !55 ; 2 uses
  %.not.i.i = icmp eq i32 %.val.i, 0
  br i1 %.not.i.i, label %is_racy_timestamp.exit.thread, label %is_racy_timestamp.exit

is_racy_timestamp.exit:                           ; preds = %bb.w
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ef, i64 24
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !57
  %.not327 = icmp ugt i32 %.val.i, %i.ep
  br i1 %.not327, label %is_racy_timestamp.exit.thread, label %bb.x

bb.x:                                             ; preds = %is_racy_timestamp.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ef, i64 108
  %i.er = call i32 @lstat64(ptr noundef nonnull %i.eq, ptr noundef nonnull %4) #28
  %i.es = icmp slt i32 %i.er, 0
  br i1 %i.es, label %ce_smudge_racily_clean_entry.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.et = call fastcc i32 @ce_match_stat_basic(ptr noundef nonnull %i.ef, ptr noundef nonnull %4)
  %.not.i252 = icmp eq i32 %i.et, 0
  br i1 %.not.i252, label %bb.z, label %ce_smudge_racily_clean_entry.exit

bb.z:                                             ; preds = %bb.y
  %i.eu = call fastcc i32 @ce_modified_check_fs(ptr noundef nonnull %0, ptr noundef nonnull %i.ef, ptr noundef nonnull %4)
  %.not5.i = icmp eq i32 %i.eu, 0
  br i1 %.not5.i, label %ce_smudge_racily_clean_entry.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ef, i64 48
  store i32 0, ptr %i.ev, align 8, !tbaa !59
  br label %ce_smudge_racily_clean_entry.exit

ce_smudge_racily_clean_entry.exit:                ; preds = %bb.x, %bb.y, %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %is_racy_timestamp.exit.thread

is_racy_timestamp.exit.thread:                    ; preds = %bb.w, %bb.v, %ce_smudge_racily_clean_entry.exit, %is_racy_timestamp.exit, %bb.u
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ef, i64 72 ; 4 uses
  %i.ex = load i128, ptr %i.ew, align 1
  %i.ey = getelementptr i8, ptr %i.ew, i64 16
  %i.ez = load i128, ptr %i.ey, align 1
  %i.fa = or i128 %i.ex, %i.ez
  %i.fb = icmp ne i128 %i.fa, 0
  %i.fc = zext i1 %i.fb to i32
  %.not.i253.not = icmp eq i32 %i.fc, 0
  br i1 %.not.i253.not, label %bb.ab, label %bb.ag

bb.ab:                                            ; preds = %is_racy_timestamp.exit.thread
  %i.fd = load i32, ptr @do_write_index.allow, align 4, !tbaa !40 ; 2 uses
  %i.fe = icmp slt i32 %i.fd, 0
  br i1 %i.fe, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ff = call i32 @git_env_bool(ptr noundef nonnull @.str.79, i32 noundef 0) #28 ; 2 uses
  store i32 %i.ff, ptr @do_write_index.allow, align 4, !tbaa !40
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.fg = phi i32 [ %i.ff, %bb.ac ], [ %i.fd, %bb.ab ]
  %.not217 = icmp eq i32 %i.fg, 0
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ef, i64 108 ; 2 uses
  br i1 %.not217, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void (ptr, ...) @warning(ptr noundef nonnull @do_write_index.msg, ptr noundef nonnull %i.fh) #28
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.fi = call i32 (ptr, ...) @error(ptr noundef nonnull @do_write_index.msg, ptr noundef nonnull %i.fh) #28 ; 0 uses
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af, %is_racy_timestamp.exit.thread
  %.not218 = phi i1 [ true, %is_racy_timestamp.exit.thread ], [ true, %bb.ae ], [ false, %bb.af ]
  %.1185 = phi i32 [ %.0184342, %is_racy_timestamp.exit.thread ], [ 1, %bb.ae ], [ 1, %bb.af ] ; 2 uses
  %i.fj = icmp ne i64 %indvars.iv360, 0
  %or.cond = and i1 %i.dx, %i.fj
  br i1 %or.cond, label %bb.ah, label %bb.al

bb.ah:                                            ; preds = %bb.ag
  %i.fk = trunc nuw nsw i64 %indvars.iv360 to i32
  %i.fl = srem i32 %i.fk, %.1178
  %i.fm = icmp eq i32 %i.fl, 0
  br i1 %i.fm, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %bb.ah
  %i.fn = load i32, ptr %.1176, align 4, !tbaa !40
  %i.fo = sext i32 %i.fn to i64
  %i.fp = getelementptr inbounds [8 x i8], ptr %i.dy, i64 %i.fo
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 4
  store i32 %.0174344, ptr %i.fq, align 4, !tbaa !106
  %i.fr = trunc i64 %.0180343 to i32
  %i.fs = load i32, ptr %.1176, align 4, !tbaa !40 ; 2 uses
  %i.ft = sext i32 %i.fs to i64
  %i.fu = getelementptr inbounds [8 x i8], ptr %i.dy, i64 %i.ft
  store i32 %i.fr, ptr %i.fu, align 4, !tbaa !105
  %i.fv = add nsw i32 %i.fs, 1
  store i32 %i.fv, ptr %.1176, align 4, !tbaa !40
  br i1 %.not328, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.fw = load ptr, ptr %i.dz, align 8, !tbaa !86
  store i8 0, ptr %i.fw, align 1, !tbaa !45
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.val247 = load i32, ptr %i.dr, align 8, !tbaa !288
  %.val248 = load i64, ptr %i.ds, align 8, !tbaa !287
  %i.fx = zext i32 %.val247 to i64
  %i.fy = add nsw i64 %.val248, %i.fx
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ah, %bb.ag
  %.1181 = phi i64 [ %i.fy, %bb.ak ], [ %.0180343, %bb.ah ], [ %.0180343, %bb.ag ] ; 2 uses
  %.1 = phi i32 [ 0, %bb.ak ], [ %.0174344, %bb.ah ], [ %.0174344, %bb.ag ] ; 2 uses
  %i.fz = load i32, ptr %i.eg, align 8, !tbaa !40 ; 2 uses
  %i.ga = and i32 %i.fz, 268435456
  %.not.i254 = icmp eq i32 %i.ga, 0               ; 2 uses
  br i1 %.not.i254, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ef, i64 64 ; 2 uses
  %i.gc = load i32, ptr %i.gb, align 8, !tbaa !40
  store i32 0, ptr %i.gb, align 8, !tbaa !40
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.055.i = phi i32 [ %i.gc, %bb.am ], [ undef, %bb.al ]
  %i.gd = load ptr, ptr @the_repository, align 8, !tbaa !58
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 448
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !78
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !92 ; 3 uses
  %i.gi = and i32 %i.fz, 16384
  %.not59.i = icmp eq i32 %i.gi, 0
  %10 = trunc i64 %i.gh to i32
  %11 = select i1 %.not59.i, i32 42, i32 44
  %i.gj = add i32 %11, %10                        ; 3 uses
  br i1 %.not328, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ef, i64 64 ; 2 uses
  %i.gl = load i32, ptr %i.gk, align 8, !tbaa !40 ; 2 uses
  %i.gm = and i64 %i.gh, 4294967295
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.gm ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.gp = load <4 x i32>, ptr %i.go, align 8, !tbaa !40
  %i.gq = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %i.gp)
  store <4 x i32> %i.gq, ptr %7, align 16, !tbaa !40
  %i.gr = getelementptr inbounds nuw i8, ptr %i.ef, i64 32
  %i.gs = load i32, ptr %i.gr, align 8, !tbaa !151
  %i.gt = call i32 @llvm.bswap.i32(i32 %i.gs)
  store i32 %i.gt, ptr %i.eb, align 16, !tbaa !40
  %i.gu = getelementptr inbounds nuw i8, ptr %i.ef, i64 36
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !152
  %i.gw = call i32 @llvm.bswap.i32(i32 %i.gv)
  store i32 %i.gw, ptr %i.ec, align 4, !tbaa !40
  %i.gx = getelementptr inbounds nuw i8, ptr %i.ef, i64 40
  %i.gy = load <4 x i32>, ptr %i.gx, align 8, !tbaa !40
  %i.gz = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %i.gy)
  %i.ha = shufflevector <4 x i32> %i.gz, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  store <4 x i32> %i.ha, ptr %i.ed, align 8, !tbaa !40
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ea, ptr nonnull readonly align 8 %i.ew, i64 %i.gh, i1 false)
  %i.hb = load i32, ptr %i.eg, align 8, !tbaa !40 ; 3 uses
  %i.hc = load i32, ptr %i.gk, align 8, !tbaa !40
  %spec.select.i.i = call i32 @llvm.umin.i32(i32 %i.hc, i32 4095)
  %i.hd = and i32 %i.hb, 61440
  %i.he = or disjoint i32 %spec.select.i.i, %i.hd
  %i.hf = trunc nuw i32 %i.he to i16
  %rev.i.i.i = call noundef i16 @llvm.bswap.i16(i16 %i.hf)
  store i16 %rev.i.i.i, ptr %i.gn, align 2, !tbaa !289
  %i.hg = and i32 %i.hb, 16384
  %.not.i.i255 = icmp eq i32 %i.hg, 0
  br i1 %.not.i.i255, label %copy_cache_entry_to_ondisk.exit.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %sum.shift.i.i = lshr i32 %i.hb, 24
  %i.hh = trunc nuw nsw i32 %sum.shift.i.i to i16
  %rev.i32.i.i = and i16 %i.hh, 96
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gn, i64 2
  store i16 %rev.i32.i.i, ptr %i.hi, align 2, !tbaa !289
  br label %copy_cache_entry_to_ondisk.exit.i

copy_cache_entry_to_ondisk.exit.i:                ; preds = %bb.ap, %bb.ao
  call void @hashwrite(ptr noundef %i.be, ptr noundef nonnull %7, i32 noundef %i.gj) #28
  %i.hj = getelementptr inbounds nuw i8, ptr %i.ef, i64 108
  call void @hashwrite(ptr noundef %i.be, ptr noundef nonnull %i.hj, i32 noundef %i.gl) #28
  %i.hk = add nsw i32 %i.gl, %i.gj
  %i.hl = and i32 %i.hk, 7
  %i.hm = sub nuw nsw i32 8, %i.hl
  call void @hashwrite(ptr noundef %i.be, ptr noundef nonnull @ce_write_entry.padding, i32 noundef %i.hm) #28
  br label %bb.au

bb.aq:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai) #28
  %i.hn = getelementptr inbounds nuw i8, ptr %i.ef, i64 108 ; 2 uses
  %i.ho = load i64, ptr %.sroa.gep295, align 8, !tbaa !85 ; 4 uses
  %.not81.i = icmp eq i64 %i.ho, 0
  br i1 %.not81.i, label %.critedge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.aq
  %i.hp = trunc i64 %i.ho to i32                  ; 4 uses
  %i.hq = load ptr, ptr %i.dz, align 8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.as, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.as ] ; 7 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hn, i64 %indvars.iv.i
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !45  ; 2 uses
  %.not61.i = icmp eq i8 %i.hs, 0
  br i1 %.not61.i, label %.critedge.loopexit.split.loop.exit.i, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph.i
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hq, i64 %indvars.iv.i
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !45
  %i.hv = icmp eq i8 %i.hs, %i.hu
  br i1 %i.hv, label %bb.as, label %.critedge.loopexit.split.loop.exit88.i

bb.as:                                            ; preds = %bb.ar
  %indvars.iv.next.i = add nuw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.ho
  br i1 %exitcond.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !274

.critedge.loopexit.split.loop.exit.i:             ; preds = %.lr.ph.i
  %i.hw = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %.critedge.i

.critedge.loopexit.split.loop.exit88.i:           ; preds = %bb.ar
  %i.hx = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.as, %.critedge.loopexit.split.loop.exit88.i, %.critedge.loopexit.split.loop.exit.i, %bb.aq
  %.pre-phi.i = phi i32 [ 0, %bb.aq ], [ %i.hp, %.critedge.loopexit.split.loop.exit.i ], [ %i.hp, %.critedge.loopexit.split.loop.exit88.i ], [ %i.hp, %bb.as ]
  %.0.lcssa.i = phi i32 [ 0, %bb.aq ], [ %i.hw, %.critedge.loopexit.split.loop.exit.i ], [ %i.hx, %.critedge.loopexit.split.loop.exit88.i ], [ %i.hp, %bb.as ] ; 3 uses
  %.lcssa69.i = phi i64 [ 0, %bb.aq ], [ %indvars.iv.i, %.critedge.loopexit.split.loop.exit.i ], [ %indvars.iv.i, %.critedge.loopexit.split.loop.exit88.i ], [ %i.ho, %bb.as ] ; 2 uses
  %i.hy = sub i32 %.pre-phi.i, %.0.lcssa.i
  %i.hz = sext i32 %i.hy to i64                   ; 2 uses
  %i.ia = call zeroext i8 @encode_varint(i64 noundef %i.hz, ptr noundef nonnull %i.ai) #28
  %i.ib = load ptr, ptr @the_repository, align 8, !tbaa !58
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 448
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !78
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 16
  %i.if = load i64, ptr %i.ie, align 8, !tbaa !92 ; 2 uses
  %i.ig = and i64 %i.if, 4294967295
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.ig ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.ij = load <4 x i32>, ptr %i.ii, align 8, !tbaa !40
  %i.ik = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %i.ij)
  store <4 x i32> %i.ik, ptr %7, align 16, !tbaa !40
  %i.il = getelementptr inbounds nuw i8, ptr %i.ef, i64 32
  %i.im = load i32, ptr %i.il, align 8, !tbaa !151
  %i.in = call i32 @llvm.bswap.i32(i32 %i.im)
  store i32 %i.in, ptr %i.eb, align 16, !tbaa !40
  %i.io = getelementptr inbounds nuw i8, ptr %i.ef, i64 36
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !152
  %i.iq = call i32 @llvm.bswap.i32(i32 %i.ip)
  store i32 %i.iq, ptr %i.ec, align 4, !tbaa !40
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ef, i64 40
  %i.is = load <4 x i32>, ptr %i.ir, align 8, !tbaa !40
  %i.it = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %i.is)
  %i.iu = shufflevector <4 x i32> %i.it, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  store <4 x i32> %i.iu, ptr %i.ed, align 8, !tbaa !40
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ea, ptr nonnull readonly align 8 %i.ew, i64 %i.if, i1 false)
  %i.iv = load i32, ptr %i.eg, align 8, !tbaa !40 ; 3 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ef, i64 64 ; 3 uses
  %i.ix = load i32, ptr %i.iw, align 8, !tbaa !40
  %spec.select.i63.i = call i32 @llvm.umin.i32(i32 %i.ix, i32 4095)
  %i.iy = and i32 %i.iv, 61440
  %i.iz = or disjoint i32 %spec.select.i63.i, %i.iy
  %i.ja = trunc nuw i32 %i.iz to i16
  %rev.i.i64.i = call noundef i16 @llvm.bswap.i16(i16 %i.ja)
  store i16 %rev.i.i64.i, ptr %i.ih, align 2, !tbaa !289
  %i.jb = and i32 %i.iv, 16384
  %.not.i65.i = icmp eq i32 %i.jb, 0
  br i1 %.not.i65.i, label %copy_cache_entry_to_ondisk.exit68.i, label %bb.at

bb.at:                                            ; preds = %.critedge.i
  %sum.shift.i66.i = lshr i32 %i.iv, 24
  %i.jc = trunc nuw nsw i32 %sum.shift.i66.i to i16
  %rev.i32.i67.i = and i16 %i.jc, 96
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ih, i64 2
  store i16 %rev.i32.i67.i, ptr %i.jd, align 2, !tbaa !289
  br label %copy_cache_entry_to_ondisk.exit68.i

copy_cache_entry_to_ondisk.exit68.i:              ; preds = %bb.at, %.critedge.i
  call void @hashwrite(ptr noundef %i.be, ptr noundef nonnull %7, i32 noundef %i.gj) #28
  %i.je = zext i8 %i.ia to i32
  call void @hashwrite(ptr noundef %i.be, ptr noundef nonnull %i.ai, i32 noundef %i.je) #28
  %i.jf = getelementptr inbounds nuw i8, ptr %i.hn, i64 %.lcssa69.i ; 2 uses
  %i.jg = load i32, ptr %i.iw, align 8, !tbaa !40
  %i.jh = sub i32 %i.jg, %.0.lcssa.i
  call void @hashwrite(ptr noundef %i.be, ptr noundef nonnull %i.jf, i32 noundef %i.jh) #28
  call void @hashwrite(ptr noundef %i.be, ptr noundef nonnull @ce_write_entry.padding, i32 noundef 1) #28
  %i.ji = load i32, ptr %i.iw, align 8, !tbaa !40
  %i.jj = sub i32 %i.ji, %.0.lcssa.i
  %i.jk = zext i32 %i.jj to i64
  call void @strbuf_splice(ptr noundef nonnull %8, i64 noundef %.lcssa69.i, i64 noundef %i.hz, ptr noundef nonnull %i.jf, i64 noundef %i.jk) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai) #28
  br label %bb.au

bb.au:                                            ; preds = %copy_cache_entry_to_ondisk.exit68.i, %copy_cache_entry_to_ondisk.exit.i
  br i1 %.not.i254, label %ce_write_entry.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ef, i64 64
  store i32 %.055.i, ptr %i.jl, align 8, !tbaa !40
  %i.jm = load i32, ptr %i.eg, align 8, !tbaa !40
  %i.jn = and i32 %i.jm, -268435457
  store i32 %i.jn, ptr %i.eg, align 8, !tbaa !40
  br label %ce_write_entry.exit

ce_write_entry.exit:                              ; preds = %bb.au, %bb.av
  br i1 %.not218, label %bb.aw, label %ce_write_entry.exit._crit_edge

bb.aw:                                            ; preds = %ce_write_entry.exit
  %i.jo = add nsw i32 %.1, 1
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.t
  %.2186.ph = phi i32 [ %.0184342, %bb.t ], [ %.1185, %bb.aw ] ; 2 uses
  %.2182.ph = phi i64 [ %.0180343, %bb.t ], [ %.1181, %bb.aw ] ; 2 uses
  %.2.ph = phi i32 [ %.0174344, %bb.t ], [ %i.jo, %bb.aw ] ; 2 uses
  %indvars.iv.next361 = add nuw nsw i64 %indvars.iv360, 1 ; 2 uses
  %exitcond364.not = icmp eq i64 %indvars.iv.next361, %wide.trip.count363
  br i1 %exitcond364.not, label %ce_write_entry.exit._crit_edge, label %bb.t, !llvm.loop !275

ce_write_entry.exit._crit_edge:                   ; preds = %bb.ax, %ce_write_entry.exit
  %.not329.lcssa = phi i1 [ true, %ce_write_entry.exit ], [ false, %bb.ax ] ; 2 uses
  %.3187 = phi i32 [ %.1185, %ce_write_entry.exit ], [ %.2186.ph, %bb.ax ] ; 2 uses
  %.3183 = phi i64 [ %.1181, %ce_write_entry.exit ], [ %.2182.ph, %bb.ax ]
  %.3 = phi i32 [ %.1, %ce_write_entry.exit ], [ %.2.ph, %bb.ax ] ; 2 uses
  %i.jp = icmp ne ptr %.1176, null                ; 3 uses
  %i.jq = icmp ne i32 %.3, 0
  %or.cond3 = select i1 %i.jp, i1 %i.jq, i1 false
  br i1 %or.cond3, label %.split395, label %bb.ay

.split395:                                        ; preds = %ce_write_entry.exit._crit_edge
  %i.jr = getelementptr inbounds nuw i8, ptr %.1176, i64 4 ; 2 uses
  %i.js = load i32, ptr %.1176, align 4, !tbaa !40
  %i.jt = sext i32 %i.js to i64
  %i.ju = getelementptr inbounds [8 x i8], ptr %i.jr, i64 %i.jt
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 4
  store i32 %.3, ptr %i.jv, align 4, !tbaa !106
  %i.jw = trunc i64 %.3183 to i32
  %i.jx = load i32, ptr %.1176, align 4, !tbaa !40 ; 2 uses
  %i.jy = sext i32 %i.jx to i64
  %i.jz = getelementptr inbounds [8 x i8], ptr %i.jr, i64 %i.jy
  store i32 %i.jw, ptr %i.jz, align 4, !tbaa !105
  %i.ka = add nsw i32 %i.jx, 1
  store i32 %i.ka, ptr %.1176, align 4, !tbaa !40
  call void @strbuf_release(ptr noundef nonnull %8) #28
  br i1 %.not329.lcssa, label %bb.dk, label %bb.az

bb.ay:                                            ; preds = %ce_write_entry.exit._crit_edge
  call void @strbuf_release(ptr noundef nonnull %8) #28
  br i1 %.not329.lcssa, label %bb.dk, label %bb.az

bb.az:                                            ; preds = %.split395, %.thread391, %bb.ay
  %.3187390394 = phi i32 [ %i.au, %.thread391 ], [ %.3187, %bb.ay ], [ %.3187, %.split395 ]
  %i.kb = phi i1 [ %i.dt, %.thread391 ], [ %i.jp, %bb.ay ], [ %i.jp, %.split395 ]
  %.val = load i32, ptr %i.dr, align 8, !tbaa !288
  %.val246 = load i64, ptr %i.ds, align 8, !tbaa !287
  %i.kc = zext i32 %.val to i64
  %i.kd = add nsw i64 %.val246, %i.kc             ; 5 uses
  %.not220 = icmp eq i64 %i.kd, 0
  br i1 %.not220, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah) #28
  %i.ke = load ptr, ptr @the_repository, align 8, !tbaa !58
  %i.kf = call i32 @repo_config_get_bool(ptr noundef %i.ke, ptr noundef nonnull @.str.89, ptr noundef nonnull %i.ah) #28
  %.not.i256 = icmp eq i32 %i.kf, 0
  br i1 %.not.i256, label %record_eoie.exit, label %.split396

.split396:                                        ; preds = %bb.ba
  %i.kg = load ptr, ptr @the_repository, align 8, !tbaa !58
  %i.kh = call i32 @repo_config_get_index_threads(ptr noundef %i.kg, ptr noundef nonnull %i.ah) #28
  %.not1.i257 = icmp ne i32 %i.kh, 0
  %i.ki = load i32, ptr %i.ah, align 4
  %i.kj = icmp eq i32 %i.ki, 1
  %.not331 = select i1 %.not1.i257, i1 true, i1 %i.kj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah) #28
  br i1 %.not331, label %bb.bc, label %bb.bb

record_eoie.exit:                                 ; preds = %bb.ba
  %i.kk = load i32, ptr %i.ah, align 4, !tbaa !40
  %i.kl = icmp eq i32 %i.kk, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah) #28
end_hunk_0
