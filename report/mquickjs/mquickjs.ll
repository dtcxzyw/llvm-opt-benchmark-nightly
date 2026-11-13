Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mquickjs/original/mquickjs?download=true
inline.NumInlined: 1970
inline.NumDeleted: 206
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@js_parse_statement:bb.a
  %i.jc = load i32, ptr %i.ja, align 4, !tbaa !126
  tail call fastcc void @emit_op_pos(ptr noundef nonnull %0, i8 noundef zeroext 13, i32 noundef %i.jc) #28
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iv, i64 16
  %i.je = load i32, ptr %i.ix, align 8, !tbaa !128
  tail call fastcc void @emit_label_pos(ptr noundef nonnull %0, ptr noundef nonnull %i.jd, i32 noundef %i.je) #28
  store i32 -1, ptr %i.iz, align 4, !tbaa !132
  %i.jf = load i32, ptr %i.ja, align 4, !tbaa !126
  tail call fastcc void @emit_op_pos(ptr noundef nonnull %0, i8 noundef zeroext 13, i32 noundef %i.jf) #28
  br label %bb.bk

bb.av:                                            ; preds = %js_parse_expect1.exit
  %i.jg = load i32, ptr %i.r, align 8, !tbaa !119
  switch i32 %i.jg, label %bb.ax [
    i32 59, label %bb.ay
    i32 173, label %bb.aw
  ]

bb.aw:                                            ; preds = %bb.av
  call fastcc void @next_token(ptr noundef nonnull %0) #28
  call fastcc void @js_parse_var(ptr noundef nonnull %0, i32 noundef 0) #28
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av
  call fastcc void @js_parse_call(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 3) #28, !inline_history !391
  br label %bb.ay

bb.ay:                                            ; preds = %bb.av, %bb.aw, %bb.ax
  call fastcc void @js_parse_expect(ptr noundef nonnull %0, i32 noundef 59) #28
  store i64 1073741822, ptr %i.k, align 8, !tbaa !46
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ji = load i32, ptr %i.jh, align 8, !tbaa !128
  call fastcc void @emit_label_pos(ptr noundef nonnull %0, ptr noundef nonnull %i.k, i32 noundef %i.ji) #28
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 -1, ptr %i.jj, align 4, !tbaa !132
  %i.jk = load i32, ptr %i.r, align 8, !tbaa !119
  %.not369 = icmp eq i32 %i.jk, 59
  br i1 %.not369, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call fastcc void @js_parse_call(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0) #28, !inline_history !19
  %i.jl = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  call fastcc void @emit_goto(ptr noundef nonnull %0, i32 noundef 52, ptr noundef nonnull %i.jl) #28
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  call fastcc void @js_parse_expect(ptr noundef nonnull %0, i32 noundef 59) #28
  %i.jm = load i32, ptr %i.r, align 8, !tbaa !119 ; 2 uses
  %.not370 = icmp eq i32 %i.jm, 41
  br i1 %.not370, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !168
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.jq = load i64, ptr %i.jp, align 8
  %i.jr = trunc i64 %i.jq to i16
  %i.js = and i16 %i.jr, 255
  %i.jt = call fastcc i32 @is_regexp_allowed(i32 noundef %i.jm) #28
  %i.ju = trunc nuw nsw i32 %i.jt to i16
  %i.jv = shl nuw nsw i16 %i.ju, 8
  %i.jw = or disjoint i16 %i.jv, %i.js
  call fastcc void @js_skip_expr(ptr noundef nonnull %0) #28
  %i.jx = shl i32 %i.jo, 1
  %i.jy = sext i32 %i.jx to i64
  br label %bb.bc

bb.bc:                                            ; preds = %bb.ba, %bb.bb
  %.sroa.0463.0 = phi i16 [ %i.jw, %bb.bb ], [ 0, %bb.ba ] ; 2 uses
  %.sroa.7.0 = phi i64 [ %i.jy, %bb.bb ], [ -2, %bb.ba ] ; 2 uses
  call fastcc void @js_parse_expect(ptr noundef nonnull %0, i32 noundef 41) #28
  %i.jz = load i64, ptr %i.k, align 8, !tbaa !46  ; 2 uses
  %i.ka = load ptr, ptr %0, align 8, !tbaa !109   ; 3 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 32 ; 3 uses
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !42 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.ka, i64 24
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !42
  %.not.i413 = icmp ugt ptr %i.kc, %i.ke
  br i1 %.not.i413, label %js_parse_push_val.exit416, label %bb.bd, !prof !69

bb.bd:                                            ; preds = %bb.bc
  %i.kf = call fastcc i64 @parse_stack_alloc(ptr noundef nonnull %0, i64 noundef %i.jz) #28
  %.pre.i414 = load ptr, ptr %i.kb, align 8, !tbaa !42
  %.pre484 = load ptr, ptr %0, align 8, !tbaa !109
  br label %js_parse_push_val.exit416

js_parse_push_val.exit416:                        ; preds = %bb.bc, %bb.bd
  %i.kg = phi ptr [ %.pre484, %bb.bd ], [ %i.ka, %bb.bc ] ; 3 uses
  %i.kh = phi ptr [ %.pre.i414, %bb.bd ], [ %i.kc, %bb.bc ]
  %.0.i415 = phi i64 [ %i.kf, %bb.bd ], [ %i.jz, %bb.bc ]
  %i.ki = getelementptr inbounds i8, ptr %i.kh, i64 -8 ; 2 uses
  store ptr %i.ki, ptr %i.kb, align 8, !tbaa !42
  store i64 %.0.i415, ptr %i.ki, align 8, !tbaa !46
  %i.kj = shl i16 %.sroa.0463.0, 8
  %i.kk = ashr exact i16 %i.kj, 8
  %i.kl = sext i16 %i.kk to i32
  %i.km = lshr i16 %.sroa.0463.0, 7
  %i.kn = and i16 %i.km, 510
  %i.ko = zext nneg i16 %i.kn to i32
  %i.kp = or i32 %i.ko, %i.kl
  %i.kq = shl nsw i32 %i.kp, 1
  %i.kr = sext i32 %i.kq to i64                   ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kg, i64 32 ; 3 uses
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !42 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kg, i64 24
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !42
  %.not.i417 = icmp ugt ptr %i.kt, %i.kv
  br i1 %.not.i417, label %js_parse_push_val.exit420, label %bb.be, !prof !69

bb.be:                                            ; preds = %js_parse_push_val.exit416
  %i.kw = call fastcc i64 @parse_stack_alloc(ptr noundef nonnull %0, i64 noundef %i.kr) #28
  %.pre.i418 = load ptr, ptr %i.ks, align 8, !tbaa !42
  %.pre485 = load ptr, ptr %0, align 8, !tbaa !109
  br label %js_parse_push_val.exit420

js_parse_push_val.exit420:                        ; preds = %js_parse_push_val.exit416, %bb.be
  %i.kx = phi ptr [ %.pre485, %bb.be ], [ %i.kg, %js_parse_push_val.exit416 ] ; 2 uses
  %i.ky = phi ptr [ %.pre.i418, %bb.be ], [ %i.kt, %js_parse_push_val.exit416 ]
  %.0.i419 = phi i64 [ %i.kw, %bb.be ], [ %i.kr, %js_parse_push_val.exit416 ]
  %i.kz = getelementptr inbounds i8, ptr %i.ky, i64 -8 ; 2 uses
  store ptr %i.kz, ptr %i.ks, align 8, !tbaa !42
  store i64 %.0.i419, ptr %i.kz, align 8, !tbaa !46
  %i.la = getelementptr inbounds nuw i8, ptr %i.kx, i64 32 ; 3 uses
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !42 ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kx, i64 24
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !42
  %.not.i421 = icmp ugt ptr %i.lb, %i.ld
  br i1 %.not.i421, label %js_parse_push_val.exit424, label %bb.bf, !prof !69

bb.bf:                                            ; preds = %js_parse_push_val.exit420
  %i.le = call fastcc i64 @parse_stack_alloc(ptr noundef nonnull %0, i64 noundef %.sroa.7.0) #28
  %.pre.i422 = load ptr, ptr %i.la, align 8, !tbaa !42
  br label %js_parse_push_val.exit424

js_parse_push_val.exit424:                        ; preds = %js_parse_push_val.exit420, %bb.bf
  %i.lf = phi ptr [ %.pre.i422, %bb.bf ], [ %i.lb, %js_parse_push_val.exit420 ]
  %.0.i423 = phi i64 [ %i.le, %bb.bf ], [ %.sroa.7.0, %js_parse_push_val.exit420 ]
  %i.lg = getelementptr inbounds i8, ptr %i.lf, i64 -8 ; 2 uses
  store ptr %i.lg, ptr %i.la, align 8, !tbaa !42
  store i64 %.0.i423, ptr %i.lg, align 8, !tbaa !46
  br label %bb.di

bb.bg:                                            ; preds = %bb.a
  %.val387 = load ptr, ptr %0, align 8, !tbaa !109 ; 3 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %.val387, i64 32 ; 2 uses
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !42 ; 7 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 8
  %i.lk = load i64, ptr %i.li, align 8, !tbaa !46
  %i.ll = getelementptr inbounds i8, ptr %i.li, i64 -120
  %i.lm = getelementptr inbounds nuw i8, ptr %.val387, i64 24 ; 3 uses
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !42 ; 3 uses
  %i.lo = icmp ugt ptr %i.ll, %i.ln
  %i.lp = trunc i64 %i.lk to i32
  %i.lq = ashr i32 %i.lp, 1                       ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.li, i64 16
  %i.ls = load i64, ptr %i.lj, align 8, !tbaa !46 ; 2 uses
  %i.lt = getelementptr inbounds i8, ptr %i.li, i64 -112 ; 3 uses
  %i.lu = icmp ugt ptr %i.lt, %i.ln
  %or.cond = select i1 %i.lo, i1 true, i1 %i.lu, !prof !130
  br i1 %or.cond, label %js_parse_pop_val.exit425.thread, label %js_parse_pop_val.exit426, !prof !130

js_parse_pop_val.exit425.thread:                  ; preds = %bb.bg
  store ptr %i.lt, ptr %i.lm, align 8, !tbaa !42
  br label %js_parse_pop_val.exit426

js_parse_pop_val.exit426:                         ; preds = %bb.bg, %js_parse_pop_val.exit425.thread
  %i.lv = phi ptr [ %i.ln, %bb.bg ], [ %i.lt, %js_parse_pop_val.exit425.thread ]
  %i.lw = lshr i64 %i.ls, 1
  %i.lx = and i64 %i.lw, 1
  %i.ly = getelementptr inbounds nuw i8, ptr %i.li, i64 24
  store ptr %i.ly, ptr %i.lh, align 8, !tbaa !42
  %i.lz = load i64, ptr %i.lr, align 8, !tbaa !46
  %i.ma = getelementptr inbounds i8, ptr %i.li, i64 -104 ; 2 uses
  %i.mb = icmp ugt ptr %i.ma, %i.lv
  br i1 %i.mb, label %bb.bh, label %js_parse_pop_val.exit427, !prof !67

bb.bh:                                            ; preds = %js_parse_pop_val.exit426
  store ptr %i.ma, ptr %i.lm, align 8, !tbaa !42
  br label %js_parse_pop_val.exit427

js_parse_pop_val.exit427:                         ; preds = %js_parse_pop_val.exit426, %bb.bh
  store i64 %i.lz, ptr %i.k, align 8, !tbaa !46
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.md = load i64, ptr %i.mc, align 8, !tbaa !115
  %i.me = trunc i64 %i.md to i32
  %i.mf = ashr i32 %i.me, 1
  %i.mg = sext i32 %i.mf to i64
  %i.mh = getelementptr inbounds i8, ptr %.val387, i64 %i.mg
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 24
  %i.mj = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.mk = load i32, ptr %i.mj, align 8, !tbaa !128
  tail call fastcc void @emit_label_pos(ptr noundef nonnull %0, ptr noundef nonnull %i.mi, i32 noundef %i.mk) #28
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  store i32 -1, ptr %i.ml, align 4, !tbaa !132
  %.not352 = icmp eq i32 %i.lq, -1
  br i1 %.not352, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %js_parse_pop_val.exit427
  %i.mm = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.mo = load i32, ptr %i.mn, align 4, !tbaa !168
  %i.mp = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.mq = load i64, ptr %i.mp, align 8            ; 2 uses
  %i.mr = load i32, ptr %i.mm, align 8, !tbaa !119
  %i.ms = tail call fastcc i32 @is_regexp_allowed(i32 noundef %i.mr) #28
  %i.mt = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store i32 %i.lq, ptr %i.mt, align 8, !tbaa !116
  %i.mu = and i64 %i.mq, -256
  %i.mv = or disjoint i64 %i.mu, %i.lx
  store i64 %i.mv, ptr %i.mp, align 8
  %i.mw = and i64 %i.ls, 1020
  %.not.i428 = icmp eq i64 %i.mw, 0
  %i.mx = select i1 %.not.i428, i32 41, i32 32
  store i32 %i.mx, ptr %i.mm, align 8, !tbaa !119
  tail call fastcc void @next_token(ptr noundef nonnull %0) #28
  tail call fastcc void @js_parse_call(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 2) #28, !inline_history !391
  store i32 %i.mo, ptr %i.mt, align 8, !tbaa !116
  %4 = trunc i64 %i.mq to i8
  store i8 %4, ptr %i.mp, align 8
  %.not.i429.not.not = icmp eq i32 %i.ms, 0
  %i.my = select i1 %.not.i429.not.not, i32 41, i32 32
  store i32 %i.my, ptr %i.mm, align 8, !tbaa !119
  tail call fastcc void @next_token(ptr noundef nonnull %0) #28
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %js_parse_pop_val.exit427
  call fastcc void @emit_goto(ptr noundef nonnull %0, i32 noundef 54, ptr noundef nonnull %i.k) #28
  %i.mz = load ptr, ptr %0, align 8, !tbaa !109
  %i.na = load i64, ptr %i.mc, align 8, !tbaa !115
  %i.nb = trunc i64 %i.na to i32
  %i.nc = ashr i32 %i.nb, 1
  %i.nd = sext i32 %i.nc to i64
  %i.ne = getelementptr inbounds i8, ptr %i.mz, i64 %i.nd
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 16
  %i.ng = load i32, ptr %i.mj, align 8, !tbaa !128
  tail call fastcc void @emit_label_pos(ptr noundef nonnull %0, ptr noundef nonnull %i.nf, i32 noundef %i.ng) #28
  store i32 -1, ptr %i.ml, align 4, !tbaa !132
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %js_parse_pop_val.exit412
  %i.nh = load ptr, ptr %0, align 8, !tbaa !109   ; 3 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.nj = load i64, ptr %i.ni, align 8, !tbaa !115
  %i.nk = trunc i64 %i.nj to i32
  %i.nl = ashr i32 %i.nk, 1
  %i.nm = sext i32 %i.nl to i64
  %i.nn = getelementptr inbounds i8, ptr %i.nh, i64 %i.nm
  %i.no = load i64, ptr %i.nn, align 8, !tbaa !172
  store i64 %i.no, ptr %i.ni, align 8, !tbaa !115
  %i.np = getelementptr inbounds nuw i8, ptr %i.nh, i64 32 ; 2 uses
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !42
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 48 ; 2 uses
  store ptr %i.nr, ptr %i.np, align 8, !tbaa !42
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nh, i64 24
  store ptr %i.nr, ptr %i.ns, align 8, !tbaa !42
  br label %bb.di

bb.bl:                                            ; preds = %is_label.exit.thread, %is_label.exit.thread
  %i.nt = icmp eq i32 %i.br, 198
  %i.nu = zext i1 %i.nt to i32                    ; 2 uses
  call fastcc void @next_token(ptr noundef nonnull %0) #28
  %i.nv = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.nw = load i64, ptr %i.nv, align 8
  %.mask = and i64 %i.nw, 255
  %.not365 = icmp eq i64 %.mask, 0
  br i1 %.not365, label %bb.bm, label %.thread

bb.bm:                                            ; preds = %bb.bl
  %i.nx = load i32, ptr %i.r, align 8, !tbaa !119
  %i.ny = icmp eq i32 %i.nx, 130
  br i1 %i.ny, label %bb.bn, label %.thread

.thread:                                          ; preds = %bb.bm, %bb.bl
  call fastcc void @emit_break(ptr noundef nonnull %0, i64 noundef 7, i32 noundef %i.nu) #28
  br label %bb.bp

bb.bn:                                            ; preds = %bb.bm
  %i.nz = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.oa = load i64, ptr %i.nz, align 8, !tbaa !117 ; 2 uses
  call fastcc void @emit_break(ptr noundef nonnull %0, i64 noundef %i.oa, i32 noundef %i.nu) #28
  %.not366 = icmp eq i64 %i.oa, 7
  br i1 %.not366, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  call fastcc void @next_token(ptr noundef nonnull %0) #28
  br label %bb.bp

bb.bp:                                            ; preds = %.thread, %bb.bo, %bb.bn
  call fastcc void @js_parse_expect_semi(ptr noundef nonnull %0) #28
  br label %bb.di

bb.bq:                                            ; preds = %is_label.exit.thread
  %i.ob = call fastcc ptr @push_break_entry(ptr noundef nonnull %0, i64 noundef %.0339, i64 noundef 1073741822, i64 noundef -2, i32 noundef 1) #28 ; 0 uses
  call fastcc void @next_token(ptr noundef nonnull %0) #28
  call fastcc void @set_eval_ret_undefined(ptr noundef nonnull %0) #28
  call fastcc void @js_parse_expr_paren(ptr noundef nonnull %0) #28
  call fastcc void @js_parse_expect(ptr noundef nonnull %0, i32 noundef 123) #28
  br label %.preheader

.preheader:                                       ; preds = %js_parse_pop_val.exit438.thread, %bb.ck, %bb.bq
  %storemerge536 = phi i64 [ -2, %bb.bq ], [ %i.qf, %bb.ck ], [ %i.qf, %js_parse_pop_val.exit438.thread ]
  %.0341.ph = phi i32 [ -1, %bb.bq ], [ %i.qd, %bb.ck ], [ %i.qd, %js_parse_pop_val.exit438.thread ]
  store i64 %storemerge536, ptr %i.l, align 8, !tbaa !46
  %i.oc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.oe = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.of = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.oh = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.oi = getelementptr inbounds nuw i8, ptr %0, i64 88
  br label %.outer

.outer:                                           ; preds = %.preheader, %bb.ce
  %.0341.ph532 = phi i32 [ %.0341.ph, %.preheader ], [ %i.oz, %bb.ce ] ; 4 uses
  br label %bb.br

bb.br:                                            ; preds = %.outer, %bb.bz
  %i.oj = load i32, ptr %i.oc, align 8, !tbaa !119
  switch i32 %i.oj, label %bb.cf [
    i32 125, label %bb.cl
    i32 203, label %bb.bs
    i32 205, label %bb.ca
  ]

bb.bs:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #29
  store i64 -2, ptr %i.m, align 8, !tbaa !46
  %i.ok = load i64, ptr %i.l, align 8, !tbaa !46
  %i.ol = and i64 %i.ok, 2147483648
  %.not476 = icmp eq i64 %i.ol, 0
  br i1 %.not476, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  store i64 1073741822, ptr %i.m, align 8, !tbaa !46
  call fastcc void @emit_goto(ptr noundef nonnull %0, i32 noundef 54, ptr noundef nonnull %i.m) #28
  %i.om = load i32, ptr %i.od, align 8, !tbaa !128
  call fastcc void @emit_label_pos(ptr noundef nonnull %0, ptr noundef nonnull %i.l, i32 noundef %i.om) #28
  store i32 -1, ptr %i.oe, align 4, !tbaa !132
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bw, %bb.bu
  call fastcc void @next_token(ptr noundef nonnull %0) #28
  %i.on = load i32, ptr %i.of, align 4, !tbaa !126
  call fastcc void @emit_op_pos(ptr noundef nonnull %0, i8 noundef zeroext 15, i32 noundef %i.on) #28
  call fastcc void @js_parse_call(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0) #28, !inline_history !19
  call fastcc void @js_parse_expect(ptr noundef nonnull %0, i32 noundef 58) #28
  %i.oo = load i32, ptr %i.of, align 4, !tbaa !126
  call fastcc void @emit_op_pos(ptr noundef nonnull %0, i8 noundef zeroext 88, i32 noundef %i.oo) #28
  %i.op = load i32, ptr %i.oc, align 8, !tbaa !119
  %i.oq = icmp eq i32 %i.op, 203
  br i1 %i.oq, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.or = load i64, ptr %i.m, align 8, !tbaa !46  ; 2 uses
  %i.os = and i64 %i.or, 2147483648
  %.not478 = icmp eq i64 %i.os, 0
  %spec.store.select = select i1 %.not478, i64 %i.or, i64 1073741822
  store i64 %spec.store.select, ptr %i.m, align 8, !tbaa !46
  call fastcc void @emit_goto(ptr noundef nonnull %0, i32 noundef 53, ptr noundef nonnull %i.m) #28
  br label %bb.bv

bb.bx:                                            ; preds = %bb.bv
  store i64 1073741822, ptr %i.l, align 8, !tbaa !46
  call fastcc void @emit_goto(ptr noundef nonnull %0, i32 noundef 52, ptr noundef nonnull %i.l) #28
  %i.ot = load i64, ptr %i.m, align 8, !tbaa !46
  %i.ou = and i64 %i.ot, 2147483648
  %.not477 = icmp eq i64 %i.ou, 0
  br i1 %.not477, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.ov = load i32, ptr %i.og, align 8, !tbaa !128
  call fastcc void @emit_label_pos(ptr noundef nonnull %0, ptr noundef nonnull %i.m, i32 noundef %i.ov) #28
  store i32 -1, ptr %i.oh, align 4, !tbaa !132
  br label %bb.bz

bb.bz:                                            ; preds = %bb.bx, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #29
  br label %bb.br, !llvm.loop !392

bb.ca:                                            ; preds = %bb.br
  call fastcc void @next_token(ptr noundef nonnull %0) #28
  call fastcc void @js_parse_expect(ptr noundef nonnull %0, i32 noundef 58) #28
  %i.ow = icmp sgt i32 %.0341.ph532, -1
  br i1 %i.ow, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  call void (ptr, ptr, ...) @js_parse_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.185) #34
  unreachable

bb.cc:                                            ; preds = %bb.ca
  %i.ox = load i64, ptr %i.l, align 8, !tbaa !46
  %i.oy = and i64 %i.ox, 2147483648
  %.not475 = icmp eq i64 %i.oy, 0
  br i1 %.not475, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  store i64 1073741822, ptr %i.l, align 8, !tbaa !46
  call fastcc void @emit_goto(ptr noundef nonnull %0, i32 noundef 54, ptr noundef nonnull %i.l) #28
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %i.oz = load i32, ptr %i.oi, align 8, !tbaa !128
  br label %.outer, !llvm.loop !392

bb.cf:                                            ; preds = %bb.br
  %i.pa = load i64, ptr %i.l, align 8, !tbaa !46  ; 3 uses
  %i.pb = and i64 %i.pa, 2147483648
  %.not480 = icmp eq i64 %i.pb, 0
  br i1 %.not480, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  call void (ptr, ptr, ...) @js_parse_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.186) #34
  unreachable

bb.ch:                                            ; preds = %bb.cf
  %i.pc = load ptr, ptr %0, align 8, !tbaa !109   ; 3 uses
end_hunk_0
begin_hunk_1_@emit_return:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph33, %bb.f
  %.01931 = phi i64 [ %.01927, %.lr.ph33 ], [ %.019, %bb.f ]
  %.030 = phi i32 [ 0, %.lr.ph33 ], [ %.1, %bb.f ]
  %.02029 = phi i32 [ %1, %.lr.ph33 ], [ %.2, %bb.f ] ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !109
  %i.d = trunc i64 %.01931 to i32
  %i.e = ashr i32 %i.d, 1
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds i8, ptr %i.c, i64 %i.f ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.i = load i64, ptr %i.h, align 8, !tbaa !173
  %i.j = trunc i64 %i.i to i32
  %i.k = ashr i32 %i.j, 1
  %i.l = add i32 %i.k, %.030                      ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !174
  %i.o = and i64 %i.n, 2147483648
  %.not25 = icmp eq i64 %i.o, 0
  br i1 %.not25, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %.not24 = icmp eq i32 %.02029, 0
  br i1 %.not24, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = load i32, ptr %i.b, align 4, !tbaa !126
  tail call fastcc void @emit_op_pos(ptr noundef nonnull %0, i8 noundef zeroext 4, i32 noundef %i.p) #28
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.q = icmp sgt i32 %i.l, 0
  br i1 %i.q, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e, %.lr.ph
  %.01826 = phi i32 [ %i.s, %.lr.ph ], [ 0, %bb.e ]
  %i.r = load i32, ptr %i.b, align 4, !tbaa !126
  tail call fastcc void @emit_op_pos(ptr noundef nonnull %0, i8 noundef zeroext 14, i32 noundef %i.r) #28
  %i.s = add nuw nsw i32 %.01826, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.s, %i.l
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !407

._crit_edge:                                      ; preds = %.lr.ph, %bb.e
  tail call fastcc void @emit_goto(ptr noundef nonnull %0, i32 noundef 56, ptr noundef nonnull %i.m) #28
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.b
  %.2 = phi i32 [ %.02029, %bb.b ], [ 1, %._crit_edge ] ; 2 uses
  %.1 = phi i32 [ %i.l, %bb.b ], [ 0, %._crit_edge ]
  %.019 = load i64, ptr %i.g, align 8, !tbaa !46  ; 2 uses
  %.not = icmp eq i64 %.019, 7
  br i1 %.not, label %._crit_edge34, label %bb.b, !llvm.loop !408

._crit_edge34:                                    ; preds = %bb.f, %bb.a
  %.020.lcssa = phi i32 [ %1, %bb.a ], [ %.2, %bb.f ]
  %.not22 = icmp eq i32 %.020.lcssa, 0
  %i.t = select i1 %.not22, i8 29, i8 28
  tail call fastcc void @emit_op_pos(ptr noundef nonnull %0, i8 noundef zeroext %i.t, i32 noundef %2) #28
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @js_parse_expect_semi(ptr noundef %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !119
  switch i32 %i.b, label %bb.b [
    i32 59, label %bb.d
    i32 160, label %bb.e
    i32 125, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i64, ptr %i.c, align 8
  %.mask = and i64 %i.d, 255
  %.not6 = icmp eq i64 %.mask, 0
  br i1 %.not6, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ptr, ...) @js_parse_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.167, i32 noundef 59) #34
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call fastcc void @next_token(ptr noundef nonnull %0) #28
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.a, %bb.b, %bb.d
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @js_parse_var(ptr noundef %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.b, align 8, !tbaa !119
  %.not19 = icmp eq i32 %i.d, 130
  br i1 %.not19, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = xor i32 %1, 1
  br label %bb.b

._crit_edge:                                      ; preds = %bb.g, %bb.a
  tail call void (ptr, ptr, ...) @js_parse_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.191) #34
  unreachable

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %i.g = load i32, ptr %i.c, align 4, !tbaa !168
  %i.h = load i64, ptr %i.e, align 8, !tbaa !117  ; 2 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !109
  %i.j = getelementptr i8, ptr %i.i, i64 96
  %.val = load ptr, ptr %i.j, align 8, !tbaa !42
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 968
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = add i64 %i.l, 1
  %i.n = icmp eq i64 %i.h, %i.m
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ptr, ...) @js_parse_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.192) #34
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.o = call fastcc i32 @define_var(ptr noundef nonnull %0, ptr noundef %i.a, i64 noundef %i.h) #28
  tail call fastcc void @next_token(ptr noundef nonnull %0) #28
  %i.p = load i32, ptr %i.b, align 8, !tbaa !119  ; 2 uses
  %i.q = icmp eq i32 %i.p, 61
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @next_token(ptr noundef nonnull %0) #28
  tail call fastcc void @js_parse_call(ptr noundef nonnull %0, i32 noundef 1, i32 noundef range(i32 0, 2) %i.f) #28, !inline_history !20
  %i.r = load i32, ptr %i.a, align 4, !tbaa !45   ; 2 uses
  %switch.selectcmp.i = icmp eq i32 %i.r, 1
  %switch.select.i = select i1 %switch.selectcmp.i, i32 45, i32 51
  %switch.selectcmp6.i = icmp eq i32 %i.r, 0
  %switch.select7.i = select i1 %switch.selectcmp6.i, i32 47, i32 %switch.select.i
  tail call fastcc void @emit_var(ptr noundef nonnull %0, i32 noundef %switch.select7.i, i32 noundef range(i32 -65536, -2147483648) %i.o, i32 noundef %i.g) #28
  %.pr = load i32, ptr %i.b, align 8, !tbaa !119
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.s = phi i32 [ %.pr, %bb.e ], [ %i.p, %bb.d ]
  %.not18 = icmp eq i32 %i.s, 44
  br i1 %.not18, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @next_token(ptr noundef nonnull %0) #28
  %i.t = load i32, ptr %i.b, align 8, !tbaa !119
  %.not = icmp eq i32 %i.t, 130
  br i1 %.not, label %bb.b, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @set_eval_ret_undefined(ptr noundef %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !125
  %i.c = icmp sgt i32 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !126
  tail call fastcc void @emit_op_pos(ptr noundef nonnull %0, i8 noundef zeroext 4, i32 noundef %i.e) #28
  %i.f = load i32, ptr %i.a, align 4, !tbaa !125
  %i.g = load i32, ptr %i.d, align 4, !tbaa !126
  tail call fastcc void @emit_var(ptr noundef nonnull %0, i32 noundef 45, i32 noundef %i.f, i32 noundef %i.g) #28
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @js_parse_expr_paren(ptr noundef %0) unnamed_addr #4 {
bb.a:
  tail call fastcc void @js_parse_expect(ptr noundef %0, i32 noundef 40) #28
  tail call fastcc void @js_parse_call(ptr noundef %0, i32 noundef 0, i32 noundef 0) #28, !inline_history !19
  tail call fastcc void @js_parse_expect(ptr noundef %0, i32 noundef 41) #28
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @js_parse_skip_parens_token(ptr noundef %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.c = load i32, ptr %i.b, align 4, !tbaa !168
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8
  %i.f = load i32, ptr %i.a, align 8, !tbaa !119
  %i.g = tail call fastcc i32 @is_regexp_allowed(i32 noundef %i.f) #28
  %i.h = tail call fastcc i32 @js_skip_parens(ptr noundef %0, ptr noundef null) #28
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %i.c, ptr %i.i, align 8, !tbaa !116
  %1 = trunc i64 %i.e to i8
  store i8 %1, ptr %i.d, align 8
  %.not.i.not.not = icmp eq i32 %i.g, 0
  %i.j = select i1 %.not.i.not.not, i32 41, i32 32
  store i32 %i.j, ptr %i.a, align 8, !tbaa !119
  tail call fastcc void @next_token(ptr noundef %0) #28
  ret i32 %i.h
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @js_skip_expr(ptr noundef %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %i.b = load i32, ptr %i.a, align 8, !tbaa !119
  switch i32 %i.b, label %bb.f [
    i32 41, label %bb.c
    i32 59, label %bb.d
    i32 160, label %bb.d
    i32 40, label %bb.e
    i32 91, label %bb.e
    i32 123, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  ret void

bb.d:                                             ; preds = %bb.b, %bb.b
  tail call void (ptr, ptr, ...) @js_parse_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.167, i32 noundef 41) #34
  unreachable

bb.e:                                             ; preds = %bb.b, %bb.b, %bb.b
  %i.c = tail call fastcc i32 @js_skip_parens(ptr noundef nonnull %0, ptr noundef null) #28 ; 0 uses
  br label %.backedge

bb.f:                                             ; preds = %bb.b
  tail call fastcc void @next_token(ptr noundef nonnull %0) #28
  br label %.backedge

.backedge:                                        ; preds = %bb.f, %bb.e
  br label %bb.b
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @emit_break(ptr noundef %0, i64 noundef %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #4 {
bb.a:
  %3 = alloca %struct.JSGCRef, align 8            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.03646 = load i64, ptr %i.a, align 8, !tbaa !46 ; 2 uses
  %.not47 = icmp eq i64 %.03646, 7
  br i1 %.not47, label %._crit_edge52, label %.lr.ph51

.lr.ph51:                                         ; preds = %bb.a
  %.not39 = icmp eq i32 %2, 0
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 3 uses
  %.pre = load ptr, ptr %0, align 8, !tbaa !109
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph51, %bb.j
  %i.d = phi ptr [ %.pre, %.lr.ph51 ], [ %i.aq, %bb.j ] ; 2 uses
  %.03649 = phi i64 [ %.03646, %.lr.ph51 ], [ %.036, %bb.j ]
  %.03748 = phi i64 [ %1, %.lr.ph51 ], [ %i.ao, %bb.j ] ; 3 uses
  %i.e = trunc i64 %.03649 to i32
  %i.f = ashr i32 %i.e, 1
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds i8, ptr %i.d, i64 %i.g ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !176
  %i.k = icmp eq i64 %i.j, -2
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.m = load i64, ptr %i.l, align 8, !tbaa !173
  %i.n = and i64 %i.m, 4294967294
  %i.o = icmp eq i64 %i.n, 0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.p = phi i1 [ false, %bb.b ], [ %i.o, %bb.c ]
  %i.q = icmp ne i64 %.03748, 7
  %or.cond = select i1 %i.q, i1 true, i1 %i.p
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !171
  %i.t = icmp eq i64 %i.s, %.03748
  br i1 %i.t, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.0 = select i1 %.not39, ptr %i.u, ptr %i.i     ; 2 uses
  %i.v = load i64, ptr %.0, align 8, !tbaa !46
  %i.w = and i64 %i.v, 2147483648
  %.not42 = icmp eq i64 %i.w, 0
  br i1 %.not42, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call fastcc void @emit_goto(ptr noundef nonnull %0, i32 noundef 54, ptr noundef nonnull %.0) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  ret void

bb.h:                                             ; preds = %bb.e, %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 80 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !36
  store ptr %i.y, ptr %i.b, align 8, !tbaa !39
  store ptr %3, ptr %i.x, align 8, !tbaa !36
  store i64 %.03748, ptr %3, align 8, !tbaa !40
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !173
  %i.ab = trunc i64 %i.aa to i32
  %i.ac = icmp sgt i32 %i.ab, 1
  br i1 %i.ac, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.h, %.lr.ph
  %.03545 = phi i32 [ %i.ae, %.lr.ph ], [ 0, %bb.h ]
  %i.ad = load i32, ptr %i.c, align 4, !tbaa !126
  call fastcc void @emit_op_pos(ptr noundef nonnull %0, i8 noundef zeroext 13, i32 noundef %i.ad) #28
  %i.ae = add nuw nsw i32 %.03545, 1              ; 2 uses
  %i.af = load i64, ptr %i.z, align 8, !tbaa !173
  %i.ag = trunc i64 %i.af to i32
  %i.ah = ashr i32 %i.ag, 1
  %i.ai = icmp slt i32 %i.ae, %i.ah
  br i1 %i.ai, label %.lr.ph, label %._crit_edge, !llvm.loop !409

._crit_edge:                                      ; preds = %.lr.ph, %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !174
  %i.al = and i64 %i.ak, 2147483648
  %.not43 = icmp eq i64 %i.al, 0
  br i1 %.not43, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge
  %i.am = load i32, ptr %i.c, align 4, !tbaa !126
  call fastcc void @emit_op_pos(ptr noundef nonnull %0, i8 noundef zeroext 4, i32 noundef %i.am) #28
  call fastcc void @emit_goto(ptr noundef nonnull %0, i32 noundef 56, ptr noundef nonnull %i.aj) #28
  %i.an = load i32, ptr %i.c, align 4, !tbaa !126
  call fastcc void @emit_op_pos(ptr noundef nonnull %0, i8 noundef zeroext 13, i32 noundef %i.an) #28
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %bb.i
  %i.ao = load i64, ptr %3, align 8, !tbaa !40    ; 2 uses
  %i.ap = load ptr, ptr %i.b, align 8, !tbaa !39
  %i.aq = load ptr, ptr %0, align 8, !tbaa !109   ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 80
  store ptr %i.ap, ptr %i.ar, align 8, !tbaa !36
  %.036 = load i64, ptr %i.h, align 8, !tbaa !46  ; 2 uses
  %.not = icmp eq i64 %.036, 7
  br i1 %.not, label %._crit_edge52, label %bb.b, !llvm.loop !410

._crit_edge52:                                    ; preds = %bb.j, %bb.a
  %.037.lcssa = phi i64 [ %1, %bb.a ], [ %i.ao, %bb.j ]
  %i.as = icmp eq i64 %.037.lcssa, 7
  br i1 %i.as, label %bb.k, label %bb.n

bb.k:                                             ; preds = %._crit_edge52
  %.not38 = icmp eq i32 %2, 0
  br i1 %.not38, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void (ptr, ptr, ...) @js_parse_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.193) #34
  unreachable

bb.m:                                             ; preds = %bb.k
  call void (ptr, ptr, ...) @js_parse_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.194) #34
  unreachable

bb.n:                                             ; preds = %._crit_edge52
  call void (ptr, ptr, ...) @js_parse_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.195) #34
  unreachable
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @re_emit_op_u32(ptr noundef %0, i32 noundef range(i32 13, 36) %1, i32 noundef range(i32 -11, 7) %2) unnamed_addr #4 {
bb.a:
  %i.a = trunc nuw nsw i32 %1 to i8
  tail call fastcc void @emit_claim_size(ptr noundef %0, i32 noundef 1) #28
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !121
  %i.d = add i64 %i.c, -1
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 5 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !128  ; 2 uses
  %i.i = add i32 %i.h, 1
  store i32 %i.i, ptr %i.g, align 8, !tbaa !128
  %i.j = zext i32 %i.h to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.j
  store i8 %i.a, ptr %i.k, align 1, !tbaa !51
  %i.l = load i32, ptr %i.g, align 8, !tbaa !128
  tail call fastcc void @emit_claim_size(ptr noundef %0, i32 noundef 4) #28
  %i.m = load i64, ptr %i.b, align 8, !tbaa !121
  %i.n = add i64 %i.m, -1
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i32, ptr %i.g, align 8, !tbaa !128  ; 2 uses
  %i.r = zext i32 %i.q to i64
end_hunk_1
