Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/pingora_header_serde-ef6b1e1594b0ba64.pingora_header_serde.dcb37403e926642f-cgu.0?download=true
inline.NumInlined: 360
inline.NumDeleted: 204
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RINvMsc_CskspKcFIsYcD_12pingora_httpNtB6_14ResponseHeader13append_headerNtNtCsexYYUdYSQU6_5alloc6string6StringRShECsiWMK64dCVjf_20pingora_header_serde:bb.a
  br label %.body.thread

_RNvXs3_NtCskKLDkoKarTP_4core7convertRShINtB5_7TryIntoNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueE8try_intoCsiWMK64dCVjf_20pingora_header_serde.exit: ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27)
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load i8, ptr %i.q, align 8, !range !29, !alias.scope !27, !noalias !30, !noundef !4 ; 2 uses
  %i.s = icmp eq i8 %i.r, 2
  br i1 %i.s, label %bb.b, label %bb.g

bb.b:                                             ; preds = %_RNvXs3_NtCskKLDkoKarTP_4core7convertRShINtB5_7TryIntoNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueE8try_intoCsiWMK64dCVjf_20pingora_header_serde.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !32
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store i16 13, ptr %i.t, align 8, !noalias !36
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 65
  store i8 3, ptr %i.u, align 1, !noalias !32
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  store i8 0, ptr %i.v, align 8, !noalias !32
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  store ptr null, ptr %i.w, align 8, !noalias !32
  store i64 0, ptr %i.n, align 8, !noalias !37
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @7, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !37
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 26, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !37
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !38
  %i.x = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef 8) #21, !noalias !38 ; 3 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.c, label %bb.f, !prof !41

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #22
          to label %.noexc.i.i unwind label %bb.d, !noalias !32

.noexc.i.i:                                       ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsfsXztIhCltD_13pingora_error5ErrorECsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.n) #23
          to label %.body.thread unwind label %bb.e, !noalias !32

bb.e:                                             ; preds = %bb.d
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !32
  unreachable

bb.f:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.x, ptr noundef nonnull align 8 dereferenceable(72) %i.n, i64 72, i1 false), !noalias !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.x, ptr %i.ab, align 8
  store i8 1, ptr %0, align 8
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.ec

bb.g:                                             ; preds = %_RNvXs3_NtCskKLDkoKarTP_4core7convertRShINtB5_7TryIntoNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueE8try_intoCsiWMK64dCVjf_20pingora_header_serde.exit
  %.sroa.0.0.copyload = load ptr, ptr %i.p, align 8, !alias.scope !42, !noalias !43 ; 20 uses
  %.sroa.718.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.718.sroa.0.0.copyload = load ptr, ptr %.sroa.718.0..sroa_idx, align 8, !alias.scope !42, !noalias !43 ; 12 uses
  %.sroa.718.sroa.5.0..sroa.718.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.718.sroa.5.0.copyload = load i64, ptr %.sroa.718.sroa.5.0..sroa.718.0..sroa_idx.sroa_idx, align 8, !alias.scope !42, !noalias !43 ; 12 uses
  %.sroa.718.sroa.6.0..sroa.718.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.sroa.718.sroa.6.0.copyload = load ptr, ptr %.sroa.718.sroa.6.0..sroa.718.0..sroa_idx.sroa_idx, align 8, !alias.scope !42, !noalias !43 ; 12 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 33
  %.sroa.11.sroa.0.0.copyload = load i56, ptr %.sroa.11.0..sroa_idx, align 1, !alias.scope !42, !noalias !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 7 uses
  %i.ad = load i64, ptr %i.ac, align 8, !range !44, !noundef !4
  %.not = icmp eq i64 %i.ad, -1                   ; 2 uses
  %. = select i1 %.not, ptr null, ptr %i.ac       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !52
  invoke void @_RNvXs1_NtCskspKcFIsYcD_12pingora_http16case_header_nameNtNtCsexYYUdYSQU6_5alloc6string6StringNtB5_18IntoCaseHeaderName21into_case_header_name(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.m, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.o)
          to label %bb.h unwind label %.split.thread.i, !noalias !55

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECsiWMK64dCVjf_20pingora_header_serde.exit115.i: ; preds = %bb.ea, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECsiWMK64dCVjf_20pingora_header_serde.exit.i
  %.sroa.014.0.i = phi i1 [ %.sroa.014.2134.i, %bb.ea ], [ %.sroa.014.2.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECsiWMK64dCVjf_20pingora_header_serde.exit.i ]
  %.pn34.i = phi { ptr, i32 } [ %.pn135.i, %bb.ea ], [ %.pn.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECsiWMK64dCVjf_20pingora_header_serde.exit.i ] ; 2 uses
  br i1 %.sroa.014.0.i, label %bb.eb, label %.body.thread34

.split.thread.i:                                  ; preds = %bb.dz, %bb.g
  %lpad.thr_comm227.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.eb

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !52
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !52, !noundef !4 ; 14 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !noalias !52, !noundef !4 ; 14 uses
  invoke void @_RNvMs_NtNtCs84JG9zk80ZV_4http6header4nameNtB4_10HeaderName10from_bytes(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.af, i64 noundef %i.ah)
          to label %bb.i unwind label %.thread.i, !noalias !56

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECsiWMK64dCVjf_20pingora_header_serde.exit.i: ; preds = %bb.dx, %.body.thread.i, %.body.i, %bb.bn, %.thread.i.i, %bb.bd, %bb.bc, %bb.az, %bb.z, %bb.y, %bb.v
  %.sroa.014.2.i = phi i1 [ false, %.body.i ], [ true, %.body.thread.i ], [ true, %bb.dx ], [ false, %bb.v ], [ false, %bb.bn ], [ false, %.thread.i.i ], [ false, %bb.bd ], [ false, %bb.bc ], [ false, %bb.az ], [ false, %bb.z ], [ false, %bb.y ] ; 2 uses
  %.sroa.011.0.i = phi i8 [ %.sroa.011.1.i, %.body.i ], [ %.sroa.011.2.lpad-body140.i, %.body.thread.i ], [ %.sroa.011.2.lpad-body140.i, %bb.dx ], [ %.sroa.011.1.i, %bb.v ], [ %.sroa.011.1.i, %bb.bn ], [ %.sroa.011.1.i, %.thread.i.i ], [ %.sroa.011.1.i, %bb.bd ], [ %.sroa.011.1.i, %bb.bc ], [ %.sroa.011.1.i, %bb.az ], [ %.sroa.011.1.i, %bb.z ], [ %.sroa.011.1.i, %bb.y ]
  %.pn.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i, %.body.i ], [ %eh.lpad-body141.i, %.body.thread.i ], [ %eh.lpad-body141.i, %bb.dx ], [ %i.ci, %bb.v ], [ %.pn128.i.i, %bb.bn ], [ %.pn128.i.i, %.thread.i.i ], [ %i.fx, %bb.bd ], [ %i.fx, %bb.bc ], [ %i.ft, %bb.az ], [ %i.cq, %bb.z ], [ %i.cq, %bb.y ] ; 2 uses
  %i.ai = trunc nuw i8 %.sroa.011.0.i to i1
  br i1 %i.ai, label %bb.ea, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECsiWMK64dCVjf_20pingora_header_serde.exit115.i

.thread.i:                                        ; preds = %.noexc.i, %bb.j, %bb.h
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ea

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !52
  store i16 13, ptr %i.j, align 8, !noalias !52
  %i.ak = load i64, ptr %i.k, align 8, !range !57, !noalias !52, !noundef !4
  %i.al = trunc nuw i64 %i.ak to i1
  br i1 %i.al, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !58
  store i64 0, ptr %i.f, align 8, !noalias !58
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @3, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !58
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 19, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !58
  %i.am = invoke { ptr, ptr } @_RNvXse_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtB7_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtBW_6marker4SendNtB1t_4SyncEL_EINtNtBW_7convert4FromNtNtNtCs84JG9zk80ZV_4http6header4name17InvalidHeaderNameE4fromCsiWMK64dCVjf_20pingora_header_serde()
          to label %.noexc.i unwind label %.thread.i, !noalias !56 ; 2 uses

.noexc.i:                                         ; preds = %bb.j
  %i.an = extractvalue { ptr, ptr } %i.am, 0      ; 2 uses
  %i.ao = extractvalue { ptr, ptr } %i.am, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.an) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ao) ]
  %i.ap = invoke fastcc noundef nonnull align 8 ptr @_RNvMs2_CsfsXztIhCltD_13pingora_errorNtB5_5Error6create(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.f, ptr noundef nonnull %i.an, ptr nonnull %i.ao)
          to label %bb.dz unwind label %.thread.i

bb.k:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.015.0.copyload.i = load ptr, ptr %i.aq, align 8, !noalias !52 ; 3 uses
  %.sroa.416.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.416.0..sroa_idx.i, i64 24, i1 false), !noalias !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !52
  store ptr %.sroa.015.0.copyload.i, ptr %i.l, align 8, !noalias !52
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !52
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  %.not32.i = icmp eq ptr %.sroa.015.0.copyload.i, null
  br i1 %.not32.i, label %bb.bp, label %bb.bo

bb.m:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultbNtNtNtCs84JG9zk80ZV_4http6header3map14MaxSizeReachedE6expectCsiWMK64dCVjf_20pingora_header_serde.exit.i, %bb.k
  %.sroa.011.1.i = phi i8 [ 0, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultbNtNtNtCs84JG9zk80ZV_4http6header3map14MaxSizeReachedE6expectCsiWMK64dCVjf_20pingora_header_serde.exit.i ], [ 1, %bb.k ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false), !noalias !52
  %.sroa.16.32.insert.ext = zext i56 %.sroa.11.sroa.0.0.copyload to i64
  %.sroa.16.32.insert.shift = shl nuw i64 %.sroa.16.32.insert.ext, 8
  %.sroa.14.32.insert.ext = zext nneg i8 %i.r to i64
  %.sroa.14.32.insert.insert = or disjoint i64 %.sroa.16.32.insert.shift, %.sroa.14.32.insert.ext ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !61)
  call void @llvm.experimental.noalias.scope.decl(metadata !64)
  %i.ar = invoke noundef zeroext i1 @_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB5_9HeaderMap15try_reserve_oneCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1)
          to label %bb.n unwind label %bb.bl, !noalias !66

.body.i.i:                                        ; preds = %bb.au
  %lpad.thr_comm.split-lp136.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i

bb.n:                                             ; preds = %bb.m
  br i1 %i.ar, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 32
  %i.at = load ptr, ptr %i.as, align 8, !noalias !68, !nonnull !4, !noundef !4
  invoke void %i.at(ptr noundef %.sroa.718.sroa.6.0.copyload, ptr noundef %.sroa.718.sroa.0.0.copyload, i64 noundef %.sroa.718.sroa.5.0.copyload)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECsiWMK64dCVjf_20pingora_header_serde.exit.i.i unwind label %bb.bj, !noalias !66, !inline_history !75

bb.p:                                             ; preds = %bb.n
  %i.au = call fastcc noundef i16 @_RINvNtNtCs84JG9zk80ZV_4http6header3map15hash_elem_usingNtNtB4_4name10HeaderNameECsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %1, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.h), !noalias !76 ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.aw = load i16, ptr %i.av, align 8, !alias.scope !77, !noalias !78, !noundef !4 ; 3 uses
  %i.ax = and i16 %i.aw, %i.au
  %i.ay = zext nneg i16 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.bb = load i64, ptr %i.ba, align 8, !alias.scope !77, !noalias !78, !noundef !4 ; 2 uses
  %i.bc = load ptr, ptr %i.az, align 8, !alias.scope !77, !noalias !78, !nonnull !4
  %i.bd = zext i16 %i.aw to i64
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !77, !noalias !78 ; 14 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !77, !noalias !78, !nonnull !4 ; 3 uses
  %i.bi = load ptr, ptr %i.h, align 8, !alias.scope !64, !noalias !79 ; 9 uses
  %i.bj = icmp eq ptr %i.bi, null                 ; 7 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 8, !range !80, !alias.scope !64, !noalias !79
  %i.bm = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !alias.scope !64, !noalias !79 ; 9 uses
  %i.bo = load ptr, ptr %i.bk, align 8, !alias.scope !64, !noalias !79 ; 8 uses
  %.not201 = icmp eq i64 %i.bb, 0
  br label %.outer161

.outer161:                                        ; preds = %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i, %bb.p
  %.sroa.09.0.i.i.ph = phi i64 [ %i.de, %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i ], [ 0, %bb.p ] ; 3 uses
  %.sroa.01.0.i.i.ph = phi i64 [ %i.df, %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i ], [ %i.ay, %bb.p ] ; 2 uses
  %i.bp = icmp ult i64 %.sroa.01.0.i.i.ph, %i.bb  ; 2 uses
  %.not201.not = xor i1 %.not201, true
  %brmerge = or i1 %i.bp, %.not201.not
  %.sroa.01.0.i.i.ph.mux = select i1 %i.bp, i64 %.sroa.01.0.i.i.ph, i64 0 ; 7 uses
  br i1 %brmerge, label %.loopexit194, label %infloop

.loopexit194:                                     ; preds = %.outer161
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %.sroa.01.0.i.i.ph.mux ; 2 uses
  %i.br = load i16, ptr %i.bq, align 2, !noalias !66, !noundef !4 ; 2 uses
  %.not.i.i = icmp eq i16 %i.br, -1
  br i1 %.not.i.i, label %bb.s, label %bb.r

bb.q:                                             ; preds = %bb.aj
  unreachable

bb.r:                                             ; preds = %.loopexit194
  %i.bs = zext i16 %i.br to i64                   ; 6 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 2
  %i.bu = load i16, ptr %i.bt, align 2, !noalias !66, !noundef !4 ; 2 uses
  %i.bv = and i16 %i.bu, %i.aw
  %i.bw = zext i16 %i.bv to i64
  %i.bx = sub i64 %.sroa.01.0.i.i.ph.mux, %i.bw
  %i.by = and i64 %i.bx, %i.bd
  %i.bz = icmp samesign ult i64 %i.by, %.sroa.09.0.i.i.ph
  br i1 %i.bz, label %bb.aw, label %bb.ae

bb.s:                                             ; preds = %.loopexit194
  %i.ca = icmp ult i64 %i.bf, 88686269585142076
  call void @llvm.assume(i1 %i.ca)
  %.sroa.699.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.699.0.copyload.i.i = load ptr, ptr %.sroa.699.0..sroa_idx.i.i, align 8, !alias.scope !64, !noalias !79 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !81)
  %i.cb = icmp samesign ugt i64 %i.bf, 32767
  br i1 %i.cb, label %bb.x, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !84
  %i.cd = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  store i16 %i.au, ptr %i.cd, align 8, !noalias !84
  %i.ce = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store ptr %i.bi, ptr %i.ce, align 8, !noalias !87
  %.sroa.684.0..sroa_idx85.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  store ptr %i.bo, ptr %.sroa.684.0..sroa_idx85.i.i, align 8, !noalias !87
  %.sroa.888.0..sroa_idx89.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  store i64 %i.bn, ptr %.sroa.888.0..sroa_idx89.i.i, align 8, !noalias !87
  %.sroa.1092.0..sroa_idx93.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  store ptr %.sroa.699.0.copyload.i.i, ptr %.sroa.1092.0..sroa_idx93.i.i, align 8, !noalias !87
  %i.cf = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %.sroa.0.0.copyload, ptr %i.cf, align 8, !noalias !88
  %.sroa.5102.0..sroa_idx103.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %.sroa.718.sroa.0.0.copyload, ptr %.sroa.5102.0..sroa_idx103.i.i, align 8, !noalias !88
  %.sroa.6105.0..sroa_idx106.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i64 %.sroa.718.sroa.5.0.copyload, ptr %.sroa.6105.0..sroa_idx106.i.i, align 8, !noalias !88
  %.sroa.7108.0..sroa_idx109.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store ptr %.sroa.718.sroa.6.0.copyload, ptr %.sroa.7108.0..sroa_idx109.i.i, align 8, !noalias !88
  %.sroa.8111.0..sroa_idx112.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store i64 %.sroa.14.32.insert.insert, ptr %.sroa.8111.0..sroa_idx112.i.i, align 8, !noalias !88
  store i64 0, ptr %i.e, align 8, !noalias !84
  %i.cg = load i64, ptr %i.cc, align 8, !range !9, !alias.scope !89, !noalias !92, !noundef !4
  %i.ch = icmp eq i64 %i.bf, %i.cg
  br i1 %i.ch, label %bb.u, label %bb.ab

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtBR_5value11HeaderValueEE8grow_oneCskspKcFIsYcD_12pingora_http(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cc)
          to label %._crit_edge172.i.i unwind label %bb.v, !noalias !94

._crit_edge172.i.i:                               ; preds = %bb.u
  %.pre173.i.i = load ptr, ptr %i.bg, align 8, !alias.scope !89, !noalias !92
  br label %bb.ab

bb.v:                                             ; preds = %bb.u
  %i.ci = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtBG_5value11HeaderValueEECsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(104) %i.e) #23
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECsiWMK64dCVjf_20pingora_header_serde.exit.i unwind label %bb.w, !noalias !95

bb.w:                                             ; preds = %bb.v
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !94
  unreachable

bb.x:                                             ; preds = %bb.s
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 32
  %i.cl = load ptr, ptr %i.ck, align 8, !noalias !96, !nonnull !4, !noundef !4
  invoke void %i.cl(ptr noundef %.sroa.718.sroa.6.0.copyload, ptr noundef %.sroa.718.sroa.0.0.copyload, i64 noundef %.sroa.718.sroa.5.0.copyload)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECsiWMK64dCVjf_20pingora_header_serde.exit.i.i.i unwind label %bb.y, !noalias !103, !inline_history !75

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECsiWMK64dCVjf_20pingora_header_serde.exit.i.i.i: ; preds = %bb.x
  br i1 %i.bj, label %bb.du, label %.invoke252.i

.invoke252.i:                                     ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECsiWMK64dCVjf_20pingora_header_serde.exit.i44.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECsiWMK64dCVjf_20pingora_header_serde.exit.i.i.i, %bb.bk
  %i.cm = phi ptr [ %i.gw, %bb.bk ], [ %.sroa.699.0.copyload.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECsiWMK64dCVjf_20pingora_header_serde.exit.i.i.i ], [ %.sroa.663.0.copyload.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECsiWMK64dCVjf_20pingora_header_serde.exit.i44.i.i ]
  %i.cn = phi ptr [ %i.gy, %bb.bk ], [ %i.bo, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECsiWMK64dCVjf_20pingora_header_serde.exit.i.i.i ], [ %i.bo, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECsiWMK64dCVjf_20pingora_header_serde.exit.i44.i.i ]
  %i.co = phi i64 [ %i.ha, %bb.bk ], [ %i.bn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECsiWMK64dCVjf_20pingora_header_serde.exit.i.i.i ], [ %i.bn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECsiWMK64dCVjf_20pingora_header_serde.exit.i44.i.i ]
  %.pn254.i = phi ptr [ %i.gt, %bb.bk ], [ %i.bi, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECsiWMK64dCVjf_20pingora_header_serde.exit.i.i.i ], [ %i.bi, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECsiWMK64dCVjf_20pingora_header_serde.exit.i44.i.i ]
  %.in253.i = getelementptr inbounds nuw i8, ptr %.pn254.i, i64 32
  %i.cp = load ptr, ptr %.in253.i, align 8, !noalias !66, !nonnull !4, !noundef !4
  invoke void %i.cp(ptr noundef %i.cm, ptr noundef %i.cn, i64 noundef %i.co)
          to label %bb.du unwind label %.body.i, !noalias !56, !inline_history !104

bb.y:                                             ; preds = %bb.x
  %i.cq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.bj, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECsiWMK64dCVjf_20pingora_header_serde.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.cs = load ptr, ptr %i.cr, align 8, !noalias !105, !nonnull !4, !noundef !4
  invoke void %i.cs(ptr noundef %.sroa.699.0.copyload.i.i, ptr noundef %i.bo, i64 noundef %i.bn)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECsiWMK64dCVjf_20pingora_header_serde.exit.i unwind label %bb.aa, !noalias !103, !inline_history !118

bb.aa:                                            ; preds = %bb.z
  %i.ct = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !103
  unreachable

bb.ab:                                            ; preds = %._crit_edge172.i.i, %bb.t
  %i.cu = phi ptr [ %.pre173.i.i, %._crit_edge172.i.i ], [ %i.bh, %bb.t ]
  %i.cv = getelementptr inbounds nuw [104 x i8], ptr %i.cu, i64 %i.bf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.cv, ptr noundef nonnull readonly align 8 dereferenceable(104) %i.e, i64 104, i1 false), !noalias !95
  %i.cw = add nuw nsw i64 %i.bf, 1
  store i64 %i.cw, ptr %i.be, align 8, !alias.scope !89, !noalias !92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !84
  %i.cx = load i64, ptr %i.ba, align 8, !alias.scope !77, !noalias !78, !noundef !4 ; 2 uses
  %i.cy = icmp ult i64 %.sroa.01.0.i.i.ph.mux, %i.cx
  br i1 %i.cy, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.cz = load ptr, ptr %i.az, align 8, !alias.scope !77, !noalias !78, !nonnull !4, !noundef !4
  %i.da = trunc nuw nsw i64 %i.bf to i16
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %.sroa.01.0.i.i.ph.mux ; 2 uses
  store i16 %i.da, ptr %i.db, align 2, !noalias !66
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 2
  store i16 %i.au, ptr %i.dc, align 2, !noalias !66
  br label %bb.dv

bb.ad:                                            ; preds = %bb.ab
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.01.0.i.i.ph.mux, i64 noundef %i.cx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #22
          to label %.noexc38.i unwind label %.body.i, !noalias !56

.noexc38.i:                                       ; preds = %bb.ad
  unreachable

bb.ae:                                            ; preds = %bb.r
  %i.dd = icmp eq i16 %i.bu, %i.au
  br i1 %i.dd, label %bb.af, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i

_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i: ; preds = %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i, %.split.i.i, %bb.ai, %bb.ag, %bb.ae
  %i.de = add nuw nsw i64 %.sroa.09.0.i.i.ph, 1
  %i.df = add i64 %.sroa.01.0.i.i.ph.mux, 1
  br label %.outer161

bb.af:                                            ; preds = %bb.ae
  %i.dg = icmp ugt i64 %i.bf, %i.bs
  br i1 %i.dg, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.dh = getelementptr inbounds nuw [104 x i8], ptr %i.bh, i64 %i.bs ; 10 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 64
  %i.dj = load ptr, ptr %i.di, align 8, !noalias !66, !noundef !4
  %i.dk = icmp ne ptr %i.dj, null                 ; 2 uses
  %i.dl = xor i1 %i.bj, %i.dk
  br i1 %i.dl, label %bb.ah, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.ah:                                            ; preds = %bb.ag
  br i1 %i.dk, label %bb.ai, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bi) ]
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dh, i64 80
  %i.dn = load i64, ptr %i.dm, align 8, !noalias !66, !noundef !4
  %i.do = icmp eq i64 %i.dn, %i.bn
  br i1 %i.do, label %.split.i.i, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i

.split.i.i:                                       ; preds = %bb.ai
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dh, i64 72
  %i.dq = load ptr, ptr %i.dp, align 8, !noalias !66, !noundef !4
  %bcmp.i.i.i.i.i.i = call i32 @bcmp(ptr %i.dq, ptr %i.bo, i64 %i.bn), !noalias !66
  %i.dr = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.dr, label %bb.ak, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.aj:                                            ; preds = %bb.af
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bs, i64 noundef %i.bf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #22
          to label %bb.q unwind label %bb.bl, !noalias !66

_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i: ; preds = %bb.ah
  call void @llvm.assume(i1 %i.bj)
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dh, i64 72
  %i.dt = load i8, ptr %i.ds, align 8, !range !80, !noalias !66, !noundef !4
  %i.du = icmp eq i8 %i.dt, %i.bl
  br i1 %i.du, label %bb.ak, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.ak:                                            ; preds = %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i, %.split.i.i
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !119)
  call void @llvm.experimental.noalias.scope.decl(metadata !122)
  %i.dw = load i64, ptr %i.dh, align 8, !range !57, !alias.scope !119, !noalias !124, !noundef !4
  %i.dx = trunc nuw i64 %i.dw to i1
  br i1 %i.dx, label %bb.al, label %bb.ap

bb.al:                                            ; preds = %bb.ak
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dh, i64 16 ; 2 uses
  %i.dz = load i64, ptr %i.dy, align 8, !alias.scope !119, !noalias !124, !noundef !4 ; 4 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.eb = load i64, ptr %i.ea, align 8, !alias.scope !126, !noalias !127, !noundef !4 ; 7 uses
  %i.ec = icmp ult i64 %i.eb, 128102389400760776
  call void @llvm.assume(i1 %i.ec)
  %i.ed = load i64, ptr %i.dv, align 8, !range !9, !alias.scope !128, !noalias !131, !noundef !4
  %i.ee = icmp eq i64 %i.eb, %i.ed
  br i1 %i.ee, label %bb.am, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCsiWMK64dCVjf_20pingora_header_serde.exit.i.i.i

bb.am:                                            ; preds = %bb.al
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtBR_5value11HeaderValueEE8grow_oneCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dv)
          to label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCsiWMK64dCVjf_20pingora_header_serde.exit.i.i.i unwind label %bb.an, !noalias !133

bb.an:                                            ; preds = %bb.am
  %i.ef = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 32
  %i.eh = load ptr, ptr %i.eg, align 8, !noalias !134, !nonnull !4, !noundef !4
  invoke void %i.eh(ptr noundef %.sroa.718.sroa.6.0.copyload, ptr noundef %.sroa.718.sroa.0.0.copyload, i64 noundef %.sroa.718.sroa.5.0.copyload)
          to label %.thread.i.i unwind label %bb.ao, !noalias !133, !inline_history !143

bb.ao:                                            ; preds = %bb.an
  %i.ei = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !133
  unreachable

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCsiWMK64dCVjf_20pingora_header_serde.exit.i.i.i: ; preds = %bb.am, %bb.al
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !alias.scope !128, !noalias !131, !nonnull !4, !noundef !4
  %i.el = getelementptr inbounds nuw [72 x i8], ptr %i.ek, i64 %i.eb ; 9 uses
  store i64 1, ptr %i.el, align 8, !noalias !144
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  store i64 %i.dz, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !144
  %.sroa.5.0..sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx10.i.i.i, align 8, !noalias !144
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.el, i64 24
  store i64 %i.bs, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !144
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.el, i64 32
  store ptr %.sroa.0.0.copyload, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !noalias !144
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.el, i64 40
  store ptr %.sroa.718.sroa.0.0.copyload, ptr %.sroa.9.0..sroa_idx.i.i.i, align 8, !noalias !144
  %.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.el, i64 48
  store i64 %.sroa.718.sroa.5.0.copyload, ptr %.sroa.10.0..sroa_idx.i.i.i, align 8, !noalias !144
  %.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.el, i64 56
  store ptr %.sroa.718.sroa.6.0.copyload, ptr %.sroa.11.0..sroa_idx.i.i.i, align 8, !noalias !144
  %.sroa.12.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.el, i64 64
  store i64 %.sroa.14.32.insert.insert, ptr %.sroa.12.0..sroa_idx.i.i.i, align 8, !noalias !144
  %i.em = add nuw nsw i64 %i.eb, 1                ; 2 uses
  store i64 %i.em, ptr %i.ea, align 8, !alias.scope !128, !noalias !131
  %.not.i.i.i = icmp ugt i64 %i.dz, %i.eb
  br i1 %.not.i.i.i, label %bb.au, label %bb.at

bb.ap:                                            ; preds = %bb.ak
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.eo = load i64, ptr %i.en, align 8, !alias.scope !126, !noalias !127, !noundef !4 ; 6 uses
  %i.ep = icmp ult i64 %i.eo, 128102389400760776
  call void @llvm.assume(i1 %i.ep)
  %i.eq = load i64, ptr %i.dv, align 8, !range !9, !alias.scope !145, !noalias !148, !noundef !4
  %i.er = icmp eq i64 %i.eo, %i.eq
  br i1 %i.er, label %bb.aq, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCsiWMK64dCVjf_20pingora_header_serde.exit9.i.i.i

bb.aq:                                            ; preds = %bb.ap
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtBR_5value11HeaderValueEE8grow_oneCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dv)
          to label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCsiWMK64dCVjf_20pingora_header_serde.exit9.i.i.i unwind label %bb.ar, !noalias !150

bb.ar:                                            ; preds = %bb.aq
  %i.es = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 32
  %i.eu = load ptr, ptr %i.et, align 8, !noalias !151, !nonnull !4, !noundef !4
  invoke void %i.eu(ptr noundef %.sroa.718.sroa.6.0.copyload, ptr noundef %.sroa.718.sroa.0.0.copyload, i64 noundef %.sroa.718.sroa.5.0.copyload)
          to label %.thread.i.i unwind label %bb.as, !noalias !150, !inline_history !143

bb.as:                                            ; preds = %bb.ar
  %i.ev = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !150
  unreachable

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCsiWMK64dCVjf_20pingora_header_serde.exit9.i.i.i: ; preds = %bb.aq, %bb.ap
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ex = load ptr, ptr %i.ew, align 8, !alias.scope !145, !noalias !148, !nonnull !4, !noundef !4
  %i.ey = getelementptr inbounds nuw [72 x i8], ptr %i.ex, i64 %i.eo ; 9 uses
  store i64 0, ptr %i.ey, align 8, !noalias !144
  %.sroa.417.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  store i64 %i.bs, ptr %.sroa.417.0..sroa_idx.i.i.i, align 8, !noalias !144
  %.sroa.518.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  store i64 0, ptr %.sroa.518.0..sroa_idx.i.i.i, align 8, !noalias !144
  %.sroa.619.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  store i64 %i.bs, ptr %.sroa.619.0..sroa_idx.i.i.i, align 8, !noalias !144
  %.sroa.720.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ey, i64 32
  store ptr %.sroa.0.0.copyload, ptr %.sroa.720.0..sroa_idx.i.i.i, align 8, !noalias !144
  %.sroa.921.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ey, i64 40
  store ptr %.sroa.718.sroa.0.0.copyload, ptr %.sroa.921.0..sroa_idx.i.i.i, align 8, !noalias !144
  %.sroa.1022.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ey, i64 48
  store i64 %.sroa.718.sroa.5.0.copyload, ptr %.sroa.1022.0..sroa_idx.i.i.i, align 8, !noalias !144
  %.sroa.1123.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ey, i64 56
  store ptr %.sroa.718.sroa.6.0.copyload, ptr %.sroa.1123.0..sroa_idx.i.i.i, align 8, !noalias !144
  %.sroa.1224.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ey, i64 64
  store i64 %.sroa.14.32.insert.insert, ptr %.sroa.1224.0..sroa_idx.i.i.i, align 8, !noalias !144
  %i.ez = add nuw nsw i64 %i.eo, 1
  store i64 %i.ez, ptr %i.en, align 8, !alias.scope !145, !noalias !148
  store i64 1, ptr %i.dh, align 8, !alias.scope !119, !noalias !124
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store i64 %i.eo, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !alias.scope !119, !noalias !124
  %.sroa.53.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  store i64 %i.eo, ptr %.sroa.53.0..sroa_idx.i.i.i, align 8, !alias.scope !119, !noalias !124
  br label %_RINvNtNtCs84JG9zk80ZV_4http6header3map12append_valueNtNtB4_5value11HeaderValueECsiWMK64dCVjf_20pingora_header_serde.exit.i.i

bb.at:                                            ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCsiWMK64dCVjf_20pingora_header_serde.exit.i.i.i
  %i.fa = load ptr, ptr %i.ej, align 8, !alias.scope !126, !noalias !127, !nonnull !4, !noundef !4
  %i.fb = getelementptr inbounds nuw [72 x i8], ptr %i.fa, i64 %i.dz ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  store i64 1, ptr %i.fc, align 8, !noalias !144
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 24
  store i64 %i.eb, ptr %i.fd, align 8, !noalias !144
  store i64 1, ptr %i.dh, align 8, !alias.scope !119, !noalias !124
  store i64 %i.eb, ptr %i.dy, align 8, !alias.scope !119, !noalias !124
  br label %_RINvNtNtCs84JG9zk80ZV_4http6header3map12append_valueNtNtB4_5value11HeaderValueECsiWMK64dCVjf_20pingora_header_serde.exit.i.i

bb.au:                                            ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCsiWMK64dCVjf_20pingora_header_serde.exit.i.i.i
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.dz, i64 noundef %i.em, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #22
          to label %.noexc35.i.i unwind label %.body.i.i, !noalias !66

.noexc35.i.i:                                     ; preds = %bb.au
  unreachable

_RINvNtNtCs84JG9zk80ZV_4http6header3map12append_valueNtNtB4_5value11HeaderValueECsiWMK64dCVjf_20pingora_header_serde.exit.i.i: ; preds = %bb.at, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCsiWMK64dCVjf_20pingora_header_serde.exit9.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !160)
  call void @llvm.experimental.noalias.scope.decl(metadata !163)
  br i1 %i.bj, label %bb.dv, label %bb.av

bb.av:                                            ; preds = %_RINvNtNtCs84JG9zk80ZV_4http6header3map12append_valueNtNtB4_5value11HeaderValueECsiWMK64dCVjf_20pingora_header_serde.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !166)
  call void @llvm.experimental.noalias.scope.decl(metadata !169)
  call void @llvm.experimental.noalias.scope.decl(metadata !172)
  call void @llvm.experimental.noalias.scope.decl(metadata !175)
  %i.fe = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.ff = load ptr, ptr %i.fe, align 8, !alias.scope !178, !noalias !79, !noundef !4
  %i.fg = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.fh = load ptr, ptr %i.fg, align 8, !noalias !179, !nonnull !4, !noundef !4
  invoke void %i.fh(ptr noundef %i.ff, ptr noundef %i.bo, i64 noundef %i.bn)
          to label %bb.dv unwind label %.body.i, !noalias !56, !inline_history !104

bb.aw:                                            ; preds = %bb.r
  %i.fi = icmp samesign ugt i64 %.sroa.09.0.i.i.ph, 511
  %i.fj = load i64, ptr %1, align 8, !range !180, !alias.scope !77, !noalias !78
  %i.fk = icmp ne i64 %i.fj, 2
  %.sroa.016.0.i.i = select i1 %i.fi, i1 %i.fk, i1 false
  %.sroa.663.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.663.0.copyload.i.i = load ptr, ptr %.sroa.663.0..sroa_idx.i.i, align 8, !alias.scope !64, !noalias !79 ; 3 uses
  %i.fl = icmp ult i64 %i.bf, 88686269585142076
  call void @llvm.assume(i1 %i.fl)
  call void @llvm.experimental.noalias.scope.decl(metadata !181)
  %i.fm = icmp samesign ugt i64 %i.bf, 32767
  br i1 %i.fm, label %bb.bb, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !184
  %i.fo = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  store i16 %i.au, ptr %i.fo, align 8, !noalias !184
  %i.fp = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store ptr %i.bi, ptr %i.fp, align 8, !noalias !187
  %.sroa.6.0..sroa_idx53.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  store ptr %i.bo, ptr %.sroa.6.0..sroa_idx53.i.i, align 8, !noalias !187
  %.sroa.8.0..sroa_idx56.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  store i64 %i.bn, ptr %.sroa.8.0..sroa_idx56.i.i, align 8, !noalias !187
  %.sroa.10.0..sroa_idx59.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  store ptr %.sroa.663.0.copyload.i.i, ptr %.sroa.10.0..sroa_idx59.i.i, align 8, !noalias !187
  %i.fq = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %.sroa.0.0.copyload, ptr %i.fq, align 8, !noalias !188
  %.sroa.566.0..sroa_idx67.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %.sroa.718.sroa.0.0.copyload, ptr %.sroa.566.0..sroa_idx67.i.i, align 8, !noalias !188
  %.sroa.669.0..sroa_idx70.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %.sroa.718.sroa.5.0.copyload, ptr %.sroa.669.0..sroa_idx70.i.i, align 8, !noalias !188
  %.sroa.7.0..sroa_idx72.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store ptr %.sroa.718.sroa.6.0.copyload, ptr %.sroa.7.0..sroa_idx72.i.i, align 8, !noalias !188
  %.sroa.874.0..sroa_idx75.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i64 %.sroa.14.32.insert.insert, ptr %.sroa.874.0..sroa_idx75.i.i, align 8, !noalias !188
  store i64 0, ptr %i.d, align 8, !noalias !184
  %i.fr = load i64, ptr %i.fn, align 8, !range !9, !alias.scope !189, !noalias !192, !noundef !4
  %i.fs = icmp eq i64 %i.bf, %i.fr
  br i1 %i.fs, label %bb.ay, label %bb.bf

bb.ay:                                            ; preds = %bb.ax
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtBR_5value11HeaderValueEE8grow_oneCskspKcFIsYcD_12pingora_http(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fn)
          to label %._crit_edge.i.i unwind label %bb.az, !noalias !194

._crit_edge.i.i:                                  ; preds = %bb.ay
  %.pre.i.i = load ptr, ptr %i.bg, align 8, !alias.scope !189, !noalias !192
  br label %bb.bf

bb.az:                                            ; preds = %bb.ay
  %i.ft = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtBG_5value11HeaderValueEECsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(104) %i.d) #23
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECsiWMK64dCVjf_20pingora_header_serde.exit.i unwind label %bb.ba, !noalias !195

bb.ba:                                            ; preds = %bb.az
  %i.fu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !194
  unreachable

bb.bb:                                            ; preds = %bb.aw
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 32
  %i.fw = load ptr, ptr %i.fv, align 8, !noalias !196, !nonnull !4, !noundef !4
  invoke void %i.fw(ptr noundef %.sroa.718.sroa.6.0.copyload, ptr noundef %.sroa.718.sroa.0.0.copyload, i64 noundef %.sroa.718.sroa.5.0.copyload)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECsiWMK64dCVjf_20pingora_header_serde.exit.i44.i.i unwind label %bb.bc, !noalias !203, !inline_history !75

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECsiWMK64dCVjf_20pingora_header_serde.exit.i44.i.i: ; preds = %bb.bb
  br i1 %i.bj, label %bb.du, label %.invoke252.i

bb.bc:                                            ; preds = %bb.bb
  %i.fx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.bj, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECsiWMK64dCVjf_20pingora_header_serde.exit.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.fy = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.fz = load ptr, ptr %i.fy, align 8, !noalias !204, !nonnull !4, !noundef !4
  invoke void %i.fz(ptr noundef %.sroa.663.0.copyload.i.i, ptr noundef %i.bo, i64 noundef %i.bn)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECsiWMK64dCVjf_20pingora_header_serde.exit.i unwind label %bb.be, !noalias !203, !inline_history !118

bb.be:                                            ; preds = %bb.bd
  %i.ga = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !203
  unreachable

bb.bf:                                            ; preds = %._crit_edge.i.i, %bb.ax
  %i.gb = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.bh, %bb.ax ]
  %i.gc = getelementptr inbounds nuw [104 x i8], ptr %i.gb, i64 %i.bf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.gc, ptr noundef nonnull readonly align 8 dereferenceable(104) %i.d, i64 104, i1 false), !noalias !195
  %i.gd = add nuw nsw i64 %i.bf, 1
  store i64 %i.gd, ptr %i.be, align 8, !alias.scope !189, !noalias !192
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !184
  %i.ge = load ptr, ptr %i.az, align 8, !alias.scope !217, !noalias !220, !nonnull !4, !noundef !4
  %i.gf = load i64, ptr %i.ba, align 8, !alias.scope !217, !noalias !220, !noundef !4 ; 2 uses
  %i.gg = trunc nuw nsw i64 %i.bf to i16
  %.not202 = icmp eq i64 %i.gf, 0
  br label %.outer

.outer:                                           ; preds = %bb.bg, %bb.bf
  %.sroa.6.0.i.i.i.ph = phi i16 [ %i.gn, %bb.bg ], [ %i.au, %bb.bf ] ; 2 uses
  %.sroa.09.0.i.i.i.ph = phi i16 [ %i.gj, %bb.bg ], [ %i.gg, %bb.bf ] ; 2 uses
  %.sroa.07.0.i.i.i.ph = phi i64 [ %i.gm, %bb.bg ], [ 0, %bb.bf ] ; 2 uses
  %.sroa.0.0.i.i.i.ph = phi i64 [ %i.go, %bb.bg ], [ %.sroa.01.0.i.i.ph.mux, %bb.bf ] ; 2 uses
  %i.gh = icmp ult i64 %.sroa.0.0.i.i.i.ph, %i.gf ; 2 uses
  %.not202.not = xor i1 %.not202, true
  %brmerge227 = or i1 %i.gh, %.not202.not
  %.sroa.0.0.i.i.i.ph.mux = select i1 %i.gh, i64 %.sroa.0.0.i.i.i.ph, i64 0 ; 2 uses
  br i1 %brmerge227, label %.loopexit198, label %infloop226

.loopexit198:                                     ; preds = %.outer
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %.sroa.0.0.i.i.i.ph.mux ; 4 uses
  %i.gj = load i16, ptr %i.gi, align 2, !noalias !223, !noundef !4 ; 2 uses
  %i.gk = icmp eq i16 %i.gj, -1
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gi, i64 2 ; 3 uses
  br i1 %i.gk, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %.loopexit198
  %i.gm = add i64 %.sroa.07.0.i.i.i.ph, 1
  %i.gn = load i16, ptr %i.gl, align 2, !noalias !223, !noundef !4
  store i16 %.sroa.09.0.i.i.i.ph, ptr %i.gi, align 2, !noalias !223
  store i16 %.sroa.6.0.i.i.i.ph, ptr %i.gl, align 2, !noalias !223
  %i.go = add nuw i64 %.sroa.0.0.i.i.i.ph.mux, 1
  br label %.outer

bb.bh:                                            ; preds = %.loopexit198
  store i16 %.sroa.09.0.i.i.i.ph, ptr %i.gi, align 2, !noalias !223
  store i16 %.sroa.6.0.i.i.i.ph, ptr %i.gl, align 2, !noalias !223
  %i.gp = icmp ugt i64 %.sroa.07.0.i.i.i.ph, 127
  %or.cond.i.i.i = select i1 %.sroa.016.0.i.i, i1 true, i1 %i.gp
  %i.gq = load i64, ptr %1, align 8, !range !180, !alias.scope !217, !noalias !220
  %i.gr = icmp eq i64 %i.gq, 0
  %or.cond3.i.i.i = select i1 %or.cond.i.i.i, i1 %i.gr, i1 false
  br i1 %or.cond3.i.i.i, label %bb.bi, label %bb.dv

bb.bi:                                            ; preds = %bb.bh
  store i64 1, ptr %1, align 8, !alias.scope !217, !noalias !220
  br label %bb.dv

bb.bj:                                            ; preds = %bb.o
  %i.gs = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECsiWMK64dCVjf_20pingora_header_serde.exit.i.i: ; preds = %bb.o
  %i.gt = load ptr, ptr %i.h, align 8, !alias.scope !224, !noalias !79, !noundef !4 ; 2 uses
  %i.gu = icmp eq ptr %i.gt, null
  br i1 %i.gu, label %bb.du, label %bb.bk

bb.bk:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECsiWMK64dCVjf_20pingora_header_serde.exit.i.i
  %i.gv = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.gw = load ptr, ptr %i.gv, align 8, !alias.scope !229, !noalias !79, !noundef !4
  %i.gx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.gy = load ptr, ptr %i.gx, align 8, !alias.scope !229, !noalias !79, !noundef !4
  %i.gz = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ha = load i64, ptr %i.gz, align 8, !alias.scope !229, !noalias !79, !noundef !4
  br label %.invoke252.i

bb.bl:                                            ; preds = %bb.aj, %bb.m
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  %i.hb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 32
  %i.hc = load ptr, ptr %i.hb, align 8, !noalias !238, !nonnull !4, !noundef !4
  invoke void %i.hc(ptr noundef %.sroa.718.sroa.6.0.copyload, ptr noundef %.sroa.718.sroa.0.0.copyload, i64 noundef %.sroa.718.sroa.5.0.copyload)
          to label %.thread.i.i unwind label %bb.bm, !noalias !66, !inline_history !75

bb.bm:                                            ; preds = %bb.bn, %bb.bl
  %i.hd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !66
  unreachable

.thread.i.i:                                      ; preds = %bb.bl, %bb.bj, %bb.ar, %bb.an, %.body.i.i
  %.pn128.i.i = phi { ptr, i32 } [ %i.ef, %bb.an ], [ %lpad.thr_comm.split-lp136.i.i, %.body.i.i ], [ %i.es, %bb.ar ], [ %i.gs, %bb.bj ], [ %lpad.thr_comm.i.i, %bb.bl ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !245)
  call void @llvm.experimental.noalias.scope.decl(metadata !248)
  %i.he = load ptr, ptr %i.h, align 8, !alias.scope !251, !noalias !79, !noundef !4 ; 2 uses
  %i.hf = icmp eq ptr %i.he, null
  br i1 %i.hf, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECsiWMK64dCVjf_20pingora_header_serde.exit.i, label %bb.bn

bb.bn:                                            ; preds = %.thread.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !252)
  call void @llvm.experimental.noalias.scope.decl(metadata !255)
  call void @llvm.experimental.noalias.scope.decl(metadata !258)
  call void @llvm.experimental.noalias.scope.decl(metadata !261)
  %i.hg = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.hh = load ptr, ptr %i.hg, align 8, !alias.scope !264, !noalias !79, !noundef !4
  %i.hi = getelementptr inbounds nuw i8, ptr %i.he, i64 32
  %i.hj = load ptr, ptr %i.hi, align 8, !noalias !265, !nonnull !4, !noundef !4
  %i.hk = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.hl = load ptr, ptr %i.hk, align 8, !alias.scope !264, !noalias !79, !noundef !4
  %i.hm = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.hn = load i64, ptr %i.hm, align 8, !alias.scope !264, !noalias !79, !noundef !4
  invoke void %i.hj(ptr noundef %i.hh, ptr noundef %i.hl, i64 noundef %i.hn)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECsiWMK64dCVjf_20pingora_header_serde.exit.i unwind label %bb.bm, !noalias !66, !inline_history !118

bb.bo:                                            ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !52
  %i.ho = load ptr, ptr %.sroa.015.0.copyload.i, align 8, !noalias !56, !nonnull !4, !noundef !4
  %i.hp = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.hq = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !52, !noundef !4
  %i.hr = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.hs = load i64, ptr %i.hr, align 8, !noalias !52, !noundef !4
  invoke void %i.ho(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.g, ptr noundef nonnull align 8 %i.hp, ptr noundef %i.hq, i64 noundef %i.hs)
          to label %bb.ds unwind label %.body.thread149.i, !noalias !56

bb.bp:                                            ; preds = %bb.l
  %i.ht = load i8, ptr %.sroa.4.0..sroa_idx.i, align 8, !range !80, !noalias !52, !noundef !4
  br label %bb.bq

bb.bq:                                            ; preds = %bb.ds, %bb.bp
  %.sroa.521.0.i = phi i8 [ %.sroa.429.0.copyload.i, %bb.ds ], [ %i.ht, %bb.bp ] ; 2 uses
  %.sroa.019.0.i = phi ptr [ %.sroa.028.0.copyload.i, %bb.ds ], [ null, %bb.bp ] ; 12 uses
  store ptr %.sroa.019.0.i, ptr %i.i, align 8, !noalias !52
  %.sroa.521.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  store i8 %.sroa.521.0.i, ptr %.sroa.521.0..sroa_idx.i, align 8, !noalias !52
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.6.i, i64 23, i1 false), !noalias !52
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  %.sroa.0.0.copyload.i = load ptr, ptr %i.m, align 8, !noalias !52 ; 16 uses
  %.sroa.18.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.18.0.copyload.i = load ptr, ptr %.sroa.18.0..sroa_idx.i, align 8, !noalias !52 ; 10 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !266)
  call void @llvm.experimental.noalias.scope.decl(metadata !269)
  %i.hu = invoke noundef zeroext i1 @_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapINtB5_9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameE15try_reserve_oneCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) dereferenceable_or_null(96) %i.ac)
          to label %bb.br unwind label %bb.dp, !noalias !271

.body.i66.i:                                      ; preds = %bb.cy
  %lpad.thr_comm.split-lp129.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i43.i

bb.br:                                            ; preds = %bb.bq
  br i1 %i.hu, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i) ]
  %i.hv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 32
  %i.hw = load ptr, ptr %i.hv, align 8, !noalias !273, !nonnull !4, !noundef !4
  invoke void %i.hw(ptr noundef %.sroa.18.0.copyload.i, ptr noundef nonnull %i.af, i64 noundef %i.ah)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECsiWMK64dCVjf_20pingora_header_serde.exit.i.i unwind label %bb.dn, !noalias !271, !inline_history !280

bb.bt:                                            ; preds = %bb.br
  %i.hx = call fastcc noundef i16 @_RINvNtNtCs84JG9zk80ZV_4http6header3map15hash_elem_usingNtNtB4_4name10HeaderNameECsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) dereferenceable_or_null(96) %i.ac, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.i), !noalias !281 ; 6 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.hz = load i16, ptr %i.hy, align 8, !alias.scope !282, !noalias !283, !noundef !4 ; 3 uses
  %i.ia = and i16 %i.hz, %i.hx
  %i.ib = zext nneg i16 %i.ia to i64
  %i.ic = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 3 uses
  %i.id = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 3 uses
  %i.ie = load i64, ptr %i.id, align 8, !alias.scope !282, !noalias !283, !noundef !4 ; 2 uses
  %i.if = load ptr, ptr %i.ic, align 8, !alias.scope !282, !noalias !283, !nonnull !4
  %i.ig = zext i16 %i.hz to i64
  %i.ih = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 3 uses
  %i.ii = load i64, ptr %i.ih, align 8, !alias.scope !282, !noalias !283 ; 14 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 3 uses
  %i.ik = load ptr, ptr %i.ij, align 8, !alias.scope !282, !noalias !283, !nonnull !4 ; 3 uses
  %i.il = icmp eq ptr %.sroa.019.0.i, null        ; 7 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.in = load i64, ptr %i.im, align 8, !alias.scope !269, !noalias !284 ; 9 uses
  %i.io = load ptr, ptr %.sroa.521.0..sroa_idx.i, align 8, !alias.scope !269, !noalias !284 ; 8 uses
  %.not199 = icmp eq i64 %i.ie, 0
  br label %.outer175

.outer175:                                        ; preds = %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i51.i, %bb.bt
  %.sroa.09.0.i46.i.ph = phi i64 [ %i.ka, %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i51.i ], [ 0, %bb.bt ] ; 3 uses
  %.sroa.01.0.i47.i.ph = phi i64 [ %i.kb, %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i51.i ], [ %i.ib, %bb.bt ] ; 2 uses
  %i.ip = icmp ult i64 %.sroa.01.0.i47.i.ph, %i.ie ; 2 uses
  %.not199.not = xor i1 %.not199, true
  %brmerge229 = or i1 %i.ip, %.not199.not
  %.sroa.01.0.i47.i.ph.mux = select i1 %i.ip, i64 %.sroa.01.0.i47.i.ph, i64 0 ; 7 uses
  br i1 %brmerge229, label %.loopexit, label %infloop228

.loopexit:                                        ; preds = %.outer175
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %.sroa.01.0.i47.i.ph.mux ; 2 uses
  %i.ir = load i16, ptr %i.iq, align 2, !noalias !271, !noundef !4 ; 2 uses
  %.not.i50.i = icmp eq i16 %i.ir, -1
  br i1 %.not.i50.i, label %bb.bw, label %bb.bv

bb.bu:                                            ; preds = %bb.cn
  unreachable

bb.bv:                                            ; preds = %.loopexit
  %i.is = zext i16 %i.ir to i64                   ; 6 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.iq, i64 2
  %i.iu = load i16, ptr %i.it, align 2, !noalias !271, !noundef !4 ; 2 uses
  %i.iv = and i16 %i.iu, %i.hz
  %i.iw = zext i16 %i.iv to i64
  %i.ix = sub i64 %.sroa.01.0.i47.i.ph.mux, %i.iw
  %i.iy = and i64 %i.ix, %i.ig
  %i.iz = icmp samesign ult i64 %i.iy, %.sroa.09.0.i46.i.ph
  br i1 %i.iz, label %bb.da, label %bb.ci

bb.bw:                                            ; preds = %.loopexit
  %i.ja = icmp ult i64 %i.ii, 96076792050570582
  call void @llvm.assume(i1 %i.ja)
  %.sroa.695.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sroa.695.0.copyload.i.i = load ptr, ptr %.sroa.695.0..sroa_idx.i.i, align 8, !alias.scope !269, !noalias !284 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !285)
  %i.jb = icmp samesign ugt i64 %i.ii, 32767
  br i1 %i.jb, label %bb.cb, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.jc = getelementptr inbounds nuw i8, ptr %., i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !288
  %i.jd = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store i16 %i.hx, ptr %i.jd, align 8, !noalias !288
  %i.je = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store ptr %.sroa.019.0.i, ptr %i.je, align 8, !noalias !291
  %.sroa.680.0..sroa_idx81.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store ptr %i.io, ptr %.sroa.680.0..sroa_idx81.i.i, align 8, !noalias !291
  %.sroa.884.0..sroa_idx85.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store i64 %i.in, ptr %.sroa.884.0..sroa_idx85.i.i, align 8, !noalias !291
  %.sroa.1088.0..sroa_idx89.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store ptr %.sroa.695.0.copyload.i.i, ptr %.sroa.1088.0..sroa_idx89.i.i, align 8, !noalias !291
  %i.jf = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %.sroa.0.0.copyload.i, ptr %i.jf, align 8, !noalias !292
  %.sroa.598.0..sroa_idx99.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %i.af, ptr %.sroa.598.0..sroa_idx99.i.i, align 8, !noalias !292
  %.sroa.6101.0..sroa_idx102.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 %i.ah, ptr %.sroa.6101.0..sroa_idx102.i.i, align 8, !noalias !292
  %.sroa.7104.0..sroa_idx105.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store ptr %.sroa.18.0.copyload.i, ptr %.sroa.7104.0..sroa_idx105.i.i, align 8, !noalias !292
  store i64 0, ptr %i.c, align 8, !noalias !288
  %i.jg = load i64, ptr %i.jc, align 8, !range !9, !alias.scope !293, !noalias !296, !noundef !4
  %i.jh = icmp eq i64 %i.ii, %i.jg
  br i1 %i.jh, label %bb.by, label %bb.cf

bb.by:                                            ; preds = %bb.bx
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEE8grow_oneB1y_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.jc)
          to label %._crit_edge165.i.i unwind label %bb.bz, !noalias !298

._crit_edge165.i.i:                               ; preds = %bb.by
  %.pre166.i.i = load ptr, ptr %i.ij, align 8, !alias.scope !293, !noalias !296
  br label %bb.cf

bb.bz:                                            ; preds = %bb.by
  %i.ji = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEECsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(96) %i.c) #23
          to label %.body.thread.i unwind label %bb.ca, !noalias !299

bb.ca:                                            ; preds = %bb.bz
  %i.jj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !298
  unreachable

bb.cb:                                            ; preds = %bb.bw
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i) ]
  %i.jk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 32
  %i.jl = load ptr, ptr %i.jk, align 8, !noalias !300, !nonnull !4, !noundef !4
  invoke void %i.jl(ptr noundef %.sroa.18.0.copyload.i, ptr noundef nonnull %i.af, i64 noundef %i.ah)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECsiWMK64dCVjf_20pingora_header_serde.exit.i.i.i unwind label %bb.cc, !noalias !307, !inline_history !280

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECsiWMK64dCVjf_20pingora_header_serde.exit.i.i.i: ; preds = %bb.cb
  br i1 %i.il, label %bb.dt, label %.invoke.i

bb.cc:                                            ; preds = %bb.cb
  %i.jm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.il, label %.body.thread.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.jn = getelementptr inbounds nuw i8, ptr %.sroa.019.0.i, i64 32
  %i.jo = load ptr, ptr %i.jn, align 8, !noalias !308, !nonnull !4, !noundef !4
  invoke void %i.jo(ptr noundef %.sroa.695.0.copyload.i.i, ptr noundef %i.io, i64 noundef %i.in)
          to label %.body.thread.i unwind label %bb.ce, !noalias !307, !inline_history !118

bb.ce:                                            ; preds = %bb.cd
  %i.jp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !307
  unreachable

bb.cf:                                            ; preds = %._crit_edge165.i.i, %bb.bx
  %i.jq = phi ptr [ %.pre166.i.i, %._crit_edge165.i.i ], [ %i.ik, %bb.bx ]
  %i.jr = getelementptr inbounds nuw [96 x i8], ptr %i.jq, i64 %i.ii
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.jr, ptr noundef nonnull readonly align 8 dereferenceable(96) %i.c, i64 96, i1 false), !noalias !299
  %i.js = add nuw nsw i64 %i.ii, 1
  store i64 %i.js, ptr %i.ih, align 8, !alias.scope !293, !noalias !296
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !288
  %i.jt = load i64, ptr %i.id, align 8, !alias.scope !282, !noalias !283, !noundef !4 ; 2 uses
  %i.ju = icmp ult i64 %.sroa.01.0.i47.i.ph.mux, %i.jt
  br i1 %i.ju, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.jv = load ptr, ptr %i.ic, align 8, !alias.scope !282, !noalias !283, !nonnull !4, !noundef !4
  %i.jw = trunc nuw nsw i64 %i.ii to i16
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %.sroa.01.0.i47.i.ph.mux ; 2 uses
  store i16 %i.jw, ptr %i.jx, align 2, !noalias !271
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 2
  store i16 %i.hx, ptr %i.jy, align 2, !noalias !271
  br label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultbNtNtNtCs84JG9zk80ZV_4http6header3map14MaxSizeReachedE6expectCsiWMK64dCVjf_20pingora_header_serde.exit.i

bb.ch:                                            ; preds = %bb.cf
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.01.0.i47.i.ph.mux, i64 noundef %i.jt, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #22
          to label %.noexc99.i unwind label %.body.thread149.i, !noalias !56

.noexc99.i:                                       ; preds = %bb.ch
  unreachable

bb.ci:                                            ; preds = %bb.bv
  %i.jz = icmp eq i16 %i.iu, %i.hx
  br i1 %i.jz, label %bb.cj, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i51.i

_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i51.i: ; preds = %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i52.i, %.split.i68.i, %bb.cm, %bb.ck, %bb.ci
  %i.ka = add nuw nsw i64 %.sroa.09.0.i46.i.ph, 1
  %i.kb = add i64 %.sroa.01.0.i47.i.ph.mux, 1
  br label %.outer175

bb.cj:                                            ; preds = %bb.ci
  %i.kc = icmp ugt i64 %i.ii, %i.is
  br i1 %i.kc, label %bb.ck, label %bb.cn

bb.ck:                                            ; preds = %bb.cj
  %i.kd = getelementptr inbounds nuw [96 x i8], ptr %i.ik, i64 %i.is ; 10 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 56
  %i.kf = load ptr, ptr %i.ke, align 8, !noalias !271, !noundef !4
  %i.kg = icmp ne ptr %i.kf, null                 ; 2 uses
  %i.kh = xor i1 %i.il, %i.kg
  br i1 %i.kh, label %bb.cl, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i51.i

bb.cl:                                            ; preds = %bb.ck
  br i1 %i.kg, label %bb.cm, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i52.i

bb.cm:                                            ; preds = %bb.cl
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.019.0.i) ]
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kd, i64 72
  %i.kj = load i64, ptr %i.ki, align 8, !noalias !271, !noundef !4
  %i.kk = icmp eq i64 %i.kj, %i.in
  br i1 %i.kk, label %.split.i68.i, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i51.i

.split.i68.i:                                     ; preds = %bb.cm
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kd, i64 64
  %i.km = load ptr, ptr %i.kl, align 8, !noalias !271, !noundef !4
  %bcmp.i.i.i.i.i69.i = call i32 @bcmp(ptr %i.km, ptr %i.io, i64 %i.in), !noalias !271
  %i.kn = icmp eq i32 %bcmp.i.i.i.i.i69.i, 0
  br i1 %i.kn, label %bb.co, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i51.i

bb.cn:                                            ; preds = %bb.cj
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.is, i64 noundef %i.ii, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #22
          to label %bb.bu unwind label %bb.dp, !noalias !271

_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i52.i: ; preds = %bb.cl
  call void @llvm.assume(i1 %i.il)
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kd, i64 64
  %i.kp = load i8, ptr %i.ko, align 8, !range !80, !noalias !271, !noundef !4
  %i.kq = icmp eq i8 %i.kp, %.sroa.521.0.i
  br i1 %i.kq, label %bb.co, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i51.i

bb.co:                                            ; preds = %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i52.i, %.split.i68.i
  %i.kr = getelementptr inbounds nuw i8, ptr %., i64 48 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !321)
  call void @llvm.experimental.noalias.scope.decl(metadata !324)
  %i.ks = load i64, ptr %i.kd, align 8, !range !57, !alias.scope !321, !noalias !326, !noundef !4
  %i.kt = trunc nuw i64 %i.ks to i1
  br i1 %i.kt, label %bb.cp, label %bb.ct

bb.cp:                                            ; preds = %bb.co
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kd, i64 16 ; 2 uses
  %i.kv = load i64, ptr %i.ku, align 8, !alias.scope !321, !noalias !326, !noundef !4 ; 4 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %., i64 64 ; 2 uses
  %i.kx = load i64, ptr %i.kw, align 8, !alias.scope !328, !noalias !329, !noundef !4 ; 7 uses
  %i.ky = icmp ult i64 %i.kx, 144115188075855872
  call void @llvm.assume(i1 %i.ky)
  %i.kz = load i64, ptr %i.kr, align 8, !range !9, !alias.scope !330, !noalias !333, !noundef !4
  %i.la = icmp eq i64 %i.kx, %i.kz
  br i1 %i.la, label %bb.cq, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEE8push_mutCsiWMK64dCVjf_20pingora_header_serde.exit.i.i.i

bb.cq:                                            ; preds = %bb.cp
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEE8grow_oneCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.kr)
          to label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEE8push_mutCsiWMK64dCVjf_20pingora_header_serde.exit.i.i.i unwind label %bb.cr, !noalias !335

bb.cr:                                            ; preds = %bb.cq
  %i.lb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i) ]
  %i.lc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 32
  %i.ld = load ptr, ptr %i.lc, align 8, !noalias !336, !nonnull !4, !noundef !4
  invoke void %i.ld(ptr noundef %.sroa.18.0.copyload.i, ptr noundef nonnull %i.af, i64 noundef %i.ah)
          to label %.thread.i43.i unwind label %bb.cs, !noalias !335, !inline_history !345

bb.cs:                                            ; preds = %bb.cr
  %i.le = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !335
  unreachable

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEE8push_mutCsiWMK64dCVjf_20pingora_header_serde.exit.i.i.i: ; preds = %bb.cq, %bb.cp
  %i.lf = getelementptr inbounds nuw i8, ptr %., i64 56 ; 2 uses
  %i.lg = load ptr, ptr %i.lf, align 8, !alias.scope !330, !noalias !333, !nonnull !4, !noundef !4
  %i.lh = getelementptr inbounds nuw [64 x i8], ptr %i.lg, i64 %i.kx ; 8 uses
  store i64 1, ptr %i.lh, align 8, !noalias !346
  %.sroa.4.0..sroa_idx.i.i58.i = getelementptr inbounds nuw i8, ptr %i.lh, i64 8
  store i64 %i.kv, ptr %.sroa.4.0..sroa_idx.i.i58.i, align 8, !noalias !346
  %.sroa.5.0..sroa_idx10.i.i59.i = getelementptr inbounds nuw i8, ptr %i.lh, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx10.i.i59.i, align 8, !noalias !346
  %.sroa.6.0..sroa_idx.i.i60.i = getelementptr inbounds nuw i8, ptr %i.lh, i64 24
  store i64 %i.is, ptr %.sroa.6.0..sroa_idx.i.i60.i, align 8, !noalias !346
  %.sroa.7.0..sroa_idx.i.i61.i = getelementptr inbounds nuw i8, ptr %i.lh, i64 32
  store ptr %.sroa.0.0.copyload.i, ptr %.sroa.7.0..sroa_idx.i.i61.i, align 8, !noalias !346
  %.sroa.9.0..sroa_idx.i.i62.i = getelementptr inbounds nuw i8, ptr %i.lh, i64 40
  store ptr %i.af, ptr %.sroa.9.0..sroa_idx.i.i62.i, align 8, !noalias !346
  %.sroa.10.0..sroa_idx.i.i63.i = getelementptr inbounds nuw i8, ptr %i.lh, i64 48
  store i64 %i.ah, ptr %.sroa.10.0..sroa_idx.i.i63.i, align 8, !noalias !346
  %.sroa.11.0..sroa_idx.i.i64.i = getelementptr inbounds nuw i8, ptr %i.lh, i64 56
  store ptr %.sroa.18.0.copyload.i, ptr %.sroa.11.0..sroa_idx.i.i64.i, align 8, !noalias !346
  %i.li = add nuw nsw i64 %i.kx, 1                ; 2 uses
  store i64 %i.li, ptr %i.kw, align 8, !alias.scope !330, !noalias !333
  %.not.i.i65.i = icmp ugt i64 %i.kv, %i.kx
  br i1 %.not.i.i65.i, label %bb.cy, label %bb.cx

bb.ct:                                            ; preds = %bb.co
  %i.lj = getelementptr inbounds nuw i8, ptr %., i64 64 ; 2 uses
  %i.lk = load i64, ptr %i.lj, align 8, !alias.scope !328, !noalias !329, !noundef !4 ; 6 uses
  %i.ll = icmp ult i64 %i.lk, 144115188075855872
  call void @llvm.assume(i1 %i.ll)
  %i.lm = load i64, ptr %i.kr, align 8, !range !9, !alias.scope !347, !noalias !350, !noundef !4
  %i.ln = icmp eq i64 %i.lk, %i.lm
  br i1 %i.ln, label %bb.cu, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEE8push_mutCsiWMK64dCVjf_20pingora_header_serde.exit9.i.i.i

bb.cu:                                            ; preds = %bb.ct
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEE8grow_oneCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.kr)
          to label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEE8push_mutCsiWMK64dCVjf_20pingora_header_serde.exit9.i.i.i unwind label %bb.cv, !noalias !352

bb.cv:                                            ; preds = %bb.cu
  %i.lo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i) ]
  %i.lp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 32
  %i.lq = load ptr, ptr %i.lp, align 8, !noalias !353, !nonnull !4, !noundef !4
  invoke void %i.lq(ptr noundef %.sroa.18.0.copyload.i, ptr noundef nonnull %i.af, i64 noundef %i.ah)
          to label %.thread.i43.i unwind label %bb.cw, !noalias !352, !inline_history !345

bb.cw:                                            ; preds = %bb.cv
  %i.lr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !352
  unreachable

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEE8push_mutCsiWMK64dCVjf_20pingora_header_serde.exit9.i.i.i: ; preds = %bb.cu, %bb.ct
  %i.ls = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.lt = load ptr, ptr %i.ls, align 8, !alias.scope !347, !noalias !350, !nonnull !4, !noundef !4
  %i.lu = getelementptr inbounds nuw [64 x i8], ptr %i.lt, i64 %i.lk ; 8 uses
  store i64 0, ptr %i.lu, align 8, !noalias !346
  %.sroa.416.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.lu, i64 8
  store i64 %i.is, ptr %.sroa.416.0..sroa_idx.i.i.i, align 8, !noalias !346
  %.sroa.517.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.lu, i64 16
  store i64 0, ptr %.sroa.517.0..sroa_idx.i.i.i, align 8, !noalias !346
  %.sroa.618.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.lu, i64 24
  store i64 %i.is, ptr %.sroa.618.0..sroa_idx.i.i.i, align 8, !noalias !346
  %.sroa.719.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.lu, i64 32
  store ptr %.sroa.0.0.copyload.i, ptr %.sroa.719.0..sroa_idx.i.i.i, align 8, !noalias !346
  %.sroa.920.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.lu, i64 40
  store ptr %i.af, ptr %.sroa.920.0..sroa_idx.i.i.i, align 8, !noalias !346
  %.sroa.1021.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.lu, i64 48
  store i64 %i.ah, ptr %.sroa.1021.0..sroa_idx.i.i.i, align 8, !noalias !346
  %.sroa.1122.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.lu, i64 56
  store ptr %.sroa.18.0.copyload.i, ptr %.sroa.1122.0..sroa_idx.i.i.i, align 8, !noalias !346
  %i.lv = add nuw nsw i64 %i.lk, 1
  store i64 %i.lv, ptr %i.lj, align 8, !alias.scope !347, !noalias !350
  store i64 1, ptr %i.kd, align 8, !alias.scope !321, !noalias !326
  %.sroa.42.0..sroa_idx.i.i55.i = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  store i64 %i.lk, ptr %.sroa.42.0..sroa_idx.i.i55.i, align 8, !alias.scope !321, !noalias !326
  %.sroa.53.0..sroa_idx.i.i56.i = getelementptr inbounds nuw i8, ptr %i.kd, i64 16
  store i64 %i.lk, ptr %.sroa.53.0..sroa_idx.i.i56.i, align 8, !alias.scope !321, !noalias !326
  br label %_RINvNtNtCs84JG9zk80ZV_4http6header3map12append_valueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECsiWMK64dCVjf_20pingora_header_serde.exit.i.i

bb.cx:                                            ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEE8push_mutCsiWMK64dCVjf_20pingora_header_serde.exit.i.i.i
  %i.lw = load ptr, ptr %i.lf, align 8, !alias.scope !328, !noalias !329, !nonnull !4, !noundef !4
  %i.lx = getelementptr inbounds nuw [64 x i8], ptr %i.lw, i64 %i.kv ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 16
  store i64 1, ptr %i.ly, align 8, !noalias !346
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lx, i64 24
  store i64 %i.kx, ptr %i.lz, align 8, !noalias !346
  store i64 1, ptr %i.kd, align 8, !alias.scope !321, !noalias !326
  store i64 %i.kx, ptr %i.ku, align 8, !alias.scope !321, !noalias !326
  br label %_RINvNtNtCs84JG9zk80ZV_4http6header3map12append_valueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECsiWMK64dCVjf_20pingora_header_serde.exit.i.i

bb.cy:                                            ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEE8push_mutCsiWMK64dCVjf_20pingora_header_serde.exit.i.i.i
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.kv, i64 noundef %i.li, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #22
          to label %.noexc35.i67.i unwind label %.body.i66.i, !noalias !271

.noexc35.i67.i:                                   ; preds = %bb.cy
  unreachable

_RINvNtNtCs84JG9zk80ZV_4http6header3map12append_valueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECsiWMK64dCVjf_20pingora_header_serde.exit.i.i: ; preds = %bb.cx, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEE8push_mutCsiWMK64dCVjf_20pingora_header_serde.exit9.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !362)
  call void @llvm.experimental.noalias.scope.decl(metadata !365)
  br i1 %i.il, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultbNtNtNtCs84JG9zk80ZV_4http6header3map14MaxSizeReachedE6expectCsiWMK64dCVjf_20pingora_header_serde.exit.i, label %bb.cz

bb.cz:                                            ; preds = %_RINvNtNtCs84JG9zk80ZV_4http6header3map12append_valueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECsiWMK64dCVjf_20pingora_header_serde.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !368)
  call void @llvm.experimental.noalias.scope.decl(metadata !371)
  call void @llvm.experimental.noalias.scope.decl(metadata !374)
  call void @llvm.experimental.noalias.scope.decl(metadata !377)
  %i.ma = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.mb = load ptr, ptr %i.ma, align 8, !alias.scope !380, !noalias !284, !noundef !4
  %i.mc = getelementptr inbounds nuw i8, ptr %.sroa.019.0.i, i64 32
  %i.md = load ptr, ptr %i.mc, align 8, !noalias !381, !nonnull !4, !noundef !4
  invoke void %i.md(ptr noundef %i.mb, ptr noundef %i.io, i64 noundef %i.in)
          to label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultbNtNtNtCs84JG9zk80ZV_4http6header3map14MaxSizeReachedE6expectCsiWMK64dCVjf_20pingora_header_serde.exit.i unwind label %.body.thread149.i, !noalias !56, !inline_history !382

bb.da:                                            ; preds = %bb.bv
  %i.me = icmp samesign ugt i64 %.sroa.09.0.i46.i.ph, 511
  %i.mf = load i64, ptr %i.ac, align 8, !range !180, !alias.scope !282, !noalias !283
  %i.mg = icmp ne i64 %i.mf, 2
  %.sroa.016.0.i70.i = select i1 %i.me, i1 %i.mg, i1 false
  %.sroa.663.0..sroa_idx.i71.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sroa.663.0.copyload.i72.i = load ptr, ptr %.sroa.663.0..sroa_idx.i71.i, align 8, !alias.scope !269, !noalias !284 ; 3 uses
  %i.mh = icmp ult i64 %i.ii, 96076792050570582
  call void @llvm.assume(i1 %i.mh)
  call void @llvm.experimental.noalias.scope.decl(metadata !383)
  %i.mi = icmp samesign ugt i64 %i.ii, 32767
  br i1 %i.mi, label %bb.df, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.mj = getelementptr inbounds nuw i8, ptr %., i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !386
  %i.mk = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store i16 %i.hx, ptr %i.mk, align 8, !noalias !386
  %i.ml = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr %.sroa.019.0.i, ptr %i.ml, align 8, !noalias !389
  %.sroa.6.0..sroa_idx53.i80.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store ptr %i.io, ptr %.sroa.6.0..sroa_idx53.i80.i, align 8, !noalias !389
  %.sroa.8.0..sroa_idx56.i81.i = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i64 %i.in, ptr %.sroa.8.0..sroa_idx56.i81.i, align 8, !noalias !389
end_hunk_0
begin_hunk_1_@_RINvNtNtCs84JG9zk80ZV_4http6header3map15hash_elem_usingNtNtB4_4name10HeaderNameECsiWMK64dCVjf_20pingora_header_serde:bb.a
  %i.aa = xor i64 %i.z, %i.x                      ; 3 uses
  %i.ab = tail call noundef i64 @llvm.fshl.i64(i64 %i.w, i64 %i.w, i64 16)
  %i.ac = xor i64 %i.ab, %i.y                     ; 3 uses
  %i.ad = tail call noundef i64 @llvm.fshl.i64(i64 %i.x, i64 %i.x, i64 32)
  %i.ae = add i64 %i.y, %i.aa                     ; 3 uses
  %i.af = add i64 %i.ac, %i.ad                    ; 2 uses
  %i.ag = tail call noundef i64 @llvm.fshl.i64(i64 %i.aa, i64 %i.aa, i64 17)
  %i.ah = xor i64 %i.ae, %i.ag                    ; 3 uses
  %i.ai = tail call noundef i64 @llvm.fshl.i64(i64 %i.ac, i64 %i.ac, i64 21)
  %i.aj = xor i64 %i.ai, %i.af                    ; 3 uses
  %i.ak = tail call noundef i64 @llvm.fshl.i64(i64 %i.ae, i64 %i.ae, i64 32)
  %i.al = xor i64 %i.af, %i.v
  %i.am = xor i64 %i.ak, 255
  %i.an = add i64 %i.al, %i.ah                    ; 3 uses
  %i.ao = add i64 %i.aj, %i.am                    ; 2 uses
  %i.ap = tail call noundef i64 @llvm.fshl.i64(i64 %i.ah, i64 %i.ah, i64 13)
  %i.aq = xor i64 %i.an, %i.ap                    ; 3 uses
  %i.ar = tail call noundef i64 @llvm.fshl.i64(i64 %i.aj, i64 %i.aj, i64 16)
  %i.as = xor i64 %i.ar, %i.ao                    ; 3 uses
  %i.at = tail call noundef i64 @llvm.fshl.i64(i64 %i.an, i64 %i.an, i64 32)
  %i.au = add i64 %i.aq, %i.ao                    ; 3 uses
  %i.av = add i64 %i.as, %i.at                    ; 2 uses
  %i.aw = tail call noundef i64 @llvm.fshl.i64(i64 %i.aq, i64 %i.aq, i64 17)
  %i.ax = xor i64 %i.au, %i.aw                    ; 3 uses
  %i.ay = tail call noundef i64 @llvm.fshl.i64(i64 %i.as, i64 %i.as, i64 21)
  %i.az = xor i64 %i.ay, %i.av                    ; 3 uses
  %i.ba = tail call noundef i64 @llvm.fshl.i64(i64 %i.au, i64 %i.au, i64 32)
  %i.bb = add i64 %i.ax, %i.av                    ; 3 uses
  %i.bc = add i64 %i.az, %i.ba                    ; 2 uses
  %i.bd = tail call noundef i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 13)
  %i.be = xor i64 %i.bd, %i.bb                    ; 3 uses
  %i.bf = tail call noundef i64 @llvm.fshl.i64(i64 %i.az, i64 %i.az, i64 16)
  %i.bg = xor i64 %i.bf, %i.bc                    ; 3 uses
  %i.bh = tail call noundef i64 @llvm.fshl.i64(i64 %i.bb, i64 %i.bb, i64 32)
  %i.bi = add i64 %i.be, %i.bc                    ; 3 uses
  %i.bj = add i64 %i.bg, %i.bh                    ; 2 uses
  %i.bk = tail call noundef i64 @llvm.fshl.i64(i64 %i.be, i64 %i.be, i64 17)
  %i.bl = xor i64 %i.bk, %i.bi                    ; 3 uses
  %i.bm = tail call noundef i64 @llvm.fshl.i64(i64 %i.bg, i64 %i.bg, i64 21)
  %i.bn = xor i64 %i.bm, %i.bj                    ; 2 uses
  %i.bo = tail call noundef i64 @llvm.fshl.i64(i64 %i.bi, i64 %i.bi, i64 32)
  %i.bp = add i64 %i.bl, %i.bj
  %i.bq = add i64 %i.bn, %i.bo                    ; 2 uses
  %i.br = tail call noundef i64 @llvm.fshl.i64(i64 %i.bl, i64 %i.bl, i64 13)
  %i.bs = xor i64 %i.br, %i.bp                    ; 2 uses
  %i.bt = shl i64 %i.bn, 16
  %i.bu = xor i64 %i.bt, %i.bq
  %i.bv = add i64 %i.bs, %i.bq                    ; 2 uses
  %i.bw = lshr i64 %i.bs, 47
  %i.bx = lshr i64 %i.bu, 43
  %i.by = lshr i64 %i.bv, 32
  %i.bz = xor i64 %i.bx, %i.bw
  %i.ca = xor i64 %i.bz, %i.by
  %i.cb = xor i64 %i.ca, %i.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvXsz_NtNtCs84JG9zk80ZV_4http6header4nameNtB6_10HeaderNameNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtB8_3map9FnvHasherECsiWMK64dCVjf_20pingora_header_serde.exit

bb.e:                                             ; preds = %bb.a
  %i.cc = load ptr, ptr %1, align 8, !noalias !747, !noundef !4 ; 2 uses
  %i.cd = icmp ne ptr %i.cc, null
  %i.ce = zext i1 %i.cd to i64
  %i.cf = xor i64 %i.ce, -3750763034362895579
  %i.cg = mul i64 %i.cf, 2232315406967589409      ; 4 uses
  %.not.i.i20 = icmp eq ptr %i.cc, null
  %i.ch = getelementptr i8, ptr %1, i64 8         ; 2 uses
  br i1 %.not.i.i20, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val.i.i21 = load ptr, ptr %i.ch, align 8, !noalias !747, !noundef !4 ; 3 uses
  %i.ci = getelementptr i8, ptr %1, i64 16
  %.val1.i.i22 = load i64, ptr %i.ci, align 8, !noalias !747, !noundef !4 ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.val.i.i21, i64 %.val1.i.i22
  %i.ck = icmp samesign eq i64 %.val1.i.i22, 0
  br i1 %i.ck, label %_RINvXsz_NtNtCs84JG9zk80ZV_4http6header4nameNtB6_10HeaderNameNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtB8_3map9FnvHasherECsiWMK64dCVjf_20pingora_header_serde.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.f
  %xtraiter = and i64 %.val1.i.i22, 7             ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.sroa.0.06.i.i.i.i.prol = phi i64 [ %i.cp, %.lr.ph.i.i.i.i.prol ], [ %i.cg, %.lr.ph.i.i.i.i.preheader ]
  %.sroa.03.05.i.i.i.i.prol = phi ptr [ %i.cl, %.lr.ph.i.i.i.i.prol ], [ %.val.i.i21, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i.prol, i64 1 ; 2 uses
  %i.cm = load i8, ptr %.sroa.03.05.i.i.i.i.prol, align 1, !alias.scope !752, !noalias !755, !noundef !4
  %i.cn = zext i8 %i.cm to i64
  %i.co = xor i64 %.sroa.0.06.i.i.i.i.prol, %i.cn
  %i.cp = mul i64 %i.co, 1099511628211            ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !759

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.preheader ], [ %i.cp, %.lr.ph.i.i.i.i.prol ]
  %.sroa.0.06.i.i.i.i.unr = phi i64 [ %i.cg, %.lr.ph.i.i.i.i.preheader ], [ %i.cp, %.lr.ph.i.i.i.i.prol ]
  %.sroa.03.05.i.i.i.i.unr = phi ptr [ %.val.i.i21, %.lr.ph.i.i.i.i.preheader ], [ %i.cl, %.lr.ph.i.i.i.i.prol ]
  %i.cq = icmp ult i64 %.val1.i.i22, 8
  br i1 %i.cq, label %_RINvXsz_NtNtCs84JG9zk80ZV_4http6header4nameNtB6_10HeaderNameNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtB8_3map9FnvHasherECsiWMK64dCVjf_20pingora_header_serde.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.sroa.0.06.i.i.i.i = phi i64 [ %i.ee, %.lr.ph.i.i.i.i ], [ %.sroa.0.06.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.sroa.03.05.i.i.i.i = phi ptr [ %i.ea, %.lr.ph.i.i.i.i ], [ %.sroa.03.05.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i, i64 1
  %i.cs = load i8, ptr %.sroa.03.05.i.i.i.i, align 1, !alias.scope !752, !noalias !755, !noundef !4
  %i.ct = zext i8 %i.cs to i64
  %i.cu = xor i64 %.sroa.0.06.i.i.i.i, %i.ct
  %i.cv = mul i64 %i.cu, 1099511628211
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i, i64 2
  %i.cx = load i8, ptr %i.cr, align 1, !alias.scope !752, !noalias !755, !noundef !4
  %i.cy = zext i8 %i.cx to i64
  %i.cz = xor i64 %i.cv, %i.cy
  %i.da = mul i64 %i.cz, 1099511628211
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i, i64 3
  %i.dc = load i8, ptr %i.cw, align 1, !alias.scope !752, !noalias !755, !noundef !4
  %i.dd = zext i8 %i.dc to i64
  %i.de = xor i64 %i.da, %i.dd
  %i.df = mul i64 %i.de, 1099511628211
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i, i64 4
  %i.dh = load i8, ptr %i.db, align 1, !alias.scope !752, !noalias !755, !noundef !4
  %i.di = zext i8 %i.dh to i64
  %i.dj = xor i64 %i.df, %i.di
  %i.dk = mul i64 %i.dj, 1099511628211
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i, i64 5
  %i.dm = load i8, ptr %i.dg, align 1, !alias.scope !752, !noalias !755, !noundef !4
  %i.dn = zext i8 %i.dm to i64
  %i.do = xor i64 %i.dk, %i.dn
  %i.dp = mul i64 %i.do, 1099511628211
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i, i64 6
  %i.dr = load i8, ptr %i.dl, align 1, !alias.scope !752, !noalias !755, !noundef !4
  %i.ds = zext i8 %i.dr to i64
  %i.dt = xor i64 %i.dp, %i.ds
  %i.du = mul i64 %i.dt, 1099511628211
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i, i64 7
  %i.dw = load i8, ptr %i.dq, align 1, !alias.scope !752, !noalias !755, !noundef !4
  %i.dx = zext i8 %i.dw to i64
  %i.dy = xor i64 %i.du, %i.dx
  %i.dz = mul i64 %i.dy, 1099511628211
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i, i64 8 ; 2 uses
  %i.eb = load i8, ptr %i.dv, align 1, !alias.scope !752, !noalias !755, !noundef !4
  %i.ec = zext i8 %i.eb to i64
  %i.ed = xor i64 %i.dz, %i.ec
  %i.ee = mul i64 %i.ed, 1099511628211            ; 2 uses
  %i.ef = icmp eq ptr %i.ea, %i.cj
  br i1 %i.ef, label %_RINvXsz_NtNtCs84JG9zk80ZV_4http6header4nameNtB6_10HeaderNameNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtB8_3map9FnvHasherECsiWMK64dCVjf_20pingora_header_serde.exit, label %.lr.ph.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.eg = load i8, ptr %i.ch, align 8, !range !80, !noalias !747, !noundef !4
  %i.eh = zext nneg i8 %i.eg to i64
  %i.ei = xor i64 %i.cg, %i.eh
  %i.ej = mul i64 %i.ei, 2232315406967589409
  br label %_RINvXsz_NtNtCs84JG9zk80ZV_4http6header4nameNtB6_10HeaderNameNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtB8_3map9FnvHasherECsiWMK64dCVjf_20pingora_header_serde.exit

_RINvXsz_NtNtCs84JG9zk80ZV_4http6header4nameNtB6_10HeaderNameNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtB8_3map9FnvHasherECsiWMK64dCVjf_20pingora_header_serde.exit: ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %bb.g, %bb.f, %_RINvXsz_NtNtCs84JG9zk80ZV_4http6header4nameNtB6_10HeaderNameNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECsiWMK64dCVjf_20pingora_header_serde.exit
  %.sroa.0.0 = phi i64 [ %i.cb, %_RINvXsz_NtNtCs84JG9zk80ZV_4http6header4nameNtB6_10HeaderNameNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECsiWMK64dCVjf_20pingora_header_serde.exit ], [ %i.ej, %bb.g ], [ %i.cg, %bb.f ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.prol.loopexit ], [ %i.ee, %.lr.ph.i.i.i.i ]
  %i.ek = trunc i64 %.sroa.0.0 to i16
  %i.el = and i16 %i.ek, 32767
  ret i16 %i.el
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtCs84JG9zk80ZV_4http6header3map4IterNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEIB1e_NtNtB1i_5value11HeaderValueEENCNCNvB1X_16case_header_iter00ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvB41_8for_each4callTRB1T_RB33_ENCINvB1X_17header_to_h1_wireINtNtCsexYYUdYSQU6_5alloc3vec3VechEE0E0ECsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(80) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [80 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.e, ptr noundef nonnull align 8 dereferenceable(80) %0, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !761
  store ptr %1, ptr %i.d, align 8, !noalias !768
  %i.f = call { ptr, ptr } @_RNvXsc_NtNtCs84JG9zk80ZV_4http6header3mapINtB5_4IterNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.e), !noalias !772 ; 2 uses
  %i.g = extractvalue { ptr, ptr } %i.f, 0        ; 2 uses
  %.not.i12.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i12.i.i.i, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtCs84JG9zk80ZV_4http6header3map4IterNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEIBX_NtNtB11_5value11HeaderValueEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTTRNtNtB11_4name10HeaderNameRB1C_ETB4h_RB2L_EETB4H_B4S_EuNCNCNvB1G_16case_header_iter00QNCINvNvB3e_8for_each4callB4Z_NCINvB1G_17header_to_h1_wireINtNtCsexYYUdYSQU6_5alloc3vec3VechEE0E0E0ECsiWMK64dCVjf_20pingora_header_serde.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldTTRNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameRNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameETBW_RNtNtB11_5value11HeaderValueEETB1K_B2U_EuNCNCNvB1P_16case_header_iter00QNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB3o_NCINvB1P_17header_to_h1_wireINtNtCsexYYUdYSQU6_5alloc3vec3VechEE0E0E0CsiWMK64dCVjf_20pingora_header_serde.exit.i.i.i, %.lr.ph.i.i.i
  %.pn.i.i.i = phi { ptr, ptr } [ %i.f, %.lr.ph.i.i.i ], [ %i.ai, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldTTRNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameRNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameETBW_RNtNtB11_5value11HeaderValueEETB1K_B2U_EuNCNCNvB1P_16case_header_iter00QNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB3o_NCINvB1P_17header_to_h1_wireINtNtCsexYYUdYSQU6_5alloc3vec3VechEE0E0E0CsiWMK64dCVjf_20pingora_header_serde.exit.i.i.i ]
  %i.i = phi ptr [ %i.g, %.lr.ph.i.i.i ], [ %i.aj, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldTTRNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameRNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameETBW_RNtNtB11_5value11HeaderValueEETB1K_B2U_EuNCNCNvB1P_16case_header_iter00QNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB3o_NCINvB1P_17header_to_h1_wireINtNtCsexYYUdYSQU6_5alloc3vec3VechEE0E0E0CsiWMK64dCVjf_20pingora_header_serde.exit.i.i.i ] ; 5 uses
  %i.j = extractvalue { ptr, ptr } %.pn.i.i.i, 1  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  %i.k = call { ptr, ptr } @_RNvXsc_NtNtCs84JG9zk80ZV_4http6header3mapINtB5_4IterNtNtB7_5value11HeaderValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.h), !noalias !772 ; 2 uses
  %i.l = extractvalue { ptr, ptr } %i.k, 0        ; 6 uses
  %.not13.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not13.i.i.i.i, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtCs84JG9zk80ZV_4http6header3map4IterNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEIBX_NtNtB11_5value11HeaderValueEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTTRNtNtB11_4name10HeaderNameRB1C_ETB4h_RB2L_EETB4H_B4S_EuNCNCNvB1G_16case_header_iter00QNCINvNvB3e_8for_each4callB4Z_NCINvB1G_17header_to_h1_wireINtNtCsexYYUdYSQU6_5alloc3vec3VechEE0E0E0ECsiWMK64dCVjf_20pingora_header_serde.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = extractvalue { ptr, ptr } %i.k, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !775
  store ptr %i.i, ptr %i.c, align 8, !noalias !775
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !775
  store ptr %i.l, ptr %i.b, align 8, !noalias !775
  %i.n = load ptr, ptr %i.i, align 8, !noalias !781, !noundef !4
  %i.o = icmp ne ptr %i.n, null                   ; 2 uses
  %i.p = load ptr, ptr %i.l, align 8, !noalias !781, !noundef !4 ; 2 uses
  %i.q = icmp eq ptr %i.p, null                   ; 2 uses
  %i.r = xor i1 %i.o, %i.q
  br i1 %i.r, label %bb.d, label %bb.g, !prof !5

bb.d:                                             ; preds = %bb.c
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.p) ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noalias !781, !noundef !4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.v = load i64, ptr %i.u, align 8, !noalias !781, !noundef !4
  %i.w = icmp eq i64 %i.t, %i.v
  br i1 %i.w, label %.split.i.i.i.i.i, label %bb.g, !prof !5

bb.f:                                             ; preds = %bb.d
  call void @llvm.assume(i1 %i.q)
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.y = load i8, ptr %i.x, align 8, !range !80, !noalias !781, !noundef !4
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.aa = load i8, ptr %i.z, align 8, !range !80, !noalias !781, !noundef !4
  %i.ab = icmp eq i8 %i.y, %i.aa
  br i1 %i.ab, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldTTRNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameRNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameETBW_RNtNtB11_5value11HeaderValueEETB1K_B2U_EuNCNCNvB1P_16case_header_iter00QNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB3o_NCINvB1P_17header_to_h1_wireINtNtCsexYYUdYSQU6_5alloc3vec3VechEE0E0E0CsiWMK64dCVjf_20pingora_header_serde.exit.i.i.i, label %bb.g, !prof !5

.split.i.i.i.i.i:                                 ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !noalias !781, !noundef !4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !781, !noundef !4
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr %i.af, ptr %i.ad, i64 %i.t), !noalias !781
  %i.ag = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.ag, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldTTRNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameRNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameETBW_RNtNtB11_5value11HeaderValueEETB1K_B2U_EuNCNCNvB1P_16case_header_iter00QNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB3o_NCINvB1P_17header_to_h1_wireINtNtCsexYYUdYSQU6_5alloc3vec3VechEE0E0E0CsiWMK64dCVjf_20pingora_header_serde.exit.i.i.i, label %bb.g, !prof !5

bb.g:                                             ; preds = %.split.i.i.i.i.i, %bb.f, %bb.e, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !775
  store ptr %i.c, ptr %i.a, align 8, !noalias !775
  %.sroa.43.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameNtB6_7Display3fmtCsiWMK64dCVjf_20pingora_header_serde, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i, align 8, !noalias !775
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.ah, align 8, !noalias !775
  %.sroa.47.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameNtB6_7Display3fmtCsiWMK64dCVjf_20pingora_header_serde, ptr %.sroa.47.0..sroa_idx.i.i.i.i.i, align 8, !noalias !775
  call void @_RINvNtCskKLDkoKarTP_4core9panicking13assert_failedRNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameBM_ECsiWMK64dCVjf_20pingora_header_serde(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noundef nonnull @9, ptr nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #20, !noalias !781
  unreachable

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldTTRNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameRNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameETBW_RNtNtB11_5value11HeaderValueEETB1K_B2U_EuNCNCNvB1P_16case_header_iter00QNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB3o_NCINvB1P_17header_to_h1_wireINtNtCsexYYUdYSQU6_5alloc3vec3VechEE0E0E0CsiWMK64dCVjf_20pingora_header_serde.exit.i.i.i: ; preds = %.split.i.i.i.i.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !775
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !775
  call void @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8for_each4callTRNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameRNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueENCINvB1U_17header_to_h1_wireINtNtCsexYYUdYSQU6_5alloc3vec3VechEE0E0INtB7_5FnMutTuB1O_EE8call_mutCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 %i.j, ptr noundef nonnull align 8 %i.m), !noalias !782
  %i.ai = call { ptr, ptr } @_RNvXsc_NtNtCs84JG9zk80ZV_4http6header3mapINtB5_4IterNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.e), !noalias !772 ; 2 uses
  %i.aj = extractvalue { ptr, ptr } %i.ai, 0      ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtCs84JG9zk80ZV_4http6header3map4IterNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEIBX_NtNtB11_5value11HeaderValueEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTTRNtNtB11_4name10HeaderNameRB1C_ETB4h_RB2L_EETB4H_B4S_EuNCNCNvB1G_16case_header_iter00QNCINvNvB3e_8for_each4callB4Z_NCINvB1G_17header_to_h1_wireINtNtCsexYYUdYSQU6_5alloc3vec3VechEE0E0E0ECsiWMK64dCVjf_20pingora_header_serde.exit, label %bb.b

_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtCs84JG9zk80ZV_4http6header3map4IterNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEIBX_NtNtB11_5value11HeaderValueEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTTRNtNtB11_4name10HeaderNameRB1C_ETB4h_RB2L_EETB4H_B4S_EuNCNCNvB1G_16case_header_iter00QNCINvNvB3e_8for_each4callB4Z_NCINvB1G_17header_to_h1_wireINtNtCsexYYUdYSQU6_5alloc3vec3VechEE0E0E0ECsiWMK64dCVjf_20pingora_header_serde.exit: ; preds = %bb.b, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldTTRNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameRNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameETBW_RNtNtB11_5value11HeaderValueEETB1K_B2U_EuNCNCNvB1P_16case_header_iter00QNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB3o_NCINvB1P_17header_to_h1_wireINtNtCsexYYUdYSQU6_5alloc3vec3VechEE0E0E0CsiWMK64dCVjf_20pingora_header_serde.exit.i.i.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !761
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtBc_6option8IntoIterRINtNtNtCs84JG9zk80ZV_4http6header3map9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEENCNvB2b_16case_header_iter0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvMsg_NtB8_7flattenINtB4u_13FlattenCompatppE9iter_fold7flattenIBO_INtNtB8_3zip3ZipINtB1p_4IterB27_EIB5J_NtNtB1r_5value11HeaderValueEENCNCB3f_00EuNCINvNvXsi_B4u_B4H_B3F_4fold7flattenB5o_uNCINvNvB3F_8for_each4callTRB27_RB64_ENCINvB2b_17header_to_h1_wireINtNtCsexYYUdYSQU6_5alloc3vec3VechEE0E0E0E0ECsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(96) %1, ptr noalias nofree noundef align 8 dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !783)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !786)
  %.not5.i = icmp eq ptr %1, null
  br i1 %.not5.i, label %_RINvYINtNtCskKLDkoKarTP_4core6option8IntoIterRINtNtNtCs84JG9zk80ZV_4http6header3map9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduNCINvNtNtB2F_8adapters3map8map_foldBH_INtB3p_3MapINtNtB3r_3zip3ZipINtBL_4IterB1t_EIB4p_NtNtBN_5value11HeaderValueEENCNCNvB1x_16case_header_iter00EuNCB5f_0NCINvNvMsg_NtB3r_7flattenINtB5Z_13FlattenCompatppE9iter_fold7flattenB3W_uNCINvNvXsi_B5Z_B6d_B2z_4fold7flattenB3W_uNCINvNvB2z_8for_each4callTRB1t_RB4J_ENCINvB1x_17header_to_h1_wireINtNtCsexYYUdYSQU6_5alloc3vec3VechEE0E0E0E0E0ECsiWMK64dCVjf_20pingora_header_serde.exit, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %bb.a
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.72.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.41.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !786, !noalias !788, !noundef !4
  %.not3.i.i.i = icmp eq i64 %i.c, 0
  %.sroa.01.0.i.i.i = select i1 %.not3.i.i.i, i64 2, i64 0
  tail call void @llvm.experimental.noalias.scope.decl(metadata !795)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !796
  tail call void @llvm.experimental.noalias.scope.decl(metadata !797)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !798, !noalias !799, !noundef !4
  %.not.i.i.us.i = icmp eq i64 %i.e, 0
  %..i.i.us.i = select i1 %.not.i.i.us.i, i64 2, i64 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !noalias !796
  store i64 %..i.i.us.i, ptr %i.a, align 8, !noalias !796
  store ptr %1, ptr %.sroa.41.0..sroa_idx.i.i, align 8, !noalias !796
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !796
  store i64 %.sroa.01.0.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !796
  store ptr %0, ptr %.sroa.72.0..sroa_idx.i.i, align 8, !noalias !796
  store i64 0, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !796
  call void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtCs84JG9zk80ZV_4http6header3map4IterNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEIB1e_NtNtB1i_5value11HeaderValueEENCNCNvB1X_16case_header_iter00ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvB41_8for_each4callTRB1T_RB33_ENCINvB1X_17header_to_h1_wireINtNtCsexYYUdYSQU6_5alloc3vec3VechEE0E0ECsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !796
  br label %_RINvYINtNtCskKLDkoKarTP_4core6option8IntoIterRINtNtNtCs84JG9zk80ZV_4http6header3map9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduNCINvNtNtB2F_8adapters3map8map_foldBH_INtB3p_3MapINtNtB3r_3zip3ZipINtBL_4IterB1t_EIB4p_NtNtBN_5value11HeaderValueEENCNCNvB1x_16case_header_iter00EuNCB5f_0NCINvNvMsg_NtB3r_7flattenINtB5Z_13FlattenCompatppE9iter_fold7flattenB3W_uNCINvNvXsi_B5Z_B6d_B2z_4fold7flattenB3W_uNCINvNvB2z_8for_each4callTRB1t_RB4J_ENCINvB1x_17header_to_h1_wireINtNtCsexYYUdYSQU6_5alloc3vec3VechEE0E0E0E0E0ECsiWMK64dCVjf_20pingora_header_serde.exit

_RINvYINtNtCskKLDkoKarTP_4core6option8IntoIterRINtNtNtCs84JG9zk80ZV_4http6header3map9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduNCINvNtNtB2F_8adapters3map8map_foldBH_INtB3p_3MapINtNtB3r_3zip3ZipINtBL_4IterB1t_EIB4p_NtNtBN_5value11HeaderValueEENCNCNvB1x_16case_header_iter00EuNCB5f_0NCINvNvMsg_NtB3r_7flattenINtB5Z_13FlattenCompatppE9iter_fold7flattenB3W_uNCINvNvXsi_B5Z_B6d_B2z_4fold7flattenB3W_uNCINvNvB2z_8for_each4callTRB1t_RB4J_ENCINvB1x_17header_to_h1_wireINtNtCsexYYUdYSQU6_5alloc3vec3VechEE0E0E0E0E0ECsiWMK64dCVjf_20pingora_header_serde.exit: ; preds = %bb.a, %.lr.ph.split.us.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtCsiWMK64dCVjf_20pingora_header_serde11thread_zstdNtB2_11Compression8compress(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3, i32 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !800)
  %i.c = tail call noundef i64 @_RNvCs13pZzHa6nno_9zstd_safe14compress_bound(i64 noundef range(i64 0, -9223372036854775808) %3), !noalias !800 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !800
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.c, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !800
  %i.d = load i64, ptr %i.a, align 8, !range !57, !noalias !800, !noundef !4
  %i.e = trunc nuw i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !803, !noalias !800, !noundef !4 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.e, label %bb.b, label %_RNvNtCsiWMK64dCVjf_20pingora_header_serde11thread_zstd27make_compressed_data_buffer.exit, !prof !41

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !noalias !800
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.g, i64 %i.i) #22, !noalias !800
  unreachable

_RNvNtCsiWMK64dCVjf_20pingora_header_serde11thread_zstd27make_compressed_data_buffer.exit: ; preds = %bb.a
  %i.j = load ptr, ptr %i.h, align 8, !noalias !800, !nonnull !4, !noundef !4 ; 2 uses
  %i.k = icmp ule i64 %i.c, %i.g
  tail call void @llvm.assume(i1 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !800
  store i64 %i.g, ptr %i.b, align 8, !alias.scope !800
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.j, ptr %i.l, align 8, !alias.scope !800
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 0, ptr %i.m, align 8, !alias.scope !800
  tail call void @llvm.experimental.noalias.scope.decl(metadata !804)
  %i.n = invoke noundef align 8 ptr @_RINvMs3_Cse0v0U5LqnG1_12thread_localINtB6_11ThreadLocalINtNtCskKLDkoKarTP_4core4cell7RefCellNtCs13pZzHa6nno_9zstd_safe4CCtxEE10get_or_tryNCINvB2_6get_orNCNvMs0_NtCsiWMK64dCVjf_20pingora_header_serde11thread_zstdNtB2y_16CompressionInner15get_com_context0E0uEB2A_(ptr noundef nonnull align 8 %1)
          to label %.noexc unwind label %bb.f     ; 10 uses

.noexc:                                           ; preds = %_RNvNtCsiWMK64dCVjf_20pingora_header_serde11thread_zstd27make_compressed_data_buffer.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n) ]
  %i.o = load i64, ptr %i.n, align 8, !noalias !807, !noundef !4
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_RNvMs0_NtCsiWMK64dCVjf_20pingora_header_serde11thread_zstdNtB5_16CompressionInner15get_com_context.exit.i, label %bb.c, !prof !5

bb.c:                                             ; preds = %.noexc
  invoke void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #20
          to label %.noexc4 unwind label %bb.f

.noexc4:                                          ; preds = %bb.c
  unreachable

_RNvMs0_NtCsiWMK64dCVjf_20pingora_header_serde11thread_zstdNtB5_16CompressionInner15get_com_context.exit.i: ; preds = %.noexc
  store i64 -1, ptr %i.n, align 8, !noalias !807
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !810)
  %i.r = load ptr, ptr %i.q, align 8, !noalias !813, !nonnull !4, !noundef !4
  %i.s = tail call noundef i64 @ZSTD_compressCCtx(ptr noundef nonnull %i.r, ptr noundef nonnull %i.j, i64 noundef range(i64 0, -9223372036854775808) %i.g, ptr noundef nonnull readonly %2, i64 noundef range(i64 0, -9223372036854775808) %3, i32 noundef %4) #21, !noalias !817
  %i.t = invoke { i64, i64 } @_RNvCs13pZzHa6nno_9zstd_safe10parse_code(i64 noundef %i.s)
          to label %.noexc.i unwind label %bb.e, !noalias !818 ; 2 uses

.noexc.i:                                         ; preds = %_RNvMs0_NtCsiWMK64dCVjf_20pingora_header_serde11thread_zstdNtB5_16CompressionInner15get_com_context.exit.i
  %i.u = extractvalue { i64, i64 } %i.t, 0
  %i.v = trunc nuw i64 %i.u to i1
  %i.w = extractvalue { i64, i64 } %i.t, 1        ; 2 uses
  br i1 %i.v, label %bb.d, label %.thread

bb.d:                                             ; preds = %.noexc.i
  %i.x = invoke { ptr, i64 } @_RNvCs13pZzHa6nno_9zstd_safe14get_error_name(i64 noundef %i.w)
          to label %bb.g unwind label %bb.e, !noalias !818 ; 2 uses

.thread:                                          ; preds = %.noexc.i
  store i64 %i.w, ptr %i.m, align 8, !alias.scope !819, !noalias !822
  %i.y = load i64, ptr %i.n, align 8, !noalias !818, !noundef !4
  %i.z = add i64 %i.y, 1
  store i64 %i.z, ptr %i.n, align 8, !noalias !818
  br label %bb.i

bb.e:                                             ; preds = %bb.d, %_RNvMs0_NtCsiWMK64dCVjf_20pingora_header_serde11thread_zstdNtB5_16CompressionInner15get_com_context.exit.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = load i64, ptr %i.n, align 8, !noalias !818, !noundef !4
  %i.ac = add i64 %i.ab, 1
  store i64 %i.ac, ptr %i.n, align 8, !noalias !818
  br label %.body

bb.f:                                             ; preds = %bb.c, %_RNvNtCsiWMK64dCVjf_20pingora_header_serde11thread_zstd27make_compressed_data_buffer.exit
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.ad, %bb.f ], [ %i.aa, %bb.e ]
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiWMK64dCVjf_20pingora_header_serde.exit unwind label %bb.k

bb.g:                                             ; preds = %bb.d
  %i.ae = extractvalue { ptr, i64 } %i.x, 0       ; 2 uses
  %i.af = load i64, ptr %i.n, align 8, !noalias !818, !noundef !4
  %i.ag = add i64 %i.af, 1
  store i64 %i.ag, ptr %i.n, align 8, !noalias !818
  %.not = icmp eq ptr %i.ae, null
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = extractvalue { ptr, i64 } %i.x, 1
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ae, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_1
