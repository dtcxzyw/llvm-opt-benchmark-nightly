Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/joint?download=true
inline.NumInlined: 136
inline.NumDeleted: 31
begin_hunk_0_@b3CreateJoint:bb.a
  %i.dw = ptrtoint ptr %i.do to i64, !nosanitize !33 ; 2 uses
  %i.dx = and i64 %i.dw, 7, !nosanitize !33
  %i.dy = icmp eq i64 %i.dx, 0, !nosanitize !33
  br i1 %i.dy, label %bb.ai, label %bb.ah, !prof !35, !nosanitize !33

bb.ah:                                            ; preds = %bb.ag
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @249, i64 %i.dw) #12, !nosanitize !33
  unreachable, !nosanitize !33

bb.ai:                                            ; preds = %bb.ag
  %i.dz = getelementptr inbounds nuw i8, ptr %i.do, i64 20 ; 2 uses
  %i.ea = and i32 %i.dh, 1
  %i.eb = zext nneg i32 %i.ea to i64              ; 2 uses
  %i.ec = mul nuw nsw i64 %i.eb, 12
  %i.ed = ptrtoint ptr %i.dz to i64, !nosanitize !33 ; 3 uses
  %i.ee = add i64 %i.ec, %i.ed, !nosanitize !33   ; 2 uses
  %.not204 = icmp ult i64 %i.ee, %i.ed, !nosanitize !33
  br i1 %.not204, label %bb.aj, label %bb.ak, !prof !34, !nosanitize !33

bb.aj:                                            ; preds = %bb.ai
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @250, i64 %i.ed, i64 %i.ee) #12, !nosanitize !33
  unreachable, !nosanitize !33

bb.ak:                                            ; preds = %bb.ai
  %i.ef = getelementptr inbounds nuw [12 x i8], ptr %i.dz, i64 %i.eb
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 4
  store i32 %i.dl, ptr %i.eg, align 4, !tbaa !140
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ad
  store i32 %i.dl, ptr %i.dg, align 4, !tbaa !141
  %i.eh = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !143 ; 2 uses
  %i.ej = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.ei, i32 1), !nosanitize !33 ; 2 uses
  %i.ek = extractvalue { i32, i1 } %i.ej, 1, !nosanitize !33
  br i1 %i.ek, label %bb.am, label %bb.an, !prof !34, !nosanitize !33

bb.am:                                            ; preds = %bb.al
  %i.el = zext nneg i32 %i.ei to i64, !nosanitize !33
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @251, i64 %i.el, i64 1) #12, !nosanitize !33
  unreachable, !nosanitize !33

bb.an:                                            ; preds = %bb.al
  %i.em = extractvalue { i32, i1 } %i.ej, 0, !nosanitize !33
  store i32 %i.em, ptr %i.eh, align 8, !tbaa !143
  %i.en = add i64 %i.de, 12, !nosanitize !33      ; 2 uses
  %.not206 = icmp ugt ptr %i.dd, inttoptr (i64 -13 to ptr)
  br i1 %.not206, label %bb.ao, label %bb.ap, !prof !34, !nosanitize !33

bb.ao:                                            ; preds = %bb.an
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @252, i64 %i.de, i64 %i.en) #12, !nosanitize !33
  unreachable, !nosanitize !33

bb.ap:                                            ; preds = %bb.an
  %.not205 = icmp eq i64 %i.en, 0, !nosanitize !33
  %i.eo = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  store i32 %i.w, ptr %i.eo, align 8, !tbaa !139
  br i1 %.not205, label %bb.aq, label %bb.ar, !prof !34, !nosanitize !33

bb.aq:                                            ; preds = %bb.ap
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @253, i64 %i.de, i64 0) #12, !nosanitize !33
  unreachable, !nosanitize !33

bb.ar:                                            ; preds = %bb.ap
  %i.ep = getelementptr inbounds nuw i8, ptr %i.bv, i64 36
  store i32 -1, ptr %i.ep, align 4, !tbaa !140
  %i.eq = getelementptr inbounds nuw i8, ptr %i.i, i64 36 ; 2 uses
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !141 ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.bv, i64 40
  store i32 %i.er, ptr %i.es, align 8, !tbaa !142
  %i.et = or disjoint i32 %i.dl, 1                ; 2 uses
  %.not207 = icmp eq i32 %i.er, -1
  br i1 %.not207, label %bb.az, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.eu = ashr i32 %i.er, 1                       ; 2 uses
  %i.ev = sext i32 %i.eu to i64                   ; 2 uses
  %i.ew = getelementptr inbounds [72 x i8], ptr %i.bt, i64 %i.ev ; 2 uses
  %i.ex = mul nsw i64 %i.ev, 72
  %i.ey = add i64 %i.ex, %i.bx, !nosanitize !33   ; 3 uses
  %i.ez = icmp ne i64 %i.ey, 0
  %i.fa = icmp uge i64 %i.ey, %i.bx, !nosanitize !33
  %i.fb = icmp slt i32 %i.eu, 0
  %i.fc = xor i1 %i.fb, %i.fa
  %i.fd = and i1 %i.ez, %i.fc, !nosanitize !33
  br i1 %i.fd, label %bb.au, label %bb.at, !prof !35, !nosanitize !33

bb.at:                                            ; preds = %bb.as
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @254, i64 %i.bx, i64 %i.ey) #12, !nosanitize !33
  unreachable, !nosanitize !33

bb.au:                                            ; preds = %bb.as
  %i.fe = ptrtoint ptr %i.ew to i64, !nosanitize !33 ; 2 uses
  %i.ff = and i64 %i.fe, 7, !nosanitize !33
  %i.fg = icmp eq i64 %i.ff, 0, !nosanitize !33
  br i1 %i.fg, label %bb.aw, label %bb.av, !prof !35, !nosanitize !33

bb.av:                                            ; preds = %bb.au
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @255, i64 %i.fe) #12, !nosanitize !33
  unreachable, !nosanitize !33

bb.aw:                                            ; preds = %bb.au
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ew, i64 20 ; 2 uses
  %i.fi = and i32 %i.er, 1
  %i.fj = zext nneg i32 %i.fi to i64              ; 2 uses
  %i.fk = mul nuw nsw i64 %i.fj, 12
  %i.fl = ptrtoint ptr %i.fh to i64, !nosanitize !33 ; 3 uses
  %i.fm = add i64 %i.fk, %i.fl, !nosanitize !33   ; 2 uses
  %.not208 = icmp ult i64 %i.fm, %i.fl, !nosanitize !33
  br i1 %.not208, label %bb.ax, label %bb.ay, !prof !34, !nosanitize !33

bb.ax:                                            ; preds = %bb.aw
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @256, i64 %i.fl, i64 %i.fm) #12, !nosanitize !33
  unreachable, !nosanitize !33

bb.ay:                                            ; preds = %bb.aw
  %i.fn = getelementptr inbounds nuw [12 x i8], ptr %i.fh, i64 %i.fj
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 4
  store i32 %i.et, ptr %i.fo, align 4, !tbaa !140
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ar
  store i32 %i.et, ptr %i.eq, align 4, !tbaa !141
  %i.fp = getelementptr inbounds nuw i8, ptr %i.i, i64 40 ; 2 uses
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !143 ; 2 uses
  %i.fr = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.fq, i32 1), !nosanitize !33 ; 2 uses
  %i.fs = extractvalue { i32, i1 } %i.fr, 1, !nosanitize !33
  br i1 %i.fs, label %bb.ba, label %bb.bb, !prof !34, !nosanitize !33

bb.ba:                                            ; preds = %bb.az
  %i.ft = zext nneg i32 %i.fq to i64, !nosanitize !33
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @257, i64 %i.ft, i64 1) #12, !nosanitize !33
  unreachable, !nosanitize !33

bb.bb:                                            ; preds = %bb.az
  %i.fu = extractvalue { i32, i1 } %i.fr, 0, !nosanitize !33
  store i32 %i.fu, ptr %i.fp, align 8, !tbaa !143
  %i.fv = load i32, ptr %i.x, align 8, !tbaa !131 ; 2 uses
  %i.fw = icmp eq i32 %i.fv, 1
  br i1 %i.fw, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.fx = load i32, ptr %i.y, align 8, !tbaa !131 ; 2 uses
  %i.fy = icmp eq i32 %i.fx, 1
  br i1 %i.fy, label %bb.bd, label %bb.bo

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 3920
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !103 ; 7 uses
  %i.gb = ptrtoint ptr %i.ga to i64, !nosanitize !33 ; 2 uses
  %i.gc = add i64 %i.gb, 88, !nosanitize !33      ; 2 uses
  %i.gd = icmp ne ptr %i.ga, null, !nosanitize !33
  %i.ge = icmp ne i64 %i.gc, 0
  %i.gf = and i1 %i.gd, %i.ge
  %i.gg = icmp ult ptr %i.ga, inttoptr (i64 -88 to ptr)
  %i.gh = and i1 %i.gg, %i.gf, !nosanitize !33
  br i1 %i.gh, label %bb.bf, label %bb.be, !prof !35, !nosanitize !33

bb.be:                                            ; preds = %bb.bd
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @258, i64 %i.gb, i64 %i.gc) #12, !nosanitize !33
  unreachable, !nosanitize !33

bb.bf:                                            ; preds = %bb.bd
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ga, i64 88
  store i32 1, ptr %i.cp, align 8, !tbaa !91
  %i.gj = ptrtoint ptr %i.gi to i64, !nosanitize !33 ; 2 uses
  %i.gk = and i64 %i.gj, 7, !nosanitize !33
  %i.gl = icmp eq i64 %i.gk, 0, !nosanitize !33
  br i1 %i.gl, label %bb.bh, label %bb.bg, !prof !35, !nosanitize !33

bb.bg:                                            ; preds = %bb.bf
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @259, i64 %i.gj) #12, !nosanitize !33
  unreachable, !nosanitize !33

bb.bh:                                            ; preds = %bb.bf
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ga, i64 120 ; 2 uses
  %i.gn = ptrtoint ptr %i.gm to i64, !nosanitize !33 ; 2 uses
  %i.go = and i64 %i.gn, 7, !nosanitize !33
  %i.gp = icmp eq i64 %i.go, 0, !nosanitize !33
  br i1 %i.gp, label %bb.bj, label %bb.bi, !prof !35, !nosanitize !33

bb.bi:                                            ; preds = %bb.bh
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @260, i64 %i.gn) #12, !nosanitize !33
  unreachable, !nosanitize !33

bb.bj:                                            ; preds = %bb.bh
  %i.gq = getelementptr inbounds nuw i8, ptr %i.ga, i64 128 ; 3 uses
  %i.gr = ptrtoint ptr %i.gq to i64, !nosanitize !33 ; 2 uses
  %i.gs = and i64 %i.gr, 7, !nosanitize !33
  %i.gt = icmp eq i64 %i.gs, 0, !nosanitize !33
  br i1 %i.gt, label %bb.bl, label %bb.bk, !prof !35, !nosanitize !33

bb.bk:                                            ; preds = %bb.bj
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @261, i64 %i.gr) #12, !nosanitize !33
  unreachable, !nosanitize !33

bb.bl:                                            ; preds = %bb.bj
  %i.gu = load i32, ptr %i.gq, align 8, !tbaa !245
  store i32 %i.gu, ptr %i.cr, align 8, !tbaa !102
  %i.gv = getelementptr inbounds nuw i8, ptr %i.ga, i64 132
  %i.gw = tail call fastcc ptr @b3EmplaceHelper(ptr noundef nonnull %i.gm, ptr noundef nonnull %i.gq, ptr noundef nonnull %i.gv) ; 7 uses
  %.not214 = icmp eq ptr %i.gw, null, !nosanitize !33
  br i1 %.not214, label %bb.bm, label %bb.bn, !prof !34, !nosanitize !33

bb.bm:                                            ; preds = %bb.bl
  tail call void @__ubsan_handle_nonnull_arg_abort(ptr nonnull @262) #12, !nosanitize !33
  unreachable, !nosanitize !33

bb.bn:                                            ; preds = %bb.bl
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(444) %i.gw, i8 0, i64 444, i1 false)
  %3 = ptrtoint ptr %i.gw to i64, !nosanitize !33
  store i32 %i.ag, ptr %i.gw, align 4, !tbaa !126
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 4
  store i32 %i.p, ptr %i.gx, align 4, !tbaa !144
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  store i32 %i.w, ptr %i.gy, align 4, !tbaa !145
  br label %bb.cp

bb.bo:                                            ; preds = %bb.bc
  %i.gz = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  %i.ha = load i32, ptr %i.gz, align 8, !tbaa !246
  %.not209 = icmp eq i32 %i.ha, 2
  br i1 %.not209, label %bb.bv, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.hb = getelementptr inbounds nuw i8, ptr %i.i, i64 120
  %i.hc = load i32, ptr %i.hb, align 8, !tbaa !246
  %.not210 = icmp eq i32 %i.hc, 2
  br i1 %.not210, label %bb.bv, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 3920
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !103 ; 5 uses
  store i32 0, ptr %i.cp, align 8, !tbaa !91
  %i.hf = icmp ne ptr %i.he, null, !nosanitize !33
  %i.hg = ptrtoint ptr %i.he to i64, !nosanitize !33 ; 2 uses
  %i.hh = and i64 %i.hg, 7, !nosanitize !33
  %i.hi = icmp eq i64 %i.hh, 0, !nosanitize !33
  %i.hj = and i1 %i.hf, %i.hi, !nosanitize !33
  br i1 %i.hj, label %bb.bs, label %bb.br, !prof !35, !nosanitize !33

bb.br:                                            ; preds = %bb.bq
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @263, i64 %i.hg) #12, !nosanitize !33
  unreachable, !nosanitize !33

bb.bs:                                            ; preds = %bb.bq
  %i.hk = getelementptr inbounds nuw i8, ptr %i.he, i64 32
  %i.hl = getelementptr inbounds nuw i8, ptr %i.he, i64 40 ; 2 uses
  %i.hm = load i32, ptr %i.hl, align 8, !tbaa !245
  store i32 %i.hm, ptr %i.cr, align 8, !tbaa !102
  %i.hn = getelementptr inbounds nuw i8, ptr %i.he, i64 44
  %i.ho = tail call fastcc ptr @b3EmplaceHelper(ptr noundef nonnull %i.hk, ptr noundef nonnull %i.hl, ptr noundef nonnull %i.hn) ; 7 uses
  %.not213 = icmp eq ptr %i.ho, null, !nosanitize !33
  br i1 %.not213, label %bb.bt, label %bb.bu, !prof !34, !nosanitize !33

bb.bt:                                            ; preds = %bb.bs
  tail call void @__ubsan_handle_nonnull_arg_abort(ptr nonnull @264) #12, !nosanitize !33
  unreachable, !nosanitize !33

bb.bu:                                            ; preds = %bb.bs
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(444) %i.ho, i8 0, i64 444, i1 false)
  %4 = ptrtoint ptr %i.ho to i64, !nosanitize !33
  store i32 %i.ag, ptr %i.ho, align 4, !tbaa !126
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 4
  store i32 %i.p, ptr %i.hp, align 4, !tbaa !144
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  store i32 %i.w, ptr %i.hq, align 4, !tbaa !145
  br label %bb.cp

bb.bv:                                            ; preds = %bb.bp, %bb.bo
  %i.hr = icmp eq i32 %i.fv, 2
  %i.hs = icmp eq i32 %i.fx, 2
  %or.cond216 = or i1 %i.hr, %i.hs
  br i1 %or.cond216, label %bb.bw, label %bb.cb

bb.bw:                                            ; preds = %bb.bv
  %i.ht = icmp sgt i32 %i.ab, 2
  br i1 %i.ht, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  tail call void @b3WakeSolverSet(ptr noundef nonnull %0, i32 noundef %i.ab) #11
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  store i32 2, ptr %i.cp, align 8, !tbaa !91
  %i.hu = tail call ptr @b3CreateJointInGraph(ptr noundef nonnull %0, ptr noundef nonnull %i.bv) #11 ; 6 uses
  %i.hv = icmp ne ptr %i.hu, null, !nosanitize !33
  %i.hw = ptrtoint ptr %i.hu to i64, !nosanitize !33 ; 3 uses
  %i.hx = and i64 %i.hw, 3, !nosanitize !33
  %i.hy = icmp eq i64 %i.hx, 0, !nosanitize !33
  %i.hz = and i1 %i.hv, %i.hy, !nosanitize !33
  br i1 %i.hz, label %bb.ca, label %bb.bz, !prof !35, !nosanitize !33

bb.bz:                                            ; preds = %bb.by
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @265, i64 %i.hw) #12, !nosanitize !33
  unreachable, !nosanitize !33

bb.ca:                                            ; preds = %bb.by
  store i32 %i.ag, ptr %i.hu, align 4, !tbaa !126
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hu, i64 4
  store i32 %i.p, ptr %i.ia, align 4, !tbaa !144
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  store i32 %i.w, ptr %i.ib, align 4, !tbaa !145
  br label %bb.cp

bb.cb:                                            ; preds = %bb.bv
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 3920 ; 2 uses
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !103 ; 3 uses
  %i.ie = sext i32 %i.ab to i64                   ; 2 uses
  %i.if = getelementptr inbounds [88 x i8], ptr %i.id, i64 %i.ie ; 4 uses
  %i.ig = mul nsw i64 %i.ie, 88
  %i.ih = ptrtoint ptr %i.id to i64, !nosanitize !33 ; 3 uses
  %i.ii = add i64 %i.ig, %i.ih, !nosanitize !33   ; 3 uses
  %i.ij = icmp ne ptr %i.id, null, !nosanitize !33 ; 2 uses
  %i.ik = icmp eq i64 %i.ii, 0
  %i.il = xor i1 %i.ij, %i.ik
  %i.im = icmp uge i64 %i.ii, %i.ih, !nosanitize !33
  %i.in = icmp slt i32 %i.ab, 0
  %i.io = xor i1 %i.in, %i.im
  %i.ip = and i1 %i.il, %i.io, !nosanitize !33
  br i1 %i.ip, label %bb.cd, label %bb.cc, !prof !35, !nosanitize !33

bb.cc:                                            ; preds = %bb.cb
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @266, i64 %i.ih, i64 %i.ii) #12, !nosanitize !33
  unreachable, !nosanitize !33

bb.cd:                                            ; preds = %bb.cb
  store i32 %i.ab, ptr %i.cp, align 8, !tbaa !91
  %i.iq = ptrtoint ptr %i.if to i64, !nosanitize !33 ; 2 uses
  %i.ir = and i64 %i.iq, 7, !nosanitize !33
  %i.is = icmp eq i64 %i.ir, 0, !nosanitize !33
  %i.it = and i1 %i.ij, %i.is
  br i1 %i.it, label %bb.cf, label %bb.ce, !prof !35, !nosanitize !33

bb.ce:                                            ; preds = %bb.cd
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @267, i64 %i.iq) #12, !nosanitize !33
  unreachable, !nosanitize !33

bb.cf:                                            ; preds = %bb.cd
  %i.iu = getelementptr inbounds nuw i8, ptr %i.if, i64 32
  %i.iv = getelementptr inbounds nuw i8, ptr %i.if, i64 40 ; 2 uses
  %i.iw = load i32, ptr %i.iv, align 8, !tbaa !245
  store i32 %i.iw, ptr %i.cr, align 8, !tbaa !102
  %i.ix = getelementptr inbounds nuw i8, ptr %i.if, i64 44
  %i.iy = tail call fastcc ptr @b3EmplaceHelper(ptr noundef nonnull %i.iu, ptr noundef nonnull %i.iv, ptr noundef nonnull %i.ix) ; 7 uses
  %.not211 = icmp eq ptr %i.iy, null, !nosanitize !33
  br i1 %.not211, label %bb.cg, label %bb.ch, !prof !34, !nosanitize !33

bb.cg:                                            ; preds = %bb.cf
  tail call void @__ubsan_handle_nonnull_arg_abort(ptr nonnull @268) #12, !nosanitize !33
  unreachable, !nosanitize !33

bb.ch:                                            ; preds = %bb.cf
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(444) %i.iy, i8 0, i64 444, i1 false)
  %5 = ptrtoint ptr %i.iy to i64, !nosanitize !33
  store i32 %i.ag, ptr %i.iy, align 4, !tbaa !126
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 4
  store i32 %i.p, ptr %i.iz, align 4, !tbaa !144
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  store i32 %i.w, ptr %i.ja, align 4, !tbaa !145
  %i.jb = load i32, ptr %i.x, align 8, !tbaa !131 ; 3 uses
  %i.jc = load i32, ptr %i.y, align 8, !tbaa !131 ; 3 uses
  %.not212 = icmp ne i32 %i.jb, %i.jc
  %i.jd = icmp sgt i32 %i.jb, 2
  %or.cond = and i1 %i.jd, %.not212
  %i.je = icmp sgt i32 %i.jc, 2
  %or.cond215 = and i1 %i.je, %or.cond
  br i1 %or.cond215, label %bb.ci, label %bb.cp

bb.ci:                                            ; preds = %bb.ch
  tail call void @b3MergeSolverSets(ptr noundef nonnull %0, i32 noundef %i.jb, i32 noundef %i.jc) #11
  %i.jf = load i32, ptr %i.x, align 8, !tbaa !131 ; 2 uses
  %i.jg = load ptr, ptr %i.ic, align 8, !tbaa !103 ; 3 uses
  %i.jh = sext i32 %i.jf to i64                   ; 2 uses
  %i.ji = getelementptr inbounds [88 x i8], ptr %i.jg, i64 %i.jh ; 2 uses
  %i.jj = mul nsw i64 %i.jh, 88
  %i.jk = ptrtoint ptr %i.jg to i64, !nosanitize !33 ; 3 uses
  %i.jl = add i64 %i.jj, %i.jk, !nosanitize !33   ; 3 uses
  %i.jm = icmp ne ptr %i.jg, null, !nosanitize !33 ; 2 uses
  %i.jn = icmp eq i64 %i.jl, 0
  %i.jo = xor i1 %i.jm, %i.jn
  %i.jp = icmp uge i64 %i.jl, %i.jk, !nosanitize !33
  %i.jq = icmp slt i32 %i.jf, 0
  %i.jr = xor i1 %i.jq, %i.jp
  %i.js = and i1 %i.jo, %i.jr, !nosanitize !33
  br i1 %i.js, label %bb.ck, label %bb.cj, !prof !35, !nosanitize !33

bb.cj:                                            ; preds = %bb.ci
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @269, i64 %i.jk, i64 %i.jl) #12, !nosanitize !33
  unreachable, !nosanitize !33

bb.ck:                                            ; preds = %bb.ci
  %i.jt = ptrtoint ptr %i.ji to i64, !nosanitize !33 ; 2 uses
  %i.ju = and i64 %i.jt, 7, !nosanitize !33
  %i.jv = icmp eq i64 %i.ju, 0, !nosanitize !33
  %i.jw = and i1 %i.jm, %i.jv
  br i1 %i.jw, label %bb.cm, label %bb.cl, !prof !35, !nosanitize !33

bb.cl:                                            ; preds = %bb.ck
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @270, i64 %i.jt) #12, !nosanitize !33
  unreachable, !nosanitize !33

bb.cm:                                            ; preds = %bb.ck
  %i.jx = getelementptr inbounds nuw i8, ptr %i.ji, i64 32
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !111 ; 3 uses
  %i.jz = load i32, ptr %i.cr, align 8, !tbaa !102 ; 2 uses
  %i.ka = sext i32 %i.jz to i64                   ; 2 uses
  %i.kb = mul nsw i64 %i.ka, 444
  %i.kc = ptrtoint ptr %i.jy to i64, !nosanitize !33 ; 3 uses
  %i.kd = add i64 %i.kb, %i.kc, !nosanitize !33   ; 3 uses
  %i.ke = icmp ne ptr %i.jy, null, !nosanitize !33
  %i.kf = icmp eq i64 %i.kd, 0
  %i.kg = xor i1 %i.ke, %i.kf
  %i.kh = icmp uge i64 %i.kd, %i.kc, !nosanitize !33
  %i.ki = icmp slt i32 %i.jz, 0
  %i.kj = xor i1 %i.ki, %i.kh
  %i.kk = and i1 %i.kg, %i.kj, !nosanitize !33
  br i1 %i.kk, label %bb.co, label %bb.cn, !prof !35, !nosanitize !33

bb.cn:                                            ; preds = %bb.cm
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @271, i64 %i.kc, i64 %i.kd) #12, !nosanitize !33
  unreachable, !nosanitize !33

bb.co:                                            ; preds = %bb.cm
  %i.kl = getelementptr inbounds [444 x i8], ptr %i.jy, i64 %i.ka ; 2 uses
  %.pre218 = ptrtoint ptr %i.kl to i64, !nosanitize !33
  br label %bb.cp

bb.cp:                                            ; preds = %bb.ch, %bb.co, %bb.bu, %bb.ca, %bb.bn
  %.pre-phi219 = phi i64 [ %5, %bb.ch ], [ %.pre218, %bb.co ], [ %4, %bb.bu ], [ %i.hw, %bb.ca ], [ %3, %bb.bn ] ; 2 uses
  %.1 = phi ptr [ %i.iy, %bb.ch ], [ %i.kl, %bb.co ], [ %i.ho, %bb.bu ], [ %i.hu, %bb.ca ], [ %i.gw, %bb.bn ] ; 9 uses
  %i.km = icmp ne ptr %.1, null, !nosanitize !33
  %i.kn = and i64 %.pre-phi219, 3, !nosanitize !33
  %i.ko = icmp eq i64 %i.kn, 0, !nosanitize !33
  %i.kp = and i1 %i.km, %i.ko, !nosanitize !33
  br i1 %i.kp, label %bb.cr, label %bb.cq, !prof !35, !nosanitize !33

bb.cq:                                            ; preds = %bb.cp
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @272, i64 %.pre-phi219) #12, !nosanitize !33
  unreachable, !nosanitize !33

bb.cr:                                            ; preds = %bb.cp
  %i.kq = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.kr = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.kq, ptr noundef nonnull align 8 dereferenceable(28) %i.kr, i64 28, i1 false), !tbaa.struct !146
  %i.ks = getelementptr inbounds nuw i8, ptr %.1, i64 44
  %i.kt = getelementptr inbounds nuw i8, ptr %1, i64 52
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.ks, ptr noundef nonnull align 4 dereferenceable(28) %i.kt, i64 28, i1 false), !tbaa.struct !146
  %i.ku = getelementptr inbounds nuw i8, ptr %.1, i64 12
  store i32 %2, ptr %i.ku, align 4, !tbaa !147
  %i.kv = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.kw = getelementptr inbounds nuw i8, ptr %.1, i64 152
  %i.kx = load <2 x float>, ptr %i.kv, align 8, !tbaa !10
  store <2 x float> %i.kx, ptr %i.kw, align 4, !tbaa !10
  %i.ky = getelementptr inbounds nuw i8, ptr %.1, i64 160
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %i.ky, align 4, !tbaa !10
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.1, i64 168
  store float 0.000000e+00, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !10
  %i.kz = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.la = getelementptr inbounds nuw i8, ptr %.1, i64 172
  %i.lb = load <2 x float>, ptr %i.kz, align 8, !tbaa !10
  store <2 x float> %i.lb, ptr %i.la, align 4, !tbaa !10
  %i.lc = load i32, ptr %i.cp, align 8, !tbaa !91
  %i.ld = icmp sgt i32 %i.lc, 1
  br i1 %i.ld, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  tail call void @b3LinkJoint(ptr noundef nonnull %0, ptr noundef nonnull %i.bv) #11
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  tail call void @b3ValidateSolverSets(ptr noundef nonnull %0) #11
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %i.bv, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.1, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: noreturn nounwind uwtable
declare void @__ubsan_handle_load_invalid_value_abort(ptr, i64) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #6

; Function Attrs: noreturn nounwind uwtable
declare void @__ubsan_handle_add_overflow_abort(ptr, i64, i64) local_unnamed_addr #2

declare void @b3RecWriteRet_CreateDistanceJoint(ptr noundef, ptr noundef, i64) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define i64 @b3CreateMotorJoint(i32 %0, ptr noundef %1) local_unnamed_addr #0 !func_sanitize !247 {
bb.a:
  %2 = alloca %struct.b3RecArgs_CreateMotorJoint, align 8 ; 6 uses
  %i.a = tail call ptr @b3GetUnlockedWorldFromId(i32 %0) #11 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ne ptr %1, null, !nosanitize !33
  %i.d = ptrtoint ptr %1 to i64, !nosanitize !33  ; 2 uses
  %i.e = and i64 %i.d, 7, !nosanitize !33
  %i.f = icmp eq i64 %i.e, 0, !nosanitize !33
  %i.g = and i1 %i.c, %i.f, !nosanitize !33
  br i1 %i.g, label %bb.d, label %bb.c, !prof !35, !nosanitize !33

bb.c:                                             ; preds = %bb.b
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @42, i64 %i.d) #12, !nosanitize !33
  unreachable, !nosanitize !33

bb.d:                                             ; preds = %bb.b
  %i.h = tail call fastcc { ptr, ptr } @b3CreateJoint(ptr noundef %i.a, ptr noundef %1, i32 noundef 3) ; 2 uses
  %i.i = extractvalue { ptr, ptr } %i.h, 0        ; 3 uses
  %i.j = extractvalue { ptr, ptr } %i.h, 1        ; 12 uses
  %i.k = ptrtoint ptr %i.j to i64, !nosanitize !33 ; 2 uses
  %i.l = and i64 %i.k, 3, !nosanitize !33
  %i.m = icmp eq i64 %i.l, 0, !nosanitize !33
  br i1 %i.m, label %bb.f, label %bb.e, !prof !35, !nosanitize !33

bb.e:                                             ; preds = %bb.d
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @43, i64 %i.k) #12, !nosanitize !33
  unreachable, !nosanitize !33

bb.f:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 184 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(240) %i.n, i8 0, i64 240, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.n, ptr noundef nonnull align 8 dereferenceable(12) %i.o, i64 12, i1 false), !tbaa.struct !148
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 208
  %i.r = load float, ptr %i.p, align 4, !tbaa !249
  store float %i.r, ptr %i.q, align 4, !tbaa !125
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 196
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 128
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.s, ptr noundef nonnull align 8 dereferenceable(12) %i.t, i64 12, i1 false), !tbaa.struct !148
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 212
  %i.w = load float, ptr %i.u, align 4, !tbaa !250
  store float %i.w, ptr %i.v, align 4, !tbaa !125
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 216
  %i.z = load float, ptr %i.x, align 8, !tbaa !251
  store float %i.z, ptr %i.y, align 4, !tbaa !125
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 148
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 220
  %i.ac = load float, ptr %i.aa, align 4, !tbaa !252
  store float %i.ac, ptr %i.ab, align 4, !tbaa !125
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 224
  %i.af = load float, ptr %i.ad, align 8, !tbaa !253
  store float %i.af, ptr %i.ae, align 4, !tbaa !125
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 156
  %i.ah = getelementptr inbounds nuw i8, ptr %i.j, i64 228
  %i.ai = load float, ptr %i.ag, align 4, !tbaa !254
  store float %i.ai, ptr %i.ah, align 4, !tbaa !125
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.ak = getelementptr inbounds nuw i8, ptr %i.j, i64 232
  %i.al = load float, ptr %i.aj, align 8, !tbaa !255
  store float %i.al, ptr %i.ak, align 4, !tbaa !125
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 164
  %i.an = getelementptr inbounds nuw i8, ptr %i.j, i64 236
  %i.ao = load float, ptr %i.am, align 4, !tbaa !256
  store float %i.ao, ptr %i.an, align 4, !tbaa !125
  %i.ap = load i32, ptr %i.j, align 4, !tbaa !126 ; 2 uses
  %i.aq = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.ap, i32 1), !nosanitize !33 ; 2 uses
  %i.ar = extractvalue { i32, i1 } %i.aq, 0, !nosanitize !33 ; 2 uses
  %i.as = extractvalue { i32, i1 } %i.aq, 1, !nosanitize !33
  br i1 %i.as, label %bb.g, label %bb.h, !prof !34, !nosanitize !33

bb.g:                                             ; preds = %bb.f
  %i.at = zext nneg i32 %i.ap to i64, !nosanitize !33
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @44, i64 %i.at, i64 1) #12, !nosanitize !33
  unreachable, !nosanitize !33

bb.h:                                             ; preds = %bb.f
  %i.au = ptrtoint ptr %i.a to i64, !nosanitize !33 ; 2 uses
  %i.av = and i64 %i.au, 7, !nosanitize !33
  %i.aw = icmp eq i64 %i.av, 0, !nosanitize !33
  br i1 %i.aw, label %bb.j, label %bb.i, !prof !35, !nosanitize !33

bb.i:                                             ; preds = %bb.h
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @45, i64 %i.au) #12, !nosanitize !33
  unreachable, !nosanitize !33

bb.j:                                             ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 4760
  %i.ay = load i16, ptr %i.ax, align 8, !tbaa !127 ; 2 uses
  %i.az = icmp ne ptr %i.i, null, !nosanitize !33
  %i.ba = ptrtoint ptr %i.i to i64, !nosanitize !33 ; 2 uses
  %i.bb = and i64 %i.ba, 7, !nosanitize !33
  %i.bc = icmp eq i64 %i.bb, 0, !nosanitize !33
  %i.bd = and i1 %i.az, %i.bc, !nosanitize !33
  br i1 %i.bd, label %bb.l, label %bb.k, !prof !35, !nosanitize !33

bb.k:                                             ; preds = %bb.j
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @46, i64 %i.ba) #12, !nosanitize !33
  unreachable, !nosanitize !33

bb.l:                                             ; preds = %bb.j
  %i.be = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.bf = load i16, ptr %i.be, align 8, !tbaa !128 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 4736
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !112 ; 2 uses
  %.not = icmp eq ptr %i.bh, null
  br i1 %.not, label %._crit_edge, label %bb.m

._crit_edge:                                      ; preds = %bb.l
  %.pre = zext i16 %i.bf to i64
  %.pre49 = shl nuw i64 %.pre, 48
  %.pre51 = zext i16 %i.ay to i64
  %.pre53 = shl nuw nsw i64 %.pre51, 32
  %.pre55 = zext i32 %i.ar to i64
  %.pre57 = or disjoint i64 %.pre53, %.pre55
  %.pre59 = or disjoint i64 %.pre57, %.pre49
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  store i32 %0, ptr %2, align 8, !tbaa !16
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.bi, align 4
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.bj, ptr noundef nonnull align 8 dereferenceable(168) %1, i64 168, i1 false), !tbaa.struct !257
  %.sroa.6.0.insert.ext = zext i16 %i.bf to i64
  %.sroa.6.0.insert.shift = shl nuw i64 %.sroa.6.0.insert.ext, 48
  %.sroa.4.0.insert.ext = zext i16 %i.ay to i64
  %.sroa.4.0.insert.shift = shl nuw nsw i64 %.sroa.4.0.insert.ext, 32
  %.sroa.029.0.insert.ext = zext i32 %i.ar to i64
  %.sroa.4.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.shift, %.sroa.029.0.insert.ext
  %.sroa.029.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.insert, %.sroa.6.0.insert.shift ; 2 uses
  call void @b3RecWriteRet_CreateMotorJoint(ptr noundef nonnull %i.bh, ptr noundef nonnull %2, i64 %.sroa.029.0.insert.insert) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  br label %bb.n
end_hunk_0
begin_hunk_1_@b3Joint_SetCollideConnected:bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 3960
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !89 ; 3 uses
  %i.ak = sext i32 %i.ah to i64                   ; 2 uses
  %i.al = mul nsw i64 %i.ak, 72
  %i.am = ptrtoint ptr %i.aj to i64, !nosanitize !33 ; 3 uses
  %i.an = add i64 %i.al, %i.am, !nosanitize !33   ; 3 uses
  %i.ao = icmp ne ptr %i.aj, null, !nosanitize !33
  %i.ap = icmp eq i64 %i.an, 0
  %i.aq = xor i1 %i.ao, %i.ap
  %i.ar = icmp uge i64 %i.an, %i.am, !nosanitize !33
  %i.as = icmp slt i32 %i.ah, 0
  %i.at = xor i1 %i.as, %i.ar
  %i.au = and i1 %i.aq, %i.at, !nosanitize !33
  br i1 %i.au, label %b3GetJointFullId.exit46, label %bb.j, !prof !35, !nosanitize !33

bb.j:                                             ; preds = %bb.i
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @7, i64 %i.am, i64 %i.an) #12, !nosanitize !33
  unreachable, !nosanitize !33

b3GetJointFullId.exit46:                          ; preds = %bb.i
  %i.av = getelementptr inbounds [72 x i8], ptr %i.aj, i64 %i.ak
  br label %bb.k

bb.k:                                             ; preds = %b3GetJointFullId.exit, %b3GetJointFullId.exit46
  %phi.call = phi ptr [ %i.ab, %b3GetJointFullId.exit ], [ %i.av, %b3GetJointFullId.exit46 ] ; 5 uses
  %i.aw = icmp ne ptr %phi.call, null, !nosanitize !33
  %i.ax = ptrtoint ptr %phi.call to i64, !nosanitize !33 ; 2 uses
  %i.ay = and i64 %i.ax, 7, !nosanitize !33
  %i.az = icmp eq i64 %i.ay, 0, !nosanitize !33
  %i.ba = and i1 %i.aw, %i.az, !nosanitize !33
  br i1 %i.ba, label %bb.m, label %bb.l, !prof !35, !nosanitize !33

bb.l:                                             ; preds = %bb.k
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @147, i64 %i.ax) #12, !nosanitize !33
  unreachable, !nosanitize !33

bb.m:                                             ; preds = %bb.k
  %i.bb = getelementptr inbounds nuw i8, ptr %phi.call, i64 66 ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 2, !tbaa !137 ; 3 uses
  %i.bd = icmp ult i8 %i.bc, 2
  br i1 %i.bd, label %bb.o, label %bb.n, !prof !35, !nosanitize !33

bb.n:                                             ; preds = %bb.m
  %i.be = zext i8 %i.bc to i64, !nosanitize !33
  call void @__ubsan_handle_load_invalid_value_abort(ptr nonnull @148, i64 %i.be) #12, !nosanitize !33
  unreachable, !nosanitize !33

bb.o:                                             ; preds = %bb.m
  %i.bf = icmp eq i8 %i.bc, %i.a
  br i1 %i.bf, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i8 %i.a, ptr %i.bb, align 2, !tbaa !137
  %i.bg = getelementptr inbounds nuw i8, ptr %i.d, i64 3880
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !149 ; 7 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %phi.call, i64 20 ; 3 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !139 ; 2 uses
  %i.bk = sext i32 %i.bj to i64                   ; 5 uses
  %i.bl = getelementptr inbounds [128 x i8], ptr %i.bh, i64 %i.bk ; 3 uses
  %i.bm = shl nsw i64 %i.bk, 7
  %i.bn = ptrtoint ptr %i.bh to i64, !nosanitize !33 ; 6 uses
  %i.bo = add i64 %i.bm, %i.bn, !nosanitize !33   ; 3 uses
  %i.bp = icmp ne ptr %i.bh, null                 ; 3 uses
  %i.bq = icmp eq i64 %i.bo, 0
  %i.br = xor i1 %i.bp, %i.bq
  %i.bs = icmp uge i64 %i.bo, %i.bn, !nosanitize !33
  %i.bt = icmp slt i32 %i.bj, 0
  %i.bu = xor i1 %i.bt, %i.bs
  %i.bv = and i1 %i.br, %i.bu, !nosanitize !33
  br i1 %i.bv, label %bb.r, label %bb.q, !prof !35, !nosanitize !33

bb.q:                                             ; preds = %bb.p
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @149, i64 %i.bn, i64 %i.bo) #12, !nosanitize !33
  unreachable, !nosanitize !33

bb.r:                                             ; preds = %bb.p
  %.not42 = icmp ugt ptr %i.bi, inttoptr (i64 -13 to ptr)
  br i1 %.not42, label %bb.s, label %bb.t, !prof !34, !nosanitize !33

bb.s:                                             ; preds = %bb.r
  %i.bw = ptrtoint ptr %i.bi to i64, !nosanitize !33 ; 2 uses
  %i.bx = add i64 %i.bw, 12, !nosanitize !33
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @150, i64 %i.bw, i64 %i.bx) #12, !nosanitize !33
  unreachable, !nosanitize !33

bb.t:                                             ; preds = %bb.r
  %i.by = getelementptr inbounds nuw i8, ptr %phi.call, i64 32
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !139 ; 2 uses
  %i.ca = sext i32 %i.bz to i64                   ; 5 uses
  %i.cb = getelementptr inbounds [128 x i8], ptr %i.bh, i64 %i.ca ; 4 uses
  %i.cc = shl nsw i64 %i.ca, 7
  %i.cd = add i64 %i.cc, %i.bn, !nosanitize !33   ; 3 uses
  %i.ce = icmp eq i64 %i.cd, 0
  %i.cf = xor i1 %i.bp, %i.ce
  %i.cg = icmp uge i64 %i.cd, %i.bn, !nosanitize !33
  %i.ch = icmp slt i32 %i.bz, 0
  %i.ci = xor i1 %i.ch, %i.cg
  %i.cj = and i1 %i.cf, %i.ci, !nosanitize !33
  br i1 %i.cj, label %bb.v, label %bb.u, !prof !35, !nosanitize !33

bb.u:                                             ; preds = %bb.t
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @151, i64 %i.bn, i64 %i.cd) #12, !nosanitize !33
  unreachable, !nosanitize !33

bb.v:                                             ; preds = %bb.t
  %i.ck = ptrtoint ptr %i.bl to i64, !nosanitize !33 ; 3 uses
  %i.cl = and i64 %i.ck, 7, !nosanitize !33
  %i.cm = icmp eq i64 %i.cl, 0, !nosanitize !33
  %i.cn = and i1 %i.bp, %i.cm                     ; 2 uses
  br i1 %1, label %bb.w, label %bb.ap

bb.w:                                             ; preds = %bb.v
  br i1 %i.cn, label %bb.y, label %bb.x, !prof !35, !nosanitize !33

bb.x:                                             ; preds = %bb.w
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @152, i64 %i.ck) #12, !nosanitize !33
  unreachable, !nosanitize !33

bb.y:                                             ; preds = %bb.w
  %i.co = ptrtoint ptr %i.cb to i64, !nosanitize !33 ; 2 uses
  %i.cp = and i64 %i.co, 7, !nosanitize !33
  %i.cq = icmp eq i64 %i.cp, 0, !nosanitize !33
  br i1 %i.cq, label %.split349.us, label %bb.z, !prof !35, !nosanitize !33

bb.z:                                             ; preds = %bb.y
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @153, i64 %i.co) #12, !nosanitize !33
  unreachable, !nosanitize !33

.split349.us:                                     ; preds = %bb.y
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bl, i64 28
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !328
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cb, i64 28
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !328
  %i.cv = icmp slt i32 %i.cs, %i.cu
  %. = select i1 %i.cv, i64 %i.bk, i64 %i.ca
  %i.cw = getelementptr inbounds nuw i8, ptr %i.d, i64 4080
  %i.cx = getelementptr inbounds nuw i8, ptr %i.d, i64 1040 ; 2 uses
  %i.cy = ptrtoint ptr %i.cx to i64               ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.d, i64 1088 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.d, i64 1096 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.d, i64 1100 ; 2 uses
  %i.dc = getelementptr inbounds [128 x i8], ptr %i.bh, i64 %.
  %.in = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  %.0.us.us997 = load i32, ptr %.in, align 4, !tbaa !14 ; 2 uses
  %.not43.us.us998 = icmp eq i32 %.0.us.us997, -1
  br i1 %.not43.us.us998, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.split349.us, %b3BufferMove.exit.us.us
  %.0.us.us999 = phi i32 [ %.0.us.us, %b3BufferMove.exit.us.us ], [ %.0.us.us997, %.split349.us ] ; 2 uses
  %i.dd = load ptr, ptr %i.cw, align 8, !tbaa !329 ; 3 uses
  %i.de = sext i32 %.0.us.us999 to i64            ; 2 uses
  %i.df = getelementptr inbounds [232 x i8], ptr %i.dd, i64 %i.de ; 3 uses
  %i.dg = mul nsw i64 %i.de, 232
  %i.dh = ptrtoint ptr %i.dd to i64, !nosanitize !33 ; 3 uses
  %i.di = add i64 %i.dg, %i.dh, !nosanitize !33   ; 3 uses
  %i.dj = icmp ne ptr %i.dd, null, !nosanitize !33 ; 2 uses
  %i.dk = icmp eq i64 %i.di, 0
  %i.dl = xor i1 %i.dj, %i.dk
  %i.dm = icmp uge i64 %i.di, %i.dh, !nosanitize !33
  %i.dn = icmp slt i32 %.0.us.us999, 0
  %i.do = xor i1 %i.dn, %i.dm
  %i.dp = and i1 %i.dl, %i.do, !nosanitize !33
  br i1 %i.dp, label %bb.aa, label %.split351.us, !prof !35, !nosanitize !33

bb.aa:                                            ; preds = %.lr.ph
  %i.dq = ptrtoint ptr %i.df to i64, !nosanitize !33 ; 2 uses
  %i.dr = and i64 %i.dq, 7, !nosanitize !33
  %i.ds = icmp eq i64 %i.dr, 0, !nosanitize !33
  %i.dt = and i1 %i.dj, %i.ds
  br i1 %i.dt, label %bb.ab, label %.split354.us, !prof !35, !nosanitize !33

bb.ab:                                            ; preds = %bb.aa
  %i.du = getelementptr inbounds nuw i8, ptr %i.df, i64 20
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !334 ; 4 uses
  %.not44.us.us = icmp eq i32 %i.dv, -1
  br i1 %.not44.us.us, label %b3BufferMove.exit.us.us, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dw = ashr i32 %i.dv, 2                       ; 3 uses
  %i.dx = and i32 %i.dv, 3
  %i.dy = zext nneg i32 %i.dx to i64, !nosanitize !33 ; 2 uses
  %i.dz = getelementptr inbounds nuw [16 x i8], ptr %i.cx, i64 %i.dy ; 4 uses
  %i.ea = shl nuw nsw i64 %i.dy, 4
  %i.eb = add i64 %i.ea, %i.cy, !nosanitize !33   ; 2 uses
  %.not.i.us.us = icmp ult i64 %i.eb, %i.cy, !nosanitize !33
  br i1 %.not.i.us.us, label %.split363.us, label %bb.ad, !prof !34, !nosanitize !33

bb.ad:                                            ; preds = %bb.ac
  %i.ec = lshr i32 %i.dw, 6                       ; 4 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dz, i64 12
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !335
  %.not.i.i.us.us = icmp ult i32 %i.ec, %i.ee
  br i1 %.not.i.i.us.us, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ef = add nuw nsw i32 %i.ec, 1
  call void @b3GrowBitSet(ptr noundef nonnull %i.dz, i32 noundef %i.ef) #11
  %.pre.i.us.us = load ptr, ptr %i.dz, align 8, !tbaa !336 ; 2 uses
  %.pre29.i.us.us = zext nneg i32 %i.ec to i64    ; 2 uses
  %.pre31.i.us.us = shl nuw nsw i64 %.pre29.i.us.us, 3
  %.pre33.i.us.us = ptrtoint ptr %.pre.i.us.us to i64, !nosanitize !33 ; 2 uses
  %.pre35.i.us.us = add i64 %.pre31.i.us.us, %.pre33.i.us.us, !nosanitize !33
  br label %.thread.i.us.us

bb.af:                                            ; preds = %bb.ad
  %i.eg = load ptr, ptr %i.dz, align 8, !tbaa !336 ; 4 uses
  %i.eh = zext nneg i32 %i.ec to i64              ; 3 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.eh ; 2 uses
  %i.ej = shl nuw nsw i64 %i.eh, 3
  %i.ek = ptrtoint ptr %i.eg to i64, !nosanitize !33 ; 4 uses
  %i.el = add i64 %i.ej, %i.ek, !nosanitize !33   ; 4 uses
  %i.em = icmp ne ptr %i.eg, null, !nosanitize !33 ; 2 uses
  %i.en = icmp eq i64 %i.el, 0
  %i.eo = xor i1 %i.em, %i.en
  %i.ep = icmp uge i64 %i.el, %i.ek, !nosanitize !33
  %i.eq = and i1 %i.ep, %i.eo, !nosanitize !33
  br i1 %i.eq, label %bb.ag, label %.split373.us, !prof !35, !nosanitize !33

bb.ag:                                            ; preds = %bb.af
  %i.er = ptrtoint ptr %i.ei to i64, !nosanitize !33 ; 2 uses
  %i.es = and i64 %i.er, 7, !nosanitize !33
  %i.et = icmp eq i64 %i.es, 0, !nosanitize !33
  %i.eu = and i1 %i.em, %i.et
  br i1 %i.eu, label %b3GetBit.exit.i.us.us, label %.split377.us, !prof !35, !nosanitize !33

b3GetBit.exit.i.us.us:                            ; preds = %bb.ag
  %i.ev = and i32 %i.dw, 63
  %i.ew = zext nneg i32 %i.ev to i64
  %i.ex = load i64, ptr %i.ei, align 8, !tbaa !337
  %i.ey = shl nuw i64 1, %i.ew
  %i.ez = and i64 %i.ex, %i.ey
  %.not28.i.us.us = icmp eq i64 %i.ez, 0
  br i1 %.not28.i.us.us, label %.thread.i.us.us, label %b3BufferMove.exit.us.us

.thread.i.us.us:                                  ; preds = %b3GetBit.exit.i.us.us, %bb.ae
  %.pre-phi36.i.us.us = phi i64 [ %i.el, %b3GetBit.exit.i.us.us ], [ %.pre35.i.us.us, %bb.ae ] ; 3 uses
  %.pre-phi34.i.us.us = phi i64 [ %i.ek, %b3GetBit.exit.i.us.us ], [ %.pre33.i.us.us, %bb.ae ] ; 2 uses
  %.pre-phi.i.us.us = phi i64 [ %i.eh, %b3GetBit.exit.i.us.us ], [ %.pre29.i.us.us, %bb.ae ]
  %i.fa = phi ptr [ %i.eg, %b3GetBit.exit.i.us.us ], [ %.pre.i.us.us, %bb.ae ] ; 2 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %.pre-phi.i.us.us ; 3 uses
  %i.fc = icmp ne ptr %i.fa, null, !nosanitize !33 ; 2 uses
  %i.fd = icmp eq i64 %.pre-phi36.i.us.us, 0
  %i.fe = xor i1 %i.fd, %i.fc
  %i.ff = icmp uge i64 %.pre-phi36.i.us.us, %.pre-phi34.i.us.us, !nosanitize !33
  %i.fg = and i1 %i.ff, %i.fe, !nosanitize !33
  br i1 %i.fg, label %bb.ah, label %.split380.us, !prof !35, !nosanitize !33

bb.ah:                                            ; preds = %.thread.i.us.us
  %i.fh = ptrtoint ptr %i.fb to i64, !nosanitize !33 ; 2 uses
  %i.fi = and i64 %i.fh, 7, !nosanitize !33
  %i.fj = icmp eq i64 %i.fi, 0, !nosanitize !33
  %i.fk = and i1 %i.fc, %i.fj
  br i1 %i.fk, label %b3SetBitGrow.exit.i.us.us, label %.split384.us, !prof !35, !nosanitize !33

b3SetBitGrow.exit.i.us.us:                        ; preds = %bb.ah
  %i.fl = and i32 %i.dw, 63
  %i.fm = zext nneg i32 %i.fl to i64
  %i.fn = shl nuw i64 1, %i.fm
  %i.fo = load i64, ptr %i.fb, align 8, !tbaa !337
  %i.fp = or i64 %i.fo, %i.fn
  store i64 %i.fp, ptr %i.fb, align 8, !tbaa !337
  %i.fq = load i32, ptr %i.da, align 8, !tbaa !338 ; 2 uses
  %i.fr = load i32, ptr %i.db, align 4, !tbaa !339 ; 6 uses
  %.not25.i.us.us = icmp slt i32 %i.fq, %i.fr
  br i1 %.not25.i.us.us, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %b3SetBitGrow.exit.i.us.us
  %i.fs = shl i32 %i.fr, 2
  %i.ft = icmp eq i32 %i.fr, 0
  br i1 %i.ft, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fu = shl nsw i32 %i.fr, 1
  %i.fv = add i32 %i.fr, 1073741824
  %i.fw = icmp sgt i32 %i.fv, -1
  br i1 %i.fw, label %bb.ak, label %.split396.us, !prof !35, !nosanitize !33

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.fx = phi i32 [ 8, %bb.ai ], [ %i.fu, %bb.aj ] ; 2 uses
  %i.fy = shl i32 %i.fx, 2
  %i.fz = load ptr, ptr %i.cz, align 8, !tbaa !340
  %i.ga = call ptr @b3GrowAlloc(ptr noundef %i.fz, i32 noundef %i.fs, i32 noundef %i.fy) #11
  store ptr %i.ga, ptr %i.cz, align 8, !tbaa !340
  store i32 %i.fx, ptr %i.db, align 4, !tbaa !339
  %.pre30.i.us.us = load i32, ptr %i.da, align 8, !tbaa !338
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %b3SetBitGrow.exit.i.us.us
  %i.gb = phi i32 [ %i.fq, %b3SetBitGrow.exit.i.us.us ], [ %.pre30.i.us.us, %bb.ak ] ; 4 uses
  %i.gc = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.gb, i32 1), !nosanitize !33 ; 2 uses
  %i.gd = extractvalue { i32, i1 } %i.gc, 1, !nosanitize !33
  br i1 %i.gd, label %.split399.us, label %bb.am, !prof !34, !nosanitize !33

bb.am:                                            ; preds = %bb.al
  %i.ge = load ptr, ptr %i.cz, align 8, !tbaa !340 ; 3 uses
  %i.gf = extractvalue { i32, i1 } %i.gc, 0, !nosanitize !33
  store i32 %i.gf, ptr %i.da, align 8, !tbaa !338
  %i.gg = sext i32 %i.gb to i64                   ; 2 uses
  %i.gh = getelementptr inbounds [4 x i8], ptr %i.ge, i64 %i.gg ; 2 uses
  %i.gi = shl nsw i64 %i.gg, 2
  %i.gj = ptrtoint ptr %i.ge to i64, !nosanitize !33 ; 3 uses
  %i.gk = add i64 %i.gi, %i.gj, !nosanitize !33   ; 3 uses
  %i.gl = icmp ne ptr %i.ge, null, !nosanitize !33 ; 2 uses
  %i.gm = icmp eq i64 %i.gk, 0
  %i.gn = xor i1 %i.gl, %i.gm
  %i.go = icmp uge i64 %i.gk, %i.gj, !nosanitize !33
  %i.gp = icmp slt i32 %i.gb, 0
  %i.gq = xor i1 %i.gp, %i.go
  %i.gr = and i1 %i.gn, %i.gq, !nosanitize !33
  br i1 %i.gr, label %bb.an, label %.split402.us, !prof !35, !nosanitize !33

bb.an:                                            ; preds = %bb.am
  %i.gs = ptrtoint ptr %i.gh to i64, !nosanitize !33 ; 2 uses
  %i.gt = and i64 %i.gs, 3, !nosanitize !33
  %i.gu = icmp eq i64 %i.gt, 0, !nosanitize !33
  %i.gv = and i1 %i.gl, %i.gu
  br i1 %i.gv, label %bb.ao, label %.split406.us, !prof !35, !nosanitize !33

bb.ao:                                            ; preds = %bb.an
  store i32 %i.dv, ptr %i.gh, align 4, !tbaa !14
  br label %b3BufferMove.exit.us.us

b3BufferMove.exit.us.us:                          ; preds = %bb.ao, %b3GetBit.exit.i.us.us, %bb.ab
  %i.gw = getelementptr inbounds nuw i8, ptr %i.df, i64 12
  %.0.us.us = load i32, ptr %i.gw, align 4, !tbaa !14 ; 2 uses
  %.not43.us.us = icmp eq i32 %.0.us.us, -1
  br i1 %.not43.us.us, label %.loopexit, label %.lr.ph

.split351.us:                                     ; preds = %.lr.ph
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @154, i64 %i.dh, i64 %i.di) #12, !nosanitize !33
  unreachable, !nosanitize !33

.split354.us:                                     ; preds = %bb.aa
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @156, i64 %i.dq) #12, !nosanitize !33
  unreachable, !nosanitize !33

.split363.us:                                     ; preds = %bb.ac
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @288, i64 %i.cy, i64 %i.eb) #12, !nosanitize !33
  unreachable, !nosanitize !33

.split373.us:                                     ; preds = %bb.af
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @293, i64 %i.ek, i64 %i.el) #12, !nosanitize !33
  unreachable, !nosanitize !33

.split377.us:                                     ; preds = %bb.ag
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @294, i64 %i.er) #12, !nosanitize !33
  unreachable, !nosanitize !33

.split380.us:                                     ; preds = %.thread.i.us.us
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @295, i64 %.pre-phi34.i.us.us, i64 %.pre-phi36.i.us.us) #12, !nosanitize !33
  unreachable, !nosanitize !33

.split384.us:                                     ; preds = %bb.ah
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @296, i64 %i.fh) #12, !nosanitize !33
  unreachable, !nosanitize !33

.split396.us:                                     ; preds = %bb.aj
  %i.gx = zext i32 %i.fr to i64, !nosanitize !33
  call void @__ubsan_handle_mul_overflow_abort(ptr nonnull @289, i64 2, i64 %i.gx) #12, !nosanitize !33
  unreachable, !nosanitize !33

.split399.us:                                     ; preds = %bb.al
  %i.gy = zext nneg i32 %i.gb to i64, !nosanitize !33
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @290, i64 %i.gy, i64 1) #12, !nosanitize !33
  unreachable, !nosanitize !33

.split402.us:                                     ; preds = %bb.am
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @291, i64 %i.gj, i64 %i.gk) #12, !nosanitize !33
  unreachable, !nosanitize !33

.split406.us:                                     ; preds = %bb.an
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @292, i64 %i.gs) #12, !nosanitize !33
  unreachable, !nosanitize !33

bb.ap:                                            ; preds = %bb.v
  br i1 %i.cn, label %bb.ar, label %bb.aq, !prof !35, !nosanitize !33

bb.aq:                                            ; preds = %bb.ap
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @297, i64 %i.ck) #12, !nosanitize !33
  unreachable, !nosanitize !33

bb.ar:                                            ; preds = %bb.ap
  %i.gz = ptrtoint ptr %i.cb to i64, !nosanitize !33 ; 2 uses
  %i.ha = and i64 %i.gz, 7, !nosanitize !33
  %i.hb = icmp eq i64 %i.ha, 0, !nosanitize !33
  br i1 %i.hb, label %bb.at, label %bb.as, !prof !35, !nosanitize !33

bb.as:                                            ; preds = %bb.ar
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @298, i64 %i.gz) #12, !nosanitize !33
  unreachable, !nosanitize !33

bb.at:                                            ; preds = %bb.ar
  %i.hc = getelementptr inbounds nuw i8, ptr %i.bl, i64 20
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !341
  %i.he = getelementptr inbounds nuw i8, ptr %i.cb, i64 20
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !341
  %i.hg = icmp slt i32 %i.hd, %i.hf               ; 2 uses
  %i.hh = select i1 %i.hg, i64 %i.bk, i64 %i.ca
  %i.hi = select i1 %i.hg, i64 %i.ca, i64 %i.bk
  %i.hj = getelementptr inbounds [128 x i8], ptr %i.bh, i64 %i.hi
  %.0.in.i = getelementptr inbounds nuw i8, ptr %i.hj, i64 108
  %i.hk = getelementptr inbounds [128 x i8], ptr %i.bh, i64 %i.hh
  %.020.in.i = getelementptr inbounds nuw i8, ptr %i.hk, i64 16
  %.020.i = load i32, ptr %.020.in.i, align 8, !tbaa !342 ; 2 uses
  %.0.i = load i32, ptr %.0.in.i, align 4, !tbaa !130
  %.not88.i = icmp eq i32 %.020.i, -1
  br i1 %.not88.i, label %b3DestroyContactsBetweenBodies.exit, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %bb.at
  %i.hl = getelementptr inbounds nuw i8, ptr %i.d, i64 4000
  br label %.lr.ph.split.split.i

.lr.ph.split.split.i:                             ; preds = %.lr.ph.split.i, %bb.bd
  %.189.i = phi i32 [ %i.im, %bb.bd ], [ %.020.i, %.lr.ph.split.i ] ; 2 uses
  %i.hm = ashr i32 %.189.i, 1                     ; 2 uses
  %i.hn = and i32 %.189.i, 1                      ; 2 uses
  %i.ho = load ptr, ptr %i.hl, align 8, !tbaa !343 ; 3 uses
  %i.hp = sext i32 %i.hm to i64                   ; 2 uses
  %i.hq = getelementptr inbounds [216 x i8], ptr %i.ho, i64 %i.hp ; 3 uses
  %i.hr = mul nsw i64 %i.hp, 216
  %i.hs = ptrtoint ptr %i.ho to i64, !nosanitize !33 ; 3 uses
  %i.ht = add i64 %i.hr, %i.hs, !nosanitize !33   ; 3 uses
  %i.hu = icmp ne ptr %i.ho, null, !nosanitize !33 ; 2 uses
  %i.hv = icmp eq i64 %i.ht, 0
  %i.hw = xor i1 %i.hu, %i.hv
  %i.hx = icmp uge i64 %i.ht, %i.hs, !nosanitize !33
  %i.hy = icmp slt i32 %i.hm, 0
  %i.hz = xor i1 %i.hy, %i.hx
  %i.ia = and i1 %i.hw, %i.hz, !nosanitize !33
  br i1 %i.ia, label %bb.av, label %bb.au, !prof !35, !nosanitize !33

bb.au:                                            ; preds = %.lr.ph.split.split.i
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @299, i64 %i.hs, i64 %i.ht) #12, !nosanitize !33
  unreachable, !nosanitize !33

bb.av:                                            ; preds = %.lr.ph.split.split.i
  %i.ib = ptrtoint ptr %i.hq to i64, !nosanitize !33 ; 2 uses
  %i.ic = and i64 %i.ib, 7, !nosanitize !33
  %i.id = icmp eq i64 %i.ic, 0, !nosanitize !33
  %i.ie = and i1 %i.hu, %i.id
  br i1 %i.ie, label %bb.ax, label %bb.aw, !prof !35, !nosanitize !33

bb.aw:                                            ; preds = %bb.av
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @301, i64 %i.ib) #12, !nosanitize !33
  unreachable, !nosanitize !33

bb.ax:                                            ; preds = %bb.av
  %i.if = getelementptr inbounds nuw i8, ptr %i.hq, i64 12 ; 3 uses
  %i.ig = zext nneg i32 %i.hn to i64              ; 2 uses
  %i.ih = mul nuw nsw i64 %i.ig, 12
  %i.ii = ptrtoint ptr %i.if to i64, !nosanitize !33 ; 6 uses
  %i.ij = add i64 %i.ih, %i.ii, !nosanitize !33   ; 2 uses
  %.not28.i47 = icmp ult i64 %i.ij, %i.ii, !nosanitize !33
  br i1 %.not28.i47, label %bb.ay, label %bb.az, !prof !34, !nosanitize !33

bb.ay:                                            ; preds = %bb.ax
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @302, i64 %i.ii, i64 %i.ij) #12, !nosanitize !33
  unreachable, !nosanitize !33

bb.az:                                            ; preds = %bb.ax
  %i.ik = getelementptr inbounds nuw [12 x i8], ptr %i.if, i64 %i.ig
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  %i.im = load i32, ptr %i.il, align 4, !tbaa !345 ; 2 uses
  %i.in = xor i32 %i.hn, 1
  %i.io = zext nneg i32 %i.in to i64              ; 2 uses
  %i.ip = mul nuw nsw i64 %i.io, 12
  %i.iq = add i64 %i.ip, %i.ii, !nosanitize !33   ; 2 uses
  %.not29.i = icmp ult i64 %i.iq, %i.ii, !nosanitize !33
  br i1 %.not29.i, label %bb.ba, label %bb.bb, !prof !34, !nosanitize !33

bb.ba:                                            ; preds = %bb.az
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @303, i64 %i.ii, i64 %i.iq) #12, !nosanitize !33
  unreachable, !nosanitize !33

bb.bb:                                            ; preds = %bb.az
  %i.ir = getelementptr inbounds nuw [12 x i8], ptr %i.if, i64 %i.io
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !346
  %i.it = icmp eq i32 %i.is, %.0.i
  br i1 %i.it, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  call void @b3DestroyContact(ptr noundef nonnull %i.d, ptr noundef nonnull %i.hq, i1 noundef zeroext false) #11
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.not.i48 = icmp eq i32 %i.im, -1
  br i1 %.not.i48, label %b3DestroyContactsBetweenBodies.exit, label %.lr.ph.split.split.i, !llvm.loop !327

b3DestroyContactsBetweenBodies.exit:              ; preds = %bb.bd, %bb.at
  call void @b3ValidateSolverSets(ptr noundef nonnull %i.d) #11
  br label %.loopexit

.loopexit:                                        ; preds = %b3BufferMove.exit.us.us, %.split349.us, %bb.o, %b3DestroyContactsBetweenBodies.exit, %bb.a
  ret void
}

declare ptr @b3GetUnlockedWorld(i32 noundef) local_unnamed_addr #4

declare void @b3RecWrite_JointSetCollideConnected(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define zeroext i1 @b3Joint_GetCollideConnected(i64 %0) local_unnamed_addr #0 !func_sanitize !158 {
bb.a:
  %.sroa.2.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b3GetWorld(i32 noundef %i.b) #11 ; 3 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %0 to i32
  %i.d = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.sroa.0.0.extract.trunc.i, i32 -1) ; 2 uses
  %i.e = extractvalue { i32, i1 } %i.d, 0, !nosanitize !33 ; 2 uses
  %i.f = extractvalue { i32, i1 } %i.d, 1, !nosanitize !33
  br i1 %i.f, label %bb.b, label %bb.c, !prof !34, !nosanitize !33

bb.b:                                             ; preds = %bb.a
  %i.g = and i64 %0, 4294967295
  tail call void @__ubsan_handle_sub_overflow_abort(ptr nonnull @4, i64 %i.g, i64 1) #12, !nosanitize !33
  unreachable, !nosanitize !33

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ne ptr %i.c, null, !nosanitize !33
  %i.i = ptrtoint ptr %i.c to i64, !nosanitize !33 ; 2 uses
  %i.j = and i64 %i.i, 7, !nosanitize !33
  %i.k = icmp eq i64 %i.j, 0, !nosanitize !33
  %i.l = and i1 %i.h, %i.k, !nosanitize !33
  br i1 %i.l, label %bb.e, label %bb.d, !prof !35, !nosanitize !33

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @6, i64 %i.i) #12, !nosanitize !33
  unreachable, !nosanitize !33

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 3960
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !89   ; 3 uses
  %i.o = sext i32 %i.e to i64                     ; 2 uses
  %i.p = mul nsw i64 %i.o, 72
  %i.q = ptrtoint ptr %i.n to i64, !nosanitize !33 ; 3 uses
  %i.r = add i64 %i.p, %i.q, !nosanitize !33      ; 3 uses
  %i.s = icmp ne ptr %i.n, null                   ; 2 uses
  %i.t = icmp eq i64 %i.r, 0
  %i.u = xor i1 %i.s, %i.t
  %i.v = icmp uge i64 %i.r, %i.q, !nosanitize !33
  %i.w = icmp slt i32 %i.e, 0
  %i.x = xor i1 %i.w, %i.v
  %i.y = and i1 %i.u, %i.x, !nosanitize !33
  br i1 %i.y, label %b3GetJointFullId.exit, label %bb.f, !prof !35, !nosanitize !33

bb.f:                                             ; preds = %bb.e
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @7, i64 %i.q, i64 %i.r) #12, !nosanitize !33
  unreachable, !nosanitize !33

end_hunk_1
