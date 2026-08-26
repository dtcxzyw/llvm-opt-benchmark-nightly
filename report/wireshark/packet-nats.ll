Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-nats?download=true
inline.NumInlined: 31
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@dissect_nats:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #7
  %i.el = sub i32 %i.ek, %.091116
  %i.em = call zeroext i1 @tvb_get_token_len_length(ptr noundef %0, i32 noundef %.091116, i32 noundef %i.el, ptr noundef nonnull %i.l, ptr noundef null)
  br i1 %i.em, label %bb.m, label %nats_parse_tokens.exit.thread27.i93

bb.m:                                             ; preds = %bb.l
  store i32 %.091116, ptr %6, align 16
  %i.en = load i32, ptr %i.l, align 4             ; 2 uses
  store i32 %i.en, ptr %i.bd, align 4
  %i.eo = load ptr, ptr %i.x, align 8
  %i.ep = call ptr @tvb_get_string_enc(ptr noundef %i.eo, ptr noundef %0, i32 noundef %.091116, i32 noundef %i.en, i32 noundef 2)
  store ptr %i.ep, ptr %i.be, align 8
  %i.eq = load i32, ptr %i.l, align 4
  %i.er = add i32 %i.eq, %.091116                 ; 2 uses
  %i.es = sub i32 %i.ek, %i.er
  %i.et = call i32 @tvb_skip_wsp(ptr noundef %0, i32 noundef %i.er, i32 noundef %i.es) ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #7
  %i.eu = sub i32 %i.ek, %i.et
  %i.ev = call zeroext i1 @tvb_get_token_len_length(ptr noundef %0, i32 noundef %i.et, i32 noundef %i.eu, ptr noundef nonnull %i.l, ptr noundef null)
  br i1 %i.ev, label %bb.n, label %nats_parse_tokens.exit.thread27.i93

bb.n:                                             ; preds = %bb.m
  store i32 %i.et, ptr %i.bf, align 16
  %i.ew = load i32, ptr %i.l, align 4             ; 2 uses
  store i32 %i.ew, ptr %i.bg, align 4
  %i.ex = load ptr, ptr %i.x, align 8
  %i.ey = call ptr @tvb_get_string_enc(ptr noundef %i.ex, ptr noundef %0, i32 noundef %i.et, i32 noundef %i.ew, i32 noundef 2)
  store ptr %i.ey, ptr %i.bh, align 8
  %i.ez = load i32, ptr %i.l, align 4
  %i.fa = add i32 %i.ez, %i.et                    ; 2 uses
  %i.fb = sub i32 %i.ek, %i.fa
  %i.fc = call i32 @tvb_skip_wsp(ptr noundef %0, i32 noundef %i.fa, i32 noundef %i.fb) ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #7
  %i.fd = sub i32 %i.ek, %i.fc
  %i.fe = call zeroext i1 @tvb_get_token_len_length(ptr noundef %0, i32 noundef %i.fc, i32 noundef %i.fd, ptr noundef nonnull %i.l, ptr noundef null)
  br i1 %i.fe, label %bb.o, label %nats_parse_tokens.exit.thread27.i93

bb.o:                                             ; preds = %bb.n
  store i32 %i.fc, ptr %i.bi, align 16
  %i.ff = load i32, ptr %i.l, align 4             ; 2 uses
  store i32 %i.ff, ptr %i.bj, align 4
  %i.fg = load ptr, ptr %i.x, align 8
  %i.fh = call ptr @tvb_get_string_enc(ptr noundef %i.fg, ptr noundef %0, i32 noundef %i.fc, i32 noundef %i.ff, i32 noundef 2)
  store ptr %i.fh, ptr %i.bk, align 8
  %i.fi = load i32, ptr %i.l, align 4
  %i.fj = add i32 %i.fi, %i.fc                    ; 2 uses
  %i.fk = sub i32 %i.ek, %i.fj
  %i.fl = call i32 @tvb_skip_wsp(ptr noundef %0, i32 noundef %i.fj, i32 noundef %i.fk) ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #7
  %i.fm = sub i32 %i.ek, %i.fl
  %i.fn = call zeroext i1 @tvb_get_token_len_length(ptr noundef %0, i32 noundef %i.fl, i32 noundef %i.fm, ptr noundef nonnull %i.l, ptr noundef null)
  br i1 %i.fn, label %bb.p, label %bb.q

nats_parse_tokens.exit.thread27.i93:              ; preds = %bb.n, %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #7
  br label %dissect_nats_pub.exit

bb.p:                                             ; preds = %bb.o
  store i32 %i.fl, ptr %i.bl, align 16
  %i.fo = load i32, ptr %i.l, align 4             ; 2 uses
  store i32 %i.fo, ptr %i.bm, align 4
  %i.fp = load ptr, ptr %i.x, align 8
  %i.fq = call ptr @tvb_get_string_enc(ptr noundef %i.fp, ptr noundef %0, i32 noundef %i.fl, i32 noundef %i.fo, i32 noundef 2)
  store ptr %i.fq, ptr %i.bn, align 8
  %i.fr = load i32, ptr %i.l, align 4
  %i.fs = add i32 %i.fr, %i.fl                    ; 2 uses
  %i.ft = sub i32 %i.ek, %i.fs
  %i.fu = call i32 @tvb_skip_wsp(ptr noundef %0, i32 noundef %i.fs, i32 noundef %i.ft) ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.fv = phi ptr [ %i.bl, %bb.p ], [ %i.bi, %bb.o ]
  %i.fw = phi ptr [ %i.bi, %bb.p ], [ null, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #7
  %i.fx = load ptr, ptr %i.t, align 8
  call void @col_append_sep_str(ptr noundef %i.fx, i32 noundef 25, ptr noundef null, ptr noundef nonnull @.str.62)
  %i.fy = load i32, ptr @hf_nats_pub, align 4
  %i.fz = load i64, ptr %6, align 16
  %i.ga = load ptr, ptr %i.be, align 8
  %i.gb = call fastcc i32 @dissect_nats_with_payload(ptr noundef %0, i32 noundef %.091116, i32 noundef %i.ek, i64 %i.fz, ptr %i.ga, ptr noundef nonnull byval(%struct._nats_request_token) align 8 %i.bf, ptr noundef nonnull byval(%struct._nats_request_token) align 8 %i.fv, ptr noundef null, ptr noundef %i.fw, ptr noundef null, ptr noundef %1, ptr noundef %i.s, i32 noundef %i.fy)
  br label %dissect_nats_pub.exit

dissect_nats_pub.exit:                            ; preds = %nats_parse_tokens.exit.thread27.i93, %bb.q
  %.017.i94 = phi i32 [ %i.gb, %bb.q ], [ 0, %nats_parse_tokens.exit.thread27.i93 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  br label %dissect_nats_sub.exit

bb.r:                                             ; preds = %bb.k
  %i.gc = call i32 @tvb_strncaseeql(ptr noundef %0, i32 noundef %.091116, ptr noundef nonnull @.str.66, i64 noundef 3)
  %i.gd = icmp eq i32 %i.gc, 0
  br i1 %i.gd, label %bb.s, label %bb.y

bb.s:                                             ; preds = %bb.r
  %i.ge = load i32, ptr %i.n, align 4             ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #7
  %i.gf = sub i32 %i.ge, %.091116                 ; 3 uses
  %i.gg = call zeroext i1 @tvb_get_token_len_length(ptr noundef %0, i32 noundef %.091116, i32 noundef %i.gf, ptr noundef nonnull %i.k, ptr noundef null)
  br i1 %i.gg, label %bb.t, label %nats_parse_tokens.exit.thread52.i

bb.t:                                             ; preds = %bb.s
  %i.gh = load i32, ptr %i.k, align 4             ; 2 uses
  %i.gi = load ptr, ptr %i.x, align 8
  %i.gj = call ptr @tvb_get_string_enc(ptr noundef %i.gi, ptr noundef %0, i32 noundef %.091116, i32 noundef %i.gh, i32 noundef 2)
  %i.gk = load i32, ptr %i.k, align 4
  %i.gl = add i32 %i.gk, %.091116                 ; 2 uses
  %i.gm = sub i32 %i.ge, %i.gl
  %i.gn = call i32 @tvb_skip_wsp(ptr noundef %0, i32 noundef %i.gl, i32 noundef %i.gm) ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #7
  %i.go = sub i32 %i.ge, %i.gn
  %i.gp = call zeroext i1 @tvb_get_token_len_length(ptr noundef %0, i32 noundef %i.gn, i32 noundef %i.go, ptr noundef nonnull %i.k, ptr noundef null)
  br i1 %i.gp, label %bb.u, label %nats_parse_tokens.exit.thread52.i

bb.u:                                             ; preds = %bb.t
  %i.gq = load i32, ptr %i.k, align 4             ; 2 uses
  %i.gr = load ptr, ptr %i.x, align 8
  %i.gs = call ptr @tvb_get_string_enc(ptr noundef %i.gr, ptr noundef %0, i32 noundef %i.gn, i32 noundef %i.gq, i32 noundef 2)
  %i.gt = load i32, ptr %i.k, align 4
  %i.gu = add i32 %i.gt, %i.gn                    ; 2 uses
  %i.gv = sub i32 %i.ge, %i.gu
  %i.gw = call i32 @tvb_skip_wsp(ptr noundef %0, i32 noundef %i.gu, i32 noundef %i.gv) ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #7
  %i.gx = sub i32 %i.ge, %i.gw
  %i.gy = call zeroext i1 @tvb_get_token_len_length(ptr noundef %0, i32 noundef %i.gw, i32 noundef %i.gx, ptr noundef nonnull %i.k, ptr noundef null)
  br i1 %i.gy, label %bb.v, label %nats_parse_tokens.exit.thread52.i

bb.v:                                             ; preds = %bb.u
  %i.gz = load i32, ptr %i.k, align 4             ; 3 uses
  %i.ha = load ptr, ptr %i.x, align 8
  %i.hb = call ptr @tvb_get_string_enc(ptr noundef %i.ha, ptr noundef %0, i32 noundef %i.gw, i32 noundef %i.gz, i32 noundef 2) ; 2 uses
  %i.hc = load i32, ptr %i.k, align 4
  %i.hd = add i32 %i.hc, %i.gw                    ; 2 uses
  %i.he = sub i32 %i.ge, %i.hd
  %i.hf = call i32 @tvb_skip_wsp(ptr noundef %0, i32 noundef %i.hd, i32 noundef %i.he) ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #7
  %i.hg = sub i32 %i.ge, %i.hf
  %i.hh = call zeroext i1 @tvb_get_token_len_length(ptr noundef %0, i32 noundef %i.hf, i32 noundef %i.hg, ptr noundef nonnull %i.k, ptr noundef null) ; 2 uses
  br i1 %i.hh, label %nats_parse_tokens.exit.thread.loopexit.i, label %nats_parse_tokens.exit.thread.i

nats_parse_tokens.exit.thread.loopexit.i:         ; preds = %bb.v
  %i.hi = load i32, ptr %i.k, align 4             ; 2 uses
  %i.hj = load ptr, ptr %i.x, align 8
  %i.hk = call ptr @tvb_get_string_enc(ptr noundef %i.hj, ptr noundef %0, i32 noundef %i.hf, i32 noundef %i.hi, i32 noundef 2)
  %i.hl = load i32, ptr %i.k, align 4
  %i.hm = add i32 %i.hl, %i.hf                    ; 2 uses
  %i.hn = sub i32 %i.ge, %i.hm
  %i.ho = call i32 @tvb_skip_wsp(ptr noundef %0, i32 noundef %i.hm, i32 noundef %i.hn) ; 0 uses
  br label %nats_parse_tokens.exit.thread.i

nats_parse_tokens.exit.thread52.i:                ; preds = %bb.u, %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #7
  br label %dissect_nats_sub.exit.thread

nats_parse_tokens.exit.thread.i:                  ; preds = %nats_parse_tokens.exit.thread.loopexit.i, %bb.v
  %.sroa.24.0.i = phi i32 [ %i.hf, %nats_parse_tokens.exit.thread.loopexit.i ], [ 0, %bb.v ]
  %.sroa.26.0.i = phi i32 [ %i.hi, %nats_parse_tokens.exit.thread.loopexit.i ], [ 0, %bb.v ]
  %.sroa.28.0.i = phi ptr [ %i.hk, %nats_parse_tokens.exit.thread.loopexit.i ], [ null, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #7
  %i.hp = load ptr, ptr %i.t, align 8
  call void @col_append_sep_str(ptr noundef %i.hp, i32 noundef 25, ptr noundef null, ptr noundef nonnull @.str.66)
  %i.hq = load i32, ptr @hf_nats_sub, align 4
  %i.hr = call ptr @proto_tree_add_item(ptr noundef %i.s, i32 noundef %i.hq, ptr noundef %0, i32 noundef %.091116, i32 noundef %i.gf, i32 noundef 0)
  %i.hs = load i32, ptr @ett_nats, align 4
  %i.ht = call ptr @proto_item_add_subtree(ptr noundef %i.hr, i32 noundef %i.hs) ; 4 uses
  %i.hu = load i32, ptr @hf_nats_op, align 4
  %i.hv = call ptr @proto_tree_add_string(ptr noundef %i.ht, i32 noundef %i.hu, ptr noundef %0, i32 noundef %.091116, i32 noundef %i.gh, ptr noundef %i.gj) ; 0 uses
  %i.hw = load i32, ptr @hf_nats_subject, align 4
  %i.hx = call ptr @proto_tree_add_string(ptr noundef %i.ht, i32 noundef %i.hw, ptr noundef %0, i32 noundef %i.gn, i32 noundef %i.gq, ptr noundef %i.gs) ; 0 uses
  br i1 %i.hh, label %bb.w, label %bb.x

bb.w:                                             ; preds = %nats_parse_tokens.exit.thread.i
  %i.hy = load i32, ptr @hf_nats_queue_group, align 4
  %i.hz = call ptr @proto_tree_add_string(ptr noundef %i.ht, i32 noundef %i.hy, ptr noundef %0, i32 noundef %i.gw, i32 noundef %i.gz, ptr noundef %i.hb) ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %nats_parse_tokens.exit.thread.i
  %i.ia = phi i32 [ %.sroa.24.0.i, %bb.w ], [ %i.gw, %nats_parse_tokens.exit.thread.i ]
  %.34.sroa.sel.sroa.sel.v.sroa.phi.sroa.speculated.i = phi ptr [ %.sroa.28.0.i, %bb.w ], [ %i.hb, %nats_parse_tokens.exit.thread.i ]
  %.34.sroa.sel.sroa.sel43.v.sroa.phi.sroa.speculated.i = phi i32 [ %.sroa.26.0.i, %bb.w ], [ %i.gz, %nats_parse_tokens.exit.thread.i ]
  %i.ib = load i32, ptr @hf_nats_subscription_id, align 4
  %i.ic = call ptr @proto_tree_add_string(ptr noundef %i.ht, i32 noundef %i.ib, ptr noundef %0, i32 noundef %i.ia, i32 noundef %.34.sroa.sel.sroa.sel43.v.sroa.phi.sroa.speculated.i, ptr noundef %.34.sroa.sel.sroa.sel.v.sroa.phi.sroa.speculated.i) ; 0 uses
  br label %dissect_nats_sub.exit

bb.y:                                             ; preds = %bb.r
  %i.id = call i32 @tvb_strncaseeql(ptr noundef %0, i32 noundef %.091116, ptr noundef nonnull @.str.78, i64 noundef 3)
  %i.ie = icmp eq i32 %i.id, 0
  br i1 %i.ie, label %bb.z, label %dissect_nats_sub.exit.thread

bb.z:                                             ; preds = %bb.y
  %i.if = load i32, ptr %i.n, align 4             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #7
  %i.ig = sub i32 %i.if, %.091116                 ; 3 uses
  %i.ih = call zeroext i1 @tvb_get_token_len_length(ptr noundef %0, i32 noundef %.091116, i32 noundef %i.ig, ptr noundef nonnull %i.j, ptr noundef null)
  br i1 %i.ih, label %nats_parse_tokens.exit.thread.i98, label %nats_parse_tokens.exit.i

nats_parse_tokens.exit.thread.i98:                ; preds = %bb.z
  %i.ii = load i32, ptr %i.j, align 4             ; 2 uses
  %i.ij = load ptr, ptr %i.x, align 8
  %i.ik = call ptr @tvb_get_string_enc(ptr noundef %i.ij, ptr noundef %0, i32 noundef %.091116, i32 noundef %i.ii, i32 noundef 2)
  %i.il = load i32, ptr %i.j, align 4
  %i.im = add i32 %i.il, %.091116                 ; 2 uses
  %i.in = sub i32 %i.if, %i.im
  %i.io = call i32 @tvb_skip_wsp(ptr noundef %0, i32 noundef %i.im, i32 noundef %i.in) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #7
  %i.ip = load ptr, ptr %i.t, align 8
  call void @col_append_sep_str(ptr noundef %i.ip, i32 noundef 25, ptr noundef null, ptr noundef nonnull @.str.78)
  %i.iq = load i32, ptr @hf_nats_ok, align 4
  %i.ir = call ptr @proto_tree_add_item(ptr noundef %i.s, i32 noundef %i.iq, ptr noundef %0, i32 noundef %.091116, i32 noundef %i.ig, i32 noundef 0)
  %i.is = load i32, ptr @ett_nats, align 4
  %i.it = call ptr @proto_item_add_subtree(ptr noundef %i.ir, i32 noundef %i.is)
  %i.iu = load i32, ptr @hf_nats_op, align 4
  %i.iv = call ptr @proto_tree_add_string(ptr noundef %i.it, i32 noundef %i.iu, ptr noundef %0, i32 noundef %.091116, i32 noundef %i.ii, ptr noundef %i.ik) ; 0 uses
  br label %dissect_nats_sub.exit

nats_parse_tokens.exit.i:                         ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #7
  br label %dissect_nats_sub.exit.thread

bb.aa:                                            ; preds = %bb.b
  %i.iw = call i32 @tvb_strncaseeql(ptr noundef %0, i32 noundef %.091116, ptr noundef nonnull @.str.72, i64 noundef 4)
  %i.ix = icmp eq i32 %i.iw, 0
  br i1 %i.ix, label %bb.ab, label %bb.aj

bb.ab:                                            ; preds = %bb.aa
  %i.iy = load i32, ptr %i.n, align 4             ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %5, i8 0, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #7
  %i.iz = sub i32 %i.iy, %.091116
  %i.ja = call zeroext i1 @tvb_get_token_len_length(ptr noundef %0, i32 noundef %.091116, i32 noundef %i.iz, ptr noundef nonnull %i.i, ptr noundef null)
  br i1 %i.ja, label %bb.ac, label %nats_parse_tokens.exit.thread32.i

bb.ac:                                            ; preds = %bb.ab
  store i32 %.091116, ptr %5, align 16
  %i.jb = load i32, ptr %i.i, align 4             ; 2 uses
  store i32 %i.jb, ptr %i.am, align 4
  %i.jc = load ptr, ptr %i.x, align 8
  %i.jd = call ptr @tvb_get_string_enc(ptr noundef %i.jc, ptr noundef %0, i32 noundef %.091116, i32 noundef %i.jb, i32 noundef 2)
  store ptr %i.jd, ptr %i.an, align 8
  %i.je = load i32, ptr %i.i, align 4
  %i.jf = add i32 %i.je, %.091116                 ; 2 uses
  %i.jg = sub i32 %i.iy, %i.jf
  %i.jh = call i32 @tvb_skip_wsp(ptr noundef %0, i32 noundef %i.jf, i32 noundef %i.jg) ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #7
  %i.ji = sub i32 %i.iy, %i.jh
  %i.jj = call zeroext i1 @tvb_get_token_len_length(ptr noundef %0, i32 noundef %i.jh, i32 noundef %i.ji, ptr noundef nonnull %i.i, ptr noundef null)
  br i1 %i.jj, label %bb.ad, label %nats_parse_tokens.exit.thread32.i

bb.ad:                                            ; preds = %bb.ac
  store i32 %i.jh, ptr %i.ao, align 16
  %i.jk = load i32, ptr %i.i, align 4             ; 2 uses
  store i32 %i.jk, ptr %i.ap, align 4
  %i.jl = load ptr, ptr %i.x, align 8
  %i.jm = call ptr @tvb_get_string_enc(ptr noundef %i.jl, ptr noundef %0, i32 noundef %i.jh, i32 noundef %i.jk, i32 noundef 2)
  store ptr %i.jm, ptr %i.aq, align 8
  %i.jn = load i32, ptr %i.i, align 4
  %i.jo = add i32 %i.jn, %i.jh                    ; 2 uses
  %i.jp = sub i32 %i.iy, %i.jo
  %i.jq = call i32 @tvb_skip_wsp(ptr noundef %0, i32 noundef %i.jo, i32 noundef %i.jp) ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #7
  %i.jr = sub i32 %i.iy, %i.jq
  %i.js = call zeroext i1 @tvb_get_token_len_length(ptr noundef %0, i32 noundef %i.jq, i32 noundef %i.jr, ptr noundef nonnull %i.i, ptr noundef null)
  br i1 %i.js, label %bb.ae, label %nats_parse_tokens.exit.thread32.i

bb.ae:                                            ; preds = %bb.ad
  store i32 %i.jq, ptr %i.ar, align 16
  %i.jt = load i32, ptr %i.i, align 4             ; 2 uses
  store i32 %i.jt, ptr %i.as, align 4
  %i.ju = load ptr, ptr %i.x, align 8
  %i.jv = call ptr @tvb_get_string_enc(ptr noundef %i.ju, ptr noundef %0, i32 noundef %i.jq, i32 noundef %i.jt, i32 noundef 2)
  store ptr %i.jv, ptr %i.at, align 8
  %i.jw = load i32, ptr %i.i, align 4
  %i.jx = add i32 %i.jw, %i.jq                    ; 2 uses
  %i.jy = sub i32 %i.iy, %i.jx
  %i.jz = call i32 @tvb_skip_wsp(ptr noundef %0, i32 noundef %i.jx, i32 noundef %i.jy) ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #7
  %i.ka = sub i32 %i.iy, %i.jz
  %i.kb = call zeroext i1 @tvb_get_token_len_length(ptr noundef %0, i32 noundef %i.jz, i32 noundef %i.ka, ptr noundef nonnull %i.i, ptr noundef null)
  br i1 %i.kb, label %bb.af, label %nats_parse_tokens.exit.thread32.i

bb.af:                                            ; preds = %bb.ae
  store i32 %i.jz, ptr %i.au, align 16
  %i.kc = load i32, ptr %i.i, align 4             ; 2 uses
  store i32 %i.kc, ptr %i.av, align 4
  %i.kd = load ptr, ptr %i.x, align 8
  %i.ke = call ptr @tvb_get_string_enc(ptr noundef %i.kd, ptr noundef %0, i32 noundef %i.jz, i32 noundef %i.kc, i32 noundef 2)
  store ptr %i.ke, ptr %i.aw, align 8
  %i.kf = load i32, ptr %i.i, align 4
  %i.kg = add i32 %i.kf, %i.jz                    ; 2 uses
  %i.kh = sub i32 %i.iy, %i.kg
  %i.ki = call i32 @tvb_skip_wsp(ptr noundef %0, i32 noundef %i.kg, i32 noundef %i.kh) ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #7
  %i.kj = sub i32 %i.iy, %i.ki
  %i.kk = call zeroext i1 @tvb_get_token_len_length(ptr noundef %0, i32 noundef %i.ki, i32 noundef %i.kj, ptr noundef nonnull %i.i, ptr noundef null)
  br i1 %i.kk, label %bb.ag, label %nats_parse_tokens.exit.thread32.i

bb.ag:                                            ; preds = %bb.af
  store i32 %i.ki, ptr %i.ax, align 16
  %i.kl = load i32, ptr %i.i, align 4             ; 2 uses
  store i32 %i.kl, ptr %i.ay, align 4
  %i.km = load ptr, ptr %i.x, align 8
  %i.kn = call ptr @tvb_get_string_enc(ptr noundef %i.km, ptr noundef %0, i32 noundef %i.ki, i32 noundef %i.kl, i32 noundef 2)
  store ptr %i.kn, ptr %i.az, align 8
  %i.ko = load i32, ptr %i.i, align 4
  %i.kp = add i32 %i.ko, %i.ki                    ; 2 uses
  %i.kq = sub i32 %i.iy, %i.kp
  %i.kr = call i32 @tvb_skip_wsp(ptr noundef %0, i32 noundef %i.kp, i32 noundef %i.kq) ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #7
  %i.ks = sub i32 %i.iy, %i.kr
  %i.kt = call zeroext i1 @tvb_get_token_len_length(ptr noundef %0, i32 noundef %i.kr, i32 noundef %i.ks, ptr noundef nonnull %i.i, ptr noundef null)
  br i1 %i.kt, label %bb.ah, label %bb.ai

nats_parse_tokens.exit.thread32.i:                ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #7
  br label %dissect_nats_hmsg.exit

bb.ah:                                            ; preds = %bb.ag
  store i32 %i.kr, ptr %i.ba, align 16
  %i.ku = load i32, ptr %i.i, align 4             ; 2 uses
  store i32 %i.ku, ptr %i.bb, align 4
  %i.kv = load ptr, ptr %i.x, align 8
  %i.kw = call ptr @tvb_get_string_enc(ptr noundef %i.kv, ptr noundef %0, i32 noundef %i.kr, i32 noundef %i.ku, i32 noundef 2)
  store ptr %i.kw, ptr %i.bc, align 8
  %i.kx = load i32, ptr %i.i, align 4
  %i.ky = add i32 %i.kx, %i.kr                    ; 2 uses
  %i.kz = sub i32 %i.iy, %i.ky
  %i.la = call i32 @tvb_skip_wsp(ptr noundef %0, i32 noundef %i.ky, i32 noundef %i.kz) ; 0 uses
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah
  %i.lb = phi ptr [ %i.au, %bb.ah ], [ null, %bb.ag ]
  %i.lc = phi ptr [ %i.ba, %bb.ah ], [ %i.ax, %bb.ag ]
  %i.ld = phi ptr [ %i.ax, %bb.ah ], [ %i.au, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #7
  %i.le = load ptr, ptr %i.t, align 8
  call void @col_append_sep_str(ptr noundef %i.le, i32 noundef 25, ptr noundef null, ptr noundef nonnull @.str.72)
  %i.lf = load i32, ptr @hf_nats_hmsg, align 4
  %i.lg = load i64, ptr %5, align 16
  %i.lh = load ptr, ptr %i.an, align 8
  %i.li = call fastcc i32 @dissect_nats_with_payload(ptr noundef %0, i32 noundef %.091116, i32 noundef %i.iy, i64 %i.lg, ptr %i.lh, ptr noundef nonnull byval(%struct._nats_request_token) align 8 %i.ao, ptr noundef nonnull byval(%struct._nats_request_token) align 8 %i.lc, ptr noundef nonnull %i.ar, ptr noundef %i.lb, ptr noundef nonnull %i.ld, ptr noundef %1, ptr noundef %i.s, i32 noundef %i.lf)
  br label %dissect_nats_hmsg.exit

dissect_nats_hmsg.exit:                           ; preds = %nats_parse_tokens.exit.thread32.i, %bb.ai
  %.019.i = phi i32 [ %i.li, %bb.ai ], [ 0, %nats_parse_tokens.exit.thread32.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  br label %dissect_nats_sub.exit

bb.aj:                                            ; preds = %bb.aa
  %i.lj = call i32 @tvb_strncaseeql(ptr noundef %0, i32 noundef %.091116, ptr noundef nonnull @.str.64, i64 noundef 4)
  %i.lk = icmp eq i32 %i.lj, 0
  br i1 %i.lk, label %bb.ak, label %bb.ar

bb.ak:                                            ; preds = %bb.aj
  %i.ll = load i32, ptr %i.n, align 4             ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %4, i8 0, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #7
  %i.lm = sub i32 %i.ll, %.091116
  %i.ln = call zeroext i1 @tvb_get_token_len_length(ptr noundef %0, i32 noundef %.091116, i32 noundef %i.lm, ptr noundef nonnull %i.h, ptr noundef null)
  br i1 %i.ln, label %bb.al, label %nats_parse_tokens.exit.thread32.i99

bb.al:                                            ; preds = %bb.ak
  store i32 %.091116, ptr %4, align 16
  %i.lo = load i32, ptr %i.h, align 4             ; 2 uses
  store i32 %i.lo, ptr %i.y, align 4
  %i.lp = load ptr, ptr %i.x, align 8
  %i.lq = call ptr @tvb_get_string_enc(ptr noundef %i.lp, ptr noundef %0, i32 noundef %.091116, i32 noundef %i.lo, i32 noundef 2)
  store ptr %i.lq, ptr %i.z, align 8
  %i.lr = load i32, ptr %i.h, align 4
  %i.ls = add i32 %i.lr, %.091116                 ; 2 uses
  %i.lt = sub i32 %i.ll, %i.ls
  %i.lu = call i32 @tvb_skip_wsp(ptr noundef %0, i32 noundef %i.ls, i32 noundef %i.lt) ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #7
  %i.lv = sub i32 %i.ll, %i.lu
  %i.lw = call zeroext i1 @tvb_get_token_len_length(ptr noundef %0, i32 noundef %i.lu, i32 noundef %i.lv, ptr noundef nonnull %i.h, ptr noundef null)
  br i1 %i.lw, label %bb.am, label %nats_parse_tokens.exit.thread32.i99

bb.am:                                            ; preds = %bb.al
  store i32 %i.lu, ptr %i.aa, align 16
  %i.lx = load i32, ptr %i.h, align 4             ; 2 uses
  store i32 %i.lx, ptr %i.ab, align 4
  %i.ly = load ptr, ptr %i.x, align 8
  %i.lz = call ptr @tvb_get_string_enc(ptr noundef %i.ly, ptr noundef %0, i32 noundef %i.lu, i32 noundef %i.lx, i32 noundef 2)
  store ptr %i.lz, ptr %i.ac, align 8
  %i.ma = load i32, ptr %i.h, align 4
  %i.mb = add i32 %i.ma, %i.lu                    ; 2 uses
  %i.mc = sub i32 %i.ll, %i.mb
  %i.md = call i32 @tvb_skip_wsp(ptr noundef %0, i32 noundef %i.mb, i32 noundef %i.mc) ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #7
  %i.me = sub i32 %i.ll, %i.md
  %i.mf = call zeroext i1 @tvb_get_token_len_length(ptr noundef %0, i32 noundef %i.md, i32 noundef %i.me, ptr noundef nonnull %i.h, ptr noundef null)
  br i1 %i.mf, label %bb.an, label %nats_parse_tokens.exit.thread32.i99

bb.an:                                            ; preds = %bb.am
  store i32 %i.md, ptr %i.ad, align 16
  %i.mg = load i32, ptr %i.h, align 4             ; 2 uses
  store i32 %i.mg, ptr %i.ae, align 4
  %i.mh = load ptr, ptr %i.x, align 8
  %i.mi = call ptr @tvb_get_string_enc(ptr noundef %i.mh, ptr noundef %0, i32 noundef %i.md, i32 noundef %i.mg, i32 noundef 2)
  store ptr %i.mi, ptr %i.af, align 8
  %i.mj = load i32, ptr %i.h, align 4
  %i.mk = add i32 %i.mj, %i.md                    ; 2 uses
  %i.ml = sub i32 %i.ll, %i.mk
  %i.mm = call i32 @tvb_skip_wsp(ptr noundef %0, i32 noundef %i.mk, i32 noundef %i.ml) ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #7
  %i.mn = sub i32 %i.ll, %i.mm
  %i.mo = call zeroext i1 @tvb_get_token_len_length(ptr noundef %0, i32 noundef %i.mm, i32 noundef %i.mn, ptr noundef nonnull %i.h, ptr noundef null)
  br i1 %i.mo, label %bb.ao, label %nats_parse_tokens.exit.thread32.i99

bb.ao:                                            ; preds = %bb.an
  store i32 %i.mm, ptr %i.ag, align 16
  %i.mp = load i32, ptr %i.h, align 4             ; 2 uses
  store i32 %i.mp, ptr %i.ah, align 4
  %i.mq = load ptr, ptr %i.x, align 8
  %i.mr = call ptr @tvb_get_string_enc(ptr noundef %i.mq, ptr noundef %0, i32 noundef %i.mm, i32 noundef %i.mp, i32 noundef 2)
  store ptr %i.mr, ptr %i.ai, align 8
  %i.ms = load i32, ptr %i.h, align 4
  %i.mt = add i32 %i.ms, %i.mm                    ; 2 uses
  %i.mu = sub i32 %i.ll, %i.mt
  %i.mv = call i32 @tvb_skip_wsp(ptr noundef %0, i32 noundef %i.mt, i32 noundef %i.mu) ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #7
  %i.mw = sub i32 %i.ll, %i.mv
  %i.mx = call zeroext i1 @tvb_get_token_len_length(ptr noundef %0, i32 noundef %i.mv, i32 noundef %i.mw, ptr noundef nonnull %i.h, ptr noundef null)
  br i1 %i.mx, label %bb.ap, label %bb.aq

nats_parse_tokens.exit.thread32.i99:              ; preds = %bb.an, %bb.am, %bb.al, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #7
  br label %dissect_nats_hpub.exit

bb.ap:                                            ; preds = %bb.ao
  store i32 %i.mv, ptr %i.aj, align 16
  %i.my = load i32, ptr %i.h, align 4             ; 2 uses
  store i32 %i.my, ptr %i.ak, align 4
  %i.mz = load ptr, ptr %i.x, align 8
  %i.na = call ptr @tvb_get_string_enc(ptr noundef %i.mz, ptr noundef %0, i32 noundef %i.mv, i32 noundef %i.my, i32 noundef 2)
  store ptr %i.na, ptr %i.al, align 8
  %i.nb = load i32, ptr %i.h, align 4
  %i.nc = add i32 %i.nb, %i.mv                    ; 2 uses
  %i.nd = sub i32 %i.ll, %i.nc
  %i.ne = call i32 @tvb_skip_wsp(ptr noundef %0, i32 noundef %i.nc, i32 noundef %i.nd) ; 0 uses
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ao, %bb.ap
  %i.nf = phi ptr [ %i.ad, %bb.ap ], [ null, %bb.ao ]
  %i.ng = phi ptr [ %i.aj, %bb.ap ], [ %i.ag, %bb.ao ]
  %i.nh = phi ptr [ %i.ag, %bb.ap ], [ %i.ad, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #7
  %i.ni = load ptr, ptr %i.t, align 8
  call void @col_append_sep_str(ptr noundef %i.ni, i32 noundef 25, ptr noundef null, ptr noundef nonnull @.str.64)
  %i.nj = load i32, ptr @hf_nats_hpub, align 4
  %i.nk = load i64, ptr %4, align 16
  %i.nl = load ptr, ptr %i.z, align 8
  %i.nm = call fastcc i32 @dissect_nats_with_payload(ptr noundef %0, i32 noundef %.091116, i32 noundef %i.ll, i64 %i.nk, ptr %i.nl, ptr noundef nonnull byval(%struct._nats_request_token) align 8 %i.aa, ptr noundef nonnull byval(%struct._nats_request_token) align 8 %i.ng, ptr noundef null, ptr noundef %i.nf, ptr noundef nonnull %i.nh, ptr noundef %1, ptr noundef %i.s, i32 noundef %i.nj)
  br label %dissect_nats_hpub.exit

dissect_nats_hpub.exit:                           ; preds = %nats_parse_tokens.exit.thread32.i99, %bb.aq
  %.019.i100 = phi i32 [ %i.nm, %bb.aq ], [ 0, %nats_parse_tokens.exit.thread32.i99 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  br label %dissect_nats_sub.exit

bb.ar:                                            ; preds = %bb.aj
  %i.nn = call i32 @tvb_strncaseeql(ptr noundef %0, i32 noundef %.091116, ptr noundef nonnull @.str.74, i64 noundef 4)
  %i.no = icmp eq i32 %i.nn, 0
  br i1 %i.no, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.np = load i32, ptr %i.n, align 4             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #7
  %i.nq = sub i32 %i.np, %.091116                 ; 3 uses
  %i.nr = call zeroext i1 @tvb_get_token_len_length(ptr noundef %0, i32 noundef %.091116, i32 noundef %i.nq, ptr noundef nonnull %i.g, ptr noundef null)
  br i1 %i.nr, label %nats_parse_tokens.exit.thread.i108, label %nats_parse_tokens.exit.i106

nats_parse_tokens.exit.thread.i108:               ; preds = %bb.as
  %i.ns = load i32, ptr %i.g, align 4             ; 2 uses
  %i.nt = load ptr, ptr %i.x, align 8
  %i.nu = call ptr @tvb_get_string_enc(ptr noundef %i.nt, ptr noundef %0, i32 noundef %.091116, i32 noundef %i.ns, i32 noundef 2)
  %i.nv = load i32, ptr %i.g, align 4
  %i.nw = add i32 %i.nv, %.091116                 ; 2 uses
  %i.nx = sub i32 %i.np, %i.nw
  %i.ny = call i32 @tvb_skip_wsp(ptr noundef %0, i32 noundef %i.nw, i32 noundef %i.nx) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #7
  %i.nz = load ptr, ptr %i.t, align 8
  call void @col_append_sep_str(ptr noundef %i.nz, i32 noundef 25, ptr noundef null, ptr noundef nonnull @.str.74)
  %i.oa = load i32, ptr @hf_nats_ping, align 4
  %i.ob = call ptr @proto_tree_add_item(ptr noundef %i.s, i32 noundef %i.oa, ptr noundef %0, i32 noundef %.091116, i32 noundef %i.nq, i32 noundef 0)
  %i.oc = load i32, ptr @ett_nats, align 4
  %i.od = call ptr @proto_item_add_subtree(ptr noundef %i.ob, i32 noundef %i.oc)
  %i.oe = load i32, ptr @hf_nats_op, align 4
  %i.of = call ptr @proto_tree_add_string(ptr noundef %i.od, i32 noundef %i.oe, ptr noundef %0, i32 noundef %.091116, i32 noundef %i.ns, ptr noundef %i.nu) ; 0 uses
  br label %dissect_nats_sub.exit

nats_parse_tokens.exit.i106:                      ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #7
  br label %dissect_nats_sub.exit.thread

bb.at:                                            ; preds = %bb.ar
  %i.og = call i32 @tvb_strncaseeql(ptr noundef %0, i32 noundef %.091116, ptr noundef nonnull @.str.76, i64 noundef 4)
  %i.oh = icmp eq i32 %i.og, 0
  br i1 %i.oh, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.oi = load i32, ptr %i.n, align 4             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
  %i.oj = sub i32 %i.oi, %.091116                 ; 3 uses
  %i.ok = call zeroext i1 @tvb_get_token_len_length(ptr noundef %0, i32 noundef %.091116, i32 noundef %i.oj, ptr noundef nonnull %i.f, ptr noundef null)
  br i1 %i.ok, label %nats_parse_tokens.exit.thread.i111, label %nats_parse_tokens.exit.i109

nats_parse_tokens.exit.thread.i111:               ; preds = %bb.au
  %i.ol = load i32, ptr %i.f, align 4             ; 2 uses
  %i.om = load ptr, ptr %i.x, align 8
  %i.on = call ptr @tvb_get_string_enc(ptr noundef %i.om, ptr noundef %0, i32 noundef %.091116, i32 noundef %i.ol, i32 noundef 2)
  %i.oo = load i32, ptr %i.f, align 4
  %i.op = add i32 %i.oo, %.091116                 ; 2 uses
  %i.oq = sub i32 %i.oi, %i.op
  %i.or = call i32 @tvb_skip_wsp(ptr noundef %0, i32 noundef %i.op, i32 noundef %i.oq) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  %i.os = load ptr, ptr %i.t, align 8
  call void @col_append_sep_str(ptr noundef %i.os, i32 noundef 25, ptr noundef null, ptr noundef nonnull @.str.76)
  %i.ot = load i32, ptr @hf_nats_pong, align 4
  %i.ou = call ptr @proto_tree_add_item(ptr noundef %i.s, i32 noundef %i.ot, ptr noundef %0, i32 noundef %.091116, i32 noundef %i.oj, i32 noundef 0)
  %i.ov = load i32, ptr @ett_nats, align 4
  %i.ow = call ptr @proto_item_add_subtree(ptr noundef %i.ou, i32 noundef %i.ov)
  %i.ox = load i32, ptr @hf_nats_op, align 4
  %i.oy = call ptr @proto_tree_add_string(ptr noundef %i.ow, i32 noundef %i.ox, ptr noundef %0, i32 noundef %.091116, i32 noundef %i.ol, ptr noundef %i.on) ; 0 uses
  br label %dissect_nats_sub.exit

nats_parse_tokens.exit.i109:                      ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  br label %dissect_nats_sub.exit.thread

bb.av:                                            ; preds = %bb.at
  %i.oz = call i32 @tvb_strncaseeql(ptr noundef %0, i32 noundef %.091116, ptr noundef nonnull @.str.58, i64 noundef 4)
  %i.pa = icmp eq i32 %i.oz, 0
  br i1 %i.pa, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.pb = load i32, ptr %i.n, align 4             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  %i.pc = sub i32 %i.pb, %.091116                 ; 4 uses
  %i.pd = call zeroext i1 @tvb_get_token_len_length(ptr noundef %0, i32 noundef %.091116, i32 noundef %i.pc, ptr noundef nonnull %i.e, ptr noundef null) ; 0 uses
  %i.pe = load i32, ptr %i.e, align 4             ; 2 uses
  %i.pf = add i32 %i.pe, %.091116
  %i.pg = sub i32 %i.pc, %i.pe
  %i.ph = call i32 @tvb_skip_wsp(ptr noundef %0, i32 noundef %i.pf, i32 noundef %i.pg) ; 3 uses
  %i.pi = sub i32 %i.pb, %i.ph
  %i.pj = add i32 %i.pi, -2                       ; 2 uses
  %i.pk = load ptr, ptr %i.t, align 8
  call void @col_append_sep_str(ptr noundef %i.pk, i32 noundef 25, ptr noundef null, ptr noundef nonnull @.str.58)
  %i.pl = load i32, ptr @hf_nats_info, align 4
  %i.pm = call ptr @proto_tree_add_item(ptr noundef %i.s, i32 noundef %i.pl, ptr noundef %0, i32 noundef %.091116, i32 noundef %i.pc, i32 noundef 0)
  %i.pn = load i32, ptr @ett_nats, align 4
  %i.po = call ptr @proto_item_add_subtree(ptr noundef %i.pm, i32 noundef %i.pn) ; 2 uses
  %i.pp = load i32, ptr @hf_nats_op, align 4
  %i.pq = load i32, ptr %i.e, align 4
  %i.pr = call ptr @proto_tree_add_item(ptr noundef %i.po, i32 noundef %i.pp, ptr noundef %0, i32 noundef %.091116, i32 noundef %i.pq, i32 noundef 0) ; 0 uses
  %i.ps = load i32, ptr @hf_nats_features, align 4
  %i.pt = call ptr @proto_tree_add_item(ptr noundef %i.po, i32 noundef %i.ps, ptr noundef %0, i32 noundef %i.ph, i32 noundef %i.pj, i32 noundef 0)
  %i.pu = load i32, ptr @ett_nats, align 4
  %i.pv = call ptr @proto_item_add_subtree(ptr noundef %i.pt, i32 noundef %i.pu)
  %i.pw = call ptr @tvb_new_subset_length(ptr noundef %0, i32 noundef %i.ph, i32 noundef %i.pj)
  %i.px = load ptr, ptr @json_handle, align 8
  %i.py = call i32 @call_dissector(ptr noundef %i.px, ptr noundef %i.pw, ptr noundef %1, ptr noundef %i.pv) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  br label %dissect_nats_sub.exit

bb.ax:                                            ; preds = %bb.av
  %i.pz = call i32 @tvb_strncaseeql(ptr noundef %0, i32 noundef %.091116, ptr noundef nonnull @.str.80, i64 noundef 4)
  %i.qa = icmp eq i32 %i.pz, 0
  br i1 %i.qa, label %bb.ay, label %dissect_nats_sub.exit.thread

bb.ay:                                            ; preds = %bb.ax
  %i.qb = load i32, ptr %i.n, align 4             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  %i.qc = sub i32 %i.qb, %.091116                 ; 4 uses
  %i.qd = call zeroext i1 @tvb_get_token_len_length(ptr noundef %0, i32 noundef %.091116, i32 noundef %i.qc, ptr noundef nonnull %i.d, ptr noundef null) ; 0 uses
  %i.qe = load i32, ptr %i.d, align 4             ; 2 uses
  %i.qf = add i32 %i.qe, %.091116
  %i.qg = sub i32 %i.qc, %i.qe
  %i.qh = call i32 @tvb_skip_wsp(ptr noundef %0, i32 noundef %i.qf, i32 noundef %i.qg) ; 2 uses
  %i.qi = add i32 %i.qb, -2
  %i.qj = sub i32 %i.qi, %i.qh
  %i.qk = load ptr, ptr %i.t, align 8
  call void @col_append_sep_str(ptr noundef %i.qk, i32 noundef 25, ptr noundef null, ptr noundef nonnull @.str.80)
  %i.ql = load i32, ptr @hf_nats_err, align 4
  %i.qm = call ptr @proto_tree_add_item(ptr noundef %i.s, i32 noundef %i.ql, ptr noundef %0, i32 noundef %.091116, i32 noundef %i.qc, i32 noundef 0)
  %i.qn = load i32, ptr @ett_nats, align 4
  %i.qo = call ptr @proto_item_add_subtree(ptr noundef %i.qm, i32 noundef %i.qn) ; 2 uses
  %i.qp = load i32, ptr @hf_nats_op, align 4
  %i.qq = load i32, ptr %i.d, align 4
  %i.qr = call ptr @proto_tree_add_item(ptr noundef %i.qo, i32 noundef %i.qp, ptr noundef %0, i32 noundef %.091116, i32 noundef %i.qq, i32 noundef 0) ; 0 uses
  %i.qs = load i32, ptr @hf_nats_err_msg, align 4
  %i.qt = call ptr @proto_tree_add_item(ptr noundef %i.qo, i32 noundef %i.qs, ptr noundef %0, i32 noundef %i.qh, i32 noundef %i.qj, i32 noundef 2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  br label %dissect_nats_sub.exit

bb.az:                                            ; preds = %bb.b
  %i.qu = call i32 @tvb_strncaseeql(ptr noundef %0, i32 noundef %.091116, ptr noundef nonnull @.str.68, i64 noundef 5)
  %i.qv = icmp eq i32 %i.qu, 0
  br i1 %i.qv, label %bb.ba, label %dissect_nats_sub.exit.thread

bb.ba:                                            ; preds = %bb.az
  %i.qw = load i32, ptr %i.n, align 4             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store i64 0, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.qx = sub i32 %i.qw, %.091116                 ; 4 uses
  %i.qy = call zeroext i1 @tvb_get_token_len_length(ptr noundef %0, i32 noundef %.091116, i32 noundef %i.qx, ptr noundef nonnull %i.b, ptr noundef null)
  br i1 %i.qy, label %bb.bb, label %nats_parse_tokens.exit.thread28.i

bb.bb:                                            ; preds = %bb.ba
  %i.qz = load i32, ptr %i.b, align 4             ; 2 uses
  %i.ra = load ptr, ptr %i.x, align 8
  %i.rb = call ptr @tvb_get_string_enc(ptr noundef %i.ra, ptr noundef %0, i32 noundef %.091116, i32 noundef %i.qz, i32 noundef 2)
  %i.rc = load i32, ptr %i.b, align 4
  %i.rd = add i32 %i.rc, %.091116                 ; 2 uses
  %i.re = sub i32 %i.qw, %i.rd
  %i.rf = call i32 @tvb_skip_wsp(ptr noundef %0, i32 noundef %i.rd, i32 noundef %i.re) ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.rg = sub i32 %i.qw, %i.rf
  %i.rh = call zeroext i1 @tvb_get_token_len_length(ptr noundef %0, i32 noundef %i.rf, i32 noundef %i.rg, ptr noundef nonnull %i.b, ptr noundef null)
  br i1 %i.rh, label %bb.bc, label %nats_parse_tokens.exit.thread28.i

bb.bc:                                            ; preds = %bb.bb
  %i.ri = load i32, ptr %i.b, align 4             ; 2 uses
  %i.rj = load ptr, ptr %i.x, align 8
  %i.rk = call ptr @tvb_get_string_enc(ptr noundef %i.rj, ptr noundef %0, i32 noundef %i.rf, i32 noundef %i.ri, i32 noundef 2)
  %i.rl = load i32, ptr %i.b, align 4
  %i.rm = add i32 %i.rl, %i.rf                    ; 2 uses
  %i.rn = sub i32 %i.qw, %i.rm
  %i.ro = call i32 @tvb_skip_wsp(ptr noundef %0, i32 noundef %i.rm, i32 noundef %i.rn) ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.rp = sub i32 %i.qw, %i.ro
  %i.rq = call zeroext i1 @tvb_get_token_len_length(ptr noundef %0, i32 noundef %i.ro, i32 noundef %i.rp, ptr noundef nonnull %i.b, ptr noundef null) ; 2 uses
  br i1 %i.rq, label %nats_parse_tokens.exit.thread.loopexit.i113, label %nats_parse_tokens.exit.thread.i112

nats_parse_tokens.exit.thread.loopexit.i113:      ; preds = %bb.bc
  %i.rr = load i32, ptr %i.b, align 4             ; 2 uses
  %i.rs = load ptr, ptr %i.x, align 8
  %i.rt = call ptr @tvb_get_string_enc(ptr noundef %i.rs, ptr noundef %0, i32 noundef %i.ro, i32 noundef %i.rr, i32 noundef 2)
  %i.ru = load i32, ptr %i.b, align 4
  %i.rv = add i32 %i.ru, %i.ro                    ; 2 uses
  %i.rw = sub i32 %i.qw, %i.rv
  %i.rx = call i32 @tvb_skip_wsp(ptr noundef %0, i32 noundef %i.rv, i32 noundef %i.rw) ; 0 uses
  br label %nats_parse_tokens.exit.thread.i112

nats_parse_tokens.exit.thread28.i:                ; preds = %bb.bb, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  br label %dissect_nats_unsub.exit

nats_parse_tokens.exit.thread.i112:               ; preds = %nats_parse_tokens.exit.thread.loopexit.i113, %bb.bc
  %.sroa.15.0.i = phi i32 [ %i.ro, %nats_parse_tokens.exit.thread.loopexit.i113 ], [ 0, %bb.bc ]
  %.sroa.17.0.i = phi i32 [ %i.rr, %nats_parse_tokens.exit.thread.loopexit.i113 ], [ 0, %bb.bc ]
  %.sroa.19.0.i = phi ptr [ %i.rt, %nats_parse_tokens.exit.thread.loopexit.i113 ], [ null, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  %i.ry = load ptr, ptr %i.t, align 8
  call void @col_append_sep_str(ptr noundef %i.ry, i32 noundef 25, ptr noundef null, ptr noundef nonnull @.str.68)
  %i.rz = load i32, ptr @hf_nats_unsub, align 4
  %i.sa = call ptr @proto_tree_add_item(ptr noundef %i.s, i32 noundef %i.rz, ptr noundef %0, i32 noundef %.091116, i32 noundef %i.qx, i32 noundef 0)
  %i.sb = load i32, ptr @ett_nats, align 4
  %i.sc = call ptr @proto_item_add_subtree(ptr noundef %i.sa, i32 noundef %i.sb) ; 3 uses
  %i.sd = load i32, ptr @hf_nats_op, align 4
  %i.se = call ptr @proto_tree_add_string(ptr noundef %i.sc, i32 noundef %i.sd, ptr noundef %0, i32 noundef %.091116, i32 noundef %i.qz, ptr noundef %i.rb) ; 0 uses
  %i.sf = load i32, ptr @hf_nats_subscription_id, align 4
  %i.sg = call ptr @proto_tree_add_string(ptr noundef %i.sc, i32 noundef %i.sf, ptr noundef %0, i32 noundef %i.rf, i32 noundef %i.ri, ptr noundef %i.rk) ; 0 uses
  br i1 %i.rq, label %bb.bd, label %dissect_nats_unsub.exit

bb.bd:                                            ; preds = %nats_parse_tokens.exit.thread.i112
  %i.sh = call zeroext i1 @ws_strtou64(ptr noundef %.sroa.19.0.i, ptr noundef null, ptr noundef nonnull %i.c)
  br i1 %i.sh, label %bb.be, label %dissect_nats_unsub.exit

bb.be:                                            ; preds = %bb.bd
  %i.si = load i32, ptr @hf_nats_max_msgs, align 4
  %i.sj = load i64, ptr %i.c, align 8
  %i.sk = call ptr @proto_tree_add_uint64(ptr noundef %i.sc, i32 noundef %i.si, ptr noundef %0, i32 noundef %.sroa.15.0.i, i32 noundef %.sroa.17.0.i, i64 noundef %i.sj) ; 0 uses
  br label %dissect_nats_unsub.exit

dissect_nats_unsub.exit:                          ; preds = %nats_parse_tokens.exit.thread28.i, %nats_parse_tokens.exit.thread.i112, %bb.bd, %bb.be
  %.1.i = phi i32 [ 0, %nats_parse_tokens.exit.thread28.i ], [ 0, %bb.bd ], [ %i.qx, %bb.be ], [ %i.qx, %nats_parse_tokens.exit.thread.i112 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  br label %dissect_nats_sub.exit

bb.bf:                                            ; preds = %bb.b
  %i.sl = call i32 @tvb_strncaseeql(ptr noundef %0, i32 noundef %.091116, ptr noundef nonnull @.str.60, i64 noundef 7)
  %i.sm = icmp eq i32 %i.sl, 0
  br i1 %i.sm, label %bb.bg, label %dissect_nats_sub.exit.thread

bb.bg:                                            ; preds = %bb.bf
  %i.sn = load i32, ptr %i.n, align 4             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.so = sub i32 %i.sn, %.091116                 ; 4 uses
  %i.sp = call zeroext i1 @tvb_get_token_len_length(ptr noundef %0, i32 noundef %.091116, i32 noundef %i.so, ptr noundef nonnull %i.a, ptr noundef null) ; 0 uses
  %i.sq = load i32, ptr %i.a, align 4             ; 2 uses
  %i.sr = add i32 %i.sq, %.091116
  %i.ss = sub i32 %i.so, %i.sq
  %i.st = call i32 @tvb_skip_wsp(ptr noundef %0, i32 noundef %i.sr, i32 noundef %i.ss) ; 3 uses
  %i.su = sub i32 %i.sn, %i.st
  %i.sv = add i32 %i.su, -2                       ; 2 uses
  %i.sw = load ptr, ptr %i.t, align 8
  call void @col_append_sep_str(ptr noundef %i.sw, i32 noundef 25, ptr noundef null, ptr noundef nonnull @.str.60)
  %i.sx = load i32, ptr @hf_nats_connect, align 4
  %i.sy = call ptr @proto_tree_add_item(ptr noundef %i.s, i32 noundef %i.sx, ptr noundef %0, i32 noundef %.091116, i32 noundef %i.so, i32 noundef 0)
  %i.sz = load i32, ptr @ett_nats, align 4
  %i.ta = call ptr @proto_item_add_subtree(ptr noundef %i.sy, i32 noundef %i.sz) ; 2 uses
  %i.tb = load i32, ptr @hf_nats_op, align 4
  %i.tc = load i32, ptr %i.a, align 4
  %i.td = call ptr @proto_tree_add_item(ptr noundef %i.ta, i32 noundef %i.tb, ptr noundef %0, i32 noundef %.091116, i32 noundef %i.tc, i32 noundef 0) ; 0 uses
  %i.te = load i32, ptr @hf_nats_features, align 4
  %i.tf = call ptr @proto_tree_add_item(ptr noundef %i.ta, i32 noundef %i.te, ptr noundef %0, i32 noundef %i.st, i32 noundef %i.sv, i32 noundef 0)
  %i.tg = load i32, ptr @ett_nats, align 4
  %i.th = call ptr @proto_item_add_subtree(ptr noundef %i.tf, i32 noundef %i.tg)
  %i.ti = call ptr @tvb_new_subset_length(ptr noundef %0, i32 noundef %i.st, i32 noundef %i.sv)
  %i.tj = load ptr, ptr @json_handle, align 8
  %i.tk = call i32 @call_dissector(ptr noundef %i.tj, ptr noundef %i.ti, ptr noundef %1, ptr noundef %i.th) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %dissect_nats_sub.exit

dissect_nats_sub.exit.thread:                     ; preds = %bb.b, %bb.bf, %nats_parse_tokens.exit.thread52.i, %bb.y, %nats_parse_tokens.exit.i, %nats_parse_tokens.exit.i106, %bb.ax, %bb.az, %nats_parse_tokens.exit.i109
  %i.tl = load i32, ptr %i.n, align 4
  br label %bb.bh

dissect_nats_sub.exit:                            ; preds = %nats_parse_tokens.exit.thread.i111, %nats_parse_tokens.exit.thread.i108, %nats_parse_tokens.exit.thread.i98, %bb.x, %bb.bg, %dissect_nats_unsub.exit, %dissect_nats_hmsg.exit, %bb.aw, %bb.ay, %dissect_nats_hpub.exit, %dissect_nats_msg.exit, %dissect_nats_pub.exit
  %.0 = phi i32 [ %i.nq, %nats_parse_tokens.exit.thread.i108 ], [ %.017.i, %dissect_nats_msg.exit ], [ %.017.i94, %dissect_nats_pub.exit ], [ %.1.i, %dissect_nats_unsub.exit ], [ %i.oj, %nats_parse_tokens.exit.thread.i111 ], [ %i.so, %bb.bg ], [ %.019.i, %dissect_nats_hmsg.exit ], [ %.019.i100, %dissect_nats_hpub.exit ], [ %i.gf, %bb.x ], [ %i.ig, %nats_parse_tokens.exit.thread.i98 ], [ %i.pc, %bb.aw ], [ %i.qc, %bb.ay ]
  %.0.fr = freeze i32 %.0                         ; 2 uses
  %i.tm = icmp eq i32 %.0.fr, 0
  %i.tn = load i32, ptr %i.n, align 4
  %i.to = add i32 %.0.fr, %.091116
  %spec.select = select i1 %i.tm, i32 %i.tn, i32 %i.to
  br label %bb.bh
end_hunk_0
