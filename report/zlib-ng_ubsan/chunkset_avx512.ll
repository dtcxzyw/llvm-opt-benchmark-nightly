Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zlib-ng_ubsan/original/chunkset_avx512?download=true
inline.NumInlined: 30
inline.NumDeleted: 15
begin_hunk_0_@inflate_fast_avx512:bb.a
  %i.lw = zext i16 %i.lv to i32
  %i.lx = and i32 %i.lp, 15                       ; 3 uses
  %notmask263 = shl nsw i32 -1, %i.lx
  %i.ly = xor i32 %notmask263, -1
  %i.lz = trunc i64 %i.lf to i32
  %i.ma = and i32 %i.ly, %i.lz
  %i.mb = add nuw nsw i32 %i.ma, %i.lw            ; 10 uses
  %i.mc = zext nneg i32 %i.lx to i64              ; 2 uses
  %i.md = lshr i64 %i.lf, %i.mc                   ; 10 uses
  %i.me = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %i.lj, i32 %i.lx), !nosanitize !12 ; 2 uses
  %i.mf = extractvalue { i32, i1 } %i.me, 0, !nosanitize !12 ; 10 uses
  %i.mg = extractvalue { i32, i1 } %i.me, 1, !nosanitize !12
  br i1 %i.mg, label %bb.fq, label %bb.fr, !prof !13, !nosanitize !12

bb.fq:                                            ; preds = %bb.fp
  %i.mh = zext i32 %i.lj to i64, !nosanitize !12
  call void @__ubsan_handle_sub_overflow(ptr nonnull @90, i64 %i.mh, i64 %i.mc) #13, !nosanitize !12
  br label %bb.fr, !nosanitize !12

bb.fr:                                            ; preds = %bb.fq, %bb.fp
  %i.mi = ptrtoint ptr %.1215 to i64              ; 11 uses
  %i.mj = sub i64 %i.mi, %i.dv
  %i.mk = trunc i64 %i.mj to i32                  ; 2 uses
  %i.ml = icmp ugt i32 %i.mb, %i.mk
  br i1 %i.ml, label %bb.fs, label %bb.ho

bb.fs:                                            ; preds = %bb.fr
  %i.mm = sub nuw nsw i32 %i.mb, %i.mk            ; 10 uses
  %i.mn = icmp ugt i32 %i.mm, %i.bz
  br i1 %i.mn, label %bb.ft, label %bb.fy

bb.ft:                                            ; preds = %bb.fs
  br i1 %i.bs, label %bb.fv, label %bb.fu, !prof !14, !nosanitize !12

bb.fu:                                            ; preds = %bb.ft
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @91, i64 %i.bp) #12, !nosanitize !12
  br label %bb.fv, !nosanitize !12

bb.fv:                                            ; preds = %bb.fu, %bb.ft
  %i.mo = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i32 16209, ptr %i.mo, align 8, !tbaa !58
  br i1 %i.d, label %bb.fx, label %bb.fw, !prof !14, !nosanitize !12

bb.fw:                                            ; preds = %bb.fv
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @92, i64 %i.b) #12, !nosanitize !12
  br label %bb.fx, !nosanitize !12

bb.fx:                                            ; preds = %bb.fw, %bb.fv
  %i.mp = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @.str, ptr %i.mp, align 8, !tbaa !59
  br label %.loopexit

bb.fy:                                            ; preds = %bb.fs
  br i1 %i.dw, label %bb.fz, label %bb.gd

bb.fz:                                            ; preds = %bb.fy
  %i.mq = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %i.bx, i32 %i.mm), !nosanitize !12 ; 2 uses
  %i.mr = extractvalue { i32, i1 } %i.mq, 0, !nosanitize !12
  %i.ms = extractvalue { i32, i1 } %i.mq, 1, !nosanitize !12
  br i1 %i.ms, label %bb.ga, label %bb.gb, !prof !13, !nosanitize !12

bb.ga:                                            ; preds = %bb.fz
  %i.mt = zext nneg i32 %i.mm to i64, !nosanitize !12
  call void @__ubsan_handle_sub_overflow(ptr nonnull @93, i64 %i.dy, i64 %i.mt) #13, !nosanitize !12
  br label %bb.gb, !nosanitize !12

bb.gb:                                            ; preds = %bb.ga, %bb.fz
  %i.mu = zext i32 %i.mr to i64                   ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.mu ; 2 uses
  %i.mw = add i64 %.pre-phi394, %i.mu, !nosanitize !12 ; 3 uses
  %i.mx = icmp eq i64 %i.mw, 0
  %i.my = xor i1 %i.dx, %i.mx
  %i.mz = icmp uge i64 %i.mw, %.pre-phi394, !nosanitize !12
  %i.na = and i1 %i.mz, %i.my, !nosanitize !12
  br i1 %i.na, label %CHUNKCOPY_SAFE.exit, label %bb.gc, !prof !14, !nosanitize !12

bb.gc:                                            ; preds = %bb.gb
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @94, i64 %.pre-phi394, i64 %i.mw) #12, !nosanitize !12
  br label %CHUNKCOPY_SAFE.exit, !nosanitize !12

bb.gd:                                            ; preds = %bb.fy
  %.not265 = icmp ult i32 %i.cb, %i.mm
  br i1 %.not265, label %bb.gg, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.nb = sub nuw i32 %i.cb, %i.mm
  %i.nc = zext i32 %i.nb to i64                   ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.nc ; 2 uses
  %i.ne = add i64 %.pre-phi394, %i.nc, !nosanitize !12 ; 3 uses
  %i.nf = icmp eq i64 %i.ne, 0
  %i.ng = xor i1 %i.dx, %i.nf
  %i.nh = icmp uge i64 %i.ne, %.pre-phi394, !nosanitize !12
  %i.ni = and i1 %i.nh, %i.ng, !nosanitize !12
  br i1 %i.ni, label %CHUNKCOPY_SAFE.exit, label %bb.gf, !prof !14, !nosanitize !12

bb.gf:                                            ; preds = %bb.ge
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @95, i64 %.pre-phi394, i64 %i.ne) #12, !nosanitize !12
  br label %CHUNKCOPY_SAFE.exit, !nosanitize !12

bb.gg:                                            ; preds = %bb.gd
  %i.nj = sub nuw nsw i32 %i.mm, %i.cb            ; 6 uses
  %i.nk = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %i.bx, i32 %i.nj), !nosanitize !12 ; 2 uses
  %i.nl = extractvalue { i32, i1 } %i.nk, 0, !nosanitize !12
  %i.nm = extractvalue { i32, i1 } %i.nk, 1, !nosanitize !12
  br i1 %i.nm, label %bb.gh, label %bb.gi, !prof !13, !nosanitize !12

bb.gh:                                            ; preds = %bb.gg
  %i.nn = zext nneg i32 %i.nj to i64, !nosanitize !12
  call void @__ubsan_handle_sub_overflow(ptr nonnull @96, i64 %i.dy, i64 %i.nn) #13, !nosanitize !12
  br label %bb.gi, !nosanitize !12

bb.gi:                                            ; preds = %bb.gh, %bb.gg
  %i.no = zext i32 %i.nl to i64                   ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.no ; 3 uses
  %i.nq = add i64 %.pre-phi394, %i.no, !nosanitize !12 ; 3 uses
  %i.nr = icmp eq i64 %i.nq, 0
  %i.ns = xor i1 %i.dx, %i.nr
  %i.nt = icmp uge i64 %i.nq, %.pre-phi394, !nosanitize !12
  %i.nu = and i1 %i.nt, %i.ns, !nosanitize !12
  br i1 %i.nu, label %bb.gk, label %bb.gj, !prof !14, !nosanitize !12

bb.gj:                                            ; preds = %bb.gi
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @97, i64 %.pre-phi394, i64 %i.nq) #12, !nosanitize !12
  br label %bb.gk, !nosanitize !12

bb.gk:                                            ; preds = %bb.gj, %bb.gi
  %i.nv = icmp samesign ult i32 %i.nj, %i.jo
  br i1 %i.nv, label %bb.gl, label %CHUNKCOPY_SAFE.exit

bb.gl:                                            ; preds = %bb.gk
  %i.nw = sub nuw nsw i32 %i.jo, %i.nj            ; 3 uses
  %i.nx = zext nneg i32 %i.nj to i64              ; 3 uses
  %i.ny = icmp eq ptr %.1215, %i.np
  br i1 %i.ny, label %bb.gm, label %bb.go

bb.gm:                                            ; preds = %bb.gl
  %i.nz = getelementptr inbounds nuw i8, ptr %.1215, i64 %i.nx ; 2 uses
  %i.oa = add i64 %i.nx, %i.mi, !nosanitize !12   ; 3 uses
  %i.ob = icmp ne ptr %.1215, null, !nosanitize !12
  %i.oc = icmp eq i64 %i.oa, 0
  %i.od = xor i1 %i.ob, %i.oc
  %i.oe = icmp uge i64 %i.oa, %i.mi, !nosanitize !12
  %i.of = and i1 %i.oe, %i.od, !nosanitize !12
  br i1 %i.of, label %CHUNKCOPY_SAFE.exit, label %bb.gn, !prof !14, !nosanitize !12

bb.gn:                                            ; preds = %bb.gm
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @207, i64 %i.mi, i64 %i.oa) #12, !nosanitize !12
  br label %CHUNKCOPY_SAFE.exit, !nosanitize !12

bb.go:                                            ; preds = %bb.gl
  %i.og = sub i64 %i.dz, %i.mi
  %i.oh = call i64 @llvm.umin.i64(i64 range(i64 0, 4294967296) %i.nx, i64 %i.og)
  %i.oi = trunc nuw nsw i64 %i.oh to i32
  %i.oj = call fastcc ptr @chunkmemset_avx512(ptr noundef %.1215, ptr noundef %i.np, i32 noundef %i.oi)
  br label %CHUNKCOPY_SAFE.exit

CHUNKCOPY_SAFE.exit:                              ; preds = %bb.go, %bb.gn, %bb.gm, %bb.ge, %bb.gf, %bb.gb, %bb.gc, %bb.gk
  %.0387 = phi i32 [ %i.jo, %bb.gb ], [ %i.jo, %bb.gc ], [ %i.nw, %bb.gm ], [ %i.nw, %bb.gn ], [ %i.nw, %bb.go ], [ %i.jo, %bb.gk ], [ %i.jo, %bb.ge ], [ %i.jo, %bb.gf ] ; 3 uses
  %.2216 = phi ptr [ %.1215, %bb.gb ], [ %.1215, %bb.gc ], [ %i.nz, %bb.gm ], [ %i.nz, %bb.gn ], [ %i.oj, %bb.go ], [ %.1215, %bb.gk ], [ %.1215, %bb.ge ], [ %.1215, %bb.gf ] ; 11 uses
  %.0202 = phi i32 [ %i.mm, %bb.gb ], [ %i.mm, %bb.gc ], [ %i.cb, %bb.gm ], [ %i.cb, %bb.gn ], [ %i.cb, %bb.go ], [ %i.nj, %bb.gk ], [ %i.mm, %bb.ge ], [ %i.mm, %bb.gf ] ; 3 uses
  %.0 = phi ptr [ %i.mv, %bb.gb ], [ %i.mv, %bb.gc ], [ %i.cd, %bb.gm ], [ %i.cd, %bb.gn ], [ %i.cd, %bb.go ], [ %i.np, %bb.gk ], [ %i.nd, %bb.ge ], [ %i.nd, %bb.gf ] ; 5 uses
  %i.ok = icmp ult i32 %.0202, %.0387
  br i1 %i.ok, label %bb.gp, label %bb.hk

bb.gp:                                            ; preds = %CHUNKCOPY_SAFE.exit
  %i.ol = sub nuw nsw i32 %.0387, %.0202          ; 4 uses
  %i.om = zext nneg i32 %.0202 to i64             ; 4 uses
  br i1 %i.do, label %bb.hh, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %i.on = icmp eq ptr %.2216, %.0
  %i.oo = ptrtoint ptr %.2216 to i64              ; 4 uses
  br i1 %i.on, label %bb.gr, label %bb.gt

bb.gr:                                            ; preds = %bb.gq
  %i.op = getelementptr inbounds nuw i8, ptr %.2216, i64 %i.om ; 2 uses
  %i.oq = add i64 %i.om, %i.oo, !nosanitize !12   ; 3 uses
  %i.or = icmp ne ptr %.2216, null, !nosanitize !12
  %i.os = icmp eq i64 %i.oq, 0
  %i.ot = xor i1 %i.or, %i.os
  %i.ou = icmp uge i64 %i.oq, %i.oo, !nosanitize !12
  %i.ov = and i1 %i.ou, %i.ot, !nosanitize !12
  br i1 %i.ov, label %CHUNKCOPY_SAFE.exit272, label %bb.gs, !prof !14, !nosanitize !12

bb.gs:                                            ; preds = %bb.gr
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @207, i64 %i.oo, i64 %i.oq) #12, !nosanitize !12
  br label %CHUNKCOPY_SAFE.exit272, !nosanitize !12

bb.gt:                                            ; preds = %bb.gq
  %i.ow = sub i64 %i.dz, %i.oo
  %i.ox = call i64 @llvm.umin.i64(i64 range(i64 0, 4294967296) %i.om, i64 %i.ow)
  %i.oy = trunc nuw nsw i64 %i.ox to i32
  %i.oz = call fastcc ptr @chunkmemset_avx512(ptr noundef %.2216, ptr noundef %.0, i32 noundef %i.oy)
  br label %CHUNKCOPY_SAFE.exit272

CHUNKCOPY_SAFE.exit272:                           ; preds = %bb.gt, %bb.gs, %bb.gr
  %.0.i271 = phi ptr [ %i.oz, %bb.gt ], [ %i.op, %bb.gs ], [ %i.op, %bb.gr ] ; 5 uses
  %i.pa = zext nneg i32 %i.mb to i64              ; 4 uses
  %i.pb = sub nsw i64 0, %i.pa                    ; 2 uses
  %i.pc = getelementptr inbounds i8, ptr %.0.i271, i64 %i.pb ; 2 uses
  %i.pd = ptrtoint ptr %.0.i271 to i64, !nosanitize !12 ; 3 uses
  %.not519 = icmp eq ptr %.0.i271, null
  %i.pe = icmp ugt i64 %i.pd, %i.pa
  br i1 %i.pe, label %bb.gv, label %bb.gu, !prof !14, !nosanitize !12

bb.gu:                                            ; preds = %CHUNKCOPY_SAFE.exit272
  %i.pf = sub nsw i64 %i.pd, %i.pa
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @208, i64 %i.pd, i64 %i.pf) #12, !nosanitize !12
  br label %bb.gv, !nosanitize !12

bb.gv:                                            ; preds = %bb.gu, %CHUNKCOPY_SAFE.exit272
  %i.pg = ptrtoint ptr %i.pc to i64               ; 2 uses
  %i.ph = icmp ult i32 %i.mb, %i.ol
  %i.pi = icmp samesign ult i32 %i.mb, 32
  %or.cond280326 = and i1 %i.ph, %i.pi
  br i1 %or.cond280326, label %.lr.ph, label %chunkunroll_avx512.exit

.lr.ph:                                           ; preds = %bb.gv, %bb.hb
  %.0.i273327 = phi ptr [ %i.pn, %bb.hb ], [ %.0.i271, %bb.gv ] ; 4 uses
  %i.pj = phi i32 [ %i.pt, %bb.hb ], [ %i.mb, %bb.gv ] ; 3 uses
  %i.pk = phi i32 [ %i.pq, %bb.hb ], [ %i.ol, %bb.gv ] ; 2 uses
  br i1 %.not519, label %bb.gw, label %loadchunk.exit.thread.i, !prof !13, !nosanitize !12

bb.gw:                                            ; preds = %.lr.ph
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @212, i64 %i.pg) #12, !nosanitize !12
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @214, i64 %i.pg) #12, !nosanitize !12
  br label %loadchunk.exit.thread.i, !nosanitize !12

loadchunk.exit.thread.i:                          ; preds = %bb.gw, %.lr.ph
  %i.pl = load <4 x i64>, ptr %i.pc, align 1, !tbaa !15
  %.not520 = icmp eq ptr %.0.i273327, null, !nosanitize !12
  %.pre395 = ptrtoint ptr %.0.i273327 to i64, !nosanitize !12 ; 5 uses
  br i1 %.not520, label %bb.gx, label %storechunk.exit.i, !prof !13, !nosanitize !12

bb.gx:                                            ; preds = %loadchunk.exit.thread.i
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @203, i64 %.pre395) #12, !nosanitize !12
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @205, i64 %.pre395) #12, !nosanitize !12
  br label %storechunk.exit.i, !nosanitize !12

storechunk.exit.i:                                ; preds = %loadchunk.exit.thread.i, %bb.gx
  store <4 x i64> %i.pl, ptr %.0.i273327, align 1, !tbaa !15
  %i.pm = zext nneg i32 %i.pj to i64              ; 3 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %.0.i273327, i64 %i.pm ; 2 uses
  %i.po = add i64 %.pre395, %i.pm, !nosanitize !12 ; 2 uses
  %.not.i = icmp ult i64 %i.po, %.pre395, !nosanitize !12
  br i1 %.not.i, label %bb.gy, label %bb.gz, !prof !13, !nosanitize !12

bb.gy:                                            ; preds = %storechunk.exit.i
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @209, i64 %.pre395, i64 %i.po) #12, !nosanitize !12
  br label %bb.gz, !nosanitize !12

bb.gz:                                            ; preds = %storechunk.exit.i, %bb.gy
  %i.pp = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %i.pk, i32 %i.pj), !nosanitize !12 ; 2 uses
  %i.pq = extractvalue { i32, i1 } %i.pp, 0, !nosanitize !12 ; 3 uses
  %i.pr = extractvalue { i32, i1 } %i.pp, 1, !nosanitize !12
  br i1 %i.pr, label %bb.ha, label %bb.hb, !prof !13, !nosanitize !12

bb.ha:                                            ; preds = %bb.gz
  %i.ps = zext i32 %i.pk to i64, !nosanitize !12
  call void @__ubsan_handle_sub_overflow(ptr nonnull @210, i64 %i.ps, i64 %i.pm) #13, !nosanitize !12
  br label %bb.hb, !nosanitize !12

bb.hb:                                            ; preds = %bb.gz, %bb.ha
  %i.pt = shl i32 %i.pj, 1                        ; 5 uses
  %i.pu = icmp ult i32 %i.pt, %i.pq
  %i.pv = icmp ult i32 %i.pt, 32
  %or.cond280 = and i1 %i.pu, %i.pv
  br i1 %or.cond280, label %.lr.ph, label %chunkunroll_avx512.exit.loopexit, !llvm.loop !25

chunkunroll_avx512.exit.loopexit:                 ; preds = %bb.hb
  %.pre = zext nneg i32 %i.pt to i64              ; 2 uses
  %.pre389 = sub nsw i64 0, %.pre
  %i.pw = icmp eq i32 %i.pt, 0
  br label %chunkunroll_avx512.exit

chunkunroll_avx512.exit:                          ; preds = %chunkunroll_avx512.exit.loopexit, %bb.gv
  %.pre-phi390 = phi i64 [ %.pre389, %chunkunroll_avx512.exit.loopexit ], [ %i.pb, %bb.gv ]
  %.pre-phi388 = phi i64 [ %.pre, %chunkunroll_avx512.exit.loopexit ], [ %i.pa, %bb.gv ] ; 3 uses
  %.lcssa325 = phi i32 [ %i.pq, %chunkunroll_avx512.exit.loopexit ], [ %i.ol, %bb.gv ]
  %.lcssa323 = phi i1 [ %i.pw, %chunkunroll_avx512.exit.loopexit ], [ false, %bb.gv ]
  %.0.i273.lcssa = phi ptr [ %i.pn, %chunkunroll_avx512.exit.loopexit ], [ %.0.i271, %bb.gv ] ; 5 uses
  %.pre-phi392 = ptrtoint ptr %.0.i273.lcssa to i64 ; 8 uses
  %i.px = getelementptr inbounds i8, ptr %.0.i273.lcssa, i64 %.pre-phi390
  %i.py = icmp ne ptr %.0.i273.lcssa, null, !nosanitize !12 ; 2 uses
  %i.pz = icmp eq i64 %.pre-phi388, %.pre-phi392
  %i.qa = xor i1 %i.py, %i.pz
  %i.qb = icmp ule i64 %.pre-phi388, %.pre-phi392
  %i.qc = and i1 %i.qb, %i.qa, !nosanitize !12
  br i1 %i.qc, label %bb.hd, label %bb.hc, !prof !14, !nosanitize !12

bb.hc:                                            ; preds = %chunkunroll_avx512.exit
  %i.qd = sub i64 %.pre-phi392, %.pre-phi388
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @98, i64 %.pre-phi392, i64 %i.qd) #12, !nosanitize !12
  br label %bb.hd, !nosanitize !12

bb.hd:                                            ; preds = %bb.hc, %chunkunroll_avx512.exit
  %i.qe = zext i32 %.lcssa325 to i64              ; 3 uses
  br i1 %.lcssa323, label %bb.he, label %bb.hg

bb.he:                                            ; preds = %bb.hd
  %i.qf = getelementptr inbounds nuw i8, ptr %.0.i273.lcssa, i64 %i.qe ; 2 uses
  %i.qg = add i64 %i.qe, %.pre-phi392, !nosanitize !12 ; 3 uses
  %i.qh = icmp eq i64 %i.qg, 0
  %i.qi = xor i1 %i.py, %i.qh
  %i.qj = icmp uge i64 %i.qg, %.pre-phi392, !nosanitize !12
  %i.qk = and i1 %i.qj, %i.qi, !nosanitize !12
  br i1 %i.qk, label %CHUNKCOPY_SAFE.exit275, label %bb.hf, !prof !14, !nosanitize !12

bb.hf:                                            ; preds = %bb.he
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @207, i64 %.pre-phi392, i64 %i.qg) #12, !nosanitize !12
  br label %CHUNKCOPY_SAFE.exit275, !nosanitize !12

bb.hg:                                            ; preds = %bb.hd
  %i.ql = sub i64 %i.dz, %.pre-phi392
  %i.qm = call i64 @llvm.umin.i64(i64 range(i64 0, 4294967296) %i.qe, i64 %i.ql)
  %i.qn = trunc nuw i64 %i.qm to i32
  %i.qo = call fastcc ptr @chunkmemset_avx512(ptr noundef %.0.i273.lcssa, ptr noundef nonnull %i.px, i32 noundef %i.qn)
  br label %CHUNKCOPY_SAFE.exit275

bb.hh:                                            ; preds = %bb.gp
  %i.qp = call fastcc ptr @chunkcopy_safe(ptr noundef %.2216, ptr noundef %.0, i64 noundef %i.om, ptr noundef %i.bi) ; 3 uses
  %i.qq = zext nneg i32 %i.mb to i64              ; 3 uses
  %i.qr = sub nsw i64 0, %i.qq
  %i.qs = getelementptr inbounds i8, ptr %i.qp, i64 %i.qr
  %i.qt = ptrtoint ptr %i.qp to i64, !nosanitize !12 ; 3 uses
  %i.qu = icmp ugt i64 %i.qt, %i.qq
  br i1 %i.qu, label %bb.hj, label %bb.hi, !prof !14, !nosanitize !12

bb.hi:                                            ; preds = %bb.hh
  %i.qv = sub nsw i64 %i.qt, %i.qq
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @99, i64 %i.qt, i64 %i.qv) #12, !nosanitize !12
  br label %bb.hj, !nosanitize !12

bb.hj:                                            ; preds = %bb.hi, %bb.hh
  %i.qw = zext nneg i32 %i.ol to i64
  %i.qx = call fastcc ptr @chunkcopy_safe(ptr noundef %i.qp, ptr noundef nonnull %i.qs, i64 noundef %i.qw, ptr noundef %i.bi)
  br label %CHUNKCOPY_SAFE.exit275

bb.hk:                                            ; preds = %CHUNKCOPY_SAFE.exit
  %i.qy = zext nneg i32 %.0387 to i64             ; 3 uses
  %i.qz = icmp eq ptr %.2216, %.0
  %i.ra = ptrtoint ptr %.2216 to i64              ; 4 uses
  br i1 %i.qz, label %bb.hl, label %bb.hn

bb.hl:                                            ; preds = %bb.hk
  %i.rb = getelementptr inbounds nuw i8, ptr %.2216, i64 %i.qy ; 2 uses
  %i.rc = add i64 %i.qy, %i.ra, !nosanitize !12   ; 3 uses
  %i.rd = icmp ne ptr %.2216, null, !nosanitize !12
  %i.re = icmp eq i64 %i.rc, 0
  %i.rf = xor i1 %i.rd, %i.re
  %i.rg = icmp uge i64 %i.rc, %i.ra, !nosanitize !12
  %i.rh = and i1 %i.rg, %i.rf, !nosanitize !12
  br i1 %i.rh, label %CHUNKCOPY_SAFE.exit275, label %bb.hm, !prof !14, !nosanitize !12

bb.hm:                                            ; preds = %bb.hl
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @207, i64 %i.ra, i64 %i.rc) #12, !nosanitize !12
  br label %CHUNKCOPY_SAFE.exit275, !nosanitize !12

bb.hn:                                            ; preds = %bb.hk
  %i.ri = sub i64 %i.dz, %i.ra
  %i.rj = call i64 @llvm.umin.i64(i64 range(i64 0, 4294967296) %i.qy, i64 %i.ri)
  %i.rk = trunc nuw nsw i64 %i.rj to i32
  %i.rl = call fastcc ptr @chunkmemset_avx512(ptr noundef %.2216, ptr noundef %.0, i32 noundef %i.rk)
  br label %CHUNKCOPY_SAFE.exit275

bb.ho:                                            ; preds = %bb.fr
  %.not264 = icmp samesign uge i32 %i.mb, %i.jo
  %i.rm = icmp samesign ugt i32 %i.mb, 31
  %or.cond278 = or i1 %i.rm, %.not264
  %i.rn = zext nneg i32 %i.mb to i64              ; 5 uses
  %i.ro = sub nsw i64 0, %i.rn
  %i.rp = getelementptr inbounds i8, ptr %.1215, i64 %i.ro ; 2 uses
  %i.rq = icmp ne ptr %.1215, null, !nosanitize !12
  %i.rr = icmp eq i64 %i.mi, %i.rn
  %i.rs = xor i1 %i.rq, %i.rr
  %i.rt = icmp ule i64 %i.rn, %i.mi
  %i.ru = and i1 %i.rt, %i.rs, !nosanitize !12    ; 2 uses
  br i1 %or.cond278, label %bb.hp, label %bb.hs

bb.hp:                                            ; preds = %bb.ho
  br i1 %i.ru, label %bb.hr, label %bb.hq, !prof !14, !nosanitize !12

bb.hq:                                            ; preds = %bb.hp
  %i.rv = sub i64 %i.mi, %i.rn
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @100, i64 %i.mi, i64 %i.rv) #12, !nosanitize !12
  br label %bb.hr, !nosanitize !12

bb.hr:                                            ; preds = %bb.hq, %bb.hp
  %i.rw = call fastcc ptr @CHUNKCOPY(ptr noundef %.1215, ptr noundef %i.rp, i32 noundef %i.jo)
  br label %CHUNKCOPY_SAFE.exit275

bb.hs:                                            ; preds = %bb.ho
  br i1 %i.ru, label %bb.hu, label %bb.ht, !prof !14, !nosanitize !12

bb.ht:                                            ; preds = %bb.hs
  %i.rx = sub i64 %i.mi, %i.rn
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @101, i64 %i.mi, i64 %i.rx) #12, !nosanitize !12
  br label %bb.hu, !nosanitize !12

bb.hu:                                            ; preds = %bb.ht, %bb.hs
  %i.ry = call fastcc ptr @chunkmemset_avx512(ptr noundef %.1215, ptr noundef %i.rp, i32 noundef %i.jo)
  br label %CHUNKCOPY_SAFE.exit275

bb.hv:                                            ; preds = %bb.fk
  %i.rz = and i32 %i.lp, 64
  %i.sa = icmp eq i32 %i.rz, 0
  br i1 %i.sa, label %bb.hw, label %bb.ie

bb.hw:                                            ; preds = %bb.hv
  br i1 %i.kz, label %bb.hy, label %bb.hx, !prof !14, !nosanitize !12

bb.hx:                                            ; preds = %bb.hw
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @102, i64 %i.kx) #12, !nosanitize !12
  br label %bb.hy, !nosanitize !12

bb.hy:                                            ; preds = %bb.hx, %bb.hw
  %i.sb = getelementptr inbounds nuw i8, ptr %.2, i64 2
  %i.sc = load i16, ptr %i.sb, align 2, !tbaa !56
  %i.sd = zext i16 %i.sc to i64                   ; 2 uses
  %i.se = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.sd ; 2 uses
  %i.sf = shl nuw nsw i64 %i.sd, 2
  %i.sg = add i64 %i.sf, %i.dt, !nosanitize !12   ; 3 uses
  %i.sh = icmp eq i64 %i.sg, 0
  %i.si = xor i1 %i.du, %i.sh
  %i.sj = icmp uge i64 %i.sg, %i.dt, !nosanitize !12
  %i.sk = and i1 %i.sj, %i.si, !nosanitize !12
  br i1 %i.sk, label %bb.ia, label %bb.hz, !prof !14, !nosanitize !12

bb.hz:                                            ; preds = %bb.hy
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @103, i64 %i.dt, i64 %i.sg) #12, !nosanitize !12
  br label %bb.ia, !nosanitize !12

bb.ia:                                            ; preds = %bb.hz, %bb.hy
  %i.sl = icmp ult i8 %i.lo, 32
  br i1 %i.sl, label %bb.ic, label %bb.ib, !prof !14, !nosanitize !12

bb.ib:                                            ; preds = %bb.ia
  %i.sm = zext i8 %i.lo to i64
  call void @__ubsan_handle_shift_out_of_bounds(ptr nonnull @104, i64 1, i64 %i.sm) #13, !nosanitize !12
  br label %bb.ic, !nosanitize !12

bb.ic:                                            ; preds = %bb.ib, %bb.ia
  %notmask262 = shl nsw i32 -1, %i.lp
  %i.sn = xor i32 %notmask262, -1
  %i.so = zext nneg i32 %i.sn to i64
  %i.sp = and i64 %i.lf, %i.so                    ; 2 uses
  %i.sq = getelementptr inbounds nuw [4 x i8], ptr %i.se, i64 %i.sp
  %i.sr = shl nuw nsw i64 %i.sp, 2
  %i.ss = ptrtoint ptr %i.se to i64, !nosanitize !12 ; 3 uses
  %i.st = add i64 %i.sr, %i.ss, !nosanitize !12   ; 3 uses
  %i.su = icmp eq i64 %i.st, 0
  %i.sv = xor i1 %i.du, %i.su
  %i.sw = icmp uge i64 %i.st, %i.ss, !nosanitize !12
  %i.sx = and i1 %i.sw, %i.sv, !nosanitize !12
  br i1 %i.sx, label %.backedge, label %bb.id, !prof !14, !nosanitize !12

bb.id:                                            ; preds = %bb.ic
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @105, i64 %i.ss, i64 %i.st) #12, !nosanitize !12
  br label %.backedge, !nosanitize !12

.backedge:                                        ; preds = %bb.id, %bb.ic
  br label %bb.ey

bb.ie:                                            ; preds = %bb.hv
  br i1 %i.bs, label %bb.ig, label %bb.if, !prof !14, !nosanitize !12

bb.if:                                            ; preds = %bb.ie
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @106, i64 %i.bp) #12, !nosanitize !12
  br label %bb.ig, !nosanitize !12

bb.ig:                                            ; preds = %bb.if, %bb.ie
  %i.sy = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i32 16209, ptr %i.sy, align 8, !tbaa !58
  br i1 %i.d, label %bb.ii, label %bb.ih, !prof !14, !nosanitize !12

bb.ih:                                            ; preds = %bb.ig
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @107, i64 %i.b) #12, !nosanitize !12
  br label %bb.ii, !nosanitize !12

bb.ii:                                            ; preds = %bb.ih, %bb.ig
  %i.sz = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @.str.1, ptr %i.sz, align 8, !tbaa !59
  br label %.loopexit

bb.ij:                                            ; preds = %bb.ei
  %i.ta = and i32 %i.ip, 64
  %i.tb = icmp eq i32 %i.ta, 0
  br i1 %i.tb, label %bb.ik, label %bb.is

bb.ik:                                            ; preds = %bb.ij
  br i1 %i.hz, label %bb.im, label %bb.il, !prof !14, !nosanitize !12

bb.il:                                            ; preds = %bb.ik
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @108, i64 %i.hx) #12, !nosanitize !12
  br label %bb.im, !nosanitize !12

bb.im:                                            ; preds = %bb.il, %bb.ik
  %i.tc = getelementptr inbounds nuw i8, ptr %.1, i64 2
  %i.td = load i16, ptr %i.tc, align 2, !tbaa !56
  %i.te = zext i16 %i.td to i64                   ; 2 uses
  %i.tf = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.te ; 2 uses
  %i.tg = shl nuw nsw i64 %i.te, 2
end_hunk_0
