inline.NumInlined: 234
inline.NumDeleted: 77
begin_hunk_0_@json_parse_any:bb.a
  %.1.i355 = phi i64 [ %i.jw, %.thread56.i ], [ %i.jx, %.thread54.i ] ; 2 uses
  %i.jy = load ptr, ptr %i.n, align 8, !tbaa !56
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 1
  store ptr %i.jz, ptr %i.n, align 8, !tbaa !56
  %.val298 = load i64, ptr %1, align 8, !tbaa !35 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 %.1.i355, ptr %i.f, align 8, !tbaa !10
  %.not.i356 = icmp eq i64 %.val298, 0
  br i1 %.not.i356, label %bb.bi, label %bb.bh, !prof !24

bb.bh:                                            ; preds = %json_string_fastpath.exit
  %i.ka = call i64 @rb_proc_call_with_block(i64 noundef %.val298, i32 noundef 1, ptr noundef nonnull %i.f, i64 noundef 4) #19 ; 2 uses
  store i64 %i.ka, ptr %i.f, align 8, !tbaa !10
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %json_string_fastpath.exit
  %i.kb = phi i64 [ %i.ka, %bb.bh ], [ %.1.i355, %json_string_fastpath.exit ]
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !58 ; 4 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 16
  %i.kf = load i64, ptr %i.ke, align 8, !tbaa !50 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  %i.kh = load i64, ptr %i.kg, align 8, !tbaa !49
  %.not.i.i357 = icmp slt i64 %i.kf, %i.kh
  br i1 %.not.i.i357, label %json_push_value.exit361, label %bb.bj, !prof !24

bb.bj:                                            ; preds = %bb.bi
  %i.ki = call fastcc ptr @rvalue_stack_grow(ptr noundef nonnull %i.kd, ptr noundef nonnull %0, ptr noundef nonnull %i.kc) ; 2 uses
  %.phi.trans.insert.i.i358 = getelementptr inbounds nuw i8, ptr %i.ki, i64 16
  %.pre.i.i359 = load i64, ptr %.phi.trans.insert.i.i358, align 8, !tbaa !50
  br label %json_push_value.exit361

json_push_value.exit361:                          ; preds = %bb.bi, %bb.bj
  %i.kj = phi i64 [ %.pre.i.i359, %bb.bj ], [ %i.kf, %bb.bi ]
  %.0.i.i360 = phi ptr [ %i.ki, %bb.bj ], [ %i.kd, %bb.bi ] ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %.0.i.i360, i64 24
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !51
  %i.km = getelementptr inbounds nuw i8, ptr %.0.i.i360, i64 16 ; 2 uses
  %i.kn = getelementptr inbounds [8 x i8], ptr %i.kl, i64 %i.kj
  store i64 %i.kb, ptr %i.kn, align 8, !tbaa !10
  %i.ko = load i64, ptr %i.km, align 8, !tbaa !50
  %i.kp = add nsw i64 %i.ko, 1
  store i64 %i.kp, ptr %i.km, align 8, !tbaa !50
  %i.kq = load i64, ptr %i.f, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %json_parse_string.exit207

bb.bk:                                            ; preds = %.loopexit
  %i.kr = tail call fastcc i64 @json_parse_escaped_string(ptr noundef nonnull %0, ptr noundef %1, i1 noundef zeroext false, ptr noundef nonnull %i.hk)
  br label %json_parse_string.exit207

bb.bl:                                            ; preds = %peek.exit317
  %i.ks = getelementptr inbounds nuw i8, ptr %.val228636, i64 1 ; 3 uses
  store ptr %i.ks, ptr %i.n, align 8, !tbaa !56
  %.not.i362702 = icmp ult ptr %i.ks, %.val231701
  br i1 %.not.i362702, label %peek.exit364, label %peek.exit367.thread, !prof !60

peek.exit364:                                     ; preds = %bb.bl, %.loopexit579
  %.val231828 = phi ptr [ %.val231, %.loopexit579 ], [ %.val231701, %bb.bl ] ; 6 uses
  %.val230703 = phi ptr [ %.val230, %.loopexit579 ], [ %i.ks, %bb.bl ] ; 5 uses
  %i.kt = load i8, ptr %.val230703, align 1, !tbaa !43 ; 2 uses
  switch i8 %i.kt, label %peek.exit367 [
    i8 32, label %bb.bm
    i8 10, label %bb.bn
    i8 9, label %bb.bp
    i8 13, label %bb.bp
    i8 47, label %bb.bq
  ]

bb.bm:                                            ; preds = %peek.exit364
  %i.ku = getelementptr inbounds nuw i8, ptr %.val230703, i64 1 ; 2 uses
  store ptr %i.ku, ptr %i.n, align 8, !tbaa !56
  br label %.loopexit579

bb.bn:                                            ; preds = %peek.exit364
  %i.kv = getelementptr inbounds nuw i8, ptr %.val230703, i64 1 ; 4 uses
  %i.kw = ptrtoint ptr %.val231828 to i64         ; 2 uses
  store ptr %i.kv, ptr %i.n, align 8, !tbaa !56
  %i.kx = ptrtoint ptr %i.kv to i64
  %i.ky = sub i64 %i.kw, %i.kx
  %i.kz = icmp ugt i64 %i.ky, 8
  br i1 %i.kz, label %.lr.ph699, label %.loopexit579

.lr.ph699:                                        ; preds = %bb.bn, %bb.bo
  %storemerge571698 = phi ptr [ %i.lf, %bb.bo ], [ %i.kv, %bb.bn ] ; 3 uses
  %.0.copyload.i195 = load i64, ptr %storemerge571698, align 1 ; 2 uses
  %i.la = icmp eq i64 %.0.copyload.i195, 2314885530818453536
  br i1 %i.la, label %bb.bo, label %.thread472

.thread472:                                       ; preds = %.lr.ph699
  %i.lb = xor i64 %.0.copyload.i195, 2314885530818453536
  %i.lc = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.lb, i1 true)
  %i.ld = lshr i64 %i.lc, 3
  %i.le = getelementptr inbounds nuw i8, ptr %storemerge571698, i64 %i.ld ; 2 uses
  store ptr %i.le, ptr %i.n, align 8, !tbaa !56
  br label %.loopexit579

bb.bo:                                            ; preds = %.lr.ph699
  %i.lf = getelementptr inbounds nuw i8, ptr %storemerge571698, i64 8 ; 4 uses
  store ptr %i.lf, ptr %i.n, align 8, !tbaa !56
  %i.lg = ptrtoint ptr %i.lf to i64
  %i.lh = sub i64 %i.kw, %i.lg
  %i.li = icmp ugt i64 %i.lh, 8
  br i1 %i.li, label %.lr.ph699, label %.loopexit579

bb.bp:                                            ; preds = %peek.exit364, %peek.exit364
  %i.lj = getelementptr inbounds nuw i8, ptr %.val230703, i64 1 ; 2 uses
  store ptr %i.lj, ptr %i.n, align 8, !tbaa !56
  br label %.loopexit579

bb.bq:                                            ; preds = %peek.exit364
  tail call fastcc void @json_eat_comments(ptr noundef nonnull %0)
  %.val230.pre = load ptr, ptr %i.n, align 8, !tbaa !56
  %.val231.pre = load ptr, ptr %i.o, align 8, !tbaa !57
  br label %.loopexit579

.loopexit579:                                     ; preds = %bb.bo, %bb.bn, %.thread472, %bb.bq, %bb.bp, %bb.bm
  %.val231 = phi ptr [ %.val231828, %bb.bm ], [ %.val231828, %bb.bn ], [ %.val231828, %.thread472 ], [ %.val231.pre, %bb.bq ], [ %.val231828, %bb.bp ], [ %.val231828, %bb.bo ] ; 2 uses
  %.val230 = phi ptr [ %i.ku, %bb.bm ], [ %i.kv, %bb.bn ], [ %i.le, %.thread472 ], [ %.val230.pre, %bb.bq ], [ %i.lj, %bb.bp ], [ %i.lf, %bb.bo ] ; 2 uses
  %.not.i362 = icmp ult ptr %.val230, %.val231
  br i1 %.not.i362, label %peek.exit364, label %peek.exit367.thread, !prof !61

peek.exit367.thread:                              ; preds = %.loopexit579, %bb.bl
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !58
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 16
  %i.ln = load i64, ptr %i.lm, align 8, !tbaa !50
  br label %bb.bw

peek.exit367:                                     ; preds = %peek.exit364
  %i.lo = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !58 ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 16
  %i.lr = load i64, ptr %i.lq, align 8, !tbaa !50 ; 2 uses
  %i.ls = icmp eq i8 %i.kt, 93
  br i1 %i.ls, label %bb.br, label %bb.bw

bb.br:                                            ; preds = %peek.exit367
  %i.lt = getelementptr inbounds nuw i8, ptr %.val230703, i64 1
  store ptr %i.lt, ptr %i.n, align 8, !tbaa !56
  %i.lu = getelementptr i8, ptr %i.lp, i64 24
  %.val7.i = load ptr, ptr %i.lu, align 8, !tbaa !51
  %i.lv = getelementptr inbounds [8 x i8], ptr %.val7.i, i64 %i.lr
  %i.lw = tail call i64 @rb_ary_new_from_values(i64 noundef 0, ptr noundef %i.lv) #19 ; 3 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ly = load i8, ptr %i.lx, align 4, !tbaa !40, !range !62, !noundef !63
  %i.lz = trunc nuw i8 %i.ly to i1
  br i1 %i.lz, label %bb.bs, label %json_decode_array.exit

bb.bs:                                            ; preds = %bb.br
  tail call void @rb_obj_freeze_inline(i64 noundef %i.lw) #19
  br label %json_decode_array.exit

json_decode_array.exit:                           ; preds = %bb.br, %bb.bs
  %.val304 = load i64, ptr %1, align 8, !tbaa !35 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 %i.lw, ptr %i.e, align 8, !tbaa !10
  %.not.i368 = icmp eq i64 %.val304, 0
  br i1 %.not.i368, label %bb.bu, label %bb.bt, !prof !24

bb.bt:                                            ; preds = %json_decode_array.exit
  %i.ma = call i64 @rb_proc_call_with_block(i64 noundef %.val304, i32 noundef 1, ptr noundef nonnull %i.e, i64 noundef 4) #19 ; 2 uses
  store i64 %i.ma, ptr %i.e, align 8, !tbaa !10
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %json_decode_array.exit
  %i.mb = phi i64 [ %i.ma, %bb.bt ], [ %i.lw, %json_decode_array.exit ]
  %i.mc = load ptr, ptr %i.lo, align 8, !tbaa !58 ; 4 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 16
  %i.me = load i64, ptr %i.md, align 8, !tbaa !50 ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.mc, i64 8
  %i.mg = load i64, ptr %i.mf, align 8, !tbaa !49
  %.not.i.i369 = icmp slt i64 %i.me, %i.mg
  br i1 %.not.i.i369, label %json_push_value.exit373, label %bb.bv, !prof !24

bb.bv:                                            ; preds = %bb.bu
  %i.mh = call fastcc ptr @rvalue_stack_grow(ptr noundef nonnull %i.mc, ptr noundef nonnull %0, ptr noundef nonnull %i.lo) ; 2 uses
  %.phi.trans.insert.i.i370 = getelementptr inbounds nuw i8, ptr %i.mh, i64 16
  %.pre.i.i371 = load i64, ptr %.phi.trans.insert.i.i370, align 8, !tbaa !50
  br label %json_push_value.exit373

json_push_value.exit373:                          ; preds = %bb.bu, %bb.bv
  %i.mi = phi i64 [ %.pre.i.i371, %bb.bv ], [ %i.me, %bb.bu ]
  %.0.i.i372 = phi ptr [ %i.mh, %bb.bv ], [ %i.mc, %bb.bu ] ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %.0.i.i372, i64 24
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !51
  %i.ml = getelementptr inbounds nuw i8, ptr %.0.i.i372, i64 16 ; 2 uses
  %i.mm = getelementptr inbounds [8 x i8], ptr %i.mk, i64 %i.mi
  store i64 %i.mb, ptr %i.mm, align 8, !tbaa !10
  %i.mn = load i64, ptr %i.ml, align 8, !tbaa !50
  %i.mo = add nsw i64 %i.mn, 1
  store i64 %i.mo, ptr %i.ml, align 8, !tbaa !50
  %i.mp = load i64, ptr %i.e, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %json_parse_string.exit207

bb.bw:                                            ; preds = %peek.exit367.thread, %peek.exit367
  %i.mq = phi ptr [ %i.lk, %peek.exit367.thread ], [ %i.lo, %peek.exit367 ]
  %i.mr = phi i64 [ %i.ln, %peek.exit367.thread ], [ %i.lr, %peek.exit367 ]
  %i.ms = getelementptr inbounds nuw i8, ptr %0, i64 556 ; 2 uses
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !75
  %i.mu = add nsw i32 %i.mt, 1                    ; 3 uses
  store i32 %i.mu, ptr %i.ms, align 4, !tbaa !75
  %i.mv = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !30 ; 2 uses
  %.not164 = icmp ne i32 %i.mw, 0
  %2 = icmp slt i32 %i.mw, %i.mu
  %spec.select = select i1 %.not164, i1 %2, i1 false
  br i1 %spec.select, label %bb.bx, label %bb.by, !prof !67

bb.bx:                                            ; preds = %bb.bw
  %i.mx = load i64, ptr @eNestingError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.mx, ptr noundef nonnull @.str.33, i32 noundef %i.mu) #21
  unreachable

bb.by:                                            ; preds = %bb.bw
  %i.my = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 4 uses
  %i.mz = load i32, ptr %i.my, align 8, !tbaa !76
  %i.na = add nsw i32 %i.mz, 1
  store i32 %i.na, ptr %i.my, align 8, !tbaa !76
  %i.nb = tail call fastcc i64 @json_parse_any(ptr noundef %0, ptr noundef nonnull %1) ; 0 uses
  %.val232707720 = load ptr, ptr %i.n, align 8, !tbaa !56 ; 2 uses
  %.val233708721 = load ptr, ptr %i.o, align 8, !tbaa !57 ; 3 uses
  %.not.i374709722 = icmp ult ptr %.val232707720, %.val233708721
  br i1 %.not.i374709722, label %peek.exit376.lr.ph.lr.ph, label %.thread487, !prof !60

peek.exit376.lr.ph.lr.ph:                         ; preds = %bb.by
  %i.nc = getelementptr inbounds nuw i8, ptr %1, i64 33
  br label %peek.exit376

peek.exit376:                                     ; preds = %peek.exit376.backedge, %peek.exit376.lr.ph.lr.ph
  %.val233708840 = phi ptr [ %.val233708721, %peek.exit376.lr.ph.lr.ph ], [ %.val233708840.be, %peek.exit376.backedge ] ; 6 uses
  %.val235716 = phi ptr [ %.val233708721, %peek.exit376.lr.ph.lr.ph ], [ %.val235716.be, %peek.exit376.backedge ] ; 8 uses
  %.val232710 = phi ptr [ %.val232707720, %peek.exit376.lr.ph.lr.ph ], [ %.val232710.be, %peek.exit376.backedge ] ; 6 uses
  %i.nd = load i8, ptr %.val232710, align 1, !tbaa !43
  switch i8 %i.nd, label %.thread487 [
    i8 32, label %bb.bz
    i8 10, label %bb.ca
    i8 9, label %bb.cc
    i8 13, label %bb.cc
    i8 47, label %bb.cd
    i8 44, label %bb.ce
    i8 93, label %.thread489
  ], !prof !77

bb.bz:                                            ; preds = %peek.exit376
  %i.ne = getelementptr inbounds nuw i8, ptr %.val232710, i64 1 ; 2 uses
  store ptr %i.ne, ptr %i.n, align 8, !tbaa !56
  br label %.loopexit576

bb.ca:                                            ; preds = %peek.exit376
  %i.nf = getelementptr inbounds nuw i8, ptr %.val232710, i64 1 ; 4 uses
  %i.ng = ptrtoint ptr %.val235716 to i64         ; 2 uses
  store ptr %i.nf, ptr %i.n, align 8, !tbaa !56
  %i.nh = ptrtoint ptr %i.nf to i64
  %i.ni = sub i64 %i.ng, %i.nh
  %i.nj = icmp ugt i64 %i.ni, 8
  br i1 %i.nj, label %.lr.ph706, label %.loopexit576

.lr.ph706:                                        ; preds = %bb.ca, %bb.cb
  %storemerge572705 = phi ptr [ %i.np, %bb.cb ], [ %i.nf, %bb.ca ] ; 3 uses
  %.0.copyload.i191 = load i64, ptr %storemerge572705, align 1 ; 2 uses
  %i.nk = icmp eq i64 %.0.copyload.i191, 2314885530818453536
  br i1 %i.nk, label %bb.cb, label %.thread477

.thread477:                                       ; preds = %.lr.ph706
  %i.nl = xor i64 %.0.copyload.i191, 2314885530818453536
  %i.nm = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.nl, i1 true)
  %i.nn = lshr i64 %i.nm, 3
  %i.no = getelementptr inbounds nuw i8, ptr %storemerge572705, i64 %i.nn ; 2 uses
  store ptr %i.no, ptr %i.n, align 8, !tbaa !56
  br label %.loopexit576

bb.cb:                                            ; preds = %.lr.ph706
  %i.np = getelementptr inbounds nuw i8, ptr %storemerge572705, i64 8 ; 4 uses
  store ptr %i.np, ptr %i.n, align 8, !tbaa !56
  %i.nq = ptrtoint ptr %i.np to i64
  %i.nr = sub i64 %i.ng, %i.nq
  %i.ns = icmp ugt i64 %i.nr, 8
  br i1 %i.ns, label %.lr.ph706, label %.loopexit576

bb.cc:                                            ; preds = %peek.exit376, %peek.exit376
  %i.nt = getelementptr inbounds nuw i8, ptr %.val232710, i64 1 ; 2 uses
  store ptr %i.nt, ptr %i.n, align 8, !tbaa !56
  br label %.loopexit576

bb.cd:                                            ; preds = %peek.exit376
  tail call fastcc void @json_eat_comments(ptr noundef nonnull %0)
  %.val232.pre = load ptr, ptr %i.n, align 8, !tbaa !56
  %.val233.pre = load ptr, ptr %i.o, align 8, !tbaa !57 ; 2 uses
  br label %.loopexit576

.loopexit576:                                     ; preds = %bb.cb, %bb.ca, %.thread477, %bb.cd, %bb.cc, %bb.bz
  %.val233708837 = phi ptr [ %.val233708840, %bb.bz ], [ %.val233708840, %bb.ca ], [ %.val233708840, %.thread477 ], [ %.val233.pre, %bb.cd ], [ %.val233708840, %bb.cc ], [ %.val233708840, %bb.cb ]
  %.val233 = phi ptr [ %.val235716, %bb.bz ], [ %.val235716, %bb.ca ], [ %.val235716, %.thread477 ], [ %.val233.pre, %bb.cd ], [ %.val235716, %bb.cc ], [ %.val235716, %bb.cb ] ; 2 uses
  %.val232 = phi ptr [ %i.ne, %bb.bz ], [ %i.nf, %bb.ca ], [ %i.no, %.thread477 ], [ %.val232.pre, %bb.cd ], [ %i.nt, %bb.cc ], [ %i.np, %bb.cb ] ; 2 uses
  %.not.i374 = icmp ult ptr %.val232, %.val233
  br i1 %.not.i374, label %peek.exit376.backedge, label %.thread487, !prof !61

peek.exit376.backedge:                            ; preds = %.loopexit576, %.backedge
  %.val233708840.be = phi ptr [ %.val233708837, %.loopexit576 ], [ %.val233708, %.backedge ]
  %.val235716.be = phi ptr [ %.val233, %.loopexit576 ], [ %.val233708, %.backedge ]
  %.val232710.be = phi ptr [ %.val232, %.loopexit576 ], [ %.val232707, %.backedge ]
  br label %peek.exit376

bb.ce:                                            ; preds = %peek.exit376
  %i.nu = getelementptr inbounds nuw i8, ptr %.val232710, i64 1 ; 3 uses
  store ptr %i.nu, ptr %i.n, align 8, !tbaa !56
  %i.nv = load i8, ptr %i.nc, align 1, !tbaa !37, !range !62, !noundef !63
  %i.nw = trunc nuw i8 %i.nv to i1
  %.not.i380717 = icmp ult ptr %i.nu, %.val235716
  %or.cond977 = select i1 %i.nw, i1 %.not.i380717, i1 false, !prof !78
  br i1 %or.cond977, label %peek.exit382, label %peek.exit385.thread, !prof !78

peek.exit382:                                     ; preds = %bb.ce, %.loopexit575
  %.val233708839 = phi ptr [ %.val233708838, %.loopexit575 ], [ %.val233708840, %bb.ce ] ; 6 uses
  %.val235834 = phi ptr [ %.val235, %.loopexit575 ], [ %.val235716, %bb.ce ] ; 6 uses
  %.val234718 = phi ptr [ %.val234, %.loopexit575 ], [ %i.nu, %bb.ce ] ; 5 uses
  %i.nx = load i8, ptr %.val234718, align 1, !tbaa !43
  switch i8 %i.nx, label %peek.exit385.thread [
    i8 32, label %bb.cf
    i8 10, label %bb.cg
    i8 9, label %bb.ci
    i8 13, label %bb.ci
    i8 47, label %bb.cj
    i8 93, label %.backedge
  ]

bb.cf:                                            ; preds = %peek.exit382
  %i.ny = getelementptr inbounds nuw i8, ptr %.val234718, i64 1 ; 2 uses
  store ptr %i.ny, ptr %i.n, align 8, !tbaa !56
  br label %.loopexit575

bb.cg:                                            ; preds = %peek.exit382
  %i.nz = getelementptr inbounds nuw i8, ptr %.val234718, i64 1 ; 4 uses
  %i.oa = ptrtoint ptr %.val235834 to i64         ; 2 uses
  store ptr %i.nz, ptr %i.n, align 8, !tbaa !56
  %i.ob = ptrtoint ptr %i.nz to i64
  %i.oc = sub i64 %i.oa, %i.ob
  %i.od = icmp ugt i64 %i.oc, 8
  br i1 %i.od, label %.lr.ph714, label %.loopexit575

.lr.ph714:                                        ; preds = %bb.cg, %bb.ch
  %storemerge573713 = phi ptr [ %i.oj, %bb.ch ], [ %i.nz, %bb.cg ] ; 3 uses
  %.0.copyload.i187 = load i64, ptr %storemerge573713, align 1 ; 2 uses
  %i.oe = icmp eq i64 %.0.copyload.i187, 2314885530818453536
  br i1 %i.oe, label %bb.ch, label %.thread483

.thread483:                                       ; preds = %.lr.ph714
  %i.of = xor i64 %.0.copyload.i187, 2314885530818453536
  %i.og = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.of, i1 true)
  %i.oh = lshr i64 %i.og, 3
  %i.oi = getelementptr inbounds nuw i8, ptr %storemerge573713, i64 %i.oh ; 2 uses
  store ptr %i.oi, ptr %i.n, align 8, !tbaa !56
  br label %.loopexit575

bb.ch:                                            ; preds = %.lr.ph714
  %i.oj = getelementptr inbounds nuw i8, ptr %storemerge573713, i64 8 ; 4 uses
  store ptr %i.oj, ptr %i.n, align 8, !tbaa !56
  %i.ok = ptrtoint ptr %i.oj to i64
  %i.ol = sub i64 %i.oa, %i.ok
  %i.om = icmp ugt i64 %i.ol, 8
  br i1 %i.om, label %.lr.ph714, label %.loopexit575

bb.ci:                                            ; preds = %peek.exit382, %peek.exit382
  %i.on = getelementptr inbounds nuw i8, ptr %.val234718, i64 1 ; 2 uses
  store ptr %i.on, ptr %i.n, align 8, !tbaa !56
  br label %.loopexit575

bb.cj:                                            ; preds = %peek.exit382
  tail call fastcc void @json_eat_comments(ptr noundef nonnull %0)
  %.val234.pre = load ptr, ptr %i.n, align 8, !tbaa !56
  %.val235.pre = load ptr, ptr %i.o, align 8, !tbaa !57 ; 2 uses
  br label %.loopexit575

.loopexit575:                                     ; preds = %bb.ch, %bb.cg, %.thread483, %bb.cj, %bb.ci, %bb.cf
  %.val233708838 = phi ptr [ %.val233708839, %bb.cf ], [ %.val233708839, %bb.cg ], [ %.val233708839, %.thread483 ], [ %.val235.pre, %bb.cj ], [ %.val233708839, %bb.ci ], [ %.val233708839, %bb.ch ]
  %.val235 = phi ptr [ %.val235834, %bb.cf ], [ %.val235834, %bb.cg ], [ %.val235834, %.thread483 ], [ %.val235.pre, %bb.cj ], [ %.val235834, %bb.ci ], [ %.val235834, %bb.ch ] ; 2 uses
  %.val234 = phi ptr [ %i.ny, %bb.cf ], [ %i.nz, %bb.cg ], [ %i.oi, %.thread483 ], [ %.val234.pre, %bb.cj ], [ %i.on, %bb.ci ], [ %i.oj, %bb.ch ] ; 2 uses
  %.not.i380 = icmp ult ptr %.val234, %.val235
  br i1 %.not.i380, label %peek.exit382, label %peek.exit385.thread, !prof !61

peek.exit385.thread:                              ; preds = %.loopexit575, %peek.exit382, %bb.ce
  %i.oo = tail call fastcc i64 @json_parse_any(ptr noundef %0, ptr noundef %1) ; 0 uses
  %.val232707.pre = load ptr, ptr %i.n, align 8, !tbaa !56
  %.val233708.pre = load ptr, ptr %i.o, align 8, !tbaa !57
  br label %.backedge

.backedge:                                        ; preds = %peek.exit382, %peek.exit385.thread
  %.val233708 = phi ptr [ %.val233708.pre, %peek.exit385.thread ], [ %.val233708839, %peek.exit382 ] ; 3 uses
  %.val232707 = phi ptr [ %.val232707.pre, %peek.exit385.thread ], [ %.val234718, %peek.exit382 ] ; 2 uses
  %.not.i374709 = icmp ult ptr %.val232707, %.val233708
  br i1 %.not.i374709, label %peek.exit376.backedge, label %.thread487, !prof !79

.thread489:                                       ; preds = %peek.exit376
  %i.op = getelementptr inbounds nuw i8, ptr %.val232710, i64 1
  store ptr %i.op, ptr %i.n, align 8, !tbaa !56
  %i.oq = load ptr, ptr %i.mq, align 8, !tbaa !58
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 16
  %i.os = load i64, ptr %i.or, align 8, !tbaa !50
  %i.ot = sub nsw i64 %i.os, %i.mr
  %i.ou = load <2 x i32>, ptr %i.my, align 8, !tbaa !6
  %i.ov = add nsw <2 x i32> %i.ou, splat (i32 -1)
  store <2 x i32> %i.ov, ptr %i.my, align 8, !tbaa !6
  %i.ow = tail call fastcc i64 @json_decode_array(ptr noundef %0, ptr noundef %1, i64 noundef %i.ot)
  %.val303 = load i64, ptr %1, align 8, !tbaa !35
  %i.ox = tail call fastcc i64 @json_push_value(ptr noundef %0, i64 %.val303, i64 noundef %i.ow)
  br label %json_parse_string.exit207

.thread487:                                       ; preds = %.backedge, %peek.exit376, %.loopexit576, %bb.by
  tail call fastcc void @raise_parse_error(ptr noundef nonnull @.str.34, ptr noundef %0) #24
  unreachable

bb.ck:                                            ; preds = %peek.exit317
  %i.oy = getelementptr inbounds nuw i8, ptr %.val228636, i64 1 ; 4 uses
  store ptr %i.oy, ptr %i.n, align 8, !tbaa !56
  %.not.i386642 = icmp ult ptr %i.oy, %.val231701
  br i1 %.not.i386642, label %peek.exit388, label %peek.exit391.thread, !prof !60

peek.exit388:                                     ; preds = %bb.ck, %.loopexit592
  %.val237803 = phi ptr [ %.val237, %.loopexit592 ], [ %.val231701, %bb.ck ] ; 7 uses
  %.val236643 = phi ptr [ %.val236, %.loopexit592 ], [ %i.oy, %bb.ck ] ; 6 uses
  %i.oz = load i8, ptr %.val236643, align 1, !tbaa !43 ; 2 uses
  switch i8 %i.oz, label %peek.exit391 [
    i8 32, label %bb.cl
    i8 10, label %bb.cm
    i8 9, label %bb.co
    i8 13, label %bb.co
    i8 47, label %bb.cp
  ]

bb.cl:                                            ; preds = %peek.exit388
  %i.pa = getelementptr inbounds nuw i8, ptr %.val236643, i64 1 ; 2 uses
  store ptr %i.pa, ptr %i.n, align 8, !tbaa !56
  br label %.loopexit592

bb.cm:                                            ; preds = %peek.exit388
  %i.pb = getelementptr inbounds nuw i8, ptr %.val236643, i64 1 ; 4 uses
  %i.pc = ptrtoint ptr %.val237803 to i64         ; 2 uses
  store ptr %i.pb, ptr %i.n, align 8, !tbaa !56
  %i.pd = ptrtoint ptr %i.pb to i64
  %i.pe = sub i64 %i.pc, %i.pd
  %i.pf = icmp ugt i64 %i.pe, 8
  br i1 %i.pf, label %.lr.ph639, label %.loopexit592

.lr.ph639:                                        ; preds = %bb.cm, %bb.cn
  %storemerge564638 = phi ptr [ %i.pl, %bb.cn ], [ %i.pb, %bb.cm ] ; 3 uses
  %.0.copyload.i183 = load i64, ptr %storemerge564638, align 1 ; 2 uses
  %i.pg = icmp eq i64 %.0.copyload.i183, 2314885530818453536
  br i1 %i.pg, label %bb.cn, label %.thread492

.thread492:                                       ; preds = %.lr.ph639
  %i.ph = xor i64 %.0.copyload.i183, 2314885530818453536
  %i.pi = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ph, i1 true)
  %i.pj = lshr i64 %i.pi, 3
  %i.pk = getelementptr inbounds nuw i8, ptr %storemerge564638, i64 %i.pj ; 2 uses
  store ptr %i.pk, ptr %i.n, align 8, !tbaa !56
  br label %.loopexit592

bb.cn:                                            ; preds = %.lr.ph639
  %i.pl = getelementptr inbounds nuw i8, ptr %storemerge564638, i64 8 ; 4 uses
  store ptr %i.pl, ptr %i.n, align 8, !tbaa !56
  %i.pm = ptrtoint ptr %i.pl to i64
  %i.pn = sub i64 %i.pc, %i.pm
  %i.po = icmp ugt i64 %i.pn, 8
  br i1 %i.po, label %.lr.ph639, label %.loopexit592

bb.co:                                            ; preds = %peek.exit388, %peek.exit388
  %i.pp = getelementptr inbounds nuw i8, ptr %.val236643, i64 1 ; 2 uses
  store ptr %i.pp, ptr %i.n, align 8, !tbaa !56
  br label %.loopexit592

bb.cp:                                            ; preds = %peek.exit388
  tail call fastcc void @json_eat_comments(ptr noundef nonnull %0)
  %.val236.pre = load ptr, ptr %i.n, align 8, !tbaa !56
  %.val237.pre = load ptr, ptr %i.o, align 8, !tbaa !57
  br label %.loopexit592

.loopexit592:                                     ; preds = %bb.cn, %bb.cm, %.thread492, %bb.cp, %bb.co, %bb.cl
  %.val237 = phi ptr [ %.val237803, %bb.cl ], [ %.val237803, %bb.cm ], [ %.val237803, %.thread492 ], [ %.val237.pre, %bb.cp ], [ %.val237803, %bb.co ], [ %.val237803, %bb.cn ] ; 3 uses
  %.val236 = phi ptr [ %i.pa, %bb.cl ], [ %i.pb, %bb.cm ], [ %i.pk, %.thread492 ], [ %.val236.pre, %bb.cp ], [ %i.pp, %bb.co ], [ %i.pl, %bb.cn ] ; 3 uses
  %.not.i386 = icmp ult ptr %.val236, %.val237
  br i1 %.not.i386, label %peek.exit388, label %peek.exit391.thread, !prof !61

peek.exit391.thread:                              ; preds = %.loopexit592, %bb.ck
  %.val236.lcssa = phi ptr [ %i.oy, %bb.ck ], [ %.val236, %.loopexit592 ]
  %.val237.lcssa = phi ptr [ %.val231701, %bb.ck ], [ %.val237, %.loopexit592 ]
  %i.pq = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.cu

peek.exit391:                                     ; preds = %peek.exit388
  %i.pr = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.ps = icmp eq i8 %i.oz, 125
  br i1 %i.ps, label %bb.cq, label %bb.cu

bb.cq:                                            ; preds = %peek.exit391
  %i.pt = getelementptr inbounds nuw i8, ptr %.val236643, i64 1
  store ptr %i.pt, ptr %i.n, align 8, !tbaa !56
  %i.pu = tail call fastcc i64 @json_decode_object(ptr noundef %0, ptr noundef %1, i64 noundef 0) ; 2 uses
  %.val302 = load i64, ptr %1, align 8, !tbaa !35 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %i.pu, ptr %i.d, align 8, !tbaa !10
  %.not.i392 = icmp eq i64 %.val302, 0
  br i1 %.not.i392, label %bb.cs, label %bb.cr, !prof !24

bb.cr:                                            ; preds = %bb.cq
  %i.pv = call i64 @rb_proc_call_with_block(i64 noundef %.val302, i32 noundef 1, ptr noundef nonnull %i.d, i64 noundef 4) #19 ; 2 uses
  store i64 %i.pv, ptr %i.d, align 8, !tbaa !10
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %i.pw = phi i64 [ %i.pv, %bb.cr ], [ %i.pu, %bb.cq ]
  %i.px = load ptr, ptr %i.pr, align 8, !tbaa !58 ; 4 uses
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 16
  %i.pz = load i64, ptr %i.py, align 8, !tbaa !50 ; 2 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %i.px, i64 8
  %i.qb = load i64, ptr %i.qa, align 8, !tbaa !49
  %.not.i.i393 = icmp slt i64 %i.pz, %i.qb
  br i1 %.not.i.i393, label %json_push_value.exit397, label %bb.ct, !prof !24

bb.ct:                                            ; preds = %bb.cs
  %i.qc = call fastcc ptr @rvalue_stack_grow(ptr noundef nonnull %i.px, ptr noundef nonnull %0, ptr noundef nonnull %i.pr) ; 2 uses
  %.phi.trans.insert.i.i394 = getelementptr inbounds nuw i8, ptr %i.qc, i64 16
  %.pre.i.i395 = load i64, ptr %.phi.trans.insert.i.i394, align 8, !tbaa !50
  br label %json_push_value.exit397

json_push_value.exit397:                          ; preds = %bb.cs, %bb.ct
  %i.qd = phi i64 [ %.pre.i.i395, %bb.ct ], [ %i.pz, %bb.cs ]
  %.0.i.i396 = phi ptr [ %i.qc, %bb.ct ], [ %i.px, %bb.cs ] ; 2 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %.0.i.i396, i64 24
  %i.qf = load ptr, ptr %i.qe, align 8, !tbaa !51
  %i.qg = getelementptr inbounds nuw i8, ptr %.0.i.i396, i64 16 ; 2 uses
  %i.qh = getelementptr inbounds [8 x i8], ptr %i.qf, i64 %i.qd
  store i64 %i.pw, ptr %i.qh, align 8, !tbaa !10
  %i.qi = load i64, ptr %i.qg, align 8, !tbaa !50
  %i.qj = add nsw i64 %i.qi, 1
  store i64 %i.qj, ptr %i.qg, align 8, !tbaa !50
  %i.qk = load i64, ptr %i.d, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %json_parse_string.exit207

bb.cu:                                            ; preds = %peek.exit391.thread, %peek.exit391
  %.val236624 = phi ptr [ %.val236.lcssa, %peek.exit391.thread ], [ %.val236643, %peek.exit391 ] ; 3 uses
  %.val237622 = phi ptr [ %.val237.lcssa, %peek.exit391.thread ], [ %.val237803, %peek.exit391 ] ; 5 uses
  %.not.i386620 = phi i1 [ false, %peek.exit391.thread ], [ true, %peek.exit391 ]
  %i.ql = phi ptr [ %i.pq, %peek.exit391.thread ], [ %i.pr, %peek.exit391 ] ; 8 uses
  %.val2376221172 = ptrtoint ptr %.val237622 to i64
  %.pn = load ptr, ptr %i.ql, align 8, !tbaa !58
  %.in = getelementptr inbounds nuw i8, ptr %.pn, i64 16
  %i.qm = load i64, ptr %.in, align 8, !tbaa !50
  %i.qn = getelementptr inbounds nuw i8, ptr %0, i64 556 ; 4 uses
  %i.qo = load i32, ptr %i.qn, align 4, !tbaa !75
  %i.qp = add nsw i32 %i.qo, 1                    ; 3 uses
  store i32 %i.qp, ptr %i.qn, align 4, !tbaa !75
  %i.qq = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.qr = load i32, ptr %i.qq, align 4, !tbaa !30 ; 2 uses
  %.not = icmp ne i32 %i.qr, 0
  %3 = icmp slt i32 %i.qr, %i.qp
  %spec.select170 = select i1 %.not, i1 %3, i1 false
  br i1 %spec.select170, label %bb.cv, label %bb.cw, !prof !67

bb.cv:                                            ; preds = %bb.cu
  %i.qs = load i64, ptr @eNestingError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.qs, ptr noundef nonnull @.str.33, i32 noundef %i.qp) #21
  unreachable

bb.cw:                                            ; preds = %bb.cu
  br i1 %.not.i386620, label %peek.exit400, label %peek.exit400.thread, !prof !24

peek.exit400:                                     ; preds = %bb.cw
  %i.qt = load i8, ptr %.val236624, align 1, !tbaa !43
  %.not159 = icmp eq i8 %i.qt, 34
  br i1 %.not159, label %bb.cx, label %peek.exit400.thread

peek.exit400.thread:                              ; preds = %bb.cw, %peek.exit400
  tail call fastcc void @raise_parse_error(ptr noundef nonnull @.str.35, ptr noundef %0) #24
  unreachable

bb.cx:                                            ; preds = %peek.exit400
  %i.qu = getelementptr inbounds nuw i8, ptr %.val236624, i64 1 ; 5 uses
  store ptr %i.qu, ptr %i.n, align 8, !tbaa !56
  %i.qv = load i32, ptr @simd_impl, align 4, !tbaa !6
  %i.qw = icmp ne i32 %i.qv, 2
  %i.qx = getelementptr inbounds nuw i8, ptr %.val236624, i64 17 ; 2 uses
  %.not.i215648 = icmp ugt ptr %i.qx, %.val237622
  %or.cond980.a = select i1 %i.qw, i1 true, i1 %.not.i215648
  br i1 %or.cond980.a, label %string_scan_simd_sse2.exit218.thread506, label %.lr.ph649

.lr.ph649:                                        ; preds = %bb.cx, %bb.cy
  %i.qy = phi ptr [ %i.rg, %bb.cy ], [ %i.qx, %bb.cx ] ; 4 uses
  %i.qz = phi ptr [ %i.qy, %bb.cy ], [ %i.qu, %bb.cx ] ; 2 uses
  %i.ra = load <16 x i8>, ptr %i.qz, align 1, !tbaa !43 ; 2 uses
  %i.rb = xor <16 x i8> %i.ra, splat (i8 2)
  %i.rc = icmp ult <16 x i8> %i.rb, splat (i8 33)
  %i.rd = icmp eq <16 x i8> %i.ra, splat (i8 92)
  %i.re = or <16 x i1> %i.rd, %i.rc
  %i.rf = bitcast <16 x i1> %i.re to i16          ; 2 uses
  %.not10.i216.not = icmp eq i16 %i.rf, 0
  br i1 %.not10.i216.not, label %bb.cy, label %string_scan_simd_sse2.exit218

bb.cy:                                            ; preds = %.lr.ph649
  store ptr %i.qy, ptr %i.n, align 8, !tbaa !64
  %i.rg = getelementptr inbounds nuw i8, ptr %i.qy, i64 16 ; 2 uses
  %.not.i215 = icmp ugt ptr %i.rg, %.val237622
  br i1 %.not.i215, label %string_scan_simd_sse2.exit218.thread506, label %.lr.ph649

string_scan_simd_sse2.exit218:                    ; preds = %.lr.ph649
  %i.rh = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.rf, i1 true)
  %i.ri = zext nneg i16 %i.rh to i64
  %i.rj = getelementptr inbounds nuw i8, ptr %i.qz, i64 %i.ri ; 3 uses
  store ptr %i.rj, ptr %i.n, align 8, !tbaa !56
  %.pre = load i8, ptr %i.rj, align 1, !tbaa !43
  br label %.loopexit590

string_scan_simd_sse2.exit218.thread506:          ; preds = %bb.cy, %bb.cx
  %.lcssa631.promoted650 = phi ptr [ %i.qu, %bb.cx ], [ %i.qy, %bb.cy ] ; 4 uses
  %.not565652 = icmp ult ptr %.lcssa631.promoted650, %.val237622
  br i1 %.not565652, label %.lr.ph654.preheader, label %string_scan.exit210, !prof !65

.lr.ph654.preheader:                              ; preds = %string_scan_simd_sse2.exit218.thread506
  %.lcssa631.promoted6501173 = ptrtoint ptr %.lcssa631.promoted650 to i64
  %i.rk = sub i64 %.val2376221172, %.lcssa631.promoted6501173
  %i.rl = freeze i64 %i.rk                        ; 2 uses
  %i.rm = add i64 %i.rl, -1
  %xtraiter = and i64 %i.rl, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph654.prol.loopexit, label %.lr.ph654.prol, !prof !60

.lr.ph654.prol:                                   ; preds = %.lr.ph654.preheader, %bb.cz
  %.val224651653.prol = phi ptr [ %i.rs, %bb.cz ], [ %.lcssa631.promoted650, %.lr.ph654.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.cz ], [ 0, %.lr.ph654.preheader ]
  %i.rn = load i8, ptr %.val224651653.prol, align 1, !tbaa !43 ; 2 uses
  %i.ro = zext i8 %i.rn to i64
  %i.rp = getelementptr inbounds nuw i8, ptr @string_scan_table, i64 %i.ro
  %i.rq = load i8, ptr %i.rp, align 1, !tbaa !66, !range !62, !noundef !63
  %i.rr = trunc nuw i8 %i.rq to i1
  br i1 %i.rr, label %.loopexit590, label %bb.cz, !prof !67

bb.cz:                                            ; preds = %.lr.ph654.prol
  %i.rs = getelementptr inbounds nuw i8, ptr %.val224651653.prol, i64 1 ; 3 uses
  store ptr %i.rs, ptr %i.n, align 8, !tbaa !56
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph654.prol.loopexit, label %.lr.ph654.prol, !prof !68, !llvm.loop !80

.lr.ph654.prol.loopexit:                          ; preds = %bb.cz, %.lr.ph654.preheader
  %.val224651653.unr = phi ptr [ %.lcssa631.promoted650, %.lr.ph654.preheader ], [ %i.rs, %bb.cz ]
  %i.rt = icmp ult i64 %i.rm, 3
  br i1 %i.rt, label %string_scan.exit210, label %.lr.ph654, !prof !71

.lr.ph654:                                        ; preds = %.lr.ph654.prol.loopexit, %bb.da
  %.val224651653 = phi ptr [ %i.sr, %bb.da ], [ %.val224651653.unr, %.lr.ph654.prol.loopexit ] ; 9 uses
  %i.ru = load i8, ptr %.val224651653, align 1, !tbaa !43 ; 2 uses
  %i.rv = zext i8 %i.ru to i64
  %i.rw = getelementptr inbounds nuw i8, ptr @string_scan_table, i64 %i.rv
  %i.rx = load i8, ptr %i.rw, align 1, !tbaa !66, !range !62, !noundef !63
  %i.ry = trunc nuw i8 %i.rx to i1
  br i1 %i.ry, label %.loopexit590, label %.lr.ph654.1, !prof !67

.lr.ph654.1:                                      ; preds = %.lr.ph654
  %i.rz = getelementptr inbounds nuw i8, ptr %.val224651653, i64 1 ; 2 uses
  store ptr %i.rz, ptr %i.n, align 8, !tbaa !56
  %i.sa = load i8, ptr %i.rz, align 1, !tbaa !43  ; 2 uses
  %i.sb = zext i8 %i.sa to i64
  %i.sc = getelementptr inbounds nuw i8, ptr @string_scan_table, i64 %i.sb
  %i.sd = load i8, ptr %i.sc, align 1, !tbaa !66, !range !62, !noundef !63
  %i.se = trunc nuw i8 %i.sd to i1
  br i1 %i.se, label %.loopexit590.loopexit.loopexit.split.loop.exit1280, label %.lr.ph654.2, !prof !67

.lr.ph654.2:                                      ; preds = %.lr.ph654.1
  %i.sf = getelementptr inbounds nuw i8, ptr %.val224651653, i64 2 ; 2 uses
  store ptr %i.sf, ptr %i.n, align 8, !tbaa !56
  %i.sg = load i8, ptr %i.sf, align 1, !tbaa !43  ; 2 uses
  %i.sh = zext i8 %i.sg to i64
  %i.si = getelementptr inbounds nuw i8, ptr @string_scan_table, i64 %i.sh
  %i.sj = load i8, ptr %i.si, align 1, !tbaa !66, !range !62, !noundef !63
  %i.sk = trunc nuw i8 %i.sj to i1
  br i1 %i.sk, label %.loopexit590.loopexit.loopexit.split.loop.exit1277, label %.lr.ph654.3, !prof !67

.lr.ph654.3:                                      ; preds = %.lr.ph654.2
  %i.sl = getelementptr inbounds nuw i8, ptr %.val224651653, i64 3 ; 2 uses
  store ptr %i.sl, ptr %i.n, align 8, !tbaa !56
  %i.sm = load i8, ptr %i.sl, align 1, !tbaa !43  ; 2 uses
  %i.sn = zext i8 %i.sm to i64
  %i.so = getelementptr inbounds nuw i8, ptr @string_scan_table, i64 %i.sn
  %i.sp = load i8, ptr %i.so, align 1, !tbaa !66, !range !62, !noundef !63
  %i.sq = trunc nuw i8 %i.sp to i1
  br i1 %i.sq, label %.loopexit590.loopexit.loopexit.split.loop.exit, label %bb.da, !prof !67

bb.da:                                            ; preds = %.lr.ph654.3
  %i.sr = getelementptr inbounds nuw i8, ptr %.val224651653, i64 4 ; 3 uses
  store ptr %i.sr, ptr %i.n, align 8, !tbaa !56
  %exitcond.not.3 = icmp eq ptr %i.sr, %.val237622
  br i1 %exitcond.not.3, label %string_scan.exit210, label %.lr.ph654, !prof !72, !llvm.loop !81

string_scan.exit210:                              ; preds = %.lr.ph654.prol.loopexit, %bb.da, %string_scan_simd_sse2.exit218.thread506
  tail call fastcc void @raise_parse_error(ptr noundef nonnull @.str.51, ptr noundef nonnull %0) #24
  unreachable

.loopexit590.loopexit.loopexit.split.loop.exit:   ; preds = %.lr.ph654.3
  %i.ss = getelementptr inbounds nuw i8, ptr %.val224651653, i64 3
  br label %.loopexit590

.loopexit590.loopexit.loopexit.split.loop.exit1277: ; preds = %.lr.ph654.2
  %i.st = getelementptr inbounds nuw i8, ptr %.val224651653, i64 2
  br label %.loopexit590

.loopexit590.loopexit.loopexit.split.loop.exit1280: ; preds = %.lr.ph654.1
  %i.su = getelementptr inbounds nuw i8, ptr %.val224651653, i64 1
  br label %.loopexit590

.loopexit590:                                     ; preds = %.lr.ph654, %.loopexit590.loopexit.loopexit.split.loop.exit1280, %.loopexit590.loopexit.loopexit.split.loop.exit1277, %.loopexit590.loopexit.loopexit.split.loop.exit, %.lr.ph654.prol, %string_scan_simd_sse2.exit218
  %i.sv = phi i8 [ %.pre, %string_scan_simd_sse2.exit218 ], [ %i.ru, %.lr.ph654 ], [ %i.sa, %.loopexit590.loopexit.loopexit.split.loop.exit1280 ], [ %i.sg, %.loopexit590.loopexit.loopexit.split.loop.exit1277 ], [ %i.sm, %.loopexit590.loopexit.loopexit.split.loop.exit ], [ %i.rn, %.lr.ph654.prol ]
  %i.sw = phi ptr [ %i.rj, %string_scan_simd_sse2.exit218 ], [ %.val224651653, %.lr.ph654 ], [ %i.su, %.loopexit590.loopexit.loopexit.split.loop.exit1280 ], [ %i.st, %.loopexit590.loopexit.loopexit.split.loop.exit1277 ], [ %i.ss, %.loopexit590.loopexit.loopexit.split.loop.exit ], [ %.val224651653.prol, %.lr.ph654.prol ]
  %i.sx = icmp eq i8 %i.sv, 34
  br i1 %i.sx, label %bb.db, label %bb.df, !prof !24

bb.db:                                            ; preds = %.loopexit590
  %i.sy = tail call fastcc i64 @json_string_fastpath(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %i.qu, ptr noundef nonnull %i.sw, i1 noundef zeroext true) ; 2 uses
  %i.sz = load ptr, ptr %i.n, align 8, !tbaa !56
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 1
  store ptr %i.ta, ptr %i.n, align 8, !tbaa !56
  %.val299 = load i64, ptr %1, align 8, !tbaa !35 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %i.sy, ptr %i.c, align 8, !tbaa !10
  %.not.i401 = icmp eq i64 %.val299, 0
  br i1 %.not.i401, label %bb.dd, label %bb.dc, !prof !24

bb.dc:                                            ; preds = %bb.db
  %i.tb = call i64 @rb_proc_call_with_block(i64 noundef %.val299, i32 noundef 1, ptr noundef nonnull %i.c, i64 noundef 4) #19 ; 2 uses
  store i64 %i.tb, ptr %i.c, align 8, !tbaa !10
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %i.tc = phi i64 [ %i.tb, %bb.dc ], [ %i.sy, %bb.db ]
  %i.td = load ptr, ptr %i.ql, align 8, !tbaa !58 ; 4 uses
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 16
  %i.tf = load i64, ptr %i.te, align 8, !tbaa !50 ; 2 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %i.td, i64 8
  %i.th = load i64, ptr %i.tg, align 8, !tbaa !49
  %.not.i.i402 = icmp slt i64 %i.tf, %i.th
  br i1 %.not.i.i402, label %json_push_value.exit406, label %bb.de, !prof !24

bb.de:                                            ; preds = %bb.dd
  %i.ti = call fastcc ptr @rvalue_stack_grow(ptr noundef nonnull %i.td, ptr noundef nonnull %0, ptr noundef nonnull %i.ql) ; 2 uses
  %.phi.trans.insert.i.i403 = getelementptr inbounds nuw i8, ptr %i.ti, i64 16
  %.pre.i.i404 = load i64, ptr %.phi.trans.insert.i.i403, align 8, !tbaa !50
  br label %json_push_value.exit406

json_push_value.exit406:                          ; preds = %bb.dd, %bb.de
  %i.tj = phi i64 [ %.pre.i.i404, %bb.de ], [ %i.tf, %bb.dd ]
  %.0.i.i405 = phi ptr [ %i.ti, %bb.de ], [ %i.td, %bb.dd ] ; 2 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %.0.i.i405, i64 24
  %i.tl = load ptr, ptr %i.tk, align 8, !tbaa !51
  %i.tm = getelementptr inbounds nuw i8, ptr %.0.i.i405, i64 16 ; 2 uses
  %i.tn = getelementptr inbounds [8 x i8], ptr %i.tl, i64 %i.tj
  store i64 %i.tc, ptr %i.tn, align 8, !tbaa !10
  %i.to = load i64, ptr %i.tm, align 8, !tbaa !50
end_hunk_0
