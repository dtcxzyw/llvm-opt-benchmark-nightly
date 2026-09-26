Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-stun?download=true
inline.NumInlined: 17
inline.NumDeleted: 4
begin_hunk_0_@dissect_stun_message:bb.a
bb.ao:                                            ; preds = %bb.an
  %i.ez = getelementptr i8, ptr %i.ey, i64 40
  %i.fa = load ptr, ptr %i.ez, align 8            ; 2 uses
  %.not5.i898 = icmp eq ptr %i.fa, null
  br i1 %.not5.i898, label %proto_item_set_generated.exit899, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fb = getelementptr i8, ptr %i.fa, i64 28     ; 2 uses
  %i.fc = load i32, ptr %i.fb, align 4
  %i.fd = or i32 %i.fc, 2
  store i32 %i.fd, ptr %i.fb, align 4
  br label %proto_item_set_generated.exit899

bb.aq:                                            ; preds = %bb.ai
  %i.fe = getelementptr i8, ptr %.2837, i64 4
  %i.ff = load i32, ptr %i.fe, align 4            ; 2 uses
  %i.fg = getelementptr i8, ptr %1, i64 20
  %i.fh = load i32, ptr %i.fg, align 4
  %.not873 = icmp eq i32 %i.ff, %i.fh
  br i1 %.not873, label %proto_item_set_generated.exit902, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fi = load i32, ptr @hf_stun_duplicate, align 4
  %i.fj = call ptr @proto_tree_add_uint(ptr noundef %i.ej, i32 noundef %i.fi, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.ff) ; 2 uses
  %.not.i900 = icmp eq ptr %i.fj, null
  br i1 %.not.i900, label %proto_item_set_generated.exit902, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fk = getelementptr i8, ptr %i.fj, i64 40
  %i.fl = load ptr, ptr %i.fk, align 8            ; 2 uses
  %.not5.i901 = icmp eq ptr %i.fl, null
  br i1 %.not5.i901, label %proto_item_set_generated.exit902, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fm = getelementptr i8, ptr %i.fl, i64 28     ; 2 uses
  %i.fn = load i32, ptr %i.fm, align 4
  %i.fo = or i32 %i.fn, 2
  store i32 %i.fo, ptr %i.fm, align 4
  br label %proto_item_set_generated.exit902

proto_item_set_generated.exit902:                 ; preds = %bb.at, %bb.as, %bb.ar, %bb.aq
  %.not1002 = icmp eq i16 %.0828, 1
  br i1 %.not1002, label %proto_item_set_generated.exit899, label %bb.au

bb.au:                                            ; preds = %proto_item_set_generated.exit902
  %i.fp = load i32, ptr %.2837, align 8
  %.not874 = icmp eq i32 %i.fp, 0
  br i1 %.not874, label %proto_item_set_generated.exit899, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #5
  %i.fq = load i32, ptr @hf_stun_response_to, align 4
  %i.fr = load i32, ptr %.2837, align 8
  %i.fs = call ptr @proto_tree_add_uint(ptr noundef %i.ej, i32 noundef %i.fq, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.fr) ; 2 uses
  %.not.i903 = icmp eq ptr %i.fs, null
  br i1 %.not.i903, label %proto_item_set_generated.exit905, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ft = getelementptr i8, ptr %i.fs, i64 40
  %i.fu = load ptr, ptr %i.ft, align 8            ; 2 uses
  %.not5.i904 = icmp eq ptr %i.fu, null
  br i1 %.not5.i904, label %proto_item_set_generated.exit905, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fv = getelementptr i8, ptr %i.fu, i64 28     ; 2 uses
  %i.fw = load i32, ptr %i.fv, align 4
  %i.fx = or i32 %i.fw, 2
  store i32 %i.fx, ptr %i.fv, align 4
  br label %proto_item_set_generated.exit905

proto_item_set_generated.exit905:                 ; preds = %bb.av, %bb.aw, %bb.ax
  %i.fy = getelementptr i8, ptr %1, i64 24
  %i.fz = getelementptr i8, ptr %.2837, i64 8
  call void @nstime_delta(ptr noundef nonnull %6, ptr noundef %i.fy, ptr noundef %i.fz)
  %i.ga = load i32, ptr @hf_stun_time, align 4
  %i.gb = call ptr @proto_tree_add_time(ptr noundef %i.ej, i32 noundef %i.ga, ptr noundef %0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %6) ; 2 uses
  %.not.i906 = icmp eq ptr %i.gb, null
  br i1 %.not.i906, label %proto_item_set_generated.exit908, label %bb.ay

bb.ay:                                            ; preds = %proto_item_set_generated.exit905
  %i.gc = getelementptr i8, ptr %i.gb, i64 40
  %i.gd = load ptr, ptr %i.gc, align 8            ; 2 uses
  %.not5.i907 = icmp eq ptr %i.gd, null
  br i1 %.not5.i907, label %proto_item_set_generated.exit908, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ge = getelementptr i8, ptr %i.gd, i64 28     ; 2 uses
  %i.gf = load i32, ptr %i.ge, align 4
  %i.gg = or i32 %i.gf, 2
  store i32 %i.gg, ptr %i.ge, align 4
  br label %proto_item_set_generated.exit908

proto_item_set_generated.exit908:                 ; preds = %proto_item_set_generated.exit905, %bb.ay, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #5
  br label %proto_item_set_generated.exit899

proto_item_set_generated.exit899:                 ; preds = %bb.ap, %bb.ao, %bb.an, %proto_item_set_generated.exit902, %proto_item_set_generated.exit908, %bb.au, %proto_item_set_generated.exit
  br i1 %.not877, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %proto_item_set_generated.exit899
  %i.gh = load i32, ptr @hf_stun_tcp_frame_length, align 4
  %i.gi = call ptr @proto_tree_add_item(ptr noundef %i.ej, i32 noundef %i.gh, ptr noundef %0, i32 noundef 0, i32 noundef 2, i32 noundef 0) ; 0 uses
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %proto_item_set_generated.exit899
  %.0840 = phi i32 [ 2, %bb.ba ], [ 0, %proto_item_set_generated.exit899 ] ; 9 uses
  %i.gj = load i32, ptr @hf_stun_type, align 4
  %i.gk = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.ej, i32 noundef %i.gj, ptr noundef %0, i32 noundef %.0840, i32 noundef 2, i32 noundef %i.w, ptr noundef nonnull @.str.274, i32 noundef %i.w, ptr noundef %i.ee, ptr noundef %i.ec)
  %i.gl = load i32, ptr @ett_stun_type, align 4
  %i.gm = call ptr @proto_item_add_subtree(ptr noundef %i.gk, i32 noundef %i.gl) ; 3 uses
  %i.gn = load i32, ptr @hf_stun_type_class, align 4
  %i.go = call ptr @proto_tree_add_uint(ptr noundef %i.gm, i32 noundef %i.gn, ptr noundef %0, i32 noundef %.0840, i32 noundef 2, i32 noundef %i.w)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.go, ptr noundef nonnull @.str.275, ptr noundef %i.ec, i32 noundef %i.eb)
  %i.gp = load i32, ptr @hf_stun_type_method, align 4
  %i.gq = call ptr @proto_tree_add_uint(ptr noundef %i.gm, i32 noundef %i.gp, ptr noundef %0, i32 noundef %.0840, i32 noundef 2, i32 noundef %i.w)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.gq, ptr noundef nonnull @.str.276, ptr noundef %i.ee, i32 noundef %i.ed)
  %i.gr = load i32, ptr @hf_stun_type_method_assignment, align 4
  %i.gs = call ptr @proto_tree_add_uint(ptr noundef %i.gm, i32 noundef %i.gr, ptr noundef %0, i32 noundef %.0840, i32 noundef 2, i32 noundef %i.w) ; 0 uses
  %i.gt = add nuw nsw i32 %.0840, 2               ; 2 uses
  %i.gu = load i32, ptr @hf_stun_length, align 4
  %i.gv = call ptr @proto_tree_add_item(ptr noundef %i.ej, i32 noundef %i.gu, ptr noundef %0, i32 noundef %i.gt, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.gw = or disjoint i32 %.0840, 4
  %i.gx = load i32, ptr @hf_stun_cookie, align 4
  %i.gy = call ptr @proto_tree_add_item(ptr noundef %i.ej, i32 noundef %i.gx, ptr noundef %0, i32 noundef %i.gw, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.gz = or disjoint i32 %.0840, 8
  %i.ha = load i32, ptr @hf_stun_id, align 4
  %i.hb = call ptr @proto_tree_add_item(ptr noundef %i.ej, i32 noundef %i.ha, ptr noundef %0, i32 noundef %i.gz, i32 noundef 12, i32 noundef 0) ; 0 uses
  %i.hc = or disjoint i32 %.0840, 20              ; 4 uses
  %i.hd = call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %i.bq) ; 3 uses
  %.not879 = icmp eq i16 %i.u, 0
  br i1 %.not879, label %bb.fu, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.he = load i32, ptr @stun_network_version, align 4 ; 2 uses
  %.not878 = icmp eq i32 %i.he, 0                 ; 2 uses
  %i.hf = select i1 %.not878, i32 3, i32 %i.he
  %i.hg = icmp samesign ult i32 %.0840, %i.v      ; 2 uses
  %or.cond = select i1 %.not878, i1 %i.hg, i1 false
  br i1 %or.cond, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.hh = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.hc)
  %i.hi = icmp eq i16 %i.hh, 15
  %spec.select892 = select i1 %i.hi, i32 1, i32 3
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.0830 = phi i32 [ %i.hf, %bb.bc ], [ %spec.select892, %bb.bd ] ; 3 uses
  %i.hj = load i32, ptr @hf_stun_network_version, align 4
  %i.hk = call ptr @proto_tree_add_uint(ptr noundef %i.ej, i32 noundef %i.hj, ptr noundef %0, i32 noundef %i.hc, i32 noundef 0, i32 noundef %.0830) ; 2 uses
  %.not.i909 = icmp eq ptr %i.hk, null
  br i1 %.not.i909, label %proto_item_set_generated.exit911, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.hl = getelementptr i8, ptr %i.hk, i64 40
  %i.hm = load ptr, ptr %i.hl, align 8            ; 2 uses
  %.not5.i910 = icmp eq ptr %i.hm, null
  br i1 %.not5.i910, label %proto_item_set_generated.exit911, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.hn = getelementptr i8, ptr %i.hm, i64 28     ; 2 uses
  %i.ho = load i32, ptr %i.hn, align 4
  %i.hp = or i32 %i.ho, 2
  store i32 %i.hp, ptr %i.hn, align 4
  br label %proto_item_set_generated.exit911

proto_item_set_generated.exit911:                 ; preds = %bb.be, %bb.bf, %bb.bg
  %i.hq = icmp sgt i32 %.0830, 2                  ; 4 uses
  %i.hr = and i32 %i.v, 3
  %i.hs = icmp ne i32 %i.hr, 0
  %i.ht = select i1 %i.hq, i1 %i.hs, i1 false
  br i1 %i.ht, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %proto_item_set_generated.exit911
  %i.hu = call ptr @proto_tree_add_expert(ptr noundef %i.ej, ptr noundef %1, ptr noundef nonnull @ei_stun_wrong_msglen, ptr noundef %0, i32 noundef %i.gt, i32 noundef 2)
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %proto_item_set_generated.exit911
  %.0819 = phi ptr [ %i.hu, %bb.bh ], [ %i.ej, %proto_item_set_generated.exit911 ]
  %i.hv = load i32, ptr @hf_stun_attributes, align 4
  %i.hw = call ptr @proto_tree_add_item(ptr noundef %.0819, i32 noundef %i.hv, ptr noundef %0, i32 noundef %i.hc, i32 noundef %i.v, i32 noundef 0)
  %i.hx = load i32, ptr @ett_stun_att_all, align 4
  %i.hy = call ptr @proto_item_add_subtree(ptr noundef %i.hw, i32 noundef %i.hx) ; 2 uses
  br i1 %i.hg, label %.lr.ph949, label %.loopexit

.lr.ph949:                                        ; preds = %bb.bi
  %i.hz = icmp slt i32 %.0830, 2
  %i.ia = getelementptr i8, ptr %1, i64 416       ; 10 uses
  %i.ib = lshr i32 %i.hd, 16
  %i.ic = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.id = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.bj

bb.bj:                                            ; preds = %.lr.ph949, %bb.ft
  %.0831948 = phi i1 [ false, %.lr.ph949 ], [ %.2932, %bb.ft ] ; 82 uses
  %.1841947 = phi i32 [ %i.hc, %.lr.ph949 ], [ %i.yg, %bb.ft ] ; 43 uses
  %i.ie = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %.1841947) ; 4 uses
  %i.if = add nuw nsw i32 %.1841947, 2            ; 3 uses
  %i.ig = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.if) ; 45 uses
  %i.ih = add i16 %i.ig, 3
  %i.ii = and i16 %i.ih, -4                       ; 2 uses
  %.0843 = select i1 %i.hq, i16 %i.ii, i16 %i.ig  ; 4 uses
  %i.ij = and i16 %i.ie, -2
  %or.cond10 = icmp eq i16 %i.ij, 20
  %or.cond893 = select i1 %i.hz, i1 %or.cond10, i1 false
  %i.ik = zext i1 %or.cond893 to i16
  %.0844 = xor i16 %i.ie, %i.ik                   ; 3 uses
  %i.il = zext i16 %.0844 to i32                  ; 3 uses
  %i.im = call ptr @try_val_to_str_ext(i32 noundef %i.il, ptr noundef nonnull @attributes_ext) ; 5 uses
  %.not880 = icmp eq ptr %i.im, null
  br i1 %.not880, label %bb.bm, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.in = load i32, ptr @hf_stun_attr, align 4
  %i.io = zext i16 %.0843 to i32                  ; 4 uses
  %i.ip = add nuw nsw i32 %i.io, 4
  %i.iq = zext i16 %i.ie to i32                   ; 4 uses
  %i.ir = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.hy, i32 noundef %i.in, ptr noundef %0, i32 noundef %.1841947, i32 noundef %i.ip, i32 noundef %i.iq, ptr noundef nonnull @.str.277, ptr noundef nonnull %i.im)
  %i.is = load i32, ptr @ett_stun_att, align 4
  %i.it = call ptr @proto_item_add_subtree(ptr noundef %i.ir, i32 noundef %i.is) ; 3 uses
  %i.iu = load i32, ptr @hf_stun_att_type, align 4
  %i.iv = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.it, i32 noundef %i.iu, ptr noundef %0, i32 noundef %.1841947, i32 noundef 2, i32 noundef %i.iq, ptr noundef nonnull @.str.277, ptr noundef nonnull %i.im)
  %i.iw = load i32, ptr @ett_stun_att_type, align 4
  %i.ix = call ptr @proto_item_add_subtree(ptr noundef %i.iv, i32 noundef %i.iw) ; 2 uses
  %i.iy = load i32, ptr @hf_stun_att_type_comprehension, align 4
  %i.iz = call ptr @proto_tree_add_uint(ptr noundef %i.ix, i32 noundef %i.iy, ptr noundef %0, i32 noundef %.1841947, i32 noundef 2, i32 noundef %i.iq) ; 0 uses
  %i.ja = load i32, ptr @hf_stun_att_type_assignment, align 4
  %i.jb = call ptr @proto_tree_add_uint(ptr noundef %i.ix, i32 noundef %i.ja, ptr noundef %0, i32 noundef %.1841947, i32 noundef 2, i32 noundef %i.iq) ; 0 uses
  %i.jc = add nuw nsw i32 %.1841947, 4            ; 2 uses
  %i.jd = add nuw nsw i32 %i.jc, %i.io
  %i.je = icmp ugt i32 %i.jd, %i.bt
  br i1 %i.je, label %bb.bl, label %bb.bn

bb.bl:                                            ; preds = %bb.bk
  %i.jf = load i32, ptr @hf_stun_att_length, align 4
  %i.jg = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.it, i32 noundef %i.jf, ptr noundef %0, i32 noundef %i.if, i32 noundef 2, i32 noundef %i.io, ptr noundef nonnull @.str.278, i32 noundef %i.io) ; 0 uses
  br label %.loopexit

bb.bm:                                            ; preds = %bb.bj
  %i.jh = zext i16 %.0843 to i32
  %i.ji = add nuw nsw i32 %i.jh, 4
  %i.jj = call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %i.hy, ptr noundef %1, ptr noundef nonnull @ei_stun_unknown_attribute, ptr noundef %0, i32 noundef %.1841947, i32 noundef %i.ji, ptr noundef nonnull @.str.279, i32 noundef %i.il) ; 2 uses
  %i.jk = load i32, ptr @hf_stun_att_type, align 4
  %i.jl = zext i16 %i.ie to i32
  %i.jm = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.jj, i32 noundef %i.jk, ptr noundef %0, i32 noundef %.1841947, i32 noundef 2, i32 noundef %i.jl, ptr noundef nonnull @.str.280, i32 noundef %i.il) ; 0 uses
  %.pre963 = add nuw nsw i32 %.1841947, 4
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bk, %bb.bm
  %.pre-phi = phi i32 [ %i.jc, %bb.bk ], [ %.pre963, %bb.bm ] ; 61 uses
  %.0825 = phi ptr [ %i.it, %bb.bk ], [ %i.jj, %bb.bm ] ; 109 uses
  %i.jn = load i32, ptr @hf_stun_att_length, align 4
  %i.jo = zext i16 %i.ig to i32                   ; 21 uses
  %i.jp = call ptr @proto_tree_add_uint(ptr noundef %.0825, i32 noundef %i.jn, ptr noundef %0, i32 noundef %i.if, i32 noundef 2, i32 noundef %i.jo) ; 0 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  switch i16 %.0844, label %bb.fq [
    i16 2, label %bb.bo
    i16 4, label %bb.bo
    i16 5, label %bb.bo
    i16 11, label %bb.bo
    i16 17, label %bb.bo
    i16 7, label %bb.bw
    i16 1, label %bb.bx
    i16 -32733, label %bb.bx
    i16 -32725, label %bb.bx
    i16 -32724, label %bb.bx
    i16 -32624, label %bb.bx
    i16 14, label %bb.bx
    i16 3, label %bb.cf
    i16 6, label %bb.ci
    i16 8, label %bb.ck
    i16 9, label %bb.cm
    i16 10, label %.preheader
    i16 20, label %bb.cr
    i16 21, label %bb.cs
    i16 29, label %bb.ct
    i16 -32766, label %bb.ct
    i16 18, label %bb.df
    i16 22, label %bb.df
    i16 32, label %bb.dg
    i16 39, label %bb.dg
    i16 40, label %bb.dg
    i16 -32736, label %bb.dg
    i16 -32679, label %bb.dg
    i16 -32678, label %bb.dg
    i16 -32677, label %bb.dg
    i16 -32676, label %bb.dg
    i16 23, label %bb.dt
    i16 24, label %bb.dw
    i16 34, label %bb.dy
    i16 36, label %bb.ea
    i16 38, label %bb.ec
    i16 48, label %bb.ed
    i16 -32764, label %bb.ed
    i16 -32762, label %bb.ef
    i16 -32734, label %bb.eg
    i16 -32729, label %bb.eh
    i16 -32728, label %bb.ej
    i16 -32727, label %bb.el
    i16 -32726, label %bb.el
    i16 19, label %bb.en
    i16 25, label %bb.eq
    i16 12, label %bb.et
    i16 15, label %bb.ev
    i16 16, label %bb.ex
    i16 13, label %bb.ez
    i16 -32760, label %bb.fb
    i16 -32656, label %bb.fc
    i16 -32688, label %bb.fd
    i16 -32683, label %bb.fe
    i16 -32682, label %bb.ff
    i16 -32681, label %bb.fg
    i16 -32680, label %bb.fh
    i16 -32675, label %bb.fi
    i16 -32673, label %bb.fi
    i16 -32674, label %bb.fj
    i16 -32672, label %bb.fj
    i16 -32671, label %bb.fk
    i16 -32670, label %bb.fl
    i16 -32664, label %bb.fm
    i16 -32684, label %bb.fn
    i16 -32619, label %bb.fo
    i16 -16297, label %bb.fp
  ]

.preheader:                                       ; preds = %bb.bn
  %.not950 = icmp eq i16 %i.ig, 0
  br i1 %.not950, label %.thread, label %.lr.ph946

bb.bo:                                            ; preds = %bb.bn, %bb.bn, %bb.bn, %bb.bn, %bb.bn
  %i.jq = icmp eq i16 %i.ig, 0
  br i1 %i.jq, label %.thread, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.jr = load i32, ptr @hf_stun_att_reserved, align 4
  %i.js = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.jr, ptr noundef %0, i32 noundef %.pre-phi, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.jt = icmp eq i16 %i.ig, 1
  br i1 %i.jt, label %.thread, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ju = load i32, ptr @hf_stun_att_family, align 4
  %i.jv = add nuw nsw i32 %.1841947, 5            ; 2 uses
  %i.jw = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.ju, ptr noundef %0, i32 noundef %i.jv, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.jx = icmp ult i16 %i.ig, 4
  br i1 %i.jx, label %.thread, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.jy = load i32, ptr @hf_stun_att_port, align 4
  %i.jz = add nuw nsw i32 %.1841947, 6            ; 2 uses
  %i.ka = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.jy, ptr noundef %0, i32 noundef %i.jz, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.kb = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.jv)
  switch i8 %i.kb, label %.thread [
    i8 1, label %bb.bs
    i8 2, label %bb.bu
  ]

bb.bs:                                            ; preds = %bb.br
  %i.kc = icmp ult i16 %i.ig, 8
  br i1 %i.kc, label %.thread, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.kd = load i32, ptr @hf_stun_att_ipv4, align 4
  %i.ke = add nuw nsw i32 %.1841947, 8            ; 2 uses
  %i.kf = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.kd, ptr noundef %0, i32 noundef %i.ke, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.kg = load ptr, ptr %i.ia, align 8
  %i.kh = call ptr @tvb_address_to_str(ptr noundef %i.kg, ptr noundef %0, i32 noundef 2, i32 noundef %i.ke)
  %i.ki = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.jz)
  %i.kj = zext i16 %i.ki to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.0825, ptr noundef nonnull @.str.281, ptr noundef %i.kh, i32 noundef %i.kj)
  br label %.thread

bb.bu:                                            ; preds = %bb.br
  %i.kk = icmp ult i16 %i.ig, 20
  br i1 %i.kk, label %.thread, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.kl = load i32, ptr @hf_stun_att_ipv6, align 4
  %i.km = add nuw nsw i32 %.1841947, 8
  %i.kn = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.kl, ptr noundef %0, i32 noundef %i.km, i32 noundef 16, i32 noundef 0) ; 0 uses
  br label %.thread

bb.bw:                                            ; preds = %bb.bn
  %i.ko = load i32, ptr @hf_stun_att_password, align 4
  %i.kp = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.ko, ptr noundef %0, i32 noundef %.pre-phi, i32 noundef %i.jo, i32 noundef 0) ; 0 uses
  br label %.thread

bb.bx:                                            ; preds = %bb.bn, %bb.bn, %bb.bn, %bb.bn, %bb.bn, %bb.bn
  %i.kq = icmp eq i16 %i.ig, 0
  br i1 %i.kq, label %.thread, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.kr = load i32, ptr @hf_stun_att_reserved, align 4
  %i.ks = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.kr, ptr noundef %0, i32 noundef %.pre-phi, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.kt = icmp eq i16 %i.ig, 1
  br i1 %i.kt, label %.thread, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ku = load i32, ptr @hf_stun_att_family, align 4
  %i.kv = add nuw nsw i32 %.1841947, 5            ; 2 uses
  %i.kw = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.ku, ptr noundef %0, i32 noundef %i.kv, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.kx = icmp ult i16 %i.ig, 4
  br i1 %i.kx, label %.thread, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ky = load i32, ptr @hf_stun_att_port, align 4
  %i.kz = add nuw nsw i32 %.1841947, 6            ; 2 uses
  %i.la = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.ky, ptr noundef %0, i32 noundef %i.kz, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.lb = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.kz)
  %i.lc = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.kv)
  switch i8 %i.lc, label %.thread [
    i8 1, label %bb.cb
    i8 2, label %bb.cc
  ]

bb.cb:                                            ; preds = %bb.ca
  %i.ld = icmp ult i16 %i.ig, 8
  br i1 %i.ld, label %.thread, label %bb.cd

bb.cc:                                            ; preds = %bb.ca
  %i.le = icmp ult i16 %i.ig, 20
  br i1 %i.le, label %.thread, label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.sink1018.a = phi i32 [ 2, %bb.cb ], [ 3, %bb.cc ]
  %hf_stun_att_ipv6.sink = phi ptr [ @hf_stun_att_ipv4, %bb.cb ], [ @hf_stun_att_ipv6, %bb.cc ]
  %.sink1017 = phi i32 [ 4, %bb.cb ], [ 16, %bb.cc ]
  %i.lf = load ptr, ptr %i.ia, align 8
  %i.lg = add nuw nsw i32 %.1841947, 8            ; 2 uses
  %i.lh = call ptr @tvb_address_to_str(ptr noundef %i.lf, ptr noundef %0, i32 noundef %.sink1018.a, i32 noundef %i.lg) ; 3 uses
  %i.li = load i32, ptr %hf_stun_att_ipv6.sink, align 4
  %i.lj = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.li, ptr noundef %0, i32 noundef %i.lg, i32 noundef %.sink1017, i32 noundef 0) ; 0 uses
  %.not886 = icmp eq ptr %i.lh, null
  br i1 %.not886, label %.thread, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.lk = zext i16 %i.lb to i32                   ; 2 uses
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.0825, ptr noundef nonnull @.str.282, ptr noundef nonnull %i.lh, i32 noundef %i.lk)
  %i.ll = load ptr, ptr %i.bv, align 8
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.ll, i32 noundef 25, ptr noundef nonnull @.str.283, ptr noundef %i.im, ptr noundef nonnull %i.lh, i32 noundef %i.lk)
  br label %.thread

bb.cf:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #5
  %i.lm = icmp ult i16 %i.ig, 4
  br i1 %i.lm, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.ln = load i32, ptr @hf_stun_att_change_ip, align 4
  %i.lo = call ptr @proto_tree_add_item_ret_boolean(ptr noundef %.0825, i32 noundef %i.ln, ptr noundef %0, i32 noundef %.pre-phi, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %i.e) ; 0 uses
  %i.lp = load i32, ptr @hf_stun_att_change_port, align 4
  %i.lq = call ptr @proto_tree_add_item_ret_boolean(ptr noundef %.0825, i32 noundef %i.lp, ptr noundef %0, i32 noundef %.pre-phi, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %i.f) ; 0 uses
  %i.lr = load i8, ptr %i.e, align 1, !range !8, !noundef !9
  %i.ls = trunc nuw i8 %i.lr to i1                ; 3 uses
  %i.lt = load i8, ptr %i.f, align 1, !range !8
  %i.lu = trunc nuw i8 %i.lt to i1                ; 2 uses
  %brmerge1026 = select i1 %i.ls, i1 true, i1 %i.lu
  br i1 %brmerge1026, label %.sink.split, label %bb.ch

.sink.split:                                      ; preds = %bb.cg
  %or.cond12 = select i1 %i.ls, i1 %i.lu, i1 false
  %.str.284.mux = select i1 %or.cond12, ptr @.str.284, ptr @.str.285
  %.str.284.mux.mux = select i1 %i.ls, ptr %.str.284.mux, ptr @.str.286
  %i.lv = load ptr, ptr %i.bv, align 8
  call void @col_append_str(ptr noundef %i.lv, i32 noundef 25, ptr noundef nonnull %.str.284.mux.mux)
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %.sink.split, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  br label %.thread

bb.ci:                                            ; preds = %bb.bn
  br i1 %i.hq, label %bb.cj, label %.thread929

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #5
  %i.lw = load i32, ptr @hf_stun_att_username, align 4
  %i.lx = load ptr, ptr %i.ia, align 8
  %i.ly = call ptr @proto_tree_add_item_ret_string(ptr noundef %.0825, i32 noundef %i.lw, ptr noundef %0, i32 noundef %.pre-phi, i32 noundef %i.jo, i32 noundef 2, ptr noundef %i.lx, ptr noundef nonnull %i.g) ; 0 uses
  %i.lz = load ptr, ptr %i.g, align 8
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.0825, ptr noundef nonnull @.str.287, ptr noundef %i.lz)
  %i.ma = load ptr, ptr %i.bv, align 8
  %i.mb = load ptr, ptr %i.g, align 8
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.ma, i32 noundef 25, ptr noundef nonnull @.str.288, ptr noundef %i.mb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #5
  br label %.thread

.thread929:                                       ; preds = %bb.ci
  %i.mc = load i32, ptr @hf_stun_att_username_opaque, align 4
  %i.md = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.mc, ptr noundef %0, i32 noundef %.pre-phi, i32 noundef %i.jo, i32 noundef 0) ; 0 uses
  br label %bb.ft

bb.ck:                                            ; preds = %bb.bn
  %i.me = icmp ult i16 %i.ig, 20
  br i1 %i.me, label %.thread, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.mf = load i32, ptr @hf_stun_att_hmac, align 4
  %i.mg = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.mf, ptr noundef %0, i32 noundef %.pre-phi, i32 noundef %i.jo, i32 noundef 0) ; 0 uses
  br label %.thread

bb.cm:                                            ; preds = %bb.bn
  %i.mh = icmp ult i16 %i.ig, 2
  br i1 %i.mh, label %.thread, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.mi = load i32, ptr @hf_stun_att_reserved, align 4
  %i.mj = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.mi, ptr noundef %0, i32 noundef %.pre-phi, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.mk = icmp eq i16 %i.ig, 2
  br i1 %i.mk, label %.thread, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.ml = load i32, ptr @hf_stun_att_error_class, align 4
  %i.mm = add nuw nsw i32 %.1841947, 6            ; 2 uses
  %i.mn = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.ml, ptr noundef %0, i32 noundef %i.mm, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.mo = icmp ult i16 %i.ig, 4
  br i1 %i.mo, label %.thread, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.mp = load i32, ptr @hf_stun_att_error_number, align 4
  %i.mq = add nuw nsw i32 %.1841947, 7            ; 2 uses
  %i.mr = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.mp, ptr noundef %0, i32 noundef %i.mq, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ms = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.mm)
  %i.mt = zext i8 %i.ms to i32
  %i.mu = mul nuw nsw i32 %i.mt, 100
  %i.mv = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.mq)
  %i.mw = zext i8 %i.mv to i32
  %i.mx = add nuw nsw i32 %i.mu, %i.mw            ; 3 uses
  %i.my = call ptr @val_to_str_ext_const(i32 noundef %i.mx, ptr noundef nonnull @error_code_ext, ptr noundef nonnull @.str.289) ; 2 uses
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.0825, ptr noundef nonnull @.str.290, i32 noundef %i.mx, ptr noundef %i.my)
  %i.mz = load ptr, ptr %i.bv, align 8
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.mz, i32 noundef 25, ptr noundef nonnull @.str.291, i32 noundef %i.mx, ptr noundef %i.my)
  %i.na = icmp eq i16 %i.ig, 4
  br i1 %i.na, label %.thread, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #5
  %i.nb = load i32, ptr @hf_stun_att_error_reason, align 4
  %i.nc = add nuw nsw i32 %.1841947, 8
  %i.nd = add nsw i32 %i.jo, -4
  %i.ne = load ptr, ptr %i.ia, align 8
  %i.nf = call ptr @proto_tree_add_item_ret_string(ptr noundef %.0825, i32 noundef %i.nb, ptr noundef %0, i32 noundef %i.nc, i32 noundef %i.nd, i32 noundef 2, ptr noundef %i.ne, ptr noundef nonnull %i.h) ; 0 uses
  %i.ng = load ptr, ptr %i.h, align 8
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.0825, ptr noundef nonnull @.str.287, ptr noundef %i.ng)
  %i.nh = load ptr, ptr %i.bv, align 8
  %i.ni = load ptr, ptr %i.h, align 8
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.nh, i32 noundef 25, ptr noundef nonnull @.str.292, ptr noundef %i.ni)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #5
  br label %.thread

.lr.ph946:                                        ; preds = %.preheader, %.lr.ph946
  %.0842945 = phi i32 [ %i.nm, %.lr.ph946 ], [ 0, %.preheader ] ; 2 uses
  %i.nj = load i32, ptr @hf_stun_att_unknown, align 4
  %i.nk = add nuw nsw i32 %.0842945, %.pre-phi
  %i.nl = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.nj, ptr noundef %0, i32 noundef %i.nk, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.nm = add nuw nsw i32 %.0842945, 2            ; 2 uses
  %i.nn = icmp samesign ult i32 %i.nm, %i.jo
  br i1 %i.nn, label %.lr.ph946, label %.thread, !llvm.loop !6

bb.cr:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #5
  %i.no = load i32, ptr @hf_stun_att_realm, align 4
  %i.np = load ptr, ptr %i.ia, align 8
  %i.nq = call ptr @proto_tree_add_item_ret_string(ptr noundef %.0825, i32 noundef %i.no, ptr noundef %0, i32 noundef %.pre-phi, i32 noundef %i.jo, i32 noundef 2, ptr noundef %i.np, ptr noundef nonnull %i.i) ; 0 uses
  %i.nr = load ptr, ptr %i.i, align 8
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.0825, ptr noundef nonnull @.str.287, ptr noundef %i.nr)
  %i.ns = load ptr, ptr %i.bv, align 8
  %i.nt = load ptr, ptr %i.i, align 8
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.ns, i32 noundef 25, ptr noundef nonnull @.str.293, ptr noundef %i.nt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #5
  br label %.thread

bb.cs:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #5
  %i.nu = load i32, ptr @hf_stun_att_nonce, align 4
  %i.nv = load ptr, ptr %i.ia, align 8
  %i.nw = call ptr @proto_tree_add_item_ret_string(ptr noundef %.0825, i32 noundef %i.nu, ptr noundef %0, i32 noundef %.pre-phi, i32 noundef %i.jo, i32 noundef 2, ptr noundef %i.nv, ptr noundef nonnull %i.j) ; 0 uses
  %i.nx = load ptr, ptr %i.j, align 8
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.0825, ptr noundef nonnull @.str.287, ptr noundef %i.nx)
  %i.ny = load ptr, ptr %i.bv, align 8
  call void @col_append_str(ptr noundef %i.ny, i32 noundef 25, ptr noundef nonnull @.str.294)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #5
  br label %.thread

bb.ct:                                            ; preds = %bb.bn, %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #5
  %.not883943 = icmp eq i16 %i.ig, 0
  br i1 %.not883943, label %.thread924, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ct
  %i.nz = add nuw nsw i32 %.pre-phi, %i.jo
  %i.oa = icmp eq i16 %.0844, 29
  br label %bb.cu

bb.cu:                                            ; preds = %.lr.ph, %bb.de
  %.0824944 = phi i32 [ %i.jo, %.lr.ph ], [ %i.oy, %bb.de ] ; 8 uses
  %i.ob = sub i32 %i.nz, %.0824944                ; 7 uses
  %i.oc = icmp ult i32 %.0824944, 4
  br i1 %i.oc, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.od = call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %.0825, ptr noundef %1, ptr noundef nonnull @ei_stun_short_packet, ptr noundef %0, i32 noundef %i.ob, i32 noundef %.0824944, ptr noundef nonnull @.str.295, i32 noundef %.0824944) ; 0 uses
  br label %.thread924

bb.cw:                                            ; preds = %bb.cu
  %i.oe = load i32, ptr @hf_stun_att_pw_alg, align 4
  %i.of = call ptr @proto_tree_add_item_ret_uint(ptr noundef %.0825, i32 noundef %i.oe, ptr noundef %0, i32 noundef %i.ob, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %i.k) ; 0 uses
  %i.og = load i32, ptr @hf_stun_att_pw_alg_param_len, align 4
  %i.oh = add i32 %i.ob, 2
  %i.oi = call ptr @proto_tree_add_item_ret_uint(ptr noundef %.0825, i32 noundef %i.og, ptr noundef %0, i32 noundef %i.oh, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %i.l) ; 0 uses
  %i.oj = load i32, ptr %i.l, align 4             ; 4 uses
  %.not884 = icmp eq i32 %i.oj, 0
  br i1 %.not884, label %bb.da, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.ok = add i32 %i.oj, 4
  %.not885 = icmp ult i32 %i.ok, %.0824944
  br i1 %.not885, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.ol = load i32, ptr @hf_stun_att_pw_alg_param_data, align 4
  %i.om = add i32 %i.ob, 4
  %i.on = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.ol, ptr noundef %0, i32 noundef %i.om, i32 noundef %i.oj, i32 noundef 0) ; 0 uses
  %.pre = load i32, ptr %i.l, align 4
  br label %bb.da

bb.cz:                                            ; preds = %bb.cx
  %i.oo = add i32 %.0824944, -4
  %i.op = call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %.0825, ptr noundef %1, ptr noundef nonnull @ei_stun_short_packet, ptr noundef %0, i32 noundef %i.ob, i32 noundef %.0824944, ptr noundef nonnull @.str.296, i32 noundef %i.oo, i32 noundef %i.oj) ; 0 uses
  br label %.thread924

bb.da:                                            ; preds = %bb.cy, %bb.cw
  %i.oq = phi i32 [ %.pre, %bb.cy ], [ 0, %bb.cw ] ; 4 uses
  %i.or = add i32 %i.oq, 3
  %i.os = and i32 %i.or, -4                       ; 3 uses
  %i.ot = icmp ult i32 %i.oq, %i.os
  br i1 %i.ot, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.ou = load i32, ptr @hf_stun_att_padding, align 4
  %i.ov = add i32 %i.oq, %i.ob
  %i.ow = sub nuw i32 %i.os, %i.oq                ; 2 uses
  %i.ox = call ptr @proto_tree_add_uint(ptr noundef %.0825, i32 noundef %i.ou, ptr noundef %0, i32 noundef %i.ov, i32 noundef %i.ow, i32 noundef %i.ow) ; 0 uses
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da
  %.neg933 = add i32 %.0824944, -4
  %i.oy = sub i32 %.neg933, %i.os                 ; 4 uses
  %i.oz = icmp ne i32 %i.oy, 0
  %or.cond14 = and i1 %i.oa, %i.oz
  br i1 %or.cond14, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.pa = call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %.0825, ptr noundef %1, ptr noundef nonnull @ei_stun_long_attribute, ptr noundef %0, i32 noundef %i.ob, i32 noundef %i.oy, ptr noundef nonnull @.str.297) ; 0 uses
  br label %bb.de

bb.de:                                            ; preds = %bb.dc, %bb.dd
  %.not883 = icmp eq i32 %i.oy, 0
  br i1 %.not883, label %.thread924, label %bb.cu

end_hunk_0
begin_hunk_1_@dissect_stun_message:bb.a
  %i.ts = add nuw nsw i32 %.1841947, 5
  %i.tt = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.tr, ptr noundef %0, i32 noundef %i.ts, i32 noundef 3, i32 noundef 0) ; 0 uses
  br label %.thread

bb.et:                                            ; preds = %bb.bn
  %i.tu = icmp ult i16 %i.ig, 4
  br i1 %i.tu, label %.thread, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.tv = load i32, ptr @hf_stun_att_channelnum, align 4
  %i.tw = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.tv, ptr noundef %0, i32 noundef %.pre-phi, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.tx = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %.pre-phi)
  %i.ty = zext i16 %i.tx to i32                   ; 2 uses
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.0825, ptr noundef nonnull @.str.299, i32 noundef %i.ty)
  %i.tz = load ptr, ptr %i.bv, align 8
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.tz, i32 noundef 25, ptr noundef nonnull @.str.300, i32 noundef %i.ty)
  %i.ua = load i32, ptr @hf_stun_att_reserved, align 4
  %i.ub = add nuw nsw i32 %.1841947, 6
  %i.uc = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.ua, ptr noundef %0, i32 noundef %i.ub, i32 noundef 2, i32 noundef 0) ; 0 uses
  br label %.thread

bb.ev:                                            ; preds = %bb.bn
  %i.ud = icmp ult i16 %i.ig, 4
  br i1 %i.ud, label %.thread, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.ue = load i32, ptr @hf_stun_att_magic_cookie, align 4
  %i.uf = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.ue, ptr noundef %0, i32 noundef %.pre-phi, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %.thread

bb.ex:                                            ; preds = %bb.bn
  %i.ug = icmp ult i16 %i.ig, 4
  br i1 %i.ug, label %.thread, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.uh = load i32, ptr @hf_stun_att_bandwidth, align 4
  %i.ui = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.uh, ptr noundef %0, i32 noundef %.pre-phi, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.uj = call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %.pre-phi)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.0825, ptr noundef nonnull @.str.301, i32 noundef %i.uj)
  %i.uk = load ptr, ptr %i.bv, align 8
  %i.ul = call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %.pre-phi)
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.uk, i32 noundef 25, ptr noundef nonnull @.str.302, i32 noundef %i.ul)
  br label %.thread

bb.ez:                                            ; preds = %bb.bn
  %i.um = icmp ult i16 %i.ig, 4
  br i1 %i.um, label %.thread, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.un = load i32, ptr @hf_stun_att_lifetime, align 4
  %i.uo = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.un, ptr noundef %0, i32 noundef %.pre-phi, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.up = call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %.pre-phi)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.0825, ptr noundef nonnull @.str.301, i32 noundef %i.up)
  %i.uq = load ptr, ptr %i.bv, align 8
  %i.ur = call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %.pre-phi)
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.uq, i32 noundef 25, ptr noundef nonnull @.str.303, i32 noundef %i.ur)
  br label %.thread

bb.fb:                                            ; preds = %bb.bn
  %i.us = load i32, ptr @hf_stun_att_ms_version, align 4
  %i.ut = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.us, ptr noundef %0, i32 noundef %.pre-phi, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.uu = load ptr, ptr %i.ia, align 8
  %i.uv = call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %.pre-phi)
  %i.uw = call ptr @val_to_str(ptr noundef %i.uu, i32 noundef %i.uv, ptr noundef nonnull @ms_version_vals, ptr noundef nonnull @.str.304)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.0825, ptr noundef nonnull @.str.287, ptr noundef %i.uw)
  br label %.thread

bb.fc:                                            ; preds = %bb.bn
  %i.ux = load i32, ptr @hf_stun_att_ms_version_ice, align 4
  %i.uy = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.ux, ptr noundef %0, i32 noundef %.pre-phi, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.uz = load ptr, ptr %i.ia, align 8
  %i.va = call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %.pre-phi)
  %i.vb = call ptr @rval_to_str_wmem(ptr noundef %i.uz, i32 noundef %i.va, ptr noundef nonnull @ms_version_ice_rvals, ptr noundef nonnull @.str.304)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.0825, ptr noundef nonnull @.str.287, ptr noundef %i.vb)
  br label %.thread

bb.fd:                                            ; preds = %bb.bn
  %i.vc = load i32, ptr @hf_stun_att_ms_connection_id, align 4
  %i.vd = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.vc, ptr noundef %0, i32 noundef %.pre-phi, i32 noundef 20, i32 noundef 0) ; 0 uses
  %i.ve = load i32, ptr @hf_stun_att_ms_sequence_number, align 4
  %i.vf = add nuw nsw i32 %.1841947, 24
  %i.vg = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.ve, ptr noundef %0, i32 noundef %i.vf, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %.thread

bb.fe:                                            ; preds = %bb.bn
  %i.vh = load i32, ptr @hf_stun_att_ms_stream_type, align 4
  %i.vi = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.vh, ptr noundef %0, i32 noundef %.pre-phi, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.vj = load i32, ptr @hf_stun_att_ms_service_quality, align 4
  %i.vk = add nuw nsw i32 %.1841947, 6
  %i.vl = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.vj, ptr noundef %0, i32 noundef %i.vk, i32 noundef 2, i32 noundef 0) ; 0 uses
  br label %.thread

bb.ff:                                            ; preds = %bb.bn
  %i.vm = load i32, ptr @hf_stun_att_reserved, align 4
  %i.vn = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.vm, ptr noundef %0, i32 noundef %.pre-phi, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.vo = load i32, ptr @hf_stun_att_bandwidth_acm_type, align 4
  %i.vp = add nuw nsw i32 %.1841947, 6
  %i.vq = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.vo, ptr noundef %0, i32 noundef %i.vp, i32 noundef 2, i32 noundef 0) ; 0 uses
  br label %.thread

bb.fg:                                            ; preds = %bb.bn
  %i.vr = load i32, ptr @hf_stun_att_bandwidth_rsv_id, align 4
  %i.vs = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.vr, ptr noundef %0, i32 noundef %.pre-phi, i32 noundef 16, i32 noundef 0) ; 0 uses
  br label %.thread

bb.fh:                                            ; preds = %bb.bn
  %i.vt = load i32, ptr @hf_stun_att_bandwidth_rsv_amount_masb, align 4
  %i.vu = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.vt, ptr noundef %0, i32 noundef %.pre-phi, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.vv = load i32, ptr @hf_stun_att_bandwidth_rsv_amount_misb, align 4
  %i.vw = add nuw nsw i32 %.1841947, 8
  %i.vx = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.vv, ptr noundef %0, i32 noundef %i.vw, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.vy = load i32, ptr @hf_stun_att_bandwidth_rsv_amount_marb, align 4
  %i.vz = add nuw nsw i32 %.1841947, 12
  %i.wa = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.vy, ptr noundef %0, i32 noundef %i.vz, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.wb = load i32, ptr @hf_stun_att_bandwidth_rsv_amount_mirb, align 4
  %i.wc = add nuw nsw i32 %.1841947, 16
  %i.wd = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.wb, ptr noundef %0, i32 noundef %i.wc, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %.thread

bb.fi:                                            ; preds = %bb.bn, %bb.bn
  %i.we = load i32, ptr @hf_stun_att_address_rp_a, align 4
  %i.wf = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.we, ptr noundef %0, i32 noundef %.pre-phi, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.wg = load i32, ptr @hf_stun_att_address_rp_b, align 4
  %i.wh = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.wg, ptr noundef %0, i32 noundef %.pre-phi, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.wi = load i32, ptr @hf_stun_att_address_rp_rsv1, align 4
  %i.wj = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.wi, ptr noundef %0, i32 noundef %.pre-phi, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.wk = load i32, ptr @hf_stun_att_address_rp_masb, align 4
  %i.wl = add nuw nsw i32 %.1841947, 8
  %i.wm = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.wk, ptr noundef %0, i32 noundef %i.wl, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.wn = load i32, ptr @hf_stun_att_address_rp_marb, align 4
  %i.wo = add nuw nsw i32 %.1841947, 12
  %i.wp = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.wn, ptr noundef %0, i32 noundef %i.wo, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %.thread

bb.fj:                                            ; preds = %bb.bn, %bb.bn
  %i.wq = load i32, ptr @hf_stun_att_address_rp_a, align 4
  %i.wr = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.wq, ptr noundef %0, i32 noundef %.pre-phi, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ws = load i32, ptr @hf_stun_att_address_rp_rsv2, align 4
  %i.wt = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.ws, ptr noundef %0, i32 noundef %.pre-phi, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.wu = load i32, ptr @hf_stun_att_address_rp_masb, align 4
  %i.wv = add nuw nsw i32 %.1841947, 8
  %i.ww = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.wu, ptr noundef %0, i32 noundef %i.wv, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.wx = load i32, ptr @hf_stun_att_address_rp_marb, align 4
  %i.wy = add nuw nsw i32 %.1841947, 12
  %i.wz = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.wx, ptr noundef %0, i32 noundef %i.wy, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %.thread

bb.fk:                                            ; preds = %bb.bn
  %i.xa = load i32, ptr @hf_stun_att_sip_dialog_id, align 4
  %i.xb = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.xa, ptr noundef %0, i32 noundef %.pre-phi, i32 noundef %i.jo, i32 noundef 0) ; 0 uses
  br label %.thread

bb.fl:                                            ; preds = %bb.bn
  %i.xc = load i32, ptr @hf_stun_att_sip_call_id, align 4
  %i.xd = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.xc, ptr noundef %0, i32 noundef %.pre-phi, i32 noundef %i.jo, i32 noundef 0) ; 0 uses
  br label %.thread

bb.fm:                                            ; preds = %bb.bn
  %i.xe = load i32, ptr @hf_stun_att_lp_peer_location, align 4
  %i.xf = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.xe, ptr noundef %0, i32 noundef %.pre-phi, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.xg = load i32, ptr @hf_stun_att_lp_self_location, align 4
  %i.xh = add nuw nsw i32 %.1841947, 5
  %i.xi = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.xg, ptr noundef %0, i32 noundef %i.xh, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.xj = load i32, ptr @hf_stun_att_lp_federation, align 4
  %i.xk = add nuw nsw i32 %.1841947, 6
  %i.xl = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.xj, ptr noundef %0, i32 noundef %i.xk, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.xm = load i32, ptr @hf_stun_att_reserved, align 4
  %i.xn = add nuw nsw i32 %.1841947, 7
  %i.xo = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.xm, ptr noundef %0, i32 noundef %i.xn, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %.thread

bb.fn:                                            ; preds = %bb.bn
  %i.xp = load i32, ptr @hf_stun_att_ms_foundation, align 4
  %i.xq = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.xp, ptr noundef %0, i32 noundef %.pre-phi, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %.thread

bb.fo:                                            ; preds = %bb.bn
  %i.xr = load i32, ptr @hf_stun_att_ms_multiplexed_turn_session_id, align 4
  %i.xs = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.xr, ptr noundef %0, i32 noundef %.pre-phi, i32 noundef 8, i32 noundef 0) ; 0 uses
  br label %.thread

bb.fp:                                            ; preds = %bb.bn
  %i.xt = load i32, ptr @hf_stun_att_google_network_id, align 4
  %i.xu = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.xt, ptr noundef %0, i32 noundef %.pre-phi, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.xv = load i32, ptr @hf_stun_att_google_network_cost, align 4
  %i.xw = add nuw nsw i32 %.1841947, 6
  %i.xx = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.xv, ptr noundef %0, i32 noundef %i.xw, i32 noundef 2, i32 noundef 0) ; 0 uses
  br label %.thread

bb.fq:                                            ; preds = %bb.bn
  %.not887 = icmp eq i16 %i.ig, 0
  br i1 %.not887, label %.thread, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.xy = load i32, ptr @hf_stun_att_value, align 4
  %i.xz = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.xy, ptr noundef %0, i32 noundef %.pre-phi, i32 noundef %i.jo, i32 noundef 0) ; 0 uses
  br label %.thread

.thread:                                          ; preds = %.lr.ph946, %.preheader, %bb.cc, %bb.cb, %bb.ca, %.thread927, %bb.en, %bb.ep, %bb.eo, %bb.bx, %bb.by, %bb.bz, %bb.ce, %bb.cd, %bb.fq, %bb.fr, %bb.ez, %bb.ex, %bb.ev, %bb.et, %bb.er, %bb.eq, %bb.el, %bb.ej, %bb.eh, %bb.ed, %bb.ea, %bb.dy, %bb.dw, %bb.du, %bb.dt, %bb.ds, %.thread1003, %proto_item_set_generated.exit914, %bb.di, %bb.dh, %bb.dg, %bb.cp, %bb.co, %bb.cn, %bb.cm, %bb.ck, %bb.cj, %bb.br, %bb.bt, %bb.bv, %bb.bs, %bb.bu, %bb.bq, %bb.bp, %bb.bo, %bb.fp, %bb.fo, %bb.fn, %bb.fm, %bb.fl, %bb.fk, %bb.fj, %bb.fi, %bb.fh, %bb.fg, %bb.ff, %bb.fe, %bb.fd, %bb.fc, %bb.fb, %bb.fa, %bb.ey, %bb.ew, %bb.eu, %bb.es, %bb.em, %bb.ek, %bb.ei, %bb.eg, %bb.ef, %bb.ee, %bb.ec, %bb.eb, %bb.dz, %bb.dx, %bb.dv, %.thread924, %bb.cs, %bb.cr, %bb.cq, %bb.cl, %bb.ch, %bb.bw
  %.2 = phi i1 [ %.0831948, %bb.fr ], [ %.0831948, %bb.fq ], [ %.0831948, %bb.bo ], [ %.0831948, %bb.bp ], [ %.0831948, %bb.bq ], [ %.0831948, %bb.br ], [ %.0831948, %bb.bs ], [ %.0831948, %bb.bt ], [ %.0831948, %bb.bu ], [ %.0831948, %bb.bv ], [ %.0831948, %bb.bw ], [ %.0831948, %bb.fp ], [ %.0831948, %bb.ch ], [ %.0831948, %bb.cj ], [ %.1832, %.thread927 ], [ %.0831948, %bb.ck ], [ %.0831948, %bb.cl ], [ %.0831948, %bb.cm ], [ %.0831948, %bb.cn ], [ %.0831948, %bb.co ], [ %.0831948, %bb.cp ], [ %.0831948, %bb.cq ], [ %.0831948, %bb.cc ], [ %.0831948, %bb.cr ], [ %.0831948, %bb.cs ], [ %.0831948, %.thread924 ], [ %.1832, %bb.dg ], [ %.1832, %bb.dh ], [ %.1832, %bb.di ], [ %.1832, %proto_item_set_generated.exit914 ], [ %.1832, %.thread1003 ], [ %.1832, %bb.ds ], [ %.0831948, %bb.dt ], [ %.0831948, %bb.du ], [ %.0831948, %bb.dv ], [ %.0831948, %bb.dw ], [ true, %bb.dx ], [ %.0831948, %bb.dy ], [ true, %bb.dz ], [ %.0831948, %bb.ea ], [ %.0831948, %bb.eb ], [ %.0831948, %bb.ec ], [ %.0831948, %bb.ed ], [ %.0831948, %bb.ee ], [ %.0831948, %bb.ef ], [ %.0831948, %bb.eg ], [ %.0831948, %bb.eh ], [ %.0831948, %bb.ei ], [ %.0831948, %bb.ej ], [ %.0831948, %bb.ek ], [ %.0831948, %bb.el ], [ %.0831948, %bb.em ], [ %.0831948, %bb.bx ], [ %.0831948, %bb.eq ], [ %.0831948, %bb.er ], [ true, %bb.es ], [ %.0831948, %bb.et ], [ true, %bb.eu ], [ %.0831948, %bb.ev ], [ %.0831948, %bb.ew ], [ %.0831948, %bb.ex ], [ true, %bb.ey ], [ %.0831948, %bb.ez ], [ true, %bb.fa ], [ %.0831948, %bb.fb ], [ %.0831948, %bb.fc ], [ %.0831948, %bb.fd ], [ %.0831948, %bb.fe ], [ %.0831948, %bb.ff ], [ %.0831948, %bb.fg ], [ %.0831948, %bb.fh ], [ %.0831948, %bb.fi ], [ %.0831948, %bb.fj ], [ %.0831948, %bb.fk ], [ %.0831948, %bb.fl ], [ %.0831948, %bb.fm ], [ %.0831948, %bb.fn ], [ true, %bb.fo ], [ %.0831948, %bb.cd ], [ %.0831948, %bb.ce ], [ %.0831948, %bb.bz ], [ %.0831948, %bb.by ], [ true, %bb.eo ], [ true, %bb.ep ], [ true, %bb.en ], [ %.0831948, %bb.ca ], [ %.0831948, %bb.cb ], [ %.0831948, %.preheader ], [ %.0831948, %.lr.ph946 ] ; 2 uses
  %i.ya = icmp ult i16 %i.ig, %.0843
  %or.cond894 = select i1 %i.hq, i1 %i.ya, i1 false
  br i1 %or.cond894, label %bb.fs, label %bb.ft

bb.fs:                                            ; preds = %.thread
  %i.yb = load i32, ptr @hf_stun_att_padding, align 4
  %i.yc = add nuw nsw i32 %.pre-phi, %i.jo
  %narrow = sub nuw i16 %i.ii, %i.ig
  %i.yd = zext i16 %narrow to i32                 ; 2 uses
  %i.ye = call ptr @proto_tree_add_uint(ptr noundef %.0825, i32 noundef %i.yb, ptr noundef %0, i32 noundef %i.yc, i32 noundef %i.yd, i32 noundef %i.yd) ; 0 uses
  br label %bb.ft

bb.ft:                                            ; preds = %.thread929, %bb.fs, %.thread
  %.2932 = phi i1 [ %.0831948, %.thread929 ], [ %.2, %bb.fs ], [ %.2, %.thread ] ; 2 uses
  %i.yf = zext i16 %.0843 to i32
  %i.yg = add nuw nsw i32 %.pre-phi, %i.yf        ; 2 uses
  %i.yh = icmp ult i32 %i.yg, %i.bs
  br i1 %i.yh, label %bb.bj, label %.loopexit, !llvm.loop !7

.loopexit:                                        ; preds = %bb.ft, %bb.bi, %bb.bl
  %.0831939 = phi i1 [ %.0831948, %bb.bl ], [ false, %bb.bi ], [ %.2932, %bb.ft ]
  %i.yi = or i1 %.0833, %.0831939
  br label %bb.fu

bb.fu:                                            ; preds = %.loopexit, %bb.bb
  %.3 = phi i1 [ %i.yi, %.loopexit ], [ %.0833, %bb.bb ]
  %i.yj = load ptr, ptr %i.cr, align 8
  %i.yk = getelementptr i8, ptr %i.yj, i64 53
  %i.yl = load i16, ptr %i.yk, align 1
  %i.ym = and i16 %i.yl, 8
  %i.yn = icmp eq i16 %i.ym, 0
  %or.cond16 = and i1 %.3, %i.yn
  br i1 %or.cond16, label %bb.fv, label %bb.fx

bb.fv:                                            ; preds = %bb.fu
  %i.yo = getelementptr i8, ptr %1, i64 284
  %i.yp = load i32, ptr %i.yo, align 4
  %i.yq = icmp eq i32 %i.yp, 2
  %i.yr = icmp eq i16 %.0826, 11
  %or.cond19 = select i1 %i.yq, i1 %i.yr, i1 false
  %i.ys = icmp eq i16 %.0828, 2
  %or.cond22 = and i1 %i.ys, %or.cond19
  br i1 %or.cond22, label %bb.fw, label %bb.fx

bb.fw:                                            ; preds = %bb.fv
  %i.yt = getelementptr i8, ptr %1, i64 20
  %i.yu = load i32, ptr %i.yt, align 4
  %i.yv = add i32 %i.yu, 1
  %i.yw = load ptr, ptr @data_handle, align 8
  call void @conversation_set_dissector_from_frame_number(ptr noundef %i.cj, i32 noundef %i.yv, ptr noundef %i.yw)
  br label %bb.fx

bb.fx:                                            ; preds = %bb.fu, %bb.fv, %bb.fw, %bb.q, %bb.p, %bb.o, %bb.n, %bb.i, %bb.h, %bb.e, %bb.a, %dissect_stun_message_channel_data.exit
  %.0 = phi i32 [ 0, %bb.q ], [ 0, %bb.a ], [ 0, %bb.e ], [ %i.bb, %dissect_stun_message_channel_data.exit ], [ 0, %bb.h ], [ 0, %bb.i ], [ 0, %bb.n ], [ 0, %bb.o ], [ 0, %bb.p ], [ %i.o, %bb.fw ], [ %i.o, %bb.fv ], [ %i.o, %bb.fu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid
declare void @col_set_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @find_or_create_conversation_strat(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @conversation_get_proto_data(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(1)
declare noalias ptr @wmem_alloc(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_file_scope() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_tree_new(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @conversation_add_proto_data(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_tree_lookup32_array(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: null_pointer_is_valid
declare void @wmem_tree_insert32_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @val_to_str_const(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_add_lstr(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_item_add_subtree(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @nstime_delta(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_time(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint_format_value(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @proto_item_append_text(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_expert(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @try_val_to_str_ext(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint_format(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_expert_format(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i8 @tvb_get_uint8(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_address_to_str(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_append_fstr(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item_ret_boolean(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_append_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item_ret_string(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @val_to_str_ext_const(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item_ret_uint(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_get_ipv4(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_ipv4(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @tvb_get_ipv6(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_ipv6(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @address_to_str(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_checksum(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @crc32_ccitt_tvb_offset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_subset_length(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @dissector_try_heuristic(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @call_dissector_only(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @val_to_str(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @rval_to_str_wmem(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @conversation_set_dissector_from_frame_number(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @_try_val_to_str_ext_init(i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare i32 @udp_dissect_pdus(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
end_hunk_1
