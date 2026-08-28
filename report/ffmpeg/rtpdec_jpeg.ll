Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/rtpdec_jpeg?download=true
inline.NumInlined: 9
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@jpeg_parse_packet:bb.a
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 1 ; 5 uses
  store ptr %i.ft, ptr %9, align 8, !tbaa !38
  %.pr.i123.i = load i32, ptr %i.dg, align 8, !tbaa !37
  %.not.i.i124.i = icmp eq i32 %.pr.i123.i, 0
  br i1 %.not.i.i124.i, label %bb.as, label %jpeg_put_marker.exit125.thread.i

bb.as:                                            ; preds = %bytestream2_put_byte.exit3.i122.i
  %i.fu = load ptr, ptr %i.df, align 8, !tbaa !36
  %i.fv = ptrtoint ptr %i.fu to i64
  %i.fw = ptrtoint ptr %i.ft to i64
  %i.fx = sub i64 %i.fv, %i.fw
  %i.fy = icmp sgt i64 %i.fx, 0
  br i1 %i.fy, label %jpeg_put_marker.exit125.i, label %jpeg_put_marker.exit125.thread.i

jpeg_put_marker.exit125.i:                        ; preds = %bb.as
  store i8 -60, ptr %i.ft, align 1, !tbaa !9
  %i.fz = load ptr, ptr %9, align 8, !tbaa !38
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 1 ; 6 uses
  store ptr %i.ga, ptr %9, align 8, !tbaa !38
  %.pr163.i = load i32, ptr %i.dg, align 8, !tbaa !37
  %.not.i32.i = icmp eq i32 %.pr163.i, 0
  br i1 %.not.i32.i, label %bb.at, label %jpeg_put_marker.exit125.thread.i

bb.at:                                            ; preds = %jpeg_put_marker.exit125.i
  %i.gb = load ptr, ptr %i.df, align 8, !tbaa !36
  %i.gc = ptrtoint ptr %i.gb to i64
  %i.gd = ptrtoint ptr %i.ga to i64
  %i.ge = sub i64 %i.gc, %i.gd
  %i.gf = icmp sgt i64 %i.ge, 1
  br i1 %i.gf, label %bb.au, label %jpeg_put_marker.exit125.thread.i

bb.au:                                            ; preds = %bb.at
  store i16 0, ptr %i.ga, align 1, !tbaa !9
  %i.gg = load ptr, ptr %9, align 8, !tbaa !38
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 2
  store ptr %i.gh, ptr %9, align 8, !tbaa !38
  br label %bytestream2_put_be16.exit33.i

jpeg_put_marker.exit125.thread.i:                 ; preds = %bb.at, %jpeg_put_marker.exit125.i, %bb.as, %bytestream2_put_byte.exit3.i122.i, %bb.ar, %._crit_edge.i
  %i.gi = phi ptr [ %i.ga, %jpeg_put_marker.exit125.i ], [ %i.ga, %bb.at ], [ %i.fl, %._crit_edge.i ], [ %i.fl, %bb.ar ], [ %i.ft, %bytestream2_put_byte.exit3.i122.i ], [ %i.ft, %bb.as ]
  store i32 1, ptr %i.dg, align 8, !tbaa !37
  br label %bytestream2_put_be16.exit33.i

bytestream2_put_be16.exit33.i:                    ; preds = %jpeg_put_marker.exit125.thread.i, %bb.au
  %i.gj = phi ptr [ %i.ga, %bb.au ], [ %i.gi, %jpeg_put_marker.exit125.thread.i ]
  %i.gk = call fastcc i32 @jpeg_create_huffman_table(ptr noundef %9, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @ff_mjpeg_bits_dc_luminance, ptr noundef nonnull @ff_mjpeg_val_dc)
  %i.gl = add nuw nsw i32 %i.gk, 2
  %i.gm = call fastcc i32 @jpeg_create_huffman_table(ptr noundef %9, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @ff_mjpeg_bits_dc_chrominance, ptr noundef nonnull @ff_mjpeg_val_dc)
  %i.gn = add nuw nsw i32 %i.gl, %i.gm
  %i.go = call fastcc i32 @jpeg_create_huffman_table(ptr noundef %9, i32 noundef 1, i32 noundef 0, ptr noundef nonnull @ff_mjpeg_bits_ac_luminance, ptr noundef nonnull @ff_mjpeg_val_ac_luminance)
  %i.gp = add nuw nsw i32 %i.gn, %i.go
  %i.gq = call fastcc i32 @jpeg_create_huffman_table(ptr noundef %9, i32 noundef 1, i32 noundef 1, ptr noundef nonnull @ff_mjpeg_bits_ac_chrominance, ptr noundef nonnull @ff_mjpeg_val_ac_chrominance)
  %i.gr = add nuw nsw i32 %i.gp, %i.gq
  %i.gs = trunc nuw nsw i32 %i.gr to i16
  %i.gt = call i16 @llvm.bswap.i16(i16 %i.gs)
  store i16 %i.gt, ptr %i.gj, align 1, !tbaa !9
  %i.gu = load i32, ptr %i.dg, align 8, !tbaa !37
  %.not.i2.i126.i = icmp eq i32 %i.gu, 0
  %.pre.pre.pre.pre.pre.pre.pre.pre.pre.pre.pre.pre.pre.pre.pre.pre.pre.pre.pre.pre.pre.pre.pre.pre.pre.pre.pre.pre.i = load ptr, ptr %9, align 8, !tbaa !38 ; 4 uses
  br i1 %.not.i2.i126.i, label %bb.av, label %bb.bz

bb.av:                                            ; preds = %bytestream2_put_be16.exit33.i
  %i.gv = load ptr, ptr %i.df, align 8, !tbaa !36
  %i.gw = ptrtoint ptr %i.gv to i64
  %i.gx = ptrtoint ptr %.pre.pre.pre.pre.pre.pre.pre.pre.pre.pre.pre.pre.pre.pre.pre.pre.pre.pre.pre.pre.pre.pre.pre.pre.pre.pre.pre.pre.i to i64
  %i.gy = sub i64 %i.gw, %i.gx
  %i.gz = icmp sgt i64 %i.gy, 0
  br i1 %i.gz, label %bytestream2_put_byte.exit3.i128.i, label %bb.bz

bytestream2_put_byte.exit3.i128.i:                ; preds = %bb.av
  store i8 -1, ptr %.pre.pre.pre.pre.pre.pre.pre.pre.pre.pre.pre.pre.pre.pre.pre.pre.pre.pre.pre.pre.pre.pre.pre.pre.pre.pre.pre.pre.i, align 1, !tbaa !9
  %i.ha = load ptr, ptr %9, align 8, !tbaa !38
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 1 ; 5 uses
  store ptr %i.hb, ptr %9, align 8, !tbaa !38
  %.pr.i129.i = load i32, ptr %i.dg, align 8, !tbaa !37
  %.not.i.i130.i = icmp eq i32 %.pr.i129.i, 0
  br i1 %.not.i.i130.i, label %bb.aw, label %bb.bz

bb.aw:                                            ; preds = %bytestream2_put_byte.exit3.i128.i
  %i.hc = load ptr, ptr %i.df, align 8, !tbaa !36
  %i.hd = ptrtoint ptr %i.hc to i64
  %i.he = ptrtoint ptr %i.hb to i64
  %i.hf = sub i64 %i.hd, %i.he
  %i.hg = icmp sgt i64 %i.hf, 0
  br i1 %i.hg, label %jpeg_put_marker.exit131.i, label %bb.bz

jpeg_put_marker.exit131.i:                        ; preds = %bb.aw
  store i8 -64, ptr %i.hb, align 1, !tbaa !9
  %i.hh = load ptr, ptr %9, align 8, !tbaa !38
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 1 ; 5 uses
  store ptr %i.hi, ptr %9, align 8, !tbaa !38
  %.pr165.i = load i32, ptr %i.dg, align 8, !tbaa !37
  %.not.i30.i = icmp eq i32 %.pr165.i, 0
  br i1 %.not.i30.i, label %bb.ax, label %bb.bz

bb.ax:                                            ; preds = %jpeg_put_marker.exit131.i
  %i.hj = load ptr, ptr %i.df, align 8, !tbaa !36
  %i.hk = ptrtoint ptr %i.hj to i64
  %i.hl = ptrtoint ptr %i.hi to i64
  %i.hm = sub i64 %i.hk, %i.hl
  %i.hn = icmp sgt i64 %i.hm, 1
  br i1 %i.hn, label %bytestream2_put_be16.exit31.i, label %bb.bz

bytestream2_put_be16.exit31.i:                    ; preds = %bb.ax
  store i16 4352, ptr %i.hi, align 1, !tbaa !9
  %i.ho = load ptr, ptr %9, align 8, !tbaa !38
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 2 ; 5 uses
  store ptr %i.hp, ptr %9, align 8, !tbaa !38
  %.pr167.i = load i32, ptr %i.dg, align 8, !tbaa !37
  %.not.i92.i = icmp eq i32 %.pr167.i, 0
  br i1 %.not.i92.i, label %bb.ay, label %bb.bz

bb.ay:                                            ; preds = %bytestream2_put_be16.exit31.i
  %i.hq = load ptr, ptr %i.df, align 8, !tbaa !36
  %i.hr = ptrtoint ptr %i.hq to i64
  %i.hs = ptrtoint ptr %i.hp to i64
  %i.ht = sub i64 %i.hr, %i.hs
  %i.hu = icmp sgt i64 %i.ht, 0
  br i1 %i.hu, label %bytestream2_put_byte.exit93.i, label %bb.bz

bytestream2_put_byte.exit93.i:                    ; preds = %bb.ay
  store i8 8, ptr %i.hp, align 1, !tbaa !9
  %i.hv = load ptr, ptr %9, align 8, !tbaa !38
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 1 ; 5 uses
  store ptr %i.hw, ptr %9, align 8, !tbaa !38
  %.pr169.i = load i32, ptr %i.dg, align 8, !tbaa !37
  %.not.i28.i = icmp eq i32 %.pr169.i, 0
  br i1 %.not.i28.i, label %bb.az, label %bb.bz

bb.az:                                            ; preds = %bytestream2_put_byte.exit93.i
  %i.hx = load ptr, ptr %i.df, align 8, !tbaa !36
  %i.hy = ptrtoint ptr %i.hx to i64
  %i.hz = ptrtoint ptr %i.hw to i64
  %i.ia = sub i64 %i.hy, %i.hz
  %i.ib = icmp sgt i64 %i.ia, 1
  br i1 %i.ib, label %bytestream2_put_be16.exit29.i, label %bb.bz

bytestream2_put_be16.exit29.i:                    ; preds = %bb.az
  %.tr.i = zext i8 %i.y to i16
  %i.ic = shl nuw nsw i16 %.tr.i, 3
  %i.id = call i16 @llvm.bswap.i16(i16 %i.ic)
  store i16 %i.id, ptr %i.hw, align 1, !tbaa !9
  %i.ie = load ptr, ptr %9, align 8, !tbaa !38
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 2 ; 5 uses
  store ptr %i.if, ptr %9, align 8, !tbaa !38
  %.pr171.i = load i32, ptr %i.dg, align 8, !tbaa !37
  %.not.i26.i = icmp eq i32 %.pr171.i, 0
  br i1 %.not.i26.i, label %bb.ba, label %bb.bz

bb.ba:                                            ; preds = %bytestream2_put_be16.exit29.i
  %i.ig = load ptr, ptr %i.df, align 8, !tbaa !36
  %i.ih = ptrtoint ptr %i.ig to i64
  %i.ii = ptrtoint ptr %i.if to i64
  %i.ij = sub i64 %i.ih, %i.ii
  %i.ik = icmp sgt i64 %i.ij, 1
  br i1 %i.ik, label %bytestream2_put_be16.exit27.i, label %bb.bz

bytestream2_put_be16.exit27.i:                    ; preds = %bb.ba
  %.tr218.i = zext i8 %i.w to i16
  %i.il = shl nuw nsw i16 %.tr218.i, 3
  %i.im = call i16 @llvm.bswap.i16(i16 %i.il)
  store i16 %i.im, ptr %i.if, align 1, !tbaa !9
  %i.in = load ptr, ptr %9, align 8, !tbaa !38
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 2 ; 5 uses
  store ptr %i.io, ptr %9, align 8, !tbaa !38
  %.pr173.i = load i32, ptr %i.dg, align 8, !tbaa !37
  %.not.i90.i = icmp eq i32 %.pr173.i, 0
  br i1 %.not.i90.i, label %bb.bb, label %bb.bz

bb.bb:                                            ; preds = %bytestream2_put_be16.exit27.i
  %i.ip = load ptr, ptr %i.df, align 8, !tbaa !36
  %i.iq = ptrtoint ptr %i.ip to i64
  %i.ir = ptrtoint ptr %i.io to i64
  %i.is = sub i64 %i.iq, %i.ir
  %i.it = icmp sgt i64 %i.is, 0
  br i1 %i.it, label %bytestream2_put_byte.exit91.i, label %bb.bz

bytestream2_put_byte.exit91.i:                    ; preds = %bb.bb
  store i8 3, ptr %i.io, align 1, !tbaa !9
  %i.iu = load ptr, ptr %9, align 8, !tbaa !38
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 1 ; 5 uses
  store ptr %i.iv, ptr %9, align 8, !tbaa !38
  %.pr175.i = load i32, ptr %i.dg, align 8, !tbaa !37
  %.not.i88.i = icmp eq i32 %.pr175.i, 0
  br i1 %.not.i88.i, label %bb.bc, label %bb.bz

bb.bc:                                            ; preds = %bytestream2_put_byte.exit91.i
  %i.iw = load ptr, ptr %i.df, align 8, !tbaa !36
  %i.ix = ptrtoint ptr %i.iw to i64
  %i.iy = ptrtoint ptr %i.iv to i64
  %i.iz = sub i64 %i.ix, %i.iy
  %i.ja = icmp sgt i64 %i.iz, 0
  br i1 %i.ja, label %bytestream2_put_byte.exit89.i, label %bb.bz

bytestream2_put_byte.exit89.i:                    ; preds = %bb.bc
  store i8 1, ptr %i.iv, align 1, !tbaa !9
  %i.jb = load ptr, ptr %9, align 8, !tbaa !38
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 1 ; 5 uses
  store ptr %i.jc, ptr %9, align 8, !tbaa !38
  %.pr177.i = load i32, ptr %i.dg, align 8, !tbaa !37
  %.not25.i = icmp eq i8 %.0137, 0
  %.not.i86.i = icmp eq i32 %.pr177.i, 0
  br i1 %.not.i86.i, label %bb.bd, label %bb.bz

bb.bd:                                            ; preds = %bytestream2_put_byte.exit89.i
  %i.jd = load ptr, ptr %i.df, align 8, !tbaa !36
  %i.je = ptrtoint ptr %i.jd to i64
  %i.jf = ptrtoint ptr %i.jc to i64
  %i.jg = sub i64 %i.je, %i.jf
  %i.jh = icmp sgt i64 %i.jg, 0
  br i1 %i.jh, label %bytestream2_put_byte.exit87.i, label %bb.bz

bytestream2_put_byte.exit87.i:                    ; preds = %bb.bd
  %10 = select i1 %.not25.i, i8 33, i8 34
  store i8 %10, ptr %i.jc, align 1, !tbaa !9
  %i.ji = load ptr, ptr %9, align 8, !tbaa !38
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 1 ; 5 uses
  store ptr %i.jj, ptr %9, align 8, !tbaa !38
  %.pr180.i = load i32, ptr %i.dg, align 8, !tbaa !37
  %.not.i84.i = icmp eq i32 %.pr180.i, 0
  br i1 %.not.i84.i, label %bb.be, label %bb.bz

bb.be:                                            ; preds = %bytestream2_put_byte.exit87.i
  %i.jk = load ptr, ptr %i.df, align 8, !tbaa !36
  %i.jl = ptrtoint ptr %i.jk to i64
  %i.jm = ptrtoint ptr %i.jj to i64
  %i.jn = sub i64 %i.jl, %i.jm
  %i.jo = icmp sgt i64 %i.jn, 0
  br i1 %i.jo, label %bytestream2_put_byte.exit85.i, label %bb.bz

bytestream2_put_byte.exit85.i:                    ; preds = %bb.be
  store i8 0, ptr %i.jj, align 1, !tbaa !9
  %i.jp = load ptr, ptr %9, align 8, !tbaa !38
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 1 ; 5 uses
  store ptr %i.jq, ptr %9, align 8, !tbaa !38
  %.pr182.i = load i32, ptr %i.dg, align 8, !tbaa !37
  %.not.i82.i = icmp eq i32 %.pr182.i, 0
  br i1 %.not.i82.i, label %bb.bf, label %bb.bz

bb.bf:                                            ; preds = %bytestream2_put_byte.exit85.i
  %i.jr = load ptr, ptr %i.df, align 8, !tbaa !36
  %i.js = ptrtoint ptr %i.jr to i64
  %i.jt = ptrtoint ptr %i.jq to i64
  %i.ju = sub i64 %i.js, %i.jt
  %i.jv = icmp sgt i64 %i.ju, 0
  br i1 %i.jv, label %bytestream2_put_byte.exit83.i, label %bb.bz

bytestream2_put_byte.exit83.i:                    ; preds = %bb.bf
  store i8 2, ptr %i.jq, align 1, !tbaa !9
  %i.jw = load ptr, ptr %9, align 8, !tbaa !38
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 1 ; 5 uses
  store ptr %i.jx, ptr %9, align 8, !tbaa !38
  %.pr184.i = load i32, ptr %i.dg, align 8, !tbaa !37
  %.not.i80.i = icmp eq i32 %.pr184.i, 0
  br i1 %.not.i80.i, label %bb.bg, label %bb.bz

bb.bg:                                            ; preds = %bytestream2_put_byte.exit83.i
  %i.jy = load ptr, ptr %i.df, align 8, !tbaa !36
  %i.jz = ptrtoint ptr %i.jy to i64
  %i.ka = ptrtoint ptr %i.jx to i64
  %i.kb = sub i64 %i.jz, %i.ka
  %i.kc = icmp sgt i64 %i.kb, 0
  br i1 %i.kc, label %bytestream2_put_byte.exit81.i, label %bb.bz

bytestream2_put_byte.exit81.i:                    ; preds = %bb.bg
  store i8 17, ptr %i.jx, align 1, !tbaa !9
  %i.kd = load ptr, ptr %9, align 8, !tbaa !38
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 1 ; 5 uses
  store ptr %i.ke, ptr %9, align 8, !tbaa !38
  %.pr186.i = load i32, ptr %i.dg, align 8, !tbaa !37
  %i.kf = icmp eq i16 %i.dc, 2
  %.not.i78.i = icmp eq i32 %.pr186.i, 0
  br i1 %.not.i78.i, label %bb.bh, label %bb.bz

bb.bh:                                            ; preds = %bytestream2_put_byte.exit81.i
  %i.kg = load ptr, ptr %i.df, align 8, !tbaa !36
  %i.kh = ptrtoint ptr %i.kg to i64
  %i.ki = ptrtoint ptr %i.ke to i64
  %i.kj = sub i64 %i.kh, %i.ki
  %i.kk = icmp sgt i64 %i.kj, 0
  br i1 %i.kk, label %bytestream2_put_byte.exit79.i, label %bb.bz

bytestream2_put_byte.exit79.i:                    ; preds = %bb.bh
  %i.kl = zext i1 %i.kf to i8                     ; 2 uses
  store i8 %i.kl, ptr %i.ke, align 1, !tbaa !9
  %i.km = load ptr, ptr %9, align 8, !tbaa !38
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 1 ; 5 uses
  store ptr %i.kn, ptr %9, align 8, !tbaa !38
  %.pr188.i = load i32, ptr %i.dg, align 8, !tbaa !37
  %.not.i76.i = icmp eq i32 %.pr188.i, 0
  br i1 %.not.i76.i, label %bb.bi, label %bb.bz

bb.bi:                                            ; preds = %bytestream2_put_byte.exit79.i
  %i.ko = load ptr, ptr %i.df, align 8, !tbaa !36
  %i.kp = ptrtoint ptr %i.ko to i64
  %i.kq = ptrtoint ptr %i.kn to i64
  %i.kr = sub i64 %i.kp, %i.kq
  %i.ks = icmp sgt i64 %i.kr, 0
  br i1 %i.ks, label %bytestream2_put_byte.exit77.i, label %bb.bz

bytestream2_put_byte.exit77.i:                    ; preds = %bb.bi
  store i8 3, ptr %i.kn, align 1, !tbaa !9
  %i.kt = load ptr, ptr %9, align 8, !tbaa !38
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 1 ; 5 uses
  store ptr %i.ku, ptr %9, align 8, !tbaa !38
  %.pr190.i = load i32, ptr %i.dg, align 8, !tbaa !37
  %.not.i74.i = icmp eq i32 %.pr190.i, 0
  br i1 %.not.i74.i, label %bb.bj, label %bb.bz

bb.bj:                                            ; preds = %bytestream2_put_byte.exit77.i
  %i.kv = load ptr, ptr %i.df, align 8, !tbaa !36
  %i.kw = ptrtoint ptr %i.kv to i64
  %i.kx = ptrtoint ptr %i.ku to i64
  %i.ky = sub i64 %i.kw, %i.kx
  %i.kz = icmp sgt i64 %i.ky, 0
  br i1 %i.kz, label %bytestream2_put_byte.exit75.i, label %bb.bz

bytestream2_put_byte.exit75.i:                    ; preds = %bb.bj
  store i8 17, ptr %i.ku, align 1, !tbaa !9
  %i.la = load ptr, ptr %9, align 8, !tbaa !38
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 1 ; 5 uses
  store ptr %i.lb, ptr %9, align 8, !tbaa !38
  %.pr192.i = load i32, ptr %i.dg, align 8, !tbaa !37
  %.not.i72.i = icmp eq i32 %.pr192.i, 0
  br i1 %.not.i72.i, label %bb.bk, label %bb.bz

bb.bk:                                            ; preds = %bytestream2_put_byte.exit75.i
  %i.lc = load ptr, ptr %i.df, align 8, !tbaa !36
  %i.ld = ptrtoint ptr %i.lc to i64
  %i.le = ptrtoint ptr %i.lb to i64
  %i.lf = sub i64 %i.ld, %i.le
  %i.lg = icmp sgt i64 %i.lf, 0
  br i1 %i.lg, label %bytestream2_put_byte.exit73.i, label %bb.bz

bytestream2_put_byte.exit73.i:                    ; preds = %bb.bk
  store i8 %i.kl, ptr %i.lb, align 1, !tbaa !9
  %i.lh = load ptr, ptr %9, align 8, !tbaa !38
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 1 ; 5 uses
  store ptr %i.li, ptr %9, align 8, !tbaa !38
  %.pr194.i = load i32, ptr %i.dg, align 8, !tbaa !37
  %.not.i2.i132.i = icmp eq i32 %.pr194.i, 0
  br i1 %.not.i2.i132.i, label %bb.bl, label %bb.bz

bb.bl:                                            ; preds = %bytestream2_put_byte.exit73.i
  %i.lj = load ptr, ptr %i.df, align 8, !tbaa !36
  %i.lk = ptrtoint ptr %i.lj to i64
  %i.ll = ptrtoint ptr %i.li to i64
  %i.lm = sub i64 %i.lk, %i.ll
  %i.ln = icmp sgt i64 %i.lm, 0
  br i1 %i.ln, label %bytestream2_put_byte.exit3.i134.i, label %bb.bz

bytestream2_put_byte.exit3.i134.i:                ; preds = %bb.bl
  store i8 -1, ptr %i.li, align 1, !tbaa !9
  %i.lo = load ptr, ptr %9, align 8, !tbaa !38
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 1 ; 5 uses
  store ptr %i.lp, ptr %9, align 8, !tbaa !38
  %.pr.i135.i = load i32, ptr %i.dg, align 8, !tbaa !37
  %.not.i.i136.i = icmp eq i32 %.pr.i135.i, 0
  br i1 %.not.i.i136.i, label %bb.bm, label %bb.bz

bb.bm:                                            ; preds = %bytestream2_put_byte.exit3.i134.i
  %i.lq = load ptr, ptr %i.df, align 8, !tbaa !36
  %i.lr = ptrtoint ptr %i.lq to i64
  %i.ls = ptrtoint ptr %i.lp to i64
  %i.lt = sub i64 %i.lr, %i.ls
  %i.lu = icmp sgt i64 %i.lt, 0
  br i1 %i.lu, label %jpeg_put_marker.exit137.i, label %bb.bz

jpeg_put_marker.exit137.i:                        ; preds = %bb.bm
  store i8 -38, ptr %i.lp, align 1, !tbaa !9
  %i.lv = load ptr, ptr %9, align 8, !tbaa !38
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 1 ; 5 uses
  store ptr %i.lw, ptr %9, align 8, !tbaa !38
  %.pr196.i = load i32, ptr %i.dg, align 8, !tbaa !37
  %.not.i.i = icmp eq i32 %.pr196.i, 0
  br i1 %.not.i.i, label %bb.bn, label %bb.bz

bb.bn:                                            ; preds = %jpeg_put_marker.exit137.i
  %i.lx = load ptr, ptr %i.df, align 8, !tbaa !36
  %i.ly = ptrtoint ptr %i.lx to i64
  %i.lz = ptrtoint ptr %i.lw to i64
  %i.ma = sub i64 %i.ly, %i.lz
  %i.mb = icmp sgt i64 %i.ma, 1
  br i1 %i.mb, label %bytestream2_put_be16.exit.i, label %bb.bz

bytestream2_put_be16.exit.i:                      ; preds = %bb.bn
  store i16 3072, ptr %i.lw, align 1, !tbaa !9
  %i.mc = load ptr, ptr %9, align 8, !tbaa !38
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 2 ; 5 uses
  store ptr %i.md, ptr %9, align 8, !tbaa !38
  %.pr198.i = load i32, ptr %i.dg, align 8, !tbaa !37
  %.not.i70.i = icmp eq i32 %.pr198.i, 0
  br i1 %.not.i70.i, label %bb.bo, label %bb.bz

bb.bo:                                            ; preds = %bytestream2_put_be16.exit.i
  %i.me = load ptr, ptr %i.df, align 8, !tbaa !36
  %i.mf = ptrtoint ptr %i.me to i64
  %i.mg = ptrtoint ptr %i.md to i64
  %i.mh = sub i64 %i.mf, %i.mg
  %i.mi = icmp sgt i64 %i.mh, 0
  br i1 %i.mi, label %bytestream2_put_byte.exit71.i, label %bb.bz

bytestream2_put_byte.exit71.i:                    ; preds = %bb.bo
  store i8 3, ptr %i.md, align 1, !tbaa !9
  %i.mj = load ptr, ptr %9, align 8, !tbaa !38
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 1 ; 5 uses
  store ptr %i.mk, ptr %9, align 8, !tbaa !38
  %.pr200.i = load i32, ptr %i.dg, align 8, !tbaa !37
  %.not.i68.i = icmp eq i32 %.pr200.i, 0
  br i1 %.not.i68.i, label %bb.bp, label %bb.bz

bb.bp:                                            ; preds = %bytestream2_put_byte.exit71.i
  %i.ml = load ptr, ptr %i.df, align 8, !tbaa !36
  %i.mm = ptrtoint ptr %i.ml to i64
end_hunk_0
