Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_tail-cba96ed9f34a954b.uu_tail.c5e32ca4799a957a-cgu.0?download=true
inline.NumInlined: 2464
inline.NumDeleted: 1150
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_RNvCsgZlHlzpN0xi_7uu_tail9tail_file:bb.a
  %i.ahx = zext nneg i32 %i.ahs to i64
  %i.ahy = sub i64 %i.ahu, %i.ahx                 ; 2 uses
  %.not103.i = icmp eq i64 %i.ahv, 0
  br i1 %.not103.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph141.i

bb.ho:                                            ; preds = %bb.hi, %bb.hh
  %.sroa.26.0.i = phi i64 [ %i.agz, %bb.hi ], [ %i.ja, %bb.hh ] ; 4 uses
  %.sroa.0.0.i316 = phi ptr [ %i.agy, %bb.hi ], [ %i.agu, %bb.hh ] ; 2 uses
  %i.ahz = icmp samesign ult i64 %.sroa.26.0.i, 16
  br i1 %i.ahz, label %.preheader.i, label %.preheader111.i

.preheader.i:                                     ; preds = %bb.ho
  %.not105146.i = icmp eq i64 %.sroa.26.0.i, 0
  br i1 %.not105146.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph150.i

.preheader111.i:                                  ; preds = %bb.ho, %bb.hr
  %.sroa.0.3145.i = phi ptr [ %i.aia, %bb.hr ], [ %.sroa.0.0.i316, %bb.ho ] ; 2 uses
  %.sroa.26.3144.i = phi i64 [ %i.aib, %bb.hr ], [ %.sroa.26.0.i, %bb.ho ]
  %.sroa.084.3143.i = phi i64 [ %i.aim, %bb.hr ], [ 0, %bb.ho ]
  %i.aia = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i, i64 1
  %i.aib = add nsw i64 %.sroa.26.3144.i, -1       ; 2 uses
  %i.aic = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i, i64 10) ; 2 uses
  %i.aid = extractvalue { i64, i1 } %i.aic, 0
  %i.aie = extractvalue { i64, i1 } %i.aic, 1
  br i1 %i.aie, label %.loopexit845, label %bb.hp, !prof !18

bb.hp:                                            ; preds = %.preheader111.i
  %i.aif = load i8, ptr %.sroa.0.3145.i, align 1, !alias.scope !4120, !noalias !4121, !noundef !10
  %i.aig = zext i8 %i.aif to i32
  %i.aih = add nsw i32 %i.aig, -48                ; 2 uses
  %i.aii = icmp ult i32 %i.aih, 10
  br i1 %i.aii, label %bb.hq, label %.loopexit845

bb.hq:                                            ; preds = %bb.hp
  %i.aij = zext nneg i32 %i.aih to i64
  %i.aik = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.aid, i64 %i.aij) ; 2 uses
  %i.ail = extractvalue { i64, i1 } %i.aik, 1
  br i1 %i.ail, label %.loopexit845, label %bb.hr, !prof !18

bb.hr:                                            ; preds = %bb.hq
  %i.aim = extractvalue { i64, i1 } %i.aik, 0     ; 2 uses
  %.not104.i = icmp eq i64 %i.aib, 0
  br i1 %.not104.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.preheader111.i

.lr.ph150.i:                                      ; preds = %.preheader.i, %bb.hs
  %.sroa.0.4149.i = phi ptr [ %i.ait, %bb.hs ], [ %.sroa.0.0.i316, %.preheader.i ] ; 2 uses
  %.sroa.26.4148.i = phi i64 [ %i.ais, %bb.hs ], [ %.sroa.26.0.i, %.preheader.i ]
  %.sroa.084.4147.i = phi i64 [ %i.aiv, %bb.hs ], [ 0, %.preheader.i ]
  %i.ain = load i8, ptr %.sroa.0.4149.i, align 1, !alias.scope !4120, !noalias !4121, !noundef !10
  %i.aio = zext i8 %i.ain to i32
  %i.aip = add nsw i32 %i.aio, -48                ; 2 uses
  %i.aiq = icmp ult i32 %i.aip, 10
  br i1 %i.aiq, label %bb.hs, label %.loopexit845

bb.hs:                                            ; preds = %.lr.ph150.i
  %i.air = mul i64 %.sroa.084.4147.i, 10
  %i.ais = add nsw i64 %.sroa.26.4148.i, -1       ; 2 uses
  %i.ait = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i, i64 1
  %i.aiu = zext nneg i32 %i.aip to i64
  %i.aiv = add i64 %i.air, %i.aiu                 ; 2 uses
  %.not105.i = icmp eq i64 %i.ais, 0
  br i1 %.not105.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph150.i

bb.ht:                                            ; preds = %bb.as
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.jc, ptr nonnull align 1 %i.iy, i64 %i.ja, i1 false)
  br label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgZlHlzpN0xi_7uu_tail.exit215.thread711

.loopexit845:                                     ; preds = %.lr.ph.i314, %bb.hl, %bb.hk, %.lr.ph141.i, %.preheader111.i, %bb.hp, %bb.hq, %.lr.ph150.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit, %bb.hg, %bb.hg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.co, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.agu, i64 noundef %i.ja) #36
  %i.aiw = load i8, ptr %i.co, align 8, !range !13, !noundef !10
  %i.aix = trunc nuw i8 %i.aiw to i1
  br i1 %i.aix, label %bb.hx, label %bb.hy

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit: ; preds = %bb.hm, %bb.hn, %bb.hr, %bb.hs, %.preheader.i, %.preheader114.i
  %.sroa.15628.0 = phi i64 [ %i.aiv, %bb.hs ], [ %i.ahy, %bb.hn ], [ %i.aim, %bb.hr ], [ 0, %.preheader.i ], [ 0, %.preheader114.i ], [ %i.ahp, %bb.hm ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsgZlHlzpN0xi_7uu_tail(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cq, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @52, i64 noundef 4, i64 noundef %.sroa.15628.0) #33
  br label %bb.hu

bb.hu:                                            ; preds = %bb.hy, %bb.hx, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit
  %.sroa.068.0.not = phi i1 [ true, %bb.hx ], [ %i.jb, %bb.hy ], [ %i.jb, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit ]
  %i.aiy = getelementptr inbounds nuw i8, ptr %i.cw, i64 8 ; 3 uses
  %i.aiz = load ptr, ptr %i.aiy, align 8, !nonnull !10, !noundef !10
  %i.aja = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.ajb = load i64, ptr %i.aja, align 8, !noundef !10 ; 16 uses
  %.not.i317 = icmp slt i64 %i.ajb, 0
  br i1 %.not.i317, label %bb.hz, label %bb.hv, !prof !21

bb.hv:                                            ; preds = %bb.hu
  %i.ajc = icmp eq i64 %i.ajb, 0
  br i1 %i.ajc, label %.thread, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !noalias !4122
  %i.ajd = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %i.ajb, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !4122 ; 18 uses
  %i.aje = icmp eq ptr %i.ajd, null
  br i1 %i.aje, label %bb.hz, label %bb.ia

bb.hx:                                            ; preds = %.loopexit845
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn)
  store i64 %i.ja, ptr %i.cn, align 8
  %.sroa.5621.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store ptr %i.agu, ptr %.sroa.5621.0..sroa_idx, align 8
  %.sroa.9623.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  store i64 %i.ja, ptr %.sroa.9623.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cq, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @52, i64 noundef 4, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.cn) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn)
  br label %bb.hu

bb.hy:                                            ; preds = %.loopexit845
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.ajg = load double, ptr %i.ajf, align 8, !noundef !10
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsgZlHlzpN0xi_7uu_tail(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cq, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @52, i64 noundef 4, double noundef %i.ajg) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co)
  br label %bb.hu

bb.hz:                                            ; preds = %bb.hu, %bb.hw
  %.sroa.4673.0.ph = phi i64 [ 1, %bb.hw ], [ 0, %bb.hu ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4673.0.ph, i64 %i.ajb) #39
  unreachable

bb.ia:                                            ; preds = %bb.hw
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ajd, ptr nonnull align 1 %i.aiz, i64 %i.ajb, i1 false)
  %cond809 = icmp eq i64 %i.ajb, 1
  %i.ajh = load i8, ptr %i.ajd, align 1, !alias.scope !4123, !noalias !4124 ; 2 uses
  br i1 %cond809, label %bb.ib, label %thread-pre-split.i351

bb.ib:                                            ; preds = %bb.ia
  switch i8 %i.ajh, label %bb.ii [
    i8 43, label %.thread
    i8 45, label %.thread
  ]

thread-pre-split.i351:                            ; preds = %bb.ia
  switch i8 %i.ajh, label %bb.ii [
    i8 43, label %bb.ic
    i8 45, label %bb.id
  ]

bb.ic:                                            ; preds = %thread-pre-split.i351
  %i.aji = getelementptr inbounds nuw i8, ptr %i.ajd, i64 1
  %i.ajj = add nsw i64 %i.ajb, -1
  br label %bb.ii

bb.id:                                            ; preds = %thread-pre-split.i351
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.ajd, i64 1 ; 2 uses
  %i.ajl = add nsw i64 %i.ajb, -1                 ; 2 uses
  %i.ajm = icmp samesign ult i64 %i.ajb, 17
  br i1 %i.ajm, label %.lr.ph141.i331, label %.lr.ph.i321

.lr.ph.i321:                                      ; preds = %bb.id, %bb.ig
  %.sroa.0.1136.i322 = phi ptr [ %i.ajn, %bb.ig ], [ %i.ajk, %bb.id ] ; 2 uses
  %.sroa.26.1135.i323 = phi i64 [ %i.ajo, %bb.ig ], [ %i.ajl, %bb.id ]
  %.sroa.084.0134.i324 = phi i64 [ %i.ajz, %bb.ig ], [ 0, %bb.id ]
  %i.ajn = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i322, i64 1
  %i.ajo = add nsw i64 %.sroa.26.1135.i323, -1    ; 2 uses
  %i.ajp = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i324, i64 10) ; 2 uses
  %i.ajq = extractvalue { i64, i1 } %i.ajp, 0
  %i.ajr = extractvalue { i64, i1 } %i.ajp, 1
  br i1 %i.ajr, label %.thread, label %bb.ie, !prof !18

bb.ie:                                            ; preds = %.lr.ph.i321
  %i.ajs = load i8, ptr %.sroa.0.1136.i322, align 1, !alias.scope !4123, !noalias !4124, !noundef !10
  %i.ajt = zext i8 %i.ajs to i32
  %i.aju = add nsw i32 %i.ajt, -48                ; 2 uses
  %i.ajv = icmp ult i32 %i.aju, 10
  br i1 %i.ajv, label %bb.if, label %.thread

bb.if:                                            ; preds = %bb.ie
  %i.ajw = zext nneg i32 %i.aju to i64
  %i.ajx = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.ajq, i64 %i.ajw) ; 2 uses
  %i.ajy = extractvalue { i64, i1 } %i.ajx, 1
  br i1 %i.ajy, label %.thread, label %bb.ig, !prof !18

bb.ig:                                            ; preds = %bb.if
  %i.ajz = extractvalue { i64, i1 } %i.ajx, 0     ; 2 uses
  %.not102.i326 = icmp eq i64 %i.ajo, 0
  br i1 %.not102.i326, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit353, label %.lr.ph.i321

.lr.ph141.i331:                                   ; preds = %bb.id, %bb.ih
  %.sroa.0.2140.i332 = phi ptr [ %i.akg, %bb.ih ], [ %i.ajk, %bb.id ] ; 2 uses
  %.sroa.26.2139.i333 = phi i64 [ %i.akf, %bb.ih ], [ %i.ajl, %bb.id ]
  %.sroa.084.2138.i334 = phi i64 [ %i.aki, %bb.ih ], [ 0, %bb.id ]
  %i.aka = load i8, ptr %.sroa.0.2140.i332, align 1, !alias.scope !4123, !noalias !4124, !noundef !10
  %i.akb = zext i8 %i.aka to i32
  %i.akc = add nsw i32 %i.akb, -48                ; 2 uses
  %i.akd = icmp ult i32 %i.akc, 10
  br i1 %i.akd, label %bb.ih, label %.thread

bb.ih:                                            ; preds = %.lr.ph141.i331
  %i.ake = mul i64 %.sroa.084.2138.i334, 10
  %i.akf = add nsw i64 %.sroa.26.2139.i333, -1    ; 2 uses
  %i.akg = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i332, i64 1
  %i.akh = zext nneg i32 %i.akc to i64
  %i.aki = sub i64 %i.ake, %i.akh                 ; 2 uses
  %.not103.i335 = icmp eq i64 %i.akf, 0
  br i1 %.not103.i335, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit353, label %.lr.ph141.i331

bb.ii:                                            ; preds = %bb.ib, %bb.ic, %thread-pre-split.i351
  %.sroa.26.0.i336 = phi i64 [ %i.ajj, %bb.ic ], [ %i.ajb, %thread-pre-split.i351 ], [ %i.ajb, %bb.ib ] ; 4 uses
  %.sroa.0.0.i337 = phi ptr [ %i.aji, %bb.ic ], [ %i.ajd, %thread-pre-split.i351 ], [ %i.ajd, %bb.ib ] ; 2 uses
  %i.akj = icmp samesign ult i64 %.sroa.26.0.i336, 16
  br i1 %i.akj, label %.preheader.i344, label %.preheader111.i338

.preheader.i344:                                  ; preds = %bb.ii
  %.not105146.i345 = icmp eq i64 %.sroa.26.0.i336, 0
  br i1 %.not105146.i345, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit353, label %.lr.ph150.i346

.preheader111.i338:                               ; preds = %bb.ii, %bb.il
  %.sroa.0.3145.i339 = phi ptr [ %i.akk, %bb.il ], [ %.sroa.0.0.i337, %bb.ii ] ; 2 uses
  %.sroa.26.3144.i340 = phi i64 [ %i.akl, %bb.il ], [ %.sroa.26.0.i336, %bb.ii ]
  %.sroa.084.3143.i341 = phi i64 [ %i.akw, %bb.il ], [ 0, %bb.ii ]
  %i.akk = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i339, i64 1
  %i.akl = add nsw i64 %.sroa.26.3144.i340, -1    ; 2 uses
  %i.akm = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i341, i64 10) ; 2 uses
  %i.akn = extractvalue { i64, i1 } %i.akm, 0
  %i.ako = extractvalue { i64, i1 } %i.akm, 1
  br i1 %i.ako, label %.thread, label %bb.ij, !prof !18

bb.ij:                                            ; preds = %.preheader111.i338
  %i.akp = load i8, ptr %.sroa.0.3145.i339, align 1, !alias.scope !4123, !noalias !4124, !noundef !10
  %i.akq = zext i8 %i.akp to i32
  %i.akr = add nsw i32 %i.akq, -48                ; 2 uses
  %i.aks = icmp ult i32 %i.akr, 10
  br i1 %i.aks, label %bb.ik, label %.thread

bb.ik:                                            ; preds = %bb.ij
  %i.akt = zext nneg i32 %i.akr to i64
  %i.aku = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.akn, i64 %i.akt) ; 2 uses
  %i.akv = extractvalue { i64, i1 } %i.aku, 1
  br i1 %i.akv, label %.thread, label %bb.il, !prof !18

bb.il:                                            ; preds = %bb.ik
  %i.akw = extractvalue { i64, i1 } %i.aku, 0     ; 2 uses
  %.not104.i343 = icmp eq i64 %i.akl, 0
  br i1 %.not104.i343, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit353, label %.preheader111.i338

.lr.ph150.i346:                                   ; preds = %.preheader.i344, %bb.im
  %.sroa.0.4149.i347 = phi ptr [ %i.ald, %bb.im ], [ %.sroa.0.0.i337, %.preheader.i344 ] ; 2 uses
  %.sroa.26.4148.i348 = phi i64 [ %i.alc, %bb.im ], [ %.sroa.26.0.i336, %.preheader.i344 ]
  %.sroa.084.4147.i349 = phi i64 [ %i.alf, %bb.im ], [ 0, %.preheader.i344 ]
  %i.akx = load i8, ptr %.sroa.0.4149.i347, align 1, !alias.scope !4123, !noalias !4124, !noundef !10
  %i.aky = zext i8 %i.akx to i32
  %i.akz = add nsw i32 %i.aky, -48                ; 2 uses
  %i.ala = icmp ult i32 %i.akz, 10
  br i1 %i.ala, label %bb.im, label %.thread

bb.im:                                            ; preds = %.lr.ph150.i346
  %i.alb = mul i64 %.sroa.084.4147.i349, 10
  %i.alc = add nsw i64 %.sroa.26.4148.i348, -1    ; 2 uses
  %i.ald = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i347, i64 1
  %i.ale = zext nneg i32 %i.akz to i64
  %i.alf = add i64 %i.alb, %i.ale                 ; 2 uses
  %.not105.i350 = icmp eq i64 %i.alc, 0
  br i1 %.not105.i350, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit353, label %.lr.ph150.i346

.thread:                                          ; preds = %.lr.ph.i321, %bb.if, %bb.ie, %.lr.ph141.i331, %.preheader111.i338, %bb.ij, %bb.ik, %.lr.ph150.i346, %bb.ib, %bb.ib, %bb.hv
  %.ph = phi ptr [ inttoptr (i64 1 to ptr), %bb.hv ], [ %i.ajd, %.preheader111.i338 ], [ %i.ajd, %.lr.ph150.i346 ], [ %i.ajd, %bb.ib ], [ %i.ajd, %.lr.ph141.i331 ], [ %i.ajd, %bb.ib ], [ %i.ajd, %bb.ik ], [ %i.ajd, %bb.ij ], [ %i.ajd, %bb.ie ], [ %i.ajd, %bb.if ], [ %i.ajd, %.lr.ph.i321 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.cm, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph, i64 noundef %i.ajb) #36
  %i.alg = load i8, ptr %i.cm, align 8, !range !13, !noundef !10
  %i.alh = trunc nuw i8 %i.alg to i1
  br i1 %i.alh, label %bb.ip, label %bb.iq

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit353: ; preds = %bb.ig, %bb.ih, %bb.il, %bb.im, %.preheader.i344
  %.sroa.15635.0 = phi i64 [ %i.akw, %bb.il ], [ %i.aki, %bb.ih ], [ %i.alf, %bb.im ], [ 0, %.preheader.i344 ], [ %i.ajz, %bb.ig ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsgZlHlzpN0xi_7uu_tail(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cq, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 5, i64 noundef %.sroa.15635.0) #33
  br label %bb.in

bb.in:                                            ; preds = %bb.iq, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit353
  %i.ali = phi ptr [ %.ph, %bb.iq ], [ %i.ajd, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit353 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ck, ptr noundef nonnull align 8 dereferenceable(24) %i.cq, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.cr, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @77, i64 noundef 23, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ck) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck)
  %i.alj = icmp eq i64 %i.ajb, 0
  br i1 %i.alj, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit356, label %bb.io

bb.io:                                            ; preds = %bb.in
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ali, i64 noundef %i.ajb, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !4125
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit356

bb.ip:                                            ; preds = %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl)
  store i64 %i.ajb, ptr %i.cl, align 8
  %.sroa.5630.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store ptr %.ph, ptr %.sroa.5630.0..sroa_idx, align 8
  %.sroa.8631.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  store i64 %i.ajb, ptr %.sroa.8631.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cq, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 5, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.cl) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ck, ptr noundef nonnull align 8 dereferenceable(24) %i.cq, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.cr, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @77, i64 noundef 23, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ck) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit356

bb.iq:                                            ; preds = %.thread
  %i.alk = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.all = load double, ptr %i.alk, align 8, !noundef !10
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsgZlHlzpN0xi_7uu_tail(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cq, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 5, double noundef %i.all) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm)
  br label %bb.in

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit356: ; preds = %bb.io, %bb.in, %bb.ip
  br i1 %.sroa.068.0.not, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit374, label %bb.jd

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit374: ; preds = %bb.jd, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit356
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj)
  store ptr %i.cr, ptr %i.cj, align 8
  %.sroa.4108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.4108.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !4126
  store ptr %i.cv, ptr %i.l, align 8, !noalias !4126
  %i.alm = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  store ptr null, ptr %i.alm, align 8, !noalias !4126
  %i.aln = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @32, ptr noundef nonnull @76, ptr noundef nonnull %i.cj) #33
  %i.alo = load ptr, ptr %i.alm, align 8, !noalias !4126, !noundef !10 ; 7 uses
  %.not.i5.i358 = icmp eq ptr %i.alo, null        ; 2 uses
  br i1 %i.aln, label %bb.ir, label %bb.is

bb.ir:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit374
  br i1 %.not.i5.i358, label %bb.iw, label %bb.ix, !prof !18

bb.is:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit374
  br i1 %.not.i5.i358, label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsgZlHlzpN0xi_7uu_tail.exit.i360.thread, label %bb.it

bb.it:                                            ; preds = %bb.is
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !4127
  %i.alp = ptrtoint ptr %i.alo to i64             ; 2 uses
  %i.alq = and i64 %i.alp, 3
  switch i64 %i.alq, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZlHlzpN0xi_7uu_tail.exit.i.i.i359
    i64 3, label %bb.iu
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZlHlzpN0xi_7uu_tail.exit.i.i.i359
    i64 1, label %bb.iv
  ], !prof !23

bb.iu:                                            ; preds = %bb.it
  %i.alr = icmp ult ptr %i.alo, inttoptr (i64 188978561024 to ptr)
  %i.als = and i64 %i.alp, 1095216660480
  %i.alt = icmp ne i64 %i.als, 1095216660480
  call void @llvm.assume(i1 %i.alr)
  call void @llvm.assume(i1 %i.alt)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZlHlzpN0xi_7uu_tail.exit.i.i.i359

bb.iv:                                            ; preds = %bb.it
  %i.alu = getelementptr i8, ptr %i.alo, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.alu) ]
  %i.alv = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  store ptr %i.alu, ptr %i.alv, align 8, !alias.scope !4128, !noalias !4127
  store i8 3, ptr %i.k, align 8, !alias.scope !4128, !noalias !4127
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.alv) #33, !noalias !4129
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZlHlzpN0xi_7uu_tail.exit.i.i.i359

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZlHlzpN0xi_7uu_tail.exit.i.i.i359: ; preds = %bb.iv, %bb.iu, %bb.it, %bb.it
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !4127
  br label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsgZlHlzpN0xi_7uu_tail.exit.i360.thread

bb.iw:                                            ; preds = %bb.ir
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @33, ptr noundef nonnull inttoptr (i64 173 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #37
  unreachable

_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsgZlHlzpN0xi_7uu_tail.exit.i360.thread: ; preds = %bb.is, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZlHlzpN0xi_7uu_tail.exit.i.i.i359
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !4126
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsgZlHlzpN0xi_7uu_tail.exit367

bb.ix:                                            ; preds = %bb.ir
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !4126
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !4130
  %i.alw = ptrtoint ptr %i.alo to i64             ; 2 uses
  %i.alx = and i64 %i.alw, 3
  switch i64 %i.alx, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZlHlzpN0xi_7uu_tail.exit.i365
    i64 3, label %bb.iy
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZlHlzpN0xi_7uu_tail.exit.i365
    i64 1, label %bb.iz
  ], !prof !23

bb.iy:                                            ; preds = %bb.ix
  %i.aly = icmp ult ptr %i.alo, inttoptr (i64 188978561024 to ptr)
  %i.alz = and i64 %i.alw, 1095216660480
  %i.ama = icmp ne i64 %i.alz, 1095216660480
  call void @llvm.assume(i1 %i.aly)
  call void @llvm.assume(i1 %i.ama)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZlHlzpN0xi_7uu_tail.exit.i365

bb.iz:                                            ; preds = %bb.ix
  %i.amb = getelementptr i8, ptr %i.alo, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.amb) ]
  %i.amc = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store ptr %i.amb, ptr %i.amc, align 8, !alias.scope !4131, !noalias !4130
  store i8 3, ptr %i.j, align 8, !alias.scope !4131, !noalias !4130
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.amc) #33, !noalias !4130
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZlHlzpN0xi_7uu_tail.exit.i365

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZlHlzpN0xi_7uu_tail.exit.i365: ; preds = %bb.iz, %bb.iy, %bb.ix, %bb.ix
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !4130
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsgZlHlzpN0xi_7uu_tail.exit367

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsgZlHlzpN0xi_7uu_tail.exit367: ; preds = %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsgZlHlzpN0xi_7uu_tail.exit.i360.thread, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZlHlzpN0xi_7uu_tail.exit.i365
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj)
  call void @llvm.experimental.noalias.scope.decl(metadata !4132)
  %.val.i368 = load i64, ptr %i.cr, align 8, !range !11, !alias.scope !4132, !noundef !10 ; 2 uses
  %i.amd = icmp eq i64 %.val.i368, 0
  br i1 %i.amd, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit370, label %bb.ja

bb.ja:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsgZlHlzpN0xi_7uu_tail.exit367
  %i.ame = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %.val1.i369 = load ptr, ptr %i.ame, align 8, !alias.scope !4132, !nonnull !10, !noundef !10
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i369, i64 noundef %.val.i368, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !4132
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit370

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit370: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsgZlHlzpN0xi_7uu_tail.exit367, %bb.ja
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr)
  %.val186 = load ptr, ptr %i.cv, align 8, !nonnull !10, !align !14, !noundef !10 ; 3 uses
  %i.amf = getelementptr inbounds nuw i8, ptr %.val186, i64 12 ; 2 uses
  %i.amg = load i32, ptr %i.amf, align 4, !noundef !10
  %i.amh = add i32 %i.amg, -1                     ; 2 uses
  store i32 %i.amh, ptr %i.amf, align 4
  %i.ami = icmp eq i32 %i.amh, 0
  br i1 %i.ami, label %bb.jb, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsgZlHlzpN0xi_7uu_tail.exit371

bb.jb:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit370
  store atomic i64 0, ptr %.val186 monotonic, align 8
  %i.amj = getelementptr inbounds nuw i8, ptr %.val186, i64 8 ; 2 uses
  %i.amk = atomicrmw xchg ptr %i.amj, i32 0 release, align 4
  %i.aml = icmp eq i32 %i.amk, 2
  br i1 %i.aml, label %bb.jc, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsgZlHlzpN0xi_7uu_tail.exit371, !prof !18

bb.jc:                                            ; preds = %bb.jb
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.amj) #33
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsgZlHlzpN0xi_7uu_tail.exit371

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsgZlHlzpN0xi_7uu_tail.exit371: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit370, %bb.jb, %bb.jc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv)
  %i.amm = getelementptr inbounds nuw i8, ptr %0, i64 77
  %i.amn = load i8, ptr %i.amm, align 1, !range !16, !noundef !10
  %.not165 = icmp eq i8 %i.amn, 2
  br i1 %.not165, label %bb.je, label %bb.jf

bb.jd:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit356
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.agu, i64 noundef %i.ja, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !4133
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit374

bb.je:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit486, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsgZlHlzpN0xi_7uu_tail.exit371
  %i.amo = getelementptr inbounds nuw i8, ptr %5, i64 142
  %i.amp = load i8, ptr %i.amo, align 2, !range !16, !noundef !10
  %i.amq = getelementptr inbounds nuw i8, ptr %5, i64 140
  %i.amr = load i8, ptr %i.amq, align 4, !range !13
  %.fr = freeze i8 %i.amr
  %i.ams = trunc i8 %.fr to i1
  %i.amt = icmp eq i8 %i.amp, 1
  %or.cond = and i1 %i.amt, %i.ams
  br i1 %or.cond, label %_RNvMs_NtNtCsgZlHlzpN0xi_7uu_tail6follow5watchNtB4_8Observer12add_bad_path.exit491, label %bb.lv

bb.jf:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsgZlHlzpN0xi_7uu_tail.exit371
  %i.amu = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.amv = load i8, ptr %i.amu, align 8, !range !13, !noundef !10
  %i.amw = trunc nuw i8 %i.amv to i1              ; 2 uses
  br i1 %i.amw, label %bb.jh, label %bb.jg

bb.jg:                                            ; preds = %bb.jf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci)
end_hunk_0
begin_hunk_1_@_RNvCsgZlHlzpN0xi_7uu_tail9tail_file:bb.a
bb.kc:                                            ; preds = %.lr.ph141.i403
  %i.ape = mul i64 %.sroa.084.2138.i406, 10
  %i.apf = add nsw i64 %.sroa.26.2139.i405, -1    ; 2 uses
  %i.apg = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i404, i64 1
  %i.aph = zext nneg i32 %i.apc to i64
  %i.api = sub i64 %i.ape, %i.aph                 ; 2 uses
  %.not103.i407 = icmp eq i64 %i.apf, 0
  br i1 %.not103.i407, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit425, label %.lr.ph141.i403

bb.kd:                                            ; preds = %bb.jx, %bb.jw
  %.sroa.26.0.i408 = phi i64 [ %i.aoj, %bb.jx ], [ %i.aoa, %bb.jw ] ; 4 uses
  %.sroa.0.0.i409 = phi ptr [ %i.aoi, %bb.jx ], [ %i.aoe, %bb.jw ] ; 2 uses
  %i.apj = icmp samesign ult i64 %.sroa.26.0.i408, 16
  br i1 %i.apj, label %.preheader.i416, label %.preheader111.i410

.preheader.i416:                                  ; preds = %bb.kd
  %.not105146.i417 = icmp eq i64 %.sroa.26.0.i408, 0
  br i1 %.not105146.i417, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit425, label %.lr.ph150.i418

.preheader111.i410:                               ; preds = %bb.kd, %bb.kg
  %.sroa.0.3145.i411 = phi ptr [ %i.apk, %bb.kg ], [ %.sroa.0.0.i409, %bb.kd ] ; 2 uses
  %.sroa.26.3144.i412 = phi i64 [ %i.apl, %bb.kg ], [ %.sroa.26.0.i408, %bb.kd ]
  %.sroa.084.3143.i413 = phi i64 [ %i.apw, %bb.kg ], [ 0, %bb.kd ]
  %i.apk = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i411, i64 1
  %i.apl = add nsw i64 %.sroa.26.3144.i412, -1    ; 2 uses
  %i.apm = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i413, i64 10) ; 2 uses
  %i.apn = extractvalue { i64, i1 } %i.apm, 0
  %i.apo = extractvalue { i64, i1 } %i.apm, 1
  br i1 %i.apo, label %.loopexit832, label %bb.ke, !prof !18

bb.ke:                                            ; preds = %.preheader111.i410
  %i.app = load i8, ptr %.sroa.0.3145.i411, align 1, !alias.scope !4142, !noalias !4143, !noundef !10
  %i.apq = zext i8 %i.app to i32
  %i.apr = add nsw i32 %i.apq, -48                ; 2 uses
  %i.aps = icmp ult i32 %i.apr, 10
  br i1 %i.aps, label %bb.kf, label %.loopexit832

bb.kf:                                            ; preds = %bb.ke
  %i.apt = zext nneg i32 %i.apr to i64
  %i.apu = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.apn, i64 %i.apt) ; 2 uses
  %i.apv = extractvalue { i64, i1 } %i.apu, 1
  br i1 %i.apv, label %.loopexit832, label %bb.kg, !prof !18

bb.kg:                                            ; preds = %bb.kf
  %i.apw = extractvalue { i64, i1 } %i.apu, 0     ; 2 uses
  %.not104.i415 = icmp eq i64 %i.apl, 0
  br i1 %.not104.i415, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit425, label %.preheader111.i410

.lr.ph150.i418:                                   ; preds = %.preheader.i416, %bb.kh
  %.sroa.0.4149.i419 = phi ptr [ %i.aqd, %bb.kh ], [ %.sroa.0.0.i409, %.preheader.i416 ] ; 2 uses
  %.sroa.26.4148.i420 = phi i64 [ %i.aqc, %bb.kh ], [ %.sroa.26.0.i408, %.preheader.i416 ]
  %.sroa.084.4147.i421 = phi i64 [ %i.aqf, %bb.kh ], [ 0, %.preheader.i416 ]
  %i.apx = load i8, ptr %.sroa.0.4149.i419, align 1, !alias.scope !4142, !noalias !4143, !noundef !10
  %i.apy = zext i8 %i.apx to i32
  %i.apz = add nsw i32 %i.apy, -48                ; 2 uses
  %i.aqa = icmp ult i32 %i.apz, 10
  br i1 %i.aqa, label %bb.kh, label %.loopexit832

bb.kh:                                            ; preds = %.lr.ph150.i418
  %i.aqb = mul i64 %.sroa.084.4147.i421, 10
  %i.aqc = add nsw i64 %.sroa.26.4148.i420, -1    ; 2 uses
  %i.aqd = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i419, i64 1
  %i.aqe = zext nneg i32 %i.apz to i64
  %i.aqf = add i64 %i.aqb, %i.aqe                 ; 2 uses
  %.not105.i422 = icmp eq i64 %i.aqc, 0
  br i1 %.not105.i422, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit425, label %.lr.ph150.i418

bb.ki:                                            ; preds = %bb.js
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aoc, ptr nonnull align 1 %i.any, i64 %i.aoa, i1 false)
  br label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgZlHlzpN0xi_7uu_tail.exit388.thread749

.loopexit832:                                     ; preds = %.lr.ph.i393, %bb.ka, %bb.jz, %.lr.ph141.i403, %.preheader111.i410, %bb.ke, %bb.kf, %.lr.ph150.i418, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit391, %bb.jv, %bb.jv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ca, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aoe, i64 noundef %i.aoa) #36
  %i.aqg = load i8, ptr %i.ca, align 8, !range !13, !noundef !10
  %i.aqh = trunc nuw i8 %i.aqg to i1
  br i1 %i.aqh, label %bb.km, label %bb.kn

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit425: ; preds = %bb.kb, %bb.kc, %bb.kg, %bb.kh, %.preheader.i416, %.preheader114.i401
  %.sroa.15646.0 = phi i64 [ %i.aqf, %bb.kh ], [ %i.api, %bb.kc ], [ %i.apw, %bb.kg ], [ 0, %.preheader.i416 ], [ 0, %.preheader114.i401 ], [ %i.aoz, %bb.kb ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsgZlHlzpN0xi_7uu_tail(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cc, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @52, i64 noundef 4, i64 noundef %.sroa.15646.0) #33
  br label %bb.kj

bb.kj:                                            ; preds = %bb.kn, %bb.km, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit425
  %.sroa.069.0.not = phi i1 [ true, %bb.km ], [ %i.aob, %bb.kn ], [ %i.aob, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit425 ]
  %.not.i426 = icmp slt i64 %.sroa.3.0, 0
  br i1 %.not.i426, label %bb.ko, label %bb.kk, !prof !21

bb.kk:                                            ; preds = %bb.kj
  %i.aqi = icmp eq i64 %.sroa.3.0, 0
  br i1 %i.aqi, label %.thread768, label %bb.kl

bb.kl:                                            ; preds = %bb.kk
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !noalias !4144
  %i.aqj = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %.sroa.3.0, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !4144 ; 18 uses
  %i.aqk = icmp eq ptr %i.aqj, null
  br i1 %i.aqk, label %bb.ko, label %bb.kp

bb.km:                                            ; preds = %.loopexit832
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz)
  store i64 %i.aoa, ptr %i.bz, align 8
  %.sroa.5639.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store ptr %i.aoe, ptr %.sroa.5639.0..sroa_idx, align 8
  %.sroa.9641.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  store i64 %i.aoa, ptr %.sroa.9641.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cc, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @52, i64 noundef 4, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.bz) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz)
  br label %bb.kj

bb.kn:                                            ; preds = %.loopexit832
  %i.aql = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.aqm = load double, ptr %i.aql, align 8, !noundef !10
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsgZlHlzpN0xi_7uu_tail(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cc, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @52, i64 noundef 4, double noundef %i.aqm) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca)
  br label %bb.kj

bb.ko:                                            ; preds = %bb.kj, %bb.kl
  %.sroa.4681.0.ph = phi i64 [ 1, %bb.kl ], [ 0, %bb.kj ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4681.0.ph, i64 %.sroa.3.0) #39
  unreachable

bb.kp:                                            ; preds = %bb.kl
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aqj, ptr nonnull align 1 %.sroa.012.0, i64 %.sroa.3.0, i1 false)
  %cond = icmp eq i64 %.sroa.3.0, 1
  %i.aqn = load i8, ptr %i.aqj, align 1, !alias.scope !4145, !noalias !4146 ; 2 uses
  br i1 %cond, label %bb.kq, label %thread-pre-split.i460

bb.kq:                                            ; preds = %bb.kp
  switch i8 %i.aqn, label %bb.kx [
    i8 43, label %.thread768
    i8 45, label %.thread768
  ]

thread-pre-split.i460:                            ; preds = %bb.kp
  switch i8 %i.aqn, label %bb.kx [
    i8 43, label %bb.kr
    i8 45, label %bb.ks
  ]

bb.kr:                                            ; preds = %thread-pre-split.i460
  %i.aqo = getelementptr inbounds nuw i8, ptr %i.aqj, i64 1
  %i.aqp = add nsw i64 %.sroa.3.0, -1
  br label %bb.kx

bb.ks:                                            ; preds = %thread-pre-split.i460
  %i.aqq = getelementptr inbounds nuw i8, ptr %i.aqj, i64 1 ; 2 uses
  %i.aqr = add nsw i64 %.sroa.3.0, -1             ; 2 uses
  %i.aqs = icmp samesign ult i64 %.sroa.3.0, 17
  br i1 %i.aqs, label %.lr.ph141.i440, label %.lr.ph.i430

.lr.ph.i430:                                      ; preds = %bb.ks, %bb.kv
  %.sroa.0.1136.i431 = phi ptr [ %i.aqt, %bb.kv ], [ %i.aqq, %bb.ks ] ; 2 uses
  %.sroa.26.1135.i432 = phi i64 [ %i.aqu, %bb.kv ], [ %i.aqr, %bb.ks ]
  %.sroa.084.0134.i433 = phi i64 [ %i.arf, %bb.kv ], [ 0, %bb.ks ]
  %i.aqt = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i431, i64 1
  %i.aqu = add nsw i64 %.sroa.26.1135.i432, -1    ; 2 uses
  %i.aqv = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i433, i64 10) ; 2 uses
  %i.aqw = extractvalue { i64, i1 } %i.aqv, 0
  %i.aqx = extractvalue { i64, i1 } %i.aqv, 1
  br i1 %i.aqx, label %.thread768, label %bb.kt, !prof !18

bb.kt:                                            ; preds = %.lr.ph.i430
  %i.aqy = load i8, ptr %.sroa.0.1136.i431, align 1, !alias.scope !4145, !noalias !4146, !noundef !10
  %i.aqz = zext i8 %i.aqy to i32
  %i.ara = add nsw i32 %i.aqz, -48                ; 2 uses
  %i.arb = icmp ult i32 %i.ara, 10
  br i1 %i.arb, label %bb.ku, label %.thread768

bb.ku:                                            ; preds = %bb.kt
  %i.arc = zext nneg i32 %i.ara to i64
  %i.ard = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.aqw, i64 %i.arc) ; 2 uses
  %i.are = extractvalue { i64, i1 } %i.ard, 1
  br i1 %i.are, label %.thread768, label %bb.kv, !prof !18

bb.kv:                                            ; preds = %bb.ku
  %i.arf = extractvalue { i64, i1 } %i.ard, 0     ; 2 uses
  %.not102.i435 = icmp eq i64 %i.aqu, 0
  br i1 %.not102.i435, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit462, label %.lr.ph.i430

.lr.ph141.i440:                                   ; preds = %bb.ks, %bb.kw
  %.sroa.0.2140.i441 = phi ptr [ %i.arm, %bb.kw ], [ %i.aqq, %bb.ks ] ; 2 uses
  %.sroa.26.2139.i442 = phi i64 [ %i.arl, %bb.kw ], [ %i.aqr, %bb.ks ]
  %.sroa.084.2138.i443 = phi i64 [ %i.aro, %bb.kw ], [ 0, %bb.ks ]
  %i.arg = load i8, ptr %.sroa.0.2140.i441, align 1, !alias.scope !4145, !noalias !4146, !noundef !10
  %i.arh = zext i8 %i.arg to i32
  %i.ari = add nsw i32 %i.arh, -48                ; 2 uses
  %i.arj = icmp ult i32 %i.ari, 10
  br i1 %i.arj, label %bb.kw, label %.thread768

bb.kw:                                            ; preds = %.lr.ph141.i440
  %i.ark = mul i64 %.sroa.084.2138.i443, 10
  %i.arl = add nsw i64 %.sroa.26.2139.i442, -1    ; 2 uses
  %i.arm = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i441, i64 1
  %i.arn = zext nneg i32 %i.ari to i64
  %i.aro = sub i64 %i.ark, %i.arn                 ; 2 uses
  %.not103.i444 = icmp eq i64 %i.arl, 0
  br i1 %.not103.i444, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit462, label %.lr.ph141.i440

bb.kx:                                            ; preds = %bb.kq, %bb.kr, %thread-pre-split.i460
  %.sroa.26.0.i445 = phi i64 [ %i.aqp, %bb.kr ], [ %.sroa.3.0, %thread-pre-split.i460 ], [ %.sroa.3.0, %bb.kq ] ; 4 uses
  %.sroa.0.0.i446 = phi ptr [ %i.aqo, %bb.kr ], [ %i.aqj, %thread-pre-split.i460 ], [ %i.aqj, %bb.kq ] ; 2 uses
  %i.arp = icmp samesign ult i64 %.sroa.26.0.i445, 16
  br i1 %i.arp, label %.preheader.i453, label %.preheader111.i447

.preheader.i453:                                  ; preds = %bb.kx
  %.not105146.i454 = icmp eq i64 %.sroa.26.0.i445, 0
  br i1 %.not105146.i454, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit462, label %.lr.ph150.i455

.preheader111.i447:                               ; preds = %bb.kx, %bb.la
  %.sroa.0.3145.i448 = phi ptr [ %i.arq, %bb.la ], [ %.sroa.0.0.i446, %bb.kx ] ; 2 uses
  %.sroa.26.3144.i449 = phi i64 [ %i.arr, %bb.la ], [ %.sroa.26.0.i445, %bb.kx ]
  %.sroa.084.3143.i450 = phi i64 [ %i.asc, %bb.la ], [ 0, %bb.kx ]
  %i.arq = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i448, i64 1
  %i.arr = add nsw i64 %.sroa.26.3144.i449, -1    ; 2 uses
  %i.ars = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i450, i64 10) ; 2 uses
  %i.art = extractvalue { i64, i1 } %i.ars, 0
  %i.aru = extractvalue { i64, i1 } %i.ars, 1
  br i1 %i.aru, label %.thread768, label %bb.ky, !prof !18

bb.ky:                                            ; preds = %.preheader111.i447
  %i.arv = load i8, ptr %.sroa.0.3145.i448, align 1, !alias.scope !4145, !noalias !4146, !noundef !10
  %i.arw = zext i8 %i.arv to i32
  %i.arx = add nsw i32 %i.arw, -48                ; 2 uses
  %i.ary = icmp ult i32 %i.arx, 10
  br i1 %i.ary, label %bb.kz, label %.thread768

bb.kz:                                            ; preds = %bb.ky
  %i.arz = zext nneg i32 %i.arx to i64
  %i.asa = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.art, i64 %i.arz) ; 2 uses
  %i.asb = extractvalue { i64, i1 } %i.asa, 1
  br i1 %i.asb, label %.thread768, label %bb.la, !prof !18

bb.la:                                            ; preds = %bb.kz
  %i.asc = extractvalue { i64, i1 } %i.asa, 0     ; 2 uses
  %.not104.i452 = icmp eq i64 %i.arr, 0
  br i1 %.not104.i452, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit462, label %.preheader111.i447

.lr.ph150.i455:                                   ; preds = %.preheader.i453, %bb.lb
  %.sroa.0.4149.i456 = phi ptr [ %i.asj, %bb.lb ], [ %.sroa.0.0.i446, %.preheader.i453 ] ; 2 uses
  %.sroa.26.4148.i457 = phi i64 [ %i.asi, %bb.lb ], [ %.sroa.26.0.i445, %.preheader.i453 ]
  %.sroa.084.4147.i458 = phi i64 [ %i.asl, %bb.lb ], [ 0, %.preheader.i453 ]
  %i.asd = load i8, ptr %.sroa.0.4149.i456, align 1, !alias.scope !4145, !noalias !4146, !noundef !10
  %i.ase = zext i8 %i.asd to i32
  %i.asf = add nsw i32 %i.ase, -48                ; 2 uses
  %i.asg = icmp ult i32 %i.asf, 10
  br i1 %i.asg, label %bb.lb, label %.thread768

bb.lb:                                            ; preds = %.lr.ph150.i455
  %i.ash = mul i64 %.sroa.084.4147.i458, 10
  %i.asi = add nsw i64 %.sroa.26.4148.i457, -1    ; 2 uses
  %i.asj = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i456, i64 1
  %i.ask = zext nneg i32 %i.asf to i64
  %i.asl = add i64 %i.ash, %i.ask                 ; 2 uses
  %.not105.i459 = icmp eq i64 %i.asi, 0
  br i1 %.not105.i459, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit462, label %.lr.ph150.i455

.thread768:                                       ; preds = %.lr.ph.i430, %bb.ku, %bb.kt, %.lr.ph141.i440, %.preheader111.i447, %bb.ky, %bb.kz, %.lr.ph150.i455, %bb.kq, %bb.kq, %bb.kk
  %.ph776 = phi ptr [ inttoptr (i64 1 to ptr), %bb.kk ], [ %i.aqj, %.preheader111.i447 ], [ %i.aqj, %.lr.ph150.i455 ], [ %i.aqj, %bb.kq ], [ %i.aqj, %.lr.ph141.i440 ], [ %i.aqj, %bb.kq ], [ %i.aqj, %bb.kz ], [ %i.aqj, %bb.ky ], [ %i.aqj, %bb.kt ], [ %i.aqj, %bb.ku ], [ %i.aqj, %.lr.ph.i430 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.by, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph776, i64 noundef %.sroa.3.0) #36
  %i.asm = load i8, ptr %i.by, align 8, !range !13, !noundef !10
  %i.asn = trunc nuw i8 %i.asm to i1
  br i1 %i.asn, label %bb.le, label %bb.lf

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit462: ; preds = %bb.kv, %bb.kw, %bb.la, %bb.lb, %.preheader.i453
  %.sroa.15653.0 = phi i64 [ %i.asc, %bb.la ], [ %i.aro, %bb.kw ], [ %i.asl, %bb.lb ], [ 0, %.preheader.i453 ], [ %i.arf, %bb.kv ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsgZlHlzpN0xi_7uu_tail(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cc, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @97, i64 noundef 3, i64 noundef %.sroa.15653.0) #33
  br label %bb.lc

bb.lc:                                            ; preds = %bb.lf, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit462
  %i.aso = phi ptr [ %.ph776, %bb.lf ], [ %i.aqj, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit462 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bw, ptr noundef nonnull align 8 dereferenceable(24) %i.cc, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.cd, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @98, i64 noundef 34, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.bw) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw)
  %i.asp = icmp eq i64 %.sroa.3.0, 0
  br i1 %i.asp, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit465, label %bb.ld

bb.ld:                                            ; preds = %bb.lc
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aso, i64 noundef %.sroa.3.0, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !4147
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit465

bb.le:                                            ; preds = %.thread768
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx)
  store i64 %.sroa.3.0, ptr %i.bx, align 8
  %.sroa.5648.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store ptr %.ph776, ptr %.sroa.5648.0..sroa_idx, align 8
  %.sroa.8649.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store i64 %.sroa.3.0, ptr %.sroa.8649.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cc, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @97, i64 noundef 3, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.bx) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bw, ptr noundef nonnull align 8 dereferenceable(24) %i.cc, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.cd, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @98, i64 noundef 34, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.bw) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit465

bb.lf:                                            ; preds = %.thread768
  %i.asq = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.asr = load double, ptr %i.asq, align 8, !noundef !10
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsgZlHlzpN0xi_7uu_tail(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cc, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @97, i64 noundef 3, double noundef %i.asr) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by)
  br label %bb.lc

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit465: ; preds = %bb.ld, %bb.lc, %bb.le
  br i1 %.sroa.069.0.not, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit483, label %bb.ls

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit483: ; preds = %bb.ls, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit465
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv)
  store ptr %i.cd, ptr %i.bv, align 8
  %.sroa.4122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.4122.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4148
  store ptr %i.ch, ptr %i.f, align 8, !noalias !4148
  %i.ass = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr null, ptr %i.ass, align 8, !noalias !4148
  %i.ast = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @32, ptr noundef nonnull @76, ptr noundef nonnull %i.bv) #33
  %i.asu = load ptr, ptr %i.ass, align 8, !noalias !4148, !noundef !10 ; 7 uses
  %.not.i5.i467 = icmp eq ptr %i.asu, null        ; 2 uses
  br i1 %i.ast, label %bb.lg, label %bb.lh

bb.lg:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit483
  br i1 %.not.i5.i467, label %bb.ll, label %bb.lm, !prof !18

bb.lh:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit483
  br i1 %.not.i5.i467, label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsgZlHlzpN0xi_7uu_tail.exit.i469.thread, label %bb.li

bb.li:                                            ; preds = %bb.lh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4149
  %i.asv = ptrtoint ptr %i.asu to i64             ; 2 uses
  %i.asw = and i64 %i.asv, 3
  switch i64 %i.asw, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZlHlzpN0xi_7uu_tail.exit.i.i.i468
    i64 3, label %bb.lj
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZlHlzpN0xi_7uu_tail.exit.i.i.i468
    i64 1, label %bb.lk
  ], !prof !23

bb.lj:                                            ; preds = %bb.li
  %i.asx = icmp ult ptr %i.asu, inttoptr (i64 188978561024 to ptr)
  %i.asy = and i64 %i.asv, 1095216660480
  %i.asz = icmp ne i64 %i.asy, 1095216660480
  call void @llvm.assume(i1 %i.asx)
  call void @llvm.assume(i1 %i.asz)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZlHlzpN0xi_7uu_tail.exit.i.i.i468

bb.lk:                                            ; preds = %bb.li
  %i.ata = getelementptr i8, ptr %i.asu, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ata) ]
  %i.atb = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.ata, ptr %i.atb, align 8, !alias.scope !4150, !noalias !4149
  store i8 3, ptr %i.e, align 8, !alias.scope !4150, !noalias !4149
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.atb) #33, !noalias !4151
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZlHlzpN0xi_7uu_tail.exit.i.i.i468

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZlHlzpN0xi_7uu_tail.exit.i.i.i468: ; preds = %bb.lk, %bb.lj, %bb.li, %bb.li
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4149
  br label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsgZlHlzpN0xi_7uu_tail.exit.i469.thread

bb.ll:                                            ; preds = %bb.lg
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @33, ptr noundef nonnull inttoptr (i64 173 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #37
  unreachable

_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsgZlHlzpN0xi_7uu_tail.exit.i469.thread: ; preds = %bb.lh, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZlHlzpN0xi_7uu_tail.exit.i.i.i468
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4148
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsgZlHlzpN0xi_7uu_tail.exit476

bb.lm:                                            ; preds = %bb.lg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4148
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4152
  %i.atc = ptrtoint ptr %i.asu to i64             ; 2 uses
  %i.atd = and i64 %i.atc, 3
  switch i64 %i.atd, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZlHlzpN0xi_7uu_tail.exit.i474
    i64 3, label %bb.ln
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZlHlzpN0xi_7uu_tail.exit.i474
    i64 1, label %bb.lo
  ], !prof !23

bb.ln:                                            ; preds = %bb.lm
  %i.ate = icmp ult ptr %i.asu, inttoptr (i64 188978561024 to ptr)
  %i.atf = and i64 %i.atc, 1095216660480
  %i.atg = icmp ne i64 %i.atf, 1095216660480
  call void @llvm.assume(i1 %i.ate)
  call void @llvm.assume(i1 %i.atg)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZlHlzpN0xi_7uu_tail.exit.i474

bb.lo:                                            ; preds = %bb.lm
  %i.ath = getelementptr i8, ptr %i.asu, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ath) ]
  %i.ati = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.ath, ptr %i.ati, align 8, !alias.scope !4153, !noalias !4152
  store i8 3, ptr %i.d, align 8, !alias.scope !4153, !noalias !4152
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ati) #33, !noalias !4152
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZlHlzpN0xi_7uu_tail.exit.i474

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZlHlzpN0xi_7uu_tail.exit.i474: ; preds = %bb.lo, %bb.ln, %bb.lm, %bb.lm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4152
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsgZlHlzpN0xi_7uu_tail.exit476

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsgZlHlzpN0xi_7uu_tail.exit476: ; preds = %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsgZlHlzpN0xi_7uu_tail.exit.i469.thread, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZlHlzpN0xi_7uu_tail.exit.i474
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  call void @llvm.experimental.noalias.scope.decl(metadata !4154)
  %.val.i477 = load i64, ptr %i.cd, align 8, !range !11, !alias.scope !4154, !noundef !10 ; 2 uses
  %i.atj = icmp eq i64 %.val.i477, 0
  br i1 %i.atj, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit479, label %bb.lp

bb.lp:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsgZlHlzpN0xi_7uu_tail.exit476
  %i.atk = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %.val1.i478 = load ptr, ptr %i.atk, align 8, !alias.scope !4154, !nonnull !10, !noundef !10
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i478, i64 noundef %.val.i477, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !4154
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit479

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit479: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsgZlHlzpN0xi_7uu_tail.exit476, %bb.lp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd)
  %.val185 = load ptr, ptr %i.ch, align 8, !nonnull !10, !align !14, !noundef !10 ; 3 uses
  %i.atl = getelementptr inbounds nuw i8, ptr %.val185, i64 12 ; 2 uses
  %i.atm = load i32, ptr %i.atl, align 4, !noundef !10
  %i.atn = add i32 %i.atm, -1                     ; 2 uses
  store i32 %i.atn, ptr %i.atl, align 4
  %i.ato = icmp eq i32 %i.atn, 0
  br i1 %i.ato, label %bb.lq, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsgZlHlzpN0xi_7uu_tail.exit480

bb.lq:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit479
  store atomic i64 0, ptr %.val185 monotonic, align 8
  %i.atp = getelementptr inbounds nuw i8, ptr %.val185, i64 8 ; 2 uses
  %i.atq = atomicrmw xchg ptr %i.atp, i32 0 release, align 4
  %i.atr = icmp eq i32 %i.atq, 2
  br i1 %i.atr, label %bb.lr, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsgZlHlzpN0xi_7uu_tail.exit480, !prof !18

bb.lr:                                            ; preds = %bb.lq
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.atp) #33
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsgZlHlzpN0xi_7uu_tail.exit480

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsgZlHlzpN0xi_7uu_tail.exit480: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit479, %bb.lq, %bb.lr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch)
  br i1 %i.amw, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit486, label %bb.lt

bb.ls:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit465
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aoe, i64 noundef %i.aoa, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !4155
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit483

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit486: ; preds = %bb.lu, %bb.lt, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsgZlHlzpN0xi_7uu_tail.exit480
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci)
  br label %bb.je

bb.lt:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsgZlHlzpN0xi_7uu_tail.exit480
  call void @llvm.experimental.noalias.scope.decl(metadata !4156)
  %.val.i484 = load i64, ptr %i.ci, align 8, !range !11, !alias.scope !4156, !noundef !10 ; 2 uses
  %i.ats = icmp eq i64 %.val.i484, 0
  br i1 %i.ats, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit486, label %bb.lu

bb.lu:                                            ; preds = %bb.lt
  %i.att = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %.val1.i485 = load ptr, ptr %i.att, align 8, !alias.scope !4156, !nonnull !10, !noundef !10
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i485, i64 noundef %.val.i484, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !4156
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgZlHlzpN0xi_7uu_tail.exit486

_RNvMs_NtNtCsgZlHlzpN0xi_7uu_tail6follow5watchNtB4_8Observer12add_bad_path.exit491: ; preds = %bb.je
  %i.atu = call fastcc { ptr, ptr } @_RNvMs_NtNtCsgZlHlzpN0xi_7uu_tail6follow5watchNtB4_8Observer8add_path(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %5, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val190, i64 noundef %.val191, ptr noundef null, i1 noundef zeroext false) #33 ; 2 uses
  %i.atv = extractvalue { ptr, ptr } %i.atu, 0    ; 2 uses
  %.not169 = icmp eq ptr %i.atv, null
  br i1 %.not169, label %_RNvMs_NtNtCsgZlHlzpN0xi_7uu_tail6follow5watchNtB4_8Observer12add_bad_path.exit491.thread, label %bb.lx

end_hunk_1
