Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zlib-ng_ubsan/original/deflate_stored?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0_@deflate_stored:bb.a
bb.go:                                            ; preds = %bb.gn, %bb.gm
  store i32 %i.lg, ptr %i.ji, align 8, !tbaa !37
  br i1 %i.jc, label %bb.gq, label %bb.gp, !prof !13, !nosanitize !12

bb.gp:                                            ; preds = %bb.go
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @326, i64 %i.iz) #6, !nosanitize !12
  br label %bb.gq, !nosanitize !12

bb.gq:                                            ; preds = %bb.gp, %bb.go
  %i.lk = and i1 %i.iy, %i.jb, !nosanitize !12
  br i1 %i.lk, label %bb.gs, label %bb.gr, !prof !13, !nosanitize !12

bb.gr:                                            ; preds = %bb.gq
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @327, i64 %i.iz) #6, !nosanitize !12
  br label %bb.gs, !nosanitize !12

bb.gs:                                            ; preds = %bb.gr, %bb.gq
  %i.ll = load ptr, ptr %i.im, align 8, !tbaa !49 ; 3 uses
  %i.lm = zext i32 %i.jn to i64                   ; 4 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.ll, i64 %i.lm
  %i.lo = ptrtoint ptr %i.ll to i64, !nosanitize !12 ; 3 uses
  %i.lp = add i64 %i.lo, %i.lm, !nosanitize !12   ; 3 uses
  %i.lq = icmp ne ptr %i.ll, null, !nosanitize !12
  %i.lr = icmp ne i64 %i.lp, 0
  %i.ls = and i1 %i.lq, %i.lr
  %i.lt = icmp uge i64 %i.lp, %i.lo, !nosanitize !12
  %i.lu = and i1 %i.lt, %i.ls, !nosanitize !12
  br i1 %i.lu, label %bb.gu, label %bb.gt, !prof !13, !nosanitize !12

bb.gt:                                            ; preds = %bb.gs
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @328, i64 %i.lo, i64 %i.lp) #6, !nosanitize !12
  br label %bb.gu, !nosanitize !12

bb.gu:                                            ; preds = %bb.gt, %bb.gs
  store ptr %i.ln, ptr %i.im, align 8, !tbaa !49
  br i1 %i.jb, label %bb.gw, label %bb.gv, !prof !13, !nosanitize !12

bb.gv:                                            ; preds = %bb.gu
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @329, i64 %i.iz) #6, !nosanitize !12
  br label %bb.gw, !nosanitize !12

bb.gw:                                            ; preds = %bb.gv, %bb.gu
  %i.lv = getelementptr inbounds nuw i8, ptr %i.im, i64 16 ; 2 uses
  %i.lw = load i64, ptr %i.lv, align 8, !tbaa !52 ; 2 uses
  %i.lx = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.lw, i64 %i.lm), !nosanitize !12 ; 2 uses
  %i.ly = extractvalue { i64, i1 } %i.lx, 0, !nosanitize !12
  %i.lz = extractvalue { i64, i1 } %i.lx, 1, !nosanitize !12
  br i1 %i.lz, label %bb.gx, label %bb.gy, !prof !27, !nosanitize !12

bb.gx:                                            ; preds = %bb.gw
  call void @__ubsan_handle_add_overflow(ptr nonnull @330, i64 %i.lw, i64 %i.lm) #7, !nosanitize !12
  br label %bb.gy, !nosanitize !12

bb.gy:                                            ; preds = %bb.gx, %bb.gw
  store i64 %i.ly, ptr %i.lv, align 8, !tbaa !52
  br label %read_buf.exit263

read_buf.exit263:                                 ; preds = %bb.ev, %bb.gy
  br i1 %i.d, label %.critedge322, label %bb.gz, !prof !13, !nosanitize !12

bb.gz:                                            ; preds = %read_buf.exit263
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @95, i64 %i.b) #6, !nosanitize !12
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @96, i64 %i.b) #6, !nosanitize !12
  br label %.critedge322, !nosanitize !12

.critedge322:                                     ; preds = %read_buf.exit263, %bb.gz
  %i.ma = load ptr, ptr %0, align 64, !tbaa !34   ; 3 uses
  %i.mb = icmp ne ptr %i.ma, null, !nosanitize !12
  %i.mc = ptrtoint ptr %i.ma to i64, !nosanitize !12 ; 2 uses
  %i.md = and i64 %i.mc, 7, !nosanitize !12
  %i.me = icmp eq i64 %i.md, 0, !nosanitize !12
  %i.mf = and i1 %i.mb, %i.me, !nosanitize !12
  br i1 %i.mf, label %bb.hb, label %bb.ha, !prof !13, !nosanitize !12

bb.ha:                                            ; preds = %.critedge322
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @97, i64 %i.mc) #6, !nosanitize !12
  br label %bb.hb, !nosanitize !12

bb.hb:                                            ; preds = %bb.ha, %.critedge322
  %i.mg = getelementptr inbounds nuw i8, ptr %i.ma, i64 24 ; 3 uses
  %i.mh = ptrtoint ptr %i.mg to i64, !nosanitize !12 ; 2 uses
  %i.mi = and i64 %i.mh, 7, !nosanitize !12
  %i.mj = icmp eq i64 %i.mi, 0, !nosanitize !12
  br i1 %i.mj, label %bb.hd, label %bb.hc, !prof !13, !nosanitize !12

bb.hc:                                            ; preds = %bb.hb
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @98, i64 %i.mh) #6, !nosanitize !12
  br label %bb.hd, !nosanitize !12

bb.hd:                                            ; preds = %bb.hc, %bb.hb
  %i.mk = load ptr, ptr %i.mg, align 8, !tbaa !42 ; 3 uses
  %i.ml = zext i32 %.1223 to i64                  ; 5 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mk, i64 %i.ml
  %i.mn = ptrtoint ptr %i.mk to i64, !nosanitize !12 ; 3 uses
  %i.mo = add i64 %i.mn, %i.ml, !nosanitize !12   ; 3 uses
  %i.mp = icmp ne ptr %i.mk, null, !nosanitize !12
  %i.mq = icmp ne i64 %i.mo, 0
  %i.mr = and i1 %i.mp, %i.mq
  %i.ms = icmp uge i64 %i.mo, %i.mn, !nosanitize !12
  %i.mt = and i1 %i.ms, %i.mr, !nosanitize !12
  br i1 %i.mt, label %bb.hf, label %bb.he, !prof !13, !nosanitize !12

bb.he:                                            ; preds = %bb.hd
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @99, i64 %i.mn, i64 %i.mo) #6, !nosanitize !12
  br label %bb.hf, !nosanitize !12

bb.hf:                                            ; preds = %bb.he, %bb.hd
  store ptr %i.mm, ptr %i.mg, align 8, !tbaa !42
  br i1 %i.d, label %.critedge324, label %bb.hg, !prof !13, !nosanitize !12

bb.hg:                                            ; preds = %bb.hf
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @100, i64 %i.b) #6, !nosanitize !12
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @101, i64 %i.b) #6, !nosanitize !12
  br label %.critedge324, !nosanitize !12

.critedge324:                                     ; preds = %bb.hf, %bb.hg
  %i.mu = load ptr, ptr %0, align 64, !tbaa !34   ; 3 uses
  %i.mv = icmp ne ptr %i.mu, null, !nosanitize !12
  %i.mw = ptrtoint ptr %i.mu to i64, !nosanitize !12 ; 2 uses
  %i.mx = and i64 %i.mw, 7, !nosanitize !12
  %i.my = icmp eq i64 %i.mx, 0, !nosanitize !12
  %i.mz = and i1 %i.mv, %i.my, !nosanitize !12
  br i1 %i.mz, label %bb.hi, label %bb.hh, !prof !13, !nosanitize !12

bb.hh:                                            ; preds = %.critedge324
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @102, i64 %i.mw) #6, !nosanitize !12
  br label %bb.hi, !nosanitize !12

bb.hi:                                            ; preds = %bb.hh, %.critedge324
  %i.na = getelementptr inbounds nuw i8, ptr %i.mu, i64 32 ; 3 uses
  %i.nb = ptrtoint ptr %i.na to i64, !nosanitize !12 ; 2 uses
  %i.nc = and i64 %i.nb, 7, !nosanitize !12
  %i.nd = icmp eq i64 %i.nc, 0, !nosanitize !12
  br i1 %i.nd, label %bb.hk, label %bb.hj, !prof !13, !nosanitize !12

bb.hj:                                            ; preds = %bb.hi
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @103, i64 %i.nb) #6, !nosanitize !12
  br label %bb.hk, !nosanitize !12

bb.hk:                                            ; preds = %bb.hj, %bb.hi
  %i.ne = load i32, ptr %i.na, align 8, !tbaa !39 ; 2 uses
  %i.nf = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %i.ne, i32 %.1223), !nosanitize !12 ; 2 uses
  %i.ng = extractvalue { i32, i1 } %i.nf, 0, !nosanitize !12
  %i.nh = extractvalue { i32, i1 } %i.nf, 1, !nosanitize !12
  br i1 %i.nh, label %bb.hl, label %bb.hm, !prof !27, !nosanitize !12

bb.hl:                                            ; preds = %bb.hk
  %i.ni = zext i32 %i.ne to i64, !nosanitize !12
  call void @__ubsan_handle_sub_overflow(ptr nonnull @104, i64 %i.ni, i64 %i.ml) #7, !nosanitize !12
  br label %bb.hm, !nosanitize !12

bb.hm:                                            ; preds = %bb.hl, %bb.hk
  store i32 %i.ng, ptr %i.na, align 8, !tbaa !39
  br i1 %i.d, label %.critedge326, label %bb.hn, !prof !13, !nosanitize !12

bb.hn:                                            ; preds = %bb.hm
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @105, i64 %i.b) #6, !nosanitize !12
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @106, i64 %i.b) #6, !nosanitize !12
  br label %.critedge326, !nosanitize !12

.critedge326:                                     ; preds = %bb.hm, %bb.hn
  %i.nj = load ptr, ptr %0, align 64, !tbaa !34   ; 3 uses
  %i.nk = icmp ne ptr %i.nj, null, !nosanitize !12
  %i.nl = ptrtoint ptr %i.nj to i64, !nosanitize !12 ; 2 uses
  %i.nm = and i64 %i.nl, 7, !nosanitize !12
  %i.nn = icmp eq i64 %i.nm, 0, !nosanitize !12
  %i.no = and i1 %i.nk, %i.nn, !nosanitize !12
  br i1 %i.no, label %bb.hp, label %bb.ho, !prof !13, !nosanitize !12

bb.ho:                                            ; preds = %.critedge326
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @107, i64 %i.nl) #6, !nosanitize !12
  br label %bb.hp, !nosanitize !12

bb.hp:                                            ; preds = %bb.ho, %.critedge326
  %i.np = getelementptr inbounds nuw i8, ptr %i.nj, i64 40 ; 3 uses
  %i.nq = ptrtoint ptr %i.np to i64, !nosanitize !12 ; 2 uses
  %i.nr = and i64 %i.nq, 7, !nosanitize !12
  %i.ns = icmp eq i64 %i.nr, 0, !nosanitize !12
  br i1 %i.ns, label %bb.hr, label %bb.hq, !prof !13, !nosanitize !12

bb.hq:                                            ; preds = %bb.hp
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @108, i64 %i.nq) #6, !nosanitize !12
  br label %bb.hr, !nosanitize !12

bb.hr:                                            ; preds = %bb.hq, %bb.hp
  %i.nt = load i64, ptr %i.np, align 8, !tbaa !44 ; 2 uses
  %i.nu = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.nt, i64 %i.ml), !nosanitize !12 ; 2 uses
  %i.nv = extractvalue { i64, i1 } %i.nu, 0, !nosanitize !12
  %i.nw = extractvalue { i64, i1 } %i.nu, 1, !nosanitize !12
  br i1 %i.nw, label %bb.hs, label %bb.ht, !prof !27, !nosanitize !12

bb.hs:                                            ; preds = %bb.hr
  call void @__ubsan_handle_add_overflow(ptr nonnull @109, i64 %i.nt, i64 %i.ml) #7, !nosanitize !12
  br label %bb.ht, !nosanitize !12

bb.ht:                                            ; preds = %bb.hs, %bb.hr
  store i64 %i.nv, ptr %i.np, align 8, !tbaa !44
  br label %bb.hu

bb.hu:                                            ; preds = %bb.ef, %bb.ht
  %2 = trunc nuw i32 %i.ew to i1
  br i1 %2, label %bb.hv, label %bb.af, !llvm.loop !30

bb.hv:                                            ; preds = %bb.by, %bb.bq, %bb.ao, %bb.hu
  %.not249 = phi i1 [ true, %bb.ao ], [ true, %bb.bq ], [ true, %bb.by ], [ false, %bb.hu ]
  br i1 %i.d, label %.critedge328, label %bb.hw, !prof !13, !nosanitize !12

bb.hw:                                            ; preds = %bb.hv
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @110, i64 %i.b) #6, !nosanitize !12
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @111, i64 %i.b) #6, !nosanitize !12
  br label %.critedge328, !nosanitize !12

.critedge328:                                     ; preds = %bb.hv, %bb.hw
  %i.nx = load ptr, ptr %0, align 64, !tbaa !34   ; 3 uses
  %i.ny = icmp ne ptr %i.nx, null, !nosanitize !12
  %i.nz = ptrtoint ptr %i.nx to i64, !nosanitize !12 ; 2 uses
  %i.oa = and i64 %i.nz, 7, !nosanitize !12
  %i.ob = icmp eq i64 %i.oa, 0, !nosanitize !12
  %i.oc = and i1 %i.ny, %i.ob, !nosanitize !12
  br i1 %i.oc, label %bb.hy, label %bb.hx, !prof !13, !nosanitize !12

bb.hx:                                            ; preds = %.critedge328
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @112, i64 %i.nz) #6, !nosanitize !12
  br label %bb.hy, !nosanitize !12

bb.hy:                                            ; preds = %bb.hx, %.critedge328
  %i.od = getelementptr inbounds nuw i8, ptr %i.nx, i64 8 ; 2 uses
  %i.oe = ptrtoint ptr %i.od to i64, !nosanitize !12 ; 2 uses
  %i.of = and i64 %i.oe, 7, !nosanitize !12
  %i.og = icmp eq i64 %i.of, 0, !nosanitize !12
  br i1 %i.og, label %bb.ia, label %bb.hz, !prof !13, !nosanitize !12

bb.hz:                                            ; preds = %bb.hy
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @113, i64 %i.oe) #6, !nosanitize !12
  br label %bb.ia, !nosanitize !12

bb.ia:                                            ; preds = %bb.hz, %bb.hy
  %i.oh = load i32, ptr %i.od, align 8, !tbaa !37 ; 2 uses
  %i.oi = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %i.am, i32 %i.oh), !nosanitize !12 ; 2 uses
  %i.oj = extractvalue { i32, i1 } %i.oi, 0, !nosanitize !12 ; 7 uses
  %i.ok = extractvalue { i32, i1 } %i.oi, 1, !nosanitize !12
  br i1 %i.ok, label %bb.ib, label %bb.ic, !prof !27, !nosanitize !12

bb.ib:                                            ; preds = %bb.ia
  %i.ol = zext i32 %i.am to i64, !nosanitize !12
  %i.om = zext i32 %i.oh to i64, !nosanitize !12
  call void @__ubsan_handle_sub_overflow(ptr nonnull @114, i64 %i.ol, i64 %i.om) #7, !nosanitize !12
  br label %bb.ic, !nosanitize !12

bb.ic:                                            ; preds = %bb.ib, %bb.ia
  %.not240 = icmp eq i32 %i.oj, 0
  br i1 %.not240, label %bb.nb, label %bb.id

bb.id:                                            ; preds = %bb.ic
  br i1 %i.d, label %bb.if, label %bb.ie, !prof !13, !nosanitize !12

bb.ie:                                            ; preds = %bb.id
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @115, i64 %i.b) #6, !nosanitize !12
  br label %bb.if, !nosanitize !12

bb.if:                                            ; preds = %bb.ie, %bb.id
  br i1 %i.r, label %bb.ih, label %bb.ig, !prof !13, !nosanitize !12

bb.ig:                                            ; preds = %bb.if
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @116, i64 %i.p) #6, !nosanitize !12
  br label %bb.ih, !nosanitize !12

bb.ih:                                            ; preds = %bb.ig, %bb.if
  %i.on = load i32, ptr %i.o, align 64, !tbaa !33
  %.not241 = icmp ult i32 %i.oj, %i.on
  br i1 %.not241, label %bb.jm, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  br i1 %i.d, label %.critedge360, label %bb.ij, !prof !13, !nosanitize !12

bb.ij:                                            ; preds = %bb.ii
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @117, i64 %i.b) #6, !nosanitize !12
  %i.oo = getelementptr inbounds nuw i8, ptr %0, i64 5976
  store i32 2, ptr %i.oo, align 8, !tbaa !54
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @118, i64 %i.b) #6, !nosanitize !12
  br label %bb.ik, !nosanitize !12

.critedge360:                                     ; preds = %bb.ii
  %i.op = getelementptr inbounds nuw i8, ptr %0, i64 5976
  store i32 2, ptr %i.op, align 8, !tbaa !54
  br label %bb.ik

bb.ik:                                            ; preds = %.critedge360, %bb.ij
  %i.oq = load ptr, ptr %i.at, align 8, !tbaa !43 ; 2 uses
  br i1 %i.d, label %.critedge330, label %bb.il, !prof !13, !nosanitize !12

bb.il:                                            ; preds = %bb.ik
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @119, i64 %i.b) #6, !nosanitize !12
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @120, i64 %i.b) #6, !nosanitize !12
  br label %.critedge330, !nosanitize !12

.critedge330:                                     ; preds = %bb.ik, %bb.il
  %i.or = load ptr, ptr %0, align 64, !tbaa !34   ; 3 uses
  %i.os = icmp ne ptr %i.or, null, !nosanitize !12 ; 2 uses
  %i.ot = ptrtoint ptr %i.or to i64, !nosanitize !12 ; 3 uses
  %i.ou = and i64 %i.ot, 7, !nosanitize !12
  %i.ov = icmp eq i64 %i.ou, 0, !nosanitize !12   ; 2 uses
  %i.ow = and i1 %i.os, %i.ov, !nosanitize !12
  br i1 %i.ow, label %bb.in, label %bb.im, !prof !13, !nosanitize !12

bb.im:                                            ; preds = %.critedge330
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @121, i64 %i.ot) #6, !nosanitize !12
  br label %bb.in, !nosanitize !12

bb.in:                                            ; preds = %bb.im, %.critedge330
  %i.ox = and i1 %i.os, %i.ov, !nosanitize !12
  br i1 %i.ox, label %bb.ip, label %bb.io, !prof !13, !nosanitize !12

bb.io:                                            ; preds = %bb.in
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @123, i64 %i.ot) #6, !nosanitize !12
  br label %bb.ip, !nosanitize !12

bb.ip:                                            ; preds = %bb.io, %bb.in
  %i.oy = load ptr, ptr %i.or, align 8, !tbaa !49 ; 3 uses
  br i1 %i.d, label %bb.ir, label %bb.iq, !prof !13, !nosanitize !12

bb.iq:                                            ; preds = %bb.ip
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @124, i64 %i.b) #6, !nosanitize !12
  br label %bb.ir, !nosanitize !12

bb.ir:                                            ; preds = %bb.iq, %bb.ip
  br i1 %i.r, label %bb.it, label %bb.is, !prof !13, !nosanitize !12

bb.is:                                            ; preds = %bb.ir
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @125, i64 %i.p) #6, !nosanitize !12
  br label %bb.it, !nosanitize !12

bb.it:                                            ; preds = %bb.is, %bb.ir
  %i.oz = load i32, ptr %i.o, align 64, !tbaa !33
  %i.pa = zext i32 %i.oz to i64                   ; 4 uses
  %i.pb = sub nsw i64 0, %i.pa
  %i.pc = getelementptr inbounds i8, ptr %i.oy, i64 %i.pb
  %i.pd = ptrtoint ptr %i.oy to i64, !nosanitize !12 ; 4 uses
  %i.pe = icmp ne ptr %i.oy, null                 ; 2 uses
  %i.pf = icmp eq i64 %i.pd, %i.pa
  %i.pg = xor i1 %i.pe, %i.pf
  %i.ph = icmp ule i64 %i.pa, %i.pd
  %i.pi = and i1 %i.ph, %i.pg, !nosanitize !12
  br i1 %i.pi, label %bb.iv, label %bb.iu, !prof !13, !nosanitize !12

bb.iu:                                            ; preds = %bb.it
  %i.pj = sub i64 %i.pd, %i.pa
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @126, i64 %i.pd, i64 %i.pj) #6, !nosanitize !12
  br label %bb.iv, !nosanitize !12

bb.iv:                                            ; preds = %bb.iu, %bb.it
  br i1 %i.d, label %bb.ix, label %bb.iw, !prof !13, !nosanitize !12

bb.iw:                                            ; preds = %bb.iv
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @127, i64 %i.b) #6, !nosanitize !12
  br label %bb.ix, !nosanitize !12

bb.ix:                                            ; preds = %bb.iw, %bb.iv
  br i1 %i.r, label %bb.iz, label %bb.iy, !prof !13, !nosanitize !12

bb.iy:                                            ; preds = %bb.ix
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @128, i64 %i.p) #6, !nosanitize !12
  br label %bb.iz, !nosanitize !12

bb.iz:                                            ; preds = %bb.iy, %bb.ix
  %i.pk = load i32, ptr %i.o, align 64, !tbaa !33
  %i.pl = zext i32 %i.pk to i64
  %.not246 = icmp eq ptr %i.oq, null, !nosanitize !12
  br i1 %.not246, label %bb.ja, label %bb.jb, !prof !27, !nosanitize !12

bb.ja:                                            ; preds = %bb.iz
  call void @__ubsan_handle_nonnull_arg(ptr nonnull @129) #6, !nosanitize !12
  br label %bb.jb, !nosanitize !12

bb.jb:                                            ; preds = %bb.ja, %bb.iz
  br i1 %i.pe, label %bb.jd, label %bb.jc, !prof !13, !nosanitize !12

bb.jc:                                            ; preds = %bb.jb
  call void @__ubsan_handle_nonnull_arg(ptr nonnull @130) #6, !nosanitize !12
  br label %bb.jd, !nosanitize !12

bb.jd:                                            ; preds = %bb.jc, %bb.jb
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.oq, ptr align 1 %i.pc, i64 %i.pl, i1 false)
  br i1 %i.d, label %bb.jf, label %bb.je, !prof !13, !nosanitize !12

bb.je:                                            ; preds = %bb.jd
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @131, i64 %i.b) #6, !nosanitize !12
  br label %bb.jf, !nosanitize !12

bb.jf:                                            ; preds = %bb.je, %bb.jd
  br i1 %i.r, label %bb.jh, label %bb.jg, !prof !13, !nosanitize !12

bb.jg:                                            ; preds = %bb.jf
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @132, i64 %i.p) #6, !nosanitize !12
  br label %bb.jh, !nosanitize !12

bb.jh:                                            ; preds = %bb.jg, %bb.jf
  %i.pm = load i32, ptr %i.o, align 64, !tbaa !33 ; 2 uses
  br i1 %i.d, label %.critedge332, label %bb.ji, !prof !13, !nosanitize !12

bb.ji:                                            ; preds = %bb.jh
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @133, i64 %i.b) #6, !nosanitize !12
end_hunk_0
begin_hunk_1_@deflate_stored:bb.a
bb.wa:                                            ; preds = %bb.vz
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @271, i64 %i.p) #6, !nosanitize !12
  br label %bb.wb, !nosanitize !12

bb.wb:                                            ; preds = %bb.wa, %bb.vz
  %i.adh = load i32, ptr %i.o, align 64, !tbaa !33
  br label %bb.wc

bb.wc:                                            ; preds = %bb.vw, %bb.wb
  %i.adi = phi i32 [ %i.adh, %bb.wb ], [ %i.ade, %bb.vw ]
  br i1 %i.d, label %bb.we, label %bb.wd, !prof !13, !nosanitize !12

bb.wd:                                            ; preds = %bb.wc
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @272, i64 %i.b) #6, !nosanitize !12
  br label %bb.we, !nosanitize !12

bb.we:                                            ; preds = %bb.wc, %bb.wd
  %i.adj = load i32, ptr %i.ao, align 4, !tbaa !40 ; 2 uses
  br i1 %i.d, label %bb.wg, label %bb.wf, !prof !13, !nosanitize !12

bb.wf:                                            ; preds = %bb.we
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @273, i64 %i.b) #6, !nosanitize !12
  br label %bb.wg, !nosanitize !12

bb.wg:                                            ; preds = %bb.we, %bb.wf
  %i.adk = load i32, ptr %i.ap, align 4, !tbaa !41 ; 2 uses
  %i.adl = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i.adj, i32 %i.adk), !nosanitize !12 ; 2 uses
  %i.adm = extractvalue { i32, i1 } %i.adl, 0, !nosanitize !12 ; 5 uses
  %i.adn = extractvalue { i32, i1 } %i.adl, 1, !nosanitize !12
  br i1 %i.adn, label %bb.wh, label %bb.wi, !prof !27, !nosanitize !12

bb.wh:                                            ; preds = %bb.wg
  %i.ado = zext i32 %i.adj to i64, !nosanitize !12
  %i.adp = zext i32 %i.adk to i64, !nosanitize !12
  call void @__ubsan_handle_sub_overflow(ptr nonnull @274, i64 %i.ado, i64 %i.adp) #6, !nosanitize !12
  br label %bb.wi, !nosanitize !12

bb.wi:                                            ; preds = %bb.wh, %bb.wg
  %.not256 = icmp ult i32 %i.adm, %i.adi
  br i1 %.not256, label %bb.wj, label %bb.wq

bb.wj:                                            ; preds = %bb.wi
  %i.adq = icmp eq i32 %i.adm, 0
  %or.cond7.not = and i1 %i.aq, %i.adq
  %or.cond9.not = or i1 %or.cond7.not, %i.ar
  br i1 %or.cond9.not, label %bb.xk, label %bb.wk

bb.wk:                                            ; preds = %bb.wj
  br i1 %i.d, label %.critedge354, label %bb.wl, !prof !13, !nosanitize !12

bb.wl:                                            ; preds = %bb.wk
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @275, i64 %i.b) #6, !nosanitize !12
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @276, i64 %i.b) #6, !nosanitize !12
  br label %.critedge354, !nosanitize !12

.critedge354:                                     ; preds = %bb.wk, %bb.wl
  %i.adr = load ptr, ptr %0, align 64, !tbaa !34  ; 3 uses
  %i.ads = icmp ne ptr %i.adr, null, !nosanitize !12
  %i.adt = ptrtoint ptr %i.adr to i64, !nosanitize !12 ; 2 uses
  %i.adu = and i64 %i.adt, 7, !nosanitize !12
  %i.adv = icmp eq i64 %i.adu, 0, !nosanitize !12
  %i.adw = and i1 %i.ads, %i.adv, !nosanitize !12
  br i1 %i.adw, label %bb.wn, label %bb.wm, !prof !13, !nosanitize !12

bb.wm:                                            ; preds = %.critedge354
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @277, i64 %i.adt) #6, !nosanitize !12
  br label %bb.wn, !nosanitize !12

bb.wn:                                            ; preds = %bb.wm, %.critedge354
  %i.adx = getelementptr inbounds nuw i8, ptr %i.adr, i64 8 ; 2 uses
  %i.ady = ptrtoint ptr %i.adx to i64, !nosanitize !12 ; 2 uses
  %i.adz = and i64 %i.ady, 7, !nosanitize !12
  %i.aea = icmp eq i64 %i.adz, 0, !nosanitize !12
  br i1 %i.aea, label %bb.wp, label %bb.wo, !prof !13, !nosanitize !12

bb.wo:                                            ; preds = %bb.wn
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @278, i64 %i.ady) #6, !nosanitize !12
  br label %bb.wp, !nosanitize !12

bb.wp:                                            ; preds = %bb.wo, %bb.wn
  %i.aeb = load i32, ptr %i.adx, align 8, !tbaa !37
  %i.aec = icmp ne i32 %i.aeb, 0
  %.not257 = icmp ugt i32 %i.adm, %i.ade
  %or.cond259 = select i1 %i.aec, i1 true, i1 %.not257
  br i1 %or.cond259, label %bb.xk, label %bb.wq

bb.wq:                                            ; preds = %bb.wp, %bb.wi
  %i.aed = call i32 @llvm.umin.i32(i32 %i.adm, i32 %i.ade) ; 3 uses
  br i1 %i.aq, label %bb.wy, label %bb.wr

bb.wr:                                            ; preds = %bb.wq
  br i1 %i.d, label %.critedge356, label %bb.ws, !prof !13, !nosanitize !12

bb.ws:                                            ; preds = %bb.wr
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @279, i64 %i.b) #6, !nosanitize !12
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @280, i64 %i.b) #6, !nosanitize !12
  br label %.critedge356, !nosanitize !12

.critedge356:                                     ; preds = %bb.wr, %bb.ws
  %i.aee = load ptr, ptr %0, align 64, !tbaa !34  ; 3 uses
  %i.aef = icmp ne ptr %i.aee, null, !nosanitize !12
  %i.aeg = ptrtoint ptr %i.aee to i64, !nosanitize !12 ; 2 uses
  %i.aeh = and i64 %i.aeg, 7, !nosanitize !12
  %i.aei = icmp eq i64 %i.aeh, 0, !nosanitize !12
  %i.aej = and i1 %i.aef, %i.aei, !nosanitize !12
  br i1 %i.aej, label %bb.wu, label %bb.wt, !prof !13, !nosanitize !12

bb.wt:                                            ; preds = %.critedge356
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @281, i64 %i.aeg) #6, !nosanitize !12
  br label %bb.wu, !nosanitize !12

bb.wu:                                            ; preds = %bb.wt, %.critedge356
  %i.aek = getelementptr inbounds nuw i8, ptr %i.aee, i64 8 ; 2 uses
  %i.ael = ptrtoint ptr %i.aek to i64, !nosanitize !12 ; 2 uses
  %i.aem = and i64 %i.ael, 7, !nosanitize !12
  %i.aen = icmp eq i64 %i.aem, 0, !nosanitize !12
  br i1 %i.aen, label %bb.ww, label %bb.wv, !prof !13, !nosanitize !12

bb.wv:                                            ; preds = %bb.wu
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @282, i64 %i.ael) #6, !nosanitize !12
  br label %bb.ww, !nosanitize !12

bb.ww:                                            ; preds = %bb.wv, %bb.wu
  %i.aeo = load i32, ptr %i.aek, align 8, !tbaa !37
  %i.aep = icmp eq i32 %i.aeo, 0
  br i1 %i.aep, label %bb.wx, label %bb.wy

bb.wx:                                            ; preds = %bb.ww
  %i.aeq = icmp ule i32 %i.adm, %i.ade
  %i.aer = zext i1 %i.aeq to i32
  br label %bb.wy

bb.wy:                                            ; preds = %bb.wx, %bb.ww, %bb.wq
  %i.aes = phi i32 [ 0, %bb.ww ], [ 0, %bb.wq ], [ %i.aer, %bb.wx ] ; 2 uses
  br i1 %i.d, label %bb.xa, label %bb.wz, !prof !13, !nosanitize !12

bb.wz:                                            ; preds = %bb.wy
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @283, i64 %i.b) #6, !nosanitize !12
  br label %bb.xa, !nosanitize !12

bb.xa:                                            ; preds = %bb.wy, %bb.wz
  %i.aet = load ptr, ptr %i.at, align 8, !tbaa !43 ; 3 uses
  br i1 %i.d, label %bb.xc, label %bb.xb, !prof !13, !nosanitize !12

bb.xb:                                            ; preds = %bb.xa
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @284, i64 %i.b) #6, !nosanitize !12
  br label %bb.xc, !nosanitize !12

bb.xc:                                            ; preds = %bb.xa, %bb.xb
  %i.aeu = load i32, ptr %i.ap, align 4, !tbaa !41 ; 2 uses
  %i.aev = sext i32 %i.aeu to i64                 ; 2 uses
  %i.aew = getelementptr inbounds i8, ptr %i.aet, i64 %i.aev
  %i.aex = ptrtoint ptr %i.aet to i64, !nosanitize !12 ; 3 uses
  %i.aey = add i64 %i.aev, %i.aex, !nosanitize !12 ; 3 uses
  %i.aez = icmp ne ptr %i.aet, null, !nosanitize !12
  %i.afa = icmp eq i64 %i.aey, 0
  %i.afb = xor i1 %i.aez, %i.afa
  %i.afc = icmp uge i64 %i.aey, %i.aex, !nosanitize !12
  %i.afd = icmp slt i32 %i.aeu, 0
  %i.afe = xor i1 %i.afd, %i.afc
  %i.aff = and i1 %i.afb, %i.afe, !nosanitize !12
  br i1 %i.aff, label %bb.xe, label %bb.xd, !prof !13, !nosanitize !12

bb.xd:                                            ; preds = %bb.xc
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @285, i64 %i.aex, i64 %i.aey) #6, !nosanitize !12
  br label %bb.xe, !nosanitize !12

bb.xe:                                            ; preds = %bb.xd, %bb.xc
  call void @zng_tr_stored_block(ptr noundef %0, ptr noundef %i.aew, i32 noundef %i.aed, i32 noundef %i.aes) #6
  br i1 %i.d, label %bb.xg, label %bb.xf, !prof !13, !nosanitize !12

bb.xf:                                            ; preds = %bb.xe
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @286, i64 %i.b) #6, !nosanitize !12
  br label %bb.xg, !nosanitize !12

bb.xg:                                            ; preds = %bb.xe, %bb.xf
  %i.afg = load i32, ptr %i.ap, align 4, !tbaa !41 ; 2 uses
  %i.afh = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.afg, i32 %i.aed), !nosanitize !12 ; 2 uses
  %i.afi = extractvalue { i32, i1 } %i.afh, 0, !nosanitize !12
  %i.afj = extractvalue { i32, i1 } %i.afh, 1, !nosanitize !12
  br i1 %i.afj, label %bb.xh, label %bb.xi, !prof !27, !nosanitize !12

bb.xh:                                            ; preds = %bb.xg
  %i.afk = zext i32 %i.afg to i64, !nosanitize !12
  %i.afl = zext i32 %i.aed to i64, !nosanitize !12
  call void @__ubsan_handle_add_overflow(ptr nonnull @287, i64 %i.afk, i64 %i.afl) #6, !nosanitize !12
  br label %bb.xi, !nosanitize !12

bb.xi:                                            ; preds = %bb.xh, %bb.xg
  store i32 %i.afi, ptr %i.ap, align 4, !tbaa !41
  br i1 %i.d, label %.critedge358, label %bb.xj, !prof !13, !nosanitize !12

bb.xj:                                            ; preds = %bb.xi
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @288, i64 %i.b) #6, !nosanitize !12
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @289, i64 %i.b) #6, !nosanitize !12
  br label %.critedge358, !nosanitize !12

.critedge358:                                     ; preds = %bb.xi, %bb.xj
  %i.afm = load ptr, ptr %0, align 64, !tbaa !34
  call void @zng_flush_pending(ptr noundef %i.afm) #6
  %3 = shl nuw nsw i32 %i.aes, 1
  br label %bb.xk

bb.xk:                                            ; preds = %bb.wp, %.critedge358, %bb.wj, %bb.nu, %bb.ni
  %.0224 = phi i32 [ 1, %bb.nu ], [ 3, %bb.ni ], [ %3, %.critedge358 ], [ 0, %bb.wj ], [ 0, %bb.wp ]
  ret i32 %.0224
}

; Function Attrs: uwtable
declare void @__ubsan_handle_type_mismatch_v1(ptr, i64) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) #2

; Function Attrs: uwtable
declare void @__ubsan_handle_sub_overflow(ptr, i64, i64) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #2

; Function Attrs: uwtable
declare void @__ubsan_handle_add_overflow(ptr, i64, i64) local_unnamed_addr #1

; Function Attrs: uwtable
declare void @__ubsan_handle_shift_out_of_bounds(ptr, i64, i64) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #2

declare hidden void @zng_tr_stored_block(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @put_short(ptr noundef %0, i16 noundef zeroext %1) unnamed_addr #4 !func_sanitize !59 {
bb.a:
  %i.a = icmp ne ptr %0, null, !nosanitize !12
  %i.b = ptrtoint ptr %0 to i64, !nosanitize !12  ; 4 uses
  %i.c = and i64 %i.b, 63, !nosanitize !12
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !12
  %i.e = and i1 %i.a, %i.d, !nosanitize !12       ; 3 uses
  br i1 %i.e, label %bb.c, label %bb.b, !prof !13, !nosanitize !12

bb.b:                                             ; preds = %bb.a
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @290, i64 %i.b) #6, !nosanitize !12
  br label %bb.c, !nosanitize !12

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = ptrtoint ptr %i.f to i64, !nosanitize !12 ; 2 uses
  %i.h = and i64 %i.g, 7, !nosanitize !12
  %i.i = icmp eq i64 %i.h, 0, !nosanitize !12
  br i1 %i.i, label %bb.e, label %bb.d, !prof !13, !nosanitize !12

bb.d:                                             ; preds = %bb.c
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @291, i64 %i.g) #6, !nosanitize !12
  br label %bb.e, !nosanitize !12

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !60   ; 3 uses
  br i1 %i.e, label %bb.g, label %bb.f, !prof !13, !nosanitize !12

bb.f:                                             ; preds = %bb.e
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @292, i64 %i.b) #6, !nosanitize !12
  br label %bb.g, !nosanitize !12

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !28
  %i.m = zext i32 %i.l to i64                     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.m ; 2 uses
  %i.o = ptrtoint ptr %i.j to i64, !nosanitize !12 ; 3 uses
  %i.p = add i64 %i.m, %i.o, !nosanitize !12      ; 3 uses
  %i.q = icmp ne ptr %i.j, null                   ; 2 uses
  %i.r = icmp eq i64 %i.p, 0
  %i.s = xor i1 %i.q, %i.r
  %i.t = icmp uge i64 %i.p, %i.o, !nosanitize !12
  %i.u = and i1 %i.t, %i.s, !nosanitize !12
  br i1 %i.u, label %bb.i, label %bb.h, !prof !13, !nosanitize !12

bb.h:                                             ; preds = %bb.g
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @293, i64 %i.o, i64 %i.p) #6, !nosanitize !12
  br label %bb.i, !nosanitize !12

bb.i:                                             ; preds = %bb.h, %bb.g
  br i1 %i.q, label %zng_memwrite_2.exit, label %bb.j, !prof !13, !nosanitize !12

bb.j:                                             ; preds = %bb.i
  %i.v = ptrtoint ptr %i.n to i64, !nosanitize !12 ; 2 uses
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @297, i64 %i.v) #6, !nosanitize !12
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @299, i64 %i.v) #6, !nosanitize !12
  br label %zng_memwrite_2.exit, !nosanitize !12

zng_memwrite_2.exit:                              ; preds = %bb.i, %bb.j
  store i16 %1, ptr %i.n, align 1, !tbaa !61
  br i1 %i.e, label %bb.l, label %bb.k, !prof !13, !nosanitize !12

bb.k:                                             ; preds = %zng_memwrite_2.exit
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @294, i64 %i.b) #6, !nosanitize !12
  br label %bb.l, !nosanitize !12

bb.l:                                             ; preds = %zng_memwrite_2.exit, %bb.k
  %i.w = load i32, ptr %i.k, align 4, !tbaa !28   ; 2 uses
  %i.x = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.w, i32 2), !nosanitize !12 ; 2 uses
  %i.y = extractvalue { i32, i1 } %i.x, 1, !nosanitize !12
  br i1 %i.y, label %bb.m, label %bb.n, !prof !27, !nosanitize !12

bb.m:                                             ; preds = %bb.l
  %i.z = zext i32 %i.w to i64, !nosanitize !12
  call void @__ubsan_handle_add_overflow(ptr nonnull @295, i64 %i.z, i64 2) #7, !nosanitize !12
  br label %bb.n, !nosanitize !12

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.aa = extractvalue { i32, i1 } %i.x, 0, !nosanitize !12
  store i32 %i.aa, ptr %i.k, align 4, !tbaa !28
  ret void
}

declare hidden void @zng_flush_pending(ptr noundef) local_unnamed_addr #3

; Function Attrs: uwtable
declare void @__ubsan_handle_pointer_overflow(ptr, i64, i64) local_unnamed_addr #1

; Function Attrs: uwtable
declare void @__ubsan_handle_nonnull_arg(ptr) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: uwtable
declare void @__ubsan_handle_function_type_mismatch(ptr, i64) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="true" "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { uwtable }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { "disable-tail-calls"="true" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="true" "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind }
attributes #7 = { nomerge nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{}
!13 = !{!"branch_weights", i32 1048575, i32 1}
!14 = !{!"any pointer", !8, i64 0}
!15 = !{!"p1 _ZTS12zng_stream_s", !14, i64 0}
!16 = !{!"p1 omnipotent char", !14, i64 0}
!17 = !{!"p1 _ZTS15zng_gz_header_s", !14, i64 0}
!18 = !{!"p1 short", !14, i64 0}
!19 = !{!"short", !8, i64 0}
!20 = !{!"crc32_fold_s", !8, i64 0, !9, i64 64}
!21 = !{!"p1 _ZTS9ct_data_s", !14, i64 0}
!22 = !{!"p1 _ZTS18static_tree_desc_s", !14, i64 0}
!23 = !{!"tree_desc_s", !21, i64 0, !9, i64 8, !22, i64 16}
!24 = !{!"long", !8, i64 0}
!25 = !{!"p1 _ZTS16deflate_allocs_s", !14, i64 0}
!26 = !{!"internal_state", !15, i64 0, !16, i64 8, !16, i64 16, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !17, i64 40, !9, i64 48, !9, i64 52, !9, i64 56, !9, i64 60, !9, i64 64, !9, i64 68, !9, i64 72, !9, i64 76, !9, i64 80, !9, i64 84, !16, i64 88, !18, i64 96, !18, i64 104, !9, i64 112, !9, i64 116, !9, i64 120, !19, i64 124, !9, i64 128, !9, i64 132, !9, i64 136, !9, i64 140, !9, i64 144, !9, i64 148, !14, i64 152, !14, i64 160, !14, i64 168, !9, i64 176, !9, i64 180, !9, i64 184, !9, i64 188, !20, i64 192, !8, i64 260, !8, i64 2552, !8, i64 2796, !23, i64 2952, !23, i64 2976, !23, i64 3000, !8, i64 3024, !8, i64 3056, !9, i64 5348, !9, i64 5352, !8, i64 5356, !9, i64 5932, !18, i64 5936, !16, i64 5944, !9, i64 5952, !9, i64 5956, !24, i64 5960, !24, i64 5968, !9, i64 5976, !9, i64 5980, !24, i64 5984, !24, i64 5992, !25, i64 6000, !24, i64 6008, !9, i64 6016, !8, i64 6020}
!27 = !{!"branch_weights", i32 1, i32 1048575}
!28 = !{!26, !9, i64 28}
!29 = distinct !{null}
!30 = distinct !{!30, !53}
!31 = !{i32 -1056584962, i32 -1028573135}
!32 = !{!26, !9, i64 24}
!33 = !{!26, !9, i64 64}
!34 = !{!26, !15, i64 0}
!35 = !{!"p1 _ZTS14internal_state", !14, i64 0}
!36 = !{!"zng_stream_s", !16, i64 0, !9, i64 8, !24, i64 16, !16, i64 24, !9, i64 32, !24, i64 40, !16, i64 48, !35, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !9, i64 88, !9, i64 92, !24, i64 96}
!37 = !{!36, !9, i64 8}
!38 = !{!26, !9, i64 6016}
!39 = !{!36, !9, i64 32}
!40 = !{!26, !9, i64 132}
!41 = !{!26, !9, i64 116}
!42 = !{!36, !16, i64 24}
!43 = !{!26, !16, i64 88}
!44 = !{!36, !24, i64 40}
!45 = !{!36, !35, i64 56}
!46 = !{!26, !9, i64 32}
!47 = !{!"functable_s", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !14, i64 88, !14, i64 96, !14, i64 104}
!48 = !{!47, !14, i64 56}
!49 = !{!36, !16, i64 0}
!50 = !{!47, !14, i64 16}
!51 = !{!36, !9, i64 92}
!52 = !{!36, !24, i64 16}
end_hunk_1
