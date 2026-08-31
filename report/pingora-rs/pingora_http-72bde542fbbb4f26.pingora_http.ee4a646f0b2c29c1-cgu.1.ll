Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/pingora_http-72bde542fbbb4f26.pingora_http.ee4a646f0b2c29c1-cgu.1?download=true
inline.NumInlined: 244
inline.NumDeleted: 119
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMsc_CskspKcFIsYcD_12pingora_httpNtB5_14ResponseHeader18set_content_length:_RNvXs3_NtCskKLDkoKarTP_4core7convertjINtB5_7TryIntoNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueE8try_intoCskspKcFIsYcD_12pingora_http.exit.i
  br label %_RINvMsc_CskspKcFIsYcD_12pingora_httpNtB6_14ResponseHeader13insert_headerNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNamejEB6_.exit

bb.b:                                             ; preds = %_RNvXs3_NtCskKLDkoKarTP_4core7convertjINtB5_7TryIntoNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueE8try_intoCskspKcFIsYcD_12pingora_http.exit.i
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.4.sroa.0.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !365 ; 10 uses
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.4.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !noalias !365 ; 10 uses
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %.sroa.4.sroa.5.0.copyload.i = load ptr, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !noalias !365 ; 10 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 33
  %.sroa.6.sroa.0.0.copyload.i = load i56, ptr %.sroa.6.0..sroa_idx.i, align 1, !noalias !365
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !365
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 8 uses
  %i.w = load i64, ptr %i.v, align 8, !range !7, !alias.scope !362, !noalias !367, !noundef !4
  %.not.i = icmp eq i64 %i.w, -1                  ; 2 uses
  %..i = select i1 %.not.i, ptr null, ptr %i.v    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !365
  store ptr null, ptr %i.n, align 8, !noalias !362
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr inttoptr (i64 24 to ptr), ptr %.sroa.6.0..sroa_idx, align 8, !noalias !362
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !368)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !371)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !373
  invoke void @_RNvXs3_NtCskspKcFIsYcD_12pingora_http16case_header_nameNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameNtB5_18IntoCaseHeaderName21into_case_header_name(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.m, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.n)
          to label %bb.c unwind label %.split.thread.i.i, !noalias !376

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEBF_.exit93.i.i: ; preds = %.thread.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskspKcFIsYcD_12pingora_http.exit.i.i
  %.sroa.015.0.i.i = phi i1 [ %.sroa.015.2131.i.i, %.thread.i.i ], [ %.sroa.015.2.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskspKcFIsYcD_12pingora_http.exit.i.i ]
  %.pn35.i.i = phi { ptr, i32 } [ %.pn132.i.i, %.thread.i.i ], [ %.pn.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskspKcFIsYcD_12pingora_http.exit.i.i ] ; 2 uses
  br i1 %.sroa.015.0.i.i, label %bb.dv, label %.body.thread.i

.split.thread.i.i:                                ; preds = %bb.du, %bb.b
  %lpad.thr_comm255.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.dv

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !373
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !373
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !noalias !373, !noundef !4 ; 12 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !noalias !373, !noundef !4 ; 12 uses
  invoke void @_RNvMs_NtNtCs84JG9zk80ZV_4http6header4nameNtB4_10HeaderName10from_bytes(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.y, i64 noundef %i.aa)
          to label %bb.e unwind label %bb.d, !noalias !377

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskspKcFIsYcD_12pingora_http.exit.i.i: ; preds = %bb.ds, %.body43.thread.i.i, %.body43.i.i, %bb.bl, %.thread145.i.i.i, %bb.bb, %bb.ba, %bb.ax, %bb.ac, %bb.ab, %bb.y
  %.sroa.015.2.i.i = phi i1 [ false, %.body43.i.i ], [ true, %.body43.thread.i.i ], [ true, %bb.ds ], [ false, %bb.y ], [ false, %bb.bl ], [ false, %.thread145.i.i.i ], [ false, %bb.bb ], [ false, %bb.ba ], [ false, %bb.ax ], [ false, %bb.ac ], [ false, %bb.ab ] ; 2 uses
  %.sroa.012.0.i.i = phi i8 [ %.sroa.012.1.i.i, %.body43.i.i ], [ %.sroa.012.2.lpad-body137.i.i, %.body43.thread.i.i ], [ %.sroa.012.2.lpad-body137.i.i, %bb.ds ], [ %.sroa.012.1.i.i, %bb.y ], [ %.sroa.012.1.i.i, %bb.bl ], [ %.sroa.012.1.i.i, %.thread145.i.i.i ], [ %.sroa.012.1.i.i, %bb.bb ], [ %.sroa.012.1.i.i, %bb.ba ], [ %.sroa.012.1.i.i, %bb.ax ], [ %.sroa.012.1.i.i, %bb.ac ], [ %.sroa.012.1.i.i, %bb.ab ]
  %.pn.i.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i.i, %.body43.i.i ], [ %eh.lpad-body44138.i.i, %.body43.thread.i.i ], [ %eh.lpad-body44138.i.i, %bb.ds ], [ %i.cs, %bb.y ], [ %.pn149.i.i.i, %bb.bl ], [ %.pn149.i.i.i, %.thread145.i.i.i ], [ %i.fl, %bb.bb ], [ %i.fl, %bb.ba ], [ %i.fh, %bb.ax ], [ %i.da, %bb.ac ], [ %i.da, %bb.ab ] ; 2 uses
  %i.ab = trunc nuw i8 %.sroa.012.0.i.i to i1
  br i1 %i.ab, label %.thread.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEBF_.exit93.i.i

bb.d:                                             ; preds = %bb.f, %bb.c
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i

bb.e:                                             ; preds = %bb.c
  %i.ad = load i64, ptr %i.k, align 8, !range !247, !noalias !373, !noundef !4
  %i.ae = trunc nuw i64 %i.ad to i1
  br i1 %i.ae, label %bb.f, label %bb.o

bb.f:                                             ; preds = %bb.e
  %i.af = invoke { ptr, ptr } @_RNvXse_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtB7_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtBW_6marker4SendNtB1t_4SyncEL_EINtNtBW_7convert4FromNtNtNtCs84JG9zk80ZV_4http6header4name17InvalidHeaderNameE4fromCskspKcFIsYcD_12pingora_http()
          to label %.noexc.i.i unwind label %bb.d, !noalias !377 ; 2 uses

.noexc.i.i:                                       ; preds = %bb.f
  %i.ag = extractvalue { ptr, ptr } %i.af, 0      ; 5 uses
  %i.ah = extractvalue { ptr, ptr } %i.af, 1      ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ag) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ah) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !378
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  %i.aj = load ptr, ptr %i.ai, align 8, !invariant.load !4, !noalias !384, !nonnull !4
  invoke void %i.aj(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.f, ptr noundef nonnull %i.ag)
          to label %bb.g unwind label %bb.m, !noalias !384

bb.g:                                             ; preds = %.noexc.i.i
  %i.ak = load i128, ptr %i.f, align 16, !noalias !378, !noundef !4
  %i.al = icmp eq i128 %i.ak, 169216051812186039609500687556145754511
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !378
  br i1 %i.al, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.am = load ptr, ptr %i.ag, align 8, !noalias !384, !nonnull !4, !noundef !4
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  %i.ao = load i8, ptr %i.an, align 8, !range !115, !noalias !384, !noundef !4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.0.1.i.i.i.i = phi i8 [ %i.ao, %bb.h ], [ 0, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !378
  %i.ap = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i16 13, ptr %i.ap, align 8, !noalias !385
  %i.aq = getelementptr inbounds nuw i8, ptr %i.g, i64 65
  store i8 3, ptr %i.aq, align 1, !noalias !378
  %i.ar = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  store i8 %.sroa.0.1.i.i.i.i, ptr %i.ar, align 8, !noalias !378
  %i.as = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store ptr %i.ag, ptr %i.as, align 8, !noalias !378
  %i.at = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  store ptr %i.ah, ptr %i.at, align 8, !noalias !378
  store i64 0, ptr %i.g, align 8, !noalias !386
  %.sroa.6.0..sroa_idx3.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @3, ptr %.sroa.6.0..sroa_idx3.i.i.i, align 8, !noalias !386
  %.sroa.8.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 19, ptr %.sroa.8.0..sroa_idx5.i.i.i, align 8, !noalias !386
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !387
  %i.au = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef 8) #18, !noalias !387 ; 3 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.j, label %bb.du, !prof !240

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #23
          to label %.noexc.i.i.i.i unwind label %bb.k, !noalias !384

.noexc.i.i.i.i:                                   ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsfsXztIhCltD_13pingora_error5ErrorECskspKcFIsYcD_12pingora_http(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.g) #20
          to label %.thread.i.i unwind label %bb.l, !noalias !384

bb.l:                                             ; preds = %bb.k
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !384
  unreachable

bb.m:                                             ; preds = %.noexc.i.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1S_4SyncEL_EEECskspKcFIsYcD_12pingora_http(ptr nonnull %i.ag, ptr nonnull %i.ah) #20
          to label %.thread.i.i unwind label %bb.n, !noalias !384

bb.n:                                             ; preds = %bb.m
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !384
  unreachable

bb.o:                                             ; preds = %bb.e
  %i.ba = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.016.0.copyload.i.i = load ptr, ptr %i.ba, align 8, !noalias !373 ; 3 uses
  %.sroa.417.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.417.0..sroa_idx.i.i, i64 24, i1 false), !noalias !373
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !373
  store ptr %.sroa.016.0.copyload.i.i, ptr %i.l, align 8, !noalias !373
  br i1 %.not.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEEB11_.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !373
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  %.not33.i.i = icmp eq ptr %.sroa.016.0.copyload.i.i, null
  br i1 %.not33.i.i, label %bb.bn, label %bb.bm

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEEB11_.exit.i.i: ; preds = %bb.do, %bb.dn, %.thread155.i.i, %bb.o
  %.sroa.012.1.i.i = phi i8 [ 1, %bb.o ], [ 0, %bb.dn ], [ 0, %.thread155.i.i ], [ 0, %bb.do ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !373
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false), !noalias !373
  %.sroa.16.32.insert.ext.i = zext i56 %.sroa.6.sroa.0.0.copyload.i to i64
  %.sroa.16.32.insert.shift.i = shl nuw i64 %.sroa.16.32.insert.ext.i, 8
  %.sroa.14.32.insert.ext.i = zext nneg i8 %i.s to i64
  %.sroa.14.32.insert.insert.i = or disjoint i64 %.sroa.16.32.insert.shift.i, %.sroa.14.32.insert.ext.i ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !390)
  call void @llvm.experimental.noalias.scope.decl(metadata !393)
  %i.bb = invoke noundef zeroext i1 @_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB5_9HeaderMap15try_reserve_oneCskspKcFIsYcD_12pingora_http(ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %0)
          to label %bb.q unwind label %bb.bj, !noalias !395

bb.q:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEEB11_.exit.i.i
  br i1 %i.bb, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.u) ]
  %i.bc = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8, !noalias !398, !nonnull !4, !noundef !4
  invoke void %i.bd(ptr noundef %.sroa.4.sroa.5.0.copyload.i, ptr noundef %.sroa.4.sroa.0.0.copyload.i, i64 noundef %.sroa.4.sroa.4.0.copyload.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECskspKcFIsYcD_12pingora_http.exit.i.i.i unwind label %bb.bh, !noalias !395, !inline_history !48

bb.s:                                             ; preds = %bb.q
  %i.be = call fastcc noundef i16 @_RINvNtNtCs84JG9zk80ZV_4http6header3map15hash_elem_usingNtNtB4_4name10HeaderNameECskspKcFIsYcD_12pingora_http(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(232) %0, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.i), !noalias !405 ; 6 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bg = load i16, ptr %i.bf, align 8, !alias.scope !406, !noalias !407, !noundef !4 ; 3 uses
  %i.bh = and i16 %i.bg, %i.be
  %i.bi = zext nneg i16 %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.bl = load i64, ptr %i.bk, align 8, !alias.scope !406, !noalias !407, !noundef !4 ; 2 uses
  %i.bm = load ptr, ptr %i.bj, align 8, !alias.scope !406, !noalias !407, !nonnull !4
  %i.bn = zext i16 %i.bg to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.bp = load i64, ptr %i.bo, align 8, !alias.scope !406, !noalias !407 ; 15 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.br = load ptr, ptr %i.bq, align 8, !alias.scope !406, !noalias !407, !nonnull !4 ; 3 uses
  %i.bs = load ptr, ptr %i.i, align 8, !alias.scope !393, !noalias !408 ; 9 uses
  %i.bt = icmp eq ptr %i.bs, null                 ; 7 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 8, !range !210, !alias.scope !393, !noalias !408
  %i.bw = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.bx = load i64, ptr %i.bw, align 8, !alias.scope !393, !noalias !408 ; 9 uses
  %i.by = load ptr, ptr %i.bu, align 8, !alias.scope !393, !noalias !408 ; 8 uses
  %.not160 = icmp eq i64 %i.bl, 0
  br label %.outer121

.outer121:                                        ; preds = %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i, %bb.s
  %.sroa.08.0.i.i.i.ph = phi i64 [ %i.do, %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i ], [ 0, %bb.s ] ; 3 uses
  %.sroa.0.0.i.i.i.ph = phi i64 [ %i.dp, %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i ], [ %i.bi, %bb.s ] ; 2 uses
  %i.bz = icmp ult i64 %.sroa.0.0.i.i.i.ph, %i.bl ; 2 uses
  %.not160.not = xor i1 %.not160, true
  %brmerge = or i1 %i.bz, %.not160.not
  %.sroa.0.0.i.i.i.ph.mux = select i1 %i.bz, i64 %.sroa.0.0.i.i.i.ph, i64 0 ; 7 uses
  br i1 %brmerge, label %.loopexit154, label %infloop

.loopexit154:                                     ; preds = %.outer121
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %.sroa.0.0.i.i.i.ph.mux ; 2 uses
  %i.cb = load i16, ptr %i.ca, align 2, !noalias !395, !noundef !4 ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.cb, -1
  br i1 %.not.i.i.i, label %bb.v, label %bb.u

bb.t:                                             ; preds = %bb.am
  unreachable

bb.u:                                             ; preds = %.loopexit154
  %i.cc = zext i16 %i.cb to i64                   ; 6 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 2
  %i.ce = load i16, ptr %i.cd, align 2, !noalias !395, !noundef !4 ; 2 uses
  %i.cf = and i16 %i.ce, %i.bg
  %i.cg = zext i16 %i.cf to i64
  %i.ch = sub i64 %.sroa.0.0.i.i.i.ph.mux, %i.cg
  %i.ci = and i64 %i.ch, %i.bn
  %i.cj = icmp samesign ult i64 %i.ci, %.sroa.08.0.i.i.i.ph
  br i1 %i.cj, label %bb.au, label %bb.ah

bb.v:                                             ; preds = %.loopexit154
  %i.ck = icmp ult i64 %i.bp, 88686269585142076
  call void @llvm.assume(i1 %i.ck)
  %.sroa.6117.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sroa.6117.0.copyload.i.i.i = load ptr, ptr %.sroa.6117.0..sroa_idx.i.i.i, align 8, !alias.scope !393, !noalias !408 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !409)
  %i.cl = icmp samesign ugt i64 %i.bp, 32767
  br i1 %i.cl, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !412
  %i.cn = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  store i16 %i.be, ptr %i.cn, align 8, !noalias !412
  %i.co = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store ptr %i.bs, ptr %i.co, align 8, !noalias !415
  %.sroa.6102.0..sroa_idx103.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  store ptr %i.by, ptr %.sroa.6102.0..sroa_idx103.i.i.i, align 8, !noalias !415
  %.sroa.8106.0..sroa_idx107.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  store i64 %i.bx, ptr %.sroa.8106.0..sroa_idx107.i.i.i, align 8, !noalias !415
  %.sroa.10110.0..sroa_idx111.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  store ptr %.sroa.6117.0.copyload.i.i.i, ptr %.sroa.10110.0..sroa_idx111.i.i.i, align 8, !noalias !415
  %i.cp = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %i.u, ptr %i.cp, align 8, !noalias !416
  %.sroa.5120.0..sroa_idx121.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %.sroa.4.sroa.0.0.copyload.i, ptr %.sroa.5120.0..sroa_idx121.i.i.i, align 8, !noalias !416
  %.sroa.6123.0..sroa_idx124.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i64 %.sroa.4.sroa.4.0.copyload.i, ptr %.sroa.6123.0..sroa_idx124.i.i.i, align 8, !noalias !416
  %.sroa.7126.0..sroa_idx127.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store ptr %.sroa.4.sroa.5.0.copyload.i, ptr %.sroa.7126.0..sroa_idx127.i.i.i, align 8, !noalias !416
  %.sroa.8129.0..sroa_idx130.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store i64 %.sroa.14.32.insert.insert.i, ptr %.sroa.8129.0..sroa_idx130.i.i.i, align 8, !noalias !416
  store i64 0, ptr %i.e, align 8, !noalias !412
  %i.cq = load i64, ptr %i.cm, align 8, !range !5, !alias.scope !417, !noalias !420, !noundef !4
  %i.cr = icmp eq i64 %i.bp, %i.cq
  br i1 %i.cr, label %bb.x, label %bb.ae

bb.x:                                             ; preds = %bb.w
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtBR_5value11HeaderValueEE8grow_oneCskspKcFIsYcD_12pingora_http(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cm)
          to label %._crit_edge192.i.i.i unwind label %bb.y, !noalias !422

._crit_edge192.i.i.i:                             ; preds = %bb.x
  %.pre193.i.i.i = load ptr, ptr %i.bq, align 8, !alias.scope !417, !noalias !420
  br label %bb.ae

bb.y:                                             ; preds = %bb.x
  %i.cs = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtBG_5value11HeaderValueEECskspKcFIsYcD_12pingora_http(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(104) %i.e) #20
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskspKcFIsYcD_12pingora_http.exit.i.i unwind label %bb.z, !noalias !423

bb.z:                                             ; preds = %bb.y
  %i.ct = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !422
  unreachable

bb.aa:                                            ; preds = %bb.v
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.u) ]
  %i.cu = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.cv = load ptr, ptr %i.cu, align 8, !noalias !424, !nonnull !4, !noundef !4
  invoke void %i.cv(ptr noundef %.sroa.4.sroa.5.0.copyload.i, ptr noundef %.sroa.4.sroa.0.0.copyload.i, i64 noundef %.sroa.4.sroa.4.0.copyload.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECskspKcFIsYcD_12pingora_http.exit.i.i.i.i unwind label %bb.ab, !noalias !431, !inline_history !48

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECskspKcFIsYcD_12pingora_http.exit.i.i.i.i: ; preds = %bb.aa
  br i1 %i.bt, label %_RINvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB6_9HeaderMap11try_insert2NtNtB8_4name10HeaderNameECskspKcFIsYcD_12pingora_http.exit.thread.i.i, label %.invoke280.i.i

.invoke280.i.i:                                   ; preds = %bb.bi, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECskspKcFIsYcD_12pingora_http.exit.i48.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECskspKcFIsYcD_12pingora_http.exit.i.i.i.i
  %i.cw = phi ptr [ %i.gk, %bb.bi ], [ %.sroa.6117.0.copyload.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECskspKcFIsYcD_12pingora_http.exit.i.i.i.i ], [ %.sroa.668.0.copyload.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECskspKcFIsYcD_12pingora_http.exit.i48.i.i.i ]
  %i.cx = phi ptr [ %i.gm, %bb.bi ], [ %i.by, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECskspKcFIsYcD_12pingora_http.exit.i.i.i.i ], [ %i.by, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECskspKcFIsYcD_12pingora_http.exit.i48.i.i.i ]
  %i.cy = phi i64 [ %i.go, %bb.bi ], [ %i.bx, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECskspKcFIsYcD_12pingora_http.exit.i.i.i.i ], [ %i.bx, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECskspKcFIsYcD_12pingora_http.exit.i48.i.i.i ]
  %.pn282.i.i = phi ptr [ %i.gh, %bb.bi ], [ %i.bs, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECskspKcFIsYcD_12pingora_http.exit.i.i.i.i ], [ %i.bs, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECskspKcFIsYcD_12pingora_http.exit.i48.i.i.i ]
  %.in281.i.i = getelementptr inbounds nuw i8, ptr %.pn282.i.i, i64 32
  %i.cz = load ptr, ptr %.in281.i.i, align 8, !noalias !395, !nonnull !4, !noundef !4
  invoke void %i.cz(ptr noundef %i.cw, ptr noundef %i.cx, i64 noundef %i.cy)
          to label %_RINvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB6_9HeaderMap11try_insert2NtNtB8_4name10HeaderNameECskspKcFIsYcD_12pingora_http.exit.thread.i.i unwind label %.body43.i.i, !noalias !377, !inline_history !432

bb.ab:                                            ; preds = %bb.aa
  %i.da = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.bt, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskspKcFIsYcD_12pingora_http.exit.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.db = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %i.dc = load ptr, ptr %i.db, align 8, !noalias !433, !nonnull !4, !noundef !4
  invoke void %i.dc(ptr noundef %.sroa.6117.0.copyload.i.i.i, ptr noundef %i.by, i64 noundef %i.bx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskspKcFIsYcD_12pingora_http.exit.i.i unwind label %bb.ad, !noalias !431, !inline_history !36

bb.ad:                                            ; preds = %bb.ac
  %i.dd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !431
  unreachable

bb.ae:                                            ; preds = %._crit_edge192.i.i.i, %bb.w
  %i.de = phi ptr [ %.pre193.i.i.i, %._crit_edge192.i.i.i ], [ %i.br, %bb.w ]
  %i.df = getelementptr inbounds nuw [104 x i8], ptr %i.de, i64 %i.bp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.df, ptr noundef nonnull readonly align 8 dereferenceable(104) %i.e, i64 104, i1 false), !noalias !423
  %i.dg = add nuw nsw i64 %i.bp, 1
  store i64 %i.dg, ptr %i.bo, align 8, !alias.scope !417, !noalias !420
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !412
  %i.dh = load i64, ptr %i.bk, align 8, !alias.scope !406, !noalias !407, !noundef !4 ; 2 uses
  %i.di = icmp ult i64 %.sroa.0.0.i.i.i.ph.mux, %i.dh
  br i1 %i.di, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.dj = load ptr, ptr %i.bj, align 8, !alias.scope !406, !noalias !407, !nonnull !4, !noundef !4
  %i.dk = trunc nuw nsw i64 %i.bp to i16
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %.sroa.0.0.i.i.i.ph.mux ; 2 uses
  store i16 %i.dk, ptr %i.dl, align 2, !noalias !395
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 2
  store i16 %i.be, ptr %i.dm, align 2, !noalias !395
  br label %.thread178.i.i

bb.ag:                                            ; preds = %bb.ae
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.0.i.i.i.ph.mux, i64 noundef %i.dh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #23
          to label %.noexc39.i.i unwind label %.body43.i.i, !noalias !377

.noexc39.i.i:                                     ; preds = %bb.ag
  unreachable

bb.ah:                                            ; preds = %bb.u
  %i.dn = icmp eq i16 %i.ce, %i.be
  br i1 %i.dn, label %bb.ai, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i

_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i: ; preds = %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i.i, %.split.i.i.i, %bb.al, %bb.aj, %bb.ah
  %i.do = add nuw nsw i64 %.sroa.08.0.i.i.i.ph, 1
  %i.dp = add i64 %.sroa.0.0.i.i.i.ph.mux, 1
  br label %.outer121

bb.ai:                                            ; preds = %bb.ah
  %i.dq = icmp ugt i64 %i.bp, %i.cc
  br i1 %i.dq, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  %i.dr = getelementptr inbounds nuw [104 x i8], ptr %i.br, i64 %i.cc ; 6 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 64
  %i.dt = load ptr, ptr %i.ds, align 8, !noalias !395, !noundef !4
  %i.du = icmp ne ptr %i.dt, null                 ; 2 uses
  %i.dv = xor i1 %i.bt, %i.du
  br i1 %i.dv, label %bb.ak, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i

bb.ak:                                            ; preds = %bb.aj
  br i1 %i.du, label %bb.al, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i.i

bb.al:                                            ; preds = %bb.ak
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bs) ]
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dr, i64 80
  %i.dx = load i64, ptr %i.dw, align 8, !noalias !395, !noundef !4
  %i.dy = icmp eq i64 %i.dx, %i.bx
  br i1 %i.dy, label %.split.i.i.i, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i

.split.i.i.i:                                     ; preds = %bb.al
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dr, i64 72
  %i.ea = load ptr, ptr %i.dz, align 8, !noalias !395, !noundef !4
  %bcmp.i.i.i.i.i.i.i = call i32 @bcmp(ptr %i.ea, ptr %i.by, i64 %i.bx), !noalias !395
  %i.eb = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.eb, label %bb.an, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i

bb.am:                                            ; preds = %bb.ai
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.cc, i64 noundef %i.bp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #23
          to label %bb.t unwind label %bb.bj, !noalias !395

_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i.i: ; preds = %bb.ak
  call void @llvm.assume(i1 %i.bt)
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dr, i64 72
  %i.ed = load i8, ptr %i.ec, align 8, !range !210, !noalias !395, !noundef !4
  %i.ee = icmp eq i8 %i.ed, %i.bv
  br i1 %i.ee, label %bb.an, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i

bb.an:                                            ; preds = %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i.i, %.split.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !446)
  %i.ef = load i64, ptr %i.dr, align 8, !range !247, !noalias !449, !noundef !4
  %i.eg = trunc nuw i64 %i.ef to i1
  br i1 %i.eg, label %bb.ap, label %bb.aq

bb.ao:                                            ; preds = %.invoke.i.i.i.i, %bb.ap
  %i.eh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.u) ]
  %i.ei = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.ej = load ptr, ptr %i.ei, align 8, !noalias !452, !nonnull !4, !noundef !4
  invoke void %i.ej(ptr noundef %.sroa.4.sroa.5.0.copyload.i, ptr noundef %.sroa.4.sroa.0.0.copyload.i, i64 noundef %.sroa.4.sroa.4.0.copyload.i)
          to label %.thread145.i.i.i unwind label %bb.ar, !noalias !459, !inline_history !48

bb.ap:                                            ; preds = %bb.an
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.el = load i64, ptr %i.ek, align 8, !noalias !449, !noundef !4
  invoke void @_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB5_9HeaderMap23remove_all_extra_valuesCskspKcFIsYcD_12pingora_http(ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %0, i64 noundef %i.el)
          to label %._crit_edge.i.i.i.i unwind label %bb.ao, !noalias !459

._crit_edge.i.i.i.i:                              ; preds = %bb.ap
  %.pre.i.i.i.i = load i64, ptr %i.bo, align 8, !alias.scope !460, !noalias !461
  br label %bb.aq

bb.aq:                                            ; preds = %._crit_edge.i.i.i.i, %bb.an
  %i.em = phi i64 [ %.pre.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.bp, %bb.an ] ; 2 uses
  %i.en = icmp ugt i64 %i.em, %i.cc
  br i1 %i.en, label %bb.as, label %.invoke.i.i.i.i

.invoke.i.i.i.i:                                  ; preds = %bb.aq
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef range(i64 0, 65536) %i.cc, i64 noundef %i.em, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #23
          to label %.cont.i.i.i.i unwind label %bb.ao, !noalias !459

.cont.i.i.i.i:                                    ; preds = %.invoke.i.i.i.i
  unreachable

bb.ar:                                            ; preds = %bb.ao
  %i.eo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !459
  unreachable

bb.as:                                            ; preds = %bb.aq
  %i.ep = load ptr, ptr %i.bq, align 8, !alias.scope !460, !noalias !461, !nonnull !4, !noundef !4
  %i.eq = getelementptr inbounds nuw [104 x i8], ptr %i.ep, i64 %i.cc ; 5 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 24 ; 2 uses
  %.sroa.0122.0.copyload.i.i = load ptr, ptr %i.er, align 8, !noalias !462 ; 2 uses
  %.sroa.4123.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.eq, i64 32 ; 2 uses
  %.sroa.4123.0.copyload.i.i = load ptr, ptr %.sroa.4123.0..sroa_idx.i.i, align 8, !noalias !462
  %.sroa.5124.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.eq, i64 40 ; 2 uses
  %.sroa.5124.0.copyload.i.i = load i64, ptr %.sroa.5124.0..sroa_idx.i.i, align 8, !noalias !462
  %.sroa.6125.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.eq, i64 48 ; 2 uses
  %.sroa.6125.0.copyload.i.i = load ptr, ptr %.sroa.6125.0..sroa_idx.i.i, align 8, !noalias !462
  %.sroa.483.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.eq, i64 56 ; 2 uses
  %.sroa.483.0.copyload.i.i.i = load i8, ptr %.sroa.483.0..sroa_idx.i.i.i, align 8, !noalias !463 ; 2 uses
  store ptr %i.u, ptr %i.er, align 8, !noalias !464
  store ptr %.sroa.4.sroa.0.0.copyload.i, ptr %.sroa.4123.0..sroa_idx.i.i, align 8, !noalias !464
  store i64 %.sroa.4.sroa.4.0.copyload.i, ptr %.sroa.5124.0..sroa_idx.i.i, align 8, !noalias !464
  store ptr %.sroa.4.sroa.5.0.copyload.i, ptr %.sroa.6125.0..sroa_idx.i.i, align 8, !noalias !464
  store i64 %.sroa.14.32.insert.insert.i, ptr %.sroa.483.0..sroa_idx.i.i.i, align 8, !noalias !464
  call void @llvm.experimental.noalias.scope.decl(metadata !465)
  call void @llvm.experimental.noalias.scope.decl(metadata !468)
  br i1 %i.bt, label %_RINvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB6_9HeaderMap11try_insert2NtNtB8_4name10HeaderNameECskspKcFIsYcD_12pingora_http.exit.i.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @llvm.experimental.noalias.scope.decl(metadata !471)
  call void @llvm.experimental.noalias.scope.decl(metadata !474)
  call void @llvm.experimental.noalias.scope.decl(metadata !477)
  call void @llvm.experimental.noalias.scope.decl(metadata !480)
  %i.es = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.et = load ptr, ptr %i.es, align 8, !alias.scope !483, !noalias !408, !noundef !4
  %i.eu = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %i.ev = load ptr, ptr %i.eu, align 8, !noalias !484, !nonnull !4, !noundef !4
  invoke void %i.ev(ptr noundef %i.et, ptr noundef %i.by, i64 noundef %i.bx)
          to label %_RINvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB6_9HeaderMap11try_insert2NtNtB8_4name10HeaderNameECskspKcFIsYcD_12pingora_http.exit.i.i unwind label %.body43.i.i, !noalias !377, !inline_history !432

bb.au:                                            ; preds = %bb.u
  %i.ew = icmp samesign ugt i64 %.sroa.08.0.i.i.i.ph, 511
  %i.ex = load i64, ptr %0, align 8, !range !12, !alias.scope !406, !noalias !407
  %i.ey = icmp ne i64 %i.ex, 2
  %.sroa.013.0.i.i.i = select i1 %i.ew, i1 %i.ey, i1 false
  %.sroa.668.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sroa.668.0.copyload.i.i.i = load ptr, ptr %.sroa.668.0..sroa_idx.i.i.i, align 8, !alias.scope !393, !noalias !408 ; 3 uses
  %i.ez = icmp ult i64 %i.bp, 88686269585142076
  call void @llvm.assume(i1 %i.ez)
  call void @llvm.experimental.noalias.scope.decl(metadata !485)
  %i.fa = icmp samesign ugt i64 %i.bp, 32767
  br i1 %i.fa, label %bb.az, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !488
  %i.fc = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  store i16 %i.be, ptr %i.fc, align 8, !noalias !488
  %i.fd = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store ptr %i.bs, ptr %i.fd, align 8, !noalias !491
  %.sroa.6.0..sroa_idx57.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  store ptr %i.by, ptr %.sroa.6.0..sroa_idx57.i.i.i, align 8, !noalias !491
  %.sroa.8.0..sroa_idx60.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  store i64 %i.bx, ptr %.sroa.8.0..sroa_idx60.i.i.i, align 8, !noalias !491
  %.sroa.10.0..sroa_idx63.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  store ptr %.sroa.668.0.copyload.i.i.i, ptr %.sroa.10.0..sroa_idx63.i.i.i, align 8, !noalias !491
  %i.fe = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %i.u, ptr %i.fe, align 8, !noalias !492
  %.sroa.571.0..sroa_idx72.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %.sroa.4.sroa.0.0.copyload.i, ptr %.sroa.571.0..sroa_idx72.i.i.i, align 8, !noalias !492
  %.sroa.674.0..sroa_idx75.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %.sroa.4.sroa.4.0.copyload.i, ptr %.sroa.674.0..sroa_idx75.i.i.i, align 8, !noalias !492
  %.sroa.7.0..sroa_idx77.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store ptr %.sroa.4.sroa.5.0.copyload.i, ptr %.sroa.7.0..sroa_idx77.i.i.i, align 8, !noalias !492
  %.sroa.879.0..sroa_idx80.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i64 %.sroa.14.32.insert.insert.i, ptr %.sroa.879.0..sroa_idx80.i.i.i, align 8, !noalias !492
  store i64 0, ptr %i.d, align 8, !noalias !488
  %i.ff = load i64, ptr %i.fb, align 8, !range !5, !alias.scope !493, !noalias !496, !noundef !4
  %i.fg = icmp eq i64 %i.bp, %i.ff
  br i1 %i.fg, label %bb.aw, label %bb.bd

bb.aw:                                            ; preds = %bb.av
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtBR_5value11HeaderValueEE8grow_oneCskspKcFIsYcD_12pingora_http(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fb)
          to label %._crit_edge.i.i.i unwind label %bb.ax, !noalias !498

._crit_edge.i.i.i:                                ; preds = %bb.aw
  %.pre.i.i.i = load ptr, ptr %i.bq, align 8, !alias.scope !493, !noalias !496
  br label %bb.bd

bb.ax:                                            ; preds = %bb.aw
  %i.fh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtBG_5value11HeaderValueEECskspKcFIsYcD_12pingora_http(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(104) %i.d) #20
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskspKcFIsYcD_12pingora_http.exit.i.i unwind label %bb.ay, !noalias !499

bb.ay:                                            ; preds = %bb.ax
  %i.fi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !498
  unreachable

bb.az:                                            ; preds = %bb.au
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.u) ]
  %i.fj = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.fk = load ptr, ptr %i.fj, align 8, !noalias !500, !nonnull !4, !noundef !4
  invoke void %i.fk(ptr noundef %.sroa.4.sroa.5.0.copyload.i, ptr noundef %.sroa.4.sroa.0.0.copyload.i, i64 noundef %.sroa.4.sroa.4.0.copyload.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECskspKcFIsYcD_12pingora_http.exit.i48.i.i.i unwind label %bb.ba, !noalias !507, !inline_history !48

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECskspKcFIsYcD_12pingora_http.exit.i48.i.i.i: ; preds = %bb.az
  br i1 %i.bt, label %_RINvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB6_9HeaderMap11try_insert2NtNtB8_4name10HeaderNameECskspKcFIsYcD_12pingora_http.exit.thread.i.i, label %.invoke280.i.i

bb.ba:                                            ; preds = %bb.az
  %i.fl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.bt, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskspKcFIsYcD_12pingora_http.exit.i.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fm = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %i.fn = load ptr, ptr %i.fm, align 8, !noalias !508, !nonnull !4, !noundef !4
  invoke void %i.fn(ptr noundef %.sroa.668.0.copyload.i.i.i, ptr noundef %i.by, i64 noundef %i.bx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskspKcFIsYcD_12pingora_http.exit.i.i unwind label %bb.bc, !noalias !507, !inline_history !36

bb.bc:                                            ; preds = %bb.bb
  %i.fo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !507
  unreachable

bb.bd:                                            ; preds = %._crit_edge.i.i.i, %bb.av
  %i.fp = phi ptr [ %.pre.i.i.i, %._crit_edge.i.i.i ], [ %i.br, %bb.av ]
  %i.fq = getelementptr inbounds nuw [104 x i8], ptr %i.fp, i64 %i.bp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.fq, ptr noundef nonnull readonly align 8 dereferenceable(104) %i.d, i64 104, i1 false), !noalias !499
  %i.fr = add nuw nsw i64 %i.bp, 1
  store i64 %i.fr, ptr %i.bo, align 8, !alias.scope !493, !noalias !496
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !488
  %i.fs = load ptr, ptr %i.bj, align 8, !alias.scope !521, !noalias !524, !nonnull !4, !noundef !4
  %i.ft = load i64, ptr %i.bk, align 8, !alias.scope !521, !noalias !524, !noundef !4 ; 2 uses
  %i.fu = trunc nuw nsw i64 %i.bp to i16
  %.not161 = icmp eq i64 %i.ft, 0
  br label %.outer

.outer:                                           ; preds = %bb.be, %bb.bd
  %.sroa.6.0.i.i.i.i.ph = phi i16 [ %i.gb, %bb.be ], [ %i.be, %bb.bd ] ; 2 uses
  %.sroa.09.0.i.i.i.i.ph = phi i16 [ %i.fx, %bb.be ], [ %i.fu, %bb.bd ] ; 2 uses
  %.sroa.07.0.i.i.i.i.ph = phi i64 [ %i.ga, %bb.be ], [ 0, %bb.bd ] ; 2 uses
  %.sroa.0.0.i.i.i.i.ph = phi i64 [ %i.gc, %bb.be ], [ %.sroa.0.0.i.i.i.ph.mux, %bb.bd ] ; 2 uses
  %i.fv = icmp ult i64 %.sroa.0.0.i.i.i.i.ph, %i.ft ; 2 uses
  %.not161.not = xor i1 %.not161, true
  %brmerge186 = or i1 %i.fv, %.not161.not
  %.sroa.0.0.i.i.i.i.ph.mux = select i1 %i.fv, i64 %.sroa.0.0.i.i.i.i.ph, i64 0 ; 2 uses
  br i1 %brmerge186, label %.loopexit158, label %infloop185

.loopexit158:                                     ; preds = %.outer
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %.sroa.0.0.i.i.i.i.ph.mux ; 4 uses
  %i.fx = load i16, ptr %i.fw, align 2, !noalias !527, !noundef !4 ; 2 uses
  %i.fy = icmp eq i16 %i.fx, -1
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 2 ; 3 uses
  br i1 %i.fy, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %.loopexit158
  %i.ga = add i64 %.sroa.07.0.i.i.i.i.ph, 1
  %i.gb = load i16, ptr %i.fz, align 2, !noalias !527, !noundef !4
  store i16 %.sroa.09.0.i.i.i.i.ph, ptr %i.fw, align 2, !noalias !527
  store i16 %.sroa.6.0.i.i.i.i.ph, ptr %i.fz, align 2, !noalias !527
  %i.gc = add nuw i64 %.sroa.0.0.i.i.i.i.ph.mux, 1
  br label %.outer

bb.bf:                                            ; preds = %.loopexit158
  store i16 %.sroa.09.0.i.i.i.i.ph, ptr %i.fw, align 2, !noalias !527
  store i16 %.sroa.6.0.i.i.i.i.ph, ptr %i.fz, align 2, !noalias !527
  %i.gd = icmp ugt i64 %.sroa.07.0.i.i.i.i.ph, 127
  %or.cond.i.i.i.i = select i1 %.sroa.013.0.i.i.i, i1 true, i1 %i.gd
  %i.ge = load i64, ptr %0, align 8, !range !12, !alias.scope !521, !noalias !524
  %i.gf = icmp eq i64 %i.ge, 0
  %or.cond3.i.i.i.i = select i1 %or.cond.i.i.i.i, i1 %i.gf, i1 false
  br i1 %or.cond3.i.i.i.i, label %bb.bg, label %.thread178.i.i

bb.bg:                                            ; preds = %bb.bf
  store i64 1, ptr %0, align 8, !alias.scope !521, !noalias !524
  br label %.thread178.i.i

bb.bh:                                            ; preds = %bb.r
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %.thread145.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECskspKcFIsYcD_12pingora_http.exit.i.i.i: ; preds = %bb.r
  %i.gh = load ptr, ptr %i.i, align 8, !alias.scope !528, !noalias !408, !noundef !4 ; 2 uses
  %i.gi = icmp eq ptr %i.gh, null
  br i1 %i.gi, label %_RINvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB6_9HeaderMap11try_insert2NtNtB8_4name10HeaderNameECskspKcFIsYcD_12pingora_http.exit.thread.i.i, label %bb.bi

bb.bi:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECskspKcFIsYcD_12pingora_http.exit.i.i.i
  %i.gj = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.gk = load ptr, ptr %i.gj, align 8, !alias.scope !533, !noalias !408, !noundef !4
  %i.gl = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.gm = load ptr, ptr %i.gl, align 8, !alias.scope !533, !noalias !408, !noundef !4
  %i.gn = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.go = load i64, ptr %i.gn, align 8, !alias.scope !533, !noalias !408, !noundef !4
  br label %.invoke280.i.i

bb.bj:                                            ; preds = %bb.am, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEEB11_.exit.i.i
  %lpad.thr_comm.i.i.i = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.u) ]
  %i.gp = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.gq = load ptr, ptr %i.gp, align 8, !noalias !542, !nonnull !4, !noundef !4
  invoke void %i.gq(ptr noundef %.sroa.4.sroa.5.0.copyload.i, ptr noundef %.sroa.4.sroa.0.0.copyload.i, i64 noundef %.sroa.4.sroa.4.0.copyload.i)
          to label %.thread145.i.i.i unwind label %bb.bk, !noalias !395, !inline_history !48

bb.bk:                                            ; preds = %bb.bl, %bb.bj
  %i.gr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !395
  unreachable

.thread145.i.i.i:                                 ; preds = %bb.bj, %bb.bh, %bb.ao
  %.pn149.i.i.i = phi { ptr, i32 } [ %i.eh, %bb.ao ], [ %i.gg, %bb.bh ], [ %lpad.thr_comm.i.i.i, %bb.bj ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !549)
  call void @llvm.experimental.noalias.scope.decl(metadata !552)
  %i.gs = load ptr, ptr %i.i, align 8, !alias.scope !555, !noalias !408, !noundef !4 ; 2 uses
  %i.gt = icmp eq ptr %i.gs, null
  br i1 %i.gt, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskspKcFIsYcD_12pingora_http.exit.i.i, label %bb.bl

bb.bl:                                            ; preds = %.thread145.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !556)
  call void @llvm.experimental.noalias.scope.decl(metadata !559)
  call void @llvm.experimental.noalias.scope.decl(metadata !562)
  call void @llvm.experimental.noalias.scope.decl(metadata !565)
  %i.gu = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.gv = load ptr, ptr %i.gu, align 8, !alias.scope !568, !noalias !408, !noundef !4
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gs, i64 32
  %i.gx = load ptr, ptr %i.gw, align 8, !noalias !569, !nonnull !4, !noundef !4
  %i.gy = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.gz = load ptr, ptr %i.gy, align 8, !alias.scope !568, !noalias !408, !noundef !4
  %i.ha = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.hb = load i64, ptr %i.ha, align 8, !alias.scope !568, !noalias !408, !noundef !4
  invoke void %i.gx(ptr noundef %i.gv, ptr noundef %i.gz, i64 noundef %i.hb)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskspKcFIsYcD_12pingora_http.exit.i.i unwind label %bb.bk, !noalias !395, !inline_history !36

bb.bm:                                            ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !373
  %i.hc = load ptr, ptr %.sroa.016.0.copyload.i.i, align 8, !noalias !377, !nonnull !4, !noundef !4
  %i.hd = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.he = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !373, !noundef !4
  %i.hf = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.hg = load i64, ptr %i.hf, align 8, !noalias !373, !noundef !4
  invoke void %i.hc(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.h, ptr noundef nonnull align 8 %i.hd, ptr noundef %i.he, i64 noundef %i.hg)
          to label %bb.dl unwind label %.body43.thread146.i.i, !noalias !377

bb.bn:                                            ; preds = %bb.p
  %i.hh = load i8, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !range !210, !noalias !373, !noundef !4
  br label %bb.bo

bb.bo:                                            ; preds = %bb.dl, %bb.bn
  %.sroa.522.0.i.i = phi i8 [ %.sroa.430.0.copyload.i.i, %bb.dl ], [ %i.hh, %bb.bn ] ; 2 uses
  %.sroa.020.0.i.i = phi ptr [ %.sroa.029.0.copyload.i.i, %bb.dl ], [ null, %bb.bn ] ; 12 uses
  store ptr %.sroa.020.0.i.i, ptr %i.j, align 8, !noalias !373
  %.sroa.522.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 4 uses
  store i8 %.sroa.522.0.i.i, ptr %.sroa.522.0..sroa_idx.i.i, align 8, !noalias !373
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.6.0..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.6.i.i, i64 23, i1 false), !noalias !373
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  %.sroa.099.0.copyload.i.i = load ptr, ptr %i.m, align 8, !noalias !373 ; 13 uses
  %.sroa.18.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.18.0.copyload.i.i = load ptr, ptr %.sroa.18.0..sroa_idx.i.i, align 8, !noalias !373 ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !570)
  call void @llvm.experimental.noalias.scope.decl(metadata !573)
  %i.hi = invoke noundef zeroext i1 @_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapINtB5_9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameE15try_reserve_oneBX_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) dereferenceable_or_null(96) %i.v)
          to label %bb.bp unwind label %bb.di, !noalias !575

bb.bp:                                            ; preds = %bb.bo
  br i1 %i.hi, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.099.0.copyload.i.i) ]
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.099.0.copyload.i.i, i64 32
  %i.hk = load ptr, ptr %i.hj, align 8, !noalias !578, !nonnull !4, !noundef !4
  invoke void %i.hk(ptr noundef %.sroa.18.0.copyload.i.i, ptr noundef nonnull %i.y, i64 noundef %i.aa)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEBF_.exit.i.i.i unwind label %bb.dg, !noalias !575, !inline_history !90

bb.br:                                            ; preds = %bb.bp
  %i.hl = call fastcc noundef i16 @_RINvNtNtCs84JG9zk80ZV_4http6header3map15hash_elem_usingNtNtB4_4name10HeaderNameECskspKcFIsYcD_12pingora_http(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) dereferenceable_or_null(96) %i.v, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.j), !noalias !585 ; 6 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.hn = load i16, ptr %i.hm, align 8, !alias.scope !586, !noalias !587, !noundef !4 ; 3 uses
  %i.ho = and i16 %i.hn, %i.hl
  %i.hp = zext nneg i16 %i.ho to i64
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.hs = load i64, ptr %i.hr, align 8, !alias.scope !586, !noalias !587, !noundef !4 ; 2 uses
  %i.ht = load ptr, ptr %i.hq, align 8, !alias.scope !586, !noalias !587, !nonnull !4
  %i.hu = zext i16 %i.hn to i64
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  %i.hw = load i64, ptr %i.hv, align 8, !alias.scope !586, !noalias !587 ; 15 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  %i.hy = load ptr, ptr %i.hx, align 8, !alias.scope !586, !noalias !587, !nonnull !4 ; 3 uses
  %i.hz = icmp eq ptr %.sroa.020.0.i.i, null      ; 7 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.ib = load i64, ptr %i.ia, align 8, !alias.scope !573, !noalias !588 ; 9 uses
  %i.ic = load ptr, ptr %.sroa.522.0..sroa_idx.i.i, align 8, !alias.scope !573, !noalias !588 ; 8 uses
  %.not = icmp eq i64 %i.hs, 0
  br label %.outer135

.outer135:                                        ; preds = %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i52.i.i, %bb.br
  %.sroa.08.0.i47.i.i.ph = phi i64 [ %i.jo, %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i52.i.i ], [ 0, %bb.br ] ; 3 uses
  %.sroa.0.0.i48.i.i.ph = phi i64 [ %i.jp, %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i52.i.i ], [ %i.hp, %bb.br ] ; 2 uses
  %i.id = icmp ult i64 %.sroa.0.0.i48.i.i.ph, %i.hs ; 2 uses
  %.not.not = xor i1 %.not, true
  %brmerge188 = or i1 %i.id, %.not.not
  %.sroa.0.0.i48.i.i.ph.mux = select i1 %i.id, i64 %.sroa.0.0.i48.i.i.ph, i64 0 ; 7 uses
  br i1 %brmerge188, label %.loopexit, label %infloop187

.loopexit:                                        ; preds = %.outer135
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %.sroa.0.0.i48.i.i.ph.mux ; 2 uses
  %i.if = load i16, ptr %i.ie, align 2, !noalias !575, !noundef !4 ; 2 uses
  %.not.i51.i.i = icmp eq i16 %i.if, -1
  br i1 %.not.i51.i.i, label %bb.bu, label %bb.bt

bb.bs:                                            ; preds = %bb.cl
  unreachable

bb.bt:                                            ; preds = %.loopexit
  %i.ig = zext i16 %i.if to i64                   ; 6 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ie, i64 2
  %i.ii = load i16, ptr %i.ih, align 2, !noalias !575, !noundef !4 ; 2 uses
  %i.ij = and i16 %i.ii, %i.hn
  %i.ik = zext i16 %i.ij to i64
  %i.il = sub i64 %.sroa.0.0.i48.i.i.ph.mux, %i.ik
  %i.im = and i64 %i.il, %i.hu
  %i.in = icmp samesign ult i64 %i.im, %.sroa.08.0.i47.i.i.ph
  br i1 %i.in, label %bb.ct, label %bb.cg

bb.bu:                                            ; preds = %.loopexit
  %i.io = icmp ult i64 %i.hw, 96076792050570582
  call void @llvm.assume(i1 %i.io)
  %.sroa.6108.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.6108.0.copyload.i.i.i = load ptr, ptr %.sroa.6108.0..sroa_idx.i.i.i, align 8, !alias.scope !573, !noalias !588 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !589)
  %i.ip = icmp samesign ugt i64 %i.hw, 32767
  br i1 %i.ip, label %bb.bz, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.iq = getelementptr inbounds nuw i8, ptr %..i, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !592
  %i.ir = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store i16 %i.hl, ptr %i.ir, align 8, !noalias !592
  %i.is = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store ptr %.sroa.020.0.i.i, ptr %i.is, align 8, !noalias !595
  %.sroa.693.0..sroa_idx94.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store ptr %i.ic, ptr %.sroa.693.0..sroa_idx94.i.i.i, align 8, !noalias !595
  %.sroa.897.0..sroa_idx98.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store i64 %i.ib, ptr %.sroa.897.0..sroa_idx98.i.i.i, align 8, !noalias !595
  %.sroa.10101.0..sroa_idx102.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store ptr %.sroa.6108.0.copyload.i.i.i, ptr %.sroa.10101.0..sroa_idx102.i.i.i, align 8, !noalias !595
  %i.it = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %.sroa.099.0.copyload.i.i, ptr %i.it, align 8, !noalias !596
  %.sroa.5111.0..sroa_idx112.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %i.y, ptr %.sroa.5111.0..sroa_idx112.i.i.i, align 8, !noalias !596
  %.sroa.6114.0..sroa_idx115.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 %i.aa, ptr %.sroa.6114.0..sroa_idx115.i.i.i, align 8, !noalias !596
  %.sroa.7117.0..sroa_idx118.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store ptr %.sroa.18.0.copyload.i.i, ptr %.sroa.7117.0..sroa_idx118.i.i.i, align 8, !noalias !596
  store i64 0, ptr %i.c, align 8, !noalias !592
  %i.iu = load i64, ptr %i.iq, align 8, !range !5, !alias.scope !597, !noalias !600, !noundef !4
  %i.iv = icmp eq i64 %i.hw, %i.iu
  br i1 %i.iv, label %bb.bw, label %bb.cd

bb.bw:                                            ; preds = %bb.bv
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEE8grow_oneB1y_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.iq)
          to label %._crit_edge180.i.i.i unwind label %bb.bx, !noalias !602

._crit_edge180.i.i.i:                             ; preds = %bb.bw
  %.pre181.i.i.i = load ptr, ptr %i.hx, align 8, !alias.scope !597, !noalias !600
  br label %bb.cd

bb.bx:                                            ; preds = %bb.bw
  %i.iw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEEB1n_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(96) %i.c) #20
          to label %.body43.thread.i.i unwind label %bb.by, !noalias !603

bb.by:                                            ; preds = %bb.bx
  %i.ix = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !602
  unreachable

bb.bz:                                            ; preds = %bb.bu
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.099.0.copyload.i.i) ]
  %i.iy = getelementptr inbounds nuw i8, ptr %.sroa.099.0.copyload.i.i, i64 32
  %i.iz = load ptr, ptr %i.iy, align 8, !noalias !604, !nonnull !4, !noundef !4
  invoke void %i.iz(ptr noundef %.sroa.18.0.copyload.i.i, ptr noundef nonnull %i.y, i64 noundef %i.aa)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEBF_.exit.i.i.i.i unwind label %bb.ca, !noalias !611, !inline_history !90

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEBF_.exit.i.i.i.i: ; preds = %bb.bz
  br i1 %i.hz, label %bb.dm, label %.invoke.i.i

bb.ca:                                            ; preds = %bb.bz
  %i.ja = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.hz, label %.body43.thread.i.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.jb = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i.i, i64 32
  %i.jc = load ptr, ptr %i.jb, align 8, !noalias !612, !nonnull !4, !noundef !4
  invoke void %i.jc(ptr noundef %.sroa.6108.0.copyload.i.i.i, ptr noundef %i.ic, i64 noundef %i.ib)
          to label %.body43.thread.i.i unwind label %bb.cc, !noalias !611, !inline_history !36

bb.cc:                                            ; preds = %bb.cb
  %i.jd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !611
  unreachable

bb.cd:                                            ; preds = %._crit_edge180.i.i.i, %bb.bv
  %i.je = phi ptr [ %.pre181.i.i.i, %._crit_edge180.i.i.i ], [ %i.hy, %bb.bv ]
  %i.jf = getelementptr inbounds nuw [96 x i8], ptr %i.je, i64 %i.hw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.jf, ptr noundef nonnull readonly align 8 dereferenceable(96) %i.c, i64 96, i1 false), !noalias !603
  %i.jg = add nuw nsw i64 %i.hw, 1
  store i64 %i.jg, ptr %i.hv, align 8, !alias.scope !597, !noalias !600
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !592
  %i.jh = load i64, ptr %i.hr, align 8, !alias.scope !586, !noalias !587, !noundef !4 ; 2 uses
  %i.ji = icmp ult i64 %.sroa.0.0.i48.i.i.ph.mux, %i.jh
  br i1 %i.ji, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.jj = load ptr, ptr %i.hq, align 8, !alias.scope !586, !noalias !587, !nonnull !4, !noundef !4
  %i.jk = trunc nuw nsw i64 %i.hw to i16
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.jj, i64 %.sroa.0.0.i48.i.i.ph.mux ; 2 uses
  store i16 %i.jk, ptr %i.jl, align 2, !noalias !575
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 2
  store i16 %i.hl, ptr %i.jm, align 2, !noalias !575
  br label %.thread155.i.i

bb.cf:                                            ; preds = %bb.cd
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.0.i48.i.i.ph.mux, i64 noundef %i.jh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #23
          to label %.noexc76.i.i unwind label %.body43.thread146.i.i, !noalias !377

.noexc76.i.i:                                     ; preds = %bb.cf
  unreachable

bb.cg:                                            ; preds = %bb.bt
  %i.jn = icmp eq i16 %i.ii, %i.hl
  br i1 %i.jn, label %bb.ch, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i52.i.i

_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i52.i.i: ; preds = %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i53.i.i, %.split.i58.i.i, %bb.ck, %bb.ci, %bb.cg
  %i.jo = add nuw nsw i64 %.sroa.08.0.i47.i.i.ph, 1
  %i.jp = add i64 %.sroa.0.0.i48.i.i.ph.mux, 1
  br label %.outer135

bb.ch:                                            ; preds = %bb.cg
  %i.jq = icmp ugt i64 %i.hw, %i.ig
  br i1 %i.jq, label %bb.ci, label %bb.cl

bb.ci:                                            ; preds = %bb.ch
  %i.jr = getelementptr inbounds nuw [96 x i8], ptr %i.hy, i64 %i.ig ; 6 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 56
  %i.jt = load ptr, ptr %i.js, align 8, !noalias !575, !noundef !4
  %i.ju = icmp ne ptr %i.jt, null                 ; 2 uses
  %i.jv = xor i1 %i.hz, %i.ju
  br i1 %i.jv, label %bb.cj, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i52.i.i

bb.cj:                                            ; preds = %bb.ci
  br i1 %i.ju, label %bb.ck, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i53.i.i

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.020.0.i.i) ]
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jr, i64 72
  %i.jx = load i64, ptr %i.jw, align 8, !noalias !575, !noundef !4
  %i.jy = icmp eq i64 %i.jx, %i.ib
  br i1 %i.jy, label %.split.i58.i.i, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i52.i.i

.split.i58.i.i:                                   ; preds = %bb.ck
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jr, i64 64
  %i.ka = load ptr, ptr %i.jz, align 8, !noalias !575, !noundef !4
  %bcmp.i.i.i.i.i59.i.i = call i32 @bcmp(ptr %i.ka, ptr %i.ic, i64 %i.ib), !noalias !575
  %i.kb = icmp eq i32 %bcmp.i.i.i.i.i59.i.i, 0
  br i1 %i.kb, label %bb.cm, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i52.i.i

bb.cl:                                            ; preds = %bb.ch
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ig, i64 noundef %i.hw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #23
          to label %bb.bs unwind label %bb.di, !noalias !575

_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i53.i.i: ; preds = %bb.cj
  call void @llvm.assume(i1 %i.hz)
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jr, i64 64
  %i.kd = load i8, ptr %i.kc, align 8, !range !210, !noalias !575, !noundef !4
  %i.ke = icmp eq i8 %i.kd, %.sroa.522.0.i.i
  br i1 %i.ke, label %bb.cm, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i52.i.i

bb.cm:                                            ; preds = %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i53.i.i, %.split.i58.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !625)
  %i.kf = load i64, ptr %i.jr, align 8, !range !247, !noalias !628, !noundef !4
  %i.kg = trunc nuw i64 %i.kf to i1
  br i1 %i.kg, label %bb.co, label %bb.cp

bb.cn:                                            ; preds = %.invoke.i.i54.i.i, %bb.co
  %i.kh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.099.0.copyload.i.i) ]
  %i.ki = getelementptr inbounds nuw i8, ptr %.sroa.099.0.copyload.i.i, i64 32
  %i.kj = load ptr, ptr %i.ki, align 8, !noalias !631, !nonnull !4, !noundef !4
  invoke void %i.kj(ptr noundef %.sroa.18.0.copyload.i.i, ptr noundef nonnull %i.y, i64 noundef %i.aa)
          to label %.thread133.i.i.i unwind label %bb.cq, !noalias !638, !inline_history !90

bb.co:                                            ; preds = %bb.cm
  %i.kk = getelementptr inbounds nuw i8, ptr %i.jr, i64 8
  %i.kl = load i64, ptr %i.kk, align 8, !noalias !628, !noundef !4
  invoke void @_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapINtB5_9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameE23remove_all_extra_valuesBX_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) dereferenceable_or_null(96) %i.v, i64 noundef %i.kl)
          to label %._crit_edge.i.i56.i.i unwind label %bb.cn, !noalias !638

._crit_edge.i.i56.i.i:                            ; preds = %bb.co
  %.pre.i.i57.i.i = load i64, ptr %i.hv, align 8, !alias.scope !639, !noalias !640
  br label %bb.cp

bb.cp:                                            ; preds = %._crit_edge.i.i56.i.i, %bb.cm
  %i.km = phi i64 [ %.pre.i.i57.i.i, %._crit_edge.i.i56.i.i ], [ %i.hw, %bb.cm ] ; 2 uses
  %i.kn = icmp ugt i64 %i.km, %i.ig
  br i1 %i.kn, label %bb.cr, label %.invoke.i.i54.i.i

.invoke.i.i54.i.i:                                ; preds = %bb.cp
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef range(i64 0, 65536) %i.ig, i64 noundef %i.km, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #23
          to label %.cont.i.i55.i.i unwind label %bb.cn, !noalias !638

.cont.i.i55.i.i:                                  ; preds = %.invoke.i.i54.i.i
  unreachable

bb.cq:                                            ; preds = %bb.cn
  %i.ko = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !638
  unreachable

bb.cr:                                            ; preds = %bb.cp
  %i.kp = load ptr, ptr %i.hx, align 8, !alias.scope !639, !noalias !640, !nonnull !4, !noundef !4
  %i.kq = getelementptr inbounds nuw [96 x i8], ptr %i.kp, i64 %i.ig ; 4 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 24 ; 2 uses
  %.sroa.077.0.copyload.i.i.i = load ptr, ptr %i.kr, align 8, !noalias !641 ; 2 uses
  %.sroa.478.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.kq, i64 32 ; 2 uses
  %.sroa.9121.16.copyload.i.i = load ptr, ptr %.sroa.478.0..sroa_idx.i.i.i, align 8, !noalias !642
  %.sroa.11.16..sroa.478.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.kq, i64 40 ; 2 uses
  %.sroa.11.16.copyload.i.i = load i64, ptr %.sroa.11.16..sroa.478.0..sroa_idx.i.sroa_idx.i.i, align 8, !noalias !642
  %.sroa.12.16..sroa.478.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.kq, i64 48 ; 2 uses
  %.sroa.12.16.copyload.i.i = load ptr, ptr %.sroa.12.16..sroa.478.0..sroa_idx.i.sroa_idx.i.i, align 8, !noalias !642
  store ptr %.sroa.099.0.copyload.i.i, ptr %i.kr, align 8, !noalias !643
  store ptr %i.y, ptr %.sroa.478.0..sroa_idx.i.i.i, align 8, !noalias !643
  store i64 %i.aa, ptr %.sroa.11.16..sroa.478.0..sroa_idx.i.sroa_idx.i.i, align 8, !noalias !643
  store ptr %.sroa.18.0.copyload.i.i, ptr %.sroa.12.16..sroa.478.0..sroa_idx.i.sroa_idx.i.i, align 8, !noalias !643
  call void @llvm.experimental.noalias.scope.decl(metadata !644)
  call void @llvm.experimental.noalias.scope.decl(metadata !647)
  br i1 %i.hz, label %bb.dn, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  call void @llvm.experimental.noalias.scope.decl(metadata !650)
  call void @llvm.experimental.noalias.scope.decl(metadata !653)
  call void @llvm.experimental.noalias.scope.decl(metadata !656)
  call void @llvm.experimental.noalias.scope.decl(metadata !659)
  %i.ks = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.kt = load ptr, ptr %i.ks, align 8, !alias.scope !662, !noalias !588, !noundef !4
  %i.ku = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i.i, i64 32
  %i.kv = load ptr, ptr %i.ku, align 8, !noalias !663, !nonnull !4, !noundef !4
  invoke void %i.kv(ptr noundef %i.kt, ptr noundef %i.ic, i64 noundef %i.ib)
          to label %bb.dn unwind label %.body43.thread146.i.i, !noalias !377, !inline_history !664

bb.ct:                                            ; preds = %bb.bt
  %i.kw = icmp samesign ugt i64 %.sroa.08.0.i47.i.i.ph, 511
  %i.kx = load i64, ptr %i.v, align 8, !range !12, !alias.scope !586, !noalias !587
  %i.ky = icmp ne i64 %i.kx, 2
  %.sroa.013.0.i60.i.i = select i1 %i.kw, i1 %i.ky, i1 false
  %.sroa.666.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.666.0.copyload.i.i.i = load ptr, ptr %.sroa.666.0..sroa_idx.i.i.i, align 8, !alias.scope !573, !noalias !588 ; 3 uses
  %i.kz = icmp ult i64 %i.hw, 96076792050570582
  call void @llvm.assume(i1 %i.kz)
  call void @llvm.experimental.noalias.scope.decl(metadata !665)
  %i.la = icmp samesign ugt i64 %i.hw, 32767
  br i1 %i.la, label %bb.cy, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.lb = getelementptr inbounds nuw i8, ptr %..i, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !668
  %i.lc = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store i16 %i.hl, ptr %i.lc, align 8, !noalias !668
  %i.ld = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr %.sroa.020.0.i.i, ptr %i.ld, align 8, !noalias !671
  %.sroa.6.0..sroa_idx55.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store ptr %i.ic, ptr %.sroa.6.0..sroa_idx55.i.i.i, align 8, !noalias !671
  %.sroa.8.0..sroa_idx58.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i64 %i.ib, ptr %.sroa.8.0..sroa_idx58.i.i.i, align 8, !noalias !671
  %.sroa.10.0..sroa_idx61.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr %.sroa.666.0.copyload.i.i.i, ptr %.sroa.10.0..sroa_idx61.i.i.i, align 8, !noalias !671
  %i.le = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %.sroa.099.0.copyload.i.i, ptr %i.le, align 8, !noalias !672
  %.sroa.569.0..sroa_idx70.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.y, ptr %.sroa.569.0..sroa_idx70.i.i.i, align 8, !noalias !672
  %.sroa.672.0..sroa_idx73.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %i.aa, ptr %.sroa.672.0..sroa_idx73.i.i.i, align 8, !noalias !672
  %.sroa.7.0..sroa_idx75.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %.sroa.18.0.copyload.i.i, ptr %.sroa.7.0..sroa_idx75.i.i.i, align 8, !noalias !672
  store i64 0, ptr %i.b, align 8, !noalias !668
  %i.lf = load i64, ptr %i.lb, align 8, !range !5, !alias.scope !673, !noalias !676, !noundef !4
  %i.lg = icmp eq i64 %i.hw, %i.lf
  br i1 %i.lg, label %bb.cv, label %bb.dc

bb.cv:                                            ; preds = %bb.cu
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEE8grow_oneB1y_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.lb)
          to label %._crit_edge.i74.i.i unwind label %bb.cw, !noalias !678

._crit_edge.i74.i.i:                              ; preds = %bb.cv
  %.pre.i75.i.i = load ptr, ptr %i.hx, align 8, !alias.scope !673, !noalias !676
  br label %bb.dc

bb.cw:                                            ; preds = %bb.cv
  %i.lh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEEB1n_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(96) %i.b) #20
          to label %.body43.thread.i.i unwind label %bb.cx, !noalias !679

bb.cx:                                            ; preds = %bb.cw
  %i.li = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !678
  unreachable

bb.cy:                                            ; preds = %bb.ct
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.099.0.copyload.i.i) ]
  %i.lj = getelementptr inbounds nuw i8, ptr %.sroa.099.0.copyload.i.i, i64 32
  %i.lk = load ptr, ptr %i.lj, align 8, !noalias !680, !nonnull !4, !noundef !4
  invoke void %i.lk(ptr noundef %.sroa.18.0.copyload.i.i, ptr noundef nonnull %i.y, i64 noundef %i.aa)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEBF_.exit.i46.i.i.i unwind label %bb.cz, !noalias !687, !inline_history !90

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEBF_.exit.i46.i.i.i: ; preds = %bb.cy
  br i1 %i.hz, label %bb.dm, label %.invoke.i.i

bb.cz:                                            ; preds = %bb.cy
  %i.ll = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.hz, label %.body43.thread.i.i, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.lm = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i.i, i64 32
  %i.ln = load ptr, ptr %i.lm, align 8, !noalias !688, !nonnull !4, !noundef !4
  invoke void %i.ln(ptr noundef %.sroa.666.0.copyload.i.i.i, ptr noundef %i.ic, i64 noundef %i.ib)
          to label %.body43.thread.i.i unwind label %bb.db, !noalias !687, !inline_history !36

bb.db:                                            ; preds = %bb.da
  %i.lo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !687
  unreachable

bb.dc:                                            ; preds = %._crit_edge.i74.i.i, %bb.cu
  %i.lp = phi ptr [ %.pre.i75.i.i, %._crit_edge.i74.i.i ], [ %i.hy, %bb.cu ]
  %i.lq = getelementptr inbounds nuw [96 x i8], ptr %i.lp, i64 %i.hw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.lq, ptr noundef nonnull readonly align 8 dereferenceable(96) %i.b, i64 96, i1 false), !noalias !679
  %i.lr = add nuw nsw i64 %i.hw, 1
  store i64 %i.lr, ptr %i.hv, align 8, !alias.scope !673, !noalias !676
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !668
  %i.ls = load ptr, ptr %i.hq, align 8, !alias.scope !701, !noalias !704, !nonnull !4, !noundef !4
  %i.lt = load i64, ptr %i.hr, align 8, !alias.scope !701, !noalias !704, !noundef !4 ; 2 uses
  %i.lu = trunc nuw nsw i64 %i.hw to i16
  %.not159 = icmp eq i64 %i.lt, 0
  br label %.outer132

.outer132:                                        ; preds = %bb.dd, %bb.dc
  %.sroa.6.0.i.i63.i.i.ph = phi i16 [ %i.mb, %bb.dd ], [ %i.hl, %bb.dc ] ; 2 uses
  %.sroa.09.0.i.i64.i.i.ph = phi i16 [ %i.lx, %bb.dd ], [ %i.lu, %bb.dc ] ; 2 uses
  %.sroa.07.0.i.i65.i.i.ph = phi i64 [ %i.ma, %bb.dd ], [ 0, %bb.dc ] ; 2 uses
end_hunk_0
