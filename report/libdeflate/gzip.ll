Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libdeflate/original/gzip?download=true
inline.NumInlined: 16
inline.NumDeleted: 12
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@main:bb.a
  %i.cx = icmp eq ptr %i.cw, null
  br i1 %i.cx, label %decompress_file.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cw, ptr nonnull align 1 %i.cd, i64 %i.cg, i1 false)
  %i.cy = getelementptr inbounds i8, ptr %i.cw, i64 %i.cg
  store i8 0, ptr %i.cy, align 1, !tbaa !13
  br label %.thread.i

.thread.i:                                        ; preds = %bb.ai, %get_suffix.exit.i, %bb.af, %bb.ae, %bb.y
  %.278.i = phi ptr [ null, %bb.y ], [ %i.cd, %get_suffix.exit.i ], [ %i.cd, %bb.af ], [ %i.cd, %bb.ai ], [ %i.cs, %bb.ae ] ; 8 uses
  %.275.i = phi ptr [ null, %bb.y ], [ null, %get_suffix.exit.i ], [ null, %bb.af ], [ %i.cw, %bb.ai ], [ %spec.select.i, %bb.ae ] ; 8 uses
  br i1 %i.bv, label %bb.aj, label %.thread

bb.aj:                                            ; preds = %.thread.i
  %i.cz = call i32 @xopen_for_read(ptr noundef %.278.i, i1 noundef zeroext true, ptr noundef nonnull %5) #11 ; 2 uses
  %.not94.i = icmp eq i32 %i.cz, 0
  br i1 %.not94.i, label %.thread130.i, label %bb.bb

.thread:                                          ; preds = %.thread.i
  %i.da = call i32 @xopen_for_read(ptr noundef %.278.i, i1 noundef zeroext %i.bu, ptr noundef nonnull %5) #11 ; 2 uses
  %.not94.i69 = icmp eq i32 %i.da, 0
  br i1 %.not94.i69, label %bb.ak, label %bb.bb

bb.ak:                                            ; preds = %.thread
  %i.db = load i32, ptr %5, align 8, !tbaa !16
  %i.dc = call i32 @isatty(i32 noundef %i.db) #11
  %.not95.i = icmp eq i32 %i.dc, 0
  br i1 %.not95.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void (ptr, ...) @msg(ptr noundef nonnull @.str.8) #11
  br label %stat_file.exit.thread.i

bb.am:                                            ; preds = %bb.ak
  %i.dd = icmp eq ptr %.278.i, null
  %or.cond.i = or i1 %i.dd, %i.bw
  %i.de = icmp eq ptr %.275.i, null
  %spec.select102.i = select i1 %or.cond.i, i1 true, i1 %i.de
  br label %.thread130.i

.thread130.i:                                     ; preds = %bb.aj, %bb.am
  %i.df = phi i1 [ true, %bb.aj ], [ %spec.select102.i, %bb.am ]
  %i.dg = load i32, ptr %5, align 8, !tbaa !16
  %i.dh = call i32 @fstat64(i32 noundef %i.dg, ptr noundef nonnull %7) #11
  %.not.i104.i = icmp eq i32 %i.dh, 0
  br i1 %.not.i104.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %.thread130.i
  %i.di = load ptr, ptr %i.bx, align 8, !tbaa !17
  call void (ptr, ...) @msg(ptr noundef nonnull @.str.9, ptr noundef %i.di) #11
  br label %stat_file.exit.thread.i

bb.ao:                                            ; preds = %.thread130.i
  %i.dj = load i32, ptr %i.by, align 8, !tbaa !20
  %i.dk = and i32 %i.dj, 61440                    ; 2 uses
  %i.dl = icmp eq i32 %i.dk, 32768
  %i.dm = load i8, ptr %i.bz, align 8, !range !21
  %i.dn = trunc nuw i8 %i.dm to i1
  %or.cond119.i = select i1 %i.dl, i1 true, i1 %i.dn
  br i1 %or.cond119.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.do = load ptr, ptr %i.bx, align 8, !tbaa !17
  %i.dp = icmp eq i32 %i.dk, 16384
  %i.dq = select i1 %i.dp, ptr @.str.11, ptr @.str.12
  call void (ptr, ...) @warn(ptr noundef nonnull @.str.10, ptr noundef %i.do, ptr noundef nonnull %i.dq) #11
  br label %stat_file.exit.thread.i

bb.aq:                                            ; preds = %bb.ao
  %i.dr = load i64, ptr %i.ca, align 8, !tbaa !35
  %i.ds = icmp ult i64 %i.dr, 2
  %or.cond.i.i = or i1 %i.df, %i.ds
  br i1 %or.cond.i.i, label %stat_file.exit.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dt = load ptr, ptr %i.bx, align 8, !tbaa !17
  call void (ptr, ...) @warn(ptr noundef nonnull @.str.13, ptr noundef %i.dt) #11
  br label %stat_file.exit.thread.i

stat_file.exit.i:                                 ; preds = %bb.aq
  %i.du = call i32 @xopen_for_write(ptr noundef %.275.i, i1 noundef zeroext %i.bv, ptr noundef nonnull %6) #11 ; 2 uses
  %.not97.i = icmp eq i32 %i.du, 0
  br i1 %.not97.i, label %bb.as, label %stat_file.exit.thread.i

bb.as:                                            ; preds = %stat_file.exit.i
  %i.dv = load i64, ptr %i.cb, align 8, !tbaa !36
  %i.dw = call i32 @map_file_contents(ptr noundef nonnull %5, i64 noundef %i.dv) #11 ; 2 uses
  %.not98.i = icmp eq i32 %i.dw, 0
  br i1 %.not98.i, label %bb.at, label %bb.aw

bb.at:                                            ; preds = %bb.as
  %i.dx = call fastcc i32 @do_decompress(ptr noundef nonnull %i.bs, ptr noundef %5, ptr noundef %6, ptr noundef nonnull readonly %8) ; 2 uses
  %.not99.i = icmp eq i32 %i.dx, 0
  br i1 %.not99.i, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.dy = icmp ne ptr %.278.i, null
  %i.dz = icmp ne ptr %.275.i, null
  %or.cond3.i = and i1 %i.dy, %i.dz
  br i1 %or.cond3.i, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  call fastcc void @restore_metadata(ptr noundef %6, ptr noundef %7)
  br label %bb.ax

bb.aw:                                            ; preds = %bb.at, %bb.as
  %.072.i = phi i32 [ %i.dw, %bb.as ], [ %i.dx, %bb.at ]
  %i.ea = call i32 @xclose(ptr noundef nonnull %6) #11 ; 0 uses
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av, %bb.au
  %i.eb = call i32 @xclose(ptr noundef nonnull %6) #11
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.ec = phi i32 [ %i.eb, %bb.ax ], [ %.072.i, %bb.aw ] ; 3 uses
  %i.ed = icmp ne i32 %i.ec, 0
  %i.ee = icmp ne ptr %.275.i, null
  %or.cond5.i = and i1 %i.ee, %i.ed
  br i1 %or.cond5.i, label %bb.az, label %stat_file.exit.thread.i

bb.az:                                            ; preds = %bb.ay
  %i.ef = call i32 @unlink(ptr noundef nonnull %.275.i) #11 ; 0 uses
  br label %stat_file.exit.thread.i

stat_file.exit.thread.i:                          ; preds = %bb.az, %bb.ay, %stat_file.exit.i, %bb.ar, %bb.ap, %bb.an, %bb.al
  %.2.i = phi i32 [ -1, %bb.al ], [ %i.du, %stat_file.exit.i ], [ %i.ec, %bb.az ], [ %i.ec, %bb.ay ], [ -2, %bb.ar ], [ -2, %bb.ap ], [ -1, %bb.an ] ; 2 uses
  %i.eg = call i32 @xclose(ptr noundef nonnull %5) #11 ; 0 uses
  %i.eh = icmp ne i32 %.2.i, 0
  %i.ei = icmp eq ptr %.278.i, null
  %or.cond7.i.not178 = or i1 %i.ei, %i.eh
  %i.ej = icmp eq ptr %.275.i, null
  %or.cond9.i.not175 = or i1 %i.ej, %or.cond7.i.not178 ; 2 uses
  %brmerge = or i1 %or.cond9.i.not175, %i.bw
  %.2.i.mux = select i1 %or.cond9.i.not175, i32 %.2.i, i32 0
  br i1 %brmerge, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %stat_file.exit.thread.i
  %i.ek = call i32 @unlink(ptr noundef nonnull %.278.i) #11 ; 0 uses
  br label %bb.bb

bb.bb:                                            ; preds = %stat_file.exit.thread.i, %.thread, %bb.ba, %bb.aj
  %.3.i = phi i32 [ %i.cz, %bb.aj ], [ %i.da, %.thread ], [ 0, %bb.ba ], [ %.2.i.mux, %stat_file.exit.thread.i ] ; 2 uses
  %.not100.i = icmp eq ptr %.275.i, %i.cd
  br i1 %.not100.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @free(ptr noundef %.275.i) #11
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.not101.i = icmp eq ptr %.278.i, %i.cd
  br i1 %.not101.i, label %decompress_file.exit, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void @free(ptr noundef %.278.i) #11
  br label %decompress_file.exit

decompress_file.exit:                             ; preds = %bb.ad, %bb.ag, %bb.ah, %bb.bd, %bb.be
  %.180.i = phi i32 [ %.3.i, %bb.bd ], [ %.3.i, %bb.be ], [ -2, %bb.ag ], [ -1, %bb.ah ], [ -1, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  %i.el = sub nsw i32 0, %.180.i
  %i.em = or i32 %.039169, %i.el                  ; 2 uses
  %indvars.iv.next267 = add nuw nsw i64 %indvars.iv266, 1 ; 2 uses
  %exitcond270.not = icmp eq i64 %indvars.iv.next267, %wide.trip.count269
  br i1 %exitcond270.not, label %._crit_edge171, label %bb.y, !llvm.loop !28

._crit_edge171:                                   ; preds = %decompress_file.exit, %.preheader
  %.039.lcssa = phi i32 [ 0, %.preheader ], [ %i.em, %decompress_file.exit ]
  call void @libdeflate_free_decompressor(ptr noundef nonnull %i.bs) #11
  br label %bb.cf

bb.bf:                                            ; preds = %.loopexit
  %i.en = tail call ptr @alloc_compressor(i32 noundef %i.v) #11 ; 3 uses
  %.not53 = icmp eq ptr %i.en, null
  br i1 %.not53, label %.thread71, label %.preheader80

.preheader80:                                     ; preds = %bb.bf
  %i.eo = icmp sgt i32 %.045, 0
  br i1 %i.eo, label %.lr.ph167, label %._crit_edge

.lr.ph167:                                        ; preds = %.preheader80
  %i.ep = trunc nuw i8 %i.z to i1                 ; 2 uses
  %i.eq = trunc nuw i8 %i.x to i1                 ; 4 uses
  %i.er = trunc nuw i8 %i.w to i1                 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ev = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ew = getelementptr inbounds nuw i8, ptr %4, i64 48
  %wide.trip.count264 = zext nneg i32 %.045 to i64
  br label %bb.bg

bb.bg:                                            ; preds = %.lr.ph167, %compress_file.exit
  %indvars.iv261 = phi i64 [ 0, %.lr.ph167 ], [ %indvars.iv.next262, %compress_file.exit ] ; 2 uses
  %.2166 = phi i32 [ 0, %.lr.ph167 ], [ %i.gz, %compress_file.exit ]
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %.044, i64 %indvars.iv261
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !30 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.ez = icmp ne ptr %i.ey, null                 ; 3 uses
  %.not = xor i1 %i.ez, true
  %or.cond = or i1 %.not, %i.ep
  br i1 %or.cond, label %bb.bk, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  br i1 %i.eq, label %has_suffix.exit.thread.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.fa = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.ey) #12 ; 2 uses
  %i.fb = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.u) #12 ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.fa, %i.fb
  br i1 %.not.i.i.i, label %has_suffix.exit.i, label %has_suffix.exit.thread.i

has_suffix.exit.i:                                ; preds = %bb.bi
  %i.fc = sub nuw i64 %i.fa, %i.fb
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.fc
  %i.fe = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.fd, ptr noundef nonnull readonly dereferenceable(1) %i.u) #12
  %i.ff = icmp eq i32 %i.fe, 0
  br i1 %i.ff, label %bb.bj, label %has_suffix.exit.thread.i

bb.bj:                                            ; preds = %has_suffix.exit.i
  call void (ptr, ...) @msg(ptr noundef nonnull @.str.23, ptr noundef nonnull %i.ey, ptr noundef nonnull %i.u) #11
  br label %compress_file.exit

has_suffix.exit.thread.i:                         ; preds = %has_suffix.exit.i, %bb.bi, %bb.bh
  %i.fg = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.ey) #12 ; 3 uses
  %i.fh = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.u) #12
  %i.fi = add i64 %i.fh, 1                        ; 2 uses
  %i.fj = add i64 %i.fi, %i.fg
  %i.fk = call ptr @xmalloc(i64 noundef %i.fj) #11 ; 4 uses
  %i.fl = icmp eq ptr %i.fk, null
  br i1 %i.fl, label %compress_file.exit, label %append_suffix.exit.i

append_suffix.exit.i:                             ; preds = %has_suffix.exit.thread.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fk, ptr nonnull readonly align 1 %i.ey, i64 %i.fg, i1 false)
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.fg
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fm, ptr nonnull readonly align 1 %i.u, i64 %i.fi, i1 false)
  br label %bb.bk

bb.bk:                                            ; preds = %append_suffix.exit.i, %bb.bg
  %.050.i = phi ptr [ null, %bb.bg ], [ %i.fk, %append_suffix.exit.i ] ; 7 uses
  br i1 %i.eq, label %bb.bl, label %.thread74

bb.bl:                                            ; preds = %bb.bk
  %i.fn = call i32 @xopen_for_read(ptr noundef %i.ey, i1 noundef zeroext true, ptr noundef nonnull %2) #11 ; 2 uses
  %.not.i55 = icmp eq i32 %i.fn, 0
  br i1 %.not.i55, label %bb.bn, label %bb.ce

.thread74:                                        ; preds = %bb.bk
  %i.fo = call i32 @xopen_for_read(ptr noundef %i.ey, i1 noundef zeroext %i.ep, ptr noundef nonnull %2) #11 ; 2 uses
  %.not.i5575 = icmp eq i32 %i.fo, 0
  br i1 %.not.i5575, label %bb.bm, label %bb.ce

bb.bm:                                            ; preds = %.thread74
  %9 = icmp eq ptr %i.ey, null
  %i.fp = icmp eq ptr %.050.i, null
  %i.fq = or i1 %9, %i.fp
  %spec.select.i58 = or i1 %i.fq, %i.er
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bl, %bb.bm
  %i.fr = phi i1 [ %spec.select.i58, %bb.bm ], [ true, %bb.bl ]
  %i.fs = load i32, ptr %2, align 8, !tbaa !16
  %i.ft = call i32 @fstat64(i32 noundef %i.fs, ptr noundef nonnull %4) #11
  %.not.i.i59 = icmp eq i32 %i.ft, 0
  br i1 %.not.i.i59, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.fu = load ptr, ptr %i.es, align 8, !tbaa !17
  call void (ptr, ...) @msg(ptr noundef nonnull @.str.9, ptr noundef %i.fu) #11
  br label %stat_file.exit.thread.i60

bb.bp:                                            ; preds = %bb.bn
  %i.fv = load i32, ptr %i.et, align 8, !tbaa !20
  %i.fw = and i32 %i.fv, 61440                    ; 2 uses
  %i.fx = icmp eq i32 %i.fw, 32768
  %i.fy = load i8, ptr %i.eu, align 8, !range !21
  %i.fz = trunc nuw i8 %i.fy to i1
  %or.cond73.i = select i1 %i.fx, i1 true, i1 %i.fz
  br i1 %or.cond73.i, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ga = load ptr, ptr %i.es, align 8, !tbaa !17
  %i.gb = icmp eq i32 %i.fw, 16384
  %i.gc = select i1 %i.gb, ptr @.str.11, ptr @.str.12
  call void (ptr, ...) @warn(ptr noundef nonnull @.str.10, ptr noundef %i.ga, ptr noundef nonnull %i.gc) #11
  br label %stat_file.exit.thread.i60

bb.br:                                            ; preds = %bb.bp
  %i.gd = load i64, ptr %i.ev, align 8, !tbaa !35
  %i.ge = icmp ult i64 %i.gd, 2
  %or.cond.i.i63 = or i1 %i.fr, %i.ge
  br i1 %or.cond.i.i63, label %stat_file.exit.i64, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.gf = load ptr, ptr %i.es, align 8, !tbaa !17
  call void (ptr, ...) @warn(ptr noundef nonnull @.str.13, ptr noundef %i.gf) #11
  br label %stat_file.exit.thread.i60

stat_file.exit.i64:                               ; preds = %bb.br
  %i.gg = call i32 @xopen_for_write(ptr noundef %.050.i, i1 noundef zeroext %i.eq, ptr noundef nonnull %3) #11 ; 2 uses
  %.not61.i = icmp eq i32 %i.gg, 0
  br i1 %.not61.i, label %bb.bt, label %stat_file.exit.thread.i60

bb.bt:                                            ; preds = %stat_file.exit.i64
  br i1 %i.eq, label %bb.bw, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.gh = load i32, ptr %3, align 8, !tbaa !16
  %i.gi = call i32 @isatty(i32 noundef %i.gh) #11
  %.not62.i = icmp eq i32 %i.gi, 0
  br i1 %.not62.i, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  call void (ptr, ...) @msg(ptr noundef nonnull @.str.24) #11
  br label %.thread.i65

bb.bw:                                            ; preds = %bb.bu, %bb.bt
  %i.gj = load i64, ptr %i.ew, align 8, !tbaa !36
  %i.gk = call i32 @map_file_contents(ptr noundef nonnull %2, i64 noundef %i.gj) #11 ; 2 uses
  %.not63.i = icmp eq i32 %i.gk, 0
  br i1 %.not63.i, label %bb.bx, label %.thread.i65

bb.bx:                                            ; preds = %bb.bw
  %i.gl = call fastcc i32 @do_compress(ptr noundef nonnull %i.en, ptr noundef %2, ptr noundef %3) ; 2 uses
  %.not64.i = icmp eq i32 %i.gl, 0
  br i1 %.not64.i, label %bb.by, label %.thread.i65

bb.by:                                            ; preds = %bb.bx
  %i.gm = icmp ne ptr %.050.i, null
  %or.cond3.i67 = and i1 %i.ez, %i.gm
  br i1 %or.cond3.i67, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  call fastcc void @restore_metadata(ptr noundef %3, ptr noundef %4)
  br label %bb.ca

.thread.i65:                                      ; preds = %bb.bx, %bb.bw, %bb.bv
  %.0.ph.i = phi i32 [ -1, %bb.bv ], [ %i.gl, %bb.bx ], [ %i.gk, %bb.bw ]
  %i.gn = call i32 @xclose(ptr noundef nonnull %3) #11 ; 0 uses
  br label %bb.cb

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %i.go = call i32 @xclose(ptr noundef nonnull %3) #11
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %.thread.i65
  %i.gp = phi i32 [ %i.go, %bb.ca ], [ %.0.ph.i, %.thread.i65 ] ; 3 uses
  %i.gq = icmp ne i32 %i.gp, 0
  %i.gr = icmp ne ptr %.050.i, null
  %or.cond5.i66 = and i1 %i.gr, %i.gq
  br i1 %or.cond5.i66, label %bb.cc, label %stat_file.exit.thread.i60

bb.cc:                                            ; preds = %bb.cb
  %i.gs = call i32 @unlink(ptr noundef nonnull %.050.i) #11 ; 0 uses
  br label %stat_file.exit.thread.i60

stat_file.exit.thread.i60:                        ; preds = %bb.cc, %bb.cb, %stat_file.exit.i64, %bb.bs, %bb.bq, %bb.bo
  %.2.i61 = phi i32 [ %i.gp, %bb.cb ], [ %i.gg, %stat_file.exit.i64 ], [ %i.gp, %bb.cc ], [ -2, %bb.bs ], [ -2, %bb.bq ], [ -1, %bb.bo ] ; 2 uses
  %i.gt = call i32 @xclose(ptr noundef nonnull %2) #11 ; 0 uses
  %i.gu = icmp eq i32 %.2.i61, 0
  %i.gv = icmp ne ptr %.050.i, null
  %i.gw = and i1 %i.gv, %i.gu
  %or.cond9.i62 = and i1 %i.ez, %i.gw             ; 2 uses
  %or.cond9.i62.not = xor i1 %or.cond9.i62, true
  %brmerge173 = or i1 %or.cond9.i62.not, %i.er
  %.2.i61.mux = select i1 %or.cond9.i62, i32 0, i32 %.2.i61
  br i1 %brmerge173, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %stat_file.exit.thread.i60
  %i.gx = call i32 @unlink(ptr noundef nonnull %i.ey) #11 ; 0 uses
  br label %bb.ce

bb.ce:                                            ; preds = %stat_file.exit.thread.i60, %.thread74, %bb.cd, %bb.bl
  %.3.i56 = phi i32 [ %i.fn, %bb.bl ], [ %i.fo, %.thread74 ], [ 0, %bb.cd ], [ %.2.i61.mux, %stat_file.exit.thread.i60 ]
  call void @free(ptr noundef %.050.i) #11
  br label %compress_file.exit

compress_file.exit:                               ; preds = %bb.bj, %has_suffix.exit.thread.i, %bb.ce
  %.051.i = phi i32 [ %.3.i56, %bb.ce ], [ 0, %bb.bj ], [ -1, %has_suffix.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  %i.gy = sub nsw i32 0, %.051.i
  %i.gz = or i32 %.2166, %i.gy                    ; 2 uses
  %indvars.iv.next262 = add nuw nsw i64 %indvars.iv261, 1 ; 2 uses
  %exitcond265.not = icmp eq i64 %indvars.iv.next262, %wide.trip.count264
  br i1 %exitcond265.not, label %._crit_edge, label %bb.bg, !llvm.loop !29

._crit_edge:                                      ; preds = %compress_file.exit, %.preheader80
  %.2.lcssa = phi i32 [ 0, %.preheader80 ], [ %i.gz, %compress_file.exit ]
  call void @libdeflate_free_compressor(ptr noundef nonnull %i.en) #11
  br label %bb.cf

bb.cf:                                            ; preds = %._crit_edge, %._crit_edge171
  %.4 = phi i32 [ %.039.lcssa, %._crit_edge171 ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  switch i32 %.4, label %bb.ch [
    i32 0, label %.thread71
    i32 2, label %bb.cg
  ]

bb.cg:                                            ; preds = %bb.cf
  %i.ha = load i8, ptr @suppress_warnings, align 1, !tbaa !33, !range !21, !noundef !22
  %i.hb = trunc nuw i8 %i.ha to i1
  %. = select i1 %i.hb, i32 0, i32 2
  br label %.thread71

bb.ch:                                            ; preds = %bb.cf
  br label %.thread71

.thread71:                                        ; preds = %bb.d, %bb.bf, %bb.x, %bb.cg, %bb.cf, %bb.ch, %bb.o, %bb.n, %bb.l, %bb.h
  %.248 = phi i32 [ 1, %bb.o ], [ 1, %bb.x ], [ 0, %bb.h ], [ 1, %bb.l ], [ 0, %bb.n ], [ 1, %bb.ch ], [ 1, %bb.bf ], [ %., %bb.cg ], [ %.4, %bb.cf ], [ 1, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.248
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @begin_program(ptr noundef) local_unnamed_addr #2

declare i32 @tgetopt(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @parse_compression_level(i8 noundef signext, ptr noundef) local_unnamed_addr #2

declare void @msg(ptr noundef, ...) local_unnamed_addr #2

declare ptr @alloc_decompressor() local_unnamed_addr #2

declare void @libdeflate_free_decompressor(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @alloc_compressor(i32 noundef) local_unnamed_addr #2

declare void @libdeflate_free_compressor(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @stat64(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #5

declare void @warn(ptr noundef, ...) local_unnamed_addr #2

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1
end_hunk_0
