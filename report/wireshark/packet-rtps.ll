Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-rtps?download=true
inline.NumInlined: 384
inline.NumDeleted: 120
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@dissect_user_defined:bb.a

get_native_type_cdr_alignment.exit627.thread:     ; preds = %bb.ah
  %i.dk = icmp eq i32 %5, 1
  %i.dl = select i1 %i.dk, i32 7, i32 3
  %i.dm = add i32 %i.da, %i.dl
  br label %bb.am

bb.ai:                                            ; preds = %bb.ah
  br label %get_native_type_cdr_alignment.exit627

get_native_type_cdr_alignment.exit627:            ; preds = %bb.ah, %bb.ah, %bb.ah, %bb.ah, %bb.ai
  %.0.i626 = phi i32 [ 0, %bb.ai ], [ 3, %bb.ah ], [ 3, %bb.ah ], [ 3, %bb.ah ], [ 3, %bb.ah ]
  %i.dn = add i32 %.0.i626, %i.da                 ; 9 uses
  switch i64 %.0564, label %bb.an [
    i64 11, label %bb.am
    i64 10, label %bb.al
    i64 9, label %get_native_type_cdr_alignment.exit629
    i64 8, label %bb.ak
    i64 7, label %bb.aj
    i64 14, label %get_native_type_cdr_alignment.exit629
    i64 5, label %get_native_type_cdr_alignment.exit629
    i64 6, label %get_native_type_cdr_alignment.exit629
  ]

bb.aj:                                            ; preds = %get_native_type_cdr_alignment.exit627, %get_native_type_cdr_alignment.exit627.thread800
  %i.do = phi i32 [ %i.dd, %get_native_type_cdr_alignment.exit627.thread800 ], [ %i.dn, %get_native_type_cdr_alignment.exit627 ]
  %i.dp = icmp eq i32 %5, 1
  %.neg837 = select i1 %i.dp, i32 -8, i32 -4
  br label %get_native_type_cdr_alignment.exit629

bb.ak:                                            ; preds = %get_native_type_cdr_alignment.exit627, %get_native_type_cdr_alignment.exit627.thread802
  %i.dq = phi i32 [ %i.dg, %get_native_type_cdr_alignment.exit627.thread802 ], [ %i.dn, %get_native_type_cdr_alignment.exit627 ]
  %i.dr = icmp eq i32 %5, 1
  %.neg836 = select i1 %i.dr, i32 -8, i32 -4
  br label %get_native_type_cdr_alignment.exit629

bb.al:                                            ; preds = %get_native_type_cdr_alignment.exit627.thread798, %get_native_type_cdr_alignment.exit627
  %i.ds = phi i32 [ %i.dj, %get_native_type_cdr_alignment.exit627.thread798 ], [ %i.dn, %get_native_type_cdr_alignment.exit627 ]
  %i.dt = icmp eq i32 %5, 1
  %.neg835 = select i1 %i.dt, i32 -8, i32 -4
  br label %get_native_type_cdr_alignment.exit629

bb.am:                                            ; preds = %get_native_type_cdr_alignment.exit627.thread, %get_native_type_cdr_alignment.exit627
  %i.du = phi i32 [ %i.dm, %get_native_type_cdr_alignment.exit627.thread ], [ %i.dn, %get_native_type_cdr_alignment.exit627 ]
  %i.dv = icmp eq i32 %5, 1
  %.neg = select i1 %i.dv, i32 -8, i32 -4
  br label %get_native_type_cdr_alignment.exit629

bb.an:                                            ; preds = %get_native_type_cdr_alignment.exit627
  br label %get_native_type_cdr_alignment.exit629

get_native_type_cdr_alignment.exit629:            ; preds = %get_native_type_cdr_alignment.exit627, %get_native_type_cdr_alignment.exit627, %get_native_type_cdr_alignment.exit627, %get_native_type_cdr_alignment.exit627, %bb.aj, %bb.ak, %bb.al, %bb.am, %bb.an
  %i.dw = phi i32 [ %i.dn, %bb.an ], [ %i.du, %bb.am ], [ %i.ds, %bb.al ], [ %i.dq, %bb.ak ], [ %i.do, %bb.aj ], [ %i.dn, %get_native_type_cdr_alignment.exit627 ], [ %i.dn, %get_native_type_cdr_alignment.exit627 ], [ %i.dn, %get_native_type_cdr_alignment.exit627 ], [ %i.dn, %get_native_type_cdr_alignment.exit627 ]
  %.0.i628.neg = phi i32 [ -1, %bb.an ], [ %.neg, %bb.am ], [ %.neg835, %bb.al ], [ %.neg836, %bb.ak ], [ %.neg837, %bb.aj ], [ -4, %get_native_type_cdr_alignment.exit627 ], [ -4, %get_native_type_cdr_alignment.exit627 ], [ -4, %get_native_type_cdr_alignment.exit627 ], [ -4, %get_native_type_cdr_alignment.exit627 ]
  %i.dx = and i32 %.0.i628.neg, %i.dw
  %i.dy = add i32 %i.dx, %.0563                   ; 3 uses
  %i.dz = call i32 @tvb_get_int32(ptr noundef %1, i32 noundef %i.dy, i32 noundef %4) ; 2 uses
  %i.ea = load i32, ptr @hf_rtps_dissection_int32, align 4
  %i.eb = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_int_format(ptr noundef %0, i32 noundef %i.ea, ptr noundef %1, i32 noundef %i.dy, i32 noundef 4, i32 noundef %i.dz, ptr noundef nonnull @.str.1617, ptr noundef %8, i32 noundef %i.dz) ; 0 uses
  br label %bb.ao

bb.ao:                                            ; preds = %get_native_type_cdr_alignment.exit629, %get_native_type_cdr_length.exit625
  %.7 = phi i32 [ %i.dy, %get_native_type_cdr_alignment.exit629 ], [ %.2778, %get_native_type_cdr_length.exit625 ]
  %i.ec = add i32 %.7, 4
  br label %.loopexit.thread

bb.ap:                                            ; preds = %bb.n
  br i1 %13, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.ed = add i32 %.2778, 3
  %i.ee = sub i32 %i.ed, %.0563
  %i.ef = and i32 %i.ee, -4
  %i.eg = add i32 %i.ef, %.0563                   ; 3 uses
  %i.eh = call i32 @tvb_get_uint32(ptr noundef %1, i32 noundef %i.eg, i32 noundef %4) ; 2 uses
  %i.ei = load i32, ptr @hf_rtps_dissection_uint32, align 4
  %i.ej = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %0, i32 noundef %i.ei, ptr noundef %1, i32 noundef %i.eg, i32 noundef 4, i32 noundef %i.eh, ptr noundef nonnull @.str.1618, ptr noundef %8, i32 noundef %i.eh) ; 0 uses
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.8 = phi i32 [ %i.eg, %bb.aq ], [ %.2778, %bb.ap ]
  %i.ek = add i32 %.8, 4
  br label %.loopexit.thread

bb.as:                                            ; preds = %bb.n
  br i1 %13, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.el = icmp eq i32 %5, 1                       ; 2 uses
  %.neg841 = select i1 %i.el, i32 -8, i32 -4
  %i.em = select i1 %i.el, i32 7, i32 3
  %i.en = add i32 %.2778, %i.em
  %i.eo = sub i32 %i.en, %.0563
  %i.ep = and i32 %i.eo, %.neg841
  %i.eq = add i32 %i.ep, %.0563                   ; 3 uses
  %i.er = call i64 @tvb_get_int64(ptr noundef %1, i32 noundef %i.eq, i32 noundef %4) ; 2 uses
  %i.es = load i32, ptr @hf_rtps_dissection_int64, align 4
  %i.et = call ptr (ptr, i32, ptr, i32, i32, i64, ptr, ...) @proto_tree_add_int64_format(ptr noundef %0, i32 noundef %i.es, ptr noundef %1, i32 noundef %i.eq, i32 noundef 8, i64 noundef %i.er, ptr noundef nonnull @.str.1619, ptr noundef %8, i64 noundef %i.er) ; 0 uses
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.9 = phi i32 [ %i.eq, %bb.at ], [ %.2778, %bb.as ]
  %i.eu = add i32 %.9, 8
  br label %.loopexit.thread

bb.av:                                            ; preds = %bb.n
  br i1 %13, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.ev = icmp eq i32 %5, 1                       ; 2 uses
  %.neg840 = select i1 %i.ev, i32 -8, i32 -4
  %i.ew = select i1 %i.ev, i32 7, i32 3
  %i.ex = add i32 %.2778, %i.ew
  %i.ey = sub i32 %i.ex, %.0563
  %i.ez = and i32 %i.ey, %.neg840
  %i.fa = add i32 %i.ez, %.0563                   ; 3 uses
  %i.fb = call i64 @tvb_get_uint64(ptr noundef %1, i32 noundef %i.fa, i32 noundef %4) ; 2 uses
  %i.fc = load i32, ptr @hf_rtps_dissection_uint64, align 4
  %i.fd = call ptr (ptr, i32, ptr, i32, i32, i64, ptr, ...) @proto_tree_add_uint64_format(ptr noundef %0, i32 noundef %i.fc, ptr noundef %1, i32 noundef %i.fa, i32 noundef 8, i64 noundef %i.fb, ptr noundef nonnull @.str.1430, ptr noundef %8, i64 noundef %i.fb) ; 0 uses
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.10 = phi i32 [ %i.fa, %bb.aw ], [ %.2778, %bb.av ]
  %i.fe = add i32 %.10, 8
  br label %.loopexit.thread

bb.ay:                                            ; preds = %bb.n
  br i1 %13, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.ff = add i32 %.2778, 3
  %i.fg = sub i32 %i.ff, %.0563
  %i.fh = and i32 %i.fg, -4
  %i.fi = add i32 %i.fh, %.0563                   ; 3 uses
  %i.fj = call float @tvb_get_ieee_float(ptr noundef %1, i32 noundef %i.fi, i32 noundef %4) ; 2 uses
  %i.fk = load i32, ptr @hf_rtps_dissection_float, align 4
  %i.fl = fpext float %i.fj to double
  %i.fm = call ptr (ptr, i32, ptr, i32, i32, float, ptr, ...) @proto_tree_add_float_format(ptr noundef %0, i32 noundef %i.fk, ptr noundef %1, i32 noundef %i.fi, i32 noundef 4, float noundef %i.fj, ptr noundef nonnull @.str.1620, ptr noundef %8, double noundef %i.fl) ; 0 uses
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.11 = phi i32 [ %i.fi, %bb.az ], [ %.2778, %bb.ay ]
  %i.fn = add i32 %.11, 4
  br label %.loopexit.thread

bb.bb:                                            ; preds = %bb.n
  br i1 %13, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.fo = icmp eq i32 %5, 1                       ; 2 uses
  %.neg839 = select i1 %i.fo, i32 -8, i32 -4
  %i.fp = select i1 %i.fo, i32 7, i32 3
  %i.fq = add i32 %.2778, %i.fp
  %i.fr = sub i32 %i.fq, %.0563
  %i.fs = and i32 %i.fr, %.neg839
  %i.ft = add i32 %i.fs, %.0563                   ; 3 uses
  %i.fu = call double @tvb_get_ieee_double(ptr noundef %1, i32 noundef %i.ft, i32 noundef %4) ; 2 uses
  %i.fv = load i32, ptr @hf_rtps_dissection_double, align 4
  %i.fw = call ptr (ptr, i32, ptr, i32, i32, double, ptr, ...) @proto_tree_add_double_format(ptr noundef %0, i32 noundef %i.fv, ptr noundef %1, i32 noundef %i.ft, i32 noundef 8, double noundef %i.fu, ptr noundef nonnull @.str.1620, ptr noundef %8, double noundef %i.fu) ; 0 uses
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.12 = phi i32 [ %i.ft, %bb.bc ], [ %.2778, %bb.bb ]
  %i.fx = add i32 %.12, 8
  br label %.loopexit.thread

bb.be:                                            ; preds = %bb.n
  br i1 %13, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.fy = icmp eq i32 %5, 1                       ; 2 uses
  %.neg838 = select i1 %i.fy, i32 -8, i32 -4
  %i.fz = select i1 %i.fy, i32 7, i32 3
  %i.ga = add i32 %.2778, %i.fz
  %i.gb = sub i32 %i.ga, %.0563
  %i.gc = and i32 %i.gb, %.neg838
  %i.gd = add i32 %i.gc, %.0563                   ; 2 uses
  %i.ge = load i32, ptr @hf_rtps_dissection_int128, align 4
  %i.gf = call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.ge, ptr noundef %1, i32 noundef %i.gd, i32 noundef 16, i32 noundef %4) ; 0 uses
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.13 = phi i32 [ %i.gd, %bb.bf ], [ %.2778, %bb.be ]
  %i.gg = add i32 %.13, 16
  br label %.loopexit.thread

bb.bh:                                            ; preds = %bb.n
  %i.gh = icmp eq i64 %7, 5220339609064640749
  br i1 %i.gh, label %bb.bi, label %bb.bk

bb.bi:                                            ; preds = %bb.bh
  %i.gi = call i32 @strcmp(ptr noundef %8, ptr noundef nonnull dereferenceable(9) @.str.87) #17
  %i.gj = icmp eq i32 %i.gi, 0
  br i1 %i.gj, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  br i1 %13, label %.loopexit849.loopexit, label %.loopexit849

.loopexit849.loopexit:                            ; preds = %bb.bj
  %i.gk = load i32, ptr @hf_rtps_instance_state_data_response_key_hash, align 4
  %i.gl = call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.gk, ptr noundef %1, i32 noundef %.2778, i32 noundef 16, i32 noundef 0) ; 20 uses
  call void (ptr, ptr, ...) @proto_item_set_text(ptr noundef %i.gl, ptr noundef nonnull @.str.1621, ptr noundef %8)
  %i.gm = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %.2778)
  %i.gn = zext i8 %i.gm to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.gl, ptr noundef nonnull @.str.1429, i32 noundef %i.gn)
  %i.go = add i32 %.2778, 1
  %i.gp = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.go)
  %i.gq = zext i8 %i.gp to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.gl, ptr noundef nonnull @.str.1429, i32 noundef %i.gq)
  %i.gr = add i32 %.2778, 2
  %i.gs = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.gr)
  %i.gt = zext i8 %i.gs to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.gl, ptr noundef nonnull @.str.1429, i32 noundef %i.gt)
  %i.gu = add i32 %.2778, 3
  %i.gv = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.gu)
  %i.gw = zext i8 %i.gv to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.gl, ptr noundef nonnull @.str.1429, i32 noundef %i.gw)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.gl, ptr noundef nonnull @.str.1528)
  %i.gx = add i32 %.2778, 4
  %i.gy = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.gx)
  %i.gz = zext i8 %i.gy to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.gl, ptr noundef nonnull @.str.1429, i32 noundef %i.gz)
  %i.ha = add i32 %.2778, 5
  %i.hb = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.ha)
  %i.hc = zext i8 %i.hb to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.gl, ptr noundef nonnull @.str.1429, i32 noundef %i.hc)
  %i.hd = add i32 %.2778, 6
  %i.he = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.hd)
  %i.hf = zext i8 %i.he to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.gl, ptr noundef nonnull @.str.1429, i32 noundef %i.hf)
  %i.hg = add i32 %.2778, 7
  %i.hh = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.hg)
  %i.hi = zext i8 %i.hh to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.gl, ptr noundef nonnull @.str.1429, i32 noundef %i.hi)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.gl, ptr noundef nonnull @.str.1528)
  %i.hj = add i32 %.2778, 8
  %i.hk = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.hj)
  %i.hl = zext i8 %i.hk to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.gl, ptr noundef nonnull @.str.1429, i32 noundef %i.hl)
  %i.hm = add i32 %.2778, 9
  %i.hn = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.hm)
  %i.ho = zext i8 %i.hn to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.gl, ptr noundef nonnull @.str.1429, i32 noundef %i.ho)
  %i.hp = add i32 %.2778, 10
  %i.hq = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.hp)
  %i.hr = zext i8 %i.hq to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.gl, ptr noundef nonnull @.str.1429, i32 noundef %i.hr)
  %i.hs = add i32 %.2778, 11
  %i.ht = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.hs)
  %i.hu = zext i8 %i.ht to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.gl, ptr noundef nonnull @.str.1429, i32 noundef %i.hu)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.gl, ptr noundef nonnull @.str.1528)
  %i.hv = add i32 %.2778, 12
  %i.hw = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.hv)
  %i.hx = zext i8 %i.hw to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.gl, ptr noundef nonnull @.str.1429, i32 noundef %i.hx)
  %i.hy = add i32 %.2778, 13
  %i.hz = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.hy)
  %i.ia = zext i8 %i.hz to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.gl, ptr noundef nonnull @.str.1429, i32 noundef %i.ia)
  %i.ib = add i32 %.2778, 14
  %i.ic = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.ib)
  %i.id = zext i8 %i.ic to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.gl, ptr noundef nonnull @.str.1429, i32 noundef %i.id)
  %i.ie = add i32 %.2778, 15
  %i.if = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.ie)
  %i.ig = zext i8 %i.if to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.gl, ptr noundef nonnull @.str.1429, i32 noundef %i.ig)
  br label %.loopexit849

.loopexit849:                                     ; preds = %.loopexit849.loopexit, %bb.bj
  %i.ih = add i32 %.2778, 16
  br label %.loopexit.thread

bb.bk:                                            ; preds = %bb.bi, %bb.bh
  %.not597 = icmp eq ptr %.0565, null
  br i1 %.not597, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ii = getelementptr i8, ptr %.0565, i64 288
  %i.ij = load i32, ptr %i.ii, align 8
  %i.ik = getelementptr i8, ptr %.0565, i64 16
  %i.il = load i64, ptr %i.ik, align 8
  %i.im = call fastcc i32 @get_native_type_cdr_length(i64 noundef %i.il)
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %.0553 = phi i32 [ %i.im, %bb.bl ], [ 0, %bb.bk ] ; 2 uses
  %.0552 = phi i32 [ %i.ij, %bb.bl ], [ 0, %bb.bk ] ; 6 uses
  br i1 %13, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.in = load i32, ptr @ett_rtps_dissection_tree, align 4
  %i.io = call ptr @proto_tree_add_subtree(ptr noundef %0, ptr noundef %1, i32 noundef %.2778, i32 noundef -1, i32 noundef %i.in, ptr noundef null, ptr noundef %8) ; 3 uses
  %i.ip = load i8, ptr @enable_max_array_data_type_elements, align 1, !range !8, !noundef !9
  %i.iq = trunc nuw i8 %i.ip to i1
  %i.ir = load i32, ptr @rtps_max_array_data_type_elements, align 4
  %i.is = call i32 @llvm.umin.i32(i32 %.0552, i32 %i.ir)
  %i.it = select i1 %i.iq, i32 %i.is, i32 %.0552  ; 2 uses
  %.not891 = icmp eq i32 %.0552, 0
  br i1 %.not891, label %.thread812, label %.lr.ph871

.lr.ph871:                                        ; preds = %bb.bn
  %i.iu = getelementptr i8, ptr %.0565, i64 16
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bm
  %i.iv = mul i32 %.0552, %.0553
  %i.iw = add i32 %i.iv, %.2778
  br label %.loopexit.thread

bb.bp:                                            ; preds = %.lr.ph871, %bb.bq
  %.0560870 = phi i32 [ 0, %.lr.ph871 ], [ %i.ja, %bb.bq ] ; 3 uses
  %.14869 = phi i32 [ %.2778, %.lr.ph871 ], [ %i.iz, %bb.bq ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  %exitcond912.not = icmp eq i32 %.0560870, %i.it
  br i1 %exitcond912.not, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ix = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %i.c, i64 noundef 256, i32 noundef 2, i64 noundef 256, ptr noundef nonnull @.str.1622, ptr noundef %8, i32 noundef %.0560870) ; 0 uses
  %i.iy = load i64, ptr %i.iu, align 8
  %i.iz = call fastcc i32 @dissect_user_defined(ptr noundef %i.io, ptr noundef %1, ptr noundef %2, i32 noundef %.14869, i32 noundef %4, i32 noundef %5, ptr noundef null, i64 noundef %i.iy, ptr noundef nonnull %i.c, i32 noundef 1, i32 noundef %.0563, i16 noundef zeroext 0, i32 noundef 0, i1 noundef zeroext true) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  %i.ja = add nuw i32 %.0560870, 1                ; 2 uses
  %exitcond913.not = icmp eq i32 %i.ja, %.0552
  br i1 %exitcond913.not, label %.thread812, label %bb.bp, !llvm.loop !77

bb.br:                                            ; preds = %bb.bp
  %i.jb = sub nuw i32 %.0552, %i.it               ; 2 uses
  %i.jc = mul i32 %i.jb, %.0553                   ; 2 uses
  %i.jd = add i32 %i.jc, %.14869                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  %i.je = load i8, ptr @enable_max_array_data_type_elements, align 1, !range !8, !noundef !9
  %i.jf = trunc nuw i8 %i.je to i1
  br i1 %i.jf, label %bb.bs, label %.thread812

bb.bs:                                            ; preds = %bb.br
  %i.jg = load i32, ptr @ett_rtps_info_remaining_items, align 4
  %i.jh = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.io, ptr noundef %1, i32 noundef %.14869, i32 noundef %i.jc, i32 noundef %i.jg, ptr noundef null, ptr noundef nonnull @.str.1623, i32 noundef %i.jb) ; 0 uses
  br label %.thread812

.thread812:                                       ; preds = %bb.bq, %bb.bn, %bb.bs, %bb.br
  %.15818 = phi i32 [ %i.jd, %bb.br ], [ %i.jd, %bb.bs ], [ %.2778, %bb.bn ], [ %i.iz, %bb.bq ] ; 2 uses
  %i.ji = sub i32 %.15818, %.2778
  call void @proto_item_set_len(ptr noundef %i.io, i32 noundef %i.ji)
  br label %.loopexit.thread

bb.bt:                                            ; preds = %bb.n
  %i.jj = add i32 %.2778, 3
  %i.jk = sub i32 %i.jj, %.0563
  %i.jl = and i32 %i.jk, -4
  %i.jm = add i32 %i.jl, %.0563                   ; 4 uses
  %i.jn = call i32 @tvb_get_uint32(ptr noundef %1, i32 noundef %i.jm, i32 noundef %4) ; 8 uses
  %.not595 = icmp eq ptr %.0565, null             ; 2 uses
  br i1 %.not595, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.jo = getelementptr i8, ptr %.0565, i64 16
  %i.jp = load i64, ptr %i.jo, align 8
  %i.jq = call fastcc i32 @get_native_type_cdr_length(i64 noundef %i.jp)
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %.0538 = phi i32 [ %i.jq, %bb.bu ], [ 0, %bb.bt ] ; 2 uses
  br i1 %13, label %bb.bw, label %bb.by

bb.bw:                                            ; preds = %bb.bv
  %i.jr = load i32, ptr @ett_rtps_dissection_tree, align 4
  %i.js = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %0, ptr noundef %1, i32 noundef %i.jm, i32 noundef -1, i32 noundef %i.jr, ptr noundef null, ptr noundef nonnull @.str.1624, ptr noundef %8, i32 noundef %i.jn) ; 3 uses
  %i.jt = add i32 %i.jm, 4                        ; 4 uses
  %i.ju = load i8, ptr @enable_max_array_data_type_elements, align 1, !range !8, !noundef !9
  %i.jv = trunc nuw i8 %i.ju to i1
  %i.jw = load i32, ptr @rtps_max_array_data_type_elements, align 4
  %i.jx = call i32 @llvm.umin.i32(i32 %i.jn, i32 %i.jw)
  %i.jy = select i1 %i.jv, i32 %i.jx, i32 %i.jn   ; 3 uses
  %.not890 = icmp eq i32 %i.jn, 0
  br i1 %.not890, label %.thread827, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bw
  %i.jz = getelementptr i8, ptr %.0565, i64 16
  br i1 %.not595, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.bx
  %.0545866.us = phi i32 [ %i.kb, %bb.bx ], [ 0, %.lr.ph ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  %exitcond910.not = icmp eq i32 %.0545866.us, %i.jy
  br i1 %exitcond910.not, label %.split.us, label %bb.bx

bb.bx:                                            ; preds = %.lr.ph.split.us
  %i.ka = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %i.d, i64 noundef 256, i32 noundef 2, i64 noundef 256, ptr noundef nonnull @.str.1622, ptr noundef %8, i32 noundef %.0545866.us) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  %i.kb = add nuw i32 %.0545866.us, 1             ; 2 uses
  %exitcond911.not = icmp eq i32 %i.kb, %i.jn
  br i1 %exitcond911.not, label %.thread827, label %.lr.ph.split.us, !llvm.loop !78

bb.by:                                            ; preds = %bb.bv
  %i.kc = mul i32 %.0538, %i.jn
  %i.kd = add i32 %i.jm, 4
  %i.ke = add i32 %i.kd, %i.kc
  br label %.loopexit.thread

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.cb
  %.0545866 = phi i32 [ %i.ki, %bb.cb ], [ 0, %.lr.ph ] ; 3 uses
  %.16865 = phi i32 [ %.17.ph, %bb.cb ], [ %i.jt, %.lr.ph ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  %exitcond.not = icmp eq i32 %.0545866, %i.jy
  br i1 %exitcond.not, label %.split.us, label %bb.bz

bb.bz:                                            ; preds = %.lr.ph.split
  %i.kf = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %i.d, i64 noundef 256, i32 noundef 2, i64 noundef 256, ptr noundef nonnull @.str.1622, ptr noundef %8, i32 noundef %.0545866) ; 0 uses
  %i.kg = load i64, ptr %i.jz, align 8            ; 2 uses
  %.not596 = icmp eq i64 %i.kg, 0
  br i1 %.not596, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.kh = call fastcc i32 @dissect_user_defined(ptr noundef %i.js, ptr noundef %1, ptr noundef %2, i32 noundef %.16865, i32 noundef %4, i32 noundef %5, ptr noundef null, i64 noundef %i.kg, ptr noundef nonnull %i.d, i32 noundef 1, i32 noundef %.0563, i16 noundef zeroext 0, i32 noundef 0, i1 noundef zeroext true)
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %.17.ph = phi i32 [ %i.kh, %bb.ca ], [ %.16865, %bb.bz ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  %i.ki = add nuw i32 %.0545866, 1                ; 2 uses
  %exitcond909.not = icmp eq i32 %i.ki, %i.jn
  br i1 %exitcond909.not, label %.thread827, label %.lr.ph.split, !llvm.loop !78

.split.us:                                        ; preds = %.lr.ph.split, %.lr.ph.split.us
  %.us-phi = phi i32 [ %i.jt, %.lr.ph.split.us ], [ %.16865, %.lr.ph.split ] ; 2 uses
  %i.kj = sub nuw i32 %i.jn, %i.jy                ; 2 uses
  %i.kk = mul i32 %i.kj, %.0538                   ; 2 uses
  %i.kl = add i32 %i.kk, %.us-phi                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  %i.km = load i8, ptr @enable_max_array_data_type_elements, align 1, !range !8, !noundef !9
  %i.kn = trunc nuw i8 %i.km to i1
  br i1 %i.kn, label %bb.cc, label %.thread827

bb.cc:                                            ; preds = %.split.us
  %i.ko = load i32, ptr @ett_rtps_info_remaining_items, align 4
  %i.kp = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.js, ptr noundef %1, i32 noundef %.us-phi, i32 noundef %i.kk, i32 noundef %i.ko, ptr noundef null, ptr noundef nonnull @.str.1623, i32 noundef %i.kj) ; 0 uses
  br label %.thread827

.thread827:                                       ; preds = %bb.cb, %bb.bx, %bb.bw, %bb.cc, %.split.us
  %.18833 = phi i32 [ %i.kl, %.split.us ], [ %i.kl, %bb.cc ], [ %i.jt, %bb.bw ], [ %i.jt, %bb.bx ], [ %.17.ph, %bb.cb ] ; 2 uses
  %i.kq = sub i32 %.18833, %.2778
  call void @proto_item_set_len(ptr noundef %i.js, i32 noundef %i.kq)
  br label %.loopexit.thread

bb.cd:                                            ; preds = %bb.n
  %i.kr = add i32 %.2778, 3
  %i.ks = sub i32 %i.kr, %.0563
  %i.kt = and i32 %i.ks, -4
  %i.ku = add i32 %i.kt, %.0563                   ; 2 uses
  %i.kv = call i32 @tvb_get_uint32(ptr noundef %1, i32 noundef %i.ku, i32 noundef %4) ; 3 uses
end_hunk_0
