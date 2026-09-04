Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/canon_600?download=true
inline.NumInlined: 7
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN6LibRaw17canon_600_auto_wbEv:bb.a

.preheader90.preheader:                           ; preds = %_ZN6LibRaw15canon_600_colorEPii.exit.1
  br i1 %.not84166, label %.loopexit87, label %.preheader

.preheader:                                       ; preds = %.preheader90.preheader
  %i.is = add nsw i32 %.sroa.0121.0161, 1024
  %i.it = mul nsw i32 %i.is, %i.ew
  %i.iu = ashr i32 %i.it, 10                      ; 2 uses
  store i32 %i.iu, ptr %i.ai, align 4, !tbaa !76
  %i.iv = add nsw i32 %.sroa.6.3156, 1024
  %i.iw = mul nsw i32 %i.iv, %i.fa
  %i.ix = ashr i32 %i.iw, 10                      ; 2 uses
  store i32 %i.ix, ptr %i.ap, align 4, !tbaa !76
  br label %.loopexit87

.loopexit87:                                      ; preds = %.preheader, %.preheader90.preheader
  %i.iy = phi i32 [ %i.ix, %.preheader ], [ %i.fc, %.preheader90.preheader ]
  %i.iz = phi i32 [ %i.iu, %.preheader ], [ %i.ey, %.preheader90.preheader ]
  br i1 %.not84.1, label %.loopexit87.1, label %.preheader.1

.preheader.1:                                     ; preds = %.loopexit87
  %i.ja = add nsw i32 %.sroa.11.0, 1024
  %i.jb = mul nsw i32 %i.ja, %i.fe
  %i.jc = ashr i32 %i.jb, 10                      ; 2 uses
  store i32 %i.jc, ptr %i.ip, align 4, !tbaa !76
  %i.jd = add nsw i32 %.sroa.15.3, 1024
  %i.je = mul nsw i32 %i.jd, %i.fi
  %i.jf = ashr i32 %i.je, 10                      ; 2 uses
  store i32 %i.jf, ptr %i.io, align 4, !tbaa !76
  br label %.loopexit87.1

.loopexit87.1:                                    ; preds = %.preheader.1, %.loopexit87
  %i.jg = phi i32 [ %i.jf, %.preheader.1 ], [ %i.fk, %.loopexit87 ]
  %i.jh = phi i32 [ %i.jc, %.preheader.1 ], [ %i.fg, %.loopexit87 ]
  %i.ji = zext nneg i32 %i.iq to i64              ; 2 uses
  %i.jj = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %i.ji ; 2 uses
  %i.jk = load <8 x i32>, ptr %i.jj, align 16, !tbaa !76
  %i.jl = insertelement <8 x i32> poison, i32 %i.ew, i64 0
  %i.jm = insertelement <8 x i32> %i.jl, i32 %i.iz, i64 1
  %i.jn = insertelement <8 x i32> %i.jm, i32 %i.fa, i64 2
  %i.jo = insertelement <8 x i32> %i.jn, i32 %i.iy, i64 3
  %i.jp = insertelement <8 x i32> %i.jo, i32 %i.fe, i64 4
  %i.jq = insertelement <8 x i32> %i.jp, i32 %i.jh, i64 5
  %i.jr = insertelement <8 x i32> %i.jq, i32 %i.fi, i64 6
  %i.js = insertelement <8 x i32> %i.jr, i32 %i.jg, i64 7
  %i.jt = add nsw <8 x i32> %i.jk, %i.js
  store <8 x i32> %i.jt, ptr %i.jj, align 16, !tbaa !76
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ji ; 2 uses
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !76
  %i.jw = add nsw i32 %i.jv, 1
  store i32 %i.jw, ptr %i.ju, align 4, !tbaa !76
  br label %.loopexit93

.loopexit93:                                      ; preds = %.preheader96, %.preheader94.1, %.preheader94.2, %.preheader94.3, %.preheader94.4, %.preheader94.5, %.preheader94.6, %.preheader94.7, %.preheader92.preheader, %.preheader92.1, %.preheader92.2, %.preheader92.3, %.loopexit87.1, %_ZN6LibRaw15canon_600_colorEPii.exit.1
  %i.jx = add nuw nsw i32 %.075106, 2             ; 2 uses
  %i.jy = icmp samesign ult i32 %i.jx, %i.w
  br i1 %i.jy, label %.preheader96, label %._crit_edge, !llvm.loop !86

._crit_edge:                                      ; preds = %.loopexit93
  %i.jz = add nuw nsw i32 %.076107, 4             ; 2 uses
  %i.ka = icmp slt i32 %i.jz, %i.s
  br i1 %i.ka, label %.preheader97, label %._crit_edge108.split.loopexit, !llvm.loop !87

._crit_edge108.split.loopexit:                    ; preds = %._crit_edge
  %.pre = load i32, ptr %i.a, align 8, !tbaa !76
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.pre136 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !76
  br label %._crit_edge108.split

._crit_edge108.split:                             ; preds = %._crit_edge108.split.loopexit, %.preheader97.lr.ph, %bb.d
  %i.kb = phi i32 [ %.pre136, %._crit_edge108.split.loopexit ], [ 0, %.preheader97.lr.ph ], [ 0, %bb.d ] ; 2 uses
  %i.kc = phi i32 [ %.pre, %._crit_edge108.split.loopexit ], [ 0, %.preheader97.lr.ph ], [ 0, %bb.d ] ; 2 uses
  %i.kd = or i32 %i.kb, %i.kc
  %.not = icmp eq i32 %i.kd, 0
  br i1 %.not, label %.loopexit, label %bb.y

bb.y:                                             ; preds = %._crit_edge108.split
  %i.ke = mul nsw i32 %i.kc, 200
  %i.kf = icmp slt i32 %i.ke, %i.kb               ; 8 uses
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.gep.val = load i32, ptr %.sroa.gep, align 16
  %.val = load i32, ptr %i.c, align 16
  %i.kg = select i1 %i.kf, i32 %.sroa.gep.val, i32 %.val
  %.sroa.sel.idx.sroa.sel.sroa.sel.v.sroa.sel.v = select i1 %i.kf, i64 48, i64 16
  %.sroa.sel.idx.sroa.sel.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sroa.sel.idx.sroa.sel.sroa.sel.v.sroa.sel.v
  %i.kh = load i32, ptr %.sroa.sel.idx.sroa.sel.sroa.sel.v.sroa.sel, align 16, !tbaa !76
  %i.ki = add nsw i32 %i.kh, %i.kg                ; 2 uses
  %.not83 = icmp eq i32 %i.ki, 0
  br i1 %.not83, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 153268
  %i.kk = sitofp reassoc nsz arcp contract afn i32 %i.ki to float
  %i.kl = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.kk
  store float %i.kl, ptr %i.kj, align 4, !tbaa !14
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  %.sroa.gep.sroa.gep133 = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  %.sroa.gep126.sroa.gep134 = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.sroa.gep.sroa.gep133.val = load i32, ptr %.sroa.gep.sroa.gep133, align 4
  %.sroa.gep126.sroa.gep134.val = load i32, ptr %.sroa.gep126.sroa.gep134, align 4
  %i.km = select i1 %i.kf, i32 %.sroa.gep.sroa.gep133.val, i32 %.sroa.gep126.sroa.gep134.val
  %.sroa.sel.idx.sroa.sel.sroa.sel135.sroa.sel.v.sroa.sel.v = select i1 %i.kf, i64 52, i64 20
  %.sroa.sel.idx.sroa.sel.sroa.sel135.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sroa.sel.idx.sroa.sel.sroa.sel135.sroa.sel.v.sroa.sel.v
  %i.kn = load i32, ptr %.sroa.sel.idx.sroa.sel.sroa.sel135.sroa.sel.v.sroa.sel, align 4, !tbaa !76
  %i.ko = add nsw i32 %i.kn, %i.km                ; 2 uses
  %.not83.1 = icmp eq i32 %i.ko, 0
  br i1 %.not83.1, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.kp = sitofp reassoc nsz arcp contract afn i32 %i.ko to float
  %i.kq = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.kp
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 153272
  store float %i.kq, ptr %i.kr, align 8, !tbaa !14
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.sroa.gep.sroa.gep130 = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.gep126.sroa.gep131 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.gep.sroa.gep130.val = load i32, ptr %.sroa.gep.sroa.gep130, align 8
  %.sroa.gep126.sroa.gep131.val = load i32, ptr %.sroa.gep126.sroa.gep131, align 8
  %i.ks = select i1 %i.kf, i32 %.sroa.gep.sroa.gep130.val, i32 %.sroa.gep126.sroa.gep131.val
  %.sroa.sel.idx.sroa.sel.sroa.sel132.sroa.sel.v.sroa.sel.v = select i1 %i.kf, i64 56, i64 24
  %.sroa.sel.idx.sroa.sel.sroa.sel132.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sroa.sel.idx.sroa.sel.sroa.sel132.sroa.sel.v.sroa.sel.v
  %i.kt = load i32, ptr %.sroa.sel.idx.sroa.sel.sroa.sel132.sroa.sel.v.sroa.sel, align 8, !tbaa !76
  %i.ku = add nsw i32 %i.kt, %i.ks                ; 2 uses
  %.not83.2 = icmp eq i32 %i.ku, 0
  br i1 %.not83.2, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.kv = sitofp reassoc nsz arcp contract afn i32 %i.ku to float
  %i.kw = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.kv
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 153276
  store float %i.kw, ptr %i.kx, align 4, !tbaa !14
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.sroa.gep.sroa.gep127 = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %.sroa.gep126.sroa.gep128 = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %.sroa.gep.sroa.gep127.val = load i32, ptr %.sroa.gep.sroa.gep127, align 4
  %.sroa.gep126.sroa.gep128.val = load i32, ptr %.sroa.gep126.sroa.gep128, align 4
  %i.ky = select i1 %i.kf, i32 %.sroa.gep.sroa.gep127.val, i32 %.sroa.gep126.sroa.gep128.val
  %.sroa.sel.idx.sroa.sel.sroa.sel129.sroa.sel.v.sroa.sel.v = select i1 %i.kf, i64 60, i64 28
  %.sroa.sel.idx.sroa.sel.sroa.sel129.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sroa.sel.idx.sroa.sel.sroa.sel129.sroa.sel.v.sroa.sel.v
  %i.kz = load i32, ptr %.sroa.sel.idx.sroa.sel.sroa.sel129.sroa.sel.v.sroa.sel, align 4, !tbaa !76
  %i.la = add nsw i32 %i.kz, %i.ky                ; 2 uses
  %.not83.3 = icmp eq i32 %i.la, 0
  br i1 %.not83.3, label %.loopexit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.lb = sitofp reassoc nsz arcp contract afn i32 %i.la to float
  %i.lc = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.lb
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 153280
  store float %i.lc, ptr %i.ld, align 8, !tbaa !14
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ae, %bb.af, %._crit_edge108.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN6LibRaw15canon_600_coeffEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(768512) initializes((381660, 381664)) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 153272
  %i.b = load float, ptr %i.a, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 153276
  %i.d = load float, ptr %i.c, align 4, !tbaa !14 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 153280
  %i.f = load float, ptr %i.e, align 8, !tbaa !14
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 153512
  %i.h = load float, ptr %i.g, align 8, !tbaa !75
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 381660
  store i32 0, ptr %i.i, align 4, !tbaa !84
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 540
  %i.k = load i32, ptr %i.j, align 4, !tbaa !85   ; 2 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.preheader.preheader, label %.split32

.preheader.preheader:                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 153380
  %i.n = fcmp reassoc nsz arcp contract afn une float %i.h, 0.000000e+00
  %i.o = fdiv reassoc nsz arcp contract afn float %i.b, %i.d ; 3 uses
  %i.p = fcmp reassoc nsz arcp contract afn ugt float %i.o, 2.000000e+00
  %i.q = fpext reassoc nsz arcp contract afn float %i.o to double ; 2 uses
  %i.r = fcmp reassoc nsz arcp contract afn ule double %i.q, 1.280000e+00
  %or.cond.not29 = or i1 %i.p, %i.r
  %i.s = fcmp reassoc nsz arcp contract afn ogt float %i.o, 1.000000e+00
  %i.t = fcmp reassoc nsz arcp contract afn ole double %i.q, 1.280000e+00
  %or.cond22.not27 = and i1 %i.s, %i.t
  %i.u = fdiv reassoc nsz arcp contract afn float %i.f, %i.d ; 2 uses
  %i.v = fpext reassoc nsz arcp contract afn float %i.u to double
  %i.w = fcmp reassoc nsz arcp contract afn olt double %i.v, 8.789000e-01 ; 2 uses
  %or.cond24 = select i1 %or.cond22.not27, i1 %i.w, i1 false
  %.019 = zext i1 %or.cond24 to i32               ; 2 uses
  %i.x = fcmp reassoc nsz arcp contract afn ugt float %i.u, 2.000000e+00
  %spec.select = select i1 %i.x, i32 %.019, i32 4
  %.019.mux = select i1 %i.w, i32 3, i32 %spec.select
  %.1 = select i1 %or.cond.not29, i32 %.019, i32 %.019.mux
  %1 = zext nneg i32 %.1 to i64
  %i.y = select i1 %i.n, i64 5, i64 %1
  %i.z = getelementptr inbounds nuw [24 x i8], ptr @_ZZN6LibRaw15canon_600_coeffEvE5table, i64 %i.y ; 3 uses
  %i.aa = tail call i32 @llvm.umin.i32(i32 %i.k, i32 4)
  %wide.trip.count = zext nneg i32 %i.aa to i64   ; 3 uses
  %trip.count.minus.1 = add nsw i64 %wide.trip.count, -1
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %trip.count.minus.1, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.ab = icmp uge <4 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3> ; 2 uses
  %wide.masked.load = tail call <4 x i16> @llvm.masked.load.v4i16.p0(ptr nonnull align 8 %i.z, <4 x i1> %i.ab, <4 x i16> poison), !tbaa !12
  %i.ac = sitofp reassoc nsz arcp contract afn <4 x i16> %wide.masked.load to <4 x float>
  %i.ad = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.ac, splat (float f0x3A800000)
  tail call void @llvm.masked.store.v4f32.p0(<4 x float> %i.ad, ptr align 4 %i.m, <4 x i1> %i.ab), !tbaa !14
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 153396
  %trip.count.minus.139 = add nsw i64 %wide.trip.count, -1
  %broadcast.splatinsert40 = insertelement <4 x i64> poison, i64 %trip.count.minus.139, i64 0
  %broadcast.splat41 = shufflevector <4 x i64> %broadcast.splatinsert40, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.af = icmp uge <4 x i64> %broadcast.splat41, <i64 0, i64 1, i64 2, i64 3> ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %wide.masked.load43 = tail call <4 x i16> @llvm.masked.load.v4i16.p0(ptr nonnull align 8 %i.ag, <4 x i1> %i.af, <4 x i16> poison), !tbaa !12
  %i.ah = sitofp reassoc nsz arcp contract afn <4 x i16> %wide.masked.load43 to <4 x float>
  %i.ai = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.ah, splat (float f0x3A800000)
  tail call void @llvm.masked.store.v4f32.p0(<4 x float> %i.ai, ptr align 4 %i.ae, <4 x i1> %i.af), !tbaa !14
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 153412
  %trip.count.minus.146 = add nsw i64 %wide.trip.count, -1
  %broadcast.splatinsert47 = insertelement <4 x i64> poison, i64 %trip.count.minus.146, i64 0
  %broadcast.splat48 = shufflevector <4 x i64> %broadcast.splatinsert47, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.ak = icmp uge <4 x i64> %broadcast.splat48, <i64 0, i64 1, i64 2, i64 3> ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %wide.masked.load50 = tail call <4 x i16> @llvm.masked.load.v4i16.p0(ptr nonnull align 8 %i.al, <4 x i1> %i.ak, <4 x i16> poison), !tbaa !12
  %i.am = sitofp reassoc nsz arcp contract afn <4 x i16> %wide.masked.load50 to <4 x float>
  %i.an = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.am, splat (float f0x3A800000)
  tail call void @llvm.masked.store.v4f32.p0(<4 x float> %i.an, ptr align 4 %i.aj, <4 x i1> %i.ak), !tbaa !14
  br label %.split32

.split32:                                         ; preds = %.preheader.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw18canon_600_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = alloca [1120 x i8], align 16             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.c = load i16, ptr %i.b, align 4, !tbaa !77
  %.not = icmp eq i16 %i.c, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 381592
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 193784
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 18
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.037 = phi i32 [ 0, %.lr.ph ], [ %spec.store.select, %bb.f ] ; 2 uses
  %.03136 = phi i32 [ 0, %.lr.ph ], [ %i.cw, %bb.f ]
  call void @_ZN6LibRaw11checkCancelEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !92   ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !94
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = call noundef i32 %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 1120), !call_target !104
  %i.l = icmp slt i32 %i.k, 1120
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @_ZN6LibRaw6derrorEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !105
  %i.n = load i16, ptr %i.f, align 2, !tbaa !106
  %i.o = zext i16 %i.n to i32
  %i.p = mul nsw i32 %.037, %i.o
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds [2 x i8], ptr %i.m, i64 %i.q
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.e
  %.03235 = phi ptr [ %i.r, %bb.d ], [ %i.cq, %bb.e ] ; 9 uses
  %.033.idx34 = phi i64 [ 0, %bb.d ], [ %.033.add, %bb.e ] ; 3 uses
  %.033.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.033.idx34 ; 10 uses
  %i.s = load i8, ptr %.033.ptr, align 2, !tbaa !107
  %i.t = zext i8 %i.s to i16
  %i.u = shl nuw nsw i16 %i.t, 2
  %i.v = getelementptr inbounds nuw i8, ptr %.033.ptr, i64 1 ; 4 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !107
  %i.x = lshr i8 %i.w, 6
  %i.y = zext nneg i8 %i.x to i16
  %i.z = or disjoint i16 %i.u, %i.y
  store i16 %i.z, ptr %.03235, align 2, !tbaa !12
  %i.aa = getelementptr inbounds nuw i8, ptr %.033.ptr, i64 2
  %i.ab = load i8, ptr %i.aa, align 2, !tbaa !107
  %i.ac = zext i8 %i.ab to i16
  %i.ad = shl nuw nsw i16 %i.ac, 2
  %i.ae = load i8, ptr %i.v, align 1, !tbaa !107
  %i.af = lshr i8 %i.ae, 4
  %i.ag = and i8 %i.af, 3
  %i.ah = zext nneg i8 %i.ag to i16
  %i.ai = or disjoint i16 %i.ad, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %.03235, i64 2
  store i16 %i.ai, ptr %i.aj, align 2, !tbaa !12
  %i.ak = getelementptr inbounds nuw i8, ptr %.033.ptr, i64 3
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !107
  %i.am = zext i8 %i.al to i16
  %i.an = shl nuw nsw i16 %i.am, 2
  %i.ao = load i8, ptr %i.v, align 1, !tbaa !107
  %i.ap = lshr i8 %i.ao, 2
  %i.aq = and i8 %i.ap, 3
  %i.ar = zext nneg i8 %i.aq to i16
  %i.as = or disjoint i16 %i.an, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %.03235, i64 4
  store i16 %i.as, ptr %i.at, align 2, !tbaa !12
  %i.au = getelementptr inbounds nuw i8, ptr %.033.ptr, i64 4
  %i.av = load i8, ptr %i.au, align 2, !tbaa !107
  %i.aw = zext i8 %i.av to i16
  %i.ax = shl nuw nsw i16 %i.aw, 2
  %i.ay = load i8, ptr %i.v, align 1, !tbaa !107
  %i.az = and i8 %i.ay, 3
  %i.ba = zext nneg i8 %i.az to i16
  %i.bb = or disjoint i16 %i.ax, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %.03235, i64 6
  store i16 %i.bb, ptr %i.bc, align 2, !tbaa !12
  %i.bd = getelementptr inbounds nuw i8, ptr %.033.ptr, i64 5
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !107
  %i.bf = zext i8 %i.be to i16
  %i.bg = shl nuw nsw i16 %i.bf, 2
  %i.bh = getelementptr inbounds nuw i8, ptr %.033.ptr, i64 9 ; 4 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !107
  %i.bj = and i8 %i.bi, 3
  %i.bk = zext nneg i8 %i.bj to i16
  %i.bl = or disjoint i16 %i.bg, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %.03235, i64 8
  store i16 %i.bl, ptr %i.bm, align 2, !tbaa !12
  %i.bn = getelementptr inbounds nuw i8, ptr %.033.ptr, i64 6
  %i.bo = load i8, ptr %i.bn, align 2, !tbaa !107
  %i.bp = zext i8 %i.bo to i16
  %i.bq = shl nuw nsw i16 %i.bp, 2
  %i.br = load i8, ptr %i.bh, align 1, !tbaa !107
  %i.bs = lshr i8 %i.br, 2
  %i.bt = and i8 %i.bs, 3
  %i.bu = zext nneg i8 %i.bt to i16
  %i.bv = or disjoint i16 %i.bq, %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %.03235, i64 10
  store i16 %i.bv, ptr %i.bw, align 2, !tbaa !12
  %i.bx = getelementptr inbounds nuw i8, ptr %.033.ptr, i64 7
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !107
  %i.bz = zext i8 %i.by to i16
  %i.ca = shl nuw nsw i16 %i.bz, 2
  %i.cb = load i8, ptr %i.bh, align 1, !tbaa !107
  %i.cc = lshr i8 %i.cb, 4
  %i.cd = and i8 %i.cc, 3
  %i.ce = zext nneg i8 %i.cd to i16
  %i.cf = or disjoint i16 %i.ca, %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %.03235, i64 12
  store i16 %i.cf, ptr %i.cg, align 2, !tbaa !12
  %i.ch = getelementptr inbounds nuw i8, ptr %.033.ptr, i64 8
  %i.ci = load i8, ptr %i.ch, align 2, !tbaa !107
  %i.cj = zext i8 %i.ci to i16
  %i.ck = shl nuw nsw i16 %i.cj, 2
  %i.cl = load i8, ptr %i.bh, align 1, !tbaa !107
  %i.cm = lshr i8 %i.cl, 6
  %i.cn = zext nneg i8 %i.cm to i16
  %i.co = or disjoint i16 %i.ck, %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %.03235, i64 14
  store i16 %i.co, ptr %i.cp, align 2, !tbaa !12
  %.033.add = add nuw nsw i64 %.033.idx34, 10
  %i.cq = getelementptr inbounds nuw i8, ptr %.03235, i64 16
  %i.cr = icmp samesign ult i64 %.033.idx34, 1110
  br i1 %i.cr, label %bb.e, label %bb.f, !llvm.loop !90

bb.f:                                             ; preds = %bb.e
  %i.cs = add nsw i32 %.037, 2                    ; 2 uses
  %i.ct = load i16, ptr %i.b, align 4, !tbaa !77
  %i.cu = zext i16 %i.ct to i32                   ; 2 uses
  %i.cv = icmp sgt i32 %i.cs, %i.cu
  %spec.store.select = select i1 %i.cv, i32 1, i32 %i.cs
  %i.cw = add nuw nsw i32 %.03136, 1              ; 2 uses
  %i.cx = icmp samesign ult i32 %i.cw, %i.cu
  br i1 %i.cx, label %bb.b, label %._crit_edge, !llvm.loop !91

._crit_edge:                                      ; preds = %bb.f, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

declare void @_ZN6LibRaw11checkCancelEv(ptr noundef nonnull align 8 dereferenceable(768512)) local_unnamed_addr #8

declare void @_ZN6LibRaw6derrorEv(ptr noundef nonnull align 8 dereferenceable(768512)) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw17canon_600_correctEv(ptr noundef nonnull align 8 dereferenceable(768512) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.c = load i16, ptr %i.b, align 4, !tbaa !77
  %.not = icmp eq i16 %i.c, 0
  br i1 %.not, label %._crit_edge21, label %.lr.ph20

.lr.ph20:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 381668
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 153088
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph20, %._crit_edge
  %.01618 = phi i32 [ 0, %.lr.ph20 ], [ %i.aw, %._crit_edge ] ; 4 uses
  tail call void @_ZN6LibRaw11checkCancelEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.i = load i16, ptr %i.d, align 2, !tbaa !78
  %.not22 = icmp eq i16 %i.i, 0
  br i1 %.not22, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !79
  %i.k = load i32, ptr %i.g, align 8, !tbaa !82
  %i.l = shl nuw nsw i32 %.01618, 1
  %i.m = and i32 %i.l, 14
  %i.n = load i32, ptr %i.h, align 8, !tbaa !110
  %i.o = and i32 %.01618, 3
  %i.p = zext nneg i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [4 x i8], ptr @_ZZN6LibRaw17canon_600_correctEvE3mul, i64 %i.p
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.017 = phi i32 [ 0, %.lr.ph ], [ %i.as, %bb.c ] ; 3 uses
  %i.r = load i16, ptr %i.e, align 4, !tbaa !80
  %i.s = zext i16 %i.r to i32                     ; 2 uses
  %i.t = lshr i32 %.01618, %i.s
  %i.u = load i16, ptr %i.f, align 2, !tbaa !81
  %i.v = zext i16 %i.u to i32
  %i.w = mul nuw nsw i32 %i.t, %i.v
  %i.x = lshr i32 %.017, %i.s
  %i.y = add nuw nsw i32 %i.w, %i.x
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.z
  %i.ab = and i32 %.017, 1                        ; 2 uses
  %i.ac = or disjoint i32 %i.ab, %i.m
  %i.ad = shl nuw nsw i32 %i.ac, 1
  %i.ae = lshr i32 %i.k, %i.ad
  %i.af = and i32 %i.ae, 3
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.ag ; 2 uses
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !12
  %i.aj = zext i16 %i.ai to i32
  %i.ak = sub i32 %i.aj, %i.n
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %i.ak, i32 0)
  %i.al = zext nneg i32 %i.ab to i64
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.al
  %i.an = load i16, ptr %i.am, align 2, !tbaa !12
  %i.ao = sext i16 %i.an to i32
  %i.ap = mul nsw i32 %spec.store.select, %i.ao
  %i.aq = lshr i32 %i.ap, 9
  %i.ar = trunc i32 %i.aq to i16
  store i16 %i.ar, ptr %i.ah, align 2, !tbaa !12
  %i.as = add nuw nsw i32 %.017, 1                ; 2 uses
  %i.at = load i16, ptr %i.d, align 2, !tbaa !78
  %i.au = zext i16 %i.at to i32
  %i.av = icmp samesign ult i32 %i.as, %i.au
  br i1 %i.av, label %bb.c, label %._crit_edge, !llvm.loop !108

._crit_edge:                                      ; preds = %bb.c, %bb.b
  %i.aw = add nuw nsw i32 %.01618, 1              ; 2 uses
  %i.ax = load i16, ptr %i.b, align 4, !tbaa !77
  %i.ay = zext i16 %i.ax to i32
  %i.az = icmp samesign ult i32 %i.aw, %i.ay
  br i1 %i.az, label %bb.b, label %._crit_edge21, !llvm.loop !109

._crit_edge21:                                    ; preds = %._crit_edge, %bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 153268
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 153272
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 153276
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 153280
  store <4 x float> <float f0x3B0F6557, float f0x3B21D9FF, float f0x3B05FB37, float f0x3ACCA05E>, ptr %i.ba, align 4, !tbaa !14
  tail call void @_ZN6LibRaw17canon_600_auto_wbEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.be = load float, ptr %i.bb, align 8, !tbaa !14
  %i.bf = load float, ptr %i.bc, align 4, !tbaa !14 ; 2 uses
  %i.bg = load float, ptr %i.bd, align 8, !tbaa !14
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 153512
  %i.bi = load float, ptr %i.bh, align 8, !tbaa !75
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 381660
  store i32 0, ptr %i.bj, align 4, !tbaa !84
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 540
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !85 ; 2 uses
  %i.bm = icmp sgt i32 %i.bl, 0
  br i1 %i.bm, label %.preheader.preheader.i, label %_ZN6LibRaw15canon_600_coeffEv.exit

.preheader.preheader.i:                           ; preds = %._crit_edge21
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 153380
  %i.bo = fcmp reassoc nsz arcp contract afn une float %i.bi, 0.000000e+00
  %i.bp = fdiv reassoc nsz arcp contract afn float %i.be, %i.bf ; 3 uses
  %i.bq = fcmp reassoc nsz arcp contract afn ugt float %i.bp, 2.000000e+00
  %i.br = fpext reassoc nsz arcp contract afn float %i.bp to double ; 2 uses
  %i.bs = fcmp reassoc nsz arcp contract afn ule double %i.br, 1.280000e+00
  %or.cond.not29.i = or i1 %i.bq, %i.bs
  %i.bt = fcmp reassoc nsz arcp contract afn ogt float %i.bp, 1.000000e+00
  %i.bu = fcmp reassoc nsz arcp contract afn ole double %i.br, 1.280000e+00
  %or.cond22.not27.i = and i1 %i.bt, %i.bu
  %i.bv = fdiv reassoc nsz arcp contract afn float %i.bg, %i.bf ; 2 uses
  %i.bw = fpext reassoc nsz arcp contract afn float %i.bv to double
  %i.bx = fcmp reassoc nsz arcp contract afn olt double %i.bw, 8.789000e-01 ; 2 uses
  %or.cond24.i = select i1 %or.cond22.not27.i, i1 %i.bx, i1 false
  %.019.i = zext i1 %or.cond24.i to i32           ; 2 uses
  %i.by = fcmp reassoc nsz arcp contract afn ugt float %i.bv, 2.000000e+00
  %spec.select.i = select i1 %i.by, i32 %.019.i, i32 4
  %.019.mux.i = select i1 %i.bx, i32 3, i32 %spec.select.i
  %.1.i = select i1 %or.cond.not29.i, i32 %.019.i, i32 %.019.mux.i
  %1 = zext nneg i32 %.1.i to i64
  %i.bz = select i1 %i.bo, i64 5, i64 %1
  %i.ca = getelementptr inbounds nuw [24 x i8], ptr @_ZZN6LibRaw15canon_600_coeffEvE5table, i64 %i.bz ; 3 uses
  %i.cb = tail call i32 @llvm.umin.i32(i32 %i.bl, i32 4)
  %wide.trip.count.i = zext nneg i32 %i.cb to i64 ; 3 uses
  %trip.count.minus.1 = add nsw i64 %wide.trip.count.i, -1
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %trip.count.minus.1, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.cc = icmp uge <4 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3> ; 2 uses
  %wide.masked.load = tail call <4 x i16> @llvm.masked.load.v4i16.p0(ptr nonnull align 8 %i.ca, <4 x i1> %i.cc, <4 x i16> poison), !tbaa !12
  %i.cd = sitofp reassoc nsz arcp contract afn <4 x i16> %wide.masked.load to <4 x float>
  %i.ce = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.cd, splat (float f0x3A800000)
  tail call void @llvm.masked.store.v4f32.p0(<4 x float> %i.ce, ptr align 4 %i.bn, <4 x i1> %i.cc), !tbaa !14
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 153396
  %trip.count.minus.125 = add nsw i64 %wide.trip.count.i, -1
  %broadcast.splatinsert26 = insertelement <4 x i64> poison, i64 %trip.count.minus.125, i64 0
  %broadcast.splat27 = shufflevector <4 x i64> %broadcast.splatinsert26, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.cg = icmp uge <4 x i64> %broadcast.splat27, <i64 0, i64 1, i64 2, i64 3> ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %wide.masked.load29 = tail call <4 x i16> @llvm.masked.load.v4i16.p0(ptr nonnull align 8 %i.ch, <4 x i1> %i.cg, <4 x i16> poison), !tbaa !12
  %i.ci = sitofp reassoc nsz arcp contract afn <4 x i16> %wide.masked.load29 to <4 x float>
  %i.cj = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.ci, splat (float f0x3A800000)
  tail call void @llvm.masked.store.v4f32.p0(<4 x float> %i.cj, ptr align 4 %i.cf, <4 x i1> %i.cg), !tbaa !14
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 153412
  %trip.count.minus.132 = add nsw i64 %wide.trip.count.i, -1
  %broadcast.splatinsert33 = insertelement <4 x i64> poison, i64 %trip.count.minus.132, i64 0
  %broadcast.splat34 = shufflevector <4 x i64> %broadcast.splatinsert33, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.cl = icmp uge <4 x i64> %broadcast.splat34, <i64 0, i64 1, i64 2, i64 3> ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %wide.masked.load36 = tail call <4 x i16> @llvm.masked.load.v4i16.p0(ptr nonnull align 8 %i.cm, <4 x i1> %i.cl, <4 x i16> poison), !tbaa !12
  %i.cn = sitofp reassoc nsz arcp contract afn <4 x i16> %wide.masked.load36 to <4 x float>
  %i.co = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.cn, splat (float f0x3A800000)
  tail call void @llvm.masked.store.v4f32.p0(<4 x float> %i.co, ptr align 4 %i.ck, <4 x i1> %i.cl), !tbaa !14
  br label %_ZN6LibRaw15canon_600_coeffEv.exit

_ZN6LibRaw15canon_600_coeffEv.exit:               ; preds = %.preheader.preheader.i, %._crit_edge21
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 153088 ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !110
  %i.cr = sub i32 1023, %i.cq
  %i.cs = mul i32 %i.cr, 1109
  %i.ct = lshr i32 %i.cs, 9
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 153096
  store i32 %i.ct, ptr %i.cu, align 8, !tbaa !111
  store i32 0, ptr %i.cp, align 8, !tbaa !110
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <4 x i16> @llvm.masked.load.v4i16.p0(ptr captures(none), <4 x i1>, <4 x i16>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v4f32.p0(<4 x float>, ptr captures(none), <4 x i1>) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"short", !7, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"float", !7, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"any pointer", !7, i64 0}
!16 = !{!"p1 short", !15, i64 0}
!17 = !{!"double", !7, i64 0}
!18 = !{!"_ZTS20libraw_image_sizes_t", !11, i64 0, !11, i64 2, !11, i64 4, !11, i64 6, !11, i64 8, !11, i64 10, !11, i64 12, !11, i64 14, !8, i64 16, !17, i64 24, !8, i64 32, !7, i64 36, !11, i64 164, !7, i64 166}
!19 = !{!"p1 omnipotent char", !15, i64 0}
!20 = !{!"_ZTS16libraw_iparams_t", !7, i64 0, !7, i64 4, !7, i64 68, !7, i64 132, !7, i64 196, !7, i64 260, !8, i64 324, !8, i64 328, !8, i64 332, !8, i64 336, !8, i64 340, !8, i64 344, !7, i64 348, !7, i64 384, !7, i64 420, !8, i64 428, !19, i64 432}
!21 = !{!"_ZTS18libraw_nikonlens_t", !13, i64 0, !7, i64 4, !7, i64 5, !7, i64 6, !7, i64 7}
!22 = !{!"_ZTS16libraw_dnglens_t", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12}
!23 = !{!"long long", !7, i64 0}
!24 = !{!"_ZTS24libraw_makernotes_lens_t", !23, i64 0, !7, i64 8, !11, i64 136, !11, i64 138, !23, i64 144, !11, i64 152, !11, i64 154, !7, i64 156, !11, i64 220, !7, i64 222, !7, i64 238, !13, i64 256, !13, i64 260, !13, i64 264, !13, i64 268, !13, i64 272, !13, i64 276, !13, i64 280, !13, i64 284, !13, i64 288, !13, i64 292, !13, i64 296, !13, i64 300, !13, i64 304, !13, i64 308, !13, i64 312, !23, i64 320, !7, i64 328, !23, i64 456, !7, i64 464, !23, i64 592, !7, i64 600, !11, i64 728, !13, i64 732}
!25 = !{!"_ZTS17libraw_lensinfo_t", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !7, i64 20, !7, i64 148, !7, i64 276, !7, i64 404, !11, i64 532, !21, i64 536, !22, i64 544, !24, i64 560}
!26 = !{!"_ZTS13libraw_area_t", !11, i64 0, !11, i64 2, !11, i64 4, !11, i64 6}
!27 = !{!"_ZTS25libraw_canon_makernotes_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !7, i64 16, !8, i64 32, !7, i64 36, !11, i64 52, !11, i64 54, !7, i64 56, !11, i64 58, !11, i64 60, !11, i64 62, !11, i64 64, !11, i64 66, !11, i64 68, !11, i64 70, !11, i64 72, !11, i64 74, !11, i64 76, !11, i64 78, !11, i64 80, !11, i64 82, !8, i64 84, !13, i64 88, !11, i64 92, !11, i64 94, !11, i64 96, !11, i64 98, !8, i64 100, !11, i64 104, !8, i64 108, !8, i64 112, !11, i64 116, !8, i64 120, !26, i64 124, !26, i64 132, !26, i64 140, !26, i64 148, !26, i64 156, !7, i64 164}
!28 = !{!"_ZTS30libraw_sensor_highspeed_crop_t", !11, i64 0, !11, i64 2, !11, i64 4, !11, i64 6}
!29 = !{!"_ZTS25libraw_nikon_makernotes_t", !17, i64 0, !11, i64 8, !11, i64 10, !7, i64 12, !7, i64 19, !7, i64 20, !7, i64 21, !7, i64 34, !7, i64 54, !7, i64 58, !7, i64 62, !7, i64 66, !7, i64 67, !7, i64 68, !7, i64 69, !7, i64 70, !7, i64 71, !7, i64 73, !7, i64 74, !7, i64 75, !7, i64 76, !7, i64 77, !7, i64 78, !7, i64 82, !7, i64 86, !11, i64 88, !8, i64 92, !8, i64 96, !8, i64 100, !8, i64 104, !7, i64 112, !7, i64 144, !7, i64 145, !7, i64 146, !8, i64 148, !8, i64 152, !8, i64 156, !7, i64 160, !7, i64 162, !11, i64 170, !28, i64 172, !11, i64 180, !11, i64 182, !11, i64 184, !8, i64 188, !7, i64 192, !7, i64 212, !8, i64 232, !7, i64 236, !8, i64 248, !19, i64 256, !11, i64 264, !11, i64 266, !7, i64 268, !11, i64 270, !17, i64 272, !17, i64 280, !17, i64 288}
!30 = !{!"_ZTS30libraw_hasselblad_makernotes_t", !8, i64 0, !17, i64 8, !7, i64 16, !7, i64 24, !7, i64 88, !8, i64 152, !8, i64 156, !8, i64 160, !8, i64 164, !7, i64 168, !7, i64 200, !8, i64 264, !7, i64 268, !7, i64 276, !7, i64 288}
!31 = !{!"_ZTS18libraw_fuji_info_t", !13, i64 0, !11, i64 4, !11, i64 6, !11, i64 8, !11, i64 10, !11, i64 12, !11, i64 14, !11, i64 16, !11, i64 18, !7, i64 20, !7, i64 53, !13, i64 88, !11, i64 92, !11, i64 94, !7, i64 96, !11, i64 100, !8, i64 104, !8, i64 108, !11, i64 112, !7, i64 114, !11, i64 120, !11, i64 122, !11, i64 124, !11, i64 126, !11, i64 128, !8, i64 132, !11, i64 136, !7, i64 138, !7, i64 151, !7, i64 156, !8, i64 164, !11, i64 168, !8, i64 172, !11, i64 176, !7, i64 178, !7, i64 196, !8, i64 324, !8, i64 328, !8, i64 332, !7, i64 336, !8, i64 344}
!32 = !{!"_ZTS27libraw_olympus_makernotes_t", !7, i64 0, !11, i64 6, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !7, i64 64, !7, i64 72, !11, i64 82, !7, i64 84, !11, i64 88, !11, i64 90, !7, i64 92, !7, i64 352, !11, i64 392, !7, i64 394, !7, i64 396, !7, i64 404, !11, i64 416, !11, i64 418, !11, i64 420, !11, i64 422, !17, i64 424, !7, i64 432, !7, i64 440, !7, i64 448, !8, i64 452, !11, i64 456, !11, i64 458}
!33 = !{!"_ZTS18libraw_sony_info_t", !11, i64 0, !7, i64 2, !7, i64 3, !8, i64 4, !7, i64 8, !8, i64 12, !7, i64 16, !7, i64 17, !11, i64 18, !7, i64 20, !7, i64 24, !7, i64 25, !11, i64 26, !7, i64 28, !7, i64 38, !7, i64 39, !7, i64 40, !11, i64 48, !7, i64 50, !7, i64 51, !7, i64 52, !11, i64 54, !8, i64 56, !11, i64 60, !7, i64 62, !11, i64 66, !11, i64 68, !11, i64 70, !11, i64 72, !11, i64 74, !11, i64 76, !11, i64 78, !8, i64 80, !13, i64 84, !11, i64 88, !8, i64 92, !8, i64 96, !11, i64 100, !7, i64 102, !8, i64 124, !11, i64 128, !8, i64 132, !7, i64 136, !7, i64 137, !11, i64 138, !11, i64 140, !11, i64 142, !11, i64 144, !11, i64 146, !11, i64 148, !11, i64 150, !11, i64 152, !11, i64 154, !8, i64 156, !11, i64 160, !7, i64 162, !13, i64 180}
!34 = !{!"_ZTS25libraw_kodak_makernotes_t", !11, i64 0, !11, i64 2, !11, i64 4, !11, i64 6, !11, i64 8, !11, i64 10, !7, i64 12, !7, i64 48, !7, i64 84, !7, i64 120, !7, i64 156, !7, i64 192, !11, i64 228, !11, i64 230, !11, i64 232, !11, i64 234, !13, i64 236, !13, i64 240}
!35 = !{!"_ZTS29libraw_panasonic_makernotes_t", !11, i64 0, !11, i64 2, !7, i64 4, !8, i64 36, !13, i64 40, !7, i64 44, !11, i64 56, !11, i64 58, !8, i64 60, !8, i64 64}
!36 = !{!"_ZTS26libraw_pentax_makernotes_t", !7, i64 0, !7, i64 4, !7, i64 8, !11, i64 12, !8, i64 16, !8, i64 20, !11, i64 24, !7, i64 26, !11, i64 30, !7, i64 32, !7, i64 33, !11, i64 34}
!37 = !{!"_ZTS22libraw_p1_makernotes_t", !7, i64 0, !7, i64 64, !7, i64 128, !7, i64 384}
!38 = !{!"_ZTS25libraw_ricoh_makernotes_t", !11, i64 0, !7, i64 4, !7, i64 12, !11, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !11, i64 40, !11, i64 42, !11, i64 44, !11, i64 46, !11, i64 48, !11, i64 50, !17, i64 56, !17, i64 64}
!39 = !{!"_ZTS27libraw_samsung_makernotes_t", !7, i64 0, !7, i64 16, !7, i64 32, !7, i64 40, !17, i64 88, !8, i64 96, !7, i64 100}
!40 = !{!"_ZTS24libraw_metadata_common_t", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !13, i64 24, !13, i64 28, !13, i64 32, !13, i64 36, !13, i64 40, !13, i64 44, !13, i64 48, !13, i64 52, !13, i64 56, !13, i64 60, !11, i64 64, !7, i64 66, !13, i64 196, !7, i64 200, !8, i64 296}
!41 = !{!"_ZTS19libraw_makernotes_t", !27, i64 0, !29, i64 168, !30, i64 464, !31, i64 848, !32, i64 1200, !33, i64 1664, !34, i64 1848, !35, i64 2092, !36, i64 2160, !37, i64 2196, !38, i64 2648, !39, i64 2720, !40, i64 2856}
!42 = !{!"_ZTS21libraw_shootinginfo_t", !11, i64 0, !11, i64 2, !11, i64 4, !11, i64 6, !11, i64 8, !11, i64 10, !11, i64 12, !7, i64 14, !7, i64 78}
!43 = !{!"_ZTS22libraw_output_params_t", !7, i64 0, !7, i64 16, !7, i64 32, !7, i64 64, !7, i64 112, !13, i64 128, !13, i64 132, !8, i64 136, !8, i64 140, !8, i64 144, !8, i64 148, !8, i64 152, !8, i64 156, !8, i64 160, !19, i64 168, !19, i64 176, !19, i64 184, !19, i64 192, !8, i64 200, !8, i64 204, !8, i64 208, !8, i64 212, !8, i64 216, !8, i64 220, !7, i64 224, !8, i64 240, !8, i64 244, !13, i64 248, !13, i64 252, !8, i64 256, !8, i64 260, !8, i64 264, !8, i64 268, !8, i64 272, !8, i64 276, !8, i64 280, !8, i64 284, !13, i64 288, !13, i64 292, !8, i64 296, !8, i64 300}
!44 = !{!"any p2 pointer", !15, i64 0}
!45 = !{!"p2 omnipotent char", !44, i64 0}
!46 = !{!"_ZTS26libraw_raw_unpack_params_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !13, i64 28, !7, i64 32, !45, i64 40}
!47 = !{!"_ZTS5ph1_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !13, i64 32}
!48 = !{!"_ZTS19libraw_dng_levels_t", !8, i64 0, !7, i64 4, !8, i64 16420, !7, i64 16424, !13, i64 32840, !7, i64 32844, !7, i64 32860, !7, i64 32868, !8, i64 32884, !7, i64 32888, !7, i64 32904, !13, i64 32920, !13, i64 32924, !7, i64 32928}
!49 = !{!"_ZTS18libraw_colordata_t", !7, i64 0, !7, i64 131072, !8, i64 147488, !8, i64 147492, !8, i64 147496, !7, i64 147500, !13, i64 147516, !13, i64 147520, !7, i64 147524, !7, i64 147652, !7, i64 147668, !7, i64 147684, !7, i64 147732, !7, i64 147780, !7, i64 147828, !47, i64 147876, !13, i64 147912, !13, i64 147916, !7, i64 147920, !7, i64 147984, !7, i64 148048, !7, i64 148112, !7, i64 148176, !7, i64 148193, !15, i64 148264, !8, i64 148272, !7, i64 148276, !7, i64 148308, !48, i64 148648, !7, i64 181624, !7, i64 185720, !8, i64 187000, !7, i64 187004, !8, i64 187076, !8, i64 187080}
!50 = !{!"long", !7, i64 0}
!51 = !{!"_ZTS17libraw_gps_info_t", !7, i64 0, !7, i64 12, !7, i64 24, !13, i64 36, !7, i64 40, !7, i64 41, !7, i64 42, !7, i64 43, !7, i64 44}
!52 = !{!"_ZTS17libraw_imgother_t", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !50, i64 16, !8, i64 24, !7, i64 28, !51, i64 156, !7, i64 204, !7, i64 716, !7, i64 780}
!53 = !{!"_ZTS24LibRaw_thumbnail_formats", !7, i64 0}
!54 = !{!"_ZTS18libraw_thumbnail_t", !53, i64 0, !11, i64 4, !11, i64 6, !8, i64 8, !8, i64 12, !19, i64 16}
!55 = !{!"_ZTS23libraw_thumbnail_list_t", !8, i64 0, !7, i64 8}
!56 = !{!"p1 float", !15, i64 0}
!57 = !{!"_ZTS31libraw_internal_output_params_t", !8, i64 0, !8, i64 4, !8, i64 8, !11, i64 12, !11, i64 14}
!58 = !{!"_ZTS16libraw_rawdata_t", !15, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !56, i64 32, !56, i64 40, !56, i64 48, !16, i64 56, !16, i64 64, !20, i64 72, !18, i64 512, !57, i64 696, !49, i64 712}
!59 = !{!"_ZTS13libraw_data_t", !16, i64 0, !18, i64 8, !20, i64 192, !25, i64 632, !41, i64 1928, !42, i64 5088, !43, i64 5232, !46, i64 5536, !8, i64 5584, !8, i64 5588, !49, i64 5592, !52, i64 192680, !54, i64 193480, !55, i64 193504, !58, i64 193768, !15, i64 381568}
!60 = !{!"p1 _ZTS10LibRaw_TLS", !15, i64 0}
!61 = !{!"p1 _ZTS26LibRaw_abstract_datastream", !15, i64 0}
!62 = !{!"p1 _ZTS8_IO_FILE", !15, i64 0}
!63 = !{!"_ZTS15internal_data_t", !61, i64 0, !62, i64 8, !8, i64 16, !19, i64 24, !23, i64 32, !23, i64 40, !7, i64 48}
!64 = !{!"p1 int", !15, i64 0}
!65 = !{!"_ZTS13output_data_t", !64, i64 0, !64, i64 8}
!66 = !{!"_ZTS15identify_data_t", !8, i64 0, !23, i64 8, !23, i64 16, !8, i64 24, !8, i64 28, !8, i64 32}
!67 = !{!"_ZTS33LibRaw_internal_thumbnail_formats", !7, i64 0}
!68 = !{!"_ZTS12pana8_tags_t", !7, i64 0, !7, i64 24, !11, i64 36, !7, i64 38, !7, i64 46, !7, i64 80, !7, i64 114, !11, i64 148, !11, i64 150, !7, i64 152, !7, i64 192, !7, i64 204, !7, i64 224, !7, i64 234}
!69 = !{!"_ZTS15unpacker_data_t", !11, i64 0, !7, i64 2, !7, i64 10, !8, i64 16, !23, i64 24, !23, i64 32, !23, i64 40, !23, i64 48, !23, i64 56, !23, i64 64, !23, i64 72, !8, i64 80, !8, i64 84, !8, i64 88, !8, i64 92, !67, i64 96, !8, i64 100, !8, i64 104, !8, i64 108, !8, i64 112, !8, i64 116, !8, i64 120, !8, i64 124, !8, i64 128, !8, i64 132, !8, i64 136, !8, i64 140, !23, i64 144, !8, i64 152, !8, i64 156, !8, i64 160, !8, i64 164, !8, i64 168, !8, i64 172, !8, i64 176, !8, i64 180, !8, i64 184, !68, i64 192, !7, i64 440, !8, i64 2488, !8, i64 2492, !11, i64 2496, !11, i64 2498, !8, i64 2500, !8, i64 2504, !8, i64 2508, !8, i64 2512, !8, i64 2516, !8, i64 2520, !8, i64 2524, !7, i64 2528, !11, i64 2608}
!70 = !{!"_ZTS22libraw_internal_data_t", !63, i64 0, !57, i64 64, !65, i64 80, !66, i64 96, !69, i64 136}
!71 = !{!"p1 _ZTS6decode", !15, i64 0}
!72 = !{!"_ZTS13libraw_memmgr", !44, i64 0, !8, i64 8}
!73 = !{!"_ZTS18libraw_callbacks_t", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !15, i64 56, !15, i64 64, !15, i64 72, !15, i64 80, !15, i64 88, !15, i64 96, !15, i64 104, !15, i64 112, !15, i64 120, !15, i64 128, !15, i64 136, !15, i64 144}
!74 = !{!"_ZTS6LibRaw", !59, i64 8, !60, i64 381584, !70, i64 381592, !7, i64 384344, !71, i64 433496, !71, i64 433504, !7, i64 433512, !72, i64 768232, !73, i64 768248, !7, i64 768400, !7, i64 768416, !7, i64 768432, !15, i64 768448, !15, i64 768456, !15, i64 768464, !50, i64 768472, !15, i64 768480, !15, i64 768488, !15, i64 768496, !15, i64 768504}
!75 = !{!74, !13, i64 153512}
!76 = !{!8, !8, i64 0}
!77 = !{!74, !11, i64 20}
!78 = !{!74, !11, i64 22}
!79 = !{!74, !16, i64 8}
!80 = !{!74, !11, i64 381668}
!81 = !{!74, !11, i64 30}
!82 = !{!74, !8, i64 544}
!83 = !{!"llvm.loop.mustprogress"}
!84 = !{!74, !8, i64 381660}
!85 = !{!74, !8, i64 540}
!86 = distinct !{!86, !83}
!87 = distinct !{!87, !83}
!88 = !{!74, !13, i64 153516}
!89 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "LibRaw_abstract_datastream", file: !95, line: 95, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS26LibRaw_abstract_datastream")
!90 = distinct !{!90, !83}
!91 = distinct !{!91, !83}
!92 = !{!74, !61, i64 381592}
!93 = !{!"vtable pointer", !6, i64 0}
!94 = !{!93, !93, i64 0}
!95 = !DIFile(filename: "src/external/LibRaw/libraw/libraw_datastream.h", directory: "/opt-bench/work/darktable/darktable", checksumkind: CSK_MD5, checksum: "505b914805f57d87ebbd6647c463dab8")
!96 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!99 = !DIFile(filename: "/usr/lib/llvm-24/lib/clang/24/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!100 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !99, line: 18, baseType: !100)
!102 = !{!96, !97, !98, !101, !101}
!103 = !DISubroutineType(types: !102)
!104 = !DISubprogram(name: "read", linkageName: "_ZN26LibRaw_abstract_datastream4readEPvmm", scope: !89, file: !95, line: 101, type: !103, scopeLine: 101, containingType: !89, virtualIndex: 3, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!105 = !{!74, !16, i64 193784}
!106 = !{!74, !11, i64 18}
!107 = !{!7, !7, i64 0}
!108 = distinct !{!108, !83}
!109 = distinct !{!109, !83}
!110 = !{!74, !8, i64 153088}
!111 = !{!74, !8, i64 153096}
end_hunk_0
