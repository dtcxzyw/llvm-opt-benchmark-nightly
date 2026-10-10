Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/marshal?download=true
inline.NumInlined: 424
inline.NumDeleted: 93
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@r_object_for:bb.a
  %exitcond.not.i475 = icmp eq i64 %i.hk, %i.hb
  br i1 %exitcond.not.i475, label %r_long.exit481, label %bb.bd, !llvm.loop !1

r_long.exit481:                                   ; preds = %bb.bd, %bb.az, %bb.av, %bb.ay, %bb.bb
  %.034.i476 = phi i64 [ %i.gz, %bb.bb ], [ %i.gq, %bb.ay ], [ 0, %bb.av ], [ %i.gv, %bb.az ], [ %i.hj, %bb.bd ]
  %i.hl = tail call fastcc i64 @r_bytes0(i64 noundef %.034.i476, ptr noundef %0)
  %i.hm = inttoptr i64 %i.hl to ptr               ; 3 uses
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !59
  %i.ho = and i64 %i.hn, 8192
  %.not.i482 = icmp eq i64 %i.ho, 0
  %i.hp = getelementptr i8, ptr %i.hm, i64 24     ; 2 uses
  br i1 %.not.i482, label %RSTRING_PTR.exit, label %bb.be

bb.be:                                            ; preds = %r_long.exit481
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !26
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %r_long.exit481, %bb.be
  %i.hr = phi ptr [ %i.hq, %bb.be ], [ %i.hp, %r_long.exit481 ] ; 5 uses
  %i.hs = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.hr, ptr noundef nonnull dereferenceable(4) @.str.44) #26
  %i.ht = icmp eq i32 %i.hs, 0
  br i1 %i.ht, label %bb.bi, label %bb.bf

bb.bf:                                            ; preds = %RSTRING_PTR.exit
  %i.hu = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.hr, ptr noundef nonnull dereferenceable(4) @.str.43) #26
  %i.hv = icmp eq i32 %i.hu, 0
  br i1 %i.hv, label %bb.bi, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.hw = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.hr, ptr noundef nonnull dereferenceable(5) @.str.42) #26
  %i.hx = icmp eq i32 %i.hw, 0
  br i1 %i.hx, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #21
  %i.hy = call double @ruby_strtod(ptr noundef nonnull %i.hr, ptr noundef nonnull %i.r) #21
  %i.hz = load ptr, ptr %i.r, align 8, !tbaa !28  ; 2 uses
  %i.ia = getelementptr i8, ptr %i.hm, i64 16
  %i.ib = load i64, ptr %i.ia, align 8, !tbaa !44
  %i.ic = ptrtoint ptr %i.hz to i64
  %i.id = ptrtoint ptr %i.hr to i64
  %.neg = sub i64 %i.id, %i.ic
  %i.ie = add i64 %.neg, %i.ib
  %i.if = call fastcc double @load_mantissa(double noundef %i.hy, ptr noundef %i.hz, i64 noundef %i.ie)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #21
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bg, %bb.bf, %RSTRING_PTR.exit, %bb.bh
  %.0392 = phi double [ %i.if, %bb.bh ], [ +qnan, %RSTRING_PTR.exit ], [ +inf, %bb.bf ], [ -inf, %bb.bg ] ; 2 uses
  %i.ig = bitcast double %.0392 to i64            ; 5 uses
  %cond.i = icmp eq i64 %i.ig, 3458764513820540928
  br i1 %cond.i, label %bb.bm, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ih = lshr i64 %i.ig, 60
  %i.ii = trunc nuw nsw i64 %i.ih to i32
  %i.ij = and i32 %i.ii, 7
  %i.ik = add nsw i32 %i.ij, -5
  %i.il = icmp ult i32 %i.ik, -2
  br i1 %i.il, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.im = call noundef i64 @llvm.fshl.i64(i64 range(i64 3458764513820540929, 3458764513820540928) %i.ig, i64 range(i64 3458764513820540929, 3458764513820540928) %i.ig, i64 3)
  %i.in = and i64 %i.im, -4
  %i.io = or disjoint i64 %i.in, 2
  br label %rb_float_new_inline.exit

bb.bl:                                            ; preds = %bb.bj
  %i.ip = icmp eq i64 %i.ig, 0
  br i1 %i.ip, label %rb_float_new_inline.exit, label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bi
  %i.iq = call i64 @rb_float_new_in_heap(double noundef %.0392) #21
  br label %rb_float_new_inline.exit

rb_float_new_inline.exit:                         ; preds = %bb.bk, %bb.bl, %bb.bm
  %.0.i483 = phi i64 [ %i.io, %bb.bk ], [ %i.iq, %bb.bm ], [ -9223372036854775806, %bb.bl ] ; 4 uses
  %i.ir = getelementptr i8, ptr %0, i64 48        ; 2 uses
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !52 ; 2 uses
  %i.it = getelementptr i8, ptr %i.is, i64 16
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #21
  store i64 %.0.i483, ptr %i.o, align 8, !tbaa !18
  %i.iv = getelementptr i8, ptr %0, i64 72
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !58 ; 2 uses
  %.not.i484 = icmp eq ptr %i.iw, null
  br i1 %.not.i484, label %r_entry0.exit, label %bb.bn

bb.bn:                                            ; preds = %rb_float_new_inline.exit
  %i.ix = call i32 @rb_st_lookup(ptr noundef nonnull %i.iw, i64 noundef %.0.i483, ptr noundef nonnull %i.o) #21 ; 0 uses
  %.pre.i = load i64, ptr %i.o, align 8, !tbaa !18
  %.pre956 = load ptr, ptr %i.ir, align 8, !tbaa !52
  br label %r_entry0.exit

r_entry0.exit:                                    ; preds = %rb_float_new_inline.exit, %bb.bn
  %i.iy = phi ptr [ %.pre956, %bb.bn ], [ %i.is, %rb_float_new_inline.exit ]
  %i.iz = phi i64 [ %.pre.i, %bb.bn ], [ %.0.i483, %rb_float_new_inline.exit ]
  %i.ja = call i32 @rb_st_insert(ptr noundef %i.iy, i64 noundef %i.iu, i64 noundef %i.iz) #21 ; 0 uses
  %i.jb = getelementptr i8, ptr %0, i64 56
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !53
  %i.jd = load i64, ptr %i.o, align 8, !tbaa !18
  %i.je = call i32 @rb_st_insert(ptr noundef %i.jc, i64 noundef %i.jd, i64 noundef 20) #21 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #21
  %i.jf = call fastcc i64 @r_leave(i64 noundef %.0.i483, ptr noundef nonnull %0, i1 noundef zeroext false)
  br label %bb.ic

bb.bo:                                            ; preds = %bb.a
  %i.jg = tail call fastcc i32 @r_byte(ptr noundef %0) ; 2 uses
  %i.jh = tail call fastcc i32 @r_byte(ptr noundef %0) ; 2 uses
  %i.ji = shl nuw i32 %i.jh, 24
  %i.jj = ashr exact i32 %i.ji, 24                ; 6 uses
  %i.jk = icmp eq i32 %i.jh, 0
  br i1 %i.jk, label %._crit_edge802.thread, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.jl = icmp sgt i32 %i.jj, 0
  br i1 %i.jl, label %bb.bq, label %bb.bt

bb.bq:                                            ; preds = %bb.bp
  %i.jm = icmp samesign ugt i32 %i.jj, 4
  br i1 %i.jm, label %bb.br, label %.preheader.i489

.preheader.i489:                                  ; preds = %bb.bq
  %i.jn = zext nneg i32 %i.jj to i64
  br label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.jo = add nsw i32 %i.jj, -5
  %i.jp = zext nneg i32 %i.jo to i64
  br label %r_long.exit493

bb.bs:                                            ; preds = %bb.bs, %.preheader.i489
  %.042.i490 = phi i64 [ 0, %.preheader.i489 ], [ %i.jv, %bb.bs ] ; 2 uses
  %.03241.i491 = phi i64 [ 0, %.preheader.i489 ], [ %i.ju, %bb.bs ]
  %i.jq = tail call fastcc i32 @r_byte(ptr noundef %0)
  %i.jr = zext nneg i32 %i.jq to i64
  %i.js = shl nuw nsw i64 %.042.i490, 3
  %i.jt = shl i64 %i.jr, %i.js
  %i.ju = or i64 %i.jt, %.03241.i491              ; 2 uses
  %i.jv = add nuw nsw i64 %.042.i490, 1           ; 2 uses
  %exitcond45.not.i492 = icmp eq i64 %i.jv, %i.jn
  br i1 %exitcond45.not.i492, label %r_long.exit493, label %bb.bs, !llvm.loop !0

bb.bt:                                            ; preds = %bb.bp
  %i.jw = icmp slt i32 %i.jj, -4
  br i1 %i.jw, label %._crit_edge802.thread, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.jx = sub nsw i32 0, %i.jj
  %i.jy = zext nneg i32 %i.jx to i64
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bv, %bb.bu
  %.140.i485 = phi i64 [ 0, %bb.bu ], [ %i.kh, %bb.bv ] ; 2 uses
  %.13339.i486 = phi i64 [ -1, %bb.bu ], [ %i.kg, %bb.bv ]
  %i.jz = shl nuw nsw i64 %.140.i485, 3           ; 2 uses
  %i.ka = shl i64 255, %i.jz
  %i.kb = xor i64 %i.ka, -1
  %i.kc = and i64 %.13339.i486, %i.kb
  %i.kd = tail call fastcc i32 @r_byte(ptr noundef %0)
  %i.ke = zext nneg i32 %i.kd to i64
  %i.kf = shl i64 %i.ke, %i.jz
  %i.kg = or i64 %i.kf, %i.kc                     ; 2 uses
  %i.kh = add nuw nsw i64 %.140.i485, 1           ; 2 uses
  %exitcond.not.i487 = icmp eq i64 %i.kh, %i.jy
  br i1 %exitcond.not.i487, label %r_long.exit493, label %bb.bv, !llvm.loop !1

r_long.exit493:                                   ; preds = %bb.bv, %bb.bs, %bb.br
  %.034.i488 = phi i64 [ %i.ju, %bb.bs ], [ %i.jp, %bb.br ], [ %i.kg, %bb.bv ] ; 5 uses
  %i.ki = icmp slt i64 %.034.i488, 5
  br i1 %i.ki, label %.preheader698, label %bb.by

.preheader698:                                    ; preds = %r_long.exit493
  %i.kj = icmp sgt i64 %.034.i488, 0
  br i1 %i.kj, label %.lr.ph801, label %._crit_edge802.thread

._crit_edge802:                                   ; preds = %.lr.ph801
  %i.kk = icmp ult i64 %i.kw, 4611686018427387904
  br i1 %i.kk, label %._crit_edge802.thread, label %bb.bw

._crit_edge802.thread:                            ; preds = %bb.bo, %bb.bt, %.preheader698, %._crit_edge802
  %.0391.lcssa1028 = phi i64 [ %i.kw, %._crit_edge802 ], [ 0, %.preheader698 ], [ 0, %bb.bt ], [ 0, %bb.bo ]
  %i.kl = shl nuw nsw i64 %.0391.lcssa1028, 1
  %i.km = or disjoint i64 %i.kl, 1
  br label %rb_ulong2num_inline.exit

bb.bw:                                            ; preds = %._crit_edge802
  %i.kn = tail call i64 @rb_uint2big(i64 noundef %i.kw) #21
  br label %rb_ulong2num_inline.exit

rb_ulong2num_inline.exit:                         ; preds = %._crit_edge802.thread, %bb.bw
  %.0.i494 = phi i64 [ %i.km, %._crit_edge802.thread ], [ %i.kn, %bb.bw ] ; 2 uses
  %i.ko = icmp eq i32 %i.jg, 45
  br i1 %i.ko, label %bb.bx, label %bb.ca

.lr.ph801:                                        ; preds = %.preheader698, %.lr.ph801
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph801 ], [ 0, %.preheader698 ] ; 2 uses
  %.0391799 = phi i64 [ %i.kw, %.lr.ph801 ], [ 0, %.preheader698 ]
  %i.kp = tail call fastcc i32 @r_byte(ptr noundef %0)
  %i.kq = zext nneg i32 %i.kp to i64
  %5 = trunc nuw nsw i64 %indvars.iv to i32
  %6 = shl nuw nsw i32 %5, 4                      ; 2 uses
  %7 = zext nneg i32 %6 to i64
  %i.kr = shl i64 %i.kq, %7
  %i.ks = tail call fastcc i32 @r_byte(ptr noundef %0)
  %i.kt = zext nneg i32 %i.ks to i64
  %8 = or disjoint i32 %6, 8
  %9 = zext nneg i32 %8 to i64
  %i.ku = shl i64 %i.kt, %9
  %i.kv = or disjoint i64 %i.ku, %i.kr
  %i.kw = or i64 %i.kv, %.0391799                 ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond938.not = icmp eq i64 %indvars.iv.next, %.034.i488
  br i1 %exitcond938.not, label %._crit_edge802, label %.lr.ph801, !llvm.loop !125

bb.bx:                                            ; preds = %rb_ulong2num_inline.exit
  %i.kx = tail call i64 @rb_int_uminus(i64 noundef %.0.i494) #21
  br label %bb.ca

bb.by:                                            ; preds = %r_long.exit493
  %i.ky = shl nuw i64 %.034.i488, 1
  %i.kz = tail call fastcc i64 @r_bytes0(i64 noundef %i.ky, ptr noundef %0) ; 2 uses
  %i.la = inttoptr i64 %i.kz to ptr               ; 2 uses
  %i.lb = load i64, ptr %i.la, align 8, !tbaa !59
  %i.lc = and i64 %i.lb, 8192
  %.not.i495 = icmp eq i64 %i.lc, 0
  %i.ld = getelementptr i8, ptr %i.la, i64 24     ; 2 uses
  br i1 %.not.i495, label %RSTRING_PTR.exit496, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !26
  br label %RSTRING_PTR.exit496

RSTRING_PTR.exit496:                              ; preds = %bb.by, %bb.bz
  %i.lf = phi ptr [ %i.le, %bb.bz ], [ %i.ld, %bb.by ]
  %i.lg = icmp eq i32 %i.jg, 45
  %i.lh = select i1 %i.lg, i32 546, i32 34
  %i.li = tail call i64 @rb_integer_unpack(ptr noundef %i.lf, i64 noundef %.034.i488, i64 noundef 2, i64 noundef 0, i32 noundef %i.lh) #21
  %i.lj = tail call i64 @rb_str_resize(i64 noundef %i.kz, i64 noundef 0) #21 ; 0 uses
  br label %bb.ca

bb.ca:                                            ; preds = %rb_ulong2num_inline.exit, %bb.bx, %RSTRING_PTR.exit496
  %.3 = phi i64 [ %i.li, %RSTRING_PTR.exit496 ], [ %i.kx, %bb.bx ], [ %.0.i494, %rb_ulong2num_inline.exit ] ; 4 uses
  %i.lk = getelementptr i8, ptr %0, i64 48        ; 2 uses
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !52 ; 2 uses
  %i.lm = getelementptr i8, ptr %i.ll, i64 16
  %i.ln = load i64, ptr %i.lm, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #21
  store i64 %.3, ptr %i.n, align 8, !tbaa !18
  %i.lo = getelementptr i8, ptr %0, i64 72
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !58 ; 2 uses
  %.not.i497 = icmp eq ptr %i.lp, null
  br i1 %.not.i497, label %r_entry0.exit499, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.lq = call i32 @rb_st_lookup(ptr noundef nonnull %i.lp, i64 noundef %.3, ptr noundef nonnull %i.n) #21 ; 0 uses
  %.pre.i498 = load i64, ptr %i.n, align 8, !tbaa !18
  %.pre955 = load ptr, ptr %i.lk, align 8, !tbaa !52
  br label %r_entry0.exit499

r_entry0.exit499:                                 ; preds = %bb.ca, %bb.cb
  %i.lr = phi ptr [ %.pre955, %bb.cb ], [ %i.ll, %bb.ca ]
  %i.ls = phi i64 [ %.pre.i498, %bb.cb ], [ %.3, %bb.ca ]
  %i.lt = call i32 @rb_st_insert(ptr noundef %i.lr, i64 noundef %i.ln, i64 noundef %i.ls) #21 ; 0 uses
  %i.lu = getelementptr i8, ptr %0, i64 56
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !53
  %i.lw = load i64, ptr %i.n, align 8, !tbaa !18
  %i.lx = call i32 @rb_st_insert(ptr noundef %i.lv, i64 noundef %i.lw, i64 noundef 20) #21 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #21
  %i.ly = call fastcc i64 @r_leave(i64 noundef %.3, ptr noundef nonnull %0, i1 noundef zeroext false)
  br label %bb.ic

bb.cc:                                            ; preds = %bb.a
  %i.lz = tail call fastcc i64 @r_string(ptr noundef %0) ; 4 uses
  %i.ma = getelementptr i8, ptr %0, i64 48        ; 2 uses
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !52 ; 2 uses
  %i.mc = getelementptr i8, ptr %i.mb, i64 16
  %i.md = load i64, ptr %i.mc, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #21
  store i64 %i.lz, ptr %i.m, align 8, !tbaa !18
  %i.me = getelementptr i8, ptr %0, i64 72
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !58 ; 2 uses
  %.not.i500 = icmp eq ptr %i.mf, null
  br i1 %.not.i500, label %r_entry0.exit502, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.mg = call i32 @rb_st_lookup(ptr noundef nonnull %i.mf, i64 noundef %i.lz, ptr noundef nonnull %i.m) #21 ; 0 uses
  %.pre.i501 = load i64, ptr %i.m, align 8, !tbaa !18
  %.pre954 = load ptr, ptr %i.ma, align 8, !tbaa !52
  br label %r_entry0.exit502

r_entry0.exit502:                                 ; preds = %bb.cc, %bb.cd
  %i.mh = phi ptr [ %.pre954, %bb.cd ], [ %i.mb, %bb.cc ]
  %i.mi = phi i64 [ %.pre.i501, %bb.cd ], [ %i.lz, %bb.cc ]
  %i.mj = call i32 @rb_st_insert(ptr noundef %i.mh, i64 noundef %i.md, i64 noundef %i.mi) #21 ; 0 uses
  %i.mk = getelementptr i8, ptr %0, i64 56
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !53
  %i.mm = load i64, ptr %i.m, align 8, !tbaa !18
  %i.mn = call i32 @rb_st_insert(ptr noundef %i.ml, i64 noundef %i.mm, i64 noundef 20) #21 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #21
  %i.mo = call fastcc i64 @r_leave(i64 noundef %i.lz, ptr noundef nonnull %0, i1 noundef zeroext %1)
  br label %bb.ic

bb.ce:                                            ; preds = %bb.a
  %i.mp = tail call fastcc i32 @r_byte(ptr noundef %0) ; 2 uses
  %i.mq = shl nuw i32 %i.mp, 24
  %i.mr = ashr exact i32 %i.mq, 24                ; 7 uses
  %i.ms = icmp eq i32 %i.mp, 0
  br i1 %i.ms, label %r_long.exit511, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.mt = icmp sgt i32 %i.mr, 0
  br i1 %i.mt, label %bb.cg, label %bb.cj

bb.cg:                                            ; preds = %bb.cf
  %i.mu = icmp samesign ugt i32 %i.mr, 4
  br i1 %i.mu, label %bb.ch, label %.preheader.i507

.preheader.i507:                                  ; preds = %bb.cg
  %i.mv = zext nneg i32 %i.mr to i64
  br label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.mw = add nsw i32 %i.mr, -5
  %i.mx = zext nneg i32 %i.mw to i64
  br label %r_long.exit511

bb.ci:                                            ; preds = %bb.ci, %.preheader.i507
  %.042.i508 = phi i64 [ 0, %.preheader.i507 ], [ %i.nd, %bb.ci ] ; 2 uses
  %.03241.i509 = phi i64 [ 0, %.preheader.i507 ], [ %i.nc, %bb.ci ]
  %i.my = tail call fastcc i32 @r_byte(ptr noundef %0)
  %i.mz = zext nneg i32 %i.my to i64
  %i.na = shl nuw nsw i64 %.042.i508, 3
  %i.nb = shl i64 %i.mz, %i.na
  %i.nc = or i64 %i.nb, %.03241.i509              ; 2 uses
  %i.nd = add nuw nsw i64 %.042.i508, 1           ; 2 uses
  %exitcond45.not.i510 = icmp eq i64 %i.nd, %i.mv
  br i1 %exitcond45.not.i510, label %r_long.exit511, label %bb.ci, !llvm.loop !0

bb.cj:                                            ; preds = %bb.cf
  %i.ne = icmp slt i32 %i.mr, -4
  br i1 %i.ne, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.nf = add nsw i32 %i.mr, 5
  %i.ng = sext i32 %i.nf to i64
  br label %r_long.exit511

bb.cl:                                            ; preds = %bb.cj
  %i.nh = sub nsw i32 0, %i.mr
  %i.ni = zext nneg i32 %i.nh to i64
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cm, %bb.cl
  %.140.i503 = phi i64 [ 0, %bb.cl ], [ %i.nr, %bb.cm ] ; 2 uses
  %.13339.i504 = phi i64 [ -1, %bb.cl ], [ %i.nq, %bb.cm ]
  %i.nj = shl nuw nsw i64 %.140.i503, 3           ; 2 uses
  %i.nk = shl i64 255, %i.nj
  %i.nl = xor i64 %i.nk, -1
  %i.nm = and i64 %.13339.i504, %i.nl
  %i.nn = tail call fastcc i32 @r_byte(ptr noundef %0)
  %i.no = zext nneg i32 %i.nn to i64
  %i.np = shl i64 %i.no, %i.nj
  %i.nq = or i64 %i.np, %i.nm                     ; 2 uses
  %i.nr = add nuw nsw i64 %.140.i503, 1           ; 2 uses
  %exitcond.not.i505 = icmp eq i64 %i.nr, %i.ni
  br i1 %exitcond.not.i505, label %r_long.exit511, label %bb.cm, !llvm.loop !1

r_long.exit511:                                   ; preds = %bb.cm, %bb.ci, %bb.ce, %bb.ch, %bb.ck
  %.034.i506 = phi i64 [ %i.ng, %bb.ck ], [ %i.mx, %bb.ch ], [ 0, %bb.ce ], [ %i.nc, %bb.ci ], [ %i.nq, %bb.cm ]
  %i.ns = tail call fastcc i64 @r_bytes0(i64 noundef %.034.i506, ptr noundef %0) ; 5 uses
  %i.nt = tail call fastcc i32 @r_byte(ptr noundef %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #21
  store i32 0, ptr %i.s, align 4, !tbaa !16
  %i.nu = getelementptr i8, ptr %0, i64 48        ; 2 uses
  %.val455 = load ptr, ptr %i.nu, align 8, !tbaa !52 ; 2 uses
  %i.nv = getelementptr i8, ptr %.val455, i64 16
  %i.nw = load i64, ptr %i.nv, align 8, !tbaa !71 ; 2 uses
  %i.nx = tail call i32 @rb_st_insert(ptr noundef %.val455, i64 noundef %i.nw, i64 noundef 36) #21 ; 0 uses
  %.not426 = icmp eq ptr %2, null
  br i1 %.not426, label %.thread1029, label %bb.cn

bb.cn:                                            ; preds = %r_long.exit511
  call fastcc void @r_ivar(i64 noundef %i.ns, ptr noundef nonnull %i.s, ptr noundef nonnull %0)
  store i32 0, ptr %2, align 4, !tbaa !16
  %.pre953 = load i32, ptr %i.s, align 4, !tbaa !16
  %i.ny = icmp eq i32 %.pre953, 0
  br i1 %i.ny, label %.thread1029, label %bb.cv

.thread1029:                                      ; preds = %r_long.exit511, %bb.cn
  %i.nz = inttoptr i64 %i.ns to ptr               ; 3 uses
  %i.oa = load i64, ptr %i.nz, align 8, !tbaa !59
  %i.ob = and i64 %i.oa, 8192
  %.not.i512 = icmp eq i64 %i.ob, 0
  %i.oc = getelementptr i8, ptr %i.nz, i64 24     ; 2 uses
  br i1 %.not.i512, label %RSTRING_PTR.exit513, label %bb.co

bb.co:                                            ; preds = %.thread1029
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !26
  br label %RSTRING_PTR.exit513

RSTRING_PTR.exit513:                              ; preds = %.thread1029, %bb.co
  %i.oe = phi ptr [ %i.od, %bb.co ], [ %i.oc, %.thread1029 ] ; 6 uses
  %i.of = getelementptr i8, ptr %i.nz, i64 16
  %i.og = load i64, ptr %i.of, align 8, !tbaa !44 ; 5 uses
  %i.oh = icmp sgt i64 %i.og, 0
  br i1 %i.oh, label %.lr.ph797.preheader, label %._crit_edge798

.lr.ph797.preheader:                              ; preds = %RSTRING_PTR.exit513
end_hunk_0
