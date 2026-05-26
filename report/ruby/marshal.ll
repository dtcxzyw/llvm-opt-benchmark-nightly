inline.NumInlined: 424
inline.NumDeleted: 93
begin_hunk_0_@w_object:bb.a
  %i.fz = load i64, ptr @s_mdump, align 8, !tbaa !11
  %i.ga = call i32 @rb_obj_respond_to(i64 noundef %0, i64 noundef %i.fz, i32 noundef 1) #21
  %.not159 = icmp eq i32 %i.ga, 0
  br i1 %.not159, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gb = load ptr, ptr %i.ec, align 8, !tbaa !38
  %i.gc = getelementptr i8, ptr %1, i64 56        ; 2 uses
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !42 ; 2 uses
  %i.ge = add i64 %i.gd, 1
  store i64 %i.ge, ptr %i.gc, align 8, !tbaa !42
  call void @rb_st_add_direct(ptr noundef %i.gb, i64 noundef %0, i64 noundef %i.gd) #21
  %i.gf = load i64, ptr @s_mdump, align 8, !tbaa !11
  %i.gg = call fastcc i64 @check_userdump_arg(i64 noundef %0, i64 noundef %i.gf, i32 noundef 0, ptr noundef null, ptr noundef nonnull %1, ptr noundef nonnull @.str.7)
  call fastcc void @w_class(i8 noundef signext 85, i64 noundef %0, ptr noundef nonnull %1, i32 noundef 0)
  call fastcc void @w_object(i64 noundef %i.gg, ptr noundef nonnull %1, i32 noundef %spec.select)
  br label %.critedge178

bb.au:                                            ; preds = %bb.as
  %i.gh = load i64, ptr @s_dump, align 8, !tbaa !11
  %i.gi = call i32 @rb_obj_respond_to(i64 noundef %0, i64 noundef %i.gh, i32 noundef 1) #21
  %.not160 = icmp eq i32 %i.gi, 0
  br i1 %.not160, label %bb.bh, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #21
  store i64 36, ptr %i.o, align 8, !tbaa !11
  %i.gj = getelementptr i8, ptr %1, i64 48        ; 4 uses
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !45 ; 2 uses
  %.not170 = icmp eq ptr %i.gk, null
  br i1 %.not170, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gl = call i32 @rb_st_lookup(ptr noundef nonnull %i.gk, i64 noundef %0, ptr noundef null) #21
  %.not171 = icmp eq i32 %i.gl, 0
  br i1 %.not171, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gm = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !11
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.gm, ptr noundef nonnull @.str.31) #22
  unreachable

bb.ay:                                            ; preds = %bb.aw, %bb.av
  %i.gn = sext i32 %spec.select to i64
  %i.go = shl nsw i64 %i.gn, 1
  %i.gp = or disjoint i64 %i.go, 1
  store i64 %i.gp, ptr %i.n, align 8, !tbaa !11
  %i.gq = load i64, ptr @s_dump, align 8, !tbaa !11
  %i.gr = call fastcc i64 @check_userdump_arg(i64 noundef %0, i64 noundef %i.gq, i32 noundef 1, ptr noundef nonnull %i.n, ptr noundef nonnull %1, ptr noundef nonnull @.str.5) ; 4 uses
  store i64 %i.gr, ptr %i.n, align 8, !tbaa !11
  %i.gs = icmp eq i64 %i.gr, 0
  %i.gt = and i64 %i.gr, 7
  %i.gu = icmp ne i64 %i.gt, 0
  %i.gv = or i1 %i.gs, %i.gu
  br i1 %i.gv, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.ay
  %i.gw = inttoptr i64 %i.gr to ptr
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !59
  %i.gy = and i64 %i.gx, 31
  %i.gz = icmp eq i64 %i.gy, 5
  br i1 %i.gz, label %bb.az, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %bb.ay, %rbimpl_RB_TYPE_P_fastpath.exit
  %i.ha = load i64, ptr @rb_eTypeError, align 8, !tbaa !11
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ha, ptr noundef nonnull @.str.32) #22
  unreachable

bb.az:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.hb = call fastcc i64 @encoding_name(i64 noundef %0, ptr noundef nonnull %1) ; 2 uses
  %i.hc = call fastcc i64 @has_ivars(i64 noundef %0, i64 noundef %i.hb, ptr noundef %i.l) ; 2 uses
  %i.hd = load i64, ptr %i.n, align 8, !tbaa !11  ; 2 uses
  %i.he = call fastcc i64 @encoding_name(i64 noundef %i.hd, ptr noundef nonnull %1) ; 2 uses
  %i.hf = call fastcc i64 @has_ivars(i64 noundef %i.hd, i64 noundef %i.he, ptr noundef %i.o) ; 2 uses
  %.not172 = icmp eq i64 %i.hf, 0
  br i1 %.not172, label %bb.ba, label %.thread

.thread:                                          ; preds = %bb.az
  %i.hg = load i64, ptr %i.o, align 8, !tbaa !11
  store i64 %i.hg, ptr %i.l, align 8, !tbaa !11
  br label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %.not173 = icmp eq i64 %i.hc, 0
  br i1 %.not173, label %.critedge, label %bb.bb

bb.bb:                                            ; preds = %.thread, %bb.ba
  %.0140239 = phi i64 [ %i.hf, %.thread ], [ %i.hc, %bb.ba ]
  %.0142238 = phi i64 [ %i.he, %.thread ], [ %i.hb, %bb.ba ]
  call fastcc void @w_byte(i8 noundef signext 73, ptr noundef nonnull %1)
  call fastcc void @w_class(i8 noundef signext 117, i64 noundef %0, ptr noundef nonnull %1, i32 noundef 0)
  %i.hh = load i64, ptr %i.n, align 8, !tbaa !11
  %i.hi = inttoptr i64 %i.hh to ptr               ; 3 uses
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !59
  %i.hk = and i64 %i.hj, 8192
  %.not.i192 = icmp eq i64 %i.hk, 0
  %i.hl = getelementptr i8, ptr %i.hi, i64 24     ; 2 uses
  br i1 %.not.i192, label %RSTRING_PTR.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !21
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.bb, %bb.bc
  %i.hn = phi ptr [ %i.hm, %bb.bc ], [ %i.hl, %bb.bb ]
  %i.ho = getelementptr i8, ptr %i.hi, i64 16
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !40
  call fastcc void @w_bytes(ptr noundef %i.hn, i64 noundef %i.hp, ptr noundef nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #21
  store i64 %0, ptr %i.p, align 8, !tbaa !11
  %i.hq = load ptr, ptr %i.gj, align 8, !tbaa !45 ; 2 uses
  %.not174 = icmp eq ptr %i.hq, null
  br i1 %.not174, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %RSTRING_PTR.exit
  %i.hr = call ptr @rb_init_identtable() #21      ; 2 uses
  store ptr %i.hr, ptr %i.gj, align 8, !tbaa !45
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %RSTRING_PTR.exit
  %i.hs = phi ptr [ %i.hr, %bb.bd ], [ %i.hq, %RSTRING_PTR.exit ]
  call void @rb_st_add_direct(ptr noundef %i.hs, i64 noundef %0, i64 noundef 0) #21
  %i.ht = load i64, ptr %i.l, align 8, !tbaa !11
  call fastcc void @w_ivar(i64 noundef %.0140239, i64 noundef %i.ht, i64 noundef %.0142238, ptr noundef %3)
  %i.hu = load ptr, ptr %i.gj, align 8, !tbaa !45
  %i.hv = call i32 @rb_st_delete(ptr noundef %i.hu, ptr noundef nonnull %i.p, ptr noundef null) #21 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #21
  br label %bb.bg

.critedge:                                        ; preds = %bb.ba
  call fastcc void @w_class(i8 noundef signext 117, i64 noundef %0, ptr noundef nonnull %1, i32 noundef 0)
  %i.hw = load i64, ptr %i.n, align 8, !tbaa !11
  %i.hx = inttoptr i64 %i.hw to ptr               ; 3 uses
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !59
  %i.hz = and i64 %i.hy, 8192
  %.not.i193 = icmp eq i64 %i.hz, 0
  %i.ia = getelementptr i8, ptr %i.hx, i64 24     ; 2 uses
  br i1 %.not.i193, label %RSTRING_PTR.exit194, label %bb.bf

bb.bf:                                            ; preds = %.critedge
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !21
  br label %RSTRING_PTR.exit194

RSTRING_PTR.exit194:                              ; preds = %.critedge, %bb.bf
  %i.ic = phi ptr [ %i.ib, %bb.bf ], [ %i.ia, %.critedge ]
  %i.id = getelementptr i8, ptr %i.hx, i64 16
  %i.ie = load i64, ptr %i.id, align 8, !tbaa !40
  call fastcc void @w_bytes(ptr noundef %i.ic, i64 noundef %i.ie, ptr noundef nonnull %1)
  br label %bb.bg

bb.bg:                                            ; preds = %RSTRING_PTR.exit194, %bb.be
  %i.if = load ptr, ptr %i.ec, align 8, !tbaa !38
  %i.ig = getelementptr i8, ptr %1, i64 56        ; 2 uses
  %i.ih = load i64, ptr %i.ig, align 8, !tbaa !42 ; 2 uses
  %i.ii = add i64 %i.ih, 1
  store i64 %i.ii, ptr %i.ig, align 8, !tbaa !42
  call void @rb_st_add_direct(ptr noundef %i.if, i64 noundef %0, i64 noundef %i.ih) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #21
  br label %.critedge178

bb.bh:                                            ; preds = %bb.au
  %i.ij = load ptr, ptr %i.ec, align 8, !tbaa !38
  %i.ik = getelementptr i8, ptr %1, i64 56        ; 2 uses
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !42 ; 2 uses
  %i.im = add i64 %i.il, 1
  store i64 %i.im, ptr %i.ik, align 8, !tbaa !42
  call void @rb_st_add_direct(ptr noundef %i.ij, i64 noundef %0, i64 noundef %i.il) #21
  %i.in = call fastcc i64 @encoding_name(i64 noundef %0, ptr noundef nonnull %1) ; 2 uses
  %i.io = call fastcc i64 @has_ivars(i64 noundef %0, i64 noundef %i.in, ptr noundef %i.l) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #21
  %i.ip = load i64, ptr %i.fs, align 8, !tbaa !68
  %i.iq = call ptr @rb_get_alloc_func(i64 noundef %i.ip) #21
  %i.ir = load ptr, ptr @compat_allocator_tbl, align 8, !tbaa !13
  %i.is = ptrtoint ptr %i.iq to i64
  %i.it = call i32 @rb_st_lookup(ptr noundef %i.ir, i64 noundef %i.is, ptr noundef nonnull %i.q) #21
  %.not161 = icmp eq i32 %i.it, 0
  br i1 %.not161, label %bb.bl, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.iu = load i64, ptr %i.q, align 8, !tbaa !11
  %i.iv = inttoptr i64 %i.iu to ptr
  %i.iw = getelementptr i8, ptr %i.iv, i64 16
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !19
  %i.iy = call i64 %i.ix(i64 noundef %0) #21      ; 5 uses
  store i64 %i.iy, ptr %i.k, align 8, !tbaa !11
  %i.iz = getelementptr i8, ptr %1, i64 32        ; 2 uses
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !43 ; 2 uses
  %.not162 = icmp eq ptr %i.ja, null
  br i1 %.not162, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.jb = call ptr @rb_init_identtable() #21      ; 2 uses
  store ptr %i.jb, ptr %i.iz, align 8, !tbaa !43
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.jc = phi ptr [ %i.jb, %bb.bj ], [ %i.ja, %bb.bi ]
  %i.jd = call i32 @rb_st_insert(ptr noundef %i.jc, i64 noundef %i.iy, i64 noundef %0) #21 ; 0 uses
  %.not163 = icmp ne i64 %i.iy, %0
  %i.je = load i64, ptr %i.l, align 8
  %.fr = freeze i64 %i.je
  %i.jf = icmp eq i64 %.fr, 36
  %or.cond263 = and i1 %.not163, %i.jf
  br i1 %or.cond263, label %.thread240, label %bb.bl

.thread240:                                       ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #21
  br label %bb.bn

bb.bl:                                            ; preds = %bb.bk, %bb.bh
  %i.jg = phi i64 [ %i.iy, %bb.bk ], [ %0, %bb.bh ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #21
  %.not164 = icmp eq i64 %i.io, 0
  br i1 %.not164, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  call fastcc void @w_byte(i8 noundef signext 73, ptr noundef nonnull %1)
  br label %bb.bn

bb.bn:                                            ; preds = %.thread240, %bb.bm, %bb.bl
  %i.jh = phi i64 [ %i.iy, %.thread240 ], [ %i.jg, %bb.bm ], [ %i.jg, %bb.bl ] ; 28 uses
  %.2243 = phi i64 [ 0, %.thread240 ], [ %i.io, %bb.bm ], [ 0, %bb.bl ] ; 2 uses
  %i.ji = inttoptr i64 %i.jh to ptr               ; 25 uses
  %i.jj = load i64, ptr %i.ji, align 8, !tbaa !59 ; 2 uses
  %i.jk = trunc i64 %i.jj to i32
  %i.jl = and i32 %i.jk, 31
  switch i32 %i.jl, label %bb.de [
    i32 2, label %bb.bo
    i32 3, label %bb.br
    i32 4, label %bb.bt
    i32 10, label %bb.bx
    i32 5, label %bb.cc
    i32 6, label %bb.ce
    i32 7, label %bb.cg
    i32 8, label %bb.co
    i32 9, label %bb.cu
    i32 1, label %bb.da
    i32 12, label %bb.db
  ]

bb.bo:                                            ; preds = %bb.bn
  %i.jm = icmp eq i64 %i.jh, 0
  %i.jn = and i64 %i.jh, 7
  %i.jo = icmp ne i64 %i.jn, 0
  %.not5.i.not261 = or i1 %i.jm, %i.jo
  %i.jp = and i64 %i.jj, 8192
  %.not169 = icmp eq i64 %i.jp, 0
  %or.cond257 = or i1 %.not5.i.not261, %.not169
  br i1 %or.cond257, label %RB_FL_TEST.exit.thread, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.jq = load i64, ptr @rb_eTypeError, align 8, !tbaa !11
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.jq, ptr noundef nonnull @.str.33) #22
  unreachable

RB_FL_TEST.exit.thread:                           ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #21
  %i.jr = call fastcc i64 @class2path(i64 noundef %i.jh) ; 3 uses
  store i64 %i.jr, ptr %i.r, align 8, !tbaa !11
  %i.js = call fastcc i64 @w_encivar(i64 noundef %i.jr, ptr noundef nonnull %1)
  call fastcc void @w_byte(i8 noundef signext 99, ptr noundef nonnull %1)
  %i.jt = inttoptr i64 %i.jr to ptr               ; 3 uses
  %i.ju = load i64, ptr %i.jt, align 8, !tbaa !59
  %i.jv = and i64 %i.ju, 8192
  %.not.i196 = icmp eq i64 %i.jv, 0
  %i.jw = getelementptr i8, ptr %i.jt, i64 24     ; 2 uses
  br i1 %.not.i196, label %RSTRING_PTR.exit197, label %bb.bq

bb.bq:                                            ; preds = %RB_FL_TEST.exit.thread
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !21
  br label %RSTRING_PTR.exit197

RSTRING_PTR.exit197:                              ; preds = %RB_FL_TEST.exit.thread, %bb.bq
  %i.jy = phi ptr [ %i.jx, %bb.bq ], [ %i.jw, %RB_FL_TEST.exit.thread ]
  %i.jz = getelementptr i8, ptr %i.jt, i64 16
  %i.ka = load i64, ptr %i.jz, align 8, !tbaa !40
  call fastcc void @w_bytes(ptr noundef %i.jy, i64 noundef %i.ka, ptr noundef nonnull %1)
  call fastcc void @w_encname(i64 noundef %i.js, ptr noundef nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #21
  store ptr %i.r, ptr %i.s, align 8, !tbaa !46
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.s) #21, !srcloc !69
  %i.kb = load ptr, ptr %i.s, align 8, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #21
  %i.kc = load volatile i64, ptr %i.kb, align 8, !tbaa !11 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #21
  br label %.loopexit

bb.br:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #21
  %i.kd = call fastcc i64 @class2path(i64 noundef %i.jh) ; 3 uses
  store i64 %i.kd, ptr %i.t, align 8, !tbaa !11
  %i.ke = call fastcc i64 @w_encivar(i64 noundef %i.kd, ptr noundef nonnull %1)
  call fastcc void @w_byte(i8 noundef signext 109, ptr noundef nonnull %1)
  %i.kf = inttoptr i64 %i.kd to ptr               ; 3 uses
  %i.kg = load i64, ptr %i.kf, align 8, !tbaa !59
  %i.kh = and i64 %i.kg, 8192
  %.not.i198 = icmp eq i64 %i.kh, 0
  %i.ki = getelementptr i8, ptr %i.kf, i64 24     ; 2 uses
  br i1 %.not.i198, label %RSTRING_PTR.exit199, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !21
  br label %RSTRING_PTR.exit199

RSTRING_PTR.exit199:                              ; preds = %bb.br, %bb.bs
  %i.kk = phi ptr [ %i.kj, %bb.bs ], [ %i.ki, %bb.br ]
  %i.kl = getelementptr i8, ptr %i.kf, i64 16
  %i.km = load i64, ptr %i.kl, align 8, !tbaa !40
  call fastcc void @w_bytes(ptr noundef %i.kk, i64 noundef %i.km, ptr noundef nonnull %1)
  call fastcc void @w_encname(i64 noundef %i.ke, ptr noundef nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #21
  store ptr %i.t, ptr %i.u, align 8, !tbaa !46
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.u) #21, !srcloc !70
  %i.kn = load ptr, ptr %i.u, align 8, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #21
  %i.ko = load volatile i64, ptr %i.kn, align 8, !tbaa !11 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #21
  br label %.loopexit

bb.bt:                                            ; preds = %bb.bn
  call fastcc void @w_byte(i8 noundef signext 102, ptr noundef nonnull %1)
  %i.kp = and i64 %i.jh, 3
  %i.kq = icmp eq i64 %i.kp, 2
  br i1 %i.kq, label %bb.bu, label %bb.bw

bb.bu:                                            ; preds = %bb.bt
  %.not.i.i201 = icmp eq i64 %i.jh, -9223372036854775806
  br i1 %.not.i.i201, label %rb_float_value_inline.exit203, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %.neg.i.i202 = ashr i64 %i.jh, 63
  %i.kr = add nsw i64 %.neg.i.i202, 2
  %i.ks = and i64 %i.jh, -4
  %i.kt = or i64 %i.kr, %i.ks                     ; 2 uses
  %i.ku = call noundef i64 @llvm.fshl.i64(i64 range(i64 1, 0) %i.kt, i64 range(i64 1, 0) %i.kt, i64 61)
  %i.kv = bitcast i64 %i.ku to double
  br label %rb_float_value_inline.exit203

bb.bw:                                            ; preds = %bb.bt
  %i.kw = getelementptr i8, ptr %i.ji, i64 16
  %i.kx = load double, ptr %i.kw, align 8, !tbaa !71
  br label %rb_float_value_inline.exit203

rb_float_value_inline.exit203:                    ; preds = %bb.bu, %bb.bv, %bb.bw
  %.0.i200 = phi double [ %i.kx, %bb.bw ], [ %i.kv, %bb.bv ], [ 0.000000e+00, %bb.bu ]
  call fastcc void @w_float(double noundef %.0.i200, ptr noundef nonnull %1)
  br label %.loopexit

bb.bx:                                            ; preds = %bb.bn
  call fastcc void @w_byte(i8 noundef signext 108, ptr noundef nonnull %1)
  %i.ky = load i64, ptr %i.ji, align 8, !tbaa !59 ; 3 uses
  %i.kz = and i64 %i.ky, 8192
  %.not258 = icmp eq i64 %i.kz, 0
  %i.la = and i64 %i.ky, 16384
  %.not.i204 = icmp eq i64 %i.la, 0
  br i1 %.not.i204, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.lb = lshr i64 %i.ky, 15
  %i.lc = and i64 %i.lb, 511
  %i.ld = getelementptr i8, ptr %i.ji, i64 16
  br label %BIGNUM_DIGITS.exit

bb.bz:                                            ; preds = %bb.bx
  %i.le = getelementptr i8, ptr %i.ji, i64 16
  %i.lf = load i64, ptr %i.le, align 8, !tbaa !21
  %i.lg = getelementptr i8, ptr %i.ji, i64 24
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !21
  br label %BIGNUM_DIGITS.exit

BIGNUM_DIGITS.exit:                               ; preds = %bb.by, %bb.bz
  %.0.i205247 = phi i64 [ %i.lc, %bb.by ], [ %i.lf, %bb.bz ] ; 3 uses
  %.0.i207 = phi ptr [ %i.ld, %bb.by ], [ %i.lh, %bb.bz ] ; 2 uses
  %i.li = add i64 %.0.i205247, -1                 ; 3 uses
  %i.lj = getelementptr [4 x i8], ptr %.0.i207, i64 %i.li
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !7  ; 2 uses
  %.not7.i = icmp eq i32 %i.lk, 0
  br i1 %.not7.i, label %shortlen.exit, label %.lr.ph.i208

.lr.ph.i208:                                      ; preds = %BIGNUM_DIGITS.exit, %.lr.ph.i208
  %.09.i = phi i32 [ %i.lm, %.lr.ph.i208 ], [ 0, %BIGNUM_DIGITS.exit ]
  %.068.i = phi i32 [ %i.ll, %.lr.ph.i208 ], [ %i.lk, %BIGNUM_DIGITS.exit ]
  %i.ll = lshr i32 %.068.i, 16                    ; 2 uses
  %i.lm = add nuw nsw i32 %.09.i, 1               ; 2 uses
  %.not.i209 = icmp eq i32 %i.ll, 0
  br i1 %.not.i209, label %._crit_edge.loopexit.i, label %.lr.ph.i208, !llvm.loop !74

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i208
  %i.ln = zext nneg i32 %i.lm to i64
  br label %shortlen.exit

shortlen.exit:                                    ; preds = %BIGNUM_DIGITS.exit, %._crit_edge.loopexit.i
  %.0.lcssa.i = phi i64 [ 0, %BIGNUM_DIGITS.exit ], [ %i.ln, %._crit_edge.loopexit.i ]
  %i.lo = shl i64 %i.li, 1
  %i.lp = and i64 %i.lo, 9223372036854775806
  %i.lq = add nuw i64 %.0.lcssa.i, %i.lp          ; 2 uses
  %i.lr = icmp slt i64 %i.lq, 0
  br i1 %i.lr, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %shortlen.exit
  %i.ls = load i64, ptr @rb_eTypeError, align 8, !tbaa !11
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ls, ptr noundef nonnull @.str.34) #22
  unreachable

end_hunk_0
begin_hunk_1_@w_extended:bb.a
  %i.ed = getelementptr i8, ptr %.0.i88, i64 125
  %i.ee = load i8, ptr %i.ed, align 1
  %i.ef = and i8 %i.ee, 8
  %.not23 = icmp eq i8 %i.ef, 0
  %.phi.trans.insert = getelementptr i8, ptr %i.dj, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !68 ; 2 uses
  br i1 %.not23, label %RCLASS_EXT_READABLE.exit104._crit_edge, label %bb.aj

bb.aj:                                            ; preds = %RCLASS_EXT_READABLE.exit104
  %i.eg = inttoptr i64 %.pre to ptr
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !59
  %i.ei = and i64 %i.eh, 31
  %.not24 = icmp eq i64 %i.ei, 3
  br i1 %.not24, label %bb.ap, label %RCLASS_EXT_READABLE.exit104._crit_edge

RCLASS_EXT_READABLE.exit104._crit_edge:           ; preds = %RCLASS_EXT_READABLE.exit104, %bb.aj
  %i.ej = call i64 @rb_class_name(i64 noundef %.pre) #21 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 101, ptr %i.b, align 1, !tbaa !21
  %i.ek = load i64, ptr %1, align 8, !tbaa !39    ; 4 uses
  %i.el = call i64 @rb_str_cat(i64 noundef %i.ek, ptr noundef nonnull %i.b, i64 noundef 1) #21 ; 0 uses
  %i.em = load i64, ptr %i.dh, align 8, !tbaa !35 ; 2 uses
  %.not.i.i105 = icmp eq i64 %i.em, 0
  br i1 %.not.i.i105, label %w_byte.exit, label %bb.ak

bb.ak:                                            ; preds = %RCLASS_EXT_READABLE.exit104._crit_edge
  %i.en = inttoptr i64 %i.ek to ptr
  %i.eo = getelementptr i8, ptr %i.en, i64 16
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !40
  %i.eq = icmp sgt i64 %i.ep, 8191
  br i1 %i.eq, label %bb.al, label %w_byte.exit

bb.al:                                            ; preds = %bb.ak
  %i.er = call i64 @rb_io_write(i64 noundef %i.em, i64 noundef %i.ek) #21 ; 0 uses
  %i.es = call i64 @rb_str_resize(i64 noundef %i.ek, i64 noundef 0) #21 ; 0 uses
  br label %w_byte.exit

w_byte.exit:                                      ; preds = %RCLASS_EXT_READABLE.exit104._crit_edge, %bb.ak, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.et = inttoptr i64 %i.ej to ptr               ; 2 uses
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !59
  %i.ev = and i64 %i.eu, 8192
  %.not.i.i126 = icmp eq i64 %i.ev, 0
  %i.ew = getelementptr i8, ptr %i.et, i64 24     ; 2 uses
  br i1 %.not.i.i126, label %RSTRING_PTR.exit.i, label %bb.am

bb.am:                                            ; preds = %w_byte.exit
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !21
  br label %RSTRING_PTR.exit.i

RSTRING_PTR.exit.i:                               ; preds = %bb.am, %w_byte.exit
  %i.ey = phi ptr [ %i.ex, %bb.am ], [ %i.ew, %w_byte.exit ]
  %i.ez = call ptr @rb_enc_get(i64 noundef %i.ej) #21 ; 2 uses
  %i.fa = getelementptr i8, ptr %i.ez, i64 20
  %.val.i.i = load i32, ptr %i.fa, align 4, !tbaa !88
  %.not.i7.i = icmp eq i32 %.val.i.i, 1
  br i1 %.not.i7.i, label %rb_enc_asciicompat.exit.i, label %rb_enc_asciicompat.exit.thread.i

rb_enc_asciicompat.exit.i:                        ; preds = %RSTRING_PTR.exit.i
  %i.fb = call i32 @rb_enc_dummy_p(ptr noundef nonnull readonly %i.ez) #26
  %.not3.i.i = icmp eq i32 %i.fb, 0
  br i1 %.not3.i.i, label %bb.an, label %rb_enc_asciicompat.exit.thread.i

rb_enc_asciicompat.exit.thread.i:                 ; preds = %rb_enc_asciicompat.exit.i, %RSTRING_PTR.exit.i
  %i.fc = load i64, ptr @rb_eTypeError, align 8, !tbaa !11
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.fc, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.50, i64 noundef %i.ej) #22
  unreachable

bb.an:                                            ; preds = %rb_enc_asciicompat.exit.i
  %i.fd = load i8, ptr %i.ey, align 1, !tbaa !21
  %i.fe = icmp eq i8 %i.fd, 35
  br i1 %i.fe, label %bb.ao, label %must_not_be_anonymous.exit

bb.ao:                                            ; preds = %bb.an
  %i.ff = load i64, ptr @rb_eTypeError, align 8, !tbaa !11
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ff, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.50, i64 noundef %i.ej) #22
  unreachable

must_not_be_anonymous.exit:                       ; preds = %bb.an
  %i.fg = call i64 @rb_str_intern(i64 noundef %i.ej) #21, !inline_history !90
  call fastcc void @w_symbol(i64 noundef %i.fg, ptr noundef nonnull %1), !inline_history !90
  br label %bb.ap

bb.ap:                                            ; preds = %must_not_be_anonymous.exit, %bb.aj
  %i.fh = load i64, ptr %i.dj, align 8, !tbaa !59
  %i.fi = and i64 %i.fh, 65536
  %.not.i.i106 = icmp eq i64 %i.fi, 0
  br i1 %.not.i.i106, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i124, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i107

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i107:       ; preds = %bb.ap
  %i.fj = getelementptr i8, ptr %i.dj, i64 160    ; 2 uses
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !93
  %i.fl = icmp eq ptr %i.fk, null
  br i1 %i.fl, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i124, label %bb.aq

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i124: ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i107, %bb.ap
  %i.fm = getelementptr i8, ptr %i.dj, i64 24
  br label %RCLASS_EXT_READABLE.exit125

bb.aq:                                            ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i107
  %i.fn = call ptr @rb_current_box() #21          ; 3 uses
  %.not.i108 = icmp eq ptr %i.fn, null
  br i1 %.not.i108, label %.split.i119, label %bb.ar

.split.i119:                                      ; preds = %bb.aq
  %i.fo = getelementptr i8, ptr %i.dj, i64 24
  br label %RCLASS_EXT_READABLE.exit125

bb.ar:                                            ; preds = %bb.aq
  %i.fp = getelementptr i8, ptr %i.fn, i64 128
  %i.fq = load i8, ptr %i.fp, align 8, !tbaa !103, !range !105, !noundef !106
  %i.fr = trunc nuw i8 %i.fq to i1
  br i1 %i.fr, label %.split7.i110, label %bb.au

.split7.i110:                                     ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.fs = load i64, ptr %i.dj, align 8, !tbaa !59
  %i.ft = and i64 %i.fs, 65536
  %.not.i.i.i10.i111 = icmp eq i64 %i.ft, 0
  br i1 %.not.i.i.i10.i111, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i115, label %RCLASS_CLASSEXT_TBL.exit.i.i11.i112

RCLASS_CLASSEXT_TBL.exit.i.i11.i112:              ; preds = %.split7.i110
  %i.fu = load ptr, ptr %i.fj, align 8, !tbaa !93 ; 2 uses
  %.not.i.i12.i113 = icmp eq ptr %i.fu, null
  br i1 %.not.i.i12.i113, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i115, label %bb.as

bb.as:                                            ; preds = %RCLASS_CLASSEXT_TBL.exit.i.i11.i112
  %i.fv = load i64, ptr %i.fn, align 8, !tbaa !107
  %i.fw = call i32 @rb_st_lookup(ptr noundef nonnull %i.fu, i64 noundef %i.fv, ptr noundef nonnull %i.a) #21
  %.not5.i.i13.i114 = icmp eq i32 %i.fw, 0
  br i1 %.not5.i.i13.i114, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i115, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fx = load i64, ptr %i.a, align 8, !tbaa !11
  %i.fy = inttoptr i64 %i.fx to ptr
  br label %RCLASS_EXT_READABLE_LOOKUP.exit17.i115

RCLASS_EXT_READABLE_LOOKUP.exit17.i115:           ; preds = %bb.at, %bb.as, %RCLASS_CLASSEXT_TBL.exit.i.i11.i112, %.split7.i110
  %.0.i.i14.i116 = phi ptr [ %i.fy, %bb.at ], [ null, %bb.as ], [ null, %RCLASS_CLASSEXT_TBL.exit.i.i11.i112 ], [ null, %.split7.i110 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %.not.i15.i117 = icmp eq ptr %.0.i.i14.i116, null
  %i.fz = getelementptr i8, ptr %i.dj, i64 24
  %.0.i16.i118 = select i1 %.not.i15.i117, ptr %i.fz, ptr %.0.i.i14.i116
  br label %RCLASS_EXT_READABLE.exit125

bb.au:                                            ; preds = %bb.ar
  %i.ga = getelementptr i8, ptr %i.dj, i64 24
  br label %RCLASS_EXT_READABLE.exit125

RCLASS_EXT_READABLE.exit125:                      ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i124, %.split.i119, %RCLASS_EXT_READABLE_LOOKUP.exit17.i115, %bb.au
  %.0.i109 = phi ptr [ %i.fm, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i124 ], [ %i.ga, %bb.au ], [ %i.fo, %.split.i119 ], [ %.0.i16.i118, %RCLASS_EXT_READABLE_LOOKUP.exit17.i115 ]
  %i.gb = getelementptr i8, ptr %.0.i109, i64 8
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !110
  %i.gd = inttoptr i64 %i.gc to ptr               ; 2 uses
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !59 ; 2 uses
  %i.gf = and i64 %i.ge, 31
  %i.gg = icmp eq i64 %i.gf, 28
  br i1 %i.gg, label %bb.ad, label %._crit_edge, !llvm.loop !111

._crit_edge:                                      ; preds = %RCLASS_EXT_READABLE.exit125, %RCLASS_SINGLETON_P.exit.thread
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @rb_class_real(i64 noundef) local_unnamed_addr #11

declare i64 @rb_id_table_size(ptr noundef) local_unnamed_addr #2

declare i64 @rb_ivar_count(i64 noundef) local_unnamed_addr #2

declare i64 @rb_class_name(i64 noundef) local_unnamed_addr #2

declare ptr @rb_current_box() local_unnamed_addr #2

declare i64 @rb_str_intern(i64 noundef) local_unnamed_addr #2

declare ptr @rb_enc_get(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @rb_enc_dummy_p(ptr noundef) local_unnamed_addr #11

declare void @rb_ivar_foreach(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @obj_count_ivars(i64 noundef %0, i64 %1, i64 noundef %2) #0 {
bb.a:
  %i.a = load i64, ptr @s_encoding_short, align 8, !tbaa !11
  %i.b = icmp eq i64 %0, %i.a
  %i.c = load i64, ptr @s_ruby2_keywords_flag, align 8
  %i.d = icmp eq i64 %0, %i.c
  %or.cond = select i1 %i.b, i1 true, i1 %i.d
  br i1 %or.cond, label %skipping_ivar_name.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 @rb_id_encoding() #21
  %i.f = icmp eq i64 %0, %i.e
  br i1 %i.f, label %skipping_ivar_name.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i64 @rb_id2str(i64 noundef %0) #21
  %.fr = freeze i64 %i.g
  %.not.i = icmp eq i64 %.fr, 0
  br i1 %.not.i, label %skipping_ivar_name.exit.thread, label %skipping_ivar_name.exit

skipping_ivar_name.exit:                          ; preds = %bb.c
  %i.h = inttoptr i64 %2 to ptr                   ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !11
  %i.j = add i64 %i.i, 1                          ; 2 uses
  store i64 %i.j, ptr %i.h, align 8, !tbaa !11
  %.not2 = icmp eq i64 %i.j, 0
  br i1 %.not2, label %bb.d, label %skipping_ivar_name.exit.thread, !prof !112

bb.d:                                             ; preds = %skipping_ivar_name.exit
  %i.k = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.k, ptr noundef nonnull @.str.54) #22
  unreachable

skipping_ivar_name.exit.thread:                   ; preds = %bb.c, %bb.b, %bb.a, %skipping_ivar_name.exit
  ret i32 0
}

declare i64 @rb_id_encoding() local_unnamed_addr #2

declare i64 @rb_id2str(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @rb_enc_capable(i64 noundef) local_unnamed_addr #11

declare i32 @rb_enc_get_index(i64 noundef) local_unnamed_addr #2

declare ptr @rb_enc_from_index(i32 noundef) local_unnamed_addr #2

declare ptr @rb_st_init_strcasetable() local_unnamed_addr #2

declare i64 @rb_str_new_cstr(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @w_encoding(i64 noundef %0, ptr noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !63   ; 2 uses
  %i.c = icmp sgt i32 %i.b, -1
  %i.d = zext i1 %i.c to i32
  %spec.select = add nuw i32 %i.b, %i.d
  switch i64 %0, label %bb.c [
    i64 0, label %bb.b
    i64 20, label %bb.b
    i64 4, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.e = load i64, ptr @s_encoding_short, align 8, !tbaa !11
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.f = tail call i64 @rb_id_encoding() #21
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.c
  %.sink17 = phi i64 [ %i.f, %bb.c ], [ %i.e, %bb.b ]
  %i.g = tail call i64 @rb_id2sym(i64 noundef %.sink17) #21
  %i.h = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !66
  tail call fastcc void @w_symbol(i64 noundef %i.g, ptr noundef %i.i)
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !66
  tail call fastcc void @w_object(i64 noundef %0, ptr noundef %i.j, i32 noundef %spec.select)
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.a
  ret void
}

declare i64 @rb_id2sym(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @w_ivar_each(i64 noundef %0, i64 noundef %1, ptr noundef nonnull %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.w_ivar_arg, align 8         ; 5 uses
  %i.a = load i64, ptr %2, align 8, !tbaa !67
  %i.b = tail call i32 @rb_obj_shape_id(i64 noundef %i.a) #21 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store ptr %2, ptr %3, align 8, !tbaa !113
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %1, ptr %i.c, align 8, !tbaa !116
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoint ptr %3 to i64
  call void @rb_ivar_foreach(i64 noundef %0, ptr noundef nonnull @w_obj_each, i64 noundef %i.d) #21
  %i.e = load i64, ptr %2, align 8, !tbaa !67
  %i.f = call i32 @rb_obj_shape_id(i64 noundef %i.e) #21
  %.not11 = icmp eq i32 %i.b, %i.f
  br i1 %.not11, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = call i64 @rb_shape_depth(i32 noundef %i.b) #21
  %i.h = load i64, ptr %2, align 8, !tbaa !67
  %i.i = call i32 @rb_obj_shape_id(i64 noundef %i.h) #21
  %i.j = call i64 @rb_shape_depth(i32 noundef %i.i) #21
  %i.k = icmp ugt i64 %i.g, %i.j
  %i.l = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !11 ; 2 uses
  %i.m = load i64, ptr %2, align 8, !tbaa !67
  %i.n = call fastcc i64 @rb_class_of(i64 noundef %i.m) #26 ; 2 uses
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.l, ptr noundef nonnull @.str.56, i64 noundef %i.n) #22
  unreachable

bb.e:                                             ; preds = %bb.c
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.l, ptr noundef nonnull @.str.57, i64 noundef %i.n) #22
  unreachable

bb.f:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret void
}

declare i32 @rb_obj_shape_id(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @w_obj_each(i64 noundef %0, i64 noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = inttoptr i64 %2 to ptr                   ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !113  ; 3 uses
  %i.c = load i64, ptr @s_encoding_short, align 8, !tbaa !11
  %i.d = icmp eq i64 %0, %i.c
  br i1 %i.d, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr @s_ruby2_keywords_flag, align 8, !tbaa !11
  %i.f = icmp eq i64 %0, %i.e
  br i1 %i.f, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i64 @rb_id_encoding() #21
  %i.h = icmp eq i64 %0, %i.g
  br i1 %i.h, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call i64 @rb_id2str(i64 noundef %0) #21
  %.fr = freeze i64 %i.i
  %.not.i = icmp eq i64 %.fr, 0
  br i1 %.not.i, label %bb.k, label %skipping_ivar_name.exit

.thread:                                          ; preds = %bb.a, %bb.b, %bb.c
  %.0.i.ph20 = phi ptr [ @.str.55, %bb.c ], [ @.str.16, %bb.a ], [ @.str.17, %bb.b ]
  %i.j = load i64, ptr %i.b, align 8, !tbaa !67   ; 6 uses
  %i.k = icmp eq i64 %i.j, 0
  %i.l = and i64 %i.j, 7
  %i.m = icmp ne i64 %i.l, 0
  %i.n = or i1 %i.k, %i.m
  br i1 %i.n, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.thread
  %i.o = inttoptr i64 %i.j to ptr
  %i.p = getelementptr i8, ptr %i.o, i64 8
  br label %rb_class_of.exit

bb.f:                                             ; preds = %.thread
  switch i64 %i.j, label %bb.i [
    i64 0, label %rb_class_of.exit
    i64 4, label %bb.g
    i64 20, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  br label %rb_class_of.exit

bb.h:                                             ; preds = %bb.f
  br label %rb_class_of.exit

bb.i:                                             ; preds = %bb.f
  %i.q = trunc i64 %i.j to i1
  br i1 %i.q, label %rb_class_of.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = and i64 %i.j, 254
  %i.s = icmp eq i64 %i.r, 12
  %spec.select.i = select i1 %i.s, ptr @rb_cSymbol, ptr @rb_cFloat
  br label %rb_class_of.exit

rb_class_of.exit:                                 ; preds = %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j
  %.0.in.i = phi ptr [ %i.p, %bb.e ], [ @rb_cNilClass, %bb.g ], [ @rb_cTrueClass, %bb.h ], [ @rb_cFalseClass, %bb.f ], [ @rb_cInteger, %bb.i ], [ %spec.select.i, %bb.j ]
  %.0.i14 = load i64, ptr %.0.in.i, align 8, !tbaa !11
  tail call void (ptr, ...) @rb_warn(ptr noundef nonnull @.str.58, ptr noundef nonnull %.0.i.ph20, i64 noundef %.0.i14) #25
  br label %bb.k

skipping_ivar_name.exit:                          ; preds = %bb.d
  %i.t = getelementptr i8, ptr %i.a, i64 8        ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !116
  %i.v = add i64 %i.u, -1
  store i64 %i.v, ptr %i.t, align 8, !tbaa !116
  %i.w = tail call i64 @rb_id2sym(i64 noundef %0) #21
  %i.x = getelementptr i8, ptr %i.b, i64 8        ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !66
  tail call fastcc void @w_symbol(i64 noundef %i.w, ptr noundef %i.y)
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !66
  %i.aa = getelementptr i8, ptr %i.b, i64 16
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !63
  tail call fastcc void @w_object(i64 noundef %1, ptr noundef %i.z, i32 noundef %i.ab)
  br label %bb.k

bb.k:                                             ; preds = %bb.d, %rb_class_of.exit, %skipping_ivar_name.exit
  ret i32 0
}

declare i64 @rb_shape_depth(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold
declare void @rb_warn(ptr noundef, ...) local_unnamed_addr #15

declare i64 @rb_class_path(i64 noundef) local_unnamed_addr #2

declare i64 @rb_path_to_class(i64 noundef) local_unnamed_addr #2

declare i32 @rb_enc_str_coderange(i64 noundef) local_unnamed_addr #2

declare i64 @rb_check_string_type(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @clear_load_arg(ptr noundef captures(none) initializes((16, 40)) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54
  tail call void @ruby_xfree(ptr noundef %i.b) #21
  %i.c = getelementptr i8, ptr %0, i64 40         ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !49   ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @rb_st_free_table(ptr noundef nonnull %i.d) #21
  store ptr null, ptr %i.c, align 8, !tbaa !49
  %i.e = getelementptr i8, ptr %0, i64 48         ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !50
  tail call void @rb_st_free_table(ptr noundef %i.f) #21
  store ptr null, ptr %i.e, align 8, !tbaa !50
  %i.g = getelementptr i8, ptr %0, i64 56         ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !51
  tail call void @rb_st_free_table(ptr noundef %i.h) #21
  store ptr null, ptr %i.g, align 8, !tbaa !51
  %i.i = getelementptr i8, ptr %0, i64 72         ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !57   ; 2 uses
  %.not16 = icmp eq ptr %i.j, null
  br i1 %.not16, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @rb_st_free_table(ptr noundef nonnull %i.j) #21
  store ptr null, ptr %i.i, align 8, !tbaa !57
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  ret void
}

declare ptr @rb_ruby_verbose_ptr() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal void @mark_load_arg(ptr noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @rb_mark_tbl(ptr noundef nonnull %i.b) #21
  %i.c = getelementptr i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !50
  tail call void @rb_mark_tbl(ptr noundef %i.d) #21
  %i.e = getelementptr i8, ptr %0, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !51
  tail call void @rb_mark_tbl(ptr noundef %i.f) #21
  %i.g = getelementptr i8, ptr %0, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !57
  tail call void @rb_mark_hash(ptr noundef %i.h) #21
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @free_load_arg(ptr noundef captures(none) initializes((16, 40)) %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54
  tail call void @ruby_xfree(ptr noundef %i.b) #21
  %i.c = getelementptr i8, ptr %0, i64 40         ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !49   ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %clear_load_arg.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @rb_st_free_table(ptr noundef nonnull %i.d) #21
  store ptr null, ptr %i.c, align 8, !tbaa !49
  %i.e = getelementptr i8, ptr %0, i64 48         ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !50
  tail call void @rb_st_free_table(ptr noundef %i.f) #21
  store ptr null, ptr %i.e, align 8, !tbaa !50
  %i.g = getelementptr i8, ptr %0, i64 56         ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !51
  tail call void @rb_st_free_table(ptr noundef %i.h) #21
  store ptr null, ptr %i.g, align 8, !tbaa !51
  %i.i = getelementptr i8, ptr %0, i64 72         ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !57   ; 2 uses
  %.not16.i = icmp eq ptr %i.j, null
  br i1 %.not16.i, label %clear_load_arg.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @rb_st_free_table(ptr noundef nonnull %i.j) #21
  store ptr null, ptr %i.i, align 8, !tbaa !57
  br label %clear_load_arg.exit

clear_load_arg.exit:                              ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree nounwind sspstrong willreturn memory(read) uwtable
define internal i64 @memsize_load_arg(ptr noundef readonly captures(none) %0) #12 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @rb_st_memsize(ptr noundef nonnull %i.b) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ %i.c, %bb.b ], [ 0, %bb.a ]     ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !50   ; 2 uses
  %.not17 = icmp eq ptr %i.e, null
  br i1 %.not17, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i64 @rb_st_memsize(ptr noundef nonnull %i.e) #26
  %i.g = add i64 %i.f, %.0
end_hunk_1
