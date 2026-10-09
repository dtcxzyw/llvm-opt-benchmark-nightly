Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/texture3d?download=true
inline.NumInlined: 2854
inline.NumDeleted: 714
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN11OpenImageIO4v3_117TextureSystemImpl22accum3d_sample_closestERKN9Imath_3_14Vec3IfEEiRNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiifPfSD_SD_SD_:bb.a
  %i.bu = getelementptr inbounds nuw i8, ptr %i.l, i64 38
  %i.bv = load i8, ptr %i.bu, align 2
  %i.bw = trunc i8 %i.bv to i1
  br i1 %i.bw, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bx = load i32, ptr %i.a, align 4, !tbaa !42  ; 2 uses
  %i.by = load i32, ptr %i.p, align 4, !tbaa !214 ; 2 uses
  %.not = icmp slt i32 %i.bx, %i.by
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bz = load i32, ptr %i.bh, align 4, !tbaa !215
  %i.ca = add nsw i32 %i.bz, %i.by
  %i.cb = icmp slt i32 %i.bx, %i.ca
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.cc = phi i1 [ false, %bb.b ], [ %i.cb, %bb.c ]
  %i.cd = select i1 %i.bj, i1 %i.cc, i1 false
  %i.ce = load i32, ptr %i.b, align 4, !tbaa !42  ; 2 uses
  %i.cf = load i32, ptr %i.bk, align 4, !tbaa !216 ; 2 uses
  %.not175 = icmp slt i32 %i.ce, %i.cf
  br i1 %.not175, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cg = load i32, ptr %i.bm, align 4, !tbaa !217
  %i.ch = add nsw i32 %i.cg, %i.cf
  %i.ci = icmp slt i32 %i.ce, %i.ch
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.cj = phi i1 [ false, %bb.d ], [ %i.ci, %bb.e ]
  %i.ck = select i1 %i.bo, i1 %i.cj, i1 false
  %i.cl = load i32, ptr %i.c, align 4, !tbaa !42  ; 2 uses
  %i.cm = load i32, ptr %i.bp, align 4, !tbaa !218 ; 2 uses
  %.not176 = icmp slt i32 %i.cl, %i.cm
  br i1 %.not176, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cn = load i32, ptr %i.br, align 4, !tbaa !219
  %i.co = add nsw i32 %i.cn, %i.cm
  %i.cp = icmp slt i32 %i.cl, %i.co
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.cq = phi i1 [ false, %bb.f ], [ %i.cp, %bb.g ]
  %i.cr = select i1 %i.bt, i1 %i.cq, i1 false
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.a
  %.0162.in = phi i1 [ %i.bj, %bb.a ], [ %i.cd, %bb.h ]
  %.0161.in = phi i1 [ %i.bo, %bb.a ], [ %i.ck, %bb.h ]
  %.0160.in = phi i1 [ %i.bt, %bb.a ], [ %i.cr, %bb.h ]
  %i.cs = and i1 %.0162.in, %.0161.in
  %i.ct = and i1 %i.cs, %.0160.in
  br i1 %i.ct, label %bb.j, label %bb.ac

bb.j:                                             ; preds = %bb.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.p, i64 60 ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !220 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !221
  %i.cy = icmp sgt i32 %i.cv, %i.cx
  br i1 %i.cy, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cz = load i32, ptr %5, align 8, !tbaa !183   ; 2 uses
  %i.da = add nsw i32 %i.cz, %7
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.0159 = phi i32 [ %i.cz, %bb.k ], [ 0, %bb.j ] ; 2 uses
  %.0158 = phi i32 [ %i.da, %bb.k ], [ %i.cv, %bb.j ] ; 2 uses
  %i.db = load i32, ptr %i.a, align 4, !tbaa !42
  %i.dc = getelementptr inbounds nuw i8, ptr %i.p, i64 48 ; 2 uses
  %i.dd = load i32, ptr %i.b, align 4, !tbaa !42
  %i.de = getelementptr inbounds nuw i8, ptr %i.p, i64 52
  %i.df = load i32, ptr %i.c, align 4, !tbaa !42  ; 2 uses
  %i.dg = load i32, ptr %i.bp, align 4, !tbaa !218
  %i.dh = sub nsw i32 %i.df, %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !222
  %i.dk = srem i32 %i.dh, %i.dj                   ; 2 uses
  %i.dl = sub nsw i32 %i.df, %i.dk
  %i.dm = getelementptr inbounds nuw i8, ptr %5, i64 68
  %i.dn = load <2 x i32>, ptr %i.p, align 4, !tbaa !42
  %i.do = insertelement <2 x i32> poison, i32 %i.db, i64 0
  %i.dp = insertelement <2 x i32> %i.do, i32 %i.dd, i64 1 ; 2 uses
  %i.dq = sub nsw <2 x i32> %i.dp, %i.dn
  %i.dr = load <2 x i32>, ptr %i.dc, align 4, !tbaa !42
  %i.ds = srem <2 x i32> %i.dq, %i.dr             ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  %i.dt = load i32, ptr %i.d, align 4, !tbaa !130 ; 2 uses
  %i.du = sub nsw <2 x i32> %i.dp, %i.ds
  %i.dv = load i32, ptr %i.dm, align 4, !tbaa !188
  store <2 x i32> %i.du, ptr %13, align 8, !tbaa !42
  %i.dw = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i32 %i.dl, ptr %i.dw, align 8, !tbaa !224
  %i.dx = getelementptr inbounds nuw i8, ptr %13, i64 12
  store i32 %i.dt, ptr %i.dx, align 4, !tbaa !225
  %i.dy = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i32 %2, ptr %i.dy, align 8, !tbaa !226
  %i.dz = getelementptr inbounds nuw i8, ptr %13, i64 20 ; 2 uses
  %i.ea = trunc i32 %.0159 to i16
  store i16 %i.ea, ptr %i.dz, align 4, !tbaa !227
  %i.eb = getelementptr inbounds nuw i8, ptr %13, i64 22 ; 2 uses
  %i.ec = trunc i32 %.0158 to i16
  store i16 %i.ec, ptr %i.eb, align 2, !tbaa !228
  %i.ed = getelementptr inbounds nuw i8, ptr %13, i64 24
  store i32 %i.dv, ptr %i.ed, align 8, !tbaa !229
  %i.ee = getelementptr inbounds nuw i8, ptr %13, i64 28
  store i32 0, ptr %i.ee, align 4, !tbaa !230
  %i.ef = getelementptr inbounds nuw i8, ptr %13, i64 32
  store ptr %3, ptr %i.ef, align 8, !tbaa !231
  %i.eg = icmp slt i32 %.0158, %.0159
  br i1 %i.eg, label %bb.m, label %_ZN11OpenImageIO4v3_16TileIDC2ERNS0_14ImageCacheFileEiiiiiiii.exit

bb.m:                                             ; preds = %bb.l
  %i.eh = sext i32 %i.dt to i64
  %i.ei = load ptr, ptr %i.f, align 8, !tbaa !132
  %i.ej = getelementptr inbounds nuw [128 x i8], ptr %i.ei, i64 %i.eh
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 120
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !161
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 60
  %i.en = load i32, ptr %i.em, align 4, !tbaa !182
  %i.eo = trunc i32 %i.en to i16
  store i16 %i.eo, ptr %i.eb, align 2, !tbaa !228
  br label %_ZN11OpenImageIO4v3_16TileIDC2ERNS0_14ImageCacheFileEiiiiiiii.exit

_ZN11OpenImageIO4v3_16TileIDC2ERNS0_14ImageCacheFileEiiiiiiii.exit: ; preds = %bb.l, %bb.m
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !63
  %i.er = call noundef zeroext i1 @_ZN11OpenImageIO4v3_114ImageCacheImpl9find_tileERKNS0_6TileIDEPNS0_23ImageCachePerThreadInfoEb(ptr noundef nonnull align 64 dereferenceable(25240) %i.eq, ptr noundef nonnull align 8 dereferenceable(40) %13, ptr noundef %4, i1 noundef zeroext true)
  br i1 %i.er, label %bb.q, label %bb.n

bb.n:                                             ; preds = %_ZN11OpenImageIO4v3_16TileIDC2ERNS0_14ImageCacheFileEiiiiiiii.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  %i.es = load ptr, ptr %i.ep, align 8, !tbaa !63
  call void @_ZNK11OpenImageIO4v3_114ImageCacheImpl8geterrorB5cxx11Eb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 64 dereferenceable(25240) %i.es, i1 noundef zeroext true)
  invoke void @_ZNK11OpenImageIO4v3_117TextureSystemImpl5errorIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull @.str.1, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.et = load ptr, ptr %14, align 8, !tbaa !193  ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ev = icmp eq ptr %i.et, %i.eu
  br i1 %i.ev, label %.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.o
  %i.ew = load i64, ptr %i.eu, align 8, !tbaa !187
  %i.ex = add i64 %i.ew, 1
  call void @_ZdlPvm(ptr noundef %i.et, i64 noundef %i.ex) #27
  br label %.thread

.thread:                                          ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  br label %.loopexit

bb.p:                                             ; preds = %bb.n
  %i.ey = landingpad { ptr, i32 }
          cleanup
  %i.ez = load ptr, ptr %14, align 8, !tbaa !193  ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.fb = icmp eq ptr %i.ez, %i.fa
  br i1 %i.fb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i178

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i178: ; preds = %bb.p
  %i.fc = load i64, ptr %i.fa, align 8, !tbaa !187
  %i.fd = add i64 %i.fc, 1
  call void @_ZdlPvm(ptr noundef %i.ez, i64 noundef %i.fd) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i178
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  resume { ptr, i32 } %i.ey

bb.q:                                             ; preds = %_ZN11OpenImageIO4v3_16TileIDC2ERNS0_14ImageCacheFileEiiiiiiii.exit
  %i.fe = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !234 ; 2 uses
  %.not183 = icmp eq ptr %i.ff, null
  br i1 %.not183, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fg = load i32, ptr %i.de, align 4, !tbaa !235
  %i.fh = mul i32 %i.fg, %i.dk
  %i.fi = sext i32 %i.fh to i64
  %i.fj = extractelement <2 x i32> %i.ds, i64 1
  %i.fk = sext i32 %i.fj to i64
  %i.fl = add nsw i64 %i.fi, %i.fk
  %i.fm = load i32, ptr %i.dc, align 4, !tbaa !236
  %i.fn = sext i32 %i.fm to i64
  %i.fo = mul i64 %i.fl, %i.fn
  %i.fp = extractelement <2 x i32> %i.ds, i64 0
  %i.fq = sext i32 %i.fp to i64
  %i.fr = add i64 %i.fo, %i.fq
  %i.fs = load i32, ptr %5, align 8, !tbaa !183
  %i.ft = load i16, ptr %i.dz, align 4, !tbaa !227
  %i.fu = sext i16 %i.ft to i32
  %i.fv = sub i32 %i.fs, %i.fu
  %i.fw = load i32, ptr %i.cu, align 4, !tbaa !220
  %i.fx = sext i32 %i.fw to i64
  %i.fy = mul i64 %i.fr, %i.fx
  %i.fz = sext i32 %i.fv to i64
  %i.ga = add i64 %i.fy, %i.fz                    ; 5 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ff, i64 48
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !131 ; 5 uses
  %i.gd = icmp sgt i32 %7, 0                      ; 4 uses
  switch i8 %i.r, label %bb.aa [
    i8 2, label %bb.s
    i8 4, label %bb.t
    i8 10, label %bb.u
  ]

bb.s:                                             ; preds = %bb.r
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.ga ; 3 uses
  br i1 %i.gd, label %.lr.ph192.preheader, label %.loopexit184

.lr.ph192.preheader:                              ; preds = %bb.s
  %wide.trip.count211 = zext nneg i32 %7 to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count211, 1
  %i.gf = icmp eq i32 %7, 1
  br i1 %i.gf, label %.lr.ph192.epil.preheader, label %.lr.ph192.preheader.new

.lr.ph192.preheader.new:                          ; preds = %.lr.ph192.preheader
  %unroll_iter = and i64 %wide.trip.count211, 2147483646
  br label %.lr.ph192

.lr.ph192:                                        ; preds = %.lr.ph192, %.lr.ph192.preheader.new
  %indvars.iv208 = phi i64 [ 0, %.lr.ph192.preheader.new ], [ %indvars.iv.next209.1, %.lr.ph192 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph192.preheader.new ], [ %niter.next.1, %.lr.ph192 ]
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 %indvars.iv208
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !187
  %i.gi = zext i8 %i.gh to i64
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr @_ZN11OpenImageIO4v3_117TextureSystemImpl11uchar2floatE, i64 %i.gi
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !184
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %indvars.iv208 ; 2 uses
  %i.gm = load float, ptr %i.gl, align 4, !tbaa !184
  %i.gn = call float @llvm.fmuladd.f32(float %8, float %i.gk, float %i.gm)
  store float %i.gn, ptr %i.gl, align 4, !tbaa !184
  %indvars.iv.next209 = or disjoint i64 %indvars.iv208, 1 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.ge, i64 %indvars.iv.next209
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !187
  %i.gq = zext i8 %i.gp to i64
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr @_ZN11OpenImageIO4v3_117TextureSystemImpl11uchar2floatE, i64 %i.gq
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !184
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %indvars.iv.next209 ; 2 uses
  %i.gu = load float, ptr %i.gt, align 4, !tbaa !184
  %i.gv = call float @llvm.fmuladd.f32(float %8, float %i.gs, float %i.gu)
  store float %i.gv, ptr %i.gt, align 4, !tbaa !184
  %indvars.iv.next209.1 = add nuw nsw i64 %indvars.iv208, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit184.loopexit306.unr-lcssa, label %.lr.ph192, !llvm.loop !437

bb.t:                                             ; preds = %bb.r
  %i.gw = getelementptr inbounds nuw [2 x i8], ptr %i.gc, i64 %i.ga ; 2 uses
  br i1 %i.gd, label %.lr.ph190.preheader, label %.loopexit184

.lr.ph190.preheader:                              ; preds = %bb.t
  %wide.trip.count206 = zext nneg i32 %7 to i64   ; 3 uses
  %min.iters.check256 = icmp ult i32 %7, 8
  br i1 %min.iters.check256, label %.lr.ph190.preheader307, label %vector.ph257

vector.ph257:                                     ; preds = %.lr.ph190.preheader
  %n.vec258 = and i64 %wide.trip.count206, 2147483640 ; 3 uses
  %broadcast.splatinsert259 = insertelement <4 x float> poison, float %8, i64 0
  %broadcast.splat260 = shufflevector <4 x float> %broadcast.splatinsert259, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body261

vector.body261:                                   ; preds = %vector.body261, %vector.ph257
  %index262 = phi i64 [ 0, %vector.ph257 ], [ %index.next267, %vector.body261 ] ; 3 uses
  %i.gx = getelementptr inbounds nuw [2 x i8], ptr %i.gw, i64 %index262 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  %wide.load263 = load <4 x i16>, ptr %i.gx, align 2, !tbaa !237
  %wide.load264 = load <4 x i16>, ptr %i.gy, align 2, !tbaa !237
  %i.gz = uitofp <4 x i16> %wide.load263 to <4 x float>
  %i.ha = uitofp <4 x i16> %wide.load264 to <4 x float>
  %i.hb = fmul nnan <4 x float> %i.gz, splat (float f0x37800080)
  %i.hc = fmul nnan <4 x float> %i.ha, splat (float f0x37800080)
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %index262 ; 3 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 16 ; 2 uses
  %wide.load265 = load <4 x float>, ptr %i.hd, align 4, !tbaa !184
  %wide.load266 = load <4 x float>, ptr %i.he, align 4, !tbaa !184
  %i.hf = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat260, <4 x float> %i.hb, <4 x float> %wide.load265)
  %i.hg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat260, <4 x float> %i.hc, <4 x float> %wide.load266)
  store <4 x float> %i.hf, ptr %i.hd, align 4, !tbaa !184
  store <4 x float> %i.hg, ptr %i.he, align 4, !tbaa !184
  %index.next267 = add nuw i64 %index262, 8       ; 2 uses
  %i.hh = icmp eq i64 %index.next267, %n.vec258
  br i1 %i.hh, label %middle.block268, label %vector.body261, !llvm.loop !438

middle.block268:                                  ; preds = %vector.body261
  %cmp.n269 = icmp eq i64 %n.vec258, %wide.trip.count206
  br i1 %cmp.n269, label %.loopexit184, label %.lr.ph190.preheader307

.lr.ph190.preheader307:                           ; preds = %.lr.ph190.preheader, %middle.block268
  %indvars.iv203.ph = phi i64 [ 0, %.lr.ph190.preheader ], [ %n.vec258, %middle.block268 ]
  br label %.lr.ph190

.lr.ph190:                                        ; preds = %.lr.ph190.preheader307, %.lr.ph190
  %indvars.iv203 = phi i64 [ %indvars.iv.next204, %.lr.ph190 ], [ %indvars.iv203.ph, %.lr.ph190.preheader307 ] ; 3 uses
  %i.hi = getelementptr inbounds nuw [2 x i8], ptr %i.gw, i64 %indvars.iv203
  %i.hj = load i16, ptr %i.hi, align 2, !tbaa !237
  %i.hk = uitofp i16 %i.hj to float
  %i.hl = fmul nnan float %i.hk, f0x37800080
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %indvars.iv203 ; 2 uses
  %i.hn = load float, ptr %i.hm, align 4, !tbaa !184
  %i.ho = call float @llvm.fmuladd.f32(float %8, float %i.hl, float %i.hn)
  store float %i.ho, ptr %i.hm, align 4, !tbaa !184
  %indvars.iv.next204 = add nuw nsw i64 %indvars.iv203, 1 ; 2 uses
  %exitcond207.not = icmp eq i64 %indvars.iv.next204, %wide.trip.count206
  br i1 %exitcond207.not, label %.loopexit184, label %.lr.ph190, !llvm.loop !439

bb.u:                                             ; preds = %bb.r
  %i.hp = getelementptr inbounds nuw [2 x i8], ptr %i.gc, i64 %i.ga ; 2 uses
  br i1 %i.gd, label %.lr.ph.preheader, label %.loopexit184

.lr.ph.preheader:                                 ; preds = %bb.u
  %wide.trip.count = zext nneg i32 %7 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %7, 4
  br i1 %min.iters.check, label %.lr.ph.preheader309, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %8, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.hq = getelementptr inbounds nuw [2 x i8], ptr %i.hp, i64 %index
  %wide.load = load <4 x i16>, ptr %i.hq, align 2, !tbaa !450 ; 2 uses
  %i.hr = zext <4 x i16> %wide.load to <4 x i32>
  %i.hs = shl nuw nsw <4 x i32> %i.hr, splat (i32 13)
  %i.ht = and <4 x i32> %i.hs, splat (i32 268427264) ; 6 uses
  %i.hu = sext <4 x i16> %wide.load to <4 x i32>
  %i.hv = and <4 x i32> %i.hu, splat (i32 -2147483648) ; 3 uses
  %i.hw = icmp samesign ugt <4 x i32> %i.ht, splat (i32 8388607)
  %i.hx = icmp eq <4 x i32> %i.ht, zeroinitializer ; 2 uses
  %i.hy = xor <4 x i1> %i.hx, %i.hw
  %i.hz = call range(i32 4, 33) <4 x i32> @llvm.ctlz.v4i32(<4 x i32> %i.ht, i1 true)
  %i.ia = add nsw <4 x i32> %i.hz, splat (i32 -8) ; 2 uses
  %i.ib = shl <4 x i32> %i.ht, %i.ia
  %i.ic = or <4 x i32> %i.hv, %i.ib
  %i.id = or <4 x i32> %i.ic, splat (i32 947912704)
  %i.ie = shl nuw nsw <4 x i32> %i.ia, splat (i32 23)
  %i.if = sub nuw <4 x i32> %i.id, %i.ie
  %i.ig = or disjoint <4 x i32> %i.ht, %i.hv      ; 2 uses
  %i.ih = icmp samesign ugt <4 x i32> %i.ht, splat (i32 260046847)
  %i.ii = or <4 x i32> %i.ig, splat (i32 2139095040)
  %i.ij = add nuw nsw <4 x i32> %i.ig, splat (i32 939524096)
  %predphi = select <4 x i1> %i.ih, <4 x i32> %i.ii, <4 x i32> %i.ij
  %predphi252 = select <4 x i1> %i.hx, <4 x i32> %i.hv, <4 x i32> %predphi
  %predphi253 = select <4 x i1> %i.hy, <4 x i32> %predphi252, <4 x i32> %i.if
  %i.ik = bitcast <4 x i32> %predphi253 to <4 x float>
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %index ; 2 uses
  %wide.load254 = load <4 x float>, ptr %i.il, align 4, !tbaa !184
  %i.im = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %i.ik, <4 x float> %wide.load254)
  store <4 x float> %i.im, ptr %i.il, align 4, !tbaa !184
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.in = icmp eq i64 %index.next, %n.vec
  br i1 %i.in, label %middle.block, label %vector.body, !llvm.loop !440

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit184, label %.lr.ph.preheader309

.lr.ph.preheader309:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader309, %_ZNK9Imath_3_14halfcvfEv.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNK9Imath_3_14halfcvfEv.exit ], [ %indvars.iv.ph, %.lr.ph.preheader309 ] ; 3 uses
  %i.io = getelementptr inbounds nuw [2 x i8], ptr %i.hp, i64 %indvars.iv
  %i.ip = load i16, ptr %i.io, align 2, !tbaa !450 ; 2 uses
  %i.iq = zext i16 %i.ip to i32
  %i.ir = shl nuw nsw i32 %i.iq, 13
  %i.is = and i32 %i.ir, 268427264                ; 6 uses
  %.signext.i.i = sext i16 %i.ip to i32
  %i.it = and i32 %.signext.i.i, -2147483648      ; 3 uses
  %i.iu = icmp samesign ugt i32 %i.is, 8388607
  br i1 %i.iu, label %bb.v, label %bb.y, !prof !240

bb.v:                                             ; preds = %.lr.ph
  %i.iv = or disjoint i32 %i.is, %i.it            ; 2 uses
  %i.iw = icmp samesign ult i32 %i.is, 260046848
  br i1 %i.iw, label %bb.w, label %bb.x, !prof !240

bb.w:                                             ; preds = %bb.v
  %i.ix = add nuw nsw i32 %i.iv, 939524096
  br label %_ZNK9Imath_3_14halfcvfEv.exit

bb.x:                                             ; preds = %bb.v
  %i.iy = or i32 %i.iv, 2139095040
  br label %_ZNK9Imath_3_14halfcvfEv.exit

bb.y:                                             ; preds = %.lr.ph
  %.not.i.i = icmp eq i32 %i.is, 0
  br i1 %.not.i.i, label %_ZNK9Imath_3_14halfcvfEv.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.iz = call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.is, i1 true)
  %i.ja = add nsw i32 %i.iz, -8                   ; 2 uses
  %i.jb = shl i32 %i.is, %i.ja
  %i.jc = or i32 %i.it, %i.jb
  %i.jd = or i32 %i.jc, 947912704
  %i.je = shl nuw nsw i32 %i.ja, 23
  %i.jf = sub nuw i32 %i.jd, %i.je
  br label %_ZNK9Imath_3_14halfcvfEv.exit

_ZNK9Imath_3_14halfcvfEv.exit:                    ; preds = %bb.w, %bb.x, %bb.y, %bb.z
  %.sroa.0.0.i.i = phi i32 [ %i.ix, %bb.w ], [ %i.iy, %bb.x ], [ %i.jf, %bb.z ], [ %i.it, %bb.y ]
  %i.jg = bitcast i32 %.sroa.0.0.i.i to float
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %indvars.iv ; 2 uses
  %i.ji = load float, ptr %i.jh, align 4, !tbaa !184
  %i.jj = call float @llvm.fmuladd.f32(float %8, float %i.jg, float %i.ji)
  store float %i.jj, ptr %i.jh, align 4, !tbaa !184
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit184, label %.lr.ph, !llvm.loop !441

bb.aa:                                            ; preds = %bb.r
  %i.jk = getelementptr [4 x i8], ptr %i.gc, i64 %i.ga ; 5 uses
  br i1 %i.gd, label %.lr.ph194.preheader, label %.loopexit184

.lr.ph194.preheader:                              ; preds = %bb.aa
  %wide.trip.count216 = zext nneg i32 %7 to i64   ; 7 uses
  %min.iters.check275 = icmp ult i32 %7, 8
  br i1 %min.iters.check275, label %.lr.ph194.preheader305, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph194.preheader
  %i.jl = shl nuw nsw i64 %wide.trip.count216, 2
  %i.jm = getelementptr i8, ptr %9, i64 %i.jl
  %i.jn = add i64 %i.ga, %wide.trip.count216
  %i.jo = shl i64 %i.jn, 2
  %i.jp = getelementptr i8, ptr %i.gc, i64 %i.jo
  %bound0 = icmp ult ptr %9, %i.jp
  %bound1 = icmp ult ptr %i.jk, %i.jm
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph194.preheader305, label %vector.ph276

vector.ph276:                                     ; preds = %vector.memcheck
  %n.vec277 = and i64 %wide.trip.count216, 2147483640 ; 3 uses
  %broadcast.splatinsert278 = insertelement <4 x float> poison, float %8, i64 0
  %broadcast.splat279 = shufflevector <4 x float> %broadcast.splatinsert278, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body280

vector.body280:                                   ; preds = %vector.body280, %vector.ph276
  %index281 = phi i64 [ 0, %vector.ph276 ], [ %index.next286, %vector.body280 ] ; 3 uses
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.jk, i64 %index281 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 16
  %wide.load282.a = load <4 x float>, ptr %i.jq, align 4, !tbaa !184, !alias.scope !451
  %wide.load283.a = load <4 x float>, ptr %i.jr, align 4, !tbaa !184, !alias.scope !451
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %index281 ; 3 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 16 ; 2 uses
  %wide.load284.a = load <4 x float>, ptr %i.js, align 4, !tbaa !184, !alias.scope !452, !noalias !451
  %wide.load285 = load <4 x float>, ptr %i.jt, align 4, !tbaa !184, !alias.scope !452, !noalias !451
  %i.ju = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat279, <4 x float> %wide.load282.a, <4 x float> %wide.load284.a)
  %i.jv = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat279, <4 x float> %wide.load283.a, <4 x float> %wide.load285)
  store <4 x float> %i.ju, ptr %i.js, align 4, !tbaa !184, !alias.scope !452, !noalias !451
  store <4 x float> %i.jv, ptr %i.jt, align 4, !tbaa !184, !alias.scope !452, !noalias !451
  %index.next286 = add nuw i64 %index281, 8       ; 2 uses
  %i.jw = icmp eq i64 %index.next286, %n.vec277
  br i1 %i.jw, label %middle.block287, label %vector.body280, !llvm.loop !445

middle.block287:                                  ; preds = %vector.body280
  %cmp.n288 = icmp eq i64 %n.vec277, %wide.trip.count216
  br i1 %cmp.n288, label %.loopexit184, label %.lr.ph194.preheader305

.lr.ph194.preheader305:                           ; preds = %vector.memcheck, %.lr.ph194.preheader, %middle.block287
  %indvars.iv213.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph194.preheader ], [ %n.vec277, %middle.block287 ] ; 5 uses
  %xtraiter312 = and i64 %wide.trip.count216, 1
  %lcmp.mod313.not = icmp eq i64 %xtraiter312, 0
  br i1 %lcmp.mod313.not, label %.lr.ph194.prol.loopexit, label %.lr.ph194.prol

.lr.ph194.prol:                                   ; preds = %.lr.ph194.preheader305
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.jk, i64 %indvars.iv213.ph
  %i.jy = load float, ptr %i.jx, align 4, !tbaa !184
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %indvars.iv213.ph ; 2 uses
  %i.ka = load float, ptr %i.jz, align 4, !tbaa !184
  %i.kb = call float @llvm.fmuladd.f32(float %8, float %i.jy, float %i.ka)
  store float %i.kb, ptr %i.jz, align 4, !tbaa !184
  %indvars.iv.next214.prol = or disjoint i64 %indvars.iv213.ph, 1
  br label %.lr.ph194.prol.loopexit

.lr.ph194.prol.loopexit:                          ; preds = %.lr.ph194.prol, %.lr.ph194.preheader305
  %indvars.iv213.unr = phi i64 [ %indvars.iv213.ph, %.lr.ph194.preheader305 ], [ %indvars.iv.next214.prol, %.lr.ph194.prol ]
  %i.kc = add nsw i64 %wide.trip.count216, -1
  %i.kd = icmp eq i64 %indvars.iv213.ph, %i.kc
  br i1 %i.kd, label %.loopexit184, label %.lr.ph194

.lr.ph194:                                        ; preds = %.lr.ph194.prol.loopexit, %.lr.ph194
  %indvars.iv213 = phi i64 [ %indvars.iv.next214.1, %.lr.ph194 ], [ %indvars.iv213.unr, %.lr.ph194.prol.loopexit ] ; 4 uses
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.jk, i64 %indvars.iv213
  %i.kf = load float, ptr %i.ke, align 4, !tbaa !184
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %indvars.iv213 ; 2 uses
  %i.kh = load float, ptr %i.kg, align 4, !tbaa !184
  %i.ki = call float @llvm.fmuladd.f32(float %8, float %i.kf, float %i.kh)
  store float %i.ki, ptr %i.kg, align 4, !tbaa !184
  %indvars.iv.next214 = add nuw nsw i64 %indvars.iv213, 1 ; 2 uses
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.jk, i64 %indvars.iv.next214
  %i.kk = load float, ptr %i.kj, align 4, !tbaa !184
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %indvars.iv.next214 ; 2 uses
  %i.km = load float, ptr %i.kl, align 4, !tbaa !184
  %i.kn = call float @llvm.fmuladd.f32(float %8, float %i.kk, float %i.km)
  store float %i.kn, ptr %i.kl, align 4, !tbaa !184
  %indvars.iv.next214.1 = add nuw nsw i64 %indvars.iv213, 2 ; 2 uses
  %exitcond217.not.1 = icmp eq i64 %indvars.iv.next214.1, %wide.trip.count216
  br i1 %exitcond217.not.1, label %.loopexit184, label %.lr.ph194, !llvm.loop !446

.loopexit184.loopexit306.unr-lcssa:               ; preds = %.lr.ph192
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit184, label %.lr.ph192.epil.preheader

.lr.ph192.epil.preheader:                         ; preds = %.loopexit184.loopexit306.unr-lcssa, %.lr.ph192.preheader
  %indvars.iv208.epil.init = phi i64 [ 0, %.lr.ph192.preheader ], [ %indvars.iv.next209.1, %.loopexit184.loopexit306.unr-lcssa ] ; 2 uses
  %lcmp.mod311 = trunc i32 %7 to i1
  call void @llvm.assume(i1 %lcmp.mod311)
  %i.ko = getelementptr inbounds nuw i8, ptr %i.ge, i64 %indvars.iv208.epil.init
  %i.kp = load i8, ptr %i.ko, align 1, !tbaa !187
  %i.kq = zext i8 %i.kp to i64
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr @_ZN11OpenImageIO4v3_117TextureSystemImpl11uchar2floatE, i64 %i.kq
  %i.ks = load float, ptr %i.kr, align 4, !tbaa !184
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %indvars.iv208.epil.init ; 2 uses
  %i.ku = load float, ptr %i.kt, align 4, !tbaa !184
  %i.kv = call float @llvm.fmuladd.f32(float %8, float %i.ks, float %i.ku)
  store float %i.kv, ptr %i.kt, align 4, !tbaa !184
  br label %.loopexit184

.loopexit184:                                     ; preds = %_ZNK9Imath_3_14halfcvfEv.exit, %.lr.ph190, %.lr.ph192.epil.preheader, %.loopexit184.loopexit306.unr-lcssa, %.lr.ph194.prol.loopexit, %.lr.ph194, %middle.block, %middle.block268, %middle.block287, %bb.u, %bb.t, %bb.s, %bb.aa
  %i.kw = icmp sgt i32 %6, %7
  br i1 %i.kw, label %bb.ab, label %.loopexit

bb.ab:                                            ; preds = %.loopexit184
  %i.kx = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.ky = load float, ptr %i.kx, align 8, !tbaa !189 ; 2 uses
  %i.kz = fcmp une float %i.ky, 0.000000e+00
  br i1 %i.kz, label %.lr.ph196.preheader, label %.loopexit

.lr.ph196.preheader:                              ; preds = %bb.ab
  %i.la = fmul float %8, %i.ky                    ; 2 uses
  %i.lb = sext i32 %7 to i64                      ; 4 uses
  %wide.trip.count221 = sext i32 %6 to i64        ; 2 uses
  %i.lc = sub nsw i64 %wide.trip.count221, %i.lb  ; 3 uses
  %min.iters.check291 = icmp ult i64 %i.lc, 8
  br i1 %min.iters.check291, label %.lr.ph196.preheader304, label %vector.ph292

vector.ph292:                                     ; preds = %.lr.ph196.preheader
  %n.vec293 = and i64 %i.lc, -8                   ; 3 uses
  %i.ld = add nsw i64 %n.vec293, %i.lb
  %broadcast.splatinsert294 = insertelement <4 x float> poison, float %i.la, i64 0
  %broadcast.splat295 = shufflevector <4 x float> %broadcast.splatinsert294, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %9, i64 %i.lb
  br label %vector.body296

vector.body296:                                   ; preds = %vector.body296, %vector.ph292
  %index297 = phi i64 [ 0, %vector.ph292 ], [ %index.next300, %vector.body296 ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index297 ; 3 uses
  %i.le = getelementptr inbounds nuw i8, ptr %gep, i64 16 ; 2 uses
  %wide.load298.a = load <4 x float>, ptr %gep, align 4, !tbaa !184
  %wide.load299 = load <4 x float>, ptr %i.le, align 4, !tbaa !184
  %i.lf = fadd <4 x float> %broadcast.splat295, %wide.load298.a
  %i.lg = fadd <4 x float> %broadcast.splat295, %wide.load299
  store <4 x float> %i.lf, ptr %gep, align 4, !tbaa !184
  store <4 x float> %i.lg, ptr %i.le, align 4, !tbaa !184
  %index.next300 = add nuw i64 %index297, 8       ; 2 uses
  %i.lh = icmp eq i64 %index.next300, %n.vec293
  br i1 %i.lh, label %middle.block301, label %vector.body296, !llvm.loop !447

middle.block301:                                  ; preds = %vector.body296
  %cmp.n302 = icmp eq i64 %i.lc, %n.vec293
  br i1 %cmp.n302, label %._crit_edge, label %.lr.ph196.preheader304

.lr.ph196.preheader304:                           ; preds = %.lr.ph196.preheader, %middle.block301
  %indvars.iv218.ph = phi i64 [ %i.lb, %.lr.ph196.preheader ], [ %i.ld, %middle.block301 ]
  br label %.lr.ph196

._crit_edge:                                      ; preds = %.lr.ph196, %middle.block301
  %.not177 = icmp eq ptr %10, null
  br i1 %.not177, label %.loopexit, label %.lr.ph198.preheader, !prof !240

.lr.ph198.preheader:                              ; preds = %._crit_edge
  %i.li = sext i32 %7 to i64
  %i.lj = shl nsw i64 %i.li, 2                    ; 3 uses
  %scevgep = getelementptr i8, ptr %10, i64 %i.lj
  %i.lk = xor i32 %7, -1
  %i.ll = add i32 %6, %i.lk
  %i.lm = zext i32 %i.ll to i64
  %i.ln = shl nuw nsw i64 %i.lm, 2
  %i.lo = add nuw nsw i64 %i.ln, 4                ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 %i.lo, i1 false), !tbaa !184
  %scevgep223 = getelementptr i8, ptr %11, i64 %i.lj
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep223, i8 0, i64 %i.lo, i1 false), !tbaa !184
  %scevgep224 = getelementptr i8, ptr %12, i64 %i.lj
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep224, i8 0, i64 %i.lo, i1 false), !tbaa !184
  br label %.loopexit

.lr.ph196:                                        ; preds = %.lr.ph196.preheader304, %.lr.ph196
  %indvars.iv218 = phi i64 [ %indvars.iv.next219, %.lr.ph196 ], [ %indvars.iv218.ph, %.lr.ph196.preheader304 ] ; 2 uses
  %i.lp = getelementptr inbounds [4 x i8], ptr %9, i64 %indvars.iv218 ; 2 uses
  %i.lq = load float, ptr %i.lp, align 4, !tbaa !184
  %i.lr = fadd float %i.la, %i.lq
  store float %i.lr, ptr %i.lp, align 4, !tbaa !184
  %indvars.iv.next219 = add nsw i64 %indvars.iv218, 1 ; 2 uses
  %exitcond222.not = icmp eq i64 %indvars.iv.next219, %wide.trip.count221
  br i1 %exitcond222.not, label %._crit_edge, label %.lr.ph196, !llvm.loop !448

.loopexit:                                        ; preds = %.lr.ph198.preheader, %.thread, %.loopexit184, %bb.ab, %._crit_edge, %bb.q
  %or.cond182 = phi i1 [ false, %.thread ], [ true, %.loopexit184 ], [ true, %bb.ab ], [ false, %bb.q ], [ true, %._crit_edge ], [ true, %.lr.ph198.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  br label %bb.ac

bb.ac:                                            ; preds = %bb.i, %.loopexit
  %.1 = phi i1 [ %or.cond182, %.loopexit ], [ true, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_117TextureSystemImpl23accum3d_sample_bilinearERKN9Imath_3_14Vec3IfEEiRNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiifPfSD_SD_SD_(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(400) %3, ptr noundef %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(76) %5, i32 noundef %6, i32 noundef %7, float noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12) #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %13 = alloca %"class.fmt::v12::basic_memory_buffer", align 8 ; 12 uses
  %14 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = alloca [2 x i32], align 4                ; 10 uses
  %i.c = alloca [2 x i32], align 4                ; 10 uses
  %i.d = alloca [2 x i32], align 4                ; 10 uses
  %16 = alloca %union.anon.132, align 8           ; 14 uses
  %i.e = alloca [2 x [2 x [2 x ptr]]], align 16   ; 55 uses
  %17 = alloca [2 x [2 x [2 x %"class.OpenImageIO::v3_1::intrusive_ptr"]]], align 16 ; 22 uses
  %18 = alloca %"struct.OpenImageIO::v3_1::TileID", align 8 ; 17 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !130
end_hunk_0
