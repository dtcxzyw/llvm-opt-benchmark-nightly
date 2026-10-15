Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/constant-expression-interface?download=true
inline.NumInlined: 596
inline.NumDeleted: 349
begin_hunk_0_@_ZN2v88internal4wasm27ConstantExpressionInterface13ArrayNewFixedEPNS1_15WasmFullDecoderINS1_7Decoder17FullValidationTagES2_LNS1_12DecodingModeE1EEERKNS1_19ArrayIndexImmediateERKNS1_14IndexImmediateEPKNS2_5ValueEPSF_:bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cp, ptr noundef nonnull align 8 dereferenceable(32) %i.co, i64 32, i1 false)
  %i.cq = add nuw nsw i64 %.043, 1                ; 2 uses
  %i.cr = load i32, ptr %3, align 4
  %i.cs = zext i32 %i.cr to i64
  %i.ct = icmp samesign ult i64 %i.cq, %i.cs
  br i1 %i.ct, label %.lr.ph, label %._crit_edge, !llvm.loop !29

bb.h:                                             ; preds = %bb.a, %_ZNK2v88internal4wasm10WasmModule14canonical_typeENS1_9ValueTypeE.exit
  ret void
}

declare ptr @_ZN2v88internal7Factory24NewWasmArrayFromElementsEPKNS0_4wasm9ArrayTypeENS_4base6VectorINS2_9WasmValueEEENS0_12DirectHandleINS0_3MapEEE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef, ptr, i64, ptr) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal4wasm27ConstantExpressionInterface15ArrayNewSegmentEPNS1_15WasmFullDecoderINS1_7Decoder17FullValidationTagES2_LNS1_12DecodingModeE1EEERKNS1_19ArrayIndexImmediateERKNS1_14IndexImmediateERKNS2_5ValueESH_PSF_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(17) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %5, ptr nofree noundef writeonly captures(none) %6) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %.not.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.d = load i32, ptr %i.c, align 8
  %.not1.i = icmp eq i32 %i.d, 0
  %i.e = select i1 %.not.i, i1 %.not1.i, i1 false
  br i1 %i.e, label %bb.b, label %bb.q

bb.b:                                             ; preds = %bb.a
  %.sroa.035.0.copyload = load i32, ptr %2, align 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 152
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = sdiv exact i64 %i.n, 24
  %i.p = zext i32 %.sroa.035.0.copyload to i64    ; 2 uses
  %i.q = icmp ugt i64 %i.o, %i.p
  tail call void @llvm.assume(i1 %i.q)
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %i.p
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 22
  %i.t = load i8, ptr %i.s, align 2, !range !6, !noundef !7
  %i.u = trunc nuw i8 %i.t to i1
  %.v.i = select i1 %i.u, i64 80, i64 72
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %.v.i
  %.sroa.02.0.copyload.i = load ptr, ptr %i.v, align 8 ; 2 uses
  %i.w = load i64, ptr %.sroa.02.0.copyload.i, align 8
  %i.x = add i64 %i.w, 239
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = add i64 %i.z, -1
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = sext i32 %.sroa.035.0.copyload to i64
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.ad
  %i.af = load atomic volatile i64, ptr %i.ae monotonic, align 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 560 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 568
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = icmp eq ptr %i.ah, %i.aj
  br i1 %i.ak, label %bb.c, label %_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.c:                                             ; preds = %bb.b
  %i.al = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.b) #14
  br label %_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.al, %bb.c ], [ %i.ah, %bb.b ] ; 3 uses
  %i.am = ptrtoint ptr %.0.i.i to i64             ; 2 uses
  %i.an = add i64 %i.am, 8
  %i.ao = inttoptr i64 %i.an to ptr
  store ptr %i.ao, ptr %i.ag, align 8
  store i64 %i.af, ptr %.0.i.i, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 20
  %.0.copyload.i.i.i = load i32, ptr %i.ap, align 4 ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 20
  %.0.copyload.i.i.i55 = load i32, ptr %i.aq, align 4 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %.sroa.0.0.copyload.i.i56 = load i32, ptr %i.at, align 4 ; 3 uses
  %i.au = trunc i32 %.sroa.0.0.copyload.i.i56 to i1 ; 2 uses
  br i1 %i.au, label %_ZN2v88internal9WasmArray9MaxLengthEPKNS0_4wasm9ArrayTypeE.exit, label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.av = lshr i32 %.sroa.0.0.copyload.i.i56, 8
  %i.aw = add nuw nsw i32 %i.av, 2
  %i.ax = and i32 %i.aw, 7
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr @__const._ZNK2v88internal4wasm13ValueTypeBase15value_kind_sizeEv.kValueKindSize, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1
  %i.bb = zext i8 %i.ba to i32
  br label %_ZN2v88internal9WasmArray9MaxLengthEPKNS0_4wasm9ArrayTypeE.exit

_ZN2v88internal9WasmArray9MaxLengthEPKNS0_4wasm9ArrayTypeE.exit: ; preds = %_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %bb.d
  %.0.i.i57 = phi i32 [ %i.bb, %bb.d ], [ 8, %_ZN2v88internal6HandleINS0_3MapEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ]
  %i.bc = udiv i32 1073741799, %.0.i.i57
  %i.bd = icmp ugt i32 %.0.copyload.i.i.i, %i.bc
  br i1 %i.bd, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN2v88internal9WasmArray9MaxLengthEPKNS0_4wasm9ArrayTypeE.exit
  store i32 449, ptr %i.c, align 8
  br label %bb.q

bb.f:                                             ; preds = %_ZN2v88internal9WasmArray9MaxLengthEPKNS0_4wasm9ArrayTypeE.exit
  %i.be = add i64 %i.af, 31
  %i.bf = inttoptr i64 %i.be to ptr
  %i.bg = load i64, ptr %i.bf, align 8            ; 2 uses
  %i.bh = add i64 %i.bg, 11
  %i.bi = inttoptr i64 %i.bh to ptr
  %i.bj = load i32, ptr %i.bi, align 4            ; 3 uses
  %i.bk = add i64 %i.bg, 7
  %i.bl = inttoptr i64 %i.bk to ptr
  %i.bm = load i32, ptr %i.bl, align 4            ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.sroa.018.0.copyload = load i32, ptr %i.bn, align 8
  %i.bo = and i32 %.sroa.018.0.copyload, 8
  %.not.i60 = icmp eq i32 %i.bo, 0
  br i1 %.not.i60, label %_ZNK2v88internal4wasm18CanonicalValueType16AsExactIfEnabledENS1_19WasmEnabledFeaturesENS1_9ExactnessE.exit, label %bb.g, !prof !8

bb.g:                                             ; preds = %bb.f
  %i.bp = or i32 %i.bm, 8
  br label %_ZNK2v88internal4wasm18CanonicalValueType16AsExactIfEnabledENS1_19WasmEnabledFeaturesENS1_9ExactnessE.exit

_ZNK2v88internal4wasm18CanonicalValueType16AsExactIfEnabledENS1_19WasmEnabledFeaturesENS1_9ExactnessE.exit: ; preds = %bb.f, %bb.g
  %.sroa.0.0.i = phi i32 [ %i.bp, %bb.g ], [ %i.bm, %bb.f ] ; 2 uses
  %i.bq = and i32 %i.bj, 3
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZNK2v88internal4wasm18CanonicalValueType16AsExactIfEnabledENS1_19WasmEnabledFeaturesENS1_9ExactnessE.exit
  %i.bs = load ptr, ptr %i.f, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 248
  %i.bu = load i32, ptr %3, align 4               ; 2 uses
  %i.bv = zext i32 %i.bu to i64
  %i.bw = load ptr, ptr %i.bt, align 8
  %i.bx = getelementptr inbounds nuw [24 x i8], ptr %i.bw, i64 %i.bv
  br i1 %i.au, label %_ZNK2v88internal4wasm13ValueTypeBase15value_kind_sizeEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.by = lshr i32 %.sroa.0.0.copyload.i.i56, 8
  %i.bz = add nuw nsw i32 %i.by, 2
  %i.ca = and i32 %i.bz, 7
  %i.cb = zext nneg i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr @__const._ZNK2v88internal4wasm13ValueTypeBase15value_kind_sizeEv.kValueKindSize, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1
  %i.ce = zext i8 %i.cd to i32
  br label %_ZNK2v88internal4wasm13ValueTypeBase15value_kind_sizeEv.exit

_ZNK2v88internal4wasm13ValueTypeBase15value_kind_sizeEv.exit: ; preds = %bb.h, %bb.i
  %.0.i = phi i32 [ %i.ce, %bb.i ], [ 8, %bb.h ]
  %i.cf = mul i32 %.0.i, %.0.copyload.i.i.i       ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bx, i64 20
  %i.ch = load i32, ptr %i.cg, align 4            ; 2 uses
  %.not.i63 = icmp ule i32 %i.cf, %i.ch
  %i.ci = sub nuw i32 %i.ch, %i.cf
  %i.cj = icmp ule i32 %.0.copyload.i.i.i55, %i.ci
  %i.ck = select i1 %.not.i63, i1 %i.cj, i1 false
  br i1 %i.ck, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNK2v88internal4wasm13ValueTypeBase15value_kind_sizeEv.exit
  store i32 443, ptr %i.c, align 8
  br label %bb.q

bb.k:                                             ; preds = %_ZNK2v88internal4wasm13ValueTypeBase15value_kind_sizeEv.exit
  %i.cl = load i64, ptr %.sroa.02.0.copyload.i, align 8
  %i.cm = add i64 %i.cl, 127
  %i.cn = inttoptr i64 %i.cm to ptr
  %i.co = load i64, ptr %i.cn, align 8
  %i.cp = add i64 %i.co, -1
  %i.cq = inttoptr i64 %i.cp to ptr
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cs = sext i32 %i.bu to i64
  %i.ct = shl nsw i64 %i.cs, 3
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.ct
  %.0.copyload.i.i = load i64, ptr %i.cu, align 1
  %i.cv = zext i32 %.0.copyload.i.i.i55 to i64
  %i.cw = add i64 %.0.copyload.i.i, %i.cv
  %i.cx = load ptr, ptr %i.a, align 8
  %i.cy = tail call ptr @_ZN2v88internal7Factory22NewWasmArrayFromMemoryEjNS0_12DirectHandleINS0_3MapEEENS0_4wasm18CanonicalValueTypeEm(ptr noundef nonnull align 1 dereferenceable(1) %i.cx, i32 noundef %.0.copyload.i.i.i, ptr nonnull %.0.i.i, i32 %i.bj, i64 noundef %i.cw) #14
  %i.cz = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 %.sroa.0.0.i, ptr %i.cz, align 8
  %.sroa.473.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 20
  store ptr %i.cy, ptr %.sroa.473.0..sroa_idx, align 4
  %.sroa.574.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 28
  store i64 0, ptr %.sroa.574.0..sroa_idx, align 4
  %.sroa.676.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr null, ptr %.sroa.676.0..sroa_idx, align 8
  br label %bb.q

bb.l:                                             ; preds = %_ZNK2v88internal4wasm18CanonicalValueType16AsExactIfEnabledENS1_19WasmEnabledFeaturesENS1_9ExactnessE.exit
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.db = load ptr, ptr %i.da, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 416
  %i.dd = load i32, ptr %3, align 4               ; 2 uses
  %i.de = zext i32 %i.dd to i64
  %i.df = load ptr, ptr %i.dc, align 8
  %i.dg = getelementptr inbounds nuw [40 x i8], ptr %i.df, i64 %i.de ; 2 uses
  %7 = zext i32 %.0.copyload.i.i.i55 to i64
  %8 = zext nneg i32 %.0.copyload.i.i.i to i64
  %i.dh = load i32, ptr %i.dg, align 8
  %i.di = icmp eq i32 %i.dh, 1
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 28
  %i.dk = load i32, ptr %i.dj, align 4
  %narrow = select i1 %i.di, i32 %i.dk, i32 0     ; 2 uses
  %9 = zext i32 %narrow to i64
  %.not.i65 = icmp ule i32 %.0.copyload.i.i.i, %narrow
  %10 = sub nuw nsw i64 %9, %8
  %11 = icmp samesign uge i64 %10, %7
  %i.dl = select i1 %.not.i65, i1 %11, i1 false
  br i1 %i.dl, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 444, ptr %i.c, align 8
  br label %bb.q

bb.n:                                             ; preds = %bb.l
  %i.dm = load ptr, ptr %i.a, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.09.0.copyload = load ptr, ptr %i.dn, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.08.0.copyload = load ptr, ptr %i.do, align 8
  %i.dp = tail call ptr @_ZN2v88internal7Factory30NewWasmArrayFromElementSegmentENS0_12DirectHandleINS0_23WasmTrustedInstanceDataEEES4_jjjNS2_INS0_3MapEEENS0_4wasm18CanonicalValueTypeE(ptr noundef nonnull align 1 dereferenceable(1) %i.dm, ptr %.sroa.09.0.copyload, ptr %.sroa.08.0.copyload, i32 noundef %i.dd, i32 noundef %.0.copyload.i.i.i55, i32 noundef %.0.copyload.i.i.i, i64 %i.am, i32 %i.bj) #14 ; 2 uses
  %i.dq = load i64, ptr %i.dp, align 8            ; 2 uses
  %i.dr = and i64 %i.dq, 1
  %i.ds = icmp eq i64 %i.dr, 0
  br i1 %i.ds, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dt = lshr i64 %i.dq, 32
  %i.du = trunc nuw i64 %i.dt to i32
  store i32 %i.du, ptr %i.c, align 8
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.dv = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 %.sroa.0.0.i, ptr %i.dv, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 20
  store ptr %i.dp, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 28
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.667.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr null, ptr %.sroa.667.0..sroa_idx, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.e, %bb.o, %bb.p, %bb.m, %bb.j, %bb.k, %bb.a
  ret void
}

declare ptr @_ZN2v88internal7Factory22NewWasmArrayFromMemoryEjNS0_12DirectHandleINS0_3MapEEENS0_4wasm18CanonicalValueTypeEm(ptr noundef nonnull align 1 dereferenceable(1), i32 noundef, ptr, i32, i64 noundef) local_unnamed_addr #3

declare ptr @_ZN2v88internal7Factory30NewWasmArrayFromElementSegmentENS0_12DirectHandleINS0_23WasmTrustedInstanceDataEEES4_jjjNS2_INS0_3MapEEENS0_4wasm18CanonicalValueTypeE(ptr noundef nonnull align 1 dereferenceable(1), ptr, ptr, i32 noundef, i32 noundef, i32 noundef, i64, i32) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal4wasm27ConstantExpressionInterface6RefI31EPNS1_15WasmFullDecoderINS1_7Decoder17FullValidationTagES2_LNS1_12DecodingModeE1EEERKNS2_5ValueEPS9_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %.not.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8
  %.not1.i = icmp eq i32 %i.d, 0
  %i.e = select i1 %.not.i, i1 %.not1.i, i1 false
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 20
  %.0.copyload.i.i.i = load i32, ptr %i.f, align 4
  %i.g = zext i32 %.0.copyload.i.i.i to i64
  %i.h = shl i64 %i.g, 33
  %i.i = ashr exact i64 %i.h, 1
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 560 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 568
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = icmp eq ptr %i.k, %i.m
  br i1 %i.n, label %bb.c, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, !prof !5

bb.c:                                             ; preds = %bb.b
  %i.o = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.b) #14
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.o, %bb.c ], [ %i.k, %bb.b ] ; 3 uses
  %i.p = ptrtoint ptr %.0.i to i64
  %i.q = add i64 %i.p, 8
  %i.r = inttoptr i64 %i.q to ptr
  store ptr %i.r, ptr %i.j, align 8
  store i64 %i.i, ptr %.0.i, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 3073, ptr %i.s, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 20
  store ptr %.0.i, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr null, ptr %.sroa.67.0..sroa_idx, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2v88internal4wasm27ConstantExpressionInterface8DoReturnEPNS1_15WasmFullDecoderINS1_7Decoder17FullValidationTagES2_LNS1_12DecodingModeE1EEEj(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) initializes((0, 1)) %0, ptr nofree noundef captures(none) initializes((24, 32)) %1, i32 noundef %2) local_unnamed_addr #8 align 2 {
bb.a:
  store i8 1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.c, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load ptr, ptr %i.e, align 8
  %.not.i = icmp ne ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load i32, ptr %i.g, align 8
  %.not1.i = icmp eq i32 %i.h, 0
  %i.i = select i1 %.not.i, i1 %.not1.i, i1 false
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -32
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

declare void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64, i64 noundef, i64) local_unnamed_addr #3

declare void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64, i64, i64) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZNSt10_Sp_lockerC1EPKv(ptr noundef nonnull align 1 dereferenceable(2), ptr noundef) unnamed_addr #10

; Function Attrs: nounwind
declare void @_ZNSt10_Sp_lockerD1Ev(ptr noundef nonnull align 1 dead_on_return(2) dereferenceable(2)) unnamed_addr #10

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #14, !inline_history !30
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4              ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #14, !inline_history !30
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

declare noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef) local_unnamed_addr #3

declare preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64), i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #13

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: write, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #14 = { nounwind }
attributes #15 = { noreturn nounwind }
end_hunk_0
