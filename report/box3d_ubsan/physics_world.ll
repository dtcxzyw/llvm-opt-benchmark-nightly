Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/physics_world?download=true
inline.NumInlined: 282
inline.NumDeleted: 58
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumUnrolled: 15
begin_hunk_0_@b3CollideTask:bb.a
  %i.de = icmp eq i64 %i.dd, 0
  %i.df = xor i1 %i.bl, %i.de
  %i.dg = icmp uge i64 %i.dd, %i.bk, !nosanitize !10
  %i.dh = icmp slt i32 %i.da, 0
  %i.di = xor i1 %i.dh, %i.dg
  %i.dj = and i1 %i.df, %i.di, !nosanitize !10
  br i1 %i.dj, label %bb.v, label %bb.u, !prof !11, !nosanitize !10

bb.u:                                             ; preds = %bb.t
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @533, i64 %i.bk, i64 %i.dd) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.v:                                             ; preds = %bb.t
  %i.dk = getelementptr inbounds [216 x i8], ptr %i.ae, i64 %i.db ; 8 uses
  tail call void @llvm.prefetch.p0(ptr %i.dk, i32 0, i32 3, i32 1)
  %i.dl = ptrtoint ptr %i.dk to i64, !nosanitize !10 ; 6 uses
  %i.dm = add i64 %i.dl, 64, !nosanitize !10      ; 2 uses
  %i.dn = icmp ne i64 %i.dm, 0
  %i.do = icmp ult ptr %i.dk, inttoptr (i64 -64 to ptr)
  %i.dp = and i1 %i.do, %i.dn
  %i.dq = and i1 %i.bl, %i.dp
  br i1 %i.dq, label %bb.x, label %bb.w, !prof !11, !nosanitize !10

bb.w:                                             ; preds = %bb.v
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @578, i64 %i.dl, i64 %i.dm) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.x:                                             ; preds = %bb.v
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dk, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.dr, i32 0, i32 3, i32 1)
  %i.ds = add i64 %i.dl, 128, !nosanitize !10     ; 2 uses
  %i.dt = icmp ne i64 %i.ds, 0
  %i.du = icmp ult ptr %i.dk, inttoptr (i64 -128 to ptr)
  %i.dv = and i1 %i.du, %i.dt
  br i1 %i.dv, label %bb.z, label %bb.y, !prof !11, !nosanitize !10

bb.y:                                             ; preds = %bb.x
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @579, i64 %i.dl, i64 %i.ds) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.z:                                             ; preds = %bb.x
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dk, i64 128
  tail call void @llvm.prefetch.p0(ptr nonnull %i.dw, i32 0, i32 3, i32 1)
  %i.dx = add i64 %i.dl, 192, !nosanitize !10     ; 2 uses
  %i.dy = icmp ne i64 %i.dx, 0
  %i.dz = icmp ult ptr %i.dk, inttoptr (i64 -192 to ptr)
  %i.ea = and i1 %i.dz, %i.dy
  br i1 %i.ea, label %b3PrefetchContact.exit, label %bb.aa, !prof !11, !nosanitize !10

bb.aa:                                            ; preds = %bb.z
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @580, i64 %i.dl, i64 %i.dx) #15, !nosanitize !10
  unreachable, !nosanitize !10

b3PrefetchContact.exit:                           ; preds = %bb.z
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dk, i64 192
  tail call void @llvm.prefetch.p0(ptr nonnull %i.eb, i32 0, i32 3, i32 1)
  br label %bb.ab

bb.ab:                                            ; preds = %b3PrefetchContact.exit, %bb.m
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %indvars.iv6599 ; 2 uses
  %i.ed = shl nsw i64 %indvars.iv6599, 2
  %i.ee = add i64 %i.ed, %i.bi, !nosanitize !10   ; 3 uses
  %i.ef = icmp eq i64 %i.ee, 0
  %i.eg = xor i1 %i.bj, %i.ef
  %i.eh = icmp uge i64 %i.ee, %i.bi, !nosanitize !10
  %i.ei = icmp slt i64 %indvars.iv6599, 0
  %i.ej = xor i1 %i.ei, %i.eh
  %i.ek = and i1 %i.eg, %i.ej, !nosanitize !10
  br i1 %i.ek, label %bb.ad, label %bb.ac, !prof !11, !nosanitize !10

bb.ac:                                            ; preds = %bb.ab
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @534, i64 %i.bi, i64 %i.ee) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.ad:                                            ; preds = %bb.ab
  %i.el = ptrtoint ptr %i.ec to i64, !nosanitize !10 ; 2 uses
  %i.em = and i64 %i.el, 3, !nosanitize !10
  %i.en = icmp eq i64 %i.em, 0, !nosanitize !10
  %i.eo = and i1 %i.bj, %i.en
  br i1 %i.eo, label %bb.af, label %bb.ae, !prof !11, !nosanitize !10

bb.ae:                                            ; preds = %bb.ad
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @535, i64 %i.el) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.af:                                            ; preds = %bb.ad
  %i.ep = load i32, ptr %i.ec, align 4, !tbaa !84 ; 8 uses
  %i.eq = sext i32 %i.ep to i64                   ; 2 uses
  %i.er = getelementptr inbounds [216 x i8], ptr %i.ae, i64 %i.eq ; 28 uses
  %i.es = mul nsw i64 %i.eq, 216
  %i.et = add i64 %i.es, %i.bk, !nosanitize !10   ; 3 uses
  %i.eu = icmp eq i64 %i.et, 0
  %i.ev = xor i1 %i.bl, %i.eu
  %i.ew = icmp uge i64 %i.et, %i.bk, !nosanitize !10
  %i.ex = icmp slt i32 %i.ep, 0
  %i.ey = xor i1 %i.ex, %i.ew
  %i.ez = and i1 %i.ev, %i.ey, !nosanitize !10
  br i1 %i.ez, label %bb.ah, label %bb.ag, !prof !11, !nosanitize !10

bb.ag:                                            ; preds = %bb.af
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @536, i64 %i.bk, i64 %i.et) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.ah:                                            ; preds = %bb.af
  %i.fa = ptrtoint ptr %i.er to i64, !nosanitize !10 ; 2 uses
  %i.fb = and i64 %i.fa, 7, !nosanitize !10
  %i.fc = icmp eq i64 %i.fb, 0, !nosanitize !10
  %i.fd = and i1 %i.bl, %i.fc
  br i1 %i.fd, label %bb.aj, label %bb.ai, !prof !11, !nosanitize !10

bb.ai:                                            ; preds = %bb.ah
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @537, i64 %i.fa) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.aj:                                            ; preds = %bb.ah
  %i.fe = getelementptr inbounds nuw i8, ptr %i.er, i64 36
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !258 ; 2 uses
  %i.fg = sext i32 %i.ff to i64                   ; 2 uses
  %i.fh = getelementptr inbounds [232 x i8], ptr %i.ag, i64 %i.fg ; 6 uses
  %i.fi = mul nsw i64 %i.fg, 232
  %i.fj = add i64 %i.fi, %i.bm, !nosanitize !10   ; 3 uses
  %i.fk = icmp eq i64 %i.fj, 0
  %i.fl = xor i1 %i.bn, %i.fk
  %i.fm = icmp uge i64 %i.fj, %i.bm, !nosanitize !10
  %i.fn = icmp slt i32 %i.ff, 0
  %i.fo = xor i1 %i.fn, %i.fm
  %i.fp = and i1 %i.fl, %i.fo, !nosanitize !10
  br i1 %i.fp, label %bb.al, label %bb.ak, !prof !11, !nosanitize !10

bb.ak:                                            ; preds = %bb.aj
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @538, i64 %i.bm, i64 %i.fj) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.al:                                            ; preds = %bb.aj
  %i.fq = getelementptr inbounds nuw i8, ptr %i.er, i64 40
  %i.fr = load i32, ptr %i.fq, align 8, !tbaa !259 ; 2 uses
  %i.fs = sext i32 %i.fr to i64                   ; 2 uses
  %i.ft = getelementptr inbounds [232 x i8], ptr %i.ag, i64 %i.fs ; 8 uses
  %i.fu = mul nsw i64 %i.fs, 232
  %i.fv = add i64 %i.fu, %i.bm, !nosanitize !10   ; 3 uses
  %i.fw = icmp eq i64 %i.fv, 0
  %i.fx = xor i1 %i.bn, %i.fw
  %i.fy = icmp uge i64 %i.fv, %i.bm, !nosanitize !10
  %i.fz = icmp slt i32 %i.fr, 0
  %i.ga = xor i1 %i.fz, %i.fy
  %i.gb = and i1 %i.fx, %i.ga, !nosanitize !10
  br i1 %i.gb, label %bb.an, label %bb.am, !prof !11, !nosanitize !10

bb.am:                                            ; preds = %bb.al
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @539, i64 %i.bm, i64 %i.fv) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.an:                                            ; preds = %bb.al
  %i.gc = ptrtoint ptr %i.fh to i64, !nosanitize !10 ; 2 uses
  %i.gd = and i64 %i.gc, 7, !nosanitize !10
  %i.ge = icmp eq i64 %i.gd, 0, !nosanitize !10
  %i.gf = and i1 %i.bn, %i.ge
  br i1 %i.gf, label %bb.ap, label %bb.ao, !prof !11, !nosanitize !10

bb.ao:                                            ; preds = %bb.an
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @540, i64 %i.gc) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.ap:                                            ; preds = %bb.an
  %i.gg = ptrtoint ptr %i.ft to i64, !nosanitize !10 ; 2 uses
  %i.gh = and i64 %i.gg, 7, !nosanitize !10
  %i.gi = icmp eq i64 %i.gh, 0, !nosanitize !10
  br i1 %i.gi, label %bb.ar, label %bb.aq, !prof !11, !nosanitize !10

bb.aq:                                            ; preds = %bb.ap
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @541, i64 %i.gg) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.ar:                                            ; preds = %bb.ap
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fh, i64 64
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ft, i64 64
  %.sroa.0550.0.copyload = load float, ptr %i.gk, align 8
  %.sroa.4551.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ft, i64 68
  %.sroa.4551.0.copyload = load float, ptr %.sroa.4551.0..sroa_idx, align 4
  %.sroa.5552.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ft, i64 72
  %.sroa.5552.0.copyload = load float, ptr %.sroa.5552.0..sroa_idx, align 8
  %.sroa.6553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ft, i64 76
  %.sroa.8555.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ft, i64 84
  %.sroa.8555.0.copyload = load float, ptr %.sroa.8555.0..sroa_idx, align 4
  %.sroa.7548.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fh, i64 80
  %.sroa.7548.0.copyload = load float, ptr %.sroa.7548.0..sroa_idx, align 8
  %.sroa.8549.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fh, i64 84
  %.sroa.8549.0.copyload = load float, ptr %.sroa.8549.0..sroa_idx, align 4
  %i.gl = fcmp uge float %.sroa.7548.0.copyload, %.sroa.4551.0.copyload
  %i.gm = fcmp uge float %.sroa.8549.0.copyload, %.sroa.5552.0.copyload
  %i.gn = load <2 x float>, ptr %.sroa.6553.0..sroa_idx, align 4
  %i.go = load <4 x float>, ptr %i.gj, align 8    ; 2 uses
  %i.gp = insertelement <4 x float> %i.go, float %.sroa.0550.0.copyload, i64 3
  %i.gq = shufflevector <2 x float> %i.gn, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.gr = shufflevector <4 x float> %i.gq, <4 x float> %i.go, <4 x i32> <i32 0, i32 1, i32 poison, i32 7>
  %i.gs = insertelement <4 x float> %i.gr, float %.sroa.8555.0.copyload, i64 2
  %i.gt = fcmp ule <4 x float> %i.gp, %i.gs
  %i.gu = freeze <4 x i1> %i.gt
  %i.gv = bitcast <4 x i1> %i.gu to i4
  %i.gw = icmp eq i4 %i.gv, -1
  %.fr10088 = freeze i1 %i.gl
  %op.rdx = and i1 %i.gw, %.fr10088
  %op.rdx10002 = select i1 %op.rdx, i1 %i.gm, i1 false
  br i1 %op.rdx10002, label %bb.ax, label %b3AABB_Overlaps.exit.thread

b3AABB_Overlaps.exit.thread:                      ; preds = %bb.ar
  %i.gx = getelementptr inbounds nuw i8, ptr %i.er, i64 68 ; 2 uses
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !203
  %i.gz = and i32 %i.gy, -196609
  %i.ha = or disjoint i32 %i.gz, 131072
  store i32 %i.ha, ptr %i.gx, align 4, !tbaa !203
  br i1 %i.br, label %bb.at, label %bb.as, !prof !11, !nosanitize !10

bb.as:                                            ; preds = %b3AABB_Overlaps.exit.thread
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @542, i64 %i.bo) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.at:                                            ; preds = %b3AABB_Overlaps.exit.thread
  %i.hb = lshr i32 %i.ep, 6
  %i.hc = load ptr, ptr %i.bs, align 8, !tbaa !256 ; 3 uses
  %i.hd = zext nneg i32 %i.hb to i64              ; 2 uses
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.hc, i64 %i.hd ; 3 uses
  %i.hf = shl nuw nsw i64 %i.hd, 3
  %i.hg = ptrtoint ptr %i.hc to i64, !nosanitize !10 ; 3 uses
  %i.hh = add i64 %i.hf, %i.hg, !nosanitize !10   ; 3 uses
  %i.hi = icmp ne ptr %i.hc, null, !nosanitize !10 ; 2 uses
  %i.hj = icmp eq i64 %i.hh, 0
  %i.hk = xor i1 %i.hi, %i.hj
  %i.hl = icmp uge i64 %i.hh, %i.hg, !nosanitize !10
  %i.hm = and i1 %i.hl, %i.hk, !nosanitize !10
  br i1 %i.hm, label %bb.av, label %bb.au, !prof !11, !nosanitize !10

bb.au:                                            ; preds = %bb.at
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @629, i64 %i.hg, i64 %i.hh) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.av:                                            ; preds = %bb.at
  %i.hn = ptrtoint ptr %i.he to i64, !nosanitize !10 ; 2 uses
  %i.ho = and i64 %i.hn, 7, !nosanitize !10
  %i.hp = icmp eq i64 %i.ho, 0, !nosanitize !10
  %i.hq = and i1 %i.hi, %i.hp
  br i1 %i.hq, label %b3SetBit.exit, label %bb.aw, !prof !11, !nosanitize !10

bb.aw:                                            ; preds = %bb.av
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @630, i64 %i.hn) #15, !nosanitize !10
  unreachable, !nosanitize !10

b3SetBit.exit:                                    ; preds = %bb.av
  %i.hr = and i32 %i.ep, 63
  %i.hs = zext nneg i32 %i.hr to i64
  %i.ht = shl nuw i64 1, %i.hs
  %i.hu = load i64, ptr %i.he, align 8, !tbaa !257
  %i.hv = or i64 %i.hu, %i.ht
  store i64 %i.hv, ptr %i.he, align 8, !tbaa !257
  br label %bb.eo

bb.ax:                                            ; preds = %bb.ar
  %i.hw = getelementptr inbounds nuw i8, ptr %i.fh, i64 4
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !291 ; 2 uses
  %i.hy = sext i32 %i.hx to i64                   ; 2 uses
  %i.hz = getelementptr inbounds [128 x i8], ptr %i.ai, i64 %i.hy ; 5 uses
  %i.ia = shl nsw i64 %i.hy, 7
  %i.ib = add i64 %i.ia, %i.bt, !nosanitize !10   ; 3 uses
  %i.ic = icmp eq i64 %i.ib, 0
  %i.id = xor i1 %i.bu, %i.ic
  %i.ie = icmp uge i64 %i.ib, %i.bt, !nosanitize !10
  %i.if = icmp slt i32 %i.hx, 0
  %i.ig = xor i1 %i.if, %i.ie
  %i.ih = and i1 %i.id, %i.ig, !nosanitize !10
  br i1 %i.ih, label %bb.az, label %bb.ay, !prof !11, !nosanitize !10

bb.ay:                                            ; preds = %bb.ax
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @543, i64 %i.bt, i64 %i.ib) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.az:                                            ; preds = %bb.ax
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ft, i64 4
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !291 ; 2 uses
  %i.ik = sext i32 %i.ij to i64                   ; 2 uses
  %i.il = getelementptr inbounds [128 x i8], ptr %i.ai, i64 %i.ik ; 5 uses
  %i.im = shl nsw i64 %i.ik, 7
  %i.in = add i64 %i.im, %i.bt, !nosanitize !10   ; 3 uses
  %i.io = icmp eq i64 %i.in, 0
  %i.ip = xor i1 %i.bu, %i.io
  %i.iq = icmp uge i64 %i.in, %i.bt, !nosanitize !10
  %i.ir = icmp slt i32 %i.ij, 0
  %i.is = xor i1 %i.ir, %i.iq
  %i.it = and i1 %i.ip, %i.is, !nosanitize !10
  br i1 %i.it, label %bb.bb, label %bb.ba, !prof !11, !nosanitize !10

bb.ba:                                            ; preds = %bb.az
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @544, i64 %i.bt, i64 %i.in) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.bb:                                            ; preds = %bb.az
  %i.iu = ptrtoint ptr %i.hz to i64, !nosanitize !10 ; 2 uses
  %i.iv = and i64 %i.iu, 7, !nosanitize !10
  %i.iw = icmp eq i64 %i.iv, 0, !nosanitize !10
  %i.ix = and i1 %i.bu, %i.iw
  br i1 %i.ix, label %bb.bd, label %bb.bc, !prof !11, !nosanitize !10

bb.bc:                                            ; preds = %bb.bb
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @545, i64 %i.iu) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.bd:                                            ; preds = %bb.bb
  %i.iy = getelementptr inbounds nuw i8, ptr %i.hz, i64 120
  %i.iz = load i32, ptr %i.iy, align 8, !tbaa !278
  %i.ja = icmp eq i32 %i.iz, 0                    ; 3 uses
  %i.jb = ptrtoint ptr %i.il to i64, !nosanitize !10 ; 2 uses
  %i.jc = and i64 %i.jb, 7, !nosanitize !10
  %i.jd = icmp eq i64 %i.jc, 0, !nosanitize !10
  br i1 %i.jd, label %bb.bf, label %bb.be, !prof !11, !nosanitize !10

bb.be:                                            ; preds = %bb.bd
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @546, i64 %i.jb) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.bf:                                            ; preds = %bb.bd
  %i.je = getelementptr inbounds nuw i8, ptr %i.il, i64 120
  %i.jf = load i32, ptr %i.je, align 8, !tbaa !278
  %i.jg = icmp eq i32 %i.jf, 0                    ; 3 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.er, i64 68 ; 8 uses
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !203 ; 3 uses
  %i.jj = and i32 %i.ji, 65536
  %.not337 = icmp eq i32 %i.jj, 0                 ; 5 uses
  br i1 %.not337, label %bb.bl, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.jk = getelementptr inbounds nuw i8, ptr %i.hz, i64 12
  %i.jl = select i1 %i.ja, ptr %i.ax, ptr %i.aw   ; 3 uses
  %i.jm = load i32, ptr %i.jk, align 4, !tbaa !375 ; 3 uses
  %i.jn = sext i32 %i.jm to i64                   ; 2 uses
  %i.jo = getelementptr inbounds [216 x i8], ptr %i.jl, i64 %i.jn
  %i.jp = mul nsw i64 %i.jn, 216
  %i.jq = ptrtoint ptr %i.jl to i64, !nosanitize !10 ; 3 uses
  %i.jr = add i64 %i.jp, %i.jq, !nosanitize !10   ; 3 uses
  %i.js = icmp ne ptr %i.jl, null, !nosanitize !10
  %i.jt = icmp eq i64 %i.jr, 0
  %i.ju = xor i1 %i.js, %i.jt
  %i.jv = icmp uge i64 %i.jr, %i.jq, !nosanitize !10
  %i.jw = icmp slt i32 %i.jm, 0
  %i.jx = xor i1 %i.jw, %i.jv
  %i.jy = and i1 %i.ju, %i.jx, !nosanitize !10
  br i1 %i.jy, label %bb.bi, label %bb.bh, !prof !11, !nosanitize !10

bb.bh:                                            ; preds = %bb.bg
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @547, i64 %i.jq, i64 %i.jr) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.bi:                                            ; preds = %bb.bg
  %i.jz = select i1 %i.jg, ptr %i.ax, ptr %i.aw   ; 3 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.il, i64 12
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !375 ; 3 uses
  %i.kc = sext i32 %i.kb to i64                   ; 2 uses
  %i.kd = mul nsw i64 %i.kc, 216
  %i.ke = ptrtoint ptr %i.jz to i64, !nosanitize !10 ; 3 uses
  %i.kf = add i64 %i.kd, %i.ke, !nosanitize !10   ; 3 uses
  %i.kg = icmp ne ptr %i.jz, null, !nosanitize !10
  %i.kh = icmp eq i64 %i.kf, 0
  %i.ki = xor i1 %i.kg, %i.kh
  %i.kj = icmp uge i64 %i.kf, %i.ke, !nosanitize !10
  %i.kk = icmp slt i32 %i.kb, 0
  %i.kl = xor i1 %i.kk, %i.kj
  %i.km = and i1 %i.ki, %i.kl, !nosanitize !10
  br i1 %i.km, label %bb.bk, label %bb.bj, !prof !11, !nosanitize !10

bb.bj:                                            ; preds = %bb.bi
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @548, i64 %i.ke, i64 %i.kf) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.bk:                                            ; preds = %bb.bi
  %i.kn = getelementptr inbounds [216 x i8], ptr %i.jz, i64 %i.kc
  br label %bb.by

bb.bl:                                            ; preds = %bb.bf
  %i.ko = load ptr, ptr %i.aj, align 8, !tbaa !95 ; 4 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  %i.kq = load i32, ptr %i.kp, align 8, !tbaa !281 ; 2 uses
  %i.kr = sext i32 %i.kq to i64                   ; 2 uses
  %i.ks = getelementptr inbounds [88 x i8], ptr %i.ko, i64 %i.kr ; 2 uses
  %i.kt = mul nsw i64 %i.kr, 88
  %i.ku = ptrtoint ptr %i.ko to i64, !nosanitize !10 ; 6 uses
  %i.kv = add i64 %i.kt, %i.ku, !nosanitize !10   ; 3 uses
  %i.kw = icmp ne ptr %i.ko, null, !nosanitize !10 ; 2 uses
  %i.kx = icmp eq i64 %i.kv, 0
  %i.ky = xor i1 %i.kw, %i.kx
  %i.kz = icmp uge i64 %i.kv, %i.ku, !nosanitize !10
  %i.la = icmp slt i32 %i.kq, 0
  %i.lb = xor i1 %i.la, %i.kz
  %i.lc = and i1 %i.ky, %i.lb, !nosanitize !10
  br i1 %i.lc, label %bb.bn, label %bb.bm, !prof !11, !nosanitize !10

bb.bm:                                            ; preds = %bb.bl
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @549, i64 %i.ku, i64 %i.kv) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.bn:                                            ; preds = %bb.bl
  %i.ld = ptrtoint ptr %i.ks to i64, !nosanitize !10 ; 2 uses
  %i.le = and i64 %i.ld, 7, !nosanitize !10
  %i.lf = icmp eq i64 %i.le, 0, !nosanitize !10
  %i.lg = and i1 %i.kw, %i.lf
end_hunk_0
