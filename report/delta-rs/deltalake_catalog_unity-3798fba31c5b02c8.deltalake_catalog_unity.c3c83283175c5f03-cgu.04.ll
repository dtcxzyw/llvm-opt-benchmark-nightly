inline.NumInlined: 996
inline.NumDeleted: 405
begin_hunk_0_@_RNCNvXs8_NtCs14kWLkQVSKO_14deltalake_core8logstoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB7_8LogStoreEL_EB1l_7refresh0CsgO8S5jLFugx_23deltalake_catalog_unity:bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef %i.ac, i64 noundef range(i64 1, 536870913) %i.af) #37
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.n:                                             ; preds = %bb.l
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.val4, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !range !127, !invariant.load !10 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %.body, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.n
  %i.ak = getelementptr inbounds nuw i8, ptr %.val4, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !range !128, !invariant.load !10
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef %i.ai, i64 noundef range(i64 1, 536870913) %i.al) #37
  br label %.body

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef nonnull align 16 dereferenceable(96) %i.a, i64 96, i1 false)
  br label %common.ret

bb.o:                                             ; preds = %bb.g
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtCs3eCsZ2Mx498_14http_body_util9collectedINtB2_9CollectedNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE10push_frameCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(128) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(96) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 3 uses
  %i.b = alloca [72 x i8], align 8                ; 11 uses
  %i.c = alloca [72 x i8], align 8                ; 11 uses
  %i.d = alloca [32 x i8], align 16               ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [40 x i8], align 8                ; 7 uses
  %i.j = alloca [32 x i8], align 8                ; 5 uses
  %i.k = alloca [40 x i8], align 8                ; 4 uses
  %i.l = alloca [40 x i8], align 8                ; 7 uses
  %i.m = alloca [40 x i8], align 8                ; 7 uses
  %i.n = alloca [56 x i8], align 8                ; 10 uses
  %.sroa.774.sroa.0.i = alloca [16 x i8], align 8 ; 4 uses
  %i.o = alloca [80 x i8], align 8                ; 9 uses
  %i.p = alloca [40 x i8], align 8                ; 11 uses
  %i.q = alloca [72 x i8], align 8                ; 22 uses
  %i.r = alloca [104 x i8], align 8               ; 17 uses
  %i.s = alloca [32 x i8], align 8                ; 4 uses
  %i.t = alloca [32 x i8], align 8                ; 7 uses
  %i.u = load i64, ptr %1, align 8, !range !166, !noundef !10 ; 2 uses
  %.not = icmp eq i64 %i.u, 3
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  br i1 %.not, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 32, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.val.i = load i64, ptr %i.w, align 8, !noundef !10
  %.not53 = icmp eq i64 %.val.i, 0
  br i1 %.not53, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !932)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !935)
  %i.x = load ptr, ptr %i.t, align 8, !alias.scope !938, !nonnull !10, !align !175, !noundef !10
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !noalias !938, !nonnull !10, !noundef !10
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !938, !noundef !10
  call void %i.z(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef %i.ac, i64 noundef 0), !inline_history !494
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 32, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ae = call noundef nonnull align 8 ptr @_RNvMs3_NtNtCs6Po7BT7Nknu_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE13push_back_mutCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.s) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.f

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtNtCs4j34XAPZOn0_4http6header3map9HeaderMapINtNtCs574AjYkQ1m0_9http_body5frame5FrameNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, %bb.e
  ret void

bb.g:                                             ; preds = %bb.by, %.body
  resume { ptr, i32 } %.pn

bb.h:                                             ; preds = %bb.by
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

bb.i:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.5125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5125.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.0..sroa_idx, i64 56, i1 false)
  %.sroa.4124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4124.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 32, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 4 uses
  store i64 %i.u, ptr %i.ag, align 8
  store i64 0, ptr %i.r, align 8
  %.sroa.216.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 2 uses
  %.sroa.216.0.copyload = load i64, ptr %.sroa.216.0..sroa_idx, align 8 ; 2 uses
  %.sroa.319.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 40 ; 2 uses
  %.sroa.319.0.copyload = load ptr, ptr %.sroa.319.0..sroa_idx, align 8 ; 5 uses
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %.sroa.422.0.copyload = load i64, ptr %.sroa.422.0..sroa_idx, align 8 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %.sroa.627.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 80
  %.sroa.627.0.copyload = load ptr, ptr %.sroa.627.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 88
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8 ; 3 uses
  %i.ai = load i64, ptr %0, align 8, !range !166, !noundef !10
  %.not12 = icmp eq i64 %i.ai, 3
  br i1 %.not12, label %.thread, label %bb.k

bb.j:                                             ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !939
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.pre = load i64, ptr %i.r, align 8, !range !159
  %i.aj = trunc nuw i64 %.pre to i1
  br i1 %i.aj, label %bb.bz, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtNtCs4j34XAPZOn0_4http6header3map9HeaderMapINtNtCs574AjYkQ1m0_9http_body5frame5FrameNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.k:                                             ; preds = %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !943)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !939
  tail call void @llvm.experimental.noalias.scope.decl(metadata !944)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.319.0.copyload) ]
  %i.ak = icmp ult i64 %.sroa.422.0.copyload, 88686269585142076
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = getelementptr inbounds nuw [104 x i8], ptr %.sroa.319.0.copyload, i64 %.sroa.422.0.copyload
  %i.am = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false)
  store i64 0, ptr %i.q, align 8, !alias.scope !944, !noalias !947
  %i.an = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store ptr %.sroa.319.0.copyload, ptr %i.an, align 8, !alias.scope !944, !noalias !947
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 48 ; 5 uses
  store ptr %.sroa.319.0.copyload, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !944, !noalias !947
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  store i64 %.sroa.216.0.copyload, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !944, !noalias !947
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 64 ; 3 uses
  store ptr %i.al, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !944, !noalias !947
  %i.ao = icmp eq i64 %.sroa.7.0.copyload, 0
  br i1 %i.ao, label %_RNvXs3_NtNtCs4j34XAPZOn0_4http6header3mapNtB5_9HeaderMapNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12IntoIterator9into_iterCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.627.0.copyload) ]
  %i.ap = shl nuw nsw i64 %.sroa.7.0.copyload, 2
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.627.0.copyload, i64 noundef %i.ap, i64 noundef 2) #37, !noalias !949
  br label %_RNvXs3_NtNtCs4j34XAPZOn0_4http6header3mapNtB5_9HeaderMapNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12IntoIterator9into_iterCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i

_RNvXs3_NtNtCs4j34XAPZOn0_4http6header3mapNtB5_9HeaderMapNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12IntoIterator9into_iterCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i, %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !943, !noalias !950, !noundef !10 ; 3 uses
  %i.as = icmp ult i64 %i.ar, 88686269585142076
  tail call void @llvm.assume(i1 %i.as)
  %i.at = icmp eq i64 %i.ar, 0                    ; 2 uses
  %i.au = add nuw nsw i64 %.sroa.422.0.copyload, 1
  %i.av = lshr i64 %i.au, 1
  %.sroa.0.0.i = select i1 %i.at, i64 %.sroa.422.0.copyload, i64 %i.av
  tail call void @llvm.experimental.noalias.scope.decl(metadata !951)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.ax = add nuw nsw i64 %.sroa.0.0.i, %i.ar     ; 2 uses
  %i.ay = udiv i64 %i.ax, 3
  %i.az = add nuw nsw i64 %i.ay, %i.ax            ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.bc = load i64, ptr %i.bb, align 8, !alias.scope !954, !noalias !950, !noundef !10
  %i.bd = icmp ugt i64 %i.az, %i.bc
  br i1 %i.bd, label %bb.m, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultuNtNtNtCs4j34XAPZOn0_4http6header3map14MaxSizeReachedE6expectCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i

.body.i:                                          ; preds = %bb.bw, %bb.bu, %bb.bp, %bb.bl, %bb.at, %.body33.thread100.loopexit.split-lp.i, %.body33.thread100.loopexit.i, %bb.ak, %bb.ai, %.body.i.i, %bb.q, %bb.l
  %.pn.i = phi { ptr, i32 } [ %lpad.phi.i, %bb.bw ], [ %i.ib, %bb.bp ], [ %i.bw, %bb.q ], [ %i.ed, %bb.ai ], [ %i.be, %bb.l ], [ %eh.lpad-body.i.i, %.body.i.i ], [ %i.ed, %bb.ak ], [ %lpad.phi116.i, %bb.at ], [ %i.is, %bb.bu ], [ %i.hk, %bb.bl ], [ %lpad.loopexit109.i, %.body33.thread100.loopexit.i ], [ %lpad.loopexit.split-lp110.i, %.body33.thread100.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs4j34XAPZOn0_4http6header3map8IntoIterNtNtBL_5value11HeaderValueEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(72) %i.q) #38
          to label %.body unwind label %bb.al, !noalias !950

bb.l:                                             ; preds = %bb.ac, %_RNvMs0_NtNtCs4j34XAPZOn0_4http6header3mapNtB5_9HeaderMap11try_reserveCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread.i, %.invoke.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSNtNtNtCs4j34XAPZOn0_4http6header3map3PosEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i, %bb.s, %_RINvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_elemNtNtNtCs4j34XAPZOn0_4http6header3map3PosNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i, %bb.o
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.m:                                             ; preds = %_RNvXs3_NtNtCs4j34XAPZOn0_4http6header3mapNtB5_9HeaderMapNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12IntoIterator9into_iterCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.bf = icmp samesign ult i64 %i.az, 2
  %i.bg = add nsw i64 %i.az, -1
  %i.bh = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bg, i1 true)
  %i.bi = lshr i64 -1, %i.bh
  %.sroa.022.0.i.i = select i1 %i.bf, i64 0, i64 %i.bi ; 2 uses
  %i.bj = add nuw nsw i64 %.sroa.022.0.i.i, 1     ; 7 uses
  %or.cond.i.i = icmp samesign ugt i64 %.sroa.022.0.i.i, 32767
  br i1 %or.cond.i.i, label %_RNvMs0_NtNtCs4j34XAPZOn0_4http6header3mapNtB5_9HeaderMap11try_reserveCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread.i, label %bb.n, !prof !955

bb.n:                                             ; preds = %bb.m
  br i1 %i.at, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.bk = trunc nuw i64 %i.bj to i16
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bm = add i16 %i.bk, -1
  store i16 %i.bm, ptr %i.bl, align 8, !alias.scope !954, !noalias !950
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !956
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !957
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !957
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %i.bj, i1 noundef zeroext false, i64 noundef 2, i64 noundef 4)
          to label %.noexc.i unwind label %bb.l, !noalias !950

.noexc.i:                                         ; preds = %bb.o
  %i.bn = load i64, ptr %i.e, align 8, !range !159, !noalias !957, !noundef !10
  %i.bo = trunc nuw i64 %i.bn to i1
  %i.bp = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !range !158, !noalias !957, !noundef !10 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.bo, label %bb.p, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i, !prof !112

bb.p:                                             ; preds = %.noexc.i
  %i.bs = load i64, ptr %i.br, align 8, !noalias !957
  br label %.invoke.i

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i: ; preds = %.noexc.i
  %i.bt = load ptr, ptr %i.br, align 8, !noalias !957, !nonnull !10, !noundef !10
  %2 = icmp ule i64 %i.bj, %i.bq
  tail call void @llvm.assume(i1 %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !957
  store i64 %i.bq, ptr %i.f, align 8, !noalias !957
  %i.bu = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.bt, ptr %i.bu, align 8, !noalias !957
  %i.bv = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 0, ptr %i.bv, align 8, !noalias !957
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4j34XAPZOn0_4http6header3map3PosE11extend_withCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.bj, i16 noundef -1, i16 noundef 0)
          to label %_RINvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_elemNtNtNtCs4j34XAPZOn0_4http6header3map3PosNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i unwind label %bb.q, !noalias !960

bb.q:                                             ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i
  %i.bw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4j34XAPZOn0_4http6header3map3PosEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %i.f) #38
          to label %.body.i unwind label %bb.r, !noalias !960

bb.r:                                             ; preds = %bb.q
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34, !noalias !960
  unreachable

_RINvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_elemNtNtNtCs4j34XAPZOn0_4http6header3map3PosNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i: ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !956
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !957
  %i.by = invoke { ptr, i64 } @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtCs4j34XAPZOn0_4http6header3map3PosE16into_boxed_sliceCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.h)
          to label %.noexc23.i unwind label %bb.l, !noalias !950 ; 2 uses

.noexc23.i:                                       ; preds = %_RINvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_elemNtNtNtCs4j34XAPZOn0_4http6header3map3PosNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i
  %i.bz = extractvalue { ptr, i64 } %i.by, 0
  %i.ca = extractvalue { ptr, i64 } %i.by, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !956
  %.val31.i.i = load i64, ptr %i.bb, align 8, !alias.scope !954, !noalias !950, !noundef !10 ; 2 uses
  %i.cb = icmp eq i64 %.val31.i.i, 0
  br i1 %i.cb, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSNtNtNtCs4j34XAPZOn0_4http6header3map3PosEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i19.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i19.i: ; preds = %.noexc23.i
  %.val.i20.i = load ptr, ptr %i.ba, align 8, !alias.scope !954, !noalias !950, !nonnull !10, !noundef !10
  %i.cc = shl nuw nsw i64 %.val31.i.i, 2
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i20.i, i64 noundef %i.cc, i64 noundef 2) #37, !noalias !961
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSNtNtNtCs4j34XAPZOn0_4http6header3map3PosEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i

bb.s:                                             ; preds = %bb.n
  %i.cd = invoke fastcc noundef zeroext i1 @_RNvMs0_NtNtCs4j34XAPZOn0_4http6header3mapNtB5_9HeaderMap8try_growCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(96) %0, i64 noundef %i.bj) #39
          to label %_RNvMs0_NtNtCs4j34XAPZOn0_4http6header3mapNtB5_9HeaderMap11try_reserveCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i unwind label %bb.l, !noalias !950

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSNtNtNtCs4j34XAPZOn0_4http6header3map3PosEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i19.i, %.noexc23.i
  store ptr %i.bz, ptr %i.ba, align 8, !alias.scope !954, !noalias !950
  store i64 %i.ca, ptr %i.bb, align 8, !alias.scope !954, !noalias !950
  %i.ce = lshr i64 %i.bj, 2
  %i.cf = sub nsw i64 %i.bj, %i.ce                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !956
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef %i.cf, i1 noundef zeroext false, i64 noundef 8, i64 noundef 104)
          to label %.noexc25.i unwind label %bb.l, !noalias !950

.noexc25.i:                                       ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSNtNtNtCs4j34XAPZOn0_4http6header3map3PosEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i
  %i.cg = load i64, ptr %i.g, align 8, !range !159, !noalias !956, !noundef !10
  %i.ch = trunc nuw i64 %i.cg to i1
  %i.ci = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cj = load i64, ptr %i.ci, align 8, !range !158, !noalias !956, !noundef !10 ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  br i1 %i.ch, label %bb.t, label %bb.u, !prof !112

bb.t:                                             ; preds = %.noexc25.i
  %i.cl = load i64, ptr %i.ck, align 8, !noalias !956
  br label %.invoke.i

.invoke.i:                                        ; preds = %bb.t, %bb.p
  %i.cm = phi i64 [ %i.cj, %bb.t ], [ %i.bq, %bb.p ]
  %i.cn = phi i64 [ %i.cl, %bb.t ], [ %i.bs, %bb.p ]
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.cm, i64 %i.cn) #33
          to label %.cont.i unwind label %bb.l, !noalias !950

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.u:                                             ; preds = %.noexc25.i
  %i.co = load ptr, ptr %i.ck, align 8, !noalias !956, !nonnull !10, !noundef !10 ; 2 uses
  %i.cp = icmp ule i64 %i.cf, %i.cj
  call void @llvm.assume(i1 %i.cp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !956
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtBK_5value11HeaderValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aw)
          to label %bb.w unwind label %bb.v, !noalias !950

bb.v:                                             ; preds = %bb.u
  %i.cq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtBR_5value11HeaderValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aw)
          to label %.body.i.i unwind label %bb.x, !noalias !950

bb.w:                                             ; preds = %bb.u
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtBR_5value11HeaderValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aw)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB1i_5value11HeaderValueEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i unwind label %bb.y, !noalias !950

bb.x:                                             ; preds = %bb.v
  %i.cr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34, !noalias !950
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.y, %bb.v
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.cs, %bb.y ], [ %i.cq, %bb.v ]
  store i64 %i.cj, ptr %i.aw, align 8, !alias.scope !954, !noalias !950
  %.sroa.5.0..sroa_idx.i21.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.co, ptr %.sroa.5.0..sroa_idx.i21.i, align 8, !alias.scope !954, !noalias !950
  store i64 0, ptr %i.aq, align 8, !alias.scope !954, !noalias !950
  br label %.body.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB1i_5value11HeaderValueEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i: ; preds = %bb.w
  store i64 %i.cj, ptr %i.aw, align 8, !alias.scope !954, !noalias !950
  %.sroa.5.0..sroa_idx18.i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.co, ptr %.sroa.5.0..sroa_idx18.i.i, align 8, !alias.scope !954, !noalias !950
  store i64 0, ptr %i.aq, align 8, !alias.scope !954, !noalias !950
  br label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultuNtNtNtCs4j34XAPZOn0_4http6header3map14MaxSizeReachedE6expectCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i

_RNvMs0_NtNtCs4j34XAPZOn0_4http6header3mapNtB5_9HeaderMap11try_reserveCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.s
  br i1 %i.cd, label %_RNvMs0_NtNtCs4j34XAPZOn0_4http6header3mapNtB5_9HeaderMap11try_reserveCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread.i, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultuNtNtNtCs4j34XAPZOn0_4http6header3map14MaxSizeReachedE6expectCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, !prof !962

_RNvMs0_NtNtCs4j34XAPZOn0_4http6header3mapNtB5_9HeaderMap11try_reserveCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread.i: ; preds = %_RNvMs0_NtNtCs4j34XAPZOn0_4http6header3mapNtB5_9HeaderMap11try_reserveCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, %bb.m
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 23, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @39, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #33
          to label %.noexc27.i unwind label %bb.l, !noalias !950

.noexc27.i:                                       ; preds = %_RNvMs0_NtNtCs4j34XAPZOn0_4http6header3mapNtB5_9HeaderMap11try_reserveCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread.i
  unreachable

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultuNtNtNtCs4j34XAPZOn0_4http6header3map14MaxSizeReachedE6expectCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %_RNvMs0_NtNtCs4j34XAPZOn0_4http6header3mapNtB5_9HeaderMap11try_reserveCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB1i_5value11HeaderValueEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i, %_RNvXs3_NtNtCs4j34XAPZOn0_4http6header3mapNtB5_9HeaderMapNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12IntoIterator9into_iterCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !939
  call void @llvm.experimental.noalias.scope.decl(metadata !963)
  call void @llvm.experimental.noalias.scope.decl(metadata !966)
  %i.ct = load i64, ptr %i.q, align 8, !range !159, !alias.scope !966, !noalias !968, !noundef !10
  %i.cu = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 6 uses
  %i.cv = trunc nuw i64 %i.ct to i1
  br i1 %i.cv, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultuNtNtNtCs4j34XAPZOn0_4http6header3map14MaxSizeReachedE6expectCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.cw = load i64, ptr %i.cu, align 8, !alias.scope !966, !noalias !968, !noundef !10 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.cy = load i64, ptr %i.cx, align 8, !alias.scope !966, !noalias !968, !noundef !10 ; 2 uses
  %i.cz = icmp ult i64 %i.cw, %i.cy
  br i1 %i.cz, label %bb.ab, label %bb.ac

bb.aa:                                            ; preds = %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultuNtNtNtCs4j34XAPZOn0_4http6header3map14MaxSizeReachedE6expectCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !969)
  %i.da = load ptr, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !972, !noalias !973, !nonnull !10, !noundef !10
  %i.db = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !972, !noalias !973, !nonnull !10, !noundef !10 ; 6 uses
  %i.dc = icmp eq ptr %i.db, %i.da
  br i1 %i.dc, label %bb.ae, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB11_5value11HeaderValueEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i

_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB11_5value11HeaderValueEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i: ; preds = %bb.aa
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 104
  store ptr %i.dd, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !972, !noalias !973
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.db, align 8, !noalias !975 ; 3 uses
  %.not.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i, 2
  br i1 %.not.i.i, label %bb.ae, label %bb.ag

bb.ab:                                            ; preds = %bb.z
  %i.de = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.df = load ptr, ptr %i.de, align 8, !alias.scope !966, !noalias !968, !nonnull !10, !noundef !10
  %i.dg = getelementptr inbounds nuw [72 x i8], ptr %i.df, i64 %i.cw ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = load i64, ptr %i.dh, align 8, !range !159, !noalias !976, !noundef !10
  %i.dj = trunc nuw i64 %i.di to i1
  br i1 %i.dj, label %bb.ad, label %bb.ah

bb.ac:                                            ; preds = %bb.z
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.cw, i64 noundef %i.cy, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @226) #35
          to label %.noexc29.i unwind label %bb.l, !noalias !950

.noexc29.i:                                       ; preds = %bb.ac
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.dl = load i64, ptr %i.dk, align 8, !noalias !976, !noundef !10
  br label %bb.ah

bb.ae:                                            ; preds = %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB11_5value11HeaderValueEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !939
  br label %bb.af

bb.af:                                            ; preds = %bb.bf, %bb.ae
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs4j34XAPZOn0_4http6header3map8IntoIterNtNtBL_5value11HeaderValueEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(72) %i.q)
          to label %bb.j unwind label %bb.bx

bb.ag:                                            ; preds = %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB11_5value11HeaderValueEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.db, i64 64
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %.sroa.7.0.copyload.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !975
  %i.dm = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  %i.dn = trunc nuw i64 %.sroa.0.0.copyload.i.i to i1
  %.sroa.05.0.i.i = and i64 %.sroa.0.0.copyload.i.i, 1
  %.sroa.56.0.i.i = select i1 %i.dn, i64 %.sroa.7.0.copyload.i.i, i64 undef
  store i64 %.sroa.05.0.i.i, ptr %i.q, align 8, !alias.scope !966, !noalias !968
  store i64 %.sroa.56.0.i.i, ptr %i.cu, align 8, !alias.scope !966, !noalias !968
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.0..sroa_idx.i.i, i64 32, i1 false), !noalias !950
end_hunk_0
begin_hunk_1_@_RNvMNtCs3eCsZ2Mx498_14http_body_util9collectedINtB2_9CollectedNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE10push_frameCsgO8S5jLFugx_23deltalake_catalog_unity:bb.a
  %i.ex = load i64, ptr %i.ew, align 8, !alias.scope !1003, !noalias !1008, !noundef !10 ; 3 uses
  %i.ey = icmp ult i64 %.sroa.671.0.copyload73.i, %i.ex
  br i1 %i.ey, label %bb.as, label %.invoke.i.i

bb.as:                                            ; preds = %bb.ar
  %i.ez = load ptr, ptr %i.ev, align 8, !alias.scope !1003, !noalias !1008, !nonnull !10, !noundef !10
  %i.fa = getelementptr inbounds nuw [104 x i8], ptr %i.ez, i64 %.sroa.671.0.copyload73.i ; 2 uses
  %i.fb = load i64, ptr %i.fa, align 8, !range !159, !noalias !1010, !noundef !10
  %i.fc = trunc nuw i64 %i.fb to i1
  br i1 %i.fc, label %bb.au, label %bb.av

.loopexit112.i:                                   ; preds = %bb.au
  %lpad.loopexit114.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

.loopexit.split-lp113.i:                          ; preds = %.invoke.i.i
  %lpad.loopexit.split-lp115.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.at:                                            ; preds = %.loopexit.split-lp113.i, %.loopexit112.i
  %lpad.phi116.i = phi { ptr, i32 } [ %lpad.loopexit114.i, %.loopexit112.i ], [ %lpad.loopexit.split-lp115.i, %.loopexit.split-lp113.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1011)
  call void @llvm.experimental.noalias.scope.decl(metadata !1014)
  call void @llvm.experimental.noalias.scope.decl(metadata !1017)
  %i.fd = load ptr, ptr %i.l, align 8, !alias.scope !1020, !noalias !1021, !nonnull !10, !align !175, !noundef !10
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 32
  %i.ff = load ptr, ptr %i.fe, align 8, !noalias !1022, !nonnull !10, !noundef !10
  %i.fg = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.fh = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.fi = load ptr, ptr %i.fh, align 8, !alias.scope !1020, !noalias !1021, !noundef !10
  %i.fj = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.fk = load i64, ptr %i.fj, align 8, !alias.scope !1020, !noalias !1021, !noundef !10
  invoke void %i.ff(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.fg, ptr noundef %i.fi, i64 noundef %i.fk)
          to label %.body.i unwind label %bb.aw, !noalias !1023, !inline_history !371

bb.au:                                            ; preds = %bb.as
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fm = load i64, ptr %i.fl, align 8, !noalias !1010, !noundef !10
  invoke void @_RNvMs0_NtNtCs4j34XAPZOn0_4http6header3mapNtB5_9HeaderMap23remove_all_extra_valuesCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(96) %.sroa.066.0.copyload67.i, i64 noundef %i.fm)
          to label %._crit_edge.i.i unwind label %.loopexit112.i, !noalias !1008

._crit_edge.i.i:                                  ; preds = %bb.au
  %.pre.i.i = load i64, ptr %i.ew, align 8, !alias.scope !1003, !noalias !1008
  br label %bb.av

bb.av:                                            ; preds = %._crit_edge.i.i, %bb.as
  %i.fn = phi i64 [ %.pre.i.i, %._crit_edge.i.i ], [ %i.ex, %bb.as ] ; 2 uses
  %i.fo = icmp ult i64 %.sroa.671.0.copyload73.i, %i.fn
  br i1 %i.fo, label %bb.ax, label %.invoke.i.i

.invoke.i.i:                                      ; preds = %bb.av, %bb.ar
  %i.fp = phi i64 [ %i.fn, %bb.av ], [ %i.ex, %bb.ar ]
  %i.fq = phi ptr [ @41, %bb.av ], [ @40, %bb.ar ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %.sroa.671.0.copyload73.i, i64 noundef %i.fp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fq) #33
          to label %.cont.i.i unwind label %.loopexit.split-lp113.i, !noalias !1010

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.aw:                                            ; preds = %bb.at
  %i.fr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34, !noalias !1023
  unreachable

bb.ax:                                            ; preds = %bb.av
  %i.fs = load ptr, ptr %i.ev, align 8, !alias.scope !1003, !noalias !1008, !nonnull !10, !noundef !10
  %i.ft = getelementptr inbounds nuw [104 x i8], ptr %i.fs, i64 %.sroa.671.0.copyload73.i
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.m, ptr noundef nonnull align 8 dereferenceable(40) %i.fu, i64 40, i1 false), !noalias !1024
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.fu, ptr noundef nonnull align 8 dereferenceable(40) %i.p, i64 40, i1 false), !noalias !950
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !939
  call void @llvm.experimental.noalias.scope.decl(metadata !1025)
  call void @llvm.experimental.noalias.scope.decl(metadata !1028)
  call void @llvm.experimental.noalias.scope.decl(metadata !1031)
  %i.fv = load ptr, ptr %i.m, align 8, !alias.scope !1034, !noalias !939, !nonnull !10, !align !175, !noundef !10
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 32
  %i.fx = load ptr, ptr %i.fw, align 8, !noalias !1035, !nonnull !10, !noundef !10
  %i.fy = load ptr, ptr %i.dq, align 8, !alias.scope !1034, !noalias !939, !noundef !10
  %i.fz = load i64, ptr %i.dr, align 8, !alias.scope !1034, !noalias !939, !noundef !10
  invoke void %i.fx(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.dp, ptr noundef %i.fy, i64 noundef %i.fz)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header5value11HeaderValueECsgO8S5jLFugx_23deltalake_catalog_unity.exit36.i unwind label %.body33.thread100.loopexit.i, !noalias !950, !inline_history !371

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header5value11HeaderValueECsgO8S5jLFugx_23deltalake_catalog_unity.exit36.i: ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !939
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ba, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header5value11HeaderValueECsgO8S5jLFugx_23deltalake_catalog_unity.exit36.i
  %.sroa.7.0.i = phi i64 [ %.sroa.671.0.copyload73.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header5value11HeaderValueECsgO8S5jLFugx_23deltalake_catalog_unity.exit36.i ], [ %i.gh, %bb.ba ] ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.774.sroa.0.i)
  %i.ga = load i64, ptr %i.q, align 8, !range !159, !alias.scope !1036, !noalias !1039, !noundef !10
  %i.gb = trunc nuw i64 %i.ga to i1
  br i1 %i.gb, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.ay
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.066.0.copyload67.i, i64 40
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.066.0.copyload67.i, i64 32
  %i.ge = getelementptr inbounds nuw i8, ptr %.sroa.066.0.copyload67.i, i64 48 ; 4 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.066.0.copyload67.i, i64 64 ; 4 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.066.0.copyload67.i, i64 56 ; 3 uses
  br label %bb.bb

bb.az:                                            ; preds = %.noexc32.i
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 23, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @39, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #33
          to label %.noexc37.i unwind label %.body33.thread100.loopexit.split-lp.i, !noalias !950

.noexc37.i:                                       ; preds = %bb.az
  unreachable

bb.ba:                                            ; preds = %.noexc32.i
  %i.gh = extractvalue { i64, i64 } %i.es, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !939
  br label %bb.ay

bb.bb:                                            ; preds = %_RNvMsO_NtNtCs4j34XAPZOn0_4http6header3mapINtB5_13OccupiedEntryNtNtB7_5value11HeaderValueE6appendCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, %.lr.ph.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1041)
  %i.gi = load i64, ptr %i.cu, align 8, !alias.scope !1041, !noalias !1039, !noundef !10 ; 3 uses
  %i.gj = load i64, ptr %i.ds, align 8, !alias.scope !1041, !noalias !1039, !noundef !10 ; 2 uses
  %i.gk = icmp ult i64 %i.gi, %i.gj
  br i1 %i.gk, label %bb.bc, label %bb.bd

._crit_edge.i:                                    ; preds = %_RNvMsO_NtNtCs4j34XAPZOn0_4http6header3mapINtB5_13OccupiedEntryNtNtB7_5value11HeaderValueE6appendCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, %bb.ay
  call void @llvm.experimental.noalias.scope.decl(metadata !1043)
  %i.gl = load ptr, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !1046, !noalias !1047, !nonnull !10, !noundef !10
  %i.gm = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !1046, !noalias !1047, !nonnull !10, !noundef !10 ; 6 uses
  %i.gn = icmp eq ptr %i.gm, %i.gl
  br i1 %i.gn, label %bb.bf, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB11_5value11HeaderValueEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i38.i

_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB11_5value11HeaderValueEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i38.i: ; preds = %._crit_edge.i
  %i.go = getelementptr inbounds nuw i8, ptr %i.gm, i64 104
  store ptr %i.go, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !1046, !noalias !1047
  %.sroa.0.0.copyload.i39.i = load i64, ptr %i.gm, align 8, !noalias !1049 ; 3 uses
  %.not.i40.i = icmp eq i64 %.sroa.0.0.copyload.i39.i, 2
  br i1 %.not.i40.i, label %bb.bf, label %bb.bg

bb.bc:                                            ; preds = %bb.bb
  %i.gp = load ptr, ptr %i.dt, align 8, !alias.scope !1041, !noalias !1039, !nonnull !10, !noundef !10
  %i.gq = getelementptr inbounds nuw [72 x i8], ptr %i.gp, i64 %i.gi ; 3 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 16
  %i.gs = load i64, ptr %i.gr, align 8, !range !159, !noalias !1050, !noundef !10
  %i.gt = trunc nuw i64 %i.gs to i1
  br i1 %i.gt, label %bb.be, label %bb.bh

bb.bd:                                            ; preds = %bb.bb
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.gi, i64 noundef %i.gj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @226) #35
          to label %.noexc52.i unwind label %.body33.thread100.loopexit.split-lp.i, !noalias !950

.noexc52.i:                                       ; preds = %bb.bd
  unreachable

bb.be:                                            ; preds = %bb.bc
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gq, i64 24
  %i.gv = load i64, ptr %i.gu, align 8, !noalias !1050, !noundef !10
  br label %bb.bh

bb.bf:                                            ; preds = %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB11_5value11HeaderValueEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i38.i, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !939
  br label %bb.af

bb.bg:                                            ; preds = %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB11_5value11HeaderValueEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i38.i
  %.sroa.9.0..sroa_idx.i41.i = getelementptr inbounds nuw i8, ptr %i.gm, i64 64
  %.sroa.7.0..sroa_idx.i42.i = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  %.sroa.7.0.copyload.i43.i = load i64, ptr %.sroa.7.0..sroa_idx.i42.i, align 8, !noalias !1049
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.0..sroa_idx.i41.i, i64 32, i1 false), !noalias !950
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gm, i64 24
  %i.gx = trunc nuw i64 %.sroa.0.0.copyload.i39.i to i1
  %.sroa.05.0.i46.i = and i64 %.sroa.0.0.copyload.i39.i, 1
  %.sroa.56.0.i47.i = select i1 %i.gx, i64 %.sroa.7.0.copyload.i43.i, i64 undef
  store i64 %.sroa.05.0.i46.i, ptr %i.q, align 8, !alias.scope !1041, !noalias !1039
  store i64 %.sroa.56.0.i47.i, ptr %i.cu, align 8, !alias.scope !1041, !noalias !1039
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.p, ptr noundef nonnull align 8 dereferenceable(40) %i.gw, i64 40, i1 false), !noalias !950
  br label %bb.am

bb.bh:                                            ; preds = %bb.be, %bb.bc
  %.sroa.5.0.i49.i = phi i64 [ %i.gv, %bb.be ], [ undef, %bb.bc ]
  %.sroa.0.0.i50.i = phi i64 [ 1, %bb.be ], [ 0, %bb.bc ]
  store i64 %.sroa.0.0.i50.i, ptr %i.q, align 8, !alias.scope !1041, !noalias !1039
  store i64 %.sroa.5.0.i49.i, ptr %i.cu, align 8, !alias.scope !1041, !noalias !1039
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gq, i64 32 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.gy, i64 40, i1 false), !noalias !950
  call void @llvm.experimental.noalias.scope.decl(metadata !1051)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.066.0.copyload67.i) ]
  %i.gz = load i64, ptr %i.gc, align 8, !noalias !1054, !noundef !10 ; 2 uses
  %.not.i54.i = icmp ult i64 %.sroa.7.0.i, %i.gz
  br i1 %.not.i54.i, label %bb.bi, label %bb.bs

bb.bi:                                            ; preds = %bb.bh
  %i.ha = load ptr, ptr %i.gd, align 8, !noalias !1054, !nonnull !10, !noundef !10
  %i.hb = getelementptr inbounds nuw [104 x i8], ptr %i.ha, i64 %.sroa.7.0.i ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1055)
  call void @llvm.experimental.noalias.scope.decl(metadata !1058)
  %i.hc = load i64, ptr %i.hb, align 8, !range !159, !alias.scope !1055, !noalias !1060, !noundef !10
  %i.hd = trunc nuw i64 %i.hc to i1
  br i1 %i.hd, label %bb.bj, label %bb.bn

bb.bj:                                            ; preds = %bb.bi
  %i.he = getelementptr inbounds nuw i8, ptr %i.hb, i64 16 ; 2 uses
  %i.hf = load i64, ptr %i.he, align 8, !alias.scope !1055, !noalias !1060, !noundef !10 ; 4 uses
  %i.hg = load i64, ptr %i.gf, align 8, !alias.scope !1058, !noalias !1062, !noundef !10 ; 6 uses
  %i.hh = icmp ult i64 %i.hg, 128102389400760776
  call void @llvm.assume(i1 %i.hh)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1063
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.dy, ptr noundef nonnull align 8 dereferenceable(40) %i.gy, i64 40, i1 false), !noalias !950
  store i64 1, ptr %i.c, align 8, !noalias !1063
  store i64 %i.hf, ptr %i.dz, align 8, !noalias !1063
  store i64 0, ptr %i.ea, align 8, !noalias !1063
  store i64 %.sroa.7.0.i, ptr %i.eb, align 8, !noalias !1063
  call void @llvm.experimental.noalias.scope.decl(metadata !1064)
  call void @llvm.experimental.noalias.scope.decl(metadata !1067)
  %i.hi = load i64, ptr %i.ge, align 8, !range !127, !alias.scope !1069, !noalias !1070, !noundef !10
  %i.hj = icmp eq i64 %i.hg, %i.hi
  br i1 %i.hj, label %bb.bk, label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i

bb.bk:                                            ; preds = %bb.bj
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBR_5value11HeaderValueEE8grow_oneCs2DiVQAxFeQE_16aws_smithy_types(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ge)
          to label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i unwind label %bb.bl, !noalias !1070

bb.bl:                                            ; preds = %bb.bk
  %i.hk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !1071)
  call void @llvm.experimental.noalias.scope.decl(metadata !1074)
  call void @llvm.experimental.noalias.scope.decl(metadata !1077)
  call void @llvm.experimental.noalias.scope.decl(metadata !1080)
  %i.hl = load ptr, ptr %i.dy, align 8, !alias.scope !1083, !noalias !1084, !nonnull !10, !align !175, !noundef !10
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 32
  %i.hn = load ptr, ptr %i.hm, align 8, !noalias !1085, !nonnull !10, !noundef !10
  %i.ho = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.hp = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.hq = load ptr, ptr %i.hp, align 8, !alias.scope !1083, !noalias !1084, !noundef !10
  %i.hr = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.hs = load i64, ptr %i.hr, align 8, !alias.scope !1083, !noalias !1084, !noundef !10
  invoke void %i.hn(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ho, ptr noundef %i.hq, i64 noundef %i.hs)
          to label %.body.i unwind label %bb.bm, !noalias !1062, !inline_history !1086

bb.bm:                                            ; preds = %bb.bl
  %i.ht = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34, !noalias !1062
  unreachable

_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i: ; preds = %bb.bk, %bb.bj
  %i.hu = load ptr, ptr %i.gg, align 8, !alias.scope !1069, !noalias !1070, !nonnull !10, !noundef !10
  %i.hv = getelementptr inbounds nuw [72 x i8], ptr %i.hu, i64 %i.hg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.hv, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 72, i1 false), !noalias !1062
  %i.hw = add nuw nsw i64 %i.hg, 1                ; 3 uses
  store i64 %i.hw, ptr %i.gf, align 8, !alias.scope !1069, !noalias !1070
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1063
  %3 = icmp ult i64 %i.hf, %i.hw
  br i1 %3, label %bb.br, label %.noexc.i.i

bb.bn:                                            ; preds = %bb.bi
  %i.hx = load i64, ptr %i.gf, align 8, !alias.scope !1058, !noalias !1062, !noundef !10 ; 6 uses
  %i.hy = icmp ult i64 %i.hx, 128102389400760776
  call void @llvm.assume(i1 %i.hy)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1063
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.du, ptr noundef nonnull align 8 dereferenceable(40) %i.gy, i64 40, i1 false), !noalias !950
  store i64 0, ptr %i.b, align 8, !noalias !1063
  store i64 %.sroa.7.0.i, ptr %i.dv, align 8, !noalias !1063
  store i64 0, ptr %i.dw, align 8, !noalias !1063
  store i64 %.sroa.7.0.i, ptr %i.dx, align 8, !noalias !1063
  call void @llvm.experimental.noalias.scope.decl(metadata !1087)
  call void @llvm.experimental.noalias.scope.decl(metadata !1090)
  %i.hz = load i64, ptr %i.ge, align 8, !range !127, !alias.scope !1092, !noalias !1093, !noundef !10
  %i.ia = icmp eq i64 %i.hx, %i.hz
  br i1 %i.ia, label %bb.bo, label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCsgO8S5jLFugx_23deltalake_catalog_unity.exit9.i.i.i

bb.bo:                                            ; preds = %bb.bn
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBR_5value11HeaderValueEE8grow_oneCs2DiVQAxFeQE_16aws_smithy_types(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ge)
          to label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCsgO8S5jLFugx_23deltalake_catalog_unity.exit9.i.i.i unwind label %bb.bp, !noalias !1093

bb.bp:                                            ; preds = %bb.bo
  %i.ib = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !1094)
  call void @llvm.experimental.noalias.scope.decl(metadata !1097)
  call void @llvm.experimental.noalias.scope.decl(metadata !1100)
  call void @llvm.experimental.noalias.scope.decl(metadata !1103)
  %i.ic = load ptr, ptr %i.du, align 8, !alias.scope !1106, !noalias !1107, !nonnull !10, !align !175, !noundef !10
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 32
  %i.ie = load ptr, ptr %i.id, align 8, !noalias !1108, !nonnull !10, !noundef !10
  %i.if = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.ig = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ih = load ptr, ptr %i.ig, align 8, !alias.scope !1106, !noalias !1107, !noundef !10
  %i.ii = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.ij = load i64, ptr %i.ii, align 8, !alias.scope !1106, !noalias !1107, !noundef !10
  invoke void %i.ie(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.if, ptr noundef %i.ih, i64 noundef %i.ij)
          to label %.body.i unwind label %bb.bq, !noalias !1062, !inline_history !1086

bb.bq:                                            ; preds = %bb.bp
  %i.ik = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34, !noalias !1062
  unreachable

_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCsgO8S5jLFugx_23deltalake_catalog_unity.exit9.i.i.i: ; preds = %bb.bo, %bb.bn
  %i.il = load ptr, ptr %i.gg, align 8, !alias.scope !1092, !noalias !1093, !nonnull !10, !noundef !10
  %i.im = getelementptr inbounds nuw [72 x i8], ptr %i.il, i64 %i.hx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.im, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false), !noalias !1062
  %i.in = add nuw nsw i64 %i.hx, 1
  store i64 %i.in, ptr %i.gf, align 8, !alias.scope !1092, !noalias !1093
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1063
  store i64 1, ptr %i.hb, align 8, !alias.scope !1055, !noalias !1060
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  store i64 %i.hx, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !alias.scope !1055, !noalias !1060
  %.sroa.53.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  store i64 %i.hx, ptr %.sroa.53.0..sroa_idx.i.i.i, align 8, !alias.scope !1055, !noalias !1060
  br label %_RNvMsO_NtNtCs4j34XAPZOn0_4http6header3mapINtB5_13OccupiedEntryNtNtB7_5value11HeaderValueE6appendCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i

bb.br:                                            ; preds = %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i
  %i.io = load ptr, ptr %i.gg, align 8, !alias.scope !1058, !noalias !1062, !nonnull !10, !noundef !10
  %i.ip = getelementptr inbounds nuw [72 x i8], ptr %i.io, i64 %i.hf ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 16
  store i64 1, ptr %i.iq, align 8, !noalias !1062
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ip, i64 24
  store i64 %i.hg, ptr %i.ir, align 8, !noalias !1062
  store i64 1, ptr %i.hb, align 8, !alias.scope !1055, !noalias !1060
  store i64 %i.hg, ptr %i.he, align 8, !alias.scope !1055, !noalias !1060
  br label %_RNvMsO_NtNtCs4j34XAPZOn0_4http6header3mapINtB5_13OccupiedEntryNtNtB7_5value11HeaderValueE6appendCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i

.noexc.i.i:                                       ; preds = %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.hf, i64 noundef %i.hw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #33
          to label %.noexc56.i unwind label %.body33.thread100.loopexit.split-lp.i, !noalias !950

.noexc56.i:                                       ; preds = %.noexc.i.i
  unreachable

bb.bs:                                            ; preds = %bb.bh
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %.sroa.7.0.i, i64 noundef %i.gz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #33
          to label %bb.bt unwind label %bb.bu, !noalias !1054

bb.bt:                                            ; preds = %bb.bs
  unreachable

bb.bu:                                            ; preds = %bb.bs
  %i.is = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !1109)
  call void @llvm.experimental.noalias.scope.decl(metadata !1112)
  call void @llvm.experimental.noalias.scope.decl(metadata !1115)
  %i.it = load ptr, ptr %i.i, align 8, !alias.scope !1118, !noalias !939, !nonnull !10, !align !175, !noundef !10
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 32
  %i.iv = load ptr, ptr %i.iu, align 8, !noalias !1119, !nonnull !10, !noundef !10
  %i.iw = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.ix = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.iy = load ptr, ptr %i.ix, align 8, !alias.scope !1118, !noalias !939, !noundef !10
  %i.iz = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.ja = load i64, ptr %i.iz, align 8, !alias.scope !1118, !noalias !939, !noundef !10
  invoke void %i.iv(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.iw, ptr noundef %i.iy, i64 noundef %i.ja)
          to label %.body.i unwind label %bb.bv, !noalias !950, !inline_history !371

bb.bv:                                            ; preds = %bb.bu
  %i.jb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34, !noalias !950
  unreachable

_RNvMsO_NtNtCs4j34XAPZOn0_4http6header3mapINtB5_13OccupiedEntryNtNtB7_5value11HeaderValueE6appendCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.br, %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCsgO8S5jLFugx_23deltalake_catalog_unity.exit9.i.i.i
  %i.jc = load i64, ptr %i.q, align 8, !range !159, !alias.scope !1120, !noalias !1039, !noundef !10
  %i.jd = trunc nuw i64 %i.jc to i1
  br i1 %i.jd, label %bb.bb, label %._crit_edge.i

.loopexit.i:                                      ; preds = %bb.am
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

.loopexit.split-lp.i:                             ; preds = %bb.ao
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.bw:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1122)
  call void @llvm.experimental.noalias.scope.decl(metadata !1125)
  call void @llvm.experimental.noalias.scope.decl(metadata !1128)
  %i.je = load ptr, ptr %i.p, align 8, !alias.scope !1131, !noalias !939, !nonnull !10, !align !175, !noundef !10
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 32
  %i.jg = load ptr, ptr %i.jf, align 8, !noalias !1132, !nonnull !10, !noundef !10
  %i.jh = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.ji = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.jj = load ptr, ptr %i.ji, align 8, !alias.scope !1131, !noalias !939, !noundef !10
  %i.jk = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.jl = load i64, ptr %i.jk, align 8, !alias.scope !1131, !noalias !939, !noundef !10
  invoke void %i.jg(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.jh, ptr noundef %i.jj, i64 noundef %i.jl)
          to label %.body.i unwind label %bb.al, !noalias !950, !inline_history !371

.body:                                            ; preds = %bb.bx, %.body.i
  %.pn = phi { ptr, i32 } [ %.pn.i, %.body.i ], [ %i.jo, %bb.bx ]
  %i.jm = load i64, ptr %i.r, align 8, !range !159, !noundef !10
  %i.jn = icmp eq i64 %i.jm, 0
  br i1 %i.jn, label %bb.g, label %bb.by

bb.bx:                                            ; preds = %bb.af
  %i.jo = landingpad { ptr, i32 }
          cleanup
  br label %.body

.thread:                                          ; preds = %bb.i
  %.sroa.832.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 96
  %.sroa.832.0.copyload = load i64, ptr %.sroa.832.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i64 24, i1 false)
  %.sroa.536.0..sroa_idx37 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.216.0.copyload, ptr %.sroa.536.0..sroa_idx37, align 8
  %.sroa.639.0..sroa_idx40 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.319.0.copyload, ptr %.sroa.639.0..sroa_idx40, align 8
  %.sroa.742.0..sroa_idx43 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.422.0.copyload, ptr %.sroa.742.0..sroa_idx43, align 8
  %.sroa.845.0..sroa_idx46 = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.845.0..sroa_idx46, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false)
  %.sroa.9.0..sroa_idx47 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %.sroa.627.0.copyload, ptr %.sroa.9.0..sroa_idx47, align 8
  %.sroa.10.0..sroa_idx49 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %.sroa.7.0.copyload, ptr %.sroa.10.0..sroa_idx49, align 8
  %.sroa.11.0..sroa_idx51 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %.sroa.832.0.copyload, ptr %.sroa.11.0..sroa_idx51, align 8
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtNtCs4j34XAPZOn0_4http6header3map9HeaderMapINtNtCs574AjYkQ1m0_9http_body5frame5FrameNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.by:                                            ; preds = %.body
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtNtCs4j34XAPZOn0_4http6header3map9HeaderMapINtNtCs574AjYkQ1m0_9http_body5frame5FrameNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(104) %i.r) #38
          to label %bb.g unwind label %bb.h

bb.bz:                                            ; preds = %bb.j
  call void @llvm.experimental.noalias.scope.decl(metadata !1133)
  call void @llvm.experimental.noalias.scope.decl(metadata !1136)
  call void @llvm.experimental.noalias.scope.decl(metadata !1139)
  %i.jp = load i64, ptr %i.ag, align 8, !range !166, !alias.scope !1142, !noundef !10
  %i.jq = icmp eq i64 %i.jp, 3
  br i1 %i.jq, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.jr = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !1143)
  call void @llvm.experimental.noalias.scope.decl(metadata !1146)
  %i.js = load ptr, ptr %i.jr, align 8, !alias.scope !1149, !nonnull !10, !align !175, !noundef !10
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 32
  %i.ju = load ptr, ptr %i.jt, align 8, !noalias !1149, !nonnull !10, !noundef !10
  %i.jv = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.jw = load ptr, ptr %i.jv, align 8, !alias.scope !1149, !noundef !10
  %i.jx = load i64, ptr %.sroa.216.0..sroa_idx, align 8, !alias.scope !1149, !noundef !10
  call void %i.ju(ptr noalias noundef nonnull align 8 dereferenceable(8) %.sroa.319.0..sroa_idx, ptr noundef %i.jw, i64 noundef %i.jx), !inline_history !1150
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtNtCs4j34XAPZOn0_4http6header3map9HeaderMapINtNtCs574AjYkQ1m0_9http_body5frame5FrameNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.cb:                                            ; preds = %bb.bz
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header3map9HeaderMapECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.ag)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtNtCs4j34XAPZOn0_4http6header3map9HeaderMapINtNtCs574AjYkQ1m0_9http_body5frame5FrameNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtNtCs4j34XAPZOn0_4http6header3map9HeaderMapINtNtCs574AjYkQ1m0_9http_body5frame5FrameNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %.thread, %bb.cb, %bb.ca, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
end_hunk_1
