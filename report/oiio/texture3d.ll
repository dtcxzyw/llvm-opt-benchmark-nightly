Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/texture3d?download=true
inline.NumInlined: 2854
inline.NumDeleted: 714
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN11OpenImageIO4v3_117TextureSystemImpl22accum3d_sample_closestERKN9Imath_3_14Vec3IfEEiRNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiifPfSD_SD_SD_:bb.a
  %i.ld = sext i32 %7 to i64                      ; 4 uses
  %wide.trip.count221 = sext i32 %6 to i64        ; 2 uses
  %i.le = sub nsw i64 %wide.trip.count221, %i.ld  ; 3 uses
  %min.iters.check291 = icmp ult i64 %i.le, 8
  br i1 %min.iters.check291, label %.lr.ph196.preheader304, label %vector.ph292

vector.ph292:                                     ; preds = %.lr.ph196.preheader
  %n.vec293 = and i64 %i.le, -8                   ; 3 uses
  %i.lf = add nsw i64 %n.vec293, %i.ld
  %broadcast.splatinsert294 = insertelement <4 x float> poison, float %i.lc, i64 0
  %broadcast.splat295 = shufflevector <4 x float> %broadcast.splatinsert294, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %9, i64 %i.ld
  br label %vector.body296

vector.body296:                                   ; preds = %vector.body296, %vector.ph292
  %index297 = phi i64 [ 0, %vector.ph292 ], [ %index.next300, %vector.body296 ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index297 ; 3 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %gep, i64 16 ; 2 uses
  %wide.load298 = load <4 x float>, ptr %gep, align 4, !tbaa !184
  %wide.load299 = load <4 x float>, ptr %i.lg, align 4, !tbaa !184
  %i.lh = fadd <4 x float> %broadcast.splat295, %wide.load298
  %i.li = fadd <4 x float> %broadcast.splat295, %wide.load299
  store <4 x float> %i.lh, ptr %gep, align 4, !tbaa !184
  store <4 x float> %i.li, ptr %i.lg, align 4, !tbaa !184
  %index.next300 = add nuw i64 %index297, 8       ; 2 uses
  %i.lj = icmp eq i64 %index.next300, %n.vec293
  br i1 %i.lj, label %middle.block301, label %vector.body296, !llvm.loop !447

middle.block301:                                  ; preds = %vector.body296
  %cmp.n302 = icmp eq i64 %i.le, %n.vec293
  br i1 %cmp.n302, label %._crit_edge, label %.lr.ph196.preheader304

.lr.ph196.preheader304:                           ; preds = %.lr.ph196.preheader, %middle.block301
  %indvars.iv218.ph = phi i64 [ %i.ld, %.lr.ph196.preheader ], [ %i.lf, %middle.block301 ]
  br label %.lr.ph196

._crit_edge:                                      ; preds = %.lr.ph196, %middle.block301
  %.not177 = icmp eq ptr %10, null
  br i1 %.not177, label %.loopexit, label %.lr.ph198.preheader, !prof !240

.lr.ph198.preheader:                              ; preds = %._crit_edge
  %i.lk = sext i32 %7 to i64
  %i.ll = shl nsw i64 %i.lk, 2                    ; 3 uses
  %scevgep = getelementptr i8, ptr %10, i64 %i.ll
  %i.lm = xor i32 %7, -1
  %i.ln = add i32 %6, %i.lm
  %i.lo = zext i32 %i.ln to i64
  %i.lp = shl nuw nsw i64 %i.lo, 2
  %i.lq = add nuw nsw i64 %i.lp, 4                ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 %i.lq, i1 false), !tbaa !184
  %scevgep223 = getelementptr i8, ptr %11, i64 %i.ll
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep223, i8 0, i64 %i.lq, i1 false), !tbaa !184
  %scevgep224 = getelementptr i8, ptr %12, i64 %i.ll
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep224, i8 0, i64 %i.lq, i1 false), !tbaa !184
  br label %.loopexit

.lr.ph196:                                        ; preds = %.lr.ph196.preheader304, %.lr.ph196
  %indvars.iv218 = phi i64 [ %indvars.iv.next219, %.lr.ph196 ], [ %indvars.iv218.ph, %.lr.ph196.preheader304 ] ; 2 uses
  %i.lr = getelementptr inbounds [4 x i8], ptr %9, i64 %indvars.iv218 ; 2 uses
  %i.ls = load float, ptr %i.lr, align 4, !tbaa !184
  %i.lt = fadd float %i.lc, %i.ls
  store float %i.lt, ptr %i.lr, align 4, !tbaa !184
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
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  %i.i = sext i32 %i.g to i64
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !132
  %i.k = getelementptr inbounds nuw [128 x i8], ptr %i.j, i64 %i.i ; 7 uses
  %i.l = sext i32 %2 to i64                       ; 4 uses
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !197
  %i.n = getelementptr inbounds nuw [40 x i8], ptr %i.m, i64 %i.l ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !207  ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 120 ; 4 uses
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = select i1 %.not.i, ptr %i.q, ptr %i.o    ; 18 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.t = load i8, ptr %i.s, align 8, !tbaa !208
  %i.u = load float, ptr %1, align 4, !tbaa !209
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 36
  %i.w = load i32, ptr %i.v, align 4, !tbaa !211
  %i.x = sitofp i32 %i.w to float
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.z = load i32, ptr %i.y, align 4, !tbaa !212
  %i.aa = sitofp i32 %i.z to float
  %i.ab = tail call float @llvm.fmuladd.f32(float %i.u, float %i.x, float %i.aa)
  %i.ac = fadd float %i.ab, -5.000000e-01         ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %i.r, i64 28
  %i.ag = load <2 x float>, ptr %i.ad, align 4, !tbaa !184
  %i.ah = load <2 x i32>, ptr %i.ae, align 4, !tbaa !42
  %i.ai = sitofp <2 x i32> %i.ah to <2 x float>
  %i.aj = load <2 x i32>, ptr %i.af, align 4, !tbaa !42
  %i.ak = sitofp <2 x i32> %i.aj to <2 x float>
  %i.al = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ag, <2 x float> %i.ai, <2 x float> %i.ak)
  %i.am = tail call noundef float @llvm.floor.f32(float %i.ac) ; 2 uses
  %i.an = fptosi float %i.am to i32               ; 2 uses
  %i.ao = fsub float %i.ac, %i.am                 ; 28 uses
  %i.ap = fadd <2 x float> %i.al, splat (float -5.000000e-01) ; 2 uses
  %i.aq = tail call <2 x float> @llvm.floor.v2f32(<2 x float> %i.ap) ; 3 uses
  %i.ar = extractelement <2 x float> %i.aq, i64 0
  %i.as = fptosi float %i.ar to i32               ; 2 uses
  %i.at = extractelement <2 x float> %i.aq, i64 1
  %i.au = fptosi float %i.at to i32               ; 2 uses
  %i.av = fsub <2 x float> %i.ap, %i.aq           ; 11 uses
  %i.aw = extractelement <2 x float> %i.av, i64 1 ; 17 uses
  %i.ax = extractelement <2 x float> %i.av, i64 0 ; 24 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.az = load i8, ptr %i.ay, align 8, !tbaa !162
  %i.ba = zext i8 %i.az to i64
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr @_ZN11OpenImageIO4v3_117TextureSystemImpl14wrap_functionsE, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !213 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 17
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !180
  %i.bf = zext i8 %i.be to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr @_ZN11OpenImageIO4v3_117TextureSystemImpl14wrap_functionsE, i64 %i.bf
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !213 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 18
  %i.bj = load i8, ptr %i.bi, align 2, !tbaa !181
  %i.bk = zext i8 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr @_ZN11OpenImageIO4v3_117TextureSystemImpl14wrap_functionsE, i64 %i.bk
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !213 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  store i32 %i.an, ptr %i.b, align 4, !tbaa !42
  %i.bn = add nsw i32 %i.an, 1
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 4 uses
  store i32 %i.bn, ptr %i.bo, align 4, !tbaa !42
  store i32 %i.as, ptr %i.c, align 4, !tbaa !42
  %i.bp = add nsw i32 %i.as, 1
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 4 uses
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !42
  store i32 %i.au, ptr %i.d, align 4, !tbaa !42
  %i.br = add nsw i32 %i.au, 1
  %i.bs = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 4 uses
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  store i64 0, ptr %16, align 8, !tbaa !187
  %i.bt = getelementptr inbounds nuw i8, ptr %16, i64 2 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %16, i64 4 ; 3 uses
  %i.bv = load i32, ptr %i.r, align 4, !tbaa !214
  %i.bw = getelementptr inbounds nuw i8, ptr %i.r, i64 12 ; 4 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !215
  %i.by = call noundef zeroext i1 %i.bc(ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef %i.bv, i32 noundef %i.bx) ; 2 uses
  %i.bz = zext i1 %i.by to i8
  store i8 %i.bz, ptr %16, align 8, !tbaa !241
  %i.ca = load i32, ptr %i.r, align 4, !tbaa !214
  %i.cb = load i32, ptr %i.bw, align 4, !tbaa !215
  %i.cc = call noundef zeroext i1 %i.bc(ptr noundef nonnull align 4 dereferenceable(4) %i.bo, i32 noundef %i.ca, i32 noundef %i.cb) ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %16, i64 1 ; 2 uses
  %i.ce = zext i1 %i.cc to i8
  store i8 %i.ce, ptr %i.cd, align 1, !tbaa !241
  %i.cf = getelementptr inbounds nuw i8, ptr %i.r, i64 4 ; 5 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !216
  %i.ch = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 4 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !217
  %i.cj = call noundef zeroext i1 %i.bh(ptr noundef nonnull align 4 dereferenceable(4) %i.c, i32 noundef %i.cg, i32 noundef %i.ci) ; 2 uses
  %i.ck = zext i1 %i.cj to i8
  store i8 %i.ck, ptr %i.bt, align 2, !tbaa !241
  %i.cl = load i32, ptr %i.cf, align 4, !tbaa !216
  %i.cm = load i32, ptr %i.ch, align 4, !tbaa !217
  %i.cn = call noundef zeroext i1 %i.bh(ptr noundef nonnull align 4 dereferenceable(4) %i.bq, i32 noundef %i.cl, i32 noundef %i.cm) ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %16, i64 3 ; 2 uses
  %i.cp = zext i1 %i.cn to i8
  store i8 %i.cp, ptr %i.co, align 1, !tbaa !241
  %i.cq = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 4 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !218
  %i.cs = getelementptr inbounds nuw i8, ptr %i.r, i64 20 ; 4 uses
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !219
  %i.cu = call noundef zeroext i1 %i.bm(ptr noundef nonnull align 4 dereferenceable(4) %i.d, i32 noundef %i.cr, i32 noundef %i.ct) ; 2 uses
  %i.cv = zext i1 %i.cu to i8
  store i8 %i.cv, ptr %i.bu, align 4, !tbaa !241
  %i.cw = load i32, ptr %i.cq, align 4, !tbaa !218
  %i.cx = load i32, ptr %i.cs, align 4, !tbaa !219
  %i.cy = call noundef zeroext i1 %i.bm(ptr noundef nonnull align 4 dereferenceable(4) %i.bs, i32 noundef %i.cw, i32 noundef %i.cx) ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %16, i64 5 ; 2 uses
  %i.da = zext i1 %i.cy to i8
  store i8 %i.da, ptr %i.cz, align 1, !tbaa !241
  %i.db = getelementptr inbounds nuw i8, ptr %i.n, i64 38
  %i.dc = load i8, ptr %i.db, align 2
  %i.dd = trunc i8 %i.dc to i1
  %indvars.iv595.sroa.gep1045 = getelementptr inbounds nuw i8, ptr %17, i64 32
  %indvars.iv595.sroa.gep1048 = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %indvars.iv591.sroa.gep1049 = getelementptr inbounds nuw i8, ptr %16, i64 1
  %indvars.iv595.sroa.gep1052 = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %indvars.iv593.sroa.gep1053 = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %indvars.iv591.sroa.gep1056 = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  br i1 %i.dd, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.de = load i32, ptr %i.b, align 4, !tbaa !42  ; 2 uses
  %i.df = load i32, ptr %i.r, align 4, !tbaa !214 ; 4 uses
  %.not = icmp slt i32 %i.de, %i.df
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.dg = load i32, ptr %i.bw, align 4, !tbaa !215
  %i.dh = add nsw i32 %i.dg, %i.df
  %i.di = icmp slt i32 %i.de, %i.dh
  %i.dj = and i1 %i.by, %i.di
  %i.dk = zext i1 %i.dj to i8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.dl = phi i8 [ 0, %bb.b ], [ %i.dk, %bb.c ]
  store i8 %i.dl, ptr %16, align 8, !tbaa !241
  %i.dm = load i32, ptr %i.bo, align 4, !tbaa !42 ; 2 uses
  %.not354 = icmp slt i32 %i.dm, %i.df
  br i1 %.not354, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.dn = load i32, ptr %i.bw, align 4, !tbaa !215
  %i.do = add nsw i32 %i.dn, %i.df
  %i.dp = icmp slt i32 %i.dm, %i.do
  %i.dq = and i1 %i.cc, %i.dp
  %i.dr = zext i1 %i.dq to i8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ds = phi i8 [ 0, %bb.d ], [ %i.dr, %bb.e ]
  store i8 %i.ds, ptr %i.cd, align 1, !tbaa !241
  %i.dt = load i32, ptr %i.c, align 4, !tbaa !42  ; 2 uses
  %i.du = load i32, ptr %i.cf, align 4, !tbaa !216 ; 4 uses
  %.not355 = icmp slt i32 %i.dt, %i.du
  br i1 %.not355, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dv = load i32, ptr %i.ch, align 4, !tbaa !217
  %i.dw = add nsw i32 %i.dv, %i.du
  %i.dx = icmp slt i32 %i.dt, %i.dw
  %i.dy = and i1 %i.cj, %i.dx
  %i.dz = zext i1 %i.dy to i8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ea = phi i8 [ 0, %bb.f ], [ %i.dz, %bb.g ]
  store i8 %i.ea, ptr %i.bt, align 2, !tbaa !241
  %i.eb = load i32, ptr %i.bq, align 4, !tbaa !42 ; 2 uses
  %.not356 = icmp slt i32 %i.eb, %i.du
  br i1 %.not356, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ec = load i32, ptr %i.ch, align 4, !tbaa !217
  %i.ed = add nsw i32 %i.ec, %i.du
  %i.ee = icmp slt i32 %i.eb, %i.ed
  %i.ef = and i1 %i.cn, %i.ee
  %i.eg = zext i1 %i.ef to i8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.eh = phi i8 [ 0, %bb.h ], [ %i.eg, %bb.i ]
  store i8 %i.eh, ptr %i.co, align 1, !tbaa !241
  %i.ei = load i32, ptr %i.d, align 4, !tbaa !42  ; 2 uses
  %i.ej = load i32, ptr %i.cq, align 4, !tbaa !218 ; 4 uses
  %.not357 = icmp slt i32 %i.ei, %i.ej
  br i1 %.not357, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ek = load i32, ptr %i.cs, align 4, !tbaa !219
  %i.el = add nsw i32 %i.ek, %i.ej
  %i.em = icmp slt i32 %i.ei, %i.el
  %i.en = and i1 %i.cu, %i.em
  %i.eo = zext i1 %i.en to i8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ep = phi i8 [ 0, %bb.j ], [ %i.eo, %bb.k ]
  store i8 %i.ep, ptr %i.bu, align 4, !tbaa !241
  %i.eq = load i32, ptr %i.bs, align 4, !tbaa !42 ; 2 uses
  %.not358 = icmp slt i32 %i.eq, %i.ej
  br i1 %.not358, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.er = load i32, ptr %i.cs, align 4, !tbaa !219
  %i.es = add nsw i32 %i.er, %i.ej
  %i.et = icmp slt i32 %i.eq, %i.es
  %i.eu = and i1 %i.cy, %i.et
  %i.ev = zext i1 %i.eu to i8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ew = phi i8 [ 0, %bb.l ], [ %i.ev, %bb.m ]
  store i8 %i.ew, ptr %i.cz, align 1, !tbaa !241
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.a
  %i.ex = load i64, ptr %16, align 8              ; 8 uses
  %i.ey = icmp eq i64 %i.ex, 0
  %i.ez = lshr i64 %i.ex, 32
  %i.fa = trunc i64 %i.ex to i32
  %i.fb = trunc i64 %i.ex to i32
  %i.fc = trunc i64 %i.ex to i32
  %i.fd = lshr i32 %i.fc, 8
  %i.fe = trunc i64 %i.ex to i32
  %i.ff = lshr i64 %i.ex, 40
  %i.fg = trunc nuw i64 %i.ez to i32
  %i.fh = lshr i32 %i.fa, 16
  %i.fi = lshr i32 %i.fe, 24
  %i.fj = trunc nuw nsw i64 %i.ff to i32
  br i1 %i.ey, label %bb.iy, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fk = icmp sgt i32 %6, %7
  br i1 %i.fk, label %bb.q, label %.loopexit556

bb.q:                                             ; preds = %bb.p
  %i.fl = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.fm = load float, ptr %i.fl, align 8, !tbaa !189 ; 2 uses
  %i.fn = fcmp une float %i.fm, 0.000000e+00
  br i1 %i.fn, label %.lr.ph.preheader, label %.loopexit556

.lr.ph.preheader:                                 ; preds = %bb.q
  %i.fo = and i32 %i.fb, 255
  %i.fp = and i32 %i.fd, 255
  %i.fq = fsub float 1.000000e+00, %i.ao
  %i.fr = fsub float 1.000000e+00, %i.ax          ; 2 uses
  %i.fs = fsub float 1.000000e+00, %i.aw
  %i.ft = insertelement <4 x i32> poison, i32 %i.fi, i64 0
  %i.fu = insertelement <4 x i32> %i.ft, i32 %i.fj, i64 1
  %i.fv = insertelement <4 x i32> %i.fu, i32 %i.fg, i64 2
  %i.fw = insertelement <4 x i32> %i.fv, i32 %i.fh, i64 3
  %i.fx = and <4 x i32> %i.fw, <i32 -1, i32 255, i32 255, i32 255> ; 2 uses
  %i.fy = shufflevector <4 x i32> %i.fx, <4 x i32> poison, <4 x i32> <i32 2, i32 0, i32 3, i32 1>
  %i.fz = mul nuw nsw <4 x i32> %i.fx, %i.fy      ; 2 uses
  %i.ga = insertelement <4 x i32> poison, i32 %i.fo, i64 0
  %i.gb = shufflevector <4 x i32> %i.ga, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.gc = mul nuw nsw <4 x i32> %i.fz, %i.gb
  %i.gd = uitofp <4 x i32> %i.gc to <4 x float>
  %i.ge = insertelement <4 x i32> poison, i32 %i.fp, i64 0
  %i.gf = shufflevector <4 x i32> %i.ge, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.gg = mul nuw nsw <4 x i32> %i.fz, %i.gf
  %i.gh = uitofp <4 x i32> %i.gg to <4 x float>
  %i.gi = insertelement <4 x float> poison, float %i.ao, i64 0
  %i.gj = shufflevector <4 x float> %i.gi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gk = fmul <4 x float> %i.gj, %i.gh
  %i.gl = insertelement <4 x float> poison, float %i.fq, i64 0
  %i.gm = shufflevector <4 x float> %i.gl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gn = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gd, <4 x float> %i.gm, <4 x float> %i.gk) ; 4 uses
  %i.go = extractelement <4 x float> %i.gn, i64 0
  %i.gp = fmul float %i.ax, %i.go
  %i.gq = extractelement <4 x float> %i.gn, i64 2
  %i.gr = call float @llvm.fmuladd.f32(float %i.fr, float %i.gq, float %i.gp)
  %i.gs = extractelement <4 x float> %i.gn, i64 1
  %i.gt = fmul float %i.ax, %i.gs
  %i.gu = extractelement <4 x float> %i.gn, i64 3
  %i.gv = call float @llvm.fmuladd.f32(float %i.fr, float %i.gu, float %i.gt)
  %i.gw = fmul float %i.aw, %i.gv
  %i.gx = call noundef float @llvm.fmuladd.f32(float %i.fs, float %i.gr, float %i.gw)
  %i.gy = fmul float %8, %i.fm
  %i.gz = fmul float %i.gy, %i.gx                 ; 2 uses
  %i.ha = sext i32 %7 to i64                      ; 4 uses
  %wide.trip.count = sext i32 %6 to i64           ; 2 uses
  %i.hb = sub nsw i64 %wide.trip.count, %i.ha     ; 3 uses
  %min.iters.check = icmp ult i64 %i.hb, 8
  br i1 %min.iters.check, label %.lr.ph.preheader1044, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.hb, -8                      ; 3 uses
  %i.hc = add nsw i64 %n.vec, %i.ha
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.gz, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %9, i64 %i.ha
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 3 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %gep, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %gep, align 4, !tbaa !184
  %wide.load709 = load <4 x float>, ptr %i.hd, align 4, !tbaa !184
  %i.he = fadd <4 x float> %broadcast.splat, %wide.load
  %i.hf = fadd <4 x float> %broadcast.splat, %wide.load709
  store <4 x float> %i.he, ptr %gep, align 4, !tbaa !184
  store <4 x float> %i.hf, ptr %i.hd, align 4, !tbaa !184
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.hg = icmp eq i64 %index.next, %n.vec
  br i1 %i.hg, label %middle.block, label %vector.body, !llvm.loop !453

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hb, %n.vec
  br i1 %cmp.n, label %.loopexit556, label %.lr.ph.preheader1044

.lr.ph.preheader1044:                             ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.ha, %.lr.ph.preheader ], [ %i.hc, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader1044, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader1044 ] ; 2 uses
  %i.hh = getelementptr inbounds [4 x i8], ptr %9, i64 %indvars.iv ; 2 uses
  %i.hi = load float, ptr %i.hh, align 4, !tbaa !184
  %i.hj = fadd float %i.gz, %i.hi
  store float %i.hj, ptr %i.hh, align 4, !tbaa !184
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit556, label %.lr.ph, !llvm.loop !454

.loopexit556:                                     ; preds = %.lr.ph, %middle.block, %bb.q, %bb.p
  %i.hk = icmp slt i32 %7, 0
  br i1 %i.hk, label %bb.iy, label %bb.r

bb.r:                                             ; preds = %.loopexit556
  %i.hl = getelementptr inbounds nuw i8, ptr %i.r, i64 48 ; 4 uses
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !236
  %i.hn = getelementptr inbounds nuw i8, ptr %i.r, i64 52 ; 5 uses
  %21 = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %22 = add nsw i32 %i.hm, -1
  %23 = load <2 x i32>, ptr %i.hn, align 4, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %17, i8 0, i64 64, i1 false), !tbaa !234
  %24 = add nsw <2 x i32> %23, splat (i32 -1)
  %i.ho = load i32, ptr %i.b, align 4, !tbaa !42  ; 3 uses
  %i.hp = load i32, ptr %i.r, align 4, !tbaa !214
  %i.hq = sub nsw i32 %i.ho, %i.hp
  %25 = load i32, ptr %i.hl, align 4, !tbaa !236  ; 2 uses
  %i.hr = srem i32 %i.hq, %25                     ; 3 uses
  %i.hs = load i32, ptr %i.c, align 4, !tbaa !42  ; 2 uses
  %i.ht = load i32, ptr %i.d, align 4, !tbaa !42  ; 2 uses
  %26 = load <2 x i32>, ptr %i.cf, align 4, !tbaa !42
  %27 = insertelement <2 x i32> poison, i32 %i.hs, i64 0
  %28 = insertelement <2 x i32> %27, i32 %i.ht, i64 1 ; 2 uses
  %29 = sub nsw <2 x i32> %28, %26
  %30 = load <2 x i32>, ptr %i.hn, align 4, !tbaa !42
  %31 = load i32, ptr %i.hn, align 4, !tbaa !235
  %32 = srem <2 x i32> %29, %30                   ; 4 uses
  %i.hu = icmp ne i32 %i.hr, %22
  %i.hv = add nsw i32 %i.ho, 1
  %i.hw = load i32, ptr %i.bo, align 4, !tbaa !42
  %i.hx = icmp eq i32 %i.hv, %i.hw
  %i.hy = and i1 %i.hu, %i.hx
  %i.hz = add nsw i32 %i.hs, 1
  %i.ia = load i32, ptr %i.bq, align 4, !tbaa !42
  %i.ib = icmp eq i32 %i.hz, %i.ia
  %33 = icmp ne <2 x i32> %32, %24                ; 2 uses
  %34 = extractelement <2 x i1> %33, i64 0
  %35 = and i1 %34, %i.ib
  %i.ic = add nsw i32 %i.ht, 1
  %i.id = load i32, ptr %i.bs, align 4, !tbaa !42
  %i.ie = icmp eq i32 %i.ic, %i.id
  %36 = extractelement <2 x i1> %33, i64 1
  %i.if = and i1 %36, %i.ie
  %i.ig = and i1 %i.hy, %35
  %i.ih = and i1 %i.ig, %i.if
  %i.ii = load i32, ptr %i.f, align 4, !tbaa !130 ; 2 uses
  %i.ij = sext i32 %i.ii to i64
  %i.ik = load ptr, ptr %i.h, align 8, !tbaa !132
  %i.il = getelementptr inbounds nuw [128 x i8], ptr %i.ik, i64 %i.ij ; 3 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 32
  %i.in = load i32, ptr %i.im, align 8, !tbaa !500
  %i.io = zext i32 %i.in to i64                   ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.il, i64 36
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !501
  %i.ir = zext i32 %i.iq to i64                   ; 5 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.r, i64 60 ; 3 uses
  %i.it = load i32, ptr %i.is, align 4, !tbaa !220 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !221
  %i.iw = icmp sgt i32 %i.it, %i.iv
  br i1 %i.iw, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ix = load i32, ptr %5, align 8, !tbaa !183   ; 2 uses
  %i.iy = add nsw i32 %i.ix, %7
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.0309 = phi i32 [ %i.ix, %bb.s ], [ 0, %bb.r ] ; 3 uses
  %.0308 = phi i32 [ %i.iy, %bb.s ], [ %i.it, %bb.r ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  %i.iz = getelementptr inbounds nuw i8, ptr %5, i64 68
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !188
  store i32 0, ptr %18, align 8, !tbaa !242
  %i.jb = getelementptr inbounds nuw i8, ptr %18, i64 4 ; 3 uses
  store i32 0, ptr %i.jb, align 4, !tbaa !243
  %i.jc = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  store i32 0, ptr %i.jc, align 8, !tbaa !224
  %i.jd = getelementptr inbounds nuw i8, ptr %18, i64 12 ; 3 uses
  store i32 %i.ii, ptr %i.jd, align 4, !tbaa !225
  %i.je = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 3 uses
  store i32 %2, ptr %i.je, align 8, !tbaa !226
  %i.jf = getelementptr inbounds nuw i8, ptr %18, i64 20 ; 3 uses
  %i.jg = trunc i32 %.0309 to i16
  store i16 %i.jg, ptr %i.jf, align 4, !tbaa !227
  %i.jh = getelementptr inbounds nuw i8, ptr %18, i64 22 ; 4 uses
  %i.ji = trunc i32 %.0308 to i16
  store i16 %i.ji, ptr %i.jh, align 2, !tbaa !228
  %i.jj = getelementptr inbounds nuw i8, ptr %18, i64 24 ; 3 uses
  store i32 %i.ja, ptr %i.jj, align 8, !tbaa !229
  %i.jk = getelementptr inbounds nuw i8, ptr %18, i64 28
  store i32 0, ptr %i.jk, align 4, !tbaa !230
  %i.jl = getelementptr inbounds nuw i8, ptr %18, i64 32 ; 3 uses
  store ptr %3, ptr %i.jl, align 8, !tbaa !231
  %i.jm = icmp slt i32 %.0308, %.0309
  br i1 %i.jm, label %bb.u, label %_ZN11OpenImageIO4v3_16TileIDC2ERNS0_14ImageCacheFileEiiiiiiii.exit

bb.u:                                             ; preds = %bb.t
  %i.jn = getelementptr inbounds nuw i8, ptr %i.il, i64 120
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !161
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 60
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !182
  %i.jr = trunc i32 %i.jq to i16
  store i16 %i.jr, ptr %i.jh, align 2, !tbaa !228
  br label %_ZN11OpenImageIO4v3_16TileIDC2ERNS0_14ImageCacheFileEiiiiiiii.exit

_ZN11OpenImageIO4v3_16TileIDC2ERNS0_14ImageCacheFileEiiiiiiii.exit: ; preds = %bb.u, %bb.t
  %i.js = load i32, ptr %5, align 8, !tbaa !183
  %sext = shl i32 %.0309, 16
  %i.jt = ashr exact i32 %sext, 16
  %i.ju = sub nsw i32 %i.js, %i.jt                ; 2 uses
  %i.jv = icmp eq i64 %i.ex, 1103823438081
  %or.cond = and i1 %i.jv, %i.ih
  br i1 %or.cond, label %bb.v, label %.preheader555

.preheader555:                                    ; preds = %_ZN11OpenImageIO4v3_16TileIDC2ERNS0_14ImageCacheFileEiiiiiiii.exit
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 5 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.kb = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.kc = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.kd = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 3 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 7 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ki = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 4 uses
  %i.kj = sext i32 %i.ju to i64
  br label %.preheader554

bb.v:                                             ; preds = %_ZN11OpenImageIO4v3_16TileIDC2ERNS0_14ImageCacheFileEiiiiiiii.exit
  %i.kk = sub nsw i32 %i.ho, %i.hr
  %37 = sub nsw <2 x i32> %28, %32
  store i32 %i.kk, ptr %18, align 8, !tbaa !242
  store <2 x i32> %37, ptr %i.jb, align 4, !tbaa !42
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !63
  %i.kn = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_114ImageCacheImpl9find_tileERKNS0_6TileIDEPNS0_23ImageCachePerThreadInfoEb(ptr noundef nonnull align 64 dereferenceable(25240) %i.km, ptr noundef nonnull align 8 dereferenceable(40) %18, ptr noundef %4, i1 noundef zeroext true)
          to label %_ZN11OpenImageIO4v3_117TextureSystemImpl9find_tileERKNS0_6TileIDEPNS0_23ImageCachePerThreadInfoEb.exit unwind label %bb.aa

_ZN11OpenImageIO4v3_117TextureSystemImpl9find_tileERKNS0_6TileIDEPNS0_23ImageCachePerThreadInfoEb.exit: ; preds = %bb.v
  br i1 %i.kn, label %bb.ad, label %bb.w

bb.w:                                             ; preds = %_ZN11OpenImageIO4v3_117TextureSystemImpl9find_tileERKNS0_6TileIDEPNS0_23ImageCachePerThreadInfoEb.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  %i.ko = load ptr, ptr %i.kl, align 8, !tbaa !63
  invoke void @_ZNK11OpenImageIO4v3_114ImageCacheImpl8geterrorB5cxx11Eb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr noundef nonnull align 64 dereferenceable(25240) %i.ko, i1 noundef zeroext true)
          to label %bb.x unwind label %bb.ab

bb.x:                                             ; preds = %bb.w
  invoke void @_ZNK11OpenImageIO4v3_117TextureSystemImpl5errorIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull @.str.1, ptr noundef nonnull align 8 dereferenceable(32) %19)
          to label %bb.y unwind label %bb.ac

bb.y:                                             ; preds = %bb.x
  %i.kp = load ptr, ptr %19, align 8, !tbaa !193  ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.kr = icmp eq ptr %i.kp, %i.kq
  br i1 %i.kr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.y
  %i.ks = load i64, ptr %i.kq, align 8, !tbaa !187
  %i.kt = add i64 %i.ks, 1
  call void @_ZdlPvm(ptr noundef %i.kp, i64 noundef %i.kt) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  br label %bb.ad

bb.z:                                             ; preds = %bb.bu
  %i.ku = landingpad { ptr, i32 }
          cleanup
  br label %bb.ih

bb.aa:                                            ; preds = %bb.v
  %i.kv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ih

bb.ab:                                            ; preds = %bb.w
  %i.kw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit377

bb.ac:                                            ; preds = %bb.x
  %i.kx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ky = load ptr, ptr %19, align 8, !tbaa !193  ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.la = icmp eq ptr %i.ky, %i.kz
  br i1 %i.la, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit377, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i375

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i375: ; preds = %bb.ac
  %i.lb = load i64, ptr %i.kz, align 8, !tbaa !187
  %i.lc = add i64 %i.lb, 1
  call void @_ZdlPvm(ptr noundef %i.ky, i64 noundef %i.lc) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit377

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit377: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i375, %bb.ab
  %.pn364 = phi { ptr, i32 } [ %i.kw, %bb.ab ], [ %i.kx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i375 ], [ %i.kx, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  br label %bb.ih

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN11OpenImageIO4v3_117TextureSystemImpl9find_tileERKNS0_6TileIDEPNS0_23ImageCachePerThreadInfoEb.exit
  %i.ld = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !234 ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 76
  %i.lg = load i8, ptr %i.lf, align 4, !tbaa !509, !range !120, !noundef !121
  %i.lh = trunc nuw i8 %i.lg to i1
  br i1 %i.lh, label %bb.ae, label %.critedge

bb.ae:                                            ; preds = %bb.ad
  %i.li = load i32, ptr %i.hn, align 4, !tbaa !235 ; 2 uses
  %i.lj = load i32, ptr %i.hl, align 4, !tbaa !236
  %i.lk = load i32, ptr %i.is, align 4, !tbaa !220
  %i.ll = getelementptr inbounds nuw i8, ptr %i.le, i64 48
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !131
  %38 = extractelement <2 x i32> %32, i64 1
  %i.ln = mul nsw i32 %i.li, %38
  %i.lo = sext i32 %i.ln to i64
  %39 = extractelement <2 x i32> %32, i64 0
  %i.lp = sext i32 %39 to i64
  %i.lq = add nsw i64 %i.lo, %i.lp
  %i.lr = sext i32 %i.lj to i64                   ; 2 uses
  %i.ls = mul nsw i64 %i.lq, %i.lr
  %i.lt = sext i32 %i.hr to i64
  %i.lu = add nsw i64 %i.ls, %i.lt
  %i.lv = sext i32 %i.lk to i64
  %i.lw = mul i64 %i.lu, %i.lv
  %i.lx = sext i32 %i.ju to i64
  %i.ly = add i64 %i.lw, %i.lx
  %i.lz = mul i64 %i.ly, %i.io
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lm, i64 %i.lz ; 4 uses
  store ptr %i.ma, ptr %i.e, align 16, !tbaa !131
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 %i.ir
  %i.mc = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.mb, ptr %i.mc, align 8, !tbaa !131
  %i.md = mul nsw i64 %i.lr, %i.ir                ; 3 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.ma, i64 %i.md ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.me, ptr %i.mf, align 16, !tbaa !131
  %i.mg = getelementptr inbounds nuw i8, ptr %i.me, i64 %i.ir
  %i.mh = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %i.mg, ptr %i.mh, align 8, !tbaa !131
  %i.mi = sext i32 %i.li to i64
  %i.mj = mul i64 %i.md, %i.mi
  %i.mk = getelementptr inbounds nuw i8, ptr %i.ma, i64 %i.mj ; 3 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %i.mk, ptr %i.ml, align 16, !tbaa !131
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mk, i64 %i.ir
  %i.mn = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr %i.mm, ptr %i.mn, align 8, !tbaa !131
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mk, i64 %i.md ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store ptr %i.mo, ptr %i.mp, align 16, !tbaa !131
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mo, i64 %i.ir
  %i.mr = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store ptr %i.mq, ptr %i.mr, align 8, !tbaa !131
  br label %.critedge374

.preheader554:                                    ; preds = %.preheader555, %.critedge372.thread545
  %i.ms = phi i32 [ %31, %.preheader555 ], [ %i.tl, %.critedge372.thread545 ]
  %i.mt = phi i32 [ %25, %.preheader555 ], [ %i.tm, %.critedge372.thread545 ]
  %.not586 = phi i1 [ true, %.preheader555 ], [ false, %.critedge372.thread545 ]
  %indvars.iv595.sroa.phi = phi ptr [ %17, %.preheader555 ], [ %indvars.iv595.sroa.gep1045, %.critedge372.thread545 ]
  %indvars.iv595.sroa.phi1046 = phi ptr [ %i.e, %.preheader555 ], [ %indvars.iv595.sroa.gep1048, %.critedge372.thread545 ]
  %indvars.iv595.sroa.phi1050 = phi ptr [ %i.d, %.preheader555 ], [ %indvars.iv595.sroa.gep1052, %.critedge372.thread545 ]
  %indvars.iv595 = phi i64 [ 0, %.preheader555 ], [ 1, %.critedge372.thread545 ]
  %.0307582 = phi i1 [ true, %.preheader555 ], [ %.3, %.critedge372.thread545 ]
  %i.mu = getelementptr inbounds nuw i8, ptr %i.bu, i64 %indvars.iv595
  br label %.preheader

.preheader:                                       ; preds = %.preheader554, %bb.bt
  %i.mv = phi i32 [ %i.ms, %.preheader554 ], [ %i.tl, %bb.bt ]
  %i.mw = phi i32 [ %i.mt, %.preheader554 ], [ %i.tm, %bb.bt ]
  %.not585 = phi i1 [ true, %.preheader554 ], [ false, %bb.bt ]
  %indvars.iv593.sroa.phi = phi ptr [ %i.c, %.preheader554 ], [ %indvars.iv593.sroa.gep1053, %bb.bt ]
  %indvars.iv593 = phi i64 [ 0, %.preheader554 ], [ 1, %bb.bt ] ; 3 uses
  %.1580 = phi i1 [ %.0307582, %.preheader554 ], [ %.3, %bb.bt ]
  %i.mx = getelementptr inbounds nuw i8, ptr %i.bt, i64 %indvars.iv593
  %i.my = getelementptr inbounds nuw [16 x i8], ptr %indvars.iv595.sroa.phi1046, i64 %indvars.iv593
  %i.mz = getelementptr inbounds nuw [16 x i8], ptr %indvars.iv595.sroa.phi, i64 %indvars.iv593
  br label %bb.af

bb.af:                                            ; preds = %.preheader, %bb.bs
  %i.na = phi i32 [ %i.mv, %.preheader ], [ %i.tl, %bb.bs ] ; 4 uses
  %i.nb = phi i32 [ %i.mw, %.preheader ], [ %i.tm, %bb.bs ] ; 4 uses
  %.not584 = phi i1 [ true, %.preheader ], [ false, %bb.bs ]
  %indvars.iv591.sroa.phi = phi ptr [ %16, %.preheader ], [ %indvars.iv591.sroa.gep1049, %bb.bs ]
  %indvars.iv591.sroa.phi1054 = phi ptr [ %i.b, %.preheader ], [ %indvars.iv591.sroa.gep1056, %bb.bs ]
  %indvars.iv591 = phi i64 [ 0, %.preheader ], [ 1, %bb.bs ] ; 2 uses
  %.2578 = phi i1 [ %.1580, %.preheader ], [ %.3, %bb.bs ] ; 4 uses
  %i.nc = load i8, ptr %indvars.iv591.sroa.phi, align 1, !tbaa !241, !range !120, !noundef !121
  %i.nd = trunc nuw i8 %i.nc to i1
  br i1 %i.nd, label %bb.ag, label %bb.bs

bb.ag:                                            ; preds = %bb.af
  %i.ne = load i8, ptr %i.mx, align 1, !tbaa !241, !range !120, !noundef !121
  %i.nf = trunc nuw i8 %i.ne to i1
  br i1 %i.nf, label %bb.ah, label %bb.bs

bb.ah:                                            ; preds = %bb.ag
  %i.ng = load i8, ptr %i.mu, align 1, !tbaa !241, !range !120, !noundef !121
  %i.nh = trunc nuw i8 %i.ng to i1
  br i1 %i.nh, label %bb.ai, label %bb.bs

bb.ai:                                            ; preds = %bb.ah
  %i.ni = load i32, ptr %indvars.iv591.sroa.phi1054, align 4, !tbaa !42 ; 2 uses
  %i.nj = load i32, ptr %i.r, align 4, !tbaa !214
  %i.nk = sub nsw i32 %i.ni, %i.nj
  %i.nl = srem i32 %i.nk, %i.nb                   ; 2 uses
  %i.nm = load i32, ptr %indvars.iv593.sroa.phi, align 4, !tbaa !42 ; 2 uses
  %i.nn = load i32, ptr %i.cf, align 4, !tbaa !216
  %i.no = sub nsw i32 %i.nm, %i.nn
  %i.np = srem i32 %i.no, %i.na                   ; 2 uses
  %i.nq = load i32, ptr %indvars.iv595.sroa.phi1050, align 4, !tbaa !42 ; 2 uses
  %i.nr = load i32, ptr %i.cq, align 4, !tbaa !218
  %i.ns = sub nsw i32 %i.nq, %i.nr
  %i.nt = load i32, ptr %21, align 4, !tbaa !222
  %i.nu = srem i32 %i.ns, %i.nt                   ; 2 uses
  %i.nv = sub nsw i32 %i.ni, %i.nl                ; 3 uses
  %i.nw = sub nsw i32 %i.nm, %i.np                ; 3 uses
  %i.nx = sub nsw i32 %i.nq, %i.nu                ; 3 uses
  store i32 %i.nv, ptr %18, align 8, !tbaa !242
  store i32 %i.nw, ptr %i.jb, align 4, !tbaa !243
  store i32 %i.nx, ptr %i.jc, align 8, !tbaa !224
  %i.ny = load ptr, ptr %i.jw, align 8, !tbaa !63
  %i.nz = load i64, ptr %i.jx, align 8, !tbaa !254
  %i.oa = add nsw i64 %i.nz, 1
  store i64 %i.oa, ptr %i.jx, align 8, !tbaa !254
  %i.ob = load ptr, ptr %i.jy, align 8, !tbaa !234 ; 12 uses
  %.not.i409 = icmp eq ptr %i.ob, null
  br i1 %.not.i409, label %_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit17.thread.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 8
  %i.od = load i32, ptr %i.oc, align 8, !tbaa !242
  %i.oe = icmp eq i32 %i.od, %i.nv
  br i1 %i.oe, label %bb.ak, label %_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit.thread.i

bb.ak:                                            ; preds = %bb.aj
  %i.of = getelementptr inbounds nuw i8, ptr %i.ob, i64 12
  %i.og = load i32, ptr %i.of, align 4, !tbaa !243
  %i.oh = icmp eq i32 %i.og, %i.nw
  br i1 %i.oh, label %bb.al, label %_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit.thread.i

bb.al:                                            ; preds = %bb.ak
  %i.oi = getelementptr inbounds nuw i8, ptr %i.ob, i64 16
  %i.oj = load i32, ptr %i.oi, align 8, !tbaa !224
  %i.ok = icmp eq i32 %i.oj, %i.nx
  br i1 %i.ok, label %bb.am, label %_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit.thread.i

bb.am:                                            ; preds = %bb.al
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ob, i64 20
  %i.om = load i32, ptr %i.ol, align 4, !tbaa !225
  %i.on = load i32, ptr %i.jd, align 4, !tbaa !225
  %i.oo = icmp eq i32 %i.om, %i.on
  br i1 %i.oo, label %bb.an, label %_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit.thread.i

bb.an:                                            ; preds = %bb.am
  %i.op = getelementptr inbounds nuw i8, ptr %i.ob, i64 24
  %i.oq = load i32, ptr %i.op, align 8, !tbaa !226
  %i.or = load i32, ptr %i.je, align 8, !tbaa !226
  %i.os = icmp eq i32 %i.oq, %i.or
  br i1 %i.os, label %bb.ao, label %_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit.thread.i

bb.ao:                                            ; preds = %bb.an
  %i.ot = getelementptr inbounds nuw i8, ptr %i.ob, i64 40
  %i.ou = load ptr, ptr %i.ot, align 8, !tbaa !231
  %i.ov = load ptr, ptr %i.jl, align 8, !tbaa !231
  %i.ow = icmp eq ptr %i.ou, %i.ov
  br i1 %i.ow, label %bb.ap, label %_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit.thread.i

bb.ap:                                            ; preds = %bb.ao
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ob, i64 28
  %i.oy = load i16, ptr %i.ox, align 4, !tbaa !227
  %i.oz = load i16, ptr %i.jf, align 4, !tbaa !227
  %i.pa = icmp eq i16 %i.oy, %i.oz
  br i1 %i.pa, label %bb.aq, label %_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit.thread.i

bb.aq:                                            ; preds = %bb.ap
  %i.pb = getelementptr inbounds nuw i8, ptr %i.ob, i64 30
  %i.pc = load i16, ptr %i.pb, align 2, !tbaa !228
  %i.pd = load i16, ptr %i.jh, align 2, !tbaa !228
  %i.pe = icmp eq i16 %i.pc, %i.pd
  br i1 %i.pe, label %_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit.i, label %_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit.thread.i

_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit.i:     ; preds = %bb.aq
  %i.pf = getelementptr inbounds nuw i8, ptr %i.ob, i64 32
  %i.pg = load i32, ptr %i.pf, align 8, !tbaa !229
  %i.ph = load i32, ptr %i.jj, align 8, !tbaa !229
  %i.pi = icmp eq i32 %i.pg, %i.ph
  br i1 %i.pi, label %bb.ar, label %_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit.thread.i

bb.ar:                                            ; preds = %_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit.i
  br i1 %.2578, label %bb.as, label %_ZN11OpenImageIO4v3_117TextureSystemImpl9find_tileERKNS0_6TileIDEPNS0_23ImageCachePerThreadInfoEb.exit378.thread

bb.as:                                            ; preds = %bb.ar
  %i.pj = getelementptr inbounds nuw i8, ptr %i.ob, i64 80
  store atomic i32 1, ptr %i.pj seq_cst, align 8
  br label %_ZN11OpenImageIO4v3_117TextureSystemImpl9find_tileERKNS0_6TileIDEPNS0_23ImageCachePerThreadInfoEb.exit378.thread

_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit.thread.i: ; preds = %_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit.i, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj
  %i.pk = load ptr, ptr %i.jz, align 8, !tbaa !234 ; 12 uses
  store ptr %i.pk, ptr %i.jy, align 8, !tbaa !234
  store ptr %i.ob, ptr %i.jz, align 8, !tbaa !234
  %.not18.i = icmp eq ptr %i.pk, null
  br i1 %.not18.i, label %_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit17.thread.i, label %bb.at

bb.at:                                            ; preds = %_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit.thread.i
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 8
  %i.pm = load i32, ptr %i.pl, align 8, !tbaa !242
  %i.pn = icmp eq i32 %i.pm, %i.nv
  br i1 %i.pn, label %bb.au, label %_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit17.thread.i

bb.au:                                            ; preds = %bb.at
  %i.po = getelementptr inbounds nuw i8, ptr %i.pk, i64 12
  %i.pp = load i32, ptr %i.po, align 4, !tbaa !243
  %i.pq = icmp eq i32 %i.pp, %i.nw
  br i1 %i.pq, label %bb.av, label %_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit17.thread.i

bb.av:                                            ; preds = %bb.au
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pk, i64 16
  %i.ps = load i32, ptr %i.pr, align 8, !tbaa !224
  %i.pt = icmp eq i32 %i.ps, %i.nx
  br i1 %i.pt, label %bb.aw, label %_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit17.thread.i

bb.aw:                                            ; preds = %bb.av
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pk, i64 20
  %i.pv = load i32, ptr %i.pu, align 4, !tbaa !225
  %i.pw = load i32, ptr %i.jd, align 4, !tbaa !225
  %i.px = icmp eq i32 %i.pv, %i.pw
  br i1 %i.px, label %bb.ax, label %_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit17.thread.i

bb.ax:                                            ; preds = %bb.aw
  %i.py = getelementptr inbounds nuw i8, ptr %i.pk, i64 24
  %i.pz = load i32, ptr %i.py, align 8, !tbaa !226
  %i.qa = load i32, ptr %i.je, align 8, !tbaa !226
  %i.qb = icmp eq i32 %i.pz, %i.qa
  br i1 %i.qb, label %bb.ay, label %_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit17.thread.i

bb.ay:                                            ; preds = %bb.ax
  %i.qc = getelementptr inbounds nuw i8, ptr %i.pk, i64 40
  %i.qd = load ptr, ptr %i.qc, align 8, !tbaa !231
  %i.qe = load ptr, ptr %i.jl, align 8, !tbaa !231
  %i.qf = icmp eq ptr %i.qd, %i.qe
  br i1 %i.qf, label %bb.az, label %_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit17.thread.i

bb.az:                                            ; preds = %bb.ay
  %i.qg = getelementptr inbounds nuw i8, ptr %i.pk, i64 28
  %i.qh = load i16, ptr %i.qg, align 4, !tbaa !227
  %i.qi = load i16, ptr %i.jf, align 4, !tbaa !227
  %i.qj = icmp eq i16 %i.qh, %i.qi
  br i1 %i.qj, label %bb.ba, label %_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit17.thread.i

bb.ba:                                            ; preds = %bb.az
  %i.qk = getelementptr inbounds nuw i8, ptr %i.pk, i64 30
  %i.ql = load i16, ptr %i.qk, align 2, !tbaa !228
  %i.qm = load i16, ptr %i.jh, align 2, !tbaa !228
  %i.qn = icmp eq i16 %i.ql, %i.qm
  br i1 %i.qn, label %_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit17.i, label %_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit17.thread.i

_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit17.i:   ; preds = %bb.ba
  %i.qo = getelementptr inbounds nuw i8, ptr %i.pk, i64 32
  %i.qp = load i32, ptr %i.qo, align 8, !tbaa !229
  %i.qq = load i32, ptr %i.jj, align 8, !tbaa !229
  %i.qr = icmp eq i32 %i.qp, %i.qq
  br i1 %i.qr, label %bb.bb, label %_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit17.thread.i

bb.bb:                                            ; preds = %_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit17.i
  %i.qs = getelementptr inbounds nuw i8, ptr %i.pk, i64 80
  store atomic i32 1, ptr %i.qs seq_cst, align 8
  br label %_ZN11OpenImageIO4v3_117TextureSystemImpl9find_tileERKNS0_6TileIDEPNS0_23ImageCachePerThreadInfoEb.exit378.thread

_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit17.thread.i: ; preds = %_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit17.i, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit.thread.i, %bb.ai
  %i.qt = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_114ImageCacheImpl20find_tile_main_cacheERKNS0_6TileIDERNS0_13intrusive_ptrINS0_14ImageCacheTileEEEPNS0_23ImageCachePerThreadInfoE(ptr noundef nonnull align 64 dereferenceable(25240) %i.ny, ptr noundef nonnull align 8 dereferenceable(40) %18, ptr noundef nonnull align 8 dereferenceable(8) %i.jy, ptr noundef nonnull %4)
          to label %_ZN11OpenImageIO4v3_117TextureSystemImpl9find_tileERKNS0_6TileIDEPNS0_23ImageCachePerThreadInfoEb.exit378 unwind label %bb.bn

_ZN11OpenImageIO4v3_117TextureSystemImpl9find_tileERKNS0_6TileIDEPNS0_23ImageCachePerThreadInfoEb.exit378: ; preds = %_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit17.thread.i
  br i1 %i.qt, label %_ZN11OpenImageIO4v3_117TextureSystemImpl9find_tileERKNS0_6TileIDEPNS0_23ImageCachePerThreadInfoEb.exit378.thread, label %bb.bc

bb.bc:                                            ; preds = %_ZN11OpenImageIO4v3_117TextureSystemImpl9find_tileERKNS0_6TileIDEPNS0_23ImageCachePerThreadInfoEb.exit378
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #26
  %i.qu = load ptr, ptr %i.jw, align 8, !tbaa !63
  invoke void @_ZNK11OpenImageIO4v3_114ImageCacheImpl8geterrorB5cxx11Eb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %20, ptr noundef nonnull align 64 dereferenceable(25240) %i.qu, i1 noundef zeroext true)
          to label %bb.bd unwind label %bb.bo

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  %i.qv = load ptr, ptr %20, align 8, !tbaa !193, !noalias !510 ; 2 uses
  %i.qw = load i64, ptr %i.ka, align 8, !tbaa !192, !noalias !510
  call void @llvm.experimental.noalias.scope.decl(metadata !511)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26, !noalias !511
  store i64 0, ptr %i.kd, align 8, !noalias !511
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.kc, align 8, !tbaa !256, !noalias !511
  store ptr %i.ke, ptr %13, align 8, !tbaa !257, !noalias !511
  store i64 500, ptr %i.kb, align 8, !tbaa !258, !noalias !511
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qv, i64 %i.qw
  %i.qy = invoke ptr @_ZN3fmt3v126detail13copy_noinlineIcPKcNS0_14basic_appenderIcEEEET1_T0_S8_S7_(ptr noundef %i.qv, ptr noundef %i.qx, ptr nonnull align 8 dereferenceable(32) %13)
          to label %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit unwind label %.loopexit ; 0 uses

_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit: ; preds = %bb.bd
  call void @llvm.experimental.noalias.scope.decl(metadata !512)
  %i.qz = load i64, ptr %i.kd, align 8, !tbaa !259, !noalias !513 ; 6 uses
  %i.ra = icmp ult i64 %i.qz, 4611686018427387903
  call void @llvm.assume(i1 %i.ra)
  %i.rb = load ptr, ptr %13, align 8, !tbaa !257, !noalias !513 ; 3 uses
  store ptr %i.kf, ptr %15, align 8, !tbaa !260, !alias.scope !513
  %i.rc = icmp eq ptr %i.rb, null
  %i.rd = icmp ne i64 %i.qz, 0
  %or.cond.i.i.i = and i1 %i.rd, %i.rc
  br i1 %or.cond.i.i.i, label %.noexc.i.i, label %bb.be

.noexc.i.i:                                       ; preds = %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.43) #28
          to label %.noexc.i unwind label %.loopexit.split-lp

.noexc.i:                                         ; preds = %.noexc.i.i
end_hunk_0
