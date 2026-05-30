inline.NumInlined: 41205
inline.NumDeleted: 6297
begin_hunk_0_@_ZN6duckdb17VectorCacheBuffer14ResetFromCacheERNS_6VectorERKNS_10shared_ptrINS_12VectorBufferELb1EEE:bb.a
  store i32 0, ptr %i.ey, align 8, !tbaa !410
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ex, i64 12
  store i32 0, ptr %i.fc, align 4, !tbaa !412
  %i.fd = load ptr, ptr %i.ex, align 8, !tbaa !413
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %i.ff = load ptr, ptr %i.fe, align 8
  tail call void %i.ff(ptr noundef nonnull align 8 dereferenceable(16) %i.ex) #46, !inline_history !2306
  %i.fg = load ptr, ptr %i.ex, align 8, !tbaa !413
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 24
  %i.fi = load ptr, ptr %i.fh, align 8
  tail call void %i.fi(ptr noundef nonnull align 8 dereferenceable(16) %i.ex) #46, !inline_history !2306
  br label %_ZN6duckdb19AssignSharedPointerINS_12VectorBufferEEEvRNS_10shared_ptrIT_Lb1EEERKS4_.exit74

bb.au:                                            ; preds = %bb.as
  %i.fj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !153
  %.not.i.i.i.i5.i.i71 = icmp eq i8 %i.fj, 0
  br i1 %.not.i.i.i.i5.i.i71, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fk = add nsw i32 %i.fb, -1
  store i32 %i.fk, ptr %i.ey, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i72

bb.aw:                                            ; preds = %bb.au
  %i.fl = atomicrmw volatile add ptr %i.ey, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i72

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i72: ; preds = %bb.aw, %bb.av
  %.0.i.i.i.i.i.i.i73 = phi i32 [ %i.fb, %bb.av ], [ %i.fl, %bb.aw ]
  %i.fm = icmp eq i32 %.0.i.i.i.i.i.i.i73, 1
  br i1 %i.fm, label %bb.ax, label %_ZN6duckdb19AssignSharedPointerINS_12VectorBufferEEEvRNS_10shared_ptrIT_Lb1EEERKS4_.exit74, !prof !88

bb.ax:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i72
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ex) #46
  br label %_ZN6duckdb19AssignSharedPointerINS_12VectorBufferEEEvRNS_10shared_ptrIT_Lb1EEERKS4_.exit74

_ZN6duckdb19AssignSharedPointerINS_12VectorBufferEEEvRNS_10shared_ptrIT_Lb1EEERKS4_.exit74: ; preds = %_ZNSt10unique_ptrIN6duckdb19VectorAuxiliaryDataESt14default_deleteIS1_EED2Ev.exit64, %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EEC2ERKS2_.exit.i.i69, %bb.at, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i72, %bb.ax
  %i.fn = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.el) ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 48 ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 56 ; 2 uses
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !544
  %i.fr = load ptr, ptr %i.fo, align 8, !tbaa !546
  %.not = icmp eq ptr %i.fq, %i.fr
  br i1 %.not, label %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EE5resetEv.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6duckdb19AssignSharedPointerINS_12VectorBufferEEEvRNS_10shared_ptrIT_Lb1EEERKS4_.exit74
  %i.fs = getelementptr inbounds nuw i8, ptr %.tr, i64 96 ; 2 uses
  br label %bb.ay

bb.ay:                                            ; preds = %.lr.ph, %bb.ay
  %.083 = phi i64 [ 0, %.lr.ph ], [ %i.fy, %bb.ay ] ; 4 uses
  %i.ft = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb6vectorINS_10shared_ptrINS_12VectorBufferELb1EEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.fs, i64 noundef %.083)
  %i.fu = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ft)
  %i.fv = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_6VectorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.fo, i64 noundef %.083)
  %i.fw = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fv)
  %i.fx = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb6vectorINS_10shared_ptrINS_12VectorBufferELb1EEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.fs, i64 noundef %.083)
  tail call void @_ZN6duckdb17VectorCacheBuffer14ResetFromCacheERNS_6VectorERKNS_10shared_ptrINS_12VectorBufferELb1EEE(ptr noundef nonnull align 8 dereferenceable(144) %i.fu, ptr noundef nonnull align 8 dereferenceable(104) %i.fw, ptr noundef nonnull align 8 dereferenceable(16) %i.fx)
  %i.fy = add nuw i64 %.083, 1                    ; 2 uses
  %i.fz = load ptr, ptr %i.fp, align 8, !tbaa !544
  %i.ga = load ptr, ptr %i.fo, align 8, !tbaa !546
  %i.gb = ptrtoint ptr %i.fz to i64
  %i.gc = ptrtoint ptr %i.ga to i64
  %i.gd = sub i64 %i.gb, %i.gc
  %i.ge = ashr exact i64 %i.gd, 3
  %i.gf = icmp ult i64 %i.fy, %i.ge
  br i1 %i.gf, label %bb.ay, label %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EE5resetEv.exit, !llvm.loop !2720

bb.az:                                            ; preds = %_ZN6duckdb21TemplatedValidityMaskImE5ResetEm.exit
  %i.gg = getelementptr inbounds nuw i8, ptr %.tr, i64 80
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !594
  %i.gi = getelementptr inbounds nuw i8, ptr %.tr79, i64 32
  store ptr %i.gh, ptr %i.gi, align 8, !tbaa !428
  %i.gj = getelementptr inbounds nuw i8, ptr %.tr79, i64 88
  store ptr null, ptr %i.gj, align 8, !tbaa !2233
  %i.gk = getelementptr inbounds nuw i8, ptr %.tr79, i64 96 ; 2 uses
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !409 ; 8 uses
  store ptr null, ptr %i.gk, align 8, !tbaa !409
  %.not.i.i.i.i = icmp eq ptr %i.gl, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EE5resetEv.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 8 ; 4 uses
  %i.gn = load atomic i64, ptr %i.gm acquire, align 8 ; 2 uses
  %i.go = icmp eq i64 %i.gn, 4294967297
  %i.gp = trunc i64 %i.gn to i32                  ; 2 uses
  br i1 %i.go, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  store i32 0, ptr %i.gm, align 8, !tbaa !410
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gl, i64 12
  store i32 0, ptr %i.gq, align 4, !tbaa !412
  %i.gr = load ptr, ptr %i.gl, align 8, !tbaa !413
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  %i.gt = load ptr, ptr %i.gs, align 8
  tail call void %i.gt(ptr noundef nonnull align 8 dereferenceable(16) %i.gl) #46, !inline_history !2234
  %i.gu = load ptr, ptr %i.gl, align 8, !tbaa !413
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 24
  %i.gw = load ptr, ptr %i.gv, align 8
  tail call void %i.gw(ptr noundef nonnull align 8 dereferenceable(16) %i.gl) #46, !inline_history !2234
  br label %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EE5resetEv.exit

bb.bc:                                            ; preds = %bb.ba
  %i.gx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !153
  %.not.i.i.i.i.i75 = icmp eq i8 %i.gx, 0
  br i1 %.not.i.i.i.i.i75, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.gy = add nsw i32 %i.gp, -1
  store i32 %i.gy, ptr %i.gm, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.be:                                            ; preds = %bb.bc
  %i.gz = atomicrmw volatile add ptr %i.gm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.be, %bb.bd
  %.0.i.i.i.i.i.i = phi i32 [ %i.gp, %bb.bd ], [ %i.gz, %bb.be ]
  %i.ha = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ha, label %bb.bf, label %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EE5resetEv.exit, !prof !88

bb.bf:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gl) #46
  br label %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EE5resetEv.exit

_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EE5resetEv.exit: ; preds = %bb.ay, %_ZN6duckdb19AssignSharedPointerINS_12VectorBufferEEEvRNS_10shared_ptrIT_Lb1EEERKS4_.exit74, %bb.bf, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.bb, %bb.az
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #29

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #29

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #29

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6duckdb8Geometry10FromBinaryERKNS_8string_tERS1_RNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.duckdb::string_t", align 8 ; 6 uses
  %.sroa.0.i = alloca %struct.anon, align 8       ; 8 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::allocator.20", align 1 ; 5 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::allocator.20", align 1 ; 5 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::allocator.20", align 1 ; 5 uses
  %i.g = alloca i64, align 8                      ; 4 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.i = alloca i64, align 8                      ; 4 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %15 = alloca %"class.std::allocator.20", align 1 ; 5 uses
  %i.j = alloca i64, align 8                      ; 4 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %17 = alloca %"class.std::allocator.20", align 1 ; 5 uses
  %i.k = alloca i64, align 8                      ; 4 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %19 = alloca %"class.std::allocator.20", align 1 ; 5 uses
  %i.l = alloca i64, align 8                      ; 4 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %21 = alloca %"class.std::allocator.20", align 1 ; 5 uses
  %i.m = alloca i64, align 8                      ; 4 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %23 = alloca %"class.std::allocator.20", align 1 ; 5 uses
  %i.n = alloca i64, align 8                      ; 4 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %25 = alloca %"class.std::allocator.20", align 1 ; 5 uses
  %i.o = alloca i64, align 8                      ; 4 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %27 = alloca %"class.std::allocator.20", align 1 ; 5 uses
  %i.p = alloca i64, align 8                      ; 4 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %29 = alloca %"class.std::allocator.20", align 1 ; 5 uses
  %i.q = alloca i64, align 8                      ; 4 uses
  %30 = alloca %"class.duckdb::(anonymous namespace)::BlobReader", align 8 ; 32 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %32 = alloca %"class.std::allocator.20", align 1 ; 5 uses
  %33 = alloca %"struct.duckdb::string_t", align 8 ; 7 uses
  %34 = alloca %"class.duckdb::(anonymous namespace)::FixedSizeBlobWriter", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #46
  %i.r = load i32, ptr %0, align 8, !tbaa !153    ; 3 uses
  %i.s = icmp ult i32 %i.r, 13
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = select i1 %i.s, ptr %i.t, ptr %i.v       ; 3 uses
  %i.x = zext i32 %i.r to i64
  store ptr %i.w, ptr %30, align 8, !tbaa !2017
  %i.y = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 32 uses
  store ptr %i.w, ptr %i.y, align 8, !tbaa !2019
  %i.z = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 17 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.x
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !2081
  %.not7888.i.not = icmp eq i32 %i.r, 0
  br i1 %.not7888.i.not, label %_ZN6duckdb12_GLOBAL__N_110AnalyzeWKBERNS0_10BlobReaderE.exit.thread, label %.lr.ph94.i

.lr.ph94.i:                                       ; preds = %bb.a, %.loopexit.i
  %.sroa.21.093.i.a = phi i1 [ %.sroa.21.2.i, %.loopexit.i ], [ false, %bb.a ]
  %.sroa.0.sroa.14.090.i = phi i8 [ %37, %.loopexit.i ], [ 0, %bb.a ]
  %.sroa.0.sroa.0.089.i = phi i32 [ %.sroa.0.sroa.0.2.i, %.loopexit.i ], [ 0, %bb.a ] ; 4 uses
  %i.ab = call fastcc noundef zeroext i8 @_ZN6duckdb12_GLOBAL__N_110BlobReader4ReadIhLb1EEET_v(ptr noundef nonnull align 8 dereferenceable(24) %30)
  %i.ac = icmp eq i8 %i.ab, 1                     ; 5 uses
  %i.ad = call fastcc noundef i32 @_ZN6duckdb12_GLOBAL__N_110BlobReader4ReadIjEET_b(ptr noundef nonnull align 8 dereferenceable(24) %30, i1 noundef zeroext %i.ac) ; 5 uses
  %.lhs.trunc.i = trunc i32 %i.ad to i16          ; 2 uses
  %i.ae = urem i16 %.lhs.trunc.i, 1000
  %i.af = udiv i16 %.lhs.trunc.i, 1000            ; 2 uses
  %i.ag = icmp slt i32 %i.ad, 0
  %i.ah = and i32 %i.ad, 1073741824
  %i.ai = and i32 %i.ad, 536870912
  %.not.i = icmp eq i32 %i.ai, 0
  %i.aj = trunc i16 %i.af to i1
  %i.ak = or i1 %i.ag, %i.aj
  %i.al = and i16 %i.af, 2
  %i.am = zext nneg i16 %i.al to i32
  %i.an = or disjoint i32 %i.ah, %i.am
  %i.ao = icmp ne i32 %i.an, 0
  br i1 %.not.i, label %bb.b, label %.thread.i

.thread.i:                                        ; preds = %.lr.ph94.i
  call fastcc void @_ZN6duckdb12_GLOBAL__N_110BlobReader4SkipEm(ptr noundef nonnull align 8 dereferenceable(24) %30, i64 noundef 4)
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph94.i
  %or.cond3.not.i = icmp ult i32 %i.ad, 536870912
  br i1 %or.cond3.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread.i
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.21.2.i = phi i1 [ %.sroa.21.093.i.a, %bb.b ], [ true, %bb.c ] ; 2 uses
  %i.ap = select i1 %i.ak, i64 3, i64 2
  %i.aq = zext i1 %i.ao to i64
  %i.ar = add nuw nsw i64 %i.ap, %i.aq
  %i.as = shl nuw nsw i64 %i.ar, 3                ; 5 uses
  %35 = xor i1 %i.ac, true
  %36 = zext i1 %35 to i8
  %37 = or i8 %.sroa.0.sroa.14.090.i, %36         ; 2 uses
  switch i16 %i.ae, label %bb.r [
    i16 1, label %bb.e
    i16 2, label %bb.f
    i16 3, label %bb.g
    i16 4, label %bb.q
    i16 5, label %bb.q
    i16 6, label %bb.q
    i16 7, label %bb.q
  ]

bb.e:                                             ; preds = %bb.d
  %i.at = add i32 %.sroa.0.sroa.0.089.i, 5
  call fastcc void @_ZN6duckdb12_GLOBAL__N_110BlobReader4SkipEm(ptr noundef nonnull align 8 dereferenceable(24) %30, i64 noundef %i.as)
  %i.au = trunc nuw nsw i64 %i.as to i32
  %i.av = add i32 %i.at, %i.au
  br label %.loopexit.i

bb.f:                                             ; preds = %bb.d
  %i.aw = call fastcc noundef i32 @_ZN6duckdb12_GLOBAL__N_110BlobReader4ReadIjEET_b(ptr noundef nonnull align 8 dereferenceable(24) %30, i1 noundef zeroext %i.ac)
  %i.ax = zext i32 %i.aw to i64
  %i.ay = mul nuw nsw i64 %i.as, %i.ax            ; 2 uses
  call fastcc void @_ZN6duckdb12_GLOBAL__N_110BlobReader4SkipEm(ptr noundef nonnull align 8 dereferenceable(24) %30, i64 noundef %i.ay)
  %i.az = trunc i64 %i.ay to i32
  %i.ba = add i32 %.sroa.0.sroa.0.089.i, 9
  %i.bb = add i32 %i.ba, %i.az
  br label %.loopexit.i

bb.g:                                             ; preds = %bb.d
  %i.bc = call fastcc noundef i32 @_ZN6duckdb12_GLOBAL__N_110BlobReader4ReadIjEET_b(ptr noundef nonnull align 8 dereferenceable(24) %30, i1 noundef zeroext %i.ac) ; 3 uses
  %i.bd = add i32 %.sroa.0.sroa.0.089.i, 9        ; 3 uses
  %.not108.i = icmp eq i32 %i.bc, 0
  br i1 %.not108.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g
  br i1 %i.ac, label %_ZN6duckdb12_GLOBAL__N_110BlobReader4ReadIjEET_b.exit.us.i, label %.lr.ph.split.i

_ZN6duckdb12_GLOBAL__N_110BlobReader4ReadIjEET_b.exit.us.i: ; preds = %.lr.ph.i, %_ZN6duckdb12_GLOBAL__N_110BlobReader4SkipEm.exit.us.i
  %.084.us.i = phi i32 [ %i.bo, %_ZN6duckdb12_GLOBAL__N_110BlobReader4SkipEm.exit.us.i ], [ 0, %.lr.ph.i ]
  %.sroa.0.sroa.0.183.us.i = phi i32 [ %i.bn, %_ZN6duckdb12_GLOBAL__N_110BlobReader4SkipEm.exit.us.i ], [ %i.bd, %.lr.ph.i ]
  %i.be = call fastcc noundef i32 @_ZN6duckdb12_GLOBAL__N_110BlobReader4ReadIjLb1EEET_v(ptr noundef nonnull align 8 dereferenceable(24) %30)
  %i.bf = zext i32 %i.be to i64
  %i.bg = mul nuw nsw i64 %i.as, %i.bf            ; 2 uses
  %i.bh = load ptr, ptr %i.y, align 8, !tbaa !2019 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bg ; 2 uses
  %i.bj = load ptr, ptr %i.z, align 8, !tbaa !2081
  %i.bk = icmp ugt ptr %i.bi, %i.bj
  br i1 %i.bk, label %.split.us.i, label %_ZN6duckdb12_GLOBAL__N_110BlobReader4SkipEm.exit.us.i

_ZN6duckdb12_GLOBAL__N_110BlobReader4SkipEm.exit.us.i: ; preds = %_ZN6duckdb12_GLOBAL__N_110BlobReader4ReadIjEET_b.exit.us.i
  store ptr %i.bi, ptr %i.y, align 8, !tbaa !2019
  %i.bl = trunc i64 %i.bg to i32
  %i.bm = add i32 %.sroa.0.sroa.0.183.us.i, 4
  %i.bn = add i32 %i.bm, %i.bl                    ; 2 uses
  %i.bo = add nuw i32 %.084.us.i, 1               ; 2 uses
  %exitcond127.not.i = icmp eq i32 %i.bo, %i.bc
  br i1 %exitcond127.not.i, label %.loopexit.i, label %_ZN6duckdb12_GLOBAL__N_110BlobReader4ReadIjEET_b.exit.us.i, !llvm.loop !2721

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %.promoted.i = load ptr, ptr %i.y, align 8, !tbaa !2019 ; 3 uses
  %i.bp = load ptr, ptr %i.z, align 8             ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.promoted.i, i64 4 ; 2 uses
  %i.br = icmp ugt ptr %i.bq, %i.bp
  br i1 %i.br, label %.lr.ph.split.i._crit_edge, label %_ZN6duckdb12_GLOBAL__N_110BlobReader4ReadIjLb0EEET_v.exit.i.i

bb.h:                                             ; preds = %_ZN6duckdb12_GLOBAL__N_110BlobReader4SkipEm.exit.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.cl, i64 4 ; 2 uses
  %i.bt = icmp ugt ptr %i.bs, %i.bp
  br i1 %i.bt, label %.lr.ph.split.i._crit_edge, label %_ZN6duckdb12_GLOBAL__N_110BlobReader4ReadIjLb0EEET_v.exit.i.i, !llvm.loop !2721

.lr.ph.split.i._crit_edge:                        ; preds = %.lr.ph.split.i, %bb.h
  %i.bu = phi ptr [ %i.cl, %bb.h ], [ %.promoted.i, %.lr.ph.split.i ]
  %i.bv = tail call ptr @__cxa_allocate_exception(i64 16) #46 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #46
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef nonnull @.str.348, ptr noundef nonnull align 1 dereferenceable(1) %29)
          to label %bb.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i

bb.i:                                             ; preds = %.lr.ph.split.i._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #46
  %i.bw = load ptr, ptr %30, align 8, !tbaa !2017
  %i.bx = ptrtoint ptr %i.bu to i64
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = sub i64 %i.bx, %i.by
  store i64 %i.bz, ptr %i.q, align 8, !tbaa !108
  invoke void @_ZN6duckdb21InvalidInputExceptionC2IJlEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.bv, ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef nonnull align 8 dereferenceable(8) %i.q)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  invoke void @__cxa_throw(ptr nonnull %i.bv, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #49
          to label %bb.l unwind label %bb.k

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i: ; preds = %.lr.ph.split.i._crit_edge
  %i.ca = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #46
  br label %common.resume.sink.split.i

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0.i.i.i = phi i1 [ false, %bb.j ], [ true, %bb.i ] ; 2 uses
  %i.cb = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #46
  %i.cc = load ptr, ptr %28, align 8, !tbaa !89   ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %28, i64 16
  %i.ce = icmp eq ptr %i.cc, %i.cd
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.k
  call void @_ZdlPv(ptr noundef %i.cc) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #46
  br i1 %.0.i.i.i, label %common.resume.sink.split.i, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #46
  br i1 %.0.i.i.i, label %common.resume.sink.split.i, label %common.resume

common.resume.sink.split.i:                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i
  %.sink.i = phi ptr [ %i.co, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.co, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.co, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.bv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.bv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ]
  %common.resume.op.ph.i = phi { ptr, i32 } [ %i.ct, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.cu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.cb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.cb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ]
  call void @__cxa_free_exception(ptr %.sink.i) #46
  br label %common.resume

common.resume:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i120.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i121.i, %common.resume.sink.split.i29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i39, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i40, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i36, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i126.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i127.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i79.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i80.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i86.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i87.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i133.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i134.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i94.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i95.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i100.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i101.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i139.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i140.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i108.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i109.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i115.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i116.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %common.resume.sink.split.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %bb.x
  %common.resume.op = phi { ptr, i32 } [ %common.resume.op.ph.i, %common.resume.sink.split.i ], [ %.pn54, %bb.x ], [ %i.cb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.cb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.cu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.pm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i108.i ], [ %i.gd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i120.i ], [ %i.gn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i39 ], [ %i.ha, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i35 ], [ %i.jf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i126.i ], [ %i.jp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i79.i ], [ %i.kc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i86.i ], [ %i.ll, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i133.i ], [ %i.lw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i94.i ], [ %i.mm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i100.i ], [ %i.oy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i139.i ], [ %i.gd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i121.i ], [ %i.qf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i116.i ], [ %i.gn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i40 ], [ %i.lw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i95.i ], [ %i.ha, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i36 ], [ %i.pm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i109.i ], [ %i.jf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i127.i ], [ %i.mm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i101.i ], [ %i.jp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i80.i ], [ %i.qf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i115.i ], [ %i.kc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i87.i ], [ %i.oy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i140.i ], [ %i.ll, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i134.i ], [ %common.resume.op.ph.i31, %common.resume.sink.split.i29 ]
  resume { ptr, i32 } %common.resume.op

bb.l:                                             ; preds = %bb.j
  unreachable

_ZN6duckdb12_GLOBAL__N_110BlobReader4ReadIjLb0EEET_v.exit.i.i: ; preds = %.lr.ph.split.i, %bb.h
  %i.cf = phi ptr [ %i.bs, %bb.h ], [ %i.bq, %.lr.ph.split.i ] ; 2 uses
  %.sroa.0.sroa.0.183.i120 = phi i32 [ %i.da, %bb.h ], [ %i.bd, %.lr.ph.split.i ]
  %.084.i119 = phi i32 [ %i.db, %bb.h ], [ 0, %.lr.ph.split.i ]
  %i.cg = phi ptr [ %i.cl, %bb.h ], [ %.promoted.i, %.lr.ph.split.i ]
  %i.ch = load i32, ptr %i.cg, align 1
  %i.ci = tail call noundef i32 @llvm.bswap.i32(i32 %i.ch)
  %i.cj = zext i32 %i.ci to i64
  %i.ck = mul nuw nsw i64 %i.as, %i.cj            ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.ck ; 5 uses
  %i.cm = icmp ugt ptr %i.cl, %i.bp
  br i1 %i.cm, label %.split.us.i, label %_ZN6duckdb12_GLOBAL__N_110BlobReader4SkipEm.exit.i

.split.us.i:                                      ; preds = %_ZN6duckdb12_GLOBAL__N_110BlobReader4ReadIjLb0EEET_v.exit.i.i, %_ZN6duckdb12_GLOBAL__N_110BlobReader4ReadIjEET_b.exit.us.i
  %i.cn = phi ptr [ %i.bh, %_ZN6duckdb12_GLOBAL__N_110BlobReader4ReadIjEET_b.exit.us.i ], [ %i.cf, %_ZN6duckdb12_GLOBAL__N_110BlobReader4ReadIjLb0EEET_v.exit.i.i ]
  %i.co = tail call ptr @__cxa_allocate_exception(i64 16) #46 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #46
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull @.str.349, ptr noundef nonnull align 1 dereferenceable(1) %27)
          to label %bb.m unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.m:                                             ; preds = %.split.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #46
  %i.cp = load ptr, ptr %30, align 8, !tbaa !2017
  %i.cq = ptrtoint ptr %i.cn to i64
  %i.cr = ptrtoint ptr %i.cp to i64
  %i.cs = sub i64 %i.cq, %i.cr
  store i64 %i.cs, ptr %i.p, align 8, !tbaa !108
  invoke void @_ZN6duckdb21InvalidInputExceptionC2IJlEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.co, ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  invoke void @__cxa_throw(ptr nonnull %i.co, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #49
          to label %bb.p unwind label %bb.o

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %.split.us.i
  %i.ct = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #46
  br label %common.resume.sink.split.i

bb.o:                                             ; preds = %bb.n, %bb.m
  %.0.i52.i = phi i1 [ false, %bb.n ], [ true, %bb.m ] ; 2 uses
  %i.cu = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #46
  %i.cv = load ptr, ptr %26, align 8, !tbaa !89   ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.cx = icmp eq ptr %i.cv, %i.cw
  br i1 %i.cx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.o
  call void @_ZdlPv(ptr noundef %i.cv) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #46
  br i1 %.0.i52.i, label %common.resume.sink.split.i, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #46
  br i1 %.0.i52.i, label %common.resume.sink.split.i, label %common.resume

bb.p:                                             ; preds = %bb.n
  unreachable

_ZN6duckdb12_GLOBAL__N_110BlobReader4SkipEm.exit.i: ; preds = %_ZN6duckdb12_GLOBAL__N_110BlobReader4ReadIjLb0EEET_v.exit.i.i
  %i.cy = trunc i64 %i.ck to i32
  %i.cz = add i32 %.sroa.0.sroa.0.183.i120, 4
  %i.da = add i32 %i.cz, %i.cy                    ; 2 uses
  %i.db = add nuw i32 %.084.i119, 1               ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.db, %i.bc
  br i1 %exitcond.not.i, label %.loopexit.i.loopexit65, label %bb.h, !llvm.loop !2721

bb.q:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d
  call fastcc void @_ZN6duckdb12_GLOBAL__N_110BlobReader4SkipEm(ptr noundef nonnull align 8 dereferenceable(24) %30, i64 noundef 4)
  %i.dc = add i32 %.sroa.0.sroa.0.089.i, 9
  br label %.loopexit.i

.loopexit.i.loopexit65:                           ; preds = %_ZN6duckdb12_GLOBAL__N_110BlobReader4SkipEm.exit.i
  store ptr %i.cl, ptr %i.y, align 8
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %_ZN6duckdb12_GLOBAL__N_110BlobReader4SkipEm.exit.us.i, %.loopexit.i.loopexit65, %bb.q, %bb.g, %bb.f, %bb.e
  %.sroa.0.sroa.0.2.i = phi i32 [ %i.dc, %bb.q ], [ %i.av, %bb.e ], [ %i.bb, %bb.f ], [ %i.bd, %bb.g ], [ %i.da, %.loopexit.i.loopexit65 ], [ %i.bn, %_ZN6duckdb12_GLOBAL__N_110BlobReader4SkipEm.exit.us.i ] ; 2 uses
  %.val.i = load ptr, ptr %i.y, align 8, !tbaa !2019
  %.val51.i = load ptr, ptr %i.z, align 8, !tbaa !2081
  %.not78.i = icmp ult ptr %.val.i, %.val51.i
  br i1 %.not78.i, label %.lr.ph94.i, label %_ZN6duckdb12_GLOBAL__N_110AnalyzeWKBERNS0_10BlobReaderE.exit.thread329

_ZN6duckdb12_GLOBAL__N_110AnalyzeWKBERNS0_10BlobReaderE.exit.thread329: ; preds = %.loopexit.i
  %38 = zext nneg i8 %37 to i64
  %39 = shl nuw nsw i64 %38, 32
  %i.dd = zext i32 %.sroa.0.sroa.0.2.i to i64
  %i.de = or disjoint i64 %39, %i.dd
  br label %_ZN6duckdb12_GLOBAL__N_110AnalyzeWKBERNS0_10BlobReaderE.exit.thread

bb.r:                                             ; preds = %bb.d
  br i1 %3, label %bb.s, label %bb.cw

bb.s:                                             ; preds = %bb.r
  %i.df = tail call ptr @__cxa_allocate_exception(i64 16) #46 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #46
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull @.str.225, ptr noundef nonnull align 1 dereferenceable(1) %32)
          to label %bb.t unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN6duckdb21InvalidInputExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.df, ptr noundef nonnull align 8 dereferenceable(32) %31)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  invoke void @__cxa_throw(ptr nonnull %i.df, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #49
          to label %bb.cx unwind label %bb.v

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.s
  %i.dg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #46
  br label %bb.w

bb.v:                                             ; preds = %bb.u, %bb.t
  %.017 = phi i1 [ false, %bb.u ], [ true, %bb.t ] ; 2 uses
  %i.dh = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.di = load ptr, ptr %31, align 8, !tbaa !89   ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %31, i64 16
  %i.dk = icmp eq ptr %i.di, %i.dj
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.v
  call void @_ZdlPv(ptr noundef %i.di) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #46
  br i1 %.017, label %bb.w, label %bb.x

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #46
  br i1 %.017, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn55 = phi { ptr, i32 } [ %i.dg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.dh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.dh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.df) #46
  br label %bb.x

bb.x:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn54 = phi { ptr, i32 } [ %.pn55, %bb.w ], [ %i.dh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.dh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #46
  br label %common.resume

_ZN6duckdb12_GLOBAL__N_110AnalyzeWKBERNS0_10BlobReaderE.exit.thread: ; preds = %_ZN6duckdb12_GLOBAL__N_110AnalyzeWKBERNS0_10BlobReaderE.exit.thread329, %bb.a
  %.sroa.0.sroa.0.0.insert.insert.i49 = phi i64 [ %i.de, %_ZN6duckdb12_GLOBAL__N_110AnalyzeWKBERNS0_10BlobReaderE.exit.thread329 ], [ 0, %bb.a ] ; 2 uses
  %.sroa.21.3.i48 = phi i1 [ %.sroa.21.2.i, %_ZN6duckdb12_GLOBAL__N_110AnalyzeWKBERNS0_10BlobReaderE.exit.thread329 ], [ false, %bb.a ]
  %i.dl = and i64 %.sroa.0.sroa.0.0.insert.insert.i49, 4294967296
  %i.dm = icmp ne i64 %i.dl, 0
  %or.cond = select i1 %i.dm, i1 true, i1 %.sroa.21.3.i48
  br i1 %or.cond, label %bb.y, label %bb.cp

bb.y:                                             ; preds = %_ZN6duckdb12_GLOBAL__N_110AnalyzeWKBERNS0_10BlobReaderE.exit.thread
  %i.dn = load ptr, ptr %30, align 8, !tbaa !2017 ; 2 uses
  store ptr %i.dn, ptr %i.y, align 8, !tbaa !2019
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #46
  %i.do = and i64 %.sroa.0.sroa.0.0.insert.insert.i49, 4294967295 ; 3 uses
  %i.dp = icmp samesign ult i64 %i.do, 13
  br i1 %i.dp, label %_ZN6duckdb12StringVector11EmptyStringERNS_6VectorEm.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dq = tail call noundef nonnull align 8 dereferenceable(144) ptr @_ZN6duckdb12StringVector15GetStringBufferERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 48
  %i.ds = tail call { i64, ptr } @_ZN6duckdb10StringHeap11EmptyStringEm(ptr noundef nonnull align 8 dereferenceable(72) %i.dr, i64 noundef %i.do) ; 2 uses
  %i.dt = extractvalue { i64, ptr } %i.ds, 0
  %i.du = extractvalue { i64, ptr } %i.ds, 1
  br label %_ZN6duckdb12StringVector11EmptyStringERNS_6VectorEm.exit

_ZN6duckdb12StringVector11EmptyStringERNS_6VectorEm.exit: ; preds = %bb.y, %bb.z
  %.sroa.34.0.i = phi ptr [ %i.du, %bb.z ], [ undef, %bb.y ] ; 2 uses
  %.sroa.0.0.in.i = phi i64 [ %i.dt, %bb.z ], [ %i.do, %bb.y ] ; 3 uses
  store i64 %.sroa.0.0.in.i, ptr %33, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 2 uses
  store ptr %.sroa.34.0.i, ptr %i.dv, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #46
  %i.dw = trunc i64 %.sroa.0.0.in.i to i32        ; 2 uses
  %i.dx = icmp ult i32 %i.dw, 13
  %i.dy = getelementptr inbounds nuw i8, ptr %33, i64 4 ; 3 uses
  %i.dz = select i1 %i.dx, ptr %i.dy, ptr %.sroa.34.0.i ; 3 uses
  %i.ea = and i64 %.sroa.0.0.in.i, 4294967295
  store ptr %i.dz, ptr %34, align 8, !tbaa !2024
  %i.eb = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 25 uses
  store ptr %i.dz, ptr %i.eb, align 8, !tbaa !2026
  %i.ec = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 12 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.ea
  store ptr %i.ed, ptr %i.ec, align 8, !tbaa !2027
  %.val63210.i = load ptr, ptr %i.z, align 8, !tbaa !2081
  %.not161211.i = icmp ult ptr %i.dn, %.val63210.i
  br i1 %.not161211.i, label %.lr.ph213.i, label %_ZN6duckdb12_GLOBAL__N_110ConvertWKBERNS0_10BlobReaderERNS0_19FixedSizeBlobWriterE.exit

.lr.ph213.i:                                      ; preds = %_ZN6duckdb12StringVector11EmptyStringERNS_6VectorEm.exit, %.loopexit.i24
  %i.ee = call fastcc noundef zeroext i8 @_ZN6duckdb12_GLOBAL__N_110BlobReader4ReadIhLb1EEET_v(ptr noundef nonnull align 8 dereferenceable(24) %30)
  %i.ef = icmp eq i8 %i.ee, 1                     ; 8 uses
  %i.eg = call fastcc noundef i32 @_ZN6duckdb12_GLOBAL__N_110BlobReader4ReadIjEET_b(ptr noundef nonnull align 8 dereferenceable(24) %30, i1 noundef zeroext %i.ef) ; 4 uses
  %.lhs.trunc.i22 = trunc i32 %i.eg to i16        ; 2 uses
  %i.eh = urem i16 %.lhs.trunc.i22, 1000          ; 2 uses
  %.zext.i = zext nneg i16 %i.eh to i32
  %i.ei = udiv i16 %.lhs.trunc.i22, 1000          ; 2 uses
  %i.ej = icmp slt i32 %i.eg, 0
  %i.ek = and i32 %i.eg, 1073741824
  %i.el = and i32 %i.eg, 536870912
  %.not.i23 = icmp eq i32 %i.el, 0
  %i.em = trunc i16 %i.ei to i1
  %i.en = or i1 %i.ej, %i.em                      ; 8 uses
  %i.eo = and i16 %i.ei, 2
  %i.ep = zext nneg i16 %i.eo to i32
  %i.eq = or disjoint i32 %i.ek, %i.ep
  %i.er = icmp ne i32 %i.eq, 0                    ; 8 uses
  br i1 %.not.i23, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph213.i
  call fastcc void @_ZN6duckdb12_GLOBAL__N_110BlobReader4SkipEm(ptr noundef nonnull align 8 dereferenceable(24) %30, i64 noundef 4)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.lr.ph213.i
  %i.es = select i1 %i.en, i32 3, i32 2
  %i.et = zext i1 %i.er to i32
  %i.eu = add nuw nsw i32 %i.es, %i.et            ; 6 uses
  call fastcc void @_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIhEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %34, i8 1)
  %i.ev = select i1 %i.en, i32 1000, i32 0
  %i.ew = add nuw nsw i32 %i.ev, %.zext.i
  %i.ex = select i1 %i.er, i32 2000, i32 0
  %i.ey = add nuw nsw i32 %i.ew, %i.ex
  call fastcc void @_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIjEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %34, i32 %i.ey)
  switch i16 %i.eh, label %.loopexit.i24 [
    i16 1, label %.preheader166.i
    i16 2, label %bb.ap
    i16 3, label %bb.bh
    i16 4, label %bb.cm
    i16 5, label %bb.cm
    i16 6, label %bb.cm
    i16 7, label %bb.cm
  ]

.preheader166.i:                                  ; preds = %bb.ab
  %i.ez = load ptr, ptr %i.z, align 8, !tbaa !2081 ; 8 uses
  %.promoted158 = load ptr, ptr %i.y, align 8, !tbaa !2019 ; 12 uses
  %.promoted162 = load ptr, ptr %i.eb, align 8    ; 12 uses
  %i.fa = load ptr, ptr %i.ec, align 8            ; 8 uses
  br i1 %i.ef, label %.preheader166.split.us.i, label %.preheader166.split.i

.preheader166.split.us.i:                         ; preds = %.preheader166.i
  %i.fb = getelementptr inbounds nuw i8, ptr %.promoted158, i64 8 ; 3 uses
  %i.fc = icmp ugt ptr %i.fb, %i.ez
  br i1 %i.fc, label %.split205.us.i, label %_ZN6duckdb12_GLOBAL__N_110BlobReader4ReadIdLb1EEET_v.exit.us.i

_ZN6duckdb12_GLOBAL__N_110BlobReader4ReadIdLb1EEET_v.exit.us.i: ; preds = %.preheader166.split.us.i
  %i.fd = getelementptr inbounds nuw i8, ptr %.promoted162, i64 8 ; 3 uses
  %i.fe = icmp ugt ptr %i.fd, %i.fa
  br i1 %i.fe, label %.split207.us.i, label %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIdEEvRKT_.exit.us.i

_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIdEEvRKT_.exit.us.i: ; preds = %_ZN6duckdb12_GLOBAL__N_110BlobReader4ReadIdLb1EEET_v.exit.us.i
  %i.ff = load double, ptr %.promoted158, align 1
  store double %i.ff, ptr %.promoted162, align 1
  %i.fg = getelementptr inbounds nuw i8, ptr %.promoted158, i64 16 ; 4 uses
  %i.fh = icmp ugt ptr %i.fg, %i.ez
  br i1 %i.fh, label %.split205.us.i, label %_ZN6duckdb12_GLOBAL__N_110BlobReader4ReadIdLb1EEET_v.exit.us.i.1

_ZN6duckdb12_GLOBAL__N_110BlobReader4ReadIdLb1EEET_v.exit.us.i.1: ; preds = %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIdEEvRKT_.exit.us.i
  %i.fi = getelementptr inbounds nuw i8, ptr %.promoted162, i64 16 ; 4 uses
  %i.fj = icmp ugt ptr %i.fi, %i.fa
  br i1 %i.fj, label %.split207.us.i, label %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIdEEvRKT_.exit.us.i.1

_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIdEEvRKT_.exit.us.i.1: ; preds = %_ZN6duckdb12_GLOBAL__N_110BlobReader4ReadIdLb1EEET_v.exit.us.i.1
  %i.fk = load double, ptr %i.fb, align 1
  store double %i.fk, ptr %i.fd, align 1
  %exitcond235.not.i.1 = icmp eq i32 %i.eu, 2
  br i1 %exitcond235.not.i.1, label %.loopexit.i24.loopexit, label %.preheader166.split.us.i.2

.preheader166.split.us.i.2:                       ; preds = %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIdEEvRKT_.exit.us.i.1
  %i.fl = getelementptr inbounds nuw i8, ptr %.promoted158, i64 24 ; 4 uses
  %i.fm = icmp ugt ptr %i.fl, %i.ez
  br i1 %i.fm, label %.split205.us.i, label %_ZN6duckdb12_GLOBAL__N_110BlobReader4ReadIdLb1EEET_v.exit.us.i.2

_ZN6duckdb12_GLOBAL__N_110BlobReader4ReadIdLb1EEET_v.exit.us.i.2: ; preds = %.preheader166.split.us.i.2
  %i.fn = getelementptr inbounds nuw i8, ptr %.promoted162, i64 24 ; 4 uses
  %i.fo = icmp ugt ptr %i.fn, %i.fa
  br i1 %i.fo, label %.split207.us.i, label %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIdEEvRKT_.exit.us.i.2

_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIdEEvRKT_.exit.us.i.2: ; preds = %_ZN6duckdb12_GLOBAL__N_110BlobReader4ReadIdLb1EEET_v.exit.us.i.2
  %i.fp = load double, ptr %i.fg, align 1
  store double %i.fp, ptr %i.fi, align 1
  %exitcond235.not.i.2 = xor i1 %i.en, %i.er
  br i1 %exitcond235.not.i.2, label %.loopexit.i24.loopexit, label %.preheader166.split.us.i.3

.preheader166.split.us.i.3:                       ; preds = %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIdEEvRKT_.exit.us.i.2
  %i.fq = getelementptr inbounds nuw i8, ptr %.promoted158, i64 32 ; 2 uses
  %i.fr = icmp ugt ptr %i.fq, %i.ez
  br i1 %i.fr, label %.split205.us.i, label %_ZN6duckdb12_GLOBAL__N_110BlobReader4ReadIdLb1EEET_v.exit.us.i.3

_ZN6duckdb12_GLOBAL__N_110BlobReader4ReadIdLb1EEET_v.exit.us.i.3: ; preds = %.preheader166.split.us.i.3
  %i.fs = getelementptr inbounds nuw i8, ptr %.promoted162, i64 32 ; 2 uses
  %i.ft = icmp ugt ptr %i.fs, %i.fa
  br i1 %i.ft, label %.split207.us.i, label %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIdEEvRKT_.exit.us.i.3

_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIdEEvRKT_.exit.us.i.3: ; preds = %_ZN6duckdb12_GLOBAL__N_110BlobReader4ReadIdLb1EEET_v.exit.us.i.3
  %i.fu = load double, ptr %i.fl, align 1
  store double %i.fu, ptr %i.fn, align 1
  br label %.loopexit.i24.loopexit

.preheader166.split.i:                            ; preds = %.preheader166.i
  %i.fv = getelementptr inbounds nuw i8, ptr %.promoted158, i64 8 ; 3 uses
  %i.fw = icmp ugt ptr %i.fv, %i.ez
  br i1 %i.fw, label %bb.ag, label %_ZN6duckdb12_GLOBAL__N_110BlobReader4ReadIdLb0EEET_v.exit.i.i

.split205.us.i:                                   ; preds = %.preheader166.split.us.i.3, %.preheader166.split.us.i.2, %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIdEEvRKT_.exit.us.i, %.preheader166.split.us.i
  %.lcssa604.a = phi ptr [ %.promoted158, %.preheader166.split.us.i ], [ %i.fb, %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIdEEvRKT_.exit.us.i ], [ %i.fg, %.preheader166.split.us.i.2 ], [ %i.fl, %.preheader166.split.us.i.3 ]
  %i.fx = call ptr @__cxa_allocate_exception(i64 16) #46 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #46
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.348, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.ac unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i118.i

bb.ac:                                            ; preds = %.split205.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #46
  %i.fy = load ptr, ptr %30, align 8, !tbaa !2017
  %i.fz = ptrtoint ptr %.lcssa604.a to i64
  %i.ga = ptrtoint ptr %i.fy to i64
  %i.gb = sub i64 %i.fz, %i.ga
  store i64 %i.gb, ptr %i.g, align 8, !tbaa !108
  invoke void @_ZN6duckdb21InvalidInputExceptionC2IJlEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.fx, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  invoke void @__cxa_throw(ptr nonnull %i.fx, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #49
          to label %bb.af unwind label %bb.ae

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i118.i: ; preds = %.split205.us.i
  %i.gc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #46
  br label %common.resume.sink.split.i29

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.0.i119.i = phi i1 [ false, %bb.ad ], [ true, %bb.ac ] ; 2 uses
  %i.gd = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #46
  %i.ge = load ptr, ptr %10, align 8, !tbaa !89   ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.gg = icmp eq ptr %i.ge, %i.gf
  br i1 %i.gg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i121.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i120.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i120.i: ; preds = %bb.ae
  call void @_ZdlPv(ptr noundef %i.ge) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #46
  br i1 %.0.i119.i, label %common.resume.sink.split.i29, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i121.i: ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #46
  br i1 %.0.i119.i, label %common.resume.sink.split.i29, label %common.resume

common.resume.sink.split.i29:                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i116.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i115.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i111.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i109.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i108.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i104.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i140.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i139.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i135.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i101.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i100.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i96.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i95.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i94.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i90.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i134.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i133.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i129.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i87.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i86.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i82.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i80.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i79.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i75.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i127.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i126.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i122.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i36, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i34, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i40, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i39, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i37, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i121.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i120.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i118.i
  %.sink.i30 = phi ptr [ %i.pb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i104.i ], [ %i.on, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i135.i ], [ %i.mg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i96.i ], [ %i.lq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i90.i ], [ %i.lf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i129.i ], [ %i.jw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i82.i ], [ %i.jj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i75.i ], [ %i.iz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i122.i ], [ %i.gu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i34 ], [ %i.gh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i37 ], [ %i.pu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i111.i ], [ %i.gh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i40 ], [ %i.gh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i39 ], [ %i.gu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i36 ], [ %i.gu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i35 ], [ %i.iz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i127.i ], [ %i.iz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i126.i ], [ %i.jj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i80.i ], [ %i.jj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i79.i ], [ %i.jw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i87.i ], [ %i.jw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i86.i ], [ %i.lf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i134.i ], [ %i.lf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i133.i ], [ %i.lq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i95.i ], [ %i.lq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i94.i ], [ %i.mg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i101.i ], [ %i.mg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i100.i ], [ %i.on, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i140.i ], [ %i.on, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i139.i ], [ %i.pb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i109.i ], [ %i.pb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i108.i ], [ %i.pu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i116.i ], [ %i.pu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i115.i ], [ %i.fx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i121.i ], [ %i.fx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i120.i ], [ %i.fx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i118.i ]
  %common.resume.op.ph.i31 = phi { ptr, i32 } [ %i.pl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i104.i ], [ %i.ox, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i135.i ], [ %i.ml, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i96.i ], [ %i.lv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i90.i ], [ %i.lk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i129.i ], [ %i.kb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i82.i ], [ %i.jo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i75.i ], [ %i.je, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i122.i ], [ %i.gz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i34 ], [ %i.gm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i37 ], [ %i.qe, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i111.i ], [ %i.gn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i40 ], [ %i.gn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i39 ], [ %i.ha, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i36 ], [ %i.ha, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i35 ], [ %i.jf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i127.i ], [ %i.jf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i126.i ], [ %i.jp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i80.i ], [ %i.jp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i79.i ], [ %i.kc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i87.i ], [ %i.kc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i86.i ], [ %i.ll, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i134.i ], [ %i.ll, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i133.i ], [ %i.lw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i95.i ], [ %i.lw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i94.i ], [ %i.mm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i101.i ], [ %i.mm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i100.i ], [ %i.oy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i140.i ], [ %i.oy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i139.i ], [ %i.pm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i109.i ], [ %i.pm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i108.i ], [ %i.qf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i116.i ], [ %i.qf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i115.i ], [ %i.gd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i121.i ], [ %i.gd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i120.i ], [ %i.gc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i118.i ]
  call void @__cxa_free_exception(ptr %.sink.i30) #46
  br label %common.resume

bb.af:                                            ; preds = %bb.ad
  unreachable

bb.ag:                                            ; preds = %.preheader166.split.i.3, %.preheader166.split.i.2, %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIdEEvRKT_.exit.i, %.preheader166.split.i
  %.lcssa593 = phi ptr [ %.promoted158, %.preheader166.split.i ], [ %i.fv, %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIdEEvRKT_.exit.i ], [ %i.hg, %.preheader166.split.i.2 ], [ %i.hm, %.preheader166.split.i.3 ]
  %i.gh = call ptr @__cxa_allocate_exception(i64 16) #46 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #46
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull @.str.348, ptr noundef nonnull align 1 dereferenceable(1) %25)
          to label %bb.ah unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i37

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #46
  %i.gi = load ptr, ptr %30, align 8, !tbaa !2017
  %i.gj = ptrtoint ptr %.lcssa593 to i64
  %i.gk = ptrtoint ptr %i.gi to i64
  %i.gl = sub i64 %i.gj, %i.gk
  store i64 %i.gl, ptr %i.o, align 8, !tbaa !108
  invoke void @_ZN6duckdb21InvalidInputExceptionC2IJlEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.gh, ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(8) %i.o)
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  invoke void @__cxa_throw(ptr nonnull %i.gh, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #49
          to label %bb.ak unwind label %bb.aj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i37: ; preds = %bb.ag
end_hunk_0
begin_hunk_1_@_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE5writeIfTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEEvSE_NS0_18basic_format_specsIcEE:bb.a
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #46
  br label %bb.am

bb.x:                                             ; preds = %bb.q
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !3511 ; 2 uses
  %i.by = icmp slt i32 %i.bx, 0
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ca = load i8, ptr %i.bz, align 8
  %i.cb = icmp ne i8 %i.ca, 0
  %or.cond = select i1 %i.by, i1 %i.cb, i1 false
  %i.cc = select i1 %or.cond, i32 6, i32 %i.bx
  %i.cd = icmp eq i8 %i.bg, 1
  %i.ce = zext i1 %i.cd to i32
  %spec.select82 = add nsw i32 %i.cc, %i.ce       ; 4 uses
  %i.cf = or i32 %.sroa.8.2, 402653184
  %i.cg = fpext float %.0 to double
  %.sroa.8.0.insert.ext21 = zext i32 %i.cf to i64
  %.sroa.8.0.insert.shift22 = shl nuw i64 %.sroa.8.0.insert.ext21, 32 ; 2 uses
  %.sroa.014.0.insert.ext15 = and i64 %i.a, 4294967295
  %.sroa.014.0.insert.insert17 = or disjoint i64 %.sroa.8.0.insert.shift22, %.sroa.014.0.insert.ext15
  %i.ch = invoke noundef i32 @_ZN10duckdb_fmt2v68internal12format_floatIdEEiT_iNS1_11float_specsERNS1_6bufferIcEE(double noundef %i.cg, i32 noundef %spec.select82, i64 %.sroa.014.0.insert.insert17, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.z unwind label %bb.y       ; 2 uses

bb.y:                                             ; preds = %bb.x
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.z:                                             ; preds = %bb.x
  %i.cj = and i32 %.sroa.8.2, 33554432
  %.not76 = icmp eq i32 %i.cj, 0
  br i1 %.not76, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.03.0.copyload = load ptr, ptr %i.ck, align 8, !tbaa !364
  %i.cl = invoke noundef signext i8 @_ZN10duckdb_fmt2v68internal18decimal_point_implIcEET_NS1_10locale_refE(ptr %.sroa.03.0.copyload)
          to label %_ZN10duckdb_fmt2v68internal13decimal_pointIcEET_NS1_10locale_refE.exit unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.ac:                                            ; preds = %bb.z
  %i.cn = and i32 %.sroa.8.2, 16711680
  %i.co = icmp eq i32 %i.cn, 3014656
  %. = select i1 %i.co, i8 44, i8 46
  br label %_ZN10duckdb_fmt2v68internal13decimal_pointIcEET_NS1_10locale_refE.exit

_ZN10duckdb_fmt2v68internal13decimal_pointIcEET_NS1_10locale_refE.exit: ; preds = %bb.aa, %bb.ac
  %.056 = phi i8 [ %., %bb.ac ], [ %i.cl, %bb.aa ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #46
  %i.cp = load ptr, ptr %i.bc, align 8, !tbaa !3938
  %i.cq = load i64, ptr %i.be, align 8, !tbaa !3941
  %i.cr = trunc i64 %i.cq to i32                  ; 2 uses
  %.sroa.014.0.insert.ext = zext i32 %spec.select82 to i64
  %.sroa.014.0.insert.insert = or disjoint i64 %.sroa.8.0.insert.shift22, %.sroa.014.0.insert.ext
  store ptr %i.cp, ptr %7, align 8, !tbaa !3942
  %i.cs = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %i.cr, ptr %i.cs, align 8, !tbaa !3946
  %i.ct = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 %i.ch, ptr %i.ct, align 4, !tbaa !3947
  %i.cu = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 %.sroa.014.0.insert.insert, ptr %i.cu, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 28
  %i.cv = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i8 %.056, ptr %i.cv, align 8, !tbaa !3948
  %i.cw = and i32 %.sroa.8.2, 255
  %i.cx = icmp eq i32 %i.cw, 0
  br i1 %i.cx, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %_ZN10duckdb_fmt2v68internal13decimal_pointIcEET_NS1_10locale_refE.exit
  %i.cy = icmp sgt i32 %spec.select82, 0
  %i.cz = select i1 %i.cy, i32 %spec.select82, i32 16
  %i.da = add nsw i32 %i.ch, %i.cr                ; 2 uses
  %i.db = icmp slt i32 %i.da, -3
  %.not.i = icmp sgt i32 %i.da, %i.cz
  %or.cond.i = or i1 %i.db, %.not.i
  br i1 %or.cond.i, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.dc = or i32 %.sroa.8.2, 402653185
  store i32 %i.dc, ptr %.sroa.4.0..sroa_idx.i, align 4
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %_ZN10duckdb_fmt2v68internal13decimal_pointIcEET_NS1_10locale_refE.exit
  %i.dd = invoke i64 @_ZNK10duckdb_fmt2v68internal12float_writerIcE8prettifyINS1_17counting_iteratorEEET_S6_(ptr noundef nonnull align 8 dereferenceable(33) %7, i64 0)
          to label %bb.ag unwind label %bb.al

bb.ag:                                            ; preds = %bb.af
  %i.de = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.df = and i32 %.sroa.8.2, 65280
  %.not10.i = icmp ne i32 %i.df, 0
  %i.dg = zext i1 %.not10.i to i64
  %i.dh = add i64 %i.dd, %i.dg
  store i64 %i.dh, ptr %i.de, align 8, !tbaa !3949
  invoke void @_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedINS1_12float_writerIcEEEEvRKNS0_18basic_format_specsIcEEOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(17) %2, ptr noundef nonnull align 8 dereferenceable(33) %7)
          to label %bb.ah unwind label %bb.al

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #46
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.v
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN10duckdb_fmt2v619basic_memory_bufferIcLm500ESaIcEEE, i64 16), ptr %5, align 8, !tbaa !413
  %i.di = load ptr, ptr %i.bc, align 8, !tbaa !3938 ; 2 uses
  %.not.i.i = icmp eq ptr %i.di, %i.bf
  br i1 %.not.i.i, label %_ZN10duckdb_fmt2v619basic_memory_bufferIcLm500ESaIcEED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @_ZdlPv(ptr noundef %i.di) #47, !inline_history !3950
  br label %_ZN10duckdb_fmt2v619basic_memory_bufferIcLm500ESaIcEED2Ev.exit

_ZN10duckdb_fmt2v619basic_memory_bufferIcLm500ESaIcEED2Ev.exit: ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #46
  br label %bb.ak

bb.ak:                                            ; preds = %_ZN10duckdb_fmt2v619basic_memory_bufferIcLm500ESaIcEED2Ev.exit, %bb.e
  ret void

bb.al:                                            ; preds = %bb.af, %bb.ag
  %i.dj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #46
  br label %bb.am

bb.am:                                            ; preds = %bb.y, %bb.al, %bb.ab, %bb.w, %bb.s
  %.pn80 = phi { ptr, i32 } [ %i.bv, %bb.w ], [ %i.bn, %bb.s ], [ %i.ci, %bb.y ], [ %i.cm, %bb.ab ], [ %i.dj, %bb.al ]
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN10duckdb_fmt2v619basic_memory_bufferIcLm500ESaIcEEE, i64 16), ptr %5, align 8, !tbaa !413
  %i.dk = load ptr, ptr %i.bc, align 8, !tbaa !3938 ; 2 uses
  %.not.i.i92 = icmp eq ptr %i.dk, %i.bf
  br i1 %.not.i.i92, label %_ZN10duckdb_fmt2v619basic_memory_bufferIcLm500ESaIcEED2Ev.exit93, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @_ZdlPv(ptr noundef %i.dk) #47, !inline_history !3950
  br label %_ZN10duckdb_fmt2v619basic_memory_bufferIcLm500ESaIcEED2Ev.exit93

_ZN10duckdb_fmt2v619basic_memory_bufferIcLm500ESaIcEED2Ev.exit93: ; preds = %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #46
  resume { ptr, i32 } %.pn80
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr i64 @_ZN10duckdb_fmt2v68internal21parse_float_type_specINS1_13error_handlerEcEENS1_11float_specsERKNS0_18basic_format_specsIT0_EEOT_(ptr noundef nonnull align 4 dereferenceable(17) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 4, !tbaa !3513
  %i.c = zext i8 %i.b to i32
  %i.d = shl nuw nsw i32 %i.c, 16                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.f = load i8, ptr %i.e, align 1               ; 2 uses
  %.lobit = lshr i8 %i.f, 7
  %i.g = zext nneg i8 %.lobit to i32
  %i.h = shl nuw nsw i32 %i.g, 29                 ; 3 uses
  %i.i = or disjoint i32 %i.h, %i.d               ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i8, ptr %i.j, align 4, !tbaa !3512  ; 2 uses
  switch i8 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit [
    i8 0, label %bb.b
    i8 71, label %bb.c
    i8 103, label %bb.q
    i8 69, label %bb.d
    i8 101, label %bb.e
    i8 70, label %bb.f
    i8 102, label %bb.g
    i8 65, label %bb.h
    i8 97, label %bb.i
    i8 110, label %bb.j
    i8 108, label %bb.j
    i8 76, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !3511
  %i.n = icmp ne i32 %i.m, 0
  %i.o = icmp slt i8 %i.f, 0
  %i.p = or i1 %i.o, %i.n
  %i.q = select i1 %i.p, i32 536870912, i32 0
  %i.r = or disjoint i32 %i.q, %i.d
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  %i.s = or disjoint i32 %i.i, 16777216
  br label %bb.q

bb.d:                                             ; preds = %bb.a
  %i.t = or disjoint i32 %i.i, 16777216
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.sroa.2.1 = phi i32 [ %i.t, %bb.d ], [ %i.i, %bb.a ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !3511
  %.not49 = icmp eq i32 %i.v, 0
  %i.w = select i1 %.not49, i32 %i.h, i32 536870912
  %i.x = and i32 %.sroa.2.1, -536870914
  %i.y = or disjoint i32 %i.x, %i.w
  %i.z = or disjoint i32 %i.y, 1
  br label %bb.q

bb.f:                                             ; preds = %bb.a
  %i.aa = or disjoint i32 %i.i, 16777216
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.a
  %.sroa.2.2 = phi i32 [ %i.aa, %bb.f ], [ %i.i, %bb.a ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !3511
  %.not = icmp eq i32 %i.ac, 0
  %i.ad = select i1 %.not, i32 %i.h, i32 536870912
  %i.ae = and i32 %.sroa.2.2, -536870915
  %i.af = or disjoint i32 %i.ae, %i.ad
  %i.ag = or disjoint i32 %i.af, 2
  br label %bb.q

bb.h:                                             ; preds = %bb.a
  %i.ah = or disjoint i32 %i.i, 16777216
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.a
  %.sroa.2.3 = phi i32 [ %i.ah, %bb.h ], [ %i.i, %bb.a ]
  %i.ai = or i32 %.sroa.2.3, 3
  br label %bb.q

bb.j:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.aj = or disjoint i32 %i.i, 33554432
  br label %bb.q

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #46
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.ak, ptr %4, align 8, !tbaa !151
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 1, i8 noundef signext %i.k)
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull @.str.396, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.403)
          to label %bb.l unwind label %bb.o

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN10duckdb_fmt2v68internal13error_handler8on_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull %2) #49
          to label %bb.m unwind label %bb.p

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

bb.o:                                             ; preds = %bb.k
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.p:                                             ; preds = %bb.l
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ao = load ptr, ptr %2, align 8, !tbaa !89    ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.p
  call void @_ZdlPv(ptr noundef %i.ao) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.o
  %.pn = phi { ptr, i32 } [ %i.am, %bb.o ], [ %i.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.an, %bb.p ] ; 2 uses
  %i.ar = load ptr, ptr %3, align 8, !tbaa !89    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.ar) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %i.al, %bb.n ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %i.au = load ptr, ptr %4, align 8, !tbaa !89    ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.ak
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56
  call void @_ZdlPv(ptr noundef %i.au) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  resume { ptr, i32 } %.pn.pn

bb.q:                                             ; preds = %bb.a, %bb.c, %bb.j, %bb.i, %bb.g, %bb.e, %bb.b
  %.sroa.2.4 = phi i32 [ %i.r, %bb.b ], [ %i.aj, %bb.j ], [ %i.z, %bb.e ], [ %i.ag, %bb.g ], [ %i.ai, %bb.i ], [ %i.s, %bb.c ], [ %i.i, %bb.a ]
  %.sroa.2.0.insert.ext = zext nneg i32 %.sroa.2.4 to i64
  %.sroa.2.0.insert.shift = shl nuw nsw i64 %.sroa.2.0.insert.ext, 32
  ret i64 %.sroa.2.0.insert.shift
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedINS1_16nonfinite_writerIcEEEEvRKNS0_18basic_format_specsIcEEOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(17) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !3506
  %i.b = load i32, ptr %2, align 8, !tbaa !3935
  %.not.not.i = icmp eq i32 %i.b, 0
  %i.c = select i1 %.not.not.i, i64 3, i64 4      ; 2 uses
  %i.d = zext i32 %i.a to i64                     ; 2 uses
  %.not46 = icmp samesign ult i64 %i.c, %i.d
  br i1 %.not46, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNK10duckdb_fmt2v68internal16nonfinite_writerIcEclIRSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %0)
  br label %bb.ag

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.f = load i8, ptr %i.e, align 2, !tbaa !153   ; 8 uses
  %i.g = sub nuw nsw i64 %i.d, %i.c               ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.i = load i8, ptr %i.h, align 1
  %i.j = and i8 %i.i, 15
  switch i8 %i.j, label %.lr.ph.i.i.i78 [
    i8 2, label %.lr.ph.i.i.i
    i8 3, label %bb.k
  ]

.lr.ph.i.i.i:                                     ; preds = %bb.c
  %.sroa.07.0.copyload = load ptr, ptr %0, align 8 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload, i64 8 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload, i64 16 ; 2 uses
  %.pre.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !2783
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i, %.lr.ph.i.i.i
  %i.m = phi ptr [ %.pre.i.i.i, %.lr.ph.i.i.i ], [ %i.af, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i ] ; 3 uses
  %.04.i.i.i = phi i64 [ %i.g, %.lr.ph.i.i.i ], [ %i.ag, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i ]
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !2788
  %.not.i.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 %i.f, ptr %i.m, align 1, !tbaa !153
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !2783
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1 ; 2 uses
  store ptr %i.p, ptr %i.k, align 8, !tbaa !2783
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %.sroa.07.0.copyload, align 8, !tbaa !2781 ; 4 uses
  %i.r = ptrtoint ptr %i.m to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s                       ; 7 uses
  %i.u = icmp eq i64 %i.t, 9223372036854775807
  br i1 %i.u, label %bb.g, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.271) #49
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.f
  %.sroa.speculated.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.t, i64 1)
  %i.v = add i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.t ; 2 uses
  %i.w = icmp ult i64 %i.v, %i.t
  %i.x = tail call i64 @llvm.umin.i64(i64 %i.v, i64 9223372036854775807)
  %i.y = select i1 %i.w, i64 9223372036854775807, i64 %i.x ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.y, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.z = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #48
  br label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i.i.i.i.i

_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i.i.i.i.i: ; preds = %bb.h, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.aa = phi ptr [ %i.z, %bb.h ], [ null, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i ] ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.t ; 2 uses
  store i8 %i.f, ptr %i.ab, align 1, !tbaa !153
  %i.ac = icmp sgt i64 %i.t, 0
  br i1 %i.ac, label %bb.i, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i

bb.i:                                             ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr align 1 %i.q, i64 %i.t, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i: ; preds = %bb.i, %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i17.i.i.i.i.i.i, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.q) #47
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.j, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i
  store ptr %i.aa, ptr %.sroa.07.0.copyload, align 8, !tbaa !2781
  store ptr %i.ad, ptr %i.k, align 8, !tbaa !2783
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.y
  store ptr %i.ae, ptr %i.l, align 8, !tbaa !2788
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i

_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i: ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i, %bb.e
  %i.af = phi ptr [ %i.p, %bb.e ], [ %i.ad, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i ]
  %i.ag = add i64 %.04.i.i.i, -1                  ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i.i, label %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmcET_S6_T0_RKT1_.exit, label %bb.d, !llvm.loop !3613

_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmcET_S6_T0_RKT1_.exit: ; preds = %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i
end_hunk_1
