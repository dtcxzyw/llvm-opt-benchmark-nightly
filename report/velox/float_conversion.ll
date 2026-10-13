Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/float_conversion?download=true
inline.NumInlined: 667
inline.NumDeleted: 261
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN4absl12lts_2024011619str_format_internal16ConvertFloatImplEeRKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE:bb.a
  %i.mn = icmp eq i64 %i.mm, 0
  br i1 %i.mn, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %.critedge.i.i, %bb.ba
  %i.mo = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.mp = load i8, ptr %i.mo, align 1, !tbaa !25
  %i.mq = and i8 %i.mp, 8
  %.not74.i.i = icmp eq i8 %i.mq, 0
  br i1 %.not74.i.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %.critedge.i.i, %bb.ba
  %i.mr = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 46, ptr %i.ml, align 1, !tbaa !26
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.034.i.i = phi ptr [ %i.mr, %bb.bc ], [ %i.ml, %bb.bb ] ; 2 uses
  %i.ms = zext i64 %.sroa.16.4.i.i to i128
  %i.mt = shl nuw i128 %i.ms, 64
  %i.mu = zext i64 %.sroa.051.4.i.i to i128
  %i.mv = or disjoint i128 %i.mt, %i.mu           ; 2 uses
  %.not7578.i.i = icmp eq i128 %i.mv, 0
  br i1 %.not7578.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.bd, %.lr.ph.i.i
  %i.mw = phi i128 [ %i.nb, %.lr.ph.i.i ], [ %i.mv, %bb.bd ]
  %.181.i.i = phi ptr [ %i.na, %.lr.ph.i.i ], [ %.034.i.i, %bb.bd ] ; 2 uses
  %.03580.i.i = phi i64 [ %i.ne, %.lr.ph.i.i ], [ 0, %bb.bd ]
  %.sroa.16.079.i.i = phi i64 [ %i.nd, %.lr.ph.i.i ], [ %.sroa.16.4.i.i, %bb.bd ]
  %i.mx = lshr i64 %.sroa.16.079.i.i, 60
  %i.my = getelementptr inbounds nuw i8, ptr %i.me, i64 %i.mx
  %i.mz = load i8, ptr %i.my, align 1, !tbaa !26
  %i.na = getelementptr inbounds nuw i8, ptr %.181.i.i, i64 1 ; 2 uses
  store i8 %i.mz, ptr %.181.i.i, align 1, !tbaa !26
  %i.nb = shl i128 %i.mw, 4                       ; 3 uses
  %i.nc = lshr i128 %i.nb, 64
  %i.nd = trunc nuw i128 %i.nc to i64
  %i.ne = add nuw nsw i64 %.03580.i.i, 1          ; 2 uses
  %.not75.i.i = icmp eq i128 %i.nb, 0
  br i1 %.not75.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !88

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.bd
  %.035.lcssa.i.i = phi i64 [ 0, %bb.bd ], [ %i.ne, %.lr.ph.i.i ]
  %.1.lcssa.i.i = phi ptr [ %.034.i.i, %bb.bd ], [ %i.na, %.lr.ph.i.i ]
  %i.nf = sub i64 %spec.select.i, %.035.lcssa.i.i
  %.0.i69.i = select i1 %i.iq, i64 %i.nf, i64 0
  %i.ng = ptrtoint ptr %.1.lcssa.i.i to i64
  %i.nh = ptrtoint ptr %i.a to i64
  %i.ni = sub i64 %i.ng, %i.nh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.nj = select i1 %i.il, i8 80, i8 112
  store i8 %i.nj, ptr %i.b, align 16, !tbaa !26
  %i.nk = icmp sgt i32 %.5.i.i, -1
  %i.nl = select i1 %i.nk, i8 43, i8 45
  %i.nm = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.nl, ptr %i.nm, align 1, !tbaa !26
  %i.nn = call i32 @llvm.abs.i32(i32 %.5.i.i, i1 true)
  %i.no = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.np = call noundef ptr @_ZN4absl12lts_2024011616numbers_internal15FastIntToBufferEiPc(i32 noundef %i.nn, ptr noundef nonnull %i.no) ; 0 uses
  %i.nq = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #19
  call fastcc void @_ZN4absl12lts_2024011619str_format_internal12_GLOBAL__N_110FinalPrintERKNS2_11FormatStateESt17basic_string_viewIcSt11char_traitsIcEEmmS9_(ptr noundef nonnull readonly align 8 dereferenceable(32) %6, i64 %i.ni, ptr nonnull %i.a, i64 noundef 2, i64 noundef %.0.i69.i, i64 %i.nq, ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.bf

bb.be:                                            ; preds = %_ZN4absl12lts_2024011619str_format_internal12_GLOBAL__N_113PrintExponentEicPNS2_6BufferE.exit, %.loopexit.i, %_ZN4absl12lts_2024011619str_format_internal12_GLOBAL__N_113PrintExponentEicPNS2_6BufferE.exit.i
  %i.nr = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !49 ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !48
  %i.nv = ptrtoint ptr %i.nu to i64
  %i.nw = ptrtoint ptr %i.ns to i64
  %i.nx = sub i64 %i.nv, %i.nw
  %i.ny = getelementptr inbounds nuw i8, ptr %1, i64 1
  %.val64.i = load i8, ptr %i.ny, align 1
  %i.nz = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val65.i = load i32, ptr %i.nz, align 4, !tbaa !28
  call fastcc void @_ZN4absl12lts_2024011619str_format_internal12_GLOBAL__N_117WriteBufferToSinkEcSt17basic_string_viewIcSt11char_traitsIcEERKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(i8 noundef signext %.05586.i, i64 %i.nx, ptr %i.ns, i8 %.val64.i, i32 %.val65.i, ptr noundef %2)
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %._crit_edge.i.i, %bb.ac, %bb.w, %_ZN4absl12lts_2024011619str_format_internal12_GLOBAL__N_17FormatFINS0_7uint128EEEvT_iRKNS2_11FormatStateE.exit.i, %bb.j
  %.0.i = phi i1 [ true, %_ZN4absl12lts_2024011619str_format_internal12_GLOBAL__N_17FormatFINS0_7uint128EEEvT_iRKNS2_11FormatStateE.exit.i ], [ true, %bb.be ], [ %i.eh, %bb.w ], [ %i.ga, %bb.ac ], [ true, %._crit_edge.i.i ], [ false, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  br label %_ZN4absl12lts_2024011619str_format_internal12_GLOBAL__N_111FloatToSinkIeEEbT_RKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit

_ZN4absl12lts_2024011619str_format_internal12_GLOBAL__N_111FloatToSinkIeEEbT_RKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit: ; preds = %_ZN4absl12lts_2024011619str_format_internal12_GLOBAL__N_123ConvertNonNumericFloatsIeEEbcT_RKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit.i, %bb.bf
  %.1.i = phi i1 [ %.0.i, %bb.bf ], [ true, %_ZN4absl12lts_2024011619str_format_internal12_GLOBAL__N_123ConvertNonNumericFloatsIeEEbcT_RKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit.i ]
  ret i1 %.1.i
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4absl12lts_2024011619str_format_internal16ConvertFloatImplEfRKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(float noundef %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = fpext float %0 to double
  %i.b = tail call fastcc noundef zeroext i1 @_ZN4absl12lts_2024011619str_format_internal12_GLOBAL__N_111FloatToSinkIdEEbT_RKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(double noundef %i.a, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef %2)
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN4absl12lts_2024011619str_format_internal12_GLOBAL__N_111FloatToSinkIdEEbT_RKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(double noundef %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [20 x i8], align 16               ; 9 uses
  %i.b = alloca [34 x i8], align 16               ; 7 uses
  %i.c = alloca [171 x i8], align 16              ; 7 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca [4 x i8], align 1                 ; 9 uses
  %i.f = alloca i32, align 4                      ; 7 uses
  %3 = alloca %"struct.absl::lts_20240116::str_format_internal::(anonymous namespace)::Buffer", align 8 ; 12 uses
  %4 = alloca %"struct.absl::lts_20240116::str_format_internal::(anonymous namespace)::FormatState", align 8 ; 9 uses
  %5 = alloca %"struct.absl::lts_20240116::str_format_internal::(anonymous namespace)::FormatState", align 8 ; 7 uses
  %i.g = bitcast double %0 to i64
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = fneg double %0
  br label %select.unfold

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !25    ; 2 uses
  %i.l = and i8 %i.k, 2
  %.not103 = icmp eq i8 %i.l, 0
  br i1 %.not103, label %bb.d, label %select.unfold

bb.d:                                             ; preds = %bb.c
  %i.m = and i8 %i.k, 4
  %.not104 = icmp eq i8 %i.m, 0
  br i1 %.not104, label %bb.e, label %select.unfold

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19
  br label %bb.f

select.unfold:                                    ; preds = %bb.d, %bb.b, %bb.c
  %.064.ph = phi i8 [ 45, %bb.b ], [ 43, %bb.c ], [ 32, %bb.d ] ; 2 uses
  %.063.ph = phi double [ %i.i, %bb.b ], [ %0, %bb.c ], [ %0, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  store i8 %.064.ph, ptr %i.e, align 1, !tbaa !26
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %select.unfold
  %.06395 = phi double [ %.063.ph, %select.unfold ], [ %0, %bb.e ] ; 3 uses
  %.06493 = phi i8 [ %.064.ph, %select.unfold ], [ 0, %bb.e ] ; 3 uses
  %.0.i = phi ptr [ %i.n, %select.unfold ], [ %i.e, %bb.e ] ; 2 uses
  %i.o = fcmp uno double %.06395, 0.000000e+00
  br i1 %i.o, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.p = load i8, ptr %1, align 4, !tbaa !27      ; 2 uses
  %i.q = icmp eq i8 %i.p, 7
  %i.r = and i8 %i.p, -7
  %i.s = icmp eq i8 %i.r, 9
  %or.cond7.i.i = or i1 %i.q, %i.s
  %.str..str.1.i = select i1 %or.cond7.i.i, ptr @.str, ptr @.str.1
  br label %_ZN4absl12lts_2024011619str_format_internal12_GLOBAL__N_123ConvertNonNumericFloatsIdEEbcT_RKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit

bb.h:                                             ; preds = %bb.f
  %i.t = tail call double @llvm.fabs.f64(double %.06395)
  %i.u = fcmp oeq double %i.t, +inf
  br i1 %i.u, label %bb.i, label %_ZN4absl12lts_2024011619str_format_internal12_GLOBAL__N_123ConvertNonNumericFloatsIdEEbcT_RKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit.thread

_ZN4absl12lts_2024011619str_format_internal12_GLOBAL__N_123ConvertNonNumericFloatsIdEEbcT_RKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit.thread: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.v = load i8, ptr %1, align 4, !tbaa !27      ; 2 uses
  %i.w = icmp eq i8 %i.v, 7
  %i.x = and i8 %i.v, -7
  %i.y = icmp eq i8 %i.x, 9
  %or.cond7.i14.i = or i1 %i.w, %i.y
  %.str.2..str.3.i = select i1 %or.cond7.i14.i, ptr @.str.2, ptr @.str.3
  br label %_ZN4absl12lts_2024011619str_format_internal12_GLOBAL__N_123ConvertNonNumericFloatsIdEEbcT_RKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit

_ZN4absl12lts_2024011619str_format_internal12_GLOBAL__N_123ConvertNonNumericFloatsIdEEbcT_RKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit: ; preds = %bb.g, %bb.i
  %.str.2..str.3.sink.i = phi ptr [ %.str.2..str.3.i, %bb.i ], [ %.str..str.1.i, %bb.g ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.0.i, ptr noundef nonnull align 1 dereferenceable(3) %.str.2..str.3.sink.i, i64 3, i1 false)
  %.1.i = getelementptr inbounds nuw i8, ptr %.0.i, i64 3
  %i.z = ptrtoint ptr %.1.i to i64
  %i.aa = ptrtoint ptr %i.e to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !28
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !25
  %i.ag = trunc i8 %i.af to i1
  %i.ah = call noundef zeroext i1 @_ZN4absl12lts_2024011619str_format_internal14FormatSinkImpl15PutPaddedStringESt17basic_string_viewIcSt11char_traitsIcEEiib(ptr noundef nonnull align 8 dereferenceable(1056) %2, i64 %i.ab, ptr nonnull %i.e, i32 noundef %i.ad, i32 noundef -1, i1 noundef zeroext %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  br i1 %i.ah, label %bb.be, label %bb.j

bb.j:                                             ; preds = %_ZN4absl12lts_2024011619str_format_internal12_GLOBAL__N_123ConvertNonNumericFloatsIdEEbcT_RKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit.thread, %_ZN4absl12lts_2024011619str_format_internal12_GLOBAL__N_123ConvertNonNumericFloatsIdEEbcT_RKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !29 ; 5 uses
  %i.ak = icmp slt i32 %i.aj, 0
  %narrow = select i1 %i.ak, i32 6, i32 %i.aj     ; 3 uses
  %spec.select = zext i32 %narrow to i64          ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #19
  store i32 0, ptr %i.f, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  %i.al = call double @frexp(double noundef %.06395, ptr noundef nonnull %i.d) #19
  %i.am = call double @ldexp(double noundef %i.al, i32 noundef 53) #19
  %i.an = load i32, ptr %i.d, align 4, !tbaa !30  ; 10 uses
  %i.ao = add nsw i32 %i.an, -53                  ; 5 uses
  %i.ap = fptoui double %i.am to i64              ; 14 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.aq = load i8, ptr %1, align 4, !tbaa !27     ; 2 uses
  %i.ar = and i8 %i.aq, -2
  switch i8 %i.ar, label %bb.bd [
    i8 8, label %bb.k
    i8 10, label %bb.ab
    i8 12, label %bb.ah
    i8 14, label %bb.au
  ]

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  store i8 %.06493, ptr %4, align 8, !tbaa !40
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %spec.select, ptr %i.as, align 8, !tbaa !41
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %1, ptr %i.at, align 8, !tbaa !42
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %2, ptr %i.au, align 8, !tbaa !43
  %i.av = icmp sgt i32 %i.an, 52
  br i1 %i.av, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.aw = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ap, i1 false)
  %i.ax = trunc nuw nsw i64 %i.aw to i32
  %reass.sub.i = add nuw i32 %i.an, 11
  %i.ay = sub nuw i32 %reass.sub.i, %i.ax         ; 2 uses
  %i.az = icmp sgt i32 %i.ay, 128
  br i1 %i.az, label %bb.m, label %bb.p, !prof !44

bb.m:                                             ; preds = %bb.l
  call fastcc void @_ZN4absl12lts_2024011619str_format_internal12_GLOBAL__N_122FormatFPositiveExpSlowENS0_7uint128EiRKNS2_11FormatStateE(i64 %i.ap, i64 0, i32 noundef range(i32 -2147483648, 2147483595) %i.ao, ptr noundef nonnull align 8 dereferenceable(32) %4)
  br label %_ZN4absl12lts_2024011619str_format_internal12_GLOBAL__N_17FormatFImEEvT_iRKNS2_11FormatStateE.exit

bb.n:                                             ; preds = %bb.k
  %i.ba = icmp slt i32 %i.an, -75
  br i1 %i.ba, label %bb.o, label %select.unfold.preheader.i.i, !prof !44

bb.o:                                             ; preds = %bb.n
  %i.bb = sub nsw i32 53, %i.an
  call fastcc void @_ZN4absl12lts_2024011619str_format_internal12_GLOBAL__N_122FormatFNegativeExpSlowENS0_7uint128EiRKNS2_11FormatStateE(i64 %i.ap, i64 0, i32 noundef %i.bb, ptr noundef nonnull align 8 dereferenceable(32) %4)
  br label %_ZN4absl12lts_2024011619str_format_internal12_GLOBAL__N_17FormatFImEEvT_iRKNS2_11FormatStateE.exit

bb.p:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 42 ; 4 uses
  store i8 46, ptr %i.bc, align 2, !tbaa !26
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 43 ; 4 uses
  %i.be = icmp slt i32 %i.ay, 65
  br i1 %i.be, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.bf = zext nneg i32 %i.ao to i64
  %i.bg = shl i64 %i.ap, %i.bf
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %bb.q
  %.03.i.i.i = phi i64 [ %i.bg, %bb.q ], [ %i.bi, %bb.r ] ; 3 uses
  %.0.i.i.i = phi ptr [ %i.bc, %bb.q ], [ %i.bk, %bb.r ]
  %i.bh = urem i64 %.03.i.i.i, 10
  %i.bi = udiv i64 %.03.i.i.i, 10
  %.lhs.trunc.i.i.i.i = trunc nuw nsw i64 %i.bh to i8
  %i.bj = or disjoint i8 %.lhs.trunc.i.i.i.i, 48
  %i.bk = getelementptr inbounds i8, ptr %.0.i.i.i, i64 -1 ; 3 uses
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !26
  %.not.i.i.i = icmp ult i64 %.03.i.i.i, 10
  br i1 %.not.i.i.i, label %_ZN4absl12lts_2024011619str_format_internal12_GLOBAL__N_132PrintIntegralDigitsFromRightFastEmPc.exit.i.i, label %bb.r, !llvm.loop !0

bb.s:                                             ; preds = %bb.p
  %i.bl = zext i64 %i.ap to i128
  %i.bm = zext nneg i32 %i.ao to i128
  %i.bn = shl i128 %i.bl, %i.bm                   ; 2 uses
  %i.bo = trunc i128 %i.bn to i64                 ; 2 uses
  %i.bp = lshr i128 %i.bn, 64                     ; 2 uses
  %.not10.i.i.i = icmp eq i128 %i.bp, 0
  br i1 %.not10.i.i.i, label %.preheader.i.i.i.preheader, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %bb.s
  %i.bq = trunc nuw i128 %i.bp to i64
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.preheader.i.i
  %.013.i.i.i = phi ptr [ %i.cd, %.lr.ph.i.i.i ], [ %i.bc, %.lr.ph.i.preheader.i.i ]
  %.0812.i.i.i = phi i64 [ %i.ca, %.lr.ph.i.i.i ], [ %i.bo, %.lr.ph.i.preheader.i.i ] ; 2 uses
  %.0911.i.i.i = phi i64 [ %i.bs, %.lr.ph.i.i.i ], [ %i.bq, %.lr.ph.i.preheader.i.i ] ; 3 uses
  %i.br = urem i64 %.0911.i.i.i, 10               ; 2 uses
  %i.bs = udiv i64 %.0911.i.i.i, 10
  %i.bt = urem i64 %.0812.i.i.i, 10
  %i.bu = mul nuw nsw i64 %i.br, 6
  %i.bv = add nuw nsw i64 %i.bu, %i.bt
  %i.bw = udiv i64 %.0812.i.i.i, 10
  %i.bx = mul nuw i64 %i.br, 1844674407370955161
  %i.by = add nuw i64 %i.bx, %i.bw
  %.lhs.trunc.i3.i.i.i = trunc nuw nsw i64 %i.bv to i8 ; 2 uses
  %i.bz = udiv i8 %.lhs.trunc.i3.i.i.i, 10
  %.zext.i.i.i.i = zext nneg i8 %i.bz to i64
  %i.ca = add i64 %i.by, %.zext.i.i.i.i           ; 2 uses
  %i.cb = urem i8 %.lhs.trunc.i3.i.i.i, 10
  %i.cc = or disjoint i8 %i.cb, 48
  %i.cd = getelementptr inbounds i8, ptr %.013.i.i.i, i64 -1 ; 3 uses
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !26
  %.not.i46.i.i = icmp ult i64 %.0911.i.i.i, 10
  br i1 %.not.i46.i.i, label %.preheader.i.i.i.preheader, label %.lr.ph.i.i.i, !llvm.loop !1

.preheader.i.i.i.preheader:                       ; preds = %.lr.ph.i.i.i, %bb.s
  %.03.i.i.i.i.ph = phi i64 [ %i.bo, %bb.s ], [ %i.ca, %.lr.ph.i.i.i ]
  %.0.i.i.i.i.ph = phi ptr [ %i.bc, %bb.s ], [ %i.cd, %.lr.ph.i.i.i ]
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i.preheader, %.preheader.i.i.i
  %.03.i.i.i.i = phi i64 [ %i.cf, %.preheader.i.i.i ], [ %.03.i.i.i.i.ph, %.preheader.i.i.i.preheader ] ; 3 uses
  %.0.i.i.i.i = phi ptr [ %i.ch, %.preheader.i.i.i ], [ %.0.i.i.i.i.ph, %.preheader.i.i.i.preheader ]
  %i.ce = urem i64 %.03.i.i.i.i, 10
  %i.cf = udiv i64 %.03.i.i.i.i, 10
  %.lhs.trunc.i.i.i.i.i = trunc nuw nsw i64 %i.ce to i8
  %i.cg = or disjoint i8 %.lhs.trunc.i.i.i.i.i, 48
  %i.ch = getelementptr inbounds i8, ptr %.0.i.i.i.i, i64 -1 ; 3 uses
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !26
  %.not.i.i.i.i = icmp ult i64 %.03.i.i.i.i, 10
  br i1 %.not.i.i.i.i, label %_ZN4absl12lts_2024011619str_format_internal12_GLOBAL__N_132PrintIntegralDigitsFromRightFastEmPc.exit.i.i, label %.preheader.i.i.i, !llvm.loop !0

select.unfold.preheader.i.i:                      ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  %i.ci = getelementptr inbounds nuw i8, ptr %i.c, i64 42 ; 2 uses
  store i8 46, ptr %i.ci, align 2, !tbaa !26
  %i.cj = sub nsw i32 53, %i.an                   ; 2 uses
  %i.ck = icmp sgt i32 %i.an, -11
  %i.cl = zext nneg i32 %i.cj to i64
  %i.cm = lshr i64 %i.ap, %i.cl
  %spec.select193 = select i1 %i.ck, i64 %i.cm, i64 0
  br label %select.unfold.i.i

select.unfold.i.i:                                ; preds = %select.unfold.preheader.i.i, %select.unfold.i.i
  %.03.i47.i.i = phi i64 [ %i.co, %select.unfold.i.i ], [ %spec.select193, %select.unfold.preheader.i.i ] ; 3 uses
  %.0.i48.i.i = phi ptr [ %i.cq, %select.unfold.i.i ], [ %i.ci, %select.unfold.preheader.i.i ] ; 2 uses
  %i.cn = urem i64 %.03.i47.i.i, 10
  %i.co = udiv i64 %.03.i47.i.i, 10
  %.lhs.trunc.i.i49.i.i = trunc nuw nsw i64 %i.cn to i8
  %i.cp = or disjoint i8 %.lhs.trunc.i.i49.i.i, 48
  %i.cq = getelementptr inbounds i8, ptr %.0.i48.i.i, i64 -1 ; 3 uses
  store i8 %i.cp, ptr %i.cq, align 1, !tbaa !26
  %.not.i50.i.i = icmp ult i64 %.03.i47.i.i, 10
  br i1 %.not.i50.i.i, label %_ZN4absl12lts_2024011619str_format_internal12_GLOBAL__N_132PrintIntegralDigitsFromRightFastEmPc.exit51.i.i, label %select.unfold.i.i, !llvm.loop !0

_ZN4absl12lts_2024011619str_format_internal12_GLOBAL__N_132PrintIntegralDigitsFromRightFastEmPc.exit51.i.i: ; preds = %select.unfold.i.i
  %i.cr = getelementptr inbounds nuw i8, ptr %i.c, i64 43 ; 4 uses
  %i.cs = getelementptr inbounds i8, ptr %.0.i48.i.i, i64 -2 ; 3 uses
  store i8 48, ptr %i.cs, align 1, !tbaa !26
  %i.ct = icmp sgt i32 %i.an, -12
  br i1 %i.ct, label %bb.t, label %bb.aa

bb.t:                                             ; preds = %_ZN4absl12lts_2024011619str_format_internal12_GLOBAL__N_132PrintIntegralDigitsFromRightFastEmPc.exit51.i.i
  %i.cu = add nsw i32 %i.an, 11
  %i.cv = zext nneg i32 %i.cu to i64
  %i.cw = shl i64 %i.ap, %i.cv                    ; 2 uses
  %.not21.i.i.i = icmp eq i32 %narrow, 0
  br i1 %.not21.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i52.i.i

.lr.ph.i52.i.i:                                   ; preds = %bb.t, %bb.u
  %.024.i.i.i = phi ptr [ %i.dc, %bb.u ], [ %i.cr, %bb.t ] ; 3 uses
  %.0923.i.i.i = phi i64 [ %i.dd, %bb.u ], [ %spec.select, %bb.t ]
  %.01622.i.i.i = phi i64 [ %i.cz, %bb.u ], [ %i.cw, %bb.t ] ; 2 uses
  %.not13.i.i.i = icmp eq i64 %.01622.i.i.i, 0
  br i1 %.not13.i.i.i, label %_ZN4absl12lts_2024011619str_format_internal12_GLOBAL__N_125PrintFractionalDigitsFastEmPcim.exit.i.i, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i52.i.i
  %i.cx = zext i64 %.01622.i.i.i to i128
  %i.cy = mul nuw nsw i128 %i.cx, 10              ; 2 uses
  %i.cz = trunc i128 %i.cy to i64                 ; 2 uses
  %i.da = lshr i128 %i.cy, 64
  %.tr.i.i.i.i.i = trunc nuw nsw i128 %i.da to i8
  %i.db = or disjoint i8 %.tr.i.i.i.i.i, 48
  %i.dc = getelementptr inbounds nuw i8, ptr %.024.i.i.i, i64 1 ; 2 uses
  store i8 %i.db, ptr %.024.i.i.i, align 1, !tbaa !26
  %i.dd = add nsw i64 %.0923.i.i.i, -1            ; 2 uses
  %.not.i53.i.i = icmp eq i64 %i.dd, 0
  br i1 %.not.i53.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i52.i.i, !llvm.loop !90

._crit_edge.i.i.i:                                ; preds = %bb.u, %bb.t
  %.016.lcssa.i.i.i = phi i64 [ %i.cw, %bb.t ], [ %i.cz, %bb.u ] ; 2 uses
  %.0.lcssa.i54.i.i = phi ptr [ %i.cr, %bb.t ], [ %i.dc, %bb.u ] ; 5 uses
  %i.de = icmp sgt i64 %.016.lcssa.i.i.i, -1
  br i1 %i.de, label %_ZN4absl12lts_2024011619str_format_internal12_GLOBAL__N_125PrintFractionalDigitsFastEmPcim.exit.i.i, label %bb.v

bb.v:                                             ; preds = %._crit_edge.i.i.i
  %.not12.i.i.i = icmp eq i64 %.016.lcssa.i.i.i, -9223372036854775808
  br i1 %.not12.i.i.i, label %bb.x, label %.preheader.i55.i.i

.preheader.i55.i.i:                               ; preds = %bb.v, %.preheader.i55.i.i.backedge
  %.0.pn.i.i.i = phi ptr [ %.0.i.i56.i.i, %.preheader.i55.i.i.backedge ], [ %.0.lcssa.i54.i.i, %bb.v ]
  %.0.i.i56.i.i = getelementptr inbounds i8, ptr %.0.pn.i.i.i, i64 -1 ; 4 uses
  %i.df = load i8, ptr %.0.i.i56.i.i, align 1, !tbaa !26 ; 2 uses
  switch i8 %i.df, label %_ZN4absl12lts_2024011619str_format_internal12_GLOBAL__N_111RoundToEvenEPc.exit.sink.split.i.i.i [
    i8 57, label %bb.w
    i8 46, label %.preheader.i55.i.i.backedge
  ]

bb.w:                                             ; preds = %.preheader.i55.i.i
  store i8 48, ptr %.0.i.i56.i.i, align 1, !tbaa !26
  br label %.preheader.i55.i.i.backedge

.preheader.i55.i.i.backedge:                      ; preds = %bb.w, %.preheader.i55.i.i
  br label %.preheader.i55.i.i, !llvm.loop !2

bb.x:                                             ; preds = %bb.v
  %i.dg = getelementptr inbounds i8, ptr %.0.lcssa.i54.i.i, i64 -1 ; 2 uses
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !26
  %i.di = icmp eq i8 %i.dh, 46
  %spec.select.idx.i.i.i.i = sext i1 %i.di to i64
  %spec.select.i.i.i.i = getelementptr inbounds i8, ptr %i.dg, i64 %spec.select.idx.i.i.i.i ; 2 uses
  %i.dj = load i8, ptr %spec.select.i.i.i.i, align 1, !tbaa !26 ; 2 uses
  %i.dk = and i8 %i.dj, -127
  %i.dl = icmp eq i8 %i.dk, 1
  br i1 %i.dl, label %.preheader.i.i.i.i, label %_ZN4absl12lts_2024011619str_format_internal12_GLOBAL__N_125PrintFractionalDigitsFastEmPcim.exit.i.i

.preheader.i.i.i.i:                               ; preds = %bb.x, %bb.z
  %i.dm = phi i8 [ %.pr.i.i.i.i, %bb.z ], [ %i.dj, %bb.x ] ; 2 uses
  %.0.i.i.i.i.i = phi ptr [ %i.dn, %bb.z ], [ %spec.select.i.i.i.i, %bb.x ] ; 3 uses
  switch i8 %i.dm, label %_ZN4absl12lts_2024011619str_format_internal12_GLOBAL__N_111RoundToEvenEPc.exit.sink.split.i.i.i [
    i8 57, label %bb.y
    i8 46, label %bb.z
  ]

bb.y:                                             ; preds = %.preheader.i.i.i.i
  store i8 48, ptr %.0.i.i.i.i.i, align 1, !tbaa !26
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.preheader.i.i.i.i
  %i.dn = getelementptr inbounds i8, ptr %.0.i.i.i.i.i, i64 -1 ; 2 uses
  %.pr.i.i.i.i = load i8, ptr %i.dn, align 1, !tbaa !26
  br label %.preheader.i.i.i.i, !llvm.loop !2

_ZN4absl12lts_2024011619str_format_internal12_GLOBAL__N_111RoundToEvenEPc.exit.sink.split.i.i.i: ; preds = %.preheader.i55.i.i, %.preheader.i.i.i.i
  %.lcssa.sink.i.i.i = phi i8 [ %i.dm, %.preheader.i.i.i.i ], [ %i.df, %.preheader.i55.i.i ]
  %.0.i.i.lcssa.sink.i.i.i = phi ptr [ %.0.i.i.i.i.i, %.preheader.i.i.i.i ], [ %.0.i.i56.i.i, %.preheader.i55.i.i ]
  %i.do = add i8 %.lcssa.sink.i.i.i, 1
  store i8 %i.do, ptr %.0.i.i.lcssa.sink.i.i.i, align 1, !tbaa !26
  br label %_ZN4absl12lts_2024011619str_format_internal12_GLOBAL__N_125PrintFractionalDigitsFastEmPcim.exit.i.i

bb.aa:                                            ; preds = %_ZN4absl12lts_2024011619str_format_internal12_GLOBAL__N_132PrintIntegralDigitsFromRightFastEmPc.exit51.i.i
  %i.dp = call fastcc noundef ptr @_ZN4absl12lts_2024011619str_format_internal12_GLOBAL__N_125PrintFractionalDigitsFastENS0_7uint128EPcim(i64 %i.ap, i64 0, ptr noundef %i.cr, i32 noundef %i.cj, i64 noundef %spec.select)
  br label %_ZN4absl12lts_2024011619str_format_internal12_GLOBAL__N_125PrintFractionalDigitsFastEmPcim.exit.i.i

_ZN4absl12lts_2024011619str_format_internal12_GLOBAL__N_125PrintFractionalDigitsFastEmPcim.exit.i.i: ; preds = %.lr.ph.i52.i.i, %bb.aa, %_ZN4absl12lts_2024011619str_format_internal12_GLOBAL__N_111RoundToEvenEPc.exit.sink.split.i.i.i, %bb.x, %._crit_edge.i.i.i
  %i.dq = phi ptr [ %i.dp, %bb.aa ], [ %.0.lcssa.i54.i.i, %._crit_edge.i.i.i ], [ %.0.lcssa.i54.i.i, %_ZN4absl12lts_2024011619str_format_internal12_GLOBAL__N_111RoundToEvenEPc.exit.sink.split.i.i.i ], [ %.0.lcssa.i54.i.i, %bb.x ], [ %.024.i.i.i, %.lr.ph.i52.i.i ]
  %i.dr = load i8, ptr %i.cs, align 1, !tbaa !26
  %.not.i.i = icmp eq i8 %i.dr, 48
  %spec.select.i.i = select i1 %.not.i.i, ptr %i.cq, ptr %i.cs
  %.val.i.i.pre = load i64, ptr %i.as, align 8, !tbaa !41
  br label %_ZN4absl12lts_2024011619str_format_internal12_GLOBAL__N_132PrintIntegralDigitsFromRightFastEmPc.exit.i.i

_ZN4absl12lts_2024011619str_format_internal12_GLOBAL__N_132PrintIntegralDigitsFromRightFastEmPc.exit.i.i: ; preds = %.preheader.i.i.i, %bb.r, %_ZN4absl12lts_2024011619str_format_internal12_GLOBAL__N_125PrintFractionalDigitsFastEmPcim.exit.i.i
  %.val.i.i = phi i64 [ %.val.i.i.pre, %_ZN4absl12lts_2024011619str_format_internal12_GLOBAL__N_125PrintFractionalDigitsFastEmPcim.exit.i.i ], [ %spec.select, %bb.r ], [ %spec.select, %.preheader.i.i.i ] ; 2 uses
  %i.ds = phi ptr [ %i.cr, %_ZN4absl12lts_2024011619str_format_internal12_GLOBAL__N_125PrintFractionalDigitsFastEmPcim.exit.i.i ], [ %i.bd, %bb.r ], [ %i.bd, %.preheader.i.i.i ]
  %.038.i.i = phi ptr [ %spec.select.i.i, %_ZN4absl12lts_2024011619str_format_internal12_GLOBAL__N_125PrintFractionalDigitsFastEmPcim.exit.i.i ], [ %i.bk, %bb.r ], [ %i.ch, %.preheader.i.i.i ] ; 2 uses
  %.037.i.i = phi ptr [ %i.dq, %_ZN4absl12lts_2024011619str_format_internal12_GLOBAL__N_125PrintFractionalDigitsFastEmPcim.exit.i.i ], [ %i.bd, %bb.r ], [ %i.bd, %.preheader.i.i.i ]
  %i.dt = ptrtoint ptr %.037.i.i to i64           ; 2 uses
  %i.du = ptrtoint ptr %.038.i.i to i64
  %i.dv = sub i64 %i.dt, %i.du                    ; 2 uses
  %.not.i57.i.i = icmp eq i64 %.val.i.i, 0
  br i1 %.not.i57.i.i, label %_ZNK4absl12lts_2024011619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.i.i, label %_ZNK4absl12lts_2024011619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.thread.i.i

_ZNK4absl12lts_2024011619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.i.i: ; preds = %_ZN4absl12lts_2024011619str_format_internal12_GLOBAL__N_132PrintIntegralDigitsFromRightFastEmPc.exit.i.i
  %.val43.i.i = load ptr, ptr %i.at, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %.val43.i.i, i64 1
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !25
  %.fr66.i.i = freeze i8 %i.dx
  %i.dy = and i8 %.fr66.i.i, 8
  %.not67.i.i = icmp eq i8 %i.dy, 0
  %i.dz = add i64 %i.dv, -1
  br i1 %.not67.i.i, label %_ZN4absl12lts_2024011619str_format_internal12_GLOBAL__N_111FormatFFastImEEvT_iRKNS2_11FormatStateE.exit.i, label %_ZNK4absl12lts_2024011619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.thread.i.i

_ZNK4absl12lts_2024011619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.thread.i.i: ; preds = %_ZNK4absl12lts_2024011619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.i.i, %_ZN4absl12lts_2024011619str_format_internal12_GLOBAL__N_132PrintIntegralDigitsFromRightFastEmPc.exit.i.i
  br label %_ZN4absl12lts_2024011619str_format_internal12_GLOBAL__N_111FormatFFastImEEvT_iRKNS2_11FormatStateE.exit.i

_ZN4absl12lts_2024011619str_format_internal12_GLOBAL__N_111FormatFFastImEEvT_iRKNS2_11FormatStateE.exit.i: ; preds = %_ZNK4absl12lts_2024011619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.thread.i.i, %_ZNK4absl12lts_2024011619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.i.i
  %i.ea = phi i64 [ %i.dv, %_ZNK4absl12lts_2024011619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.thread.i.i ], [ %i.dz, %_ZNK4absl12lts_2024011619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.i.i ]
  %i.eb = ptrtoint ptr %i.ds to i64
  %.neg.i.i = sub i64 %i.eb, %i.dt
  %i.ec = add i64 %.neg.i.i, %.val.i.i
  call fastcc void @_ZN4absl12lts_2024011619str_format_internal12_GLOBAL__N_110FinalPrintERKNS2_11FormatStateESt17basic_string_viewIcSt11char_traitsIcEEmmS9_(ptr noundef nonnull readonly align 8 dereferenceable(32) %4, i64 %i.ea, ptr %.038.i.i, i64 noundef 0, i64 noundef %i.ec, i64 0, ptr nonnull @.str.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  br label %_ZN4absl12lts_2024011619str_format_internal12_GLOBAL__N_17FormatFImEEvT_iRKNS2_11FormatStateE.exit

_ZN4absl12lts_2024011619str_format_internal12_GLOBAL__N_17FormatFImEEvT_iRKNS2_11FormatStateE.exit: ; preds = %bb.m, %bb.o, %_ZN4absl12lts_2024011619str_format_internal12_GLOBAL__N_111FormatFFastImEEvT_iRKNS2_11FormatStateE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.bd

bb.ab:                                            ; preds = %bb.j
  %i.ed = call fastcc noundef zeroext i1 @_ZN4absl12lts_2024011619str_format_internal12_GLOBAL__N_113FloatToBufferILNS2_11FormatStyleE1EdEEbNS2_10DecomposedIT0_EEmPNS2_6BufferEPi(i64 %i.ap, i32 %i.ao, i64 noundef %spec.select, ptr noundef %3, ptr noundef %i.f)
  br i1 %i.ed, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ee = call fastcc noundef zeroext i1 @_ZN4absl12lts_2024011619str_format_internal12_GLOBAL__N_118FallbackToSnprintfIdEEbT_RKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(double noundef %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef %2)
  br label %bb.bd

bb.ad:                                            ; preds = %bb.ab
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !25
  %i.eh = and i8 %i.eg, 8
  %.not106 = icmp eq i8 %i.eh, 0
  %i.ei = getelementptr inbounds nuw i8, ptr %3, i64 96
  %.val72 = load ptr, ptr %i.ei, align 8, !tbaa !48 ; 3 uses
  br i1 %.not106, label %bb.ae, label %._crit_edge153

bb.ae:                                            ; preds = %bb.ad
  %i.ej = getelementptr inbounds i8, ptr %.val72, i64 -1 ; 2 uses
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !26
  %i.el = icmp eq i8 %i.ek, 46
  %spec.select194 = select i1 %i.el, ptr %i.ej, ptr %.val72
  br label %._crit_edge153

._crit_edge153:                                   ; preds = %bb.ae, %bb.ad
  %i.em = phi ptr [ %spec.select194, %bb.ae ], [ %.val72, %bb.ad ] ; 2 uses
  %i.en = load i32, ptr %i.f, align 4, !tbaa !30  ; 2 uses
  %i.eo = load i8, ptr %1, align 4, !tbaa !27     ; 2 uses
  %i.ep = icmp eq i8 %i.eo, 7
  %i.eq = and i8 %i.eo, -7
  %i.er = icmp eq i8 %i.eq, 9
  %or.cond7.i = or i1 %i.ep, %i.er
  %i.es = select i1 %or.cond7.i, i8 69, i8 101
  %i.et = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 9 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.em, i64 1
  store ptr %i.eu, ptr %i.et, align 8, !tbaa !48
  store i8 %i.es, ptr %i.em, align 1, !tbaa !26
  %i.ev = icmp slt i32 %i.en, 0
  %i.ew = load ptr, ptr %i.et, align 8, !tbaa !48 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 1
  store ptr %i.ex, ptr %i.et, align 8, !tbaa !48
  %spec.select195 = select i1 %i.ev, i8 45, i8 43
  %spec.select196 = call i32 @llvm.abs.i32(i32 %i.en, i1 true) ; 5 uses
  store i8 %spec.select195, ptr %i.ew, align 1, !tbaa !26
  %i.ey = icmp samesign ugt i32 %spec.select196, 99
  %i.ez = load ptr, ptr %i.et, align 8, !tbaa !48 ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 1
  store ptr %i.fa, ptr %i.et, align 8, !tbaa !48
  br i1 %i.ey, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %._crit_edge153
  %i.fb = udiv i32 %spec.select196, 100
  %i.fc = trunc i32 %i.fb to i8
  %i.fd = add i8 %i.fc, 48
  store i8 %i.fd, ptr %i.ez, align 1, !tbaa !26
  %i.fe = udiv i32 %spec.select196, 10
  %i.ff = load ptr, ptr %i.et, align 8, !tbaa !48 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 1
  store ptr %i.fg, ptr %i.et, align 8, !tbaa !48
  %i.fh = insertelement <2 x i32> poison, i32 %i.fe, i64 0
  %i.fi = insertelement <2 x i32> %i.fh, i32 %spec.select196, i64 1
  %i.fj = urem <2 x i32> %i.fi, splat (i32 10)    ; 2 uses
  %i.fk = bitcast <2 x i32> %i.fj to <8 x i8>
  %i.fl = extractelement <8 x i8> %i.fk, i64 0
  %i.fm = or disjoint i8 %i.fl, 48
  store i8 %i.fm, ptr %i.ff, align 1, !tbaa !26
  %i.fn = bitcast <2 x i32> %i.fj to <8 x i8>
  %i.fo = extractelement <8 x i8> %i.fn, i64 4
  br label %_ZN4absl12lts_2024011619str_format_internal12_GLOBAL__N_113PrintExponentEicPNS2_6BufferE.exit

bb.ag:                                            ; preds = %._crit_edge153
  %.lhs.trunc.i = trunc nuw nsw i32 %spec.select196 to i8 ; 2 uses
  %i.fp = udiv i8 %.lhs.trunc.i, 10
  %i.fq = or disjoint i8 %i.fp, 48
  store i8 %i.fq, ptr %i.ez, align 1, !tbaa !26
  %i.fr = urem i8 %.lhs.trunc.i, 10
  br label %_ZN4absl12lts_2024011619str_format_internal12_GLOBAL__N_113PrintExponentEicPNS2_6BufferE.exit

_ZN4absl12lts_2024011619str_format_internal12_GLOBAL__N_113PrintExponentEicPNS2_6BufferE.exit: ; preds = %bb.af, %bb.ag
  %.sink23.i = phi i8 [ %i.fr, %bb.ag ], [ %i.fo, %bb.af ]
  %i.fs = or disjoint i8 %.sink23.i, 48
  %i.ft = load ptr, ptr %i.et, align 8, !tbaa !48 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 1
  store ptr %i.fu, ptr %i.et, align 8, !tbaa !48
  store i8 %i.fs, ptr %i.ft, align 1, !tbaa !26
  br label %bb.bc

bb.ah:                                            ; preds = %bb.j
  %i.fv = icmp eq i32 %narrow, 0
  %.sroa.speculated = select i1 %i.fv, i64 1, i64 %spec.select ; 2 uses
  %i.fw = add nsw i64 %.sroa.speculated, -1
  %i.fx = call fastcc noundef zeroext i1 @_ZN4absl12lts_2024011619str_format_internal12_GLOBAL__N_113FloatToBufferILNS2_11FormatStyleE1EdEEbNS2_10DecomposedIT0_EEmPNS2_6BufferEPi(i64 %i.ap, i32 %i.ao, i64 noundef %i.fw, ptr noundef %3, ptr noundef %i.f)
  br i1 %i.fx, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fy = call fastcc noundef zeroext i1 @_ZN4absl12lts_2024011619str_format_internal12_GLOBAL__N_118FallbackToSnprintfIdEEbT_RKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(double noundef %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef %2)
  br label %bb.bd

bb.aj:                                            ; preds = %bb.ah
  %i.fz = load i32, ptr %i.f, align 4, !tbaa !30  ; 8 uses
  %i.ga = icmp slt i32 %i.fz, 0
  br i1 %i.ga, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gb = zext nneg i32 %i.fz to i64              ; 2 uses
  %i.gc = icmp samesign ugt i64 %.sroa.speculated, %i.gb
  br i1 %i.gc, label %bb.an, label %bb.ap

bb.al:                                            ; preds = %bb.aj
  %.old6 = icmp samesign ugt i32 %i.fz, -5
  br i1 %.old6, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %bb.al
  %i.gd = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 6 uses
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !49 ; 2 uses
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !26
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 1
  store i8 %i.gf, ptr %i.gg, align 1, !tbaa !26
  %.not172 = icmp eq i32 %i.fz, -1
  br i1 %.not172, label %._crit_edge, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %bb.am, %.lr.ph.prol
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %bb.am ]
  %i.gh = load ptr, ptr %i.gd, align 8, !tbaa !49 ; 2 uses
  %i.gi = getelementptr inbounds i8, ptr %i.gh, i64 -1
  store ptr %i.gi, ptr %i.gd, align 8, !tbaa !49
  store i8 48, ptr %i.gh, align 1, !tbaa !26
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %i.gj = xor i32 %i.fz, %prol.iter.next
  %prol.iter.cmp.not = icmp eq i32 %i.gj, -1
  br i1 %prol.iter.cmp.not, label %._crit_edge, label %.lr.ph.prol, !llvm.loop !91

._crit_edge:                                      ; preds = %.lr.ph.prol, %bb.am
  %i.gk = load ptr, ptr %i.gd, align 8, !tbaa !49 ; 2 uses
  %i.gl = getelementptr inbounds i8, ptr %i.gk, i64 -1
  store ptr %i.gl, ptr %i.gd, align 8, !tbaa !49
  store i8 46, ptr %i.gk, align 1, !tbaa !26
  %i.gm = load ptr, ptr %i.gd, align 8, !tbaa !49
  store i8 48, ptr %i.gm, align 1, !tbaa !26
  br label %bb.ap

bb.an:                                            ; preds = %bb.ak
  %.not = icmp eq i32 %i.fz, 0
  br i1 %.not, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gn = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !49 ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 1
  %i.gq = getelementptr inbounds nuw i8, ptr %i.go, i64 2
  %i.gr = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.gb
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 2
  %i.gt = call noundef ptr @_ZNSt3_V28__rotateIPcEET_S2_S2_S2_St26random_access_iterator_tag(ptr noundef nonnull %i.gp, ptr noundef nonnull %i.gq, ptr noundef nonnull %i.gs) ; 0 uses
  br label %bb.ap

bb.ap:                                            ; preds = %._crit_edge, %bb.ao, %bb.an, %bb.al, %bb.ak
  %i.gu = phi i32 [ %i.fz, %bb.ak ], [ %i.fz, %bb.al ], [ 0, %bb.an ], [ 0, %bb.ao ], [ 0, %._crit_edge ] ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !25
  %i.gx = and i8 %i.gw, 8
  %.not105 = icmp eq i8 %i.gx, 0
end_hunk_0
