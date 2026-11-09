Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/RawImageDataU16?download=true
inline.NumInlined: 598
inline.NumDeleted: 347
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 10
begin_hunk_0
@_ZN8rawspeed15RawImageDataU16C1ERKNS_8iPoint2DEj = hidden unnamed_addr alias void (ptr, ptr, i32), ptr @_ZN8rawspeed15RawImageDataU16C2ERKNS_8iPoint2DEj

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN8rawspeed15RawImageDataU16C2Ev(ptr noundef nonnull align 8 dereferenceable(624) initializes((16, 57), (64, 100), (152, 153), (164, 165), (168, 245), (248, 256), (272, 273), (280, 316)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  store i8 1, ptr %i.c, align 8, !tbaa !82
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i8 0, i64 32, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 -1, ptr %i.e, align 8, !tbaa !83
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i8 0, ptr %i.f, align 8, !tbaa !84
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 164
  store i8 0, ptr %i.g, align 4, !tbaa !85
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 244
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(76) %i.h, i8 0, i64 76, i1 false)
  store i8 1, ptr %i.i, align 4, !tbaa !86
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 248
  store double 1.000000e+00, ptr %i.j, align 8, !tbaa !127
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i8 0, ptr %i.k, align 8, !tbaa !128
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 308
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.l, i8 0, i64 28, i1 false)
  store i32 1, ptr %i.m, align 4, !tbaa !87
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i32 1, ptr %i.n, align 8, !tbaa !88
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  store ptr %i.p, ptr %i.o, align 8, !tbaa !129
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i64 0, ptr %i.q, align 8, !tbaa !130
  store i8 0, ptr %i.p, align 8, !tbaa !89
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  store ptr %i.s, ptr %i.r, align 8, !tbaa !129
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 360
  store i64 0, ptr %i.t, align 8, !tbaa !130
  store i8 0, ptr %i.s, align 8, !tbaa !89
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  store ptr %i.v, ptr %i.u, align 8, !tbaa !129
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 392
  store i64 0, ptr %i.w, align 8, !tbaa !130
  store i8 0, ptr %i.v, align 8, !tbaa !89
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  store ptr %i.y, ptr %i.x, align 8, !tbaa !129
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 424
  store i64 0, ptr %i.z, align 8, !tbaa !130
  store i8 0, ptr %i.y, align 8, !tbaa !89
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 2 uses
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !129
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 456
  store i64 0, ptr %i.ac, align 8, !tbaa !130
  store i8 0, ptr %i.ab, align 8, !tbaa !89
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !129
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 488
  store i64 0, ptr %i.af, align 8, !tbaa !130
  store i8 0, ptr %i.ae, align 8, !tbaa !89
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !129
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 520
  store i64 0, ptr %i.ai, align 8, !tbaa !130
  store i8 0, ptr %i.ah, align 8, !tbaa !89
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i32 0, ptr %i.aj, align 8, !tbaa !131
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 560
  store i8 0, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 568
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, i8 0, i64 24, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 592
  store i32 1, ptr %i.am, align 8, !tbaa !90
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 596
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 600
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN8rawspeed15RawImageDataU16E, i64 16), ptr %0, align 8, !tbaa !92
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 553
  store i8 0, ptr %i.ap, align 1, !tbaa !132
  store i32 2, ptr %i.an, align 4, !tbaa !133
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8rawspeed15RawImageDataU16C2ERKNS_8iPoint2DEj(ptr noundef nonnull align 8 dereferenceable(624) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, i32 noundef %2) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN8rawspeed12RawImageDataC2ENS_12RawImageTypeERKNS_8iPoint2DEii(ptr noundef nonnull align 8 dereferenceable(624) %0, i8 noundef zeroext 0, ptr noundef nonnull align 4 dereferenceable(8) %1, i32 noundef 2, i32 noundef %2)
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN8rawspeed15RawImageDataU16E, i64 16), ptr %0, align 8, !tbaa !92
  ret void
}

declare void @_ZN8rawspeed12RawImageDataC2ENS_12RawImageTypeERKNS_8iPoint2DEii(ptr noundef nonnull align 8 dereferenceable(624), i8 noundef zeroext, ptr noundef nonnull align 4 dereferenceable(8), i32 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8rawspeed15RawImageDataU1619calculateBlackAreasEv(ptr noundef nonnull align 8 dereferenceable(624) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
_ZN8rawspeed10Array2DRefItE6createISaItEEES1_RSt6vectorItT_Eii.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !93, !noalias !146 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.d = load i32, ptr %i.c, align 8, !tbaa !90, !noalias !146
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !94, !noalias !146
  %i.g = mul nsw i32 %i.f, %i.d                   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 612 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !95, !noalias !146
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load i32, ptr %i.j, align 8, !tbaa !96, !noalias !146
  %i.l = ashr i32 %i.k, 1                         ; 3 uses
  %i.m = icmp ne i32 %i.l, 0
  tail call void @llvm.assume(i1 %i.m)
  %i.n = icmp sge i32 %i.l, %i.g
  tail call void @llvm.assume(i1 %i.n)
  %i.o = tail call noalias noundef nonnull dereferenceable(524288) ptr @_Znwm(i64 noundef 524288) #24 ; 10 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(524288) %i.o, i8 0, i64 524288, i1 false)
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !97   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !97   ; 2 uses
  %i.t = icmp eq ptr %i.q, %i.s
  br i1 %i.t, label %._crit_edge348, label %.lr.ph347

.lr.ph347:                                        ; preds = %_ZN8rawspeed10Array2DRefItE6createISaItEEES1_RSt6vectorItT_Eii.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 604
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.y = zext nneg i32 %i.l to i64                ; 2 uses
  %i.z = zext nneg i32 %i.i to i64                ; 2 uses
  br label %bb.a

bb.a:                                             ; preds = %.lr.ph347, %.loopexit
  %.0102345 = phi i32 [ 0, %.lr.ph347 ], [ %.2104, %.loopexit ]
  %.sroa.0208.0344 = phi ptr [ %i.q, %.lr.ph347 ], [ %i.ov, %.loopexit ] ; 4 uses
  %.sroa.056.0.copyload = load i32, ptr %.sroa.0208.0344, align 4, !tbaa !98 ; 17 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0208.0344, i64 4
  %.sroa.11.0.copyload = load i32, ptr %.sroa.11.0..sroa_idx, align 4, !tbaa !98 ; 6 uses
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0208.0344, i64 8
  %.sroa.20.0.copyload = load i8, ptr %.sroa.20.0..sroa_idx, align 4, !tbaa !147
  %i.aa = and i32 %.sroa.11.0.copyload, -2        ; 7 uses
  %i.ab = trunc i8 %.sroa.20.0.copyload to i1
  %i.ac = add nsw i32 %i.aa, %.sroa.056.0.copyload ; 6 uses
  br i1 %i.ab, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ad = load i32, ptr %i.h, align 4, !tbaa !95
  %i.ae = icmp sgt i32 %i.ac, %i.ad
  br i1 %i.ae, label %.invoke, label %.preheader328

.preheader328:                                    ; preds = %bb.b
  %i.af = icmp ult i32 %.sroa.056.0.copyload, %i.ac
  %.pre387 = load i32, ptr %i.v, align 8, !tbaa !99 ; 5 uses
  br i1 %i.af, label %.lr.ph336, label %.loopexit

.lr.ph336:                                        ; preds = %.preheader328
  %i.ag = load i32, ptr %i.u, align 8, !tbaa !100 ; 16 uses
  %i.ah = add i32 %.pre387, %i.ag                 ; 3 uses
  %i.ai = icmp sgt i32 %.pre387, 0
  %i.aj = icmp samesign ult i32 %i.ag, %i.g
  %i.ak = zext nneg i32 %i.ag to i64
  %invariant.gep = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.ak
  br i1 %i.ai, label %.lr.ph336.split, label %.loopexit

.lr.ph336.split:                                  ; preds = %.lr.ph336
  tail call void @llvm.assume(i1 %i.aj)
  %i.al = zext i32 %.sroa.056.0.copyload to i64
  %wide.trip.count = zext i32 %i.ac to i64
  %i.am = add nuw i32 %i.ag, 1
  %smax = tail call i32 @llvm.smax.i32(i32 %i.ah, i32 %i.am)
  %i.an = xor i32 %i.ag, -1
  %i.ao = add i32 %smax, %i.an                    ; 3 uses
  %i.ap = trunc i32 %i.ag to i1
  %i.aq = shl i32 %i.ag, 16
  %i.ar = and i32 %i.aq, 65536
  %i.as = add nuw i32 %i.ag, 1
  %smax433 = tail call i32 @llvm.smax.i32(i32 %i.ah, i32 %i.as)
  %i.at = sub i32 %smax433, %i.ag                 ; 7 uses
  %min.iters.check434 = icmp ult i32 %i.at, 8
  %i.au = xor i32 %i.ao, %i.ag
  %i.av = trunc i32 %i.au to i1
  %i.aw = xor i1 %i.ap, true
  %i.ax = and i1 %i.aw, %i.av
  %i.ay = icmp ugt i32 %i.ao, 1
  %i.az = or i1 %i.ax, %i.ay
  %mul.result431 = shl i32 %i.ao, 16
  %min.iters.check436 = icmp ult i32 %i.at, 16
  %i.ba = and i32 %i.at, 8
  %n.vec438 = and i32 %i.at, -16                  ; 4 uses
  %i.bb = add i32 %i.ag, %n.vec438                ; 2 uses
  %broadcast.splatinsert441 = insertelement <16 x i32> poison, i32 %i.ag, i64 0
  %broadcast.splat442 = shufflevector <16 x i32> %broadcast.splatinsert441, <16 x i32> poison, <16 x i32> zeroinitializer
  %induction443 = add nsw <16 x i32> %broadcast.splat442, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %cmp.n450 = icmp eq i32 %i.at, %n.vec438
  %min.epilog.iters.check454.not.not = icmp eq i32 %i.ba, 0
  %n.vec458 = and i32 %i.at, -8                   ; 3 uses
  %i.bc = add i32 %i.ag, %n.vec458
  %cmp.n470 = icmp eq i32 %i.at, %n.vec458
  br label %iter.check451

.thread304:                                       ; preds = %.invoke
  %i.bd = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef 524288) #25
  resume { ptr, i32 } %i.bd

iter.check451:                                    ; preds = %.lr.ph336.split, %._crit_edge
  %indvar428 = phi i32 [ 0, %.lr.ph336.split ], [ %indvar.next429, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ %i.al, %.lr.ph336.split ], [ %indvars.iv.next, %._crit_edge ] ; 4 uses
  %i.be = trunc nuw i64 %indvars.iv to i32
  %i.bf = shl i32 %i.be, 1
  %i.bg = and i32 %i.bf, 2                        ; 3 uses
  %i.bh = icmp samesign ult i64 %indvars.iv, %i.z
  tail call void @llvm.assume(i1 %i.bh)
  %i.bi = mul nuw nsw i64 %indvars.iv, %i.y
  %gep = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep, i64 %i.bi
  %.pre = load i16, ptr %gep, align 2, !tbaa !102
  %i.bj = zext i16 %.pre to i64
  %invariant.gep405 = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.bj ; 25 uses
  br i1 %min.iters.check434, label %vec.epilog.scalar.ph453.preheader, label %vector.scevcheck427

vector.scevcheck427:                              ; preds = %iter.check451
  %i.bk = add i32 %.sroa.056.0.copyload, %indvar428
  %i.bl = shl i32 %i.bk, 17
  %i.bm = and i32 %i.bl, 131072
  %i.bn = or disjoint i32 %i.ar, %i.bm
  %i.bo = icmp ugt i32 %mul.result431, %i.bn
  %i.bp = or i1 %i.bo, %i.az
  br i1 %i.bp, label %vec.epilog.scalar.ph453.preheader, label %vector.main.loop.iter.check435

vector.main.loop.iter.check435:                   ; preds = %vector.scevcheck427
  br i1 %min.iters.check436, label %vec.epilog.ph455, label %vector.ph437

vector.ph437:                                     ; preds = %vector.main.loop.iter.check435
  %broadcast.splatinsert439 = insertelement <16 x i32> poison, i32 %i.bg, i64 0
  %broadcast.splat440 = shufflevector <16 x i32> %broadcast.splatinsert439, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.body444

vector.body444:                                   ; preds = %vector.ph437, %vector.body444
  %index445 = phi i32 [ 0, %vector.ph437 ], [ %index.next447, %vector.body444 ]
  %vec.ind446 = phi <16 x i32> [ %induction443, %vector.ph437 ], [ %vec.ind.next448, %vector.body444 ] ; 2 uses
  %i.bq = and <16 x i32> %vec.ind446, splat (i32 1)
  %i.br = or disjoint <16 x i32> %i.bq, %broadcast.splat440
  %i.bs = shl nuw nsw <16 x i32> %i.br, splat (i32 16)
  %i.bt = zext nneg <16 x i32> %i.bs to <16 x i64> ; 16 uses
  %i.bu = extractelement <16 x i64> %i.bt, i64 0
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep405, i64 %i.bu ; 2 uses
  %i.bw = extractelement <16 x i64> %i.bt, i64 1
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep405, i64 %i.bw ; 2 uses
  %i.by = extractelement <16 x i64> %i.bt, i64 2
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep405, i64 %i.by ; 2 uses
  %i.ca = extractelement <16 x i64> %i.bt, i64 3
  %i.cb = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep405, i64 %i.ca ; 2 uses
  %i.cc = extractelement <16 x i64> %i.bt, i64 4
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep405, i64 %i.cc ; 2 uses
  %i.ce = extractelement <16 x i64> %i.bt, i64 5
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep405, i64 %i.ce ; 2 uses
  %i.cg = extractelement <16 x i64> %i.bt, i64 6
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep405, i64 %i.cg ; 2 uses
  %i.ci = extractelement <16 x i64> %i.bt, i64 7
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep405, i64 %i.ci ; 2 uses
  %i.ck = extractelement <16 x i64> %i.bt, i64 8
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep405, i64 %i.ck ; 2 uses
  %i.cm = extractelement <16 x i64> %i.bt, i64 9
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep405, i64 %i.cm ; 2 uses
  %i.co = extractelement <16 x i64> %i.bt, i64 10
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep405, i64 %i.co ; 2 uses
  %i.cq = extractelement <16 x i64> %i.bt, i64 11
  %i.cr = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep405, i64 %i.cq ; 2 uses
  %i.cs = extractelement <16 x i64> %i.bt, i64 12
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep405, i64 %i.cs ; 2 uses
  %i.cu = extractelement <16 x i64> %i.bt, i64 13
  %i.cv = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep405, i64 %i.cu ; 2 uses
  %i.cw = extractelement <16 x i64> %i.bt, i64 14
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep405, i64 %i.cw ; 2 uses
  %i.cy = extractelement <16 x i64> %i.bt, i64 15
  %i.cz = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep405, i64 %i.cy ; 2 uses
  %i.da = load i16, ptr %i.bv, align 2, !tbaa !102
  %i.db = load i16, ptr %i.bx, align 2, !tbaa !102
  %i.dc = load i16, ptr %i.bz, align 2, !tbaa !102
  %i.dd = load i16, ptr %i.cb, align 2, !tbaa !102
  %i.de = load i16, ptr %i.cd, align 2, !tbaa !102
  %i.df = load i16, ptr %i.cf, align 2, !tbaa !102
  %i.dg = load i16, ptr %i.ch, align 2, !tbaa !102
  %i.dh = load i16, ptr %i.cj, align 2, !tbaa !102
  %i.di = load i16, ptr %i.cl, align 2, !tbaa !102
  %i.dj = load i16, ptr %i.cn, align 2, !tbaa !102
  %i.dk = load i16, ptr %i.cp, align 2, !tbaa !102
  %i.dl = load i16, ptr %i.cr, align 2, !tbaa !102
  %i.dm = load i16, ptr %i.ct, align 2, !tbaa !102
  %i.dn = load i16, ptr %i.cv, align 2, !tbaa !102
  %i.do = load i16, ptr %i.cx, align 2, !tbaa !102
  %i.dp = load i16, ptr %i.cz, align 2, !tbaa !102
  %i.dq = insertelement <16 x i16> poison, i16 %i.da, i64 0
  %i.dr = insertelement <16 x i16> %i.dq, i16 %i.db, i64 1
  %i.ds = insertelement <16 x i16> %i.dr, i16 %i.dc, i64 2
  %i.dt = insertelement <16 x i16> %i.ds, i16 %i.dd, i64 3
  %i.du = insertelement <16 x i16> %i.dt, i16 %i.de, i64 4
  %i.dv = insertelement <16 x i16> %i.du, i16 %i.df, i64 5
  %i.dw = insertelement <16 x i16> %i.dv, i16 %i.dg, i64 6
  %i.dx = insertelement <16 x i16> %i.dw, i16 %i.dh, i64 7
  %i.dy = insertelement <16 x i16> %i.dx, i16 %i.di, i64 8
  %i.dz = insertelement <16 x i16> %i.dy, i16 %i.dj, i64 9
  %i.ea = insertelement <16 x i16> %i.dz, i16 %i.dk, i64 10
  %i.eb = insertelement <16 x i16> %i.ea, i16 %i.dl, i64 11
  %i.ec = insertelement <16 x i16> %i.eb, i16 %i.dm, i64 12
  %i.ed = insertelement <16 x i16> %i.ec, i16 %i.dn, i64 13
  %i.ee = insertelement <16 x i16> %i.ed, i16 %i.do, i64 14
  %i.ef = insertelement <16 x i16> %i.ee, i16 %i.dp, i64 15
  %i.eg = add <16 x i16> %i.ef, splat (i16 1)     ; 16 uses
  %i.eh = extractelement <16 x i16> %i.eg, i64 0
  store i16 %i.eh, ptr %i.bv, align 2, !tbaa !102
  %i.ei = extractelement <16 x i16> %i.eg, i64 1
  store i16 %i.ei, ptr %i.bx, align 2, !tbaa !102
  %i.ej = extractelement <16 x i16> %i.eg, i64 2
  store i16 %i.ej, ptr %i.bz, align 2, !tbaa !102
  %i.ek = extractelement <16 x i16> %i.eg, i64 3
  store i16 %i.ek, ptr %i.cb, align 2, !tbaa !102
  %i.el = extractelement <16 x i16> %i.eg, i64 4
  store i16 %i.el, ptr %i.cd, align 2, !tbaa !102
  %i.em = extractelement <16 x i16> %i.eg, i64 5
  store i16 %i.em, ptr %i.cf, align 2, !tbaa !102
  %i.en = extractelement <16 x i16> %i.eg, i64 6
  store i16 %i.en, ptr %i.ch, align 2, !tbaa !102
  %i.eo = extractelement <16 x i16> %i.eg, i64 7
  store i16 %i.eo, ptr %i.cj, align 2, !tbaa !102
  %i.ep = extractelement <16 x i16> %i.eg, i64 8
  store i16 %i.ep, ptr %i.cl, align 2, !tbaa !102
  %i.eq = extractelement <16 x i16> %i.eg, i64 9
  store i16 %i.eq, ptr %i.cn, align 2, !tbaa !102
  %i.er = extractelement <16 x i16> %i.eg, i64 10
  store i16 %i.er, ptr %i.cp, align 2, !tbaa !102
  %i.es = extractelement <16 x i16> %i.eg, i64 11
  store i16 %i.es, ptr %i.cr, align 2, !tbaa !102
  %i.et = extractelement <16 x i16> %i.eg, i64 12
  store i16 %i.et, ptr %i.ct, align 2, !tbaa !102
  %i.eu = extractelement <16 x i16> %i.eg, i64 13
  store i16 %i.eu, ptr %i.cv, align 2, !tbaa !102
  %i.ev = extractelement <16 x i16> %i.eg, i64 14
  store i16 %i.ev, ptr %i.cx, align 2, !tbaa !102
  %i.ew = extractelement <16 x i16> %i.eg, i64 15
  store i16 %i.ew, ptr %i.cz, align 2, !tbaa !102
  %index.next447 = add nuw i32 %index445, 16      ; 2 uses
  %vec.ind.next448 = add nsw <16 x i32> %vec.ind446, splat (i32 16)
  %i.ex = icmp eq i32 %index.next447, %n.vec438
  br i1 %i.ex, label %middle.block449, label %vector.body444, !llvm.loop !136

middle.block449:                                  ; preds = %vector.body444
  br i1 %cmp.n450, label %._crit_edge, label %vec.epilog.iter.check452

vec.epilog.iter.check452:                         ; preds = %middle.block449
  br i1 %min.epilog.iters.check454.not.not, label %vec.epilog.scalar.ph453.preheader, label %vec.epilog.ph455, !prof !148

vec.epilog.ph455:                                 ; preds = %vector.main.loop.iter.check435, %vec.epilog.iter.check452
  %vec.epilog.resume.val456 = phi i32 [ %n.vec438, %vec.epilog.iter.check452 ], [ 0, %vector.main.loop.iter.check435 ]
  %bc.resume.val457 = phi i32 [ %i.bb, %vec.epilog.iter.check452 ], [ %i.ag, %vector.main.loop.iter.check435 ]
  %broadcast.splatinsert459 = insertelement <8 x i32> poison, i32 %i.bg, i64 0
  %broadcast.splat460 = shufflevector <8 x i32> %broadcast.splatinsert459, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert461 = insertelement <8 x i32> poison, i32 %bc.resume.val457, i64 0
  %broadcast.splat462 = shufflevector <8 x i32> %broadcast.splatinsert461, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction463 = add nsw <8 x i32> %broadcast.splat462, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %vec.epilog.vector.body464

vec.epilog.vector.body464:                        ; preds = %vec.epilog.vector.body464, %vec.epilog.ph455
  %index465 = phi i32 [ %vec.epilog.resume.val456, %vec.epilog.ph455 ], [ %index.next467, %vec.epilog.vector.body464 ]
  %vec.ind466 = phi <8 x i32> [ %induction463, %vec.epilog.ph455 ], [ %vec.ind.next468, %vec.epilog.vector.body464 ] ; 2 uses
  %i.ey = and <8 x i32> %vec.ind466, splat (i32 1)
  %i.ez = or disjoint <8 x i32> %i.ey, %broadcast.splat460
  %i.fa = shl nuw nsw <8 x i32> %i.ez, splat (i32 16)
  %i.fb = zext nneg <8 x i32> %i.fa to <8 x i64>  ; 8 uses
  %i.fc = extractelement <8 x i64> %i.fb, i64 0
  %i.fd = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep405, i64 %i.fc ; 2 uses
  %i.fe = extractelement <8 x i64> %i.fb, i64 1
  %i.ff = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep405, i64 %i.fe ; 2 uses
  %i.fg = extractelement <8 x i64> %i.fb, i64 2
  %i.fh = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep405, i64 %i.fg ; 2 uses
  %i.fi = extractelement <8 x i64> %i.fb, i64 3
  %i.fj = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep405, i64 %i.fi ; 2 uses
  %i.fk = extractelement <8 x i64> %i.fb, i64 4
  %i.fl = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep405, i64 %i.fk ; 2 uses
  %i.fm = extractelement <8 x i64> %i.fb, i64 5
  %i.fn = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep405, i64 %i.fm ; 2 uses
  %i.fo = extractelement <8 x i64> %i.fb, i64 6
  %i.fp = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep405, i64 %i.fo ; 2 uses
  %i.fq = extractelement <8 x i64> %i.fb, i64 7
  %i.fr = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep405, i64 %i.fq ; 2 uses
  %i.fs = load i16, ptr %i.fd, align 2, !tbaa !102
  %i.ft = load i16, ptr %i.ff, align 2, !tbaa !102
  %i.fu = load i16, ptr %i.fh, align 2, !tbaa !102
  %i.fv = load i16, ptr %i.fj, align 2, !tbaa !102
  %i.fw = load i16, ptr %i.fl, align 2, !tbaa !102
  %i.fx = load i16, ptr %i.fn, align 2, !tbaa !102
  %i.fy = load i16, ptr %i.fp, align 2, !tbaa !102
  %i.fz = load i16, ptr %i.fr, align 2, !tbaa !102
  %i.ga = insertelement <8 x i16> poison, i16 %i.fs, i64 0
  %i.gb = insertelement <8 x i16> %i.ga, i16 %i.ft, i64 1
  %i.gc = insertelement <8 x i16> %i.gb, i16 %i.fu, i64 2
  %i.gd = insertelement <8 x i16> %i.gc, i16 %i.fv, i64 3
  %i.ge = insertelement <8 x i16> %i.gd, i16 %i.fw, i64 4
  %i.gf = insertelement <8 x i16> %i.ge, i16 %i.fx, i64 5
  %i.gg = insertelement <8 x i16> %i.gf, i16 %i.fy, i64 6
  %i.gh = insertelement <8 x i16> %i.gg, i16 %i.fz, i64 7
  %i.gi = add <8 x i16> %i.gh, splat (i16 1)      ; 8 uses
  %i.gj = extractelement <8 x i16> %i.gi, i64 0
  store i16 %i.gj, ptr %i.fd, align 2, !tbaa !102
  %i.gk = extractelement <8 x i16> %i.gi, i64 1
  store i16 %i.gk, ptr %i.ff, align 2, !tbaa !102
  %i.gl = extractelement <8 x i16> %i.gi, i64 2
  store i16 %i.gl, ptr %i.fh, align 2, !tbaa !102
  %i.gm = extractelement <8 x i16> %i.gi, i64 3
  store i16 %i.gm, ptr %i.fj, align 2, !tbaa !102
  %i.gn = extractelement <8 x i16> %i.gi, i64 4
  store i16 %i.gn, ptr %i.fl, align 2, !tbaa !102
  %i.go = extractelement <8 x i16> %i.gi, i64 5
  store i16 %i.go, ptr %i.fn, align 2, !tbaa !102
  %i.gp = extractelement <8 x i16> %i.gi, i64 6
  store i16 %i.gp, ptr %i.fp, align 2, !tbaa !102
  %i.gq = extractelement <8 x i16> %i.gi, i64 7
  store i16 %i.gq, ptr %i.fr, align 2, !tbaa !102
  %index.next467 = add nuw i32 %index465, 8       ; 2 uses
  %vec.ind.next468 = add nsw <8 x i32> %vec.ind466, splat (i32 8)
  %i.gr = icmp eq i32 %index.next467, %n.vec458
  br i1 %i.gr, label %vec.epilog.middle.block469, label %vec.epilog.vector.body464, !llvm.loop !137

vec.epilog.middle.block469:                       ; preds = %vec.epilog.vector.body464
  br i1 %cmp.n470, label %._crit_edge, label %vec.epilog.scalar.ph453.preheader

vec.epilog.scalar.ph453.preheader:                ; preds = %iter.check451, %vector.scevcheck427, %vec.epilog.iter.check452, %vec.epilog.middle.block469
  %.0107334.ph = phi i32 [ %i.ag, %iter.check451 ], [ %i.ag, %vector.scevcheck427 ], [ %i.bb, %vec.epilog.iter.check452 ], [ %i.bc, %vec.epilog.middle.block469 ]
  br label %vec.epilog.scalar.ph453

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph453, %vec.epilog.middle.block469, %middle.block449
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %indvar.next429 = add i32 %indvar428, 1
  br i1 %exitcond.not, label %.loopexit, label %iter.check451, !llvm.loop !138

vec.epilog.scalar.ph453:                          ; preds = %vec.epilog.scalar.ph453.preheader, %vec.epilog.scalar.ph453
  %.0107334 = phi i32 [ %i.gy, %vec.epilog.scalar.ph453 ], [ %.0107334.ph, %vec.epilog.scalar.ph453.preheader ] ; 2 uses
  %i.gs = and i32 %.0107334, 1
  %i.gt = or disjoint i32 %i.gs, %i.bg
  %i.gu = shl nuw nsw i32 %i.gt, 16
  %i.gv = zext nneg i32 %i.gu to i64
  %gep406 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep405, i64 %i.gv ; 2 uses
  %i.gw = load i16, ptr %gep406, align 2, !tbaa !102
  %i.gx = add i16 %i.gw, 1
  store i16 %i.gx, ptr %gep406, align 2, !tbaa !102
  %i.gy = add nsw i32 %.0107334, 1                ; 2 uses
  %i.gz = icmp slt i32 %i.gy, %i.ah
  br i1 %i.gz, label %vec.epilog.scalar.ph453, label %._crit_edge, !llvm.loop !139

.thread:                                          ; preds = %bb.a
  %i.ha = load i32, ptr %i.e, align 8, !tbaa !94
  %i.hb = icmp sgt i32 %i.ac, %i.ha
  br i1 %i.hb, label %.invoke, label %bb.c

.invoke:                                          ; preds = %bb.b, %.thread
  %i.hc = phi ptr [ @.str.1, %.thread ], [ @.str, %bb.b ]
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull %i.hc, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed15RawImageDataU1619calculateBlackAreasEv) #22
          to label %.cont unwind label %.thread304

.cont:                                            ; preds = %.invoke
  unreachable

bb.c:                                             ; preds = %.thread
  %i.hd = load i32, ptr %i.w, align 4, !tbaa !106 ; 3 uses
  %i.he = load i32, ptr %i.x, align 4, !tbaa !107 ; 5 uses
  %i.hf = add nsw i32 %i.he, %i.hd
  %i.hg = icmp sgt i32 %i.he, 0
  br i1 %i.hg, label %.preheader327.lr.ph, label %.loopexit

.preheader327.lr.ph:                              ; preds = %bb.c
  %i.hh = icmp ult i32 %.sroa.056.0.copyload, %i.ac
  %i.hi = icmp samesign ult i32 %.sroa.056.0.copyload, %i.g
  %i.hj = zext nneg i32 %.sroa.056.0.copyload to i64
  %invariant.gep342 = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.hj
  br i1 %i.hh, label %.preheader327.lr.ph.split, label %.loopexit

.preheader327.lr.ph.split:                        ; preds = %.preheader327.lr.ph
  tail call void @llvm.assume(i1 %i.hi)
  %i.hk = zext i32 %i.hd to i64
  %i.hl = add i32 %i.aa, -1                       ; 2 uses
  %i.hm = trunc i32 %.sroa.056.0.copyload to i1
  %i.hn = shl i32 %.sroa.056.0.copyload, 16
  %i.ho = and i32 %i.hn, 65536
  %i.hp = add i32 %.sroa.056.0.copyload, %i.aa
  %i.hq = add i32 %.sroa.056.0.copyload, -1
  %i.hr = add i32 %i.hq, %i.aa
  %min.iters.check = icmp ult i32 %.sroa.11.0.copyload, 8
  %i.hs = xor i1 %i.hm, true
  %i.ht = icmp ne i32 %i.hl, 1
  %i.hu = or i1 %i.ht, %i.hs
  %mul.result = shl i32 %i.hl, 16
  %invariant.op = sub nuw i32 %mul.result, %i.ho
  %min.iters.check412 = icmp ult i32 %.sroa.11.0.copyload, 16
  %i.hv = and i32 %.sroa.11.0.copyload, 8
  %n.vec = and i32 %.sroa.11.0.copyload, -16      ; 4 uses
  %i.hw = add i32 %.sroa.056.0.copyload, %n.vec   ; 2 uses
  %broadcast.splatinsert413 = insertelement <16 x i32> poison, i32 %.sroa.056.0.copyload, i64 0
  %broadcast.splat414 = shufflevector <16 x i32> %broadcast.splatinsert413, <16 x i32> poison, <16 x i32> zeroinitializer
  %induction = add nuw <16 x i32> %broadcast.splat414, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %cmp.n = icmp eq i32 %i.aa, %n.vec
  %min.epilog.iters.check.not.not = icmp eq i32 %i.hv, 0
  %n.vec415 = and i32 %.sroa.11.0.copyload, -8    ; 3 uses
  %i.hx = add i32 %.sroa.056.0.copyload, %n.vec415
  %cmp.n425 = icmp eq i32 %i.aa, %n.vec415
  br label %iter.check

iter.check:                                       ; preds = %.preheader327.lr.ph.split, %._crit_edge340
  %indvar = phi i32 [ 0, %.preheader327.lr.ph.split ], [ %indvar.next, %._crit_edge340 ] ; 2 uses
  %indvars.iv377 = phi i64 [ %i.hk, %.preheader327.lr.ph.split ], [ %indvars.iv.next378, %._crit_edge340 ] ; 4 uses
  %i.hy = trunc nuw i64 %indvars.iv377 to i32
  %i.hz = shl i32 %i.hy, 1
  %i.ia = and i32 %i.hz, 2                        ; 7 uses
  %i.ib = icmp samesign ult i64 %indvars.iv377, %i.z
  tail call void @llvm.assume(i1 %i.ib)
  %i.ic = mul nuw nsw i64 %indvars.iv377, %i.y
  %gep343 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep342, i64 %i.ic
  %.pre388 = load i16, ptr %gep343, align 2, !tbaa !102
  %i.id = zext i16 %.pre388 to i64
  %invariant.gep407 = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.id ; 29 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.ie = add i32 %i.hd, %indvar
  %i.if = shl i32 %i.ie, 17
  %i.ig = and i32 %i.if, 131072
  %i.ih = icmp ult i32 %i.ig, %invariant.op
  %i.ii = or i1 %i.ih, %i.hu
  br i1 %i.ii, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  br i1 %min.iters.check412, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %i.ia, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <16 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.ij = and <16 x i32> %vec.ind, splat (i32 1)
  %i.ik = or disjoint <16 x i32> %i.ij, %broadcast.splat
  %i.il = shl nuw nsw <16 x i32> %i.ik, splat (i32 16)
  %i.im = zext nneg <16 x i32> %i.il to <16 x i64> ; 16 uses
  %i.in = extractelement <16 x i64> %i.im, i64 0
  %i.io = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep407, i64 %i.in ; 2 uses
  %i.ip = extractelement <16 x i64> %i.im, i64 1
  %i.iq = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep407, i64 %i.ip ; 2 uses
  %i.ir = extractelement <16 x i64> %i.im, i64 2
  %i.is = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep407, i64 %i.ir ; 2 uses
  %i.it = extractelement <16 x i64> %i.im, i64 3
  %i.iu = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep407, i64 %i.it ; 2 uses
  %i.iv = extractelement <16 x i64> %i.im, i64 4
  %i.iw = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep407, i64 %i.iv ; 2 uses
  %i.ix = extractelement <16 x i64> %i.im, i64 5
  %i.iy = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep407, i64 %i.ix ; 2 uses
  %i.iz = extractelement <16 x i64> %i.im, i64 6
  %i.ja = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep407, i64 %i.iz ; 2 uses
  %i.jb = extractelement <16 x i64> %i.im, i64 7
  %i.jc = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep407, i64 %i.jb ; 2 uses
  %i.jd = extractelement <16 x i64> %i.im, i64 8
  %i.je = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep407, i64 %i.jd ; 2 uses
  %i.jf = extractelement <16 x i64> %i.im, i64 9
  %i.jg = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep407, i64 %i.jf ; 2 uses
  %i.jh = extractelement <16 x i64> %i.im, i64 10
  %i.ji = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep407, i64 %i.jh ; 2 uses
  %i.jj = extractelement <16 x i64> %i.im, i64 11
  %i.jk = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep407, i64 %i.jj ; 2 uses
  %i.jl = extractelement <16 x i64> %i.im, i64 12
  %i.jm = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep407, i64 %i.jl ; 2 uses
  %i.jn = extractelement <16 x i64> %i.im, i64 13
  %i.jo = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep407, i64 %i.jn ; 2 uses
  %i.jp = extractelement <16 x i64> %i.im, i64 14
  %i.jq = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep407, i64 %i.jp ; 2 uses
  %i.jr = extractelement <16 x i64> %i.im, i64 15
  %i.js = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep407, i64 %i.jr ; 2 uses
  %i.jt = load i16, ptr %i.io, align 2, !tbaa !102
  %i.ju = load i16, ptr %i.iq, align 2, !tbaa !102
  %i.jv = load i16, ptr %i.is, align 2, !tbaa !102
  %i.jw = load i16, ptr %i.iu, align 2, !tbaa !102
  %i.jx = load i16, ptr %i.iw, align 2, !tbaa !102
  %i.jy = load i16, ptr %i.iy, align 2, !tbaa !102
  %i.jz = load i16, ptr %i.ja, align 2, !tbaa !102
  %i.ka = load i16, ptr %i.jc, align 2, !tbaa !102
  %i.kb = load i16, ptr %i.je, align 2, !tbaa !102
  %i.kc = load i16, ptr %i.jg, align 2, !tbaa !102
  %i.kd = load i16, ptr %i.ji, align 2, !tbaa !102
  %i.ke = load i16, ptr %i.jk, align 2, !tbaa !102
  %i.kf = load i16, ptr %i.jm, align 2, !tbaa !102
  %i.kg = load i16, ptr %i.jo, align 2, !tbaa !102
  %i.kh = load i16, ptr %i.jq, align 2, !tbaa !102
  %i.ki = load i16, ptr %i.js, align 2, !tbaa !102
  %i.kj = insertelement <16 x i16> poison, i16 %i.jt, i64 0
  %i.kk = insertelement <16 x i16> %i.kj, i16 %i.ju, i64 1
  %i.kl = insertelement <16 x i16> %i.kk, i16 %i.jv, i64 2
  %i.km = insertelement <16 x i16> %i.kl, i16 %i.jw, i64 3
  %i.kn = insertelement <16 x i16> %i.km, i16 %i.jx, i64 4
  %i.ko = insertelement <16 x i16> %i.kn, i16 %i.jy, i64 5
  %i.kp = insertelement <16 x i16> %i.ko, i16 %i.jz, i64 6
  %i.kq = insertelement <16 x i16> %i.kp, i16 %i.ka, i64 7
  %i.kr = insertelement <16 x i16> %i.kq, i16 %i.kb, i64 8
  %i.ks = insertelement <16 x i16> %i.kr, i16 %i.kc, i64 9
  %i.kt = insertelement <16 x i16> %i.ks, i16 %i.kd, i64 10
  %i.ku = insertelement <16 x i16> %i.kt, i16 %i.ke, i64 11
  %i.kv = insertelement <16 x i16> %i.ku, i16 %i.kf, i64 12
  %i.kw = insertelement <16 x i16> %i.kv, i16 %i.kg, i64 13
  %i.kx = insertelement <16 x i16> %i.kw, i16 %i.kh, i64 14
  %i.ky = insertelement <16 x i16> %i.kx, i16 %i.ki, i64 15
  %i.kz = add <16 x i16> %i.ky, splat (i16 1)     ; 16 uses
  %i.la = extractelement <16 x i16> %i.kz, i64 0
  store i16 %i.la, ptr %i.io, align 2, !tbaa !102
  %i.lb = extractelement <16 x i16> %i.kz, i64 1
  store i16 %i.lb, ptr %i.iq, align 2, !tbaa !102
  %i.lc = extractelement <16 x i16> %i.kz, i64 2
  store i16 %i.lc, ptr %i.is, align 2, !tbaa !102
  %i.ld = extractelement <16 x i16> %i.kz, i64 3
  store i16 %i.ld, ptr %i.iu, align 2, !tbaa !102
  %i.le = extractelement <16 x i16> %i.kz, i64 4
  store i16 %i.le, ptr %i.iw, align 2, !tbaa !102
  %i.lf = extractelement <16 x i16> %i.kz, i64 5
  store i16 %i.lf, ptr %i.iy, align 2, !tbaa !102
  %i.lg = extractelement <16 x i16> %i.kz, i64 6
  store i16 %i.lg, ptr %i.ja, align 2, !tbaa !102
  %i.lh = extractelement <16 x i16> %i.kz, i64 7
  store i16 %i.lh, ptr %i.jc, align 2, !tbaa !102
  %i.li = extractelement <16 x i16> %i.kz, i64 8
  store i16 %i.li, ptr %i.je, align 2, !tbaa !102
  %i.lj = extractelement <16 x i16> %i.kz, i64 9
  store i16 %i.lj, ptr %i.jg, align 2, !tbaa !102
  %i.lk = extractelement <16 x i16> %i.kz, i64 10
  store i16 %i.lk, ptr %i.ji, align 2, !tbaa !102
  %i.ll = extractelement <16 x i16> %i.kz, i64 11
  store i16 %i.ll, ptr %i.jk, align 2, !tbaa !102
  %i.lm = extractelement <16 x i16> %i.kz, i64 12
  store i16 %i.lm, ptr %i.jm, align 2, !tbaa !102
  %i.ln = extractelement <16 x i16> %i.kz, i64 13
  store i16 %i.ln, ptr %i.jo, align 2, !tbaa !102
  %i.lo = extractelement <16 x i16> %i.kz, i64 14
  store i16 %i.lo, ptr %i.jq, align 2, !tbaa !102
  %i.lp = extractelement <16 x i16> %i.kz, i64 15
  store i16 %i.lp, ptr %i.js, align 2, !tbaa !102
  %index.next = add nuw i32 %index, 16            ; 2 uses
  %vec.ind.next = add nuw <16 x i32> %vec.ind, splat (i32 16)
  %i.lq = icmp eq i32 %index.next, %n.vec
  br i1 %i.lq, label %middle.block, label %vector.body, !llvm.loop !140

end_hunk_0
