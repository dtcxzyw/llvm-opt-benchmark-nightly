Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5Dint?download=true
inline.NumInlined: 13
inline.NumDeleted: 9
begin_hunk_0_@H5D__update_oh_info:bb.a
  %i.en = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !15
  %i.eo = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !15
  %i.ep = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5D__calculate_minimum_header_size, i32 noundef 787, i64 noundef %i.en, i64 noundef %i.eo, ptr noundef nonnull @.str.234) #11 ; 0 uses
  br label %H5D__calculate_minimum_header_size.exit.thread.i

bb.am:                                            ; preds = %bb.ak
  %i.eq = add i64 %i.du, %i.dm
  %i.er = add i64 %i.eq, %i.eb
  %i.es = add i64 %i.er, %i.eg
  %i.et = add i64 %i.es, %i.el                    ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dg, i64 120
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !85
  %i.ew = icmp eq ptr %i.ev, null
  %or.cond.i.i = select i1 %i.ew, i1 true, i1 %i.dl
  br i1 %or.cond.i.i, label %bb.as, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %3, ptr noundef nonnull align 8 dereferenceable(88) %i.dj, i64 88, i1 false)
  %i.ex = call i32 @H5O_msg_reset_share(i32 noundef 4, ptr noundef nonnull %3) #11
  %i.ey = icmp slt i32 %i.ex, 0
  br i1 %i.ey, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.ez = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !15
  %i.fa = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !15
  %i.fb = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5D__calculate_minimum_header_size, i32 noundef 799, i64 noundef %i.ez, i64 noundef %i.fa, ptr noundef nonnull @.str.235) #11 ; 0 uses
  br label %.thread.i.i

bb.ap:                                            ; preds = %bb.an
  %i.fc = call i64 @H5O_msg_size_oh(ptr noundef %0, ptr noundef nonnull %i.cv, i32 noundef 4, ptr noundef nonnull %3, i64 noundef 0) #11 ; 2 uses
  %i.fd = icmp eq i64 %i.fc, 0
  br i1 %i.fd, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.fe = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !15
  %i.ff = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !15
  %i.fg = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5D__calculate_minimum_header_size, i32 noundef 804, i64 noundef %i.fe, i64 noundef %i.ff, ptr noundef nonnull @.str.236) #11 ; 0 uses
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.aq, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %H5D__calculate_minimum_header_size.exit.thread.i

bb.ar:                                            ; preds = %bb.ap
  %i.fh = add i64 %i.fc, %i.et
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.am
  %.179.i.i = phi i64 [ %i.et, %bb.am ], [ %i.fh, %bb.ar ] ; 3 uses
  %i.fi = load ptr, ptr %i.l, align 8, !tbaa !54  ; 5 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 248
  %i.fk = load i32, ptr %i.fj, align 8, !tbaa !55
  %i.fl = icmp eq i32 %i.fk, 2
  br i1 %i.fl, label %bb.at, label %.thread98.i.i

bb.at:                                            ; preds = %bb.as
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fi, i64 200
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !70
  %.not.i.i = icmp eq i64 %i.fn, 0
  br i1 %.not.i.i, label %.thread98.i.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fi, i64 144
  %i.fp = call i64 @H5O_msg_size_oh(ptr noundef %0, ptr noundef nonnull %i.cv, i32 noundef 11, ptr noundef nonnull %i.fo, i64 noundef 0) #11 ; 2 uses
  %i.fq = icmp eq i64 %i.fp, 0
  br i1 %i.fq, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fr = add i64 %i.fp, %.179.i.i
  %.pre.i.i = load ptr, ptr %i.l, align 8, !tbaa !54
  br label %.thread98.i.i

bb.aw:                                            ; preds = %bb.au
  %i.fs = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !15
  %i.ft = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !15
  %i.fu = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5D__calculate_minimum_header_size, i32 noundef 814, i64 noundef %i.fs, i64 noundef %i.ft, ptr noundef nonnull @.str.237) #11 ; 0 uses
  br label %H5D__calculate_minimum_header_size.exit.thread.i

.thread98.i.i:                                    ; preds = %bb.av, %bb.at, %bb.as
  %i.fv = phi ptr [ %i.fi, %bb.as ], [ %i.fi, %bb.at ], [ %.pre.i.i, %bb.av ] ; 2 uses
  %.4.i.i = phi i64 [ %.179.i.i, %bb.as ], [ %.179.i.i, %bb.at ], [ %i.fr, %bb.av ] ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 232
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !87
  %.not91.i.i = icmp eq i64 %i.fx, 0
  br i1 %.not91.i.i, label %bb.ba, label %bb.ax

bb.ax:                                            ; preds = %.thread98.i.i
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fv, i64 216
  %i.fz = call i64 @H5O_msg_size_oh(ptr noundef %0, ptr noundef nonnull %i.cv, i32 noundef 7, ptr noundef nonnull %i.fy, i64 noundef 0) #11 ; 2 uses
  %i.ga = icmp eq i64 %i.fz, 0
  br i1 %i.ga, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.gb = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !15
  %i.gc = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !15
  %i.gd = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5D__calculate_minimum_header_size, i32 noundef 823, i64 noundef %i.gb, i64 noundef %i.gc, ptr noundef nonnull @.str.238) #11 ; 0 uses
  br label %H5D__calculate_minimum_header_size.exit.thread.i

bb.az:                                            ; preds = %bb.ax
  %i.ge = add i64 %i.fz, %.4.i.i
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %.thread98.i.i
  %.5.i.i = phi i64 [ %i.ge, %bb.az ], [ %.4.i.i, %.thread98.i.i ] ; 3 uses
  %i.gf = call zeroext i8 @H5O_get_oh_flags(ptr noundef nonnull %i.cv) #11
  %i.gg = and i8 %i.gf, 32
  %.not92.i.i = icmp eq i8 %i.gg, 0
  br i1 %.not92.i.i, label %H5D__calculate_minimum_header_size.exit.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gh = call zeroext i8 @H5O_get_oh_version(ptr noundef nonnull %i.cv) #11
  %i.gi = icmp eq i8 %i.gh, 1
  br i1 %i.gi, label %bb.bc, label %H5D__calculate_minimum_header_size.exit.i

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.gj = call i64 @H5O_msg_size_oh(ptr noundef %0, ptr noundef nonnull %i.cv, i32 noundef 18, ptr noundef nonnull %i.b, i64 noundef 0) #11 ; 2 uses
  %i.gk = icmp eq i64 %i.gj, 0
  br i1 %i.gk, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.gl = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !15
  %i.gm = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !15
  %i.gn = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5D__calculate_minimum_header_size, i32 noundef 836, i64 noundef %i.gl, i64 noundef %i.gm, ptr noundef nonnull @.str.239) #11 ; 0 uses
  br label %bb.bf

bb.be:                                            ; preds = %bb.bc
  %i.go = add i64 %i.gj, %.5.i.i
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %.6.i.i = phi i64 [ 0, %bb.bd ], [ %i.go, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br label %H5D__calculate_minimum_header_size.exit.i

H5D__calculate_minimum_header_size.exit.thread.i: ; preds = %bb.ay, %bb.aw, %.thread.i.i, %bb.al, %bb.aj, %bb.ah, %bb.af, %bb.ad, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.bg

H5D__calculate_minimum_header_size.exit.i:        ; preds = %bb.bf, %bb.bb, %bb.ba
  %.7.i.i = phi i64 [ %.5.i.i, %bb.ba ], [ %.6.i.i, %bb.bf ], [ %.5.i.i, %bb.bb ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.gp = icmp eq i64 %.7.i.i, 0
  br i1 %i.gp, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %H5D__calculate_minimum_header_size.exit.i, %H5D__calculate_minimum_header_size.exit.thread.i
  %i.gq = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !15
  %i.gr = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !15
  %i.gs = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5D__prepare_minimized_oh, i32 noundef 875, i64 noundef %i.gq, i64 noundef %i.gr, ptr noundef nonnull @.str.228) #11 ; 0 uses
  br label %bb.bj

bb.bh:                                            ; preds = %H5D__calculate_minimum_header_size.exit.i
  %i.gt = load ptr, ptr %i.l, align 8, !tbaa !54
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 40
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !69
  %i.gw = call i32 @H5O_apply_ohdr(ptr noundef %0, ptr noundef nonnull %i.cv, i64 noundef %i.gv, i64 noundef %.7.i.i, i64 noundef 1, ptr noundef nonnull %1) #11
  %i.gx = icmp eq i32 %i.gw, -1
  br i1 %i.gx, label %bb.bi, label %H5D__prepare_minimized_oh.exit

bb.bi:                                            ; preds = %bb.bh
  %i.gy = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !15
  %i.gz = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !15
  %i.ha = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5D__prepare_minimized_oh, i32 noundef 879, i64 noundef %i.gy, i64 noundef %i.gz, ptr noundef nonnull @.str.229) #11 ; 0 uses
  br label %bb.bj

bb.bj:                                            ; preds = %bb.aa, %bb.bg, %bb.bi
  %i.hb = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !15
  %i.hc = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !15
  %i.hd = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5D__update_oh_info, i32 noundef 983, i64 noundef %i.hb, i64 noundef %i.hc, ptr noundef nonnull @.str.217) #11 ; 0 uses
  br label %.thread128

bb.bk:                                            ; preds = %.H5D__use_minimized_dset_headers.exit.thread_crit_edge, %H5D__use_minimized_dset_headers.exit.thread
  %i.he = load i32, ptr %i.n, align 8, !tbaa !71
  %i.hf = icmp eq i32 %i.he, 0
  br i1 %i.hf, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.hg = getelementptr inbounds nuw i8, ptr %i.m, i64 2456
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !56
  %i.hi = add i64 %i.hh, 256
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %.097 = phi i64 [ %i.hi, %bb.bl ], [ 256, %bb.bk ]
  %i.hj = load ptr, ptr %i.l, align 8, !tbaa !54
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 40
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !69
  %i.hm = call i32 @H5O_create(ptr noundef %0, i64 noundef %.097, i64 noundef 1, i64 noundef %i.hl, ptr noundef nonnull %1) #11
  %i.hn = icmp slt i32 %i.hm, 0
  br i1 %i.hn, label %bb.bn, label %H5D__prepare_minimized_oh.exit

bb.bn:                                            ; preds = %bb.bm
  %i.ho = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !15
  %i.hp = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !15
  %i.hq = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5D__update_oh_info, i32 noundef 994, i64 noundef %i.ho, i64 noundef %i.hp, ptr noundef nonnull @.str.218) #11 ; 0 uses
  br label %.thread128

H5D__prepare_minimized_oh.exit:                   ; preds = %bb.bh, %H5D__use_minimized_dset_headers.exit.thread.thread, %bb.bm
  %i.hr = call ptr @H5O_pin(ptr noundef nonnull %1) #11 ; 10 uses
  %i.hs = icmp eq ptr %i.hr, null
  br i1 %i.hs, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %H5D__prepare_minimized_oh.exit
  %i.ht = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !15
  %i.hu = load i64, ptr @H5E_CANTPIN_g, align 8, !tbaa !15
  %i.hv = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5D__update_oh_info, i32 noundef 1001, i64 noundef %i.ht, i64 noundef %i.hu, ptr noundef nonnull @.str.136) #11 ; 0 uses
  br label %.thread128

bb.bp:                                            ; preds = %H5D__prepare_minimized_oh.exit
  %i.hw = call zeroext i1 @H5O_has_chksum(ptr noundef nonnull %i.hr) #11
  br i1 %i.hw, label %bb.bt, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.hx = call i64 @H5F_get_rfic_flags(ptr noundef %0) #11
  %i.hy = and i64 %i.hx, 1
  %.not106 = icmp eq i64 %i.hy, 0
  br i1 %.not106, label %bb.br, label %bb.bt

bb.br:                                            ; preds = %bb.bq
  %i.hz = call zeroext i1 @H5T_is_numeric_with_unusual_unused_bits(ptr noundef %i.p) #11
  br i1 %i.hz, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.ia = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !15
  %i.ib = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !15
  %i.ic = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5D__update_oh_info, i32 noundef 1008, i64 noundef %i.ia, i64 noundef %i.ib, ptr noundef nonnull @.str.219) #11 ; 0 uses
  br label %bb.ch

bb.bt:                                            ; preds = %bb.br, %bb.bq, %bb.bp
  %i.id = load ptr, ptr %i.l, align 8, !tbaa !54
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 32
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !57
  %i.ig = call i32 @H5S_append(ptr noundef %0, ptr noundef nonnull %i.hr, ptr noundef %i.if) #11
  %i.ih = icmp slt i32 %i.ig, 0
  br i1 %i.ih, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.ii = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !15
  %i.ij = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !15
  %i.ik = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5D__update_oh_info, i32 noundef 1012, i64 noundef %i.ii, i64 noundef %i.ij, ptr noundef nonnull @.str.220) #11 ; 0 uses
  br label %bb.ch

bb.bv:                                            ; preds = %bb.bt
  %i.il = call i32 @H5O_msg_append_oh(ptr noundef %0, ptr noundef nonnull %i.hr, i32 noundef 3, i32 noundef 1, i32 noundef 0, ptr noundef %i.p) #11
  %i.im = icmp slt i32 %i.il, 0
  br i1 %i.im, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.in = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !15
  %i.io = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !15
  %i.ip = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5D__update_oh_info, i32 noundef 1016, i64 noundef %i.in, i64 noundef %i.io, ptr noundef nonnull @.str.221) #11 ; 0 uses
  br label %bb.ch

bb.bx:                                            ; preds = %bb.bv
  %i.iq = call i32 @H5O_msg_append_oh(ptr noundef %0, ptr noundef nonnull %i.hr, i32 noundef 5, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.q) #11
  %i.ir = icmp slt i32 %i.iq, 0
  br i1 %i.ir, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.is = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !15
  %i.it = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !15
  %i.iu = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5D__update_oh_info, i32 noundef 1020, i64 noundef %i.is, i64 noundef %i.it, ptr noundef nonnull @.str.222) #11 ; 0 uses
  br label %bb.ch

bb.bz:                                            ; preds = %bb.bx
  %i.iv = getelementptr inbounds nuw i8, ptr %i.m, i64 120
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !85
  %i.ix = icmp eq ptr %i.iw, null
  %or.cond5 = select i1 %i.ix, i1 true, i1 %i.s
  br i1 %or.cond5, label %5, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %4, ptr noundef nonnull align 8 dereferenceable(88) %i.q, i64 88, i1 false)
  %i.iy = call i32 @H5O_msg_reset_share(i32 noundef 4, ptr noundef nonnull %4) #11 ; 0 uses
  %i.iz = call i32 @H5O_msg_append_oh(ptr noundef %0, ptr noundef nonnull %i.hr, i32 noundef 4, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %4) #11
  %i.ja = icmp slt i32 %i.iz, 0
  br i1 %i.ja, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.jb = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !15
  %i.jc = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !15
  %i.jd = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5D__update_oh_info, i32 noundef 1036, i64 noundef %i.jb, i64 noundef %i.jc, ptr noundef nonnull @.str.223) #11 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %bb.ch

5:                                                ; preds = %bb.bz
  %6 = call i32 @H5D__layout_oh_create(ptr noundef %0, ptr noundef nonnull %i.hr, ptr noundef nonnull %1, i64 noundef %2) #11
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %bb.cd, label %bb.ce

bb.cc:                                            ; preds = %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  %i.je = call i32 @H5D__layout_oh_create(ptr noundef %0, ptr noundef nonnull %i.hr, ptr noundef nonnull %1, i64 noundef %2) #11
  %i.jf = icmp slt i32 %i.je, 0
  br i1 %i.jf, label %bb.cd, label %bb.cf

bb.cd:                                            ; preds = %bb.cc, %5
  %i.jg = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !15
  %i.jh = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !15
  %i.ji = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5D__update_oh_info, i32 noundef 1041, i64 noundef %i.jg, i64 noundef %i.jh, ptr noundef nonnull @.str.224) #11 ; 0 uses
  br label %bb.ch

bb.ce:                                            ; preds = %5
  br i1 %i.s, label %bb.ch, label %bb.cf

bb.cf:                                            ; preds = %bb.cc, %bb.ce
  %i.jj = call i32 @H5O_touch_oh(ptr noundef %0, ptr noundef nonnull %i.hr, i1 noundef zeroext true) #11
  %i.jk = icmp slt i32 %i.jj, 0
  br i1 %i.jk, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.jl = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !15
  %i.jm = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !15
  %i.jn = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5D__update_oh_info, i32 noundef 1081, i64 noundef %i.jl, i64 noundef %i.jm, ptr noundef nonnull @.str.225) #11 ; 0 uses
  br label %bb.ch

bb.ch:                                            ; preds = %bb.bs, %bb.bu, %bb.bw, %bb.by, %bb.cd, %bb.cg, %bb.cf, %bb.ce, %bb.cb
  %.096 = phi i1 [ false, %bb.by ], [ false, %bb.cd ], [ true, %bb.ce ], [ true, %bb.cg ], [ true, %bb.cf ], [ false, %bb.cb ], [ false, %bb.bs ], [ false, %bb.bu ], [ false, %bb.bw ]
  %.4 = phi i32 [ -1, %bb.by ], [ -1, %bb.cd ], [ 0, %bb.ce ], [ -1, %bb.cg ], [ 0, %bb.cf ], [ -1, %bb.cb ], [ -1, %bb.bs ], [ -1, %bb.bu ], [ -1, %bb.bw ]
  %i.jo = call i32 @H5O_unpin(ptr noundef nonnull %i.hr) #11
  %i.jp = icmp slt i32 %i.jo, 0
  br i1 %i.jp, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.jq = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !15
  %i.jr = load i64, ptr @H5E_CANTUNPIN_g, align 8, !tbaa !15
  %i.js = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5D__update_oh_info, i32 noundef 1087, i64 noundef %i.jq, i64 noundef %i.jr, ptr noundef nonnull @.str.139) #11 ; 0 uses
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ch, %bb.ci
  %.5 = phi i32 [ -1, %bb.ci ], [ %.4, %bb.ch ]   ; 2 uses
  %i.jt = icmp slt i32 %.5, 0
  %or.cond7 = and i1 %.096, %i.jt
  br i1 %or.cond7, label %bb.ck, label %.thread128

bb.ck:                                            ; preds = %bb.cj
  %i.ju = load ptr, ptr %i.l, align 8, !tbaa !54
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 256
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !59
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 96
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !80 ; 2 uses
  %.not108 = icmp eq ptr %i.jy, null
  br i1 %.not108, label %.thread128, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.jz = call i32 %i.jy(ptr noundef nonnull %1) #11
  %i.ka = icmp slt i32 %i.jz, 0
  br i1 %i.ka, label %bb.cm, label %.thread128

bb.cm:                                            ; preds = %bb.cl
  %i.kb = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !15
  %i.kc = load i64, ptr @H5E_CANTRELEASE_g, align 8, !tbaa !15
  %i.kd = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5D__update_oh_info, i32 noundef 1094, i64 noundef %i.kb, i64 noundef %i.kc, ptr noundef nonnull @.str.43) #11 ; 0 uses
  br label %.thread128

.thread128:                                       ; preds = %bb.c, %bb.g, %bb.l, %bb.p, %bb.y, %bb.bj, %bb.bo, %bb.bn, %bb.n, %bb.s, %bb.u, %bb.a, %bb.cm, %bb.cl, %bb.ck, %bb.cj
  %.6 = phi i32 [ -1, %bb.cm ], [ -1, %bb.cl ], [ -1, %bb.ck ], [ %.5, %bb.cj ], [ 0, %bb.a ], [ -1, %bb.u ], [ -1, %bb.s ], [ -1, %bb.n ], [ -1, %bb.bn ], [ -1, %bb.bo ], [ -1, %bb.bj ], [ -1, %bb.y ], [ -1, %bb.p ], [ -1, %bb.l ], [ -1, %bb.g ], [ -1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  ret i32 %.6
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @H5D__append_flush_setup(ptr nofree noundef nonnull readonly captures(none) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.H5D_append_flush_t, align 8 ; 8 uses
  %i.a = alloca [32 x i64], align 16              ; 4 uses
  %i.b = alloca [32 x i64], align 16              ; 4 uses
  %i.c = load i8, ptr @H5D_init_g, align 1, !tbaa !10, !range !11, !noundef !12
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = load i8, ptr @H5_libterm_g, align 1, !range !11
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = xor i1 %i.f, true
  %i.h = select i1 %i.d, i1 true, i1 %i.g
  br i1 %i.h, label %bb.b, label %bb.u, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !54
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4704
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %i.k, i8 0, i64 280, i1 false)
  %i.l = load i64, ptr @H5P_LST_DATASET_ACCESS_ID_g, align 8, !tbaa !15
  %.not = icmp eq i64 %1, %i.l
  br i1 %.not, label %bb.u, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !54
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 248
  %i.o = load i32, ptr %i.n, align 8, !tbaa !55
  %i.p = icmp eq i32 %i.o, 2
  br i1 %i.p, label %bb.d, label %bb.u

bb.d:                                             ; preds = %bb.c
  %i.q = tail call ptr @H5I_object(i64 noundef %1) #11 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = load i64, ptr @H5E_ID_g, align 8, !tbaa !15
  %i.t = load i64, ptr @H5E_BADID_g, align 8, !tbaa !15
  %i.u = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5D__append_flush_setup, i32 noundef 1665, i64 noundef %i.s, i64 noundef %i.t, ptr noundef nonnull @.str.248) #11 ; 0 uses
  br label %bb.u

bb.f:                                             ; preds = %bb.d
  %i.v = tail call i32 @H5P_exist_plist(ptr noundef nonnull %i.q, ptr noundef nonnull @.str.166) #11
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %bb.g, label %bb.u

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  %i.x = call i32 @H5P_get(ptr noundef nonnull %i.q, ptr noundef nonnull @.str.166, ptr noundef nonnull %2) #11
  %i.y = icmp slt i32 %i.x, 0
  br i1 %i.y, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.z = load i64, ptr @H5E_PLIST_g, align 8, !tbaa !15
  %i.aa = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !15
  %i.ab = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5D__append_flush_setup, i32 noundef 1673, i64 noundef %i.z, i64 noundef %i.aa, ptr noundef nonnull @.str.249) #11 ; 0 uses
  br label %bb.t

bb.i:                                             ; preds = %bb.g
  %i.ac = load i32, ptr %2, align 8, !tbaa !133
  %.not39 = icmp eq i32 %i.ac, 0
  br i1 %.not39, label %bb.t, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.ad = load ptr, ptr %i.i, align 8, !tbaa !54
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !57
  %i.ag = call i32 @H5S_get_simple_extent_dims(ptr noundef %i.af, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #11 ; 6 uses
  %i.ah = icmp slt i32 %i.ag, 0
  br i1 %i.ah, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ai = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !15
  %i.aj = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !15
  %i.ak = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5D__append_flush_setup, i32 noundef 1682, i64 noundef %i.ai, i64 noundef %i.aj, ptr noundef nonnull @.str.250) #11 ; 0 uses
  br label %bb.s

bb.l:                                             ; preds = %bb.j
  %i.al = load i32, ptr %2, align 8, !tbaa !133
  %.not40 = icmp eq i32 %i.al, %i.ag
  br i1 %.not40, label %.preheader, label %bb.m

.preheader:                                       ; preds = %bb.l
  %.not47 = icmp eq i32 %i.ag, 0
  br i1 %.not47, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8
  %wide.trip.count = zext nneg i32 %i.ag to i64
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.an = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !15
  %i.ao = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !15
  %i.ap = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5D__append_flush_setup, i32 noundef 1685, i64 noundef %i.an, i64 noundef %i.ao, ptr noundef nonnull @.str.251) #11 ; 0 uses
  br label %bb.s

bb.n:                                             ; preds = %.lr.ph, %bb.q
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.q ] ; 5 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !15
  %.not41 = icmp eq i64 %i.ar, 0
  br i1 %.not41, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv
  %i.at = load i64, ptr %i.as, align 8, !tbaa !15 ; 2 uses
  %.not42 = icmp eq i64 %i.at, -1
  br i1 %.not42, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.av = load i64, ptr %i.au, align 8, !tbaa !15
  %i.aw = icmp eq i64 %i.at, %i.av
  br i1 %i.aw, label %._crit_edge, label %bb.q

bb.q:                                             ; preds = %bb.n, %bb.p, %bb.o
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.thread, label %bb.n, !llvm.loop !132

._crit_edge:                                      ; preds = %bb.p
  %i.ax = trunc nuw i64 %indvars.iv to i32
  %i.ay = icmp eq i32 %i.ag, %i.ax
  br i1 %i.ay, label %._crit_edge.thread, label %bb.r

bb.r:                                             ; preds = %._crit_edge
  %i.az = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !15
  %i.ba = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !15
  %i.bb = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5D__append_flush_setup, i32 noundef 1696, i64 noundef %i.az, i64 noundef %i.ba, ptr noundef nonnull @.str.252) #11 ; 0 uses
  br label %bb.s

._crit_edge.thread:                               ; preds = %bb.q, %.preheader, %._crit_edge
  %i.bc = load ptr, ptr %i.i, align 8, !tbaa !54  ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 4704
  store i32 %i.ag, ptr %i.bd, align 8, !tbaa !134
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 264
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 4968
  %i.bg = load <2 x ptr>, ptr %i.be, align 8, !tbaa !89
  store <2 x ptr> %i.bg, ptr %i.bf, align 8, !tbaa !89
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 4712
end_hunk_0
