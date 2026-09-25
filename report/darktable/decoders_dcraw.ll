Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/decoders_dcraw?download=true
inline.NumInlined: 144
inline.NumDeleted: 63
loop-unroll.NumCompletelyUnrolled: 54
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 64
begin_hunk_0_@_ZN6LibRaw19canon_sraw_load_rawEv:bb.a
  unreachable
}

; Function Attrs: nounwind
declare i32 @__isoc23_sscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw10ljpeg_idctEP5jhead(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [3 x [8 x [8 x float]]], align 16 ; 87 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.b = load float, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, align 512, !tbaa !141
  %i.c = fcmp reassoc nsz arcp contract afn une float %i.b, 0.000000e+00
  br i1 %i.c, label %.loopexit, label %vector.body

vector.body:                                      ; preds = %bb.a, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %bb.a ] ; 2 uses
  %vec.ind = phi <8 x i32> [ %vec.ind.next, %vector.body ], [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %bb.a ] ; 2 uses
  %i.d = and <8 x i32> %vec.ind, splat (i32 31)
  %i.e = uitofp nneg <8 x i32> %i.d to <8 x double>
  %i.f = fmul reassoc nnan nsz arcp contract afn <8 x double> %i.e, splat (double f0x3FC921FB54442D18)
  %i.g = tail call reassoc nsz arcp contract afn <8 x double> @llvm.cos.v8f64(<8 x double> %i.f)
  %i.h = fmul reassoc nnan nsz arcp contract afn <8 x double> %i.g, splat (double 5.000000e-01)
  %i.i = fptrunc reassoc nsz arcp contract afn <8 x double> %i.h to <8 x float>
  %i.j = getelementptr inbounds nuw [4 x i8], ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 %index
  store <8 x float> %i.i, ptr %i.j, align 32, !tbaa !141
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 8)
  %i.k = icmp eq i64 %index.next, 104
  br i1 %i.k, label %.preheader80, label %vector.body, !llvm.loop !198

.preheader80:                                     ; preds = %vector.body
  store float f0x240D3132, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 416), align 32, !tbaa !141
  store float f0xBDC7C5C2, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 420), align 4, !tbaa !141
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader80, %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(768) %i.a, i8 0, i64 768, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !101  ; 3 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.loopexit
  %i.n = tail call ptr @__cxa_allocate_exception(i64 4) #14 ; 2 uses
  store i32 5, ptr %i.n, align 16, !tbaa !134
  tail call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #15
  unreachable

bb.c:                                             ; preds = %.loopexit
  %i.o = load i16, ptr %i.m, align 2, !tbaa !97
  %i.p = zext i16 %i.o to i32
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  %i.r = tail call noundef i32 @_ZN6LibRaw10getbithuffEiPt(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.p, ptr noundef nonnull readonly %i.q) ; 4 uses
  %i.s = icmp eq i32 %i.r, 16
  br i1 %i.s, label %bb.d, label %.split.i

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 532
  %i.u = load i32, ptr %i.t, align 4, !tbaa !126
  %i.v = add i32 %i.u, -16842752
  %or.cond.i = icmp ult i32 %i.v, -16842751
  br i1 %or.cond.i, label %_ZN6LibRaw10ljpeg_diffEPt.exit, label %.split.i

.split.i:                                         ; preds = %bb.d, %bb.c
  %i.w = tail call noundef i32 @_ZN6LibRaw10getbithuffEiPt(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.r, ptr noundef null) ; 2 uses
  %i.x = add nsw i32 %i.r, -1
  %i.y = shl nuw i32 1, %i.x
  %i.z = and i32 %i.w, %i.y
  %i.aa = icmp eq i32 %i.z, 0
  %notmask.i = shl nsw i32 -1, %i.r
  %.neg.i = add nsw i32 %notmask.i, 1
  %i.ab = select i1 %i.aa, i32 %.neg.i, i32 0
  %.0.i = add nsw i32 %i.ab, %i.w
  br label %_ZN6LibRaw10ljpeg_diffEPt.exit

_ZN6LibRaw10ljpeg_diffEPt.exit:                   ; preds = %bb.d, %.split.i
  %.011.i = phi i32 [ %.0.i, %.split.i ], [ -32768, %bb.d ]
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ad = load i16, ptr %i.ac, align 8, !tbaa !97
  %i.ae = zext i16 %i.ad to i32
  %i.af = mul nsw i32 %.011.i, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !120
  %i.ai = add nsw i32 %i.af, %i.ah                ; 2 uses
  store i32 %i.ai, ptr %i.ag, align 8, !tbaa !120
  %i.aj = sitofp reassoc nsz arcp contract afn i32 %i.ai to float
  store float %i.aj, ptr %i.a, align 16, !tbaa !141
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 440
  br label %bb.e

bb.e:                                             ; preds = %_ZN6LibRaw10ljpeg_diffEPt.exit, %bb.f
  %.06482 = phi i32 [ 1, %_ZN6LibRaw10ljpeg_diffEPt.exit ], [ %i.bl, %bb.f ]
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !101 ; 2 uses
  %i.am = load i16, ptr %i.al, align 2, !tbaa !97
  %i.an = zext i16 %i.am to i32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 2
  %i.ap = tail call noundef i32 @_ZN6LibRaw10getbithuffEiPt(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.an, ptr noundef nonnull %i.ao) ; 3 uses
  %i.aq = and i32 %i.ap, 15                       ; 4 uses
  %i.ar = icmp eq i32 %i.aq, 0
  %i.as = icmp samesign ult i32 %i.ap, 240
  %or.cond = select i1 %i.ar, i1 %i.as, i1 false
  br i1 %or.cond, label %.preheader79.preheader, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.at = lshr i32 %i.ap, 4
  %i.au = add nsw i32 %i.at, %.06482              ; 3 uses
  %i.av = tail call noundef i32 @_ZN6LibRaw10getbithuffEiPt(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.aq, ptr noundef null) ; 2 uses
  %i.aw = add nsw i32 %i.aq, -1
  %i.ax = shl nuw nsw i32 1, %i.aw
  %i.ay = and i32 %i.av, %i.ax
  %i.az = icmp eq i32 %i.ay, 0
  %notmask = shl nsw i32 -1, %i.aq
  %.neg = add nsw i32 %notmask, 1
  %i.ba = select i1 %i.az, i32 %.neg, i32 0
  %.0 = add nsw i32 %i.ba, %i.av
  %i.bb = zext nneg i32 %i.au to i64              ; 2 uses
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.ac, i64 %i.bb
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !97
  %i.be = zext i16 %i.bd to i32
  %i.bf = mul nsw i32 %.0, %i.be
  %i.bg = sitofp reassoc nsz arcp contract afn i32 %i.bf to float
  %i.bh = getelementptr inbounds nuw i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE6zigzag, i64 %i.bb
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !99
  %i.bj = zext i8 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bj
  store float %i.bg, ptr %i.bk, align 4, !tbaa !141
  %i.bl = add nuw nsw i32 %i.au, 1
  %i.bm = icmp slt i32 %i.au, 63
  br i1 %i.bm, label %bb.e, label %.preheader79.preheader, !llvm.loop !199

.preheader79.preheader:                           ; preds = %bb.e, %bb.f
  %i.bn = load <8 x float>, ptr %i.a, align 16, !tbaa !141
  %i.bo = fmul reassoc nsz arcp contract afn <8 x float> %i.bn, <float f0x3EFFFFFF, float f0x3F3504F3, float f0x3F3504F3, float f0x3F3504F3, float f0x3F3504F3, float f0x3F3504F3, float f0x3F3504F3, float f0x3F3504F3>
  store <8 x float> %i.bo, ptr %i.a, align 16, !tbaa !141
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.bq = load float, ptr %i.bp, align 16, !tbaa !141
  %i.br = fmul reassoc nsz arcp contract afn float %i.bq, f0x3F3504F3
  store float %i.br, ptr %i.bp, align 16, !tbaa !141
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  %i.bt = load float, ptr %i.bs, align 16, !tbaa !141
  %i.bu = fmul reassoc nsz arcp contract afn float %i.bt, f0x3F3504F3
  store float %i.bu, ptr %i.bs, align 16, !tbaa !141
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 96 ; 2 uses
  %i.bw = load float, ptr %i.bv, align 16, !tbaa !141
  %i.bx = fmul reassoc nsz arcp contract afn float %i.bw, f0x3F3504F3
  store float %i.bx, ptr %i.bv, align 16, !tbaa !141
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 128 ; 2 uses
  %i.bz = load float, ptr %i.by, align 16, !tbaa !141
  %i.ca = fmul reassoc nsz arcp contract afn float %i.bz, f0x3F3504F3
  store float %i.ca, ptr %i.by, align 16, !tbaa !141
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 160 ; 2 uses
  %i.cc = load float, ptr %i.cb, align 16, !tbaa !141
  %i.cd = fmul reassoc nsz arcp contract afn float %i.cc, f0x3F3504F3
  store float %i.cd, ptr %i.cb, align 16, !tbaa !141
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 192 ; 2 uses
  %i.cf = load float, ptr %i.ce, align 16, !tbaa !141
  %i.cg = fmul reassoc nsz arcp contract afn float %i.cf, f0x3F3504F3
  store float %i.cg, ptr %i.ce, align 16, !tbaa !141
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 224 ; 2 uses
  %i.ci = load float, ptr %i.ch, align 16, !tbaa !141
  %i.cj = fmul reassoc nsz arcp contract afn float %i.ci, f0x3F3504F3
  store float %i.cj, ptr %i.ch, align 16, !tbaa !141
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 256 ; 9 uses
  %.pre = load float, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, align 512, !tbaa !141 ; 9 uses
  %.pre130 = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 60), align 4, !tbaa !141
  %i.cl = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 364), align 4, !tbaa !141
  %i.cm = load <7 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 4), align 4, !tbaa !141 ; 2 uses
  %i.cn = load <13 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 8), align 8, !tbaa !141
  %i.co = load <13 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 72), align 8, !tbaa !141
  %i.cp = load <91 x float>, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, align 512, !tbaa !141 ; 7 uses
  %i.cq = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 420), align 4, !tbaa !141
  %i.cr = shufflevector <91 x float> %i.cp, <91 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 9, i32 11, i32 13, i32 15>
  %i.cs = shufflevector <7 x float> %i.cm, <7 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ct = shufflevector <8 x float> %i.cs, <8 x float> %i.cr, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15> ; 3 uses
  %i.cu = shufflevector <13 x float> %i.cn, <13 x float> %i.co, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 13, i32 17, i32 21, i32 25> ; 2 uses
  %i.cv = shufflevector <8 x float> %i.ct, <8 x float> poison, <91 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 4, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cw = shufflevector <91 x float> %i.cv, <91 x float> %i.cp, <8 x i32> <i32 1, i32 4, i32 poison, i32 112, i32 118, i32 124, i32 130, i32 136>
  %i.cx = shufflevector <91 x float> %i.cp, <91 x float> poison, <8 x i32> <i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60>
  %i.cy = shufflevector <8 x float> %i.cu, <8 x float> poison, <91 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 4, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cz = shufflevector <91 x float> %i.cy, <91 x float> %i.cp, <8 x i32> <i32 1, i32 4, i32 121, i32 133, i32 145, i32 157, i32 169, i32 181>
  %i.da = insertelement <8 x float> poison, float %i.cl, i64 6
  %i.db = insertelement <8 x float> %i.da, float %i.cq, i64 7
  %i.dc = shufflevector <91 x float> %i.cp, <91 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 25, i32 35, i32 poison, i32 55, i32 65, i32 75>
  %i.dd = shufflevector <7 x float> %i.cm, <7 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 6, i32 poison>
  %i.de = shufflevector <8 x float> %i.db, <8 x float> %i.dd, <8 x i32> <i32 14, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 6, i32 7>
  %i.df = shufflevector <91 x float> %i.cp, <91 x float> poison, <8 x i32> <i32 poison, i32 21, i32 35, i32 49, i32 63, i32 77, i32 poison, i32 poison>
  %i.dg = shufflevector <8 x float> %i.de, <8 x float> %i.df, <8 x i32> <i32 0, i32 9, i32 10, i32 11, i32 12, i32 13, i32 6, i32 7>
  %i.dh = insertelement <3 x float> poison, float %.pre, i64 0
  %i.di = shufflevector <3 x float> %i.dh, <3 x float> poison, <91 x i32> <i32 0, i32 poison, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dj = shufflevector <91 x float> %i.di, <91 x float> %i.cp, <3 x i32> <i32 0, i32 91, i32 2>
  %i.dk = insertelement <8 x float> %i.cw, float %.pre130, i64 2 ; 2 uses
  %i.dl = shufflevector <8 x float> %i.ct, <8 x float> %i.dk, <8 x i32> <i32 2, i32 10, i32 poison, i32 poison, i32 15, i32 poison, i32 poison, i32 poison>
  %i.dm = shufflevector <8 x float> %i.dl, <8 x float> %i.dc, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 13, i32 14, i32 15>
  br label %.preheader77

.preheader77:                                     ; preds = %.preheader79.preheader, %.preheader77
  %indvars.iv110 = phi i64 [ 0, %.preheader79.preheader ], [ %indvars.iv.next111, %.preheader77 ] ; 3 uses
  %i.dn = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %indvars.iv110 ; 9 uses
  %i.do = getelementptr inbounds nuw [32 x i8], ptr %i.ck, i64 %indvars.iv110 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dn, i64 12
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dn, i64 20
  %i.du = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dn, i64 28
  %i.dw = load float, ptr %i.dn, align 16, !tbaa !141 ; 2 uses
  %i.dx = load <8 x float>, ptr %i.dn, align 16, !tbaa !141 ; 8 uses
  %i.dy = shufflevector <8 x float> %i.dx, <8 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.dz = insertelement <3 x float> %i.dy, float %i.dw, i64 1
  %i.ea = insertelement <3 x float> %i.dz, float %i.dw, i64 2
  %i.eb = fmul reassoc nsz arcp contract afn <3 x float> %i.dj, %i.ea
  %i.ec = shufflevector <3 x float> %i.eb, <3 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 2, i32 2>
  %i.ed = load float, ptr %i.dp, align 4, !tbaa !141 ; 2 uses
  %i.ee = load float, ptr %i.dq, align 8, !tbaa !141 ; 2 uses
  %i.ef = load float, ptr %i.dr, align 4, !tbaa !141 ; 2 uses
  %i.eg = load float, ptr %i.ds, align 16, !tbaa !141 ; 2 uses
  %i.eh = load float, ptr %i.dt, align 4, !tbaa !141 ; 2 uses
  %i.ei = load <8 x float>, ptr %i.do, align 16, !tbaa !141
  %i.ej = fadd reassoc nsz arcp contract afn <8 x float> %i.ei, %i.ec
  %i.ek = shufflevector <8 x float> %i.dx, <8 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.el = insertelement <8 x float> %i.ek, float %i.ed, i64 3
  %i.em = insertelement <8 x float> %i.el, float %i.ed, i64 6
  %i.en = shufflevector <8 x float> %i.em, <8 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 3, i32 3, i32 6, i32 6>
  %i.eo = fmul reassoc nsz arcp contract afn <8 x float> %i.ct, %i.en
  %i.ep = fadd reassoc nsz arcp contract afn <8 x float> %i.ej, %i.eo
  %i.eq = shufflevector <8 x float> %i.dx, <8 x float> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.er = insertelement <8 x float> %i.eq, float %i.ee, i64 3
  %i.es = insertelement <8 x float> %i.er, float %i.ee, i64 6
  %i.et = shufflevector <8 x float> %i.es, <8 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 3, i32 3, i32 6, i32 6>
  %i.eu = fmul reassoc nsz arcp contract afn <8 x float> %i.cu, %i.et
  %i.ev = fadd reassoc nsz arcp contract afn <8 x float> %i.ep, %i.eu
  %i.ew = shufflevector <8 x float> %i.dx, <8 x float> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ex = insertelement <8 x float> %i.ew, float %i.ef, i64 3
  %i.ey = insertelement <8 x float> %i.ex, float %i.ef, i64 6
  %i.ez = shufflevector <8 x float> %i.ey, <8 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 3, i32 3, i32 6, i32 6>
  %i.fa = fmul reassoc nsz arcp contract afn <8 x float> %i.dk, %i.ez
  %i.fb = fadd reassoc nsz arcp contract afn <8 x float> %i.ev, %i.fa
  %i.fc = shufflevector <8 x float> %i.dx, <8 x float> poison, <8 x i32> <i32 4, i32 4, i32 4, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fd = insertelement <8 x float> %i.fc, float %i.eg, i64 3
  %i.fe = insertelement <8 x float> %i.fd, float %i.eg, i64 6
  %i.ff = shufflevector <8 x float> %i.fe, <8 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 3, i32 3, i32 6, i32 6>
  %i.fg = fmul reassoc nsz arcp contract afn <8 x float> %i.cx, %i.ff
  %i.fh = fadd reassoc nsz arcp contract afn <8 x float> %i.fb, %i.fg
  %i.fi = shufflevector <8 x float> %i.dx, <8 x float> poison, <8 x i32> <i32 5, i32 5, i32 5, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fj = insertelement <8 x float> %i.fi, float %i.eh, i64 3
  %i.fk = insertelement <8 x float> %i.fj, float %i.eh, i64 6
  %i.fl = shufflevector <8 x float> %i.fk, <8 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 3, i32 3, i32 6, i32 6>
  %i.fm = fmul reassoc nsz arcp contract afn <8 x float> %i.dm, %i.fl
  %i.fn = fadd reassoc nsz arcp contract afn <8 x float> %i.fh, %i.fm
  %i.fo = load float, ptr %i.du, align 8, !tbaa !141 ; 2 uses
  %i.fp = shufflevector <8 x float> %i.dx, <8 x float> poison, <8 x i32> <i32 6, i32 6, i32 6, i32 6, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fq = insertelement <8 x float> %i.fp, float %i.fo, i64 4
  %i.fr = insertelement <8 x float> %i.fq, float %i.fo, i64 7
  %i.fs = shufflevector <8 x float> %i.fr, <8 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 4, i32 4, i32 7>
  %i.ft = fmul reassoc nsz arcp contract afn <8 x float> %i.cz, %i.fs
  %i.fu = fadd reassoc nsz arcp contract afn <8 x float> %i.fn, %i.ft
  %i.fv = load float, ptr %i.dv, align 4, !tbaa !141 ; 2 uses
  %i.fw = shufflevector <8 x float> %i.dx, <8 x float> poison, <8 x i32> <i32 7, i32 7, i32 7, i32 7, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fx = insertelement <8 x float> %i.fw, float %i.fv, i64 4
  %i.fy = insertelement <8 x float> %i.fx, float %i.fv, i64 7
  %i.fz = shufflevector <8 x float> %i.fy, <8 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 4, i32 4, i32 7>
  %i.ga = fmul reassoc nsz arcp contract afn <8 x float> %i.dg, %i.fz
  %i.gb = fadd reassoc nsz arcp contract afn <8 x float> %i.fu, %i.ga
  store <8 x float> %i.gb, ptr %i.do, align 16, !tbaa !141
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1 ; 2 uses
  %exitcond113.not = icmp eq i64 %indvars.iv.next111, 8
  br i1 %exitcond113.not, label %.preheader75, label %.preheader77, !llvm.loop !200

.preheader75:                                     ; preds = %.preheader77
  %i.gc = getelementptr inbounds nuw i8, ptr %i.a, i64 512 ; 3 uses
  %broadcast.splatinsert152 = insertelement <8 x float> poison, float %.pre, i64 0
  %broadcast.splat153 = shufflevector <8 x float> %broadcast.splatinsert152, <8 x float> poison, <8 x i32> zeroinitializer
  %i.gd = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 28), align 4, !tbaa !141
  %broadcast.splatinsert150 = insertelement <8 x float> poison, float %i.gd, i64 0
  %broadcast.splat151 = shufflevector <8 x float> %broadcast.splatinsert150, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ge = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 24), align 8, !tbaa !141
  %broadcast.splatinsert148 = insertelement <8 x float> poison, float %i.ge, i64 0
  %broadcast.splat149 = shufflevector <8 x float> %broadcast.splatinsert148, <8 x float> poison, <8 x i32> zeroinitializer
  %i.gf = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 20), align 4, !tbaa !141
  %broadcast.splatinsert146 = insertelement <8 x float> poison, float %i.gf, i64 0
  %broadcast.splat147 = shufflevector <8 x float> %broadcast.splatinsert146, <8 x float> poison, <8 x i32> zeroinitializer
  %i.gg = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 16), align 16, !tbaa !141
  %broadcast.splatinsert144 = insertelement <8 x float> poison, float %i.gg, i64 0
  %broadcast.splat145 = shufflevector <8 x float> %broadcast.splatinsert144, <8 x float> poison, <8 x i32> zeroinitializer
  %i.gh = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 12), align 4, !tbaa !141
  %broadcast.splatinsert142 = insertelement <8 x float> poison, float %i.gh, i64 0
  %broadcast.splat143 = shufflevector <8 x float> %broadcast.splatinsert142, <8 x float> poison, <8 x i32> zeroinitializer
  %i.gi = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 8), align 8, !tbaa !141
  %broadcast.splatinsert140 = insertelement <8 x float> poison, float %i.gi, i64 0
  %broadcast.splat141 = shufflevector <8 x float> %broadcast.splatinsert140, <8 x float> poison, <8 x i32> zeroinitializer
  %.pre131 = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 4), align 4, !tbaa !141
  %broadcast.splatinsert = insertelement <8 x float> poison, float %.pre131, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %wide.load = load <8 x float>, ptr %i.gc, align 16, !tbaa !141
  %wide.load155 = load <8 x float>, ptr %i.ck, align 16, !tbaa !141
  %i.gj = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat153, %wide.load155
  %i.gk = fadd reassoc nsz arcp contract afn <8 x float> %wide.load, %i.gj
  %i.gl = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  %wide.load156 = load <8 x float>, ptr %i.gl, align 16, !tbaa !141
  %i.gm = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat, %wide.load156
  %i.gn = fadd reassoc nsz arcp contract afn <8 x float> %i.gk, %i.gm
  %i.go = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  %wide.load157 = load <8 x float>, ptr %i.go, align 16, !tbaa !141
  %i.gp = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat141, %wide.load157
  %i.gq = fadd reassoc nsz arcp contract afn <8 x float> %i.gn, %i.gp
  %i.gr = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  %wide.load158 = load <8 x float>, ptr %i.gr, align 16, !tbaa !141
  %i.gs = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat143, %wide.load158
  %i.gt = fadd reassoc nsz arcp contract afn <8 x float> %i.gq, %i.gs
  %i.gu = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  %wide.load159 = load <8 x float>, ptr %i.gu, align 16, !tbaa !141
  %i.gv = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat145, %wide.load159
  %i.gw = fadd reassoc nsz arcp contract afn <8 x float> %i.gt, %i.gv
  %i.gx = getelementptr inbounds nuw i8, ptr %i.a, i64 416
  %wide.load160 = load <8 x float>, ptr %i.gx, align 16, !tbaa !141
  %i.gy = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat147, %wide.load160
  %i.gz = fadd reassoc nsz arcp contract afn <8 x float> %i.gw, %i.gy
  %i.ha = getelementptr inbounds nuw i8, ptr %i.a, i64 448
  %wide.load161 = load <8 x float>, ptr %i.ha, align 16, !tbaa !141
  %i.hb = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat149, %wide.load161
  %i.hc = fadd reassoc nsz arcp contract afn <8 x float> %i.gz, %i.hb
  %i.hd = getelementptr inbounds nuw i8, ptr %i.a, i64 480
  %wide.load162 = load <8 x float>, ptr %i.hd, align 16, !tbaa !141
  %i.he = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat151, %wide.load162
  %i.hf = fadd reassoc nsz arcp contract afn <8 x float> %i.hc, %i.he
  store <8 x float> %i.hf, ptr %i.gc, align 16, !tbaa !141
  %i.hg = getelementptr inbounds nuw i8, ptr %i.a, i64 544 ; 2 uses
  %broadcast.splatinsert152.1 = insertelement <8 x float> poison, float %.pre, i64 0
  %broadcast.splat153.1 = shufflevector <8 x float> %broadcast.splatinsert152.1, <8 x float> poison, <8 x i32> zeroinitializer
  %i.hh = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 84), align 4, !tbaa !141
  %broadcast.splatinsert150.1 = insertelement <8 x float> poison, float %i.hh, i64 0
  %broadcast.splat151.1 = shufflevector <8 x float> %broadcast.splatinsert150.1, <8 x float> poison, <8 x i32> zeroinitializer
  %i.hi = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 72), align 8, !tbaa !141
  %broadcast.splatinsert148.1 = insertelement <8 x float> poison, float %i.hi, i64 0
  %broadcast.splat149.1 = shufflevector <8 x float> %broadcast.splatinsert148.1, <8 x float> poison, <8 x i32> zeroinitializer
  %i.hj = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 60), align 4, !tbaa !141
  %broadcast.splatinsert146.1 = insertelement <8 x float> poison, float %i.hj, i64 0
  %broadcast.splat147.1 = shufflevector <8 x float> %broadcast.splatinsert146.1, <8 x float> poison, <8 x i32> zeroinitializer
  %i.hk = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 48), align 16, !tbaa !141
  %broadcast.splatinsert144.1 = insertelement <8 x float> poison, float %i.hk, i64 0
  %broadcast.splat145.1 = shufflevector <8 x float> %broadcast.splatinsert144.1, <8 x float> poison, <8 x i32> zeroinitializer
  %i.hl = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 36), align 4, !tbaa !141
  %broadcast.splatinsert142.1 = insertelement <8 x float> poison, float %i.hl, i64 0
  %broadcast.splat143.1 = shufflevector <8 x float> %broadcast.splatinsert142.1, <8 x float> poison, <8 x i32> zeroinitializer
  %i.hm = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 24), align 8, !tbaa !141
  %broadcast.splatinsert140.1 = insertelement <8 x float> poison, float %i.hm, i64 0
  %broadcast.splat141.1 = shufflevector <8 x float> %broadcast.splatinsert140.1, <8 x float> poison, <8 x i32> zeroinitializer
  %.pre131.1 = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 12), align 4, !tbaa !141
  %broadcast.splatinsert.1 = insertelement <8 x float> poison, float %.pre131.1, i64 0
  %broadcast.splat.1 = shufflevector <8 x float> %broadcast.splatinsert.1, <8 x float> poison, <8 x i32> zeroinitializer
  %wide.load.1 = load <8 x float>, ptr %i.hg, align 16, !tbaa !141
  %wide.load155.1 = load <8 x float>, ptr %i.ck, align 16, !tbaa !141
  %i.hn = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat153.1, %wide.load155.1
  %i.ho = fadd reassoc nsz arcp contract afn <8 x float> %wide.load.1, %i.hn
  %i.hp = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  %wide.load156.1 = load <8 x float>, ptr %i.hp, align 16, !tbaa !141
  %i.hq = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat.1, %wide.load156.1
  %i.hr = fadd reassoc nsz arcp contract afn <8 x float> %i.ho, %i.hq
  %i.hs = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  %wide.load157.1 = load <8 x float>, ptr %i.hs, align 16, !tbaa !141
  %i.ht = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat141.1, %wide.load157.1
  %i.hu = fadd reassoc nsz arcp contract afn <8 x float> %i.hr, %i.ht
  %i.hv = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  %wide.load158.1 = load <8 x float>, ptr %i.hv, align 16, !tbaa !141
  %i.hw = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat143.1, %wide.load158.1
  %i.hx = fadd reassoc nsz arcp contract afn <8 x float> %i.hu, %i.hw
  %i.hy = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  %wide.load159.1 = load <8 x float>, ptr %i.hy, align 16, !tbaa !141
  %i.hz = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat145.1, %wide.load159.1
  %i.ia = fadd reassoc nsz arcp contract afn <8 x float> %i.hx, %i.hz
  %i.ib = getelementptr inbounds nuw i8, ptr %i.a, i64 416
  %wide.load160.1 = load <8 x float>, ptr %i.ib, align 16, !tbaa !141
  %i.ic = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat147.1, %wide.load160.1
  %i.id = fadd reassoc nsz arcp contract afn <8 x float> %i.ia, %i.ic
  %i.ie = getelementptr inbounds nuw i8, ptr %i.a, i64 448
  %wide.load161.1 = load <8 x float>, ptr %i.ie, align 16, !tbaa !141
  %i.if = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat149.1, %wide.load161.1
  %i.ig = fadd reassoc nsz arcp contract afn <8 x float> %i.id, %i.if
  %i.ih = getelementptr inbounds nuw i8, ptr %i.a, i64 480
  %wide.load162.1 = load <8 x float>, ptr %i.ih, align 16, !tbaa !141
  %i.ii = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat151.1, %wide.load162.1
  %i.ij = fadd reassoc nsz arcp contract afn <8 x float> %i.ig, %i.ii
  store <8 x float> %i.ij, ptr %i.hg, align 16, !tbaa !141
  %i.ik = getelementptr inbounds nuw i8, ptr %i.a, i64 576 ; 2 uses
  %broadcast.splatinsert152.2 = insertelement <8 x float> poison, float %.pre, i64 0
  %broadcast.splat153.2 = shufflevector <8 x float> %broadcast.splatinsert152.2, <8 x float> poison, <8 x i32> zeroinitializer
  %i.il = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 140), align 4, !tbaa !141
  %broadcast.splatinsert150.2 = insertelement <8 x float> poison, float %i.il, i64 0
  %broadcast.splat151.2 = shufflevector <8 x float> %broadcast.splatinsert150.2, <8 x float> poison, <8 x i32> zeroinitializer
  %i.im = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 120), align 8, !tbaa !141
  %broadcast.splatinsert148.2 = insertelement <8 x float> poison, float %i.im, i64 0
  %broadcast.splat149.2 = shufflevector <8 x float> %broadcast.splatinsert148.2, <8 x float> poison, <8 x i32> zeroinitializer
  %i.in = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 100), align 4, !tbaa !141
  %broadcast.splatinsert146.2 = insertelement <8 x float> poison, float %i.in, i64 0
  %broadcast.splat147.2 = shufflevector <8 x float> %broadcast.splatinsert146.2, <8 x float> poison, <8 x i32> zeroinitializer
  %i.io = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 80), align 16, !tbaa !141
  %broadcast.splatinsert144.2 = insertelement <8 x float> poison, float %i.io, i64 0
  %broadcast.splat145.2 = shufflevector <8 x float> %broadcast.splatinsert144.2, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ip = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 60), align 4, !tbaa !141
  %broadcast.splatinsert142.2 = insertelement <8 x float> poison, float %i.ip, i64 0
  %broadcast.splat143.2 = shufflevector <8 x float> %broadcast.splatinsert142.2, <8 x float> poison, <8 x i32> zeroinitializer
  %i.iq = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 40), align 8, !tbaa !141
  %broadcast.splatinsert140.2 = insertelement <8 x float> poison, float %i.iq, i64 0
  %broadcast.splat141.2 = shufflevector <8 x float> %broadcast.splatinsert140.2, <8 x float> poison, <8 x i32> zeroinitializer
  %.pre131.2 = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 20), align 4, !tbaa !141
  %broadcast.splatinsert.2 = insertelement <8 x float> poison, float %.pre131.2, i64 0
  %broadcast.splat.2 = shufflevector <8 x float> %broadcast.splatinsert.2, <8 x float> poison, <8 x i32> zeroinitializer
  %wide.load.2 = load <8 x float>, ptr %i.ik, align 16, !tbaa !141
  %wide.load155.2 = load <8 x float>, ptr %i.ck, align 16, !tbaa !141
  %i.ir = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat153.2, %wide.load155.2
  %i.is = fadd reassoc nsz arcp contract afn <8 x float> %wide.load.2, %i.ir
  %i.it = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  %wide.load156.2 = load <8 x float>, ptr %i.it, align 16, !tbaa !141
  %i.iu = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat.2, %wide.load156.2
  %i.iv = fadd reassoc nsz arcp contract afn <8 x float> %i.is, %i.iu
  %i.iw = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  %wide.load157.2 = load <8 x float>, ptr %i.iw, align 16, !tbaa !141
  %i.ix = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat141.2, %wide.load157.2
  %i.iy = fadd reassoc nsz arcp contract afn <8 x float> %i.iv, %i.ix
  %i.iz = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  %wide.load158.2 = load <8 x float>, ptr %i.iz, align 16, !tbaa !141
  %i.ja = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat143.2, %wide.load158.2
  %i.jb = fadd reassoc nsz arcp contract afn <8 x float> %i.iy, %i.ja
  %i.jc = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  %wide.load159.2 = load <8 x float>, ptr %i.jc, align 16, !tbaa !141
  %i.jd = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat145.2, %wide.load159.2
  %i.je = fadd reassoc nsz arcp contract afn <8 x float> %i.jb, %i.jd
  %i.jf = getelementptr inbounds nuw i8, ptr %i.a, i64 416
  %wide.load160.2 = load <8 x float>, ptr %i.jf, align 16, !tbaa !141
  %i.jg = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat147.2, %wide.load160.2
  %i.jh = fadd reassoc nsz arcp contract afn <8 x float> %i.je, %i.jg
  %i.ji = getelementptr inbounds nuw i8, ptr %i.a, i64 448
  %wide.load161.2 = load <8 x float>, ptr %i.ji, align 16, !tbaa !141
  %i.jj = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat149.2, %wide.load161.2
  %i.jk = fadd reassoc nsz arcp contract afn <8 x float> %i.jh, %i.jj
  %i.jl = getelementptr inbounds nuw i8, ptr %i.a, i64 480
  %wide.load162.2 = load <8 x float>, ptr %i.jl, align 16, !tbaa !141
  %i.jm = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat151.2, %wide.load162.2
  %i.jn = fadd reassoc nsz arcp contract afn <8 x float> %i.jk, %i.jm
  store <8 x float> %i.jn, ptr %i.ik, align 16, !tbaa !141
  %i.jo = getelementptr inbounds nuw i8, ptr %i.a, i64 608 ; 2 uses
  %broadcast.splatinsert152.3 = insertelement <8 x float> poison, float %.pre, i64 0
  %broadcast.splat153.3 = shufflevector <8 x float> %broadcast.splatinsert152.3, <8 x float> poison, <8 x i32> zeroinitializer
  %i.jp = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 196), align 4, !tbaa !141
  %broadcast.splatinsert150.3 = insertelement <8 x float> poison, float %i.jp, i64 0
  %broadcast.splat151.3 = shufflevector <8 x float> %broadcast.splatinsert150.3, <8 x float> poison, <8 x i32> zeroinitializer
  %i.jq = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 168), align 8, !tbaa !141
  %broadcast.splatinsert148.3 = insertelement <8 x float> poison, float %i.jq, i64 0
  %broadcast.splat149.3 = shufflevector <8 x float> %broadcast.splatinsert148.3, <8 x float> poison, <8 x i32> zeroinitializer
  %i.jr = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 140), align 4, !tbaa !141
  %broadcast.splatinsert146.3 = insertelement <8 x float> poison, float %i.jr, i64 0
  %broadcast.splat147.3 = shufflevector <8 x float> %broadcast.splatinsert146.3, <8 x float> poison, <8 x i32> zeroinitializer
  %i.js = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 112), align 16, !tbaa !141
  %broadcast.splatinsert144.3 = insertelement <8 x float> poison, float %i.js, i64 0
  %broadcast.splat145.3 = shufflevector <8 x float> %broadcast.splatinsert144.3, <8 x float> poison, <8 x i32> zeroinitializer
  %i.jt = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 84), align 4, !tbaa !141
  %broadcast.splatinsert142.3 = insertelement <8 x float> poison, float %i.jt, i64 0
  %broadcast.splat143.3 = shufflevector <8 x float> %broadcast.splatinsert142.3, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ju = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw10ljpeg_idctEP5jheadE2cs, i64 56), align 8, !tbaa !141
end_hunk_0
