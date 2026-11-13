Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/sprintf?download=true
inline.NumInlined: 279
inline.NumDeleted: 61
begin_hunk_0_@rb_str_format:bb.a
  unreachable

bb.bs:                                            ; preds = %bb.bq
  %i.ge = icmp sgt i32 %.1973, 0
  br i1 %i.ge, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.gf = trunc nuw nsw i64 %i.fq to i32
  %i.gg = add nuw nsw i32 %i.gf, 1
  %i.gh = load i64, ptr @rb_eArgError, align 8, !tbaa !64
  call void (ptr, i64, ptr, ...) @rb_enc_raise(ptr noundef %.08563075, i64 noundef %i.gh, ptr noundef nonnull @.str.38, i32 noundef range(i32 1, -2147483648) %i.gg, ptr noundef %.1869, i32 noundef %.1973) #19
  unreachable

bb.bu:                                            ; preds = %bb.bs
  %i.gi = icmp eq i32 %.1973, -1
  br i1 %i.gi, label %bb.bv, label %check_name_arg.exit

bb.bv:                                            ; preds = %bb.bu
  %i.gj = trunc nuw nsw i64 %i.fq to i32
  %i.gk = add nuw nsw i32 %i.gj, 1
  %i.gl = load i64, ptr @rb_eArgError, align 8, !tbaa !64
  call void (ptr, i64, ptr, ...) @rb_enc_raise(ptr noundef %.08563075, i64 noundef %i.gl, ptr noundef nonnull @.str.39, i32 noundef range(i32 1, -2147483648) %i.gk, ptr noundef %.1869) #19
  unreachable

check_name_arg.exit:                              ; preds = %bb.bu
  %.0..0..0.1389.a = load volatile i64, ptr %i.d, align 8, !tbaa !64
  %i.gm = icmp eq i64 %.0..0..0.1389.a, 36
  br i1 %i.gm, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %check_name_arg.exit
  %.0..0..0.1390.a = load volatile i64, ptr %i.d, align 8, !tbaa !64 ; 0 uses
  br label %get_hash.exit

bb.bx:                                            ; preds = %check_name_arg.exit
  br i1 %.not.i1216, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.gn = load i64, ptr @rb_eArgError, align 8, !tbaa !64
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.gn, ptr noundef nonnull @.str.40) #19
  unreachable

bb.bz:                                            ; preds = %bb.bx
  %i.go = load i64, ptr %1, align 8, !tbaa !64
  %i.gp = call i64 @rb_check_hash_type(i64 noundef %i.go) #20 ; 2 uses
  %i.gq = icmp eq i64 %i.gp, 4
  br i1 %i.gq, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.gr = load i64, ptr @rb_eArgError, align 8, !tbaa !64
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.gr, ptr noundef nonnull @.str.40) #19
  unreachable

bb.cb:                                            ; preds = %bb.bz
  store volatile i64 %i.gp, ptr %i.d, align 8, !tbaa !64
  br label %get_hash.exit

get_hash.exit:                                    ; preds = %bb.bw, %bb.cb
  %i.gs = getelementptr i8, ptr %.1869, i64 1     ; 2 uses
  %i.gt = shl nuw nsw i64 %i.fq, 32
  %sext = add nsw i64 %i.gt, -4294967296
  %i.gu = ashr exact i64 %sext, 32                ; 2 uses
  %i.gv = call i64 @rb_check_symbol_cstr(ptr noundef %i.gs, i64 noundef %i.gu, ptr noundef %.08563075) #20 ; 4 uses
  %i.gw = icmp eq i64 %i.gv, 4
  br i1 %i.gw, label %bb.cc, label %.thread

bb.cc:                                            ; preds = %get_hash.exit
  %i.gx = icmp eq i64 %.0966, 36
  br i1 %i.gx, label %bb.cd, label %bb.cf

.thread:                                          ; preds = %get_hash.exit
  %.0..0..0. = load volatile i64, ptr %i.d, align 8, !tbaa !64
  %i.gy = call i64 @rb_hash_lookup2(i64 noundef %.0..0..0., i64 noundef %i.gv, i64 noundef 36) #20 ; 2 uses
  %i.gz = icmp eq i64 %i.gy, 36
  br i1 %i.gz, label %.thread1432, label %bb.cf

bb.cd:                                            ; preds = %bb.cc
  %i.ha = call i64 @rb_sym_intern(ptr noundef %i.gs, i64 noundef %i.gu, ptr noundef %.08563075) #20
  br label %.thread1432

.thread1432:                                      ; preds = %.thread, %bb.cd
  %.1963 = phi i64 [ %i.ha, %bb.cd ], [ %i.gv, %.thread ] ; 3 uses
  %.0..0..0.1387 = load volatile i64, ptr %i.d, align 8, !tbaa !64
  %i.hb = call i64 @rb_hash_default_value(i64 noundef %.0..0..0.1387, i64 noundef %.1963) #20 ; 2 uses
  %i.hc = icmp eq i64 %i.hb, 4
  br i1 %i.hc, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %.thread1432
  %i.hd = trunc nuw nsw i64 %i.fq to i32
  %i.he = add nuw nsw i32 %i.hd, 1
  %i.hf = call i64 (ptr, ptr, ...) @rb_enc_sprintf(ptr noundef %.08563075, ptr noundef @.str.14, i32 noundef %i.he, ptr noundef %.1869)
  %.0..0..0.1388 = load volatile i64, ptr %i.d, align 8, !tbaa !64
  call fastcc void @rb_key_err_raise(i64 noundef %i.hf, i64 noundef %.0..0..0.1388, i64 noundef %.1963) #21
  unreachable

bb.cf:                                            ; preds = %.thread, %.thread1432, %bb.cc
  %.2968 = phi i64 [ %i.hb, %.thread1432 ], [ %.0966, %bb.cc ], [ %i.gy, %.thread ] ; 2 uses
  %.2964 = phi i64 [ %.1963, %.thread1432 ], [ 4, %bb.cc ], [ %i.gv, %.thread ]
  %i.hg = getelementptr i8, ptr %.28703049, i64 1
  br i1 %.not1159, label %get_num.exit1246.backedge, label %bb.fz

bb.cg:                                            ; preds = %get_num.exit1246
  %i.hh = and i32 %.11002, 32
  %.not1150 = icmp eq i32 %i.hh, 0
  br i1 %.not1150, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.hi = load i64, ptr @rb_eArgError, align 8, !tbaa !64
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.hi, ptr noundef nonnull @.str.9) #19
  unreachable

bb.ci:                                            ; preds = %bb.cg
  %i.hj = and i32 %.11002, 128
  %.not1151 = icmp eq i32 %i.hj, 0
  br i1 %.not1151, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.hk = load i64, ptr @rb_eArgError, align 8, !tbaa !64
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.hk, ptr noundef nonnull @.str.10) #19
  unreachable

bb.ck:                                            ; preds = %bb.ci
  %i.hl = or disjoint i32 %.11002, 32
  %i.hm = getelementptr i8, ptr %.1869, i64 1     ; 2 uses
  %i.hn = icmp ult ptr %i.hm, %i.ag
  br i1 %i.hn, label %.lr.ph.i1218, label %.critedge.i1217

.lr.ph.i1218:                                     ; preds = %bb.ck, %bb.cn
  %.01826.i1219 = phi ptr [ %i.ib, %bb.cn ], [ %i.hm, %bb.ck ] ; 5 uses
  %.01925.i1220 = phi i32 [ %i.ia, %bb.cn ], [ 0, %bb.ck ] ; 8 uses
  %i.ho = load i8, ptr %.01826.i1219, align 1, !tbaa !67
  %i.hp = sext i8 %i.ho to i32
  %i.hq = load ptr, ptr %i.cj, align 8, !tbaa !128
  %i.hr = call i32 %i.hq(i32 noundef range(i32 -128, 128) %i.hp, i32 noundef 4, ptr noundef %.08563075) #20, !inline_history !103
  %.not.i1221 = icmp eq i32 %i.hr, 0
  br i1 %.not.i1221, label %get_num.exit1224, label %bb.cl

bb.cl:                                            ; preds = %.lr.ph.i1218
  %i.hs = add i32 %.01925.i1220, -214748365
  %i.ht = icmp ult i32 %i.hs, -429496729
  br i1 %i.ht, label %bb.co, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.hu = mul nsw i32 %.01925.i1220, 10           ; 2 uses
  %i.hv = load i8, ptr %.01826.i1219, align 1, !tbaa !67
  %i.hw = sext i8 %i.hv to i32                    ; 2 uses
  %i.hx = sub i32 -2147483601, %i.hw
  %i.hy = icmp slt i32 %i.hx, %i.hu
  br i1 %i.hy, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.hz = add i32 %i.hu, -48
  %i.ia = add i32 %i.hz, %i.hw
  %i.ib = getelementptr i8, ptr %.01826.i1219, i64 1 ; 2 uses
  %exitcond.not.i1222 = icmp eq ptr %i.ib, %i.ag
  br i1 %exitcond.not.i1222, label %.critedge.i1217, label %.lr.ph.i1218, !llvm.loop !104

.critedge.i1217:                                  ; preds = %bb.ck, %bb.cn
  %i.ic = load i64, ptr @rb_eArgError, align 8, !tbaa !64
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ic, ptr noundef nonnull @.str.34) #19
  unreachable

bb.co:                                            ; preds = %bb.cm, %bb.cl
  %i.id = load i64, ptr @rb_eArgError, align 8, !tbaa !64
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.id, ptr noundef nonnull @.str.7) #19
  unreachable

get_num.exit1224:                                 ; preds = %.lr.ph.i1218
  %i.ie = load i8, ptr %.01826.i1219, align 1, !tbaa !67
  %i.if = icmp eq i8 %i.ie, 36
  br i1 %i.if, label %bb.cp, label %bb.cw

bb.cp:                                            ; preds = %get_num.exit1224
  %i.ig = icmp sgt i32 %.1973, 0
  br i1 %i.ig, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.ih = load i64, ptr @rb_eArgError, align 8, !tbaa !64
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ih, ptr noundef nonnull @.str.35, i32 noundef %.01925.i1220, i32 noundef %.1973) #19
  unreachable

bb.cr:                                            ; preds = %bb.cp
  %i.ii = icmp eq i32 %.1973, -2
  br i1 %i.ii, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.ij = load i64, ptr @rb_eArgError, align 8, !tbaa !64
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ij, ptr noundef nonnull @.str.36, i32 noundef %.01925.i1220) #19
  unreachable

bb.ct:                                            ; preds = %bb.cr
  %i.ik = icmp slt i32 %.01925.i1220, 1
  br i1 %i.ik, label %bb.cu, label %check_pos_arg.exit1225

bb.cu:                                            ; preds = %bb.ct
  %i.il = load i64, ptr @rb_eArgError, align 8, !tbaa !64
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.il, ptr noundef nonnull @.str.37, i32 noundef %.01925.i1220) #19
  unreachable

check_pos_arg.exit1225:                           ; preds = %bb.ct
  %.not1155 = icmp slt i32 %.01925.i1220, %i.q
  br i1 %.not1155, label %bb.db, label %bb.cv

bb.cv:                                            ; preds = %check_pos_arg.exit1225
  %i.im = load i64, ptr @rb_eArgError, align 8, !tbaa !64
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.im, ptr noundef nonnull @.str) #19
  unreachable

bb.cw:                                            ; preds = %get_num.exit1224
  switch i32 %.1973, label %check_next_arg.exit [
    i32 -1, label %bb.cx
    i32 -2, label %bb.cy
  ]

bb.cx:                                            ; preds = %bb.cw
  %i.in = load i64, ptr @rb_eArgError, align 8, !tbaa !64
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.in, ptr noundef nonnull @.str.41, i32 noundef %.1988) #19
  unreachable

bb.cy:                                            ; preds = %bb.cw
  %i.io = load i64, ptr @rb_eArgError, align 8, !tbaa !64
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.io, ptr noundef nonnull @.str.42, i32 noundef %.1988) #19
  unreachable

check_next_arg.exit:                              ; preds = %bb.cw
  %.not1153 = icmp slt i32 %.1988, %i.q
  br i1 %.not1153, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %check_next_arg.exit
  %i.ip = load i64, ptr @rb_eArgError, align 8, !tbaa !64
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ip, ptr noundef nonnull @.str) #19
  unreachable

bb.da:                                            ; preds = %check_next_arg.exit
  %i.iq = add nsw i32 %.1988, 1
  br label %bb.db

bb.db:                                            ; preds = %check_pos_arg.exit1225, %bb.da
  %.pn1157.in = phi i32 [ %.1988, %bb.da ], [ %.01925.i1220, %check_pos_arg.exit1225 ]
  %.2989 = phi i32 [ %i.iq, %bb.da ], [ %.1988, %check_pos_arg.exit1225 ]
  %.2974 = phi i32 [ %.1988, %bb.da ], [ -1, %check_pos_arg.exit1225 ]
  %.4872 = phi ptr [ %.1869, %bb.da ], [ %.01826.i1219, %check_pos_arg.exit1225 ]
  %.pn1157 = sext i32 %.pn1157.in to i64
  %storemerge1154.in = getelementptr [8 x i8], ptr %i.r, i64 %.pn1157
  %storemerge1154 = load i64, ptr %storemerge1154.in, align 8, !tbaa !64 ; 4 uses
  store i64 %storemerge1154, ptr %i.b, align 8, !tbaa !64
  %i.ir = trunc i64 %storemerge1154 to i1
  br i1 %i.ir, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %i.is = call i64 @rb_fix2int(i64 noundef %storemerge1154) #20
  br label %rb_num2int_inline.exit

bb.dd:                                            ; preds = %bb.db
  %i.it = call i64 @rb_num2int(i64 noundef %storemerge1154) #20
  br label %rb_num2int_inline.exit

rb_num2int_inline.exit:                           ; preds = %bb.dc, %bb.dd
  %.0.i1226 = phi i64 [ %i.is, %bb.dc ], [ %i.it, %bb.dd ]
  %i.iu = trunc i64 %.0.i1226 to i32              ; 3 uses
  %i.iv = icmp slt i32 %i.iu, 0
  br i1 %i.iv, label %bb.de, label %bb.dg

bb.de:                                            ; preds = %rb_num2int_inline.exit
  %i.iw = or i32 %.11002, 34
  %i.ix = sub i32 0, %i.iu                        ; 2 uses
  %i.iy = icmp slt i32 %i.ix, 0
  br i1 %i.iy, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.iz = load i64, ptr @rb_eArgError, align 8, !tbaa !64
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.iz, ptr noundef nonnull @.str.7) #19
  unreachable

bb.dg:                                            ; preds = %bb.de, %rb_num2int_inline.exit
  %.11009 = phi i32 [ %i.ix, %bb.de ], [ %i.iu, %rb_num2int_inline.exit ]
  %.21003 = phi i32 [ %i.iw, %bb.de ], [ %i.hl, %rb_num2int_inline.exit ]
  %i.ja = getelementptr i8, ptr %.4872, i64 1
  br label %get_num.exit1246.backedge

bb.dh:                                            ; preds = %get_num.exit1246
  %i.jb = and i32 %.11002, 128
  %.not1145 = icmp eq i32 %i.jb, 0
  br i1 %.not1145, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.jc = load i64, ptr @rb_eArgError, align 8, !tbaa !64
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.jc, ptr noundef nonnull @.str.15) #19
  unreachable

bb.dj:                                            ; preds = %bb.dh
  %i.jd = or i32 %.11002, 192                     ; 3 uses
  %i.je = getelementptr i8, ptr %.1869, i64 1     ; 4 uses
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !67
  %i.jg = icmp eq i8 %i.jf, 42
  br i1 %i.jg, label %bb.dk, label %bb.ee

bb.dk:                                            ; preds = %bb.dj
  %i.jh = getelementptr i8, ptr %.1869, i64 2     ; 2 uses
  %i.ji = icmp ult ptr %i.jh, %i.ag
  br i1 %i.ji, label %.lr.ph.i1228, label %.critedge.i1227

.lr.ph.i1228:                                     ; preds = %bb.dk, %bb.dn
  %.01826.i1229 = phi ptr [ %i.jw, %bb.dn ], [ %i.jh, %bb.dk ] ; 5 uses
  %.01925.i1230 = phi i32 [ %i.jv, %bb.dn ], [ 0, %bb.dk ] ; 8 uses
  %i.jj = load i8, ptr %.01826.i1229, align 1, !tbaa !67
  %i.jk = sext i8 %i.jj to i32
  %i.jl = load ptr, ptr %i.cj, align 8, !tbaa !128
  %i.jm = call i32 %i.jl(i32 noundef range(i32 -128, 128) %i.jk, i32 noundef 4, ptr noundef %.08563075) #20, !inline_history !103
  %.not.i1231 = icmp eq i32 %i.jm, 0
  br i1 %.not.i1231, label %get_num.exit1234, label %bb.dl

bb.dl:                                            ; preds = %.lr.ph.i1228
  %i.jn = add i32 %.01925.i1230, -214748365
  %i.jo = icmp ult i32 %i.jn, -429496729
  br i1 %i.jo, label %bb.do, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.jp = mul nsw i32 %.01925.i1230, 10           ; 2 uses
  %i.jq = load i8, ptr %.01826.i1229, align 1, !tbaa !67
  %i.jr = sext i8 %i.jq to i32                    ; 2 uses
  %i.js = sub i32 -2147483601, %i.jr
  %i.jt = icmp slt i32 %i.js, %i.jp
  br i1 %i.jt, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.ju = add i32 %i.jp, -48
  %i.jv = add i32 %i.ju, %i.jr
  %i.jw = getelementptr i8, ptr %.01826.i1229, i64 1 ; 2 uses
  %exitcond.not.i1232 = icmp eq ptr %i.jw, %i.ag
  br i1 %exitcond.not.i1232, label %.critedge.i1227, label %.lr.ph.i1228, !llvm.loop !104

.critedge.i1227:                                  ; preds = %bb.dk, %bb.dn
  %i.jx = load i64, ptr @rb_eArgError, align 8, !tbaa !64
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.jx, ptr noundef nonnull @.str.34) #19
  unreachable

bb.do:                                            ; preds = %bb.dm, %bb.dl
  %i.jy = load i64, ptr @rb_eArgError, align 8, !tbaa !64
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.jy, ptr noundef nonnull @.str.16) #19
  unreachable

get_num.exit1234:                                 ; preds = %.lr.ph.i1228
  %i.jz = load i8, ptr %.01826.i1229, align 1, !tbaa !67
  %i.ka = icmp eq i8 %i.jz, 36
  br i1 %i.ka, label %bb.dp, label %bb.dw

bb.dp:                                            ; preds = %get_num.exit1234
  %i.kb = icmp sgt i32 %.1973, 0
  br i1 %i.kb, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %bb.dp
  %i.kc = load i64, ptr @rb_eArgError, align 8, !tbaa !64
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.kc, ptr noundef nonnull @.str.35, i32 noundef %.01925.i1230, i32 noundef %.1973) #19
  unreachable

bb.dr:                                            ; preds = %bb.dp
  %i.kd = icmp eq i32 %.1973, -2
  br i1 %i.kd, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %bb.dr
  %i.ke = load i64, ptr @rb_eArgError, align 8, !tbaa !64
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ke, ptr noundef nonnull @.str.36, i32 noundef %.01925.i1230) #19
  unreachable

bb.dt:                                            ; preds = %bb.dr
  %i.kf = icmp slt i32 %.01925.i1230, 1
  br i1 %i.kf, label %bb.du, label %check_pos_arg.exit1235

bb.du:                                            ; preds = %bb.dt
  %i.kg = load i64, ptr @rb_eArgError, align 8, !tbaa !64
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.kg, ptr noundef nonnull @.str.37, i32 noundef %.01925.i1230) #19
  unreachable

check_pos_arg.exit1235:                           ; preds = %bb.dt
  %.not1149 = icmp slt i32 %.01925.i1230, %i.q
  br i1 %.not1149, label %bb.eb, label %bb.dv

bb.dv:                                            ; preds = %check_pos_arg.exit1235
  %i.kh = load i64, ptr @rb_eArgError, align 8, !tbaa !64
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.kh, ptr noundef nonnull @.str) #19
  unreachable

bb.dw:                                            ; preds = %get_num.exit1234
  switch i32 %.1973, label %check_next_arg.exit1236 [
    i32 -1, label %bb.dx
    i32 -2, label %bb.dy
  ]

bb.dx:                                            ; preds = %bb.dw
  %i.ki = load i64, ptr @rb_eArgError, align 8, !tbaa !64
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ki, ptr noundef nonnull @.str.41, i32 noundef %.1988) #19
  unreachable

bb.dy:                                            ; preds = %bb.dw
  %i.kj = load i64, ptr @rb_eArgError, align 8, !tbaa !64
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.kj, ptr noundef nonnull @.str.42, i32 noundef %.1988) #19
  unreachable

check_next_arg.exit1236:                          ; preds = %bb.dw
  %.not1148 = icmp slt i32 %.1988, %i.q
  br i1 %.not1148, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %check_next_arg.exit1236
  %i.kk = load i64, ptr @rb_eArgError, align 8, !tbaa !64
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.kk, ptr noundef nonnull @.str) #19
  unreachable

bb.ea:                                            ; preds = %check_next_arg.exit1236
  %i.kl = add nsw i32 %.1988, 1
  br label %bb.eb

bb.eb:                                            ; preds = %check_pos_arg.exit1235, %bb.ea
  %.pn1150.in = phi i32 [ %.1988, %bb.ea ], [ %.01925.i1230, %check_pos_arg.exit1235 ]
  %.3990 = phi i32 [ %i.kl, %bb.ea ], [ %.1988, %check_pos_arg.exit1235 ]
  %.3975 = phi i32 [ %.1988, %bb.ea ], [ -1, %check_pos_arg.exit1235 ]
  %.5873 = phi ptr [ %i.je, %bb.ea ], [ %.01826.i1229, %check_pos_arg.exit1235 ]
  %.pn1150 = sext i32 %.pn1150.in to i64
  %storemerge.in = getelementptr [8 x i8], ptr %i.r, i64 %.pn1150
  %storemerge = load i64, ptr %storemerge.in, align 8, !tbaa !64 ; 4 uses
  store i64 %storemerge, ptr %i.b, align 8, !tbaa !64
  %i.km = trunc i64 %storemerge to i1
  br i1 %i.km, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %bb.eb
  %i.kn = call i64 @rb_fix2int(i64 noundef %storemerge) #20
  br label %rb_num2int_inline.exit1238

bb.ed:                                            ; preds = %bb.eb
  %i.ko = call i64 @rb_num2int(i64 noundef %storemerge) #20
  br label %rb_num2int_inline.exit1238

rb_num2int_inline.exit1238:                       ; preds = %bb.ec, %bb.ed
  %.0.i1237 = phi i64 [ %i.kn, %bb.ec ], [ %i.ko, %bb.ed ]
  %i.kp = trunc i64 %.0.i1237 to i32              ; 2 uses
  %i.kq = icmp slt i32 %i.kp, 0
  %i.kr = and i32 %i.jd, -65
  %spec.select = select i1 %i.kq, i32 %i.kr, i32 %i.jd
  %i.ks = getelementptr i8, ptr %.5873, i64 1
  br label %get_num.exit1246.backedge

bb.ee:                                            ; preds = %bb.dj
  %i.kt = icmp ult ptr %i.je, %i.ag
  br i1 %i.kt, label %.lr.ph.i1240, label %.critedge.i1239

.lr.ph.i1240:                                     ; preds = %bb.ee, %bb.eh
  %.01826.i1241 = phi ptr [ %i.lh, %bb.eh ], [ %i.je, %bb.ee ] ; 4 uses
  %.01925.i1242 = phi i32 [ %i.lg, %bb.eh ], [ 0, %bb.ee ] ; 3 uses
  %i.ku = load i8, ptr %.01826.i1241, align 1, !tbaa !67
  %i.kv = sext i8 %i.ku to i32
  %i.kw = load ptr, ptr %i.cj, align 8, !tbaa !128
  %i.kx = call i32 %i.kw(i32 noundef range(i32 -128, 128) %i.kv, i32 noundef 4, ptr noundef %.08563075) #20, !inline_history !103
  %.not.i1243 = icmp eq i32 %i.kx, 0
  br i1 %.not.i1243, label %get_num.exit1246.backedge, label %bb.ef

bb.ef:                                            ; preds = %.lr.ph.i1240
  %i.ky = add i32 %.01925.i1242, -214748365
  %i.kz = icmp ult i32 %i.ky, -429496729
  br i1 %i.kz, label %bb.ei, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.la = mul nsw i32 %.01925.i1242, 10           ; 2 uses
  %i.lb = load i8, ptr %.01826.i1241, align 1, !tbaa !67
  %i.lc = sext i8 %i.lb to i32                    ; 2 uses
  %i.ld = sub i32 -2147483601, %i.lc
  %i.le = icmp slt i32 %i.ld, %i.la
  br i1 %i.le, label %bb.ei, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.lf = add i32 %i.la, -48
  %i.lg = add i32 %i.lf, %i.lc
  %i.lh = getelementptr i8, ptr %.01826.i1241, i64 1 ; 2 uses
  %exitcond.not.i1244 = icmp eq ptr %i.lh, %i.ag
  br i1 %exitcond.not.i1244, label %.critedge.i1239, label %.lr.ph.i1240, !llvm.loop !104

.critedge.i1239:                                  ; preds = %bb.ee, %bb.eh
  %i.li = load i64, ptr @rb_eArgError, align 8, !tbaa !64
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.li, ptr noundef nonnull @.str.34) #19
  unreachable

bb.ei:                                            ; preds = %bb.eg, %bb.ef
  %i.lj = load i64, ptr @rb_eArgError, align 8, !tbaa !64
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.lj, ptr noundef nonnull @.str.17) #19
  unreachable

bb.ej:                                            ; preds = %get_num.exit1246
  %.not1144 = icmp eq i32 %.11002, 0
  br i1 %.not1144, label %bb.el, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.lk = load i64, ptr @rb_eArgError, align 8, !tbaa !64
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.lk, ptr noundef nonnull @.str.18) #19
  unreachable

bb.el:                                            ; preds = %bb.ej
  %i.ll = load i64, ptr %i.aj, align 8, !tbaa !66
  %i.lm = and i64 %i.ll, 3145728
  br label %bb.em

bb.em:                                            ; preds = %bb.en, %bb.el
  %.2922 = phi i64 [ %.1921, %bb.el ], [ %i.lp, %bb.en ] ; 4 uses
  %i.ln = sub i64 %.2922, %i.by
  %i.lo = icmp slt i64 %i.ln, 1
  br i1 %i.lo, label %bb.en, label %bb.ep

bb.en:                                            ; preds = %bb.em
  %i.lp = shl i64 %.2922, 1                       ; 2 uses
  %i.lq = icmp slt i64 %i.lp, 0
  br i1 %i.lq, label %bb.eo, label %bb.em, !llvm.loop !106

bb.eo:                                            ; preds = %bb.en
  %i.lr = load i64, ptr @rb_eArgError, align 8, !tbaa !64
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.lr, ptr noundef nonnull @.str.2) #19
  unreachable

bb.ep:                                            ; preds = %bb.em
  %i.ls = call i64 @rb_str_resize(i64 noundef %i.ah, i64 noundef %.2922) #20 ; 0 uses
  %i.lt = load i64, ptr %i.aj, align 8, !tbaa !66 ; 2 uses
  %i.lu = and i64 %i.lt, -3145729
  %i.lv = or disjoint i64 %i.lu, %i.lm
  store i64 %i.lv, ptr %i.aj, align 8, !tbaa !66
  %i.lw = and i64 %i.lt, 8192
  %.not.i1247 = icmp eq i64 %i.lw, 0
  br i1 %.not.i1247, label %RSTRING_PTR.exit1248, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.lx = load ptr, ptr %i.am, align 8, !tbaa !67
  br label %RSTRING_PTR.exit1248

RSTRING_PTR.exit1248:                             ; preds = %bb.ep, %bb.eq
  %i.ly = phi ptr [ %i.lx, %bb.eq ], [ %i.am, %bb.ep ] ; 2 uses
  %i.lz = getelementptr i8, ptr %i.ly, i64 %i.by
  store i8 37, ptr %i.lz, align 1
  %i.ma = add i64 %i.by, 1
  br label %.thread1444

bb.er:                                            ; preds = %get_num.exit1246
  %i.mb = icmp eq i64 %.0966, 36
  br i1 %i.mb, label %bb.es, label %bb.ex

bb.es:                                            ; preds = %bb.er
  switch i32 %.1973, label %check_next_arg.exit1250 [
    i32 -1, label %bb.et
    i32 -2, label %bb.eu
  ]

bb.et:                                            ; preds = %bb.es
  %i.mc = load i64, ptr @rb_eArgError, align 8, !tbaa !64
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.mc, ptr noundef nonnull @.str.41, i32 noundef %.1988) #19
  unreachable

bb.eu:                                            ; preds = %bb.es
  %i.md = load i64, ptr @rb_eArgError, align 8, !tbaa !64
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.md, ptr noundef nonnull @.str.42, i32 noundef %.1988) #19
  unreachable

check_next_arg.exit1250:                          ; preds = %bb.es
  %.not1140 = icmp slt i32 %.1988, %i.q
  br i1 %.not1140, label %bb.ew, label %bb.ev

bb.ev:                                            ; preds = %check_next_arg.exit1250
  %i.me = load i64, ptr @rb_eArgError, align 8, !tbaa !64
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.me, ptr noundef nonnull @.str) #19
  unreachable

bb.ew:                                            ; preds = %check_next_arg.exit1250
  %i.mf = add nsw i32 %.1988, 1
  %i.mg = sext i32 %.1988 to i64
  %i.mh = getelementptr [8 x i8], ptr %i.r, i64 %i.mg
  %i.mi = load i64, ptr %i.mh, align 8, !tbaa !64
  br label %bb.ex

bb.ex:                                            ; preds = %bb.er, %bb.ew
  %.4991 = phi i32 [ %i.mf, %bb.ew ], [ %.1988, %bb.er ] ; 5 uses
  %.4976 = phi i32 [ %.1988, %bb.ew ], [ %.1973, %bb.er ] ; 5 uses
  %i.mj = phi i64 [ %i.mi, %bb.ew ], [ %.0966, %bb.er ] ; 4 uses
  %i.mk = call i64 @rb_check_string_type(i64 noundef %i.mj) #20 ; 2 uses
  %i.ml = icmp eq i64 %i.mk, 4
  br i1 %i.ml, label %bb.ey, label %bb.fy

bb.ey:                                            ; preds = %bb.ex
  %i.mm = trunc i64 %i.mj to i1
  br i1 %i.mm, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %bb.ey
  %i.mn = call i64 @rb_fix2int(i64 noundef %i.mj) #20
  br label %rb_num2int_inline.exit1252

bb.fa:                                            ; preds = %bb.ey
  %i.mo = call i64 @rb_num2int(i64 noundef %i.mj) #20
  br label %rb_num2int_inline.exit1252

rb_num2int_inline.exit1252:                       ; preds = %bb.ez, %bb.fa
  %.0.i1251 = phi i64 [ %i.mn, %bb.ez ], [ %i.mo, %bb.fa ]
  %i.mp = trunc i64 %.0.i1251 to i32              ; 6 uses
  %i.mq = icmp sgt i32 %i.mp, -1
  br i1 %i.mq, label %bb.fb, label %.thread1442

bb.fb:                                            ; preds = %rb_num2int_inline.exit1252
  %i.mr = call i32 @rb_enc_codelen(i32 noundef %i.mp, ptr noundef %.08563075) #20 ; 5 uses
  %i.ms = icmp slt i32 %i.mr, 1
  br i1 %i.ms, label %.thread1442, label %bb.fc

.thread1442:                                      ; preds = %rb_num2int_inline.exit1252, %bb.fb
  %i.mt = load i64, ptr @rb_eArgError, align 8, !tbaa !64
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.mt, ptr noundef nonnull @.str.20) #19
  unreachable

bb.fc:                                            ; preds = %bb.fb
  %i.mu = call i32 @rb_ascii8bit_appendable_encoding_index(ptr noundef %.08563075, i32 noundef %i.mp) #20 ; 4 uses
  %i.mv = icmp sgt i32 %i.mu, -1
  br i1 %i.mv, label %bb.fd, label %bb.ff

bb.fd:                                            ; preds = %bb.fc
  %i.mw = call i32 @rb_enc_to_index(ptr noundef %.08563075) #22
  %.not1141 = icmp eq i32 %i.mu, %i.mw
  br i1 %.not1141, label %bb.ff, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
end_hunk_0
