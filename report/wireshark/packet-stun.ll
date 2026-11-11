Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-stun?download=true
inline.NumInlined: 17
inline.NumDeleted: 4
begin_hunk_0_@dissect_stun_message:bb.a
bb.ao:                                            ; preds = %bb.an
  %i.ex = getelementptr i8, ptr %i.ew, i64 40
  %i.ey = load ptr, ptr %i.ex, align 8            ; 2 uses
  %.not5.i898 = icmp eq ptr %i.ey, null
  br i1 %.not5.i898, label %proto_item_set_generated.exit899, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ez = getelementptr i8, ptr %i.ey, i64 28     ; 2 uses
  %i.fa = load i32, ptr %i.ez, align 4
  %i.fb = or i32 %i.fa, 2
  store i32 %i.fb, ptr %i.ez, align 4
  br label %proto_item_set_generated.exit899

bb.aq:                                            ; preds = %bb.ai
  %i.fc = getelementptr i8, ptr %.2837, i64 4
  %i.fd = load i32, ptr %i.fc, align 4            ; 2 uses
  %i.fe = getelementptr i8, ptr %1, i64 20
  %i.ff = load i32, ptr %i.fe, align 4
  %.not873 = icmp eq i32 %i.fd, %i.ff
  br i1 %.not873, label %proto_item_set_generated.exit902, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fg = load i32, ptr @hf_stun_duplicate, align 4
  %i.fh = call ptr @proto_tree_add_uint(ptr noundef %i.eh, i32 noundef %i.fg, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.fd) ; 2 uses
  %.not.i900 = icmp eq ptr %i.fh, null
  br i1 %.not.i900, label %proto_item_set_generated.exit902, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fi = getelementptr i8, ptr %i.fh, i64 40
  %i.fj = load ptr, ptr %i.fi, align 8            ; 2 uses
  %.not5.i901 = icmp eq ptr %i.fj, null
  br i1 %.not5.i901, label %proto_item_set_generated.exit902, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fk = getelementptr i8, ptr %i.fj, i64 28     ; 2 uses
  %i.fl = load i32, ptr %i.fk, align 4
  %i.fm = or i32 %i.fl, 2
  store i32 %i.fm, ptr %i.fk, align 4
  br label %proto_item_set_generated.exit902

proto_item_set_generated.exit902:                 ; preds = %bb.at, %bb.as, %bb.ar, %bb.aq
  %.not1006 = icmp eq i16 %.0828, 1
  br i1 %.not1006, label %proto_item_set_generated.exit899, label %bb.au

bb.au:                                            ; preds = %proto_item_set_generated.exit902
  %i.fn = load i32, ptr %.2837, align 8
  %.not874 = icmp eq i32 %i.fn, 0
  br i1 %.not874, label %proto_item_set_generated.exit899, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #5
  %i.fo = load i32, ptr @hf_stun_response_to, align 4
  %i.fp = load i32, ptr %.2837, align 8
  %i.fq = call ptr @proto_tree_add_uint(ptr noundef %i.eh, i32 noundef %i.fo, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.fp) ; 2 uses
  %.not.i903 = icmp eq ptr %i.fq, null
  br i1 %.not.i903, label %proto_item_set_generated.exit905, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fr = getelementptr i8, ptr %i.fq, i64 40
  %i.fs = load ptr, ptr %i.fr, align 8            ; 2 uses
  %.not5.i904 = icmp eq ptr %i.fs, null
  br i1 %.not5.i904, label %proto_item_set_generated.exit905, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ft = getelementptr i8, ptr %i.fs, i64 28     ; 2 uses
  %i.fu = load i32, ptr %i.ft, align 4
  %i.fv = or i32 %i.fu, 2
  store i32 %i.fv, ptr %i.ft, align 4
  br label %proto_item_set_generated.exit905

proto_item_set_generated.exit905:                 ; preds = %bb.av, %bb.aw, %bb.ax
  %i.fw = getelementptr i8, ptr %1, i64 24
  %i.fx = getelementptr i8, ptr %.2837, i64 8
  call void @nstime_delta(ptr noundef nonnull %6, ptr noundef %i.fw, ptr noundef %i.fx)
  %i.fy = load i32, ptr @hf_stun_time, align 4
  %i.fz = call ptr @proto_tree_add_time(ptr noundef %i.eh, i32 noundef %i.fy, ptr noundef %0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %6) ; 2 uses
  %.not.i906 = icmp eq ptr %i.fz, null
  br i1 %.not.i906, label %proto_item_set_generated.exit908, label %bb.ay

bb.ay:                                            ; preds = %proto_item_set_generated.exit905
  %i.ga = getelementptr i8, ptr %i.fz, i64 40
  %i.gb = load ptr, ptr %i.ga, align 8            ; 2 uses
  %.not5.i907 = icmp eq ptr %i.gb, null
  br i1 %.not5.i907, label %proto_item_set_generated.exit908, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gc = getelementptr i8, ptr %i.gb, i64 28     ; 2 uses
  %i.gd = load i32, ptr %i.gc, align 4
  %i.ge = or i32 %i.gd, 2
  store i32 %i.ge, ptr %i.gc, align 4
  br label %proto_item_set_generated.exit908

proto_item_set_generated.exit908:                 ; preds = %proto_item_set_generated.exit905, %bb.ay, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #5
  br label %proto_item_set_generated.exit899

proto_item_set_generated.exit899:                 ; preds = %bb.ap, %bb.ao, %bb.an, %proto_item_set_generated.exit902, %proto_item_set_generated.exit908, %bb.au, %proto_item_set_generated.exit
  br i1 %.not877, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %proto_item_set_generated.exit899
  %i.gf = load i32, ptr @hf_stun_tcp_frame_length, align 4
  %i.gg = call ptr @proto_tree_add_item(ptr noundef %i.eh, i32 noundef %i.gf, ptr noundef %0, i32 noundef 0, i32 noundef 2, i32 noundef 0) ; 0 uses
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %proto_item_set_generated.exit899
  %.0840 = phi i32 [ 2, %bb.ba ], [ 0, %proto_item_set_generated.exit899 ] ; 9 uses
  %i.gh = load i32, ptr @hf_stun_type, align 4
  %i.gi = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.eh, i32 noundef %i.gh, ptr noundef %0, i32 noundef %.0840, i32 noundef 2, i32 noundef %i.w, ptr noundef @.str.274, i32 noundef %i.w, ptr noundef %i.ec, ptr noundef %i.ea)
  %i.gj = load i32, ptr @ett_stun_type, align 4
  %i.gk = call ptr @proto_item_add_subtree(ptr noundef %i.gi, i32 noundef %i.gj) ; 3 uses
  %i.gl = load i32, ptr @hf_stun_type_class, align 4
  %i.gm = call ptr @proto_tree_add_uint(ptr noundef %i.gk, i32 noundef %i.gl, ptr noundef %0, i32 noundef %.0840, i32 noundef 2, i32 noundef %i.w)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.gm, ptr noundef @.str.275, ptr noundef %i.ea, i32 noundef %i.dz)
  %i.gn = load i32, ptr @hf_stun_type_method, align 4
  %i.go = call ptr @proto_tree_add_uint(ptr noundef %i.gk, i32 noundef %i.gn, ptr noundef %0, i32 noundef %.0840, i32 noundef 2, i32 noundef %i.w)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.go, ptr noundef @.str.276, ptr noundef %i.ec, i32 noundef %i.eb)
  %i.gp = load i32, ptr @hf_stun_type_method_assignment, align 4
  %i.gq = call ptr @proto_tree_add_uint(ptr noundef %i.gk, i32 noundef %i.gp, ptr noundef %0, i32 noundef %.0840, i32 noundef 2, i32 noundef %i.w) ; 0 uses
  %i.gr = add nuw nsw i32 %.0840, 2               ; 2 uses
  %i.gs = load i32, ptr @hf_stun_length, align 4
  %i.gt = call ptr @proto_tree_add_item(ptr noundef %i.eh, i32 noundef %i.gs, ptr noundef %0, i32 noundef %i.gr, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.gu = or disjoint i32 %.0840, 4
  %i.gv = load i32, ptr @hf_stun_cookie, align 4
  %i.gw = call ptr @proto_tree_add_item(ptr noundef %i.eh, i32 noundef %i.gv, ptr noundef %0, i32 noundef %i.gu, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.gx = or disjoint i32 %.0840, 8
  %i.gy = load i32, ptr @hf_stun_id, align 4
  %i.gz = call ptr @proto_tree_add_item(ptr noundef %i.eh, i32 noundef %i.gy, ptr noundef %0, i32 noundef %i.gx, i32 noundef 12, i32 noundef 0) ; 0 uses
  %i.ha = or disjoint i32 %.0840, 20              ; 4 uses
  %i.hb = call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %i.bo) ; 3 uses
  %.not879 = icmp eq i16 %i.u, 0
  br i1 %.not879, label %bb.fu, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.hc = load i32, ptr @stun_network_version, align 4 ; 2 uses
  %.not878 = icmp eq i32 %i.hc, 0                 ; 2 uses
  %i.hd = select i1 %.not878, i32 3, i32 %i.hc
  %i.he = icmp samesign ult i32 %.0840, %i.v      ; 2 uses
  %or.cond = select i1 %.not878, i1 %i.he, i1 false
  br i1 %or.cond, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.hf = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.ha)
  %i.hg = icmp eq i16 %i.hf, 15
  %spec.select892 = select i1 %i.hg, i32 1, i32 3
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.0830 = phi i32 [ %i.hd, %bb.bc ], [ %spec.select892, %bb.bd ] ; 3 uses
  %i.hh = load i32, ptr @hf_stun_network_version, align 4
  %i.hi = call ptr @proto_tree_add_uint(ptr noundef %i.eh, i32 noundef %i.hh, ptr noundef %0, i32 noundef %i.ha, i32 noundef 0, i32 noundef %.0830) ; 2 uses
  %.not.i909 = icmp eq ptr %i.hi, null
  br i1 %.not.i909, label %proto_item_set_generated.exit911, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.hj = getelementptr i8, ptr %i.hi, i64 40
  %i.hk = load ptr, ptr %i.hj, align 8            ; 2 uses
  %.not5.i910 = icmp eq ptr %i.hk, null
  br i1 %.not5.i910, label %proto_item_set_generated.exit911, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.hl = getelementptr i8, ptr %i.hk, i64 28     ; 2 uses
  %i.hm = load i32, ptr %i.hl, align 4
  %i.hn = or i32 %i.hm, 2
  store i32 %i.hn, ptr %i.hl, align 4
  br label %proto_item_set_generated.exit911

proto_item_set_generated.exit911:                 ; preds = %bb.be, %bb.bf, %bb.bg
  %i.ho = icmp sgt i32 %.0830, 2                  ; 4 uses
  %i.hp = and i32 %i.v, 3
  %i.hq = icmp ne i32 %i.hp, 0
  %i.hr = select i1 %i.ho, i1 %i.hq, i1 false
  br i1 %i.hr, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %proto_item_set_generated.exit911
  %i.hs = call ptr @proto_tree_add_expert(ptr noundef %i.eh, ptr noundef %1, ptr noundef @ei_stun_wrong_msglen, ptr noundef %0, i32 noundef %i.gr, i32 noundef 2)
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %proto_item_set_generated.exit911
  %.0819 = phi ptr [ %i.hs, %bb.bh ], [ %i.eh, %proto_item_set_generated.exit911 ]
  %i.ht = load i32, ptr @hf_stun_attributes, align 4
  %i.hu = call ptr @proto_tree_add_item(ptr noundef %.0819, i32 noundef %i.ht, ptr noundef %0, i32 noundef %i.ha, i32 noundef %i.v, i32 noundef 0)
  %i.hv = load i32, ptr @ett_stun_att_all, align 4
  %i.hw = call ptr @proto_item_add_subtree(ptr noundef %i.hu, i32 noundef %i.hv) ; 2 uses
  br i1 %i.he, label %.lr.ph949, label %.loopexit

.lr.ph949:                                        ; preds = %bb.bi
  %i.hx = icmp slt i32 %.0830, 2
  %i.hy = getelementptr i8, ptr %1, i64 416       ; 10 uses
  %i.hz = lshr i32 %i.hb, 16
  %i.ia = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ib = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.bj

bb.bj:                                            ; preds = %.lr.ph949, %bb.ft
  %.0831948 = phi i1 [ false, %.lr.ph949 ], [ %.2932, %bb.ft ] ; 82 uses
  %.1841947 = phi i32 [ %i.ha, %.lr.ph949 ], [ %i.ye, %bb.ft ] ; 43 uses
  %i.ic = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %.1841947) ; 4 uses
  %i.id = add nuw nsw i32 %.1841947, 2            ; 3 uses
  %i.ie = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.id) ; 45 uses
  %i.if = add i16 %i.ie, 3
  %i.ig = and i16 %i.if, -4                       ; 2 uses
  %.0843 = select i1 %i.ho, i16 %i.ig, i16 %i.ie  ; 4 uses
  %i.ih = and i16 %i.ic, -2
  %or.cond10 = icmp eq i16 %i.ih, 20
  %or.cond893 = select i1 %i.hx, i1 %or.cond10, i1 false
  %i.ii = zext i1 %or.cond893 to i16
  %.0844 = xor i16 %i.ic, %i.ii                   ; 3 uses
  %i.ij = zext i16 %.0844 to i32                  ; 3 uses
  %i.ik = call ptr @try_val_to_str_ext(i32 noundef %i.ij, ptr noundef @attributes_ext) ; 5 uses
  %.not880 = icmp eq ptr %i.ik, null
  br i1 %.not880, label %bb.bm, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.il = load i32, ptr @hf_stun_attr, align 4
  %i.im = zext i16 %.0843 to i32                  ; 4 uses
  %i.in = add nuw nsw i32 %i.im, 4
  %i.io = zext i16 %i.ic to i32                   ; 4 uses
  %i.ip = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.hw, i32 noundef %i.il, ptr noundef %0, i32 noundef %.1841947, i32 noundef %i.in, i32 noundef %i.io, ptr noundef @.str.277, ptr noundef nonnull %i.ik)
  %i.iq = load i32, ptr @ett_stun_att, align 4
  %i.ir = call ptr @proto_item_add_subtree(ptr noundef %i.ip, i32 noundef %i.iq) ; 3 uses
  %i.is = load i32, ptr @hf_stun_att_type, align 4
  %i.it = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.ir, i32 noundef %i.is, ptr noundef %0, i32 noundef %.1841947, i32 noundef 2, i32 noundef %i.io, ptr noundef @.str.277, ptr noundef nonnull %i.ik)
  %i.iu = load i32, ptr @ett_stun_att_type, align 4
  %i.iv = call ptr @proto_item_add_subtree(ptr noundef %i.it, i32 noundef %i.iu) ; 2 uses
  %i.iw = load i32, ptr @hf_stun_att_type_comprehension, align 4
  %i.ix = call ptr @proto_tree_add_uint(ptr noundef %i.iv, i32 noundef %i.iw, ptr noundef %0, i32 noundef %.1841947, i32 noundef 2, i32 noundef %i.io) ; 0 uses
  %i.iy = load i32, ptr @hf_stun_att_type_assignment, align 4
  %i.iz = call ptr @proto_tree_add_uint(ptr noundef %i.iv, i32 noundef %i.iy, ptr noundef %0, i32 noundef %.1841947, i32 noundef 2, i32 noundef %i.io) ; 0 uses
  %i.ja = add nuw nsw i32 %.1841947, 4            ; 2 uses
  %i.jb = add nuw nsw i32 %i.ja, %i.im
  %i.jc = icmp ugt i32 %i.jb, %i.br
  br i1 %i.jc, label %bb.bl, label %bb.bn

bb.bl:                                            ; preds = %bb.bk
  %i.jd = load i32, ptr @hf_stun_att_length, align 4
  %i.je = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.ir, i32 noundef %i.jd, ptr noundef %0, i32 noundef %i.id, i32 noundef 2, i32 noundef %i.im, ptr noundef @.str.278, i32 noundef %i.im) ; 0 uses
  br label %.loopexit

bb.bm:                                            ; preds = %bb.bj
  %i.jf = zext i16 %.0843 to i32
  %i.jg = add nuw nsw i32 %i.jf, 4
  %i.jh = call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %i.hw, ptr noundef %1, ptr noundef @ei_stun_unknown_attribute, ptr noundef %0, i32 noundef %.1841947, i32 noundef %i.jg, ptr noundef @.str.279, i32 noundef %i.ij) ; 2 uses
  %i.ji = load i32, ptr @hf_stun_att_type, align 4
  %i.jj = zext i16 %i.ic to i32
  %i.jk = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.jh, i32 noundef %i.ji, ptr noundef %0, i32 noundef %.1841947, i32 noundef 2, i32 noundef %i.jj, ptr noundef @.str.280, i32 noundef %i.ij) ; 0 uses
  %.pre966 = add nuw nsw i32 %.1841947, 4
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bk, %bb.bm
  %.pre-phi = phi i32 [ %i.ja, %bb.bk ], [ %.pre966, %bb.bm ] ; 61 uses
  %.0825 = phi ptr [ %i.ir, %bb.bk ], [ %i.jh, %bb.bm ] ; 109 uses
  %i.jl = load i32, ptr @hf_stun_att_length, align 4
  %i.jm = zext i16 %i.ie to i32                   ; 21 uses
  %i.jn = call ptr @proto_tree_add_uint(ptr noundef %.0825, i32 noundef %i.jl, ptr noundef %0, i32 noundef %i.id, i32 noundef 2, i32 noundef %i.jm) ; 0 uses
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
  %.not950 = icmp eq i16 %i.ie, 0
  br i1 %.not950, label %.thread, label %.lr.ph946

bb.bo:                                            ; preds = %bb.bn, %bb.bn, %bb.bn, %bb.bn, %bb.bn
  %i.jo = icmp eq i16 %i.ie, 0
  br i1 %i.jo, label %.thread, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.jp = load i32, ptr @hf_stun_att_reserved, align 4
  %i.jq = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.jp, ptr noundef %0, i32 noundef %.pre-phi, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.jr = icmp eq i16 %i.ie, 1
  br i1 %i.jr, label %.thread, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.js = load i32, ptr @hf_stun_att_family, align 4
  %i.jt = add nuw nsw i32 %.1841947, 5            ; 2 uses
  %i.ju = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.js, ptr noundef %0, i32 noundef %i.jt, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.jv = icmp ult i16 %i.ie, 4
  br i1 %i.jv, label %.thread, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.jw = load i32, ptr @hf_stun_att_port, align 4
  %i.jx = add nuw nsw i32 %.1841947, 6            ; 2 uses
  %i.jy = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.jw, ptr noundef %0, i32 noundef %i.jx, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.jz = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.jt)
  switch i8 %i.jz, label %.thread [
    i8 1, label %bb.bs
    i8 2, label %bb.bu
  ]

bb.bs:                                            ; preds = %bb.br
  %i.ka = icmp ult i16 %i.ie, 8
  br i1 %i.ka, label %.thread, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.kb = load i32, ptr @hf_stun_att_ipv4, align 4
  %i.kc = add nuw nsw i32 %.1841947, 8            ; 2 uses
  %i.kd = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.kb, ptr noundef %0, i32 noundef %i.kc, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ke = load ptr, ptr %i.hy, align 8
  %i.kf = call ptr @tvb_address_to_str(ptr noundef %i.ke, ptr noundef %0, i32 noundef 2, i32 noundef %i.kc)
  %i.kg = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.jx)
  %i.kh = zext i16 %i.kg to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.0825, ptr noundef @.str.281, ptr noundef %i.kf, i32 noundef %i.kh)
  br label %.thread

bb.bu:                                            ; preds = %bb.br
  %i.ki = icmp ult i16 %i.ie, 20
  br i1 %i.ki, label %.thread, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.kj = load i32, ptr @hf_stun_att_ipv6, align 4
  %i.kk = add nuw nsw i32 %.1841947, 8
  %i.kl = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.kj, ptr noundef %0, i32 noundef %i.kk, i32 noundef 16, i32 noundef 0) ; 0 uses
  br label %.thread

bb.bw:                                            ; preds = %bb.bn
  %i.km = load i32, ptr @hf_stun_att_password, align 4
  %i.kn = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.km, ptr noundef %0, i32 noundef %.pre-phi, i32 noundef %i.jm, i32 noundef 0) ; 0 uses
  br label %.thread

bb.bx:                                            ; preds = %bb.bn, %bb.bn, %bb.bn, %bb.bn, %bb.bn, %bb.bn
  %i.ko = icmp eq i16 %i.ie, 0
  br i1 %i.ko, label %.thread, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.kp = load i32, ptr @hf_stun_att_reserved, align 4
  %i.kq = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.kp, ptr noundef %0, i32 noundef %.pre-phi, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.kr = icmp eq i16 %i.ie, 1
  br i1 %i.kr, label %.thread, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ks = load i32, ptr @hf_stun_att_family, align 4
  %i.kt = add nuw nsw i32 %.1841947, 5            ; 2 uses
  %i.ku = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.ks, ptr noundef %0, i32 noundef %i.kt, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.kv = icmp ult i16 %i.ie, 4
  br i1 %i.kv, label %.thread, label %bb.ca
end_hunk_0
begin_hunk_1_@dissect_stun_message:bb.a
  %i.tq = add nuw nsw i32 %.1841947, 5
  %i.tr = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.tp, ptr noundef %0, i32 noundef %i.tq, i32 noundef 3, i32 noundef 0) ; 0 uses
  br label %.thread

bb.et:                                            ; preds = %bb.bn
  %i.ts = icmp ult i16 %i.ie, 4
  br i1 %i.ts, label %.thread, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.tt = load i32, ptr @hf_stun_att_channelnum, align 4
  %i.tu = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.tt, ptr noundef %0, i32 noundef %.pre-phi, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.tv = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %.pre-phi)
  %i.tw = zext i16 %i.tv to i32                   ; 2 uses
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.0825, ptr noundef @.str.299, i32 noundef %i.tw)
  %i.tx = load ptr, ptr %i.bt, align 8
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.tx, i32 noundef 25, ptr noundef @.str.300, i32 noundef %i.tw)
  %i.ty = load i32, ptr @hf_stun_att_reserved, align 4
  %i.tz = add nuw nsw i32 %.1841947, 6
  %i.ua = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.ty, ptr noundef %0, i32 noundef %i.tz, i32 noundef 2, i32 noundef 0) ; 0 uses
  br label %.thread

bb.ev:                                            ; preds = %bb.bn
  %i.ub = icmp ult i16 %i.ie, 4
  br i1 %i.ub, label %.thread, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.uc = load i32, ptr @hf_stun_att_magic_cookie, align 4
  %i.ud = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.uc, ptr noundef %0, i32 noundef %.pre-phi, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %.thread

bb.ex:                                            ; preds = %bb.bn
  %i.ue = icmp ult i16 %i.ie, 4
  br i1 %i.ue, label %.thread, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.uf = load i32, ptr @hf_stun_att_bandwidth, align 4
  %i.ug = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.uf, ptr noundef %0, i32 noundef %.pre-phi, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.uh = call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %.pre-phi)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.0825, ptr noundef @.str.301, i32 noundef %i.uh)
  %i.ui = load ptr, ptr %i.bt, align 8
  %i.uj = call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %.pre-phi)
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.ui, i32 noundef 25, ptr noundef @.str.302, i32 noundef %i.uj)
  br label %.thread

bb.ez:                                            ; preds = %bb.bn
  %i.uk = icmp ult i16 %i.ie, 4
  br i1 %i.uk, label %.thread, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.ul = load i32, ptr @hf_stun_att_lifetime, align 4
  %i.um = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.ul, ptr noundef %0, i32 noundef %.pre-phi, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.un = call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %.pre-phi)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.0825, ptr noundef @.str.301, i32 noundef %i.un)
  %i.uo = load ptr, ptr %i.bt, align 8
  %i.up = call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %.pre-phi)
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.uo, i32 noundef 25, ptr noundef @.str.303, i32 noundef %i.up)
  br label %.thread

bb.fb:                                            ; preds = %bb.bn
  %i.uq = load i32, ptr @hf_stun_att_ms_version, align 4
  %i.ur = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.uq, ptr noundef %0, i32 noundef %.pre-phi, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.us = load ptr, ptr %i.hy, align 8
  %i.ut = call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %.pre-phi)
  %i.uu = call ptr @val_to_str(ptr noundef %i.us, i32 noundef %i.ut, ptr noundef @ms_version_vals, ptr noundef @.str.304)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.0825, ptr noundef @.str.287, ptr noundef %i.uu)
  br label %.thread

bb.fc:                                            ; preds = %bb.bn
  %i.uv = load i32, ptr @hf_stun_att_ms_version_ice, align 4
  %i.uw = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.uv, ptr noundef %0, i32 noundef %.pre-phi, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ux = load ptr, ptr %i.hy, align 8
  %i.uy = call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %.pre-phi)
  %i.uz = call ptr @rval_to_str_wmem(ptr noundef %i.ux, i32 noundef %i.uy, ptr noundef @ms_version_ice_rvals, ptr noundef @.str.304)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.0825, ptr noundef @.str.287, ptr noundef %i.uz)
  br label %.thread

bb.fd:                                            ; preds = %bb.bn
  %i.va = load i32, ptr @hf_stun_att_ms_connection_id, align 4
  %i.vb = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.va, ptr noundef %0, i32 noundef %.pre-phi, i32 noundef 20, i32 noundef 0) ; 0 uses
  %i.vc = load i32, ptr @hf_stun_att_ms_sequence_number, align 4
  %i.vd = add nuw nsw i32 %.1841947, 24
  %i.ve = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.vc, ptr noundef %0, i32 noundef %i.vd, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %.thread

bb.fe:                                            ; preds = %bb.bn
  %i.vf = load i32, ptr @hf_stun_att_ms_stream_type, align 4
  %i.vg = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.vf, ptr noundef %0, i32 noundef %.pre-phi, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.vh = load i32, ptr @hf_stun_att_ms_service_quality, align 4
  %i.vi = add nuw nsw i32 %.1841947, 6
  %i.vj = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.vh, ptr noundef %0, i32 noundef %i.vi, i32 noundef 2, i32 noundef 0) ; 0 uses
  br label %.thread

bb.ff:                                            ; preds = %bb.bn
  %i.vk = load i32, ptr @hf_stun_att_reserved, align 4
  %i.vl = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.vk, ptr noundef %0, i32 noundef %.pre-phi, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.vm = load i32, ptr @hf_stun_att_bandwidth_acm_type, align 4
  %i.vn = add nuw nsw i32 %.1841947, 6
  %i.vo = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.vm, ptr noundef %0, i32 noundef %i.vn, i32 noundef 2, i32 noundef 0) ; 0 uses
  br label %.thread

bb.fg:                                            ; preds = %bb.bn
  %i.vp = load i32, ptr @hf_stun_att_bandwidth_rsv_id, align 4
  %i.vq = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.vp, ptr noundef %0, i32 noundef %.pre-phi, i32 noundef 16, i32 noundef 0) ; 0 uses
  br label %.thread

bb.fh:                                            ; preds = %bb.bn
  %i.vr = load i32, ptr @hf_stun_att_bandwidth_rsv_amount_masb, align 4
  %i.vs = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.vr, ptr noundef %0, i32 noundef %.pre-phi, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.vt = load i32, ptr @hf_stun_att_bandwidth_rsv_amount_misb, align 4
  %i.vu = add nuw nsw i32 %.1841947, 8
  %i.vv = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.vt, ptr noundef %0, i32 noundef %i.vu, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.vw = load i32, ptr @hf_stun_att_bandwidth_rsv_amount_marb, align 4
  %i.vx = add nuw nsw i32 %.1841947, 12
  %i.vy = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.vw, ptr noundef %0, i32 noundef %i.vx, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.vz = load i32, ptr @hf_stun_att_bandwidth_rsv_amount_mirb, align 4
  %i.wa = add nuw nsw i32 %.1841947, 16
  %i.wb = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.vz, ptr noundef %0, i32 noundef %i.wa, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %.thread

bb.fi:                                            ; preds = %bb.bn, %bb.bn
  %i.wc = load i32, ptr @hf_stun_att_address_rp_a, align 4
  %i.wd = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.wc, ptr noundef %0, i32 noundef %.pre-phi, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.we = load i32, ptr @hf_stun_att_address_rp_b, align 4
  %i.wf = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.we, ptr noundef %0, i32 noundef %.pre-phi, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.wg = load i32, ptr @hf_stun_att_address_rp_rsv1, align 4
  %i.wh = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.wg, ptr noundef %0, i32 noundef %.pre-phi, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.wi = load i32, ptr @hf_stun_att_address_rp_masb, align 4
  %i.wj = add nuw nsw i32 %.1841947, 8
  %i.wk = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.wi, ptr noundef %0, i32 noundef %i.wj, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.wl = load i32, ptr @hf_stun_att_address_rp_marb, align 4
  %i.wm = add nuw nsw i32 %.1841947, 12
  %i.wn = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.wl, ptr noundef %0, i32 noundef %i.wm, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %.thread

bb.fj:                                            ; preds = %bb.bn, %bb.bn
  %i.wo = load i32, ptr @hf_stun_att_address_rp_a, align 4
  %i.wp = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.wo, ptr noundef %0, i32 noundef %.pre-phi, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.wq = load i32, ptr @hf_stun_att_address_rp_rsv2, align 4
  %i.wr = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.wq, ptr noundef %0, i32 noundef %.pre-phi, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ws = load i32, ptr @hf_stun_att_address_rp_masb, align 4
  %i.wt = add nuw nsw i32 %.1841947, 8
  %i.wu = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.ws, ptr noundef %0, i32 noundef %i.wt, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.wv = load i32, ptr @hf_stun_att_address_rp_marb, align 4
  %i.ww = add nuw nsw i32 %.1841947, 12
  %i.wx = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.wv, ptr noundef %0, i32 noundef %i.ww, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %.thread

bb.fk:                                            ; preds = %bb.bn
  %i.wy = load i32, ptr @hf_stun_att_sip_dialog_id, align 4
  %i.wz = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.wy, ptr noundef %0, i32 noundef %.pre-phi, i32 noundef %i.jm, i32 noundef 0) ; 0 uses
  br label %.thread

bb.fl:                                            ; preds = %bb.bn
  %i.xa = load i32, ptr @hf_stun_att_sip_call_id, align 4
  %i.xb = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.xa, ptr noundef %0, i32 noundef %.pre-phi, i32 noundef %i.jm, i32 noundef 0) ; 0 uses
  br label %.thread

bb.fm:                                            ; preds = %bb.bn
  %i.xc = load i32, ptr @hf_stun_att_lp_peer_location, align 4
  %i.xd = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.xc, ptr noundef %0, i32 noundef %.pre-phi, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.xe = load i32, ptr @hf_stun_att_lp_self_location, align 4
  %i.xf = add nuw nsw i32 %.1841947, 5
  %i.xg = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.xe, ptr noundef %0, i32 noundef %i.xf, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.xh = load i32, ptr @hf_stun_att_lp_federation, align 4
  %i.xi = add nuw nsw i32 %.1841947, 6
  %i.xj = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.xh, ptr noundef %0, i32 noundef %i.xi, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.xk = load i32, ptr @hf_stun_att_reserved, align 4
  %i.xl = add nuw nsw i32 %.1841947, 7
  %i.xm = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.xk, ptr noundef %0, i32 noundef %i.xl, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %.thread

bb.fn:                                            ; preds = %bb.bn
  %i.xn = load i32, ptr @hf_stun_att_ms_foundation, align 4
  %i.xo = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.xn, ptr noundef %0, i32 noundef %.pre-phi, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %.thread

bb.fo:                                            ; preds = %bb.bn
  %i.xp = load i32, ptr @hf_stun_att_ms_multiplexed_turn_session_id, align 4
  %i.xq = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.xp, ptr noundef %0, i32 noundef %.pre-phi, i32 noundef 8, i32 noundef 0) ; 0 uses
  br label %.thread

bb.fp:                                            ; preds = %bb.bn
  %i.xr = load i32, ptr @hf_stun_att_google_network_id, align 4
  %i.xs = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.xr, ptr noundef %0, i32 noundef %.pre-phi, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.xt = load i32, ptr @hf_stun_att_google_network_cost, align 4
  %i.xu = add nuw nsw i32 %.1841947, 6
  %i.xv = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.xt, ptr noundef %0, i32 noundef %i.xu, i32 noundef 2, i32 noundef 0) ; 0 uses
  br label %.thread

bb.fq:                                            ; preds = %bb.bn
  %.not887 = icmp eq i16 %i.ie, 0
  br i1 %.not887, label %.thread, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.xw = load i32, ptr @hf_stun_att_value, align 4
  %i.xx = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.xw, ptr noundef %0, i32 noundef %.pre-phi, i32 noundef %i.jm, i32 noundef 0) ; 0 uses
  br label %.thread

.thread:                                          ; preds = %.lr.ph946, %.preheader, %bb.cc, %bb.cb, %bb.ca, %.thread927, %bb.en, %bb.ep, %bb.eo, %bb.bx, %bb.by, %bb.bz, %bb.ce, %bb.cd, %bb.fq, %bb.fr, %bb.ez, %bb.ex, %bb.ev, %bb.et, %bb.er, %bb.eq, %bb.el, %bb.ej, %bb.eh, %bb.ed, %bb.ea, %bb.dy, %bb.dw, %bb.du, %bb.dt, %bb.ds, %.thread1007, %proto_item_set_generated.exit914, %bb.di, %bb.dh, %bb.dg, %bb.cp, %bb.co, %bb.cn, %bb.cm, %bb.ck, %bb.cj, %bb.br, %bb.bt, %bb.bv, %bb.bs, %bb.bu, %bb.bq, %bb.bp, %bb.bo, %bb.fp, %bb.fo, %bb.fn, %bb.fm, %bb.fl, %bb.fk, %bb.fj, %bb.fi, %bb.fh, %bb.fg, %bb.ff, %bb.fe, %bb.fd, %bb.fc, %bb.fb, %bb.fa, %bb.ey, %bb.ew, %bb.eu, %bb.es, %bb.em, %bb.ek, %bb.ei, %bb.eg, %bb.ef, %bb.ee, %bb.ec, %bb.eb, %bb.dz, %bb.dx, %bb.dv, %.thread924, %bb.cs, %bb.cr, %bb.cq, %bb.cl, %bb.ch, %bb.bw
  %.2 = phi i1 [ %.0831948, %bb.fr ], [ %.0831948, %bb.fq ], [ %.0831948, %bb.bo ], [ %.0831948, %bb.bp ], [ %.0831948, %bb.bq ], [ %.0831948, %bb.br ], [ %.0831948, %bb.bs ], [ %.0831948, %bb.bt ], [ %.0831948, %bb.bu ], [ %.0831948, %bb.bv ], [ %.0831948, %bb.bw ], [ %.0831948, %bb.fp ], [ %.0831948, %bb.ch ], [ %.0831948, %bb.cj ], [ %.1832, %.thread927 ], [ %.0831948, %bb.ck ], [ %.0831948, %bb.cl ], [ %.0831948, %bb.cm ], [ %.0831948, %bb.cn ], [ %.0831948, %bb.co ], [ %.0831948, %bb.cp ], [ %.0831948, %bb.cq ], [ %.0831948, %bb.cc ], [ %.0831948, %bb.cr ], [ %.0831948, %bb.cs ], [ %.0831948, %.thread924 ], [ %.1832, %bb.dg ], [ %.1832, %bb.dh ], [ %.1832, %bb.di ], [ %.1832, %proto_item_set_generated.exit914 ], [ %.1832, %.thread1007 ], [ %.1832, %bb.ds ], [ %.0831948, %bb.dt ], [ %.0831948, %bb.du ], [ %.0831948, %bb.dv ], [ %.0831948, %bb.dw ], [ true, %bb.dx ], [ %.0831948, %bb.dy ], [ true, %bb.dz ], [ %.0831948, %bb.ea ], [ %.0831948, %bb.eb ], [ %.0831948, %bb.ec ], [ %.0831948, %bb.ed ], [ %.0831948, %bb.ee ], [ %.0831948, %bb.ef ], [ %.0831948, %bb.eg ], [ %.0831948, %bb.eh ], [ %.0831948, %bb.ei ], [ %.0831948, %bb.ej ], [ %.0831948, %bb.ek ], [ %.0831948, %bb.el ], [ %.0831948, %bb.em ], [ %.0831948, %bb.bx ], [ %.0831948, %bb.eq ], [ %.0831948, %bb.er ], [ true, %bb.es ], [ %.0831948, %bb.et ], [ true, %bb.eu ], [ %.0831948, %bb.ev ], [ %.0831948, %bb.ew ], [ %.0831948, %bb.ex ], [ true, %bb.ey ], [ %.0831948, %bb.ez ], [ true, %bb.fa ], [ %.0831948, %bb.fb ], [ %.0831948, %bb.fc ], [ %.0831948, %bb.fd ], [ %.0831948, %bb.fe ], [ %.0831948, %bb.ff ], [ %.0831948, %bb.fg ], [ %.0831948, %bb.fh ], [ %.0831948, %bb.fi ], [ %.0831948, %bb.fj ], [ %.0831948, %bb.fk ], [ %.0831948, %bb.fl ], [ %.0831948, %bb.fm ], [ %.0831948, %bb.fn ], [ true, %bb.fo ], [ %.0831948, %bb.cd ], [ %.0831948, %bb.ce ], [ %.0831948, %bb.bz ], [ %.0831948, %bb.by ], [ true, %bb.eo ], [ true, %bb.ep ], [ true, %bb.en ], [ %.0831948, %bb.ca ], [ %.0831948, %bb.cb ], [ %.0831948, %.preheader ], [ %.0831948, %.lr.ph946 ] ; 2 uses
  %i.xy = icmp ult i16 %i.ie, %.0843
  %or.cond894 = select i1 %i.ho, i1 %i.xy, i1 false
  br i1 %or.cond894, label %bb.fs, label %bb.ft

bb.fs:                                            ; preds = %.thread
  %i.xz = load i32, ptr @hf_stun_att_padding, align 4
  %i.ya = add nuw nsw i32 %.pre-phi, %i.jm
  %narrow = sub nuw i16 %i.ig, %i.ie
  %i.yb = zext i16 %narrow to i32                 ; 2 uses
  %i.yc = call ptr @proto_tree_add_uint(ptr noundef %.0825, i32 noundef %i.xz, ptr noundef %0, i32 noundef %i.ya, i32 noundef %i.yb, i32 noundef %i.yb) ; 0 uses
  br label %bb.ft

bb.ft:                                            ; preds = %.thread929, %bb.fs, %.thread
  %.2932 = phi i1 [ %.0831948, %.thread929 ], [ %.2, %bb.fs ], [ %.2, %.thread ] ; 2 uses
  %i.yd = zext i16 %.0843 to i32
  %i.ye = add nuw nsw i32 %.pre-phi, %i.yd        ; 2 uses
  %i.yf = icmp ult i32 %i.ye, %i.bq
  br i1 %i.yf, label %bb.bj, label %.loopexit, !llvm.loop !7

.loopexit:                                        ; preds = %bb.ft, %bb.bi, %bb.bl
  %.0831939 = phi i1 [ %.0831948, %bb.bl ], [ false, %bb.bi ], [ %.2932, %bb.ft ]
  %i.yg = or i1 %.0833, %.0831939
  br label %bb.fu

bb.fu:                                            ; preds = %.loopexit, %bb.bb
  %.3 = phi i1 [ %i.yg, %.loopexit ], [ %.0833, %bb.bb ]
  %i.yh = load ptr, ptr %i.cp, align 8
  %i.yi = getelementptr i8, ptr %i.yh, i64 53
  %i.yj = load i16, ptr %i.yi, align 1
  %i.yk = and i16 %i.yj, 8
  %i.yl = icmp eq i16 %i.yk, 0
  %or.cond16 = and i1 %.3, %i.yl
  br i1 %or.cond16, label %bb.fv, label %bb.fx

bb.fv:                                            ; preds = %bb.fu
  %i.ym = getelementptr i8, ptr %1, i64 284
  %i.yn = load i32, ptr %i.ym, align 4
  %i.yo = icmp eq i32 %i.yn, 2
  %i.yp = icmp eq i16 %.0826, 11
  %or.cond19 = select i1 %i.yo, i1 %i.yp, i1 false
  %i.yq = icmp eq i16 %.0828, 2
  %or.cond22 = and i1 %i.yq, %or.cond19
  br i1 %or.cond22, label %bb.fw, label %bb.fx

bb.fw:                                            ; preds = %bb.fv
  %i.yr = getelementptr i8, ptr %1, i64 20
  %i.ys = load i32, ptr %i.yr, align 4
  %i.yt = add i32 %i.ys, 1
  %i.yu = load ptr, ptr @data_handle, align 8
  call void @conversation_set_dissector_from_frame_number(ptr noundef %i.ch, i32 noundef %i.yt, ptr noundef %i.yu)
  br label %bb.fx

bb.fx:                                            ; preds = %bb.fu, %bb.fv, %bb.fw, %bb.q, %bb.p, %bb.o, %bb.n, %bb.i, %bb.h, %bb.e, %bb.a, %dissect_stun_message_channel_data.exit
  %.0 = phi i32 [ 0, %bb.q ], [ 0, %bb.a ], [ 0, %bb.e ], [ %i.az, %dissect_stun_message_channel_data.exit ], [ 0, %bb.h ], [ 0, %bb.i ], [ 0, %bb.n ], [ 0, %bb.o ], [ 0, %bb.p ], [ %i.o, %bb.fw ], [ %i.o, %bb.fv ], [ %i.o, %bb.fu ]
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
