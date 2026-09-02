Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-vj-comp?download=true
inline.NumInlined: 30
inline.NumDeleted: 8
begin_hunk_0_@dissect_vjc_comp:bb.a
  %i.fx = load i32, ptr %i.c, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  br label %bb.be

bb.be:                                            ; preds = %bb.ba, %vjc_delta_uint.exit
  %.3365 = phi i32 [ %.2364, %bb.ba ], [ %i.fw, %vjc_delta_uint.exit ] ; 5 uses
  %.0260 = phi i32 [ 0, %bb.ba ], [ %i.fx, %vjc_delta_uint.exit ] ; 2 uses
  %i.fy = and i32 %i.bh, 8
  %.not291 = icmp eq i32 %i.fy, 0
  br i1 %.not291, label %proto_item_set_generated.exit309, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.fz = load i32, ptr @hf_vjc_d_seq, align 4    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.ga = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.3365)
  %.not.i319 = icmp eq i8 %i.ga, 0
  br i1 %.not.i319, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.gb = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.au, i32 noundef %i.fz, ptr noundef %0, i32 noundef %.3365, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.b) ; 0 uses
  br label %vjc_delta_uint.exit321

bb.bh:                                            ; preds = %bb.bf
  %i.gc = add nuw nsw i32 %.3365, 1               ; 2 uses
  %i.gd = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.au, i32 noundef %i.fz, ptr noundef %0, i32 noundef %i.gc, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %i.b) ; 0 uses
  br label %vjc_delta_uint.exit321

vjc_delta_uint.exit321:                           ; preds = %bb.bg, %bb.bh
  %.8370 = phi i32 [ %i.gc, %bb.bh ], [ %.3365, %bb.bg ]
  %.sink12.i320 = phi i32 [ 2, %bb.bh ], [ 1, %bb.bg ]
  %i.ge = add nuw nsw i32 %.sink12.i320, %.8370
  %i.gf = load i32, ptr %i.b, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %proto_item_set_generated.exit309

proto_item_set_generated.exit309:                 ; preds = %bb.ai, %bb.ai, %bb.as, %bb.ar, %proto_item_set_generated.exit312, %bb.an, %bb.am, %proto_item_set_generated.exit306, %bb.be, %vjc_delta_uint.exit321
  %.not287377382432 = phi i1 [ false, %bb.as ], [ %.not287377382433447, %vjc_delta_uint.exit321 ], [ %.not287377383, %bb.ai ], [ false, %bb.an ], [ %.not287377382433447, %bb.be ], [ false, %proto_item_set_generated.exit306 ], [ false, %bb.am ], [ false, %proto_item_set_generated.exit312 ], [ false, %bb.ar ], [ %.not287377383, %bb.ai ]
  %.1.i376384429 = phi ptr [ %i.dj, %bb.as ], [ %.1.i376384430449, %vjc_delta_uint.exit321 ], [ %.1.i376385, %bb.ai ], [ %i.dj, %bb.an ], [ %.1.i376384430449, %bb.be ], [ %i.dj, %proto_item_set_generated.exit306 ], [ %i.dj, %bb.am ], [ %i.dj, %proto_item_set_generated.exit312 ], [ %i.dj, %bb.ar ], [ %.1.i376385, %bb.ai ] ; 2 uses
  %.0255386428 = phi ptr [ %i.do, %bb.as ], [ %.0255386427452, %vjc_delta_uint.exit321 ], [ null, %bb.ai ], [ %i.do, %bb.an ], [ %.0255386427452, %bb.be ], [ %i.do, %proto_item_set_generated.exit306 ], [ %i.do, %bb.am ], [ %i.do, %proto_item_set_generated.exit312 ], [ %i.do, %bb.ar ], [ null, %bb.ai ] ; 5 uses
  %i.gg = phi i1 [ false, %bb.as ], [ %i.fc, %vjc_delta_uint.exit321 ], [ true, %bb.ai ], [ false, %bb.an ], [ %i.fc, %bb.be ], [ false, %proto_item_set_generated.exit306 ], [ false, %bb.am ], [ false, %proto_item_set_generated.exit312 ], [ false, %bb.ar ], [ true, %bb.ai ]
  %.4366 = phi i32 [ %i.dw, %bb.as ], [ %i.ge, %vjc_delta_uint.exit321 ], [ %i.dt, %bb.ai ], [ %i.dw, %bb.an ], [ %.3365, %bb.be ], [ %i.dw, %proto_item_set_generated.exit306 ], [ %i.dw, %bb.am ], [ %i.dw, %proto_item_set_generated.exit312 ], [ %i.dw, %bb.ar ], [ %i.dt, %bb.ai ] ; 8 uses
  %.0262 = phi i32 [ %i.en, %bb.as ], [ %i.gf, %vjc_delta_uint.exit321 ], [ 0, %bb.ai ], [ %i.dx, %bb.an ], [ 0, %bb.be ], [ %i.dx, %proto_item_set_generated.exit306 ], [ %i.dx, %bb.am ], [ %i.en, %proto_item_set_generated.exit312 ], [ %i.en, %bb.ar ], [ 0, %bb.ai ]
  %.1261 = phi i32 [ %i.en, %bb.as ], [ %.0260, %vjc_delta_uint.exit321 ], [ 0, %bb.ai ], [ 0, %bb.an ], [ %.0260, %bb.be ], [ 0, %proto_item_set_generated.exit306 ], [ 0, %bb.am ], [ %i.en, %proto_item_set_generated.exit312 ], [ %i.en, %bb.ar ], [ 0, %bb.ai ]
  %.1259 = phi i32 [ 0, %bb.as ], [ %.0258, %vjc_delta_uint.exit321 ], [ 0, %bb.ai ], [ 0, %bb.an ], [ %.0258, %bb.be ], [ 0, %proto_item_set_generated.exit306 ], [ 0, %bb.am ], [ 0, %proto_item_set_generated.exit312 ], [ 0, %bb.ar ], [ 0, %bb.ai ]
  %i.gh = and i8 %.0257, 32
  %.not294 = icmp eq i8 %i.gh, 0
  %i.gi = load i32, ptr @hf_vjc_d_ipid, align 4   ; 3 uses
  br i1 %.not294, label %bb.bl, label %bb.bi

bb.bi:                                            ; preds = %proto_item_set_generated.exit309
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.gj = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.4366)
  %.not.i322 = icmp eq i8 %i.gj, 0
  br i1 %.not.i322, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.gk = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.au, i32 noundef %i.gi, ptr noundef %0, i32 noundef %.4366, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.a) ; 0 uses
  br label %vjc_delta_uint.exit324

bb.bk:                                            ; preds = %bb.bi
  %i.gl = add nuw nsw i32 %.4366, 1               ; 2 uses
  %i.gm = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.au, i32 noundef %i.gi, ptr noundef %0, i32 noundef %i.gl, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %i.a) ; 0 uses
  br label %vjc_delta_uint.exit324

vjc_delta_uint.exit324:                           ; preds = %bb.bj, %bb.bk
  %.9371 = phi i32 [ %i.gl, %bb.bk ], [ %.4366, %bb.bj ]
  %.sink12.i323 = phi i32 [ 2, %bb.bk ], [ 1, %bb.bj ]
  %i.gn = add nuw nsw i32 %.sink12.i323, %.9371
  %i.go = load i32, ptr %i.a, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %proto_item_set_generated.exit327

bb.bl:                                            ; preds = %proto_item_set_generated.exit309
  %i.gp = call ptr @proto_tree_add_uint(ptr noundef %i.au, i32 noundef %i.gi, ptr noundef %0, i32 noundef %.4366, i32 noundef 0, i32 noundef 1) ; 2 uses
  %.not.i325 = icmp eq ptr %i.gp, null
  br i1 %.not.i325, label %proto_item_set_generated.exit327, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.gq = getelementptr i8, ptr %i.gp, i64 40
  %i.gr = load ptr, ptr %i.gq, align 8            ; 2 uses
  %.not5.i326 = icmp eq ptr %i.gr, null
  br i1 %.not5.i326, label %proto_item_set_generated.exit327, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.gs = getelementptr i8, ptr %i.gr, i64 28     ; 2 uses
  %i.gt = load i32, ptr %i.gs, align 4
  %i.gu = or i32 %i.gt, 2
  store i32 %i.gu, ptr %i.gs, align 4
  br label %proto_item_set_generated.exit327

proto_item_set_generated.exit327:                 ; preds = %bb.bn, %bb.bm, %bb.bl, %vjc_delta_uint.exit324
  %.5367 = phi i32 [ %i.gn, %vjc_delta_uint.exit324 ], [ %.4366, %bb.bl ], [ %.4366, %bb.bm ], [ %.4366, %bb.bn ] ; 12 uses
  %.0263 = phi i32 [ %i.go, %vjc_delta_uint.exit324 ], [ 1, %bb.bl ], [ 1, %bb.bm ], [ 1, %bb.bn ]
  %i.gv = getelementptr i8, ptr %1, i64 356
  %i.gw = load i32, ptr %i.gv, align 4
  %switch = icmp ult i32 %i.gw, 2
  br i1 %switch, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %proto_item_set_generated.exit327
  %i.gx = call i32 @tvb_captured_length_remaining(ptr noundef %0, i32 noundef %.5367)
  %i.gy = call ptr @proto_tree_add_expert(ptr noundef %i.au, ptr noundef %1, ptr noundef nonnull @ei_vjc_no_direction, ptr noundef %0, i32 noundef %.5367, i32 noundef %i.gx) ; 0 uses
  %i.gz = call i32 @tvb_captured_length(ptr noundef %0)
  br label %bb.cg

bb.bp:                                            ; preds = %proto_item_set_generated.exit327
  br i1 %.not287377382432, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.ha = call i32 @tvb_captured_length_remaining(ptr noundef %0, i32 noundef %.5367)
  %i.hb = call ptr @proto_tree_add_expert(ptr noundef %i.au, ptr noundef %1, ptr noundef nonnull @ei_vjc_undecoded, ptr noundef %0, i32 noundef %.5367, i32 noundef %i.ha) ; 0 uses
  %i.hc = call i32 @tvb_captured_length(ptr noundef %0)
  br label %bb.cg

bb.br:                                            ; preds = %bb.bp
  br i1 %i.gg, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.hd = call i32 @tvb_captured_length_remaining(ptr noundef %0, i32 noundef %.5367)
  %i.he = call ptr @proto_tree_add_expert(ptr noundef %i.au, ptr noundef %1, ptr noundef nonnull @ei_vjc_no_conv_data, ptr noundef %0, i32 noundef %.5367, i32 noundef %i.hd) ; 0 uses
  %i.hf = call i32 @tvb_captured_length(ptr noundef %0)
  br label %bb.cg

bb.bt:                                            ; preds = %bb.br
  %i.hg = getelementptr i8, ptr %1, i64 80
  %i.hh = load ptr, ptr %i.hg, align 8
  %i.hi = getelementptr i8, ptr %i.hh, i64 53
  %i.hj = load i16, ptr %i.hi, align 1
  %i.hk = and i16 %i.hj, 8
  %.not295 = icmp eq i16 %i.hk, 0
  br i1 %.not295, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.hl = call ptr @wmem_file_scope()
  %i.hm = call dereferenceable_or_null(48) ptr @wmem_memdup(ptr noundef %i.hl, ptr noundef nonnull %.0255386428, i64 noundef 48) #10 ; 10 uses
  %i.hn = getelementptr i8, ptr %i.hm, i64 20     ; 2 uses
  %i.ho = load i32, ptr %i.f, align 4
  %i.hp = trunc i32 %i.ho to i16
  store i16 %i.hp, ptr %i.hn, align 4
  %i.hq = load i32, ptr %i.e, align 4
  %i.hr = trunc i32 %i.hq to i16
  %i.hs = getelementptr i8, ptr %i.hm, i64 22
  store i16 %i.hr, ptr %i.hs, align 2
  %i.ht = getelementptr i8, ptr %.0255386428, i64 24
  %i.hu = load i16, ptr %i.ht, align 4
  %i.hv = trunc i32 %.1259 to i16
  %i.hw = add i16 %i.hu, %i.hv
  %i.hx = getelementptr i8, ptr %i.hm, i64 24
  store i16 %i.hw, ptr %i.hx, align 4
  %i.hy = getelementptr i8, ptr %.0255386428, i64 28
  %i.hz = load i32, ptr %i.hy, align 4
  %i.ia = add i32 %i.hz, %.0262
  %i.ib = getelementptr i8, ptr %i.hm, i64 28
  store i32 %i.ia, ptr %i.ib, align 4
  %i.ic = getelementptr i8, ptr %.0255386428, i64 32
  %i.id = load i32, ptr %i.ic, align 4
  %i.ie = add i32 %i.id, %.1261
  %i.if = getelementptr i8, ptr %i.hm, i64 32
  store i32 %i.ie, ptr %i.if, align 4
  %i.ig = getelementptr i8, ptr %.0255386428, i64 36
  %i.ih = load i32, ptr %i.ig, align 4
  %i.ii = add i32 %i.ih, %.0263
  %i.ij = getelementptr i8, ptr %i.hm, i64 36
  store i32 %i.ii, ptr %i.ij, align 4
  %i.ik = getelementptr i8, ptr %i.hm, i64 40
  %i.il = lshr i8 %.0257, 4
  %.lobit296 = and i8 %i.il, 1
  store i8 %.lobit296, ptr %i.ik, align 4
  %i.im = load ptr, ptr @vjc_conv_table, align 8
  %i.in = getelementptr i8, ptr %1, i64 20
  %i.io = load i32, ptr %i.in, align 4
  %i.ip = call zeroext i1 @wmem_multimap_insert32(ptr noundef %i.im, ptr noundef nonnull %.1.i376384429, i32 noundef %i.io, ptr noundef %i.hm) ; 0 uses
  %i.iq = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %.5367)
  store i32 %i.iq, ptr %i.hm, align 8
  br label %bb.by

bb.bv:                                            ; preds = %bb.bt
  %i.ir = load ptr, ptr @vjc_conv_table, align 8
  %i.is = getelementptr i8, ptr %1, i64 20
  %i.it = load i32, ptr %i.is, align 4
  %i.iu = call ptr @wmem_multimap_lookup32(ptr noundef %i.ir, ptr noundef nonnull %.1.i376384429, i32 noundef %i.it) ; 3 uses
  %.not297 = icmp eq ptr %i.iu, null
  br i1 %.not297, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.78, i32 noundef 653, ptr noundef nonnull @.str.79) #11
  unreachable

bb.bx:                                            ; preds = %bb.bv
  %i.iv = getelementptr i8, ptr %i.iu, i64 20
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bu
  %.0256 = phi ptr [ %i.iv, %bb.bx ], [ %i.hn, %bb.bu ] ; 8 uses
  %.0254 = phi ptr [ %i.iu, %bb.bx ], [ %i.hm, %bb.bu ] ; 2 uses
  %.not298 = icmp eq ptr %.0256, null
  br i1 %.not298, label %bb.cf, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.iw = getelementptr i8, ptr %.0254, i64 16    ; 2 uses
  %i.ix = load i8, ptr %i.iw, align 8
  %4 = zext i8 %i.ix to i16
  %i.iy = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %.5367)
  %i.iz = getelementptr i8, ptr %.0254, i64 8
  %i.ja = load ptr, ptr %i.iz, align 8            ; 10 uses
  %i.jb = load i8, ptr %i.ja, align 1
  %i.jc = shl i8 %i.jb, 2
  %i.jd = and i8 %i.jc, 60                        ; 2 uses
  %i.je = zext nneg i8 %i.jd to i32
  %i.jf = getelementptr i8, ptr %i.ja, i64 2
  %5 = trunc i32 %i.iy to i16
  %6 = add i16 %5, %4                             ; 2 uses
  %7 = lshr i16 %6, 8
  %i.jg = trunc nuw i16 %7 to i8
  store i8 %i.jg, ptr %i.jf, align 1
  %i.jh = trunc i16 %6 to i8
  %i.ji = getelementptr i8, ptr %i.ja, i64 3
  store i8 %i.jh, ptr %i.ji, align 1
  %i.jj = getelementptr i8, ptr %i.ja, i64 4
  %i.jk = getelementptr i8, ptr %.0256, i64 16
  %i.jl = load i32, ptr %i.jk, align 4            ; 2 uses
  %i.jm = lshr i32 %i.jl, 8
  %i.jn = trunc i32 %i.jm to i8
  store i8 %i.jn, ptr %i.jj, align 1
  %i.jo = trunc i32 %i.jl to i8
  %i.jp = getelementptr i8, ptr %i.ja, i64 5
  store i8 %i.jo, ptr %i.jp, align 1
  %i.jq = getelementptr i8, ptr %i.ja, i64 10     ; 2 uses
  store i8 0, ptr %i.jq, align 1
  %i.jr = getelementptr i8, ptr %i.ja, i64 11     ; 2 uses
  store i8 0, ptr %i.jr, align 1
  %i.js = call zeroext i16 @ip_checksum(ptr noundef %i.ja, i32 noundef %i.je)
  %rev = call i16 @llvm.bswap.i16(i16 %i.js)      ; 2 uses
  %i.jt = lshr i16 %rev, 8
  %i.ju = trunc nuw i16 %i.jt to i8
  store i8 %i.ju, ptr %i.jq, align 1
  %i.jv = trunc i16 %rev to i8
  store i8 %i.jv, ptr %i.jr, align 1
  %i.jw = zext nneg i8 %i.jd to i64
  %i.jx = getelementptr i8, ptr %i.ja, i64 %i.jw  ; 16 uses
  %i.jy = getelementptr i8, ptr %i.jx, i64 4
  %i.jz = getelementptr i8, ptr %.0256, i64 8
  %i.ka = load i32, ptr %i.jz, align 4            ; 4 uses
  %i.kb = lshr i32 %i.ka, 24
  %i.kc = trunc nuw i32 %i.kb to i8
  store i8 %i.kc, ptr %i.jy, align 1
  %i.kd = lshr i32 %i.ka, 16
  %i.ke = trunc i32 %i.kd to i8
  %i.kf = getelementptr i8, ptr %i.jx, i64 5
  store i8 %i.ke, ptr %i.kf, align 1
  %i.kg = lshr i32 %i.ka, 8
  %i.kh = trunc i32 %i.kg to i8
  %i.ki = getelementptr i8, ptr %i.jx, i64 6
  store i8 %i.kh, ptr %i.ki, align 1
  %i.kj = trunc i32 %i.ka to i8
  %i.kk = getelementptr i8, ptr %i.jx, i64 7
  store i8 %i.kj, ptr %i.kk, align 1
  %i.kl = getelementptr i8, ptr %i.jx, i64 8
  %i.km = getelementptr i8, ptr %.0256, i64 12
  %i.kn = load i32, ptr %i.km, align 4            ; 4 uses
  %i.ko = lshr i32 %i.kn, 24
  %i.kp = trunc nuw i32 %i.ko to i8
  store i8 %i.kp, ptr %i.kl, align 1
  %i.kq = lshr i32 %i.kn, 16
  %i.kr = trunc i32 %i.kq to i8
  %i.ks = getelementptr i8, ptr %i.jx, i64 9
  store i8 %i.kr, ptr %i.ks, align 1
  %i.kt = lshr i32 %i.kn, 8
  %i.ku = trunc i32 %i.kt to i8
  %i.kv = getelementptr i8, ptr %i.jx, i64 10
  store i8 %i.ku, ptr %i.kv, align 1
  %i.kw = trunc i32 %i.kn to i8
  %i.kx = getelementptr i8, ptr %i.jx, i64 11
  store i8 %i.kw, ptr %i.kx, align 1
  %i.ky = getelementptr i8, ptr %i.jx, i64 14
  %i.kz = getelementptr i8, ptr %.0256, i64 4
  %i.la = load i16, ptr %i.kz, align 4            ; 2 uses
  %i.lb = lshr i16 %i.la, 8
  %i.lc = trunc nuw i16 %i.lb to i8
  store i8 %i.lc, ptr %i.ky, align 1
  %i.ld = trunc i16 %i.la to i8
  %i.le = getelementptr i8, ptr %i.jx, i64 15
  store i8 %i.ld, ptr %i.le, align 1
  %i.lf = getelementptr i8, ptr %.0256, i64 20
  %i.lg = load i8, ptr %i.lf, align 4, !range !6, !noundef !7
  %i.lh = getelementptr i8, ptr %i.jx, i64 13     ; 2 uses
  %i.li = load i8, ptr %i.lh, align 1
  %i.lj = and i8 %i.li, -9
  %masksel = shl nuw nsw i8 %i.lg, 3
  %.sink461 = or disjoint i8 %i.lj, %masksel      ; 3 uses
  store i8 %.sink461, ptr %i.lh, align 1
  %i.lk = getelementptr i8, ptr %i.jx, i64 16
  %i.ll = load i16, ptr %.0256, align 4           ; 2 uses
  %i.lm = lshr i16 %i.ll, 8
  %i.ln = trunc nuw i16 %i.lm to i8
  store i8 %i.ln, ptr %i.lk, align 1
  %i.lo = trunc i16 %i.ll to i8
  %i.lp = getelementptr i8, ptr %i.jx, i64 17
  store i8 %i.lo, ptr %i.lp, align 1
  %i.lq = getelementptr i8, ptr %.0256, i64 2     ; 2 uses
  %i.lr = load i16, ptr %i.lq, align 2
  %.not299 = icmp eq i16 %i.lr, 0
  %i.ls = getelementptr i8, ptr %i.jx, i64 13     ; 2 uses
  br i1 %.not299, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.lt = or i8 %.sink461, 32
  store i8 %i.lt, ptr %i.ls, align 1
  %i.lu = load i16, ptr %i.lq, align 2            ; 2 uses
  %i.lv = lshr i16 %i.lu, 8
  %i.lw = trunc nuw i16 %i.lv to i8
  %i.lx = trunc i16 %i.lu to i8
  br label %bb.cc

bb.cb:                                            ; preds = %bb.bz
  %i.ly = and i8 %.sink461, -33
  store i8 %i.ly, ptr %i.ls, align 1
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %.sink388 = phi i8 [ 0, %bb.cb ], [ %i.lw, %bb.ca ]
  %.sink = phi i8 [ 0, %bb.cb ], [ %i.lx, %bb.ca ]
  %i.lz = getelementptr i8, ptr %i.jx, i64 18
  store i8 %.sink388, ptr %i.lz, align 1
  %i.ma = getelementptr i8, ptr %i.jx, i64 19
  store i8 %.sink, ptr %i.ma, align 1
  %i.mb = load i8, ptr %i.iw, align 8
  %i.mc = zext i8 %i.mb to i32                    ; 2 uses
  %i.md = call ptr @tvb_new_child_real_data(ptr noundef %0, ptr noundef %i.ja, i32 noundef %i.mc, i32 noundef %i.mc) ; 3 uses
  call void @tvb_set_free_cb(ptr noundef %i.md, ptr noundef null)
  %i.me = call i32 @tvb_captured_length_remaining(ptr noundef %0, i32 noundef %.5367) ; 4 uses
  %.not300 = icmp eq i32 %i.me, 0
  br i1 %.not300, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.mf = call ptr @tvb_new_composite()           ; 4 uses
  call void @tvb_composite_append(ptr noundef %i.mf, ptr noundef %i.md)
  %i.mg = call ptr @tvb_new_subset_remaining(ptr noundef %0, i32 noundef %.5367)
  call void @tvb_composite_append(ptr noundef %i.mf, ptr noundef %i.mg)
  call void @tvb_composite_finalize(ptr noundef %i.mf)
  %i.mh = load i32, ptr @hf_vjc_tcpdata, align 4
  %i.mi = call ptr @proto_tree_add_item(ptr noundef %i.au, i32 noundef %i.mh, ptr noundef %0, i32 noundef %.5367, i32 noundef %i.me, i32 noundef 0)
  %i.mj = icmp eq i32 %i.me, 1
  %i.mk = select i1 %i.mj, ptr @.str.81, ptr @.str.82
  call void (ptr, ptr, ...) @proto_item_set_text(ptr noundef %i.mi, ptr noundef nonnull @.str.80, i32 noundef %i.me, ptr noundef nonnull %i.mk)
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cc, %bb.cd
  %.0 = phi ptr [ %i.mf, %bb.cd ], [ %i.md, %bb.cc ] ; 2 uses
  %i.ml = call ptr @add_new_data_source(ptr noundef %1, ptr noundef %.0, ptr noundef nonnull @.str.83) ; 0 uses
  %i.mm = load ptr, ptr @ip_handle, align 8
  %i.mn = call i32 @call_dissector_with_data(ptr noundef %i.mm, ptr noundef %.0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %i.mo = add i32 %i.mn, %.5367
  br label %bb.cg

bb.cf:                                            ; preds = %bb.by
  %i.mp = getelementptr i8, ptr %1, i64 20
  %i.mq = load i32, ptr %i.mp, align 4
  %i.mr = call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %i.au, ptr noundef %1, ptr noundef nonnull @ei_vjc_error, ptr noundef %0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.84, i32 noundef %i.mq) ; 0 uses
  %i.ms = call i32 @tvb_captured_length(ptr noundef %0)
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce, %bb.bs, %bb.bq, %bb.bo, %bb.r
  %.0267 = phi i32 [ %i.aw, %bb.r ], [ %i.hc, %bb.bq ], [ %i.hf, %bb.bs ], [ %i.mo, %bb.ce ], [ %i.ms, %bb.cf ], [ %i.gz, %bb.bo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  ret i32 %.0267
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_vjc_uncomp(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4
  %i.b = load i32, ptr @proto_vjc, align 4
  %i.c = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.b, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0)
  %i.d = load i32, ptr @ett_vjc, align 4
  %i.e = tail call ptr @proto_item_add_subtree(ptr noundef %i.c, i32 noundef %i.d) ; 7 uses
  tail call void (ptr, ptr, ...) @proto_item_set_text(ptr noundef %i.e, ptr noundef nonnull @.str.85)
  %i.f = tail call i32 @tvb_captured_length(ptr noundef %0)
  %i.g = icmp ult i32 %i.f, 10
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr (ptr, ptr, ptr, ptr, i32, ptr, ...) @proto_tree_add_expert_format_remaining(ptr noundef %i.e, ptr noundef %1, ptr noundef nonnull @ei_vjc_bad_data, ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.86) ; 0 uses
  %i.i = tail call i32 @tvb_captured_length(ptr noundef %0)
  br label %bb.t

bb.c:                                             ; preds = %bb.a
  %i.j = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0)
  %i.k = lshr i8 %i.j, 4                          ; 2 uses
  %i.l = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0)
  %i.m = shl i8 %i.l, 2
  %i.n = and i8 %i.m, 60                          ; 2 uses
  %i.o = zext nneg i8 %i.n to i32                 ; 2 uses
  %i.p = add nuw nsw i32 %i.o, 20                 ; 3 uses
  %.not = icmp eq i8 %i.k, 4
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = zext nneg i8 %i.k to i32
  %i.r = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %i.e, ptr noundef %1, ptr noundef nonnull @ei_vjc_bad_data, ptr noundef %0, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @.str.87, i32 noundef %i.q) ; 0 uses
  %i.s = tail call i32 @tvb_captured_length(ptr noundef %0)
  br label %bb.t

bb.e:                                             ; preds = %bb.c
  %i.t = load i32, ptr @hf_vjc_comp, align 4
  %i.u = tail call ptr @proto_tree_add_boolean(ptr noundef %i.e, i32 noundef %i.t, ptr noundef %0, i32 noundef 0, i32 noundef 0, i64 noundef 0) ; 2 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %proto_item_set_generated.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr i8, ptr %i.u, i64 40
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
end_hunk_0
