inline.NumInlined: 4864
inline.NumDeleted: 1339
begin_hunk_0_@_ZN11OpenImageIO4v3_13pvt16convert_to_floatEPKvPfiNS0_8TypeDescE:bb.a
  %.012.lcssa.i.i33 = phi i64 [ %i.bg, %bb.d ], [ %.lcssa101.unr, %.lr.ph.i.i42.prol.loopexit ], [ %i.cy, %.lr.ph.i.i42 ] ; 6 uses
  %.010.lcssa.i.i34 = phi ptr [ %1, %bb.d ], [ %.lcssa99.unr, %.lr.ph.i.i42.prol.loopexit ], [ %i.da, %.lr.ph.i.i42 ] ; 3 uses
  %.0.lcssa.i.i35 = phi ptr [ %0, %bb.d ], [ %.lcssa100.unr, %.lr.ph.i.i42.prol.loopexit ], [ %i.cz, %.lr.ph.i.i42 ] ; 3 uses
  %.not24.i.i36 = icmp eq i64 %.012.lcssa.i.i33, 0
  br i1 %.not24.i.i36, label %_ZN11OpenImageIO4v3_112convert_typeIhfEEvPKT_PT0_m.exit, label %.lr.ph28.i.i37.preheader

.lr.ph28.i.i37.preheader:                         ; preds = %.preheader.i.i32
  %min.iters.check = icmp ult i64 %.012.lcssa.i.i33, 8
  br i1 %min.iters.check, label %.lr.ph28.i.i37.preheader97, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph28.i.i37.preheader
  %n.vec = and i64 %.012.lcssa.i.i33, -8          ; 4 uses
  %i.bs = shl i64 %n.vec, 1
  %i.bt = getelementptr i8, ptr %.0.lcssa.i.i35, i64 %i.bs
  %i.bu = shl i64 %n.vec, 2
  %i.bv = getelementptr i8, ptr %.010.lcssa.i.i34, i64 %i.bu
  %i.bw = and i64 %.012.lcssa.i.i33, 7
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bx = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.0.lcssa.i.i35, i64 %i.bx ; 2 uses
  %i.by = shl i64 %index, 2
  %next.gep72 = getelementptr i8, ptr %.010.lcssa.i.i34, i64 %i.by ; 2 uses
  %i.bz = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <4 x i16>, ptr %next.gep, align 2, !tbaa !200
  %wide.load73 = load <4 x i16>, ptr %i.bz, align 2, !tbaa !200
  %i.ca = uitofp <4 x i16> %wide.load to <4 x float>
  %i.cb = uitofp <4 x i16> %wide.load73 to <4 x float>
  %i.cc = fmul nnan <4 x float> %i.ca, splat (float f0x37800080)
  %i.cd = fmul nnan <4 x float> %i.cb, splat (float f0x37800080)
  %i.ce = getelementptr i8, ptr %next.gep72, i64 16
  store <4 x float> %i.cc, ptr %next.gep72, align 4, !tbaa !73
  store <4 x float> %i.cd, ptr %i.ce, align 4, !tbaa !73
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cf = icmp eq i64 %index.next, %n.vec
  br i1 %i.cf, label %middle.block, label %vector.body, !llvm.loop !291

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.012.lcssa.i.i33, %n.vec
  br i1 %cmp.n, label %_ZN11OpenImageIO4v3_112convert_typeIhfEEvPKT_PT0_m.exit, label %.lr.ph28.i.i37.preheader97

.lr.ph28.i.i37.preheader97:                       ; preds = %.lr.ph28.i.i37.preheader, %middle.block
  %.127.i.i38.ph = phi ptr [ %.0.lcssa.i.i35, %.lr.ph28.i.i37.preheader ], [ %i.bt, %middle.block ]
  %.11126.i.i39.ph = phi ptr [ %.010.lcssa.i.i34, %.lr.ph28.i.i37.preheader ], [ %i.bv, %middle.block ]
  %.11325.i.i40.ph = phi i64 [ %.012.lcssa.i.i33, %.lr.ph28.i.i37.preheader ], [ %i.bw, %middle.block ]
  br label %.lr.ph28.i.i37

.lr.ph.i.i42:                                     ; preds = %.lr.ph.i.i42.prol.loopexit, %.lr.ph.i.i42
  %.021.i.i43 = phi ptr [ %i.cz, %.lr.ph.i.i42 ], [ %.021.i.i43.unr, %.lr.ph.i.i42.prol.loopexit ] ; 5 uses
  %.01020.i.i44 = phi ptr [ %i.da, %.lr.ph.i.i42 ], [ %.01020.i.i44.unr, %.lr.ph.i.i42.prol.loopexit ] ; 5 uses
  %.01219.i.i45 = phi i64 [ %i.cy, %.lr.ph.i.i42 ], [ %.01219.i.i45.unr, %.lr.ph.i.i42.prol.loopexit ]
  %i.cg = load <4 x i16>, ptr %.021.i.i43, align 2, !tbaa !200
  %i.ch = uitofp <4 x i16> %i.cg to <4 x float>
  %i.ci = fmul nnan <4 x float> %i.ch, splat (float f0x37800080)
  store <4 x float> %i.ci, ptr %.01020.i.i44, align 1, !tbaa !23
  %i.cj = getelementptr inbounds nuw i8, ptr %.021.i.i43, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %.01020.i.i44, i64 16
  %i.cl = load <4 x i16>, ptr %i.cj, align 2, !tbaa !200
  %i.cm = uitofp <4 x i16> %i.cl to <4 x float>
  %i.cn = fmul nnan <4 x float> %i.cm, splat (float f0x37800080)
  store <4 x float> %i.cn, ptr %i.ck, align 1, !tbaa !23
  %i.co = getelementptr inbounds nuw i8, ptr %.021.i.i43, i64 16
  %i.cp = getelementptr inbounds nuw i8, ptr %.01020.i.i44, i64 32
  %i.cq = load <4 x i16>, ptr %i.co, align 2, !tbaa !200
  %i.cr = uitofp <4 x i16> %i.cq to <4 x float>
  %i.cs = fmul nnan <4 x float> %i.cr, splat (float f0x37800080)
  store <4 x float> %i.cs, ptr %i.cp, align 1, !tbaa !23
  %i.ct = getelementptr inbounds nuw i8, ptr %.021.i.i43, i64 24
  %i.cu = getelementptr inbounds nuw i8, ptr %.01020.i.i44, i64 48
  %i.cv = load <4 x i16>, ptr %i.ct, align 2, !tbaa !200
  %i.cw = uitofp <4 x i16> %i.cv to <4 x float>
  %i.cx = fmul nnan <4 x float> %i.cw, splat (float f0x37800080)
  store <4 x float> %i.cx, ptr %i.cu, align 1, !tbaa !23
  %i.cy = add i64 %.01219.i.i45, -16              ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.021.i.i43, i64 32 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.01020.i.i44, i64 64 ; 2 uses
  %i.db = icmp ugt i64 %i.cy, 3
  br i1 %i.db, label %.lr.ph.i.i42, label %.preheader.i.i32, !llvm.loop !292

.lr.ph28.i.i37:                                   ; preds = %.lr.ph28.i.i37.preheader97, %.lr.ph28.i.i37
  %.127.i.i38 = phi ptr [ %i.dd, %.lr.ph28.i.i37 ], [ %.127.i.i38.ph, %.lr.ph28.i.i37.preheader97 ] ; 2 uses
  %.11126.i.i39 = phi ptr [ %i.dh, %.lr.ph28.i.i37 ], [ %.11126.i.i39.ph, %.lr.ph28.i.i37.preheader97 ] ; 2 uses
  %.11325.i.i40 = phi i64 [ %i.dc, %.lr.ph28.i.i37 ], [ %.11325.i.i40.ph, %.lr.ph28.i.i37.preheader97 ]
  %i.dc = add i64 %.11325.i.i40, -1               ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.127.i.i38, i64 2
  %i.de = load i16, ptr %.127.i.i38, align 2, !tbaa !200
  %i.df = uitofp i16 %i.de to float
  %i.dg = fmul nnan float %i.df, f0x37800080
  %i.dh = getelementptr inbounds nuw i8, ptr %.11126.i.i39, i64 4
  store float %i.dg, ptr %.11126.i.i39, align 4, !tbaa !73
  %.not.i.i41 = icmp eq i64 %i.dc, 0
  br i1 %.not.i.i41, label %_ZN11OpenImageIO4v3_112convert_typeIhfEEvPKT_PT0_m.exit, label %.lr.ph28.i.i37, !llvm.loop !293

bb.e:                                             ; preds = %bb.a
  %i.di = sext i32 %2 to i64
  tail call void @_ZN11OpenImageIO4v3_112convert_typeIcfEEvPKT_PT0_mS5_S5_(ptr noundef %0, ptr noundef %1, i64 noundef %i.di, float noundef f0x00800000, float noundef f0x7F7FFFFF)
  br label %_ZN11OpenImageIO4v3_112convert_typeIhfEEvPKT_PT0_m.exit

bb.f:                                             ; preds = %bb.a
  %i.dj = sext i32 %2 to i64
  tail call void @_ZN11OpenImageIO4v3_112convert_typeIsfEEvPKT_PT0_mS5_S5_(ptr noundef %0, ptr noundef %1, i64 noundef %i.dj, float noundef f0x00800000, float noundef f0x7F7FFFFF)
  br label %_ZN11OpenImageIO4v3_112convert_typeIhfEEvPKT_PT0_m.exit

bb.g:                                             ; preds = %bb.a
  %i.dk = sext i32 %2 to i64
  tail call void @_ZN11OpenImageIO4v3_112convert_typeIifEEvPKT_PT0_mS5_S5_(ptr noundef %0, ptr noundef %1, i64 noundef %i.dk, float noundef f0x00800000, float noundef f0x7F7FFFFF)
  br label %_ZN11OpenImageIO4v3_112convert_typeIhfEEvPKT_PT0_m.exit

bb.h:                                             ; preds = %bb.a
  %i.dl = sext i32 %2 to i64
  tail call void @_ZN11OpenImageIO4v3_112convert_typeIjfEEvPKT_PT0_mS5_S5_(ptr noundef %0, ptr noundef %1, i64 noundef %i.dl, float noundef f0x00800000, float noundef f0x7F7FFFFF)
  br label %_ZN11OpenImageIO4v3_112convert_typeIhfEEvPKT_PT0_m.exit

bb.i:                                             ; preds = %bb.a
  %i.dm = sext i32 %2 to i64
  tail call void @_ZN11OpenImageIO4v3_112convert_typeIxfEEvPKT_PT0_mS5_S5_(ptr noundef %0, ptr noundef %1, i64 noundef %i.dm, float noundef f0x00800000, float noundef f0x7F7FFFFF)
  br label %_ZN11OpenImageIO4v3_112convert_typeIhfEEvPKT_PT0_m.exit

bb.j:                                             ; preds = %bb.a
  %i.dn = sext i32 %2 to i64
  tail call void @_ZN11OpenImageIO4v3_112convert_typeIyfEEvPKT_PT0_mS5_S5_(ptr noundef %0, ptr noundef %1, i64 noundef %i.dn, float noundef f0x00800000, float noundef f0x7F7FFFFF)
  br label %_ZN11OpenImageIO4v3_112convert_typeIhfEEvPKT_PT0_m.exit

bb.k:                                             ; preds = %bb.a
  %i.do = sext i32 %2 to i64
  tail call void @_ZN11OpenImageIO4v3_112convert_typeIdfEEvPKT_PT0_mS5_S5_(ptr noundef %0, ptr noundef %1, i64 noundef %i.do, float noundef f0x00800000, float noundef f0x7F7FFFFF)
  br label %_ZN11OpenImageIO4v3_112convert_typeIhfEEvPKT_PT0_m.exit

bb.l:                                             ; preds = %bb.a
  %i.dp = load ptr, ptr @stderr, align 8, !tbaa !279
  %i.dq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dp, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.76, i32 noundef 864, ptr noundef nonnull @__FUNCTION__._ZN11OpenImageIO4v3_13pvt16convert_to_floatEPKvPfiNS0_8TypeDescE, ptr noundef nonnull @.str.78) #45 ; 0 uses
  br label %_ZN11OpenImageIO4v3_112convert_typeIhfEEvPKT_PT0_m.exit

_ZN11OpenImageIO4v3_112convert_typeIhfEEvPKT_PT0_m.exit: ; preds = %.lr.ph28.i.i37, %.lr.ph28.i.i.prol.loopexit, %.lr.ph28.i.i, %middle.block, %middle.block89, %.preheader.i.i32, %.preheader.i.i, %bb.c, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.a, %bb.l
  %.0 = phi ptr [ null, %bb.l ], [ %0, %bb.a ], [ %1, %bb.k ], [ %1, %bb.j ], [ %1, %bb.i ], [ %1, %bb.h ], [ %1, %bb.g ], [ %1, %bb.f ], [ %1, %bb.e ], [ %1, %middle.block89 ], [ %1, %bb.c ], [ %1, %.preheader.i.i ], [ %1, %.preheader.i.i32 ], [ %1, %middle.block ], [ %1, %.lr.ph28.i.i.prol.loopexit ], [ %1, %.lr.ph28.i.i ], [ %1, %.lr.ph28.i.i37 ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN11OpenImageIO4v3_13pvt18convert_from_floatEPKfPvmNS0_8TypeDescE(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 %3) local_unnamed_addr #9 {
bb.a:
  %4 = alloca %"struct.OpenImageIO::v3_1::TypeDesc", align 8 ; 2 uses
  store i64 %3, ptr %4, align 8
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = lshr i64 %3, 8
  %i.b = lshr i64 %3, 32
  %i.c = trunc nuw i64 %i.b to i32
  %narrow.i = tail call i32 @llvm.smax.i32(i32 %i.c, i32 1)
  %spec.select.i = zext nneg i32 %narrow.i to i64
  %i.d = and i64 %i.a, 255
  %i.e = call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %4) #39
  %i.f = mul i64 %2, %i.d
  %i.g = mul i64 %i.f, %i.e
  %i.h = mul i64 %i.g, %spec.select.i
  call void @llvm.memset.p0.i64(ptr align 1 %1, i8 0, i64 %i.h, i1 false)
  br label %_ZN11OpenImageIO4v3_112convert_typeIfhEEvPKT_PT0_m.exit

bb.c:                                             ; preds = %bb.a
  %i.i = trunc i64 %3 to i8
  switch i8 %i.i, label %bb.n [
    i8 11, label %_ZN11OpenImageIO4v3_112convert_typeIfhEEvPKT_PT0_m.exit
    i8 10, label %bb.d
    i8 2, label %bb.e
    i8 4, label %bb.f
    i8 6, label %bb.g
    i8 3, label %bb.h
    i8 5, label %bb.i
    i8 7, label %bb.j
    i8 12, label %bb.k
    i8 9, label %bb.l
    i8 8, label %bb.m
  ]

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN11OpenImageIO4v3_112convert_typeIfN9Imath_3_14halfEEEvPKT_PT0_mS7_S7_(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, i16 1024, i16 31743)
  br label %_ZN11OpenImageIO4v3_112convert_typeIfhEEvPKT_PT0_m.exit

bb.e:                                             ; preds = %bb.c
  %i.j = icmp ugt i64 %2, 3
  br i1 %i.j, label %_ZN11OpenImageIO4v3_14simd5roundERKNS1_7vfloat4E.exit.i.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_ZN11OpenImageIO4v3_14simd5roundERKNS1_7vfloat4E.exit.i.i, %bb.e
  %.015.lcssa.i.i = phi i64 [ %2, %bb.e ], [ %i.aj, %_ZN11OpenImageIO4v3_14simd5roundERKNS1_7vfloat4E.exit.i.i ] ; 3 uses
  %.013.lcssa.i.i = phi ptr [ %1, %bb.e ], [ %i.al, %_ZN11OpenImageIO4v3_14simd5roundERKNS1_7vfloat4E.exit.i.i ] ; 3 uses
  %.0.lcssa.i.i = phi ptr [ %0, %bb.e ], [ %i.ak, %_ZN11OpenImageIO4v3_14simd5roundERKNS1_7vfloat4E.exit.i.i ] ; 3 uses
  %.not70.i.i = icmp eq i64 %.015.lcssa.i.i, 0
  br i1 %.not70.i.i, label %_ZN11OpenImageIO4v3_112convert_typeIfhEEvPKT_PT0_m.exit, label %.lr.ph74.i.i

_ZN11OpenImageIO4v3_14simd5roundERKNS1_7vfloat4E.exit.i.i: ; preds = %bb.e, %_ZN11OpenImageIO4v3_14simd5roundERKNS1_7vfloat4E.exit.i.i
  %.067.i.i = phi ptr [ %i.ak, %_ZN11OpenImageIO4v3_14simd5roundERKNS1_7vfloat4E.exit.i.i ], [ %0, %bb.e ] ; 2 uses
  %.01366.i.i = phi ptr [ %i.al, %_ZN11OpenImageIO4v3_14simd5roundERKNS1_7vfloat4E.exit.i.i ], [ %1, %bb.e ] ; 2 uses
  %.01565.i.i = phi i64 [ %i.aj, %_ZN11OpenImageIO4v3_14simd5roundERKNS1_7vfloat4E.exit.i.i ], [ %2, %bb.e ]
  %i.k = load <4 x float>, ptr %.067.i.i, align 1, !tbaa !23
  %i.l = fmul <4 x float> %i.k, splat (float 2.550000e+02) ; 4 uses
  %i.m = extractelement <4 x float> %i.l, i64 0
  %5 = tail call float @llvm.round.f32(float %i.m)
  %i.n = extractelement <4 x float> %i.l, i64 1
  %6 = tail call float @llvm.round.f32(float %i.n)
  %7 = extractelement <4 x float> %i.l, i64 2
  %i.o = tail call float @llvm.round.f32(float %7)
  %8 = extractelement <4 x float> %i.l, i64 3
  %i.p = tail call float @llvm.round.f32(float %8)
  %i.q = insertelement <2 x float> poison, float %5, i64 0
  %i.r = insertelement <2 x float> %i.q, float %i.o, i64 1
  %i.s = bitcast <2 x float> %i.r to <2 x i32>
  %i.t = insertelement <2 x float> poison, float %6, i64 0
  %i.u = insertelement <2 x float> %i.t, float %i.p, i64 1
  %i.v = bitcast <2 x float> %i.u to <2 x i32>
  %i.w = zext <2 x i32> %i.v to <2 x i64>
  %i.x = shl nuw <2 x i64> %i.w, splat (i64 32)
  %i.y = zext <2 x i32> %i.s to <2 x i64>
  %i.z = or disjoint <2 x i64> %i.x, %i.y
  %i.aa = bitcast <2 x i64> %i.z to <4 x float>
  %i.ab = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> %i.aa)
  %i.ac = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float 2.550000e+02), <4 x float> %i.ab)
  %i.ad = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.ac)
  %i.ae = and <4 x i32> %i.ad, splat (i32 255)
  %i.af = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ae, <4 x i32> poison)
  %i.ag = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.af, <8 x i16> poison)
  %i.ah = bitcast <16 x i8> %i.ag to <4 x float>
  %i.ai = extractelement <4 x float> %i.ah, i64 0
  store float %i.ai, ptr %.01366.i.i, align 1, !tbaa !23
  %i.aj = add i64 %.01565.i.i, -4                 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.067.i.i, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.01366.i.i, i64 4 ; 2 uses
  %i.am = icmp ugt i64 %i.aj, 3
  br i1 %i.am, label %_ZN11OpenImageIO4v3_14simd5roundERKNS1_7vfloat4E.exit.i.i, label %.preheader.i.i, !llvm.loop !294

.lr.ph74.i.i:                                     ; preds = %.preheader.i.i
  %i.an = load float, ptr %.0.lcssa.i.i, align 4, !tbaa !73
  %i.ao = fmul float %i.an, 2.550000e+02          ; 2 uses
  %i.ap = fcmp olt float %i.ao, 0.000000e+00
  %i.aq = select i1 %i.ap, float -5.000000e-01, float 5.000000e-01
  %i.ar = fadd float %i.ao, %i.aq                 ; 2 uses
  %.inv.i.i.i = fcmp oge float %i.ar, 0.000000e+00
  %.0.i.i.i.i = select i1 %.inv.i.i.i, float %i.ar, float 0.000000e+00 ; 2 uses
  %i.as = fcmp ogt float %.0.i.i.i.i, 2.550000e+02
  %.1.i.i.i.i = select i1 %i.as, float 2.550000e+02, float %.0.i.i.i.i
  %i.at = fptoui float %.1.i.i.i.i to i8
  store i8 %i.at, ptr %.013.lcssa.i.i, align 1, !tbaa !23
  %.not.i.i = icmp eq i64 %.015.lcssa.i.i, 1
  br i1 %.not.i.i, label %_ZN11OpenImageIO4v3_112convert_typeIfhEEvPKT_PT0_m.exit, label %.lr.ph74.i.i.1

.lr.ph74.i.i.1:                                   ; preds = %.lr.ph74.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %.013.lcssa.i.i, i64 1
  %i.av = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 4
  %i.aw = load float, ptr %i.av, align 4, !tbaa !73
  %i.ax = fmul float %i.aw, 2.550000e+02          ; 2 uses
  %i.ay = fcmp olt float %i.ax, 0.000000e+00
  %i.az = select i1 %i.ay, float -5.000000e-01, float 5.000000e-01
  %i.ba = fadd float %i.ax, %i.az                 ; 2 uses
  %.inv.i.i.i.1 = fcmp oge float %i.ba, 0.000000e+00
  %.0.i.i.i.i.1 = select i1 %.inv.i.i.i.1, float %i.ba, float 0.000000e+00 ; 2 uses
  %i.bb = fcmp ogt float %.0.i.i.i.i.1, 2.550000e+02
  %.1.i.i.i.i.1 = select i1 %i.bb, float 2.550000e+02, float %.0.i.i.i.i.1
  %i.bc = fptoui float %.1.i.i.i.i.1 to i8
  store i8 %i.bc, ptr %i.au, align 1, !tbaa !23
  %.not.i.i.1 = icmp eq i64 %.015.lcssa.i.i, 2
  br i1 %.not.i.i.1, label %_ZN11OpenImageIO4v3_112convert_typeIfhEEvPKT_PT0_m.exit, label %.lr.ph74.i.i.2

.lr.ph74.i.i.2:                                   ; preds = %.lr.ph74.i.i.1
  %i.bd = getelementptr inbounds nuw i8, ptr %.013.lcssa.i.i, i64 2
  %i.be = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 8
  %i.bf = load float, ptr %i.be, align 4, !tbaa !73
  %i.bg = fmul float %i.bf, 2.550000e+02          ; 2 uses
  %i.bh = fcmp olt float %i.bg, 0.000000e+00
  %i.bi = select i1 %i.bh, float -5.000000e-01, float 5.000000e-01
  %i.bj = fadd float %i.bg, %i.bi                 ; 2 uses
  %.inv.i.i.i.2 = fcmp oge float %i.bj, 0.000000e+00
  %.0.i.i.i.i.2 = select i1 %.inv.i.i.i.2, float %i.bj, float 0.000000e+00 ; 2 uses
  %i.bk = fcmp ogt float %.0.i.i.i.i.2, 2.550000e+02
  %.1.i.i.i.i.2 = select i1 %i.bk, float 2.550000e+02, float %.0.i.i.i.i.2
  %i.bl = fptoui float %.1.i.i.i.i.2 to i8
  store i8 %i.bl, ptr %i.bd, align 1, !tbaa !23
  br label %_ZN11OpenImageIO4v3_112convert_typeIfhEEvPKT_PT0_m.exit

bb.f:                                             ; preds = %bb.c
  %i.bm = icmp ugt i64 %2, 3
  br i1 %i.bm, label %_ZN11OpenImageIO4v3_14simd5roundERKNS1_7vfloat4E.exit.i.i46, label %.preheader.i.i38

.preheader.i.i38:                                 ; preds = %_ZN11OpenImageIO4v3_14simd5roundERKNS1_7vfloat4E.exit.i.i46, %bb.f
  %.015.lcssa.i.i39 = phi i64 [ %2, %bb.f ], [ %i.cq, %_ZN11OpenImageIO4v3_14simd5roundERKNS1_7vfloat4E.exit.i.i46 ] ; 3 uses
  %.013.lcssa.i.i40 = phi ptr [ %1, %bb.f ], [ %i.cs, %_ZN11OpenImageIO4v3_14simd5roundERKNS1_7vfloat4E.exit.i.i46 ] ; 3 uses
  %.0.lcssa.i.i41 = phi ptr [ %0, %bb.f ], [ %i.cr, %_ZN11OpenImageIO4v3_14simd5roundERKNS1_7vfloat4E.exit.i.i46 ] ; 3 uses
  %.not85.i.i = icmp eq i64 %.015.lcssa.i.i39, 0
  br i1 %.not85.i.i, label %_ZN11OpenImageIO4v3_112convert_typeIfhEEvPKT_PT0_m.exit, label %.lr.ph89.i.i

_ZN11OpenImageIO4v3_14simd5roundERKNS1_7vfloat4E.exit.i.i46: ; preds = %bb.f, %_ZN11OpenImageIO4v3_14simd5roundERKNS1_7vfloat4E.exit.i.i46
  %.082.i.i = phi ptr [ %i.cr, %_ZN11OpenImageIO4v3_14simd5roundERKNS1_7vfloat4E.exit.i.i46 ], [ %0, %bb.f ] ; 2 uses
  %.01381.i.i = phi ptr [ %i.cs, %_ZN11OpenImageIO4v3_14simd5roundERKNS1_7vfloat4E.exit.i.i46 ], [ %1, %bb.f ] ; 2 uses
  %.01580.i.i = phi i64 [ %i.cq, %_ZN11OpenImageIO4v3_14simd5roundERKNS1_7vfloat4E.exit.i.i46 ], [ %2, %bb.f ]
  %i.bn = load <4 x float>, ptr %.082.i.i, align 1, !tbaa !23
  %i.bo = fmul <4 x float> %i.bn, splat (float 6.553500e+04) ; 4 uses
  %i.bp = extractelement <4 x float> %i.bo, i64 0
  %9 = tail call float @llvm.round.f32(float %i.bp)
  %i.bq = extractelement <4 x float> %i.bo, i64 1
  %10 = tail call float @llvm.round.f32(float %i.bq)
  %11 = extractelement <4 x float> %i.bo, i64 2
  %i.br = tail call float @llvm.round.f32(float %11)
  %12 = extractelement <4 x float> %i.bo, i64 3
  %i.bs = tail call float @llvm.round.f32(float %12)
  %i.bt = insertelement <2 x float> poison, float %9, i64 0
  %i.bu = insertelement <2 x float> %i.bt, float %i.br, i64 1
  %i.bv = bitcast <2 x float> %i.bu to <2 x i32>
  %i.bw = insertelement <2 x float> poison, float %10, i64 0
  %i.bx = insertelement <2 x float> %i.bw, float %i.bs, i64 1
  %i.by = bitcast <2 x float> %i.bx to <2 x i32>
  %i.bz = zext <2 x i32> %i.by to <2 x i64>
  %i.ca = shl nuw <2 x i64> %i.bz, splat (i64 32)
  %i.cb = zext <2 x i32> %i.bv to <2 x i64>
  %i.cc = or disjoint <2 x i64> %i.ca, %i.cb
  %i.cd = bitcast <2 x i64> %i.cc to <4 x float>
  %i.ce = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> %i.cd)
  %i.cf = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float 6.553500e+04), <4 x float> %i.ce)
  %i.cg = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.cf)
  %i.ch = bitcast <4 x i32> %i.cg to <8 x i16>
  %i.ci = and <8 x i16> %i.ch, <i16 -1, i16 0, i16 -1, i16 poison, i16 -1, i16 0, i16 -1, i16 poison>
  %i.cj = shufflevector <8 x i16> %i.ci, <8 x i16> poison, <8 x i32> <i32 0, i32 2, i32 1, i32 1, i32 5, i32 5, i32 4, i32 6> ; 2 uses
  %i.ck = bitcast <8 x i16> %i.cj to <2 x i64>
  %i.cl = bitcast <8 x i16> %i.cj to <2 x i64>
  %i.cm = shufflevector <2 x i64> %i.cl, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %i.cn = or <2 x i64> %i.cm, %i.ck
  %i.co = bitcast <2 x i64> %i.cn to <2 x double>
  %i.cp = extractelement <2 x double> %i.co, i64 0
  store double %i.cp, ptr %.01381.i.i, align 1, !tbaa !23
  %i.cq = add i64 %.01580.i.i, -4                 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.082.i.i, i64 16 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.01381.i.i, i64 8 ; 2 uses
  %i.ct = icmp ugt i64 %i.cq, 3
  br i1 %i.ct, label %_ZN11OpenImageIO4v3_14simd5roundERKNS1_7vfloat4E.exit.i.i46, label %.preheader.i.i38, !llvm.loop !295

.lr.ph89.i.i:                                     ; preds = %.preheader.i.i38
  %i.cu = load float, ptr %.0.lcssa.i.i41, align 4, !tbaa !73
  %i.cv = fmul float %i.cu, 6.553500e+04          ; 2 uses
  %i.cw = fcmp olt float %i.cv, 0.000000e+00
  %i.cx = select i1 %i.cw, float -5.000000e-01, float 5.000000e-01
  %i.cy = fadd float %i.cv, %i.cx                 ; 2 uses
  %.inv.i.i.i42 = fcmp oge float %i.cy, 0.000000e+00
  %.0.i.i.i.i43 = select i1 %.inv.i.i.i42, float %i.cy, float 0.000000e+00 ; 2 uses
  %i.cz = fcmp ogt float %.0.i.i.i.i43, 6.553500e+04
  %.1.i.i.i.i44 = select i1 %i.cz, float 6.553500e+04, float %.0.i.i.i.i43
  %i.da = fptoui float %.1.i.i.i.i44 to i16
  store i16 %i.da, ptr %.013.lcssa.i.i40, align 2, !tbaa !200
  %.not.i.i45 = icmp eq i64 %.015.lcssa.i.i39, 1
  br i1 %.not.i.i45, label %_ZN11OpenImageIO4v3_112convert_typeIfhEEvPKT_PT0_m.exit, label %.lr.ph89.i.i.1

.lr.ph89.i.i.1:                                   ; preds = %.lr.ph89.i.i
  %i.db = getelementptr inbounds nuw i8, ptr %.013.lcssa.i.i40, i64 2
  %i.dc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i41, i64 4
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !73
  %i.de = fmul float %i.dd, 6.553500e+04          ; 2 uses
  %i.df = fcmp olt float %i.de, 0.000000e+00
  %i.dg = select i1 %i.df, float -5.000000e-01, float 5.000000e-01
  %i.dh = fadd float %i.de, %i.dg                 ; 2 uses
  %.inv.i.i.i42.1 = fcmp oge float %i.dh, 0.000000e+00
  %.0.i.i.i.i43.1 = select i1 %.inv.i.i.i42.1, float %i.dh, float 0.000000e+00 ; 2 uses
  %i.di = fcmp ogt float %.0.i.i.i.i43.1, 6.553500e+04
  %.1.i.i.i.i44.1 = select i1 %i.di, float 6.553500e+04, float %.0.i.i.i.i43.1
  %i.dj = fptoui float %.1.i.i.i.i44.1 to i16
  store i16 %i.dj, ptr %i.db, align 2, !tbaa !200
  %.not.i.i45.1 = icmp eq i64 %.015.lcssa.i.i39, 2
  br i1 %.not.i.i45.1, label %_ZN11OpenImageIO4v3_112convert_typeIfhEEvPKT_PT0_m.exit, label %.lr.ph89.i.i.2

.lr.ph89.i.i.2:                                   ; preds = %.lr.ph89.i.i.1
  %i.dk = getelementptr inbounds nuw i8, ptr %.013.lcssa.i.i40, i64 4
  %i.dl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i41, i64 8
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !73
  %i.dn = fmul float %i.dm, 6.553500e+04          ; 2 uses
  %i.do = fcmp olt float %i.dn, 0.000000e+00
  %i.dp = select i1 %i.do, float -5.000000e-01, float 5.000000e-01
  %i.dq = fadd float %i.dn, %i.dp                 ; 2 uses
  %.inv.i.i.i42.2 = fcmp oge float %i.dq, 0.000000e+00
  %.0.i.i.i.i43.2 = select i1 %.inv.i.i.i42.2, float %i.dq, float 0.000000e+00 ; 2 uses
  %i.dr = fcmp ogt float %.0.i.i.i.i43.2, 6.553500e+04
  %.1.i.i.i.i44.2 = select i1 %i.dr, float 6.553500e+04, float %.0.i.i.i.i43.2
  %i.ds = fptoui float %.1.i.i.i.i44.2 to i16
  store i16 %i.ds, ptr %i.dk, align 2, !tbaa !200
  br label %_ZN11OpenImageIO4v3_112convert_typeIfhEEvPKT_PT0_m.exit

bb.g:                                             ; preds = %bb.c
  tail call void @_ZN11OpenImageIO4v3_112convert_typeIfjEEvPKT_PT0_mS5_S5_(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, i32 noundef 0, i32 noundef -1)
  br label %_ZN11OpenImageIO4v3_112convert_typeIfhEEvPKT_PT0_m.exit

bb.h:                                             ; preds = %bb.c
  tail call void @_ZN11OpenImageIO4v3_112convert_typeIfaEEvPKT_PT0_mS5_S5_(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, i8 noundef signext -128, i8 noundef signext 127)
  br label %_ZN11OpenImageIO4v3_112convert_typeIfhEEvPKT_PT0_m.exit

bb.i:                                             ; preds = %bb.c
  tail call void @_ZN11OpenImageIO4v3_112convert_typeIfsEEvPKT_PT0_mS5_S5_(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, i16 noundef signext -32768, i16 noundef signext 32767)
  br label %_ZN11OpenImageIO4v3_112convert_typeIfhEEvPKT_PT0_m.exit

bb.j:                                             ; preds = %bb.c
  tail call void @_ZN11OpenImageIO4v3_112convert_typeIfiEEvPKT_PT0_mS5_S5_(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, i32 noundef -2147483648, i32 noundef 2147483647)
  br label %_ZN11OpenImageIO4v3_112convert_typeIfhEEvPKT_PT0_m.exit

bb.k:                                             ; preds = %bb.c
  tail call void @_ZN11OpenImageIO4v3_112convert_typeIfdEEvPKT_PT0_mS5_S5_(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, double noundef f0x0010000000000000, double noundef f0x7FEFFFFFFFFFFFFF)
  br label %_ZN11OpenImageIO4v3_112convert_typeIfhEEvPKT_PT0_m.exit

bb.l:                                             ; preds = %bb.c
  tail call void @_ZN11OpenImageIO4v3_112convert_typeIflEEvPKT_PT0_mS5_S5_(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, i64 noundef -9223372036854775808, i64 noundef 9223372036854775807)
  br label %_ZN11OpenImageIO4v3_112convert_typeIfhEEvPKT_PT0_m.exit

bb.m:                                             ; preds = %bb.c
  tail call void @_ZN11OpenImageIO4v3_112convert_typeIfmEEvPKT_PT0_mS5_S5_(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, i64 noundef 0, i64 noundef -1)
  br label %_ZN11OpenImageIO4v3_112convert_typeIfhEEvPKT_PT0_m.exit

bb.n:                                             ; preds = %bb.c
  %i.dt = load ptr, ptr @stderr, align 8, !tbaa !279
  %i.du = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dt, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.76, i32 noundef 896, ptr noundef nonnull @__FUNCTION__._ZN11OpenImageIO4v3_13pvt18convert_from_floatEPKfPvmNS0_8TypeDescE, ptr noundef nonnull @.str.79) #45 ; 0 uses
  br label %_ZN11OpenImageIO4v3_112convert_typeIfhEEvPKT_PT0_m.exit

_ZN11OpenImageIO4v3_112convert_typeIfhEEvPKT_PT0_m.exit: ; preds = %.lr.ph89.i.i, %.lr.ph89.i.i.1, %.lr.ph89.i.i.2, %.lr.ph74.i.i, %.lr.ph74.i.i.1, %.lr.ph74.i.i.2, %.preheader.i.i38, %.preheader.i.i, %bb.d, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.c, %bb.b
  %.0 = phi ptr [ %0, %bb.c ], [ %1, %bb.b ], [ null, %bb.n ], [ %1, %bb.d ], [ %1, %bb.m ], [ %1, %.lr.ph74.i.i ], [ %1, %bb.g ], [ %1, %bb.h ], [ %1, %bb.i ], [ %1, %bb.j ], [ %1, %bb.k ], [ %1, %bb.l ], [ %1, %.preheader.i.i ], [ %1, %.preheader.i.i38 ], [ %1, %.lr.ph74.i.i.2 ], [ %1, %.lr.ph74.i.i.1 ], [ %1, %.lr.ph89.i.i.2 ], [ %1, %.lr.ph89.i.i.1 ], [ %1, %.lr.ph89.i.i ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN11OpenImageIO4v3_13pvt27parallel_convert_from_floatEPKfPvmNS0_8TypeDescE(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 %3) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::function", align 8     ; 12 uses
  %5 = alloca %"class.OpenImageIO::v3_1::paropt", align 8 ; 7 uses
  %i.a = and i64 %3, 255
  %i.b = icmp eq i64 %i.a, 11
  br i1 %i.b, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #39
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.e, align 8
  %i.f = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #44 ; 4 uses
  store ptr %0, ptr %i.f, align 16, !tbaa !84
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %1, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !296
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %3, ptr %.sroa.6.0..sroa_idx, align 16
  store ptr %i.f, ptr %4, align 8, !tbaa !296
  store ptr @"_ZNSt17_Function_handlerIFvllEZN11OpenImageIO4v3_13pvt27parallel_convert_from_floatEPKfPvmNS2_8TypeDescEE3$_0E9_M_invokeERKSt9_Any_dataOlSD_", ptr %i.d, align 8, !tbaa !297
  store ptr @"_ZNSt17_Function_handlerIFvllEZN11OpenImageIO4v3_13pvt27parallel_convert_from_floatEPKfPvmNS2_8TypeDescEE3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation", ptr %i.c, align 8, !tbaa !300
  store i32 0, ptr %5, align 8, !tbaa !301
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i16 0, ptr %i.g, align 4, !tbaa !306
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 6
  store i16 1, ptr %i.h, align 2, !tbaa !307
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 1, ptr %i.i, align 8, !tbaa !308
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr null, ptr %i.j, align 8, !tbaa !309
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i8 0, ptr %i.k, align 8, !tbaa !310
  invoke void @_ZN11OpenImageIO4v3_120parallel_for_chunkedElllOSt8functionIFvllEENS0_6paroptE(i64 noundef 0, i64 noundef %2, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull byval(%"class.OpenImageIO::v3_1::paropt") align 8 %5)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !300  ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = invoke noundef zeroext i1 %i.l(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  call void @__clang_call_terminate(ptr %i.o) #41
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  br label %bb.i

bb.f:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !300  ; 2 uses
  %.not.i7 = icmp eq ptr %i.q, null
  br i1 %.not.i7, label %_ZNSt14_Function_baseD2Ev.exit8, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = invoke noundef zeroext i1 %i.q(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit8 unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #41
  unreachable

_ZNSt14_Function_baseD2Ev.exit8:                  ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  resume { ptr, i32 } %i.p

bb.i:                                             ; preds = %bb.a, %_ZNSt14_Function_baseD2Ev.exit
  %.0 = phi ptr [ %1, %_ZNSt14_Function_baseD2Ev.exit ], [ %0, %bb.a ]
  ret ptr %.0
}

declare void @_ZN11OpenImageIO4v3_120parallel_for_chunkedElllOSt8functionIFvllEENS0_6paroptE(i64 noundef, i64 noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef byval(%"class.OpenImageIO::v3_1::paropt") align 8) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN11OpenImageIO4v3_120convert_pixel_valuesENS0_8TypeDescEPKvS1_Pvi(i64 %0, ptr noundef %1, i64 %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #9 personality ptr @__gxx_personality_v0 {
_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit:
  %5 = alloca %"struct.OpenImageIO::v3_1::TypeDesc", align 8 ; 2 uses
  store i64 %0, ptr %5, align 8
  %.sroa.072.0.extract.trunc = trunc i64 %2 to i8 ; 4 uses
  %.sroa.5.0.extract.shift = lshr i64 %2, 8
  %.sroa.5.0.extract.trunc = trunc i64 %.sroa.5.0.extract.shift to i8 ; 2 uses
  %.sroa.7.0.extract.shift = lshr i64 %2, 16
  %.sroa.7.0.extract.trunc = trunc i64 %.sroa.7.0.extract.shift to i8 ; 2 uses
  %.sroa.978.0.extract.shift = lshr i64 %2, 32    ; 2 uses
  %i.a = trunc i64 %0 to i8                       ; 2 uses
  %i.b = icmp eq i8 %i.a, %.sroa.072.0.extract.trunc
  %i.c = lshr i64 %0, 8                           ; 2 uses
  %i.d = trunc i64 %i.c to i8                     ; 2 uses
  %i.e = icmp eq i8 %i.d, %.sroa.5.0.extract.trunc
  %or.cond84 = and i1 %i.b, %i.e
  %i.f = lshr i64 %0, 16
  %i.g = trunc i64 %i.f to i8                     ; 2 uses
  %i.h = icmp eq i8 %i.g, %.sroa.7.0.extract.trunc
  %or.cond87 = and i1 %or.cond84, %i.h
  %i.i = lshr i64 %0, 32                          ; 3 uses
  %i.j = icmp eq i64 %i.i, %.sroa.978.0.extract.shift
  %spec.select = and i1 %or.cond87, %i.j
  %i.k = icmp eq i8 %.sroa.072.0.extract.trunc, 0
  %or.cond = or i1 %i.k, %spec.select
  br i1 %or.cond, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit
  %i.l = trunc nuw i64 %i.i to i32
  %i.m = sext i32 %4 to i64
  %narrow.i = tail call i32 @llvm.smax.i32(i32 %i.l, i32 1)
  %spec.select.i = zext nneg i32 %narrow.i to i64
  %i.n = and i64 %i.c, 255
  %i.o = call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %5) #39
  %i.p = mul nsw i64 %i.n, %i.m
  %i.q = mul i64 %i.p, %i.o
  %i.r = mul i64 %i.q, %spec.select.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %3, ptr align 1 %1, i64 %i.r, i1 false)
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit68

bb.b:                                             ; preds = %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit
  %i.s = icmp eq i8 %.sroa.072.0.extract.trunc, 11
  %i.t = icmp eq i8 %.sroa.5.0.extract.trunc, 1
  %or.cond88 = and i1 %i.s, %i.t
  %i.u = icmp eq i8 %.sroa.7.0.extract.trunc, 0
  %or.cond89 = and i1 %i.u, %or.cond88
  %i.v = icmp eq i64 %.sroa.978.0.extract.shift, 0
  %or.cond90 = and i1 %i.v, %or.cond89
  br i1 %or.cond90, label %bb.c, label %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit53.thread

bb.c:                                             ; preds = %bb.b
  %i.w = tail call noundef ptr @_ZN11OpenImageIO4v3_13pvt16convert_to_floatEPKvPfiNS0_8TypeDescE(ptr noundef %1, ptr noundef %3, i32 noundef %4, i64 %0) ; 0 uses
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit68

_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit53.thread: ; preds = %bb.b
  %i.x = icmp ne i8 %i.a, 11
  %i.y = icmp ne i8 %i.d, 1
  %or.cond93.not104 = or i1 %i.x, %i.y
  %i.z = icmp ne i8 %i.g, 0
  %or.cond96.not101 = or i1 %or.cond93.not104, %i.z
  %i.aa = icmp ne i64 %i.i, 0
  %or.cond99 = or i1 %or.cond96.not101, %i.aa
  br i1 %or.cond99, label %_ZNK11OpenImageIO4v3_18TypeDescneERKS1_.exit.thread, label %bb.h

_ZNK11OpenImageIO4v3_18TypeDescneERKS1_.exit.thread: ; preds = %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit53.thread
  %i.ab = icmp slt i32 %4, 4097
  br i1 %i.ab, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZNK11OpenImageIO4v3_18TypeDescneERKS1_.exit.thread
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = sext i32 %4 to i64
  %i.ad = shl nsw i64 %i.ac, 2
  %i.ae = alloca i8, i64 %i.ad, align 16
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit

bb.f:                                             ; preds = %_ZNK11OpenImageIO4v3_18TypeDescneERKS1_.exit.thread
  %i.af = zext nneg i32 %4 to i64
  %i.ag = shl nuw nsw i64 %i.af, 2
  %i.ah = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ag) #44 ; 2 uses
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit

bb.g:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit
  %.sroa.0.0 = phi ptr [ %.sroa.0.2, %bb.k ], [ %.sroa.0.2, %bb.l ], [ %.sroa.0.2, %bb.m ], [ %.sroa.0.2, %bb.n ], [ %.sroa.0.2, %bb.o ], [ %.sroa.0.2, %bb.p ], [ %.sroa.0.2, %bb.q ], [ %.sroa.0.1, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit ] ; 2 uses
  %i.ai = landingpad { ptr, i32 }
          cleanup
  %.not.i = icmp eq ptr %.sroa.0.0, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %bb.g
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0.0) #40
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.g, %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i
  resume { ptr, i32 } %i.ai

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit: ; preds = %bb.f, %bb.e, %bb.d
  %.sroa.0.1 = phi ptr [ null, %bb.d ], [ null, %bb.e ], [ %i.ah, %bb.f ] ; 2 uses
  %.050 = phi ptr [ null, %bb.d ], [ %i.ae, %bb.e ], [ %i.ah, %bb.f ] ; 2 uses
  %i.aj = invoke noundef ptr @_ZN11OpenImageIO4v3_13pvt16convert_to_floatEPKvPfiNS0_8TypeDescE(ptr noundef %1, ptr noundef %.050, i32 noundef %4, i64 %0)
          to label %bb.h unwind label %bb.g       ; 0 uses

bb.h:                                             ; preds = %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit53.thread, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit
  %.sroa.0.2 = phi ptr [ %.sroa.0.1, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit ], [ null, %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit53.thread ] ; 9 uses
  %.151 = phi ptr [ %.050, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit ], [ %1, %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit53.thread ] ; 12 uses
  switch i8 %.sroa.072.0.extract.trunc, label %_ZN11OpenImageIO4v3_112convert_typeIfhEEvPKT_PT0_m.exit [
    i8 2, label %bb.i
    i8 4, label %bb.j
    i8 10, label %bb.k
    i8 3, label %bb.l
    i8 5, label %bb.m
    i8 7, label %bb.n
    i8 6, label %bb.o
    i8 9, label %bb.p
    i8 8, label %bb.q
    i8 12, label %bb.r
  ]

bb.i:                                             ; preds = %bb.h
  %i.ak = sext i32 %4 to i64                      ; 2 uses
  %i.al = icmp ugt i32 %4, 3
  br i1 %i.al, label %_ZN11OpenImageIO4v3_14simd5roundERKNS1_7vfloat4E.exit.i.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_ZN11OpenImageIO4v3_14simd5roundERKNS1_7vfloat4E.exit.i.i, %bb.i
  %.015.lcssa.i.i = phi i64 [ %i.ak, %bb.i ], [ %i.cb, %_ZN11OpenImageIO4v3_14simd5roundERKNS1_7vfloat4E.exit.i.i ] ; 9 uses
  %.013.lcssa.i.i = phi ptr [ %3, %bb.i ], [ %i.cd, %_ZN11OpenImageIO4v3_14simd5roundERKNS1_7vfloat4E.exit.i.i ] ; 6 uses
  %.0.lcssa.i.i = phi ptr [ %.151, %bb.i ], [ %i.cc, %_ZN11OpenImageIO4v3_14simd5roundERKNS1_7vfloat4E.exit.i.i ] ; 6 uses
  %.not70.i.i = icmp eq i64 %.015.lcssa.i.i, 0
  br i1 %.not70.i.i, label %_ZN11OpenImageIO4v3_112convert_typeIfhEEvPKT_PT0_m.exit, label %.lr.ph74.i.i.preheader

.lr.ph74.i.i.preheader:                           ; preds = %.preheader.i.i
  %min.iters.check137 = icmp ult i64 %.015.lcssa.i.i, 4
  br i1 %min.iters.check137, label %.lr.ph74.i.i.preheader152, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph74.i.i.preheader
  %scevgep = getelementptr i8, ptr %.013.lcssa.i.i, i64 %.015.lcssa.i.i
  %i.am = shl i64 %.015.lcssa.i.i, 2
  %scevgep135 = getelementptr i8, ptr %.0.lcssa.i.i, i64 %i.am
  %bound0 = icmp ult ptr %.013.lcssa.i.i, %scevgep135
  %bound1 = icmp ult ptr %.0.lcssa.i.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph74.i.i.preheader152, label %vector.ph138

vector.ph138:                                     ; preds = %vector.memcheck
  %n.vec140 = and i64 %.015.lcssa.i.i, -4         ; 4 uses
  %i.an = shl i64 %n.vec140, 2
  %i.ao = getelementptr i8, ptr %.0.lcssa.i.i, i64 %i.an
  %i.ap = getelementptr i8, ptr %.013.lcssa.i.i, i64 %n.vec140
  %i.aq = and i64 %.015.lcssa.i.i, 3
  br label %vector.body141

vector.body141:                                   ; preds = %vector.body141, %vector.ph138
  %index142 = phi i64 [ 0, %vector.ph138 ], [ %index.next146, %vector.body141 ] ; 3 uses
  %i.ar = shl i64 %index142, 2
  %next.gep143 = getelementptr i8, ptr %.0.lcssa.i.i, i64 %i.ar
  %next.gep144 = getelementptr i8, ptr %.013.lcssa.i.i, i64 %index142
  %wide.load145 = load <4 x float>, ptr %next.gep143, align 4, !tbaa !73, !alias.scope !311
  %i.as = fmul <4 x float> %wide.load145, splat (float 2.550000e+02) ; 2 uses
  %i.at = fcmp olt <4 x float> %i.as, zeroinitializer
  %i.au = select <4 x i1> %i.at, <4 x float> splat (float -5.000000e-01), <4 x float> splat (float 5.000000e-01)
  %i.av = fadd <4 x float> %i.as, %i.au           ; 2 uses
  %i.aw = fcmp oge <4 x float> %i.av, zeroinitializer
  %i.ax = select <4 x i1> %i.aw, <4 x float> %i.av, <4 x float> zeroinitializer ; 2 uses
  %i.ay = fcmp ogt <4 x float> %i.ax, splat (float 2.550000e+02)
  %i.az = select <4 x i1> %i.ay, <4 x float> splat (float 2.550000e+02), <4 x float> %i.ax
  %i.ba = fptoui <4 x float> %i.az to <4 x i8>
  store <4 x i8> %i.ba, ptr %next.gep144, align 1, !tbaa !23, !alias.scope !314, !noalias !311
  %index.next146 = add nuw i64 %index142, 4       ; 2 uses
  %i.bb = icmp eq i64 %index.next146, %n.vec140
  br i1 %i.bb, label %middle.block147, label %vector.body141, !llvm.loop !316

middle.block147:                                  ; preds = %vector.body141
  %cmp.n148 = icmp eq i64 %.015.lcssa.i.i, %n.vec140
  br i1 %cmp.n148, label %_ZN11OpenImageIO4v3_112convert_typeIfhEEvPKT_PT0_m.exit, label %.lr.ph74.i.i.preheader152

.lr.ph74.i.i.preheader152:                        ; preds = %vector.memcheck, %.lr.ph74.i.i.preheader, %middle.block147
  %.173.i.i.ph = phi ptr [ %.0.lcssa.i.i, %vector.memcheck ], [ %.0.lcssa.i.i, %.lr.ph74.i.i.preheader ], [ %i.ao, %middle.block147 ]
  %.11472.i.i.ph = phi ptr [ %.013.lcssa.i.i, %vector.memcheck ], [ %.013.lcssa.i.i, %.lr.ph74.i.i.preheader ], [ %i.ap, %middle.block147 ]
  %.11671.i.i.ph = phi i64 [ %.015.lcssa.i.i, %vector.memcheck ], [ %.015.lcssa.i.i, %.lr.ph74.i.i.preheader ], [ %i.aq, %middle.block147 ]
  br label %.lr.ph74.i.i

_ZN11OpenImageIO4v3_14simd5roundERKNS1_7vfloat4E.exit.i.i: ; preds = %bb.i, %_ZN11OpenImageIO4v3_14simd5roundERKNS1_7vfloat4E.exit.i.i
  %.067.i.i = phi ptr [ %i.cc, %_ZN11OpenImageIO4v3_14simd5roundERKNS1_7vfloat4E.exit.i.i ], [ %.151, %bb.i ] ; 2 uses
  %.01366.i.i = phi ptr [ %i.cd, %_ZN11OpenImageIO4v3_14simd5roundERKNS1_7vfloat4E.exit.i.i ], [ %3, %bb.i ] ; 2 uses
  %.01565.i.i = phi i64 [ %i.cb, %_ZN11OpenImageIO4v3_14simd5roundERKNS1_7vfloat4E.exit.i.i ], [ %i.ak, %bb.i ]
  %i.bc = load <4 x float>, ptr %.067.i.i, align 1, !tbaa !23
  %i.bd = fmul <4 x float> %i.bc, splat (float 2.550000e+02) ; 4 uses
  %i.be = extractelement <4 x float> %i.bd, i64 0
  %6 = call float @llvm.round.f32(float %i.be)
  %i.bf = extractelement <4 x float> %i.bd, i64 1
  %7 = call float @llvm.round.f32(float %i.bf)
  %8 = extractelement <4 x float> %i.bd, i64 2
  %i.bg = call float @llvm.round.f32(float %8)
  %9 = extractelement <4 x float> %i.bd, i64 3
  %i.bh = call float @llvm.round.f32(float %9)
  %i.bi = insertelement <2 x float> poison, float %6, i64 0
  %i.bj = insertelement <2 x float> %i.bi, float %i.bg, i64 1
  %i.bk = bitcast <2 x float> %i.bj to <2 x i32>
  %i.bl = insertelement <2 x float> poison, float %7, i64 0
  %i.bm = insertelement <2 x float> %i.bl, float %i.bh, i64 1
  %i.bn = bitcast <2 x float> %i.bm to <2 x i32>
  %i.bo = zext <2 x i32> %i.bn to <2 x i64>
  %i.bp = shl nuw <2 x i64> %i.bo, splat (i64 32)
  %i.bq = zext <2 x i32> %i.bk to <2 x i64>
  %i.br = or disjoint <2 x i64> %i.bp, %i.bq
  %i.bs = bitcast <2 x i64> %i.br to <4 x float>
  %i.bt = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> %i.bs)
  %i.bu = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float 2.550000e+02), <4 x float> %i.bt)
  %i.bv = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.bu)
  %i.bw = and <4 x i32> %i.bv, splat (i32 255)
  %i.bx = call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.bw, <4 x i32> poison)
  %i.by = call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.bx, <8 x i16> poison)
  %i.bz = bitcast <16 x i8> %i.by to <4 x float>
  %i.ca = extractelement <4 x float> %i.bz, i64 0
  store float %i.ca, ptr %.01366.i.i, align 1, !tbaa !23
  %i.cb = add i64 %.01565.i.i, -4                 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.067.i.i, i64 16 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.01366.i.i, i64 4 ; 2 uses
  %i.ce = icmp ugt i64 %i.cb, 3
  br i1 %i.ce, label %_ZN11OpenImageIO4v3_14simd5roundERKNS1_7vfloat4E.exit.i.i, label %.preheader.i.i, !llvm.loop !294

.lr.ph74.i.i:                                     ; preds = %.lr.ph74.i.i.preheader152, %.lr.ph74.i.i
  %.173.i.i = phi ptr [ %i.cg, %.lr.ph74.i.i ], [ %.173.i.i.ph, %.lr.ph74.i.i.preheader152 ] ; 2 uses
  %.11472.i.i = phi ptr [ %i.co, %.lr.ph74.i.i ], [ %.11472.i.i.ph, %.lr.ph74.i.i.preheader152 ] ; 2 uses
  %.11671.i.i = phi i64 [ %i.cf, %.lr.ph74.i.i ], [ %.11671.i.i.ph, %.lr.ph74.i.i.preheader152 ]
  %i.cf = add i64 %.11671.i.i, -1                 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.173.i.i, i64 4
  %i.ch = load float, ptr %.173.i.i, align 4, !tbaa !73
  %i.ci = fmul float %i.ch, 2.550000e+02          ; 2 uses
  %i.cj = fcmp olt float %i.ci, 0.000000e+00
  %i.ck = select i1 %i.cj, float -5.000000e-01, float 5.000000e-01
  %i.cl = fadd float %i.ci, %i.ck                 ; 2 uses
  %.inv.i.i.i = fcmp oge float %i.cl, 0.000000e+00
  %.0.i.i.i.i = select i1 %.inv.i.i.i, float %i.cl, float 0.000000e+00 ; 2 uses
  %i.cm = fcmp ogt float %.0.i.i.i.i, 2.550000e+02
  %.1.i.i.i.i = select i1 %i.cm, float 2.550000e+02, float %.0.i.i.i.i
  %i.cn = fptoui float %.1.i.i.i.i to i8
  %i.co = getelementptr inbounds nuw i8, ptr %.11472.i.i, i64 1
  store i8 %i.cn, ptr %.11472.i.i, align 1, !tbaa !23
  %.not.i.i54 = icmp eq i64 %i.cf, 0
  br i1 %.not.i.i54, label %_ZN11OpenImageIO4v3_112convert_typeIfhEEvPKT_PT0_m.exit, label %.lr.ph74.i.i, !llvm.loop !317

bb.j:                                             ; preds = %bb.h
  %i.cp = sext i32 %4 to i64                      ; 2 uses
  %i.cq = icmp ugt i32 %4, 3
  br i1 %i.cq, label %_ZN11OpenImageIO4v3_14simd5roundERKNS1_7vfloat4E.exit.i.i63, label %.preheader.i.i55

.preheader.i.i55:                                 ; preds = %_ZN11OpenImageIO4v3_14simd5roundERKNS1_7vfloat4E.exit.i.i63, %bb.j
  %.015.lcssa.i.i56 = phi i64 [ %i.cp, %bb.j ], [ %i.el, %_ZN11OpenImageIO4v3_14simd5roundERKNS1_7vfloat4E.exit.i.i63 ] ; 6 uses
  %.013.lcssa.i.i57 = phi ptr [ %3, %bb.j ], [ %i.en, %_ZN11OpenImageIO4v3_14simd5roundERKNS1_7vfloat4E.exit.i.i63 ] ; 3 uses
  %.0.lcssa.i.i58 = phi ptr [ %.151, %bb.j ], [ %i.em, %_ZN11OpenImageIO4v3_14simd5roundERKNS1_7vfloat4E.exit.i.i63 ] ; 3 uses
  %.not85.i.i = icmp eq i64 %.015.lcssa.i.i56, 0
  br i1 %.not85.i.i, label %_ZN11OpenImageIO4v3_112convert_typeIfhEEvPKT_PT0_m.exit, label %.lr.ph89.i.i.preheader

.lr.ph89.i.i.preheader:                           ; preds = %.preheader.i.i55
  %min.iters.check = icmp ult i64 %.015.lcssa.i.i56, 4
  br i1 %min.iters.check, label %.lr.ph89.i.i.preheader155, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph89.i.i.preheader
  %n.vec = and i64 %.015.lcssa.i.i56, -4          ; 4 uses
  %i.cr = shl i64 %n.vec, 2
  %i.cs = getelementptr i8, ptr %.0.lcssa.i.i58, i64 %i.cr
  %i.ct = shl i64 %n.vec, 1
  %i.cu = getelementptr i8, ptr %.013.lcssa.i.i57, i64 %i.ct
  %i.cv = and i64 %.015.lcssa.i.i56, 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cw = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.0.lcssa.i.i58, i64 %i.cw
  %i.cx = shl i64 %index, 1
  %next.gep132 = getelementptr i8, ptr %.013.lcssa.i.i57, i64 %i.cx
  %wide.load = load <4 x float>, ptr %next.gep, align 4, !tbaa !73
  %i.cy = fmul <4 x float> %wide.load, splat (float 6.553500e+04) ; 2 uses
  %i.cz = fcmp olt <4 x float> %i.cy, zeroinitializer
  %i.da = select <4 x i1> %i.cz, <4 x float> splat (float -5.000000e-01), <4 x float> splat (float 5.000000e-01)
  %i.db = fadd <4 x float> %i.cy, %i.da           ; 2 uses
  %i.dc = fcmp oge <4 x float> %i.db, zeroinitializer
  %i.dd = select <4 x i1> %i.dc, <4 x float> %i.db, <4 x float> zeroinitializer ; 2 uses
  %i.de = fcmp ogt <4 x float> %i.dd, splat (float 6.553500e+04)
  %i.df = select <4 x i1> %i.de, <4 x float> splat (float 6.553500e+04), <4 x float> %i.dd
  %i.dg = fptoui <4 x float> %i.df to <4 x i16>
  store <4 x i16> %i.dg, ptr %next.gep132, align 2, !tbaa !200
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dh = icmp eq i64 %index.next, %n.vec
  br i1 %i.dh, label %middle.block, label %vector.body, !llvm.loop !318

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.015.lcssa.i.i56, %n.vec
  br i1 %cmp.n, label %_ZN11OpenImageIO4v3_112convert_typeIfhEEvPKT_PT0_m.exit, label %.lr.ph89.i.i.preheader155

.lr.ph89.i.i.preheader155:                        ; preds = %.lr.ph89.i.i.preheader, %middle.block
  %.188.i.i.ph = phi ptr [ %.0.lcssa.i.i58, %.lr.ph89.i.i.preheader ], [ %i.cs, %middle.block ]
  %.11487.i.i.ph = phi ptr [ %.013.lcssa.i.i57, %.lr.ph89.i.i.preheader ], [ %i.cu, %middle.block ]
  %.11686.i.i.ph = phi i64 [ %.015.lcssa.i.i56, %.lr.ph89.i.i.preheader ], [ %i.cv, %middle.block ]
  br label %.lr.ph89.i.i

_ZN11OpenImageIO4v3_14simd5roundERKNS1_7vfloat4E.exit.i.i63: ; preds = %bb.j, %_ZN11OpenImageIO4v3_14simd5roundERKNS1_7vfloat4E.exit.i.i63
  %.082.i.i = phi ptr [ %i.em, %_ZN11OpenImageIO4v3_14simd5roundERKNS1_7vfloat4E.exit.i.i63 ], [ %.151, %bb.j ] ; 2 uses
  %.01381.i.i = phi ptr [ %i.en, %_ZN11OpenImageIO4v3_14simd5roundERKNS1_7vfloat4E.exit.i.i63 ], [ %3, %bb.j ] ; 2 uses
  %.01580.i.i = phi i64 [ %i.el, %_ZN11OpenImageIO4v3_14simd5roundERKNS1_7vfloat4E.exit.i.i63 ], [ %i.cp, %bb.j ]
  %i.di = load <4 x float>, ptr %.082.i.i, align 1, !tbaa !23
  %i.dj = fmul <4 x float> %i.di, splat (float 6.553500e+04) ; 4 uses
  %i.dk = extractelement <4 x float> %i.dj, i64 0
  %10 = call float @llvm.round.f32(float %i.dk)
  %i.dl = extractelement <4 x float> %i.dj, i64 1
  %11 = call float @llvm.round.f32(float %i.dl)
  %12 = extractelement <4 x float> %i.dj, i64 2
  %i.dm = call float @llvm.round.f32(float %12)
  %13 = extractelement <4 x float> %i.dj, i64 3
  %i.dn = call float @llvm.round.f32(float %13)
  %i.do = insertelement <2 x float> poison, float %10, i64 0
  %i.dp = insertelement <2 x float> %i.do, float %i.dm, i64 1
  %i.dq = bitcast <2 x float> %i.dp to <2 x i32>
  %i.dr = insertelement <2 x float> poison, float %11, i64 0
  %i.ds = insertelement <2 x float> %i.dr, float %i.dn, i64 1
  %i.dt = bitcast <2 x float> %i.ds to <2 x i32>
  %i.du = zext <2 x i32> %i.dt to <2 x i64>
  %i.dv = shl nuw <2 x i64> %i.du, splat (i64 32)
  %i.dw = zext <2 x i32> %i.dq to <2 x i64>
  %i.dx = or disjoint <2 x i64> %i.dv, %i.dw
  %i.dy = bitcast <2 x i64> %i.dx to <4 x float>
  %i.dz = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> %i.dy)
  %i.ea = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float 6.553500e+04), <4 x float> %i.dz)
  %i.eb = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.ea)
  %i.ec = bitcast <4 x i32> %i.eb to <8 x i16>
  %i.ed = and <8 x i16> %i.ec, <i16 -1, i16 0, i16 -1, i16 poison, i16 -1, i16 0, i16 -1, i16 poison>
  %i.ee = shufflevector <8 x i16> %i.ed, <8 x i16> poison, <8 x i32> <i32 0, i32 2, i32 1, i32 1, i32 5, i32 5, i32 4, i32 6> ; 2 uses
  %i.ef = bitcast <8 x i16> %i.ee to <2 x i64>
  %i.eg = bitcast <8 x i16> %i.ee to <2 x i64>
  %i.eh = shufflevector <2 x i64> %i.eg, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %i.ei = or <2 x i64> %i.eh, %i.ef
  %i.ej = bitcast <2 x i64> %i.ei to <2 x double>
  %i.ek = extractelement <2 x double> %i.ej, i64 0
  store double %i.ek, ptr %.01381.i.i, align 1, !tbaa !23
  %i.el = add i64 %.01580.i.i, -4                 ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.082.i.i, i64 16 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.01381.i.i, i64 8 ; 2 uses
  %i.eo = icmp ugt i64 %i.el, 3
  br i1 %i.eo, label %_ZN11OpenImageIO4v3_14simd5roundERKNS1_7vfloat4E.exit.i.i63, label %.preheader.i.i55, !llvm.loop !295

.lr.ph89.i.i:                                     ; preds = %.lr.ph89.i.i.preheader155, %.lr.ph89.i.i
  %.188.i.i = phi ptr [ %i.eq, %.lr.ph89.i.i ], [ %.188.i.i.ph, %.lr.ph89.i.i.preheader155 ] ; 2 uses
  %.11487.i.i = phi ptr [ %i.ey, %.lr.ph89.i.i ], [ %.11487.i.i.ph, %.lr.ph89.i.i.preheader155 ] ; 2 uses
  %.11686.i.i = phi i64 [ %i.ep, %.lr.ph89.i.i ], [ %.11686.i.i.ph, %.lr.ph89.i.i.preheader155 ]
  %i.ep = add i64 %.11686.i.i, -1                 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.188.i.i, i64 4
  %i.er = load float, ptr %.188.i.i, align 4, !tbaa !73
  %i.es = fmul float %i.er, 6.553500e+04          ; 2 uses
  %i.et = fcmp olt float %i.es, 0.000000e+00
  %i.eu = select i1 %i.et, float -5.000000e-01, float 5.000000e-01
  %i.ev = fadd float %i.es, %i.eu                 ; 2 uses
  %.inv.i.i.i59 = fcmp oge float %i.ev, 0.000000e+00
  %.0.i.i.i.i60 = select i1 %.inv.i.i.i59, float %i.ev, float 0.000000e+00 ; 2 uses
  %i.ew = fcmp ogt float %.0.i.i.i.i60, 6.553500e+04
  %.1.i.i.i.i61 = select i1 %i.ew, float 6.553500e+04, float %.0.i.i.i.i60
  %i.ex = fptoui float %.1.i.i.i.i61 to i16
  %i.ey = getelementptr inbounds nuw i8, ptr %.11487.i.i, i64 2
  store i16 %i.ex, ptr %.11487.i.i, align 2, !tbaa !200
  %.not.i.i62 = icmp eq i64 %i.ep, 0
  br i1 %.not.i.i62, label %_ZN11OpenImageIO4v3_112convert_typeIfhEEvPKT_PT0_m.exit, label %.lr.ph89.i.i, !llvm.loop !319

bb.k:                                             ; preds = %bb.h
  %i.ez = sext i32 %4 to i64
  invoke void @_ZN11OpenImageIO4v3_112convert_typeIfN9Imath_3_14halfEEEvPKT_PT0_mS7_S7_(ptr noundef %.151, ptr noundef %3, i64 noundef %i.ez, i16 1024, i16 31743)
          to label %_ZN11OpenImageIO4v3_112convert_typeIfhEEvPKT_PT0_m.exit unwind label %bb.g

bb.l:                                             ; preds = %bb.h
  %i.fa = sext i32 %4 to i64
  invoke void @_ZN11OpenImageIO4v3_112convert_typeIfcEEvPKT_PT0_mS5_S5_(ptr noundef %.151, ptr noundef %3, i64 noundef %i.fa, i8 noundef signext -128, i8 noundef signext 127)
          to label %_ZN11OpenImageIO4v3_112convert_typeIfhEEvPKT_PT0_m.exit unwind label %bb.g

bb.m:                                             ; preds = %bb.h
  %i.fb = sext i32 %4 to i64
  invoke void @_ZN11OpenImageIO4v3_112convert_typeIfsEEvPKT_PT0_mS5_S5_(ptr noundef %.151, ptr noundef %3, i64 noundef %i.fb, i16 noundef signext -32768, i16 noundef signext 32767)
          to label %_ZN11OpenImageIO4v3_112convert_typeIfhEEvPKT_PT0_m.exit unwind label %bb.g

bb.n:                                             ; preds = %bb.h
  %i.fc = sext i32 %4 to i64
  invoke void @_ZN11OpenImageIO4v3_112convert_typeIfiEEvPKT_PT0_mS5_S5_(ptr noundef %.151, ptr noundef %3, i64 noundef %i.fc, i32 noundef -2147483648, i32 noundef 2147483647)
          to label %_ZN11OpenImageIO4v3_112convert_typeIfhEEvPKT_PT0_m.exit unwind label %bb.g

bb.o:                                             ; preds = %bb.h
  %i.fd = sext i32 %4 to i64
  invoke void @_ZN11OpenImageIO4v3_112convert_typeIfjEEvPKT_PT0_mS5_S5_(ptr noundef %.151, ptr noundef %3, i64 noundef %i.fd, i32 noundef 0, i32 noundef -1)
          to label %_ZN11OpenImageIO4v3_112convert_typeIfhEEvPKT_PT0_m.exit unwind label %bb.g

bb.p:                                             ; preds = %bb.h
  %i.fe = sext i32 %4 to i64
  invoke void @_ZN11OpenImageIO4v3_112convert_typeIfxEEvPKT_PT0_mS5_S5_(ptr noundef %.151, ptr noundef %3, i64 noundef %i.fe, i64 noundef -9223372036854775808, i64 noundef 9223372036854775807)
          to label %_ZN11OpenImageIO4v3_112convert_typeIfhEEvPKT_PT0_m.exit unwind label %bb.g

bb.q:                                             ; preds = %bb.h
  %i.ff = sext i32 %4 to i64
  invoke void @_ZN11OpenImageIO4v3_112convert_typeIfyEEvPKT_PT0_mS5_S5_(ptr noundef %.151, ptr noundef %3, i64 noundef %i.ff, i64 noundef 0, i64 noundef -1)
          to label %_ZN11OpenImageIO4v3_112convert_typeIfhEEvPKT_PT0_m.exit unwind label %bb.g

bb.r:                                             ; preds = %bb.h
  %i.fg = sext i32 %4 to i64
  call void @_ZN11OpenImageIO4v3_112convert_typeIfdEEvPKT_PT0_mS5_S5_(ptr noundef %.151, ptr noundef %3, i64 noundef %i.fg, double noundef f0x0010000000000000, double noundef f0x7FEFFFFFFFFFFFFF)
  br label %_ZN11OpenImageIO4v3_112convert_typeIfhEEvPKT_PT0_m.exit

_ZN11OpenImageIO4v3_112convert_typeIfhEEvPKT_PT0_m.exit: ; preds = %.lr.ph89.i.i, %.lr.ph74.i.i, %middle.block, %middle.block147, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %.preheader.i.i55, %.preheader.i.i, %bb.r, %bb.h
  %.0 = phi i1 [ false, %bb.h ], [ true, %bb.r ], [ true, %bb.p ], [ true, %bb.o ], [ true, %bb.n ], [ true, %bb.m ], [ true, %bb.l ], [ true, %bb.k ], [ true, %middle.block147 ], [ true, %bb.q ], [ true, %.preheader.i.i ], [ true, %.preheader.i.i55 ], [ true, %middle.block ], [ true, %.lr.ph74.i.i ], [ true, %.lr.ph89.i.i ] ; 2 uses
  %.not.i66 = icmp eq ptr %.sroa.0.2, null
  br i1 %.not.i66, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit68, label %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i67

_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i67: ; preds = %_ZN11OpenImageIO4v3_112convert_typeIfhEEvPKT_PT0_m.exit
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0.2) #40
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit68

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit68: ; preds = %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i67, %_ZN11OpenImageIO4v3_112convert_typeIfhEEvPKT_PT0_m.exit, %bb.c, %bb.a
  %.1 = phi i1 [ true, %bb.a ], [ true, %bb.c ], [ %.0, %_ZN11OpenImageIO4v3_112convert_typeIfhEEvPKT_PT0_m.exit ], [ %.0, %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i67 ]
  ret i1 %.1
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN11OpenImageIO4v3_113convert_imageEiiiiPKvNS0_8TypeDescElllPvS3_lll(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i64 %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, ptr noundef %9, i64 %10, i64 noundef %11, i64 noundef %12, i64 noundef %13) local_unnamed_addr #2 {
bb.a:
  %14 = alloca %"struct.OpenImageIO::v3_1::TypeDesc", align 8 ; 4 uses
  %15 = alloca %"struct.OpenImageIO::v3_1::TypeDesc", align 8 ; 4 uses
  %16 = alloca %"struct.OpenImageIO::v3_1::TypeDesc", align 8 ; 7 uses
  %17 = alloca %"struct.OpenImageIO::v3_1::TypeDesc", align 8 ; 4 uses
  store i64 %5, ptr %16, align 8
  store i64 %10, ptr %17, align 8
  %i.a = trunc i64 %5 to i8
  %i.b = trunc i64 %10 to i8
  %i.c = icmp eq i8 %i.a, %i.b
  %i.d = lshr i64 %5, 8                           ; 3 uses
  %i.e = lshr i64 %10, 8                          ; 3 uses
  %i.f = lshr i64 %5, 16
  %i.g = trunc i64 %i.f to i8
  %i.h = lshr i64 %10, 16
  %i.i = trunc i64 %i.h to i8
  %i.j = lshr i64 %5, 32                          ; 2 uses
  %i.k = trunc nuw i64 %i.j to i32                ; 2 uses
  %i.l = lshr i64 %10, 32                         ; 2 uses
  %i.m = trunc nuw i64 %i.l to i32                ; 2 uses
  %i.n = trunc i64 %i.d to i8
  %i.o = trunc i64 %i.e to i8
  %i.p = icmp eq i8 %i.n, %i.o
  %or.cond = and i1 %i.c, %i.p
  %i.q = icmp eq i8 %i.g, %i.i
  %or.cond151 = and i1 %or.cond, %i.q
  %i.r = icmp eq i64 %i.j, %i.l
  %or.cond152 = and i1 %or.cond151, %i.r
  br i1 %or.cond152, label %bb.b, label %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit.thread

bb.b:                                             ; preds = %bb.a
  %narrow.i = tail call i32 @llvm.smax.i32(i32 %i.k, i32 1)
  %spec.select.i = zext nneg i32 %narrow.i to i64
  %i.s = and i64 %i.d, 255
  %i.t = call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %16) #39
  %i.u = sext i32 %0 to i64                       ; 2 uses
  %i.v = mul nsw i64 %i.s, %i.u
  %i.w = mul i64 %i.v, %i.t
  %i.x = mul i64 %i.w, %spec.select.i             ; 9 uses
  %i.y = icmp eq i64 %6, -9223372036854775808
  %i.z = srem i64 %i.x, %i.u
  %i.aa = sub nsw i64 %i.x, %i.z                  ; 2 uses
  %spec.select.i54 = select i1 %i.y, i64 %i.aa, i64 %6 ; 8 uses
  %i.ab = icmp eq i64 %7, -9223372036854775808
  %i.ac = sext i32 %1 to i64                      ; 3 uses
  %i.ad = mul nsw i64 %spec.select.i54, %i.ac
  %.058.i = select i1 %i.ab, i64 %i.ad, i64 %7    ; 5 uses
  %i.ae = icmp eq i64 %8, -9223372036854775808
  %i.af = sext i32 %2 to i64                      ; 2 uses
  %i.ag = mul nsw i64 %.058.i, %i.af
  %.057.i = select i1 %i.ae, i64 %i.ag, i64 %8    ; 2 uses
  %i.ah = icmp eq i64 %11, -9223372036854775808
  %.056.i = select i1 %i.ah, i64 %i.aa, i64 %11   ; 7 uses
  %i.ai = icmp eq i64 %12, -9223372036854775808
  %i.aj = mul nsw i64 %.056.i, %i.ac
  %.055.i = select i1 %i.ai, i64 %i.aj, i64 %12   ; 5 uses
  %i.ak = icmp eq i64 %13, -9223372036854775808
  %i.al = mul nsw i64 %.055.i, %i.af
  %.054.i = select i1 %i.ak, i64 %i.al, i64 %13   ; 2 uses
  %i.am = icmp eq i64 %spec.select.i54, %.056.i
  %i.an = icmp eq i64 %spec.select.i54, %i.x
  %i.ao = and i1 %i.am, %i.an
  %i.ap = icmp sgt i32 %3, 0
  br i1 %i.ap, label %.preheader61.lr.ph.i, label %_ZN11OpenImageIO4v3_110copy_imageEiiiiPKvllllPvlll.exit

.preheader61.lr.ph.i:                             ; preds = %bb.b
  %i.aq = icmp sgt i32 %2, 0
  %i.ar = icmp sgt i32 %1, 0
  %i.as = mul nsw i64 %i.x, %i.ac                 ; 3 uses
  br i1 %i.aq, label %.preheader61.lr.ph.split.us.i, label %_ZN11OpenImageIO4v3_110copy_imageEiiiiPKvllllPvlll.exit

.preheader61.lr.ph.split.us.i:                    ; preds = %.preheader61.lr.ph.i
  br i1 %i.ao, label %.preheader61.us.us.preheader.i, label %.preheader61.lr.ph.split.us.split.i

.preheader61.us.us.preheader.i:                   ; preds = %.preheader61.lr.ph.split.us.i
  %wide.trip.count96.i = zext nneg i32 %3 to i64
  %wide.trip.count91.i = zext nneg i32 %2 to i64  ; 2 uses
  %xtraiter163 = and i64 %wide.trip.count91.i, 1
  %i.at = icmp eq i32 %2, 1
  %unroll_iter167 = and i64 %wide.trip.count91.i, 2147483646
  %lcmp.mod165.not = icmp eq i64 %xtraiter163, 0
  %lcmp.mod166 = trunc i32 %2 to i1
  br label %.preheader61.us.us.i

.preheader61.us.us.i:                             ; preds = %._crit_edge.split.us.us.us.i, %.preheader61.us.us.preheader.i
  %indvars.iv93.i = phi i64 [ 0, %.preheader61.us.us.preheader.i ], [ %indvars.iv.next94.i, %._crit_edge.split.us.us.us.i ] ; 3 uses
  %i.au = mul nsw i64 %indvars.iv93.i, %.057.i
  %i.av = getelementptr i8, ptr %4, i64 %i.au     ; 3 uses
  %i.aw = mul nsw i64 %indvars.iv93.i, %.054.i
  %i.ax = getelementptr i8, ptr %9, i64 %i.aw     ; 3 uses
  br i1 %i.at, label %.epil.preheader162, label %.preheader61.us.us.i.new

.preheader61.us.us.i.new:                         ; preds = %.preheader61.us.us.i, %.preheader61.us.us.i.new
  %indvars.iv88.i = phi i64 [ %indvars.iv.next89.i.1, %.preheader61.us.us.i.new ], [ 0, %.preheader61.us.us.i ] ; 4 uses
  %niter168 = phi i64 [ %niter168.next.1, %.preheader61.us.us.i.new ], [ 0, %.preheader61.us.us.i ]
end_hunk_0
