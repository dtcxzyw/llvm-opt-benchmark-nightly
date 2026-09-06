Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/low_memory_render_pipeline?download=true
inline.NumInlined: 2590
inline.NumDeleted: 1271
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN3jxl23LowMemoryRenderPipeline14PrepareBuffersEmm:bb.a
  %i.o = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %i.i
  store ptr %i.o, ptr %i.k, align 8, !tbaa !291
  %i.p = add i64 %i.m, -40                        ; 2 uses
  %i.q = urem i64 %i.p, 40
  %i.r = sub nuw i64 %i.p, %i.q
  %i.s = add nuw i64 %i.r, 40                     ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.n, i8 0, i64 %i.s, i1 false)
  %scevgep.i.i = getelementptr i8, ptr %i.n, i64 %i.s
  store ptr %scevgep.i.i, ptr %i.j, align 8, !tbaa !292
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !26  ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %.pre19 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !102 ; 2 uses
  %.pre20 = load ptr, ptr %.pre, align 8, !tbaa !31 ; 3 uses
  %i.t = icmp eq ptr %.pre19, %.pre20
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.v = load i64, ptr %i.u, align 8, !tbaa !81   ; 2 uses
  %i.w = urem i64 %2, %i.v
  %i.x = udiv i64 %2, %i.v
  br i1 %i.t, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt3__16vectorINS_4pairIPN3jxl5PlaneIfEENS2_5RectTImEEEENS_9allocatorIS8_EEEC2Em.exit
  %.pre27 = ptrtoint ptr %.pre19 to i64
  %.pre28 = ptrtoint ptr %.pre20 to i64
  %.pre30 = sub i64 %.pre27, %.pre28
  %.pre32 = ashr exact i64 %.pre30, 4
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 504
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !135, !range !147, !noundef !148
  %i.ab = trunc nuw i8 %i.aa to i1
  %i.ac = select i1 %i.ab, i64 %2, i64 %3
  %i.ad = load ptr, ptr %i.y, align 8, !tbaa !137
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %i.ac
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !87
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 528
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 536
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 496
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.pre21 = load i64, ptr %i.ag, align 8, !tbaa !85 ; 4 uses
  %.pre22 = load i64, ptr %i.ah, align 8, !tbaa !86 ; 4 uses
  %.pre23 = load i64, ptr %i.ai, align 8, !tbaa !82
  %.pre24 = load i64, ptr %i.aj, align 8, !tbaa !78
  %.pre25 = load i64, ptr %i.ak, align 8, !tbaa !83
  %.pre26 = load i64, ptr %i.al, align 8, !tbaa !84
  %i.am = shl i64 %.pre23, %.pre24                ; 2 uses
  %i.an = add i64 %.pre25, -1
  %i.ao = add i64 %.pre26, -1
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %.018 = phi i64 [ 0, %.lr.ph ], [ %i.bu, %bb.d ] ; 4 uses
  %i.ap = getelementptr inbounds nuw [56 x i8], ptr %i.af, i64 %.018
  %i.aq = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %.018 ; 5 uses
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !294
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %.pre20, i64 %.018 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !79 ; 2 uses
  %i.at = lshr i64 %i.am, %i.as                   ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !80 ; 2 uses
  %i.aw = lshr i64 %i.am, %i.av                   ; 3 uses
  %i.ax = trunc i64 %i.as to i32
  %i.ay = shl nuw i32 1, %i.ax
  %i.az = sext i32 %i.ay to i64                   ; 2 uses
  %i.ba = add i64 %i.an, %i.az
  %i.bb = udiv i64 %i.ba, %i.az
  %i.bc = mul i64 %i.at, %i.w
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = add i64 %i.bd, %.pre21                  ; 2 uses
  %i.bf = trunc i64 %i.av to i32
  %i.bg = shl nuw i32 1, %i.bf
  %i.bh = sext i32 %i.bg to i64                   ; 2 uses
  %i.bi = add i64 %i.ao, %i.bh
  %i.bj = udiv i64 %i.bi, %i.bh
  %i.bk = mul i64 %i.aw, %i.x
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = add i64 %i.bl, %.pre22                  ; 2 uses
  %i.bn = add i64 %i.at, %.pre21
  %.not.i.i = icmp ugt i64 %i.bn, %i.be
  %i.bo = tail call i64 @llvm.usub.sat.i64(i64 %i.be, i64 %.pre21)
  %i.bp = select i1 %.not.i.i, i64 %i.bo, i64 %i.at
  %i.bq = add i64 %i.aw, %.pre22
  %.not.i8.i = icmp ugt i64 %i.bq, %i.bm
  %i.br = tail call i64 @llvm.usub.sat.i64(i64 %i.bm, i64 %.pre22)
  %i.bs = select i1 %.not.i8.i, i64 %i.br, i64 %i.aw
  %i.bt = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store i64 %.pre21, ptr %i.bt, align 8, !tbaa !33
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store i64 %.pre22, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !33
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store i64 %i.bp, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !33
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  store i64 %i.bs, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !33
  %i.bu = add nuw i64 %.018, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.bu, %.pre32
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !285

._crit_edge:                                      ; preds = %bb.d, %bb.a, %_ZNSt3__16vectorINS_4pairIPN3jxl5PlaneIfEENS2_5RectTImEEEENS_9allocatorIS8_EEEC2Em.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i32 @_ZN3jxl23LowMemoryRenderPipeline10RenderRectEmRNSt3__16vectorINS_5PlaneIfEENS1_9allocatorIS4_EEEENS_5RectTImEESA_(ptr noundef nonnull align 8 dereferenceable(752) %0, i64 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef readonly byval(%"class.jxl::RectT") align 8 captures(none) %3, ptr nofree noundef readonly byval(%"class.jxl::RectT") align 8 captures(none) %4) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 7 uses
  %5 = alloca %class.anon.130, align 8            ; 11 uses
  %6 = alloca %"class.std::__1::vector.50", align 8 ; 11 uses
  %7 = alloca %"class.std::__1::vector.50", align 8 ; 11 uses
  %8 = alloca %"class.jxl::(anonymous namespace)::Rows", align 8 ; 10 uses
  %9 = alloca %"class.std::__1::vector.94", align 8 ; 18 uses
  %10 = alloca %"class.std::__1::vector.108", align 8 ; 7 uses
  %11 = alloca %"class.std::__1::vector.101", align 8 ; 11 uses
  %12 = alloca %"class.std::__1::vector.108", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 11 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !111  ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !112  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.not = icmp eq ptr %i.f, %i.g
  br i1 %.not, label %_ZNSt3__16vectorIN3jxl5RectTImEENS_9allocatorIS3_EEE6resizeEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.j, %i.i
  %i.l = ashr exact i64 %i.k, 3
  call void @_ZNSt3__16vectorIN3jxl5RectTImEENS_9allocatorIS3_EEE8__appendEm(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %i.l) #19
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !111 ; 2 uses
  %.pre398 = load ptr, ptr %i.d, align 8, !tbaa !112 ; 2 uses
  %.pre411 = ptrtoint ptr %.pre to i64
  %.pre412 = ptrtoint ptr %.pre398 to i64
  %.pre414 = sub i64 %.pre411, %.pre412           ; 2 uses
  %.pre416 = ashr exact i64 %.pre414, 3
  %i.m = icmp eq ptr %.pre, %.pre398
  br label %_ZNSt3__16vectorIN3jxl5RectTImEENS_9allocatorIS3_EEE6resizeEm.exit

_ZNSt3__16vectorIN3jxl5RectTImEENS_9allocatorIS3_EEE6resizeEm.exit: ; preds = %bb.a, %bb.b
  %.pre-phi417 = phi i64 [ %.pre416, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %.pre-phi415 = phi i64 [ %.pre414, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.not.i = phi i1 [ %i.m, %bb.b ], [ true, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !78   ; 3 uses
  %i.p = load i64, ptr %4, align 8, !tbaa !97, !noalias !325
  %i.q = trunc i64 %i.o to i32
  %i.r = shl nuw i32 1, %i.q
  %i.s = sext i32 %i.r to i64                     ; 2 uses
  %i.t = mul i64 %i.p, %i.s                       ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !99, !noalias !325
  %i.w = mul i64 %i.v, %i.s                       ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.y = load i64, ptr %i.x, align 8, !tbaa !98, !noalias !325
  %i.z = shl i64 %i.y, %i.o                       ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !100, !noalias !325
  %i.ac = shl i64 %i.ab, %i.o                     ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !83 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !84 ; 2 uses
  %i.ah = add i64 %i.z, %i.t                      ; 2 uses
  %.sroa.speculated8.i.i = call i64 @llvm.umin.i64(i64 %i.ae, i64 %i.ah)
  %i.ai = add i64 %i.ac, %i.w                     ; 2 uses
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %i.ag, i64 %i.ai)
  %.not.i.i.i.i = icmp ult i64 %i.ae, %i.ah
  %i.aj = call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated8.i.i, i64 %i.t)
  %i.ak = select i1 %.not.i.i.i.i, i64 %i.aj, i64 %i.z ; 2 uses
  %.not.i8.i.i.i = icmp ult i64 %i.ag, %i.ai
  %i.al = call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated.i.i, i64 %i.w)
  %i.am = select i1 %.not.i8.i.i.i, i64 %i.al, i64 %i.ac ; 3 uses
  %.not345.not = icmp eq i64 %.pre-phi415, 0
  br i1 %.not345.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt3__16vectorIN3jxl5RectTImEENS_9allocatorIS3_EEE6resizeEm.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !26
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !122
  %i.ar = load ptr, ptr %6, align 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %.0346 = phi i64 [ 0, %.lr.ph ], [ %i.br, %bb.e ] ; 4 uses
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %.0346
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %.0346
  %i.au = load i32, ptr %i.at, align 4, !tbaa !124
  %i.av = sext i32 %i.au to i64
  %i.aw = load ptr, ptr %i.as, align 8, !tbaa !31
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.aw, i64 %i.av ; 2 uses
  %.sroa.0102.0.copyload = load i64, ptr %i.ax, align 8, !tbaa !33 ; 3 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !33 ; 3 uses
  %i.ay = trunc i64 %.sroa.0102.0.copyload to i32
  %i.az = shl nuw i32 1, %i.ay
  %i.ba = sext i32 %i.az to i64                   ; 2 uses
  %i.bb = urem i64 %i.t, %i.ba
  %i.bc = udiv exact i64 %i.t, %i.ba
  %i.bd = icmp eq i64 %i.bb, 0
  br i1 %i.bd, label %bb.d, label %.loopexit324

bb.d:                                             ; preds = %bb.c
  %i.be = trunc i64 %.sroa.2.0.copyload to i32
  %i.bf = shl nuw i32 1, %i.be
  %i.bg = sext i32 %i.bf to i64                   ; 2 uses
  %i.bh = urem i64 %i.w, %i.bg
  %i.bi = udiv exact i64 %i.w, %i.bg
  %i.bj = icmp eq i64 %i.bh, 0
  br i1 %i.bj, label %bb.e, label %.loopexit324

bb.e:                                             ; preds = %bb.d
  %notmask.i = shl nsw i64 -1, %.sroa.0102.0.copyload
  %i.bk = xor i64 %notmask.i, -1
  %i.bl = add i64 %i.ak, %i.bk
  %i.bm = lshr i64 %i.bl, %.sroa.0102.0.copyload
  %notmask9.i = shl nsw i64 -1, %.sroa.2.0.copyload
  %i.bn = xor i64 %notmask9.i, -1
  %i.bo = add i64 %i.am, %i.bn
  %i.bp = lshr i64 %i.bo, %.sroa.2.0.copyload
  %i.bq = getelementptr inbounds nuw [32 x i8], ptr %i.ar, i64 %.0346 ; 4 uses
  store i64 %i.bc, ptr %i.bq, align 8, !tbaa !33
  %.sroa.4231.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store i64 %i.bi, ptr %.sroa.4231.0..sroa_idx, align 8, !tbaa !33
  %.sroa.5232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  store i64 %i.bm, ptr %.sroa.5232.0..sroa_idx, align 8, !tbaa !33
  %.sroa.6233.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  store i64 %i.bp, ptr %.sroa.6233.0..sroa_idx, align 8, !tbaa !33
  %i.br = add nuw i64 %.0346, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.br, %.pre-phi417
  br i1 %exitcond.not, label %.critedge, label %bb.c, !llvm.loop !299

.critedge:                                        ; preds = %bb.e, %_ZNSt3__16vectorIN3jxl5RectTImEENS_9allocatorIS3_EEE6resizeEm.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !144
  %i.bu = sext i32 %i.bt to i64                   ; 2 uses
  %i.bv = add i64 %i.t, %i.bu                     ; 2 uses
  %i.bw = call i64 @llvm.smin.i64(i64 %i.bv, i64 0)
  %spec.select = sub nsw i64 0, %i.bw             ; 5 uses
  %spec.select156 = call i64 @llvm.smax.i64(i64 %i.bv, i64 0) ; 2 uses
  %i.bx = add i64 %i.ak, %i.t
  %i.by = add i64 %i.bx, %i.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.bz = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  br i1 %.not.i, label %._crit_edge, label %bb.f

bb.f:                                             ; preds = %.critedge
  %i.cb = icmp ugt i64 %.pre-phi417, 576460752303423487
  br i1 %i.cb, label %bb.g, label %_ZNSt3__16vectorIN3jxl5RectTImEENS_9allocatorIS3_EEEC2Em.exit

bb.g:                                             ; preds = %bb.f
  call void @_ZNKSt3__16vectorIN3jxl5RectTImEENS_9allocatorIS3_EEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #22
  unreachable

_ZNSt3__16vectorIN3jxl5RectTImEENS_9allocatorIS3_EEEC2Em.exit: ; preds = %bb.f
  %i.cc = shl nuw i64 %.pre-phi415, 2             ; 3 uses
  %i.cd = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cc) #23 ; 7 uses
  store ptr %i.cd, ptr %7, align 8, !tbaa !129
  %i.ce = getelementptr inbounds nuw [32 x i8], ptr %i.cd, i64 %.pre-phi417
  store ptr %i.ce, ptr %i.ca, align 8, !tbaa !149
  %i.cf = getelementptr i8, ptr %i.cd, i64 %i.cc
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cd, i8 0, i64 %i.cc, i1 false)
  store ptr %i.cf, ptr %i.bz, align 8, !tbaa !128
  %.pre399 = load ptr, ptr %i.e, align 8, !tbaa !111 ; 2 uses
  %.pre400 = load ptr, ptr %i.d, align 8, !tbaa !112 ; 2 uses
  %.pre418 = ptrtoint ptr %.pre399 to i64
  %.pre420 = ptrtoint ptr %.pre400 to i64
  %i.cg = icmp eq ptr %.pre399, %.pre400
  %i.ch = sub i64 %.pre418, %.pre420
  %i.ci = ashr exact i64 %i.ch, 3                 ; 2 uses
  br i1 %i.cg, label %._crit_edge, label %.lr.ph351

.lr.ph351:                                        ; preds = %_ZNSt3__16vectorIN3jxl5RectTImEENS_9allocatorIS3_EEEC2Em.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.cm = load ptr, ptr %6, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 616
  %.pre401 = load i64, ptr %i.cj, align 8, !tbaa !114
  br label %bb.w

._crit_edge:                                      ; preds = %bb.z, %.critedge, %_ZNSt3__16vectorIN3jxl5RectTImEENS_9allocatorIS3_EEEC2Em.exit
  %i.co = phi i64 [ 0, %.critedge ], [ 0, %_ZNSt3__16vectorIN3jxl5RectTImEENS_9allocatorIS3_EEEC2Em.exit ], [ %i.ci, %bb.z ] ; 3 uses
  %.not377513 = phi i1 [ true, %.critedge ], [ true, %_ZNSt3__16vectorIN3jxl5RectTImEENS_9allocatorIS3_EEEC2Em.exit ], [ false, %bb.z ]
  %i.cp = phi ptr [ null, %.critedge ], [ %i.cd, %_ZNSt3__16vectorIN3jxl5RectTImEENS_9allocatorIS3_EEEC2Em.exit ], [ %i.cd, %bb.z ] ; 5 uses
  %.sroa.0266.0.copyload = load i64, ptr %3, align 8, !tbaa !33
  %.sroa.2.0..sroa_idx267 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.2.0.copyload268 = load i64, ptr %.sroa.2.0..sroa_idx267, align 8, !tbaa !33
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !85 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !86 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !26 ; 3 uses
  %i.cw = load i64, ptr %i.n, align 8, !tbaa !78
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !139
  %i.cz = getelementptr inbounds nuw [24 x i8], ptr %i.cy, i64 %1 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 10 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !101, !noalias !326 ; 2 uses
  %i.dc = load ptr, ptr %2, align 8, !tbaa !87, !noalias !326 ; 2 uses
  %i.dd = ptrtoint ptr %i.db to i64
  %i.de = ptrtoint ptr %i.dc to i64
  %i.df = sub i64 %i.dd, %i.de
  %i.dg = sdiv exact i64 %i.df, 56                ; 5 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !136, !noalias !326 ; 3 uses
  %i.dj = load ptr, ptr %i.cz, align 8, !tbaa !137, !noalias !326 ; 3 uses
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = ptrtoint ptr %i.dj to i64
  %i.dm = sub i64 %i.dk, %i.dl
  %i.dn = sdiv exact i64 %i.dm, 24
  %i.do = icmp eq i64 %i.dn, %i.dg
  br i1 %i.do, label %bb.h, label %_ZN3jxl8StatusOrINS_12_GLOBAL__N_14RowsEED2Ev.exit

bb.h:                                             ; preds = %._crit_edge
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !102, !noalias !326
  %i.dr = load ptr, ptr %i.cv, align 8, !tbaa !31, !noalias !326
  %i.ds = ptrtoint ptr %i.dq to i64
  %i.dt = ptrtoint ptr %i.dr to i64
  %i.du = sub i64 %i.ds, %i.dt
  %i.dv = ashr exact i64 %i.du, 4
  %i.dw = icmp eq i64 %i.dv, %i.dg
  br i1 %i.dw, label %.preheader160.i, label %_ZN3jxl8StatusOrINS_12_GLOBAL__N_14RowsEED2Ev.exit

.preheader160.i:                                  ; preds = %bb.h
  %.not157161.i = icmp eq ptr %i.dj, %i.di
  br i1 %.not157161.i, label %.critedge73.i, label %.critedge.i

bb.i:                                             ; preds = %.critedge.i
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.0142.0162.i, i64 24 ; 2 uses
  %.not157.i = icmp eq ptr %i.dx, %i.di
  br i1 %.not157.i, label %.critedge73.i, label %.critedge.i

.critedge.i:                                      ; preds = %.preheader160.i, %bb.i
  %.sroa.0142.0162.i = phi ptr [ %i.dx, %bb.i ], [ %i.dj, %.preheader160.i ] ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.0142.0162.i, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !101, !noalias !326
  %i.ea = load ptr, ptr %.sroa.0142.0162.i, align 8, !tbaa !87, !noalias !326
  %i.eb = ptrtoint ptr %i.dz to i64
  %i.ec = ptrtoint ptr %i.ea to i64
  %i.ed = sub i64 %i.eb, %i.ec
  %i.ee = sdiv exact i64 %i.ed, 56
  %i.ef = icmp eq i64 %i.ee, %i.co
  br i1 %i.ef, label %bb.i, label %_ZN3jxl8StatusOrINS_12_GLOBAL__N_14RowsEED2Ev.exit

.critedge73.i:                                    ; preds = %bb.i, %.preheader160.i
  %i.eg = add nsw i64 %i.co, 1                    ; 4 uses
  %.not.i.i = icmp eq ptr %i.db, %i.dc
  br i1 %.not.i.i, label %_ZNSt3__16vectorIN3jxl12_GLOBAL__N_14Rows7RowInfoENS_9allocatorIS4_EEEC2Em.exit.i, label %bb.j

bb.j:                                             ; preds = %.critedge73.i
  %i.eh = icmp ugt i64 %i.dg, 768614336404564650
  br i1 %i.eh, label %bb.k, label %_ZNSt3__16vectorIN3jxl12_GLOBAL__N_14Rows7RowInfoENS_9allocatorIS4_EEE11__vallocateB8nn180100Em.exit.i.i

bb.k:                                             ; preds = %bb.j
  call fastcc void @_ZNKSt3__16vectorIN3jxl12_GLOBAL__N_14Rows7RowInfoENS_9allocatorIS4_EEE20__throw_length_errorB8nn180100Ev() #22, !noalias !326
  unreachable

_ZNSt3__16vectorIN3jxl12_GLOBAL__N_14Rows7RowInfoENS_9allocatorIS4_EEE11__vallocateB8nn180100Em.exit.i.i: ; preds = %bb.j
  %i.ei = mul nuw nsw i64 %i.dg, 24               ; 2 uses
  %i.ej = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ei) #23, !noalias !326 ; 4 uses
  %i.ek = getelementptr inbounds nuw [24 x i8], ptr %i.ej, i64 %i.dg
  %i.el = add nsw i64 %i.ei, -24                  ; 2 uses
  %i.em = urem i64 %i.el, 24
  %i.en = sub nuw nsw i64 %i.el, %i.em
  %i.eo = add nuw nsw i64 %i.en, 24               ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ej, i8 0, i64 %i.eo, i1 false), !noalias !326
  %scevgep.i.i.i = getelementptr i8, ptr %i.ej, i64 %i.eo
  %i.ep = ptrtoint ptr %i.ek to i64
  br label %_ZNSt3__16vectorIN3jxl12_GLOBAL__N_14Rows7RowInfoENS_9allocatorIS4_EEEC2Em.exit.i

_ZNSt3__16vectorIN3jxl12_GLOBAL__N_14Rows7RowInfoENS_9allocatorIS4_EEEC2Em.exit.i: ; preds = %_ZNSt3__16vectorIN3jxl12_GLOBAL__N_14Rows7RowInfoENS_9allocatorIS4_EEE11__vallocateB8nn180100Em.exit.i.i, %.critedge73.i
  %.sroa.9.0.i = phi i64 [ 0, %.critedge73.i ], [ %i.ep, %_ZNSt3__16vectorIN3jxl12_GLOBAL__N_14Rows7RowInfoENS_9allocatorIS4_EEE11__vallocateB8nn180100Em.exit.i.i ]
  %.sroa.6131.0.i = phi ptr [ null, %.critedge73.i ], [ %scevgep.i.i.i, %_ZNSt3__16vectorIN3jxl12_GLOBAL__N_14Rows7RowInfoENS_9allocatorIS4_EEE11__vallocateB8nn180100Em.exit.i.i ] ; 2 uses
  %.sroa.0130.0.i = phi ptr [ null, %.critedge73.i ], [ %i.ej, %_ZNSt3__16vectorIN3jxl12_GLOBAL__N_14Rows7RowInfoENS_9allocatorIS4_EEE11__vallocateB8nn180100Em.exit.i.i ] ; 6 uses
  %.not158.i = icmp eq i64 %i.eg, 0
  br i1 %.not158.i, label %_ZNSt3__16vectorINS0_IN3jxl12_GLOBAL__N_14Rows7RowInfoENS_9allocatorIS4_EEEENS5_IS7_EEE6resizeEmRKS7_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt3__16vectorIN3jxl12_GLOBAL__N_14Rows7RowInfoENS_9allocatorIS4_EEEC2Em.exit.i
  %i.eq = icmp ugt i64 %i.eg, 768614336404564650
  br i1 %i.eq, label %bb.m, label %_ZNSt3__114__split_bufferINS_6vectorIN3jxl12_GLOBAL__N_14Rows7RowInfoENS_9allocatorIS5_EEEERNS6_IS8_EEEC2EmmSA_.exit.i.i.i

bb.m:                                             ; preds = %bb.l
  call fastcc void @_ZNKSt3__16vectorINS0_IN3jxl12_GLOBAL__N_14Rows7RowInfoENS_9allocatorIS4_EEEENS5_IS7_EEE20__throw_length_errorB8nn180100Ev() #22, !noalias !326
  unreachable

_ZNSt3__114__split_bufferINS_6vectorIN3jxl12_GLOBAL__N_14Rows7RowInfoENS_9allocatorIS5_EEEERNS6_IS8_EEEC2EmmSA_.exit.i.i.i: ; preds = %bb.l
  %i.er = mul nuw i64 %i.eg, 24                   ; 4 uses
  %i.es = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.er) #23, !noalias !326 ; 7 uses
  %i.et = getelementptr inbounds nuw [24 x i8], ptr %i.es, i64 %i.eg ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.er ; 3 uses
  %i.ev = icmp eq ptr %.sroa.6131.0.i, %.sroa.0130.0.i
  br i1 %i.ev, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIN3jxl12_GLOBAL__N_14Rows7RowInfoENS1_IS6_EEEEEEE9constructB8nn180100IS8_JRKS8_EvEEvRS9_PT_DpOT0_.exit.i17.us.preheader.i.i.i, label %_ZNSt3__114__split_bufferINS_6vectorIN3jxl12_GLOBAL__N_14Rows7RowInfoENS_9allocatorIS5_EEEERNS6_IS8_EEEC2EmmSA_.exit.split.i.preheader.i.i

_ZNSt3__114__split_bufferINS_6vectorIN3jxl12_GLOBAL__N_14Rows7RowInfoENS_9allocatorIS5_EEEERNS6_IS8_EEEC2EmmSA_.exit.split.i.preheader.i.i: ; preds = %_ZNSt3__114__split_bufferINS_6vectorIN3jxl12_GLOBAL__N_14Rows7RowInfoENS_9allocatorIS5_EEEERNS6_IS8_EEEC2EmmSA_.exit.i.i.i
  %i.ew = ptrtoint ptr %.sroa.6131.0.i to i64
  %i.ex = ptrtoint ptr %.sroa.0130.0.i to i64
  %i.ey = sub i64 %i.ew, %i.ex                    ; 4 uses
  %i.ez = sdiv exact i64 %i.ey, 24
  %i.fa = icmp ugt i64 %i.ez, 768614336404564650
  br i1 %i.fa, label %_ZNSt3__114__split_bufferINS_6vectorIN3jxl12_GLOBAL__N_14Rows7RowInfoENS_9allocatorIS5_EEEERNS6_IS8_EEEC2EmmSA_.exit.split.i.us.i.i, label %_ZNSt3__114__split_bufferINS_6vectorIN3jxl12_GLOBAL__N_14Rows7RowInfoENS_9allocatorIS5_EEEERNS6_IS8_EEEC2EmmSA_.exit.split.i.i.i

_ZNSt3__114__split_bufferINS_6vectorIN3jxl12_GLOBAL__N_14Rows7RowInfoENS_9allocatorIS5_EEEERNS6_IS8_EEEC2EmmSA_.exit.split.i.us.i.i: ; preds = %_ZNSt3__114__split_bufferINS_6vectorIN3jxl12_GLOBAL__N_14Rows7RowInfoENS_9allocatorIS5_EEEERNS6_IS8_EEEC2EmmSA_.exit.split.i.preheader.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.es, i8 0, i64 24, i1 false), !noalias !326
  call fastcc void @_ZNKSt3__16vectorIN3jxl12_GLOBAL__N_14Rows7RowInfoENS_9allocatorIS4_EEE20__throw_length_errorB8nn180100Ev() #22, !noalias !326
  unreachable

_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIN3jxl12_GLOBAL__N_14Rows7RowInfoENS1_IS6_EEEEEEE9constructB8nn180100IS8_JRKS8_EvEEvRS9_PT_DpOT0_.exit.i17.us.preheader.i.i.i: ; preds = %_ZNSt3__114__split_bufferINS_6vectorIN3jxl12_GLOBAL__N_14Rows7RowInfoENS_9allocatorIS5_EEEERNS6_IS8_EEEC2EmmSA_.exit.i.i.i
  %i.fb = add i64 %i.er, -24
  %i.fc = urem i64 %i.fb, 24
  %i.fd = sub nuw i64 %i.er, %i.fc
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.es, i8 0, i64 %i.fd, i1 false), !noalias !326
  br label %_ZNSt3__16vectorINS0_IN3jxl12_GLOBAL__N_14Rows7RowInfoENS_9allocatorIS4_EEEENS5_IS7_EEE6resizeEmRKS7_.exit.i

_ZNSt3__114__split_bufferINS_6vectorIN3jxl12_GLOBAL__N_14Rows7RowInfoENS_9allocatorIS5_EEEERNS6_IS8_EEEC2EmmSA_.exit.split.i.i.i: ; preds = %_ZNSt3__114__split_bufferINS_6vectorIN3jxl12_GLOBAL__N_14Rows7RowInfoENS_9allocatorIS5_EEEERNS6_IS8_EEEC2EmmSA_.exit.split.i.preheader.i.i, %_ZNSt3__114__split_bufferINS_6vectorIN3jxl12_GLOBAL__N_14Rows7RowInfoENS_9allocatorIS5_EEEERNS6_IS8_EEEC2EmmSA_.exit.split.i.i.i
  %.sroa.0.08.i.i.i.i = phi ptr [ %i.fi, %_ZNSt3__114__split_bufferINS_6vectorIN3jxl12_GLOBAL__N_14Rows7RowInfoENS_9allocatorIS5_EEEERNS6_IS8_EEEC2EmmSA_.exit.split.i.i.i ], [ %i.es, %_ZNSt3__114__split_bufferINS_6vectorIN3jxl12_GLOBAL__N_14Rows7RowInfoENS_9allocatorIS5_EEEERNS6_IS8_EEEC2EmmSA_.exit.split.i.preheader.i.i ] ; 5 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 8
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.08.i.i.i.i, i8 0, i64 24, i1 false), !noalias !326
  %i.fg = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ey) #23, !noalias !326 ; 3 uses
  store ptr %i.fg, ptr %.sroa.0.08.i.i.i.i, align 8, !tbaa !154, !noalias !326
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.ey ; 2 uses
  store ptr %i.fh, ptr %i.ff, align 8, !tbaa !327, !noalias !326
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.fg, ptr readonly align 8 %.sroa.0130.0.i, i64 %i.ey, i1 false), !noalias !326
  store ptr %i.fh, ptr %i.fe, align 8, !tbaa !328, !noalias !326
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 24 ; 2 uses
  %.not.i18.i.i.i = icmp eq ptr %i.fi, %i.eu
  br i1 %.not.i18.i.i.i, label %_ZNSt3__16vectorINS0_IN3jxl12_GLOBAL__N_14Rows7RowInfoENS_9allocatorIS4_EEEENS5_IS7_EEE6resizeEmRKS7_.exit.i, label %_ZNSt3__114__split_bufferINS_6vectorIN3jxl12_GLOBAL__N_14Rows7RowInfoENS_9allocatorIS5_EEEERNS6_IS8_EEEC2EmmSA_.exit.split.i.i.i, !llvm.loop !302

_ZNSt3__16vectorINS0_IN3jxl12_GLOBAL__N_14Rows7RowInfoENS_9allocatorIS4_EEEENS5_IS7_EEE6resizeEmRKS7_.exit.i: ; preds = %_ZNSt3__114__split_bufferINS_6vectorIN3jxl12_GLOBAL__N_14Rows7RowInfoENS_9allocatorIS5_EEEERNS6_IS8_EEEC2EmmSA_.exit.split.i.i.i, %_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIN3jxl12_GLOBAL__N_14Rows7RowInfoENS1_IS6_EEEEEEE9constructB8nn180100IS8_JRKS8_EvEEvRS9_PT_DpOT0_.exit.i17.us.preheader.i.i.i, %_ZNSt3__16vectorIN3jxl12_GLOBAL__N_14Rows7RowInfoENS_9allocatorIS4_EEEC2Em.exit.i
  %.sroa.26.1.i = phi ptr [ null, %_ZNSt3__16vectorIN3jxl12_GLOBAL__N_14Rows7RowInfoENS_9allocatorIS4_EEEC2Em.exit.i ], [ %i.et, %_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIN3jxl12_GLOBAL__N_14Rows7RowInfoENS1_IS6_EEEEEEE9constructB8nn180100IS8_JRKS8_EvEEvRS9_PT_DpOT0_.exit.i17.us.preheader.i.i.i ], [ %i.et, %_ZNSt3__114__split_bufferINS_6vectorIN3jxl12_GLOBAL__N_14Rows7RowInfoENS_9allocatorIS5_EEEERNS6_IS8_EEEC2EmmSA_.exit.split.i.i.i ] ; 2 uses
  %.sroa.17.1.i = phi ptr [ null, %_ZNSt3__16vectorIN3jxl12_GLOBAL__N_14Rows7RowInfoENS_9allocatorIS4_EEEC2Em.exit.i ], [ %i.eu, %_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIN3jxl12_GLOBAL__N_14Rows7RowInfoENS1_IS6_EEEEEEE9constructB8nn180100IS8_JRKS8_EvEEvRS9_PT_DpOT0_.exit.i17.us.preheader.i.i.i ], [ %i.eu, %_ZNSt3__114__split_bufferINS_6vectorIN3jxl12_GLOBAL__N_14Rows7RowInfoENS_9allocatorIS5_EEEERNS6_IS8_EEEC2EmmSA_.exit.split.i.i.i ] ; 3 uses
  %.sroa.0132.1.i = phi ptr [ null, %_ZNSt3__16vectorIN3jxl12_GLOBAL__N_14Rows7RowInfoENS_9allocatorIS4_EEEC2Em.exit.i ], [ %i.es, %_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIN3jxl12_GLOBAL__N_14Rows7RowInfoENS1_IS6_EEEEEEE9constructB8nn180100IS8_JRKS8_EvEEvRS9_PT_DpOT0_.exit.i17.us.preheader.i.i.i ], [ %i.es, %_ZNSt3__114__split_bufferINS_6vectorIN3jxl12_GLOBAL__N_14Rows7RowInfoENS_9allocatorIS5_EEEERNS6_IS8_EEEC2EmmSA_.exit.split.i.i.i ] ; 8 uses
  %.not.i.i93.i = icmp eq ptr %.sroa.0130.0.i, null
  br i1 %.not.i.i93.i, label %_ZNSt3__16vectorIN3jxl12_GLOBAL__N_14Rows7RowInfoENS_9allocatorIS4_EEED2B8nn180100Ev.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt3__16vectorINS0_IN3jxl12_GLOBAL__N_14Rows7RowInfoENS_9allocatorIS4_EEEENS5_IS7_EEE6resizeEmRKS7_.exit.i
  %i.fj = ptrtoint ptr %.sroa.0130.0.i to i64
  %i.fk = sub i64 %.sroa.9.0.i, %i.fj
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0130.0.i, i64 noundef %i.fk) #24, !noalias !326
  br label %_ZNSt3__16vectorIN3jxl12_GLOBAL__N_14Rows7RowInfoENS_9allocatorIS4_EEED2B8nn180100Ev.exit.i

_ZNSt3__16vectorIN3jxl12_GLOBAL__N_14Rows7RowInfoENS_9allocatorIS4_EEED2B8nn180100Ev.exit.i: ; preds = %bb.n, %_ZNSt3__16vectorINS0_IN3jxl12_GLOBAL__N_14Rows7RowInfoENS_9allocatorIS4_EEEENS5_IS7_EEE6resizeEmRKS7_.exit.i
  %.pre173.i = load ptr, ptr %i.da, align 8, !tbaa !101, !noalias !326 ; 2 uses
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !87, !noalias !326 ; 3 uses
  br i1 %.not377513, label %.preheader.i, label %.preheader159.i

.preheader159.i:                                  ; preds = %_ZNSt3__16vectorIN3jxl12_GLOBAL__N_14Rows7RowInfoENS_9allocatorIS4_EEED2B8nn180100Ev.exit.i, %._crit_edge.i
  %i.fl = phi ptr [ %i.gi, %._crit_edge.i ], [ %.pre.i, %_ZNSt3__16vectorIN3jxl12_GLOBAL__N_14Rows7RowInfoENS_9allocatorIS4_EEED2B8nn180100Ev.exit.i ]
  %i.fm = phi ptr [ %i.gj, %._crit_edge.i ], [ %.pre.i, %_ZNSt3__16vectorIN3jxl12_GLOBAL__N_14Rows7RowInfoENS_9allocatorIS4_EEED2B8nn180100Ev.exit.i ] ; 3 uses
  %i.fn = phi ptr [ %i.gk, %._crit_edge.i ], [ %.pre173.i, %_ZNSt3__16vectorIN3jxl12_GLOBAL__N_14Rows7RowInfoENS_9allocatorIS4_EEED2B8nn180100Ev.exit.i ]
  %.070164.i = phi i64 [ %i.gl, %._crit_edge.i ], [ 0, %_ZNSt3__16vectorIN3jxl12_GLOBAL__N_14Rows7RowInfoENS_9allocatorIS4_EEED2B8nn180100Ev.exit.i ] ; 4 uses
  %.not169.i = icmp eq ptr %i.fn, %i.fm
  br i1 %.not169.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader159.i
  %i.fo = getelementptr [24 x i8], ptr %.sroa.0132.1.i, i64 %.070164.i
  %i.fp = getelementptr i8, ptr %i.fo, i64 24
  br label %bb.o

.preheader.i:                                     ; preds = %._crit_edge.i, %_ZNSt3__16vectorIN3jxl12_GLOBAL__N_14Rows7RowInfoENS_9allocatorIS4_EEED2B8nn180100Ev.exit.i
  %i.fq = phi ptr [ %.pre.i, %_ZNSt3__16vectorIN3jxl12_GLOBAL__N_14Rows7RowInfoENS_9allocatorIS4_EEED2B8nn180100Ev.exit.i ], [ %i.gi, %._crit_edge.i ] ; 3 uses
  %i.fr = phi ptr [ %.pre173.i, %_ZNSt3__16vectorIN3jxl12_GLOBAL__N_14Rows7RowInfoENS_9allocatorIS4_EEED2B8nn180100Ev.exit.i ], [ %i.gk, %._crit_edge.i ] ; 2 uses
  %.not165.not.i = icmp eq ptr %i.fr, %i.fq
  br i1 %.not165.not.i, label %.loopexit323, label %.lr.ph167.i

.lr.ph167.i:                                      ; preds = %.preheader.i
  %i.fs = ptrtoint ptr %i.fr to i64
  %i.ft = ptrtoint ptr %i.fq to i64
  %i.fu = sub i64 %i.fs, %i.ft
  %i.fv = sdiv exact i64 %i.fu, 56
  %.neg = mul i64 %i.cr, -4294967296
  %i.fw = ashr exact i64 %.neg, 32
  %.neg316 = mul i64 %i.ct, -4294967296
  %i.fx = ashr exact i64 %.neg316, 32
  %i.fy = add nsw i64 %i.fw, %.sroa.0266.0.copyload
  %i.fz = add nsw i64 %i.fx, %.sroa.2.0.copyload268
  %i.ga = trunc i64 %i.cw to i32
  %i.gb = shl nuw i32 1, %i.ga
  %i.gc = sext i32 %i.gb to i64                   ; 2 uses
  %i.gd = mul nsw i64 %i.fy, %i.gc                ; 2 uses
  %i.ge = mul nsw i64 %i.fz, %i.gc                ; 2 uses
  %i.gf = load ptr, ptr %i.cv, align 8, !tbaa !31, !noalias !326
  %sext = shl i64 %i.cr, 32
  %sext317 = shl i64 %i.ct, 32
  %i.gg = ashr exact i64 %sext317, 32
  %i.gh = ashr exact i64 %sext, 30
  br label %bb.r

._crit_edge.i:                                    ; preds = %bb.q, %.preheader159.i
  %i.gi = phi ptr [ %i.fl, %.preheader159.i ], [ %i.hl, %bb.q ] ; 2 uses
  %i.gj = phi ptr [ %i.fm, %.preheader159.i ], [ %i.hl, %bb.q ]
  %i.gk = phi ptr [ %i.fm, %.preheader159.i ], [ %i.hk, %bb.q ] ; 2 uses
  %i.gl = add nuw i64 %.070164.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.gl, %i.co
  br i1 %exitcond.not.i, label %.preheader.i, label %.preheader159.i, !llvm.loop !303

bb.o:                                             ; preds = %bb.q, %.lr.ph.i
  %.069163.i = phi i64 [ 0, %.lr.ph.i ], [ %i.hj, %bb.q ] ; 4 uses
  %i.gm = load ptr, ptr %i.d, align 8, !tbaa !112, !noalias !326
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %.070164.i
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !116, !noalias !326 ; 2 uses
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !118, !noalias !326
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 24
  %i.gr = load ptr, ptr %i.gq, align 8, !noalias !326
  %i.gs = call noundef i32 %i.gr(ptr noundef nonnull align 8 dereferenceable(40) %i.go, i64 noundef %.069163.i) #20, !noalias !326, !inline_history !304
  %i.gt = icmp eq i32 %i.gs, 2
  br i1 %i.gt, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.gu = load ptr, ptr %i.cz, align 8, !tbaa !137, !noalias !326
  %i.gv = getelementptr inbounds nuw [24 x i8], ptr %i.gu, i64 %.069163.i
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !87, !noalias !326
  %i.gx = getelementptr inbounds nuw [56 x i8], ptr %i.gw, i64 %.070164.i ; 3 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 4
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !91, !noalias !326
  %i.ha = add i32 %i.gz, -1
  %.val92.i = load ptr, ptr %i.fp, align 8, !tbaa !154, !noalias !326
  %i.hb = getelementptr inbounds nuw [24 x i8], ptr %.val92.i, i64 %.069163.i ; 3 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  store i32 %i.ha, ptr %i.hc, align 8, !tbaa !157, !noalias !326
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gx, i64 40
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !92, !noalias !326 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  call void @llvm.assume(i1 true) [ "align"(ptr %i.he, i64 64) ]
  store ptr %i.he, ptr %i.hb, align 8, !tbaa !158, !noalias !326
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !93, !noalias !326
  %i.hh = lshr i64 %i.hg, 2
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  store i64 %i.hh, ptr %i.hi, align 8, !tbaa !159, !noalias !326
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.hj = add nuw i64 %.069163.i, 1               ; 2 uses
  %i.hk = load ptr, ptr %i.da, align 8, !tbaa !101, !noalias !326 ; 2 uses
  %i.hl = load ptr, ptr %2, align 8, !tbaa !87, !noalias !326 ; 3 uses
  %i.hm = ptrtoint ptr %i.hk to i64
  %i.hn = ptrtoint ptr %i.hl to i64
  %i.ho = sub i64 %i.hm, %i.hn
  %i.hp = sdiv exact i64 %i.ho, 56
  %i.hq = icmp ult i64 %i.hj, %i.hp
  br i1 %i.hq, label %bb.o, label %._crit_edge.i, !llvm.loop !305

bb.r:                                             ; preds = %.critedge75.i, %.lr.ph167.i
  %.068166.i = phi i64 [ 0, %.lr.ph167.i ], [ %i.it, %.critedge75.i ] ; 4 uses
  %i.hr = getelementptr inbounds nuw [16 x i8], ptr %i.gf, i64 %.068166.i ; 2 uses
  %.sroa.07.0.copyload.i = load i64, ptr %i.hr, align 8, !tbaa !33, !noalias !326
  %i.hs = trunc i64 %.sroa.07.0.copyload.i to i32
  %i.ht = shl nuw i32 1, %i.hs
  %i.hu = sext i32 %i.ht to i64                   ; 2 uses
  %i.hv = srem i64 %i.gd, %i.hu
  %i.hw = sdiv exact i64 %i.gd, %i.hu
  %i.hx = icmp eq i64 %i.hv, 0
  br i1 %i.hx, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !33, !noalias !326
  %i.hy = trunc i64 %.sroa.2.0.copyload.i to i32
  %i.hz = shl nuw i32 1, %i.hy
  %i.ia = sext i32 %i.hz to i64                   ; 2 uses
  %i.ib = srem i64 %i.ge, %i.ia
  %i.ic = sdiv exact i64 %i.ge, %i.ia
  %i.id = icmp eq i64 %i.ib, 0
  br i1 %i.id, label %.critedge75.i, label %bb.t

.critedge75.i:                                    ; preds = %bb.s
  %i.ie = add nsw i64 %i.ic, %i.gg
  %i.if = getelementptr inbounds nuw [56 x i8], ptr %i.fq, i64 %.068166.i ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 40
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !92, !noalias !326
  %i.ii = getelementptr inbounds nuw i8, ptr %i.if, i64 16
  %i.ij = load i64, ptr %i.ii, align 8, !tbaa !93, !noalias !326 ; 2 uses
  %i.ik = mul i64 %i.ij, %i.ie
  %i.il = getelementptr inbounds nuw i8, ptr %i.ih, i64 %i.ik ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.il, i64 64) ]
  %i.im = getelementptr [4 x i8], ptr %i.il, i64 %i.hw
  %i.in = getelementptr i8, ptr %i.im, i64 %i.gh
  %i.io = getelementptr i8, ptr %i.in, i64 -128
  %.val89.i = load ptr, ptr %.sroa.0132.1.i, align 8, !tbaa !154, !noalias !326
  %i.ip = getelementptr inbounds nuw [24 x i8], ptr %.val89.i, i64 %.068166.i ; 3 uses
  store ptr %i.io, ptr %i.ip, align 8, !tbaa !158, !noalias !326
  %i.iq = lshr i64 %i.ij, 2
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ip, i64 16
  store i64 %i.iq, ptr %i.ir, align 8, !tbaa !159, !noalias !326
  %i.is = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  store i32 -1, ptr %i.is, align 8, !tbaa !157, !noalias !326
  %i.it = add nuw i64 %.068166.i, 1               ; 2 uses
  %exitcond171.not.i = icmp eq i64 %i.it, %i.fv
  br i1 %exitcond171.not.i, label %.loopexit323, label %bb.r, !llvm.loop !306

bb.t:                                             ; preds = %bb.s, %bb.r
  %.not.i.i95.i = icmp eq ptr %.sroa.0132.1.i, null
  br i1 %.not.i.i95.i, label %_ZN3jxl8StatusOrINS_12_GLOBAL__N_14RowsEED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.not6.i.i.i.i.i = icmp eq ptr %.sroa.0132.1.i, %.sroa.17.1.i
  br i1 %.not6.i.i.i.i.i, label %_ZNSt3__16vectorINS0_IN3jxl12_GLOBAL__N_14Rows7RowInfoENS_9allocatorIS4_EEEENS5_IS7_EEE7__clearB8nn180100Ev.exit.i.i.i, label %.lr.ph.i.i.i.i96.i

.lr.ph.i.i.i.i96.i:                               ; preds = %bb.u, %_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIN3jxl12_GLOBAL__N_14Rows7RowInfoENS1_IS6_EEEEEEE7destroyB8nn180100IS8_vEEvRS9_PT_.exit.i.i.i.i.i
  %.07.i.i.i.i.i = phi ptr [ %i.iu, %_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIN3jxl12_GLOBAL__N_14Rows7RowInfoENS1_IS6_EEEEEEE7destroyB8nn180100IS8_vEEvRS9_PT_.exit.i.i.i.i.i ], [ %.sroa.17.1.i, %bb.u ] ; 3 uses
  %i.iu = getelementptr inbounds i8, ptr %.07.i.i.i.i.i, i64 -24 ; 3 uses
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !154, !noalias !326 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.iv, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIN3jxl12_GLOBAL__N_14Rows7RowInfoENS1_IS6_EEEEEEE7destroyB8nn180100IS8_vEEvRS9_PT_.exit.i.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i.i.i96.i
  %i.iw = getelementptr inbounds i8, ptr %.07.i.i.i.i.i, i64 -16
  store ptr %i.iv, ptr %i.iw, align 8, !tbaa !328, !noalias !326
  %i.ix = getelementptr inbounds i8, ptr %.07.i.i.i.i.i, i64 -8
  %.val1.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ix, align 8, !tbaa !327, !noalias !326
  %i.iy = ptrtoint ptr %.val1.i.i.i.i.i.i.i.i.i to i64
  %i.iz = ptrtoint ptr %i.iv to i64
  %i.ja = sub i64 %i.iy, %i.iz
  call void @_ZdlPvm(ptr noundef nonnull %i.iv, i64 noundef %i.ja) #24, !noalias !326
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIN3jxl12_GLOBAL__N_14Rows7RowInfoENS1_IS6_EEEEEEE7destroyB8nn180100IS8_vEEvRS9_PT_.exit.i.i.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIN3jxl12_GLOBAL__N_14Rows7RowInfoENS1_IS6_EEEEEEE7destroyB8nn180100IS8_vEEvRS9_PT_.exit.i.i.i.i.i: ; preds = %bb.v, %.lr.ph.i.i.i.i96.i
  %.not.i.i.i.i97.i = icmp eq ptr %.sroa.0132.1.i, %i.iu
  br i1 %.not.i.i.i.i97.i, label %_ZNSt3__16vectorINS0_IN3jxl12_GLOBAL__N_14Rows7RowInfoENS_9allocatorIS4_EEEENS5_IS7_EEE7__clearB8nn180100Ev.exit.i.i.i, label %.lr.ph.i.i.i.i96.i, !llvm.loop !307

_ZNSt3__16vectorINS0_IN3jxl12_GLOBAL__N_14Rows7RowInfoENS_9allocatorIS4_EEEENS5_IS7_EEE7__clearB8nn180100Ev.exit.i.i.i: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIN3jxl12_GLOBAL__N_14Rows7RowInfoENS1_IS6_EEEEEEE7destroyB8nn180100IS8_vEEvRS9_PT_.exit.i.i.i.i.i, %bb.u
  %i.jb = ptrtoint ptr %.sroa.26.1.i to i64
  %i.jc = ptrtoint ptr %.sroa.0132.1.i to i64
  %i.jd = sub i64 %i.jb, %i.jc
  call void @_ZdlPvm(ptr noundef %.sroa.0132.1.i, i64 noundef %i.jd) #24, !noalias !326
  br label %_ZN3jxl8StatusOrINS_12_GLOBAL__N_14RowsEED2Ev.exit

bb.w:                                             ; preds = %.lr.ph351, %bb.z
  %.0135350 = phi i64 [ 0, %.lr.ph351 ], [ %i.jp, %bb.z ] ; 5 uses
  %i.je = icmp ult i64 %.0135350, %.pre401
  br i1 %i.je, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.jf = getelementptr inbounds nuw [32 x i8], ptr %i.cm, i64 %.0135350 ; 2 uses
  %i.jg = load i64, ptr %i.jf, align 8, !tbaa !97
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jf, i64 16
  %i.ji = load i64, ptr %i.jh, align 8, !tbaa !98
  %i.jj = load ptr, ptr %i.cn, align 8, !tbaa !129
  %i.jk = getelementptr inbounds nuw [32 x i8], ptr %i.jj, i64 %.0135350
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 24
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.jm = load i64, ptr %i.ck, align 8, !tbaa !142
  %.sroa.speculated216 = call i64 @llvm.smin.i64(i64 %i.jm, i64 %i.by)
  %i.jn = sub i64 %.sroa.speculated216, %spec.select156
  %.sroa.speculated = call i64 @llvm.smax.i64(i64 %i.jn, i64 0)
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %.sink531 = phi i64 [ %i.jg, %bb.x ], [ %spec.select156, %bb.y ]
  %.sink528 = phi i64 [ %i.ji, %bb.x ], [ %.sroa.speculated, %bb.y ]
  %.sink.in = phi ptr [ %i.jl, %bb.x ], [ %i.cl, %bb.y ]
  %.sink = load i64, ptr %.sink.in, align 8, !tbaa !33
  %i.jo = getelementptr inbounds nuw [32 x i8], ptr %i.cd, i64 %.0135350 ; 4 uses
  store i64 %.sink531, ptr %i.jo, align 8, !tbaa !33
  %.sroa.4222.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jo, i64 8
  store i64 0, ptr %.sroa.4222.0..sroa_idx, align 8, !tbaa !33
  %.sroa.5223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jo, i64 16
  store i64 %.sink528, ptr %.sroa.5223.0..sroa_idx, align 8, !tbaa !33
  %.sroa.6224.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jo, i64 24
  store i64 %.sink, ptr %.sroa.6224.0..sroa_idx, align 8, !tbaa !33
  %i.jp = add nuw i64 %.0135350, 1                ; 2 uses
  %exitcond392.not = icmp eq i64 %i.jp, %i.ci
  br i1 %exitcond392.not, label %._crit_edge, label %bb.w, !llvm.loop !308

.loopexit323:                                     ; preds = %.critedge75.i, %.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.jq = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr %.sroa.0132.1.i, ptr %8, align 8, !tbaa !164, !alias.scope !329
  store ptr %.sroa.17.1.i, ptr %i.jq, align 8, !tbaa !330, !alias.scope !329
  store ptr %.sroa.26.1.i, ptr %i.jr, align 8, !tbaa !331, !alias.scope !329
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 8 uses
  %i.jt = load i64, ptr %i.js, align 8, !tbaa !113
  %i.ju = add i64 %i.jt, 1                        ; 4 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %.not.i163 = icmp eq i64 %i.ju, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  br i1 %.not.i163, label %.lr.ph356.preheader, label %bb.aa

bb.aa:                                            ; preds = %.loopexit323
  %i.jx = icmp ugt i64 %i.ju, 768614336404564650
  br i1 %i.jx, label %bb.ab, label %_ZNSt3__16vectorINS0_INS0_IPfNS_9allocatorIS1_EEEENS2_IS4_EEEENS2_IS6_EEEC2Em.exit

bb.ab:                                            ; preds = %bb.aa
  call void @_ZNKSt3__16vectorINS0_INS0_IPfNS_9allocatorIS1_EEEENS2_IS4_EEEENS2_IS6_EEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %9) #22
  unreachable

_ZNSt3__16vectorINS0_INS0_IPfNS_9allocatorIS1_EEEENS2_IS4_EEEENS2_IS6_EEEC2Em.exit: ; preds = %bb.aa
  %i.jy = mul nuw i64 %i.ju, 24                   ; 2 uses
  %i.jz = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jy) #23 ; 5 uses
  store ptr %i.jz, ptr %9, align 8, !tbaa !169
  %i.ka = getelementptr inbounds nuw [24 x i8], ptr %i.jz, i64 %i.ju
  store ptr %i.ka, ptr %i.jw, align 8, !tbaa !332
  %i.kb = add i64 %i.jy, -24                      ; 2 uses
  %i.kc = urem i64 %i.kb, 24
  %i.kd = sub nuw i64 %i.kb, %i.kc
  %i.ke = add nuw i64 %i.kd, 24                   ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.jz, i8 0, i64 %i.ke, i1 false)
  %scevgep.i.i = getelementptr i8, ptr %i.jz, i64 %i.ke
  store ptr %scevgep.i.i, ptr %i.jv, align 8, !tbaa !333
  %.pre402 = load i64, ptr %i.js, align 8, !tbaa !113
  %.not378 = icmp eq i64 %.pre402, 0
  br i1 %.not378, label %._crit_edge357, label %.lr.ph356.preheader

.lr.ph356.preheader:                              ; preds = %.loopexit323, %_ZNSt3__16vectorINS0_INS0_IPfNS_9allocatorIS1_EEEENS2_IS4_EEEENS2_IS6_EEEC2Em.exit
  br label %.lr.ph356

._crit_edge357.loopexit:                          ; preds = %_ZNSt3__16vectorINS0_IPfNS_9allocatorIS1_EEEENS2_IS4_EEE6resizeEm.exit
  %.pre403 = load ptr, ptr %9, align 8, !tbaa !169
  br label %._crit_edge357

._crit_edge357:                                   ; preds = %._crit_edge357.loopexit, %_ZNSt3__16vectorINS0_INS0_IPfNS_9allocatorIS1_EEEENS2_IS4_EEEENS2_IS6_EEEC2Em.exit
  %i.kf = phi ptr [ %i.jz, %_ZNSt3__16vectorINS0_INS0_IPfNS_9allocatorIS1_EEEENS2_IS4_EEEENS2_IS6_EEEC2Em.exit ], [ %.pre403, %._crit_edge357.loopexit ]
  %.lcssa329 = phi i64 [ 0, %_ZNSt3__16vectorINS0_INS0_IPfNS_9allocatorIS1_EEEENS2_IS4_EEEENS2_IS6_EEEC2Em.exit ], [ %i.og, %._crit_edge357.loopexit ]
  %i.kg = getelementptr inbounds nuw [24 x i8], ptr %i.kf, i64 %.lcssa329 ; 3 uses
  %i.kh = load ptr, ptr %i.da, align 8, !tbaa !101
  %i.ki = load ptr, ptr %2, align 8, !tbaa !87
  %i.kj = ptrtoint ptr %i.kh to i64
  %i.kk = ptrtoint ptr %i.ki to i64
  %i.kl = sub i64 %i.kj, %i.kk
  %i.km = sdiv exact i64 %i.kl, 56                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  %i.kn = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.kp = call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #23 ; 3 uses
  store ptr %i.kp, ptr %10, align 8, !tbaa !175
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 8 ; 2 uses
  store ptr %i.kq, ptr %i.ko, align 8, !tbaa !176
  store i64 0, ptr %i.kp, align 8
  store ptr %i.kq, ptr %i.kn, align 8, !tbaa !177
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kg, i64 8 ; 2 uses
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !182 ; 3 uses
  %i.kt = load ptr, ptr %i.kg, align 8, !tbaa !183 ; 2 uses
  %i.ku = ptrtoint ptr %i.ks to i64
  %i.kv = ptrtoint ptr %i.kt to i64
  %i.kw = sub i64 %i.ku, %i.kv
  %i.kx = sdiv exact i64 %i.kw, 24                ; 3 uses
  %i.ky = icmp ult i64 %i.kx, %i.km
  br i1 %i.ky, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %._crit_edge357
  %i.kz = sub nuw nsw i64 %i.km, %i.kx
  call void @_ZNSt3__16vectorINS0_IPfNS_9allocatorIS1_EEEENS2_IS4_EEE8__appendEmRKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.kg, i64 noundef %i.kz, ptr noundef nonnull align 8 dereferenceable(24) %10) #19
  br label %_ZNSt3__16vectorINS0_IPfNS_9allocatorIS1_EEEENS2_IS4_EEE6resizeEmRKS4_.exit

bb.ad:                                            ; preds = %._crit_edge357
  %i.la = icmp ugt i64 %i.kx, %i.km
  br i1 %i.la, label %bb.ae, label %_ZNSt3__16vectorINS0_IPfNS_9allocatorIS1_EEEENS2_IS4_EEE6resizeEmRKS4_.exit

bb.ae:                                            ; preds = %bb.ad
  %i.lb = getelementptr inbounds nuw [24 x i8], ptr %i.kt, i64 %i.km ; 3 uses
  %.not6.i.i.i = icmp eq ptr %i.lb, %i.ks
  br i1 %.not6.i.i.i, label %_ZNSt3__16vectorINS0_IPfNS_9allocatorIS1_EEEENS2_IS4_EEE17__destruct_at_endB8nn180100EPS4_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ae, %_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIPfNS1_IS3_EEEEEEE7destroyB8nn180100IS5_vEEvRS6_PT_.exit.i.i.i
  %.07.i.i.i = phi ptr [ %i.lc, %_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIPfNS1_IS3_EEEEEEE7destroyB8nn180100IS5_vEEvRS6_PT_.exit.i.i.i ], [ %i.ks, %bb.ae ] ; 3 uses
  %i.lc = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -24 ; 3 uses
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !175 ; 4 uses
end_hunk_0
