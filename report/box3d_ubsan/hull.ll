Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/hull?download=true
inline.NumInlined: 420
inline.NumDeleted: 95
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0_@b3CreateHull:bb.a
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ah ] ; 5 uses
  %.02061335 = phi ptr [ %i.de, %.lr.ph ], [ %i.dv, %bb.ah ] ; 5 uses
  %i.dk = icmp ne ptr %.02061335, null, !nosanitize !12
  %i.dl = ptrtoint ptr %.02061335 to i64, !nosanitize !12 ; 2 uses
  %i.dm = and i64 %i.dl, 7, !nosanitize !12
  %i.dn = icmp eq i64 %i.dm, 0, !nosanitize !12
  %i.do = and i1 %i.dk, %i.dn, !nosanitize !12
  br i1 %i.do, label %bb.ad, label %bb.ac, !prof !13, !nosanitize !12

bb.ac:                                            ; preds = %bb.ab
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @30, i64 %i.dl) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.ad:                                            ; preds = %bb.ab
  %i.dp = getelementptr inbounds nuw i8, ptr %.02061335, i64 36
  %i.dq = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.dq, ptr %i.dp, align 4, !tbaa !58
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv, 256
  br i1 %exitcond.not, label %bb.ae, label %bb.af, !prof !22, !nosanitize !12

bb.ae:                                            ; preds = %bb.ad
  call void @__ubsan_handle_out_of_bounds_abort(ptr nonnull @32, i64 256) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.af:                                            ; preds = %bb.ad
  %i.dr = shl nuw nsw i64 %indvars.iv, 3
  %i.ds = add i64 %i.dr, %i.df, !nosanitize !12   ; 2 uses
  %.not279 = icmp ult i64 %i.ds, %i.df, !nosanitize !12
  br i1 %.not279, label %bb.ag, label %bb.ah, !prof !22, !nosanitize !12

bb.ag:                                            ; preds = %bb.af
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @33, i64 %i.df, i64 %i.ds) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.ah:                                            ; preds = %bb.af
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  store ptr %.02061335, ptr %i.dt, align 8, !tbaa !176
  %i.du = getelementptr inbounds nuw i8, ptr %.02061335, i64 8
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !33 ; 2 uses
  %.not = icmp eq ptr %i.dv, %i.aw
  br i1 %.not, label %._crit_edge.loopexit, label %bb.ab, !llvm.loop !159

bb.ai:                                            ; preds = %.lr.ph1341, %bb.bg
  %indvars.iv2514 = phi i64 [ 0, %.lr.ph1341 ], [ %indvars.iv.next2515, %bb.bg ] ; 5 uses
  %.02031339 = phi ptr [ %i.dh, %.lr.ph1341 ], [ %i.fr, %bb.bg ] ; 6 uses
  %.02041338 = phi i32 [ 0, %.lr.ph1341 ], [ %.2, %bb.bg ]
  %i.dw = icmp ne ptr %.02031339, null, !nosanitize !12
  %i.dx = ptrtoint ptr %.02031339 to i64, !nosanitize !12 ; 2 uses
  %i.dy = and i64 %i.dx, 7, !nosanitize !12
  %i.dz = icmp eq i64 %i.dy, 0, !nosanitize !12
  %i.ea = and i1 %i.dw, %i.dz, !nosanitize !12
  br i1 %i.ea, label %bb.ak, label %bb.aj, !prof !13, !nosanitize !12

bb.aj:                                            ; preds = %bb.ai
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @35, i64 %i.dx) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.ak:                                            ; preds = %bb.ai
  %i.eb = getelementptr inbounds nuw i8, ptr %.02031339, i64 120
  %i.ec = trunc nuw nsw i64 %indvars.iv2514 to i32
  store i32 %i.ec, ptr %i.eb, align 8, !tbaa !59
  %indvars.iv.next2515 = add nuw nsw i64 %indvars.iv2514, 1 ; 2 uses
  %exitcond2517.not = icmp eq i64 %indvars.iv2514, 256
  br i1 %exitcond2517.not, label %bb.al, label %bb.am, !prof !22, !nosanitize !12

bb.al:                                            ; preds = %bb.ak
  call void @__ubsan_handle_out_of_bounds_abort(ptr nonnull @37, i64 256) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.am:                                            ; preds = %bb.ak
  %i.ed = shl nuw nsw i64 %indvars.iv2514, 3
  %i.ee = add i64 %i.ed, %i.di, !nosanitize !12   ; 2 uses
  %.not275 = icmp ult i64 %i.ee, %i.di, !nosanitize !12
  br i1 %.not275, label %bb.an, label %bb.ao, !prof !22, !nosanitize !12

bb.an:                                            ; preds = %bb.am
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @38, i64 %i.di, i64 %i.ee) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.ao:                                            ; preds = %bb.am
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv2514
  store ptr %.02031339, ptr %i.ef, align 8, !tbaa !60
  %i.eg = getelementptr inbounds nuw i8, ptr %.02031339, i64 16 ; 2 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !61
  br label %bb.ap

bb.ap:                                            ; preds = %bb.bf, %bb.ao
  %.1 = phi i32 [ %.02041338, %bb.ao ], [ %.2, %bb.bf ] ; 6 uses
  %.0202 = phi ptr [ %i.eh, %bb.ao ], [ %i.fo, %bb.bf ] ; 6 uses
  %i.ei = icmp ne ptr %.0202, null, !nosanitize !12
  %i.ej = ptrtoint ptr %.0202 to i64, !nosanitize !12 ; 2 uses
  %i.ek = and i64 %i.ej, 7, !nosanitize !12
  %i.el = icmp eq i64 %i.ek, 0, !nosanitize !12
  %i.em = and i1 %i.ei, %i.el, !nosanitize !12
  br i1 %i.em, label %bb.ar, label %bb.aq, !prof !13, !nosanitize !12

bb.aq:                                            ; preds = %bb.ap
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @41, i64 %i.ej) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.ar:                                            ; preds = %bb.ap
  %i.en = getelementptr inbounds nuw i8, ptr %.0202, i64 40 ; 2 uses
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !63
  %i.ep = icmp slt i32 %i.eo, 0
  br i1 %i.ep, label %bb.as, label %bb.bf

bb.as:                                            ; preds = %bb.ar
  store i32 %.1, ptr %i.en, align 8, !tbaa !63
  %i.eq = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.1, i32 1), !nosanitize !12 ; 2 uses
  %i.er = extractvalue { i32, i1 } %i.eq, 0, !nosanitize !12 ; 4 uses
  %i.es = extractvalue { i32, i1 } %i.eq, 1, !nosanitize !12
  br i1 %i.es, label %bb.at, label %bb.au, !prof !22, !nosanitize !12

bb.at:                                            ; preds = %bb.as
  %i.et = zext nneg i32 %.1 to i64, !nosanitize !12
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @42, i64 %i.et, i64 1) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.au:                                            ; preds = %bb.as
  %i.eu = sext i32 %.1 to i64, !nosanitize !12    ; 3 uses
  %i.ev = icmp ult i32 %.1, 256
  br i1 %i.ev, label %bb.aw, label %bb.av, !prof !13, !nosanitize !12

bb.av:                                            ; preds = %bb.au
  call void @__ubsan_handle_out_of_bounds_abort(ptr nonnull @44, i64 %i.eu) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.aw:                                            ; preds = %bb.au
  %i.ew = shl nuw nsw i64 %i.eu, 3
  %i.ex = add i64 %i.ew, %i.dj, !nosanitize !12   ; 2 uses
  %.not276 = icmp ult i64 %i.ex, %i.dj, !nosanitize !12
  br i1 %.not276, label %bb.ax, label %bb.ay, !prof !22, !nosanitize !12

bb.ax:                                            ; preds = %bb.aw
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @45, i64 %i.dj, i64 %i.ex) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.ay:                                            ; preds = %bb.aw
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.eu
  store ptr %.0202, ptr %i.ey, align 8, !tbaa !64
  %i.ez = getelementptr inbounds nuw i8, ptr %.0202, i64 32
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !65 ; 4 uses
  %i.fb = icmp ne ptr %i.fa, null, !nosanitize !12
  %i.fc = ptrtoint ptr %i.fa to i64, !nosanitize !12 ; 2 uses
  %i.fd = and i64 %i.fc, 7, !nosanitize !12
  %i.fe = icmp eq i64 %i.fd, 0, !nosanitize !12
  %i.ff = and i1 %i.fb, %i.fe, !nosanitize !12
  br i1 %i.ff, label %bb.ba, label %bb.az, !prof !13, !nosanitize !12

bb.az:                                            ; preds = %bb.ay
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @47, i64 %i.fc) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.ba:                                            ; preds = %bb.ay
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fa, i64 40
  store i32 %i.er, ptr %i.fg, align 8, !tbaa !63
  %i.fh = add nuw nsw i32 %i.er, 1
  %i.fi = zext nneg i32 %i.er to i64              ; 3 uses
  %i.fj = icmp ult i32 %i.er, 256
  br i1 %i.fj, label %bb.bc, label %bb.bb, !prof !13, !nosanitize !12

bb.bb:                                            ; preds = %bb.ba
  call void @__ubsan_handle_out_of_bounds_abort(ptr nonnull @48, i64 %i.fi) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.bc:                                            ; preds = %bb.ba
  %i.fk = shl nuw nsw i64 %i.fi, 3
  %i.fl = add i64 %i.fk, %i.dj, !nosanitize !12   ; 2 uses
  %.not277 = icmp ult i64 %i.fl, %i.dj, !nosanitize !12
  br i1 %.not277, label %bb.bd, label %bb.be, !prof !22, !nosanitize !12

bb.bd:                                            ; preds = %bb.bc
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @49, i64 %i.dj, i64 %i.fl) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.be:                                            ; preds = %bb.bc
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.fi
  store ptr %i.fa, ptr %i.fm, align 8, !tbaa !64
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.ar
  %.2 = phi i32 [ %i.fh, %bb.be ], [ %.1, %bb.ar ] ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.0202, i64 8
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !66 ; 2 uses
  %i.fp = load ptr, ptr %i.eg, align 8, !tbaa !61
  %.not278 = icmp eq ptr %i.fo, %i.fp
  br i1 %.not278, label %bb.bg, label %bb.ap, !llvm.loop !160

bb.bg:                                            ; preds = %bb.bf
  %i.fq = getelementptr inbounds nuw i8, ptr %.02031339, i64 8
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !33 ; 2 uses
  %.not265 = icmp eq ptr %i.fr, %i.ay
  br i1 %.not265, label %._crit_edge1342.loopexit, label %bb.ai, !llvm.loop !161

._crit_edge1342.loopexit:                         ; preds = %bb.bg
  %i.fs = trunc nuw nsw i64 %indvars.iv.next2515 to i32
  br label %._crit_edge1342

._crit_edge1342:                                  ; preds = %._crit_edge1342.loopexit, %._crit_edge
  %.0205.lcssa = phi i32 [ 0, %._crit_edge ], [ %i.fs, %._crit_edge1342.loopexit ] ; 12 uses
  %.0204.lcssa = phi i32 [ 0, %._crit_edge ], [ %.2, %._crit_edge1342.loopexit ] ; 6 uses
  %i.ft = add i32 %.0207.lcssa, 3
  %i.fu = and i32 %i.ft, -4                       ; 4 uses
  %i.fv = add nuw nsw i32 %.0205.lcssa, 3
  %i.fw = and i32 %i.fv, -4                       ; 5 uses
  %narrow = add i32 %.0207.lcssa, 7
  %i.fx = and i32 %narrow, -8
  %narrow294 = add i32 %i.fx, 144                 ; 4 uses
  %i.fy = mul i32 %.0207.lcssa, 12
  %narrow295 = add i32 %i.fy, 4
  %i.fz = and i32 %narrow295, 2147483640
  %narrow296 = add i32 %narrow294, %i.fz          ; 3 uses
  %i.ga = add i32 %.0204.lcssa, 536870912
  %i.gb = icmp ult i32 %i.ga, 1073741824
  br i1 %i.gb, label %bb.bi, label %bb.bh, !prof !13, !nosanitize !12

bb.bh:                                            ; preds = %._crit_edge1342
  %i.gc = zext i32 %.0204.lcssa to i64, !nosanitize !12
  call void @__ubsan_handle_mul_overflow_abort(ptr nonnull @50, i64 %i.gc, i64 4) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.bi:                                            ; preds = %._crit_edge1342
  %i.gd = sext i32 %narrow296 to i64              ; 3 uses
  %i.ge = shl nsw i32 %.0204.lcssa, 2
  %i.gf = sext i32 %i.ge to i64
  %i.gg = add nsw i64 %i.gf, 4
  %i.gh = and i64 %i.gg, -8
  %i.gi = add nsw i64 %i.gh, %i.gd                ; 3 uses
  %i.gj = trunc i64 %i.gi to i32                  ; 2 uses
  %4 = add nsw i32 %.0205.lcssa, 134217728
  %i.gk = icmp ult i32 %4, 268435456
  br i1 %i.gk, label %bb.bk, label %bb.bj, !prof !13, !nosanitize !12

bb.bj:                                            ; preds = %bb.bi
  %i.gl = zext i32 %.0205.lcssa to i64, !nosanitize !12
  call void @__ubsan_handle_mul_overflow_abort(ptr nonnull @51, i64 %i.gl, i64 16) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.bk:                                            ; preds = %bb.bi
  %i.gm = shl nuw nsw i32 %.0205.lcssa, 4
  %i.gn = zext nneg i32 %i.gm to i64
  %i.go = add nsw i64 %i.gi, %i.gn
  %.fr1516 = freeze i64 %i.go                     ; 3 uses
  %i.gp = trunc i64 %.fr1516 to i32
  %narrow297 = add nuw nsw i32 %.0205.lcssa, 7
  %i.gq = and i32 %narrow297, -8
  %5 = sext i32 %i.gq to i64
  %i.gr = add nsw i64 %.fr1516, %5                ; 3 uses
  %i.gs = trunc i64 %i.gr to i32                  ; 2 uses
  %i.gt = mul nsw i32 %i.fu, 3                    ; 2 uses
  %i.gu = add nsw i32 %i.gt, 536870912
  %i.gv = icmp ult i32 %i.gu, 1073741824
  br i1 %i.gv, label %bb.bm, label %bb.bl, !prof !13, !nosanitize !12

bb.bl:                                            ; preds = %bb.bk
  %i.gw = zext i32 %i.gt to i64, !nosanitize !12
  call void @__ubsan_handle_mul_overflow_abort(ptr nonnull @52, i64 %i.gw, i64 4) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.bm:                                            ; preds = %bb.bk
  %i.gx = mul nsw i32 %i.fu, 12
  %i.gy = sext i32 %i.gx to i64
  %i.gz = add nsw i64 %i.gr, %i.gy
  %.fr1523 = freeze i64 %i.gz                     ; 3 uses
  %i.ha = trunc i64 %.fr1523 to i32               ; 2 uses
  %6 = mul nsw i32 %i.fw, 3                       ; 2 uses
  %7 = add nsw i32 %6, 536870912
  %i.hb = icmp ult i32 %7, 1073741824
  br i1 %i.hb, label %bb.bo, label %bb.bn, !prof !13, !nosanitize !12

bb.bn:                                            ; preds = %bb.bm
  %i.hc = zext i32 %6 to i64, !nosanitize !12
  call void @__ubsan_handle_mul_overflow_abort(ptr nonnull @53, i64 %i.hc, i64 4) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.bo:                                            ; preds = %bb.bm
  %i.hd = mul nsw i32 %i.fw, 12
  %8 = sext i32 %i.hd to i64
  %i.he = add i64 %.fr1523, %8                    ; 3 uses
  %i.hf = call ptr @b3Alloc(i64 noundef %i.he) #14
  %.fr = freeze ptr %i.hf                         ; 24 uses
  %.not266 = icmp eq ptr %.fr, null, !nosanitize !12
  br i1 %.not266, label %bb.bp, label %bb.bq, !prof !22, !nosanitize !12

bb.bp:                                            ; preds = %bb.bo
  call void @__ubsan_handle_nonnull_arg_abort(ptr nonnull @54) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.bq:                                            ; preds = %bb.bo
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %.fr, i8 0, i64 %i.he, i1 false)
  %i.hg = ptrtoint ptr %.fr to i64, !nosanitize !12 ; 18 uses
  %i.hh = and i64 %i.hg, 7, !nosanitize !12
  %i.hi = icmp eq i64 %i.hh, 0, !nosanitize !12
  br i1 %i.hi, label %bb.bs, label %bb.br, !prof !13, !nosanitize !12

bb.br:                                            ; preds = %bb.bq
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @56, i64 %i.hg) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.bs:                                            ; preds = %bb.bq
  store i64 5353818467820062812, ptr %.fr, align 8, !tbaa !177
  %i.hj = getelementptr inbounds nuw i8, ptr %.fr, i64 104
  store i32 144, ptr %i.hj, align 8, !tbaa !67
  %i.hk = getelementptr inbounds nuw i8, ptr %.fr, i64 108 ; 2 uses
  store i32 %narrow294, ptr %i.hk, align 4, !tbaa !21
  %i.hl = getelementptr inbounds nuw i8, ptr %.fr, i64 116
  store i32 %narrow296, ptr %i.hl, align 4, !tbaa !68
  %i.hm = getelementptr inbounds nuw i8, ptr %.fr, i64 124
  store i32 %i.gj, ptr %i.hm, align 4, !tbaa !25
  %i.hn = getelementptr inbounds nuw i8, ptr %.fr, i64 128
  store i32 %i.gp, ptr %i.hn, align 8, !tbaa !69
  %i.ho = getelementptr inbounds nuw i8, ptr %.fr, i64 132
  store i32 %i.gs, ptr %i.ho, align 4, !tbaa !70
  %i.hp = getelementptr inbounds nuw i8, ptr %.fr, i64 136
  store i32 %i.ha, ptr %i.hp, align 8, !tbaa !71
  %i.hq = getelementptr inbounds nuw i8, ptr %.fr, i64 100 ; 2 uses
  store i32 %.0207.lcssa, ptr %i.hq, align 4, !tbaa !20
  %i.hr = getelementptr inbounds nuw i8, ptr %.fr, i64 112
  store i32 %.0204.lcssa, ptr %i.hr, align 8, !tbaa !178
  %i.hs = getelementptr inbounds nuw i8, ptr %.fr, i64 120
  store i32 %.0205.lcssa, ptr %i.hs, align 8, !tbaa !24
  %i.ht = getelementptr inbounds nuw i8, ptr %.fr, i64 140 ; 2 uses
  %i.hu = trunc i64 %i.he to i32
  store i32 %i.hu, ptr %i.ht, align 4, !tbaa !72
  %i.hv = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.hg, i64 144), !nosanitize !12 ; 2 uses
  %i.hw = extractvalue { i64, i1 } %i.hv, 1, !nosanitize !12
  br i1 %i.hw, label %bb.bt, label %bb.bu, !prof !22, !nosanitize !12

bb.bt:                                            ; preds = %bb.bs
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @548, i64 %i.hg, i64 144) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.bu:                                            ; preds = %bb.bs
  %i.hx = extractvalue { i64, i1 } %i.hv, 0, !nosanitize !12 ; 9 uses
  %i.hy = inttoptr i64 %i.hx to ptr               ; 3 uses
  %i.hz = icmp eq i32 %narrow296, 0
  br i1 %i.hz, label %b3GetHullEdgesWrite.exit, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ia = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.hg, i64 %i.gd), !nosanitize !12 ; 2 uses
  %i.ib = extractvalue { i64, i1 } %i.ia, 1, !nosanitize !12
  br i1 %i.ib, label %bb.bw, label %bb.bx, !prof !22, !nosanitize !12

bb.bw:                                            ; preds = %bb.bv
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @549, i64 %i.hg, i64 %i.gd) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.bx:                                            ; preds = %bb.bv
  %i.ic = extractvalue { i64, i1 } %i.ia, 0, !nosanitize !12
  %i.id = inttoptr i64 %i.ic to ptr
  br label %b3GetHullEdgesWrite.exit

b3GetHullEdgesWrite.exit:                         ; preds = %bb.bu, %bb.bx
  %.0.i280 = phi ptr [ %i.id, %bb.bx ], [ null, %bb.bu ] ; 3 uses
  %sext = shl i64 %.fr1516, 32
  %i.ie = ashr exact i64 %sext, 32                ; 2 uses
  %i.if = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.hg, i64 %i.ie), !nosanitize !12 ; 2 uses
  %i.ig = extractvalue { i64, i1 } %i.if, 0, !nosanitize !12 ; 5 uses
  %i.ih = extractvalue { i64, i1 } %i.if, 1, !nosanitize !12
  br i1 %i.ih, label %bb.by, label %bb.bz, !prof !22, !nosanitize !12

bb.by:                                            ; preds = %b3GetHullEdgesWrite.exit
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @58, i64 %i.hg, i64 %i.ie) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.bz:                                            ; preds = %b3GetHullEdgesWrite.exit
  %i.ii = inttoptr i64 %i.ig to ptr
  %i.ij = icmp eq i32 %narrow294, 0
  br i1 %i.ij, label %b3GetHullPointsWrite.exit, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ik = sext i32 %narrow294 to i64              ; 2 uses
  %i.il = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.hg, i64 %i.ik), !nosanitize !12 ; 2 uses
  %i.im = extractvalue { i64, i1 } %i.il, 1, !nosanitize !12
  br i1 %i.im, label %bb.cb, label %bb.cc, !prof !22, !nosanitize !12

bb.cb:                                            ; preds = %bb.ca
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @550, i64 %i.hg, i64 %i.ik) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.cc:                                            ; preds = %bb.ca
  %i.in = extractvalue { i64, i1 } %i.il, 0, !nosanitize !12
  %i.io = inttoptr i64 %i.in to ptr
  br label %b3GetHullPointsWrite.exit

b3GetHullPointsWrite.exit:                        ; preds = %bb.bz, %bb.cc
  %.0.i281 = phi ptr [ %i.io, %bb.cc ], [ null, %bb.bz ] ; 3 uses
  %i.ip = icmp eq i32 %i.gj, 0
  br i1 %i.ip, label %b3GetHullPlanesWrite.exit, label %bb.cd

bb.cd:                                            ; preds = %b3GetHullPointsWrite.exit
  %sext298 = shl i64 %i.gi, 32
  %i.iq = ashr exact i64 %sext298, 32             ; 2 uses
  %i.ir = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.hg, i64 %i.iq), !nosanitize !12 ; 2 uses
  %i.is = extractvalue { i64, i1 } %i.ir, 1, !nosanitize !12
  br i1 %i.is, label %bb.ce, label %bb.cf, !prof !22, !nosanitize !12

bb.ce:                                            ; preds = %bb.cd
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @551, i64 %i.hg, i64 %i.iq) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.cf:                                            ; preds = %bb.cd
  %i.it = extractvalue { i64, i1 } %i.ir, 0, !nosanitize !12
  %i.iu = inttoptr i64 %i.it to ptr
  br label %b3GetHullPlanesWrite.exit

b3GetHullPlanesWrite.exit:                        ; preds = %b3GetHullPointsWrite.exit, %bb.cf
  %.0.i282 = phi ptr [ %i.iu, %bb.cf ], [ null, %b3GetHullPointsWrite.exit ] ; 3 uses
  %i.iv = icmp eq i32 %i.gs, 0
  br i1 %i.iv, label %b3GetHullSoaVerticesWrite.exit, label %bb.cg

bb.cg:                                            ; preds = %b3GetHullPlanesWrite.exit
  %sext299 = shl i64 %i.gr, 32
  %i.iw = ashr exact i64 %sext299, 32             ; 2 uses
  %i.ix = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.hg, i64 %i.iw), !nosanitize !12 ; 2 uses
  %i.iy = extractvalue { i64, i1 } %i.ix, 1, !nosanitize !12
  br i1 %i.iy, label %bb.ch, label %bb.ci, !prof !22, !nosanitize !12

bb.ch:                                            ; preds = %bb.cg
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @552, i64 %i.hg, i64 %i.iw) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.ci:                                            ; preds = %bb.cg
  %i.iz = extractvalue { i64, i1 } %i.ix, 0, !nosanitize !12
  %i.ja = inttoptr i64 %i.iz to ptr
  br label %b3GetHullSoaVerticesWrite.exit

b3GetHullSoaVerticesWrite.exit:                   ; preds = %b3GetHullPlanesWrite.exit, %bb.ci
  %.0.i283 = phi ptr [ %i.ja, %bb.ci ], [ null, %b3GetHullPlanesWrite.exit ] ; 6 uses
  %i.jb = icmp eq i32 %i.ha, 0
  br i1 %i.jb, label %b3GetHullSoaNormalsWrite.exit, label %bb.cj

bb.cj:                                            ; preds = %b3GetHullSoaVerticesWrite.exit
  %sext300 = shl i64 %.fr1523, 32
  %i.jc = ashr exact i64 %sext300, 32             ; 2 uses
  %i.jd = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.hg, i64 %i.jc), !nosanitize !12 ; 2 uses
  %i.je = extractvalue { i64, i1 } %i.jd, 1, !nosanitize !12
  br i1 %i.je, label %bb.ck, label %bb.cl, !prof !22, !nosanitize !12

bb.ck:                                            ; preds = %bb.cj
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @553, i64 %i.hg, i64 %i.jc) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.cl:                                            ; preds = %bb.cj
  %i.jf = extractvalue { i64, i1 } %i.jd, 0, !nosanitize !12
  %i.jg = inttoptr i64 %i.jf to ptr
  br label %b3GetHullSoaNormalsWrite.exit

b3GetHullSoaNormalsWrite.exit:                    ; preds = %b3GetHullSoaVerticesWrite.exit, %bb.cl
  %.0.i284 = phi ptr [ %i.jg, %bb.cl ], [ null, %b3GetHullSoaVerticesWrite.exit ] ; 5 uses
  %i.jh = sext i32 %i.fu to i64                   ; 4 uses
  %i.ji = getelementptr inbounds [4 x i8], ptr %.0.i283, i64 %i.jh ; 5 uses
  %i.jj = shl nsw i64 %i.jh, 2                    ; 2 uses
  %i.jk = ptrtoint ptr %.0.i283 to i64, !nosanitize !12 ; 11 uses
  %i.jl = add i64 %i.jj, %i.jk, !nosanitize !12   ; 3 uses
  %i.jm = icmp ne ptr %.0.i283, null, !nosanitize !12 ; 5 uses
  %i.jn = icmp eq i64 %i.jl, 0
  %i.jo = xor i1 %i.jm, %i.jn
  %i.jp = icmp uge i64 %i.jl, %i.jk, !nosanitize !12
  %i.jq = and i1 %i.jo, %i.jp, !nosanitize !12
  br i1 %i.jq, label %bb.cn, label %bb.cm, !prof !13, !nosanitize !12

bb.cm:                                            ; preds = %b3GetHullSoaNormalsWrite.exit
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @59, i64 %i.jk, i64 %i.jl) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.cn:                                            ; preds = %b3GetHullSoaNormalsWrite.exit
  %i.jr = getelementptr inbounds [4 x i8], ptr %i.ji, i64 %i.jh ; 5 uses
  %i.js = ptrtoint ptr %i.ji to i64, !nosanitize !12 ; 9 uses
  %i.jt = add i64 %i.jj, %i.js, !nosanitize !12   ; 3 uses
  %i.ju = icmp eq i64 %i.jt, 0
  %i.jv = xor i1 %i.jm, %i.ju
  %i.jw = icmp uge i64 %i.jt, %i.js, !nosanitize !12
  %i.jx = and i1 %i.jv, %i.jw, !nosanitize !12
  br i1 %i.jx, label %.preheader306, label %bb.co, !prof !13, !nosanitize !12

.preheader306:                                    ; preds = %bb.cn
  %i.jy = icmp sgt i32 %.0207.lcssa, 0
  br i1 %i.jy, label %.lr.ph1346, label %.preheader305
end_hunk_0
begin_hunk_1_@b3CreateHull:bb.a
  br i1 %.not1495, label %.split.us, label %bb.cs, !prof !22, !nosanitize !12

.split.us:                                        ; preds = %.lr.ph1346.split.split
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @61, i64 %i.hx, i64 %i.ky) #13, !nosanitize !12
  unreachable, !nosanitize !12

.split1348.us:                                    ; preds = %.lr.ph1346
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @63, i64 0) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.cs:                                            ; preds = %.lr.ph1346.split.split
  %i.kz = getelementptr inbounds nuw i8, ptr %i.hy, i64 %indvars.iv2518
  store i8 0, ptr %i.kz, align 1, !tbaa !74
  %exitcond2521.not = icmp eq i64 %indvars.iv2518, 256
  br i1 %exitcond2521.not, label %.split1356.us, label %bb.ct, !prof !22, !nosanitize !12

.split1356.us:                                    ; preds = %bb.cs
  call void @__ubsan_handle_out_of_bounds_abort(ptr nonnull @64, i64 256) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.ct:                                            ; preds = %bb.cs
  %i.la = shl nuw nsw i64 %indvars.iv2518, 3
  %i.lb = add i64 %i.la, %i.jz, !nosanitize !12   ; 2 uses
  %.not273 = icmp ult i64 %i.lb, %i.jz, !nosanitize !12
  br i1 %.not273, label %.split1359.us, label %bb.cu, !prof !22, !nosanitize !12

.split1359.us:                                    ; preds = %bb.ct
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @65, i64 %i.jz, i64 %i.lb) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.cu:                                            ; preds = %bb.ct
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv2518
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !176 ; 4 uses
  %i.le = icmp ne ptr %i.ld, null, !nosanitize !12
  %i.lf = ptrtoint ptr %i.ld to i64, !nosanitize !12 ; 2 uses
  %i.lg = and i64 %i.lf, 7, !nosanitize !12
  %i.lh = icmp eq i64 %i.lg, 0, !nosanitize !12
  %i.li = and i1 %i.le, %i.lh, !nosanitize !12
  br i1 %i.li, label %bb.cv, label %.split1366.us, !prof !13, !nosanitize !12

.split1366.us:                                    ; preds = %bb.cu, %.lr.ph1346.split.split.us
  %.us-phi1367 = phi i64 [ %i.ke, %.lr.ph1346.split.split.us ], [ %i.lf, %bb.cu ]
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @67, i64 %.us-phi1367) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.cv:                                            ; preds = %bb.cu
  %i.lj = getelementptr inbounds nuw i8, ptr %i.ld, i64 24
  %i.lk = load <2 x float>, ptr %i.lj, align 8, !tbaa !28 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ld, i64 32
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !28 ; 2 uses
  %i.ll = getelementptr inbounds nuw [12 x i8], ptr %.0.i281, i64 %indvars.iv2518 ; 3 uses
  %i.lm = mul nuw nsw i64 %indvars.iv2518, 12
  %i.ln = add i64 %i.lm, %i.ka, !nosanitize !12   ; 2 uses
  %.not1497 = icmp ult i64 %i.ln, %i.ka, !nosanitize !12
  br i1 %.not1497, label %.split1372.us, label %bb.cw, !prof !22, !nosanitize !12

.split1372.us:                                    ; preds = %bb.cv
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @68, i64 %i.ka, i64 %i.ln) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.cw:                                            ; preds = %bb.cv
  %i.lo = ptrtoint ptr %i.ll to i64, !nosanitize !12 ; 2 uses
  %i.lp = and i64 %i.lo, 3, !nosanitize !12
  %i.lq = icmp eq i64 %i.lp, 0, !nosanitize !12
  br i1 %i.lq, label %bb.cx, label %.split1376, !prof !13, !nosanitize !12

.split1376:                                       ; preds = %bb.cw, %.lr.ph1346.split.split.us
  %.us-phi1377 = phi i64 [ 0, %.lr.ph1346.split.split.us ], [ %i.lo, %bb.cw ]
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @69, i64 %.us-phi1377) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.cx:                                            ; preds = %bb.cw
  store <2 x float> %i.lk, ptr %i.ll, align 4, !tbaa !28
  %.sroa.6.0..sroa_idx292 = getelementptr inbounds nuw i8, ptr %i.ll, i64 8
  store float %.sroa.6.0.copyload, ptr %.sroa.6.0..sroa_idx292, align 4, !tbaa !28
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %.0.i283, i64 %indvars.iv2518 ; 2 uses
  %i.ls = shl nuw nsw i64 %indvars.iv2518, 2      ; 3 uses
  %i.lt = add i64 %i.ls, %i.jk, !nosanitize !12   ; 3 uses
  %i.lu = icmp eq i64 %i.lt, 0
  %i.lv = xor i1 %i.jm, %i.lu
  %i.lw = icmp uge i64 %i.lt, %i.jk, !nosanitize !12
  %i.lx = and i1 %i.lw, %i.lv, !nosanitize !12
  br i1 %i.lx, label %bb.cz, label %bb.cy, !prof !13, !nosanitize !12

bb.cy:                                            ; preds = %bb.cx
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @70, i64 %i.jk, i64 %i.lt) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.cz:                                            ; preds = %bb.cx
  %i.ly = ptrtoint ptr %i.lr to i64, !nosanitize !12 ; 2 uses
  %i.lz = and i64 %i.ly, 3, !nosanitize !12
  %i.ma = icmp eq i64 %i.lz, 0, !nosanitize !12
  %i.mb = and i1 %i.jm, %i.ma
  br i1 %i.mb, label %bb.db, label %bb.da, !prof !13, !nosanitize !12

bb.da:                                            ; preds = %bb.cz
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @71, i64 %i.ly) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.db:                                            ; preds = %bb.cz
  %i.mc = extractelement <2 x float> %i.lk, i64 0
  store float %i.mc, ptr %i.lr, align 4, !tbaa !28
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %i.ji, i64 %indvars.iv2518 ; 2 uses
  %i.me = add i64 %i.ls, %i.js, !nosanitize !12   ; 2 uses
  %.not302 = icmp ult i64 %i.me, %i.js, !nosanitize !12
  br i1 %.not302, label %bb.dc, label %bb.dd, !prof !22, !nosanitize !12

bb.dc:                                            ; preds = %bb.db
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @72, i64 %i.js, i64 %i.me) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.dd:                                            ; preds = %bb.db
  %i.mf = ptrtoint ptr %i.md to i64, !nosanitize !12 ; 2 uses
  %i.mg = and i64 %i.mf, 3, !nosanitize !12
  %i.mh = icmp eq i64 %i.mg, 0, !nosanitize !12
  br i1 %i.mh, label %bb.df, label %bb.de, !prof !13, !nosanitize !12

bb.de:                                            ; preds = %bb.dd
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @73, i64 %i.mf) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.df:                                            ; preds = %bb.dd
  %i.mi = extractelement <2 x float> %i.lk, i64 1
  store float %i.mi, ptr %i.md, align 4, !tbaa !28
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %indvars.iv2518 ; 2 uses
  %i.mk = add i64 %i.ls, %i.kb, !nosanitize !12   ; 2 uses
  %.not274 = icmp ult i64 %i.mk, %i.kb, !nosanitize !12
  br i1 %.not274, label %bb.dg, label %bb.dh, !prof !22, !nosanitize !12

bb.dg:                                            ; preds = %bb.df
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @74, i64 %i.kb, i64 %i.mk) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.dh:                                            ; preds = %bb.df
  %i.ml = ptrtoint ptr %i.mj to i64, !nosanitize !12 ; 2 uses
  %i.mm = and i64 %i.ml, 3, !nosanitize !12
  %i.mn = icmp eq i64 %i.mm, 0, !nosanitize !12
  br i1 %i.mn, label %bb.dj, label %bb.di, !prof !13, !nosanitize !12

bb.di:                                            ; preds = %bb.dh
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @75, i64 %i.ml) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.dj:                                            ; preds = %bb.dh
  store float %.sroa.6.0.copyload, ptr %i.mj, align 4, !tbaa !28
  %indvars.iv.next2519 = add nuw nsw i64 %indvars.iv2518, 1 ; 2 uses
  %exitcond2522.not = icmp eq i64 %indvars.iv.next2519, %wide.trip.count
  br i1 %exitcond2522.not, label %.preheader305, label %.lr.ph1346.split.split, !llvm.loop !163

.preheader304:                                    ; preds = %bb.cr, %.preheader305
  %i.mo = icmp sgt i32 %.0204.lcssa, 0
  br i1 %i.mo, label %.lr.ph1413, label %._crit_edge1414

.lr.ph1413:                                       ; preds = %.preheader304
  %i.mp = ptrtoint ptr %i.c to i64, !nosanitize !12 ; 3 uses
  %i.mq = ptrtoint ptr %.0.i280 to i64            ; 3 uses
  %.not1511 = icmp eq ptr %.0.i280, null
  %i.mr = icmp ne i64 %i.hx, 0                    ; 2 uses
  br i1 %.not1511, label %.lr.ph1413.split.us, label %.lr.ph1413.split.preheader, !prof !22

.lr.ph1413.split.preheader:                       ; preds = %.lr.ph1413
  %wide.trip.count2532 = zext nneg i32 %.0204.lcssa to i64
  br label %.lr.ph1413.split

.lr.ph1413.split.us:                              ; preds = %.lr.ph1413
  %i.ms = load ptr, ptr %i.c, align 16, !tbaa !64 ; 3 uses
  %i.mt = icmp ne ptr %i.ms, null, !nosanitize !12
  %i.mu = ptrtoint ptr %i.ms to i64, !nosanitize !12 ; 2 uses
  %i.mv = and i64 %i.mu, 7, !nosanitize !12
  %i.mw = icmp eq i64 %i.mv, 0, !nosanitize !12
  %i.mx = and i1 %i.mt, %i.mw, !nosanitize !12
  br i1 %i.mx, label %bb.dk, label %.split1426.us, !prof !13, !nosanitize !12

bb.dk:                                            ; preds = %.lr.ph1413.split.us
  %i.my = getelementptr inbounds nuw i8, ptr %i.ms, i64 8
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !66 ; 2 uses
  %i.na = icmp ne ptr %i.mz, null, !nosanitize !12
  %i.nb = ptrtoint ptr %i.mz to i64, !nosanitize !12 ; 2 uses
  %i.nc = and i64 %i.nb, 7, !nosanitize !12
  %i.nd = icmp eq i64 %i.nc, 0, !nosanitize !12
  %i.ne = and i1 %i.na, %i.nd, !nosanitize !12
  br i1 %i.ne, label %.split1442.us, label %.split1432.us, !prof !13, !nosanitize !12

bb.dl:                                            ; preds = %.lr.ph1380
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @76, i64 %i.jk) #13, !nosanitize !12
  unreachable, !nosanitize !12

.split1382.us:                                    ; preds = %.lr.ph1380.split.split.us.split.us
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @77, i64 %i.jk, i64 %i.kp) #13, !nosanitize !12
  unreachable, !nosanitize !12

.split1388.us:                                    ; preds = %bb.cp
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @78, i64 %i.js, i64 %i.ks) #13, !nosanitize !12
  unreachable, !nosanitize !12

.split1397.us:                                    ; preds = %bb.cq
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @79, i64 %i.km, i64 %i.kv) #13, !nosanitize !12
  unreachable, !nosanitize !12

._crit_edge1414:                                  ; preds = %bb.ea, %.preheader304
  %9 = sext i32 %i.fw to i64                      ; 3 uses
  %i.nf = getelementptr inbounds [4 x i8], ptr %.0.i284, i64 %9 ; 4 uses
  %i.ng = shl nsw i64 %9, 2                       ; 2 uses
  %i.nh = ptrtoint ptr %.0.i284 to i64, !nosanitize !12 ; 9 uses
  %i.ni = add i64 %i.ng, %i.nh, !nosanitize !12   ; 3 uses
  %i.nj = icmp ne ptr %.0.i284, null, !nosanitize !12 ; 5 uses
  %i.nk = icmp eq i64 %i.ni, 0
  %i.nl = xor i1 %i.nj, %i.nk
  %i.nm = icmp uge i64 %i.ni, %i.nh, !nosanitize !12
  %i.nn = and i1 %i.nl, %i.nm, !nosanitize !12
  br i1 %i.nn, label %bb.ec, label %bb.eb, !prof !13, !nosanitize !12

.lr.ph1413.split:                                 ; preds = %.lr.ph1413.split.preheader, %bb.ea
  %indvars.iv2528 = phi i64 [ 0, %.lr.ph1413.split.preheader ], [ %indvars.iv.next2529, %bb.ea ] ; 7 uses
  %exitcond2531.not = icmp eq i64 %indvars.iv2528, 256
  br i1 %exitcond2531.not, label %.split1416.us, label %bb.dm, !prof !22, !nosanitize !12

.split1416.us:                                    ; preds = %.lr.ph1413.split
  call void @__ubsan_handle_out_of_bounds_abort(ptr nonnull @80, i64 256) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.dm:                                            ; preds = %.lr.ph1413.split
  %i.no = shl nuw nsw i64 %indvars.iv2528, 3
  %i.np = add i64 %i.no, %i.mp, !nosanitize !12   ; 2 uses
  %.not269 = icmp ult i64 %i.np, %i.mp, !nosanitize !12
  br i1 %.not269, label %.split1419.us, label %bb.dn, !prof !22, !nosanitize !12

.split1419.us:                                    ; preds = %bb.dm
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @81, i64 %i.mp, i64 %i.np) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.dn:                                            ; preds = %bb.dm
  %i.nq = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv2528
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !64 ; 6 uses
  %i.ns = icmp ne ptr %i.nr, null, !nosanitize !12
  %i.nt = ptrtoint ptr %i.nr to i64, !nosanitize !12 ; 2 uses
  %i.nu = and i64 %i.nt, 7, !nosanitize !12
  %i.nv = icmp eq i64 %i.nu, 0, !nosanitize !12
  %i.nw = and i1 %i.ns, %i.nv, !nosanitize !12
  br i1 %i.nw, label %bb.do, label %.split1426.us, !prof !13, !nosanitize !12

.split1426.us:                                    ; preds = %bb.dn, %.lr.ph1413.split.us
  %.us-phi1427 = phi i64 [ %i.mu, %.lr.ph1413.split.us ], [ %i.nt, %bb.dn ]
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @83, i64 %.us-phi1427) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.do:                                            ; preds = %bb.dn
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nr, i64 8
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !66 ; 3 uses
  %i.nz = icmp ne ptr %i.ny, null, !nosanitize !12
  %i.oa = ptrtoint ptr %i.ny to i64, !nosanitize !12 ; 2 uses
  %i.ob = and i64 %i.oa, 7, !nosanitize !12
  %i.oc = icmp eq i64 %i.ob, 0, !nosanitize !12
  %i.od = and i1 %i.nz, %i.oc, !nosanitize !12
  br i1 %i.od, label %bb.dp, label %.split1432.us, !prof !13, !nosanitize !12

.split1432.us:                                    ; preds = %bb.do, %bb.dk
  %.us-phi1433 = phi i64 [ %i.nb, %bb.dk ], [ %i.oa, %bb.do ]
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @84, i64 %.us-phi1433) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.dp:                                            ; preds = %bb.do
  %i.oe = getelementptr inbounds nuw [4 x i8], ptr %.0.i280, i64 %indvars.iv2528 ; 4 uses
  %i.of = shl nuw nsw i64 %indvars.iv2528, 2
  %i.og = add i64 %i.of, %i.mq, !nosanitize !12   ; 2 uses
  %.not1512 = icmp ult i64 %i.og, %i.mq, !nosanitize !12
  br i1 %.not1512, label %.split1438.us, label %bb.dq, !prof !22, !nosanitize !12

.split1438.us:                                    ; preds = %bb.dp
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @85, i64 %i.mq, i64 %i.og) #13, !nosanitize !12
  unreachable, !nosanitize !12

.split1442.us:                                    ; preds = %bb.dk
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @87, i64 0) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.dq:                                            ; preds = %bb.dp
  %i.oh = getelementptr inbounds nuw i8, ptr %i.ny, i64 40
  %i.oi = load i32, ptr %i.oh, align 8, !tbaa !63
  %i.oj = trunc i32 %i.oi to i8
  store i8 %i.oj, ptr %i.oe, align 1, !tbaa !76
  %i.ok = getelementptr inbounds nuw i8, ptr %i.nr, i64 32
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !65 ; 3 uses
  %i.om = icmp ne ptr %i.ol, null, !nosanitize !12
  %i.on = ptrtoint ptr %i.ol to i64, !nosanitize !12 ; 2 uses
  %i.oo = and i64 %i.on, 7, !nosanitize !12
  %i.op = icmp eq i64 %i.oo, 0, !nosanitize !12
  %i.oq = and i1 %i.om, %i.op, !nosanitize !12
  br i1 %i.oq, label %bb.ds, label %bb.dr, !prof !13, !nosanitize !12

bb.dr:                                            ; preds = %bb.dq
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @88, i64 %i.on) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.ds:                                            ; preds = %bb.dq
  %i.or = getelementptr inbounds nuw i8, ptr %i.ol, i64 40
  %i.os = getelementptr inbounds nuw i8, ptr %i.oe, i64 1
  %i.ot = load i32, ptr %i.or, align 8, !tbaa !63
  %i.ou = trunc i32 %i.ot to i8
  store i8 %i.ou, ptr %i.os, align 1, !tbaa !77
  %i.ov = getelementptr inbounds nuw i8, ptr %i.nr, i64 24
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !78 ; 3 uses
  %i.ox = icmp ne ptr %i.ow, null, !nosanitize !12
  %i.oy = ptrtoint ptr %i.ow to i64, !nosanitize !12 ; 2 uses
  %i.oz = and i64 %i.oy, 7, !nosanitize !12
  %i.pa = icmp eq i64 %i.oz, 0, !nosanitize !12
  %i.pb = and i1 %i.ox, %i.pa, !nosanitize !12
  br i1 %i.pb, label %bb.du, label %bb.dt, !prof !13, !nosanitize !12

bb.dt:                                            ; preds = %bb.ds
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @89, i64 %i.oy) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.du:                                            ; preds = %bb.ds
  %i.pc = getelementptr inbounds nuw i8, ptr %i.ow, i64 120
  %i.pd = getelementptr inbounds nuw i8, ptr %i.oe, i64 3
  %i.pe = load i32, ptr %i.pc, align 8, !tbaa !59
  %i.pf = trunc i32 %i.pe to i8
  store i8 %i.pf, ptr %i.pd, align 1, !tbaa !179
  %i.pg = getelementptr inbounds nuw i8, ptr %i.nr, i64 16
  %i.ph = load ptr, ptr %i.pg, align 8, !tbaa !79 ; 3 uses
  %i.pi = icmp ne ptr %i.ph, null, !nosanitize !12
  %i.pj = ptrtoint ptr %i.ph to i64, !nosanitize !12 ; 2 uses
  %i.pk = and i64 %i.pj, 7, !nosanitize !12
  %i.pl = icmp eq i64 %i.pk, 0, !nosanitize !12
  %i.pm = and i1 %i.pi, %i.pl, !nosanitize !12
  br i1 %i.pm, label %bb.dw, label %bb.dv, !prof !13, !nosanitize !12

bb.dv:                                            ; preds = %bb.du
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @90, i64 %i.pj) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.dw:                                            ; preds = %bb.du
  %i.pn = getelementptr inbounds nuw i8, ptr %i.ph, i64 36
  %i.po = getelementptr inbounds nuw i8, ptr %i.oe, i64 2
  %i.pp = load i32, ptr %i.pn, align 4, !tbaa !58 ; 3 uses
  %i.pq = trunc i32 %i.pp to i8
  store i8 %i.pq, ptr %i.po, align 1, !tbaa !80
  %i.pr = trunc i64 %indvars.iv2528 to i8
  %i.ps = sext i32 %i.pp to i64                   ; 2 uses
  %i.pt = getelementptr inbounds i8, ptr %i.hy, i64 %i.ps ; 2 uses
  %i.pu = add i64 %i.hx, %i.ps, !nosanitize !12   ; 3 uses
  %i.pv = icmp eq i64 %i.pu, 0
  %i.pw = xor i1 %i.mr, %i.pv
  %i.px = icmp uge i64 %i.pu, %i.hx, !nosanitize !12
  %i.py = icmp slt i32 %i.pp, 0
  %i.pz = xor i1 %i.py, %i.px
  %i.qa = and i1 %i.pw, %i.pz, !nosanitize !12
  br i1 %i.qa, label %bb.dy, label %bb.dx, !prof !13, !nosanitize !12

bb.dx:                                            ; preds = %bb.dw
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @91, i64 %i.hx, i64 %i.pu) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.dy:                                            ; preds = %bb.dw
  br i1 %i.mr, label %bb.ea, label %bb.dz, !prof !13, !nosanitize !12

bb.dz:                                            ; preds = %bb.dy
  %i.qb = ptrtoint ptr %i.pt to i64, !nosanitize !12
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @92, i64 %i.qb) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.ea:                                            ; preds = %bb.dy
  store i8 %i.pr, ptr %i.pt, align 1, !tbaa !74
  %indvars.iv.next2529 = add nuw nsw i64 %indvars.iv2528, 1 ; 2 uses
  %exitcond2533.not = icmp eq i64 %indvars.iv.next2529, %wide.trip.count2532
  br i1 %exitcond2533.not, label %._crit_edge1414, label %.lr.ph1413.split, !llvm.loop !164

bb.eb:                                            ; preds = %._crit_edge1414
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @93, i64 %i.nh, i64 %i.ni) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.ec:                                            ; preds = %._crit_edge1414
  %i.qc = getelementptr inbounds [4 x i8], ptr %i.nf, i64 %9 ; 4 uses
  %i.qd = ptrtoint ptr %i.nf to i64, !nosanitize !12 ; 9 uses
  %i.qe = add i64 %i.ng, %i.qd, !nosanitize !12   ; 3 uses
  %i.qf = icmp eq i64 %i.qe, 0
  %i.qg = xor i1 %i.nj, %i.qf
  %i.qh = icmp uge i64 %i.qe, %i.qd, !nosanitize !12
  %i.qi = and i1 %i.qg, %i.qh, !nosanitize !12
  br i1 %i.qi, label %.preheader303, label %bb.ee, !prof !13, !nosanitize !12

.preheader303:                                    ; preds = %bb.ec
  %10 = icmp sgt i32 %.0205.lcssa, 0
  br i1 %10, label %.lr.ph1446, label %.preheader

.lr.ph1446:                                       ; preds = %.preheader303
  %i.qj = ptrtoint ptr %i.b to i64, !nosanitize !12 ; 3 uses
  %.not1517 = icmp eq i64 %i.ig, 0
  %i.qk = ptrtoint ptr %.0.i282 to i64            ; 3 uses
  %i.ql = icmp ne ptr %.0.i282, null              ; 2 uses
  %i.qm = ptrtoint ptr %i.qc to i64               ; 3 uses
  br i1 %.not1517, label %.lr.ph1446.split.us, label %.lr.ph1446.split.preheader, !prof !22

.lr.ph1446.split.preheader:                       ; preds = %.lr.ph1446
  %wide.trip.count2538 = zext nneg i32 %.0205.lcssa to i64
  br label %.lr.ph1446.split

.lr.ph1446.split.us:                              ; preds = %.lr.ph1446
  %i.qn = load ptr, ptr %i.b, align 16, !tbaa !60 ; 3 uses
  %i.qo = icmp ne ptr %i.qn, null, !nosanitize !12
  %i.qp = ptrtoint ptr %i.qn to i64, !nosanitize !12 ; 2 uses
  %i.qq = and i64 %i.qp, 7, !nosanitize !12
  %i.qr = icmp eq i64 %i.qq, 0, !nosanitize !12
  %i.qs = and i1 %i.qo, %i.qr, !nosanitize !12
  br i1 %i.qs, label %bb.ed, label %.split1458.us, !prof !13, !nosanitize !12

bb.ed:                                            ; preds = %.lr.ph1446.split.us
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qn, i64 16
  %i.qu = load ptr, ptr %i.qt, align 8, !tbaa !61 ; 2 uses
  %i.qv = icmp ne ptr %i.qu, null, !nosanitize !12
  %i.qw = ptrtoint ptr %i.qu to i64, !nosanitize !12 ; 2 uses
  %i.qx = and i64 %i.qw, 7, !nosanitize !12
  %i.qy = icmp eq i64 %i.qx, 0, !nosanitize !12
  %i.qz = and i1 %i.qv, %i.qy, !nosanitize !12
  br i1 %i.qz, label %.split1473.us, label %.split1464.us, !prof !13, !nosanitize !12

bb.ee:                                            ; preds = %bb.ec
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @94, i64 %i.qd, i64 %i.qe) #13, !nosanitize !12
  unreachable, !nosanitize !12

.preheader:                                       ; preds = %bb.ez, %.preheader303
  %i.ra = icmp slt i32 %.0205.lcssa, %i.fw
  br i1 %i.ra, label %.lr.ph1477, label %._crit_edge1478

.lr.ph1477:                                       ; preds = %.preheader
  %i.rb = ptrtoint ptr %i.qc to i64               ; 3 uses
  br i1 %i.nj, label %.lr.ph1477.split.preheader, label %.lr.ph1477.split.us, !prof !13

.lr.ph1477.split.preheader:                       ; preds = %.lr.ph1477
  %i.rc = zext nneg i32 %.0205.lcssa to i64
  %wide.trip.count2543 = zext i32 %i.fw to i64
  br label %.lr.ph1477.split

.lr.ph1477.split.us:                              ; preds = %.lr.ph1477
  %11 = sext i32 %.0205.lcssa to i64
  %12 = shl nuw nsw i64 %11, 2
  %13 = icmp eq i32 %.0205.lcssa, 0
  br i1 %13, label %.split1483, label %.split1480.us, !prof !13, !nosanitize !12

.lr.ph1446.split:                                 ; preds = %.lr.ph1446.split.preheader, %bb.ez
  %indvars.iv2534 = phi i64 [ 0, %.lr.ph1446.split.preheader ], [ %indvars.iv.next2535, %bb.ez ] ; 12 uses
  %exitcond2537.not = icmp eq i64 %indvars.iv2534, 256
  br i1 %exitcond2537.not, label %.split1448.us, label %bb.ef, !prof !22, !nosanitize !12

.split1448.us:                                    ; preds = %.lr.ph1446.split
  call void @__ubsan_handle_out_of_bounds_abort(ptr nonnull @95, i64 256) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.ef:                                            ; preds = %.lr.ph1446.split
  %i.rd = shl nuw nsw i64 %indvars.iv2534, 3
  %i.re = add i64 %i.rd, %i.qj, !nosanitize !12   ; 2 uses
  %.not267 = icmp ult i64 %i.re, %i.qj, !nosanitize !12
  br i1 %.not267, label %.split1451.us, label %bb.eg, !prof !22, !nosanitize !12

.split1451.us:                                    ; preds = %bb.ef
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @96, i64 %i.qj, i64 %i.re) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.eg:                                            ; preds = %bb.ef
  %i.rf = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv2534
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !60 ; 6 uses
  %i.rh = icmp ne ptr %i.rg, null, !nosanitize !12
  %i.ri = ptrtoint ptr %i.rg to i64, !nosanitize !12 ; 2 uses
  %i.rj = and i64 %i.ri, 7, !nosanitize !12
  %i.rk = icmp eq i64 %i.rj, 0, !nosanitize !12
  %i.rl = and i1 %i.rh, %i.rk, !nosanitize !12
  br i1 %i.rl, label %bb.eh, label %.split1458.us, !prof !13, !nosanitize !12

.split1458.us:                                    ; preds = %bb.eg, %.lr.ph1446.split.us
  %.us-phi1459 = phi i64 [ %i.qp, %.lr.ph1446.split.us ], [ %i.ri, %bb.eg ]
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @98, i64 %.us-phi1459) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.eh:                                            ; preds = %bb.eg
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rg, i64 16
  %i.rn = load ptr, ptr %i.rm, align 8, !tbaa !61 ; 3 uses
  %i.ro = icmp ne ptr %i.rn, null, !nosanitize !12
  %i.rp = ptrtoint ptr %i.rn to i64, !nosanitize !12 ; 2 uses
  %i.rq = and i64 %i.rp, 7, !nosanitize !12
  %i.rr = icmp eq i64 %i.rq, 0, !nosanitize !12
  %i.rs = and i1 %i.ro, %i.rr, !nosanitize !12
  br i1 %i.rs, label %bb.ei, label %.split1464.us, !prof !13, !nosanitize !12

.split1464.us:                                    ; preds = %bb.eh, %bb.ed
  %.us-phi1465 = phi i64 [ %i.qw, %bb.ed ], [ %i.rp, %bb.eh ]
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @99, i64 %.us-phi1465) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.ei:                                            ; preds = %bb.eh
  %i.rt = add i64 %i.ig, %indvars.iv2534, !nosanitize !12 ; 2 uses
  %.not1518 = icmp ult i64 %i.rt, %i.ig, !nosanitize !12
  br i1 %.not1518, label %.split1470.us, label %bb.ej, !prof !22, !nosanitize !12

.split1470.us:                                    ; preds = %bb.ei
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @100, i64 %i.ig, i64 %i.rt) #13, !nosanitize !12
  unreachable, !nosanitize !12

.split1473.us:                                    ; preds = %bb.ed
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @102, i64 0) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.ej:                                            ; preds = %bb.ei
  %i.ru = getelementptr inbounds nuw i8, ptr %i.ii, i64 %indvars.iv2534
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rn, i64 40
  %i.rw = load i32, ptr %i.rv, align 8, !tbaa !63
  %i.rx = trunc i32 %i.rw to i8
  store i8 %i.rx, ptr %i.ru, align 1, !tbaa !82
  %i.ry = getelementptr inbounds nuw [16 x i8], ptr %.0.i282, i64 %indvars.iv2534 ; 2 uses
  %i.rz = shl nuw nsw i64 %indvars.iv2534, 4
  %i.sa = add i64 %i.rz, %i.qk, !nosanitize !12   ; 3 uses
  %i.sb = icmp eq i64 %i.sa, 0
  %i.sc = xor i1 %i.ql, %i.sb
  %i.sd = icmp uge i64 %i.sa, %i.qk, !nosanitize !12
  %i.se = and i1 %i.sd, %i.sc, !nosanitize !12
  br i1 %i.se, label %bb.el, label %bb.ek, !prof !13, !nosanitize !12

bb.ek:                                            ; preds = %bb.ej
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @103, i64 %i.qk, i64 %i.sa) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.el:                                            ; preds = %bb.ej
  %i.sf = ptrtoint ptr %i.ry to i64, !nosanitize !12 ; 2 uses
  %i.sg = and i64 %i.sf, 3, !nosanitize !12
  %i.sh = icmp eq i64 %i.sg, 0, !nosanitize !12
  %i.si = and i1 %i.ql, %i.sh
  br i1 %i.si, label %bb.en, label %bb.em, !prof !13, !nosanitize !12

bb.em:                                            ; preds = %bb.el
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @105, i64 %i.sf) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.en:                                            ; preds = %bb.el
  %i.sj = getelementptr inbounds nuw i8, ptr %i.rg, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ry, ptr noundef nonnull align 8 dereferenceable(16) %i.sj, i64 16, i1 false), !tbaa.struct !83
  %.sroa.0.0.copyload = load float, ptr %i.sj, align 8, !tbaa !28
  %.sroa.4.0..sroa_idx285 = getelementptr inbounds nuw i8, ptr %i.rg, i64 36
  %.sroa.4.0.copyload286 = load float, ptr %.sroa.4.0..sroa_idx285, align 4, !tbaa !28
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rg, i64 40
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !28
  %i.sk = getelementptr inbounds nuw [4 x i8], ptr %.0.i284, i64 %indvars.iv2534 ; 2 uses
  %i.sl = shl nuw nsw i64 %indvars.iv2534, 2      ; 3 uses
  %i.sm = add i64 %i.sl, %i.nh, !nosanitize !12   ; 3 uses
  %i.sn = icmp eq i64 %i.sm, 0
  %i.so = xor i1 %i.nj, %i.sn
  %i.sp = icmp uge i64 %i.sm, %i.nh, !nosanitize !12
  %i.sq = and i1 %i.sp, %i.so, !nosanitize !12
  br i1 %i.sq, label %bb.ep, label %bb.eo, !prof !13, !nosanitize !12

bb.eo:                                            ; preds = %bb.en
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @106, i64 %i.nh, i64 %i.sm) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.ep:                                            ; preds = %bb.en
  %i.sr = ptrtoint ptr %i.sk to i64, !nosanitize !12 ; 2 uses
  %i.ss = and i64 %i.sr, 3, !nosanitize !12
  %i.st = icmp eq i64 %i.ss, 0, !nosanitize !12
  %i.su = and i1 %i.nj, %i.st
  br i1 %i.su, label %bb.er, label %bb.eq, !prof !13, !nosanitize !12

bb.eq:                                            ; preds = %bb.ep
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @107, i64 %i.sr) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.er:                                            ; preds = %bb.ep
  store float %.sroa.0.0.copyload, ptr %i.sk, align 4, !tbaa !28
  %i.sv = getelementptr inbounds nuw [4 x i8], ptr %i.nf, i64 %indvars.iv2534 ; 2 uses
  %i.sw = add i64 %i.sl, %i.qd, !nosanitize !12   ; 2 uses
  %.not301 = icmp ult i64 %i.sw, %i.qd, !nosanitize !12
  br i1 %.not301, label %bb.es, label %bb.et, !prof !22, !nosanitize !12

bb.es:                                            ; preds = %bb.er
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @108, i64 %i.qd, i64 %i.sw) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.et:                                            ; preds = %bb.er
  %i.sx = ptrtoint ptr %i.sv to i64, !nosanitize !12 ; 2 uses
  %i.sy = and i64 %i.sx, 3, !nosanitize !12
  %i.sz = icmp eq i64 %i.sy, 0, !nosanitize !12
  br i1 %i.sz, label %bb.ev, label %bb.eu, !prof !13, !nosanitize !12

bb.eu:                                            ; preds = %bb.et
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @109, i64 %i.sx) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.ev:                                            ; preds = %bb.et
  store float %.sroa.4.0.copyload286, ptr %i.sv, align 4, !tbaa !28
  %i.ta = getelementptr inbounds nuw [4 x i8], ptr %i.qc, i64 %indvars.iv2534 ; 2 uses
  %i.tb = add i64 %i.sl, %i.qm, !nosanitize !12   ; 2 uses
  %.not268 = icmp ult i64 %i.tb, %i.qm, !nosanitize !12
  br i1 %.not268, label %bb.ew, label %bb.ex, !prof !22, !nosanitize !12

bb.ew:                                            ; preds = %bb.ev
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @110, i64 %i.qm, i64 %i.tb) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.ex:                                            ; preds = %bb.ev
  %i.tc = ptrtoint ptr %i.ta to i64, !nosanitize !12 ; 2 uses
  %i.td = and i64 %i.tc, 3, !nosanitize !12
  %i.te = icmp eq i64 %i.td, 0, !nosanitize !12
  br i1 %i.te, label %bb.ez, label %bb.ey, !prof !13, !nosanitize !12

bb.ey:                                            ; preds = %bb.ex
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @111, i64 %i.tc) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.ez:                                            ; preds = %bb.ex
  store float %.sroa.5.0.copyload, ptr %i.ta, align 4, !tbaa !28
  %indvars.iv.next2535 = add nuw nsw i64 %indvars.iv2534, 1 ; 2 uses
  %exitcond2539.not = icmp eq i64 %indvars.iv.next2535, %wide.trip.count2538
  br i1 %exitcond2539.not, label %.preheader, label %.lr.ph1446.split, !llvm.loop !165

.lr.ph1477.split:                                 ; preds = %.lr.ph1477.split.preheader, %bb.fj
  %indvars.iv2540 = phi i64 [ %i.rc, %.lr.ph1477.split.preheader ], [ %indvars.iv.next2541, %bb.fj ] ; 5 uses
  %i.tf = getelementptr inbounds nuw [4 x i8], ptr %.0.i284, i64 %indvars.iv2540 ; 2 uses
  %i.tg = shl nuw nsw i64 %indvars.iv2540, 2      ; 3 uses
  %i.th = add i64 %i.tg, %i.nh, !nosanitize !12   ; 2 uses
  %.not1524 = icmp ult i64 %i.th, %i.nh, !nosanitize !12
  br i1 %.not1524, label %.split1480.us, label %bb.fa, !prof !22, !nosanitize !12

.split1480.us:                                    ; preds = %.lr.ph1477.split, %.lr.ph1477.split.us
  %.us-phi1481 = phi i64 [ %12, %.lr.ph1477.split.us ], [ %i.th, %.lr.ph1477.split ]
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @112, i64 %i.nh, i64 %.us-phi1481) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.fa:                                            ; preds = %.lr.ph1477.split
  %i.ti = ptrtoint ptr %i.tf to i64, !nosanitize !12 ; 2 uses
  %i.tj = and i64 %i.ti, 3, !nosanitize !12
  %i.tk = icmp eq i64 %i.tj, 0, !nosanitize !12
  br i1 %i.tk, label %bb.fb, label %.split1483, !prof !13, !nosanitize !12

.split1483:                                       ; preds = %bb.fa, %.lr.ph1477.split.us
  %.us-phi1484 = phi i64 [ 0, %.lr.ph1477.split.us ], [ %i.ti, %bb.fa ]
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @113, i64 %.us-phi1484) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.fb:                                            ; preds = %bb.fa
  store float 0.000000e+00, ptr %i.tf, align 4, !tbaa !28
  %i.tl = getelementptr inbounds nuw [4 x i8], ptr %i.nf, i64 %indvars.iv2540 ; 2 uses
  %i.tm = add i64 %i.tg, %i.qd, !nosanitize !12   ; 2 uses
  %.not1525 = icmp ult i64 %i.tm, %i.qd, !nosanitize !12
  br i1 %.not1525, label %bb.fc, label %bb.fd, !prof !22, !nosanitize !12

bb.fc:                                            ; preds = %bb.fb
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @114, i64 %i.qd, i64 %i.tm) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.fd:                                            ; preds = %bb.fb
  %i.tn = ptrtoint ptr %i.tl to i64, !nosanitize !12 ; 2 uses
  %i.to = and i64 %i.tn, 3, !nosanitize !12
  %i.tp = icmp eq i64 %i.to, 0, !nosanitize !12
  br i1 %i.tp, label %bb.ff, label %bb.fe, !prof !13, !nosanitize !12

bb.fe:                                            ; preds = %bb.fd
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @115, i64 %i.tn) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.ff:                                            ; preds = %bb.fd
  store float 0.000000e+00, ptr %i.tl, align 4, !tbaa !28
  %i.tq = getelementptr inbounds nuw [4 x i8], ptr %i.qc, i64 %indvars.iv2540 ; 2 uses
  %i.tr = add i64 %i.tg, %i.rb, !nosanitize !12   ; 2 uses
  %.not1526 = icmp ult i64 %i.tr, %i.rb, !nosanitize !12
  br i1 %.not1526, label %bb.fg, label %bb.fh, !prof !22, !nosanitize !12

bb.fg:                                            ; preds = %bb.ff
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @116, i64 %i.rb, i64 %i.tr) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.fh:                                            ; preds = %bb.ff
  %i.ts = ptrtoint ptr %i.tq to i64, !nosanitize !12 ; 2 uses
  %i.tt = and i64 %i.ts, 3, !nosanitize !12
  %i.tu = icmp eq i64 %i.tt, 0, !nosanitize !12
  br i1 %i.tu, label %bb.fj, label %bb.fi, !prof !13, !nosanitize !12

bb.fi:                                            ; preds = %bb.fh
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @117, i64 %i.ts) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.fj:                                            ; preds = %bb.fh
  store float 0.000000e+00, ptr %i.tq, align 4, !tbaa !28
  %indvars.iv.next2541 = add nuw nsw i64 %indvars.iv2540, 1 ; 2 uses
  %exitcond2544.not = icmp eq i64 %indvars.iv.next2541, %wide.trip.count2543
  br i1 %exitcond2544.not, label %._crit_edge1478, label %.lr.ph1477.split, !llvm.loop !166

._crit_edge1478:                                  ; preds = %bb.fj, %.preheader
  call void @b3Free(ptr noundef nonnull %i.at, i64 noundef %i.as) #14
  %i.tv = load i32, ptr %i.hk, align 4, !tbaa !21 ; 2 uses
  %i.tw = icmp eq i32 %i.tv, 0
  br i1 %i.tw, label %b3GetHullPoints.exit.i, label %bb.fk

bb.fk:                                            ; preds = %._crit_edge1478
  %i.tx = sext i32 %i.tv to i64                   ; 2 uses
  %i.ty = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.hg, i64 %i.tx), !nosanitize !12 ; 2 uses
  %i.tz = extractvalue { i64, i1 } %i.ty, 1, !nosanitize !12
  br i1 %i.tz, label %bb.fl, label %bb.fm, !prof !22, !nosanitize !12

bb.fl:                                            ; preds = %bb.fk
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @336, i64 %i.hg, i64 %i.tx) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.fm:                                            ; preds = %bb.fk
  %i.ua = extractvalue { i64, i1 } %i.ty, 0, !nosanitize !12
  %i.ub = inttoptr i64 %i.ua to ptr
  br label %b3GetHullPoints.exit.i

b3GetHullPoints.exit.i:                           ; preds = %._crit_edge1478, %bb.fm
  %.0.i.i = phi ptr [ %i.ub, %bb.fm ], [ null, %._crit_edge1478 ] ; 5 uses
  %i.uc = load i32, ptr %i.hq, align 4, !tbaa !20 ; 2 uses
  %i.ud = icmp ne ptr %.0.i.i, null, !nosanitize !12
  %i.ue = ptrtoint ptr %.0.i.i to i64, !nosanitize !12 ; 5 uses
  %i.uf = and i64 %i.ue, 3, !nosanitize !12
  %i.ug = icmp eq i64 %i.uf, 0, !nosanitize !12
  %i.uh = and i1 %i.ud, %i.ug, !nosanitize !12
  br i1 %i.uh, label %bb.fo, label %bb.fn, !prof !13, !nosanitize !12

bb.fn:                                            ; preds = %b3GetHullPoints.exit.i
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @554, i64 %i.ue) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.fo:                                            ; preds = %b3GetHullPoints.exit.i
  %.sroa.0.0.copyload36.i = load <2 x float>, ptr %.0.i.i, align 4 ; 4 uses
  %.sroa.6.0..0.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %.sroa.6.0.copyload37.i = load float, ptr %.sroa.6.0..0.i.sroa_idx.i, align 4, !tbaa !28 ; 4 uses
  %i.ui = icmp sgt i32 %i.uc, 1
  br i1 %i.ui, label %.lr.ph.preheader.i, label %b3UpdateHullBounds.exit

.lr.ph.preheader.i:                               ; preds = %bb.fo
  %wide.trip.count.i = zext nneg i32 %i.uc to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.fq, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.fq ] ; 3 uses
  %.sroa.0.052.i = phi <2 x float> [ %.sroa.0.0.copyload36.i, %.lr.ph.preheader.i ], [ %i.ut, %bb.fq ] ; 2 uses
  %.sroa.6.051.i = phi float [ %.sroa.6.0.copyload37.i, %.lr.ph.preheader.i ], [ %i.ur, %bb.fq ] ; 2 uses
  %.sroa.8.050.i = phi <2 x float> [ %.sroa.0.0.copyload36.i, %.lr.ph.preheader.i ], [ %i.up, %bb.fq ] ; 2 uses
  %.sroa.11.049.i = phi float [ %.sroa.6.0.copyload37.i, %.lr.ph.preheader.i ], [ %i.un, %bb.fq ] ; 2 uses
  %i.uj = mul nuw nsw i64 %indvars.iv.i, 12
  %i.uk = add i64 %i.uj, %i.ue, !nosanitize !12   ; 2 uses
  %.not.i = icmp ult i64 %i.uk, %i.ue, !nosanitize !12
  br i1 %.not.i, label %bb.fp, label %bb.fq, !prof !22, !nosanitize !12

bb.fp:                                            ; preds = %.lr.ph.i
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @555, i64 %i.ue, i64 %i.uk) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.fq:                                            ; preds = %.lr.ph.i
  %i.ul = getelementptr inbounds nuw [12 x i8], ptr %.0.i.i, i64 %indvars.iv.i ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ul, i64 8
  %.sroa.5.0.copyload.i = load float, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !28 ; 4 uses
  %i.um = fcmp ogt float %.sroa.11.049.i, %.sroa.5.0.copyload.i
  %i.un = select i1 %i.um, float %.sroa.11.049.i, float %.sroa.5.0.copyload.i ; 2 uses
  %.sroa.016.0.copyload.i = load <2 x float>, ptr %i.ul, align 4 ; 4 uses
  %i.uo = fcmp ogt <2 x float> %.sroa.8.050.i, %.sroa.016.0.copyload.i
  %i.up = select <2 x i1> %i.uo, <2 x float> %.sroa.8.050.i, <2 x float> %.sroa.016.0.copyload.i ; 2 uses
  %i.uq = fcmp olt float %.sroa.6.051.i, %.sroa.5.0.copyload.i
  %i.ur = select i1 %i.uq, float %.sroa.6.051.i, float %.sroa.5.0.copyload.i ; 2 uses
  %i.us = fcmp olt <2 x float> %.sroa.0.052.i, %.sroa.016.0.copyload.i
  %i.ut = select <2 x i1> %i.us, <2 x float> %.sroa.0.052.i, <2 x float> %.sroa.016.0.copyload.i ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %b3UpdateHullBounds.exit, label %.lr.ph.i, !llvm.loop !0

b3UpdateHullBounds.exit:                          ; preds = %bb.fq, %bb.fo
  %.sroa.11.0.lcssa.i = phi float [ %.sroa.6.0.copyload37.i, %bb.fo ], [ %i.un, %bb.fq ]
  %.sroa.8.0.lcssa.i = phi <2 x float> [ %.sroa.0.0.copyload36.i, %bb.fo ], [ %i.up, %bb.fq ]
  %.sroa.6.0.lcssa.i = phi float [ %.sroa.6.0.copyload37.i, %bb.fo ], [ %i.ur, %bb.fq ]
  %.sroa.0.0.lcssa.i = phi <2 x float> [ %.sroa.0.0.copyload36.i, %bb.fo ], [ %i.ut, %bb.fq ]
  %i.uu = getelementptr inbounds nuw i8, ptr %.fr, i64 16
  store <2 x float> %.sroa.0.0.lcssa.i, ptr %i.uu, align 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.fr, i64 24
  store float %.sroa.6.0.lcssa.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !28
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.fr, i64 28
  store <2 x float> %.sroa.8.0.lcssa.i, ptr %.sroa.8.0..sroa_idx.i, align 4
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.fr, i64 36
  store float %.sroa.11.0.lcssa.i, ptr %.sroa.11.0..sroa_idx.i, align 4, !tbaa !28
  %i.uv = call fastcc zeroext i1 @b3UpdateHullBulkProperties(ptr noundef %.fr)
  br i1 %i.uv, label %bb.fs, label %bb.fr

bb.fr:                                            ; preds = %b3UpdateHullBounds.exit
  call void @b3DestroyHull(ptr noundef nonnull %.fr)
  br label %bb.ft

bb.fs:                                            ; preds = %b3UpdateHullBounds.exit
  %i.uw = getelementptr inbounds nuw i8, ptr %.fr, i64 8 ; 2 uses
  store i64 0, ptr %i.uw, align 8, !tbaa !84
  %i.ux = load i32, ptr %i.ht, align 4, !tbaa !72
  %i.uy = call i64 @b3Hash64NonZero(ptr noundef nonnull %.fr, i32 noundef %i.ux) #14
  store i64 %i.uy, ptr %i.uw, align 8, !tbaa !84
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fs, %bb.fr
  %.0208 = phi ptr [ null, %bb.fr ], [ %.fr, %bb.fs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.fu

bb.fu:                                            ; preds = %bb.z, %bb.ft, %bb.x, %bb.v, %bb.t
  %.2210 = phi ptr [ null, %bb.t ], [ null, %bb.v ], [ null, %bb.x ], [ null, %bb.z ], [ %.0208, %bb.ft ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br label %bb.fv

bb.fv:                                            ; preds = %bb.a, %bb.fu
  %.3 = phi ptr [ %.2210, %bb.fu ], [ null, %bb.a ]
  ret ptr %.3
}

declare void @b3Free(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define noundef ptr @b3CreateCone(float noundef %0, float noundef %1, float noundef %2, i32 noundef %3) local_unnamed_addr #0 !func_sanitize !27 {
bb.a:
  %i.a = shl i32 %3, 1                            ; 3 uses
  %i.b = add i32 %3, 1073741824
  %i.c = icmp sgt i32 %i.b, -1
  br i1 %i.c, label %bb.c, label %bb.b, !prof !13, !nosanitize !12

bb.b:                                             ; preds = %bb.a
  %i.d = zext i32 %3 to i64, !nosanitize !12
  tail call void @__ubsan_handle_mul_overflow_abort(ptr nonnull @15, i64 2, i64 %i.d) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.c:                                             ; preds = %bb.a
  %i.e = sext i32 %i.a to i64
  %i.f = mul nsw i64 %i.e, 12                     ; 2 uses
  %i.g = tail call ptr @b3Alloc(i64 noundef %i.f) #14
  %.fr61 = freeze ptr %i.g                        ; 6 uses
  %i.h = sitofp i32 %3 to float
  %i.i = fdiv float f0x40C90FDB, %i.h
  %i.j = icmp sgt i32 %3, 0
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.k = ptrtoint ptr %.fr61 to i64               ; 6 uses
  %.not62 = icmp eq ptr %.fr61, null
  br i1 %.not62, label %.split59.us, label %.lr.ph.split.preheader, !prof !22

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %.lr.ph.split

.split59.us:                                      ; preds = %.lr.ph
  %i.l = tail call <2 x float> @b3ComputeCosSin(float noundef 0.000000e+00) #14 ; 0 uses
  %i.m = tail call <2 x float> @b3ComputeCosSin(float noundef 0.000000e+00) #14 ; 0 uses
  br label %.split59

._crit_edge:                                      ; preds = %bb.j, %bb.c
  %i.n = tail call ptr @b3CreateHull(ptr noundef %.fr61, i32 noundef %i.a, i32 noundef %i.a)
  tail call void @b3Free(ptr noundef %.fr61, i64 noundef %i.f) #14
  ret ptr %i.n

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.j
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next, %bb.j ] ; 4 uses
  %.02852 = phi float [ 0.000000e+00, %.lr.ph.split.preheader ], [ %i.ai, %bb.j ] ; 3 uses
  %i.o = tail call <2 x float> @b3ComputeCosSin(float noundef %.02852) #14
  %.sroa.0.4.vec.extract.i = extractelement <2 x float> %i.o, i64 1 ; 2 uses
  %i.p = tail call <2 x float> @b3ComputeCosSin(float noundef %.02852) #14
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %i.p, i64 0 ; 2 uses
  %i.q = shl nuw nsw i64 %indvars.iv, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv, 1073741824
  br i1 %exitcond.not, label %.split.us, label %bb.d, !prof !22, !nosanitize !12

.split.us:                                        ; preds = %.lr.ph.split
  tail call void @__ubsan_handle_mul_overflow_abort(ptr nonnull @16, i64 2, i64 1073741824) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.d:                                             ; preds = %.lr.ph.split
  %i.r = getelementptr inbounds nuw [12 x i8], ptr %.fr61, i64 %i.q ; 4 uses
  %i.s = mul nuw nsw i64 %indvars.iv, 24
  %i.t = add i64 %i.s, %i.k, !nosanitize !12      ; 2 uses
  %.not63 = icmp ult i64 %i.t, %i.k, !nosanitize !12
  br i1 %.not63, label %.split55.us, label %bb.e, !prof !22, !nosanitize !12

.split55.us:                                      ; preds = %bb.d
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @17, i64 %i.k, i64 %i.t) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.e:                                             ; preds = %bb.d
  %i.u = ptrtoint ptr %i.r to i64, !nosanitize !12 ; 2 uses
  %i.v = and i64 %i.u, 3, !nosanitize !12
  %i.w = icmp eq i64 %i.v, 0, !nosanitize !12
  br i1 %i.w, label %bb.f, label %.split59, !prof !13, !nosanitize !12
end_hunk_1
