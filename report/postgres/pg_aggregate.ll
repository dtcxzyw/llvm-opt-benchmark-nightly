Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/pg_aggregate?download=true
inline.NumInlined: 28
inline.NumDeleted: 6
begin_hunk_0_@AggregateCreate:bb.a

bb.bm:                                            ; preds = %bb.bl
  %i.fr = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #7 ; 0 uses
  %i.fs = call i32 @errcode(i32 noundef 67141764) #6 ; 0 uses
  %i.ft = call ptr @NameListToString(ptr noundef nonnull %16) #6
  %i.fu = call ptr @format_type_be(i32 noundef 2281) #6
  %i.fv = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.19, ptr noundef %i.ft, ptr noundef %i.fu) #6 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 481, ptr noundef nonnull @__func__.AggregateCreate) #6
  unreachable

bb.bn:                                            ; preds = %bb.bl, %bb.bk
  %.0297 = phi i32 [ %i.fp, %bb.bl ], [ 0, %bb.bk ] ; 3 uses
  %i.fw = load i32, ptr %i.e, align 4
  %i.fx = call ptr @check_valid_polymorphic_signature(i32 noundef %i.fw, ptr noundef nonnull %i.h, i32 noundef %4) #6 ; 2 uses
  %.not352 = icmp eq ptr %i.fx, null
  br i1 %.not352, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.fy = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #7 ; 0 uses
  %i.fz = call i32 @errcode(i32 noundef 67141764) #6 ; 0 uses
  %i.ga = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.20) #6 ; 0 uses
  %i.gb = call i32 (ptr, ...) @errdetail_internal(ptr noundef nonnull @.str.7, ptr noundef nonnull %i.fx) #6 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 499, ptr noundef nonnull @__func__.AggregateCreate) #6
  unreachable

bb.bp:                                            ; preds = %bb.bn
  %i.gc = load i32, ptr %i.e, align 4
  %i.gd = call ptr @check_valid_internal_signature(i32 noundef %i.gc, ptr noundef nonnull %i.h, i32 noundef %4) #6 ; 2 uses
  %.not353 = icmp eq ptr %i.gd, null
  br i1 %.not353, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ge = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #7 ; 0 uses
  %i.gf = call i32 @errcode(i32 noundef 50724996) #6 ; 0 uses
  %i.gg = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.21) #6 ; 0 uses
  %i.gh = call i32 (ptr, ...) @errdetail_internal(ptr noundef nonnull @.str.7, ptr noundef nonnull %i.gd) #6 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 514, ptr noundef nonnull @__func__.AggregateCreate) #6
  unreachable

bb.br:                                            ; preds = %bb.bp
  br i1 %.not333, label %bb.bz, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %.not354 = icmp eq ptr %19, null
  br i1 %.not354, label %bb.bw, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  store i32 %27, ptr %i.f, align 16
  %i.gi = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.gj = zext nneg i32 %4 to i64
  %i.gk = shl nuw nsw i64 %i.gj, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.gi, ptr nonnull align 4 %i.h, i64 %i.gk, i1 false)
  %.1288.in = select i1 %21, i32 %4, i32 %5
  %i.gl = xor i1 %i.bk, true
  %i.gm = or i1 %21, %i.gl
  %.0284 = select i1 %i.gm, i32 %11, i32 0
  %.1288 = add nuw i32 %.1288.in, 1
  %i.gn = call fastcc i32 @lookup_agg_function(ptr noundef %19, i32 noundef %.1288, ptr noundef %i.f, i32 noundef %.0284, ptr noundef %i.d) ; 3 uses
  br i1 %21, label %bb.bu, label %bb.bx

bb.bu:                                            ; preds = %bb.bt
  %i.go = call zeroext i1 @func_strict(i32 noundef %i.gn) #6
  br i1 %i.go, label %bb.bv, label %bb.bx

bb.bv:                                            ; preds = %bb.bu
  %i.gp = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #7 ; 0 uses
  %i.gq = call i32 @errcode(i32 noundef 50724996) #6 ; 0 uses
  %i.gr = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.15) #6 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 554, ptr noundef nonnull @__func__.AggregateCreate) #6
  unreachable

bb.bw:                                            ; preds = %bb.bs
  store i32 %27, ptr %i.d, align 4
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bt, %bb.bu, %bb.bw
  %.0293 = phi i32 [ 0, %bb.bw ], [ %i.gn, %bb.bu ], [ %i.gn, %bb.bt ]
  %i.gs = load i32, ptr %i.d, align 4
  %i.gt = load i32, ptr %i.e, align 4
  %.not355 = icmp eq i32 %i.gs, %i.gt
  br i1 %.not355, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.gu = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #7 ; 0 uses
  %i.gv = call i32 @errcode(i32 noundef 50724996) #6 ; 0 uses
  %i.gw = load i32, ptr %i.d, align 4
  %i.gx = call ptr @format_type_be(i32 noundef %i.gw) #6
  %i.gy = load i32, ptr %i.e, align 4
  %i.gz = call ptr @format_type_be(i32 noundef %i.gy) #6
  %i.ha = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.22, ptr noundef %i.gx, ptr noundef %i.gz) #6 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 569, ptr noundef nonnull @__func__.AggregateCreate) #6
  unreachable

bb.bz:                                            ; preds = %bb.bx, %bb.br
  %.1294 = phi i32 [ %.0293, %bb.bx ], [ 0, %bb.br ] ; 3 uses
  %.not356 = icmp eq ptr %24, null
  br i1 %.not356, label %bb.cc, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %.not357 = icmp eq i32 %4, 1
  br i1 %.not357, label %.thread, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.hb = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #7 ; 0 uses
  %i.hc = call i32 @errcode(i32 noundef 50724996) #6 ; 0 uses
  %i.hd = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.23) #6 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 578, ptr noundef nonnull @__func__.AggregateCreate) #6
  unreachable

.thread:                                          ; preds = %bb.ca
  %i.he = load i32, ptr %i.h, align 4             ; 2 uses
  %i.hf = call i32 @LookupOperName(ptr noundef null, ptr noundef nonnull %24, i32 noundef %i.he, i32 noundef %i.he, i1 noundef zeroext false, i32 noundef -1) #6
  br label %.lr.ph.preheader

bb.cc:                                            ; preds = %bb.bz
  %i.hg = icmp sgt i32 %4, 0
  br i1 %i.hg, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.thread, %bb.cc
  %.0292425 = phi i32 [ %i.hf, %.thread ], [ 0, %bb.cc ]
  %wide.trip.count = zext nneg i32 %4 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ce
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.ce ] ; 2 uses
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv ; 2 uses
  %i.hi = load i32, ptr %i.hh, align 4
  %i.hj = call i32 @GetUserId() #6
  %i.hk = call i32 @object_aclcheck(i32 noundef 1247, i32 noundef %i.hi, i32 noundef %i.hj, i64 noundef 256) #6 ; 2 uses
  %.not374 = icmp eq i32 %i.hk, 0
  br i1 %.not374, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %.lr.ph
  %i.hl = load i32, ptr %i.hh, align 4
  call void @aclcheck_error_type(i32 noundef %i.hk, i32 noundef %i.hl) #6
  br label %bb.ce

bb.ce:                                            ; preds = %.lr.ph, %bb.cd
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !6

._crit_edge:                                      ; preds = %bb.ce, %bb.cc
  %.0292424 = phi i32 [ 0, %bb.cc ], [ %.0292425, %bb.ce ] ; 3 uses
  %i.hm = call i32 @GetUserId() #6
  %i.hn = call i32 @object_aclcheck(i32 noundef 1247, i32 noundef %25, i32 noundef %i.hm, i64 noundef 256) #6 ; 2 uses
  %.not358 = icmp eq i32 %i.hn, 0
  br i1 %.not358, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %._crit_edge
  call void @aclcheck_error_type(i32 noundef %i.hn, i32 noundef %25) #6
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %._crit_edge
  br i1 %.not333, label %bb.cj, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.ho = call i32 @GetUserId() #6
  %i.hp = call i32 @object_aclcheck(i32 noundef 1247, i32 noundef %27, i32 noundef %i.ho, i64 noundef 256) #6 ; 2 uses
  %.not359 = icmp eq i32 %i.hp, 0
  br i1 %.not359, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  call void @aclcheck_error_type(i32 noundef %i.hp, i32 noundef %27) #6
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ch, %bb.ci, %bb.cg
  %i.hq = load i32, ptr %i.e, align 4
  %i.hr = call i32 @GetUserId() #6
  %i.hs = call i32 @object_aclcheck(i32 noundef 1247, i32 noundef %i.hq, i32 noundef %i.hr, i64 noundef 256) #6 ; 2 uses
  %.not360 = icmp eq i32 %i.hs, 0
  br i1 %.not360, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.ht = load i32, ptr %i.e, align 4
  call void @aclcheck_error_type(i32 noundef %i.hs, i32 noundef %i.ht) #6
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %i.hu = load i32, ptr %i.e, align 4
  %i.hv = call i32 @GetUserId() #6
  %i.hw = call { i64, i32 } @ProcedureCreate(ptr noundef nonnull %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext false, i32 noundef %i.hu, i32 noundef %i.hv, i32 noundef 12, i32 noundef 0, ptr noundef nonnull @.str.24, ptr noundef null, ptr noundef null, i8 noundef signext 97, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false, i8 noundef signext 105, i8 noundef signext %31, ptr noundef nonnull %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, ptr noundef %10, i64 noundef 0, ptr noundef null, i64 noundef 0, i32 noundef 0, float noundef 1.000000e+00, float noundef 0.000000e+00) #6 ; 2 uses
  %.fca.0.extract = extractvalue { i64, i32 } %i.hw, 0 ; 2 uses
  %.fca.1.extract = extractvalue { i64, i32 } %i.hw, 1
  store i64 %.fca.0.extract, ptr %32, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 2 uses
  store i32 %.fca.1.extract, ptr %.sroa.4.0..sroa_idx, align 8
  %i.hx = lshr i64 %.fca.0.extract, 32            ; 2 uses
  %i.hy = call ptr @table_open(i32 noundef 2600, i32 noundef 3) #6 ; 4 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 64
  %i.ia = load ptr, ptr %i.hz, align 8            ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(22) %i.a, i8 0, i64 22, i1 false)
  %i.ib = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ib, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(22) %i.c, i8 1, i64 22, i1 false)
  store i64 %i.hx, ptr %i.b, align 16
  %i.ic = sext i8 %3 to i64
  %i.id = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.ic, ptr %i.id, align 8
  %i.ie = zext nneg i32 %5 to i64
  %i.if = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.ie, ptr %i.if, align 16
  %i.ig = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.bs, ptr %i.ig, align 8
  %i.ih = zext i32 %.0283 to i64
  %i.ii = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %i.ih, ptr %i.ii, align 16
  %i.ij = zext i32 %.0299 to i64
  %i.ik = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %i.ij, ptr %i.ik, align 8
  %i.il = zext i32 %.0298 to i64
  %i.im = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 %i.il, ptr %i.im, align 16
  %i.in = zext i32 %.0297 to i64
  %i.io = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 %i.in, ptr %i.io, align 8
  %i.ip = zext i32 %.0296 to i64
  %i.iq = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 %i.ip, ptr %i.iq, align 16
  %i.ir = zext i32 %.0295 to i64
  %i.is = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i64 %i.ir, ptr %i.is, align 8
  %i.it = zext i32 %.1294 to i64
  %i.iu = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store i64 %i.it, ptr %i.iu, align 16
  %i.iv = zext i1 %20 to i64
  %i.iw = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store i64 %i.iv, ptr %i.iw, align 8
  %i.ix = zext i1 %21 to i64
  %i.iy = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store i64 %i.ix, ptr %i.iy, align 16
  %i.iz = sext i8 %22 to i64
  %i.ja = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store i64 %i.iz, ptr %i.ja, align 8
  %i.jb = sext i8 %23 to i64
  %i.jc = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store i64 %i.jb, ptr %i.jc, align 16
  %i.jd = zext i32 %.0292424 to i64
  %i.je = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  store i64 %i.jd, ptr %i.je, align 8
  %i.jf = zext i32 %25 to i64
  %i.jg = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store i64 %i.jf, ptr %i.jg, align 16
  %i.jh = sext i32 %26 to i64
  %i.ji = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  store i64 %i.jh, ptr %i.ji, align 8
  %i.jj = zext i32 %27 to i64
  %i.jk = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  store i64 %i.jj, ptr %i.jk, align 16
  %i.jl = sext i32 %28 to i64
  %i.jm = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  store i64 %i.jl, ptr %i.jm, align 8
  br i1 %i.ce, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.jn = call ptr @cstring_to_text(ptr noundef nonnull %29) #6
  %i.jo = ptrtoint ptr %i.jn to i64
  %i.jp = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  store i64 %i.jo, ptr %i.jp, align 16
  br label %bb.co

bb.cn:                                            ; preds = %bb.cl
  %i.jq = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i8 1, ptr %i.jq, align 4
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %.not362 = icmp eq ptr %30, null
  br i1 %.not362, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.jr = call ptr @cstring_to_text(ptr noundef nonnull %30) #6
  %i.js = ptrtoint ptr %i.jr to i64
  %i.jt = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  store i64 %i.js, ptr %i.jt, align 8
  br label %bb.cr

bb.cq:                                            ; preds = %bb.co
  %i.ju = getelementptr inbounds nuw i8, ptr %i.a, i64 21
  store i8 1, ptr %i.ju, align 1
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  br i1 %2, label %bb.cs, label %.thread382

bb.cs:                                            ; preds = %bb.cr
  %i.jv = call ptr @SearchSysCache1(i32 noundef 0, i64 noundef %i.hx) #6 ; 4 uses
  %.not363 = icmp eq ptr %i.jv, null
  br i1 %.not363, label %.thread382, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.jw = getelementptr i8, ptr %i.jv, i64 16
  %.0.val = load ptr, ptr %i.jw, align 8          ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %.0.val, i64 22
  %i.jy = load i8, ptr %i.jx, align 2
  %i.jz = zext i8 %i.jy to i64
  %i.ka = getelementptr inbounds nuw i8, ptr %.0.val, i64 %i.jz ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 4 ; 2 uses
  %i.kc = load i8, ptr %i.kb, align 4
  %.not364 = icmp eq i8 %3, %i.kc
  br i1 %.not364, label %bb.cy, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.kd = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #7 ; 0 uses
  %i.ke = call i32 @errcode(i32 noundef 151027844) #6 ; 0 uses
  %i.kf = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.25) #6 ; 0 uses
  %i.kg = load i8, ptr %i.kb, align 4
  switch i8 %i.kg, label %bb.cx [
    i8 110, label %.sink.split
    i8 111, label %bb.cv
    i8 104, label %bb.cw
  ]

bb.cv:                                            ; preds = %bb.cu
  br label %.sink.split

bb.cw:                                            ; preds = %bb.cu
  br label %.sink.split

.sink.split:                                      ; preds = %bb.cu, %bb.cw, %bb.cv
  %.str.27.sink = phi ptr [ @.str.27, %bb.cv ], [ @.str.28, %bb.cw ], [ @.str.26, %bb.cu ]
  %i.kh = call i32 (ptr, ...) @errdetail(ptr noundef nonnull %.str.27.sink, ptr noundef nonnull %0) #6 ; 0 uses
  br label %bb.cx

bb.cx:                                            ; preds = %.sink.split, %bb.cu
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 714, ptr noundef nonnull @__func__.AggregateCreate) #6
  unreachable

bb.cy:                                            ; preds = %bb.ct
  %i.ki = getelementptr inbounds nuw i8, ptr %i.ka, i64 6
  %i.kj = load i16, ptr %i.ki, align 2
  %i.kk = sext i16 %i.kj to i32
  %.not365 = icmp eq i32 %5, %i.kk
  br i1 %.not365, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.kl = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #7 ; 0 uses
  %i.km = call i32 @errcode(i32 noundef 50724996) #6 ; 0 uses
  %i.kn = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.29) #6 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 718, ptr noundef nonnull @__func__.AggregateCreate) #6
  unreachable

bb.da:                                            ; preds = %bb.cy
  store i8 0, ptr %i.c, align 16
  %i.ko = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 0, ptr %i.ko, align 1
  %i.kp = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i8 0, ptr %i.kp, align 2
  %i.kq = call ptr @heap_modify_tuple(ptr noundef nonnull %i.jv, ptr noundef %i.ia, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c) #6 ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 4
  call void @CatalogTupleUpdate(ptr noundef nonnull %i.hy, ptr noundef nonnull %i.kr, ptr noundef %i.kq) #6
  call void @ReleaseSysCache(ptr noundef nonnull %i.jv) #6
  br label %bb.db

.thread382:                                       ; preds = %bb.cr, %bb.cs
  %i.ks = call ptr @heap_form_tuple(ptr noundef %i.ia, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #6
  call void @CatalogTupleInsert(ptr noundef nonnull %i.hy, ptr noundef %i.ks) #6
  br label %bb.db

bb.db:                                            ; preds = %.thread382, %bb.da
  call void @table_close(ptr noundef nonnull %i.hy, i32 noundef 3) #6
  %i.kt = call ptr @new_object_addresses() #6     ; 11 uses
  store i32 1255, ptr %33, align 4
  %i.ku = getelementptr inbounds nuw i8, ptr %33, i64 4 ; 9 uses
  store i32 %i.bl, ptr %i.ku, align 4
  %i.kv = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 9 uses
  store i32 0, ptr %i.kv, align 4
  call void @add_exact_object_address(ptr noundef nonnull %33, ptr noundef %i.kt) #6
  %.not366 = icmp eq i32 %.0283, 0
  br i1 %.not366, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  store i32 1255, ptr %33, align 4
  store i32 %.0283, ptr %i.ku, align 4
  store i32 0, ptr %i.kv, align 4
  call void @add_exact_object_address(ptr noundef nonnull %33, ptr noundef %i.kt) #6
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %.not367 = icmp eq i32 %.0299, 0
  br i1 %.not367, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  store i32 1255, ptr %33, align 4
  store i32 %.0299, ptr %i.ku, align 4
  store i32 0, ptr %i.kv, align 4
  call void @add_exact_object_address(ptr noundef nonnull %33, ptr noundef %i.kt) #6
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd
  %.not368 = icmp eq i32 %.0298, 0
  br i1 %.not368, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  store i32 1255, ptr %33, align 4
  store i32 %.0298, ptr %i.ku, align 4
  store i32 0, ptr %i.kv, align 4
  call void @add_exact_object_address(ptr noundef nonnull %33, ptr noundef %i.kt) #6
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df
  %.not369 = icmp eq i32 %.0297, 0
end_hunk_0
