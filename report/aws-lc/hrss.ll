Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/hrss?download=true
inline.NumInlined: 316
inline.NumDeleted: 69
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 64
begin_hunk_0_@HRSS_encap:bb.a
  %i.cr = and i32 %i.cq, 32
  %.not.i41 = icmp eq i32 %i.cr, 0
  br i1 %.not.i41, label %bb.e, label %bb.d

bb.d:                                             ; preds = %poly_short_sample.exit40
  tail call void @poly_Rq_mul(ptr noundef nonnull %i.cp, ptr noundef nonnull %i.az, ptr noundef %i.d, ptr noundef nonnull %i.i) #10
  %i.cs = getelementptr inbounds nuw i8, ptr %i.i, i64 40154
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.cs, i8 0, i64 6, i1 false)
  br label %vector.body75.preheader

bb.e:                                             ; preds = %poly_short_sample.exit40
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1408) %4, ptr noundef nonnull readonly align 8 dereferenceable(1408) %i.az, i64 1408, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1408) %5, ptr noundef nonnull readonly align 1 dereferenceable(1408) %i.d, i64 1408, i1 false)
  %i.ct = getelementptr inbounds nuw i8, ptr %i.i, i64 2816
  call fastcc void @poly_mul_vec_aux(ptr noundef nonnull %i.i, ptr noundef %i.ct, ptr noundef %4, ptr noundef %5, i64 noundef 88)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1408) %6, i8 0, i64 1408, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.020.i.i = phi i64 [ 0, %bb.e ], [ %i.dg, %bb.f ] ; 3 uses
  %i.cu = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %.020.i.i ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 1392
  %i.cw = load <16 x i8>, ptr %i.cv, align 16, !tbaa !22
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 1408
  %i.cy = load <16 x i8>, ptr %i.cx, align 16, !tbaa !22
  %i.cz = load <8 x i16>, ptr %i.cu, align 16, !tbaa !22
  %i.da = shufflevector <16 x i8> %i.cw, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25>
  %i.db = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.cy, <16 x i32> <i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25>
  %i.dc = or <16 x i8> %i.db, %i.da
  %i.dd = bitcast <16 x i8> %i.dc to <8 x i16>
  %i.de = add <8 x i16> %i.cz, %i.dd
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %.020.i.i
  store <8 x i16> %i.de, ptr %i.df, align 16, !tbaa !22
  %i.dg = add nuw nsw i64 %.020.i.i, 1            ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.dg, 88
  br i1 %exitcond.not.i.i, label %poly_mul_vec.exit.i, label %bb.f, !llvm.loop !1

poly_mul_vec.exit.i:                              ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1408) %i.cp, ptr noundef nonnull readonly align 16 dereferenceable(1408) %6, i64 1402, i1 false)
  %i.dh = getelementptr inbounds nuw i8, ptr %i.i, i64 40154
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.dh, i8 0, i64 6, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %vector.body75.preheader

vector.body75.preheader:                          ; preds = %bb.d, %poly_mul_vec.exit.i
  br label %vector.body75

vector.body75:                                    ; preds = %vector.body75.1, %vector.body75.preheader
  %index76 = phi i64 [ 0, %vector.body75.preheader ], [ %index.next81.1, %vector.body75.1 ] ; 5 uses
  %i.di = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %index76 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %wide.load77 = load <8 x i16>, ptr %i.di, align 2, !tbaa !24
  %wide.load78 = load <8 x i16>, ptr %i.dj, align 2, !tbaa !24
  %i.dk = getelementptr inbounds nuw [2 x i8], ptr %i.cp, i64 %index76 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16 ; 2 uses
  %wide.load79 = load <8 x i16>, ptr %i.dk, align 2, !tbaa !24
  %wide.load80 = load <8 x i16>, ptr %i.dl, align 2, !tbaa !24
  %i.dm = add <8 x i16> %wide.load79, %wide.load77
  %i.dn = add <8 x i16> %wide.load80, %wide.load78
  store <8 x i16> %i.dm, ptr %i.dk, align 2, !tbaa !24
  store <8 x i16> %i.dn, ptr %i.dl, align 2, !tbaa !24
  %i.do = icmp eq i64 %index76, 672
  br i1 %i.do, label %vec.epilog.vector.body, label %vector.body75.1

vector.body75.1:                                  ; preds = %vector.body75
  %index.next81 = or disjoint i64 %index76, 16    ; 2 uses
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %index.next81 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %wide.load77.1 = load <8 x i16>, ptr %i.dp, align 2, !tbaa !24
  %wide.load78.1 = load <8 x i16>, ptr %i.dq, align 2, !tbaa !24
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr %i.cp, i64 %index.next81 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16 ; 2 uses
  %wide.load79.1 = load <8 x i16>, ptr %i.dr, align 2, !tbaa !24
  %wide.load80.1 = load <8 x i16>, ptr %i.ds, align 2, !tbaa !24
  %i.dt = add <8 x i16> %wide.load79.1, %wide.load77.1
  %i.du = add <8 x i16> %wide.load80.1, %wide.load78.1
  store <8 x i16> %i.dt, ptr %i.dr, align 2, !tbaa !24
  store <8 x i16> %i.du, ptr %i.ds, align 2, !tbaa !24
  %index.next81.1 = add nuw nsw i64 %index76, 32
  br label %vector.body75

vec.epilog.vector.body:                           ; preds = %vector.body75
  %i.dv = getelementptr inbounds nuw i8, ptr %i.i, i64 38720
  %wide.load84 = load <4 x i16>, ptr %i.dv, align 8, !tbaa !24
  %i.dw = getelementptr inbounds nuw i8, ptr %i.i, i64 40128 ; 2 uses
  %wide.load85 = load <4 x i16>, ptr %i.dw, align 8, !tbaa !24
  %i.dx = add <4 x i16> %wide.load85, %wide.load84
  store <4 x i16> %i.dx, ptr %i.dw, align 8, !tbaa !24
  %i.dy = getelementptr inbounds nuw i8, ptr %i.i, i64 38728
  %wide.load84.1 = load <4 x i16>, ptr %i.dy, align 8, !tbaa !24
  %i.dz = getelementptr inbounds nuw i8, ptr %i.i, i64 40136 ; 2 uses
  %wide.load85.1 = load <4 x i16>, ptr %i.dz, align 8, !tbaa !24
  %i.ea = add <4 x i16> %wide.load85.1, %wide.load84.1
  store <4 x i16> %i.ea, ptr %i.dz, align 8, !tbaa !24
  %i.eb = getelementptr inbounds nuw i8, ptr %i.i, i64 38736
  %wide.load84.2 = load <4 x i16>, ptr %i.eb, align 8, !tbaa !24
  %i.ec = getelementptr inbounds nuw i8, ptr %i.i, i64 40144 ; 2 uses
  %wide.load85.2 = load <4 x i16>, ptr %i.ec, align 8, !tbaa !24
  %i.ed = add <4 x i16> %wide.load85.2, %wide.load84.2
  store <4 x i16> %i.ed, ptr %i.ec, align 8, !tbaa !24
  %i.ee = getelementptr inbounds nuw i8, ptr %i.i, i64 38744
  %i.ef = load i16, ptr %i.ee, align 8, !tbaa !24
  %i.eg = getelementptr inbounds nuw i8, ptr %i.i, i64 40152 ; 2 uses
  %i.eh = load i16, ptr %i.eg, align 8, !tbaa !24
  %i.ei = add i16 %i.eh, %i.ef
  store i16 %i.ei, ptr %i.eg, align 8, !tbaa !24
  call fastcc void @poly_marshal(ptr noundef %0, ptr noundef nonnull %i.cp)
  %i.ej = getelementptr inbounds nuw i8, ptr %i.i, i64 40272 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %vec.epilog.vector.body
  %.024.i = phi ptr [ %i.l, %vec.epilog.vector.body ], [ %i.ex, %bb.g ] ; 3 uses
  %.01523.i = phi i64 [ 0, %vec.epilog.vector.body ], [ %i.ey, %bb.g ] ; 2 uses
  %i.ek = load i16, ptr %.024.i, align 2, !tbaa !24
  %i.el = and i16 %i.ek, 3                        ; 2 uses
  %i.em = lshr i16 %i.el, 1
  %i.en = xor i16 %i.em, %i.el
  %i.eo = getelementptr inbounds nuw i8, ptr %.024.i, i64 2
  %i.ep = load <4 x i16>, ptr %i.eo, align 2, !tbaa !24
  %i.eq = and <4 x i16> %i.ep, splat (i16 3)      ; 2 uses
  %i.er = lshr <4 x i16> %i.eq, splat (i16 1)
  %i.es = xor <4 x i16> %i.er, %i.eq
  %i.et = mul nuw nsw <4 x i16> %i.es, <i16 3, i16 9, i16 27, i16 81>
  %i.eu = call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.et)
  %op.rdx88 = add nuw nsw i16 %i.eu, %i.en
  %i.ev = trunc i16 %op.rdx88 to i8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ej, i64 %.01523.i
  store i8 %i.ev, ptr %i.ew, align 1, !tbaa !22
  %i.ex = getelementptr inbounds nuw i8, ptr %.024.i, i64 10
  %i.ey = add nuw nsw i64 %.01523.i, 1            ; 2 uses
  %exitcond.not.i42 = icmp eq i64 %i.ey, 140
  br i1 %exitcond.not.i42, label %poly_marshal_mod3.exit, label %bb.g, !llvm.loop !2

poly_marshal_mod3.exit:                           ; preds = %bb.g
  %i.ez = getelementptr inbounds nuw i8, ptr %i.i, i64 40412 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %poly_marshal_mod3.exit
  %.024.i43 = phi ptr [ %i.az, %poly_marshal_mod3.exit ], [ %i.fn, %bb.h ] ; 3 uses
  %.01523.i44 = phi i64 [ 0, %poly_marshal_mod3.exit ], [ %i.fo, %bb.h ] ; 2 uses
  %i.fa = load i16, ptr %.024.i43, align 2, !tbaa !24
  %i.fb = and i16 %i.fa, 3                        ; 2 uses
  %i.fc = lshr i16 %i.fb, 1
  %i.fd = xor i16 %i.fc, %i.fb
  %i.fe = getelementptr inbounds nuw i8, ptr %.024.i43, i64 2
  %i.ff = load <4 x i16>, ptr %i.fe, align 2, !tbaa !24
  %i.fg = and <4 x i16> %i.ff, splat (i16 3)      ; 2 uses
  %i.fh = lshr <4 x i16> %i.fg, splat (i16 1)
  %i.fi = xor <4 x i16> %i.fh, %i.fg
  %i.fj = mul nuw nsw <4 x i16> %i.fi, <i16 3, i16 9, i16 27, i16 81>
  %i.fk = call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.fj)
  %op.rdx = add nuw nsw i16 %i.fk, %i.fd
  %i.fl = trunc i16 %op.rdx to i8
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ez, i64 %.01523.i44
  store i8 %i.fl, ptr %i.fm, align 1, !tbaa !22
  %i.fn = getelementptr inbounds nuw i8, ptr %.024.i43, i64 10
  %i.fo = add nuw nsw i64 %.01523.i44, 1          ; 2 uses
  %exitcond.not.i53 = icmp eq i64 %i.fo, 140
  br i1 %exitcond.not.i53, label %poly_marshal_mod3.exit54, label %bb.h, !llvm.loop !2

poly_marshal_mod3.exit54:                         ; preds = %bb.h
  %i.fp = getelementptr inbounds nuw i8, ptr %i.i, i64 40160 ; 6 uses
  %i.fq = call i32 @SHA256_Init(ptr noundef nonnull %i.fp) #10 ; 0 uses
  %i.fr = call i32 @SHA256_Update(ptr noundef nonnull %i.fp, ptr noundef nonnull @kSharedKey, i64 noundef 11) #10 ; 0 uses
  %i.fs = call i32 @SHA256_Update(ptr noundef nonnull %i.fp, ptr noundef nonnull %i.ej, i64 noundef 140) #10 ; 0 uses
  %i.ft = call i32 @SHA256_Update(ptr noundef nonnull %i.fp, ptr noundef nonnull %i.ez, i64 noundef 140) #10 ; 0 uses
  %i.fu = call i32 @SHA256_Update(ptr noundef nonnull %i.fp, ptr noundef %0, i64 noundef 1138) #10 ; 0 uses
  %i.fv = call i32 @SHA256_Final(ptr noundef %1, ptr noundef nonnull %i.fp) #10 ; 0 uses
  call void @OPENSSL_free(ptr noundef nonnull %i.e) #10
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %poly_marshal_mod3.exit54
  %.036 = phi i32 [ 1, %poly_marshal_mod3.exit54 ], [ 0, %bb.b ]
  ret i32 %.036
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @poly_lift(ptr nofree noundef nonnull captures(none) initializes((0, 6)) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #7 {
iter.check:
  %i.a = load i16, ptr %1, align 16, !tbaa !24
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.c = load i16, ptr %i.b, align 4, !tbaa !24
  %i.d = add i16 %i.c, %i.a                       ; 2 uses
  store i16 %i.d, ptr %0, align 16, !tbaa !24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.f = load i16, ptr %i.e, align 2, !tbaa !24   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  store i16 %i.f, ptr %i.g, align 2, !tbaa !24
  %i.h = load i16, ptr %1, align 16, !tbaa !24
  %i.i = load i16, ptr %i.b, align 4, !tbaa !24
  %i.j = sub i16 %i.i, %i.h                       ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  store i16 %i.j, ptr %i.k, align 4, !tbaa !24
  br label %vector.body

vector.body:                                      ; preds = %iter.check, %vector.body
  %index = phi i64 [ 0, %iter.check ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i16> [ zeroinitializer, %iter.check ], [ %i.dw, %vector.body ]
  %vec.phi77 = phi <8 x i16> [ zeroinitializer, %iter.check ], [ %i.dx, %vector.body ]
  %vec.phi78 = phi <8 x i16> [ zeroinitializer, %iter.check ], [ %i.fw, %vector.body ]
  %vec.phi79 = phi <8 x i16> [ zeroinitializer, %iter.check ], [ %i.fx, %vector.body ]
  %i.l = mul nuw i64 %index, 3                    ; 16 uses
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.l ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 6
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.l ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.l ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 18
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.l ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.l ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 30
  %i.w = getelementptr [2 x i8], ptr %1, i64 %i.l ; 3 uses
  %i.x = getelementptr i8, ptr %i.w, i64 36
  %i.y = getelementptr [2 x i8], ptr %1, i64 %i.l ; 3 uses
  %i.z = getelementptr i8, ptr %i.y, i64 42
  %i.aa = getelementptr [2 x i8], ptr %1, i64 %i.l ; 3 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 48
  %i.ac = getelementptr [2 x i8], ptr %1, i64 %i.l ; 3 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 54
  %i.ae = getelementptr [2 x i8], ptr %1, i64 %i.l ; 3 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 60
  %i.ag = getelementptr [2 x i8], ptr %1, i64 %i.l ; 3 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 66
  %i.ai = getelementptr [2 x i8], ptr %1, i64 %i.l ; 3 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 72
  %i.ak = getelementptr [2 x i8], ptr %1, i64 %i.l ; 3 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 78
  %i.am = getelementptr [2 x i8], ptr %1, i64 %i.l ; 3 uses
  %i.an = getelementptr i8, ptr %i.am, i64 84
  %i.ao = getelementptr [2 x i8], ptr %1, i64 %i.l ; 3 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 90
  %i.aq = getelementptr [2 x i8], ptr %1, i64 %i.l ; 3 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 96
  %i.as = load i16, ptr %i.n, align 2, !tbaa !24
  %i.at = load i16, ptr %i.p, align 2, !tbaa !24
  %i.au = load i16, ptr %i.r, align 2, !tbaa !24
  %i.av = load i16, ptr %i.t, align 2, !tbaa !24
  %i.aw = load i16, ptr %i.v, align 2, !tbaa !24
  %i.ax = load i16, ptr %i.x, align 2, !tbaa !24
  %i.ay = load i16, ptr %i.z, align 2, !tbaa !24
  %i.az = load i16, ptr %i.ab, align 2, !tbaa !24
  %i.ba = insertelement <8 x i16> poison, i16 %i.as, i64 0
  %i.bb = insertelement <8 x i16> %i.ba, i16 %i.at, i64 1
  %i.bc = insertelement <8 x i16> %i.bb, i16 %i.au, i64 2
  %i.bd = insertelement <8 x i16> %i.bc, i16 %i.av, i64 3
  %i.be = insertelement <8 x i16> %i.bd, i16 %i.aw, i64 4
  %i.bf = insertelement <8 x i16> %i.be, i16 %i.ax, i64 5
  %i.bg = insertelement <8 x i16> %i.bf, i16 %i.ay, i64 6
  %i.bh = insertelement <8 x i16> %i.bg, i16 %i.az, i64 7
  %i.bi = load i16, ptr %i.ad, align 2, !tbaa !24
  %i.bj = load i16, ptr %i.af, align 2, !tbaa !24
  %i.bk = load i16, ptr %i.ah, align 2, !tbaa !24
  %i.bl = load i16, ptr %i.aj, align 2, !tbaa !24
  %i.bm = load i16, ptr %i.al, align 2, !tbaa !24
  %i.bn = load i16, ptr %i.an, align 2, !tbaa !24
  %i.bo = load i16, ptr %i.ap, align 2, !tbaa !24
  %i.bp = load i16, ptr %i.ar, align 2, !tbaa !24
  %i.bq = insertelement <8 x i16> poison, i16 %i.bi, i64 0
  %i.br = insertelement <8 x i16> %i.bq, i16 %i.bj, i64 1
  %i.bs = insertelement <8 x i16> %i.br, i16 %i.bk, i64 2
  %i.bt = insertelement <8 x i16> %i.bs, i16 %i.bl, i64 3
  %i.bu = insertelement <8 x i16> %i.bt, i16 %i.bm, i64 4
  %i.bv = insertelement <8 x i16> %i.bu, i16 %i.bn, i64 5
  %i.bw = insertelement <8 x i16> %i.bv, i16 %i.bo, i64 6
  %i.bx = insertelement <8 x i16> %i.bw, i16 %i.bp, i64 7
  %i.by = getelementptr inbounds nuw i8, ptr %i.m, i64 10
  %i.bz = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ca = getelementptr inbounds nuw i8, ptr %i.q, i64 22
  %i.cb = getelementptr inbounds nuw i8, ptr %i.s, i64 28
  %i.cc = getelementptr inbounds nuw i8, ptr %i.u, i64 34
  %i.cd = getelementptr i8, ptr %i.w, i64 40
  %i.ce = getelementptr i8, ptr %i.y, i64 46
  %i.cf = getelementptr i8, ptr %i.aa, i64 52
  %i.cg = getelementptr i8, ptr %i.ac, i64 58
  %i.ch = getelementptr i8, ptr %i.ae, i64 64
  %i.ci = getelementptr i8, ptr %i.ag, i64 70
  %i.cj = getelementptr i8, ptr %i.ai, i64 76
  %i.ck = getelementptr i8, ptr %i.ak, i64 82
  %i.cl = getelementptr i8, ptr %i.am, i64 88
  %i.cm = getelementptr i8, ptr %i.ao, i64 94
  %i.cn = getelementptr i8, ptr %i.aq, i64 100
  %i.co = load i16, ptr %i.by, align 2, !tbaa !24
  %i.cp = load i16, ptr %i.bz, align 2, !tbaa !24
  %i.cq = load i16, ptr %i.ca, align 2, !tbaa !24
  %i.cr = load i16, ptr %i.cb, align 2, !tbaa !24
  %i.cs = load i16, ptr %i.cc, align 2, !tbaa !24
  %i.ct = load i16, ptr %i.cd, align 2, !tbaa !24
  %i.cu = load i16, ptr %i.ce, align 2, !tbaa !24
  %i.cv = load i16, ptr %i.cf, align 2, !tbaa !24
  %i.cw = insertelement <8 x i16> poison, i16 %i.co, i64 0
  %i.cx = insertelement <8 x i16> %i.cw, i16 %i.cp, i64 1
  %i.cy = insertelement <8 x i16> %i.cx, i16 %i.cq, i64 2
  %i.cz = insertelement <8 x i16> %i.cy, i16 %i.cr, i64 3
  %i.da = insertelement <8 x i16> %i.cz, i16 %i.cs, i64 4
  %i.db = insertelement <8 x i16> %i.da, i16 %i.ct, i64 5
  %i.dc = insertelement <8 x i16> %i.db, i16 %i.cu, i64 6
  %i.dd = insertelement <8 x i16> %i.dc, i16 %i.cv, i64 7 ; 2 uses
  %i.de = load i16, ptr %i.cg, align 2, !tbaa !24
  %i.df = load i16, ptr %i.ch, align 2, !tbaa !24
  %i.dg = load i16, ptr %i.ci, align 2, !tbaa !24
  %i.dh = load i16, ptr %i.cj, align 2, !tbaa !24
  %i.di = load i16, ptr %i.ck, align 2, !tbaa !24
  %i.dj = load i16, ptr %i.cl, align 2, !tbaa !24
  %i.dk = load i16, ptr %i.cm, align 2, !tbaa !24
  %i.dl = load i16, ptr %i.cn, align 2, !tbaa !24
  %i.dm = insertelement <8 x i16> poison, i16 %i.de, i64 0
  %i.dn = insertelement <8 x i16> %i.dm, i16 %i.df, i64 1
  %i.do = insertelement <8 x i16> %i.dn, i16 %i.dg, i64 2
  %i.dp = insertelement <8 x i16> %i.do, i16 %i.dh, i64 3
  %i.dq = insertelement <8 x i16> %i.dp, i16 %i.di, i64 4
  %i.dr = insertelement <8 x i16> %i.dq, i16 %i.dj, i64 5
  %i.ds = insertelement <8 x i16> %i.dr, i16 %i.dk, i64 6
  %i.dt = insertelement <8 x i16> %i.ds, i16 %i.dl, i64 7 ; 2 uses
  %i.du = sub <8 x i16> %vec.phi, %i.bh
  %i.dv = sub <8 x i16> %vec.phi77, %i.bx
  %i.dw = add <8 x i16> %i.du, %i.dd              ; 2 uses
  %i.dx = add <8 x i16> %i.dv, %i.dt              ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.o, i64 14
  %i.ea = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  %i.eb = getelementptr inbounds nuw i8, ptr %i.s, i64 26
  %i.ec = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.ed = getelementptr i8, ptr %i.w, i64 38
  %i.ee = getelementptr i8, ptr %i.y, i64 44
  %i.ef = getelementptr i8, ptr %i.aa, i64 50
  %i.eg = getelementptr i8, ptr %i.ac, i64 56
  %i.eh = getelementptr i8, ptr %i.ae, i64 62
  %i.ei = getelementptr i8, ptr %i.ag, i64 68
  %i.ej = getelementptr i8, ptr %i.ai, i64 74
  %i.ek = getelementptr i8, ptr %i.ak, i64 80
  %i.el = getelementptr i8, ptr %i.am, i64 86
  %i.em = getelementptr i8, ptr %i.ao, i64 92
  %i.en = getelementptr i8, ptr %i.aq, i64 98
  %i.eo = load i16, ptr %i.dy, align 2, !tbaa !24
  %i.ep = load i16, ptr %i.dz, align 2, !tbaa !24
  %i.eq = load i16, ptr %i.ea, align 2, !tbaa !24
  %i.er = load i16, ptr %i.eb, align 2, !tbaa !24
  %i.es = load i16, ptr %i.ec, align 2, !tbaa !24
  %i.et = load i16, ptr %i.ed, align 2, !tbaa !24
  %i.eu = load i16, ptr %i.ee, align 2, !tbaa !24
  %i.ev = load i16, ptr %i.ef, align 2, !tbaa !24
  %i.ew = insertelement <8 x i16> poison, i16 %i.eo, i64 0
  %i.ex = insertelement <8 x i16> %i.ew, i16 %i.ep, i64 1
  %i.ey = insertelement <8 x i16> %i.ex, i16 %i.eq, i64 2
  %i.ez = insertelement <8 x i16> %i.ey, i16 %i.er, i64 3
  %i.fa = insertelement <8 x i16> %i.ez, i16 %i.es, i64 4
  %i.fb = insertelement <8 x i16> %i.fa, i16 %i.et, i64 5
  %i.fc = insertelement <8 x i16> %i.fb, i16 %i.eu, i64 6
  %i.fd = insertelement <8 x i16> %i.fc, i16 %i.ev, i64 7
  %i.fe = load i16, ptr %i.eg, align 2, !tbaa !24
  %i.ff = load i16, ptr %i.eh, align 2, !tbaa !24
  %i.fg = load i16, ptr %i.ei, align 2, !tbaa !24
  %i.fh = load i16, ptr %i.ej, align 2, !tbaa !24
  %i.fi = load i16, ptr %i.ek, align 2, !tbaa !24
  %i.fj = load i16, ptr %i.el, align 2, !tbaa !24
  %i.fk = load i16, ptr %i.em, align 2, !tbaa !24
  %i.fl = load i16, ptr %i.en, align 2, !tbaa !24
  %i.fm = insertelement <8 x i16> poison, i16 %i.fe, i64 0
  %i.fn = insertelement <8 x i16> %i.fm, i16 %i.ff, i64 1
  %i.fo = insertelement <8 x i16> %i.fn, i16 %i.fg, i64 2
  %i.fp = insertelement <8 x i16> %i.fo, i16 %i.fh, i64 3
  %i.fq = insertelement <8 x i16> %i.fp, i16 %i.fi, i64 4
  %i.fr = insertelement <8 x i16> %i.fq, i16 %i.fj, i64 5
  %i.fs = insertelement <8 x i16> %i.fr, i16 %i.fk, i64 6
  %i.ft = insertelement <8 x i16> %i.fs, i16 %i.fl, i64 7
  %i.fu = sub <8 x i16> %vec.phi78, %i.dd
  %i.fv = sub <8 x i16> %vec.phi79, %i.dt
  %i.fw = add <8 x i16> %i.fu, %i.fd              ; 2 uses
  %i.fx = add <8 x i16> %i.fv, %i.ft              ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.fy = icmp eq i64 %index.next, 224
  br i1 %i.fy, label %vec.epilog.vector.body, label %vector.body, !llvm.loop !108

vec.epilog.vector.body:                           ; preds = %vector.body
  %bin.rdx80 = add <8 x i16> %i.fx, %i.fw
  %i.fz = tail call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx80)
  %i.ga = insertelement <8 x i16> <i16 poison, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>, i16 %i.fz, i64 0
  %bin.rdx = add <8 x i16> %i.dx, %i.dw
  %i.gb = tail call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx)
  %i.gc = insertelement <8 x i16> <i16 poison, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>, i16 %i.gb, i64 0
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 1350
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 1356
  %i.gf = getelementptr i8, ptr %1, i64 1362
  %i.gg = getelementptr i8, ptr %1, i64 1368
  %i.gh = getelementptr i8, ptr %1, i64 1374
  %i.gi = getelementptr i8, ptr %1, i64 1380
  %i.gj = getelementptr i8, ptr %1, i64 1386
  %i.gk = getelementptr i8, ptr %1, i64 1392
  %i.gl = load i16, ptr %i.gd, align 2, !tbaa !24
  %i.gm = load i16, ptr %i.ge, align 4, !tbaa !24
  %i.gn = load i16, ptr %i.gf, align 2, !tbaa !24
  %i.go = load i16, ptr %i.gg, align 8, !tbaa !24
  %i.gp = load i16, ptr %i.gh, align 2, !tbaa !24
  %i.gq = load i16, ptr %i.gi, align 4, !tbaa !24
  %i.gr = load i16, ptr %i.gj, align 2, !tbaa !24
end_hunk_0
