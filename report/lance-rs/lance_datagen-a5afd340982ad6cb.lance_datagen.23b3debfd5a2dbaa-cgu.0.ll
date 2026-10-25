Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_datagen-a5afd340982ad6cb.lance_datagen.23b3debfd5a2dbaa-cgu.0?download=true
inline.NumInlined: 5943
inline.NumDeleted: 2255
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_RNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB5_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB14_5types10Date64TypeENCNvNtB5_5array20rand_date64_in_range0ENtB5_14ArrayGenerator8generateB7_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @_RNvMs3_NtCs56ggtDZRYpd_10arrow_data4dataNtB5_16ArrayDataBuilder5build(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(none) dereferenceable(136) %i.l, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(184) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.kf = load i64, ptr %i.l, align 8, !range !17, !noundef !10 ; 2 uses
  %i.kg = icmp eq i64 %i.kf, -1
  %i.kh = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.66, ptr noundef nonnull align 8 dereferenceable(32) %i.kh, i64 32, i1 false)
  br i1 %i.kg, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.66, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.66)
  br label %bb.az

bb.ay:                                            ; preds = %bb.aw
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %.sroa.8.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.8.0..sroa_idx8, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.518.0..sroa_idx, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  store i64 %i.kf, ptr %i.g, align 8
  %.sroa.66.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.66.0..sroa_idx7, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.66, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.66)
  %i.ki = call { ptr, ptr } @_RNvNtCs4ytUTZt2Gw9_11arrow_array5array10make_array(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(136) %i.g) ; 2 uses
  %i.kj = extractvalue { ptr, ptr } %i.ki, 0
  %i.kk = extractvalue { ptr, ptr } %i.ki, 1
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.kj, ptr %i.kl, align 8
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.kk, ptr %i.km, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.az

bb.az:                                            ; preds = %bb.ax, %bb.bc, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  ret void

bb.ba:                                            ; preds = %_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10Date64TypeENtB7_5Array9into_dataCs342JT7D9NXi_13lance_datagen.exit
  %i.kn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs56ggtDZRYpd_10arrow_data4data16ArrayDataBuilderECs342JT7D9NXi_13lance_datagen(ptr noalias noundef align 8 dereferenceable(184) %i.j) #38
          to label %common.resume unwind label %bb.bb

bb.bb:                                            ; preds = %bb.bd, %bb.ba
  %i.ko = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.bc:                                            ; preds = %bb.as
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.kb, ptr noundef nonnull align 8 dereferenceable(112) %i.f, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.kb, ptr %i.kp, align 8
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @570, ptr %i.kq, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.az

bb.bd:                                            ; preds = %bb.aq
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBI_5types10Date64TypeEECs342JT7D9NXi_13lance_datagen(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.n) #38
          to label %common.resume unwind label %bb.bb

bb.be:                                            ; preds = %bb.an
  %i.kr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ks = icmp eq i64 %.sroa.035.0157, 0
  br i1 %i.ks, label %common.resume, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.kt = shl nuw i64 %.sroa.035.0157, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.837.0155) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.837.0155, i64 noundef %i.kt, i64 noundef range(i64 1, -9223372036854775807) 8) #36
  br label %common.resume
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB5_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB14_5types10Date64TypeENCNvNtB5_5array20rand_date64_in_range0ENtB5_14ArrayGenerator9data_typeB7_(ptr noalias noundef readonly align 8 captures(ret: address, read_provenance) dereferenceable(80) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { i64, i64 } @_RNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB5_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB14_5types18DurationSecondTypeENCINvNtB5_5array4randB28_E0ENtB5_14ArrayGenerator18element_size_bytesB7_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #10 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !25, !noundef !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = insertvalue { i64, i64 } poison, i64 %i.a, 0
  %i.e = insertvalue { i64, i64 } %i.d, i64 %i.c, 1
  ret { i64, i64 } %i.e
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB5_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB14_5types18DurationSecondTypeENCINvNtB5_5array4randB28_E0ENtB5_14ArrayGenerator8generateB7_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %1, i64 noundef %2, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [136 x i8], align 8               ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.f = alloca [112 x i8], align 8               ; 6 uses
  %i.g = alloca [136 x i8], align 8               ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [96 x i8], align 8                ; 4 uses
  %i.j = alloca [184 x i8], align 8               ; 14 uses
  %i.k = alloca [184 x i8], align 8               ; 4 uses
  %i.l = alloca [136 x i8], align 8               ; 7 uses
  %.sroa.66 = alloca [32 x i8], align 8           ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [96 x i8], align 8                ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !noundef !10 ; 9 uses
  %i.q = icmp ugt i32 %i.p, 1
  br i1 %i.q, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = shl i64 %2, 3                            ; 4 uses
  %i.s = icmp ugt i64 %2, 2305843009213693951
  %.not.i.i.i.i = icmp ugt i64 %i.r, 9223372036854775800
  %or.cond.i.i.i.i = or i1 %i.s, %.not.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %bb.e, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.t = icmp eq i64 %i.r, 0
  br i1 %i.t, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !13660
  %i.u = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.r, i64 noundef range(i64 1, 9) 8) #36, !noalias !13660 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.e, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i

bb.e:                                             ; preds = %bb.d, %bb.b
  %.sroa.4.0.ph.i.i.i = phi i64 [ 8, %bb.d ], [ 0, %bb.b ]
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.r) #37, !noalias !13661
  unreachable

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i: ; preds = %bb.d, %bb.c
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.c ], [ %i.u, %bb.d ] ; 6 uses
  %.sroa.4.0.i.i.i = phi i64 [ 0, %bb.c ], [ %2, %bb.d ] ; 4 uses
  %i.w = icmp samesign ule i64 %2, %.sroa.4.0.i.i.i
  tail call void @llvm.assume(i1 %i.w)
  %.not69 = icmp eq i64 %2, 0
  br i1 %.not69, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types18DurationSecondTypeENCINvNtB2G_5array4randB4K_E0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.thread, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %.promoted = load i64, ptr %3, align 8, !alias.scope !13662, !noalias !13663 ; 2 uses
  %.promoted71 = load i64, ptr %i.x, align 8, !alias.scope !13662, !noalias !13663 ; 2 uses
  %.promoted73 = load i64, ptr %i.y, align 8, !alias.scope !13662, !noalias !13663 ; 2 uses
  %.promoted75 = load i64, ptr %i.z, align 8, !alias.scope !13662, !noalias !13663 ; 2 uses
  %xtraiter = and i64 %2, 1
  %i.aa = icmp eq i64 %2, 1
  br i1 %i.aa, label %.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.new

.lr.ph.i.i.i.i.i.i.i.new:                         ; preds = %.lr.ph.i.i.i.i.i.i.i
  %unroll_iter = and i64 %2, 2305843009213693950
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.i.i.i.i.i.i.new
  %i.ab = phi i64 [ %.promoted75, %.lr.ph.i.i.i.i.i.i.i.new ], [ %i.ba, %bb.f ]
  %i.ac = phi i64 [ %.promoted73, %.lr.ph.i.i.i.i.i.i.i.new ], [ %i.ay, %bb.f ] ; 3 uses
  %i.ad = phi i64 [ %.promoted71, %.lr.ph.i.i.i.i.i.i.i.new ], [ %i.bb, %bb.f ] ; 2 uses
  %i.ae = phi i64 [ %.promoted, %.lr.ph.i.i.i.i.i.i.i.new ], [ %i.az, %bb.f ] ; 4 uses
  %i.af = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.new ], [ %i.ar, %bb.f ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.new ], [ %niter.next.1, %bb.f ]
  %i.ag = add i64 %i.ad, %i.ae                    ; 2 uses
  %i.ah = tail call noundef i64 @llvm.fshl.i64(i64 %i.ag, i64 %i.ag, i64 23)
  %i.ai = add i64 %i.ah, %i.ae
  %i.aj = shl i64 %i.ac, 17
  %i.ak = xor i64 %i.ab, %i.ae                    ; 2 uses
  %i.al = xor i64 %i.ac, %i.ad                    ; 3 uses
  %i.am = xor i64 %i.ak, %i.ac                    ; 3 uses
  %i.an = xor i64 %i.al, %i.ae                    ; 4 uses
  %i.ao = xor i64 %i.ak, %i.aj
  %i.ap = tail call noundef i64 @llvm.fshl.i64(i64 %i.al, i64 %i.al, i64 45) ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.10.0.i.i.i, i64 %i.af
  store i64 %i.ai, ptr %i.aq, align 8, !noalias !13664
  %i.ar = add nuw nsw i64 %i.af, 2                ; 2 uses
  %i.as = add i64 %i.ap, %i.an                    ; 2 uses
  %i.at = tail call noundef i64 @llvm.fshl.i64(i64 %i.as, i64 %i.as, i64 23)
  %i.au = add i64 %i.at, %i.an
  %i.av = shl i64 %i.am, 17
  %i.aw = xor i64 %i.ao, %i.an                    ; 2 uses
  %i.ax = xor i64 %i.am, %i.ap                    ; 3 uses
  %i.ay = xor i64 %i.aw, %i.am                    ; 3 uses
  %i.az = xor i64 %i.ax, %i.an                    ; 3 uses
  %i.ba = xor i64 %i.aw, %i.av                    ; 3 uses
  %i.bb = tail call noundef i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 45) ; 3 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.10.0.i.i.i, i64 %i.af
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store i64 %i.au, ptr %i.bd, align 8, !noalias !13664
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types18DurationSecondTypeENCINvNtB2G_5array4randB4K_E0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.unr-lcssa, label %bb.f

bb.g:                                             ; preds = %bb.a
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bf = load i64, ptr %i.be, align 8, !noundef !10
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.bh = load i32, ptr %i.bg, align 4, !noundef !10 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13665
  %i.bi = icmp eq i64 %2, 0
  br i1 %i.bi, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters4take4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB1m_3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_B2a_INtB2a_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB4i_5types18DurationSecondTypeENCINvNtB2a_5array4randB5m_E0ENtB2a_14ArrayGenerator8generate0EEEE9from_iterB2c_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bj = add i64 %2, -1                          ; 3 uses
  %i.bk = icmp eq i32 %i.bh, 0
  br i1 %i.bk, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bl = load i64, ptr %3, align 8, !alias.scope !13666, !noalias !13667, !noundef !10 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !alias.scope !13666, !noalias !13667, !noundef !10 ; 2 uses
  %i.bo = add i64 %i.bn, %i.bl                    ; 2 uses
  %i.bp = tail call noundef i64 @llvm.fshl.i64(i64 %i.bo, i64 %i.bo, i64 23)
  %i.bq = add i64 %i.bp, %i.bl
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !alias.scope !13666, !noalias !13667, !noundef !10 ; 3 uses
  %i.bt = shl i64 %i.bs, 17
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !alias.scope !13666, !noalias !13667, !noundef !10
  %i.bw = xor i64 %i.bv, %i.bl                    ; 2 uses
  %i.bx = xor i64 %i.bs, %i.bn                    ; 3 uses
  %i.by = xor i64 %i.bw, %i.bs
  store i64 %i.by, ptr %i.br, align 8, !alias.scope !13666, !noalias !13667
  %i.bz = xor i64 %i.bx, %i.bl
  store i64 %i.bz, ptr %3, align 8, !alias.scope !13666, !noalias !13667
  %i.ca = xor i64 %i.bw, %i.bt
  store i64 %i.ca, ptr %i.bu, align 8, !alias.scope !13666, !noalias !13667
  %i.cb = tail call noundef i64 @llvm.fshl.i64(i64 %i.bx, i64 %i.bx, i64 45)
  store i64 %i.cb, ptr %i.bm, align 8, !alias.scope !13666, !noalias !13667
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.sroa.542.0 = phi i64 [ 1, %bb.i ], [ 0, %bb.h ] ; 2 uses
  %.sroa.8.0.copyload.in.i.i = phi i32 [ %i.p, %bb.i ], [ %i.bh, %bb.h ]
  %.sroa.6.0.copyload.i.i = phi i64 [ %i.bq, %bb.i ], [ %i.bf, %bb.h ] ; 2 uses
  %i.cc = icmp eq i64 %i.bj, 0                    ; 2 uses
  br i1 %i.cc, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB6_3map3MapINtNtNtBa_3ops5range5RangeyENCNvXsa_B10_INtB10_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB36_5types18DurationSecondTypeENCINvNtB10_5array4randB4a_E0ENtB10_14ArrayGenerator8generate0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB12_.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %spec.select.i.i.i.i.i.i68 = sub nuw i64 %2, %.sroa.542.0
  %i.cd = zext i32 %i.p to i64
  %i.ce = mul i64 %spec.select.i.i.i.i.i.i68, %i.cd
  %.sroa.0.0.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.bj, i64 %i.ce)
  %i.cf = tail call i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i.i.i, i64 3)
  %i.cg = add nuw i64 %i.cf, 1
  br label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB6_3map3MapINtNtNtBa_3ops5range5RangeyENCNvXsa_B10_INtB10_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB36_5types18DurationSecondTypeENCINvNtB10_5array4randB4a_E0ENtB10_14ArrayGenerator8generate0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB12_.exit.i.i

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB6_3map3MapINtNtNtBa_3ops5range5RangeyENCNvXsa_B10_INtB10_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB36_5types18DurationSecondTypeENCINvNtB10_5array4randB4a_E0ENtB10_14ArrayGenerator8generate0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB12_.exit.i.i: ; preds = %bb.k, %bb.j
  %.sroa.0.0.i.sink.i.i.i = phi i64 [ %i.cg, %bb.k ], [ 4, %bb.j ] ; 4 uses
  %i.ch = shl i64 %.sroa.0.0.i.sink.i.i.i, 3      ; 3 uses
  %i.ci = icmp ugt i64 %.sroa.0.0.i.sink.i.i.i, 2305843009213693951
  %.not.i.i.i.i26 = icmp ugt i64 %i.ch, 9223372036854775800
  %or.cond.i.i.i.i27 = or i1 %i.ci, %.not.i.i.i.i26
  br i1 %or.cond.i.i.i.i27, label %bb.m, label %bb.l, !prof !7

bb.l:                                             ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB6_3map3MapINtNtNtBa_3ops5range5RangeyENCNvXsa_B10_INtB10_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB36_5types18DurationSecondTypeENCINvNtB10_5array4randB4a_E0ENtB10_14ArrayGenerator8generate0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB12_.exit.i.i
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !13668
  %i.cj = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.ch, i64 noundef range(i64 1, 9) 8) #36, !noalias !13668 ; 5 uses
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %bb.m, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs342JT7D9NXi_13lance_datagen.exit.i.i

bb.m:                                             ; preds = %bb.l, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB6_3map3MapINtNtNtBa_3ops5range5RangeyENCNvXsa_B10_INtB10_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB36_5types18DurationSecondTypeENCINvNtB10_5array4randB4a_E0ENtB10_14ArrayGenerator8generate0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB12_.exit.i.i
  %.sroa.4.0.ph.i.i.i31 = phi i64 [ 8, %bb.l ], [ 0, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB6_3map3MapINtNtNtBa_3ops5range5RangeyENCNvXsa_B10_INtB10_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB36_5types18DurationSecondTypeENCINvNtB10_5array4randB4a_E0ENtB10_14ArrayGenerator8generate0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB12_.exit.i.i ]
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i31, i64 %i.ch) #37, !noalias !13665
  unreachable

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs342JT7D9NXi_13lance_datagen.exit.i.i: ; preds = %bb.l
  store i64 %.sroa.6.0.copyload.i.i, ptr %i.cj, align 8, !noalias !13665
  store i64 %.sroa.0.0.i.sink.i.i.i, ptr %i.a, align 8, !noalias !13665
  %.sroa.4.0..sroa_idx.i.i28 = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  store ptr %i.cj, ptr %.sroa.4.0..sroa_idx.i.i28, align 8, !noalias !13665
  %.sroa.6.0..sroa_idx.i.i29 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i29, align 8, !noalias !13665
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13669)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13670)
  br i1 %i.cc, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters4take4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB1m_3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_B2a_INtB2a_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB4i_5types18DurationSecondTypeENCINvNtB2a_5array4randB5m_E0ENtB2a_14ArrayGenerator8generate0EEEE9from_iterB2c_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs342JT7D9NXi_13lance_datagen.exit.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.co = zext i32 %i.p to i64
  br label %bb.n

bb.n:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i30, %.lr.ph.i.i.i.i
  %i.cp = phi ptr [ %i.cj, %.lr.ph.i.i.i.i ], [ %i.dt, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i30 ]
  %i.cq = phi i64 [ 1, %.lr.ph.i.i.i.i ], [ %i.dv, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i30 ] ; 6 uses
  %i.cr = phi i64 [ %.sroa.542.0, %.lr.ph.i.i.i.i ], [ %i.dm, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i30 ] ; 3 uses
  %.pre.i.i12.i.i.i.i = phi i64 [ %.sroa.6.0.copyload.i.i, %.lr.ph.i.i.i.i ], [ %.pre.i.i11.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i30 ]
  %.in.i.i = phi i32 [ %.sroa.8.0.copyload.in.i.i, %.lr.ph.i.i.i.i ], [ %.in.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i30 ]
  %i.cs = phi i64 [ %i.bj, %.lr.ph.i.i.i.i ], [ %i.cu, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i30 ]
  %i.ct = add i32 %.in.i.i, -1                    ; 2 uses
  %i.cu = add i64 %i.cs, -1                       ; 4 uses
  %i.cv = icmp eq i32 %i.ct, 0
  br i1 %i.cv, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.cw = icmp ult i64 %i.cr, %2
  br i1 %i.cw, label %bb.p, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecxEINtB2_10SpecExtendxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters4take4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB1h_3map3MapINtNtNtB1l_3ops5range5RangeyENCNvXsa_B25_INtB25_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB4d_5types18DurationSecondTypeENCINvNtB25_5array4randB5h_E0ENtB25_14ArrayGenerator8generate0EEEE11spec_extendB27_.exit.i.i.loopexit

bb.p:                                             ; preds = %bb.o
  %i.cx = add nuw i64 %i.cr, 1
  %i.cy = load i64, ptr %3, align 8, !alias.scope !13671, !noalias !13672, !noundef !10 ; 4 uses
  %i.cz = load i64, ptr %i.cl, align 8, !alias.scope !13671, !noalias !13672, !noundef !10 ; 2 uses
  %i.da = add i64 %i.cz, %i.cy                    ; 2 uses
  %i.db = tail call noundef i64 @llvm.fshl.i64(i64 %i.da, i64 %i.da, i64 23)
  %i.dc = add i64 %i.db, %i.cy
  %i.dd = load i64, ptr %i.cm, align 8, !alias.scope !13671, !noalias !13672, !noundef !10 ; 3 uses
  %i.de = shl i64 %i.dd, 17
  %i.df = load i64, ptr %i.cn, align 8, !alias.scope !13671, !noalias !13672, !noundef !10
  %i.dg = xor i64 %i.df, %i.cy                    ; 2 uses
  %i.dh = xor i64 %i.dd, %i.cz                    ; 3 uses
  %i.di = xor i64 %i.dg, %i.dd
  store i64 %i.di, ptr %i.cm, align 8, !alias.scope !13671, !noalias !13672
  %i.dj = xor i64 %i.dh, %i.cy
  store i64 %i.dj, ptr %3, align 8, !alias.scope !13671, !noalias !13672
  %i.dk = xor i64 %i.dg, %i.de
  store i64 %i.dk, ptr %i.cn, align 8, !alias.scope !13671, !noalias !13672
  %i.dl = tail call noundef i64 @llvm.fshl.i64(i64 %i.dh, i64 %i.dh, i64 45)
  store i64 %i.dl, ptr %i.cl, align 8, !alias.scope !13671, !noalias !13672
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n
  %i.dm = phi i64 [ %i.cx, %bb.p ], [ %i.cr, %bb.n ] ; 2 uses
  %.pre.i.i11.i.i.i.i = phi i64 [ %i.dc, %bb.p ], [ %.pre.i.i12.i.i.i.i, %bb.n ] ; 2 uses
  %.in.i.i.i.i = phi i32 [ %i.p, %bb.p ], [ %i.ct, %bb.n ]
  %i.dn = icmp samesign ult i64 %i.cq, 1152921504606846976
  tail call void @llvm.assume(i1 %i.dn)
  %i.do = load i64, ptr %i.a, align 8, !range !12, !alias.scope !13673, !noalias !13665, !noundef !10
  %i.dp = icmp eq i64 %i.cq, %i.do
  br i1 %i.dp, label %bb.r, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i30

bb.r:                                             ; preds = %bb.q
  %i.dq = icmp eq i64 %i.cu, 0
  br i1 %i.dq, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB6_3map3MapINtNtNtBa_3ops5range5RangeyENCNvXsa_B10_INtB10_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB36_5types18DurationSecondTypeENCINvNtB10_5array4randB4a_E0ENtB10_14ArrayGenerator8generate0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB12_.exit.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %spec.select.i.i.i.i.i.i.i.i = tail call i64 @llvm.usub.sat.i64(i64 %2, i64 %i.dm)
  %i.dr = mul i64 %spec.select.i.i.i.i.i.i.i.i, %i.co
  %.sroa.0.0.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.cu, i64 %i.dr)
  %i.ds = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.0.0.i.i.i.i.i.i, i64 1)
  br label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB6_3map3MapINtNtNtBa_3ops5range5RangeyENCNvXsa_B10_INtB10_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB36_5types18DurationSecondTypeENCINvNtB10_5array4randB4a_E0ENtB10_14ArrayGenerator8generate0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB12_.exit.i.i.i.i

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB6_3map3MapINtNtNtBa_3ops5range5RangeyENCNvXsa_B10_INtB10_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB36_5types18DurationSecondTypeENCINvNtB10_5array4randB4a_E0ENtB10_14ArrayGenerator8generate0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB12_.exit.i.i.i.i: ; preds = %bb.s, %bb.r
  %.sroa.0.0.i.sink.i.i.i.i.i = phi i64 [ %i.ds, %bb.s ], [ 1, %bb.r ]
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs342JT7D9NXi_13lance_datagen(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.cq, i64 noundef %.sroa.0.0.i.sink.i.i.i.i.i, i64 noundef 8, i64 noundef 8)
          to label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB6_3map3MapINtNtNtBa_3ops5range5RangeyENCNvXsa_B10_INtB10_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB36_5types18DurationSecondTypeENCINvNtB10_5array4randB4a_E0ENtB10_14ArrayGenerator8generate0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB12_.exit.i.i._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i_crit_edge.i.i unwind label %bb.t, !noalias !13665

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB6_3map3MapINtNtNtBa_3ops5range5RangeyENCNvXsa_B10_INtB10_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB36_5types18DurationSecondTypeENCINvNtB10_5array4randB4a_E0ENtB10_14ArrayGenerator8generate0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB12_.exit.i.i._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i_crit_edge.i.i: ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB6_3map3MapINtNtNtBa_3ops5range5RangeyENCNvXsa_B10_INtB10_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB36_5types18DurationSecondTypeENCINvNtB10_5array4randB4a_E0ENtB10_14ArrayGenerator8generate0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB12_.exit.i.i.i.i
  %.pre.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i28, align 8, !alias.scope !13673, !noalias !13665
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i30

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i30: ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB6_3map3MapINtNtNtBa_3ops5range5RangeyENCNvXsa_B10_INtB10_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB36_5types18DurationSecondTypeENCINvNtB10_5array4randB4a_E0ENtB10_14ArrayGenerator8generate0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB12_.exit.i.i._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i_crit_edge.i.i, %bb.q
  %i.dt = phi ptr [ %.pre.i.i, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB6_3map3MapINtNtNtBa_3ops5range5RangeyENCNvXsa_B10_INtB10_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB36_5types18DurationSecondTypeENCINvNtB10_5array4randB4a_E0ENtB10_14ArrayGenerator8generate0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB12_.exit.i.i._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i_crit_edge.i.i ], [ %i.cp, %bb.q ] ; 2 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.cq
  store i64 %.pre.i.i11.i.i.i.i, ptr %i.du, align 8, !noalias !13674
  %i.dv = add nuw nsw i64 %i.cq, 1                ; 3 uses
  store i64 %i.dv, ptr %.sroa.6.0..sroa_idx.i.i29, align 8, !alias.scope !13673, !noalias !13665
  %i.dw = icmp eq i64 %i.cu, 0
  br i1 %i.dw, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecxEINtB2_10SpecExtendxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters4take4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB1h_3map3MapINtNtNtB1l_3ops5range5RangeyENCNvXsa_B25_INtB25_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB4d_5types18DurationSecondTypeENCINvNtB25_5array4randB5h_E0ENtB25_14ArrayGenerator8generate0EEEE11spec_extendB27_.exit.i.i.loopexit, label %bb.n

bb.t:                                             ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB6_3map3MapINtNtNtBa_3ops5range5RangeyENCNvXsa_B10_INtB10_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB36_5types18DurationSecondTypeENCINvNtB10_5array4randB4a_E0ENtB10_14ArrayGenerator8generate0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB12_.exit.i.i.i.i
  %i.dx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i.i = load i64, ptr %i.a, align 8, !noalias !13665 ; 2 uses
  %i.dy = icmp eq i64 %.val.i.i, 0
  br i1 %i.dy, label %common.resume, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.val7.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i28, align 8, !noalias !13665, !nonnull !10, !noundef !10
  %i.dz = shl nuw i64 %.val.i.i, 3
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i.i, i64 noundef %i.dz, i64 noundef range(i64 1, -9223372036854775807) 8) #36, !noalias !13665
  br label %common.resume

_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecxEINtB2_10SpecExtendxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters4take4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB1h_3map3MapINtNtNtB1l_3ops5range5RangeyENCNvXsa_B25_INtB25_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB4d_5types18DurationSecondTypeENCINvNtB25_5array4randB5h_E0ENtB25_14ArrayGenerator8generate0EEEE11spec_extendB27_.exit.i.i.loopexit: ; preds = %bb.o, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i30
  %.sroa.12.0.copyload4083 = phi i64 [ %i.cq, %bb.o ], [ %i.dv, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i30 ]
  %.sroa.034.0.copyload35.pre = load i64, ptr %i.a, align 8, !noalias !13675
  %.sroa.836.0.copyload38.pre = load ptr, ptr %.sroa.4.0..sroa_idx.i.i28, align 8, !noalias !13675
  %.pre.pre.pre = load i32, ptr %i.o, align 8
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters4take4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB1m_3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_B2a_INtB2a_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB4i_5types18DurationSecondTypeENCINvNtB2a_5array4randB5m_E0ENtB2a_14ArrayGenerator8generate0EEEE9from_iterB2c_.exit

common.resume:                                    ; preds = %bb.an, %bb.ao, %bb.am, %bb.ad, %bb.aj, %bb.t, %bb.u
  %common.resume.op = phi { ptr, i32 } [ %i.dx, %bb.t ], [ %i.dx, %bb.u ], [ %i.gh, %bb.ao ], [ %i.gd, %bb.aj ], [ %i.gh, %bb.an ], [ %i.ft, %bb.ad ], [ %lpad.thr_comm.split-lp, %bb.am ]
  resume { ptr, i32 } %common.resume.op

_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters4take4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB1m_3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_B2a_INtB2a_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB4i_5types18DurationSecondTypeENCINvNtB2a_5array4randB5m_E0ENtB2a_14ArrayGenerator8generate0EEEE9from_iterB2c_.exit: ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs342JT7D9NXi_13lance_datagen.exit.i.i, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecxEINtB2_10SpecExtendxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters4take4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB1h_3map3MapINtNtNtB1l_3ops5range5RangeyENCNvXsa_B25_INtB25_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB4d_5types18DurationSecondTypeENCINvNtB25_5array4randB5h_E0ENtB25_14ArrayGenerator8generate0EEEE11spec_extendB27_.exit.i.i.loopexit, %bb.g
  %.pre = phi i32 [ %i.p, %bb.g ], [ %.pre.pre.pre, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecxEINtB2_10SpecExtendxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters4take4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB1h_3map3MapINtNtNtB1l_3ops5range5RangeyENCNvXsa_B25_INtB25_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB4d_5types18DurationSecondTypeENCINvNtB25_5array4randB5h_E0ENtB25_14ArrayGenerator8generate0EEEE11spec_extendB27_.exit.i.i.loopexit ], [ %i.p, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs342JT7D9NXi_13lance_datagen.exit.i.i ]
  %.sroa.12.1 = phi i64 [ 0, %bb.g ], [ %.sroa.12.0.copyload4083, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecxEINtB2_10SpecExtendxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters4take4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB1h_3map3MapINtNtNtB1l_3ops5range5RangeyENCNvXsa_B25_INtB25_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB4d_5types18DurationSecondTypeENCINvNtB25_5array4randB5h_E0ENtB25_14ArrayGenerator8generate0EEEE11spec_extendB27_.exit.i.i.loopexit ], [ 1, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs342JT7D9NXi_13lance_datagen.exit.i.i ]
  %.sroa.836.1 = phi ptr [ inttoptr (i64 8 to ptr), %bb.g ], [ %.sroa.836.0.copyload38.pre, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecxEINtB2_10SpecExtendxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters4take4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB1h_3map3MapINtNtNtB1l_3ops5range5RangeyENCNvXsa_B25_INtB25_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB4d_5types18DurationSecondTypeENCINvNtB25_5array4randB5h_E0ENtB25_14ArrayGenerator8generate0EEEE11spec_extendB27_.exit.i.i.loopexit ], [ %i.cj, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs342JT7D9NXi_13lance_datagen.exit.i.i ]
  %.sroa.034.1 = phi i64 [ 0, %bb.g ], [ %.sroa.034.0.copyload35.pre, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecxEINtB2_10SpecExtendxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters4take4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB1h_3map3MapINtNtNtB1l_3ops5range5RangeyENCNvXsa_B25_INtB25_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB4d_5types18DurationSecondTypeENCINvNtB25_5array4randB5h_E0ENtB25_14ArrayGenerator8generate0EEEE11spec_extendB27_.exit.i.i.loopexit ], [ %.sroa.0.0.i.sink.i.i.i, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs342JT7D9NXi_13lance_datagen.exit.i.i ]
end_hunk_0
begin_hunk_1_@_RNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB5_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB14_5types18DurationSecondTypeENCINvNtB5_5array4randB28_E0ENtB5_14ArrayGenerator8generateB7_:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.66, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.66)
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %.sroa.8.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.8.0..sroa_idx8, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.518.0..sroa_idx, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  store i64 %i.fv, ptr %i.g, align 8
  %.sroa.66.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.66.0..sroa_idx7, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.66, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.66)
  %i.fy = call { ptr, ptr } @_RNvNtCs4ytUTZt2Gw9_11arrow_array5array10make_array(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(136) %i.g) ; 2 uses
  %i.fz = extractvalue { ptr, ptr } %i.fy, 0
  %i.ga = extractvalue { ptr, ptr } %i.fy, 1
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fz, ptr %i.gb, align 8
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ga, ptr %i.gc, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.al, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  ret void

bb.aj:                                            ; preds = %_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types18DurationSecondTypeENtB7_5Array9into_dataCs342JT7D9NXi_13lance_datagen.exit
  %i.gd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs56ggtDZRYpd_10arrow_data4data16ArrayDataBuilderECs342JT7D9NXi_13lance_datagen(ptr noalias noundef align 8 dereferenceable(184) %i.j) #38
          to label %common.resume unwind label %bb.ak

bb.ak:                                            ; preds = %bb.am, %bb.aj
  %i.ge = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.al:                                            ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.fr, ptr noundef nonnull align 8 dereferenceable(112) %i.f, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fr, ptr %i.gf, align 8
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @590, ptr %i.gg, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.ai

bb.am:                                            ; preds = %bb.z
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBI_5types18DurationSecondTypeEECs342JT7D9NXi_13lance_datagen(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.n) #38
          to label %common.resume unwind label %bb.ak

bb.an:                                            ; preds = %bb.w
  %i.gh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gi = icmp eq i64 %.sroa.034.0110, 0
  br i1 %i.gi, label %common.resume, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gj = shl nuw i64 %.sroa.034.0110, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.836.0108) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.836.0108, i64 noundef %i.gj, i64 noundef range(i64 1, -9223372036854775807) 8) #36
  br label %common.resume
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB5_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB14_5types18DurationSecondTypeENCINvNtB5_5array4randB28_E0ENtB5_14ArrayGenerator9data_typeB7_(ptr noalias noundef readonly align 8 captures(ret: address, read_provenance) dereferenceable(56) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { i64, i64 } @_RNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB5_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB14_5types19TimestampSecondTypeENCNvNtB5_5array23rand_timestamp_in_range0ENtB5_14ArrayGenerator18element_size_bytesB7_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(80) %0) unnamed_addr #10 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !25, !noundef !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = insertvalue { i64, i64 } poison, i64 %i.a, 0
  %i.e = insertvalue { i64, i64 } %i.d, i64 %i.c, 1
  ret { i64, i64 } %i.e
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB5_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB14_5types19TimestampSecondTypeENCNvNtB5_5array23rand_timestamp_in_range0ENtB5_14ArrayGenerator8generateB7_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %1, i64 noundef %2, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [136 x i8], align 8               ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.f = alloca [112 x i8], align 8               ; 6 uses
  %i.g = alloca [136 x i8], align 8               ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [96 x i8], align 8                ; 4 uses
  %i.j = alloca [184 x i8], align 8               ; 14 uses
  %i.k = alloca [184 x i8], align 8               ; 4 uses
  %i.l = alloca [136 x i8], align 8               ; 7 uses
  %.sroa.66 = alloca [32 x i8], align 8           ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [96 x i8], align 8                ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !noundef !10 ; 13 uses
  %i.r = icmp ugt i32 %i.q, 1
  br i1 %i.r, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = shl i64 %2, 3                            ; 4 uses
  %i.t = icmp ugt i64 %2, 2305843009213693951
  %.not.i.i.i.i = icmp ugt i64 %i.s, 9223372036854775800
  %or.cond.i.i.i.i = or i1 %i.t, %.not.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %bb.e, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.u = icmp eq i64 %i.s, 0
  br i1 %i.u, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !13827
  %i.v = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.s, i64 noundef range(i64 1, 9) 8) #36, !noalias !13827 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.e, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i

bb.e:                                             ; preds = %bb.d, %bb.b
  %.sroa.4.0.ph.i.i.i = phi i64 [ 8, %bb.d ], [ 0, %bb.b ]
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.s) #37, !noalias !13828
  unreachable

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i: ; preds = %bb.d, %bb.c
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.c ], [ %i.v, %bb.d ] ; 8 uses
  %.sroa.4.0.i.i.i = phi i64 [ 0, %bb.c ], [ %2, %bb.d ] ; 5 uses
  %i.x = icmp samesign ule i64 %2, %.sroa.4.0.i.i.i
  tail call void @llvm.assume(i1 %i.x)
  %.not67 = icmp eq i64 %2, 0
  br i1 %.not67, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types19TimestampSecondTypeENCNvNtB2G_5array23rand_timestamp_in_range0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.thread, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.ac = load i64, ptr %i.y, align 8, !alias.scope !13829, !noalias !13830, !noundef !10 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  %i.ae = zext i64 %i.ac to i128
  br i1 %i.ad, label %.lr.ph.i.i.i.i.i.i.i.split.us, label %.lr.ph.i.i.i.i.i.i.i.split

.lr.ph.i.i.i.i.i.i.i.split.us:                    ; preds = %.lr.ph.i.i.i.i.i.i.i
  %.promoted95 = load i64, ptr %3, align 8, !alias.scope !13831, !noalias !13830 ; 2 uses
  %.promoted97 = load i64, ptr %i.z, align 8, !alias.scope !13831, !noalias !13830 ; 2 uses
  %.promoted99 = load i64, ptr %i.aa, align 8, !alias.scope !13831, !noalias !13830 ; 2 uses
  %.promoted101 = load i64, ptr %i.ab, align 8, !alias.scope !13831, !noalias !13830 ; 2 uses
  %xtraiter = and i64 %2, 1
  %i.af = icmp eq i64 %2, 1
  br i1 %i.af, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types19TimestampSecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5Z_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.split.us.new

.lr.ph.i.i.i.i.i.i.i.split.us.new:                ; preds = %.lr.ph.i.i.i.i.i.i.i.split.us
  %unroll_iter = and i64 %2, 2305843009213693950
  br label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types19TimestampSecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5Z_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types19TimestampSecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5Z_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us: ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types19TimestampSecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5Z_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us, %.lr.ph.i.i.i.i.i.i.i.split.us.new
  %i.ag = phi i64 [ %.promoted101, %.lr.ph.i.i.i.i.i.i.i.split.us.new ], [ %i.bf, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types19TimestampSecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5Z_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us ]
  %i.ah = phi i64 [ %.promoted99, %.lr.ph.i.i.i.i.i.i.i.split.us.new ], [ %i.bd, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types19TimestampSecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5Z_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us ] ; 3 uses
  %i.ai = phi i64 [ %.promoted97, %.lr.ph.i.i.i.i.i.i.i.split.us.new ], [ %i.bg, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types19TimestampSecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5Z_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us ] ; 2 uses
  %i.aj = phi i64 [ %.promoted95, %.lr.ph.i.i.i.i.i.i.i.split.us.new ], [ %i.be, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types19TimestampSecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5Z_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us ] ; 4 uses
  %i.ak = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.split.us.new ], [ %i.aw, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types19TimestampSecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5Z_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.split.us.new ], [ %niter.next.1, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types19TimestampSecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5Z_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13832)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13833)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13834)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13835)
  %i.al = add i64 %i.ai, %i.aj                    ; 2 uses
  %i.am = tail call noundef i64 @llvm.fshl.i64(i64 %i.al, i64 %i.al, i64 23)
  %i.an = add i64 %i.am, %i.aj
  %i.ao = shl i64 %i.ah, 17
  %i.ap = xor i64 %i.ag, %i.aj                    ; 2 uses
  %i.aq = xor i64 %i.ah, %i.ai                    ; 3 uses
  %i.ar = xor i64 %i.ap, %i.ah                    ; 3 uses
  %i.as = xor i64 %i.aq, %i.aj                    ; 4 uses
  %i.at = xor i64 %i.ap, %i.ao
  %i.au = tail call noundef i64 @llvm.fshl.i64(i64 %i.aq, i64 %i.aq, i64 45) ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %.sroa.10.0.i.i.i, i64 %i.ak
  store i64 %i.an, ptr %i.av, align 8, !noalias !13836
  %i.aw = add nuw nsw i64 %i.ak, 2                ; 2 uses
  %i.ax = add i64 %i.au, %i.as                    ; 2 uses
  %i.ay = tail call noundef i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 23)
  %i.az = add i64 %i.ay, %i.as
  %i.ba = shl i64 %i.ar, 17
  %i.bb = xor i64 %i.at, %i.as                    ; 2 uses
  %i.bc = xor i64 %i.ar, %i.au                    ; 3 uses
  %i.bd = xor i64 %i.bb, %i.ar                    ; 3 uses
  %i.be = xor i64 %i.bc, %i.as                    ; 3 uses
  %i.bf = xor i64 %i.bb, %i.ba                    ; 3 uses
  %i.bg = tail call noundef i64 @llvm.fshl.i64(i64 %i.bc, i64 %i.bc, i64 45) ; 3 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.10.0.i.i.i, i64 %i.ak
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store i64 %i.az, ptr %i.bi, align 8, !noalias !13836
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types19TimestampSecondTypeENCNvNtB2G_5array23rand_timestamp_in_range0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us.unr-lcssa, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types19TimestampSecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5Z_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us

_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types19TimestampSecondTypeENCNvNtB2G_5array23rand_timestamp_in_range0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us.unr-lcssa: ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types19TimestampSecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5Z_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types19TimestampSecondTypeENCNvNtB2G_5array23rand_timestamp_in_range0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types19TimestampSecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5Z_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us.epil.preheader

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types19TimestampSecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5Z_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us.epil.preheader: ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types19TimestampSecondTypeENCNvNtB2G_5array23rand_timestamp_in_range0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.split.us
  %.epil.init = phi i64 [ %.promoted101, %.lr.ph.i.i.i.i.i.i.i.split.us ], [ %i.bf, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types19TimestampSecondTypeENCNvNtB2G_5array23rand_timestamp_in_range0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us.unr-lcssa ]
  %.epil.init249 = phi i64 [ %.promoted99, %.lr.ph.i.i.i.i.i.i.i.split.us ], [ %i.bd, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types19TimestampSecondTypeENCNvNtB2G_5array23rand_timestamp_in_range0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us.unr-lcssa ] ; 3 uses
  %.epil.init251 = phi i64 [ %.promoted97, %.lr.ph.i.i.i.i.i.i.i.split.us ], [ %i.bg, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types19TimestampSecondTypeENCNvNtB2G_5array23rand_timestamp_in_range0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us.unr-lcssa ] ; 2 uses
  %.epil.init253 = phi i64 [ %.promoted95, %.lr.ph.i.i.i.i.i.i.i.split.us ], [ %i.be, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types19TimestampSecondTypeENCNvNtB2G_5array23rand_timestamp_in_range0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us.unr-lcssa ] ; 4 uses
  %.epil.init255 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.split.us ], [ %i.aw, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types19TimestampSecondTypeENCNvNtB2G_5array23rand_timestamp_in_range0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us.unr-lcssa ]
  %lcmp.mod260 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod260)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13832)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13833)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13834)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13835)
  %i.bj = add i64 %.epil.init251, %.epil.init253  ; 2 uses
  %i.bk = tail call noundef i64 @llvm.fshl.i64(i64 %i.bj, i64 %i.bj, i64 23)
  %i.bl = add i64 %i.bk, %.epil.init253
  %i.bm = shl i64 %.epil.init249, 17
  %i.bn = xor i64 %.epil.init, %.epil.init253     ; 2 uses
  %i.bo = xor i64 %.epil.init249, %.epil.init251  ; 3 uses
  %i.bp = xor i64 %i.bn, %.epil.init249
  %i.bq = xor i64 %i.bo, %.epil.init253
  %i.br = xor i64 %i.bn, %i.bm
  %i.bs = tail call noundef i64 @llvm.fshl.i64(i64 %i.bo, i64 %i.bo, i64 45)
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.10.0.i.i.i, i64 %.epil.init255
  store i64 %i.bl, ptr %i.bt, align 8, !noalias !13836
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types19TimestampSecondTypeENCNvNtB2G_5array23rand_timestamp_in_range0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us

_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types19TimestampSecondTypeENCNvNtB2G_5array23rand_timestamp_in_range0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us: ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types19TimestampSecondTypeENCNvNtB2G_5array23rand_timestamp_in_range0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us.unr-lcssa, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types19TimestampSecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5Z_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us.epil.preheader
  %.lcssa242 = phi i64 [ %i.bd, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types19TimestampSecondTypeENCNvNtB2G_5array23rand_timestamp_in_range0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us.unr-lcssa ], [ %i.bp, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types19TimestampSecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5Z_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us.epil.preheader ]
  %.lcssa241 = phi i64 [ %i.be, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types19TimestampSecondTypeENCNvNtB2G_5array23rand_timestamp_in_range0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us.unr-lcssa ], [ %i.bq, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types19TimestampSecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5Z_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us.epil.preheader ]
  %.lcssa240 = phi i64 [ %i.bf, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types19TimestampSecondTypeENCNvNtB2G_5array23rand_timestamp_in_range0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us.unr-lcssa ], [ %i.br, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types19TimestampSecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5Z_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us.epil.preheader ]
  %.lcssa239 = phi i64 [ %i.bg, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types19TimestampSecondTypeENCNvNtB2G_5array23rand_timestamp_in_range0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us.unr-lcssa ], [ %i.bs, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types19TimestampSecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5Z_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us.epil.preheader ]
  store i64 %.lcssa241, ptr %3, align 8, !alias.scope !13831, !noalias !13830
  store i64 %.lcssa239, ptr %i.z, align 8, !alias.scope !13831, !noalias !13830
  store i64 %.lcssa242, ptr %i.aa, align 8, !alias.scope !13831, !noalias !13830
  store i64 %.lcssa240, ptr %i.ab, align 8, !alias.scope !13831, !noalias !13830
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types19TimestampSecondTypeENCNvNtB2G_5array23rand_timestamp_in_range0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit

.lr.ph.i.i.i.i.i.i.i.split:                       ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bv = load i64, ptr %i.bu, align 8, !alias.scope !13829, !noalias !13830, !noundef !10
  %i.bw = load i64, ptr %i.o, align 8, !alias.scope !13829, !noalias !13830, !noundef !10
  %.promoted = load i64, ptr %3, align 8, !alias.scope !13837, !noalias !13830
  %.promoted89 = load i64, ptr %i.z, align 8, !alias.scope !13837, !noalias !13830
  %.promoted91 = load i64, ptr %i.aa, align 8, !alias.scope !13837, !noalias !13830
  %.promoted93 = load i64, ptr %i.ab, align 8, !alias.scope !13837, !noalias !13830
  br label %bb.f

bb.f:                                             ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types19TimestampSecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5Z_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.split
  %.lcssa8494 = phi i64 [ %.promoted93, %.lr.ph.i.i.i.i.i.i.i.split ], [ %i.ck, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types19TimestampSecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5Z_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i ]
  %.lcssa8692 = phi i64 [ %.promoted91, %.lr.ph.i.i.i.i.i.i.i.split ], [ %i.ci, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types19TimestampSecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5Z_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i ]
  %.lcssa8390 = phi i64 [ %.promoted89, %.lr.ph.i.i.i.i.i.i.i.split ], [ %i.cl, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types19TimestampSecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5Z_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i ]
  %.lcssa8588 = phi i64 [ %.promoted, %.lr.ph.i.i.i.i.i.i.i.split ], [ %i.cj, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types19TimestampSecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5Z_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i ]
  %i.bx = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.split ], [ %i.cp, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types19TimestampSecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5Z_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13832)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13833)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13834)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13835)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %i.by = phi i64 [ %i.ck, %bb.g ], [ %.lcssa8494, %bb.f ]
  %i.bz = phi i64 [ %i.ci, %bb.g ], [ %.lcssa8692, %bb.f ] ; 3 uses
  %i.ca = phi i64 [ %i.cl, %bb.g ], [ %.lcssa8390, %bb.f ] ; 2 uses
  %i.cb = phi i64 [ %i.cj, %bb.g ], [ %.lcssa8588, %bb.f ] ; 4 uses
  %i.cc = add i64 %i.cb, %i.ca                    ; 2 uses
  %i.cd = tail call noundef i64 @llvm.fshl.i64(i64 %i.cc, i64 %i.cc, i64 23)
  %i.ce = add i64 %i.cd, %i.cb
  %i.cf = shl i64 %i.bz, 17
  %i.cg = xor i64 %i.cb, %i.by                    ; 2 uses
  %i.ch = xor i64 %i.ca, %i.bz                    ; 3 uses
  %i.ci = xor i64 %i.cg, %i.bz                    ; 3 uses
  %i.cj = xor i64 %i.ch, %i.cb                    ; 3 uses
  %i.ck = xor i64 %i.cg, %i.cf                    ; 3 uses
  %i.cl = tail call noundef i64 @llvm.fshl.i64(i64 %i.ch, i64 %i.ch, i64 45) ; 3 uses
  %i.cm = zext i64 %i.ce to i128
  %i.cn = mul nuw i128 %i.cm, %i.ae               ; 2 uses
  %i.co = trunc i128 %i.cn to i64
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp ugt i64 %i.bv, %i.co
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.g, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types19TimestampSecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5Z_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types19TimestampSecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5Z_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i: ; preds = %bb.g
  %i.cp = add nuw nsw i64 %i.bx, 1                ; 2 uses
  %i.cq = lshr i128 %i.cn, 64
  %i.cr = trunc nuw i128 %i.cq to i64
  %i.cs = add i64 %i.bw, %i.cr
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %.sroa.10.0.i.i.i, i64 %i.bx
  store i64 %i.cs, ptr %i.ct, align 8, !noalias !13836
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.cp, %2
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types19TimestampSecondTypeENCNvNtB2G_5array23rand_timestamp_in_range0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split, label %bb.f

bb.h:                                             ; preds = %bb.a
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cv = load i64, ptr %i.cu, align 8, !noundef !10
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.cx = load i32, ptr %i.cw, align 4, !noundef !10 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13838
  %i.cy = icmp eq i64 %2, 0
  br i1 %i.cy, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters4take4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB1m_3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_B2a_INtB2a_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB4i_5types19TimestampSecondTypeENCNvNtB2a_5array23rand_timestamp_in_range0ENtB2a_14ArrayGenerator8generate0EEEE9from_iterB2c_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cz = add i64 %2, -1                          ; 3 uses
  %i.da = icmp eq i32 %i.cx, 0
  br i1 %i.da, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13839), !noalias !13840
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13841), !noalias !13840
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13842), !noalias !13840
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13843), !noalias !13840
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.dc = load i64, ptr %i.db, align 8, !alias.scope !13844, !noalias !13845, !noundef !10 ; 2 uses
  %i.dd = icmp eq i64 %i.dc, 0
  br i1 %i.dd, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.de = load i64, ptr %3, align 8, !alias.scope !13846, !noalias !13845, !noundef !10 ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.dg = load i64, ptr %i.df, align 8, !alias.scope !13846, !noalias !13845, !noundef !10 ; 2 uses
  %i.dh = add i64 %i.dg, %i.de                    ; 2 uses
  %i.di = tail call noundef i64 @llvm.fshl.i64(i64 %i.dh, i64 %i.dh, i64 23)
  %i.dj = add i64 %i.di, %i.de
  %i.dk = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.dl = load i64, ptr %i.dk, align 8, !alias.scope !13846, !noalias !13845, !noundef !10 ; 3 uses
  %i.dm = shl i64 %i.dl, 17
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.do = load i64, ptr %i.dn, align 8, !alias.scope !13846, !noalias !13845, !noundef !10
  %i.dp = xor i64 %i.do, %i.de                    ; 2 uses
  %i.dq = xor i64 %i.dl, %i.dg                    ; 3 uses
  %i.dr = xor i64 %i.dp, %i.dl
  store i64 %i.dr, ptr %i.dk, align 8, !alias.scope !13846, !noalias !13845
  %i.ds = xor i64 %i.dq, %i.de
  store i64 %i.ds, ptr %3, align 8, !alias.scope !13846, !noalias !13845
  %i.dt = xor i64 %i.dp, %i.dm
  store i64 %i.dt, ptr %i.dn, align 8, !alias.scope !13846, !noalias !13845
  %i.du = tail call noundef i64 @llvm.fshl.i64(i64 %i.dq, i64 %i.dq, i64 45)
  store i64 %i.du, ptr %i.df, align 8, !alias.scope !13846, !noalias !13845
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.dw = load i64, ptr %i.dv, align 8, !alias.scope !13844, !noalias !13845, !noundef !10
  %i.dx = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ea = zext i64 %i.dc to i128
  %.promoted.i.i.i.i.i.i.i = load i64, ptr %3, align 8, !alias.scope !13847, !noalias !13845
  %.promoted2.i.i.i.i.i.i.i = load i64, ptr %i.dx, align 8, !alias.scope !13847, !noalias !13845
  %.promoted4.i.i.i.i.i.i.i = load i64, ptr %i.dy, align 8, !alias.scope !13847, !noalias !13845
  %.promoted6.i.i.i.i.i.i.i = load i64, ptr %i.dz, align 8, !alias.scope !13847, !noalias !13845
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %bb.l
  %i.eb = phi i64 [ %i.en, %bb.m ], [ %.promoted6.i.i.i.i.i.i.i, %bb.l ]
  %i.ec = phi i64 [ %i.el, %bb.m ], [ %.promoted4.i.i.i.i.i.i.i, %bb.l ] ; 3 uses
  %i.ed = phi i64 [ %i.eo, %bb.m ], [ %.promoted2.i.i.i.i.i.i.i, %bb.l ] ; 2 uses
  %i.ee = phi i64 [ %i.em, %bb.m ], [ %.promoted.i.i.i.i.i.i.i, %bb.l ] ; 4 uses
  %i.ef = add i64 %i.ee, %i.ed                    ; 2 uses
  %i.eg = tail call noundef i64 @llvm.fshl.i64(i64 %i.ef, i64 %i.ef, i64 23)
  %i.eh = add i64 %i.eg, %i.ee
  %i.ei = shl i64 %i.ec, 17
  %i.ej = xor i64 %i.ee, %i.eb                    ; 2 uses
  %i.ek = xor i64 %i.ed, %i.ec                    ; 3 uses
  %i.el = xor i64 %i.ej, %i.ec                    ; 2 uses
  %i.em = xor i64 %i.ek, %i.ee                    ; 2 uses
  %i.en = xor i64 %i.ej, %i.ei                    ; 2 uses
  %i.eo = tail call noundef i64 @llvm.fshl.i64(i64 %i.ek, i64 %i.ek, i64 45) ; 2 uses
  %i.ep = zext i64 %i.eh to i128
  %i.eq = mul nuw i128 %i.ep, %i.ea               ; 2 uses
  %i.er = trunc i128 %i.eq to i64
  %.not.i.i.i.i.i.i.i = icmp ugt i64 %i.dw, %i.er
  br i1 %.not.i.i.i.i.i.i.i, label %bb.m, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i64 %i.em, ptr %3, align 8, !alias.scope !13847, !noalias !13845
  store i64 %i.eo, ptr %i.dx, align 8, !alias.scope !13847, !noalias !13845
  store i64 %i.el, ptr %i.dy, align 8, !alias.scope !13847, !noalias !13845
  store i64 %i.en, ptr %i.dz, align 8, !alias.scope !13847, !noalias !13845
  %i.es = lshr i128 %i.eq, 64
  %i.et = trunc nuw i128 %i.es to i64
  %i.eu = load i64, ptr %i.o, align 8, !alias.scope !13844, !noalias !13845, !noundef !10
  %i.ev = add i64 %i.eu, %i.et
  br label %bb.o

bb.o:                                             ; preds = %bb.i, %bb.n, %bb.k
  %.sroa.7.0 = phi i64 [ 1, %bb.k ], [ 1, %bb.n ], [ 0, %bb.i ] ; 3 uses
  %.sroa.22.0.copyload.i.in.i = phi i32 [ %i.q, %bb.k ], [ %i.q, %bb.n ], [ %i.cx, %bb.i ]
  %.sroa.15.0.copyload.i.i = phi i64 [ %i.dj, %bb.k ], [ %i.ev, %bb.n ], [ %i.cv, %bb.i ] ; 2 uses
  %.sroa.22.0.copyload.i.i = add i32 %.sroa.22.0.copyload.i.in.i, -1 ; 2 uses
  %i.ew = icmp eq i64 %i.cz, 0                    ; 2 uses
  br i1 %i.ew, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB6_3map3MapINtNtNtBa_3ops5range5RangeyENCNvXsa_B10_INtB10_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB36_5types19TimestampSecondTypeENCNvNtB10_5array23rand_timestamp_in_range0ENtB10_14ArrayGenerator8generate0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB12_.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %spec.select.i.i.i.i.i.i66 = sub nuw i64 %2, %.sroa.7.0
end_hunk_1
begin_hunk_2_@_RNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB5_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB14_5types19TimestampSecondTypeENCNvNtB5_5array23rand_timestamp_in_range0ENtB5_14ArrayGenerator8generateB7_:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.66, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.66)
  br label %bb.aw

bb.av:                                            ; preds = %bb.at
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %.sroa.8.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.8.0..sroa_idx8, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.518.0..sroa_idx, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  store i64 %i.ky, ptr %i.g, align 8
  %.sroa.66.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.66.0..sroa_idx7, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.66, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.66)
  %i.lb = call { ptr, ptr } @_RNvNtCs4ytUTZt2Gw9_11arrow_array5array10make_array(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(136) %i.g) ; 2 uses
  %i.lc = extractvalue { ptr, ptr } %i.lb, 0
  %i.ld = extractvalue { ptr, ptr } %i.lb, 1
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.lc, ptr %i.le, align 8
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ld, ptr %i.lf, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.aw

bb.aw:                                            ; preds = %bb.au, %bb.az, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  ret void

bb.ax:                                            ; preds = %_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types19TimestampSecondTypeENtB7_5Array9into_dataCs342JT7D9NXi_13lance_datagen.exit
  %i.lg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs56ggtDZRYpd_10arrow_data4data16ArrayDataBuilderECs342JT7D9NXi_13lance_datagen(ptr noalias noundef align 8 dereferenceable(184) %i.j) #38
          to label %common.resume unwind label %bb.ay

bb.ay:                                            ; preds = %bb.ba, %bb.ax
  %i.lh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.az:                                            ; preds = %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ku, ptr noundef nonnull align 8 dereferenceable(112) %i.f, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ku, ptr %i.li, align 8
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @594, ptr %i.lj, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.aw

bb.ba:                                            ; preds = %bb.an
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBI_5types19TimestampSecondTypeEECs342JT7D9NXi_13lance_datagen(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.n) #38
          to label %common.resume unwind label %bb.ay

bb.bb:                                            ; preds = %bb.ak
  %i.lk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ll = icmp eq i64 %.sroa.035.0157, 0
  br i1 %i.ll, label %common.resume, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.lm = shl nuw i64 %.sroa.035.0157, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.837.0155) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.837.0155, i64 noundef %i.lm, i64 noundef range(i64 1, -9223372036854775807) 8) #36
  br label %common.resume
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB5_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB14_5types19TimestampSecondTypeENCNvNtB5_5array23rand_timestamp_in_range0ENtB5_14ArrayGenerator9data_typeB7_(ptr noalias noundef readonly align 8 captures(ret: address, read_provenance) dereferenceable(80) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { i64, i64 } @_RNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB5_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB14_5types20Time64NanosecondTypeENCNvNtB5_5array11rand_time640ENtB5_14ArrayGenerator18element_size_bytesB7_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(80) %0) unnamed_addr #10 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !25, !noundef !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = insertvalue { i64, i64 } poison, i64 %i.a, 0
  %i.e = insertvalue { i64, i64 } %i.d, i64 %i.c, 1
  ret { i64, i64 } %i.e
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB5_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB14_5types20Time64NanosecondTypeENCNvNtB5_5array11rand_time640ENtB5_14ArrayGenerator8generateB7_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %1, i64 noundef %2, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [136 x i8], align 8               ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.f = alloca [112 x i8], align 8               ; 6 uses
  %i.g = alloca [136 x i8], align 8               ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [96 x i8], align 8                ; 4 uses
  %i.j = alloca [184 x i8], align 8               ; 14 uses
  %i.k = alloca [184 x i8], align 8               ; 4 uses
  %i.l = alloca [136 x i8], align 8               ; 7 uses
  %.sroa.66 = alloca [32 x i8], align 8           ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [96 x i8], align 8                ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !noundef !10 ; 13 uses
  %i.r = icmp ugt i32 %i.q, 1
  br i1 %i.r, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = shl i64 %2, 3                            ; 4 uses
  %i.t = icmp ugt i64 %2, 2305843009213693951
  %.not.i.i.i.i = icmp ugt i64 %i.s, 9223372036854775800
  %or.cond.i.i.i.i = or i1 %i.t, %.not.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %bb.e, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.u = icmp eq i64 %i.s, 0
  br i1 %i.u, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !14021
  %i.v = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.s, i64 noundef range(i64 1, 9) 8) #36, !noalias !14021 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.e, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i

bb.e:                                             ; preds = %bb.d, %bb.b
  %.sroa.4.0.ph.i.i.i = phi i64 [ 8, %bb.d ], [ 0, %bb.b ]
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.s) #37, !noalias !14022
  unreachable

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i: ; preds = %bb.d, %bb.c
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.c ], [ %i.v, %bb.d ] ; 8 uses
  %.sroa.4.0.i.i.i = phi i64 [ 0, %bb.c ], [ %2, %bb.d ] ; 5 uses
  %i.x = icmp samesign ule i64 %2, %.sroa.4.0.i.i.i
  tail call void @llvm.assume(i1 %i.x)
  %.not67 = icmp eq i64 %2, 0
  br i1 %.not67, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types20Time64NanosecondTypeENCNvNtB2G_5array11rand_time640ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.thread, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.ac = load i64, ptr %i.y, align 8, !alias.scope !14023, !noalias !14024, !noundef !10 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  %i.ae = zext i64 %i.ac to i128
  br i1 %i.ad, label %.lr.ph.i.i.i.i.i.i.i.split.us, label %.lr.ph.i.i.i.i.i.i.i.split

.lr.ph.i.i.i.i.i.i.i.split.us:                    ; preds = %.lr.ph.i.i.i.i.i.i.i
  %.promoted95 = load i64, ptr %3, align 8, !alias.scope !14025, !noalias !14024 ; 2 uses
  %.promoted97 = load i64, ptr %i.z, align 8, !alias.scope !14025, !noalias !14024 ; 2 uses
  %.promoted99 = load i64, ptr %i.aa, align 8, !alias.scope !14025, !noalias !14024 ; 2 uses
  %.promoted101 = load i64, ptr %i.ab, align 8, !alias.scope !14025, !noalias !14024 ; 2 uses
  %xtraiter = and i64 %2, 1
  %i.af = icmp eq i64 %2, 1
  br i1 %i.af, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types20Time64NanosecondTypeENCNvNtB15_5array11rand_time640ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5O_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.split.us.new

.lr.ph.i.i.i.i.i.i.i.split.us.new:                ; preds = %.lr.ph.i.i.i.i.i.i.i.split.us
  %unroll_iter = and i64 %2, 2305843009213693950
  br label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types20Time64NanosecondTypeENCNvNtB15_5array11rand_time640ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5O_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types20Time64NanosecondTypeENCNvNtB15_5array11rand_time640ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5O_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us: ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types20Time64NanosecondTypeENCNvNtB15_5array11rand_time640ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5O_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us, %.lr.ph.i.i.i.i.i.i.i.split.us.new
  %i.ag = phi i64 [ %.promoted101, %.lr.ph.i.i.i.i.i.i.i.split.us.new ], [ %i.bf, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types20Time64NanosecondTypeENCNvNtB15_5array11rand_time640ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5O_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us ]
  %i.ah = phi i64 [ %.promoted99, %.lr.ph.i.i.i.i.i.i.i.split.us.new ], [ %i.bd, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types20Time64NanosecondTypeENCNvNtB15_5array11rand_time640ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5O_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us ] ; 3 uses
  %i.ai = phi i64 [ %.promoted97, %.lr.ph.i.i.i.i.i.i.i.split.us.new ], [ %i.bg, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types20Time64NanosecondTypeENCNvNtB15_5array11rand_time640ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5O_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us ] ; 2 uses
  %i.aj = phi i64 [ %.promoted95, %.lr.ph.i.i.i.i.i.i.i.split.us.new ], [ %i.be, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types20Time64NanosecondTypeENCNvNtB15_5array11rand_time640ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5O_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us ] ; 4 uses
  %i.ak = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.split.us.new ], [ %i.aw, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types20Time64NanosecondTypeENCNvNtB15_5array11rand_time640ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5O_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.split.us.new ], [ %niter.next.1, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types20Time64NanosecondTypeENCNvNtB15_5array11rand_time640ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5O_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14026)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14027)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14028)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14029)
  %i.al = add i64 %i.ai, %i.aj                    ; 2 uses
  %i.am = tail call noundef i64 @llvm.fshl.i64(i64 %i.al, i64 %i.al, i64 23)
  %i.an = add i64 %i.am, %i.aj
  %i.ao = shl i64 %i.ah, 17
  %i.ap = xor i64 %i.ag, %i.aj                    ; 2 uses
  %i.aq = xor i64 %i.ah, %i.ai                    ; 3 uses
  %i.ar = xor i64 %i.ap, %i.ah                    ; 3 uses
  %i.as = xor i64 %i.aq, %i.aj                    ; 4 uses
  %i.at = xor i64 %i.ap, %i.ao
  %i.au = tail call noundef i64 @llvm.fshl.i64(i64 %i.aq, i64 %i.aq, i64 45) ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %.sroa.10.0.i.i.i, i64 %i.ak
  store i64 %i.an, ptr %i.av, align 8, !noalias !14030
  %i.aw = add nuw nsw i64 %i.ak, 2                ; 2 uses
  %i.ax = add i64 %i.au, %i.as                    ; 2 uses
  %i.ay = tail call noundef i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 23)
  %i.az = add i64 %i.ay, %i.as
  %i.ba = shl i64 %i.ar, 17
  %i.bb = xor i64 %i.at, %i.as                    ; 2 uses
  %i.bc = xor i64 %i.ar, %i.au                    ; 3 uses
  %i.bd = xor i64 %i.bb, %i.ar                    ; 3 uses
  %i.be = xor i64 %i.bc, %i.as                    ; 3 uses
  %i.bf = xor i64 %i.bb, %i.ba                    ; 3 uses
  %i.bg = tail call noundef i64 @llvm.fshl.i64(i64 %i.bc, i64 %i.bc, i64 45) ; 3 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.10.0.i.i.i, i64 %i.ak
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store i64 %i.az, ptr %i.bi, align 8, !noalias !14030
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types20Time64NanosecondTypeENCNvNtB2G_5array11rand_time640ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us.unr-lcssa, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types20Time64NanosecondTypeENCNvNtB15_5array11rand_time640ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5O_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us

_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types20Time64NanosecondTypeENCNvNtB2G_5array11rand_time640ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us.unr-lcssa: ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types20Time64NanosecondTypeENCNvNtB15_5array11rand_time640ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5O_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types20Time64NanosecondTypeENCNvNtB2G_5array11rand_time640ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types20Time64NanosecondTypeENCNvNtB15_5array11rand_time640ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5O_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us.epil.preheader

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types20Time64NanosecondTypeENCNvNtB15_5array11rand_time640ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5O_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us.epil.preheader: ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types20Time64NanosecondTypeENCNvNtB2G_5array11rand_time640ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.split.us
  %.epil.init = phi i64 [ %.promoted101, %.lr.ph.i.i.i.i.i.i.i.split.us ], [ %i.bf, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types20Time64NanosecondTypeENCNvNtB2G_5array11rand_time640ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us.unr-lcssa ]
  %.epil.init249 = phi i64 [ %.promoted99, %.lr.ph.i.i.i.i.i.i.i.split.us ], [ %i.bd, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types20Time64NanosecondTypeENCNvNtB2G_5array11rand_time640ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us.unr-lcssa ] ; 3 uses
  %.epil.init251 = phi i64 [ %.promoted97, %.lr.ph.i.i.i.i.i.i.i.split.us ], [ %i.bg, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types20Time64NanosecondTypeENCNvNtB2G_5array11rand_time640ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us.unr-lcssa ] ; 2 uses
  %.epil.init253 = phi i64 [ %.promoted95, %.lr.ph.i.i.i.i.i.i.i.split.us ], [ %i.be, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types20Time64NanosecondTypeENCNvNtB2G_5array11rand_time640ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us.unr-lcssa ] ; 4 uses
  %.epil.init255 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.split.us ], [ %i.aw, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types20Time64NanosecondTypeENCNvNtB2G_5array11rand_time640ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us.unr-lcssa ]
  %lcmp.mod260 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod260)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14026)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14027)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14028)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14029)
  %i.bj = add i64 %.epil.init251, %.epil.init253  ; 2 uses
  %i.bk = tail call noundef i64 @llvm.fshl.i64(i64 %i.bj, i64 %i.bj, i64 23)
  %i.bl = add i64 %i.bk, %.epil.init253
  %i.bm = shl i64 %.epil.init249, 17
  %i.bn = xor i64 %.epil.init, %.epil.init253     ; 2 uses
  %i.bo = xor i64 %.epil.init249, %.epil.init251  ; 3 uses
  %i.bp = xor i64 %i.bn, %.epil.init249
  %i.bq = xor i64 %i.bo, %.epil.init253
  %i.br = xor i64 %i.bn, %i.bm
  %i.bs = tail call noundef i64 @llvm.fshl.i64(i64 %i.bo, i64 %i.bo, i64 45)
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.10.0.i.i.i, i64 %.epil.init255
  store i64 %i.bl, ptr %i.bt, align 8, !noalias !14030
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types20Time64NanosecondTypeENCNvNtB2G_5array11rand_time640ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us

_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types20Time64NanosecondTypeENCNvNtB2G_5array11rand_time640ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us: ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types20Time64NanosecondTypeENCNvNtB2G_5array11rand_time640ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us.unr-lcssa, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types20Time64NanosecondTypeENCNvNtB15_5array11rand_time640ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5O_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us.epil.preheader
  %.lcssa242 = phi i64 [ %i.bd, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types20Time64NanosecondTypeENCNvNtB2G_5array11rand_time640ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us.unr-lcssa ], [ %i.bp, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types20Time64NanosecondTypeENCNvNtB15_5array11rand_time640ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5O_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us.epil.preheader ]
  %.lcssa241 = phi i64 [ %i.be, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types20Time64NanosecondTypeENCNvNtB2G_5array11rand_time640ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us.unr-lcssa ], [ %i.bq, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types20Time64NanosecondTypeENCNvNtB15_5array11rand_time640ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5O_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us.epil.preheader ]
  %.lcssa240 = phi i64 [ %i.bf, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types20Time64NanosecondTypeENCNvNtB2G_5array11rand_time640ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us.unr-lcssa ], [ %i.br, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types20Time64NanosecondTypeENCNvNtB15_5array11rand_time640ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5O_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us.epil.preheader ]
  %.lcssa239 = phi i64 [ %i.bg, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types20Time64NanosecondTypeENCNvNtB2G_5array11rand_time640ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us.unr-lcssa ], [ %i.bs, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types20Time64NanosecondTypeENCNvNtB15_5array11rand_time640ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5O_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us.epil.preheader ]
  store i64 %.lcssa241, ptr %3, align 8, !alias.scope !14025, !noalias !14024
  store i64 %.lcssa239, ptr %i.z, align 8, !alias.scope !14025, !noalias !14024
  store i64 %.lcssa242, ptr %i.aa, align 8, !alias.scope !14025, !noalias !14024
  store i64 %.lcssa240, ptr %i.ab, align 8, !alias.scope !14025, !noalias !14024
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types20Time64NanosecondTypeENCNvNtB2G_5array11rand_time640ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit

.lr.ph.i.i.i.i.i.i.i.split:                       ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bv = load i64, ptr %i.bu, align 8, !alias.scope !14023, !noalias !14024, !noundef !10
  %i.bw = load i64, ptr %i.o, align 8, !alias.scope !14023, !noalias !14024, !noundef !10
  %.promoted = load i64, ptr %3, align 8, !alias.scope !14031, !noalias !14024
  %.promoted89 = load i64, ptr %i.z, align 8, !alias.scope !14031, !noalias !14024
  %.promoted91 = load i64, ptr %i.aa, align 8, !alias.scope !14031, !noalias !14024
  %.promoted93 = load i64, ptr %i.ab, align 8, !alias.scope !14031, !noalias !14024
  br label %bb.f

bb.f:                                             ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types20Time64NanosecondTypeENCNvNtB15_5array11rand_time640ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5O_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.split
  %.lcssa8494 = phi i64 [ %.promoted93, %.lr.ph.i.i.i.i.i.i.i.split ], [ %i.ck, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types20Time64NanosecondTypeENCNvNtB15_5array11rand_time640ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5O_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i ]
  %.lcssa8692 = phi i64 [ %.promoted91, %.lr.ph.i.i.i.i.i.i.i.split ], [ %i.ci, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types20Time64NanosecondTypeENCNvNtB15_5array11rand_time640ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5O_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i ]
  %.lcssa8390 = phi i64 [ %.promoted89, %.lr.ph.i.i.i.i.i.i.i.split ], [ %i.cl, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types20Time64NanosecondTypeENCNvNtB15_5array11rand_time640ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5O_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i ]
  %.lcssa8588 = phi i64 [ %.promoted, %.lr.ph.i.i.i.i.i.i.i.split ], [ %i.cj, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types20Time64NanosecondTypeENCNvNtB15_5array11rand_time640ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5O_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i ]
  %i.bx = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.split ], [ %i.cp, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types20Time64NanosecondTypeENCNvNtB15_5array11rand_time640ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5O_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14026)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14027)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14028)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14029)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %i.by = phi i64 [ %i.ck, %bb.g ], [ %.lcssa8494, %bb.f ]
  %i.bz = phi i64 [ %i.ci, %bb.g ], [ %.lcssa8692, %bb.f ] ; 3 uses
  %i.ca = phi i64 [ %i.cl, %bb.g ], [ %.lcssa8390, %bb.f ] ; 2 uses
  %i.cb = phi i64 [ %i.cj, %bb.g ], [ %.lcssa8588, %bb.f ] ; 4 uses
  %i.cc = add i64 %i.cb, %i.ca                    ; 2 uses
  %i.cd = tail call noundef i64 @llvm.fshl.i64(i64 %i.cc, i64 %i.cc, i64 23)
  %i.ce = add i64 %i.cd, %i.cb
  %i.cf = shl i64 %i.bz, 17
  %i.cg = xor i64 %i.cb, %i.by                    ; 2 uses
  %i.ch = xor i64 %i.ca, %i.bz                    ; 3 uses
  %i.ci = xor i64 %i.cg, %i.bz                    ; 3 uses
  %i.cj = xor i64 %i.ch, %i.cb                    ; 3 uses
  %i.ck = xor i64 %i.cg, %i.cf                    ; 3 uses
  %i.cl = tail call noundef i64 @llvm.fshl.i64(i64 %i.ch, i64 %i.ch, i64 45) ; 3 uses
  %i.cm = zext i64 %i.ce to i128
  %i.cn = mul nuw i128 %i.cm, %i.ae               ; 2 uses
  %i.co = trunc i128 %i.cn to i64
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp ugt i64 %i.bv, %i.co
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.g, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types20Time64NanosecondTypeENCNvNtB15_5array11rand_time640ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5O_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types20Time64NanosecondTypeENCNvNtB15_5array11rand_time640ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5O_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i: ; preds = %bb.g
  %i.cp = add nuw nsw i64 %i.bx, 1                ; 2 uses
  %i.cq = lshr i128 %i.cn, 64
  %i.cr = trunc nuw i128 %i.cq to i64
  %i.cs = add i64 %i.bw, %i.cr
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %.sroa.10.0.i.i.i, i64 %i.bx
  store i64 %i.cs, ptr %i.ct, align 8, !noalias !14030
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.cp, %2
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types20Time64NanosecondTypeENCNvNtB2G_5array11rand_time640ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split, label %bb.f

bb.h:                                             ; preds = %bb.a
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cv = load i64, ptr %i.cu, align 8, !noundef !10
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.cx = load i32, ptr %i.cw, align 4, !noundef !10 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14032
  %i.cy = icmp eq i64 %2, 0
  br i1 %i.cy, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters4take4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB1m_3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_B2a_INtB2a_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB4i_5types20Time64NanosecondTypeENCNvNtB2a_5array11rand_time640ENtB2a_14ArrayGenerator8generate0EEEE9from_iterB2c_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cz = add i64 %2, -1                          ; 3 uses
  %i.da = icmp eq i32 %i.cx, 0
  br i1 %i.da, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14033), !noalias !14034
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14035), !noalias !14034
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14036), !noalias !14034
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14037), !noalias !14034
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.dc = load i64, ptr %i.db, align 8, !alias.scope !14038, !noalias !14039, !noundef !10 ; 2 uses
  %i.dd = icmp eq i64 %i.dc, 0
  br i1 %i.dd, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.de = load i64, ptr %3, align 8, !alias.scope !14040, !noalias !14039, !noundef !10 ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.dg = load i64, ptr %i.df, align 8, !alias.scope !14040, !noalias !14039, !noundef !10 ; 2 uses
  %i.dh = add i64 %i.dg, %i.de                    ; 2 uses
  %i.di = tail call noundef i64 @llvm.fshl.i64(i64 %i.dh, i64 %i.dh, i64 23)
  %i.dj = add i64 %i.di, %i.de
  %i.dk = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.dl = load i64, ptr %i.dk, align 8, !alias.scope !14040, !noalias !14039, !noundef !10 ; 3 uses
  %i.dm = shl i64 %i.dl, 17
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.do = load i64, ptr %i.dn, align 8, !alias.scope !14040, !noalias !14039, !noundef !10
  %i.dp = xor i64 %i.do, %i.de                    ; 2 uses
  %i.dq = xor i64 %i.dl, %i.dg                    ; 3 uses
  %i.dr = xor i64 %i.dp, %i.dl
  store i64 %i.dr, ptr %i.dk, align 8, !alias.scope !14040, !noalias !14039
  %i.ds = xor i64 %i.dq, %i.de
  store i64 %i.ds, ptr %3, align 8, !alias.scope !14040, !noalias !14039
  %i.dt = xor i64 %i.dp, %i.dm
  store i64 %i.dt, ptr %i.dn, align 8, !alias.scope !14040, !noalias !14039
  %i.du = tail call noundef i64 @llvm.fshl.i64(i64 %i.dq, i64 %i.dq, i64 45)
  store i64 %i.du, ptr %i.df, align 8, !alias.scope !14040, !noalias !14039
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.dw = load i64, ptr %i.dv, align 8, !alias.scope !14038, !noalias !14039, !noundef !10
  %i.dx = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ea = zext i64 %i.dc to i128
  %.promoted.i.i.i.i.i.i.i = load i64, ptr %3, align 8, !alias.scope !14041, !noalias !14039
  %.promoted2.i.i.i.i.i.i.i = load i64, ptr %i.dx, align 8, !alias.scope !14041, !noalias !14039
  %.promoted4.i.i.i.i.i.i.i = load i64, ptr %i.dy, align 8, !alias.scope !14041, !noalias !14039
  %.promoted6.i.i.i.i.i.i.i = load i64, ptr %i.dz, align 8, !alias.scope !14041, !noalias !14039
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %bb.l
  %i.eb = phi i64 [ %i.en, %bb.m ], [ %.promoted6.i.i.i.i.i.i.i, %bb.l ]
  %i.ec = phi i64 [ %i.el, %bb.m ], [ %.promoted4.i.i.i.i.i.i.i, %bb.l ] ; 3 uses
  %i.ed = phi i64 [ %i.eo, %bb.m ], [ %.promoted2.i.i.i.i.i.i.i, %bb.l ] ; 2 uses
  %i.ee = phi i64 [ %i.em, %bb.m ], [ %.promoted.i.i.i.i.i.i.i, %bb.l ] ; 4 uses
  %i.ef = add i64 %i.ee, %i.ed                    ; 2 uses
  %i.eg = tail call noundef i64 @llvm.fshl.i64(i64 %i.ef, i64 %i.ef, i64 23)
  %i.eh = add i64 %i.eg, %i.ee
  %i.ei = shl i64 %i.ec, 17
  %i.ej = xor i64 %i.ee, %i.eb                    ; 2 uses
  %i.ek = xor i64 %i.ed, %i.ec                    ; 3 uses
  %i.el = xor i64 %i.ej, %i.ec                    ; 2 uses
  %i.em = xor i64 %i.ek, %i.ee                    ; 2 uses
  %i.en = xor i64 %i.ej, %i.ei                    ; 2 uses
  %i.eo = tail call noundef i64 @llvm.fshl.i64(i64 %i.ek, i64 %i.ek, i64 45) ; 2 uses
  %i.ep = zext i64 %i.eh to i128
  %i.eq = mul nuw i128 %i.ep, %i.ea               ; 2 uses
  %i.er = trunc i128 %i.eq to i64
  %.not.i.i.i.i.i.i.i = icmp ugt i64 %i.dw, %i.er
  br i1 %.not.i.i.i.i.i.i.i, label %bb.m, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i64 %i.em, ptr %3, align 8, !alias.scope !14041, !noalias !14039
  store i64 %i.eo, ptr %i.dx, align 8, !alias.scope !14041, !noalias !14039
  store i64 %i.el, ptr %i.dy, align 8, !alias.scope !14041, !noalias !14039
  store i64 %i.en, ptr %i.dz, align 8, !alias.scope !14041, !noalias !14039
  %i.es = lshr i128 %i.eq, 64
  %i.et = trunc nuw i128 %i.es to i64
  %i.eu = load i64, ptr %i.o, align 8, !alias.scope !14038, !noalias !14039, !noundef !10
  %i.ev = add i64 %i.eu, %i.et
  br label %bb.o

bb.o:                                             ; preds = %bb.i, %bb.n, %bb.k
  %.sroa.7.0 = phi i64 [ 1, %bb.k ], [ 1, %bb.n ], [ 0, %bb.i ] ; 3 uses
  %.sroa.22.0.copyload.i.in.i = phi i32 [ %i.q, %bb.k ], [ %i.q, %bb.n ], [ %i.cx, %bb.i ]
  %.sroa.15.0.copyload.i.i = phi i64 [ %i.dj, %bb.k ], [ %i.ev, %bb.n ], [ %i.cv, %bb.i ] ; 2 uses
  %.sroa.22.0.copyload.i.i = add i32 %.sroa.22.0.copyload.i.in.i, -1 ; 2 uses
  %i.ew = icmp eq i64 %i.cz, 0                    ; 2 uses
  br i1 %i.ew, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB6_3map3MapINtNtNtBa_3ops5range5RangeyENCNvXsa_B10_INtB10_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB36_5types20Time64NanosecondTypeENCNvNtB10_5array11rand_time640ENtB10_14ArrayGenerator8generate0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB12_.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %spec.select.i.i.i.i.i.i66 = sub nuw i64 %2, %.sroa.7.0
end_hunk_2
begin_hunk_3_@_RNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB5_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB14_5types20Time64NanosecondTypeENCNvNtB5_5array11rand_time640ENtB5_14ArrayGenerator8generateB7_:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.66, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.66)
  br label %bb.aw

bb.av:                                            ; preds = %bb.at
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %.sroa.8.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.8.0..sroa_idx8, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.518.0..sroa_idx, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  store i64 %i.ky, ptr %i.g, align 8
  %.sroa.66.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.66.0..sroa_idx7, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.66, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.66)
  %i.lb = call { ptr, ptr } @_RNvNtCs4ytUTZt2Gw9_11arrow_array5array10make_array(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(136) %i.g) ; 2 uses
  %i.lc = extractvalue { ptr, ptr } %i.lb, 0
  %i.ld = extractvalue { ptr, ptr } %i.lb, 1
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.lc, ptr %i.le, align 8
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ld, ptr %i.lf, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.aw

bb.aw:                                            ; preds = %bb.au, %bb.az, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  ret void

bb.ax:                                            ; preds = %_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types20Time64NanosecondTypeENtB7_5Array9into_dataCs342JT7D9NXi_13lance_datagen.exit
  %i.lg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs56ggtDZRYpd_10arrow_data4data16ArrayDataBuilderECs342JT7D9NXi_13lance_datagen(ptr noalias noundef align 8 dereferenceable(184) %i.j) #38
          to label %common.resume unwind label %bb.ay

bb.ay:                                            ; preds = %bb.ba, %bb.ax
  %i.lh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.az:                                            ; preds = %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ku, ptr noundef nonnull align 8 dereferenceable(112) %i.f, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ku, ptr %i.li, align 8
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @596, ptr %i.lj, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.aw

bb.ba:                                            ; preds = %bb.an
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBI_5types20Time64NanosecondTypeEECs342JT7D9NXi_13lance_datagen(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.n) #38
          to label %common.resume unwind label %bb.ay

bb.bb:                                            ; preds = %bb.ak
  %i.lk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ll = icmp eq i64 %.sroa.035.0157, 0
  br i1 %i.ll, label %common.resume, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.lm = shl nuw i64 %.sroa.035.0157, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.837.0155) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.837.0155, i64 noundef %i.lm, i64 noundef range(i64 1, -9223372036854775807) 8) #36
  br label %common.resume
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB5_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB14_5types20Time64NanosecondTypeENCNvNtB5_5array11rand_time640ENtB5_14ArrayGenerator9data_typeB7_(ptr noalias noundef readonly align 8 captures(ret: address, read_provenance) dereferenceable(80) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { i64, i64 } @_RNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB5_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB14_5types21Time64MicrosecondTypeENCNvNtB5_5array11rand_time640ENtB5_14ArrayGenerator18element_size_bytesB7_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(80) %0) unnamed_addr #10 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !25, !noundef !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = insertvalue { i64, i64 } poison, i64 %i.a, 0
  %i.e = insertvalue { i64, i64 } %i.d, i64 %i.c, 1
  ret { i64, i64 } %i.e
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB5_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB14_5types21Time64MicrosecondTypeENCNvNtB5_5array11rand_time640ENtB5_14ArrayGenerator8generateB7_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %1, i64 noundef %2, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [136 x i8], align 8               ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.f = alloca [112 x i8], align 8               ; 6 uses
  %i.g = alloca [136 x i8], align 8               ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [96 x i8], align 8                ; 4 uses
  %i.j = alloca [184 x i8], align 8               ; 14 uses
  %i.k = alloca [184 x i8], align 8               ; 4 uses
  %i.l = alloca [136 x i8], align 8               ; 7 uses
  %.sroa.66 = alloca [32 x i8], align 8           ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [96 x i8], align 8                ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !noundef !10 ; 13 uses
  %i.r = icmp ugt i32 %i.q, 1
  br i1 %i.r, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = shl i64 %2, 3                            ; 4 uses
  %i.t = icmp ugt i64 %2, 2305843009213693951
  %.not.i.i.i.i = icmp ugt i64 %i.s, 9223372036854775800
  %or.cond.i.i.i.i = or i1 %i.t, %.not.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %bb.e, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.u = icmp eq i64 %i.s, 0
  br i1 %i.u, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !14215
  %i.v = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.s, i64 noundef range(i64 1, 9) 8) #36, !noalias !14215 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.e, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i

bb.e:                                             ; preds = %bb.d, %bb.b
  %.sroa.4.0.ph.i.i.i = phi i64 [ 8, %bb.d ], [ 0, %bb.b ]
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.s) #37, !noalias !14216
  unreachable

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i: ; preds = %bb.d, %bb.c
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.c ], [ %i.v, %bb.d ] ; 8 uses
  %.sroa.4.0.i.i.i = phi i64 [ 0, %bb.c ], [ %2, %bb.d ] ; 5 uses
  %i.x = icmp samesign ule i64 %2, %.sroa.4.0.i.i.i
  tail call void @llvm.assume(i1 %i.x)
  %.not67 = icmp eq i64 %2, 0
  br i1 %.not67, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types21Time64MicrosecondTypeENCNvNtB2G_5array11rand_time640ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.thread, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.ac = load i64, ptr %i.y, align 8, !alias.scope !14217, !noalias !14218, !noundef !10 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  %i.ae = zext i64 %i.ac to i128
  br i1 %i.ad, label %.lr.ph.i.i.i.i.i.i.i.split.us, label %.lr.ph.i.i.i.i.i.i.i.split

.lr.ph.i.i.i.i.i.i.i.split.us:                    ; preds = %.lr.ph.i.i.i.i.i.i.i
  %.promoted95 = load i64, ptr %3, align 8, !alias.scope !14219, !noalias !14218 ; 2 uses
  %.promoted97 = load i64, ptr %i.z, align 8, !alias.scope !14219, !noalias !14218 ; 2 uses
  %.promoted99 = load i64, ptr %i.aa, align 8, !alias.scope !14219, !noalias !14218 ; 2 uses
  %.promoted101 = load i64, ptr %i.ab, align 8, !alias.scope !14219, !noalias !14218 ; 2 uses
  %xtraiter = and i64 %2, 1
  %i.af = icmp eq i64 %2, 1
  br i1 %i.af, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types21Time64MicrosecondTypeENCNvNtB15_5array11rand_time640ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5P_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.split.us.new

.lr.ph.i.i.i.i.i.i.i.split.us.new:                ; preds = %.lr.ph.i.i.i.i.i.i.i.split.us
  %unroll_iter = and i64 %2, 2305843009213693950
  br label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types21Time64MicrosecondTypeENCNvNtB15_5array11rand_time640ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5P_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types21Time64MicrosecondTypeENCNvNtB15_5array11rand_time640ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5P_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us: ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types21Time64MicrosecondTypeENCNvNtB15_5array11rand_time640ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5P_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us, %.lr.ph.i.i.i.i.i.i.i.split.us.new
  %i.ag = phi i64 [ %.promoted101, %.lr.ph.i.i.i.i.i.i.i.split.us.new ], [ %i.bf, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types21Time64MicrosecondTypeENCNvNtB15_5array11rand_time640ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5P_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us ]
  %i.ah = phi i64 [ %.promoted99, %.lr.ph.i.i.i.i.i.i.i.split.us.new ], [ %i.bd, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types21Time64MicrosecondTypeENCNvNtB15_5array11rand_time640ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5P_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us ] ; 3 uses
  %i.ai = phi i64 [ %.promoted97, %.lr.ph.i.i.i.i.i.i.i.split.us.new ], [ %i.bg, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types21Time64MicrosecondTypeENCNvNtB15_5array11rand_time640ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5P_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us ] ; 2 uses
  %i.aj = phi i64 [ %.promoted95, %.lr.ph.i.i.i.i.i.i.i.split.us.new ], [ %i.be, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types21Time64MicrosecondTypeENCNvNtB15_5array11rand_time640ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5P_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us ] ; 4 uses
  %i.ak = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.split.us.new ], [ %i.aw, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types21Time64MicrosecondTypeENCNvNtB15_5array11rand_time640ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5P_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.split.us.new ], [ %niter.next.1, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types21Time64MicrosecondTypeENCNvNtB15_5array11rand_time640ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5P_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14220)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14221)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14222)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14223)
  %i.al = add i64 %i.ai, %i.aj                    ; 2 uses
  %i.am = tail call noundef i64 @llvm.fshl.i64(i64 %i.al, i64 %i.al, i64 23)
  %i.an = add i64 %i.am, %i.aj
  %i.ao = shl i64 %i.ah, 17
  %i.ap = xor i64 %i.ag, %i.aj                    ; 2 uses
  %i.aq = xor i64 %i.ah, %i.ai                    ; 3 uses
  %i.ar = xor i64 %i.ap, %i.ah                    ; 3 uses
  %i.as = xor i64 %i.aq, %i.aj                    ; 4 uses
  %i.at = xor i64 %i.ap, %i.ao
  %i.au = tail call noundef i64 @llvm.fshl.i64(i64 %i.aq, i64 %i.aq, i64 45) ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %.sroa.10.0.i.i.i, i64 %i.ak
  store i64 %i.an, ptr %i.av, align 8, !noalias !14224
  %i.aw = add nuw nsw i64 %i.ak, 2                ; 2 uses
  %i.ax = add i64 %i.au, %i.as                    ; 2 uses
  %i.ay = tail call noundef i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 23)
  %i.az = add i64 %i.ay, %i.as
  %i.ba = shl i64 %i.ar, 17
  %i.bb = xor i64 %i.at, %i.as                    ; 2 uses
  %i.bc = xor i64 %i.ar, %i.au                    ; 3 uses
  %i.bd = xor i64 %i.bb, %i.ar                    ; 3 uses
  %i.be = xor i64 %i.bc, %i.as                    ; 3 uses
  %i.bf = xor i64 %i.bb, %i.ba                    ; 3 uses
  %i.bg = tail call noundef i64 @llvm.fshl.i64(i64 %i.bc, i64 %i.bc, i64 45) ; 3 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.10.0.i.i.i, i64 %i.ak
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store i64 %i.az, ptr %i.bi, align 8, !noalias !14224
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types21Time64MicrosecondTypeENCNvNtB2G_5array11rand_time640ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us.unr-lcssa, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types21Time64MicrosecondTypeENCNvNtB15_5array11rand_time640ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5P_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us

_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types21Time64MicrosecondTypeENCNvNtB2G_5array11rand_time640ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us.unr-lcssa: ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types21Time64MicrosecondTypeENCNvNtB15_5array11rand_time640ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5P_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types21Time64MicrosecondTypeENCNvNtB2G_5array11rand_time640ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types21Time64MicrosecondTypeENCNvNtB15_5array11rand_time640ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5P_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us.epil.preheader

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types21Time64MicrosecondTypeENCNvNtB15_5array11rand_time640ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5P_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us.epil.preheader: ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types21Time64MicrosecondTypeENCNvNtB2G_5array11rand_time640ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.split.us
  %.epil.init = phi i64 [ %.promoted101, %.lr.ph.i.i.i.i.i.i.i.split.us ], [ %i.bf, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types21Time64MicrosecondTypeENCNvNtB2G_5array11rand_time640ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us.unr-lcssa ]
  %.epil.init249 = phi i64 [ %.promoted99, %.lr.ph.i.i.i.i.i.i.i.split.us ], [ %i.bd, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types21Time64MicrosecondTypeENCNvNtB2G_5array11rand_time640ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us.unr-lcssa ] ; 3 uses
  %.epil.init251 = phi i64 [ %.promoted97, %.lr.ph.i.i.i.i.i.i.i.split.us ], [ %i.bg, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types21Time64MicrosecondTypeENCNvNtB2G_5array11rand_time640ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us.unr-lcssa ] ; 2 uses
  %.epil.init253 = phi i64 [ %.promoted95, %.lr.ph.i.i.i.i.i.i.i.split.us ], [ %i.be, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types21Time64MicrosecondTypeENCNvNtB2G_5array11rand_time640ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us.unr-lcssa ] ; 4 uses
  %.epil.init255 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.split.us ], [ %i.aw, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types21Time64MicrosecondTypeENCNvNtB2G_5array11rand_time640ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us.unr-lcssa ]
  %lcmp.mod260 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod260)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14220)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14221)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14222)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14223)
  %i.bj = add i64 %.epil.init251, %.epil.init253  ; 2 uses
  %i.bk = tail call noundef i64 @llvm.fshl.i64(i64 %i.bj, i64 %i.bj, i64 23)
  %i.bl = add i64 %i.bk, %.epil.init253
  %i.bm = shl i64 %.epil.init249, 17
  %i.bn = xor i64 %.epil.init, %.epil.init253     ; 2 uses
  %i.bo = xor i64 %.epil.init249, %.epil.init251  ; 3 uses
  %i.bp = xor i64 %i.bn, %.epil.init249
  %i.bq = xor i64 %i.bo, %.epil.init253
  %i.br = xor i64 %i.bn, %i.bm
  %i.bs = tail call noundef i64 @llvm.fshl.i64(i64 %i.bo, i64 %i.bo, i64 45)
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.10.0.i.i.i, i64 %.epil.init255
  store i64 %i.bl, ptr %i.bt, align 8, !noalias !14224
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types21Time64MicrosecondTypeENCNvNtB2G_5array11rand_time640ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us

_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types21Time64MicrosecondTypeENCNvNtB2G_5array11rand_time640ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us: ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types21Time64MicrosecondTypeENCNvNtB2G_5array11rand_time640ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us.unr-lcssa, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types21Time64MicrosecondTypeENCNvNtB15_5array11rand_time640ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5P_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us.epil.preheader
  %.lcssa242 = phi i64 [ %i.bd, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types21Time64MicrosecondTypeENCNvNtB2G_5array11rand_time640ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us.unr-lcssa ], [ %i.bp, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types21Time64MicrosecondTypeENCNvNtB15_5array11rand_time640ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5P_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us.epil.preheader ]
  %.lcssa241 = phi i64 [ %i.be, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types21Time64MicrosecondTypeENCNvNtB2G_5array11rand_time640ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us.unr-lcssa ], [ %i.bq, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types21Time64MicrosecondTypeENCNvNtB15_5array11rand_time640ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5P_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us.epil.preheader ]
  %.lcssa240 = phi i64 [ %i.bf, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types21Time64MicrosecondTypeENCNvNtB2G_5array11rand_time640ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us.unr-lcssa ], [ %i.br, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types21Time64MicrosecondTypeENCNvNtB15_5array11rand_time640ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5P_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us.epil.preheader ]
  %.lcssa239 = phi i64 [ %i.bg, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types21Time64MicrosecondTypeENCNvNtB2G_5array11rand_time640ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us.unr-lcssa ], [ %i.bs, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types21Time64MicrosecondTypeENCNvNtB15_5array11rand_time640ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5P_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us.epil.preheader ]
  store i64 %.lcssa241, ptr %3, align 8, !alias.scope !14219, !noalias !14218
  store i64 %.lcssa239, ptr %i.z, align 8, !alias.scope !14219, !noalias !14218
  store i64 %.lcssa242, ptr %i.aa, align 8, !alias.scope !14219, !noalias !14218
  store i64 %.lcssa240, ptr %i.ab, align 8, !alias.scope !14219, !noalias !14218
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types21Time64MicrosecondTypeENCNvNtB2G_5array11rand_time640ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit

.lr.ph.i.i.i.i.i.i.i.split:                       ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bv = load i64, ptr %i.bu, align 8, !alias.scope !14217, !noalias !14218, !noundef !10
  %i.bw = load i64, ptr %i.o, align 8, !alias.scope !14217, !noalias !14218, !noundef !10
  %.promoted = load i64, ptr %3, align 8, !alias.scope !14225, !noalias !14218
  %.promoted89 = load i64, ptr %i.z, align 8, !alias.scope !14225, !noalias !14218
  %.promoted91 = load i64, ptr %i.aa, align 8, !alias.scope !14225, !noalias !14218
  %.promoted93 = load i64, ptr %i.ab, align 8, !alias.scope !14225, !noalias !14218
  br label %bb.f

bb.f:                                             ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types21Time64MicrosecondTypeENCNvNtB15_5array11rand_time640ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5P_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.split
  %.lcssa8494 = phi i64 [ %.promoted93, %.lr.ph.i.i.i.i.i.i.i.split ], [ %i.ck, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types21Time64MicrosecondTypeENCNvNtB15_5array11rand_time640ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5P_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i ]
  %.lcssa8692 = phi i64 [ %.promoted91, %.lr.ph.i.i.i.i.i.i.i.split ], [ %i.ci, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types21Time64MicrosecondTypeENCNvNtB15_5array11rand_time640ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5P_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i ]
  %.lcssa8390 = phi i64 [ %.promoted89, %.lr.ph.i.i.i.i.i.i.i.split ], [ %i.cl, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types21Time64MicrosecondTypeENCNvNtB15_5array11rand_time640ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5P_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i ]
  %.lcssa8588 = phi i64 [ %.promoted, %.lr.ph.i.i.i.i.i.i.i.split ], [ %i.cj, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types21Time64MicrosecondTypeENCNvNtB15_5array11rand_time640ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5P_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i ]
  %i.bx = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.split ], [ %i.cp, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types21Time64MicrosecondTypeENCNvNtB15_5array11rand_time640ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5P_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14220)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14221)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14222)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14223)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %i.by = phi i64 [ %i.ck, %bb.g ], [ %.lcssa8494, %bb.f ]
  %i.bz = phi i64 [ %i.ci, %bb.g ], [ %.lcssa8692, %bb.f ] ; 3 uses
  %i.ca = phi i64 [ %i.cl, %bb.g ], [ %.lcssa8390, %bb.f ] ; 2 uses
  %i.cb = phi i64 [ %i.cj, %bb.g ], [ %.lcssa8588, %bb.f ] ; 4 uses
  %i.cc = add i64 %i.cb, %i.ca                    ; 2 uses
  %i.cd = tail call noundef i64 @llvm.fshl.i64(i64 %i.cc, i64 %i.cc, i64 23)
  %i.ce = add i64 %i.cd, %i.cb
  %i.cf = shl i64 %i.bz, 17
  %i.cg = xor i64 %i.cb, %i.by                    ; 2 uses
  %i.ch = xor i64 %i.ca, %i.bz                    ; 3 uses
  %i.ci = xor i64 %i.cg, %i.bz                    ; 3 uses
  %i.cj = xor i64 %i.ch, %i.cb                    ; 3 uses
  %i.ck = xor i64 %i.cg, %i.cf                    ; 3 uses
  %i.cl = tail call noundef i64 @llvm.fshl.i64(i64 %i.ch, i64 %i.ch, i64 45) ; 3 uses
  %i.cm = zext i64 %i.ce to i128
  %i.cn = mul nuw i128 %i.cm, %i.ae               ; 2 uses
  %i.co = trunc i128 %i.cn to i64
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp ugt i64 %i.bv, %i.co
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.g, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types21Time64MicrosecondTypeENCNvNtB15_5array11rand_time640ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5P_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types21Time64MicrosecondTypeENCNvNtB15_5array11rand_time640ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB5P_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i: ; preds = %bb.g
  %i.cp = add nuw nsw i64 %i.bx, 1                ; 2 uses
  %i.cq = lshr i128 %i.cn, 64
  %i.cr = trunc nuw i128 %i.cq to i64
  %i.cs = add i64 %i.bw, %i.cr
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %.sroa.10.0.i.i.i, i64 %i.bx
  store i64 %i.cs, ptr %i.ct, align 8, !noalias !14224
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.cp, %2
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types21Time64MicrosecondTypeENCNvNtB2G_5array11rand_time640ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split, label %bb.f

bb.h:                                             ; preds = %bb.a
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cv = load i64, ptr %i.cu, align 8, !noundef !10
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.cx = load i32, ptr %i.cw, align 4, !noundef !10 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14226
  %i.cy = icmp eq i64 %2, 0
  br i1 %i.cy, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters4take4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB1m_3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_B2a_INtB2a_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB4i_5types21Time64MicrosecondTypeENCNvNtB2a_5array11rand_time640ENtB2a_14ArrayGenerator8generate0EEEE9from_iterB2c_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cz = add i64 %2, -1                          ; 3 uses
  %i.da = icmp eq i32 %i.cx, 0
  br i1 %i.da, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14227), !noalias !14228
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14229), !noalias !14228
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14230), !noalias !14228
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14231), !noalias !14228
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.dc = load i64, ptr %i.db, align 8, !alias.scope !14232, !noalias !14233, !noundef !10 ; 2 uses
  %i.dd = icmp eq i64 %i.dc, 0
  br i1 %i.dd, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.de = load i64, ptr %3, align 8, !alias.scope !14234, !noalias !14233, !noundef !10 ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.dg = load i64, ptr %i.df, align 8, !alias.scope !14234, !noalias !14233, !noundef !10 ; 2 uses
  %i.dh = add i64 %i.dg, %i.de                    ; 2 uses
  %i.di = tail call noundef i64 @llvm.fshl.i64(i64 %i.dh, i64 %i.dh, i64 23)
  %i.dj = add i64 %i.di, %i.de
  %i.dk = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.dl = load i64, ptr %i.dk, align 8, !alias.scope !14234, !noalias !14233, !noundef !10 ; 3 uses
  %i.dm = shl i64 %i.dl, 17
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.do = load i64, ptr %i.dn, align 8, !alias.scope !14234, !noalias !14233, !noundef !10
  %i.dp = xor i64 %i.do, %i.de                    ; 2 uses
  %i.dq = xor i64 %i.dl, %i.dg                    ; 3 uses
  %i.dr = xor i64 %i.dp, %i.dl
  store i64 %i.dr, ptr %i.dk, align 8, !alias.scope !14234, !noalias !14233
  %i.ds = xor i64 %i.dq, %i.de
  store i64 %i.ds, ptr %3, align 8, !alias.scope !14234, !noalias !14233
  %i.dt = xor i64 %i.dp, %i.dm
  store i64 %i.dt, ptr %i.dn, align 8, !alias.scope !14234, !noalias !14233
  %i.du = tail call noundef i64 @llvm.fshl.i64(i64 %i.dq, i64 %i.dq, i64 45)
  store i64 %i.du, ptr %i.df, align 8, !alias.scope !14234, !noalias !14233
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.dw = load i64, ptr %i.dv, align 8, !alias.scope !14232, !noalias !14233, !noundef !10
  %i.dx = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ea = zext i64 %i.dc to i128
  %.promoted.i.i.i.i.i.i.i = load i64, ptr %3, align 8, !alias.scope !14235, !noalias !14233
  %.promoted2.i.i.i.i.i.i.i = load i64, ptr %i.dx, align 8, !alias.scope !14235, !noalias !14233
  %.promoted4.i.i.i.i.i.i.i = load i64, ptr %i.dy, align 8, !alias.scope !14235, !noalias !14233
  %.promoted6.i.i.i.i.i.i.i = load i64, ptr %i.dz, align 8, !alias.scope !14235, !noalias !14233
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %bb.l
  %i.eb = phi i64 [ %i.en, %bb.m ], [ %.promoted6.i.i.i.i.i.i.i, %bb.l ]
  %i.ec = phi i64 [ %i.el, %bb.m ], [ %.promoted4.i.i.i.i.i.i.i, %bb.l ] ; 3 uses
  %i.ed = phi i64 [ %i.eo, %bb.m ], [ %.promoted2.i.i.i.i.i.i.i, %bb.l ] ; 2 uses
  %i.ee = phi i64 [ %i.em, %bb.m ], [ %.promoted.i.i.i.i.i.i.i, %bb.l ] ; 4 uses
  %i.ef = add i64 %i.ee, %i.ed                    ; 2 uses
  %i.eg = tail call noundef i64 @llvm.fshl.i64(i64 %i.ef, i64 %i.ef, i64 23)
  %i.eh = add i64 %i.eg, %i.ee
  %i.ei = shl i64 %i.ec, 17
  %i.ej = xor i64 %i.ee, %i.eb                    ; 2 uses
  %i.ek = xor i64 %i.ed, %i.ec                    ; 3 uses
  %i.el = xor i64 %i.ej, %i.ec                    ; 2 uses
  %i.em = xor i64 %i.ek, %i.ee                    ; 2 uses
  %i.en = xor i64 %i.ej, %i.ei                    ; 2 uses
  %i.eo = tail call noundef i64 @llvm.fshl.i64(i64 %i.ek, i64 %i.ek, i64 45) ; 2 uses
  %i.ep = zext i64 %i.eh to i128
  %i.eq = mul nuw i128 %i.ep, %i.ea               ; 2 uses
  %i.er = trunc i128 %i.eq to i64
  %.not.i.i.i.i.i.i.i = icmp ugt i64 %i.dw, %i.er
  br i1 %.not.i.i.i.i.i.i.i, label %bb.m, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i64 %i.em, ptr %3, align 8, !alias.scope !14235, !noalias !14233
  store i64 %i.eo, ptr %i.dx, align 8, !alias.scope !14235, !noalias !14233
  store i64 %i.el, ptr %i.dy, align 8, !alias.scope !14235, !noalias !14233
  store i64 %i.en, ptr %i.dz, align 8, !alias.scope !14235, !noalias !14233
  %i.es = lshr i128 %i.eq, 64
  %i.et = trunc nuw i128 %i.es to i64
  %i.eu = load i64, ptr %i.o, align 8, !alias.scope !14232, !noalias !14233, !noundef !10
  %i.ev = add i64 %i.eu, %i.et
  br label %bb.o

bb.o:                                             ; preds = %bb.i, %bb.n, %bb.k
  %.sroa.7.0 = phi i64 [ 1, %bb.k ], [ 1, %bb.n ], [ 0, %bb.i ] ; 3 uses
  %.sroa.22.0.copyload.i.in.i = phi i32 [ %i.q, %bb.k ], [ %i.q, %bb.n ], [ %i.cx, %bb.i ]
  %.sroa.15.0.copyload.i.i = phi i64 [ %i.dj, %bb.k ], [ %i.ev, %bb.n ], [ %i.cv, %bb.i ] ; 2 uses
  %.sroa.22.0.copyload.i.i = add i32 %.sroa.22.0.copyload.i.in.i, -1 ; 2 uses
  %i.ew = icmp eq i64 %i.cz, 0                    ; 2 uses
  br i1 %i.ew, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB6_3map3MapINtNtNtBa_3ops5range5RangeyENCNvXsa_B10_INtB10_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB36_5types21Time64MicrosecondTypeENCNvNtB10_5array11rand_time640ENtB10_14ArrayGenerator8generate0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB12_.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %spec.select.i.i.i.i.i.i66 = sub nuw i64 %2, %.sroa.7.0
end_hunk_3
begin_hunk_4_@_RNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB5_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB14_5types21Time64MicrosecondTypeENCNvNtB5_5array11rand_time640ENtB5_14ArrayGenerator8generateB7_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @_RNvMs3_NtCs56ggtDZRYpd_10arrow_data4dataNtB5_16ArrayDataBuilder5build(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(none) dereferenceable(136) %i.l, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(184) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.ky = load i64, ptr %i.l, align 8, !range !17, !noundef !10 ; 2 uses
  %i.kz = icmp eq i64 %i.ky, -1
  %i.la = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.66, ptr noundef nonnull align 8 dereferenceable(32) %i.la, i64 32, i1 false)
  br i1 %i.kz, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.66, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.66)
  br label %bb.aw

bb.av:                                            ; preds = %bb.at
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %.sroa.8.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.8.0..sroa_idx8, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.518.0..sroa_idx, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  store i64 %i.ky, ptr %i.g, align 8
  %.sroa.66.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.66.0..sroa_idx7, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.66, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.66)
  %i.lb = call { ptr, ptr } @_RNvNtCs4ytUTZt2Gw9_11arrow_array5array10make_array(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(136) %i.g) ; 2 uses
  %i.lc = extractvalue { ptr, ptr } %i.lb, 0
  %i.ld = extractvalue { ptr, ptr } %i.lb, 1
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.lc, ptr %i.le, align 8
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ld, ptr %i.lf, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.aw

bb.aw:                                            ; preds = %bb.au, %bb.az, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  ret void

bb.ax:                                            ; preds = %_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types21Time64MicrosecondTypeENtB7_5Array9into_dataCs342JT7D9NXi_13lance_datagen.exit
  %i.lg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs56ggtDZRYpd_10arrow_data4data16ArrayDataBuilderECs342JT7D9NXi_13lance_datagen(ptr noalias noundef align 8 dereferenceable(184) %i.j) #38
          to label %common.resume unwind label %bb.ay

bb.ay:                                            ; preds = %bb.ba, %bb.ax
  %i.lh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.az:                                            ; preds = %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ku, ptr noundef nonnull align 8 dereferenceable(112) %i.f, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ku, ptr %i.li, align 8
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @602, ptr %i.lj, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.aw

bb.ba:                                            ; preds = %bb.an
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBI_5types21Time64MicrosecondTypeEECs342JT7D9NXi_13lance_datagen(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.n) #38
          to label %common.resume unwind label %bb.ay

bb.bb:                                            ; preds = %bb.ak
  %i.lk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ll = icmp eq i64 %.sroa.035.0157, 0
  br i1 %i.ll, label %common.resume, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.lm = shl nuw i64 %.sroa.035.0157, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.837.0155) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.837.0155, i64 noundef %i.lm, i64 noundef range(i64 1, -9223372036854775807) 8) #36
  br label %common.resume
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB5_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB14_5types21Time64MicrosecondTypeENCNvNtB5_5array11rand_time640ENtB5_14ArrayGenerator9data_typeB7_(ptr noalias noundef readonly align 8 captures(ret: address, read_provenance) dereferenceable(80) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { i64, i64 } @_RNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB5_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB14_5types22DurationNanosecondTypeENCINvNtB5_5array4randB28_E0ENtB5_14ArrayGenerator18element_size_bytesB7_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #10 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !25, !noundef !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = insertvalue { i64, i64 } poison, i64 %i.a, 0
  %i.e = insertvalue { i64, i64 } %i.d, i64 %i.c, 1
  ret { i64, i64 } %i.e
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB5_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB14_5types22DurationNanosecondTypeENCINvNtB5_5array4randB28_E0ENtB5_14ArrayGenerator8generateB7_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %1, i64 noundef %2, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [136 x i8], align 8               ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.f = alloca [112 x i8], align 8               ; 6 uses
  %i.g = alloca [136 x i8], align 8               ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [96 x i8], align 8                ; 4 uses
  %i.j = alloca [184 x i8], align 8               ; 14 uses
  %i.k = alloca [184 x i8], align 8               ; 4 uses
  %i.l = alloca [136 x i8], align 8               ; 7 uses
  %.sroa.66 = alloca [32 x i8], align 8           ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [96 x i8], align 8                ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !noundef !10 ; 9 uses
  %i.q = icmp ugt i32 %i.p, 1
  br i1 %i.q, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = shl i64 %2, 3                            ; 4 uses
  %i.s = icmp ugt i64 %2, 2305843009213693951
  %.not.i.i.i.i = icmp ugt i64 %i.r, 9223372036854775800
  %or.cond.i.i.i.i = or i1 %i.s, %.not.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %bb.e, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.t = icmp eq i64 %i.r, 0
  br i1 %i.t, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !14345
  %i.u = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.r, i64 noundef range(i64 1, 9) 8) #36, !noalias !14345 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.e, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i

bb.e:                                             ; preds = %bb.d, %bb.b
  %.sroa.4.0.ph.i.i.i = phi i64 [ 8, %bb.d ], [ 0, %bb.b ]
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.r) #37, !noalias !14346
  unreachable

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i: ; preds = %bb.d, %bb.c
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.c ], [ %i.u, %bb.d ] ; 6 uses
  %.sroa.4.0.i.i.i = phi i64 [ 0, %bb.c ], [ %2, %bb.d ] ; 4 uses
  %i.w = icmp samesign ule i64 %2, %.sroa.4.0.i.i.i
  tail call void @llvm.assume(i1 %i.w)
  %.not69 = icmp eq i64 %2, 0
  br i1 %.not69, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types22DurationNanosecondTypeENCINvNtB2G_5array4randB4K_E0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.thread, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %.promoted = load i64, ptr %3, align 8, !alias.scope !14347, !noalias !14348 ; 2 uses
  %.promoted71 = load i64, ptr %i.x, align 8, !alias.scope !14347, !noalias !14348 ; 2 uses
  %.promoted73 = load i64, ptr %i.y, align 8, !alias.scope !14347, !noalias !14348 ; 2 uses
  %.promoted75 = load i64, ptr %i.z, align 8, !alias.scope !14347, !noalias !14348 ; 2 uses
  %xtraiter = and i64 %2, 1
  %i.aa = icmp eq i64 %2, 1
  br i1 %i.aa, label %.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.new

.lr.ph.i.i.i.i.i.i.i.new:                         ; preds = %.lr.ph.i.i.i.i.i.i.i
  %unroll_iter = and i64 %2, 2305843009213693950
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.i.i.i.i.i.i.new
  %i.ab = phi i64 [ %.promoted75, %.lr.ph.i.i.i.i.i.i.i.new ], [ %i.ba, %bb.f ]
  %i.ac = phi i64 [ %.promoted73, %.lr.ph.i.i.i.i.i.i.i.new ], [ %i.ay, %bb.f ] ; 3 uses
  %i.ad = phi i64 [ %.promoted71, %.lr.ph.i.i.i.i.i.i.i.new ], [ %i.bb, %bb.f ] ; 2 uses
  %i.ae = phi i64 [ %.promoted, %.lr.ph.i.i.i.i.i.i.i.new ], [ %i.az, %bb.f ] ; 4 uses
  %i.af = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.new ], [ %i.ar, %bb.f ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.new ], [ %niter.next.1, %bb.f ]
  %i.ag = add i64 %i.ad, %i.ae                    ; 2 uses
  %i.ah = tail call noundef i64 @llvm.fshl.i64(i64 %i.ag, i64 %i.ag, i64 23)
  %i.ai = add i64 %i.ah, %i.ae
  %i.aj = shl i64 %i.ac, 17
  %i.ak = xor i64 %i.ab, %i.ae                    ; 2 uses
  %i.al = xor i64 %i.ac, %i.ad                    ; 3 uses
  %i.am = xor i64 %i.ak, %i.ac                    ; 3 uses
  %i.an = xor i64 %i.al, %i.ae                    ; 4 uses
  %i.ao = xor i64 %i.ak, %i.aj
  %i.ap = tail call noundef i64 @llvm.fshl.i64(i64 %i.al, i64 %i.al, i64 45) ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.10.0.i.i.i, i64 %i.af
  store i64 %i.ai, ptr %i.aq, align 8, !noalias !14349
  %i.ar = add nuw nsw i64 %i.af, 2                ; 2 uses
  %i.as = add i64 %i.ap, %i.an                    ; 2 uses
  %i.at = tail call noundef i64 @llvm.fshl.i64(i64 %i.as, i64 %i.as, i64 23)
  %i.au = add i64 %i.at, %i.an
  %i.av = shl i64 %i.am, 17
  %i.aw = xor i64 %i.ao, %i.an                    ; 2 uses
  %i.ax = xor i64 %i.am, %i.ap                    ; 3 uses
  %i.ay = xor i64 %i.aw, %i.am                    ; 3 uses
  %i.az = xor i64 %i.ax, %i.an                    ; 3 uses
  %i.ba = xor i64 %i.aw, %i.av                    ; 3 uses
  %i.bb = tail call noundef i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 45) ; 3 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.10.0.i.i.i, i64 %i.af
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store i64 %i.au, ptr %i.bd, align 8, !noalias !14349
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types22DurationNanosecondTypeENCINvNtB2G_5array4randB4K_E0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.unr-lcssa, label %bb.f

bb.g:                                             ; preds = %bb.a
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bf = load i64, ptr %i.be, align 8, !noundef !10
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.bh = load i32, ptr %i.bg, align 4, !noundef !10 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14350
  %i.bi = icmp eq i64 %2, 0
  br i1 %i.bi, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters4take4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB1m_3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_B2a_INtB2a_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB4i_5types22DurationNanosecondTypeENCINvNtB2a_5array4randB5m_E0ENtB2a_14ArrayGenerator8generate0EEEE9from_iterB2c_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bj = add i64 %2, -1                          ; 3 uses
  %i.bk = icmp eq i32 %i.bh, 0
  br i1 %i.bk, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bl = load i64, ptr %3, align 8, !alias.scope !14351, !noalias !14352, !noundef !10 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !alias.scope !14351, !noalias !14352, !noundef !10 ; 2 uses
  %i.bo = add i64 %i.bn, %i.bl                    ; 2 uses
  %i.bp = tail call noundef i64 @llvm.fshl.i64(i64 %i.bo, i64 %i.bo, i64 23)
  %i.bq = add i64 %i.bp, %i.bl
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !alias.scope !14351, !noalias !14352, !noundef !10 ; 3 uses
  %i.bt = shl i64 %i.bs, 17
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !alias.scope !14351, !noalias !14352, !noundef !10
  %i.bw = xor i64 %i.bv, %i.bl                    ; 2 uses
  %i.bx = xor i64 %i.bs, %i.bn                    ; 3 uses
  %i.by = xor i64 %i.bw, %i.bs
  store i64 %i.by, ptr %i.br, align 8, !alias.scope !14351, !noalias !14352
  %i.bz = xor i64 %i.bx, %i.bl
  store i64 %i.bz, ptr %3, align 8, !alias.scope !14351, !noalias !14352
  %i.ca = xor i64 %i.bw, %i.bt
  store i64 %i.ca, ptr %i.bu, align 8, !alias.scope !14351, !noalias !14352
  %i.cb = tail call noundef i64 @llvm.fshl.i64(i64 %i.bx, i64 %i.bx, i64 45)
  store i64 %i.cb, ptr %i.bm, align 8, !alias.scope !14351, !noalias !14352
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.sroa.542.0 = phi i64 [ 1, %bb.i ], [ 0, %bb.h ] ; 2 uses
  %.sroa.8.0.copyload.in.i.i = phi i32 [ %i.p, %bb.i ], [ %i.bh, %bb.h ]
  %.sroa.6.0.copyload.i.i = phi i64 [ %i.bq, %bb.i ], [ %i.bf, %bb.h ] ; 2 uses
  %i.cc = icmp eq i64 %i.bj, 0                    ; 2 uses
  br i1 %i.cc, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB6_3map3MapINtNtNtBa_3ops5range5RangeyENCNvXsa_B10_INtB10_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB36_5types22DurationNanosecondTypeENCINvNtB10_5array4randB4a_E0ENtB10_14ArrayGenerator8generate0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB12_.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %spec.select.i.i.i.i.i.i68 = sub nuw i64 %2, %.sroa.542.0
  %i.cd = zext i32 %i.p to i64
  %i.ce = mul i64 %spec.select.i.i.i.i.i.i68, %i.cd
  %.sroa.0.0.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.bj, i64 %i.ce)
  %i.cf = tail call i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i.i.i, i64 3)
  %i.cg = add nuw i64 %i.cf, 1
  br label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB6_3map3MapINtNtNtBa_3ops5range5RangeyENCNvXsa_B10_INtB10_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB36_5types22DurationNanosecondTypeENCINvNtB10_5array4randB4a_E0ENtB10_14ArrayGenerator8generate0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB12_.exit.i.i

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB6_3map3MapINtNtNtBa_3ops5range5RangeyENCNvXsa_B10_INtB10_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB36_5types22DurationNanosecondTypeENCINvNtB10_5array4randB4a_E0ENtB10_14ArrayGenerator8generate0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB12_.exit.i.i: ; preds = %bb.k, %bb.j
  %.sroa.0.0.i.sink.i.i.i = phi i64 [ %i.cg, %bb.k ], [ 4, %bb.j ] ; 4 uses
  %i.ch = shl i64 %.sroa.0.0.i.sink.i.i.i, 3      ; 3 uses
  %i.ci = icmp ugt i64 %.sroa.0.0.i.sink.i.i.i, 2305843009213693951
  %.not.i.i.i.i26 = icmp ugt i64 %i.ch, 9223372036854775800
  %or.cond.i.i.i.i27 = or i1 %i.ci, %.not.i.i.i.i26
  br i1 %or.cond.i.i.i.i27, label %bb.m, label %bb.l, !prof !7

bb.l:                                             ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB6_3map3MapINtNtNtBa_3ops5range5RangeyENCNvXsa_B10_INtB10_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB36_5types22DurationNanosecondTypeENCINvNtB10_5array4randB4a_E0ENtB10_14ArrayGenerator8generate0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB12_.exit.i.i
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !14353
  %i.cj = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.ch, i64 noundef range(i64 1, 9) 8) #36, !noalias !14353 ; 5 uses
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %bb.m, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs342JT7D9NXi_13lance_datagen.exit.i.i

bb.m:                                             ; preds = %bb.l, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB6_3map3MapINtNtNtBa_3ops5range5RangeyENCNvXsa_B10_INtB10_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB36_5types22DurationNanosecondTypeENCINvNtB10_5array4randB4a_E0ENtB10_14ArrayGenerator8generate0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB12_.exit.i.i
  %.sroa.4.0.ph.i.i.i31 = phi i64 [ 8, %bb.l ], [ 0, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB6_3map3MapINtNtNtBa_3ops5range5RangeyENCNvXsa_B10_INtB10_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB36_5types22DurationNanosecondTypeENCINvNtB10_5array4randB4a_E0ENtB10_14ArrayGenerator8generate0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB12_.exit.i.i ]
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i31, i64 %i.ch) #37, !noalias !14350
  unreachable

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs342JT7D9NXi_13lance_datagen.exit.i.i: ; preds = %bb.l
  store i64 %.sroa.6.0.copyload.i.i, ptr %i.cj, align 8, !noalias !14350
  store i64 %.sroa.0.0.i.sink.i.i.i, ptr %i.a, align 8, !noalias !14350
  %.sroa.4.0..sroa_idx.i.i28 = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  store ptr %i.cj, ptr %.sroa.4.0..sroa_idx.i.i28, align 8, !noalias !14350
  %.sroa.6.0..sroa_idx.i.i29 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i29, align 8, !noalias !14350
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14354)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14355)
  br i1 %i.cc, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters4take4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB1m_3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_B2a_INtB2a_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB4i_5types22DurationNanosecondTypeENCINvNtB2a_5array4randB5m_E0ENtB2a_14ArrayGenerator8generate0EEEE9from_iterB2c_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs342JT7D9NXi_13lance_datagen.exit.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.co = zext i32 %i.p to i64
  br label %bb.n

bb.n:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i30, %.lr.ph.i.i.i.i
  %i.cp = phi ptr [ %i.cj, %.lr.ph.i.i.i.i ], [ %i.dt, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i30 ]
  %i.cq = phi i64 [ 1, %.lr.ph.i.i.i.i ], [ %i.dv, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i30 ] ; 6 uses
  %i.cr = phi i64 [ %.sroa.542.0, %.lr.ph.i.i.i.i ], [ %i.dm, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i30 ] ; 3 uses
  %.pre.i.i12.i.i.i.i = phi i64 [ %.sroa.6.0.copyload.i.i, %.lr.ph.i.i.i.i ], [ %.pre.i.i11.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i30 ]
  %.in.i.i = phi i32 [ %.sroa.8.0.copyload.in.i.i, %.lr.ph.i.i.i.i ], [ %.in.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i30 ]
  %i.cs = phi i64 [ %i.bj, %.lr.ph.i.i.i.i ], [ %i.cu, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i30 ]
  %i.ct = add i32 %.in.i.i, -1                    ; 2 uses
  %i.cu = add i64 %i.cs, -1                       ; 4 uses
  %i.cv = icmp eq i32 %i.ct, 0
  br i1 %i.cv, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.cw = icmp ult i64 %i.cr, %2
  br i1 %i.cw, label %bb.p, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecxEINtB2_10SpecExtendxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters4take4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB1h_3map3MapINtNtNtB1l_3ops5range5RangeyENCNvXsa_B25_INtB25_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB4d_5types22DurationNanosecondTypeENCINvNtB25_5array4randB5h_E0ENtB25_14ArrayGenerator8generate0EEEE11spec_extendB27_.exit.i.i.loopexit

bb.p:                                             ; preds = %bb.o
  %i.cx = add nuw i64 %i.cr, 1
  %i.cy = load i64, ptr %3, align 8, !alias.scope !14356, !noalias !14357, !noundef !10 ; 4 uses
  %i.cz = load i64, ptr %i.cl, align 8, !alias.scope !14356, !noalias !14357, !noundef !10 ; 2 uses
  %i.da = add i64 %i.cz, %i.cy                    ; 2 uses
  %i.db = tail call noundef i64 @llvm.fshl.i64(i64 %i.da, i64 %i.da, i64 23)
  %i.dc = add i64 %i.db, %i.cy
  %i.dd = load i64, ptr %i.cm, align 8, !alias.scope !14356, !noalias !14357, !noundef !10 ; 3 uses
  %i.de = shl i64 %i.dd, 17
  %i.df = load i64, ptr %i.cn, align 8, !alias.scope !14356, !noalias !14357, !noundef !10
  %i.dg = xor i64 %i.df, %i.cy                    ; 2 uses
  %i.dh = xor i64 %i.dd, %i.cz                    ; 3 uses
  %i.di = xor i64 %i.dg, %i.dd
  store i64 %i.di, ptr %i.cm, align 8, !alias.scope !14356, !noalias !14357
  %i.dj = xor i64 %i.dh, %i.cy
  store i64 %i.dj, ptr %3, align 8, !alias.scope !14356, !noalias !14357
  %i.dk = xor i64 %i.dg, %i.de
  store i64 %i.dk, ptr %i.cn, align 8, !alias.scope !14356, !noalias !14357
  %i.dl = tail call noundef i64 @llvm.fshl.i64(i64 %i.dh, i64 %i.dh, i64 45)
  store i64 %i.dl, ptr %i.cl, align 8, !alias.scope !14356, !noalias !14357
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n
  %i.dm = phi i64 [ %i.cx, %bb.p ], [ %i.cr, %bb.n ] ; 2 uses
  %.pre.i.i11.i.i.i.i = phi i64 [ %i.dc, %bb.p ], [ %.pre.i.i12.i.i.i.i, %bb.n ] ; 2 uses
  %.in.i.i.i.i = phi i32 [ %i.p, %bb.p ], [ %i.ct, %bb.n ]
  %i.dn = icmp samesign ult i64 %i.cq, 1152921504606846976
  tail call void @llvm.assume(i1 %i.dn)
  %i.do = load i64, ptr %i.a, align 8, !range !12, !alias.scope !14358, !noalias !14350, !noundef !10
  %i.dp = icmp eq i64 %i.cq, %i.do
  br i1 %i.dp, label %bb.r, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i30

bb.r:                                             ; preds = %bb.q
  %i.dq = icmp eq i64 %i.cu, 0
  br i1 %i.dq, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB6_3map3MapINtNtNtBa_3ops5range5RangeyENCNvXsa_B10_INtB10_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB36_5types22DurationNanosecondTypeENCINvNtB10_5array4randB4a_E0ENtB10_14ArrayGenerator8generate0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB12_.exit.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %spec.select.i.i.i.i.i.i.i.i = tail call i64 @llvm.usub.sat.i64(i64 %2, i64 %i.dm)
  %i.dr = mul i64 %spec.select.i.i.i.i.i.i.i.i, %i.co
  %.sroa.0.0.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.cu, i64 %i.dr)
  %i.ds = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.0.0.i.i.i.i.i.i, i64 1)
  br label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB6_3map3MapINtNtNtBa_3ops5range5RangeyENCNvXsa_B10_INtB10_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB36_5types22DurationNanosecondTypeENCINvNtB10_5array4randB4a_E0ENtB10_14ArrayGenerator8generate0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB12_.exit.i.i.i.i

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB6_3map3MapINtNtNtBa_3ops5range5RangeyENCNvXsa_B10_INtB10_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB36_5types22DurationNanosecondTypeENCINvNtB10_5array4randB4a_E0ENtB10_14ArrayGenerator8generate0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB12_.exit.i.i.i.i: ; preds = %bb.s, %bb.r
  %.sroa.0.0.i.sink.i.i.i.i.i = phi i64 [ %i.ds, %bb.s ], [ 1, %bb.r ]
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs342JT7D9NXi_13lance_datagen(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.cq, i64 noundef %.sroa.0.0.i.sink.i.i.i.i.i, i64 noundef 8, i64 noundef 8)
          to label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB6_3map3MapINtNtNtBa_3ops5range5RangeyENCNvXsa_B10_INtB10_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB36_5types22DurationNanosecondTypeENCINvNtB10_5array4randB4a_E0ENtB10_14ArrayGenerator8generate0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB12_.exit.i.i._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i_crit_edge.i.i unwind label %bb.t, !noalias !14350

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB6_3map3MapINtNtNtBa_3ops5range5RangeyENCNvXsa_B10_INtB10_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB36_5types22DurationNanosecondTypeENCINvNtB10_5array4randB4a_E0ENtB10_14ArrayGenerator8generate0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB12_.exit.i.i._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i_crit_edge.i.i: ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB6_3map3MapINtNtNtBa_3ops5range5RangeyENCNvXsa_B10_INtB10_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB36_5types22DurationNanosecondTypeENCINvNtB10_5array4randB4a_E0ENtB10_14ArrayGenerator8generate0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB12_.exit.i.i.i.i
  %.pre.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i28, align 8, !alias.scope !14358, !noalias !14350
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i30

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i30: ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB6_3map3MapINtNtNtBa_3ops5range5RangeyENCNvXsa_B10_INtB10_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB36_5types22DurationNanosecondTypeENCINvNtB10_5array4randB4a_E0ENtB10_14ArrayGenerator8generate0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB12_.exit.i.i._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i_crit_edge.i.i, %bb.q
  %i.dt = phi ptr [ %.pre.i.i, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB6_3map3MapINtNtNtBa_3ops5range5RangeyENCNvXsa_B10_INtB10_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB36_5types22DurationNanosecondTypeENCINvNtB10_5array4randB4a_E0ENtB10_14ArrayGenerator8generate0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB12_.exit.i.i._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i_crit_edge.i.i ], [ %i.cp, %bb.q ] ; 2 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.cq
  store i64 %.pre.i.i11.i.i.i.i, ptr %i.du, align 8, !noalias !14359
  %i.dv = add nuw nsw i64 %i.cq, 1                ; 3 uses
  store i64 %i.dv, ptr %.sroa.6.0..sroa_idx.i.i29, align 8, !alias.scope !14358, !noalias !14350
  %i.dw = icmp eq i64 %i.cu, 0
  br i1 %i.dw, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecxEINtB2_10SpecExtendxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters4take4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB1h_3map3MapINtNtNtB1l_3ops5range5RangeyENCNvXsa_B25_INtB25_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB4d_5types22DurationNanosecondTypeENCINvNtB25_5array4randB5h_E0ENtB25_14ArrayGenerator8generate0EEEE11spec_extendB27_.exit.i.i.loopexit, label %bb.n

bb.t:                                             ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB6_3map3MapINtNtNtBa_3ops5range5RangeyENCNvXsa_B10_INtB10_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB36_5types22DurationNanosecondTypeENCINvNtB10_5array4randB4a_E0ENtB10_14ArrayGenerator8generate0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB12_.exit.i.i.i.i
  %i.dx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i.i = load i64, ptr %i.a, align 8, !noalias !14350 ; 2 uses
  %i.dy = icmp eq i64 %.val.i.i, 0
  br i1 %i.dy, label %common.resume, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.val7.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i28, align 8, !noalias !14350, !nonnull !10, !noundef !10
  %i.dz = shl nuw i64 %.val.i.i, 3
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i.i, i64 noundef %i.dz, i64 noundef range(i64 1, -9223372036854775807) 8) #36, !noalias !14350
  br label %common.resume

_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecxEINtB2_10SpecExtendxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters4take4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB1h_3map3MapINtNtNtB1l_3ops5range5RangeyENCNvXsa_B25_INtB25_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB4d_5types22DurationNanosecondTypeENCINvNtB25_5array4randB5h_E0ENtB25_14ArrayGenerator8generate0EEEE11spec_extendB27_.exit.i.i.loopexit: ; preds = %bb.o, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i30
  %.sroa.12.0.copyload4083 = phi i64 [ %i.cq, %bb.o ], [ %i.dv, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i30 ]
  %.sroa.034.0.copyload35.pre = load i64, ptr %i.a, align 8, !noalias !14360
  %.sroa.836.0.copyload38.pre = load ptr, ptr %.sroa.4.0..sroa_idx.i.i28, align 8, !noalias !14360
  %.pre.pre.pre = load i32, ptr %i.o, align 8
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters4take4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB1m_3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_B2a_INtB2a_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB4i_5types22DurationNanosecondTypeENCINvNtB2a_5array4randB5m_E0ENtB2a_14ArrayGenerator8generate0EEEE9from_iterB2c_.exit

common.resume:                                    ; preds = %bb.an, %bb.ao, %bb.am, %bb.ad, %bb.aj, %bb.t, %bb.u
  %common.resume.op = phi { ptr, i32 } [ %i.dx, %bb.t ], [ %i.dx, %bb.u ], [ %i.gh, %bb.ao ], [ %i.gd, %bb.aj ], [ %i.gh, %bb.an ], [ %i.ft, %bb.ad ], [ %lpad.thr_comm.split-lp, %bb.am ]
  resume { ptr, i32 } %common.resume.op

_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters4take4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB1m_3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_B2a_INtB2a_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB4i_5types22DurationNanosecondTypeENCINvNtB2a_5array4randB5m_E0ENtB2a_14ArrayGenerator8generate0EEEE9from_iterB2c_.exit: ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs342JT7D9NXi_13lance_datagen.exit.i.i, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecxEINtB2_10SpecExtendxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters4take4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB1h_3map3MapINtNtNtB1l_3ops5range5RangeyENCNvXsa_B25_INtB25_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB4d_5types22DurationNanosecondTypeENCINvNtB25_5array4randB5h_E0ENtB25_14ArrayGenerator8generate0EEEE11spec_extendB27_.exit.i.i.loopexit, %bb.g
  %.pre = phi i32 [ %i.p, %bb.g ], [ %.pre.pre.pre, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecxEINtB2_10SpecExtendxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters4take4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB1h_3map3MapINtNtNtB1l_3ops5range5RangeyENCNvXsa_B25_INtB25_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB4d_5types22DurationNanosecondTypeENCINvNtB25_5array4randB5h_E0ENtB25_14ArrayGenerator8generate0EEEE11spec_extendB27_.exit.i.i.loopexit ], [ %i.p, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs342JT7D9NXi_13lance_datagen.exit.i.i ]
  %.sroa.12.1 = phi i64 [ 0, %bb.g ], [ %.sroa.12.0.copyload4083, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecxEINtB2_10SpecExtendxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters4take4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB1h_3map3MapINtNtNtB1l_3ops5range5RangeyENCNvXsa_B25_INtB25_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB4d_5types22DurationNanosecondTypeENCINvNtB25_5array4randB5h_E0ENtB25_14ArrayGenerator8generate0EEEE11spec_extendB27_.exit.i.i.loopexit ], [ 1, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs342JT7D9NXi_13lance_datagen.exit.i.i ]
  %.sroa.836.1 = phi ptr [ inttoptr (i64 8 to ptr), %bb.g ], [ %.sroa.836.0.copyload38.pre, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecxEINtB2_10SpecExtendxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters4take4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB1h_3map3MapINtNtNtB1l_3ops5range5RangeyENCNvXsa_B25_INtB25_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB4d_5types22DurationNanosecondTypeENCINvNtB25_5array4randB5h_E0ENtB25_14ArrayGenerator8generate0EEEE11spec_extendB27_.exit.i.i.loopexit ], [ %i.cj, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs342JT7D9NXi_13lance_datagen.exit.i.i ]
  %.sroa.034.1 = phi i64 [ 0, %bb.g ], [ %.sroa.034.0.copyload35.pre, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecxEINtB2_10SpecExtendxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters4take4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB1h_3map3MapINtNtNtB1l_3ops5range5RangeyENCNvXsa_B25_INtB25_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB4d_5types22DurationNanosecondTypeENCINvNtB25_5array4randB5h_E0ENtB25_14ArrayGenerator8generate0EEEE11spec_extendB27_.exit.i.i.loopexit ], [ %.sroa.0.0.i.sink.i.i.i, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs342JT7D9NXi_13lance_datagen.exit.i.i ]
end_hunk_4
begin_hunk_5_@_RNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB5_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB14_5types22DurationNanosecondTypeENCINvNtB5_5array4randB28_E0ENtB5_14ArrayGenerator8generateB7_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @_RNvMs3_NtCs56ggtDZRYpd_10arrow_data4dataNtB5_16ArrayDataBuilder5build(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(none) dereferenceable(136) %i.l, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(184) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.fv = load i64, ptr %i.l, align 8, !range !17, !noundef !10 ; 2 uses
  %i.fw = icmp eq i64 %i.fv, -1
  %i.fx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.66, ptr noundef nonnull align 8 dereferenceable(32) %i.fx, i64 32, i1 false)
  br i1 %i.fw, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.66, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.66)
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %.sroa.8.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.8.0..sroa_idx8, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.518.0..sroa_idx, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  store i64 %i.fv, ptr %i.g, align 8
  %.sroa.66.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.66.0..sroa_idx7, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.66, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.66)
  %i.fy = call { ptr, ptr } @_RNvNtCs4ytUTZt2Gw9_11arrow_array5array10make_array(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(136) %i.g) ; 2 uses
  %i.fz = extractvalue { ptr, ptr } %i.fy, 0
  %i.ga = extractvalue { ptr, ptr } %i.fy, 1
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fz, ptr %i.gb, align 8
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ga, ptr %i.gc, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.al, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  ret void

bb.aj:                                            ; preds = %_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types22DurationNanosecondTypeENtB7_5Array9into_dataCs342JT7D9NXi_13lance_datagen.exit
  %i.gd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs56ggtDZRYpd_10arrow_data4data16ArrayDataBuilderECs342JT7D9NXi_13lance_datagen(ptr noalias noundef align 8 dereferenceable(184) %i.j) #38
          to label %common.resume unwind label %bb.ak

bb.ak:                                            ; preds = %bb.am, %bb.aj
  %i.ge = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.al:                                            ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.fr, ptr noundef nonnull align 8 dereferenceable(112) %i.f, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fr, ptr %i.gf, align 8
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @604, ptr %i.gg, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.ai

bb.am:                                            ; preds = %bb.z
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBI_5types22DurationNanosecondTypeEECs342JT7D9NXi_13lance_datagen(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.n) #38
          to label %common.resume unwind label %bb.ak

bb.an:                                            ; preds = %bb.w
  %i.gh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gi = icmp eq i64 %.sroa.034.0110, 0
  br i1 %i.gi, label %common.resume, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gj = shl nuw i64 %.sroa.034.0110, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.836.0108) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.836.0108, i64 noundef %i.gj, i64 noundef range(i64 1, -9223372036854775807) 8) #36
  br label %common.resume
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB5_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB14_5types22DurationNanosecondTypeENCINvNtB5_5array4randB28_E0ENtB5_14ArrayGenerator9data_typeB7_(ptr noalias noundef readonly align 8 captures(ret: address, read_provenance) dereferenceable(56) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { i64, i64 } @_RNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB5_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB14_5types23DurationMicrosecondTypeENCINvNtB5_5array4randB28_E0ENtB5_14ArrayGenerator18element_size_bytesB7_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #10 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !25, !noundef !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = insertvalue { i64, i64 } poison, i64 %i.a, 0
  %i.e = insertvalue { i64, i64 } %i.d, i64 %i.c, 1
  ret { i64, i64 } %i.e
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB5_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB14_5types23DurationMicrosecondTypeENCINvNtB5_5array4randB28_E0ENtB5_14ArrayGenerator8generateB7_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %1, i64 noundef %2, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [136 x i8], align 8               ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.f = alloca [112 x i8], align 8               ; 6 uses
  %i.g = alloca [136 x i8], align 8               ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [96 x i8], align 8                ; 4 uses
  %i.j = alloca [184 x i8], align 8               ; 14 uses
  %i.k = alloca [184 x i8], align 8               ; 4 uses
  %i.l = alloca [136 x i8], align 8               ; 7 uses
  %.sroa.66 = alloca [32 x i8], align 8           ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [96 x i8], align 8                ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !noundef !10 ; 9 uses
  %i.q = icmp ugt i32 %i.p, 1
  br i1 %i.q, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = shl i64 %2, 3                            ; 4 uses
  %i.s = icmp ugt i64 %2, 2305843009213693951
  %.not.i.i.i.i = icmp ugt i64 %i.r, 9223372036854775800
  %or.cond.i.i.i.i = or i1 %i.s, %.not.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %bb.e, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.t = icmp eq i64 %i.r, 0
  br i1 %i.t, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !14448
  %i.u = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.r, i64 noundef range(i64 1, 9) 8) #36, !noalias !14448 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.e, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i

bb.e:                                             ; preds = %bb.d, %bb.b
  %.sroa.4.0.ph.i.i.i = phi i64 [ 8, %bb.d ], [ 0, %bb.b ]
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.r) #37, !noalias !14449
  unreachable

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i: ; preds = %bb.d, %bb.c
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.c ], [ %i.u, %bb.d ] ; 6 uses
  %.sroa.4.0.i.i.i = phi i64 [ 0, %bb.c ], [ %2, %bb.d ] ; 4 uses
  %i.w = icmp samesign ule i64 %2, %.sroa.4.0.i.i.i
  tail call void @llvm.assume(i1 %i.w)
  %.not69 = icmp eq i64 %2, 0
  br i1 %.not69, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types23DurationMicrosecondTypeENCINvNtB2G_5array4randB4K_E0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.thread, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %.promoted = load i64, ptr %3, align 8, !alias.scope !14450, !noalias !14451 ; 2 uses
  %.promoted71 = load i64, ptr %i.x, align 8, !alias.scope !14450, !noalias !14451 ; 2 uses
  %.promoted73 = load i64, ptr %i.y, align 8, !alias.scope !14450, !noalias !14451 ; 2 uses
  %.promoted75 = load i64, ptr %i.z, align 8, !alias.scope !14450, !noalias !14451 ; 2 uses
  %xtraiter = and i64 %2, 1
  %i.aa = icmp eq i64 %2, 1
  br i1 %i.aa, label %.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.new

.lr.ph.i.i.i.i.i.i.i.new:                         ; preds = %.lr.ph.i.i.i.i.i.i.i
  %unroll_iter = and i64 %2, 2305843009213693950
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.i.i.i.i.i.i.new
  %i.ab = phi i64 [ %.promoted75, %.lr.ph.i.i.i.i.i.i.i.new ], [ %i.ba, %bb.f ]
  %i.ac = phi i64 [ %.promoted73, %.lr.ph.i.i.i.i.i.i.i.new ], [ %i.ay, %bb.f ] ; 3 uses
  %i.ad = phi i64 [ %.promoted71, %.lr.ph.i.i.i.i.i.i.i.new ], [ %i.bb, %bb.f ] ; 2 uses
  %i.ae = phi i64 [ %.promoted, %.lr.ph.i.i.i.i.i.i.i.new ], [ %i.az, %bb.f ] ; 4 uses
  %i.af = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.new ], [ %i.ar, %bb.f ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.new ], [ %niter.next.1, %bb.f ]
  %i.ag = add i64 %i.ad, %i.ae                    ; 2 uses
  %i.ah = tail call noundef i64 @llvm.fshl.i64(i64 %i.ag, i64 %i.ag, i64 23)
  %i.ai = add i64 %i.ah, %i.ae
  %i.aj = shl i64 %i.ac, 17
  %i.ak = xor i64 %i.ab, %i.ae                    ; 2 uses
  %i.al = xor i64 %i.ac, %i.ad                    ; 3 uses
  %i.am = xor i64 %i.ak, %i.ac                    ; 3 uses
  %i.an = xor i64 %i.al, %i.ae                    ; 4 uses
  %i.ao = xor i64 %i.ak, %i.aj
  %i.ap = tail call noundef i64 @llvm.fshl.i64(i64 %i.al, i64 %i.al, i64 45) ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.10.0.i.i.i, i64 %i.af
  store i64 %i.ai, ptr %i.aq, align 8, !noalias !14452
  %i.ar = add nuw nsw i64 %i.af, 2                ; 2 uses
  %i.as = add i64 %i.ap, %i.an                    ; 2 uses
  %i.at = tail call noundef i64 @llvm.fshl.i64(i64 %i.as, i64 %i.as, i64 23)
  %i.au = add i64 %i.at, %i.an
  %i.av = shl i64 %i.am, 17
  %i.aw = xor i64 %i.ao, %i.an                    ; 2 uses
  %i.ax = xor i64 %i.am, %i.ap                    ; 3 uses
  %i.ay = xor i64 %i.aw, %i.am                    ; 3 uses
  %i.az = xor i64 %i.ax, %i.an                    ; 3 uses
  %i.ba = xor i64 %i.aw, %i.av                    ; 3 uses
  %i.bb = tail call noundef i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 45) ; 3 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.10.0.i.i.i, i64 %i.af
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store i64 %i.au, ptr %i.bd, align 8, !noalias !14452
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types23DurationMicrosecondTypeENCINvNtB2G_5array4randB4K_E0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.unr-lcssa, label %bb.f

bb.g:                                             ; preds = %bb.a
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bf = load i64, ptr %i.be, align 8, !noundef !10
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.bh = load i32, ptr %i.bg, align 4, !noundef !10 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14453
  %i.bi = icmp eq i64 %2, 0
  br i1 %i.bi, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters4take4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB1m_3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_B2a_INtB2a_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB4i_5types23DurationMicrosecondTypeENCINvNtB2a_5array4randB5m_E0ENtB2a_14ArrayGenerator8generate0EEEE9from_iterB2c_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bj = add i64 %2, -1                          ; 3 uses
  %i.bk = icmp eq i32 %i.bh, 0
  br i1 %i.bk, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bl = load i64, ptr %3, align 8, !alias.scope !14454, !noalias !14455, !noundef !10 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !alias.scope !14454, !noalias !14455, !noundef !10 ; 2 uses
  %i.bo = add i64 %i.bn, %i.bl                    ; 2 uses
  %i.bp = tail call noundef i64 @llvm.fshl.i64(i64 %i.bo, i64 %i.bo, i64 23)
  %i.bq = add i64 %i.bp, %i.bl
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !alias.scope !14454, !noalias !14455, !noundef !10 ; 3 uses
  %i.bt = shl i64 %i.bs, 17
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !alias.scope !14454, !noalias !14455, !noundef !10
  %i.bw = xor i64 %i.bv, %i.bl                    ; 2 uses
  %i.bx = xor i64 %i.bs, %i.bn                    ; 3 uses
  %i.by = xor i64 %i.bw, %i.bs
  store i64 %i.by, ptr %i.br, align 8, !alias.scope !14454, !noalias !14455
  %i.bz = xor i64 %i.bx, %i.bl
  store i64 %i.bz, ptr %3, align 8, !alias.scope !14454, !noalias !14455
  %i.ca = xor i64 %i.bw, %i.bt
  store i64 %i.ca, ptr %i.bu, align 8, !alias.scope !14454, !noalias !14455
  %i.cb = tail call noundef i64 @llvm.fshl.i64(i64 %i.bx, i64 %i.bx, i64 45)
  store i64 %i.cb, ptr %i.bm, align 8, !alias.scope !14454, !noalias !14455
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.sroa.542.0 = phi i64 [ 1, %bb.i ], [ 0, %bb.h ] ; 2 uses
  %.sroa.8.0.copyload.in.i.i = phi i32 [ %i.p, %bb.i ], [ %i.bh, %bb.h ]
  %.sroa.6.0.copyload.i.i = phi i64 [ %i.bq, %bb.i ], [ %i.bf, %bb.h ] ; 2 uses
  %i.cc = icmp eq i64 %i.bj, 0                    ; 2 uses
  br i1 %i.cc, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB6_3map3MapINtNtNtBa_3ops5range5RangeyENCNvXsa_B10_INtB10_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB36_5types23DurationMicrosecondTypeENCINvNtB10_5array4randB4a_E0ENtB10_14ArrayGenerator8generate0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB12_.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %spec.select.i.i.i.i.i.i68 = sub nuw i64 %2, %.sroa.542.0
  %i.cd = zext i32 %i.p to i64
  %i.ce = mul i64 %spec.select.i.i.i.i.i.i68, %i.cd
  %.sroa.0.0.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.bj, i64 %i.ce)
  %i.cf = tail call i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i.i.i, i64 3)
  %i.cg = add nuw i64 %i.cf, 1
  br label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB6_3map3MapINtNtNtBa_3ops5range5RangeyENCNvXsa_B10_INtB10_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB36_5types23DurationMicrosecondTypeENCINvNtB10_5array4randB4a_E0ENtB10_14ArrayGenerator8generate0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB12_.exit.i.i

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB6_3map3MapINtNtNtBa_3ops5range5RangeyENCNvXsa_B10_INtB10_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB36_5types23DurationMicrosecondTypeENCINvNtB10_5array4randB4a_E0ENtB10_14ArrayGenerator8generate0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB12_.exit.i.i: ; preds = %bb.k, %bb.j
  %.sroa.0.0.i.sink.i.i.i = phi i64 [ %i.cg, %bb.k ], [ 4, %bb.j ] ; 4 uses
  %i.ch = shl i64 %.sroa.0.0.i.sink.i.i.i, 3      ; 3 uses
  %i.ci = icmp ugt i64 %.sroa.0.0.i.sink.i.i.i, 2305843009213693951
  %.not.i.i.i.i26 = icmp ugt i64 %i.ch, 9223372036854775800
  %or.cond.i.i.i.i27 = or i1 %i.ci, %.not.i.i.i.i26
  br i1 %or.cond.i.i.i.i27, label %bb.m, label %bb.l, !prof !7

bb.l:                                             ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB6_3map3MapINtNtNtBa_3ops5range5RangeyENCNvXsa_B10_INtB10_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB36_5types23DurationMicrosecondTypeENCINvNtB10_5array4randB4a_E0ENtB10_14ArrayGenerator8generate0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB12_.exit.i.i
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !14456
  %i.cj = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.ch, i64 noundef range(i64 1, 9) 8) #36, !noalias !14456 ; 5 uses
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %bb.m, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs342JT7D9NXi_13lance_datagen.exit.i.i

bb.m:                                             ; preds = %bb.l, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB6_3map3MapINtNtNtBa_3ops5range5RangeyENCNvXsa_B10_INtB10_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB36_5types23DurationMicrosecondTypeENCINvNtB10_5array4randB4a_E0ENtB10_14ArrayGenerator8generate0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB12_.exit.i.i
  %.sroa.4.0.ph.i.i.i31 = phi i64 [ 8, %bb.l ], [ 0, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB6_3map3MapINtNtNtBa_3ops5range5RangeyENCNvXsa_B10_INtB10_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB36_5types23DurationMicrosecondTypeENCINvNtB10_5array4randB4a_E0ENtB10_14ArrayGenerator8generate0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB12_.exit.i.i ]
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i31, i64 %i.ch) #37, !noalias !14453
  unreachable

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs342JT7D9NXi_13lance_datagen.exit.i.i: ; preds = %bb.l
  store i64 %.sroa.6.0.copyload.i.i, ptr %i.cj, align 8, !noalias !14453
  store i64 %.sroa.0.0.i.sink.i.i.i, ptr %i.a, align 8, !noalias !14453
  %.sroa.4.0..sroa_idx.i.i28 = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  store ptr %i.cj, ptr %.sroa.4.0..sroa_idx.i.i28, align 8, !noalias !14453
  %.sroa.6.0..sroa_idx.i.i29 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i29, align 8, !noalias !14453
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14457)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14458)
  br i1 %i.cc, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters4take4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB1m_3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_B2a_INtB2a_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB4i_5types23DurationMicrosecondTypeENCINvNtB2a_5array4randB5m_E0ENtB2a_14ArrayGenerator8generate0EEEE9from_iterB2c_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs342JT7D9NXi_13lance_datagen.exit.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.co = zext i32 %i.p to i64
  br label %bb.n

bb.n:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i30, %.lr.ph.i.i.i.i
  %i.cp = phi ptr [ %i.cj, %.lr.ph.i.i.i.i ], [ %i.dt, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i30 ]
  %i.cq = phi i64 [ 1, %.lr.ph.i.i.i.i ], [ %i.dv, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i30 ] ; 6 uses
  %i.cr = phi i64 [ %.sroa.542.0, %.lr.ph.i.i.i.i ], [ %i.dm, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i30 ] ; 3 uses
  %.pre.i.i12.i.i.i.i = phi i64 [ %.sroa.6.0.copyload.i.i, %.lr.ph.i.i.i.i ], [ %.pre.i.i11.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i30 ]
  %.in.i.i = phi i32 [ %.sroa.8.0.copyload.in.i.i, %.lr.ph.i.i.i.i ], [ %.in.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i30 ]
  %i.cs = phi i64 [ %i.bj, %.lr.ph.i.i.i.i ], [ %i.cu, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i30 ]
  %i.ct = add i32 %.in.i.i, -1                    ; 2 uses
  %i.cu = add i64 %i.cs, -1                       ; 4 uses
  %i.cv = icmp eq i32 %i.ct, 0
  br i1 %i.cv, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.cw = icmp ult i64 %i.cr, %2
  br i1 %i.cw, label %bb.p, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecxEINtB2_10SpecExtendxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters4take4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB1h_3map3MapINtNtNtB1l_3ops5range5RangeyENCNvXsa_B25_INtB25_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB4d_5types23DurationMicrosecondTypeENCINvNtB25_5array4randB5h_E0ENtB25_14ArrayGenerator8generate0EEEE11spec_extendB27_.exit.i.i.loopexit

bb.p:                                             ; preds = %bb.o
  %i.cx = add nuw i64 %i.cr, 1
  %i.cy = load i64, ptr %3, align 8, !alias.scope !14459, !noalias !14460, !noundef !10 ; 4 uses
  %i.cz = load i64, ptr %i.cl, align 8, !alias.scope !14459, !noalias !14460, !noundef !10 ; 2 uses
  %i.da = add i64 %i.cz, %i.cy                    ; 2 uses
  %i.db = tail call noundef i64 @llvm.fshl.i64(i64 %i.da, i64 %i.da, i64 23)
  %i.dc = add i64 %i.db, %i.cy
  %i.dd = load i64, ptr %i.cm, align 8, !alias.scope !14459, !noalias !14460, !noundef !10 ; 3 uses
  %i.de = shl i64 %i.dd, 17
  %i.df = load i64, ptr %i.cn, align 8, !alias.scope !14459, !noalias !14460, !noundef !10
  %i.dg = xor i64 %i.df, %i.cy                    ; 2 uses
  %i.dh = xor i64 %i.dd, %i.cz                    ; 3 uses
  %i.di = xor i64 %i.dg, %i.dd
  store i64 %i.di, ptr %i.cm, align 8, !alias.scope !14459, !noalias !14460
  %i.dj = xor i64 %i.dh, %i.cy
  store i64 %i.dj, ptr %3, align 8, !alias.scope !14459, !noalias !14460
  %i.dk = xor i64 %i.dg, %i.de
  store i64 %i.dk, ptr %i.cn, align 8, !alias.scope !14459, !noalias !14460
  %i.dl = tail call noundef i64 @llvm.fshl.i64(i64 %i.dh, i64 %i.dh, i64 45)
  store i64 %i.dl, ptr %i.cl, align 8, !alias.scope !14459, !noalias !14460
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n
  %i.dm = phi i64 [ %i.cx, %bb.p ], [ %i.cr, %bb.n ] ; 2 uses
  %.pre.i.i11.i.i.i.i = phi i64 [ %i.dc, %bb.p ], [ %.pre.i.i12.i.i.i.i, %bb.n ] ; 2 uses
  %.in.i.i.i.i = phi i32 [ %i.p, %bb.p ], [ %i.ct, %bb.n ]
  %i.dn = icmp samesign ult i64 %i.cq, 1152921504606846976
  tail call void @llvm.assume(i1 %i.dn)
  %i.do = load i64, ptr %i.a, align 8, !range !12, !alias.scope !14461, !noalias !14453, !noundef !10
  %i.dp = icmp eq i64 %i.cq, %i.do
  br i1 %i.dp, label %bb.r, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i30

bb.r:                                             ; preds = %bb.q
  %i.dq = icmp eq i64 %i.cu, 0
  br i1 %i.dq, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB6_3map3MapINtNtNtBa_3ops5range5RangeyENCNvXsa_B10_INtB10_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB36_5types23DurationMicrosecondTypeENCINvNtB10_5array4randB4a_E0ENtB10_14ArrayGenerator8generate0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB12_.exit.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %spec.select.i.i.i.i.i.i.i.i = tail call i64 @llvm.usub.sat.i64(i64 %2, i64 %i.dm)
  %i.dr = mul i64 %spec.select.i.i.i.i.i.i.i.i, %i.co
  %.sroa.0.0.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.cu, i64 %i.dr)
  %i.ds = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.0.0.i.i.i.i.i.i, i64 1)
  br label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB6_3map3MapINtNtNtBa_3ops5range5RangeyENCNvXsa_B10_INtB10_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB36_5types23DurationMicrosecondTypeENCINvNtB10_5array4randB4a_E0ENtB10_14ArrayGenerator8generate0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB12_.exit.i.i.i.i

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB6_3map3MapINtNtNtBa_3ops5range5RangeyENCNvXsa_B10_INtB10_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB36_5types23DurationMicrosecondTypeENCINvNtB10_5array4randB4a_E0ENtB10_14ArrayGenerator8generate0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB12_.exit.i.i.i.i: ; preds = %bb.s, %bb.r
  %.sroa.0.0.i.sink.i.i.i.i.i = phi i64 [ %i.ds, %bb.s ], [ 1, %bb.r ]
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs342JT7D9NXi_13lance_datagen(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.cq, i64 noundef %.sroa.0.0.i.sink.i.i.i.i.i, i64 noundef 8, i64 noundef 8)
          to label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB6_3map3MapINtNtNtBa_3ops5range5RangeyENCNvXsa_B10_INtB10_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB36_5types23DurationMicrosecondTypeENCINvNtB10_5array4randB4a_E0ENtB10_14ArrayGenerator8generate0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB12_.exit.i.i._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i_crit_edge.i.i unwind label %bb.t, !noalias !14453

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB6_3map3MapINtNtNtBa_3ops5range5RangeyENCNvXsa_B10_INtB10_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB36_5types23DurationMicrosecondTypeENCINvNtB10_5array4randB4a_E0ENtB10_14ArrayGenerator8generate0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB12_.exit.i.i._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i_crit_edge.i.i: ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB6_3map3MapINtNtNtBa_3ops5range5RangeyENCNvXsa_B10_INtB10_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB36_5types23DurationMicrosecondTypeENCINvNtB10_5array4randB4a_E0ENtB10_14ArrayGenerator8generate0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB12_.exit.i.i.i.i
  %.pre.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i28, align 8, !alias.scope !14461, !noalias !14453
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i30

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i30: ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB6_3map3MapINtNtNtBa_3ops5range5RangeyENCNvXsa_B10_INtB10_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB36_5types23DurationMicrosecondTypeENCINvNtB10_5array4randB4a_E0ENtB10_14ArrayGenerator8generate0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB12_.exit.i.i._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i_crit_edge.i.i, %bb.q
  %i.dt = phi ptr [ %.pre.i.i, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB6_3map3MapINtNtNtBa_3ops5range5RangeyENCNvXsa_B10_INtB10_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB36_5types23DurationMicrosecondTypeENCINvNtB10_5array4randB4a_E0ENtB10_14ArrayGenerator8generate0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB12_.exit.i.i._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i_crit_edge.i.i ], [ %i.cp, %bb.q ] ; 2 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.cq
  store i64 %.pre.i.i11.i.i.i.i, ptr %i.du, align 8, !noalias !14462
  %i.dv = add nuw nsw i64 %i.cq, 1                ; 3 uses
  store i64 %i.dv, ptr %.sroa.6.0..sroa_idx.i.i29, align 8, !alias.scope !14461, !noalias !14453
  %i.dw = icmp eq i64 %i.cu, 0
  br i1 %i.dw, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecxEINtB2_10SpecExtendxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters4take4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB1h_3map3MapINtNtNtB1l_3ops5range5RangeyENCNvXsa_B25_INtB25_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB4d_5types23DurationMicrosecondTypeENCINvNtB25_5array4randB5h_E0ENtB25_14ArrayGenerator8generate0EEEE11spec_extendB27_.exit.i.i.loopexit, label %bb.n

bb.t:                                             ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB6_3map3MapINtNtNtBa_3ops5range5RangeyENCNvXsa_B10_INtB10_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB36_5types23DurationMicrosecondTypeENCINvNtB10_5array4randB4a_E0ENtB10_14ArrayGenerator8generate0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB12_.exit.i.i.i.i
  %i.dx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i.i = load i64, ptr %i.a, align 8, !noalias !14453 ; 2 uses
  %i.dy = icmp eq i64 %.val.i.i, 0
  br i1 %i.dy, label %common.resume, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.val7.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i28, align 8, !noalias !14453, !nonnull !10, !noundef !10
  %i.dz = shl nuw i64 %.val.i.i, 3
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i.i, i64 noundef %i.dz, i64 noundef range(i64 1, -9223372036854775807) 8) #36, !noalias !14453
  br label %common.resume

_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecxEINtB2_10SpecExtendxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters4take4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB1h_3map3MapINtNtNtB1l_3ops5range5RangeyENCNvXsa_B25_INtB25_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB4d_5types23DurationMicrosecondTypeENCINvNtB25_5array4randB5h_E0ENtB25_14ArrayGenerator8generate0EEEE11spec_extendB27_.exit.i.i.loopexit: ; preds = %bb.o, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i30
  %.sroa.12.0.copyload4083 = phi i64 [ %i.cq, %bb.o ], [ %i.dv, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i30 ]
  %.sroa.034.0.copyload35.pre = load i64, ptr %i.a, align 8, !noalias !14463
  %.sroa.836.0.copyload38.pre = load ptr, ptr %.sroa.4.0..sroa_idx.i.i28, align 8, !noalias !14463
  %.pre.pre.pre = load i32, ptr %i.o, align 8
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters4take4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB1m_3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_B2a_INtB2a_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB4i_5types23DurationMicrosecondTypeENCINvNtB2a_5array4randB5m_E0ENtB2a_14ArrayGenerator8generate0EEEE9from_iterB2c_.exit

common.resume:                                    ; preds = %bb.an, %bb.ao, %bb.am, %bb.ad, %bb.aj, %bb.t, %bb.u
  %common.resume.op = phi { ptr, i32 } [ %i.dx, %bb.t ], [ %i.dx, %bb.u ], [ %i.gh, %bb.ao ], [ %i.gd, %bb.aj ], [ %i.gh, %bb.an ], [ %i.ft, %bb.ad ], [ %lpad.thr_comm.split-lp, %bb.am ]
  resume { ptr, i32 } %common.resume.op

_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters4take4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB1m_3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_B2a_INtB2a_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB4i_5types23DurationMicrosecondTypeENCINvNtB2a_5array4randB5m_E0ENtB2a_14ArrayGenerator8generate0EEEE9from_iterB2c_.exit: ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs342JT7D9NXi_13lance_datagen.exit.i.i, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecxEINtB2_10SpecExtendxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters4take4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB1h_3map3MapINtNtNtB1l_3ops5range5RangeyENCNvXsa_B25_INtB25_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB4d_5types23DurationMicrosecondTypeENCINvNtB25_5array4randB5h_E0ENtB25_14ArrayGenerator8generate0EEEE11spec_extendB27_.exit.i.i.loopexit, %bb.g
  %.pre = phi i32 [ %i.p, %bb.g ], [ %.pre.pre.pre, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecxEINtB2_10SpecExtendxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters4take4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB1h_3map3MapINtNtNtB1l_3ops5range5RangeyENCNvXsa_B25_INtB25_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB4d_5types23DurationMicrosecondTypeENCINvNtB25_5array4randB5h_E0ENtB25_14ArrayGenerator8generate0EEEE11spec_extendB27_.exit.i.i.loopexit ], [ %i.p, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs342JT7D9NXi_13lance_datagen.exit.i.i ]
  %.sroa.12.1 = phi i64 [ 0, %bb.g ], [ %.sroa.12.0.copyload4083, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecxEINtB2_10SpecExtendxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters4take4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB1h_3map3MapINtNtNtB1l_3ops5range5RangeyENCNvXsa_B25_INtB25_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB4d_5types23DurationMicrosecondTypeENCINvNtB25_5array4randB5h_E0ENtB25_14ArrayGenerator8generate0EEEE11spec_extendB27_.exit.i.i.loopexit ], [ 1, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs342JT7D9NXi_13lance_datagen.exit.i.i ]
  %.sroa.836.1 = phi ptr [ inttoptr (i64 8 to ptr), %bb.g ], [ %.sroa.836.0.copyload38.pre, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecxEINtB2_10SpecExtendxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters4take4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB1h_3map3MapINtNtNtB1l_3ops5range5RangeyENCNvXsa_B25_INtB25_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB4d_5types23DurationMicrosecondTypeENCINvNtB25_5array4randB5h_E0ENtB25_14ArrayGenerator8generate0EEEE11spec_extendB27_.exit.i.i.loopexit ], [ %i.cj, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs342JT7D9NXi_13lance_datagen.exit.i.i ]
  %.sroa.034.1 = phi i64 [ 0, %bb.g ], [ %.sroa.034.0.copyload35.pre, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecxEINtB2_10SpecExtendxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters4take4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB1h_3map3MapINtNtNtB1l_3ops5range5RangeyENCNvXsa_B25_INtB25_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB4d_5types23DurationMicrosecondTypeENCINvNtB25_5array4randB5h_E0ENtB25_14ArrayGenerator8generate0EEEE11spec_extendB27_.exit.i.i.loopexit ], [ %.sroa.0.0.i.sink.i.i.i, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs342JT7D9NXi_13lance_datagen.exit.i.i ]
end_hunk_5
begin_hunk_6_@_RNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB5_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB14_5types23DurationMicrosecondTypeENCINvNtB5_5array4randB28_E0ENtB5_14ArrayGenerator8generateB7_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @_RNvMs3_NtCs56ggtDZRYpd_10arrow_data4dataNtB5_16ArrayDataBuilder5build(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(none) dereferenceable(136) %i.l, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(184) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.fv = load i64, ptr %i.l, align 8, !range !17, !noundef !10 ; 2 uses
  %i.fw = icmp eq i64 %i.fv, -1
  %i.fx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.66, ptr noundef nonnull align 8 dereferenceable(32) %i.fx, i64 32, i1 false)
  br i1 %i.fw, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.66, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.66)
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %.sroa.8.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.8.0..sroa_idx8, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.518.0..sroa_idx, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  store i64 %i.fv, ptr %i.g, align 8
  %.sroa.66.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.66.0..sroa_idx7, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.66, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.66)
  %i.fy = call { ptr, ptr } @_RNvNtCs4ytUTZt2Gw9_11arrow_array5array10make_array(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(136) %i.g) ; 2 uses
  %i.fz = extractvalue { ptr, ptr } %i.fy, 0
  %i.ga = extractvalue { ptr, ptr } %i.fy, 1
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fz, ptr %i.gb, align 8
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ga, ptr %i.gc, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.al, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  ret void

bb.aj:                                            ; preds = %_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types23DurationMicrosecondTypeENtB7_5Array9into_dataCs342JT7D9NXi_13lance_datagen.exit
  %i.gd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs56ggtDZRYpd_10arrow_data4data16ArrayDataBuilderECs342JT7D9NXi_13lance_datagen(ptr noalias noundef align 8 dereferenceable(184) %i.j) #38
          to label %common.resume unwind label %bb.ak

bb.ak:                                            ; preds = %bb.am, %bb.aj
  %i.ge = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.al:                                            ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.fr, ptr noundef nonnull align 8 dereferenceable(112) %i.f, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fr, ptr %i.gf, align 8
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @606, ptr %i.gg, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.ai

bb.am:                                            ; preds = %bb.z
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBI_5types23DurationMicrosecondTypeEECs342JT7D9NXi_13lance_datagen(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.n) #38
          to label %common.resume unwind label %bb.ak

bb.an:                                            ; preds = %bb.w
  %i.gh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gi = icmp eq i64 %.sroa.034.0110, 0
  br i1 %i.gi, label %common.resume, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gj = shl nuw i64 %.sroa.034.0110, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.836.0108) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.836.0108, i64 noundef %i.gj, i64 noundef range(i64 1, -9223372036854775807) 8) #36
  br label %common.resume
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB5_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB14_5types23DurationMicrosecondTypeENCINvNtB5_5array4randB28_E0ENtB5_14ArrayGenerator9data_typeB7_(ptr noalias noundef readonly align 8 captures(ret: address, read_provenance) dereferenceable(56) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { i64, i64 } @_RNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB5_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB14_5types23DurationMillisecondTypeENCINvNtB5_5array4randB28_E0ENtB5_14ArrayGenerator18element_size_bytesB7_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #10 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !25, !noundef !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = insertvalue { i64, i64 } poison, i64 %i.a, 0
  %i.e = insertvalue { i64, i64 } %i.d, i64 %i.c, 1
  ret { i64, i64 } %i.e
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB5_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB14_5types23DurationMillisecondTypeENCINvNtB5_5array4randB28_E0ENtB5_14ArrayGenerator8generateB7_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %1, i64 noundef %2, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [136 x i8], align 8               ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.f = alloca [112 x i8], align 8               ; 6 uses
  %i.g = alloca [136 x i8], align 8               ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [96 x i8], align 8                ; 4 uses
  %i.j = alloca [184 x i8], align 8               ; 14 uses
  %i.k = alloca [184 x i8], align 8               ; 4 uses
  %i.l = alloca [136 x i8], align 8               ; 7 uses
  %.sroa.66 = alloca [32 x i8], align 8           ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [96 x i8], align 8                ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !noundef !10 ; 9 uses
  %i.q = icmp ugt i32 %i.p, 1
  br i1 %i.q, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = shl i64 %2, 3                            ; 4 uses
  %i.s = icmp ugt i64 %2, 2305843009213693951
  %.not.i.i.i.i = icmp ugt i64 %i.r, 9223372036854775800
  %or.cond.i.i.i.i = or i1 %i.s, %.not.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %bb.e, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.t = icmp eq i64 %i.r, 0
  br i1 %i.t, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !14551
  %i.u = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.r, i64 noundef range(i64 1, 9) 8) #36, !noalias !14551 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.e, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i

bb.e:                                             ; preds = %bb.d, %bb.b
  %.sroa.4.0.ph.i.i.i = phi i64 [ 8, %bb.d ], [ 0, %bb.b ]
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.r) #37, !noalias !14552
  unreachable

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i: ; preds = %bb.d, %bb.c
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.c ], [ %i.u, %bb.d ] ; 6 uses
  %.sroa.4.0.i.i.i = phi i64 [ 0, %bb.c ], [ %2, %bb.d ] ; 4 uses
  %i.w = icmp samesign ule i64 %2, %.sroa.4.0.i.i.i
  tail call void @llvm.assume(i1 %i.w)
  %.not69 = icmp eq i64 %2, 0
  br i1 %.not69, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types23DurationMillisecondTypeENCINvNtB2G_5array4randB4K_E0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.thread, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %.promoted = load i64, ptr %3, align 8, !alias.scope !14553, !noalias !14554 ; 2 uses
  %.promoted71 = load i64, ptr %i.x, align 8, !alias.scope !14553, !noalias !14554 ; 2 uses
  %.promoted73 = load i64, ptr %i.y, align 8, !alias.scope !14553, !noalias !14554 ; 2 uses
  %.promoted75 = load i64, ptr %i.z, align 8, !alias.scope !14553, !noalias !14554 ; 2 uses
  %xtraiter = and i64 %2, 1
  %i.aa = icmp eq i64 %2, 1
  br i1 %i.aa, label %.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.new

.lr.ph.i.i.i.i.i.i.i.new:                         ; preds = %.lr.ph.i.i.i.i.i.i.i
  %unroll_iter = and i64 %2, 2305843009213693950
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.i.i.i.i.i.i.new
  %i.ab = phi i64 [ %.promoted75, %.lr.ph.i.i.i.i.i.i.i.new ], [ %i.ba, %bb.f ]
  %i.ac = phi i64 [ %.promoted73, %.lr.ph.i.i.i.i.i.i.i.new ], [ %i.ay, %bb.f ] ; 3 uses
  %i.ad = phi i64 [ %.promoted71, %.lr.ph.i.i.i.i.i.i.i.new ], [ %i.bb, %bb.f ] ; 2 uses
  %i.ae = phi i64 [ %.promoted, %.lr.ph.i.i.i.i.i.i.i.new ], [ %i.az, %bb.f ] ; 4 uses
  %i.af = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.new ], [ %i.ar, %bb.f ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.new ], [ %niter.next.1, %bb.f ]
  %i.ag = add i64 %i.ad, %i.ae                    ; 2 uses
  %i.ah = tail call noundef i64 @llvm.fshl.i64(i64 %i.ag, i64 %i.ag, i64 23)
  %i.ai = add i64 %i.ah, %i.ae
  %i.aj = shl i64 %i.ac, 17
  %i.ak = xor i64 %i.ab, %i.ae                    ; 2 uses
  %i.al = xor i64 %i.ac, %i.ad                    ; 3 uses
  %i.am = xor i64 %i.ak, %i.ac                    ; 3 uses
  %i.an = xor i64 %i.al, %i.ae                    ; 4 uses
  %i.ao = xor i64 %i.ak, %i.aj
  %i.ap = tail call noundef i64 @llvm.fshl.i64(i64 %i.al, i64 %i.al, i64 45) ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.10.0.i.i.i, i64 %i.af
  store i64 %i.ai, ptr %i.aq, align 8, !noalias !14555
  %i.ar = add nuw nsw i64 %i.af, 2                ; 2 uses
  %i.as = add i64 %i.ap, %i.an                    ; 2 uses
  %i.at = tail call noundef i64 @llvm.fshl.i64(i64 %i.as, i64 %i.as, i64 23)
  %i.au = add i64 %i.at, %i.an
  %i.av = shl i64 %i.am, 17
  %i.aw = xor i64 %i.ao, %i.an                    ; 2 uses
  %i.ax = xor i64 %i.am, %i.ap                    ; 3 uses
  %i.ay = xor i64 %i.aw, %i.am                    ; 3 uses
  %i.az = xor i64 %i.ax, %i.an                    ; 3 uses
  %i.ba = xor i64 %i.aw, %i.av                    ; 3 uses
  %i.bb = tail call noundef i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 45) ; 3 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.10.0.i.i.i, i64 %i.af
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store i64 %i.au, ptr %i.bd, align 8, !noalias !14555
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types23DurationMillisecondTypeENCINvNtB2G_5array4randB4K_E0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.unr-lcssa, label %bb.f

bb.g:                                             ; preds = %bb.a
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bf = load i64, ptr %i.be, align 8, !noundef !10
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.bh = load i32, ptr %i.bg, align 4, !noundef !10 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14556
  %i.bi = icmp eq i64 %2, 0
  br i1 %i.bi, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters4take4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB1m_3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_B2a_INtB2a_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB4i_5types23DurationMillisecondTypeENCINvNtB2a_5array4randB5m_E0ENtB2a_14ArrayGenerator8generate0EEEE9from_iterB2c_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bj = add i64 %2, -1                          ; 3 uses
  %i.bk = icmp eq i32 %i.bh, 0
  br i1 %i.bk, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bl = load i64, ptr %3, align 8, !alias.scope !14557, !noalias !14558, !noundef !10 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !alias.scope !14557, !noalias !14558, !noundef !10 ; 2 uses
  %i.bo = add i64 %i.bn, %i.bl                    ; 2 uses
  %i.bp = tail call noundef i64 @llvm.fshl.i64(i64 %i.bo, i64 %i.bo, i64 23)
  %i.bq = add i64 %i.bp, %i.bl
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !alias.scope !14557, !noalias !14558, !noundef !10 ; 3 uses
  %i.bt = shl i64 %i.bs, 17
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !alias.scope !14557, !noalias !14558, !noundef !10
  %i.bw = xor i64 %i.bv, %i.bl                    ; 2 uses
  %i.bx = xor i64 %i.bs, %i.bn                    ; 3 uses
  %i.by = xor i64 %i.bw, %i.bs
  store i64 %i.by, ptr %i.br, align 8, !alias.scope !14557, !noalias !14558
  %i.bz = xor i64 %i.bx, %i.bl
  store i64 %i.bz, ptr %3, align 8, !alias.scope !14557, !noalias !14558
  %i.ca = xor i64 %i.bw, %i.bt
  store i64 %i.ca, ptr %i.bu, align 8, !alias.scope !14557, !noalias !14558
  %i.cb = tail call noundef i64 @llvm.fshl.i64(i64 %i.bx, i64 %i.bx, i64 45)
  store i64 %i.cb, ptr %i.bm, align 8, !alias.scope !14557, !noalias !14558
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.sroa.542.0 = phi i64 [ 1, %bb.i ], [ 0, %bb.h ] ; 2 uses
  %.sroa.8.0.copyload.in.i.i = phi i32 [ %i.p, %bb.i ], [ %i.bh, %bb.h ]
  %.sroa.6.0.copyload.i.i = phi i64 [ %i.bq, %bb.i ], [ %i.bf, %bb.h ] ; 2 uses
  %i.cc = icmp eq i64 %i.bj, 0                    ; 2 uses
  br i1 %i.cc, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB6_3map3MapINtNtNtBa_3ops5range5RangeyENCNvXsa_B10_INtB10_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB36_5types23DurationMillisecondTypeENCINvNtB10_5array4randB4a_E0ENtB10_14ArrayGenerator8generate0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB12_.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %spec.select.i.i.i.i.i.i68 = sub nuw i64 %2, %.sroa.542.0
  %i.cd = zext i32 %i.p to i64
  %i.ce = mul i64 %spec.select.i.i.i.i.i.i68, %i.cd
  %.sroa.0.0.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.bj, i64 %i.ce)
  %i.cf = tail call i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i.i.i, i64 3)
  %i.cg = add nuw i64 %i.cf, 1
  br label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB6_3map3MapINtNtNtBa_3ops5range5RangeyENCNvXsa_B10_INtB10_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB36_5types23DurationMillisecondTypeENCINvNtB10_5array4randB4a_E0ENtB10_14ArrayGenerator8generate0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB12_.exit.i.i

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB6_3map3MapINtNtNtBa_3ops5range5RangeyENCNvXsa_B10_INtB10_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB36_5types23DurationMillisecondTypeENCINvNtB10_5array4randB4a_E0ENtB10_14ArrayGenerator8generate0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB12_.exit.i.i: ; preds = %bb.k, %bb.j
  %.sroa.0.0.i.sink.i.i.i = phi i64 [ %i.cg, %bb.k ], [ 4, %bb.j ] ; 4 uses
  %i.ch = shl i64 %.sroa.0.0.i.sink.i.i.i, 3      ; 3 uses
  %i.ci = icmp ugt i64 %.sroa.0.0.i.sink.i.i.i, 2305843009213693951
  %.not.i.i.i.i26 = icmp ugt i64 %i.ch, 9223372036854775800
  %or.cond.i.i.i.i27 = or i1 %i.ci, %.not.i.i.i.i26
  br i1 %or.cond.i.i.i.i27, label %bb.m, label %bb.l, !prof !7

bb.l:                                             ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB6_3map3MapINtNtNtBa_3ops5range5RangeyENCNvXsa_B10_INtB10_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB36_5types23DurationMillisecondTypeENCINvNtB10_5array4randB4a_E0ENtB10_14ArrayGenerator8generate0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB12_.exit.i.i
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !14559
  %i.cj = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.ch, i64 noundef range(i64 1, 9) 8) #36, !noalias !14559 ; 5 uses
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %bb.m, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs342JT7D9NXi_13lance_datagen.exit.i.i

bb.m:                                             ; preds = %bb.l, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB6_3map3MapINtNtNtBa_3ops5range5RangeyENCNvXsa_B10_INtB10_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB36_5types23DurationMillisecondTypeENCINvNtB10_5array4randB4a_E0ENtB10_14ArrayGenerator8generate0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB12_.exit.i.i
  %.sroa.4.0.ph.i.i.i31 = phi i64 [ 8, %bb.l ], [ 0, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB6_3map3MapINtNtNtBa_3ops5range5RangeyENCNvXsa_B10_INtB10_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB36_5types23DurationMillisecondTypeENCINvNtB10_5array4randB4a_E0ENtB10_14ArrayGenerator8generate0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB12_.exit.i.i ]
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i31, i64 %i.ch) #37, !noalias !14556
  unreachable

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs342JT7D9NXi_13lance_datagen.exit.i.i: ; preds = %bb.l
  store i64 %.sroa.6.0.copyload.i.i, ptr %i.cj, align 8, !noalias !14556
  store i64 %.sroa.0.0.i.sink.i.i.i, ptr %i.a, align 8, !noalias !14556
  %.sroa.4.0..sroa_idx.i.i28 = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  store ptr %i.cj, ptr %.sroa.4.0..sroa_idx.i.i28, align 8, !noalias !14556
  %.sroa.6.0..sroa_idx.i.i29 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i29, align 8, !noalias !14556
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14560)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14561)
  br i1 %i.cc, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters4take4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB1m_3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_B2a_INtB2a_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB4i_5types23DurationMillisecondTypeENCINvNtB2a_5array4randB5m_E0ENtB2a_14ArrayGenerator8generate0EEEE9from_iterB2c_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs342JT7D9NXi_13lance_datagen.exit.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.co = zext i32 %i.p to i64
  br label %bb.n

bb.n:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i30, %.lr.ph.i.i.i.i
  %i.cp = phi ptr [ %i.cj, %.lr.ph.i.i.i.i ], [ %i.dt, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i30 ]
  %i.cq = phi i64 [ 1, %.lr.ph.i.i.i.i ], [ %i.dv, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i30 ] ; 6 uses
  %i.cr = phi i64 [ %.sroa.542.0, %.lr.ph.i.i.i.i ], [ %i.dm, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i30 ] ; 3 uses
  %.pre.i.i12.i.i.i.i = phi i64 [ %.sroa.6.0.copyload.i.i, %.lr.ph.i.i.i.i ], [ %.pre.i.i11.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i30 ]
  %.in.i.i = phi i32 [ %.sroa.8.0.copyload.in.i.i, %.lr.ph.i.i.i.i ], [ %.in.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i30 ]
  %i.cs = phi i64 [ %i.bj, %.lr.ph.i.i.i.i ], [ %i.cu, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i30 ]
  %i.ct = add i32 %.in.i.i, -1                    ; 2 uses
  %i.cu = add i64 %i.cs, -1                       ; 4 uses
  %i.cv = icmp eq i32 %i.ct, 0
  br i1 %i.cv, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.cw = icmp ult i64 %i.cr, %2
  br i1 %i.cw, label %bb.p, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecxEINtB2_10SpecExtendxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters4take4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB1h_3map3MapINtNtNtB1l_3ops5range5RangeyENCNvXsa_B25_INtB25_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB4d_5types23DurationMillisecondTypeENCINvNtB25_5array4randB5h_E0ENtB25_14ArrayGenerator8generate0EEEE11spec_extendB27_.exit.i.i.loopexit

bb.p:                                             ; preds = %bb.o
  %i.cx = add nuw i64 %i.cr, 1
  %i.cy = load i64, ptr %3, align 8, !alias.scope !14562, !noalias !14563, !noundef !10 ; 4 uses
  %i.cz = load i64, ptr %i.cl, align 8, !alias.scope !14562, !noalias !14563, !noundef !10 ; 2 uses
  %i.da = add i64 %i.cz, %i.cy                    ; 2 uses
  %i.db = tail call noundef i64 @llvm.fshl.i64(i64 %i.da, i64 %i.da, i64 23)
  %i.dc = add i64 %i.db, %i.cy
  %i.dd = load i64, ptr %i.cm, align 8, !alias.scope !14562, !noalias !14563, !noundef !10 ; 3 uses
  %i.de = shl i64 %i.dd, 17
  %i.df = load i64, ptr %i.cn, align 8, !alias.scope !14562, !noalias !14563, !noundef !10
  %i.dg = xor i64 %i.df, %i.cy                    ; 2 uses
  %i.dh = xor i64 %i.dd, %i.cz                    ; 3 uses
  %i.di = xor i64 %i.dg, %i.dd
  store i64 %i.di, ptr %i.cm, align 8, !alias.scope !14562, !noalias !14563
  %i.dj = xor i64 %i.dh, %i.cy
  store i64 %i.dj, ptr %3, align 8, !alias.scope !14562, !noalias !14563
  %i.dk = xor i64 %i.dg, %i.de
  store i64 %i.dk, ptr %i.cn, align 8, !alias.scope !14562, !noalias !14563
  %i.dl = tail call noundef i64 @llvm.fshl.i64(i64 %i.dh, i64 %i.dh, i64 45)
  store i64 %i.dl, ptr %i.cl, align 8, !alias.scope !14562, !noalias !14563
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n
  %i.dm = phi i64 [ %i.cx, %bb.p ], [ %i.cr, %bb.n ] ; 2 uses
  %.pre.i.i11.i.i.i.i = phi i64 [ %i.dc, %bb.p ], [ %.pre.i.i12.i.i.i.i, %bb.n ] ; 2 uses
  %.in.i.i.i.i = phi i32 [ %i.p, %bb.p ], [ %i.ct, %bb.n ]
  %i.dn = icmp samesign ult i64 %i.cq, 1152921504606846976
  tail call void @llvm.assume(i1 %i.dn)
  %i.do = load i64, ptr %i.a, align 8, !range !12, !alias.scope !14564, !noalias !14556, !noundef !10
  %i.dp = icmp eq i64 %i.cq, %i.do
  br i1 %i.dp, label %bb.r, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i30

bb.r:                                             ; preds = %bb.q
  %i.dq = icmp eq i64 %i.cu, 0
  br i1 %i.dq, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB6_3map3MapINtNtNtBa_3ops5range5RangeyENCNvXsa_B10_INtB10_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB36_5types23DurationMillisecondTypeENCINvNtB10_5array4randB4a_E0ENtB10_14ArrayGenerator8generate0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB12_.exit.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %spec.select.i.i.i.i.i.i.i.i = tail call i64 @llvm.usub.sat.i64(i64 %2, i64 %i.dm)
  %i.dr = mul i64 %spec.select.i.i.i.i.i.i.i.i, %i.co
  %.sroa.0.0.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.cu, i64 %i.dr)
  %i.ds = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.0.0.i.i.i.i.i.i, i64 1)
  br label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB6_3map3MapINtNtNtBa_3ops5range5RangeyENCNvXsa_B10_INtB10_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB36_5types23DurationMillisecondTypeENCINvNtB10_5array4randB4a_E0ENtB10_14ArrayGenerator8generate0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB12_.exit.i.i.i.i

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB6_3map3MapINtNtNtBa_3ops5range5RangeyENCNvXsa_B10_INtB10_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB36_5types23DurationMillisecondTypeENCINvNtB10_5array4randB4a_E0ENtB10_14ArrayGenerator8generate0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB12_.exit.i.i.i.i: ; preds = %bb.s, %bb.r
  %.sroa.0.0.i.sink.i.i.i.i.i = phi i64 [ %i.ds, %bb.s ], [ 1, %bb.r ]
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs342JT7D9NXi_13lance_datagen(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.cq, i64 noundef %.sroa.0.0.i.sink.i.i.i.i.i, i64 noundef 8, i64 noundef 8)
          to label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB6_3map3MapINtNtNtBa_3ops5range5RangeyENCNvXsa_B10_INtB10_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB36_5types23DurationMillisecondTypeENCINvNtB10_5array4randB4a_E0ENtB10_14ArrayGenerator8generate0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB12_.exit.i.i._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i_crit_edge.i.i unwind label %bb.t, !noalias !14556

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB6_3map3MapINtNtNtBa_3ops5range5RangeyENCNvXsa_B10_INtB10_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB36_5types23DurationMillisecondTypeENCINvNtB10_5array4randB4a_E0ENtB10_14ArrayGenerator8generate0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB12_.exit.i.i._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i_crit_edge.i.i: ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB6_3map3MapINtNtNtBa_3ops5range5RangeyENCNvXsa_B10_INtB10_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB36_5types23DurationMillisecondTypeENCINvNtB10_5array4randB4a_E0ENtB10_14ArrayGenerator8generate0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB12_.exit.i.i.i.i
  %.pre.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i28, align 8, !alias.scope !14564, !noalias !14556
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i30

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i30: ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB6_3map3MapINtNtNtBa_3ops5range5RangeyENCNvXsa_B10_INtB10_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB36_5types23DurationMillisecondTypeENCINvNtB10_5array4randB4a_E0ENtB10_14ArrayGenerator8generate0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB12_.exit.i.i._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i_crit_edge.i.i, %bb.q
  %i.dt = phi ptr [ %.pre.i.i, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB6_3map3MapINtNtNtBa_3ops5range5RangeyENCNvXsa_B10_INtB10_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB36_5types23DurationMillisecondTypeENCINvNtB10_5array4randB4a_E0ENtB10_14ArrayGenerator8generate0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB12_.exit.i.i._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i_crit_edge.i.i ], [ %i.cp, %bb.q ] ; 2 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.cq
  store i64 %.pre.i.i11.i.i.i.i, ptr %i.du, align 8, !noalias !14565
  %i.dv = add nuw nsw i64 %i.cq, 1                ; 3 uses
  store i64 %i.dv, ptr %.sroa.6.0..sroa_idx.i.i29, align 8, !alias.scope !14564, !noalias !14556
  %i.dw = icmp eq i64 %i.cu, 0
  br i1 %i.dw, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecxEINtB2_10SpecExtendxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters4take4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB1h_3map3MapINtNtNtB1l_3ops5range5RangeyENCNvXsa_B25_INtB25_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB4d_5types23DurationMillisecondTypeENCINvNtB25_5array4randB5h_E0ENtB25_14ArrayGenerator8generate0EEEE11spec_extendB27_.exit.i.i.loopexit, label %bb.n

bb.t:                                             ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB6_3map3MapINtNtNtBa_3ops5range5RangeyENCNvXsa_B10_INtB10_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB36_5types23DurationMillisecondTypeENCINvNtB10_5array4randB4a_E0ENtB10_14ArrayGenerator8generate0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB12_.exit.i.i.i.i
  %i.dx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i.i = load i64, ptr %i.a, align 8, !noalias !14556 ; 2 uses
  %i.dy = icmp eq i64 %.val.i.i, 0
  br i1 %i.dy, label %common.resume, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.val7.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i28, align 8, !noalias !14556, !nonnull !10, !noundef !10
  %i.dz = shl nuw i64 %.val.i.i, 3
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i.i, i64 noundef %i.dz, i64 noundef range(i64 1, -9223372036854775807) 8) #36, !noalias !14556
  br label %common.resume

_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecxEINtB2_10SpecExtendxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters4take4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB1h_3map3MapINtNtNtB1l_3ops5range5RangeyENCNvXsa_B25_INtB25_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB4d_5types23DurationMillisecondTypeENCINvNtB25_5array4randB5h_E0ENtB25_14ArrayGenerator8generate0EEEE11spec_extendB27_.exit.i.i.loopexit: ; preds = %bb.o, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i30
  %.sroa.12.0.copyload4083 = phi i64 [ %i.cq, %bb.o ], [ %i.dv, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i30 ]
  %.sroa.034.0.copyload35.pre = load i64, ptr %i.a, align 8, !noalias !14566
  %.sroa.836.0.copyload38.pre = load ptr, ptr %.sroa.4.0..sroa_idx.i.i28, align 8, !noalias !14566
  %.pre.pre.pre = load i32, ptr %i.o, align 8
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters4take4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB1m_3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_B2a_INtB2a_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB4i_5types23DurationMillisecondTypeENCINvNtB2a_5array4randB5m_E0ENtB2a_14ArrayGenerator8generate0EEEE9from_iterB2c_.exit

common.resume:                                    ; preds = %bb.an, %bb.ao, %bb.am, %bb.ad, %bb.aj, %bb.t, %bb.u
  %common.resume.op = phi { ptr, i32 } [ %i.dx, %bb.t ], [ %i.dx, %bb.u ], [ %i.gh, %bb.ao ], [ %i.gd, %bb.aj ], [ %i.gh, %bb.an ], [ %i.ft, %bb.ad ], [ %lpad.thr_comm.split-lp, %bb.am ]
  resume { ptr, i32 } %common.resume.op

_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters4take4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB1m_3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_B2a_INtB2a_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB4i_5types23DurationMillisecondTypeENCINvNtB2a_5array4randB5m_E0ENtB2a_14ArrayGenerator8generate0EEEE9from_iterB2c_.exit: ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs342JT7D9NXi_13lance_datagen.exit.i.i, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecxEINtB2_10SpecExtendxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters4take4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB1h_3map3MapINtNtNtB1l_3ops5range5RangeyENCNvXsa_B25_INtB25_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB4d_5types23DurationMillisecondTypeENCINvNtB25_5array4randB5h_E0ENtB25_14ArrayGenerator8generate0EEEE11spec_extendB27_.exit.i.i.loopexit, %bb.g
  %.pre = phi i32 [ %i.p, %bb.g ], [ %.pre.pre.pre, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecxEINtB2_10SpecExtendxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters4take4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB1h_3map3MapINtNtNtB1l_3ops5range5RangeyENCNvXsa_B25_INtB25_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB4d_5types23DurationMillisecondTypeENCINvNtB25_5array4randB5h_E0ENtB25_14ArrayGenerator8generate0EEEE11spec_extendB27_.exit.i.i.loopexit ], [ %i.p, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs342JT7D9NXi_13lance_datagen.exit.i.i ]
  %.sroa.12.1 = phi i64 [ 0, %bb.g ], [ %.sroa.12.0.copyload4083, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecxEINtB2_10SpecExtendxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters4take4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB1h_3map3MapINtNtNtB1l_3ops5range5RangeyENCNvXsa_B25_INtB25_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB4d_5types23DurationMillisecondTypeENCINvNtB25_5array4randB5h_E0ENtB25_14ArrayGenerator8generate0EEEE11spec_extendB27_.exit.i.i.loopexit ], [ 1, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs342JT7D9NXi_13lance_datagen.exit.i.i ]
  %.sroa.836.1 = phi ptr [ inttoptr (i64 8 to ptr), %bb.g ], [ %.sroa.836.0.copyload38.pre, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecxEINtB2_10SpecExtendxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters4take4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB1h_3map3MapINtNtNtB1l_3ops5range5RangeyENCNvXsa_B25_INtB25_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB4d_5types23DurationMillisecondTypeENCINvNtB25_5array4randB5h_E0ENtB25_14ArrayGenerator8generate0EEEE11spec_extendB27_.exit.i.i.loopexit ], [ %i.cj, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs342JT7D9NXi_13lance_datagen.exit.i.i ]
  %.sroa.034.1 = phi i64 [ 0, %bb.g ], [ %.sroa.034.0.copyload35.pre, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecxEINtB2_10SpecExtendxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters4take4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB1h_3map3MapINtNtNtB1l_3ops5range5RangeyENCNvXsa_B25_INtB25_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB4d_5types23DurationMillisecondTypeENCINvNtB25_5array4randB5h_E0ENtB25_14ArrayGenerator8generate0EEEE11spec_extendB27_.exit.i.i.loopexit ], [ %.sroa.0.0.i.sink.i.i.i, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs342JT7D9NXi_13lance_datagen.exit.i.i ]
end_hunk_6
begin_hunk_7_@_RNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB5_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB14_5types23DurationMillisecondTypeENCINvNtB5_5array4randB28_E0ENtB5_14ArrayGenerator8generateB7_:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.66, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.66)
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %.sroa.8.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.8.0..sroa_idx8, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.518.0..sroa_idx, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  store i64 %i.fv, ptr %i.g, align 8
  %.sroa.66.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.66.0..sroa_idx7, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.66, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.66)
  %i.fy = call { ptr, ptr } @_RNvNtCs4ytUTZt2Gw9_11arrow_array5array10make_array(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(136) %i.g) ; 2 uses
  %i.fz = extractvalue { ptr, ptr } %i.fy, 0
  %i.ga = extractvalue { ptr, ptr } %i.fy, 1
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fz, ptr %i.gb, align 8
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ga, ptr %i.gc, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.al, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  ret void

bb.aj:                                            ; preds = %_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types23DurationMillisecondTypeENtB7_5Array9into_dataCs342JT7D9NXi_13lance_datagen.exit
  %i.gd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs56ggtDZRYpd_10arrow_data4data16ArrayDataBuilderECs342JT7D9NXi_13lance_datagen(ptr noalias noundef align 8 dereferenceable(184) %i.j) #38
          to label %common.resume unwind label %bb.ak

bb.ak:                                            ; preds = %bb.am, %bb.aj
  %i.ge = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.al:                                            ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.fr, ptr noundef nonnull align 8 dereferenceable(112) %i.f, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fr, ptr %i.gf, align 8
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @608, ptr %i.gg, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.ai

bb.am:                                            ; preds = %bb.z
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBI_5types23DurationMillisecondTypeEECs342JT7D9NXi_13lance_datagen(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.n) #38
          to label %common.resume unwind label %bb.ak

bb.an:                                            ; preds = %bb.w
  %i.gh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gi = icmp eq i64 %.sroa.034.0110, 0
  br i1 %i.gi, label %common.resume, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gj = shl nuw i64 %.sroa.034.0110, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.836.0108) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.836.0108, i64 noundef %i.gj, i64 noundef range(i64 1, -9223372036854775807) 8) #36
  br label %common.resume
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB5_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB14_5types23DurationMillisecondTypeENCINvNtB5_5array4randB28_E0ENtB5_14ArrayGenerator9data_typeB7_(ptr noalias noundef readonly align 8 captures(ret: address, read_provenance) dereferenceable(56) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { i64, i64 } @_RNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB5_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB14_5types23TimestampNanosecondTypeENCNvNtB5_5array23rand_timestamp_in_range0ENtB5_14ArrayGenerator18element_size_bytesB7_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(80) %0) unnamed_addr #10 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !25, !noundef !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = insertvalue { i64, i64 } poison, i64 %i.a, 0
  %i.e = insertvalue { i64, i64 } %i.d, i64 %i.c, 1
  ret { i64, i64 } %i.e
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB5_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB14_5types23TimestampNanosecondTypeENCNvNtB5_5array23rand_timestamp_in_range0ENtB5_14ArrayGenerator8generateB7_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %1, i64 noundef %2, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [136 x i8], align 8               ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.f = alloca [112 x i8], align 8               ; 6 uses
  %i.g = alloca [136 x i8], align 8               ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [96 x i8], align 8                ; 4 uses
  %i.j = alloca [184 x i8], align 8               ; 14 uses
  %i.k = alloca [184 x i8], align 8               ; 4 uses
  %i.l = alloca [136 x i8], align 8               ; 7 uses
  %.sroa.66 = alloca [32 x i8], align 8           ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [96 x i8], align 8                ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !noundef !10 ; 13 uses
  %i.r = icmp ugt i32 %i.q, 1
  br i1 %i.r, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = shl i64 %2, 3                            ; 4 uses
  %i.t = icmp ugt i64 %2, 2305843009213693951
  %.not.i.i.i.i = icmp ugt i64 %i.s, 9223372036854775800
  %or.cond.i.i.i.i = or i1 %i.t, %.not.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %bb.e, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.u = icmp eq i64 %i.s, 0
  br i1 %i.u, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !14718
  %i.v = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.s, i64 noundef range(i64 1, 9) 8) #36, !noalias !14718 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.e, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i

bb.e:                                             ; preds = %bb.d, %bb.b
  %.sroa.4.0.ph.i.i.i = phi i64 [ 8, %bb.d ], [ 0, %bb.b ]
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.s) #37, !noalias !14719
  unreachable

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i: ; preds = %bb.d, %bb.c
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.c ], [ %i.v, %bb.d ] ; 8 uses
  %.sroa.4.0.i.i.i = phi i64 [ 0, %bb.c ], [ %2, %bb.d ] ; 5 uses
  %i.x = icmp samesign ule i64 %2, %.sroa.4.0.i.i.i
  tail call void @llvm.assume(i1 %i.x)
  %.not67 = icmp eq i64 %2, 0
  br i1 %.not67, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types23TimestampNanosecondTypeENCNvNtB2G_5array23rand_timestamp_in_range0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.thread, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.ac = load i64, ptr %i.y, align 8, !alias.scope !14720, !noalias !14721, !noundef !10 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  %i.ae = zext i64 %i.ac to i128
  br i1 %i.ad, label %.lr.ph.i.i.i.i.i.i.i.split.us, label %.lr.ph.i.i.i.i.i.i.i.split

.lr.ph.i.i.i.i.i.i.i.split.us:                    ; preds = %.lr.ph.i.i.i.i.i.i.i
  %.promoted95 = load i64, ptr %3, align 8, !alias.scope !14722, !noalias !14721 ; 2 uses
  %.promoted97 = load i64, ptr %i.z, align 8, !alias.scope !14722, !noalias !14721 ; 2 uses
  %.promoted99 = load i64, ptr %i.aa, align 8, !alias.scope !14722, !noalias !14721 ; 2 uses
  %.promoted101 = load i64, ptr %i.ab, align 8, !alias.scope !14722, !noalias !14721 ; 2 uses
  %xtraiter = and i64 %2, 1
  %i.af = icmp eq i64 %2, 1
  br i1 %i.af, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types23TimestampNanosecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB63_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.split.us.new

.lr.ph.i.i.i.i.i.i.i.split.us.new:                ; preds = %.lr.ph.i.i.i.i.i.i.i.split.us
  %unroll_iter = and i64 %2, 2305843009213693950
  br label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types23TimestampNanosecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB63_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types23TimestampNanosecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB63_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us: ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types23TimestampNanosecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB63_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us, %.lr.ph.i.i.i.i.i.i.i.split.us.new
  %i.ag = phi i64 [ %.promoted101, %.lr.ph.i.i.i.i.i.i.i.split.us.new ], [ %i.bf, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types23TimestampNanosecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB63_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us ]
  %i.ah = phi i64 [ %.promoted99, %.lr.ph.i.i.i.i.i.i.i.split.us.new ], [ %i.bd, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types23TimestampNanosecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB63_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us ] ; 3 uses
  %i.ai = phi i64 [ %.promoted97, %.lr.ph.i.i.i.i.i.i.i.split.us.new ], [ %i.bg, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types23TimestampNanosecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB63_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us ] ; 2 uses
  %i.aj = phi i64 [ %.promoted95, %.lr.ph.i.i.i.i.i.i.i.split.us.new ], [ %i.be, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types23TimestampNanosecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB63_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us ] ; 4 uses
  %i.ak = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.split.us.new ], [ %i.aw, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types23TimestampNanosecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB63_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.split.us.new ], [ %niter.next.1, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types23TimestampNanosecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB63_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14723)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14724)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14725)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14726)
  %i.al = add i64 %i.ai, %i.aj                    ; 2 uses
  %i.am = tail call noundef i64 @llvm.fshl.i64(i64 %i.al, i64 %i.al, i64 23)
  %i.an = add i64 %i.am, %i.aj
  %i.ao = shl i64 %i.ah, 17
  %i.ap = xor i64 %i.ag, %i.aj                    ; 2 uses
  %i.aq = xor i64 %i.ah, %i.ai                    ; 3 uses
  %i.ar = xor i64 %i.ap, %i.ah                    ; 3 uses
  %i.as = xor i64 %i.aq, %i.aj                    ; 4 uses
  %i.at = xor i64 %i.ap, %i.ao
  %i.au = tail call noundef i64 @llvm.fshl.i64(i64 %i.aq, i64 %i.aq, i64 45) ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %.sroa.10.0.i.i.i, i64 %i.ak
  store i64 %i.an, ptr %i.av, align 8, !noalias !14727
  %i.aw = add nuw nsw i64 %i.ak, 2                ; 2 uses
  %i.ax = add i64 %i.au, %i.as                    ; 2 uses
  %i.ay = tail call noundef i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 23)
  %i.az = add i64 %i.ay, %i.as
  %i.ba = shl i64 %i.ar, 17
  %i.bb = xor i64 %i.at, %i.as                    ; 2 uses
  %i.bc = xor i64 %i.ar, %i.au                    ; 3 uses
  %i.bd = xor i64 %i.bb, %i.ar                    ; 3 uses
  %i.be = xor i64 %i.bc, %i.as                    ; 3 uses
  %i.bf = xor i64 %i.bb, %i.ba                    ; 3 uses
  %i.bg = tail call noundef i64 @llvm.fshl.i64(i64 %i.bc, i64 %i.bc, i64 45) ; 3 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.10.0.i.i.i, i64 %i.ak
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store i64 %i.az, ptr %i.bi, align 8, !noalias !14727
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types23TimestampNanosecondTypeENCNvNtB2G_5array23rand_timestamp_in_range0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us.unr-lcssa, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types23TimestampNanosecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB63_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us

_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types23TimestampNanosecondTypeENCNvNtB2G_5array23rand_timestamp_in_range0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us.unr-lcssa: ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types23TimestampNanosecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB63_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types23TimestampNanosecondTypeENCNvNtB2G_5array23rand_timestamp_in_range0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types23TimestampNanosecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB63_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us.epil.preheader

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types23TimestampNanosecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB63_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us.epil.preheader: ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types23TimestampNanosecondTypeENCNvNtB2G_5array23rand_timestamp_in_range0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.split.us
  %.epil.init = phi i64 [ %.promoted101, %.lr.ph.i.i.i.i.i.i.i.split.us ], [ %i.bf, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types23TimestampNanosecondTypeENCNvNtB2G_5array23rand_timestamp_in_range0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us.unr-lcssa ]
  %.epil.init249 = phi i64 [ %.promoted99, %.lr.ph.i.i.i.i.i.i.i.split.us ], [ %i.bd, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types23TimestampNanosecondTypeENCNvNtB2G_5array23rand_timestamp_in_range0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us.unr-lcssa ] ; 3 uses
  %.epil.init251 = phi i64 [ %.promoted97, %.lr.ph.i.i.i.i.i.i.i.split.us ], [ %i.bg, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types23TimestampNanosecondTypeENCNvNtB2G_5array23rand_timestamp_in_range0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us.unr-lcssa ] ; 2 uses
  %.epil.init253 = phi i64 [ %.promoted95, %.lr.ph.i.i.i.i.i.i.i.split.us ], [ %i.be, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types23TimestampNanosecondTypeENCNvNtB2G_5array23rand_timestamp_in_range0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us.unr-lcssa ] ; 4 uses
  %.epil.init255 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.split.us ], [ %i.aw, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types23TimestampNanosecondTypeENCNvNtB2G_5array23rand_timestamp_in_range0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us.unr-lcssa ]
  %lcmp.mod260 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod260)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14723)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14724)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14725)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14726)
  %i.bj = add i64 %.epil.init251, %.epil.init253  ; 2 uses
  %i.bk = tail call noundef i64 @llvm.fshl.i64(i64 %i.bj, i64 %i.bj, i64 23)
  %i.bl = add i64 %i.bk, %.epil.init253
  %i.bm = shl i64 %.epil.init249, 17
  %i.bn = xor i64 %.epil.init, %.epil.init253     ; 2 uses
  %i.bo = xor i64 %.epil.init249, %.epil.init251  ; 3 uses
  %i.bp = xor i64 %i.bn, %.epil.init249
  %i.bq = xor i64 %i.bo, %.epil.init253
  %i.br = xor i64 %i.bn, %i.bm
  %i.bs = tail call noundef i64 @llvm.fshl.i64(i64 %i.bo, i64 %i.bo, i64 45)
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.10.0.i.i.i, i64 %.epil.init255
  store i64 %i.bl, ptr %i.bt, align 8, !noalias !14727
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types23TimestampNanosecondTypeENCNvNtB2G_5array23rand_timestamp_in_range0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us

_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types23TimestampNanosecondTypeENCNvNtB2G_5array23rand_timestamp_in_range0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us: ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types23TimestampNanosecondTypeENCNvNtB2G_5array23rand_timestamp_in_range0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us.unr-lcssa, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types23TimestampNanosecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB63_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us.epil.preheader
  %.lcssa242 = phi i64 [ %i.bd, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types23TimestampNanosecondTypeENCNvNtB2G_5array23rand_timestamp_in_range0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us.unr-lcssa ], [ %i.bp, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types23TimestampNanosecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB63_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us.epil.preheader ]
  %.lcssa241 = phi i64 [ %i.be, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types23TimestampNanosecondTypeENCNvNtB2G_5array23rand_timestamp_in_range0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us.unr-lcssa ], [ %i.bq, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types23TimestampNanosecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB63_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us.epil.preheader ]
  %.lcssa240 = phi i64 [ %i.bf, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types23TimestampNanosecondTypeENCNvNtB2G_5array23rand_timestamp_in_range0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us.unr-lcssa ], [ %i.br, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types23TimestampNanosecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB63_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us.epil.preheader ]
  %.lcssa239 = phi i64 [ %i.bg, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types23TimestampNanosecondTypeENCNvNtB2G_5array23rand_timestamp_in_range0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us.unr-lcssa ], [ %i.bs, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types23TimestampNanosecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB63_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us.epil.preheader ]
  store i64 %.lcssa241, ptr %3, align 8, !alias.scope !14722, !noalias !14721
  store i64 %.lcssa239, ptr %i.z, align 8, !alias.scope !14722, !noalias !14721
  store i64 %.lcssa242, ptr %i.aa, align 8, !alias.scope !14722, !noalias !14721
  store i64 %.lcssa240, ptr %i.ab, align 8, !alias.scope !14722, !noalias !14721
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types23TimestampNanosecondTypeENCNvNtB2G_5array23rand_timestamp_in_range0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit

.lr.ph.i.i.i.i.i.i.i.split:                       ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bv = load i64, ptr %i.bu, align 8, !alias.scope !14720, !noalias !14721, !noundef !10
  %i.bw = load i64, ptr %i.o, align 8, !alias.scope !14720, !noalias !14721, !noundef !10
  %.promoted = load i64, ptr %3, align 8, !alias.scope !14728, !noalias !14721
  %.promoted89 = load i64, ptr %i.z, align 8, !alias.scope !14728, !noalias !14721
  %.promoted91 = load i64, ptr %i.aa, align 8, !alias.scope !14728, !noalias !14721
  %.promoted93 = load i64, ptr %i.ab, align 8, !alias.scope !14728, !noalias !14721
  br label %bb.f

bb.f:                                             ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types23TimestampNanosecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB63_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.split
  %.lcssa8494 = phi i64 [ %.promoted93, %.lr.ph.i.i.i.i.i.i.i.split ], [ %i.ck, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types23TimestampNanosecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB63_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i ]
  %.lcssa8692 = phi i64 [ %.promoted91, %.lr.ph.i.i.i.i.i.i.i.split ], [ %i.ci, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types23TimestampNanosecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB63_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i ]
  %.lcssa8390 = phi i64 [ %.promoted89, %.lr.ph.i.i.i.i.i.i.i.split ], [ %i.cl, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types23TimestampNanosecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB63_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i ]
  %.lcssa8588 = phi i64 [ %.promoted, %.lr.ph.i.i.i.i.i.i.i.split ], [ %i.cj, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types23TimestampNanosecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB63_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i ]
  %i.bx = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.split ], [ %i.cp, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types23TimestampNanosecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB63_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14723)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14724)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14725)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14726)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %i.by = phi i64 [ %i.ck, %bb.g ], [ %.lcssa8494, %bb.f ]
  %i.bz = phi i64 [ %i.ci, %bb.g ], [ %.lcssa8692, %bb.f ] ; 3 uses
  %i.ca = phi i64 [ %i.cl, %bb.g ], [ %.lcssa8390, %bb.f ] ; 2 uses
  %i.cb = phi i64 [ %i.cj, %bb.g ], [ %.lcssa8588, %bb.f ] ; 4 uses
  %i.cc = add i64 %i.cb, %i.ca                    ; 2 uses
  %i.cd = tail call noundef i64 @llvm.fshl.i64(i64 %i.cc, i64 %i.cc, i64 23)
  %i.ce = add i64 %i.cd, %i.cb
  %i.cf = shl i64 %i.bz, 17
  %i.cg = xor i64 %i.cb, %i.by                    ; 2 uses
  %i.ch = xor i64 %i.ca, %i.bz                    ; 3 uses
  %i.ci = xor i64 %i.cg, %i.bz                    ; 3 uses
  %i.cj = xor i64 %i.ch, %i.cb                    ; 3 uses
  %i.ck = xor i64 %i.cg, %i.cf                    ; 3 uses
  %i.cl = tail call noundef i64 @llvm.fshl.i64(i64 %i.ch, i64 %i.ch, i64 45) ; 3 uses
  %i.cm = zext i64 %i.ce to i128
  %i.cn = mul nuw i128 %i.cm, %i.ae               ; 2 uses
  %i.co = trunc i128 %i.cn to i64
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp ugt i64 %i.bv, %i.co
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.g, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types23TimestampNanosecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB63_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types23TimestampNanosecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB63_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i: ; preds = %bb.g
  %i.cp = add nuw nsw i64 %i.bx, 1                ; 2 uses
  %i.cq = lshr i128 %i.cn, 64
  %i.cr = trunc nuw i128 %i.cq to i64
  %i.cs = add i64 %i.bw, %i.cr
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %.sroa.10.0.i.i.i, i64 %i.bx
  store i64 %i.cs, ptr %i.ct, align 8, !noalias !14727
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.cp, %2
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types23TimestampNanosecondTypeENCNvNtB2G_5array23rand_timestamp_in_range0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split, label %bb.f

bb.h:                                             ; preds = %bb.a
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cv = load i64, ptr %i.cu, align 8, !noundef !10
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.cx = load i32, ptr %i.cw, align 4, !noundef !10 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14729
  %i.cy = icmp eq i64 %2, 0
  br i1 %i.cy, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters4take4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB1m_3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_B2a_INtB2a_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB4i_5types23TimestampNanosecondTypeENCNvNtB2a_5array23rand_timestamp_in_range0ENtB2a_14ArrayGenerator8generate0EEEE9from_iterB2c_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cz = add i64 %2, -1                          ; 3 uses
  %i.da = icmp eq i32 %i.cx, 0
  br i1 %i.da, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14730), !noalias !14731
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14732), !noalias !14731
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14733), !noalias !14731
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14734), !noalias !14731
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.dc = load i64, ptr %i.db, align 8, !alias.scope !14735, !noalias !14736, !noundef !10 ; 2 uses
  %i.dd = icmp eq i64 %i.dc, 0
  br i1 %i.dd, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.de = load i64, ptr %3, align 8, !alias.scope !14737, !noalias !14736, !noundef !10 ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.dg = load i64, ptr %i.df, align 8, !alias.scope !14737, !noalias !14736, !noundef !10 ; 2 uses
  %i.dh = add i64 %i.dg, %i.de                    ; 2 uses
  %i.di = tail call noundef i64 @llvm.fshl.i64(i64 %i.dh, i64 %i.dh, i64 23)
  %i.dj = add i64 %i.di, %i.de
  %i.dk = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.dl = load i64, ptr %i.dk, align 8, !alias.scope !14737, !noalias !14736, !noundef !10 ; 3 uses
  %i.dm = shl i64 %i.dl, 17
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.do = load i64, ptr %i.dn, align 8, !alias.scope !14737, !noalias !14736, !noundef !10
  %i.dp = xor i64 %i.do, %i.de                    ; 2 uses
  %i.dq = xor i64 %i.dl, %i.dg                    ; 3 uses
  %i.dr = xor i64 %i.dp, %i.dl
  store i64 %i.dr, ptr %i.dk, align 8, !alias.scope !14737, !noalias !14736
  %i.ds = xor i64 %i.dq, %i.de
  store i64 %i.ds, ptr %3, align 8, !alias.scope !14737, !noalias !14736
  %i.dt = xor i64 %i.dp, %i.dm
  store i64 %i.dt, ptr %i.dn, align 8, !alias.scope !14737, !noalias !14736
  %i.du = tail call noundef i64 @llvm.fshl.i64(i64 %i.dq, i64 %i.dq, i64 45)
  store i64 %i.du, ptr %i.df, align 8, !alias.scope !14737, !noalias !14736
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.dw = load i64, ptr %i.dv, align 8, !alias.scope !14735, !noalias !14736, !noundef !10
  %i.dx = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ea = zext i64 %i.dc to i128
  %.promoted.i.i.i.i.i.i.i = load i64, ptr %3, align 8, !alias.scope !14738, !noalias !14736
  %.promoted2.i.i.i.i.i.i.i = load i64, ptr %i.dx, align 8, !alias.scope !14738, !noalias !14736
  %.promoted4.i.i.i.i.i.i.i = load i64, ptr %i.dy, align 8, !alias.scope !14738, !noalias !14736
  %.promoted6.i.i.i.i.i.i.i = load i64, ptr %i.dz, align 8, !alias.scope !14738, !noalias !14736
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %bb.l
  %i.eb = phi i64 [ %i.en, %bb.m ], [ %.promoted6.i.i.i.i.i.i.i, %bb.l ]
  %i.ec = phi i64 [ %i.el, %bb.m ], [ %.promoted4.i.i.i.i.i.i.i, %bb.l ] ; 3 uses
  %i.ed = phi i64 [ %i.eo, %bb.m ], [ %.promoted2.i.i.i.i.i.i.i, %bb.l ] ; 2 uses
  %i.ee = phi i64 [ %i.em, %bb.m ], [ %.promoted.i.i.i.i.i.i.i, %bb.l ] ; 4 uses
  %i.ef = add i64 %i.ee, %i.ed                    ; 2 uses
  %i.eg = tail call noundef i64 @llvm.fshl.i64(i64 %i.ef, i64 %i.ef, i64 23)
  %i.eh = add i64 %i.eg, %i.ee
  %i.ei = shl i64 %i.ec, 17
  %i.ej = xor i64 %i.ee, %i.eb                    ; 2 uses
  %i.ek = xor i64 %i.ed, %i.ec                    ; 3 uses
  %i.el = xor i64 %i.ej, %i.ec                    ; 2 uses
  %i.em = xor i64 %i.ek, %i.ee                    ; 2 uses
  %i.en = xor i64 %i.ej, %i.ei                    ; 2 uses
  %i.eo = tail call noundef i64 @llvm.fshl.i64(i64 %i.ek, i64 %i.ek, i64 45) ; 2 uses
  %i.ep = zext i64 %i.eh to i128
  %i.eq = mul nuw i128 %i.ep, %i.ea               ; 2 uses
  %i.er = trunc i128 %i.eq to i64
  %.not.i.i.i.i.i.i.i = icmp ugt i64 %i.dw, %i.er
  br i1 %.not.i.i.i.i.i.i.i, label %bb.m, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i64 %i.em, ptr %3, align 8, !alias.scope !14738, !noalias !14736
  store i64 %i.eo, ptr %i.dx, align 8, !alias.scope !14738, !noalias !14736
  store i64 %i.el, ptr %i.dy, align 8, !alias.scope !14738, !noalias !14736
  store i64 %i.en, ptr %i.dz, align 8, !alias.scope !14738, !noalias !14736
  %i.es = lshr i128 %i.eq, 64
  %i.et = trunc nuw i128 %i.es to i64
  %i.eu = load i64, ptr %i.o, align 8, !alias.scope !14735, !noalias !14736, !noundef !10
  %i.ev = add i64 %i.eu, %i.et
  br label %bb.o

bb.o:                                             ; preds = %bb.i, %bb.n, %bb.k
  %.sroa.7.0 = phi i64 [ 1, %bb.k ], [ 1, %bb.n ], [ 0, %bb.i ] ; 3 uses
  %.sroa.22.0.copyload.i.in.i = phi i32 [ %i.q, %bb.k ], [ %i.q, %bb.n ], [ %i.cx, %bb.i ]
  %.sroa.15.0.copyload.i.i = phi i64 [ %i.dj, %bb.k ], [ %i.ev, %bb.n ], [ %i.cv, %bb.i ] ; 2 uses
  %.sroa.22.0.copyload.i.i = add i32 %.sroa.22.0.copyload.i.in.i, -1 ; 2 uses
  %i.ew = icmp eq i64 %i.cz, 0                    ; 2 uses
  br i1 %i.ew, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB6_3map3MapINtNtNtBa_3ops5range5RangeyENCNvXsa_B10_INtB10_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB36_5types23TimestampNanosecondTypeENCNvNtB10_5array23rand_timestamp_in_range0ENtB10_14ArrayGenerator8generate0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB12_.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %spec.select.i.i.i.i.i.i66 = sub nuw i64 %2, %.sroa.7.0
end_hunk_7
begin_hunk_8_@_RNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB5_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB14_5types23TimestampNanosecondTypeENCNvNtB5_5array23rand_timestamp_in_range0ENtB5_14ArrayGenerator8generateB7_:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.66, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.66)
  br label %bb.aw

bb.av:                                            ; preds = %bb.at
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %.sroa.8.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.8.0..sroa_idx8, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.518.0..sroa_idx, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  store i64 %i.ky, ptr %i.g, align 8
  %.sroa.66.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.66.0..sroa_idx7, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.66, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.66)
  %i.lb = call { ptr, ptr } @_RNvNtCs4ytUTZt2Gw9_11arrow_array5array10make_array(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(136) %i.g) ; 2 uses
  %i.lc = extractvalue { ptr, ptr } %i.lb, 0
  %i.ld = extractvalue { ptr, ptr } %i.lb, 1
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.lc, ptr %i.le, align 8
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ld, ptr %i.lf, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.aw

bb.aw:                                            ; preds = %bb.au, %bb.az, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  ret void

bb.ax:                                            ; preds = %_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types23TimestampNanosecondTypeENtB7_5Array9into_dataCs342JT7D9NXi_13lance_datagen.exit
  %i.lg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs56ggtDZRYpd_10arrow_data4data16ArrayDataBuilderECs342JT7D9NXi_13lance_datagen(ptr noalias noundef align 8 dereferenceable(184) %i.j) #38
          to label %common.resume unwind label %bb.ay

bb.ay:                                            ; preds = %bb.ba, %bb.ax
  %i.lh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.az:                                            ; preds = %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ku, ptr noundef nonnull align 8 dereferenceable(112) %i.f, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ku, ptr %i.li, align 8
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @610, ptr %i.lj, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.aw

bb.ba:                                            ; preds = %bb.an
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBI_5types23TimestampNanosecondTypeEECs342JT7D9NXi_13lance_datagen(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.n) #38
          to label %common.resume unwind label %bb.ay

bb.bb:                                            ; preds = %bb.ak
  %i.lk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ll = icmp eq i64 %.sroa.035.0157, 0
  br i1 %i.ll, label %common.resume, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.lm = shl nuw i64 %.sroa.035.0157, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.837.0155) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.837.0155, i64 noundef %i.lm, i64 noundef range(i64 1, -9223372036854775807) 8) #36
  br label %common.resume
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB5_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB14_5types23TimestampNanosecondTypeENCNvNtB5_5array23rand_timestamp_in_range0ENtB5_14ArrayGenerator9data_typeB7_(ptr noalias noundef readonly align 8 captures(ret: address, read_provenance) dereferenceable(80) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { i64, i64 } @_RNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB5_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB14_5types24TimestampMicrosecondTypeENCNvNtB5_5array23rand_timestamp_in_range0ENtB5_14ArrayGenerator18element_size_bytesB7_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(80) %0) unnamed_addr #10 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !25, !noundef !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = insertvalue { i64, i64 } poison, i64 %i.a, 0
  %i.e = insertvalue { i64, i64 } %i.d, i64 %i.c, 1
  ret { i64, i64 } %i.e
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB5_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB14_5types24TimestampMicrosecondTypeENCNvNtB5_5array23rand_timestamp_in_range0ENtB5_14ArrayGenerator8generateB7_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %1, i64 noundef %2, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [136 x i8], align 8               ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.f = alloca [112 x i8], align 8               ; 6 uses
  %i.g = alloca [136 x i8], align 8               ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [96 x i8], align 8                ; 4 uses
  %i.j = alloca [184 x i8], align 8               ; 14 uses
  %i.k = alloca [184 x i8], align 8               ; 4 uses
  %i.l = alloca [136 x i8], align 8               ; 7 uses
  %.sroa.66 = alloca [32 x i8], align 8           ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [96 x i8], align 8                ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !noundef !10 ; 13 uses
  %i.r = icmp ugt i32 %i.q, 1
  br i1 %i.r, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = shl i64 %2, 3                            ; 4 uses
  %i.t = icmp ugt i64 %2, 2305843009213693951
  %.not.i.i.i.i = icmp ugt i64 %i.s, 9223372036854775800
  %or.cond.i.i.i.i = or i1 %i.t, %.not.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %bb.e, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.u = icmp eq i64 %i.s, 0
  br i1 %i.u, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !14912
  %i.v = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.s, i64 noundef range(i64 1, 9) 8) #36, !noalias !14912 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.e, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i

bb.e:                                             ; preds = %bb.d, %bb.b
  %.sroa.4.0.ph.i.i.i = phi i64 [ 8, %bb.d ], [ 0, %bb.b ]
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.s) #37, !noalias !14913
  unreachable

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i: ; preds = %bb.d, %bb.c
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.c ], [ %i.v, %bb.d ] ; 8 uses
  %.sroa.4.0.i.i.i = phi i64 [ 0, %bb.c ], [ %2, %bb.d ] ; 5 uses
  %i.x = icmp samesign ule i64 %2, %.sroa.4.0.i.i.i
  tail call void @llvm.assume(i1 %i.x)
  %.not67 = icmp eq i64 %2, 0
  br i1 %.not67, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types24TimestampMicrosecondTypeENCNvNtB2G_5array23rand_timestamp_in_range0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.thread, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.ac = load i64, ptr %i.y, align 8, !alias.scope !14914, !noalias !14915, !noundef !10 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  %i.ae = zext i64 %i.ac to i128
  br i1 %i.ad, label %.lr.ph.i.i.i.i.i.i.i.split.us, label %.lr.ph.i.i.i.i.i.i.i.split

.lr.ph.i.i.i.i.i.i.i.split.us:                    ; preds = %.lr.ph.i.i.i.i.i.i.i
  %.promoted95 = load i64, ptr %3, align 8, !alias.scope !14916, !noalias !14915 ; 2 uses
  %.promoted97 = load i64, ptr %i.z, align 8, !alias.scope !14916, !noalias !14915 ; 2 uses
  %.promoted99 = load i64, ptr %i.aa, align 8, !alias.scope !14916, !noalias !14915 ; 2 uses
  %.promoted101 = load i64, ptr %i.ab, align 8, !alias.scope !14916, !noalias !14915 ; 2 uses
  %xtraiter = and i64 %2, 1
  %i.af = icmp eq i64 %2, 1
  br i1 %i.af, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types24TimestampMicrosecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB64_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.split.us.new

.lr.ph.i.i.i.i.i.i.i.split.us.new:                ; preds = %.lr.ph.i.i.i.i.i.i.i.split.us
  %unroll_iter = and i64 %2, 2305843009213693950
  br label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types24TimestampMicrosecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB64_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types24TimestampMicrosecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB64_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us: ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types24TimestampMicrosecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB64_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us, %.lr.ph.i.i.i.i.i.i.i.split.us.new
  %i.ag = phi i64 [ %.promoted101, %.lr.ph.i.i.i.i.i.i.i.split.us.new ], [ %i.bf, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types24TimestampMicrosecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB64_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us ]
  %i.ah = phi i64 [ %.promoted99, %.lr.ph.i.i.i.i.i.i.i.split.us.new ], [ %i.bd, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types24TimestampMicrosecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB64_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us ] ; 3 uses
  %i.ai = phi i64 [ %.promoted97, %.lr.ph.i.i.i.i.i.i.i.split.us.new ], [ %i.bg, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types24TimestampMicrosecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB64_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us ] ; 2 uses
  %i.aj = phi i64 [ %.promoted95, %.lr.ph.i.i.i.i.i.i.i.split.us.new ], [ %i.be, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types24TimestampMicrosecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB64_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us ] ; 4 uses
  %i.ak = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.split.us.new ], [ %i.aw, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types24TimestampMicrosecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB64_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.split.us.new ], [ %niter.next.1, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types24TimestampMicrosecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB64_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14917)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14918)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14919)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14920)
  %i.al = add i64 %i.ai, %i.aj                    ; 2 uses
  %i.am = tail call noundef i64 @llvm.fshl.i64(i64 %i.al, i64 %i.al, i64 23)
  %i.an = add i64 %i.am, %i.aj
  %i.ao = shl i64 %i.ah, 17
  %i.ap = xor i64 %i.ag, %i.aj                    ; 2 uses
  %i.aq = xor i64 %i.ah, %i.ai                    ; 3 uses
  %i.ar = xor i64 %i.ap, %i.ah                    ; 3 uses
  %i.as = xor i64 %i.aq, %i.aj                    ; 4 uses
  %i.at = xor i64 %i.ap, %i.ao
  %i.au = tail call noundef i64 @llvm.fshl.i64(i64 %i.aq, i64 %i.aq, i64 45) ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %.sroa.10.0.i.i.i, i64 %i.ak
  store i64 %i.an, ptr %i.av, align 8, !noalias !14921
  %i.aw = add nuw nsw i64 %i.ak, 2                ; 2 uses
  %i.ax = add i64 %i.au, %i.as                    ; 2 uses
  %i.ay = tail call noundef i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 23)
  %i.az = add i64 %i.ay, %i.as
  %i.ba = shl i64 %i.ar, 17
  %i.bb = xor i64 %i.at, %i.as                    ; 2 uses
  %i.bc = xor i64 %i.ar, %i.au                    ; 3 uses
  %i.bd = xor i64 %i.bb, %i.ar                    ; 3 uses
  %i.be = xor i64 %i.bc, %i.as                    ; 3 uses
  %i.bf = xor i64 %i.bb, %i.ba                    ; 3 uses
  %i.bg = tail call noundef i64 @llvm.fshl.i64(i64 %i.bc, i64 %i.bc, i64 45) ; 3 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.10.0.i.i.i, i64 %i.ak
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store i64 %i.az, ptr %i.bi, align 8, !noalias !14921
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types24TimestampMicrosecondTypeENCNvNtB2G_5array23rand_timestamp_in_range0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us.unr-lcssa, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types24TimestampMicrosecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB64_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us

_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types24TimestampMicrosecondTypeENCNvNtB2G_5array23rand_timestamp_in_range0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us.unr-lcssa: ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types24TimestampMicrosecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB64_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types24TimestampMicrosecondTypeENCNvNtB2G_5array23rand_timestamp_in_range0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types24TimestampMicrosecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB64_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us.epil.preheader

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types24TimestampMicrosecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB64_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us.epil.preheader: ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types24TimestampMicrosecondTypeENCNvNtB2G_5array23rand_timestamp_in_range0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.split.us
  %.epil.init = phi i64 [ %.promoted101, %.lr.ph.i.i.i.i.i.i.i.split.us ], [ %i.bf, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types24TimestampMicrosecondTypeENCNvNtB2G_5array23rand_timestamp_in_range0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us.unr-lcssa ]
  %.epil.init249 = phi i64 [ %.promoted99, %.lr.ph.i.i.i.i.i.i.i.split.us ], [ %i.bd, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types24TimestampMicrosecondTypeENCNvNtB2G_5array23rand_timestamp_in_range0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us.unr-lcssa ] ; 3 uses
  %.epil.init251 = phi i64 [ %.promoted97, %.lr.ph.i.i.i.i.i.i.i.split.us ], [ %i.bg, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types24TimestampMicrosecondTypeENCNvNtB2G_5array23rand_timestamp_in_range0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us.unr-lcssa ] ; 2 uses
  %.epil.init253 = phi i64 [ %.promoted95, %.lr.ph.i.i.i.i.i.i.i.split.us ], [ %i.be, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types24TimestampMicrosecondTypeENCNvNtB2G_5array23rand_timestamp_in_range0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us.unr-lcssa ] ; 4 uses
  %.epil.init255 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.split.us ], [ %i.aw, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types24TimestampMicrosecondTypeENCNvNtB2G_5array23rand_timestamp_in_range0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us.unr-lcssa ]
  %lcmp.mod260 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod260)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14917)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14918)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14919)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14920)
  %i.bj = add i64 %.epil.init251, %.epil.init253  ; 2 uses
  %i.bk = tail call noundef i64 @llvm.fshl.i64(i64 %i.bj, i64 %i.bj, i64 23)
  %i.bl = add i64 %i.bk, %.epil.init253
  %i.bm = shl i64 %.epil.init249, 17
  %i.bn = xor i64 %.epil.init, %.epil.init253     ; 2 uses
  %i.bo = xor i64 %.epil.init249, %.epil.init251  ; 3 uses
  %i.bp = xor i64 %i.bn, %.epil.init249
  %i.bq = xor i64 %i.bo, %.epil.init253
  %i.br = xor i64 %i.bn, %i.bm
  %i.bs = tail call noundef i64 @llvm.fshl.i64(i64 %i.bo, i64 %i.bo, i64 45)
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.10.0.i.i.i, i64 %.epil.init255
  store i64 %i.bl, ptr %i.bt, align 8, !noalias !14921
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types24TimestampMicrosecondTypeENCNvNtB2G_5array23rand_timestamp_in_range0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us

_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types24TimestampMicrosecondTypeENCNvNtB2G_5array23rand_timestamp_in_range0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us: ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types24TimestampMicrosecondTypeENCNvNtB2G_5array23rand_timestamp_in_range0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us.unr-lcssa, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types24TimestampMicrosecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB64_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us.epil.preheader
  %.lcssa242 = phi i64 [ %i.bd, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types24TimestampMicrosecondTypeENCNvNtB2G_5array23rand_timestamp_in_range0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us.unr-lcssa ], [ %i.bp, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types24TimestampMicrosecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB64_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us.epil.preheader ]
  %.lcssa241 = phi i64 [ %i.be, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types24TimestampMicrosecondTypeENCNvNtB2G_5array23rand_timestamp_in_range0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us.unr-lcssa ], [ %i.bq, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types24TimestampMicrosecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB64_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us.epil.preheader ]
  %.lcssa240 = phi i64 [ %i.bf, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types24TimestampMicrosecondTypeENCNvNtB2G_5array23rand_timestamp_in_range0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us.unr-lcssa ], [ %i.br, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types24TimestampMicrosecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB64_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us.epil.preheader ]
  %.lcssa239 = phi i64 [ %i.bg, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types24TimestampMicrosecondTypeENCNvNtB2G_5array23rand_timestamp_in_range0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us.unr-lcssa ], [ %i.bs, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types24TimestampMicrosecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB64_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us.epil.preheader ]
  store i64 %.lcssa241, ptr %3, align 8, !alias.scope !14916, !noalias !14915
  store i64 %.lcssa239, ptr %i.z, align 8, !alias.scope !14916, !noalias !14915
  store i64 %.lcssa242, ptr %i.aa, align 8, !alias.scope !14916, !noalias !14915
  store i64 %.lcssa240, ptr %i.ab, align 8, !alias.scope !14916, !noalias !14915
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types24TimestampMicrosecondTypeENCNvNtB2G_5array23rand_timestamp_in_range0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit

.lr.ph.i.i.i.i.i.i.i.split:                       ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bv = load i64, ptr %i.bu, align 8, !alias.scope !14914, !noalias !14915, !noundef !10
  %i.bw = load i64, ptr %i.o, align 8, !alias.scope !14914, !noalias !14915, !noundef !10
  %.promoted = load i64, ptr %3, align 8, !alias.scope !14922, !noalias !14915
  %.promoted89 = load i64, ptr %i.z, align 8, !alias.scope !14922, !noalias !14915
  %.promoted91 = load i64, ptr %i.aa, align 8, !alias.scope !14922, !noalias !14915
  %.promoted93 = load i64, ptr %i.ab, align 8, !alias.scope !14922, !noalias !14915
  br label %bb.f

bb.f:                                             ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types24TimestampMicrosecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB64_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.split
  %.lcssa8494 = phi i64 [ %.promoted93, %.lr.ph.i.i.i.i.i.i.i.split ], [ %i.ck, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types24TimestampMicrosecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB64_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i ]
  %.lcssa8692 = phi i64 [ %.promoted91, %.lr.ph.i.i.i.i.i.i.i.split ], [ %i.ci, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types24TimestampMicrosecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB64_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i ]
  %.lcssa8390 = phi i64 [ %.promoted89, %.lr.ph.i.i.i.i.i.i.i.split ], [ %i.cl, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types24TimestampMicrosecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB64_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i ]
  %.lcssa8588 = phi i64 [ %.promoted, %.lr.ph.i.i.i.i.i.i.i.split ], [ %i.cj, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types24TimestampMicrosecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB64_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i ]
  %i.bx = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.split ], [ %i.cp, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types24TimestampMicrosecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB64_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14917)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14918)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14919)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14920)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %i.by = phi i64 [ %i.ck, %bb.g ], [ %.lcssa8494, %bb.f ]
  %i.bz = phi i64 [ %i.ci, %bb.g ], [ %.lcssa8692, %bb.f ] ; 3 uses
  %i.ca = phi i64 [ %i.cl, %bb.g ], [ %.lcssa8390, %bb.f ] ; 2 uses
  %i.cb = phi i64 [ %i.cj, %bb.g ], [ %.lcssa8588, %bb.f ] ; 4 uses
  %i.cc = add i64 %i.cb, %i.ca                    ; 2 uses
  %i.cd = tail call noundef i64 @llvm.fshl.i64(i64 %i.cc, i64 %i.cc, i64 23)
  %i.ce = add i64 %i.cd, %i.cb
  %i.cf = shl i64 %i.bz, 17
  %i.cg = xor i64 %i.cb, %i.by                    ; 2 uses
  %i.ch = xor i64 %i.ca, %i.bz                    ; 3 uses
  %i.ci = xor i64 %i.cg, %i.bz                    ; 3 uses
  %i.cj = xor i64 %i.ch, %i.cb                    ; 3 uses
  %i.ck = xor i64 %i.cg, %i.cf                    ; 3 uses
  %i.cl = tail call noundef i64 @llvm.fshl.i64(i64 %i.ch, i64 %i.ch, i64 45) ; 3 uses
  %i.cm = zext i64 %i.ce to i128
  %i.cn = mul nuw i128 %i.cm, %i.ae               ; 2 uses
  %i.co = trunc i128 %i.cn to i64
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp ugt i64 %i.bv, %i.co
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.g, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types24TimestampMicrosecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB64_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types24TimestampMicrosecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB64_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i: ; preds = %bb.g
  %i.cp = add nuw nsw i64 %i.bx, 1                ; 2 uses
  %i.cq = lshr i128 %i.cn, 64
  %i.cr = trunc nuw i128 %i.cq to i64
  %i.cs = add i64 %i.bw, %i.cr
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %.sroa.10.0.i.i.i, i64 %i.bx
  store i64 %i.cs, ptr %i.ct, align 8, !noalias !14921
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.cp, %2
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types24TimestampMicrosecondTypeENCNvNtB2G_5array23rand_timestamp_in_range0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split, label %bb.f

bb.h:                                             ; preds = %bb.a
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cv = load i64, ptr %i.cu, align 8, !noundef !10
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.cx = load i32, ptr %i.cw, align 4, !noundef !10 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14923
  %i.cy = icmp eq i64 %2, 0
  br i1 %i.cy, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters4take4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB1m_3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_B2a_INtB2a_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB4i_5types24TimestampMicrosecondTypeENCNvNtB2a_5array23rand_timestamp_in_range0ENtB2a_14ArrayGenerator8generate0EEEE9from_iterB2c_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cz = add i64 %2, -1                          ; 3 uses
  %i.da = icmp eq i32 %i.cx, 0
  br i1 %i.da, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14924), !noalias !14925
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14926), !noalias !14925
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14927), !noalias !14925
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14928), !noalias !14925
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.dc = load i64, ptr %i.db, align 8, !alias.scope !14929, !noalias !14930, !noundef !10 ; 2 uses
  %i.dd = icmp eq i64 %i.dc, 0
  br i1 %i.dd, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.de = load i64, ptr %3, align 8, !alias.scope !14931, !noalias !14930, !noundef !10 ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.dg = load i64, ptr %i.df, align 8, !alias.scope !14931, !noalias !14930, !noundef !10 ; 2 uses
  %i.dh = add i64 %i.dg, %i.de                    ; 2 uses
  %i.di = tail call noundef i64 @llvm.fshl.i64(i64 %i.dh, i64 %i.dh, i64 23)
  %i.dj = add i64 %i.di, %i.de
  %i.dk = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.dl = load i64, ptr %i.dk, align 8, !alias.scope !14931, !noalias !14930, !noundef !10 ; 3 uses
  %i.dm = shl i64 %i.dl, 17
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.do = load i64, ptr %i.dn, align 8, !alias.scope !14931, !noalias !14930, !noundef !10
  %i.dp = xor i64 %i.do, %i.de                    ; 2 uses
  %i.dq = xor i64 %i.dl, %i.dg                    ; 3 uses
  %i.dr = xor i64 %i.dp, %i.dl
  store i64 %i.dr, ptr %i.dk, align 8, !alias.scope !14931, !noalias !14930
  %i.ds = xor i64 %i.dq, %i.de
  store i64 %i.ds, ptr %3, align 8, !alias.scope !14931, !noalias !14930
  %i.dt = xor i64 %i.dp, %i.dm
  store i64 %i.dt, ptr %i.dn, align 8, !alias.scope !14931, !noalias !14930
  %i.du = tail call noundef i64 @llvm.fshl.i64(i64 %i.dq, i64 %i.dq, i64 45)
  store i64 %i.du, ptr %i.df, align 8, !alias.scope !14931, !noalias !14930
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.dw = load i64, ptr %i.dv, align 8, !alias.scope !14929, !noalias !14930, !noundef !10
  %i.dx = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ea = zext i64 %i.dc to i128
  %.promoted.i.i.i.i.i.i.i = load i64, ptr %3, align 8, !alias.scope !14932, !noalias !14930
  %.promoted2.i.i.i.i.i.i.i = load i64, ptr %i.dx, align 8, !alias.scope !14932, !noalias !14930
  %.promoted4.i.i.i.i.i.i.i = load i64, ptr %i.dy, align 8, !alias.scope !14932, !noalias !14930
  %.promoted6.i.i.i.i.i.i.i = load i64, ptr %i.dz, align 8, !alias.scope !14932, !noalias !14930
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %bb.l
  %i.eb = phi i64 [ %i.en, %bb.m ], [ %.promoted6.i.i.i.i.i.i.i, %bb.l ]
  %i.ec = phi i64 [ %i.el, %bb.m ], [ %.promoted4.i.i.i.i.i.i.i, %bb.l ] ; 3 uses
  %i.ed = phi i64 [ %i.eo, %bb.m ], [ %.promoted2.i.i.i.i.i.i.i, %bb.l ] ; 2 uses
  %i.ee = phi i64 [ %i.em, %bb.m ], [ %.promoted.i.i.i.i.i.i.i, %bb.l ] ; 4 uses
  %i.ef = add i64 %i.ee, %i.ed                    ; 2 uses
  %i.eg = tail call noundef i64 @llvm.fshl.i64(i64 %i.ef, i64 %i.ef, i64 23)
  %i.eh = add i64 %i.eg, %i.ee
  %i.ei = shl i64 %i.ec, 17
  %i.ej = xor i64 %i.ee, %i.eb                    ; 2 uses
  %i.ek = xor i64 %i.ed, %i.ec                    ; 3 uses
  %i.el = xor i64 %i.ej, %i.ec                    ; 2 uses
  %i.em = xor i64 %i.ek, %i.ee                    ; 2 uses
  %i.en = xor i64 %i.ej, %i.ei                    ; 2 uses
  %i.eo = tail call noundef i64 @llvm.fshl.i64(i64 %i.ek, i64 %i.ek, i64 45) ; 2 uses
  %i.ep = zext i64 %i.eh to i128
  %i.eq = mul nuw i128 %i.ep, %i.ea               ; 2 uses
  %i.er = trunc i128 %i.eq to i64
  %.not.i.i.i.i.i.i.i = icmp ugt i64 %i.dw, %i.er
  br i1 %.not.i.i.i.i.i.i.i, label %bb.m, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i64 %i.em, ptr %3, align 8, !alias.scope !14932, !noalias !14930
  store i64 %i.eo, ptr %i.dx, align 8, !alias.scope !14932, !noalias !14930
  store i64 %i.el, ptr %i.dy, align 8, !alias.scope !14932, !noalias !14930
  store i64 %i.en, ptr %i.dz, align 8, !alias.scope !14932, !noalias !14930
  %i.es = lshr i128 %i.eq, 64
  %i.et = trunc nuw i128 %i.es to i64
  %i.eu = load i64, ptr %i.o, align 8, !alias.scope !14929, !noalias !14930, !noundef !10
  %i.ev = add i64 %i.eu, %i.et
  br label %bb.o

bb.o:                                             ; preds = %bb.i, %bb.n, %bb.k
  %.sroa.7.0 = phi i64 [ 1, %bb.k ], [ 1, %bb.n ], [ 0, %bb.i ] ; 3 uses
  %.sroa.22.0.copyload.i.in.i = phi i32 [ %i.q, %bb.k ], [ %i.q, %bb.n ], [ %i.cx, %bb.i ]
  %.sroa.15.0.copyload.i.i = phi i64 [ %i.dj, %bb.k ], [ %i.ev, %bb.n ], [ %i.cv, %bb.i ] ; 2 uses
  %.sroa.22.0.copyload.i.i = add i32 %.sroa.22.0.copyload.i.in.i, -1 ; 2 uses
  %i.ew = icmp eq i64 %i.cz, 0                    ; 2 uses
  br i1 %i.ew, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB6_3map3MapINtNtNtBa_3ops5range5RangeyENCNvXsa_B10_INtB10_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB36_5types24TimestampMicrosecondTypeENCNvNtB10_5array23rand_timestamp_in_range0ENtB10_14ArrayGenerator8generate0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB12_.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %spec.select.i.i.i.i.i.i66 = sub nuw i64 %2, %.sroa.7.0
end_hunk_8
begin_hunk_9_@_RNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB5_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB14_5types24TimestampMicrosecondTypeENCNvNtB5_5array23rand_timestamp_in_range0ENtB5_14ArrayGenerator8generateB7_:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.66, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.66)
  br label %bb.aw

bb.av:                                            ; preds = %bb.at
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %.sroa.8.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.8.0..sroa_idx8, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.518.0..sroa_idx, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  store i64 %i.ky, ptr %i.g, align 8
  %.sroa.66.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.66.0..sroa_idx7, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.66, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.66)
  %i.lb = call { ptr, ptr } @_RNvNtCs4ytUTZt2Gw9_11arrow_array5array10make_array(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(136) %i.g) ; 2 uses
  %i.lc = extractvalue { ptr, ptr } %i.lb, 0
  %i.ld = extractvalue { ptr, ptr } %i.lb, 1
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.lc, ptr %i.le, align 8
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ld, ptr %i.lf, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.aw

bb.aw:                                            ; preds = %bb.au, %bb.az, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  ret void

bb.ax:                                            ; preds = %_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types24TimestampMicrosecondTypeENtB7_5Array9into_dataCs342JT7D9NXi_13lance_datagen.exit
  %i.lg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs56ggtDZRYpd_10arrow_data4data16ArrayDataBuilderECs342JT7D9NXi_13lance_datagen(ptr noalias noundef align 8 dereferenceable(184) %i.j) #38
          to label %common.resume unwind label %bb.ay

bb.ay:                                            ; preds = %bb.ba, %bb.ax
  %i.lh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.az:                                            ; preds = %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ku, ptr noundef nonnull align 8 dereferenceable(112) %i.f, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ku, ptr %i.li, align 8
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @614, ptr %i.lj, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.aw

bb.ba:                                            ; preds = %bb.an
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBI_5types24TimestampMicrosecondTypeEECs342JT7D9NXi_13lance_datagen(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.n) #38
          to label %common.resume unwind label %bb.ay

bb.bb:                                            ; preds = %bb.ak
  %i.lk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ll = icmp eq i64 %.sroa.035.0157, 0
  br i1 %i.ll, label %common.resume, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.lm = shl nuw i64 %.sroa.035.0157, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.837.0155) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.837.0155, i64 noundef %i.lm, i64 noundef range(i64 1, -9223372036854775807) 8) #36
  br label %common.resume
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB5_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB14_5types24TimestampMicrosecondTypeENCNvNtB5_5array23rand_timestamp_in_range0ENtB5_14ArrayGenerator9data_typeB7_(ptr noalias noundef readonly align 8 captures(ret: address, read_provenance) dereferenceable(80) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { i64, i64 } @_RNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB5_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB14_5types24TimestampMillisecondTypeENCNvNtB5_5array23rand_timestamp_in_range0ENtB5_14ArrayGenerator18element_size_bytesB7_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(80) %0) unnamed_addr #10 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !25, !noundef !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = insertvalue { i64, i64 } poison, i64 %i.a, 0
  %i.e = insertvalue { i64, i64 } %i.d, i64 %i.c, 1
  ret { i64, i64 } %i.e
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB5_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB14_5types24TimestampMillisecondTypeENCNvNtB5_5array23rand_timestamp_in_range0ENtB5_14ArrayGenerator8generateB7_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %1, i64 noundef %2, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [136 x i8], align 8               ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.f = alloca [112 x i8], align 8               ; 6 uses
  %i.g = alloca [136 x i8], align 8               ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [96 x i8], align 8                ; 4 uses
  %i.j = alloca [184 x i8], align 8               ; 14 uses
  %i.k = alloca [184 x i8], align 8               ; 4 uses
  %i.l = alloca [136 x i8], align 8               ; 7 uses
  %.sroa.66 = alloca [32 x i8], align 8           ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [96 x i8], align 8                ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !noundef !10 ; 13 uses
  %i.r = icmp ugt i32 %i.q, 1
  br i1 %i.r, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = shl i64 %2, 3                            ; 4 uses
  %i.t = icmp ugt i64 %2, 2305843009213693951
  %.not.i.i.i.i = icmp ugt i64 %i.s, 9223372036854775800
  %or.cond.i.i.i.i = or i1 %i.t, %.not.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %bb.e, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.u = icmp eq i64 %i.s, 0
  br i1 %i.u, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !15106
  %i.v = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.s, i64 noundef range(i64 1, 9) 8) #36, !noalias !15106 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.e, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i

bb.e:                                             ; preds = %bb.d, %bb.b
  %.sroa.4.0.ph.i.i.i = phi i64 [ 8, %bb.d ], [ 0, %bb.b ]
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.s) #37, !noalias !15107
  unreachable

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i: ; preds = %bb.d, %bb.c
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.c ], [ %i.v, %bb.d ] ; 8 uses
  %.sroa.4.0.i.i.i = phi i64 [ 0, %bb.c ], [ %2, %bb.d ] ; 5 uses
  %i.x = icmp samesign ule i64 %2, %.sroa.4.0.i.i.i
  tail call void @llvm.assume(i1 %i.x)
  %.not67 = icmp eq i64 %2, 0
  br i1 %.not67, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types24TimestampMillisecondTypeENCNvNtB2G_5array23rand_timestamp_in_range0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.thread, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.ac = load i64, ptr %i.y, align 8, !alias.scope !15108, !noalias !15109, !noundef !10 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  %i.ae = zext i64 %i.ac to i128
  br i1 %i.ad, label %.lr.ph.i.i.i.i.i.i.i.split.us, label %.lr.ph.i.i.i.i.i.i.i.split

.lr.ph.i.i.i.i.i.i.i.split.us:                    ; preds = %.lr.ph.i.i.i.i.i.i.i
  %.promoted95 = load i64, ptr %3, align 8, !alias.scope !15110, !noalias !15109 ; 2 uses
  %.promoted97 = load i64, ptr %i.z, align 8, !alias.scope !15110, !noalias !15109 ; 2 uses
  %.promoted99 = load i64, ptr %i.aa, align 8, !alias.scope !15110, !noalias !15109 ; 2 uses
  %.promoted101 = load i64, ptr %i.ab, align 8, !alias.scope !15110, !noalias !15109 ; 2 uses
  %xtraiter = and i64 %2, 1
  %i.af = icmp eq i64 %2, 1
  br i1 %i.af, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types24TimestampMillisecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB64_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.split.us.new

.lr.ph.i.i.i.i.i.i.i.split.us.new:                ; preds = %.lr.ph.i.i.i.i.i.i.i.split.us
  %unroll_iter = and i64 %2, 2305843009213693950
  br label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types24TimestampMillisecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB64_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types24TimestampMillisecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB64_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us: ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types24TimestampMillisecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB64_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us, %.lr.ph.i.i.i.i.i.i.i.split.us.new
  %i.ag = phi i64 [ %.promoted101, %.lr.ph.i.i.i.i.i.i.i.split.us.new ], [ %i.bf, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types24TimestampMillisecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB64_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us ]
  %i.ah = phi i64 [ %.promoted99, %.lr.ph.i.i.i.i.i.i.i.split.us.new ], [ %i.bd, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types24TimestampMillisecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB64_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us ] ; 3 uses
  %i.ai = phi i64 [ %.promoted97, %.lr.ph.i.i.i.i.i.i.i.split.us.new ], [ %i.bg, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types24TimestampMillisecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB64_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us ] ; 2 uses
  %i.aj = phi i64 [ %.promoted95, %.lr.ph.i.i.i.i.i.i.i.split.us.new ], [ %i.be, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types24TimestampMillisecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB64_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us ] ; 4 uses
  %i.ak = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.split.us.new ], [ %i.aw, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types24TimestampMillisecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB64_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.split.us.new ], [ %niter.next.1, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types24TimestampMillisecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB64_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15111)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15112)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15113)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15114)
  %i.al = add i64 %i.ai, %i.aj                    ; 2 uses
  %i.am = tail call noundef i64 @llvm.fshl.i64(i64 %i.al, i64 %i.al, i64 23)
  %i.an = add i64 %i.am, %i.aj
  %i.ao = shl i64 %i.ah, 17
  %i.ap = xor i64 %i.ag, %i.aj                    ; 2 uses
  %i.aq = xor i64 %i.ah, %i.ai                    ; 3 uses
  %i.ar = xor i64 %i.ap, %i.ah                    ; 3 uses
  %i.as = xor i64 %i.aq, %i.aj                    ; 4 uses
  %i.at = xor i64 %i.ap, %i.ao
  %i.au = tail call noundef i64 @llvm.fshl.i64(i64 %i.aq, i64 %i.aq, i64 45) ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %.sroa.10.0.i.i.i, i64 %i.ak
  store i64 %i.an, ptr %i.av, align 8, !noalias !15115
  %i.aw = add nuw nsw i64 %i.ak, 2                ; 2 uses
  %i.ax = add i64 %i.au, %i.as                    ; 2 uses
  %i.ay = tail call noundef i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 23)
  %i.az = add i64 %i.ay, %i.as
  %i.ba = shl i64 %i.ar, 17
  %i.bb = xor i64 %i.at, %i.as                    ; 2 uses
  %i.bc = xor i64 %i.ar, %i.au                    ; 3 uses
  %i.bd = xor i64 %i.bb, %i.ar                    ; 3 uses
  %i.be = xor i64 %i.bc, %i.as                    ; 3 uses
  %i.bf = xor i64 %i.bb, %i.ba                    ; 3 uses
  %i.bg = tail call noundef i64 @llvm.fshl.i64(i64 %i.bc, i64 %i.bc, i64 45) ; 3 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.10.0.i.i.i, i64 %i.ak
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store i64 %i.az, ptr %i.bi, align 8, !noalias !15115
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types24TimestampMillisecondTypeENCNvNtB2G_5array23rand_timestamp_in_range0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us.unr-lcssa, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types24TimestampMillisecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB64_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us

_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types24TimestampMillisecondTypeENCNvNtB2G_5array23rand_timestamp_in_range0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us.unr-lcssa: ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types24TimestampMillisecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB64_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types24TimestampMillisecondTypeENCNvNtB2G_5array23rand_timestamp_in_range0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types24TimestampMillisecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB64_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us.epil.preheader

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types24TimestampMillisecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB64_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us.epil.preheader: ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types24TimestampMillisecondTypeENCNvNtB2G_5array23rand_timestamp_in_range0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.split.us
  %.epil.init = phi i64 [ %.promoted101, %.lr.ph.i.i.i.i.i.i.i.split.us ], [ %i.bf, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types24TimestampMillisecondTypeENCNvNtB2G_5array23rand_timestamp_in_range0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us.unr-lcssa ]
  %.epil.init249 = phi i64 [ %.promoted99, %.lr.ph.i.i.i.i.i.i.i.split.us ], [ %i.bd, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types24TimestampMillisecondTypeENCNvNtB2G_5array23rand_timestamp_in_range0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us.unr-lcssa ] ; 3 uses
  %.epil.init251 = phi i64 [ %.promoted97, %.lr.ph.i.i.i.i.i.i.i.split.us ], [ %i.bg, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types24TimestampMillisecondTypeENCNvNtB2G_5array23rand_timestamp_in_range0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us.unr-lcssa ] ; 2 uses
  %.epil.init253 = phi i64 [ %.promoted95, %.lr.ph.i.i.i.i.i.i.i.split.us ], [ %i.be, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types24TimestampMillisecondTypeENCNvNtB2G_5array23rand_timestamp_in_range0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us.unr-lcssa ] ; 4 uses
  %.epil.init255 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.split.us ], [ %i.aw, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types24TimestampMillisecondTypeENCNvNtB2G_5array23rand_timestamp_in_range0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us.unr-lcssa ]
  %lcmp.mod260 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod260)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15111)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15112)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15113)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15114)
  %i.bj = add i64 %.epil.init251, %.epil.init253  ; 2 uses
  %i.bk = tail call noundef i64 @llvm.fshl.i64(i64 %i.bj, i64 %i.bj, i64 23)
  %i.bl = add i64 %i.bk, %.epil.init253
  %i.bm = shl i64 %.epil.init249, 17
  %i.bn = xor i64 %.epil.init, %.epil.init253     ; 2 uses
  %i.bo = xor i64 %.epil.init249, %.epil.init251  ; 3 uses
  %i.bp = xor i64 %i.bn, %.epil.init249
  %i.bq = xor i64 %i.bo, %.epil.init253
  %i.br = xor i64 %i.bn, %i.bm
  %i.bs = tail call noundef i64 @llvm.fshl.i64(i64 %i.bo, i64 %i.bo, i64 45)
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.10.0.i.i.i, i64 %.epil.init255
  store i64 %i.bl, ptr %i.bt, align 8, !noalias !15115
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types24TimestampMillisecondTypeENCNvNtB2G_5array23rand_timestamp_in_range0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us

_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types24TimestampMillisecondTypeENCNvNtB2G_5array23rand_timestamp_in_range0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us: ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types24TimestampMillisecondTypeENCNvNtB2G_5array23rand_timestamp_in_range0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us.unr-lcssa, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types24TimestampMillisecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB64_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us.epil.preheader
  %.lcssa242 = phi i64 [ %i.bd, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types24TimestampMillisecondTypeENCNvNtB2G_5array23rand_timestamp_in_range0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us.unr-lcssa ], [ %i.bp, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types24TimestampMillisecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB64_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us.epil.preheader ]
  %.lcssa241 = phi i64 [ %i.be, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types24TimestampMillisecondTypeENCNvNtB2G_5array23rand_timestamp_in_range0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us.unr-lcssa ], [ %i.bq, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types24TimestampMillisecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB64_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us.epil.preheader ]
  %.lcssa240 = phi i64 [ %i.bf, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types24TimestampMillisecondTypeENCNvNtB2G_5array23rand_timestamp_in_range0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us.unr-lcssa ], [ %i.br, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types24TimestampMillisecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB64_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us.epil.preheader ]
  %.lcssa239 = phi i64 [ %i.bg, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types24TimestampMillisecondTypeENCNvNtB2G_5array23rand_timestamp_in_range0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us.unr-lcssa ], [ %i.bs, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types24TimestampMillisecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB64_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us.epil.preheader ]
  store i64 %.lcssa241, ptr %3, align 8, !alias.scope !15110, !noalias !15109
  store i64 %.lcssa239, ptr %i.z, align 8, !alias.scope !15110, !noalias !15109
  store i64 %.lcssa242, ptr %i.aa, align 8, !alias.scope !15110, !noalias !15109
  store i64 %.lcssa240, ptr %i.ab, align 8, !alias.scope !15110, !noalias !15109
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types24TimestampMillisecondTypeENCNvNtB2G_5array23rand_timestamp_in_range0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit

.lr.ph.i.i.i.i.i.i.i.split:                       ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bv = load i64, ptr %i.bu, align 8, !alias.scope !15108, !noalias !15109, !noundef !10
  %i.bw = load i64, ptr %i.o, align 8, !alias.scope !15108, !noalias !15109, !noundef !10
  %.promoted = load i64, ptr %3, align 8, !alias.scope !15116, !noalias !15109
  %.promoted89 = load i64, ptr %i.z, align 8, !alias.scope !15116, !noalias !15109
  %.promoted91 = load i64, ptr %i.aa, align 8, !alias.scope !15116, !noalias !15109
  %.promoted93 = load i64, ptr %i.ab, align 8, !alias.scope !15116, !noalias !15109
  br label %bb.f

bb.f:                                             ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types24TimestampMillisecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB64_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.split
  %.lcssa8494 = phi i64 [ %.promoted93, %.lr.ph.i.i.i.i.i.i.i.split ], [ %i.ck, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types24TimestampMillisecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB64_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i ]
  %.lcssa8692 = phi i64 [ %.promoted91, %.lr.ph.i.i.i.i.i.i.i.split ], [ %i.ci, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types24TimestampMillisecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB64_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i ]
  %.lcssa8390 = phi i64 [ %.promoted89, %.lr.ph.i.i.i.i.i.i.i.split ], [ %i.cl, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types24TimestampMillisecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB64_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i ]
  %.lcssa8588 = phi i64 [ %.promoted, %.lr.ph.i.i.i.i.i.i.i.split ], [ %i.cj, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types24TimestampMillisecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB64_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i ]
  %i.bx = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.split ], [ %i.cp, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types24TimestampMillisecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB64_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15111)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15112)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15113)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15114)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %i.by = phi i64 [ %i.ck, %bb.g ], [ %.lcssa8494, %bb.f ]
  %i.bz = phi i64 [ %i.ci, %bb.g ], [ %.lcssa8692, %bb.f ] ; 3 uses
  %i.ca = phi i64 [ %i.cl, %bb.g ], [ %.lcssa8390, %bb.f ] ; 2 uses
  %i.cb = phi i64 [ %i.cj, %bb.g ], [ %.lcssa8588, %bb.f ] ; 4 uses
  %i.cc = add i64 %i.cb, %i.ca                    ; 2 uses
  %i.cd = tail call noundef i64 @llvm.fshl.i64(i64 %i.cc, i64 %i.cc, i64 23)
  %i.ce = add i64 %i.cd, %i.cb
  %i.cf = shl i64 %i.bz, 17
  %i.cg = xor i64 %i.cb, %i.by                    ; 2 uses
  %i.ch = xor i64 %i.ca, %i.bz                    ; 3 uses
  %i.ci = xor i64 %i.cg, %i.bz                    ; 3 uses
  %i.cj = xor i64 %i.ch, %i.cb                    ; 3 uses
  %i.ck = xor i64 %i.cg, %i.cf                    ; 3 uses
  %i.cl = tail call noundef i64 @llvm.fshl.i64(i64 %i.ch, i64 %i.ch, i64 45) ; 3 uses
  %i.cm = zext i64 %i.ce to i128
  %i.cn = mul nuw i128 %i.cm, %i.ae               ; 2 uses
  %i.co = trunc i128 %i.cn to i64
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp ugt i64 %i.bv, %i.co
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.g, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types24TimestampMillisecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB64_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types24TimestampMillisecondTypeENCNvNtB15_5array23rand_timestamp_in_range0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB64_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i: ; preds = %bb.g
  %i.cp = add nuw nsw i64 %i.bx, 1                ; 2 uses
  %i.cq = lshr i128 %i.cn, 64
  %i.cr = trunc nuw i128 %i.cq to i64
  %i.cs = add i64 %i.bw, %i.cr
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %.sroa.10.0.i.i.i, i64 %i.bx
  store i64 %i.cs, ptr %i.ct, align 8, !noalias !15115
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.cp, %2
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types24TimestampMillisecondTypeENCNvNtB2G_5array23rand_timestamp_in_range0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split, label %bb.f

bb.h:                                             ; preds = %bb.a
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cv = load i64, ptr %i.cu, align 8, !noundef !10
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.cx = load i32, ptr %i.cw, align 4, !noundef !10 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15117
  %i.cy = icmp eq i64 %2, 0
  br i1 %i.cy, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters4take4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB1m_3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_B2a_INtB2a_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB4i_5types24TimestampMillisecondTypeENCNvNtB2a_5array23rand_timestamp_in_range0ENtB2a_14ArrayGenerator8generate0EEEE9from_iterB2c_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cz = add i64 %2, -1                          ; 3 uses
  %i.da = icmp eq i32 %i.cx, 0
  br i1 %i.da, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15118), !noalias !15119
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15120), !noalias !15119
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15121), !noalias !15119
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15122), !noalias !15119
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.dc = load i64, ptr %i.db, align 8, !alias.scope !15123, !noalias !15124, !noundef !10 ; 2 uses
  %i.dd = icmp eq i64 %i.dc, 0
  br i1 %i.dd, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.de = load i64, ptr %3, align 8, !alias.scope !15125, !noalias !15124, !noundef !10 ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.dg = load i64, ptr %i.df, align 8, !alias.scope !15125, !noalias !15124, !noundef !10 ; 2 uses
  %i.dh = add i64 %i.dg, %i.de                    ; 2 uses
  %i.di = tail call noundef i64 @llvm.fshl.i64(i64 %i.dh, i64 %i.dh, i64 23)
  %i.dj = add i64 %i.di, %i.de
  %i.dk = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.dl = load i64, ptr %i.dk, align 8, !alias.scope !15125, !noalias !15124, !noundef !10 ; 3 uses
  %i.dm = shl i64 %i.dl, 17
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.do = load i64, ptr %i.dn, align 8, !alias.scope !15125, !noalias !15124, !noundef !10
  %i.dp = xor i64 %i.do, %i.de                    ; 2 uses
  %i.dq = xor i64 %i.dl, %i.dg                    ; 3 uses
  %i.dr = xor i64 %i.dp, %i.dl
  store i64 %i.dr, ptr %i.dk, align 8, !alias.scope !15125, !noalias !15124
  %i.ds = xor i64 %i.dq, %i.de
  store i64 %i.ds, ptr %3, align 8, !alias.scope !15125, !noalias !15124
  %i.dt = xor i64 %i.dp, %i.dm
  store i64 %i.dt, ptr %i.dn, align 8, !alias.scope !15125, !noalias !15124
  %i.du = tail call noundef i64 @llvm.fshl.i64(i64 %i.dq, i64 %i.dq, i64 45)
  store i64 %i.du, ptr %i.df, align 8, !alias.scope !15125, !noalias !15124
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.dw = load i64, ptr %i.dv, align 8, !alias.scope !15123, !noalias !15124, !noundef !10
  %i.dx = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ea = zext i64 %i.dc to i128
  %.promoted.i.i.i.i.i.i.i = load i64, ptr %3, align 8, !alias.scope !15126, !noalias !15124
  %.promoted2.i.i.i.i.i.i.i = load i64, ptr %i.dx, align 8, !alias.scope !15126, !noalias !15124
  %.promoted4.i.i.i.i.i.i.i = load i64, ptr %i.dy, align 8, !alias.scope !15126, !noalias !15124
  %.promoted6.i.i.i.i.i.i.i = load i64, ptr %i.dz, align 8, !alias.scope !15126, !noalias !15124
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %bb.l
  %i.eb = phi i64 [ %i.en, %bb.m ], [ %.promoted6.i.i.i.i.i.i.i, %bb.l ]
  %i.ec = phi i64 [ %i.el, %bb.m ], [ %.promoted4.i.i.i.i.i.i.i, %bb.l ] ; 3 uses
  %i.ed = phi i64 [ %i.eo, %bb.m ], [ %.promoted2.i.i.i.i.i.i.i, %bb.l ] ; 2 uses
  %i.ee = phi i64 [ %i.em, %bb.m ], [ %.promoted.i.i.i.i.i.i.i, %bb.l ] ; 4 uses
  %i.ef = add i64 %i.ee, %i.ed                    ; 2 uses
  %i.eg = tail call noundef i64 @llvm.fshl.i64(i64 %i.ef, i64 %i.ef, i64 23)
  %i.eh = add i64 %i.eg, %i.ee
  %i.ei = shl i64 %i.ec, 17
  %i.ej = xor i64 %i.ee, %i.eb                    ; 2 uses
  %i.ek = xor i64 %i.ed, %i.ec                    ; 3 uses
  %i.el = xor i64 %i.ej, %i.ec                    ; 2 uses
  %i.em = xor i64 %i.ek, %i.ee                    ; 2 uses
  %i.en = xor i64 %i.ej, %i.ei                    ; 2 uses
  %i.eo = tail call noundef i64 @llvm.fshl.i64(i64 %i.ek, i64 %i.ek, i64 45) ; 2 uses
  %i.ep = zext i64 %i.eh to i128
  %i.eq = mul nuw i128 %i.ep, %i.ea               ; 2 uses
  %i.er = trunc i128 %i.eq to i64
  %.not.i.i.i.i.i.i.i = icmp ugt i64 %i.dw, %i.er
  br i1 %.not.i.i.i.i.i.i.i, label %bb.m, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i64 %i.em, ptr %3, align 8, !alias.scope !15126, !noalias !15124
  store i64 %i.eo, ptr %i.dx, align 8, !alias.scope !15126, !noalias !15124
  store i64 %i.el, ptr %i.dy, align 8, !alias.scope !15126, !noalias !15124
  store i64 %i.en, ptr %i.dz, align 8, !alias.scope !15126, !noalias !15124
  %i.es = lshr i128 %i.eq, 64
  %i.et = trunc nuw i128 %i.es to i64
  %i.eu = load i64, ptr %i.o, align 8, !alias.scope !15123, !noalias !15124, !noundef !10
  %i.ev = add i64 %i.eu, %i.et
  br label %bb.o

bb.o:                                             ; preds = %bb.i, %bb.n, %bb.k
  %.sroa.7.0 = phi i64 [ 1, %bb.k ], [ 1, %bb.n ], [ 0, %bb.i ] ; 3 uses
  %.sroa.22.0.copyload.i.in.i = phi i32 [ %i.q, %bb.k ], [ %i.q, %bb.n ], [ %i.cx, %bb.i ]
  %.sroa.15.0.copyload.i.i = phi i64 [ %i.dj, %bb.k ], [ %i.ev, %bb.n ], [ %i.cv, %bb.i ] ; 2 uses
  %.sroa.22.0.copyload.i.i = add i32 %.sroa.22.0.copyload.i.in.i, -1 ; 2 uses
  %i.ew = icmp eq i64 %i.cz, 0                    ; 2 uses
  br i1 %i.ew, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB6_3map3MapINtNtNtBa_3ops5range5RangeyENCNvXsa_B10_INtB10_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB36_5types24TimestampMillisecondTypeENCNvNtB10_5array23rand_timestamp_in_range0ENtB10_14ArrayGenerator8generate0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB12_.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %spec.select.i.i.i.i.i.i66 = sub nuw i64 %2, %.sroa.7.0
end_hunk_9
begin_hunk_10_@_RNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB5_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB14_5types24TimestampMillisecondTypeENCNvNtB5_5array23rand_timestamp_in_range0ENtB5_14ArrayGenerator8generateB7_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.66)
  br label %bb.aw

bb.av:                                            ; preds = %bb.at
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %.sroa.8.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.8.0..sroa_idx8, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.518.0..sroa_idx, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  store i64 %i.ky, ptr %i.g, align 8
  %.sroa.66.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.66.0..sroa_idx7, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.66, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.66)
  %i.lb = call { ptr, ptr } @_RNvNtCs4ytUTZt2Gw9_11arrow_array5array10make_array(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(136) %i.g) ; 2 uses
  %i.lc = extractvalue { ptr, ptr } %i.lb, 0
  %i.ld = extractvalue { ptr, ptr } %i.lb, 1
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.lc, ptr %i.le, align 8
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ld, ptr %i.lf, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.aw

bb.aw:                                            ; preds = %bb.au, %bb.az, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  ret void

bb.ax:                                            ; preds = %_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types24TimestampMillisecondTypeENtB7_5Array9into_dataCs342JT7D9NXi_13lance_datagen.exit
  %i.lg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs56ggtDZRYpd_10arrow_data4data16ArrayDataBuilderECs342JT7D9NXi_13lance_datagen(ptr noalias noundef align 8 dereferenceable(184) %i.j) #38
          to label %common.resume unwind label %bb.ay

bb.ay:                                            ; preds = %bb.ba, %bb.ax
  %i.lh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.az:                                            ; preds = %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ku, ptr noundef nonnull align 8 dereferenceable(112) %i.f, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ku, ptr %i.li, align 8
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @616, ptr %i.lj, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.aw

bb.ba:                                            ; preds = %bb.an
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBI_5types24TimestampMillisecondTypeEECs342JT7D9NXi_13lance_datagen(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.n) #38
          to label %common.resume unwind label %bb.ay

bb.bb:                                            ; preds = %bb.ak
  %i.lk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ll = icmp eq i64 %.sroa.035.0157, 0
  br i1 %i.ll, label %common.resume, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.lm = shl nuw i64 %.sroa.035.0157, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.837.0155) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.837.0155, i64 noundef %i.lm, i64 noundef range(i64 1, -9223372036854775807) 8) #36
  br label %common.resume
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB5_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB14_5types24TimestampMillisecondTypeENCNvNtB5_5array23rand_timestamp_in_range0ENtB5_14ArrayGenerator9data_typeB7_(ptr noalias noundef readonly align 8 captures(ret: address, read_provenance) dereferenceable(80) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { i64, i64 } @_RNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB5_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB14_5types9Int64TypeENCINvNtB5_5array22rand_with_distributionB28_INtNtNtCs4Jn2LUi8st0_4rand5distr7uniform7UniformxEE0ENtB5_14ArrayGenerator18element_size_bytesB7_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(80) %0) unnamed_addr #10 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !25, !noundef !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = insertvalue { i64, i64 } poison, i64 %i.a, 0
  %i.e = insertvalue { i64, i64 } %i.d, i64 %i.c, 1
  ret { i64, i64 } %i.e
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB5_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB14_5types9Int64TypeENCINvNtB5_5array22rand_with_distributionB28_INtNtNtCs4Jn2LUi8st0_4rand5distr7uniform7UniformxEE0ENtB5_14ArrayGenerator8generateB7_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %1, i64 noundef %2, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [136 x i8], align 8               ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.f = alloca [112 x i8], align 8               ; 6 uses
  %i.g = alloca [136 x i8], align 8               ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [96 x i8], align 8                ; 4 uses
  %i.j = alloca [184 x i8], align 8               ; 14 uses
  %i.k = alloca [184 x i8], align 8               ; 4 uses
  %i.l = alloca [136 x i8], align 8               ; 7 uses
  %.sroa.66 = alloca [32 x i8], align 8           ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [96 x i8], align 8                ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !noundef !10 ; 13 uses
  %i.r = icmp ugt i32 %i.q, 1
  br i1 %i.r, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = shl i64 %2, 3                            ; 4 uses
  %i.t = icmp ugt i64 %2, 2305843009213693951
  %.not.i.i.i.i = icmp ugt i64 %i.s, 9223372036854775800
  %or.cond.i.i.i.i = or i1 %i.t, %.not.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %bb.e, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.u = icmp eq i64 %i.s, 0
  br i1 %i.u, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !15352
  %i.v = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.s, i64 noundef range(i64 1, 9) 8) #36, !noalias !15352 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.e, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i

bb.e:                                             ; preds = %bb.d, %bb.b
  %.sroa.4.0.ph.i.i.i = phi i64 [ 8, %bb.d ], [ 0, %bb.b ]
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.s) #37, !noalias !15353
  unreachable

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i: ; preds = %bb.d, %bb.c
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.c ], [ %i.v, %bb.d ] ; 8 uses
  %.sroa.4.0.i.i.i = phi i64 [ 0, %bb.c ], [ %2, %bb.d ] ; 5 uses
  %i.x = icmp samesign ule i64 %2, %.sroa.4.0.i.i.i
  tail call void @llvm.assume(i1 %i.x)
  %.not67 = icmp eq i64 %2, 0
  br i1 %.not67, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types9Int64TypeENCINvNtB2G_5array22rand_with_distributionB4K_INtNtNtCs4Jn2LUi8st0_4rand5distr7uniform7UniformxEE0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.thread, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.ad = load i64, ptr %i.o, align 8, !alias.scope !15354, !noalias !15355, !noundef !10
  %i.ae = load i64, ptr %i.y, align 8, !alias.scope !15356, !noalias !15355, !noundef !10 ; 2 uses
  %i.af = load i64, ptr %i.z, align 8, !alias.scope !15357, !noalias !15355, !noundef !10
  %i.ag = icmp eq i64 %i.ae, 0
  %i.ah = zext i64 %i.ae to i128
  %.promoted95 = load i64, ptr %3, align 8, !alias.scope !15358, !noalias !15355 ; 3 uses
  %.promoted97 = load i64, ptr %i.aa, align 8, !alias.scope !15358, !noalias !15355 ; 3 uses
  %.promoted99 = load i64, ptr %i.ab, align 8, !alias.scope !15358, !noalias !15355 ; 3 uses
  %.promoted101 = load i64, ptr %i.ac, align 8, !alias.scope !15358, !noalias !15355 ; 3 uses
  br i1 %i.ag, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types9Int64TypeENCINvNtB15_5array22rand_with_distributionB39_INtNtNtCs4Jn2LUi8st0_4rand5distr7uniform7UniformxEE0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6H_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us.preheader, label %.lr.ph.i.i.i.i.i.i.i.split

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types9Int64TypeENCINvNtB15_5array22rand_with_distributionB39_INtNtNtCs4Jn2LUi8st0_4rand5distr7uniform7UniformxEE0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6H_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us.preheader: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %xtraiter = and i64 %2, 1
  %i.ai = icmp eq i64 %2, 1
  br i1 %i.ai, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types9Int64TypeENCINvNtB15_5array22rand_with_distributionB39_INtNtNtCs4Jn2LUi8st0_4rand5distr7uniform7UniformxEE0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6H_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us.epil.preheader, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types9Int64TypeENCINvNtB15_5array22rand_with_distributionB39_INtNtNtCs4Jn2LUi8st0_4rand5distr7uniform7UniformxEE0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6H_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us.preheader.new

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types9Int64TypeENCINvNtB15_5array22rand_with_distributionB39_INtNtNtCs4Jn2LUi8st0_4rand5distr7uniform7UniformxEE0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6H_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us.preheader.new: ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types9Int64TypeENCINvNtB15_5array22rand_with_distributionB39_INtNtNtCs4Jn2LUi8st0_4rand5distr7uniform7UniformxEE0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6H_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us.preheader
  %unroll_iter = and i64 %2, 2305843009213693950
  br label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types9Int64TypeENCINvNtB15_5array22rand_with_distributionB39_INtNtNtCs4Jn2LUi8st0_4rand5distr7uniform7UniformxEE0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6H_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types9Int64TypeENCINvNtB15_5array22rand_with_distributionB39_INtNtNtCs4Jn2LUi8st0_4rand5distr7uniform7UniformxEE0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6H_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us: ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types9Int64TypeENCINvNtB15_5array22rand_with_distributionB39_INtNtNtCs4Jn2LUi8st0_4rand5distr7uniform7UniformxEE0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6H_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types9Int64TypeENCINvNtB15_5array22rand_with_distributionB39_INtNtNtCs4Jn2LUi8st0_4rand5distr7uniform7UniformxEE0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6H_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us.preheader.new
  %i.aj = phi i64 [ %.promoted101, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types9Int64TypeENCINvNtB15_5array22rand_with_distributionB39_INtNtNtCs4Jn2LUi8st0_4rand5distr7uniform7UniformxEE0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6H_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us.preheader.new ], [ %i.bi, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types9Int64TypeENCINvNtB15_5array22rand_with_distributionB39_INtNtNtCs4Jn2LUi8st0_4rand5distr7uniform7UniformxEE0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6H_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us ]
  %i.ak = phi i64 [ %.promoted99, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types9Int64TypeENCINvNtB15_5array22rand_with_distributionB39_INtNtNtCs4Jn2LUi8st0_4rand5distr7uniform7UniformxEE0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6H_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us.preheader.new ], [ %i.bg, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types9Int64TypeENCINvNtB15_5array22rand_with_distributionB39_INtNtNtCs4Jn2LUi8st0_4rand5distr7uniform7UniformxEE0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6H_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us ] ; 3 uses
  %i.al = phi i64 [ %.promoted97, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types9Int64TypeENCINvNtB15_5array22rand_with_distributionB39_INtNtNtCs4Jn2LUi8st0_4rand5distr7uniform7UniformxEE0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6H_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us.preheader.new ], [ %i.bj, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types9Int64TypeENCINvNtB15_5array22rand_with_distributionB39_INtNtNtCs4Jn2LUi8st0_4rand5distr7uniform7UniformxEE0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6H_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us ] ; 2 uses
  %i.am = phi i64 [ %.promoted95, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types9Int64TypeENCINvNtB15_5array22rand_with_distributionB39_INtNtNtCs4Jn2LUi8st0_4rand5distr7uniform7UniformxEE0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6H_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us.preheader.new ], [ %i.bh, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types9Int64TypeENCINvNtB15_5array22rand_with_distributionB39_INtNtNtCs4Jn2LUi8st0_4rand5distr7uniform7UniformxEE0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6H_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us ] ; 4 uses
  %i.an = phi i64 [ 0, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types9Int64TypeENCINvNtB15_5array22rand_with_distributionB39_INtNtNtCs4Jn2LUi8st0_4rand5distr7uniform7UniformxEE0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6H_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us.preheader.new ], [ %i.az, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types9Int64TypeENCINvNtB15_5array22rand_with_distributionB39_INtNtNtCs4Jn2LUi8st0_4rand5distr7uniform7UniformxEE0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6H_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us ] ; 3 uses
  %niter = phi i64 [ 0, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types9Int64TypeENCINvNtB15_5array22rand_with_distributionB39_INtNtNtCs4Jn2LUi8st0_4rand5distr7uniform7UniformxEE0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6H_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us.preheader.new ], [ %niter.next.1, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types9Int64TypeENCINvNtB15_5array22rand_with_distributionB39_INtNtNtCs4Jn2LUi8st0_4rand5distr7uniform7UniformxEE0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6H_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15359)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15360)
  %i.ao = add i64 %i.al, %i.am                    ; 2 uses
  %i.ap = tail call noundef i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 23)
  %i.aq = add i64 %i.ap, %i.am
  %i.ar = shl i64 %i.ak, 17
  %i.as = xor i64 %i.aj, %i.am                    ; 2 uses
  %i.at = xor i64 %i.ak, %i.al                    ; 3 uses
  %i.au = xor i64 %i.as, %i.ak                    ; 3 uses
  %i.av = xor i64 %i.at, %i.am                    ; 4 uses
  %i.aw = xor i64 %i.as, %i.ar
  %i.ax = tail call noundef i64 @llvm.fshl.i64(i64 %i.at, i64 %i.at, i64 45) ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %.sroa.10.0.i.i.i, i64 %i.an
  store i64 %i.aq, ptr %i.ay, align 8, !noalias !15361
  %i.az = add nuw nsw i64 %i.an, 2                ; 2 uses
  %i.ba = add i64 %i.ax, %i.av                    ; 2 uses
  %i.bb = tail call noundef i64 @llvm.fshl.i64(i64 %i.ba, i64 %i.ba, i64 23)
  %i.bc = add i64 %i.bb, %i.av
  %i.bd = shl i64 %i.au, 17
  %i.be = xor i64 %i.aw, %i.av                    ; 2 uses
  %i.bf = xor i64 %i.au, %i.ax                    ; 3 uses
  %i.bg = xor i64 %i.be, %i.au                    ; 3 uses
  %i.bh = xor i64 %i.bf, %i.av                    ; 3 uses
  %i.bi = xor i64 %i.be, %i.bd                    ; 3 uses
  %i.bj = tail call noundef i64 @llvm.fshl.i64(i64 %i.bf, i64 %i.bf, i64 45) ; 3 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.10.0.i.i.i, i64 %i.an
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store i64 %i.bc, ptr %i.bl, align 8, !noalias !15361
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types9Int64TypeENCINvNtB2G_5array22rand_with_distributionB4K_INtNtNtCs4Jn2LUi8st0_4rand5distr7uniform7UniformxEE0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us.unr-lcssa, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types9Int64TypeENCINvNtB15_5array22rand_with_distributionB39_INtNtNtCs4Jn2LUi8st0_4rand5distr7uniform7UniformxEE0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6H_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us

_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types9Int64TypeENCINvNtB2G_5array22rand_with_distributionB4K_INtNtNtCs4Jn2LUi8st0_4rand5distr7uniform7UniformxEE0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us.unr-lcssa: ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types9Int64TypeENCINvNtB15_5array22rand_with_distributionB39_INtNtNtCs4Jn2LUi8st0_4rand5distr7uniform7UniformxEE0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6H_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types9Int64TypeENCINvNtB2G_5array22rand_with_distributionB4K_INtNtNtCs4Jn2LUi8st0_4rand5distr7uniform7UniformxEE0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types9Int64TypeENCINvNtB15_5array22rand_with_distributionB39_INtNtNtCs4Jn2LUi8st0_4rand5distr7uniform7UniformxEE0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6H_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us.epil.preheader

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types9Int64TypeENCINvNtB15_5array22rand_with_distributionB39_INtNtNtCs4Jn2LUi8st0_4rand5distr7uniform7UniformxEE0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6H_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us.epil.preheader: ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types9Int64TypeENCINvNtB2G_5array22rand_with_distributionB4K_INtNtNtCs4Jn2LUi8st0_4rand5distr7uniform7UniformxEE0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us.unr-lcssa, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types9Int64TypeENCINvNtB15_5array22rand_with_distributionB39_INtNtNtCs4Jn2LUi8st0_4rand5distr7uniform7UniformxEE0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6H_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us.preheader
  %.epil.init = phi i64 [ %.promoted101, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types9Int64TypeENCINvNtB15_5array22rand_with_distributionB39_INtNtNtCs4Jn2LUi8st0_4rand5distr7uniform7UniformxEE0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6H_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us.preheader ], [ %i.bi, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types9Int64TypeENCINvNtB2G_5array22rand_with_distributionB4K_INtNtNtCs4Jn2LUi8st0_4rand5distr7uniform7UniformxEE0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us.unr-lcssa ]
  %.epil.init249 = phi i64 [ %.promoted99, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types9Int64TypeENCINvNtB15_5array22rand_with_distributionB39_INtNtNtCs4Jn2LUi8st0_4rand5distr7uniform7UniformxEE0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6H_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us.preheader ], [ %i.bg, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types9Int64TypeENCINvNtB2G_5array22rand_with_distributionB4K_INtNtNtCs4Jn2LUi8st0_4rand5distr7uniform7UniformxEE0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us.unr-lcssa ] ; 3 uses
  %.epil.init251 = phi i64 [ %.promoted97, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types9Int64TypeENCINvNtB15_5array22rand_with_distributionB39_INtNtNtCs4Jn2LUi8st0_4rand5distr7uniform7UniformxEE0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6H_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us.preheader ], [ %i.bj, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types9Int64TypeENCINvNtB2G_5array22rand_with_distributionB4K_INtNtNtCs4Jn2LUi8st0_4rand5distr7uniform7UniformxEE0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us.unr-lcssa ] ; 2 uses
  %.epil.init253 = phi i64 [ %.promoted95, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types9Int64TypeENCINvNtB15_5array22rand_with_distributionB39_INtNtNtCs4Jn2LUi8st0_4rand5distr7uniform7UniformxEE0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6H_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us.preheader ], [ %i.bh, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types9Int64TypeENCINvNtB2G_5array22rand_with_distributionB4K_INtNtNtCs4Jn2LUi8st0_4rand5distr7uniform7UniformxEE0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us.unr-lcssa ] ; 4 uses
  %.epil.init255 = phi i64 [ 0, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types9Int64TypeENCINvNtB15_5array22rand_with_distributionB39_INtNtNtCs4Jn2LUi8st0_4rand5distr7uniform7UniformxEE0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6H_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us.preheader ], [ %i.az, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types9Int64TypeENCINvNtB2G_5array22rand_with_distributionB4K_INtNtNtCs4Jn2LUi8st0_4rand5distr7uniform7UniformxEE0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us.unr-lcssa ]
  %lcmp.mod260 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod260)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15359)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15360)
  %i.bm = add i64 %.epil.init251, %.epil.init253  ; 2 uses
  %i.bn = tail call noundef i64 @llvm.fshl.i64(i64 %i.bm, i64 %i.bm, i64 23)
  %i.bo = add i64 %i.bn, %.epil.init253
  %i.bp = shl i64 %.epil.init249, 17
  %i.bq = xor i64 %.epil.init, %.epil.init253     ; 2 uses
  %i.br = xor i64 %.epil.init249, %.epil.init251  ; 3 uses
  %i.bs = xor i64 %i.bq, %.epil.init249
  %i.bt = xor i64 %i.br, %.epil.init253
  %i.bu = xor i64 %i.bq, %i.bp
  %i.bv = tail call noundef i64 @llvm.fshl.i64(i64 %i.br, i64 %i.br, i64 45)
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.10.0.i.i.i, i64 %.epil.init255
  store i64 %i.bo, ptr %i.bw, align 8, !noalias !15361
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types9Int64TypeENCINvNtB2G_5array22rand_with_distributionB4K_INtNtNtCs4Jn2LUi8st0_4rand5distr7uniform7UniformxEE0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us

_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types9Int64TypeENCINvNtB2G_5array22rand_with_distributionB4K_INtNtNtCs4Jn2LUi8st0_4rand5distr7uniform7UniformxEE0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us: ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types9Int64TypeENCINvNtB2G_5array22rand_with_distributionB4K_INtNtNtCs4Jn2LUi8st0_4rand5distr7uniform7UniformxEE0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us.unr-lcssa, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types9Int64TypeENCINvNtB15_5array22rand_with_distributionB39_INtNtNtCs4Jn2LUi8st0_4rand5distr7uniform7UniformxEE0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6H_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us.epil.preheader
  %.lcssa242 = phi i64 [ %i.bg, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types9Int64TypeENCINvNtB2G_5array22rand_with_distributionB4K_INtNtNtCs4Jn2LUi8st0_4rand5distr7uniform7UniformxEE0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us.unr-lcssa ], [ %i.bs, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types9Int64TypeENCINvNtB15_5array22rand_with_distributionB39_INtNtNtCs4Jn2LUi8st0_4rand5distr7uniform7UniformxEE0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6H_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us.epil.preheader ]
  %.lcssa241 = phi i64 [ %i.bh, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types9Int64TypeENCINvNtB2G_5array22rand_with_distributionB4K_INtNtNtCs4Jn2LUi8st0_4rand5distr7uniform7UniformxEE0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us.unr-lcssa ], [ %i.bt, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types9Int64TypeENCINvNtB15_5array22rand_with_distributionB39_INtNtNtCs4Jn2LUi8st0_4rand5distr7uniform7UniformxEE0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6H_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us.epil.preheader ]
  %.lcssa240 = phi i64 [ %i.bi, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types9Int64TypeENCINvNtB2G_5array22rand_with_distributionB4K_INtNtNtCs4Jn2LUi8st0_4rand5distr7uniform7UniformxEE0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us.unr-lcssa ], [ %i.bu, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types9Int64TypeENCINvNtB15_5array22rand_with_distributionB39_INtNtNtCs4Jn2LUi8st0_4rand5distr7uniform7UniformxEE0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6H_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us.epil.preheader ]
  %.lcssa239 = phi i64 [ %i.bj, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types9Int64TypeENCINvNtB2G_5array22rand_with_distributionB4K_INtNtNtCs4Jn2LUi8st0_4rand5distr7uniform7UniformxEE0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split.us.unr-lcssa ], [ %i.bv, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types9Int64TypeENCINvNtB15_5array22rand_with_distributionB39_INtNtNtCs4Jn2LUi8st0_4rand5distr7uniform7UniformxEE0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6H_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i.us.epil.preheader ]
  store i64 %.lcssa241, ptr %3, align 8, !alias.scope !15362, !noalias !15355
  store i64 %.lcssa239, ptr %i.aa, align 8, !alias.scope !15362, !noalias !15355
  store i64 %.lcssa242, ptr %i.ab, align 8, !alias.scope !15362, !noalias !15355
  store i64 %.lcssa240, ptr %i.ac, align 8, !alias.scope !15362, !noalias !15355
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types9Int64TypeENCINvNtB2G_5array22rand_with_distributionB4K_INtNtNtCs4Jn2LUi8st0_4rand5distr7uniform7UniformxEE0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit

.lr.ph.i.i.i.i.i.i.i.split:                       ; preds = %.lr.ph.i.i.i.i.i.i.i, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types9Int64TypeENCINvNtB15_5array22rand_with_distributionB39_INtNtNtCs4Jn2LUi8st0_4rand5distr7uniform7UniformxEE0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6H_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i
  %.lcssa8494 = phi i64 [ %i.ck, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types9Int64TypeENCINvNtB15_5array22rand_with_distributionB39_INtNtNtCs4Jn2LUi8st0_4rand5distr7uniform7UniformxEE0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6H_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i ], [ %.promoted101, %.lr.ph.i.i.i.i.i.i.i ]
  %.lcssa8692 = phi i64 [ %i.ci, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types9Int64TypeENCINvNtB15_5array22rand_with_distributionB39_INtNtNtCs4Jn2LUi8st0_4rand5distr7uniform7UniformxEE0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6H_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i ], [ %.promoted99, %.lr.ph.i.i.i.i.i.i.i ]
  %.lcssa8390 = phi i64 [ %i.cl, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types9Int64TypeENCINvNtB15_5array22rand_with_distributionB39_INtNtNtCs4Jn2LUi8st0_4rand5distr7uniform7UniformxEE0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6H_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i ], [ %.promoted97, %.lr.ph.i.i.i.i.i.i.i ]
  %.lcssa8588 = phi i64 [ %i.cj, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types9Int64TypeENCINvNtB15_5array22rand_with_distributionB39_INtNtNtCs4Jn2LUi8st0_4rand5distr7uniform7UniformxEE0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6H_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i ], [ %.promoted95, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bx = phi i64 [ %i.cp, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types9Int64TypeENCINvNtB15_5array22rand_with_distributionB39_INtNtNtCs4Jn2LUi8st0_4rand5distr7uniform7UniformxEE0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6H_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15359)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15360)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.i.i.i.i.i.i.split
  %i.by = phi i64 [ %i.ck, %bb.f ], [ %.lcssa8494, %.lr.ph.i.i.i.i.i.i.i.split ]
  %i.bz = phi i64 [ %i.ci, %bb.f ], [ %.lcssa8692, %.lr.ph.i.i.i.i.i.i.i.split ] ; 3 uses
  %i.ca = phi i64 [ %i.cl, %bb.f ], [ %.lcssa8390, %.lr.ph.i.i.i.i.i.i.i.split ] ; 2 uses
  %i.cb = phi i64 [ %i.cj, %bb.f ], [ %.lcssa8588, %.lr.ph.i.i.i.i.i.i.i.split ] ; 4 uses
  %i.cc = add i64 %i.cb, %i.ca                    ; 2 uses
  %i.cd = tail call noundef i64 @llvm.fshl.i64(i64 %i.cc, i64 %i.cc, i64 23)
  %i.ce = add i64 %i.cd, %i.cb
  %i.cf = shl i64 %i.bz, 17
  %i.cg = xor i64 %i.cb, %i.by                    ; 2 uses
  %i.ch = xor i64 %i.ca, %i.bz                    ; 3 uses
  %i.ci = xor i64 %i.cg, %i.bz                    ; 3 uses
  %i.cj = xor i64 %i.ch, %i.cb                    ; 3 uses
  %i.ck = xor i64 %i.cg, %i.cf                    ; 3 uses
  %i.cl = tail call noundef i64 @llvm.fshl.i64(i64 %i.ch, i64 %i.ch, i64 45) ; 3 uses
  %i.cm = zext i64 %i.ce to i128
  %i.cn = mul nuw i128 %i.cm, %i.ah               ; 2 uses
  %i.co = trunc i128 %i.cn to i64
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ugt i64 %i.af, %i.co
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.f, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types9Int64TypeENCINvNtB15_5array22rand_with_distributionB39_INtNtNtCs4Jn2LUi8st0_4rand5distr7uniform7UniformxEE0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6H_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldyxuNCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB15_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB25_5types9Int64TypeENCINvNtB15_5array22rand_with_distributionB39_INtNtNtCs4Jn2LUi8st0_4rand5distr7uniform7UniformxEE0ENtB15_14ArrayGenerator8generate0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6H_3VecxE14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangeyEBX_EE0E0E0B17_.exit.i.i.i.i.i.i.i: ; preds = %bb.f
  %i.cp = add nuw nsw i64 %i.bx, 1                ; 2 uses
  %i.cq = lshr i128 %i.cn, 64
  %i.cr = trunc nuw i128 %i.cq to i64
  %i.cs = add i64 %i.ad, %i.cr
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %.sroa.10.0.i.i.i, i64 %i.bx
  store i64 %i.cs, ptr %i.ct, align 8, !noalias !15361
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.cp, %2
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types9Int64TypeENCINvNtB2G_5array22rand_with_distributionB4K_INtNtNtCs4Jn2LUi8st0_4rand5distr7uniform7UniformxEE0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.split, label %.lr.ph.i.i.i.i.i.i.i.split

bb.g:                                             ; preds = %bb.a
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cv = load i64, ptr %i.cu, align 8, !noundef !10
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.cx = load i32, ptr %i.cw, align 4, !noundef !10 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15363
  %i.cy = icmp eq i64 %2, 0
  br i1 %i.cy, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters4take4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB1m_3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_B2a_INtB2a_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB4i_5types9Int64TypeENCINvNtB2a_5array22rand_with_distributionB5m_INtNtNtCs4Jn2LUi8st0_4rand5distr7uniform7UniformxEE0ENtB2a_14ArrayGenerator8generate0EEEE9from_iterB2c_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cz = add i64 %2, -1                          ; 3 uses
  %i.da = icmp eq i32 %i.cx, 0
  br i1 %i.da, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15364), !noalias !15365
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15366), !noalias !15365
  %i.db = load i64, ptr %i.o, align 8, !alias.scope !15367, !noalias !15368, !noundef !10
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.dd = load i64, ptr %i.dc, align 8, !alias.scope !15369, !noalias !15368, !noundef !10 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.df = load i64, ptr %i.de, align 8, !alias.scope !15370, !noalias !15368, !noundef !10
  %i.dg = icmp eq i64 %i.dd, 0
  br i1 %i.dg, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.dh = load i64, ptr %3, align 8, !alias.scope !15371, !noalias !15368, !noundef !10 ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.dj = load i64, ptr %i.di, align 8, !alias.scope !15371, !noalias !15368, !noundef !10 ; 2 uses
  %i.dk = add i64 %i.dj, %i.dh                    ; 2 uses
  %i.dl = tail call noundef i64 @llvm.fshl.i64(i64 %i.dk, i64 %i.dk, i64 23)
  %i.dm = add i64 %i.dl, %i.dh
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.do = load i64, ptr %i.dn, align 8, !alias.scope !15371, !noalias !15368, !noundef !10 ; 3 uses
  %i.dp = shl i64 %i.do, 17
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.dr = load i64, ptr %i.dq, align 8, !alias.scope !15371, !noalias !15368, !noundef !10
  %i.ds = xor i64 %i.dr, %i.dh                    ; 2 uses
  %i.dt = xor i64 %i.do, %i.dj                    ; 3 uses
  %i.du = xor i64 %i.ds, %i.do
  store i64 %i.du, ptr %i.dn, align 8, !alias.scope !15371, !noalias !15368
  %i.dv = xor i64 %i.dt, %i.dh
  store i64 %i.dv, ptr %3, align 8, !alias.scope !15371, !noalias !15368
  %i.dw = xor i64 %i.ds, %i.dp
  store i64 %i.dw, ptr %i.dq, align 8, !alias.scope !15371, !noalias !15368
  %i.dx = tail call noundef i64 @llvm.fshl.i64(i64 %i.dt, i64 %i.dt, i64 45)
  store i64 %i.dx, ptr %i.di, align 8, !alias.scope !15371, !noalias !15368
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.eb = zext i64 %i.dd to i128
  %.promoted.i.i.i.i.i.i.i.i.i = load i64, ptr %3, align 8, !alias.scope !15372, !noalias !15368
  %.promoted2.i.i.i.i.i.i.i.i.i = load i64, ptr %i.dy, align 8, !alias.scope !15372, !noalias !15368
  %.promoted4.i.i.i.i.i.i.i.i.i = load i64, ptr %i.dz, align 8, !alias.scope !15372, !noalias !15368
  %.promoted6.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ea, align 8, !alias.scope !15372, !noalias !15368
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %i.ec = phi i64 [ %i.eo, %bb.l ], [ %.promoted6.i.i.i.i.i.i.i.i.i, %bb.k ]
  %i.ed = phi i64 [ %i.em, %bb.l ], [ %.promoted4.i.i.i.i.i.i.i.i.i, %bb.k ] ; 3 uses
  %i.ee = phi i64 [ %i.ep, %bb.l ], [ %.promoted2.i.i.i.i.i.i.i.i.i, %bb.k ] ; 2 uses
  %i.ef = phi i64 [ %i.en, %bb.l ], [ %.promoted.i.i.i.i.i.i.i.i.i, %bb.k ] ; 4 uses
  %i.eg = add i64 %i.ef, %i.ee                    ; 2 uses
  %i.eh = tail call noundef i64 @llvm.fshl.i64(i64 %i.eg, i64 %i.eg, i64 23)
  %i.ei = add i64 %i.eh, %i.ef
  %i.ej = shl i64 %i.ed, 17
  %i.ek = xor i64 %i.ef, %i.ec                    ; 2 uses
  %i.el = xor i64 %i.ee, %i.ed                    ; 3 uses
  %i.em = xor i64 %i.ek, %i.ed                    ; 2 uses
  %i.en = xor i64 %i.el, %i.ef                    ; 2 uses
  %i.eo = xor i64 %i.ek, %i.ej                    ; 2 uses
  %i.ep = tail call noundef i64 @llvm.fshl.i64(i64 %i.el, i64 %i.el, i64 45) ; 2 uses
  %i.eq = zext i64 %i.ei to i128
  %i.er = mul nuw i128 %i.eq, %i.eb               ; 2 uses
  %i.es = trunc i128 %i.er to i64
  %.not.i.i.i.i.i.i.i.i.i = icmp ugt i64 %i.df, %i.es
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.l, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i64 %i.en, ptr %3, align 8, !alias.scope !15372, !noalias !15368
  store i64 %i.ep, ptr %i.dy, align 8, !alias.scope !15372, !noalias !15368
  store i64 %i.em, ptr %i.dz, align 8, !alias.scope !15372, !noalias !15368
  store i64 %i.eo, ptr %i.ea, align 8, !alias.scope !15372, !noalias !15368
  %i.et = lshr i128 %i.er, 64
  %i.eu = trunc nuw i128 %i.et to i64
  %i.ev = add i64 %i.db, %i.eu
  br label %bb.n

bb.n:                                             ; preds = %bb.h, %bb.m, %bb.j
  %.sroa.7.0 = phi i64 [ 1, %bb.j ], [ 1, %bb.m ], [ 0, %bb.h ] ; 3 uses
  %.sroa.22.0.copyload.i.in.i = phi i32 [ %i.q, %bb.j ], [ %i.q, %bb.m ], [ %i.cx, %bb.h ]
  %.sroa.15.0.copyload.i.i = phi i64 [ %i.dm, %bb.j ], [ %i.ev, %bb.m ], [ %i.cv, %bb.h ] ; 2 uses
  %.sroa.22.0.copyload.i.i = add i32 %.sroa.22.0.copyload.i.in.i, -1 ; 2 uses
  %i.ew = icmp eq i64 %i.cz, 0                    ; 2 uses
  br i1 %i.ew, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB6_3map3MapINtNtNtBa_3ops5range5RangeyENCNvXsa_B10_INtB10_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB36_5types9Int64TypeENCINvNtB10_5array22rand_with_distributionB4a_INtNtNtCs4Jn2LUi8st0_4rand5distr7uniform7UniformxEE0ENtB10_14ArrayGenerator8generate0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB12_.exit.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %spec.select.i.i.i.i.i.i66 = sub nuw i64 %2, %.sroa.7.0
  %i.ex = zext i32 %i.q to i64
  %i.ey = mul i64 %spec.select.i.i.i.i.i.i66, %i.ex
  %.sroa.0.0.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.cz, i64 %i.ey)
  %i.ez = tail call i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i.i.i, i64 3)
  %i.fa = add nuw i64 %i.ez, 1
  br label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB6_3map3MapINtNtNtBa_3ops5range5RangeyENCNvXsa_B10_INtB10_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB36_5types9Int64TypeENCINvNtB10_5array22rand_with_distributionB4a_INtNtNtCs4Jn2LUi8st0_4rand5distr7uniform7UniformxEE0ENtB10_14ArrayGenerator8generate0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB12_.exit.i.i

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB6_3map3MapINtNtNtBa_3ops5range5RangeyENCNvXsa_B10_INtB10_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB36_5types9Int64TypeENCINvNtB10_5array22rand_with_distributionB4a_INtNtNtCs4Jn2LUi8st0_4rand5distr7uniform7UniformxEE0ENtB10_14ArrayGenerator8generate0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB12_.exit.i.i: ; preds = %bb.o, %bb.n
  %.sroa.0.0.i.sink.i.i.i = phi i64 [ %i.fa, %bb.o ], [ 4, %bb.n ] ; 5 uses
  %i.fb = shl i64 %.sroa.0.0.i.sink.i.i.i, 3      ; 3 uses
  %i.fc = icmp ugt i64 %.sroa.0.0.i.sink.i.i.i, 2305843009213693951
  %.not.i.i.i.i26 = icmp ugt i64 %i.fb, 9223372036854775800
  %or.cond.i.i.i.i27 = or i1 %i.fc, %.not.i.i.i.i26
  br i1 %or.cond.i.i.i.i27, label %bb.q, label %bb.p, !prof !7

bb.p:                                             ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB6_3map3MapINtNtNtBa_3ops5range5RangeyENCNvXsa_B10_INtB10_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB36_5types9Int64TypeENCINvNtB10_5array22rand_with_distributionB4a_INtNtNtCs4Jn2LUi8st0_4rand5distr7uniform7UniformxEE0ENtB10_14ArrayGenerator8generate0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB12_.exit.i.i
end_hunk_10
begin_hunk_11_@_RNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB5_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB14_5types9Int64TypeENCINvNtB5_5array22rand_with_distributionB28_INtNtNtCs4Jn2LUi8st0_4rand5distr7uniform7UniformxEE0ENtB5_14ArrayGenerator8generateB7_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @_RNvMs3_NtCs56ggtDZRYpd_10arrow_data4dataNtB5_16ArrayDataBuilder5build(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(none) dereferenceable(136) %i.l, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(184) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.ky = load i64, ptr %i.l, align 8, !range !17, !noundef !10 ; 2 uses
  %i.kz = icmp eq i64 %i.ky, -1
  %i.la = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.66, ptr noundef nonnull align 8 dereferenceable(32) %i.la, i64 32, i1 false)
  br i1 %i.kz, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.66, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.66)
  br label %bb.av

bb.au:                                            ; preds = %bb.as
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %.sroa.8.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.8.0..sroa_idx8, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.518.0..sroa_idx, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  store i64 %i.ky, ptr %i.g, align 8
  %.sroa.66.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.66.0..sroa_idx7, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.66, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.66)
  %i.lb = call { ptr, ptr } @_RNvNtCs4ytUTZt2Gw9_11arrow_array5array10make_array(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(136) %i.g) ; 2 uses
  %i.lc = extractvalue { ptr, ptr } %i.lb, 0
  %i.ld = extractvalue { ptr, ptr } %i.lb, 1
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.lc, ptr %i.le, align 8
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ld, ptr %i.lf, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.av

bb.av:                                            ; preds = %bb.at, %bb.ay, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  ret void

bb.aw:                                            ; preds = %_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types9Int64TypeENtB7_5Array9into_dataCs342JT7D9NXi_13lance_datagen.exit
  %i.lg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs56ggtDZRYpd_10arrow_data4data16ArrayDataBuilderECs342JT7D9NXi_13lance_datagen(ptr noalias noundef align 8 dereferenceable(184) %i.j) #38
          to label %common.resume unwind label %bb.ax

bb.ax:                                            ; preds = %bb.az, %bb.aw
  %i.lh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.ay:                                            ; preds = %bb.ao
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ku, ptr noundef nonnull align 8 dereferenceable(112) %i.f, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ku, ptr %i.li, align 8
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @624, ptr %i.lj, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.av

bb.az:                                            ; preds = %bb.am
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBI_5types9Int64TypeEECs342JT7D9NXi_13lance_datagen(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.n) #38
          to label %common.resume unwind label %bb.ax

bb.ba:                                            ; preds = %bb.aj
  %i.lk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ll = icmp eq i64 %.sroa.035.0157, 0
  br i1 %i.ll, label %common.resume, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.lm = shl nuw i64 %.sroa.035.0157, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.837.0155) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.837.0155, i64 noundef %i.lm, i64 noundef range(i64 1, -9223372036854775807) 8) #36
  br label %common.resume
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB5_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB14_5types9Int64TypeENCINvNtB5_5array22rand_with_distributionB28_INtNtNtCs4Jn2LUi8st0_4rand5distr7uniform7UniformxEE0ENtB5_14ArrayGenerator9data_typeB7_(ptr noalias noundef readonly align 8 captures(ret: address, read_provenance) dereferenceable(80) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { i64, i64 } @_RNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB5_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB14_5types9Int64TypeENCINvNtB5_5array4randB28_E0ENtB5_14ArrayGenerator18element_size_bytesB7_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #10 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !25, !noundef !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = insertvalue { i64, i64 } poison, i64 %i.a, 0
  %i.e = insertvalue { i64, i64 } %i.d, i64 %i.c, 1
  ret { i64, i64 } %i.e
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB5_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB14_5types9Int64TypeENCINvNtB5_5array4randB28_E0ENtB5_14ArrayGenerator8generateB7_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %1, i64 noundef %2, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [136 x i8], align 8               ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.f = alloca [112 x i8], align 8               ; 6 uses
  %i.g = alloca [136 x i8], align 8               ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [96 x i8], align 8                ; 4 uses
  %i.j = alloca [184 x i8], align 8               ; 14 uses
  %i.k = alloca [184 x i8], align 8               ; 4 uses
  %i.l = alloca [136 x i8], align 8               ; 7 uses
  %.sroa.66 = alloca [32 x i8], align 8           ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [96 x i8], align 8                ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !noundef !10 ; 9 uses
  %i.q = icmp ugt i32 %i.p, 1
  br i1 %i.q, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = shl i64 %2, 3                            ; 4 uses
  %i.s = icmp ugt i64 %2, 2305843009213693951
  %.not.i.i.i.i = icmp ugt i64 %i.r, 9223372036854775800
  %or.cond.i.i.i.i = or i1 %i.s, %.not.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %bb.e, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.t = icmp eq i64 %i.r, 0
  br i1 %i.t, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !15483
  %i.u = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.r, i64 noundef range(i64 1, 9) 8) #36, !noalias !15483 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.e, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i

bb.e:                                             ; preds = %bb.d, %bb.b
  %.sroa.4.0.ph.i.i.i = phi i64 [ 8, %bb.d ], [ 0, %bb.b ]
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.r) #37, !noalias !15484
  unreachable

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i: ; preds = %bb.d, %bb.c
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.c ], [ %i.u, %bb.d ] ; 6 uses
  %.sroa.4.0.i.i.i = phi i64 [ 0, %bb.c ], [ %2, %bb.d ] ; 4 uses
  %i.w = icmp samesign ule i64 %2, %.sroa.4.0.i.i.i
  tail call void @llvm.assume(i1 %i.w)
  %.not70 = icmp eq i64 %2, 0
  br i1 %.not70, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types9Int64TypeENCINvNtB2G_5array4randB4K_E0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.thread, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %.promoted = load i64, ptr %3, align 8, !alias.scope !15485, !noalias !15486 ; 2 uses
  %.promoted72 = load i64, ptr %i.x, align 8, !alias.scope !15485, !noalias !15486 ; 2 uses
  %.promoted74 = load i64, ptr %i.y, align 8, !alias.scope !15485, !noalias !15486 ; 2 uses
  %.promoted76 = load i64, ptr %i.z, align 8, !alias.scope !15485, !noalias !15486 ; 2 uses
  %xtraiter = and i64 %2, 1
  %i.aa = icmp eq i64 %2, 1
  br i1 %i.aa, label %.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.new

.lr.ph.i.i.i.i.i.i.i.new:                         ; preds = %.lr.ph.i.i.i.i.i.i.i
  %unroll_iter = and i64 %2, 2305843009213693950
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.i.i.i.i.i.i.new
  %i.ab = phi i64 [ %.promoted76, %.lr.ph.i.i.i.i.i.i.i.new ], [ %i.ba, %bb.f ]
  %i.ac = phi i64 [ %.promoted74, %.lr.ph.i.i.i.i.i.i.i.new ], [ %i.ay, %bb.f ] ; 3 uses
  %i.ad = phi i64 [ %.promoted72, %.lr.ph.i.i.i.i.i.i.i.new ], [ %i.bb, %bb.f ] ; 2 uses
  %i.ae = phi i64 [ %.promoted, %.lr.ph.i.i.i.i.i.i.i.new ], [ %i.az, %bb.f ] ; 4 uses
  %i.af = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.new ], [ %i.ar, %bb.f ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.new ], [ %niter.next.1, %bb.f ]
  %i.ag = add i64 %i.ad, %i.ae                    ; 2 uses
  %i.ah = tail call noundef i64 @llvm.fshl.i64(i64 %i.ag, i64 %i.ag, i64 23)
  %i.ai = add i64 %i.ah, %i.ae
  %i.aj = shl i64 %i.ac, 17
  %i.ak = xor i64 %i.ab, %i.ae                    ; 2 uses
  %i.al = xor i64 %i.ac, %i.ad                    ; 3 uses
  %i.am = xor i64 %i.ak, %i.ac                    ; 3 uses
  %i.an = xor i64 %i.al, %i.ae                    ; 4 uses
  %i.ao = xor i64 %i.ak, %i.aj
  %i.ap = tail call noundef i64 @llvm.fshl.i64(i64 %i.al, i64 %i.al, i64 45) ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.10.0.i.i.i, i64 %i.af
  store i64 %i.ai, ptr %i.aq, align 8, !noalias !15487
  %i.ar = add nuw nsw i64 %i.af, 2                ; 2 uses
  %i.as = add i64 %i.ap, %i.an                    ; 2 uses
  %i.at = tail call noundef i64 @llvm.fshl.i64(i64 %i.as, i64 %i.as, i64 23)
  %i.au = add i64 %i.at, %i.an
  %i.av = shl i64 %i.am, 17
  %i.aw = xor i64 %i.ao, %i.an                    ; 2 uses
  %i.ax = xor i64 %i.am, %i.ap                    ; 3 uses
  %i.ay = xor i64 %i.aw, %i.am                    ; 3 uses
  %i.az = xor i64 %i.ax, %i.an                    ; 3 uses
  %i.ba = xor i64 %i.aw, %i.av                    ; 3 uses
  %i.bb = tail call noundef i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 45) ; 3 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.10.0.i.i.i, i64 %i.af
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store i64 %i.au, ptr %i.bd, align 8, !noalias !15487
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types9Int64TypeENCINvNtB2G_5array4randB4K_E0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.unr-lcssa, label %bb.f

bb.g:                                             ; preds = %bb.a
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bf = load i64, ptr %i.be, align 8, !noundef !10
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.bh = load i32, ptr %i.bg, align 4, !noundef !10 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15488
  %i.bi = icmp eq i64 %2, 0
  br i1 %i.bi, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters4take4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB1m_3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_B2a_INtB2a_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB4i_5types9Int64TypeENCINvNtB2a_5array4randB5m_E0ENtB2a_14ArrayGenerator8generate0EEEE9from_iterB2c_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bj = add i64 %2, -1                          ; 3 uses
  %i.bk = icmp eq i32 %i.bh, 0
  br i1 %i.bk, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bl = load i64, ptr %3, align 8, !alias.scope !15489, !noalias !15490, !noundef !10 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !alias.scope !15489, !noalias !15490, !noundef !10 ; 2 uses
  %i.bo = add i64 %i.bn, %i.bl                    ; 2 uses
  %i.bp = tail call noundef i64 @llvm.fshl.i64(i64 %i.bo, i64 %i.bo, i64 23)
  %i.bq = add i64 %i.bp, %i.bl
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !alias.scope !15489, !noalias !15490, !noundef !10 ; 3 uses
  %i.bt = shl i64 %i.bs, 17
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !alias.scope !15489, !noalias !15490, !noundef !10
  %i.bw = xor i64 %i.bv, %i.bl                    ; 2 uses
  %i.bx = xor i64 %i.bs, %i.bn                    ; 3 uses
  %i.by = xor i64 %i.bw, %i.bs
  store i64 %i.by, ptr %i.br, align 8, !alias.scope !15489, !noalias !15490
  %i.bz = xor i64 %i.bx, %i.bl
  store i64 %i.bz, ptr %3, align 8, !alias.scope !15489, !noalias !15490
  %i.ca = xor i64 %i.bw, %i.bt
  store i64 %i.ca, ptr %i.bu, align 8, !alias.scope !15489, !noalias !15490
  %i.cb = tail call noundef i64 @llvm.fshl.i64(i64 %i.bx, i64 %i.bx, i64 45)
  store i64 %i.cb, ptr %i.bm, align 8, !alias.scope !15489, !noalias !15490
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.sroa.543.0 = phi i64 [ 1, %bb.i ], [ 0, %bb.h ] ; 2 uses
  %.sroa.8.0.copyload.in.i.i = phi i32 [ %i.p, %bb.i ], [ %i.bh, %bb.h ]
  %.sroa.6.0.copyload.i.i = phi i64 [ %i.bq, %bb.i ], [ %i.bf, %bb.h ] ; 2 uses
  %i.cc = icmp eq i64 %i.bj, 0                    ; 2 uses
  br i1 %i.cc, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB6_3map3MapINtNtNtBa_3ops5range5RangeyENCNvXsa_B10_INtB10_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB36_5types9Int64TypeENCINvNtB10_5array4randB4a_E0ENtB10_14ArrayGenerator8generate0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB12_.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %spec.select.i.i.i.i.i.i69 = sub nuw i64 %2, %.sroa.543.0
  %i.cd = zext i32 %i.p to i64
  %i.ce = mul i64 %spec.select.i.i.i.i.i.i69, %i.cd
  %.sroa.0.0.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.bj, i64 %i.ce)
  %i.cf = tail call i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i.i.i, i64 3)
  %i.cg = add nuw i64 %i.cf, 1
  br label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB6_3map3MapINtNtNtBa_3ops5range5RangeyENCNvXsa_B10_INtB10_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB36_5types9Int64TypeENCINvNtB10_5array4randB4a_E0ENtB10_14ArrayGenerator8generate0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB12_.exit.i.i

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB6_3map3MapINtNtNtBa_3ops5range5RangeyENCNvXsa_B10_INtB10_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB36_5types9Int64TypeENCINvNtB10_5array4randB4a_E0ENtB10_14ArrayGenerator8generate0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB12_.exit.i.i: ; preds = %bb.k, %bb.j
  %.sroa.0.0.i.sink.i.i.i = phi i64 [ %i.cg, %bb.k ], [ 4, %bb.j ] ; 4 uses
  %i.ch = shl i64 %.sroa.0.0.i.sink.i.i.i, 3      ; 3 uses
  %i.ci = icmp ugt i64 %.sroa.0.0.i.sink.i.i.i, 2305843009213693951
  %.not.i.i.i.i26 = icmp ugt i64 %i.ch, 9223372036854775800
  %or.cond.i.i.i.i27 = or i1 %i.ci, %.not.i.i.i.i26
  br i1 %or.cond.i.i.i.i27, label %bb.m, label %bb.l, !prof !7

bb.l:                                             ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB6_3map3MapINtNtNtBa_3ops5range5RangeyENCNvXsa_B10_INtB10_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB36_5types9Int64TypeENCINvNtB10_5array4randB4a_E0ENtB10_14ArrayGenerator8generate0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB12_.exit.i.i
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !15491
  %i.cj = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.ch, i64 noundef range(i64 1, 9) 8) #36, !noalias !15491 ; 5 uses
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %bb.m, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs342JT7D9NXi_13lance_datagen.exit.i.i

bb.m:                                             ; preds = %bb.l, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB6_3map3MapINtNtNtBa_3ops5range5RangeyENCNvXsa_B10_INtB10_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB36_5types9Int64TypeENCINvNtB10_5array4randB4a_E0ENtB10_14ArrayGenerator8generate0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB12_.exit.i.i
  %.sroa.4.0.ph.i.i.i32 = phi i64 [ 8, %bb.l ], [ 0, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB6_3map3MapINtNtNtBa_3ops5range5RangeyENCNvXsa_B10_INtB10_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB36_5types9Int64TypeENCINvNtB10_5array4randB4a_E0ENtB10_14ArrayGenerator8generate0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB12_.exit.i.i ]
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i32, i64 %i.ch) #37, !noalias !15488
  unreachable

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs342JT7D9NXi_13lance_datagen.exit.i.i: ; preds = %bb.l
  store i64 %.sroa.6.0.copyload.i.i, ptr %i.cj, align 8, !noalias !15488
  store i64 %.sroa.0.0.i.sink.i.i.i, ptr %i.a, align 8, !noalias !15488
  %.sroa.4.0..sroa_idx.i.i28 = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  store ptr %i.cj, ptr %.sroa.4.0..sroa_idx.i.i28, align 8, !noalias !15488
  %.sroa.6.0..sroa_idx.i.i29 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i29, align 8, !noalias !15488
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15492)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15493)
  br i1 %i.cc, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters4take4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB1m_3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_B2a_INtB2a_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB4i_5types9Int64TypeENCINvNtB2a_5array4randB5m_E0ENtB2a_14ArrayGenerator8generate0EEEE9from_iterB2c_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs342JT7D9NXi_13lance_datagen.exit.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.co = zext i32 %i.p to i64
  br label %bb.n

bb.n:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i30, %.lr.ph.i.i.i.i
  %i.cp = phi ptr [ %i.cj, %.lr.ph.i.i.i.i ], [ %i.dt, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i30 ]
  %i.cq = phi i64 [ 1, %.lr.ph.i.i.i.i ], [ %i.dv, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i30 ] ; 6 uses
  %i.cr = phi i64 [ %.sroa.543.0, %.lr.ph.i.i.i.i ], [ %i.dm, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i30 ] ; 3 uses
  %.pre.i.i12.i.i.i.i = phi i64 [ %.sroa.6.0.copyload.i.i, %.lr.ph.i.i.i.i ], [ %.pre.i.i11.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i30 ]
  %.in.i.i = phi i32 [ %.sroa.8.0.copyload.in.i.i, %.lr.ph.i.i.i.i ], [ %.in.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i30 ]
  %i.cs = phi i64 [ %i.bj, %.lr.ph.i.i.i.i ], [ %i.cu, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i30 ]
  %i.ct = add i32 %.in.i.i, -1                    ; 2 uses
  %i.cu = add i64 %i.cs, -1                       ; 4 uses
  %i.cv = icmp eq i32 %i.ct, 0
  br i1 %i.cv, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.cw = icmp ult i64 %i.cr, %2
  br i1 %i.cw, label %bb.p, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecxEINtB2_10SpecExtendxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters4take4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB1h_3map3MapINtNtNtB1l_3ops5range5RangeyENCNvXsa_B25_INtB25_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB4d_5types9Int64TypeENCINvNtB25_5array4randB5h_E0ENtB25_14ArrayGenerator8generate0EEEE11spec_extendB27_.exit.i.i.loopexit

bb.p:                                             ; preds = %bb.o
  %i.cx = add nuw i64 %i.cr, 1
  %i.cy = load i64, ptr %3, align 8, !alias.scope !15494, !noalias !15495, !noundef !10 ; 4 uses
  %i.cz = load i64, ptr %i.cl, align 8, !alias.scope !15494, !noalias !15495, !noundef !10 ; 2 uses
  %i.da = add i64 %i.cz, %i.cy                    ; 2 uses
  %i.db = tail call noundef i64 @llvm.fshl.i64(i64 %i.da, i64 %i.da, i64 23)
  %i.dc = add i64 %i.db, %i.cy
  %i.dd = load i64, ptr %i.cm, align 8, !alias.scope !15494, !noalias !15495, !noundef !10 ; 3 uses
  %i.de = shl i64 %i.dd, 17
  %i.df = load i64, ptr %i.cn, align 8, !alias.scope !15494, !noalias !15495, !noundef !10
  %i.dg = xor i64 %i.df, %i.cy                    ; 2 uses
  %i.dh = xor i64 %i.dd, %i.cz                    ; 3 uses
  %i.di = xor i64 %i.dg, %i.dd
  store i64 %i.di, ptr %i.cm, align 8, !alias.scope !15494, !noalias !15495
  %i.dj = xor i64 %i.dh, %i.cy
  store i64 %i.dj, ptr %3, align 8, !alias.scope !15494, !noalias !15495
  %i.dk = xor i64 %i.dg, %i.de
  store i64 %i.dk, ptr %i.cn, align 8, !alias.scope !15494, !noalias !15495
  %i.dl = tail call noundef i64 @llvm.fshl.i64(i64 %i.dh, i64 %i.dh, i64 45)
  store i64 %i.dl, ptr %i.cl, align 8, !alias.scope !15494, !noalias !15495
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n
  %i.dm = phi i64 [ %i.cx, %bb.p ], [ %i.cr, %bb.n ] ; 2 uses
  %.pre.i.i11.i.i.i.i = phi i64 [ %i.dc, %bb.p ], [ %.pre.i.i12.i.i.i.i, %bb.n ] ; 2 uses
  %.in.i.i.i.i = phi i32 [ %i.p, %bb.p ], [ %i.ct, %bb.n ]
  %i.dn = icmp samesign ult i64 %i.cq, 1152921504606846976
  tail call void @llvm.assume(i1 %i.dn)
  %i.do = load i64, ptr %i.a, align 8, !range !12, !alias.scope !15496, !noalias !15488, !noundef !10
  %i.dp = icmp eq i64 %i.cq, %i.do
  br i1 %i.dp, label %bb.r, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i30

bb.r:                                             ; preds = %bb.q
  %i.dq = icmp eq i64 %i.cu, 0
  br i1 %i.dq, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB6_3map3MapINtNtNtBa_3ops5range5RangeyENCNvXsa_B10_INtB10_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB36_5types9Int64TypeENCINvNtB10_5array4randB4a_E0ENtB10_14ArrayGenerator8generate0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB12_.exit.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %spec.select.i.i.i.i.i.i.i.i = tail call i64 @llvm.usub.sat.i64(i64 %2, i64 %i.dm)
  %i.dr = mul i64 %spec.select.i.i.i.i.i.i.i.i, %i.co
  %.sroa.0.0.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.cu, i64 %i.dr)
  %i.ds = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.0.0.i.i.i.i.i.i, i64 1)
  br label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB6_3map3MapINtNtNtBa_3ops5range5RangeyENCNvXsa_B10_INtB10_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB36_5types9Int64TypeENCINvNtB10_5array4randB4a_E0ENtB10_14ArrayGenerator8generate0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB12_.exit.i.i.i.i

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB6_3map3MapINtNtNtBa_3ops5range5RangeyENCNvXsa_B10_INtB10_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB36_5types9Int64TypeENCINvNtB10_5array4randB4a_E0ENtB10_14ArrayGenerator8generate0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB12_.exit.i.i.i.i: ; preds = %bb.s, %bb.r
  %.sroa.0.0.i.sink.i.i.i.i.i = phi i64 [ %i.ds, %bb.s ], [ 1, %bb.r ]
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs342JT7D9NXi_13lance_datagen(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.cq, i64 noundef %.sroa.0.0.i.sink.i.i.i.i.i, i64 noundef 8, i64 noundef 8)
          to label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB6_3map3MapINtNtNtBa_3ops5range5RangeyENCNvXsa_B10_INtB10_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB36_5types9Int64TypeENCINvNtB10_5array4randB4a_E0ENtB10_14ArrayGenerator8generate0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB12_.exit.i.i._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i_crit_edge.i.i unwind label %bb.t, !noalias !15488

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB6_3map3MapINtNtNtBa_3ops5range5RangeyENCNvXsa_B10_INtB10_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB36_5types9Int64TypeENCINvNtB10_5array4randB4a_E0ENtB10_14ArrayGenerator8generate0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB12_.exit.i.i._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i_crit_edge.i.i: ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB6_3map3MapINtNtNtBa_3ops5range5RangeyENCNvXsa_B10_INtB10_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB36_5types9Int64TypeENCINvNtB10_5array4randB4a_E0ENtB10_14ArrayGenerator8generate0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB12_.exit.i.i.i.i
  %.pre.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i28, align 8, !alias.scope !15496, !noalias !15488
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i30

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i30: ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB6_3map3MapINtNtNtBa_3ops5range5RangeyENCNvXsa_B10_INtB10_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB36_5types9Int64TypeENCINvNtB10_5array4randB4a_E0ENtB10_14ArrayGenerator8generate0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB12_.exit.i.i._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i_crit_edge.i.i, %bb.q
  %i.dt = phi ptr [ %.pre.i.i, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB6_3map3MapINtNtNtBa_3ops5range5RangeyENCNvXsa_B10_INtB10_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB36_5types9Int64TypeENCINvNtB10_5array4randB4a_E0ENtB10_14ArrayGenerator8generate0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB12_.exit.i.i._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i_crit_edge.i.i ], [ %i.cp, %bb.q ] ; 2 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.cq
  store i64 %.pre.i.i11.i.i.i.i, ptr %i.du, align 8, !noalias !15497
  %i.dv = add nuw nsw i64 %i.cq, 1                ; 3 uses
  store i64 %i.dv, ptr %.sroa.6.0..sroa_idx.i.i29, align 8, !alias.scope !15496, !noalias !15488
  %i.dw = icmp eq i64 %i.cu, 0
  br i1 %i.dw, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecxEINtB2_10SpecExtendxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters4take4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB1h_3map3MapINtNtNtB1l_3ops5range5RangeyENCNvXsa_B25_INtB25_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB4d_5types9Int64TypeENCINvNtB25_5array4randB5h_E0ENtB25_14ArrayGenerator8generate0EEEE11spec_extendB27_.exit.i.i.loopexit, label %bb.n

bb.t:                                             ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB6_3map3MapINtNtNtBa_3ops5range5RangeyENCNvXsa_B10_INtB10_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB36_5types9Int64TypeENCINvNtB10_5array4randB4a_E0ENtB10_14ArrayGenerator8generate0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB12_.exit.i.i.i.i
  %i.dx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i.i31 = load i64, ptr %i.a, align 8, !noalias !15488 ; 2 uses
  %i.dy = icmp eq i64 %.val.i.i31, 0
  br i1 %i.dy, label %common.resume, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.val7.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i28, align 8, !noalias !15488, !nonnull !10, !noundef !10
  %i.dz = shl nuw i64 %.val.i.i31, 3
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i.i, i64 noundef %i.dz, i64 noundef range(i64 1, -9223372036854775807) 8) #36, !noalias !15488
  br label %common.resume

_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecxEINtB2_10SpecExtendxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters4take4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB1h_3map3MapINtNtNtB1l_3ops5range5RangeyENCNvXsa_B25_INtB25_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB4d_5types9Int64TypeENCINvNtB25_5array4randB5h_E0ENtB25_14ArrayGenerator8generate0EEEE11spec_extendB27_.exit.i.i.loopexit: ; preds = %bb.o, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i30
  %.sroa.12.0.copyload4184 = phi i64 [ %i.cq, %bb.o ], [ %i.dv, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i30 ]
  %.sroa.035.0.copyload36.pre = load i64, ptr %i.a, align 8, !noalias !15498
  %.sroa.837.0.copyload39.pre = load ptr, ptr %.sroa.4.0..sroa_idx.i.i28, align 8, !noalias !15498
  %.pre.pre.pre = load i32, ptr %i.o, align 8
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters4take4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB1m_3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_B2a_INtB2a_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB4i_5types9Int64TypeENCINvNtB2a_5array4randB5m_E0ENtB2a_14ArrayGenerator8generate0EEEE9from_iterB2c_.exit

common.resume:                                    ; preds = %bb.an, %bb.ao, %bb.am, %bb.ad, %bb.aj, %bb.t, %bb.u
  %common.resume.op = phi { ptr, i32 } [ %i.dx, %bb.t ], [ %i.dx, %bb.u ], [ %i.gh, %bb.ao ], [ %i.gd, %bb.aj ], [ %i.gh, %bb.an ], [ %i.ft, %bb.ad ], [ %lpad.thr_comm.split-lp, %bb.am ]
  resume { ptr, i32 } %common.resume.op

_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters4take4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB1m_3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_B2a_INtB2a_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB4i_5types9Int64TypeENCINvNtB2a_5array4randB5m_E0ENtB2a_14ArrayGenerator8generate0EEEE9from_iterB2c_.exit: ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs342JT7D9NXi_13lance_datagen.exit.i.i, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecxEINtB2_10SpecExtendxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters4take4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB1h_3map3MapINtNtNtB1l_3ops5range5RangeyENCNvXsa_B25_INtB25_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB4d_5types9Int64TypeENCINvNtB25_5array4randB5h_E0ENtB25_14ArrayGenerator8generate0EEEE11spec_extendB27_.exit.i.i.loopexit, %bb.g
  %.pre = phi i32 [ %i.p, %bb.g ], [ %.pre.pre.pre, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecxEINtB2_10SpecExtendxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters4take4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB1h_3map3MapINtNtNtB1l_3ops5range5RangeyENCNvXsa_B25_INtB25_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB4d_5types9Int64TypeENCINvNtB25_5array4randB5h_E0ENtB25_14ArrayGenerator8generate0EEEE11spec_extendB27_.exit.i.i.loopexit ], [ %i.p, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs342JT7D9NXi_13lance_datagen.exit.i.i ]
  %.sroa.12.1 = phi i64 [ 0, %bb.g ], [ %.sroa.12.0.copyload4184, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecxEINtB2_10SpecExtendxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters4take4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB1h_3map3MapINtNtNtB1l_3ops5range5RangeyENCNvXsa_B25_INtB25_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB4d_5types9Int64TypeENCINvNtB25_5array4randB5h_E0ENtB25_14ArrayGenerator8generate0EEEE11spec_extendB27_.exit.i.i.loopexit ], [ 1, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs342JT7D9NXi_13lance_datagen.exit.i.i ]
  %.sroa.837.1 = phi ptr [ inttoptr (i64 8 to ptr), %bb.g ], [ %.sroa.837.0.copyload39.pre, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecxEINtB2_10SpecExtendxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters4take4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB1h_3map3MapINtNtNtB1l_3ops5range5RangeyENCNvXsa_B25_INtB25_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB4d_5types9Int64TypeENCINvNtB25_5array4randB5h_E0ENtB25_14ArrayGenerator8generate0EEEE11spec_extendB27_.exit.i.i.loopexit ], [ %i.cj, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs342JT7D9NXi_13lance_datagen.exit.i.i ]
  %.sroa.035.1 = phi i64 [ 0, %bb.g ], [ %.sroa.035.0.copyload36.pre, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecxEINtB2_10SpecExtendxINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters4take4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB1h_3map3MapINtNtNtB1l_3ops5range5RangeyENCNvXsa_B25_INtB25_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB4d_5types9Int64TypeENCINvNtB25_5array4randB5h_E0ENtB25_14ArrayGenerator8generate0EEEE11spec_extendB27_.exit.i.i.loopexit ], [ %.sroa.0.0.i.sink.i.i.i, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs342JT7D9NXi_13lance_datagen.exit.i.i ]
end_hunk_11
begin_hunk_12_@_RNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB5_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB14_5types9Int64TypeENCINvNtB5_5array4randB28_E0ENtB5_14ArrayGenerator8generateB7_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @_RNvMs3_NtCs56ggtDZRYpd_10arrow_data4dataNtB5_16ArrayDataBuilder5build(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(none) dereferenceable(136) %i.l, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(184) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.fv = load i64, ptr %i.l, align 8, !range !17, !noundef !10 ; 2 uses
  %i.fw = icmp eq i64 %i.fv, -1
  %i.fx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.66, ptr noundef nonnull align 8 dereferenceable(32) %i.fx, i64 32, i1 false)
  br i1 %i.fw, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.66, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.66)
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %.sroa.8.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.8.0..sroa_idx8, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.518.0..sroa_idx, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  store i64 %i.fv, ptr %i.g, align 8
  %.sroa.66.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.66.0..sroa_idx7, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.66, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.66)
  %i.fy = call { ptr, ptr } @_RNvNtCs4ytUTZt2Gw9_11arrow_array5array10make_array(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(136) %i.g) ; 2 uses
  %i.fz = extractvalue { ptr, ptr } %i.fy, 0
  %i.ga = extractvalue { ptr, ptr } %i.fy, 1
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fz, ptr %i.gb, align 8
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ga, ptr %i.gc, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.al, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  ret void

bb.aj:                                            ; preds = %_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types9Int64TypeENtB7_5Array9into_dataCs342JT7D9NXi_13lance_datagen.exit
  %i.gd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs56ggtDZRYpd_10arrow_data4data16ArrayDataBuilderECs342JT7D9NXi_13lance_datagen(ptr noalias noundef align 8 dereferenceable(184) %i.j) #38
          to label %common.resume unwind label %bb.ak

bb.ak:                                            ; preds = %bb.am, %bb.aj
  %i.ge = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.al:                                            ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.fr, ptr noundef nonnull align 8 dereferenceable(112) %i.f, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fr, ptr %i.gf, align 8
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @624, ptr %i.gg, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.ai

bb.am:                                            ; preds = %bb.z
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBI_5types9Int64TypeEECs342JT7D9NXi_13lance_datagen(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.n) #38
          to label %common.resume unwind label %bb.ak

bb.an:                                            ; preds = %bb.w
  %i.gh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gi = icmp eq i64 %.sroa.035.0111, 0
  br i1 %i.gi, label %common.resume, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gj = shl nuw i64 %.sroa.035.0111, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.837.0109) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.837.0109, i64 noundef %i.gj, i64 noundef range(i64 1, -9223372036854775807) 8) #36
  br label %common.resume
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB5_5FnGenxINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB14_5types9Int64TypeENCINvNtB5_5array4randB28_E0ENtB5_14ArrayGenerator9data_typeB7_(ptr noalias noundef readonly align 8 captures(ret: address, read_provenance) dereferenceable(56) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { i64, i64 } @_RNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB5_5FnGenyINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB14_5types10UInt64TypeENCINvNtB5_5array4randB28_E0ENtB5_14ArrayGenerator18element_size_bytesB7_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #10 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !25, !noundef !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = insertvalue { i64, i64 } poison, i64 %i.a, 0
  %i.e = insertvalue { i64, i64 } %i.d, i64 %i.c, 1
  ret { i64, i64 } %i.e
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB5_5FnGenyINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB14_5types10UInt64TypeENCINvNtB5_5array4randB28_E0ENtB5_14ArrayGenerator8generateB7_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %1, i64 noundef %2, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [136 x i8], align 8               ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.f = alloca [112 x i8], align 8               ; 6 uses
  %i.g = alloca [136 x i8], align 8               ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [96 x i8], align 8                ; 4 uses
  %i.j = alloca [184 x i8], align 8               ; 14 uses
  %i.k = alloca [184 x i8], align 8               ; 4 uses
  %i.l = alloca [136 x i8], align 8               ; 7 uses
  %.sroa.66 = alloca [32 x i8], align 8           ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [96 x i8], align 8                ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !noundef !10 ; 9 uses
  %i.q = icmp ugt i32 %i.p, 1
  br i1 %i.q, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = shl i64 %2, 3                            ; 4 uses
  %i.s = icmp ugt i64 %2, 2305843009213693951
  %.not.i.i.i.i = icmp ugt i64 %i.r, 9223372036854775800
  %or.cond.i.i.i.i = or i1 %i.s, %.not.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %bb.e, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.t = icmp eq i64 %i.r, 0
  br i1 %i.t, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !15574
  %i.u = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.r, i64 noundef range(i64 1, 9) 8) #36, !noalias !15574 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.e, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i

bb.e:                                             ; preds = %bb.d, %bb.b
  %.sroa.4.0.ph.i.i.i = phi i64 [ 8, %bb.d ], [ 0, %bb.b ]
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.r) #37, !noalias !15575
  unreachable

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i: ; preds = %bb.d, %bb.c
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.c ], [ %i.u, %bb.d ] ; 6 uses
  %.sroa.4.0.i.i.i = phi i64 [ 0, %bb.c ], [ %2, %bb.d ] ; 4 uses
  %i.w = icmp samesign ule i64 %2, %.sroa.4.0.i.i.i
  tail call void @llvm.assume(i1 %i.w)
  %.not70 = icmp eq i64 %2, 0
  br i1 %.not70, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecyEINtB2_12SpecFromIteryINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenyINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types10UInt64TypeENCINvNtB2G_5array4randB4K_E0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.thread, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %.promoted = load i64, ptr %3, align 8, !alias.scope !15576, !noalias !15577 ; 2 uses
  %.promoted72 = load i64, ptr %i.x, align 8, !alias.scope !15576, !noalias !15577 ; 2 uses
  %.promoted74 = load i64, ptr %i.y, align 8, !alias.scope !15576, !noalias !15577 ; 2 uses
  %.promoted76 = load i64, ptr %i.z, align 8, !alias.scope !15576, !noalias !15577 ; 2 uses
  %xtraiter = and i64 %2, 1
  %i.aa = icmp eq i64 %2, 1
  br i1 %i.aa, label %.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.new

.lr.ph.i.i.i.i.i.i.i.new:                         ; preds = %.lr.ph.i.i.i.i.i.i.i
  %unroll_iter = and i64 %2, 2305843009213693950
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.i.i.i.i.i.i.new
  %i.ab = phi i64 [ %.promoted76, %.lr.ph.i.i.i.i.i.i.i.new ], [ %i.ba, %bb.f ]
  %i.ac = phi i64 [ %.promoted74, %.lr.ph.i.i.i.i.i.i.i.new ], [ %i.ay, %bb.f ] ; 3 uses
  %i.ad = phi i64 [ %.promoted72, %.lr.ph.i.i.i.i.i.i.i.new ], [ %i.bb, %bb.f ] ; 2 uses
  %i.ae = phi i64 [ %.promoted, %.lr.ph.i.i.i.i.i.i.i.new ], [ %i.az, %bb.f ] ; 4 uses
  %i.af = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.new ], [ %i.ar, %bb.f ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.new ], [ %niter.next.1, %bb.f ]
  %i.ag = add i64 %i.ad, %i.ae                    ; 2 uses
  %i.ah = tail call noundef i64 @llvm.fshl.i64(i64 %i.ag, i64 %i.ag, i64 23)
  %i.ai = add i64 %i.ah, %i.ae
  %i.aj = shl i64 %i.ac, 17
  %i.ak = xor i64 %i.ab, %i.ae                    ; 2 uses
  %i.al = xor i64 %i.ac, %i.ad                    ; 3 uses
  %i.am = xor i64 %i.ak, %i.ac                    ; 3 uses
  %i.an = xor i64 %i.al, %i.ae                    ; 4 uses
  %i.ao = xor i64 %i.ak, %i.aj
  %i.ap = tail call noundef i64 @llvm.fshl.i64(i64 %i.al, i64 %i.al, i64 45) ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.10.0.i.i.i, i64 %i.af
  store i64 %i.ai, ptr %i.aq, align 8, !noalias !15578
  %i.ar = add nuw nsw i64 %i.af, 2                ; 2 uses
  %i.as = add i64 %i.ap, %i.an                    ; 2 uses
  %i.at = tail call noundef i64 @llvm.fshl.i64(i64 %i.as, i64 %i.as, i64 23)
  %i.au = add i64 %i.at, %i.an
  %i.av = shl i64 %i.am, 17
  %i.aw = xor i64 %i.ao, %i.an                    ; 2 uses
  %i.ax = xor i64 %i.am, %i.ap                    ; 3 uses
  %i.ay = xor i64 %i.aw, %i.am                    ; 3 uses
  %i.az = xor i64 %i.ax, %i.an                    ; 3 uses
  %i.ba = xor i64 %i.aw, %i.av                    ; 3 uses
  %i.bb = tail call noundef i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 45) ; 3 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.10.0.i.i.i, i64 %i.af
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store i64 %i.au, ptr %i.bd, align 8, !noalias !15578
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecyEINtB2_12SpecFromIteryINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_NtCs342JT7D9NXi_13lance_datagen9generatorINtB2G_5FnGenyINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB3G_5types10UInt64TypeENCINvNtB2G_5array4randB4K_E0ENtB2G_14ArrayGenerator8generate0EE9from_iterB2I_.exit.loopexit.unr-lcssa, label %bb.f

bb.g:                                             ; preds = %bb.a
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bf = load i64, ptr %i.be, align 8, !noundef !10
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.bh = load i32, ptr %i.bg, align 4, !noundef !10 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15579
  %i.bi = icmp eq i64 %2, 0
  br i1 %i.bi, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecyEINtB2_12SpecFromIteryINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters4take4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB1m_3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_B2a_INtB2a_5FnGenyINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB4i_5types10UInt64TypeENCINvNtB2a_5array4randB5m_E0ENtB2a_14ArrayGenerator8generate0EEEE9from_iterB2c_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bj = add i64 %2, -1                          ; 3 uses
  %i.bk = icmp eq i32 %i.bh, 0
  br i1 %i.bk, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bl = load i64, ptr %3, align 8, !alias.scope !15580, !noalias !15581, !noundef !10 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !alias.scope !15580, !noalias !15581, !noundef !10 ; 2 uses
  %i.bo = add i64 %i.bn, %i.bl                    ; 2 uses
  %i.bp = tail call noundef i64 @llvm.fshl.i64(i64 %i.bo, i64 %i.bo, i64 23)
  %i.bq = add i64 %i.bp, %i.bl
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !alias.scope !15580, !noalias !15581, !noundef !10 ; 3 uses
  %i.bt = shl i64 %i.bs, 17
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !alias.scope !15580, !noalias !15581, !noundef !10
  %i.bw = xor i64 %i.bv, %i.bl                    ; 2 uses
  %i.bx = xor i64 %i.bs, %i.bn                    ; 3 uses
  %i.by = xor i64 %i.bw, %i.bs
  store i64 %i.by, ptr %i.br, align 8, !alias.scope !15580, !noalias !15581
  %i.bz = xor i64 %i.bx, %i.bl
  store i64 %i.bz, ptr %3, align 8, !alias.scope !15580, !noalias !15581
  %i.ca = xor i64 %i.bw, %i.bt
  store i64 %i.ca, ptr %i.bu, align 8, !alias.scope !15580, !noalias !15581
  %i.cb = tail call noundef i64 @llvm.fshl.i64(i64 %i.bx, i64 %i.bx, i64 45)
  store i64 %i.cb, ptr %i.bm, align 8, !alias.scope !15580, !noalias !15581
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.sroa.543.0 = phi i64 [ 1, %bb.i ], [ 0, %bb.h ] ; 2 uses
  %.sroa.8.0.copyload.in.i.i = phi i32 [ %i.p, %bb.i ], [ %i.bh, %bb.h ]
  %.sroa.6.0.copyload.i.i = phi i64 [ %i.bq, %bb.i ], [ %i.bf, %bb.h ] ; 2 uses
  %i.cc = icmp eq i64 %i.bj, 0                    ; 2 uses
  br i1 %i.cc, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB6_3map3MapINtNtNtBa_3ops5range5RangeyENCNvXsa_B10_INtB10_5FnGenyINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB36_5types10UInt64TypeENCINvNtB10_5array4randB4a_E0ENtB10_14ArrayGenerator8generate0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB12_.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %spec.select.i.i.i.i.i.i69 = sub nuw i64 %2, %.sroa.543.0
  %i.cd = zext i32 %i.p to i64
  %i.ce = mul i64 %spec.select.i.i.i.i.i.i69, %i.cd
  %.sroa.0.0.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.bj, i64 %i.ce)
  %i.cf = tail call i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i.i.i, i64 3)
  %i.cg = add nuw i64 %i.cf, 1
  br label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB6_3map3MapINtNtNtBa_3ops5range5RangeyENCNvXsa_B10_INtB10_5FnGenyINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB36_5types10UInt64TypeENCINvNtB10_5array4randB4a_E0ENtB10_14ArrayGenerator8generate0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB12_.exit.i.i

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB6_3map3MapINtNtNtBa_3ops5range5RangeyENCNvXsa_B10_INtB10_5FnGenyINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB36_5types10UInt64TypeENCINvNtB10_5array4randB4a_E0ENtB10_14ArrayGenerator8generate0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB12_.exit.i.i: ; preds = %bb.k, %bb.j
  %.sroa.0.0.i.sink.i.i.i = phi i64 [ %i.cg, %bb.k ], [ 4, %bb.j ] ; 4 uses
  %i.ch = shl i64 %.sroa.0.0.i.sink.i.i.i, 3      ; 3 uses
  %i.ci = icmp ugt i64 %.sroa.0.0.i.sink.i.i.i, 2305843009213693951
  %.not.i.i.i.i26 = icmp ugt i64 %i.ch, 9223372036854775800
  %or.cond.i.i.i.i27 = or i1 %i.ci, %.not.i.i.i.i26
  br i1 %or.cond.i.i.i.i27, label %bb.m, label %bb.l, !prof !7

bb.l:                                             ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB6_3map3MapINtNtNtBa_3ops5range5RangeyENCNvXsa_B10_INtB10_5FnGenyINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB36_5types10UInt64TypeENCINvNtB10_5array4randB4a_E0ENtB10_14ArrayGenerator8generate0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB12_.exit.i.i
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !15582
  %i.cj = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.ch, i64 noundef range(i64 1, 9) 8) #36, !noalias !15582 ; 5 uses
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %bb.m, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs342JT7D9NXi_13lance_datagen.exit.i.i

bb.m:                                             ; preds = %bb.l, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB6_3map3MapINtNtNtBa_3ops5range5RangeyENCNvXsa_B10_INtB10_5FnGenyINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB36_5types10UInt64TypeENCINvNtB10_5array4randB4a_E0ENtB10_14ArrayGenerator8generate0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB12_.exit.i.i
  %.sroa.4.0.ph.i.i.i32 = phi i64 [ 8, %bb.l ], [ 0, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB6_3map3MapINtNtNtBa_3ops5range5RangeyENCNvXsa_B10_INtB10_5FnGenyINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB36_5types10UInt64TypeENCINvNtB10_5array4randB4a_E0ENtB10_14ArrayGenerator8generate0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB12_.exit.i.i ]
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i32, i64 %i.ch) #37, !noalias !15579
  unreachable

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs342JT7D9NXi_13lance_datagen.exit.i.i: ; preds = %bb.l
  store i64 %.sroa.6.0.copyload.i.i, ptr %i.cj, align 8, !noalias !15579
  store i64 %.sroa.0.0.i.sink.i.i.i, ptr %i.a, align 8, !noalias !15579
  %.sroa.4.0..sroa_idx.i.i28 = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  store ptr %i.cj, ptr %.sroa.4.0..sroa_idx.i.i28, align 8, !noalias !15579
  %.sroa.6.0..sroa_idx.i.i29 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i29, align 8, !noalias !15579
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15583)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15584)
  br i1 %i.cc, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecyEINtB2_12SpecFromIteryINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters4take4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB1m_3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_B2a_INtB2a_5FnGenyINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB4i_5types10UInt64TypeENCINvNtB2a_5array4randB5m_E0ENtB2a_14ArrayGenerator8generate0EEEE9from_iterB2c_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs342JT7D9NXi_13lance_datagen.exit.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.co = zext i32 %i.p to i64
  br label %bb.n

bb.n:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i30, %.lr.ph.i.i.i.i
  %i.cp = phi ptr [ %i.cj, %.lr.ph.i.i.i.i ], [ %i.dt, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i30 ]
  %i.cq = phi i64 [ 1, %.lr.ph.i.i.i.i ], [ %i.dv, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i30 ] ; 6 uses
  %i.cr = phi i64 [ %.sroa.543.0, %.lr.ph.i.i.i.i ], [ %i.dm, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i30 ] ; 3 uses
  %.pre.i.i12.i.i.i.i = phi i64 [ %.sroa.6.0.copyload.i.i, %.lr.ph.i.i.i.i ], [ %.pre.i.i11.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i30 ]
  %.in.i.i = phi i32 [ %.sroa.8.0.copyload.in.i.i, %.lr.ph.i.i.i.i ], [ %.in.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i30 ]
  %i.cs = phi i64 [ %i.bj, %.lr.ph.i.i.i.i ], [ %i.cu, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i30 ]
  %i.ct = add i32 %.in.i.i, -1                    ; 2 uses
  %i.cu = add i64 %i.cs, -1                       ; 4 uses
  %i.cv = icmp eq i32 %i.ct, 0
  br i1 %i.cv, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.cw = icmp ult i64 %i.cr, %2
  br i1 %i.cw, label %bb.p, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecyEINtB2_10SpecExtendyINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters4take4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB1h_3map3MapINtNtNtB1l_3ops5range5RangeyENCNvXsa_B25_INtB25_5FnGenyINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB4d_5types10UInt64TypeENCINvNtB25_5array4randB5h_E0ENtB25_14ArrayGenerator8generate0EEEE11spec_extendB27_.exit.i.i.loopexit

bb.p:                                             ; preds = %bb.o
  %i.cx = add nuw i64 %i.cr, 1
  %i.cy = load i64, ptr %3, align 8, !alias.scope !15585, !noalias !15586, !noundef !10 ; 4 uses
  %i.cz = load i64, ptr %i.cl, align 8, !alias.scope !15585, !noalias !15586, !noundef !10 ; 2 uses
  %i.da = add i64 %i.cz, %i.cy                    ; 2 uses
  %i.db = tail call noundef i64 @llvm.fshl.i64(i64 %i.da, i64 %i.da, i64 23)
  %i.dc = add i64 %i.db, %i.cy
  %i.dd = load i64, ptr %i.cm, align 8, !alias.scope !15585, !noalias !15586, !noundef !10 ; 3 uses
  %i.de = shl i64 %i.dd, 17
  %i.df = load i64, ptr %i.cn, align 8, !alias.scope !15585, !noalias !15586, !noundef !10
  %i.dg = xor i64 %i.df, %i.cy                    ; 2 uses
  %i.dh = xor i64 %i.dd, %i.cz                    ; 3 uses
  %i.di = xor i64 %i.dg, %i.dd
  store i64 %i.di, ptr %i.cm, align 8, !alias.scope !15585, !noalias !15586
  %i.dj = xor i64 %i.dh, %i.cy
  store i64 %i.dj, ptr %3, align 8, !alias.scope !15585, !noalias !15586
  %i.dk = xor i64 %i.dg, %i.de
  store i64 %i.dk, ptr %i.cn, align 8, !alias.scope !15585, !noalias !15586
  %i.dl = tail call noundef i64 @llvm.fshl.i64(i64 %i.dh, i64 %i.dh, i64 45)
  store i64 %i.dl, ptr %i.cl, align 8, !alias.scope !15585, !noalias !15586
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n
  %i.dm = phi i64 [ %i.cx, %bb.p ], [ %i.cr, %bb.n ] ; 2 uses
  %.pre.i.i11.i.i.i.i = phi i64 [ %i.dc, %bb.p ], [ %.pre.i.i12.i.i.i.i, %bb.n ] ; 2 uses
  %.in.i.i.i.i = phi i32 [ %i.p, %bb.p ], [ %i.ct, %bb.n ]
  %i.dn = icmp samesign ult i64 %i.cq, 1152921504606846976
  tail call void @llvm.assume(i1 %i.dn)
  %i.do = load i64, ptr %i.a, align 8, !range !12, !alias.scope !15587, !noalias !15579, !noundef !10
  %i.dp = icmp eq i64 %i.cq, %i.do
  br i1 %i.dp, label %bb.r, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i30

bb.r:                                             ; preds = %bb.q
  %i.dq = icmp eq i64 %i.cu, 0
  br i1 %i.dq, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB6_3map3MapINtNtNtBa_3ops5range5RangeyENCNvXsa_B10_INtB10_5FnGenyINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB36_5types10UInt64TypeENCINvNtB10_5array4randB4a_E0ENtB10_14ArrayGenerator8generate0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB12_.exit.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %spec.select.i.i.i.i.i.i.i.i = tail call i64 @llvm.usub.sat.i64(i64 %2, i64 %i.dm)
  %i.dr = mul i64 %spec.select.i.i.i.i.i.i.i.i, %i.co
  %.sroa.0.0.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.cu, i64 %i.dr)
  %i.ds = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.0.0.i.i.i.i.i.i, i64 1)
  br label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB6_3map3MapINtNtNtBa_3ops5range5RangeyENCNvXsa_B10_INtB10_5FnGenyINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB36_5types10UInt64TypeENCINvNtB10_5array4randB4a_E0ENtB10_14ArrayGenerator8generate0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB12_.exit.i.i.i.i

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB6_3map3MapINtNtNtBa_3ops5range5RangeyENCNvXsa_B10_INtB10_5FnGenyINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB36_5types10UInt64TypeENCINvNtB10_5array4randB4a_E0ENtB10_14ArrayGenerator8generate0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB12_.exit.i.i.i.i: ; preds = %bb.s, %bb.r
  %.sroa.0.0.i.sink.i.i.i.i.i = phi i64 [ %i.ds, %bb.s ], [ 1, %bb.r ]
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs342JT7D9NXi_13lance_datagen(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.cq, i64 noundef %.sroa.0.0.i.sink.i.i.i.i.i, i64 noundef 8, i64 noundef 8)
          to label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB6_3map3MapINtNtNtBa_3ops5range5RangeyENCNvXsa_B10_INtB10_5FnGenyINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB36_5types10UInt64TypeENCINvNtB10_5array4randB4a_E0ENtB10_14ArrayGenerator8generate0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB12_.exit.i.i._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i_crit_edge.i.i unwind label %bb.t, !noalias !15579

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB6_3map3MapINtNtNtBa_3ops5range5RangeyENCNvXsa_B10_INtB10_5FnGenyINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB36_5types10UInt64TypeENCINvNtB10_5array4randB4a_E0ENtB10_14ArrayGenerator8generate0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB12_.exit.i.i._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i_crit_edge.i.i: ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB6_3map3MapINtNtNtBa_3ops5range5RangeyENCNvXsa_B10_INtB10_5FnGenyINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB36_5types10UInt64TypeENCINvNtB10_5array4randB4a_E0ENtB10_14ArrayGenerator8generate0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB12_.exit.i.i.i.i
  %.pre.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i28, align 8, !alias.scope !15587, !noalias !15579
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i30

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i30: ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB6_3map3MapINtNtNtBa_3ops5range5RangeyENCNvXsa_B10_INtB10_5FnGenyINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB36_5types10UInt64TypeENCINvNtB10_5array4randB4a_E0ENtB10_14ArrayGenerator8generate0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB12_.exit.i.i._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i_crit_edge.i.i, %bb.q
  %i.dt = phi ptr [ %.pre.i.i, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB6_3map3MapINtNtNtBa_3ops5range5RangeyENCNvXsa_B10_INtB10_5FnGenyINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB36_5types10UInt64TypeENCINvNtB10_5array4randB4a_E0ENtB10_14ArrayGenerator8generate0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB12_.exit.i.i._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i_crit_edge.i.i ], [ %i.cp, %bb.q ] ; 2 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.cq
  store i64 %.pre.i.i11.i.i.i.i, ptr %i.du, align 8, !noalias !15588
  %i.dv = add nuw nsw i64 %i.cq, 1                ; 3 uses
  store i64 %i.dv, ptr %.sroa.6.0..sroa_idx.i.i29, align 8, !alias.scope !15587, !noalias !15579
  %i.dw = icmp eq i64 %i.cu, 0
  br i1 %i.dw, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecyEINtB2_10SpecExtendyINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters4take4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB1h_3map3MapINtNtNtB1l_3ops5range5RangeyENCNvXsa_B25_INtB25_5FnGenyINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB4d_5types10UInt64TypeENCINvNtB25_5array4randB5h_E0ENtB25_14ArrayGenerator8generate0EEEE11spec_extendB27_.exit.i.i.loopexit, label %bb.n

bb.t:                                             ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB6_3map3MapINtNtNtBa_3ops5range5RangeyENCNvXsa_B10_INtB10_5FnGenyINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB36_5types10UInt64TypeENCINvNtB10_5array4randB4a_E0ENtB10_14ArrayGenerator8generate0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB12_.exit.i.i.i.i
  %i.dx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i.i31 = load i64, ptr %i.a, align 8, !noalias !15579 ; 2 uses
  %i.dy = icmp eq i64 %.val.i.i31, 0
  br i1 %i.dy, label %common.resume, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.val7.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i28, align 8, !noalias !15579, !nonnull !10, !noundef !10
  %i.dz = shl nuw i64 %.val.i.i31, 3
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i.i, i64 noundef %i.dz, i64 noundef range(i64 1, -9223372036854775807) 8) #36, !noalias !15579
  br label %common.resume

_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecyEINtB2_10SpecExtendyINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters4take4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB1h_3map3MapINtNtNtB1l_3ops5range5RangeyENCNvXsa_B25_INtB25_5FnGenyINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB4d_5types10UInt64TypeENCINvNtB25_5array4randB5h_E0ENtB25_14ArrayGenerator8generate0EEEE11spec_extendB27_.exit.i.i.loopexit: ; preds = %bb.o, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i30
  %.sroa.12.0.copyload4184 = phi i64 [ %i.cq, %bb.o ], [ %i.dv, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i30 ]
  %.sroa.035.0.copyload36.pre = load i64, ptr %i.a, align 8, !noalias !15589
  %.sroa.837.0.copyload39.pre = load ptr, ptr %.sroa.4.0..sroa_idx.i.i28, align 8, !noalias !15589
  %.pre.pre.pre = load i32, ptr %i.o, align 8
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecyEINtB2_12SpecFromIteryINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters4take4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB1m_3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_B2a_INtB2a_5FnGenyINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB4i_5types10UInt64TypeENCINvNtB2a_5array4randB5m_E0ENtB2a_14ArrayGenerator8generate0EEEE9from_iterB2c_.exit

common.resume:                                    ; preds = %bb.an, %bb.ao, %bb.am, %bb.ad, %bb.aj, %bb.t, %bb.u
  %common.resume.op = phi { ptr, i32 } [ %i.dx, %bb.t ], [ %i.dx, %bb.u ], [ %i.gh, %bb.ao ], [ %i.gd, %bb.aj ], [ %i.gh, %bb.an ], [ %i.ft, %bb.ad ], [ %lpad.thr_comm.split-lp, %bb.am ]
  resume { ptr, i32 } %common.resume.op

_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecyEINtB2_12SpecFromIteryINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters4take4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB1m_3map3MapINtNtNtB1q_3ops5range5RangeyENCNvXsa_B2a_INtB2a_5FnGenyINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB4i_5types10UInt64TypeENCINvNtB2a_5array4randB5m_E0ENtB2a_14ArrayGenerator8generate0EEEE9from_iterB2c_.exit: ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs342JT7D9NXi_13lance_datagen.exit.i.i, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecyEINtB2_10SpecExtendyINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters4take4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB1h_3map3MapINtNtNtB1l_3ops5range5RangeyENCNvXsa_B25_INtB25_5FnGenyINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB4d_5types10UInt64TypeENCINvNtB25_5array4randB5h_E0ENtB25_14ArrayGenerator8generate0EEEE11spec_extendB27_.exit.i.i.loopexit, %bb.g
  %.pre = phi i32 [ %i.p, %bb.g ], [ %.pre.pre.pre, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecyEINtB2_10SpecExtendyINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters4take4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB1h_3map3MapINtNtNtB1l_3ops5range5RangeyENCNvXsa_B25_INtB25_5FnGenyINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB4d_5types10UInt64TypeENCINvNtB25_5array4randB5h_E0ENtB25_14ArrayGenerator8generate0EEEE11spec_extendB27_.exit.i.i.loopexit ], [ %i.p, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs342JT7D9NXi_13lance_datagen.exit.i.i ]
  %.sroa.12.1 = phi i64 [ 0, %bb.g ], [ %.sroa.12.0.copyload4184, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecyEINtB2_10SpecExtendyINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters4take4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB1h_3map3MapINtNtNtB1l_3ops5range5RangeyENCNvXsa_B25_INtB25_5FnGenyINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB4d_5types10UInt64TypeENCINvNtB25_5array4randB5h_E0ENtB25_14ArrayGenerator8generate0EEEE11spec_extendB27_.exit.i.i.loopexit ], [ 1, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs342JT7D9NXi_13lance_datagen.exit.i.i ]
  %.sroa.837.1 = phi ptr [ inttoptr (i64 8 to ptr), %bb.g ], [ %.sroa.837.0.copyload39.pre, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecyEINtB2_10SpecExtendyINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters4take4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB1h_3map3MapINtNtNtB1l_3ops5range5RangeyENCNvXsa_B25_INtB25_5FnGenyINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB4d_5types10UInt64TypeENCINvNtB25_5array4randB5h_E0ENtB25_14ArrayGenerator8generate0EEEE11spec_extendB27_.exit.i.i.loopexit ], [ %i.cj, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs342JT7D9NXi_13lance_datagen.exit.i.i ]
  %.sroa.035.1 = phi i64 [ 0, %bb.g ], [ %.sroa.035.0.copyload36.pre, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecyEINtB2_10SpecExtendyINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters4take4TakeINtNtCs342JT7D9NXi_13lance_datagen9generator10NTimesIterINtNtB1h_3map3MapINtNtNtB1l_3ops5range5RangeyENCNvXsa_B25_INtB25_5FnGenyINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB4d_5types10UInt64TypeENCINvNtB25_5array4randB5h_E0ENtB25_14ArrayGenerator8generate0EEEE11spec_extendB27_.exit.i.i.loopexit ], [ %.sroa.0.0.i.sink.i.i.i, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs342JT7D9NXi_13lance_datagen.exit.i.i ]
end_hunk_12
