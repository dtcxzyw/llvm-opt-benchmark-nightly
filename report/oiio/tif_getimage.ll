inline.NumInlined: 25
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 32
begin_hunk_0_@TIFFRGBAImageBegin:bb.a
  store ptr @putRGBcontig8bitCMYKMaptile, ptr %i.dz, align 8, !tbaa !57
  br label %bb.da

bb.bu:                                            ; preds = %bb.av
  %i.ev = call fastcc i32 @buildMap(ptr noundef nonnull %0)
  %.not72.i = icmp eq i32 %i.ev, 0
  br i1 %.not72.i, label %bb.da, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ew = load i16, ptr %i.z, align 4, !tbaa !50
  %i.ex = zext i16 %i.ew to i32                   ; 2 uses
  %i.ey = call range(i32 0, 17) i32 @llvm.ctpop.i32(i32 %i.ex)
  %i.ez = icmp eq i32 %i.ey, 1
  br i1 %i.ez, label %.split.i, label %bb.da

.split.i:                                         ; preds = %bb.bv
  %i.fa = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.ex, i1 true)
  switch i32 %i.fa, label %bb.da [
    i32 3, label %bb.bw
    i32 2, label %bb.bx
    i32 1, label %bb.by
    i32 0, label %bb.bz
  ]

bb.bw:                                            ; preds = %.split.i
  store ptr @put8bitcmaptile, ptr %i.dz, align 8, !tbaa !57
  br label %bb.da

bb.bx:                                            ; preds = %.split.i
  store ptr @put4bitcmaptile, ptr %i.dz, align 8, !tbaa !57
  br label %bb.da

bb.by:                                            ; preds = %.split.i
  store ptr @put2bitcmaptile, ptr %i.dz, align 8, !tbaa !57
  br label %bb.da

bb.bz:                                            ; preds = %.split.i
  store ptr @put1bitcmaptile, ptr %i.dz, align 8, !tbaa !57
  br label %bb.da

bb.ca:                                            ; preds = %bb.av, %bb.av
  %i.fb = call fastcc i32 @buildMap(ptr noundef nonnull %0)
  %.not70.i = icmp eq i32 %i.fb, 0
  br i1 %.not70.i, label %bb.da, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.fc = load i16, ptr %i.z, align 4, !tbaa !50
  %i.fd = zext i16 %i.fc to i32                   ; 2 uses
  %i.fe = call range(i32 0, 17) i32 @llvm.ctpop.i32(i32 %i.fd)
  %i.ff = icmp eq i32 %i.fe, 1
  br i1 %i.ff, label %.split1.i, label %bb.da

.split1.i:                                        ; preds = %bb.cb
  %i.fg = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.fd, i1 true)
  switch i32 %i.fg, label %bb.da [
    i32 4, label %bb.cc
    i32 3, label %bb.cd
    i32 2, label %bb.ch
    i32 1, label %bb.ci
    i32 0, label %bb.cj
  ]

bb.cc:                                            ; preds = %.split1.i
  store ptr @put16bitbwtile, ptr %i.dz, align 8, !tbaa !57
  br label %bb.da

bb.cd:                                            ; preds = %.split1.i
  %i.fh = load i32, ptr %i.ah, align 8, !tbaa !51
  %.not71.i = icmp eq i32 %i.fh, 0
  br i1 %.not71.i, label %bb.cg, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.fi = load i16, ptr %i.ai, align 2, !tbaa !53
  %i.fj = icmp eq i16 %i.fi, 2
  br i1 %i.fj, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  store ptr @putagreytile, ptr %i.dz, align 8, !tbaa !57
  br label %bb.da

bb.cg:                                            ; preds = %bb.ce, %bb.cd
  store ptr @putgreytile, ptr %i.dz, align 8, !tbaa !57
  br label %bb.da

bb.ch:                                            ; preds = %.split1.i
  store ptr @put4bitbwtile, ptr %i.dz, align 8, !tbaa !57
  br label %bb.da

bb.ci:                                            ; preds = %.split1.i
  store ptr @put2bitbwtile, ptr %i.dz, align 8, !tbaa !57
  br label %bb.da

bb.cj:                                            ; preds = %.split1.i
  store ptr @put1bitbwtile, ptr %i.dz, align 8, !tbaa !57
  br label %bb.da

bb.ck:                                            ; preds = %bb.av
  %i.fk = load i16, ptr %i.z, align 4, !tbaa !50
  %i.fl = icmp eq i16 %i.fk, 8
  br i1 %i.fl, label %bb.cl, label %bb.da

bb.cl:                                            ; preds = %bb.ck
  %i.fm = load i16, ptr %i.ai, align 2, !tbaa !53
  %i.fn = icmp eq i16 %i.fm, 3
  br i1 %i.fn, label %bb.cm, label %bb.da

bb.cm:                                            ; preds = %bb.cl
  %i.fo = call fastcc i32 @initYCbCrConversion(ptr noundef nonnull %0)
  %.not69.i = icmp eq i32 %i.fo, 0
  br i1 %.not69.i, label %bb.da, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #11
  %i.fp = load ptr, ptr %0, align 8, !tbaa !38
  %i.fq = call i32 (ptr, i32, ...) @TIFFGetFieldDefaulted(ptr noundef %i.fp, i32 noundef 530, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #11 ; 0 uses
  %i.fr = load i16, ptr %i.e, align 2, !tbaa !31
  %i.fs = zext i16 %i.fr to i32
  %i.ft = shl nuw nsw i32 %i.fs, 4
  %i.fu = load i16, ptr %i.f, align 2, !tbaa !31
  %i.fv = zext i16 %i.fu to i32
  %i.fw = or i32 %i.ft, %i.fv
  %switch.tableidx = add nsw i32 %i.fw, -17       ; 3 uses
  %i.fx = icmp ult i32 %switch.tableidx, 52
  %switch.maskindex = zext nneg i32 %switch.tableidx to i64
  %switch.shifted = lshr i64 3096224744013827, %switch.maskindex
  %switch.lobit = trunc i64 %switch.shifted to i1
  %or.cond208 = select i1 %i.fx, i1 %switch.lobit, i1 false
  br i1 %or.cond208, label %switch.lookup, label %bb.co

switch.lookup:                                    ; preds = %bb.cn
  %i.fy = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.TIFFRGBAImageBegin, i64 %i.fy
  %switch.load = load ptr, ptr %switch.gep, align 8
  store ptr %switch.load, ptr %i.dz, align 8, !tbaa !57
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %switch.lookup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  br label %bb.da

bb.cp:                                            ; preds = %bb.av
  %i.fz = load i16, ptr %i.ai, align 2, !tbaa !53
  %i.ga = icmp eq i16 %i.fz, 3
  br i1 %i.ga, label %bb.cq, label %bb.da

bb.cq:                                            ; preds = %bb.cp
  %i.gb = call fastcc i32 @buildMap(ptr noundef nonnull %0)
  %.not68.i = icmp eq i32 %i.gb, 0
  br i1 %.not68.i, label %bb.da, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.gc = load i16, ptr %i.z, align 4, !tbaa !50
  switch i16 %i.gc, label %bb.da [
    i16 8, label %bb.cs
    i16 16, label %bb.cs
  ]

bb.cs:                                            ; preds = %bb.cr, %bb.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  %i.gd = load ptr, ptr %0, align 8, !tbaa !38
  %i.ge = call i32 (ptr, i32, ...) @TIFFGetFieldDefaulted(ptr noundef %i.gd, i32 noundef 318, ptr noundef nonnull %i.c) #11 ; 0 uses
  %i.gf = load ptr, ptr %i.c, align 8, !tbaa !58  ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 4
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !59 ; 2 uses
  %i.gi = fcmp oeq float %i.gh, 0.000000e+00
  br i1 %i.gi, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.gj = load ptr, ptr %0, align 8, !tbaa !38
  call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef %i.gj, ptr noundef nonnull @initCIELabConversion.module, ptr noundef nonnull @.str.54) #11
  br label %initCIELabConversion.exit.i

bb.cu:                                            ; preds = %bb.cs
  %i.gk = load ptr, ptr %i.u, align 8, !tbaa !42  ; 2 uses
  %.not.i.i = icmp eq ptr %i.gk, null
  br i1 %.not.i.i, label %bb.cv, label %bb.cx

bb.cv:                                            ; preds = %bb.cu
  %i.gl = load ptr, ptr %0, align 8, !tbaa !38
  %i.gm = call ptr @_TIFFmallocExt(ptr noundef %i.gl, i64 noundef 18124) #11 ; 3 uses
  store ptr %i.gm, ptr %i.u, align 8, !tbaa !42
  %.not15.i.i = icmp eq ptr %i.gm, null
  br i1 %.not15.i.i, label %bb.cw, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.cv
  %.pre.i.i = load ptr, ptr %i.c, align 8, !tbaa !58 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 4
  %.pre18.i.i = load float, ptr %.phi.trans.insert.i.i, align 4, !tbaa !59
  br label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.gn = load ptr, ptr %0, align 8, !tbaa !38
  call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef %i.gn, ptr noundef nonnull @initCIELabConversion.module, ptr noundef nonnull @.str.55) #11
  br label %initCIELabConversion.exit.i

bb.cx:                                            ; preds = %._crit_edge.i.i, %bb.cu
  %i.go = phi ptr [ %i.gm, %._crit_edge.i.i ], [ %i.gk, %bb.cu ]
  %i.gp = phi float [ %.pre18.i.i, %._crit_edge.i.i ], [ %i.gh, %bb.cu ] ; 3 uses
  %i.gq = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.gf, %bb.cu ]
  %i.gr = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store float 1.000000e+02, ptr %i.gr, align 4, !tbaa !59
  %i.gs = load float, ptr %i.gq, align 4, !tbaa !59 ; 2 uses
  %4 = fdiv float %i.gs, %i.gp
  %5 = fmul float %4, 1.000000e+02
  store float %5, ptr %i.d, align 4, !tbaa !59
  %6 = fsub float 1.000000e+00, %i.gs
  %7 = fsub float %6, %i.gp
  %8 = fdiv float %7, %i.gp
  %9 = fmul float %8, 1.000000e+02
  %i.gt = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store float %9, ptr %i.gt, align 4, !tbaa !59
  %i.gu = call i32 @TIFFCIELabToRGBInit(ptr noundef nonnull %i.go, ptr noundef nonnull @display_sRGB, ptr noundef nonnull %i.d) #11
  %i.gv = icmp slt i32 %i.gu, 0
  br i1 %i.gv, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.gw = load ptr, ptr %0, align 8, !tbaa !38
  call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef %i.gw, ptr noundef nonnull @initCIELabConversion.module, ptr noundef nonnull @.str.56) #11
  %i.gx = load ptr, ptr %0, align 8, !tbaa !38
  %i.gy = load ptr, ptr %i.u, align 8, !tbaa !42
  call void @_TIFFfreeExt(ptr noundef %i.gx, ptr noundef %i.gy) #11
  br label %initCIELabConversion.exit.i

bb.cz:                                            ; preds = %bb.cx
  %i.gz = load i16, ptr %i.z, align 4, !tbaa !50  ; 2 uses
  %switch.selectcmp.i.i = icmp eq i16 %i.gz, 16
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, ptr @putcontig8bitCIELab16, ptr null
  %switch.selectcmp16.i.i = icmp eq i16 %i.gz, 8
  %switch.select17.i.i = select i1 %switch.selectcmp16.i.i, ptr @putcontig8bitCIELab8, ptr %switch.select.i.i
  br label %initCIELabConversion.exit.i

initCIELabConversion.exit.i:                      ; preds = %bb.cz, %bb.cy, %bb.cw, %bb.ct
  %.0.i.i = phi ptr [ null, %bb.ct ], [ null, %bb.cy ], [ null, %bb.cw ], [ %switch.select17.i.i, %bb.cz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  store ptr %.0.i.i, ptr %i.dz, align 8, !tbaa !57
  br label %bb.da

bb.da:                                            ; preds = %initCIELabConversion.exit.i, %bb.cr, %bb.cq, %bb.cp, %bb.co, %bb.cm, %bb.cl, %bb.ck, %bb.cj, %bb.ci, %bb.ch, %bb.cg, %bb.cf, %bb.cc, %.split1.i, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %.split.i, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %.thread81.i, %bb.bl, %bb.bk, %bb.bj, %bb.bh, %bb.bg, %bb.bd, %.thread.i, %bb.bc, %bb.bb, %bb.az, %bb.aw
  %.pr.i = load ptr, ptr %i.dy, align 8, !tbaa !56
  %.not80.i = icmp eq ptr %.pr.i, null
  br i1 %.not80.i, label %PickContigCase.exit.thread, label %PickContigCase.exit

PickContigCase.exit:                              ; preds = %bb.da
  %.pre86.i = load ptr, ptr %i.dz, align 8, !tbaa !57
  %.not155 = icmp eq ptr %.pre86.i, null
  br i1 %.not155, label %PickContigCase.exit.thread, label %bb.dw

PickContigCase.exit.thread:                       ; preds = %bb.av, %bb.da, %PickContigCase.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %3, ptr noundef nonnull align 1 dereferenceable(28) @.str.23, i64 28, i1 false)
  br label %bb.dv

bb.db:                                            ; preds = %bb.au
  %i.ha = load ptr, ptr %0, align 8, !tbaa !38
  %i.hb = call i32 @TIFFIsTiled(ptr noundef %i.ha) #11
  %.not.i142 = icmp eq i32 %i.hb, 0
  %i.hc = select i1 %.not.i142, ptr @gtStripSeparate, ptr @gtTileSeparate
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store ptr %i.hc, ptr %i.hd, align 8, !tbaa !56
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 10 uses
  store ptr null, ptr %i.he, align 8, !tbaa !57
  %i.hf = load i16, ptr %i.ar, align 4, !tbaa !54
  switch i16 %i.hf, label %PickSeparateCase.exit.thread [
    i16 0, label %bb.dc
    i16 1, label %bb.dc
    i16 2, label %bb.dc
    i16 5, label %bb.dl
    i16 6, label %bb.do
  ]

bb.dc:                                            ; preds = %bb.db, %bb.db, %bb.db
  %i.hg = load i16, ptr %i.z, align 4, !tbaa !50
  switch i16 %i.hg, label %bb.du [
    i16 8, label %bb.dd
    i16 16, label %bb.dh
  ]

bb.dd:                                            ; preds = %bb.dc
  %i.hh = load i32, ptr %i.ah, align 8, !tbaa !51
  switch i32 %i.hh, label %bb.dg [
    i32 1, label %bb.de
    i32 2, label %bb.df
  ]

bb.de:                                            ; preds = %bb.dd
  store ptr @putRGBAAseparate8bittile, ptr %i.he, align 8, !tbaa !57
  br label %bb.du

bb.df:                                            ; preds = %bb.dd
  %i.hi = load ptr, ptr %0, align 8, !tbaa !38
  %i.hj = call ptr @_TIFFmallocExt(ptr noundef %i.hi, i64 noundef 65536) #11 ; 3 uses
  store ptr %i.hj, ptr %i.v, align 8, !tbaa !43
  %i.hk = icmp eq ptr %i.hj, null
  br i1 %i.hk, label %BuildMapUaToAa.exit.thread.i, label %vector.ph198

BuildMapUaToAa.exit.thread.i:                     ; preds = %bb.df
  %i.hl = load ptr, ptr %0, align 8, !tbaa !38
  call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef %i.hl, ptr noundef nonnull @BuildMapUaToAa.module, ptr noundef nonnull @.str.46) #11
  br label %bb.du

vector.ph198:                                     ; preds = %bb.df, %middle.block207
  %indvars.iv25.i.i = phi i32 [ %indvars.iv.next26.i.i, %middle.block207 ], [ 0, %bb.df ] ; 2 uses
  %.01321.i.i = phi ptr [ %i.hm, %middle.block207 ], [ %i.hj, %bb.df ] ; 2 uses
  %i.hm = getelementptr i8, ptr %.01321.i.i, i64 256
  %broadcast.splatinsert199 = insertelement <16 x i32> poison, i32 %indvars.iv25.i.i, i64 0
  %broadcast.splat200 = shufflevector <16 x i32> %broadcast.splatinsert199, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.body201

vector.body201:                                   ; preds = %vector.body201, %vector.ph198
  %index202 = phi i64 [ 0, %vector.ph198 ], [ %index.next205, %vector.body201 ] ; 2 uses
  %vec.ind203 = phi <16 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, %vector.ph198 ], [ %vec.ind.next206, %vector.body201 ] ; 2 uses
  %next.gep204 = getelementptr i8, ptr %.01321.i.i, i64 %index202
  %i.hn = mul nuw nsw <16 x i32> %vec.ind203, %broadcast.splat200
  %i.ho = add nuw nsw <16 x i32> %i.hn, splat (i32 127)
  %i.hp = udiv <16 x i32> %i.ho, splat (i32 255)
  %i.hq = trunc <16 x i32> %i.hp to <16 x i8>
  store <16 x i8> %i.hq, ptr %next.gep204, align 1, !tbaa !57
  %index.next205 = add nuw i64 %index202, 16      ; 2 uses
  %vec.ind.next206 = add nuw nsw <16 x i32> %vec.ind203, splat (i32 16)
  %i.hr = icmp eq i64 %index.next205, 256
  br i1 %i.hr, label %middle.block207, label %vector.body201, !llvm.loop !60

middle.block207:                                  ; preds = %vector.body201
  %indvars.iv.next26.i.i = add nuw nsw i32 %indvars.iv25.i.i, 1 ; 2 uses
  %exitcond28.not.i.i = icmp eq i32 %indvars.iv.next26.i.i, 256
  br i1 %exitcond28.not.i.i, label %BuildMapUaToAa.exit.i, label %vector.ph198

BuildMapUaToAa.exit.i:                            ; preds = %middle.block207
  store ptr @putRGBUAseparate8bittile, ptr %i.he, align 8, !tbaa !57
  br label %bb.du

bb.dg:                                            ; preds = %bb.dd
  store ptr @putRGBseparate8bittile, ptr %i.he, align 8, !tbaa !57
  br label %bb.du

bb.dh:                                            ; preds = %bb.dc
  %i.hs = load i32, ptr %i.ah, align 8, !tbaa !51
  %i.ht = load ptr, ptr %0, align 8, !tbaa !38
  %i.hu = call ptr @_TIFFmallocExt(ptr noundef %i.ht, i64 noundef 65536) #11 ; 8 uses
  store ptr %i.hu, ptr %i.w, align 8, !tbaa !44
  %i.hv = icmp eq ptr %i.hu, null                 ; 3 uses
  switch i32 %i.hs, label %bb.dk [
    i32 1, label %bb.di
    i32 2, label %bb.dj
  ]

bb.di:                                            ; preds = %bb.dh
  br i1 %i.hv, label %BuildMapBitdepth16To8.exit.thread.i, label %vector.body183

vector.body183:                                   ; preds = %bb.di, %vector.body183
  %index184 = phi i64 [ %index.next187.1, %vector.body183 ], [ 0, %bb.di ] ; 3 uses
  %vec.ind185 = phi <16 x i32> [ %vec.ind.next188.1, %vector.body183 ], [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, %bb.di ] ; 3 uses
  %next.gep186 = getelementptr i8, ptr %i.hu, i64 %index184
  %i.hw = add nuw nsw <16 x i32> %vec.ind185, splat (i32 128)
  %i.hx = udiv <16 x i32> %i.hw, splat (i32 257)
  %i.hy = trunc nuw <16 x i32> %i.hx to <16 x i8>
  store <16 x i8> %i.hy, ptr %next.gep186, align 1, !tbaa !57
  %i.hz = getelementptr i8, ptr %i.hu, i64 %index184
  %next.gep186.1 = getelementptr i8, ptr %i.hz, i64 16
  %i.ia = add nuw nsw <16 x i32> %vec.ind185, splat (i32 144)
  %i.ib = udiv <16 x i32> %i.ia, splat (i32 257)
  %i.ic = trunc nuw <16 x i32> %i.ib to <16 x i8>
  store <16 x i8> %i.ic, ptr %next.gep186.1, align 1, !tbaa !57
  %index.next187.1 = add nuw nsw i64 %index184, 32 ; 2 uses
  %vec.ind.next188.1 = add nuw nsw <16 x i32> %vec.ind185, splat (i32 32)
  %i.id = icmp eq i64 %index.next187.1, 65536
  br i1 %i.id, label %BuildMapBitdepth16To8.exit.i, label %vector.body183, !llvm.loop !63

BuildMapBitdepth16To8.exit.thread.i:              ; preds = %bb.di
  %i.ie = load ptr, ptr %0, align 8, !tbaa !38
  call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef %i.ie, ptr noundef nonnull @BuildMapBitdepth16To8.module, ptr noundef nonnull @.str.46) #11
  br label %bb.du

BuildMapBitdepth16To8.exit.i:                     ; preds = %vector.body183
  store ptr @putRGBAAseparate16bittile, ptr %i.he, align 8, !tbaa !57
  br label %bb.du

bb.dj:                                            ; preds = %bb.dh
  br i1 %i.hv, label %BuildMapBitdepth16To8.exit46.thread.i, label %vector.body

vector.body:                                      ; preds = %bb.dj, %vector.body
  %index = phi i64 [ %index.next.1, %vector.body ], [ 0, %bb.dj ] ; 3 uses
  %vec.ind = phi <16 x i32> [ %vec.ind.next.1, %vector.body ], [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, %bb.dj ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.hu, i64 %index
  %i.if = add nuw nsw <16 x i32> %vec.ind, splat (i32 128)
  %i.ig = udiv <16 x i32> %i.if, splat (i32 257)
  %i.ih = trunc nuw <16 x i32> %i.ig to <16 x i8>
  store <16 x i8> %i.ih, ptr %next.gep, align 1, !tbaa !57
  %i.ii = getelementptr i8, ptr %i.hu, i64 %index
  %next.gep.1 = getelementptr i8, ptr %i.ii, i64 16
  %i.ij = add nuw nsw <16 x i32> %vec.ind, splat (i32 144)
  %i.ik = udiv <16 x i32> %i.ij, splat (i32 257)
  %i.il = trunc nuw <16 x i32> %i.ik to <16 x i8>
  store <16 x i8> %i.il, ptr %next.gep.1, align 1, !tbaa !57
  %index.next.1 = add nuw nsw i64 %index, 32      ; 2 uses
  %vec.ind.next.1 = add nuw nsw <16 x i32> %vec.ind, splat (i32 32)
  %i.im = icmp eq i64 %index.next.1, 65536
  br i1 %i.im, label %BuildMapBitdepth16To8.exit46.i, label %vector.body, !llvm.loop !64

BuildMapBitdepth16To8.exit46.thread.i:            ; preds = %bb.dj
  %i.in = load ptr, ptr %0, align 8, !tbaa !38
  call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef %i.in, ptr noundef nonnull @BuildMapBitdepth16To8.module, ptr noundef nonnull @.str.46) #11
  br label %bb.du

BuildMapBitdepth16To8.exit46.i:                   ; preds = %vector.body
  %i.io = load ptr, ptr %0, align 8, !tbaa !38
  %i.ip = call ptr @_TIFFmallocExt(ptr noundef %i.io, i64 noundef 65536) #11 ; 3 uses
  store ptr %i.ip, ptr %i.v, align 8, !tbaa !43
  %i.iq = icmp eq ptr %i.ip, null
  br i1 %i.iq, label %BuildMapUaToAa.exit57.thread.i, label %vector.ph174

end_hunk_0
