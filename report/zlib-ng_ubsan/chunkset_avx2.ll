Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zlib-ng_ubsan/original/chunkset_avx2?download=true
inline.NumInlined: 25
inline.NumDeleted: 13
begin_hunk_0_@inflate_fast_avx2:bb.a
bb.ew:                                            ; preds = %bb.ev, %bb.eu
  %i.ku = or i32 %i.jr, 56
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %bb.er
  %.1228 = phi ptr [ %i.kq, %bb.ew ], [ %i.er, %bb.er ] ; 9 uses
  %.3218 = phi i32 [ %i.ku, %bb.ew ], [ %i.jr, %bb.er ]
  %.3 = phi i64 [ %i.kj, %bb.ew ], [ %i.jp, %bb.er ]
  br label %bb.ey

bb.ey:                                            ; preds = %.backedge, %bb.ex
  %.4219 = phi i32 [ %.3218, %bb.ex ], [ %i.li, %.backedge ] ; 2 uses
  %.4 = phi i64 [ %.3, %bb.ex ], [ %i.le, %.backedge ] ; 2 uses
  %.2 = phi ptr [ %i.jv, %bb.ex ], [ %i.rg, %.backedge ] ; 6 uses
  %i.kv = icmp ne ptr %.2, null, !nosanitize !13  ; 2 uses
  %i.kw = ptrtoint ptr %.2 to i64, !nosanitize !13 ; 7 uses
  %i.kx = and i64 %i.kw, 1, !nosanitize !13
  %i.ky = icmp eq i64 %i.kx, 0, !nosanitize !13   ; 4 uses
  %i.kz = and i1 %i.kv, %i.ky, !nosanitize !13    ; 3 uses
  br i1 %i.kz, label %bb.fa, label %bb.ez, !prof !14, !nosanitize !13

bb.ez:                                            ; preds = %bb.ey
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @87, i64 %i.kw) #11, !nosanitize !13
  br label %bb.fa, !nosanitize !13

bb.fa:                                            ; preds = %bb.ez, %bb.ey
  %i.la = getelementptr inbounds nuw i8, ptr %.2, i64 1 ; 2 uses
  %i.lb = load i8, ptr %i.la, align 1, !tbaa !63  ; 2 uses
  %i.lc = zext i8 %i.lb to i64                    ; 2 uses
  %i.ld = icmp ult i8 %i.lb, 64
  br i1 %i.ld, label %bb.fc, label %bb.fb, !prof !14, !nosanitize !13

bb.fb:                                            ; preds = %bb.fa
  call void @__ubsan_handle_shift_out_of_bounds(ptr nonnull @88, i64 %.4, i64 %i.lc) #11, !nosanitize !13
  br label %bb.fc, !nosanitize !13

bb.fc:                                            ; preds = %bb.fb, %bb.fa
  %i.le = lshr i64 %.4, %i.lc                     ; 5 uses
  br i1 %i.kz, label %bb.fe, label %bb.fd, !prof !14, !nosanitize !13

bb.fd:                                            ; preds = %bb.fc
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @89, i64 %i.kw) #11, !nosanitize !13
  br label %bb.fe, !nosanitize !13

bb.fe:                                            ; preds = %bb.fc, %bb.fd
  %i.lf = load i8, ptr %i.la, align 1, !tbaa !63  ; 2 uses
  %i.lg = zext i8 %i.lf to i32
  %i.lh = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %.4219, i32 %i.lg), !nosanitize !13 ; 2 uses
  %i.li = extractvalue { i32, i1 } %i.lh, 0, !nosanitize !13 ; 4 uses
  %i.lj = extractvalue { i32, i1 } %i.lh, 1, !nosanitize !13
  br i1 %i.lj, label %bb.ff, label %bb.fg, !prof !17, !nosanitize !13

bb.ff:                                            ; preds = %bb.fe
  %i.lk = zext i32 %.4219 to i64, !nosanitize !13
  %i.ll = zext i8 %i.lf to i64
  call void @__ubsan_handle_sub_overflow(ptr nonnull @90, i64 %i.lk, i64 %i.ll) #12, !nosanitize !13
  br label %bb.fg, !nosanitize !13

bb.fg:                                            ; preds = %bb.ff, %bb.fe
  br i1 %i.kz, label %bb.fi, label %bb.fh, !prof !14, !nosanitize !13

bb.fh:                                            ; preds = %bb.fg
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @91, i64 %i.kw) #11, !nosanitize !13
  br label %bb.fi, !nosanitize !13

bb.fi:                                            ; preds = %bb.fh, %bb.fg
  %i.lm = and i1 %i.kv, %i.ky, !nosanitize !13
  br i1 %i.lm, label %bb.fk, label %bb.fj, !prof !14, !nosanitize !13

bb.fj:                                            ; preds = %bb.fi
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @92, i64 %i.kw) #11, !nosanitize !13
  br label %bb.fk, !nosanitize !13

bb.fk:                                            ; preds = %bb.fj, %bb.fi
  %i.ln = load i8, ptr %.2, align 2, !tbaa !61    ; 3 uses
  %i.lo = zext i8 %i.ln to i32                    ; 4 uses
  %i.lp = and i32 %i.lo, 16
  %.not269 = icmp eq i32 %i.lp, 0
  br i1 %.not269, label %bb.hq, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  br i1 %i.ky, label %bb.fn, label %bb.fm, !prof !14, !nosanitize !13

bb.fm:                                            ; preds = %bb.fl
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @93, i64 %i.kw) #11, !nosanitize !13
  br label %bb.fn, !nosanitize !13

bb.fn:                                            ; preds = %bb.fm, %bb.fl
  %i.lq = getelementptr inbounds nuw i8, ptr %.2, i64 2 ; 2 uses
  %i.lr = ptrtoint ptr %i.lq to i64, !nosanitize !13 ; 2 uses
  %i.ls = and i64 %i.lr, 1, !nosanitize !13
  %i.lt = icmp eq i64 %i.ls, 0, !nosanitize !13
  br i1 %i.lt, label %bb.fp, label %bb.fo, !prof !14, !nosanitize !13

bb.fo:                                            ; preds = %bb.fn
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @94, i64 %i.lr) #11, !nosanitize !13
  br label %bb.fp, !nosanitize !13

bb.fp:                                            ; preds = %bb.fo, %bb.fn
  %i.lu = load i16, ptr %i.lq, align 2, !tbaa !62
  %i.lv = zext i16 %i.lu to i32
  %i.lw = and i32 %i.lo, 15                       ; 3 uses
  %notmask271 = shl nsw i32 -1, %i.lw
  %i.lx = xor i32 %notmask271, -1
  %i.ly = trunc i64 %i.le to i32
  %i.lz = and i32 %i.lx, %i.ly
  %i.ma = add nuw nsw i32 %i.lz, %i.lv            ; 10 uses
  %i.mb = zext nneg i32 %i.lw to i64              ; 2 uses
  %i.mc = lshr i64 %i.le, %i.mb                   ; 8 uses
  %i.md = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %i.li, i32 %i.lw), !nosanitize !13 ; 2 uses
  %i.me = extractvalue { i32, i1 } %i.md, 0, !nosanitize !13 ; 8 uses
  %i.mf = extractvalue { i32, i1 } %i.md, 1, !nosanitize !13
  br i1 %i.mf, label %bb.fq, label %bb.fr, !prof !17, !nosanitize !13

bb.fq:                                            ; preds = %bb.fp
  %i.mg = zext i32 %i.li to i64, !nosanitize !13
  call void @__ubsan_handle_sub_overflow(ptr nonnull @95, i64 %i.mg, i64 %i.mb) #12, !nosanitize !13
  br label %bb.fr, !nosanitize !13

bb.fr:                                            ; preds = %bb.fq, %bb.fp
  %i.mh = ptrtoint ptr %.1223 to i64              ; 11 uses
  %i.mi = sub i64 %i.mh, %i.dv
  %i.mj = trunc i64 %i.mi to i32                  ; 2 uses
  %i.mk = icmp ugt i32 %i.ma, %i.mj
  br i1 %i.mk, label %bb.fs, label %bb.hf

bb.fs:                                            ; preds = %bb.fr
  %i.ml = sub nuw nsw i32 %i.ma, %i.mj            ; 10 uses
  %i.mm = icmp ugt i32 %i.ml, %i.bz
  br i1 %i.mm, label %bb.ft, label %bb.fy

bb.ft:                                            ; preds = %bb.fs
  br i1 %i.bs, label %bb.fv, label %bb.fu, !prof !14, !nosanitize !13

bb.fu:                                            ; preds = %bb.ft
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @96, i64 %i.bp) #11, !nosanitize !13
  br label %bb.fv, !nosanitize !13

bb.fv:                                            ; preds = %bb.fu, %bb.ft
  %i.mn = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i32 16209, ptr %i.mn, align 8, !tbaa !64
  br i1 %i.d, label %bb.fx, label %bb.fw, !prof !14, !nosanitize !13

bb.fw:                                            ; preds = %bb.fv
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @97, i64 %i.b) #11, !nosanitize !13
  br label %bb.fx, !nosanitize !13

bb.fx:                                            ; preds = %bb.fw, %bb.fv
  %i.mo = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @.str, ptr %i.mo, align 8, !tbaa !65
  br label %.loopexit

bb.fy:                                            ; preds = %bb.fs
  br i1 %i.dw, label %bb.fz, label %bb.gd

bb.fz:                                            ; preds = %bb.fy
  %i.mp = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %i.bx, i32 %i.ml), !nosanitize !13 ; 2 uses
  %i.mq = extractvalue { i32, i1 } %i.mp, 0, !nosanitize !13
  %i.mr = extractvalue { i32, i1 } %i.mp, 1, !nosanitize !13
  br i1 %i.mr, label %bb.ga, label %bb.gb, !prof !17, !nosanitize !13

bb.ga:                                            ; preds = %bb.fz
  %i.ms = zext nneg i32 %i.ml to i64, !nosanitize !13
  call void @__ubsan_handle_sub_overflow(ptr nonnull @98, i64 %i.dy, i64 %i.ms) #12, !nosanitize !13
  br label %bb.gb, !nosanitize !13

bb.gb:                                            ; preds = %bb.ga, %bb.fz
  %i.mt = zext i32 %i.mq to i64                   ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.mt ; 2 uses
  %i.mv = add i64 %.pre-phi396, %i.mt, !nosanitize !13 ; 3 uses
  %i.mw = icmp eq i64 %i.mv, 0
  %i.mx = xor i1 %i.dx, %i.mw
  %i.my = icmp uge i64 %i.mv, %.pre-phi396, !nosanitize !13
  %i.mz = and i1 %i.my, %i.mx, !nosanitize !13
  br i1 %i.mz, label %bb.gm, label %bb.gc, !prof !14, !nosanitize !13

bb.gc:                                            ; preds = %bb.gb
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @99, i64 %.pre-phi396, i64 %i.mv) #11, !nosanitize !13
  br label %bb.gm, !nosanitize !13

bb.gd:                                            ; preds = %bb.fy
  %.not273 = icmp ult i32 %i.cb, %i.ml
  br i1 %.not273, label %bb.gg, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.na = sub nuw i32 %i.cb, %i.ml
  %i.nb = zext i32 %i.na to i64                   ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.nb ; 2 uses
  %i.nd = add i64 %.pre-phi396, %i.nb, !nosanitize !13 ; 3 uses
  %i.ne = icmp eq i64 %i.nd, 0
  %i.nf = xor i1 %i.dx, %i.ne
  %i.ng = icmp uge i64 %i.nd, %.pre-phi396, !nosanitize !13
  %i.nh = and i1 %i.ng, %i.nf, !nosanitize !13
  br i1 %i.nh, label %bb.gm, label %bb.gf, !prof !14, !nosanitize !13

bb.gf:                                            ; preds = %bb.ge
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @100, i64 %.pre-phi396, i64 %i.nd) #11, !nosanitize !13
  br label %bb.gm, !nosanitize !13

bb.gg:                                            ; preds = %bb.gd
  %i.ni = sub nuw nsw i32 %i.ml, %i.cb            ; 6 uses
  %i.nj = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %i.bx, i32 %i.ni), !nosanitize !13 ; 2 uses
  %i.nk = extractvalue { i32, i1 } %i.nj, 0, !nosanitize !13
  %i.nl = extractvalue { i32, i1 } %i.nj, 1, !nosanitize !13
  br i1 %i.nl, label %bb.gh, label %bb.gi, !prof !17, !nosanitize !13

bb.gh:                                            ; preds = %bb.gg
  %i.nm = zext nneg i32 %i.ni to i64, !nosanitize !13
  call void @__ubsan_handle_sub_overflow(ptr nonnull @101, i64 %i.dy, i64 %i.nm) #12, !nosanitize !13
  br label %bb.gi, !nosanitize !13

bb.gi:                                            ; preds = %bb.gh, %bb.gg
  %i.nn = zext i32 %i.nk to i64                   ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.nn ; 2 uses
  %i.np = add i64 %.pre-phi396, %i.nn, !nosanitize !13 ; 3 uses
  %i.nq = icmp eq i64 %i.np, 0
  %i.nr = xor i1 %i.dx, %i.nq
  %i.ns = icmp uge i64 %i.np, %.pre-phi396, !nosanitize !13
  %i.nt = and i1 %i.ns, %i.nr, !nosanitize !13
  br i1 %i.nt, label %bb.gk, label %bb.gj, !prof !14, !nosanitize !13

bb.gj:                                            ; preds = %bb.gi
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @102, i64 %.pre-phi396, i64 %i.np) #11, !nosanitize !13
  br label %bb.gk, !nosanitize !13

bb.gk:                                            ; preds = %bb.gj, %bb.gi
  %i.nu = icmp samesign ult i32 %i.ni, %i.jn
  br i1 %i.nu, label %bb.gl, label %bb.gm

bb.gl:                                            ; preds = %bb.gk
  %i.nv = sub nuw nsw i32 %i.jn, %i.ni
  %i.nw = zext nneg i32 %i.ni to i64
  %i.nx = call fastcc ptr @CHUNKCOPY_SAFE(ptr noundef %.1223, ptr noundef %i.no, i64 noundef %i.nw, ptr noundef %i.bi)
  br label %bb.gm

bb.gm:                                            ; preds = %bb.ge, %bb.gf, %bb.gb, %bb.gc, %bb.gl, %bb.gk
  %.0389 = phi i32 [ %i.jn, %bb.gb ], [ %i.jn, %bb.gc ], [ %i.nv, %bb.gl ], [ %i.jn, %bb.gk ], [ %i.jn, %bb.ge ], [ %i.jn, %bb.gf ] ; 3 uses
  %.2224 = phi ptr [ %.1223, %bb.gb ], [ %.1223, %bb.gc ], [ %i.nx, %bb.gl ], [ %.1223, %bb.gk ], [ %.1223, %bb.ge ], [ %.1223, %bb.gf ] ; 4 uses
  %.0210 = phi i32 [ %i.ml, %bb.gb ], [ %i.ml, %bb.gc ], [ %i.cb, %bb.gl ], [ %i.ni, %bb.gk ], [ %i.ml, %bb.ge ], [ %i.ml, %bb.gf ] ; 3 uses
  %.0 = phi ptr [ %i.mu, %bb.gb ], [ %i.mu, %bb.gc ], [ %i.cd, %bb.gl ], [ %i.no, %bb.gk ], [ %i.nc, %bb.ge ], [ %i.nc, %bb.gf ] ; 4 uses
  %i.ny = icmp ult i32 %.0210, %.0389
  br i1 %i.ny, label %bb.gn, label %bb.hc

bb.gn:                                            ; preds = %bb.gm
  %i.nz = sub nuw nsw i32 %.0389, %.0210          ; 4 uses
  %i.oa = zext nneg i32 %.0210 to i64             ; 2 uses
  %i.ob = zext nneg i32 %i.ma to i64              ; 6 uses
  %i.oc = sub nsw i64 0, %i.ob                    ; 3 uses
  br i1 %i.do, label %bb.gz, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.od = call fastcc ptr @CHUNKCOPY_SAFE(ptr noundef %.2224, ptr noundef %.0, i64 noundef %i.oa, ptr noundef %i.bi) ; 5 uses
  %i.oe = getelementptr inbounds i8, ptr %i.od, i64 %i.oc ; 2 uses
  %i.of = ptrtoint ptr %i.od to i64, !nosanitize !13 ; 4 uses
  %.not520 = icmp eq ptr %i.od, null
  %i.og = icmp ugt i64 %i.of, %i.ob
  br i1 %i.og, label %bb.gq, label %bb.gp, !prof !14, !nosanitize !13

bb.gp:                                            ; preds = %bb.go
  %i.oh = sub nsw i64 %i.of, %i.ob
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @227, i64 %i.of, i64 %i.oh) #11, !nosanitize !13
  br label %bb.gq, !nosanitize !13

bb.gq:                                            ; preds = %bb.gp, %bb.go
  %i.oi = ptrtoint ptr %i.oe to i64               ; 2 uses
  %i.oj = icmp ult i32 %i.ma, %i.nz
  %i.ok = icmp samesign ult i32 %i.ma, 32
  %or.cond281327 = and i1 %i.oj, %i.ok
  br i1 %or.cond281327, label %.lr.ph, label %chunkunroll_avx2.exit

.lr.ph:                                           ; preds = %bb.gq, %bb.gw
  %.0.i328 = phi ptr [ %i.op, %bb.gw ], [ %i.od, %bb.gq ] ; 4 uses
  %i.ol = phi i32 [ %i.ov, %bb.gw ], [ %i.ma, %bb.gq ] ; 3 uses
  %i.om = phi i32 [ %i.os, %bb.gw ], [ %i.nz, %bb.gq ] ; 2 uses
  br i1 %.not520, label %bb.gr, label %loadchunk.exit.thread.i, !prof !17, !nosanitize !13

bb.gr:                                            ; preds = %.lr.ph
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @231, i64 %i.oi) #11, !nosanitize !13
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @233, i64 %i.oi) #11, !nosanitize !13
  br label %loadchunk.exit.thread.i, !nosanitize !13

loadchunk.exit.thread.i:                          ; preds = %bb.gr, %.lr.ph
  %i.on = load <4 x i64>, ptr %i.oe, align 1, !tbaa !15
  %.not521 = icmp eq ptr %.0.i328, null, !nosanitize !13
  %.pre397 = ptrtoint ptr %.0.i328 to i64, !nosanitize !13 ; 5 uses
  br i1 %.not521, label %bb.gs, label %storechunk.exit.i, !prof !17, !nosanitize !13

bb.gs:                                            ; preds = %loadchunk.exit.thread.i
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @216, i64 %.pre397) #11, !nosanitize !13
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @218, i64 %.pre397) #11, !nosanitize !13
  br label %storechunk.exit.i, !nosanitize !13

storechunk.exit.i:                                ; preds = %loadchunk.exit.thread.i, %bb.gs
  store <4 x i64> %i.on, ptr %.0.i328, align 1, !tbaa !15
  %i.oo = zext nneg i32 %i.ol to i64              ; 3 uses
  %i.op = getelementptr inbounds nuw i8, ptr %.0.i328, i64 %i.oo ; 3 uses
  %i.oq = add i64 %.pre397, %i.oo, !nosanitize !13 ; 2 uses
  %.not.i = icmp ult i64 %i.oq, %.pre397, !nosanitize !13
  br i1 %.not.i, label %bb.gt, label %bb.gu, !prof !17, !nosanitize !13

bb.gt:                                            ; preds = %storechunk.exit.i
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @228, i64 %.pre397, i64 %i.oq) #11, !nosanitize !13
  br label %bb.gu, !nosanitize !13

bb.gu:                                            ; preds = %storechunk.exit.i, %bb.gt
  %i.or = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %i.om, i32 %i.ol), !nosanitize !13 ; 2 uses
  %i.os = extractvalue { i32, i1 } %i.or, 0, !nosanitize !13 ; 3 uses
  %i.ot = extractvalue { i32, i1 } %i.or, 1, !nosanitize !13
  br i1 %i.ot, label %bb.gv, label %bb.gw, !prof !17, !nosanitize !13

bb.gv:                                            ; preds = %bb.gu
  %i.ou = zext i32 %i.om to i64, !nosanitize !13
  call void @__ubsan_handle_sub_overflow(ptr nonnull @229, i64 %i.ou, i64 %i.oo) #12, !nosanitize !13
  br label %bb.gw, !nosanitize !13

bb.gw:                                            ; preds = %bb.gu, %bb.gv
  %i.ov = shl i32 %i.ol, 1                        ; 4 uses
  %i.ow = icmp ult i32 %i.ov, %i.os
  %i.ox = icmp ult i32 %i.ov, 32
  %or.cond281 = and i1 %i.ow, %i.ox
  br i1 %or.cond281, label %.lr.ph, label %chunkunroll_avx2.exit.loopexit, !llvm.loop !31

chunkunroll_avx2.exit.loopexit:                   ; preds = %bb.gw
  %.pre = zext nneg i32 %i.ov to i64              ; 2 uses
  %.pre391 = sub nsw i64 0, %.pre
  %.pre393 = ptrtoint ptr %i.op to i64, !nosanitize !13
  br label %chunkunroll_avx2.exit

chunkunroll_avx2.exit:                            ; preds = %chunkunroll_avx2.exit.loopexit, %bb.gq
  %.pre-phi394 = phi i64 [ %.pre393, %chunkunroll_avx2.exit.loopexit ], [ %i.of, %bb.gq ] ; 4 uses
  %.pre-phi392 = phi i64 [ %.pre391, %chunkunroll_avx2.exit.loopexit ], [ %i.oc, %bb.gq ]
  %.pre-phi390 = phi i64 [ %.pre, %chunkunroll_avx2.exit.loopexit ], [ %i.ob, %bb.gq ] ; 3 uses
  %.lcssa326 = phi i32 [ %i.os, %chunkunroll_avx2.exit.loopexit ], [ %i.nz, %bb.gq ]
  %.0.i.lcssa = phi ptr [ %i.op, %chunkunroll_avx2.exit.loopexit ], [ %i.od, %bb.gq ] ; 3 uses
  %i.oy = getelementptr inbounds i8, ptr %.0.i.lcssa, i64 %.pre-phi392
  %i.oz = icmp ne ptr %.0.i.lcssa, null, !nosanitize !13
  %i.pa = icmp eq i64 %.pre-phi394, %.pre-phi390
  %i.pb = xor i1 %i.oz, %i.pa
  %i.pc = icmp ule i64 %.pre-phi390, %.pre-phi394
  %i.pd = and i1 %i.pc, %i.pb, !nosanitize !13
  br i1 %i.pd, label %bb.gy, label %bb.gx, !prof !14, !nosanitize !13

bb.gx:                                            ; preds = %chunkunroll_avx2.exit
  %i.pe = sub i64 %.pre-phi394, %.pre-phi390
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @103, i64 %.pre-phi394, i64 %i.pe) #11, !nosanitize !13
  br label %bb.gy, !nosanitize !13

bb.gy:                                            ; preds = %bb.gx, %chunkunroll_avx2.exit
  %i.pf = zext i32 %.lcssa326 to i64
  %i.pg = call fastcc ptr @CHUNKCOPY_SAFE(ptr noundef %.0.i.lcssa, ptr noundef %i.oy, i64 noundef %i.pf, ptr noundef %i.bi)
  br label %bb.iw

bb.gz:                                            ; preds = %bb.gn
  %i.ph = call fastcc ptr @chunkcopy_safe(ptr noundef %.2224, ptr noundef %.0, i64 noundef %i.oa, ptr noundef %i.bi) ; 3 uses
  %i.pi = getelementptr inbounds i8, ptr %i.ph, i64 %i.oc
  %i.pj = ptrtoint ptr %i.ph to i64, !nosanitize !13 ; 3 uses
  %i.pk = icmp ugt i64 %i.pj, %i.ob
  br i1 %i.pk, label %bb.hb, label %bb.ha, !prof !14, !nosanitize !13

bb.ha:                                            ; preds = %bb.gz
  %i.pl = sub nsw i64 %i.pj, %i.ob
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @104, i64 %i.pj, i64 %i.pl) #11, !nosanitize !13
  br label %bb.hb, !nosanitize !13

bb.hb:                                            ; preds = %bb.ha, %bb.gz
  %i.pm = zext nneg i32 %i.nz to i64
  %i.pn = call fastcc ptr @chunkcopy_safe(ptr noundef %i.ph, ptr noundef nonnull %i.pi, i64 noundef %i.pm, ptr noundef %i.bi)
  br label %bb.iw

bb.hc:                                            ; preds = %bb.gm
  %i.po = zext nneg i32 %.0389 to i64             ; 2 uses
  br i1 %i.do, label %bb.hd, label %bb.he

bb.hd:                                            ; preds = %bb.hc
  %i.pp = call fastcc ptr @chunkcopy_safe(ptr noundef %.2224, ptr noundef %.0, i64 noundef %i.po, ptr noundef %i.bi)
  br label %bb.iw

bb.he:                                            ; preds = %bb.hc
  %i.pq = call fastcc ptr @CHUNKCOPY_SAFE(ptr noundef %.2224, ptr noundef %.0, i64 noundef %i.po, ptr noundef %i.bi)
  br label %bb.iw

bb.hf:                                            ; preds = %bb.fr
  br i1 %i.do, label %bb.hg, label %bb.hj

bb.hg:                                            ; preds = %bb.hf
  %i.pr = zext nneg i32 %i.ma to i64              ; 4 uses
  %i.ps = sub nsw i64 0, %i.pr
  %i.pt = getelementptr inbounds i8, ptr %.1223, i64 %i.ps
  %i.pu = icmp ne ptr %.1223, null, !nosanitize !13
  %i.pv = icmp eq i64 %i.mh, %i.pr
  %i.pw = xor i1 %i.pu, %i.pv
  %i.px = icmp ule i64 %i.pr, %i.mh
  %i.py = and i1 %i.px, %i.pw, !nosanitize !13
  br i1 %i.py, label %bb.hi, label %bb.hh, !prof !14, !nosanitize !13

bb.hh:                                            ; preds = %bb.hg
  %i.pz = sub i64 %i.mh, %i.pr
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @105, i64 %i.mh, i64 %i.pz) #11, !nosanitize !13
  br label %bb.hi, !nosanitize !13

bb.hi:                                            ; preds = %bb.hh, %bb.hg
  %i.qa = zext nneg i32 %i.jn to i64
  %i.qb = call fastcc ptr @chunkcopy_safe(ptr noundef %.1223, ptr noundef %i.pt, i64 noundef %i.qa, ptr noundef %i.bi)
  br label %bb.iw

bb.hj:                                            ; preds = %bb.hf
  %.not272 = icmp samesign uge i32 %i.ma, %i.jn
  %i.qc = icmp samesign ugt i32 %i.ma, 31
  %or.cond279 = or i1 %i.qc, %.not272
  %i.qd = zext nneg i32 %i.ma to i64              ; 5 uses
  %i.qe = sub nsw i64 0, %i.qd
  %i.qf = getelementptr inbounds i8, ptr %.1223, i64 %i.qe ; 2 uses
  %i.qg = icmp ne ptr %.1223, null, !nosanitize !13
  %i.qh = icmp eq i64 %i.mh, %i.qd
  %i.qi = xor i1 %i.qg, %i.qh
  %i.qj = icmp ule i64 %i.qd, %i.mh
  %i.qk = and i1 %i.qj, %i.qi, !nosanitize !13    ; 2 uses
  br i1 %or.cond279, label %bb.hk, label %bb.hn

bb.hk:                                            ; preds = %bb.hj
  br i1 %i.qk, label %bb.hm, label %bb.hl, !prof !14, !nosanitize !13

bb.hl:                                            ; preds = %bb.hk
  %i.ql = sub i64 %i.mh, %i.qd
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @106, i64 %i.mh, i64 %i.ql) #11, !nosanitize !13
  br label %bb.hm, !nosanitize !13

bb.hm:                                            ; preds = %bb.hl, %bb.hk
  %i.qm = call fastcc ptr @chunkcopy_avx2(ptr noundef %.1223, ptr noundef %i.qf, i32 noundef %i.jn)
  br label %bb.iw

bb.hn:                                            ; preds = %bb.hj
  br i1 %i.qk, label %bb.hp, label %bb.ho, !prof !14, !nosanitize !13

bb.ho:                                            ; preds = %bb.hn
  %i.qn = sub i64 %i.mh, %i.qd
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @107, i64 %i.mh, i64 %i.qn) #11, !nosanitize !13
  br label %bb.hp, !nosanitize !13

bb.hp:                                            ; preds = %bb.ho, %bb.hn
  %i.qo = call fastcc ptr @chunkmemset_avx2(ptr noundef %.1223, ptr noundef %i.qf, i32 noundef %i.jn)
  br label %bb.iw

bb.hq:                                            ; preds = %bb.fk
  %i.qp = and i32 %i.lo, 64
  %i.qq = icmp eq i32 %i.qp, 0
  br i1 %i.qq, label %bb.hr, label %bb.hz

bb.hr:                                            ; preds = %bb.hq
  br i1 %i.ky, label %bb.ht, label %bb.hs, !prof !14, !nosanitize !13

bb.hs:                                            ; preds = %bb.hr
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @108, i64 %i.kw) #11, !nosanitize !13
  br label %bb.ht, !nosanitize !13

bb.ht:                                            ; preds = %bb.hs, %bb.hr
  %i.qr = getelementptr inbounds nuw i8, ptr %.2, i64 2
  %i.qs = load i16, ptr %i.qr, align 2, !tbaa !62
  %i.qt = zext i16 %i.qs to i64                   ; 2 uses
  %i.qu = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.qt ; 2 uses
  %i.qv = shl nuw nsw i64 %i.qt, 2
  %i.qw = add i64 %i.qv, %i.dt, !nosanitize !13   ; 3 uses
  %i.qx = icmp eq i64 %i.qw, 0
  %i.qy = xor i1 %i.du, %i.qx
  %i.qz = icmp uge i64 %i.qw, %i.dt, !nosanitize !13
  %i.ra = and i1 %i.qz, %i.qy, !nosanitize !13
  br i1 %i.ra, label %bb.hv, label %bb.hu, !prof !14, !nosanitize !13

bb.hu:                                            ; preds = %bb.ht
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @109, i64 %i.dt, i64 %i.qw) #11, !nosanitize !13
  br label %bb.hv, !nosanitize !13

bb.hv:                                            ; preds = %bb.hu, %bb.ht
  %i.rb = icmp ult i8 %i.ln, 32
  br i1 %i.rb, label %bb.hx, label %bb.hw, !prof !14, !nosanitize !13

bb.hw:                                            ; preds = %bb.hv
  %i.rc = zext i8 %i.ln to i64
  call void @__ubsan_handle_shift_out_of_bounds(ptr nonnull @110, i64 1, i64 %i.rc) #12, !nosanitize !13
  br label %bb.hx, !nosanitize !13

bb.hx:                                            ; preds = %bb.hw, %bb.hv
  %notmask270 = shl nsw i32 -1, %i.lo
  %i.rd = xor i32 %notmask270, -1
  %i.re = zext nneg i32 %i.rd to i64
  %i.rf = and i64 %i.le, %i.re                    ; 2 uses
  %i.rg = getelementptr inbounds nuw [4 x i8], ptr %i.qu, i64 %i.rf
  %i.rh = shl nuw nsw i64 %i.rf, 2
  %i.ri = ptrtoint ptr %i.qu to i64, !nosanitize !13 ; 3 uses
  %i.rj = add i64 %i.rh, %i.ri, !nosanitize !13   ; 3 uses
  %i.rk = icmp eq i64 %i.rj, 0
  %i.rl = xor i1 %i.du, %i.rk
  %i.rm = icmp uge i64 %i.rj, %i.ri, !nosanitize !13
  %i.rn = and i1 %i.rm, %i.rl, !nosanitize !13
  br i1 %i.rn, label %.backedge, label %bb.hy, !prof !14, !nosanitize !13

bb.hy:                                            ; preds = %bb.hx
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @111, i64 %i.ri, i64 %i.rj) #11, !nosanitize !13
  br label %.backedge, !nosanitize !13

.backedge:                                        ; preds = %bb.hy, %bb.hx
  br label %bb.ey

bb.hz:                                            ; preds = %bb.hq
  br i1 %i.bs, label %bb.ib, label %bb.ia, !prof !14, !nosanitize !13

bb.ia:                                            ; preds = %bb.hz
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @112, i64 %i.bp) #11, !nosanitize !13
  br label %bb.ib, !nosanitize !13

bb.ib:                                            ; preds = %bb.ia, %bb.hz
  %i.ro = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i32 16209, ptr %i.ro, align 8, !tbaa !64
  br i1 %i.d, label %bb.id, label %bb.ic, !prof !14, !nosanitize !13

bb.ic:                                            ; preds = %bb.ib
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @113, i64 %i.b) #11, !nosanitize !13
  br label %bb.id, !nosanitize !13

bb.id:                                            ; preds = %bb.ic, %bb.ib
  %i.rp = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @.str.2, ptr %i.rp, align 8, !tbaa !65
  br label %.loopexit

bb.ie:                                            ; preds = %bb.ei
  %i.rq = and i32 %i.io, 64
  %i.rr = icmp eq i32 %i.rq, 0
  br i1 %i.rr, label %bb.if, label %bb.in

bb.if:                                            ; preds = %bb.ie
  br i1 %i.hy, label %bb.ih, label %bb.ig, !prof !14, !nosanitize !13

bb.ig:                                            ; preds = %bb.if
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @114, i64 %i.hw) #11, !nosanitize !13
  br label %bb.ih, !nosanitize !13

bb.ih:                                            ; preds = %bb.ig, %bb.if
  %i.rs = getelementptr inbounds nuw i8, ptr %.1, i64 2
  %i.rt = load i16, ptr %i.rs, align 2, !tbaa !62
  %i.ru = zext i16 %i.rt to i64                   ; 2 uses
  %i.rv = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.ru ; 2 uses
  %i.rw = shl nuw nsw i64 %i.ru, 2
  %i.rx = add i64 %i.rw, %i.dq, !nosanitize !13   ; 3 uses
  %i.ry = icmp eq i64 %i.rx, 0
  %i.rz = xor i1 %i.dr, %i.ry
  %i.sa = icmp uge i64 %i.rx, %i.dq, !nosanitize !13
  %i.sb = and i1 %i.sa, %i.rz, !nosanitize !13
  br i1 %i.sb, label %bb.ij, label %bb.ii, !prof !14, !nosanitize !13

bb.ii:                                            ; preds = %bb.ih
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @115, i64 %i.dq, i64 %i.rx) #11, !nosanitize !13
  br label %bb.ij, !nosanitize !13

bb.ij:                                            ; preds = %bb.ii, %bb.ih
  %i.sc = icmp ult i8 %i.in, 32
  br i1 %i.sc, label %bb.il, label %bb.ik, !prof !14, !nosanitize !13

bb.ik:                                            ; preds = %bb.ij
  %i.sd = zext i8 %i.in to i64
  call void @__ubsan_handle_shift_out_of_bounds(ptr nonnull @116, i64 1, i64 %i.sd) #12, !nosanitize !13
  br label %bb.il, !nosanitize !13

bb.il:                                            ; preds = %bb.ik, %bb.ij
  %notmask265 = shl nsw i32 -1, %i.io
  %i.se = xor i32 %notmask265, -1
  %i.sf = zext nneg i32 %i.se to i64
  %i.sg = and i64 %i.ie, %i.sf                    ; 2 uses
  %i.sh = getelementptr inbounds nuw [4 x i8], ptr %i.rv, i64 %i.sg
  %i.si = shl nuw nsw i64 %i.sg, 2
  %i.sj = ptrtoint ptr %i.rv to i64, !nosanitize !13 ; 3 uses
  %i.sk = add i64 %i.si, %i.sj, !nosanitize !13   ; 3 uses
  %i.sl = icmp eq i64 %i.sk, 0
  %i.sm = xor i1 %i.dr, %i.sl
  %i.sn = icmp uge i64 %i.sk, %i.sj, !nosanitize !13
  %i.so = and i1 %i.sn, %i.sm, !nosanitize !13
  br i1 %i.so, label %.backedge525, label %bb.im, !prof !14, !nosanitize !13

bb.im:                                            ; preds = %bb.il
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @117, i64 %i.sj, i64 %i.sk) #11, !nosanitize !13
end_hunk_0
