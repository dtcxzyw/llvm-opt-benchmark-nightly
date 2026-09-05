Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/decode_entropy_binding?download=true
inline.NumInlined: 88
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@DI_huffman_v2:bb.a
  %i.eb = shl nuw nsw i64 %i.ea, 2
  %i.ec = tail call ptr @ZL_Decoder_getScratchSpace(ptr noundef %0, i64 noundef %i.eb) #8 ; 5 uses
  %i.ed = icmp eq ptr %i.ec, null
  br i1 %i.ed, label %.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ee = mul nuw nsw i32 %i.dv, 16777217
  store i32 %i.ee, ptr %i.ec, align 4, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.e, ptr nonnull readonly align 1 %i.cb, i64 %i.cc, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %i.a, i8 0, i64 13, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %i.b, i8 0, i64 13, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %i.c, i8 0, i64 13, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %i.d, i8 0, i64 13, i1 false)
  %i.ef = and i64 %i.cc, 3                        ; 4 uses
  %.not70.i = icmp eq i64 %i.ef, 0
  br i1 %.not70.i, label %.preheader58.i, label %.lr.ph66.i

.preheader58.i:                                   ; preds = %.lr.ph66.i, %.lr.ph66.i.1, %.lr.ph66.i.2, %bb.v
  %.not71.i = icmp samesign ult i64 %i.cc, 4
  br i1 %.not71.i, label %.preheader.i, label %.lr.ph68.i

.lr.ph66.i:                                       ; preds = %bb.v
  %i.eg = load i8, ptr %i.cb, align 1, !tbaa !24
  %i.eh = zext i8 %i.eg to i64
  %i.ei = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.eh ; 2 uses
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !24
  %i.ek = add i8 %i.ej, 1
  store i8 %i.ek, ptr %i.ei, align 1, !tbaa !24
  %exitcond73.not.i = icmp eq i64 %i.ef, 1
  br i1 %exitcond73.not.i, label %.preheader58.i, label %.lr.ph66.i.1

.lr.ph66.i.1:                                     ; preds = %.lr.ph66.i
  %i.el = getelementptr inbounds nuw i8, ptr %i.cb, i64 1
  %i.em = load i8, ptr %i.el, align 1, !tbaa !24
  %i.en = zext i8 %i.em to i64
  %i.eo = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.en ; 2 uses
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !24
  %i.eq = add i8 %i.ep, 1
  store i8 %i.eq, ptr %i.eo, align 1, !tbaa !24
  %exitcond73.not.i.1 = icmp eq i64 %i.ef, 2
  br i1 %exitcond73.not.i.1, label %.preheader58.i, label %.lr.ph66.i.2

.lr.ph66.i.2:                                     ; preds = %.lr.ph66.i.1
  %i.er = getelementptr inbounds nuw i8, ptr %i.cb, i64 2
  %i.es = load i8, ptr %i.er, align 1, !tbaa !24
  %i.et = zext i8 %i.es to i64
  %i.eu = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.et ; 2 uses
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !24
  %i.ew = add i8 %i.ev, 1
  store i8 %i.ew, ptr %i.eu, align 1, !tbaa !24
  br label %.preheader58.i

.preheader.loopexit.i:                            ; preds = %.lr.ph68.i
  %.phi.trans.insert94.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.pre95.i = load i8, ptr %.phi.trans.insert94.i, align 4, !tbaa !24
  %.phi.trans.insert96.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.pre97.i = load i8, ptr %.phi.trans.insert96.i, align 4, !tbaa !24
  %.phi.trans.insert98.i = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %.pre99.i = load i8, ptr %.phi.trans.insert98.i, align 4, !tbaa !24
  %.phi.trans.insert100.i = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  %.pre101.i = load i8, ptr %.phi.trans.insert100.i, align 1, !tbaa !24
  %.phi.trans.insert102.i = getelementptr inbounds nuw i8, ptr %i.c, i64 5
  %.pre103.i = load i8, ptr %.phi.trans.insert102.i, align 1, !tbaa !24
  %.phi.trans.insert104.i = getelementptr inbounds nuw i8, ptr %i.d, i64 5
  %.pre105.i = load i8, ptr %.phi.trans.insert104.i, align 1, !tbaa !24
  %i.ex = zext i8 %.pre95.i to i32
  %i.ey = zext i8 %.pre97.i to i32
  %i.ez = zext i8 %.pre99.i to i32
  %i.fa = zext i8 %.pre101.i to i32
  %i.fb = zext i8 %.pre103.i to i32
  %i.fc = zext i8 %.pre105.i to i32
  %i.fd = load <4 x i8>, ptr %i.b, align 4, !tbaa !24
  %i.fe = load <4 x i8>, ptr %i.c, align 4, !tbaa !24
  %i.ff = load <4 x i8>, ptr %i.d, align 4, !tbaa !24
  %i.fg = zext <4 x i8> %i.fd to <4 x i16>
  %i.fh = zext <4 x i8> %i.fe to <4 x i16>
  %i.fi = zext <4 x i8> %i.ff to <4 x i16>
  %i.fj = add nuw nsw <4 x i16> %i.fh, %i.fi
  %i.fk = add nuw nsw <4 x i16> %i.fj, %i.fg
  %i.fl = add nuw nsw i32 %i.ey, %i.ez
  %i.fm = add nuw nsw i32 %i.fl, %i.ex
  %i.fn = add nuw nsw i32 %i.fb, %i.fc
  %i.fo = add nuw nsw i32 %i.fn, %i.fa
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  %.phi.trans.insert173 = getelementptr inbounds nuw i8, ptr %i.c, i64 6
  %.phi.trans.insert175 = getelementptr inbounds nuw i8, ptr %i.d, i64 6
  %i.fp = load <2 x i8>, ptr %.phi.trans.insert175, align 2, !tbaa !24
  %.phi.trans.insert187 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.pre188 = load i8, ptr %.phi.trans.insert187, align 4, !tbaa !24
  %i.fq = load <4 x i8>, ptr %.phi.trans.insert, align 2, !tbaa !24
  %i.fr = load <4 x i8>, ptr %.phi.trans.insert173, align 2, !tbaa !24
  %i.fs = zext <4 x i8> %i.fq to <4 x i16>
  %i.ft = zext <4 x i8> %i.fr to <4 x i16>
  %i.fu = shufflevector <2 x i8> %i.fp, <2 x i8> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fv = zext <4 x i8> %i.fu to <4 x i16>
  %i.fw = zext i8 %.pre188 to i16
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %.preheader58.i
  %i.fx = phi i16 [ %i.fw, %.preheader.loopexit.i ], [ 0, %.preheader58.i ]
  %i.fy = phi i32 [ %i.fm, %.preheader.loopexit.i ], [ 0, %.preheader58.i ]
  %i.fz = phi i32 [ %i.fo, %.preheader.loopexit.i ], [ 0, %.preheader58.i ]
  %i.ga = phi <4 x i16> [ %i.fk, %.preheader.loopexit.i ], [ zeroinitializer, %.preheader58.i ]
  %i.gb = phi <4 x i16> [ %i.fs, %.preheader.loopexit.i ], [ zeroinitializer, %.preheader58.i ]
  %i.gc = phi <4 x i16> [ %i.ft, %.preheader.loopexit.i ], [ zeroinitializer, %.preheader58.i ]
  %i.gd = phi <4 x i16> [ %i.fv, %.preheader.loopexit.i ], [ zeroinitializer, %.preheader58.i ]
  %i.ge = load <4 x i8>, ptr %i.a, align 4, !tbaa !24
  %i.gf = zext <4 x i8> %i.ge to <4 x i16>
  %i.gg = add nsw <4 x i16> %i.ga, %i.gf          ; 2 uses
  %i.gh = sext <4 x i16> %i.gg to <4 x i32>
  store <4 x i32> %i.gh, ptr %i.f, align 16, !tbaa !27
  %i.gi = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.gj = load i8, ptr %i.gi, align 4, !tbaa !24
  %i.gk = zext i8 %i.gj to i32
  %i.gl = add nuw nsw i32 %i.fy, %i.gk
  %i.gm = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i32 %i.gl, ptr %i.gm, align 16, !tbaa !27
  %i.gn = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !24
  %i.gp = zext i8 %i.go to i32
  %i.gq = add nuw nsw i32 %i.fz, %i.gp
  %i.gr = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  store i32 %i.gq, ptr %i.gr, align 4, !tbaa !27
  %i.gs = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.gt = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.gu = getelementptr inbounds nuw i8, ptr %i.d, i64 9
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !24
  %i.gw = load <4 x i8>, ptr %i.gs, align 2, !tbaa !24
  %i.gx = zext <4 x i8> %i.gw to <4 x i16>
  %i.gy = add nuw nsw <4 x i16> %i.gb, %i.gx
  %i.gz = add nuw nsw <4 x i16> %i.gy, %i.gc
  %i.ha = insertelement <4 x i16> %i.gd, i16 %i.fx, i64 2
  %i.hb = zext i8 %i.gv to i16
  %i.hc = insertelement <4 x i16> %i.ha, i16 %i.hb, i64 3
  %i.hd = add nuw nsw <4 x i16> %i.gz, %i.hc
  %i.he = zext nneg <4 x i16> %i.hd to <4 x i32>
  store <4 x i32> %i.he, ptr %i.gt, align 8, !tbaa !27
  %i.hf = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.hg = load i8, ptr %i.hf, align 2, !tbaa !24
  %i.hh = zext i8 %i.hg to i32
  %i.hi = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %i.hj = load i8, ptr %i.hi, align 2, !tbaa !24
  %i.hk = zext i8 %i.hj to i32
  %i.hl = add nuw nsw i32 %i.hk, %i.hh
  %i.hm = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  %i.hn = load i8, ptr %i.hm, align 2, !tbaa !24
  %i.ho = zext i8 %i.hn to i32
  %i.hp = add nuw nsw i32 %i.hl, %i.ho
  %i.hq = getelementptr inbounds nuw i8, ptr %i.d, i64 10
  %i.hr = load i8, ptr %i.hq, align 2, !tbaa !24
  %i.hs = zext i8 %i.hr to i32
  %i.ht = add nuw nsw i32 %i.hp, %i.hs
  %i.hu = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store i32 %i.ht, ptr %i.hu, align 8, !tbaa !27
  %i.hv = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !24
  %i.hx = zext i8 %i.hw to i32
  %i.hy = getelementptr inbounds nuw i8, ptr %i.b, i64 11
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !24
  %i.ia = zext i8 %i.hz to i32
  %i.ib = add nuw nsw i32 %i.ia, %i.hx
  %i.ic = getelementptr inbounds nuw i8, ptr %i.c, i64 11
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !24
  %i.ie = zext i8 %i.id to i32
  %i.if = add nuw nsw i32 %i.ib, %i.ie
  %i.ig = getelementptr inbounds nuw i8, ptr %i.d, i64 11
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !24
  %i.ii = zext i8 %i.ih to i32
  %i.ij = add nuw nsw i32 %i.if, %i.ii
  %i.ik = getelementptr inbounds nuw i8, ptr %i.f, i64 44
  store i32 %i.ij, ptr %i.ik, align 4, !tbaa !27
  %i.il = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.im = load i8, ptr %i.il, align 4, !tbaa !24
  %i.in = zext i8 %i.im to i32
  %i.io = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.ip = load i8, ptr %i.io, align 4, !tbaa !24
  %i.iq = zext i8 %i.ip to i32
  %i.ir = add nuw nsw i32 %i.iq, %i.in
  %i.is = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.it = load i8, ptr %i.is, align 4, !tbaa !24
  %i.iu = zext i8 %i.it to i32
  %i.iv = add nuw nsw i32 %i.ir, %i.iu
  %i.iw = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.ix = load i8, ptr %i.iw, align 4, !tbaa !24
  %i.iy = zext i8 %i.ix to i32
  %i.iz = add nuw nsw i32 %i.iv, %i.iy
  %i.ja = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store i32 %i.iz, ptr %i.ja, align 16, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.jb = extractelement <4 x i16> %i.gg, i64 0
  %i.jc = sext i16 %i.jb to i64
  %i.jd = sub nsw i64 %i.cc, %i.jc
  %i.je = icmp ult i64 %i.jd, 2
  br i1 %i.je, label %bb.w, label %bb.y

.lr.ph68.i:                                       ; preds = %.preheader58.i, %.lr.ph68.i
  %.035.i67.i = phi i64 [ %i.kd, %.lr.ph68.i ], [ %i.ef, %.preheader58.i ] ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.035.i67.i ; 4 uses
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !24
  %i.jh = zext i8 %i.jg to i64
  %i.ji = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.jh ; 2 uses
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !24
  %i.jk = add i8 %i.jj, 1
  store i8 %i.jk, ptr %i.ji, align 1, !tbaa !24
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jf, i64 1
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !24
  %i.jn = zext i8 %i.jm to i64
  %i.jo = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.jn ; 2 uses
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !24
  %i.jq = add i8 %i.jp, 1
  store i8 %i.jq, ptr %i.jo, align 1, !tbaa !24
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jf, i64 2
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !24
  %i.jt = zext i8 %i.js to i64
  %i.ju = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.jt ; 2 uses
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !24
  %i.jw = add i8 %i.jv, 1
  store i8 %i.jw, ptr %i.ju, align 1, !tbaa !24
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jf, i64 3
  %i.jy = load i8, ptr %i.jx, align 1, !tbaa !24
  %i.jz = zext i8 %i.jy to i64
  %i.ka = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.jz ; 2 uses
  %i.kb = load i8, ptr %i.ka, align 1, !tbaa !24
  %i.kc = add i8 %i.kb, 1
  store i8 %i.kc, ptr %i.ka, align 1, !tbaa !24
  %i.kd = add nuw nsw i64 %.035.i67.i, 4          ; 2 uses
  %i.ke = icmp samesign ult i64 %i.kd, %i.cc
  br i1 %i.ke, label %.lr.ph68.i, label %.preheader.loopexit.i, !llvm.loop !42

bb.w:                                             ; preds = %.preheader.i
  %i.kf = load i32, ptr @ZL_g_logLevel, align 4, !tbaa !27
  %i.kg = icmp sgt i32 %i.kf, 1
  br i1 %i.kg, label %bb.x, label %buildHUFDTable.exit.thread154

bb.x:                                             ; preds = %bb.w
  tail call void (ptr, ptr, i32, ptr, ...) @ZL_LOG_func(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.buildHUFDTable, i32 noundef 261, ptr noundef nonnull @.str.111) #8
  br label %buildHUFDTable.exit.thread154

bb.y:                                             ; preds = %.preheader.i
  %i.kh = trunc nuw nsw i64 %i.cc to i32          ; 2 uses
  br i1 %i.ca, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ki = call i64 @HUF_buildDTableX2(ptr noundef nonnull %i.ec, ptr noundef nonnull %i.e, i32 noundef %i.kh, ptr noundef nonnull %i.f, i32 noundef %i.dq) #8
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.kj = call i64 @HUF_buildDTableX1(ptr noundef nonnull %i.ec, ptr noundef nonnull %i.e, i32 noundef %i.kh, ptr noundef nonnull %i.f, i32 noundef %i.dq) #8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.kk = phi i64 [ %i.ki, %bb.z ], [ %i.kj, %bb.aa ] ; 2 uses
  %i.kl = call i32 @ZS_HUF_isError(i64 noundef %i.kk) #8
  %.not54.i = icmp eq i32 %i.kl, 0
  br i1 %.not54.i, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.km = load i32, ptr @ZL_g_logLevel, align 4, !tbaa !27
  %i.kn = icmp sgt i32 %i.km, 1
  br i1 %i.kn, label %bb.ad, label %buildHUFDTable.exit.thread154

bb.ad:                                            ; preds = %bb.ac
  %i.ko = zext i1 %i.ca to i32
  %i.kp = call ptr @ZS_HUF_getErrorName(i64 noundef %i.kk) #8
  call void (ptr, ptr, i32, ptr, ...) @ZL_LOG_func(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.buildHUFDTable, i32 noundef 281, ptr noundef nonnull @.str.112, i32 noundef %i.ko, ptr noundef %i.kp) #8
  br label %buildHUFDTable.exit.thread154

buildHUFDTable.exit.thread154:                    ; preds = %bb.x, %bb.w, %bb.ad, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  br label %.thread

.thread:                                          ; preds = %buildHUFDTable.exit.thread154, %bb.l, %bb.k, %bb.n, %bb.q, %bb.m, %bb.p, %bb.t, %bb.s, %bb.u
  %i.kq = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @DI_huffman_v2.__zl_static_error_info.66, ptr noundef nonnull %2, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.60, i32 noundef 323, i32 noundef 12, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, ptr noundef null, ptr noundef null) #8 ; 2 uses
  %i.kr = extractvalue { i32, ptr } %i.kq, 0      ; 2 uses
  %i.ks = extractvalue { i32, ptr } %i.kq, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.kr, ptr %i.ks, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #8
  %i.kt = ptrtoint ptr %i.ks to i64
  br label %.thread136

bb.ae:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  %i.ku = call ptr @ZL_Decoder_create1OutStream(ptr noundef %0, i64 noundef %.lcssa220, i64 noundef 1) #8 ; 3 uses
  %.not116 = icmp eq ptr %i.ku, null
  br i1 %.not116, label %.thread161, label %bb.af, !prof !26

.thread161:                                       ; preds = %bb.ae
  %i.kv = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @DI_huffman_v2.__zl_static_error_info.67, ptr noundef nonnull %2, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.60, i32 noundef 326, i32 noundef 70, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, ptr noundef null, ptr noundef null) #8 ; 2 uses
  %i.kw = extractvalue { i32, ptr } %i.kv, 0      ; 2 uses
  %i.kx = extractvalue { i32, ptr } %i.kv, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.kw, ptr %i.kx, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #8
  %i.ky = ptrtoint ptr %i.kx to i64
  br label %.thread136

bb.af:                                            ; preds = %bb.ae
  %i.kz = call ptr @ZL_Data_wPtr(ptr noundef nonnull %i.ku) #8
  %i.la = call ptr @ZL_Data_rPtr(ptr noundef %i.k) #8
  %i.lb = call i64 @ZL_Data_numElts(ptr noundef %i.k) #8
  %i.lc = select i1 %i.ca, ptr @ZS_HUF_decompress4X2_usingDTable, ptr @ZS_HUF_decompress4X1_usingDTable
  %i.ld = select i1 %i.bw, ptr %i.lc, ptr @ZS_HUF_decompress1X1_usingDTable
  %i.le = call i64 %i.ld(ptr noundef %i.kz, i64 noundef %.lcssa220, ptr noundef %i.la, i64 noundef %i.lb, ptr noundef nonnull %i.ec) #8, !callees !43 ; 4 uses
  %i.lf = call i32 @ZS_HUF_isError(i64 noundef %i.le) #8
  %.not117 = icmp eq i32 %i.lf, 0
  br i1 %.not117, label %bb.ah, label %bb.ag, !prof !20

bb.ag:                                            ; preds = %bb.af
  %i.lg = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @DI_huffman_v2.__zl_static_error_info.68, ptr noundef nonnull %2, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.60, i32 noundef 343, i32 noundef 12, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.70) #8 ; 2 uses
  %i.lh = extractvalue { i32, ptr } %i.lg, 0      ; 2 uses
  %i.li = extractvalue { i32, ptr } %i.lg, 1      ; 2 uses
  %i.lj = call ptr @ZS_HUF_getErrorName(i64 noundef %i.le) #8
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.lh, ptr %i.li, ptr noundef nonnull @.str.71, ptr noundef %i.lj) #8
  %i.lk = ptrtoint ptr %i.li to i64
  br label %.thread136

bb.ah:                                            ; preds = %bb.af
  %.not118 = icmp eq i64 %i.le, %.lcssa220
  br i1 %.not118, label %bb.aj, label %bb.ai, !prof !20

bb.ai:                                            ; preds = %bb.ah
  %i.ll = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @DI_huffman_v2.__zl_static_error_info.72, ptr noundef nonnull %2, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.60, i32 noundef 344, i32 noundef 12, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.32, i64 noundef %i.le, i64 noundef %.lcssa220) #8 ; 2 uses
  %i.lm = extractvalue { i32, ptr } %i.ll, 0      ; 2 uses
  %i.ln = extractvalue { i32, ptr } %i.ll, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.lm, ptr %i.ln, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #8
  %i.lo = ptrtoint ptr %i.ln to i64
  br label %.thread136

bb.aj:                                            ; preds = %bb.ah
  %i.lp = call { i32, i64 } @ZL_Data_commit(ptr noundef nonnull %i.ku, i64 noundef %.lcssa220) #8 ; 2 uses
  %i.lq = extractvalue { i32, i64 } %i.lp, 0      ; 2 uses
  %.not119 = icmp eq i32 %i.lq, 0
  br i1 %.not119, label %.thread136, label %bb.ak, !prof !20

bb.ak:                                            ; preds = %bb.aj
  %i.lr = extractvalue { i32, i64 } %i.lp, 1
  %i.ls = inttoptr i64 %i.lr to ptr
  %i.lt = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %2, i32 %i.lq, ptr %i.ls, ptr nonnull @DI_huffman_v2.__zl_static_error_info.73, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.60, i32 noundef 347, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.8) #8 ; 2 uses
  %i.lu = extractvalue { i32, ptr } %i.lt, 0
  %i.lv = extractvalue { i32, ptr } %i.lt, 1
  %i.lw = ptrtoint ptr %i.lv to i64
  br label %.thread136

.thread136:                                       ; preds = %bb.ai, %bb.ag, %bb.d, %bb.f, %bb.aj, %.thread161, %.thread, %bb.g, %bb.b, %bb.ak
  %.sroa.0102.12 = phi i32 [ %i.n, %bb.b ], [ %i.bt, %bb.g ], [ %i.kr, %.thread ], [ %i.lu, %bb.ak ], [ 0, %bb.aj ], [ %i.aa, %bb.f ], [ %i.kw, %.thread161 ], [ %i.v, %bb.d ], [ %i.lm, %bb.ai ], [ %i.lh, %bb.ag ]
  %.sroa.24.12 = phi i64 [ %i.p, %bb.b ], [ %i.bv, %bb.g ], [ %i.kt, %.thread ], [ %i.lw, %bb.ak ], [ 0, %bb.aj ], [ %i.ac, %bb.f ], [ %i.ky, %.thread161 ], [ %i.x, %bb.d ], [ %i.lo, %bb.ai ], [ %i.lk, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.0102.12, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.24.12, 1
  ret { i32, i64 } %.fca.1.insert
}

declare i32 @ZS_HUF_selectDecoder(i64 noundef, i64 noundef) local_unnamed_addr #4

declare i64 @ZS_HUF_decompress4X2_usingDTable(ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

declare i64 @ZS_HUF_decompress4X1_usingDTable(ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

declare i64 @ZS_HUF_decompress1X1_usingDTable(ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @ZS_HUF_isError(i64 noundef) local_unnamed_addr #4

declare ptr @ZS_HUF_getErrorName(i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define { i32, i64 } @DI_huffman_struct_v2(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.ZL_ErrorContext, align 8    ; 14 uses
  %3 = alloca %struct.ZL_ReadCursor, align 8      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = tail call ptr @ZL_Decoder_getOperationContext(ptr noundef %0) #9
  store ptr %i.b, ptr %2, align 8, !tbaa !17
  %i.c = load ptr, ptr %1, align 8, !tbaa !19     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !19   ; 2 uses
  %i.f = tail call i64 @ZL_Data_eltWidth(ptr noundef %i.c) #8 ; 2 uses
  %.not = icmp eq i64 %i.f, 1
  br i1 %.not, label %bb.c, label %bb.b, !prof !20

bb.b:                                             ; preds = %bb.a
  %i.g = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @DI_huffman_struct_v2.__zl_static_error_info, ptr noundef nonnull %2, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.74, i32 noundef 429, i32 noundef 12, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.62, i64 noundef %i.f, i64 noundef 1) #8 ; 2 uses
  %i.h = extractvalue { i32, ptr } %i.g, 0        ; 2 uses
  %i.i = extractvalue { i32, ptr } %i.g, 1        ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.h, ptr %i.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #8
  %i.j = ptrtoint ptr %i.i to i64
  br label %.thread147

bb.c:                                             ; preds = %bb.a
  %i.k = tail call { ptr, i64 } @ZL_Decoder_getCodecHeader(ptr noundef %0) #8 ; 2 uses
  %i.l = extractvalue { ptr, i64 } %i.k, 0        ; 9 uses
  %i.m = extractvalue { ptr, i64 } %i.k, 1        ; 5 uses
end_hunk_0
