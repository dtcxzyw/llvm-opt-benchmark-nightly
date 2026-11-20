Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_datagen-a5afd340982ad6cb.lance_datagen.23b3debfd5a2dbaa-cgu.0?download=true
inline.NumInlined: 5943
inline.NumDeleted: 2255
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_RNvXs1z_NtCs342JT7D9NXi_13lance_datagen9generatorNtB6_19PseudoUuidGeneratorNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt:bb.a
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @648, i64 noundef 19)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RNvXs2_NtCs342JT7D9NXi_13lance_datagen9generatorNtB5_17CycleNanGeneratorNtB5_14ArrayGenerator18element_size_bytes(ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #0 !guid !9575 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !12, !noundef !12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !12, !align !20, !noundef !12
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !invariant.load !12, !nonnull !12
  %i.g = tail call { i64, i64 } %i.f(ptr noundef nonnull %i.b)
  ret { i64, i64 } %i.g
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2_NtCs342JT7D9NXi_13lance_datagen9generatorNtB5_17CycleNanGeneratorNtB5_14ArrayGenerator8generate(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %1, i64 noundef %2, ptr noalias noundef align 8 dereferenceable(32) %3) unnamed_addr #0 personality ptr @rust_eh_personality !guid !9596 {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 6 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %i.c = alloca [112 x i8], align 8               ; 6 uses
  %i.d = alloca [16 x i8], align 16               ; 4 uses
  %i.e = alloca [112 x i8], align 8               ; 6 uses
  %i.f = alloca [16 x i8], align 16               ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [96 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [96 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [96 x i8], align 8                ; 4 uses
  %i.m = alloca [32 x i8], align 8                ; 8 uses
  %i.n = alloca [16 x i8], align 16               ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !12, !noundef !12
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !12, !align !20, !noundef !12
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !invariant.load !12, !nonnull !12
  call void %i.t(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.m, ptr noundef nonnull %i.p, i64 noundef %2, ptr noalias noundef nonnull align 8 dereferenceable(32) %3)
  %i.u = load i64, ptr %i.m, align 8, !range !28, !noundef !12 ; 2 uses
  %.not = icmp eq i64 %i.u, -1
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.652.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.652.0.copyload = load i64, ptr %.sroa.652.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  store i64 %i.u, ptr %0, align 8
  %.sroa.454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %.sroa.454.0..sroa_idx, align 8
  %.sroa.555.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.y, ptr %.sroa.555.0..sroa_idx, align 8
  %.sroa.656.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.652.0.copyload, ptr %.sroa.656.0..sroa_idx, align 8
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECs342JT7D9NXi_13lance_datagen.exit133

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  store ptr %i.w, ptr %i.n, align 16
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.y, ptr %i.z, align 8
  %i.aa = invoke noundef nonnull align 8 ptr @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_9data_type(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.n)
          to label %bb.e unwind label %.body87

.body.thread:                                     ; preds = %bb.bz, %bb.by, %bb.bq, %.body87, %bb.be, %bb.bd, %bb.aw, %bb.ag, %bb.af, %bb.y
  %.pn = phi { ptr, i32 } [ %lpad.thr_comm293, %bb.bz ], [ %i.cn, %bb.y ], [ %lpad.thr_comm293, %bb.by ], [ %i.ev, %bb.aw ], [ %lpad.thr_comm262, %bb.be ], [ %i.gx, %bb.bq ], [ %lpad.thr_comm.split-lp294, %.body87 ], [ %lpad.thr_comm, %bb.af ], [ %lpad.thr_comm, %bb.ag ], [ %lpad.thr_comm262, %bb.bd ]
  call void @llvm.experimental.noalias.scope.decl(metadata !9597)
  call void @llvm.experimental.noalias.scope.decl(metadata !9598)
  %i.ab = load ptr, ptr %i.n, align 16, !alias.scope !9599, !nonnull !12, !noundef !12
  %i.ac = atomicrmw add ptr %i.ab, i64 -1 release, align 8, !noalias !9599
  %i.ad = icmp eq i64 %i.ac, 1
  br i1 %i.ad, label %bb.d, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECs342JT7D9NXi_13lance_datagen.exit

bb.d:                                             ; preds = %.body.thread
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.n)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECs342JT7D9NXi_13lance_datagen.exit unwind label %bb.ah

bb.e:                                             ; preds = %bb.c
  %i.ae = load i8, ptr %i.aa, align 8, !range !26, !noundef !12
  switch i8 %i.ae, label %bb.f [
    i8 10, label %bb.g
    i8 11, label %bb.h
    i8 12, label %bb.i
  ]

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load <2 x ptr>, ptr %i.n, align 16
  store <2 x ptr> %i.ag, ptr %i.af, align 8
  store i64 -1, ptr %0, align 8
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECs342JT7D9NXi_13lance_datagen.exit133

bb.g:                                             ; preds = %bb.e
  %i.ah = invoke { ptr, ptr } @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_6as_any(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.n)
          to label %bb.j unwind label %.body87    ; 2 uses

bb.h:                                             ; preds = %bb.e
  %i.ai = invoke { ptr, ptr } @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_6as_any(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.n)
          to label %bb.ai unwind label %.body87   ; 2 uses

bb.i:                                             ; preds = %bb.e
  %i.aj = invoke { ptr, ptr } @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_6as_any(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.n)
          to label %bb.bf unwind label %.body87   ; 2 uses

bb.j:                                             ; preds = %bb.g
  %i.ak = extractvalue { ptr, ptr } %i.ah, 0      ; 4 uses
  %i.al = extractvalue { ptr, ptr } %i.ah, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !invariant.load !12, !nonnull !12
  invoke void %i.an(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.f, ptr noundef %i.ak)
          to label %bb.k unwind label %.body87

bb.k:                                             ; preds = %bb.j
  %i.ao = load i128, ptr %i.f, align 16, !noundef !12
  %i.ap = icmp eq i128 %i.ao, -59204905256835634698325885580467808231
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br i1 %i.ap, label %bb.l, label %.invoke, !prof !18

.invoke:                                          ; preds = %bb.bg, %bb.aj, %bb.k
  %i.aq = phi ptr [ @652, %bb.aj ], [ @649, %bb.k ], [ @655, %bb.bg ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aq) #37
          to label %.cont unwind label %.body87

.cont:                                            ; preds = %.invoke
  unreachable

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ak) ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !noundef !12
  %i.at = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %i.au = load i64, ptr %i.at, align 8, !noundef !12 ; 2 uses
  %i.av = lshr i64 %i.au, 1                       ; 6 uses
  %i.aw = and i64 %i.au, -2                       ; 6 uses
  %.not.i = icmp ugt i64 %i.aw, 9223372036854775806
  br i1 %.not.i, label %.invoke406, label %bb.m, !prof !9

bb.m:                                             ; preds = %bb.l
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs342JT7D9NXi_13lance_datagen.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !9600
  %i.ay = call noundef align 2 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.aw, i64 noundef range(i64 1, -9223372036854775807) 2) #36, !noalias !9600 ; 2 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %.invoke406, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ba = ptrtoint ptr %i.ay to i64
  br label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs342JT7D9NXi_13lance_datagen.exit

bb.p:                                             ; preds = %.split.us, %.lr.ph.split.us.preheader, %bb.bc, %_RNvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycle5CycleINtNtNtBb_5slice4iter4IterbEENtNtNtB9_6traits8iterator8Iterator3nthCs342JT7D9NXi_13lance_datagen.exit154.thread.thread, %bb.ae, %_RNvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycle5CycleINtNtNtBb_5slice4iter4IterbEENtNtNtB9_6traits8iterator8Iterator3nthCs342JT7D9NXi_13lance_datagen.exit.thread.thread
  unreachable

.invoke406:                                       ; preds = %bb.bj, %bb.bh, %bb.am, %bb.ak, %bb.n, %bb.l
  %i.bb = phi i64 [ 0, %bb.ak ], [ 0, %bb.l ], [ 2, %bb.n ], [ 4, %bb.am ], [ 8, %bb.bj ], [ 0, %bb.bh ]
  %i.bc = phi i64 [ %i.dg, %bb.ak ], [ %i.aw, %bb.l ], [ %i.aw, %bb.n ], [ %i.dg, %bb.am ], [ %i.fn, %bb.bj ], [ %i.fn, %bb.bh ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %i.bb, i64 %i.bc) #37
          to label %.cont407 unwind label %.body87

.cont407:                                         ; preds = %.invoke406
  unreachable

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs342JT7D9NXi_13lance_datagen.exit: ; preds = %bb.m, %bb.o
  %.sroa.4217.0 = phi i64 [ %i.av, %bb.o ], [ 0, %bb.m ] ; 4 uses
  %.sroa.10219.0 = phi i64 [ %i.ba, %bb.o ], [ 2, %bb.m ]
  %i.bd = inttoptr i64 %.sroa.10219.0 to ptr      ; 5 uses
  %i.be = icmp samesign ule i64 %i.av, %.sroa.4217.0
  call void @llvm.assume(i1 %i.be)
  %.not82 = icmp eq i64 %i.av, 0
  br i1 %.not82, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs342JT7D9NXi_13lance_datagen.exit
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.bd, ptr align 2 %i.as, i64 %i.aw, i1 false)
  br label %bb.r

bb.r:                                             ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs342JT7D9NXi_13lance_datagen.exit, %bb.q
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !nonnull !12, !noundef !12 ; 7 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !noundef !12 ; 7 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bi ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !noundef !12 ; 2 uses
  %i.bm = icmp eq i64 %2, 0
  br i1 %i.bm, label %_RNvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycle5CycleINtNtNtBb_5slice4iter4IterbEENtNtNtB9_6traits8iterator8Iterator3nthCs342JT7D9NXi_13lance_datagen.exit.thread, label %.lr.ph337

.lr.ph337:                                        ; preds = %bb.r
  %i.bn = ptrtoint ptr %i.bj to i64
  %i.bo = icmp ne i64 %i.bi, 0                    ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bg, i64 1 ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph337, %bb.ab
  %.sroa.10.0336 = phi ptr [ %i.bg, %.lr.ph337 ], [ %.sroa.10.1, %bb.ab ] ; 4 uses
  %.sroa.23.0335 = phi i64 [ %i.bl, %.lr.ph337 ], [ 0, %bb.ab ] ; 3 uses
  %.sroa.26.0334 = phi i64 [ %2, %.lr.ph337 ], [ %i.bq, %bb.ab ]
  %.sroa.29.0333 = phi i64 [ 0, %.lr.ph337 ], [ %i.cc, %bb.ab ] ; 4 uses
  %i.bq = add i64 %.sroa.26.0334, -1              ; 2 uses
  %.not.i.i.i = icmp eq i64 %.sroa.23.0335, 0
  br i1 %.not.i.i.i, label %bb.t, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtB6_5cycle5CycleINtNtNtBa_5slice4iter4IterbEEEENtNtNtB8_6traits8iterator8Iterator4nextCs342JT7D9NXi_13lance_datagen.exit.i, !prof !18

bb.t:                                             ; preds = %bb.s
  %i.br = icmp ne ptr %.sroa.10.0336, %i.bj       ; 2 uses
  %brmerge = or i1 %i.br, %i.bo
  br i1 %brmerge, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtB6_5cycle5CycleINtNtNtBa_5slice4iter4IterbEEEENtNtNtB8_6traits8iterator8Iterator4nextCs342JT7D9NXi_13lance_datagen.exit.thread6.i, label %_RNvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycle5CycleINtNtNtBb_5slice4iter4IterbEENtNtNtB9_6traits8iterator8Iterator3nthCs342JT7D9NXi_13lance_datagen.exit.thread.thread

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtB6_5cycle5CycleINtNtNtBa_5slice4iter4IterbEEEENtNtNtB8_6traits8iterator8Iterator4nextCs342JT7D9NXi_13lance_datagen.exit.thread6.i: ; preds = %bb.t
  %.sroa.10.0336.mux = select i1 %i.br, ptr %.sroa.10.0336, ptr %i.bg ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.10.0336.mux, i64 1
  br label %_RNvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycle5CycleINtNtNtBb_5slice4iter4IterbEENtNtNtB9_6traits8iterator8Iterator3nthCs342JT7D9NXi_13lance_datagen.exit.thread243

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtB6_5cycle5CycleINtNtNtBa_5slice4iter4IterbEEEENtNtNtB8_6traits8iterator8Iterator4nextCs342JT7D9NXi_13lance_datagen.exit.i: ; preds = %bb.s
  %i.bt = ptrtoint ptr %.sroa.10.0336 to i64
  %i.bu = sub nuw i64 %i.bn, %i.bt
  %.sroa.0.0.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.23.0335, i64 %i.bu) ; 2 uses
  %i.bv = sub nuw i64 %.sroa.23.0335, %.sroa.0.0.i.i.i.i ; 2 uses
  %.not.i.i = icmp eq i64 %i.bv, 0
  br i1 %.not.i.i, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycleINtB4_5CycleINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator10advance_byCs342JT7D9NXi_13lance_datagen.exit.thread.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtB6_5cycle5CycleINtNtNtBa_5slice4iter4IterbEEEENtNtNtB8_6traits8iterator8Iterator4nextCs342JT7D9NXi_13lance_datagen.exit.i
  br i1 %i.bo, label %.preheader.split.i.i, label %_RNvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycle5CycleINtNtNtBb_5slice4iter4IterbEENtNtNtB9_6traits8iterator8Iterator3nthCs342JT7D9NXi_13lance_datagen.exit.thread.thread

.preheader.split.i.i:                             ; preds = %.preheader.i.i, %.preheader.split.i.i
  %.sroa.03.0.i.i = phi i64 [ %i.bw, %.preheader.split.i.i ], [ %i.bv, %.preheader.i.i ] ; 3 uses
  %.sroa.0.0.i.i12.i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.03.0.i.i, i64 %i.bi) ; 2 uses
  %i.bw = sub nuw i64 %.sroa.03.0.i.i, %.sroa.0.0.i.i12.i.i ; 2 uses
  %.not10.i.i = icmp eq i64 %i.bw, 0
  br i1 %.not10.i.i, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycleINtB4_5CycleINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator10advance_byCs342JT7D9NXi_13lance_datagen.exit.thread.i.thread, label %.preheader.split.i.i

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycleINtB4_5CycleINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator10advance_byCs342JT7D9NXi_13lance_datagen.exit.thread.i: ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtB6_5cycle5CycleINtNtNtBa_5slice4iter4IterbEEEENtNtNtB8_6traits8iterator8Iterator4nextCs342JT7D9NXi_13lance_datagen.exit.i
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.10.0336, i64 %.sroa.0.0.i.i.i.i ; 2 uses
  %i.by = icmp eq ptr %i.bx, %i.bj
  br i1 %i.by, label %bb.u, label %_RNvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycle5CycleINtNtNtBb_5slice4iter4IterbEENtNtNtB9_6traits8iterator8Iterator3nthCs342JT7D9NXi_13lance_datagen.exit

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycleINtB4_5CycleINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator10advance_byCs342JT7D9NXi_13lance_datagen.exit.thread.i.thread: ; preds = %.preheader.split.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.sroa.0.0.i.i12.i.i
  %.not413 = icmp ugt i64 %i.bi, %.sroa.03.0.i.i
  br i1 %.not413, label %_RNvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycle5CycleINtNtNtBb_5slice4iter4IterbEENtNtNtB9_6traits8iterator8Iterator3nthCs342JT7D9NXi_13lance_datagen.exit, label %_RNvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycle5CycleINtNtNtBb_5slice4iter4IterbEENtNtNtB9_6traits8iterator8Iterator3nthCs342JT7D9NXi_13lance_datagen.exit.thread243

bb.u:                                             ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycleINtB4_5CycleINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator10advance_byCs342JT7D9NXi_13lance_datagen.exit.thread.i
  br i1 %i.bo, label %_RNvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycle5CycleINtNtNtBb_5slice4iter4IterbEENtNtNtB9_6traits8iterator8Iterator3nthCs342JT7D9NXi_13lance_datagen.exit.thread243, label %_RNvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycle5CycleINtNtNtBb_5slice4iter4IterbEENtNtNtB9_6traits8iterator8Iterator3nthCs342JT7D9NXi_13lance_datagen.exit.thread.thread

_RNvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycle5CycleINtNtNtBb_5slice4iter4IterbEENtNtNtB9_6traits8iterator8Iterator3nthCs342JT7D9NXi_13lance_datagen.exit: ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycleINtB4_5CycleINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator10advance_byCs342JT7D9NXi_13lance_datagen.exit.thread.i.thread, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycleINtB4_5CycleINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator10advance_byCs342JT7D9NXi_13lance_datagen.exit.thread.i
  %i.ca = phi ptr [ %i.bz, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycleINtB4_5CycleINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator10advance_byCs342JT7D9NXi_13lance_datagen.exit.thread.i.thread ], [ %i.bx, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycleINtB4_5CycleINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator10advance_byCs342JT7D9NXi_13lance_datagen.exit.thread.i ] ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  br label %_RNvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycle5CycleINtNtNtBb_5slice4iter4IterbEENtNtNtB9_6traits8iterator8Iterator3nthCs342JT7D9NXi_13lance_datagen.exit.thread243

_RNvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycle5CycleINtNtNtBb_5slice4iter4IterbEENtNtNtB9_6traits8iterator8Iterator3nthCs342JT7D9NXi_13lance_datagen.exit.thread243: ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycleINtB4_5CycleINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator10advance_byCs342JT7D9NXi_13lance_datagen.exit.thread.i.thread, %_RNvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycle5CycleINtNtNtBb_5slice4iter4IterbEENtNtNtB9_6traits8iterator8Iterator3nthCs342JT7D9NXi_13lance_datagen.exit, %bb.u, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtB6_5cycle5CycleINtNtNtBa_5slice4iter4IterbEEEENtNtNtB8_6traits8iterator8Iterator4nextCs342JT7D9NXi_13lance_datagen.exit.thread6.i
  %.sroa.10.1 = phi ptr [ %i.bs, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtB6_5cycle5CycleINtNtNtBa_5slice4iter4IterbEEEENtNtNtB8_6traits8iterator8Iterator4nextCs342JT7D9NXi_13lance_datagen.exit.thread6.i ], [ %i.cb, %_RNvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycle5CycleINtNtNtBb_5slice4iter4IterbEENtNtNtB9_6traits8iterator8Iterator3nthCs342JT7D9NXi_13lance_datagen.exit ], [ %i.bp, %bb.u ], [ %i.bp, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycleINtB4_5CycleINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator10advance_byCs342JT7D9NXi_13lance_datagen.exit.thread.i.thread ]
  %.sroa.0.0.i9.i = phi ptr [ %.sroa.10.0336.mux, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtB6_5cycle5CycleINtNtNtBa_5slice4iter4IterbEEEENtNtNtB8_6traits8iterator8Iterator4nextCs342JT7D9NXi_13lance_datagen.exit.thread6.i ], [ %i.ca, %_RNvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycle5CycleINtNtNtBb_5slice4iter4IterbEENtNtNtB9_6traits8iterator8Iterator3nthCs342JT7D9NXi_13lance_datagen.exit ], [ %i.bg, %bb.u ], [ %i.bg, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycleINtB4_5CycleINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator10advance_byCs342JT7D9NXi_13lance_datagen.exit.thread.i.thread ]
  %i.cc = add nuw i64 %.sroa.29.0333, 1
  %i.cd = load i8, ptr %.sroa.0.0.i9.i, align 1, !range !17, !noundef !12
  %i.ce = trunc nuw i8 %i.cd to i1
  br i1 %i.ce, label %bb.ac, label %bb.ab

_RNvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycle5CycleINtNtNtBb_5slice4iter4IterbEENtNtNtB9_6traits8iterator8Iterator3nthCs342JT7D9NXi_13lance_datagen.exit.thread: ; preds = %bb.ab, %bb.r
  %i.cf = icmp sgt i64 %i.bi, -1
  call void @llvm.assume(i1 %i.cf)
  %i.cg = icmp eq i64 %i.bi, 0
  br i1 %i.cg, label %_RNvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycle5CycleINtNtNtBb_5slice4iter4IterbEENtNtNtB9_6traits8iterator8Iterator3nthCs342JT7D9NXi_13lance_datagen.exit.thread.thread, label %bb.v

bb.v:                                             ; preds = %_RNvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycle5CycleINtNtNtBb_5slice4iter4IterbEENtNtNtB9_6traits8iterator8Iterator3nthCs342JT7D9NXi_13lance_datagen.exit.thread
  %i.ch = add i64 %i.bl, %2
  %i.ci = urem i64 %i.ch, %i.bi
  store i64 %i.ci, ptr %i.bk, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i64 %.sroa.4217.0, ptr %i.k, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.bd, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %i.av, ptr %.sroa.9.0..sroa_idx, align 8
  invoke void @_RNvXsK_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types11Float16TypeEINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs2k6O4uMwKJm_4half8binary163f16EE4from(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.l, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.k)
          to label %bb.w unwind label %.body87

_RNvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycle5CycleINtNtNtBb_5slice4iter4IterbEENtNtNtB9_6traits8iterator8Iterator3nthCs342JT7D9NXi_13lance_datagen.exit.thread.thread: ; preds = %bb.u, %.preheader.i.i, %bb.t, %_RNvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycle5CycleINtNtNtBb_5slice4iter4IterbEENtNtNtB9_6traits8iterator8Iterator3nthCs342JT7D9NXi_13lance_datagen.exit.thread
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @650) #37
          to label %bb.p unwind label %bb.af

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 1, ptr %i.e, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 1, ptr %i.cj, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ck, ptr noundef nonnull align 8 dereferenceable(96) %i.l, i64 96, i1 false)
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !9601
  %i.cl = call noundef align 8 dereferenceable_or_null(112) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 112, i64 noundef range(i64 1, -9223372036854775807) 8) #36, !noalias !9601 ; 3 uses
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %bb.x, label %bb.aa, !prof !13

bb.x:                                             ; preds = %bb.w
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 112) #37
          to label %.noexc95 unwind label %bb.y

.noexc95:                                         ; preds = %bb.x
  unreachable

bb.y:                                             ; preds = %bb.x
  %i.cn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBI_5types11Float16TypeEECs342JT7D9NXi_13lance_datagen(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.ck)
          to label %.body.thread unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.co = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.aa:                                            ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.cl, ptr noundef nonnull align 8 dereferenceable(112) %i.e, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.bt

bb.ab:                                            ; preds = %bb.ad, %_RNvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycle5CycleINtNtNtBb_5slice4iter4IterbEENtNtNtB9_6traits8iterator8Iterator3nthCs342JT7D9NXi_13lance_datagen.exit.thread243
  %i.cp = icmp eq i64 %i.bq, 0
  br i1 %i.cp, label %_RNvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycle5CycleINtNtNtBb_5slice4iter4IterbEENtNtNtB9_6traits8iterator8Iterator3nthCs342JT7D9NXi_13lance_datagen.exit.thread, label %bb.s

bb.ac:                                            ; preds = %_RNvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycle5CycleINtNtNtBb_5slice4iter4IterbEENtNtNtB9_6traits8iterator8Iterator3nthCs342JT7D9NXi_13lance_datagen.exit.thread243
  %i.cq = icmp ult i64 %.sroa.29.0333, %i.av
  br i1 %i.cq, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.cr = getelementptr inbounds nuw [2 x i8], ptr %i.bd, i64 %.sroa.29.0333
  store i16 32256, ptr %i.cr, align 2
  br label %bb.ab

bb.ae:                                            ; preds = %bb.ac
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %.sroa.29.0333, i64 noundef %i.av, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @651) #37
          to label %bb.p unwind label %bb.af

bb.af:                                            ; preds = %bb.ae, %_RNvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycle5CycleINtNtNtBb_5slice4iter4IterbEENtNtNtB9_6traits8iterator8Iterator3nthCs342JT7D9NXi_13lance_datagen.exit.thread.thread
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cs = icmp eq i64 %.sroa.4217.0, 0
  br i1 %i.cs, label %.body.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ct = shl nuw i64 %.sroa.4217.0, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bd) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bd, i64 noundef %i.ct, i64 noundef range(i64 1, -9223372036854775807) 2) #36
  br label %.body.thread

bb.ah:                                            ; preds = %bb.d
  %i.cu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.ai:                                            ; preds = %bb.h
  %i.cv = extractvalue { ptr, ptr } %i.ai, 0      ; 4 uses
  %i.cw = extractvalue { ptr, ptr } %i.ai, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %i.cy = load ptr, ptr %i.cx, align 8, !invariant.load !12, !nonnull !12
  invoke void %i.cy(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noundef %i.cv)
          to label %bb.aj unwind label %.body87

bb.aj:                                            ; preds = %bb.ai
  %i.cz = load i128, ptr %i.d, align 16, !noundef !12
  %i.da = icmp eq i128 %i.cz, -166190901438446393179604529744170412853
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.da, label %bb.ak, label %.invoke, !prof !18

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cv) ]
  %i.db = getelementptr inbounds nuw i8, ptr %i.cv, i64 32
  %i.dc = load ptr, ptr %i.db, align 8, !noundef !12
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cv, i64 40
  %i.de = load i64, ptr %i.dd, align 8, !noundef !12 ; 2 uses
  %i.df = lshr i64 %i.de, 2                       ; 6 uses
  %i.dg = and i64 %i.de, -4                       ; 6 uses
  %.not.i97 = icmp ugt i64 %i.dg, 9223372036854775804
  br i1 %.not.i97, label %.invoke406, label %bb.al, !prof !9

bb.al:                                            ; preds = %bb.ak
  %i.dh = icmp eq i64 %i.dg, 0
  br i1 %i.dh, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs342JT7D9NXi_13lance_datagen.exit100, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !9602
  %i.di = call noundef align 4 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.dg, i64 noundef range(i64 1, -9223372036854775807) 4) #36, !noalias !9602 ; 2 uses
  %i.dj = icmp eq ptr %i.di, null
  br i1 %i.dj, label %.invoke406, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dk = ptrtoint ptr %i.di to i64
  br label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs342JT7D9NXi_13lance_datagen.exit100

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs342JT7D9NXi_13lance_datagen.exit100: ; preds = %bb.al, %bb.an
  %.sroa.4221.0 = phi i64 [ %i.df, %bb.an ], [ 0, %bb.al ] ; 4 uses
  %.sroa.10223.0 = phi i64 [ %i.dk, %bb.an ], [ 4, %bb.al ]
  %i.dl = inttoptr i64 %.sroa.10223.0 to ptr      ; 5 uses
  %i.dm = icmp samesign ule i64 %i.df, %.sroa.4221.0
  call void @llvm.assume(i1 %i.dm)
  %.not80 = icmp eq i64 %i.df, 0
  br i1 %.not80, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs342JT7D9NXi_13lance_datagen.exit100
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.dl, ptr align 4 %i.dc, i64 %i.dg, i1 false)
  br label %bb.ap

bb.ap:                                            ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs342JT7D9NXi_13lance_datagen.exit100, %bb.ao
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !nonnull !12, !noundef !12 ; 7 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dq = load i64, ptr %i.dp, align 8, !noundef !12 ; 7 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dq ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.dt = load i64, ptr %i.ds, align 8, !noundef !12 ; 2 uses
  %i.du = icmp eq i64 %2, 0
  br i1 %i.du, label %_RNvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycle5CycleINtNtNtBb_5slice4iter4IterbEENtNtNtB9_6traits8iterator8Iterator3nthCs342JT7D9NXi_13lance_datagen.exit154.thread, label %.lr.ph330

.lr.ph330:                                        ; preds = %bb.ap
  %i.dv = ptrtoint ptr %i.dr to i64
  %i.dw = icmp ne i64 %i.dq, 0                    ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.do, i64 1 ; 2 uses
  br label %bb.aq

bb.aq:                                            ; preds = %.lr.ph330, %bb.az
  %.sroa.10192.0329 = phi ptr [ %i.do, %.lr.ph330 ], [ %.sroa.10192.1, %bb.az ] ; 4 uses
  %.sroa.23196.0328 = phi i64 [ %i.dt, %.lr.ph330 ], [ 0, %bb.az ] ; 3 uses
  %.sroa.26197.0327 = phi i64 [ %2, %.lr.ph330 ], [ %i.dy, %bb.az ]
  %.sroa.29198.0326 = phi i64 [ 0, %.lr.ph330 ], [ %i.ek, %bb.az ] ; 4 uses
  %i.dy = add i64 %.sroa.26197.0327, -1           ; 2 uses
  %.not.i.i.i101 = icmp eq i64 %.sroa.23196.0328, 0
  br i1 %.not.i.i.i101, label %bb.ar, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtB6_5cycle5CycleINtNtNtBa_5slice4iter4IterbEEEENtNtNtB8_6traits8iterator8Iterator4nextCs342JT7D9NXi_13lance_datagen.exit.i102, !prof !18

bb.ar:                                            ; preds = %bb.aq
  %i.dz = icmp ne ptr %.sroa.10192.0329, %i.dr    ; 2 uses
  %brmerge349 = or i1 %i.dz, %i.dw
  br i1 %brmerge349, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtB6_5cycle5CycleINtNtNtBa_5slice4iter4IterbEEEENtNtNtB8_6traits8iterator8Iterator4nextCs342JT7D9NXi_13lance_datagen.exit.thread6.i107, label %_RNvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycle5CycleINtNtNtBb_5slice4iter4IterbEENtNtNtB9_6traits8iterator8Iterator3nthCs342JT7D9NXi_13lance_datagen.exit154.thread.thread

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtB6_5cycle5CycleINtNtNtBa_5slice4iter4IterbEEEENtNtNtB8_6traits8iterator8Iterator4nextCs342JT7D9NXi_13lance_datagen.exit.thread6.i107: ; preds = %bb.ar
  %.sroa.10192.0329.mux = select i1 %i.dz, ptr %.sroa.10192.0329, ptr %i.do ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.10192.0329.mux, i64 1
  br label %_RNvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycle5CycleINtNtNtBb_5slice4iter4IterbEENtNtNtB9_6traits8iterator8Iterator3nthCs342JT7D9NXi_13lance_datagen.exit154.thread272

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtB6_5cycle5CycleINtNtNtBa_5slice4iter4IterbEEEENtNtNtB8_6traits8iterator8Iterator4nextCs342JT7D9NXi_13lance_datagen.exit.i102: ; preds = %bb.aq
  %i.eb = ptrtoint ptr %.sroa.10192.0329 to i64
  %i.ec = sub nuw i64 %i.dv, %i.eb
  %.sroa.0.0.i.i.i.i135 = call noundef i64 @llvm.umin.i64(i64 %.sroa.23196.0328, i64 %i.ec) ; 2 uses
  %i.ed = sub nuw i64 %.sroa.23196.0328, %.sroa.0.0.i.i.i.i135 ; 2 uses
  %.not.i.i136 = icmp eq i64 %i.ed, 0
  br i1 %.not.i.i136, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycleINtB4_5CycleINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator10advance_byCs342JT7D9NXi_13lance_datagen.exit.thread.i145, label %.preheader.i.i137

.preheader.i.i137:                                ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtB6_5cycle5CycleINtNtNtBa_5slice4iter4IterbEEEENtNtNtB8_6traits8iterator8Iterator4nextCs342JT7D9NXi_13lance_datagen.exit.i102
  br i1 %i.dw, label %.preheader.split.i.i140, label %_RNvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycle5CycleINtNtNtBb_5slice4iter4IterbEENtNtNtB9_6traits8iterator8Iterator3nthCs342JT7D9NXi_13lance_datagen.exit154.thread.thread

.preheader.split.i.i140:                          ; preds = %.preheader.i.i137, %.preheader.split.i.i140
  %.sroa.03.0.i.i141 = phi i64 [ %i.ee, %.preheader.split.i.i140 ], [ %i.ed, %.preheader.i.i137 ] ; 3 uses
  %.sroa.0.0.i.i12.i.i142 = call noundef i64 @llvm.umin.i64(i64 %.sroa.03.0.i.i141, i64 %i.dq) ; 2 uses
  %i.ee = sub nuw i64 %.sroa.03.0.i.i141, %.sroa.0.0.i.i12.i.i142 ; 2 uses
  %.not10.i.i143 = icmp eq i64 %i.ee, 0
  br i1 %.not10.i.i143, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycleINtB4_5CycleINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator10advance_byCs342JT7D9NXi_13lance_datagen.exit.thread.i145.thread, label %.preheader.split.i.i140

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycleINtB4_5CycleINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator10advance_byCs342JT7D9NXi_13lance_datagen.exit.thread.i145: ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtB6_5cycle5CycleINtNtNtBa_5slice4iter4IterbEEEENtNtNtB8_6traits8iterator8Iterator4nextCs342JT7D9NXi_13lance_datagen.exit.i102
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.10192.0329, i64 %.sroa.0.0.i.i.i.i135 ; 2 uses
  %i.eg = icmp eq ptr %i.ef, %i.dr
  br i1 %i.eg, label %bb.as, label %_RNvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycle5CycleINtNtNtBb_5slice4iter4IterbEENtNtNtB9_6traits8iterator8Iterator3nthCs342JT7D9NXi_13lance_datagen.exit154

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycleINtB4_5CycleINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator10advance_byCs342JT7D9NXi_13lance_datagen.exit.thread.i145.thread: ; preds = %.preheader.split.i.i140
  %i.eh = getelementptr inbounds nuw i8, ptr %i.do, i64 %.sroa.0.0.i.i12.i.i142
  %.not412 = icmp ugt i64 %i.dq, %.sroa.03.0.i.i141
  br i1 %.not412, label %_RNvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycle5CycleINtNtNtBb_5slice4iter4IterbEENtNtNtB9_6traits8iterator8Iterator3nthCs342JT7D9NXi_13lance_datagen.exit154, label %_RNvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycle5CycleINtNtNtBb_5slice4iter4IterbEENtNtNtB9_6traits8iterator8Iterator3nthCs342JT7D9NXi_13lance_datagen.exit154.thread272

bb.as:                                            ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycleINtB4_5CycleINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator10advance_byCs342JT7D9NXi_13lance_datagen.exit.thread.i145
  br i1 %i.dw, label %_RNvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycle5CycleINtNtNtBb_5slice4iter4IterbEENtNtNtB9_6traits8iterator8Iterator3nthCs342JT7D9NXi_13lance_datagen.exit154.thread272, label %_RNvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycle5CycleINtNtNtBb_5slice4iter4IterbEENtNtNtB9_6traits8iterator8Iterator3nthCs342JT7D9NXi_13lance_datagen.exit154.thread.thread

_RNvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycle5CycleINtNtNtBb_5slice4iter4IterbEENtNtNtB9_6traits8iterator8Iterator3nthCs342JT7D9NXi_13lance_datagen.exit154: ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycleINtB4_5CycleINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator10advance_byCs342JT7D9NXi_13lance_datagen.exit.thread.i145.thread, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycleINtB4_5CycleINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator10advance_byCs342JT7D9NXi_13lance_datagen.exit.thread.i145
  %i.ei = phi ptr [ %i.eh, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycleINtB4_5CycleINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator10advance_byCs342JT7D9NXi_13lance_datagen.exit.thread.i145.thread ], [ %i.ef, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycleINtB4_5CycleINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator10advance_byCs342JT7D9NXi_13lance_datagen.exit.thread.i145 ] ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 1
  br label %_RNvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycle5CycleINtNtNtBb_5slice4iter4IterbEENtNtNtB9_6traits8iterator8Iterator3nthCs342JT7D9NXi_13lance_datagen.exit154.thread272

_RNvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycle5CycleINtNtNtBb_5slice4iter4IterbEENtNtNtB9_6traits8iterator8Iterator3nthCs342JT7D9NXi_13lance_datagen.exit154.thread272: ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycleINtB4_5CycleINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator10advance_byCs342JT7D9NXi_13lance_datagen.exit.thread.i145.thread, %_RNvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycle5CycleINtNtNtBb_5slice4iter4IterbEENtNtNtB9_6traits8iterator8Iterator3nthCs342JT7D9NXi_13lance_datagen.exit154, %bb.as, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtB6_5cycle5CycleINtNtNtBa_5slice4iter4IterbEEEENtNtNtB8_6traits8iterator8Iterator4nextCs342JT7D9NXi_13lance_datagen.exit.thread6.i107
  %.sroa.10192.1 = phi ptr [ %i.ea, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtB6_5cycle5CycleINtNtNtBa_5slice4iter4IterbEEEENtNtNtB8_6traits8iterator8Iterator4nextCs342JT7D9NXi_13lance_datagen.exit.thread6.i107 ], [ %i.ej, %_RNvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycle5CycleINtNtNtBb_5slice4iter4IterbEENtNtNtB9_6traits8iterator8Iterator3nthCs342JT7D9NXi_13lance_datagen.exit154 ], [ %i.dx, %bb.as ], [ %i.dx, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycleINtB4_5CycleINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator10advance_byCs342JT7D9NXi_13lance_datagen.exit.thread.i145.thread ]
  %.sroa.0.0.i9.i104 = phi ptr [ %.sroa.10192.0329.mux, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtB6_5cycle5CycleINtNtNtBa_5slice4iter4IterbEEEENtNtNtB8_6traits8iterator8Iterator4nextCs342JT7D9NXi_13lance_datagen.exit.thread6.i107 ], [ %i.ei, %_RNvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycle5CycleINtNtNtBb_5slice4iter4IterbEENtNtNtB9_6traits8iterator8Iterator3nthCs342JT7D9NXi_13lance_datagen.exit154 ], [ %i.do, %bb.as ], [ %i.do, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycleINtB4_5CycleINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator10advance_byCs342JT7D9NXi_13lance_datagen.exit.thread.i145.thread ]
  %i.ek = add nuw i64 %.sroa.29198.0326, 1
  %i.el = load i8, ptr %.sroa.0.0.i9.i104, align 1, !range !17, !noundef !12
  %i.em = trunc nuw i8 %i.el to i1
  br i1 %i.em, label %bb.ba, label %bb.az

_RNvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycle5CycleINtNtNtBb_5slice4iter4IterbEENtNtNtB9_6traits8iterator8Iterator3nthCs342JT7D9NXi_13lance_datagen.exit154.thread: ; preds = %bb.az, %bb.ap
  %i.en = icmp sgt i64 %i.dq, -1
  call void @llvm.assume(i1 %i.en)
  %i.eo = icmp eq i64 %i.dq, 0
  br i1 %i.eo, label %_RNvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycle5CycleINtNtNtBb_5slice4iter4IterbEENtNtNtB9_6traits8iterator8Iterator3nthCs342JT7D9NXi_13lance_datagen.exit154.thread.thread, label %bb.at

bb.at:                                            ; preds = %_RNvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycle5CycleINtNtNtBb_5slice4iter4IterbEENtNtNtB9_6traits8iterator8Iterator3nthCs342JT7D9NXi_13lance_datagen.exit154.thread
  %i.ep = add i64 %i.dt, %2
  %i.eq = urem i64 %i.ep, %i.dq
  store i64 %i.eq, ptr %i.ds, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 %.sroa.4221.0, ptr %i.i, align 8
  %.sroa.5183.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.dl, ptr %.sroa.5183.0..sroa_idx, align 8
  %.sroa.9185.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %i.df, ptr %.sroa.9185.0..sroa_idx, align 8
  invoke void @_RNvXsM_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types11Float32TypeEINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VecfEE4from(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.j, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.i)
          to label %bb.au unwind label %.body87

_RNvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycle5CycleINtNtNtBb_5slice4iter4IterbEENtNtNtB9_6traits8iterator8Iterator3nthCs342JT7D9NXi_13lance_datagen.exit154.thread.thread: ; preds = %bb.as, %.preheader.i.i137, %bb.ar, %_RNvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycle5CycleINtNtNtBb_5slice4iter4IterbEENtNtNtB9_6traits8iterator8Iterator3nthCs342JT7D9NXi_13lance_datagen.exit154.thread
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @653) #37
          to label %bb.p unwind label %bb.bd

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 1, ptr %i.c, align 8
  %i.er = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %i.er, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.es, ptr noundef nonnull align 8 dereferenceable(96) %i.j, i64 96, i1 false)
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !9603
  %i.et = call noundef align 8 dereferenceable_or_null(112) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 112, i64 noundef range(i64 1, -9223372036854775807) 8) #36, !noalias !9603 ; 3 uses
  %i.eu = icmp eq ptr %i.et, null
  br i1 %i.eu, label %bb.av, label %bb.ay, !prof !13

bb.av:                                            ; preds = %bb.au
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 112) #37
          to label %.noexc112 unwind label %bb.aw

.noexc112:                                        ; preds = %bb.av
  unreachable

bb.aw:                                            ; preds = %bb.av
  %i.ev = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBI_5types11Float32TypeEECs342JT7D9NXi_13lance_datagen(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.es)
          to label %.body.thread unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ew = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.ay:                                            ; preds = %bb.au
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.et, ptr noundef nonnull align 8 dereferenceable(112) %i.c, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.bt

bb.az:                                            ; preds = %bb.bb, %_RNvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycle5CycleINtNtNtBb_5slice4iter4IterbEENtNtNtB9_6traits8iterator8Iterator3nthCs342JT7D9NXi_13lance_datagen.exit154.thread272
  %i.ex = icmp eq i64 %i.dy, 0
  br i1 %i.ex, label %_RNvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycle5CycleINtNtNtBb_5slice4iter4IterbEENtNtNtB9_6traits8iterator8Iterator3nthCs342JT7D9NXi_13lance_datagen.exit154.thread, label %bb.aq

bb.ba:                                            ; preds = %_RNvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycle5CycleINtNtNtBb_5slice4iter4IterbEENtNtNtB9_6traits8iterator8Iterator3nthCs342JT7D9NXi_13lance_datagen.exit154.thread272
  %i.ey = icmp ult i64 %.sroa.29198.0326, %i.df
  br i1 %i.ey, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %.sroa.29198.0326
  store float +qnan, ptr %i.ez, align 4
  br label %bb.az

bb.bc:                                            ; preds = %bb.ba
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %.sroa.29198.0326, i64 noundef %i.df, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @654) #37
          to label %bb.p unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %_RNvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycle5CycleINtNtNtBb_5slice4iter4IterbEENtNtNtB9_6traits8iterator8Iterator3nthCs342JT7D9NXi_13lance_datagen.exit154.thread.thread
  %lpad.thr_comm262 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fa = icmp eq i64 %.sroa.4221.0, 0
  br i1 %i.fa, label %.body.thread, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.fb = shl nuw i64 %.sroa.4221.0, 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dl) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dl, i64 noundef %i.fb, i64 noundef range(i64 1, -9223372036854775807) 4) #36
  br label %.body.thread

bb.bf:                                            ; preds = %bb.i
  %i.fc = extractvalue { ptr, ptr } %i.aj, 0      ; 4 uses
  %i.fd = extractvalue { ptr, ptr } %i.aj, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 24
  %i.ff = load ptr, ptr %i.fe, align 8, !invariant.load !12, !nonnull !12
  invoke void %i.ff(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noundef %i.fc)
          to label %bb.bg unwind label %.body87

bb.bg:                                            ; preds = %bb.bf
  %i.fg = load i128, ptr %i.b, align 16, !noundef !12
  %i.fh = icmp eq i128 %i.fg, 4246959316822800974081716267005431997
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.fh, label %bb.bh, label %.invoke, !prof !18

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fc) ]
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fc, i64 32
  %i.fj = load ptr, ptr %i.fi, align 8, !noundef !12
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fc, i64 40
  %i.fl = load i64, ptr %i.fk, align 8, !noundef !12 ; 2 uses
  %i.fm = lshr i64 %i.fl, 3                       ; 6 uses
  %i.fn = and i64 %i.fl, -8                       ; 6 uses
  %.not.i115 = icmp ugt i64 %i.fn, 9223372036854775800
  br i1 %.not.i115, label %.invoke406, label %bb.bi, !prof !9

bb.bi:                                            ; preds = %bb.bh
  %i.fo = icmp eq i64 %i.fn, 0
  br i1 %i.fo, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs342JT7D9NXi_13lance_datagen.exit118, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !9604
  %i.fp = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.fn, i64 noundef range(i64 1, -9223372036854775807) 8) #36, !noalias !9604 ; 2 uses
  %i.fq = icmp eq ptr %i.fp, null
  br i1 %i.fq, label %.invoke406, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.fr = ptrtoint ptr %i.fp to i64
  br label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs342JT7D9NXi_13lance_datagen.exit118

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs342JT7D9NXi_13lance_datagen.exit118: ; preds = %bb.bi, %bb.bk
  %.sroa.4225.0 = phi i64 [ %i.fm, %bb.bk ], [ 0, %bb.bi ] ; 4 uses
  %.sroa.10227.0 = phi i64 [ %i.fr, %bb.bk ], [ 8, %bb.bi ]
  %i.fs = inttoptr i64 %.sroa.10227.0 to ptr      ; 5 uses
  %i.ft = icmp samesign ule i64 %i.fm, %.sroa.4225.0
  call void @llvm.assume(i1 %i.ft)
  %.not78 = icmp eq i64 %i.fm, 0
  br i1 %.not78, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs342JT7D9NXi_13lance_datagen.exit118
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.fs, ptr align 8 %i.fj, i64 %i.fn, i1 false)
  br label %bb.bm

.body87:                                          ; preds = %.invoke406, %.invoke, %bb.at, %bb.v, %bb.c, %bb.g, %bb.h, %bb.i, %bb.j, %bb.ai, %bb.bf, %bb.bn
  %lpad.thr_comm.split-lp294 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.bm:                                            ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs342JT7D9NXi_13lance_datagen.exit118, %bb.bl
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fv = load ptr, ptr %i.fu, align 8, !nonnull !12, !noundef !12 ; 6 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fx = load i64, ptr %i.fw, align 8, !noundef !12 ; 7 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.fx ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ga = load i64, ptr %i.fz, align 8, !noundef !12 ; 2 uses
  %i.gb = icmp eq i64 %2, 0
  br i1 %i.gb, label %_RNvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycle5CycleINtNtNtBb_5slice4iter4IterbEENtNtNtB9_6traits8iterator8Iterator3nthCs342JT7D9NXi_13lance_datagen.exit174.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bm
  %i.gc = ptrtoint ptr %i.fy to i64
  %.not395 = icmp eq i64 %i.fx, 0
  br i1 %.not395, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.bv
  %.sroa.29215.0323 = phi i64 [ %i.gm, %bb.bv ], [ 0, %.lr.ph ] ; 4 uses
  %.sroa.26214.0322 = phi i64 [ %i.gd, %bb.bv ], [ %2, %.lr.ph ]
  %.sroa.23213.0321 = phi i64 [ 0, %bb.bv ], [ %i.ga, %.lr.ph ] ; 3 uses
  %.sroa.10209.0320 = phi ptr [ %.sroa.10209.1, %bb.bv ], [ %i.fv, %.lr.ph ] ; 4 uses
  %i.gd = add i64 %.sroa.26214.0322, -1           ; 2 uses
  %.not.i.i.i119 = icmp eq i64 %.sroa.23213.0321, 0
  br i1 %.not.i.i.i119, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtB6_5cycle5CycleINtNtNtBa_5slice4iter4IterbEEEENtNtNtB8_6traits8iterator8Iterator4nextCs342JT7D9NXi_13lance_datagen.exit.thread6.i125, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtB6_5cycle5CycleINtNtNtBa_5slice4iter4IterbEEEENtNtNtB8_6traits8iterator8Iterator4nextCs342JT7D9NXi_13lance_datagen.exit.i120, !prof !18

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtB6_5cycle5CycleINtNtNtBa_5slice4iter4IterbEEEENtNtNtB8_6traits8iterator8Iterator4nextCs342JT7D9NXi_13lance_datagen.exit.thread6.i125: ; preds = %.lr.ph.split
  %.not396 = icmp eq ptr %.sroa.10209.0320, %i.fy
  %.sroa.10209.0320.mux = select i1 %.not396, ptr %i.fv, ptr %.sroa.10209.0320 ; 2 uses
  br label %_RNvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycle5CycleINtNtNtBb_5slice4iter4IterbEENtNtNtB9_6traits8iterator8Iterator3nthCs342JT7D9NXi_13lance_datagen.exit174.thread303

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtB6_5cycle5CycleINtNtNtBa_5slice4iter4IterbEEEENtNtNtB8_6traits8iterator8Iterator4nextCs342JT7D9NXi_13lance_datagen.exit.i120: ; preds = %.lr.ph.split
  %i.ge = ptrtoint ptr %.sroa.10209.0320 to i64
  %i.gf = sub nuw i64 %i.gc, %i.ge
  %.sroa.0.0.i.i.i.i155 = call noundef i64 @llvm.umin.i64(i64 %.sroa.23213.0321, i64 %i.gf) ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.10209.0320, i64 %.sroa.0.0.i.i.i.i155
  %i.gh = sub nuw i64 %.sroa.23213.0321, %.sroa.0.0.i.i.i.i155 ; 2 uses
  %.not.i.i156 = icmp eq i64 %i.gh, 0
  br i1 %.not.i.i156, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycleINtB4_5CycleINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator10advance_byCs342JT7D9NXi_13lance_datagen.exit.thread.i165, label %.preheader.split.i.i160

.preheader.split.i.i160:                          ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtB6_5cycle5CycleINtNtNtBa_5slice4iter4IterbEEEENtNtNtB8_6traits8iterator8Iterator4nextCs342JT7D9NXi_13lance_datagen.exit.i120, %.preheader.split.i.i160
  %.sroa.03.0.i.i161 = phi i64 [ %i.gi, %.preheader.split.i.i160 ], [ %i.gh, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtB6_5cycle5CycleINtNtNtBa_5slice4iter4IterbEEEENtNtNtB8_6traits8iterator8Iterator4nextCs342JT7D9NXi_13lance_datagen.exit.i120 ] ; 2 uses
  %.sroa.0.0.i.i12.i.i162 = call noundef i64 @llvm.umin.i64(i64 %.sroa.03.0.i.i161, i64 %i.fx) ; 2 uses
  %i.gi = sub nuw i64 %.sroa.03.0.i.i161, %.sroa.0.0.i.i12.i.i162 ; 2 uses
  %.not10.i.i163 = icmp eq i64 %i.gi, 0
  br i1 %.not10.i.i163, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycleINtB4_5CycleINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator10advance_byCs342JT7D9NXi_13lance_datagen.exit.thread6.i164, label %.preheader.split.i.i160

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycleINtB4_5CycleINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator10advance_byCs342JT7D9NXi_13lance_datagen.exit.thread6.i164: ; preds = %.preheader.split.i.i160
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fv, i64 %.sroa.0.0.i.i12.i.i162
  br label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycleINtB4_5CycleINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator10advance_byCs342JT7D9NXi_13lance_datagen.exit.thread.i165

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycleINtB4_5CycleINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator10advance_byCs342JT7D9NXi_13lance_datagen.exit.thread.i165: ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycleINtB4_5CycleINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator10advance_byCs342JT7D9NXi_13lance_datagen.exit.thread6.i164, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtB6_5cycle5CycleINtNtNtBa_5slice4iter4IterbEEEENtNtNtB8_6traits8iterator8Iterator4nextCs342JT7D9NXi_13lance_datagen.exit.i120
  %i.gk = phi ptr [ %i.gg, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtB6_5cycle5CycleINtNtNtBa_5slice4iter4IterbEEEENtNtNtB8_6traits8iterator8Iterator4nextCs342JT7D9NXi_13lance_datagen.exit.i120 ], [ %i.gj, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycleINtB4_5CycleINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator10advance_byCs342JT7D9NXi_13lance_datagen.exit.thread6.i164 ] ; 3 uses
  %i.gl = icmp eq ptr %i.gk, %i.fy                ; 2 uses
  %spec.select.v = select i1 %i.gl, ptr %i.fv, ptr %i.gk
  %spec.select408 = select i1 %i.gl, ptr %i.fv, ptr %i.gk
  br label %_RNvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycle5CycleINtNtNtBb_5slice4iter4IterbEENtNtNtB9_6traits8iterator8Iterator3nthCs342JT7D9NXi_13lance_datagen.exit174.thread303

_RNvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycle5CycleINtNtNtBb_5slice4iter4IterbEENtNtNtB9_6traits8iterator8Iterator3nthCs342JT7D9NXi_13lance_datagen.exit174.thread303: ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycleINtB4_5CycleINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator10advance_byCs342JT7D9NXi_13lance_datagen.exit.thread.i165, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtB6_5cycle5CycleINtNtNtBa_5slice4iter4IterbEEEENtNtNtB8_6traits8iterator8Iterator4nextCs342JT7D9NXi_13lance_datagen.exit.thread6.i125
  %.sroa.10209.0320.mux.pn = phi ptr [ %.sroa.10209.0320.mux, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtB6_5cycle5CycleINtNtNtBa_5slice4iter4IterbEEEENtNtNtB8_6traits8iterator8Iterator4nextCs342JT7D9NXi_13lance_datagen.exit.thread6.i125 ], [ %spec.select.v, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycleINtB4_5CycleINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator10advance_byCs342JT7D9NXi_13lance_datagen.exit.thread.i165 ]
  %.sroa.0.0.i9.i122 = phi ptr [ %.sroa.10209.0320.mux, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtB6_5cycle5CycleINtNtNtBa_5slice4iter4IterbEEEENtNtNtB8_6traits8iterator8Iterator4nextCs342JT7D9NXi_13lance_datagen.exit.thread6.i125 ], [ %spec.select408, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycleINtB4_5CycleINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator10advance_byCs342JT7D9NXi_13lance_datagen.exit.thread.i165 ]
  %.sroa.10209.1 = getelementptr inbounds nuw i8, ptr %.sroa.10209.0320.mux.pn, i64 1
  %i.gm = add nuw i64 %.sroa.29215.0323, 1
  %i.gn = load i8, ptr %.sroa.0.0.i9.i122, align 1, !range !17, !noundef !12
  %i.go = trunc nuw i8 %i.gn to i1
  br i1 %i.go, label %bb.bw, label %bb.bv

_RNvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycle5CycleINtNtNtBb_5slice4iter4IterbEENtNtNtB9_6traits8iterator8Iterator3nthCs342JT7D9NXi_13lance_datagen.exit174.thread: ; preds = %bb.bv, %bb.bm
  %i.gp = icmp sgt i64 %i.fx, -1
  call void @llvm.assume(i1 %i.gp)
  %i.gq = icmp eq i64 %i.fx, 0
  br i1 %i.gq, label %.lr.ph.split.us.preheader, label %bb.bn

bb.bn:                                            ; preds = %_RNvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycle5CycleINtNtNtBb_5slice4iter4IterbEENtNtNtB9_6traits8iterator8Iterator3nthCs342JT7D9NXi_13lance_datagen.exit174.thread
  %i.gr = add i64 %i.ga, %2
  %i.gs = urem i64 %i.gr, %i.fx
  store i64 %i.gs, ptr %i.fz, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 %.sroa.4225.0, ptr %i.g, align 8
  %.sroa.5200.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.fs, ptr %.sroa.5200.0..sroa_idx, align 8
  %.sroa.9202.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %i.fm, ptr %.sroa.9202.0..sroa_idx, align 8
  invoke void @_RNvXsO_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types11Float64TypeEINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VecdEE4from(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.h, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.g)
          to label %bb.bo unwind label %.body87

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph, %_RNvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycle5CycleINtNtNtBb_5slice4iter4IterbEENtNtNtB9_6traits8iterator8Iterator3nthCs342JT7D9NXi_13lance_datagen.exit174.thread
  %4 = icmp sgt i64 %i.fx, -1
  call void @llvm.assume(i1 %4)
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @656) #37
          to label %bb.p unwind label %bb.by

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.gt = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.gt, align 8
  %i.gu = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.gu, ptr noundef nonnull align 8 dereferenceable(96) %i.h, i64 96, i1 false)
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !9605
  %i.gv = call noundef align 8 dereferenceable_or_null(112) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 112, i64 noundef range(i64 1, -9223372036854775807) 8) #36, !noalias !9605 ; 3 uses
  %i.gw = icmp eq ptr %i.gv, null
  br i1 %i.gw, label %bb.bp, label %bb.bs, !prof !13

bb.bp:                                            ; preds = %bb.bo
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 112) #37
          to label %.noexc130 unwind label %bb.bq

.noexc130:                                        ; preds = %bb.bp
  unreachable

bb.bq:                                            ; preds = %bb.bp
  %i.gx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBI_5types11Float64TypeEECs342JT7D9NXi_13lance_datagen(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.gu)
          to label %.body.thread unwind label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.gy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.bs:                                            ; preds = %bb.bo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.gv, ptr noundef nonnull align 8 dereferenceable(112) %i.a, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.bt

bb.bt:                                            ; preds = %bb.aa, %bb.ay, %bb.bs
  %.sink410 = phi ptr [ %i.cl, %bb.aa ], [ %i.et, %bb.ay ], [ %i.gv, %bb.bs ]
  %.sink = phi ptr [ @578, %bb.aa ], [ @580, %bb.ay ], [ @582, %bb.bs ]
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink410, ptr %i.gz, align 8
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sink, ptr %i.ha, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !9606)
  call void @llvm.experimental.noalias.scope.decl(metadata !9607)
  %i.hb = load ptr, ptr %i.n, align 16, !alias.scope !9608, !nonnull !12, !noundef !12
  %i.hc = atomicrmw add ptr %i.hb, i64 -1 release, align 8, !noalias !9608
  %i.hd = icmp eq i64 %i.hc, 1
  br i1 %i.hd, label %bb.bu, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECs342JT7D9NXi_13lance_datagen.exit133

bb.bu:                                            ; preds = %bb.bt
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.n)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECs342JT7D9NXi_13lance_datagen.exit133

bb.bv:                                            ; preds = %bb.bx, %_RNvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycle5CycleINtNtNtBb_5slice4iter4IterbEENtNtNtB9_6traits8iterator8Iterator3nthCs342JT7D9NXi_13lance_datagen.exit174.thread303
  %i.he = icmp eq i64 %i.gd, 0
  br i1 %i.he, label %_RNvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycle5CycleINtNtNtBb_5slice4iter4IterbEENtNtNtB9_6traits8iterator8Iterator3nthCs342JT7D9NXi_13lance_datagen.exit174.thread, label %.lr.ph.split

bb.bw:                                            ; preds = %_RNvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycle5CycleINtNtNtBb_5slice4iter4IterbEENtNtNtB9_6traits8iterator8Iterator3nthCs342JT7D9NXi_13lance_datagen.exit174.thread303
  %i.hf = icmp ult i64 %.sroa.29215.0323, %i.fm
  br i1 %i.hf, label %bb.bx, label %.split.us

bb.bx:                                            ; preds = %bb.bw
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %.sroa.29215.0323
  store double +qnan, ptr %i.hg, align 8
  br label %bb.bv

.split.us:                                        ; preds = %bb.bw
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %.sroa.29215.0323, i64 noundef %i.fm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @657) #37
          to label %bb.p unwind label %bb.by

bb.by:                                            ; preds = %.split.us, %.lr.ph.split.us.preheader
  %lpad.thr_comm293 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hh = icmp eq i64 %.sroa.4225.0, 0
  br i1 %i.hh, label %.body.thread, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.hi = shl nuw i64 %.sroa.4225.0, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fs) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fs, i64 noundef %i.hi, i64 noundef range(i64 1, -9223372036854775807) 8) #36
  br label %.body.thread

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECs342JT7D9NXi_13lance_datagen.exit133: ; preds = %bb.f, %bb.bt, %bb.bu, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  ret void

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECs342JT7D9NXi_13lance_datagen.exit: ; preds = %.body.thread, %bb.d
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvXs2_NtCs342JT7D9NXi_13lance_datagen9generatorNtB5_17CycleNanGeneratorNtB5_14ArrayGenerator9data_type(ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #0 !guid !9609 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !12, !noundef !12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !12, !align !20, !noundef !12
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !invariant.load !12, !nonnull !12
  %i.g = tail call noundef nonnull align 8 ptr %i.f(ptr noundef nonnull %i.b)
  ret ptr %i.g
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs2_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #5 personality ptr @rust_eh_personality !guid !9619 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = load i8, ptr %1, align 8, !range !26, !noundef !12
  switch i8 %i.d, label %default.unreachable23 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.i
    i8 8, label %bb.j
    i8 9, label %bb.k
    i8 10, label %bb.l
    i8 11, label %bb.m
    i8 12, label %bb.n
    i8 13, label %bb.o
    i8 14, label %bb.p
    i8 15, label %bb.q
    i8 16, label %bb.r
    i8 17, label %bb.s
    i8 18, label %bb.t
    i8 19, label %bb.u
    i8 20, label %bb.v
    i8 21, label %bb.w
    i8 22, label %bb.x
    i8 23, label %bb.y
    i8 24, label %bb.z
    i8 25, label %bb.aa
    i8 26, label %bb.ab
    i8 27, label %bb.ac
    i8 28, label %bb.ad
    i8 29, label %bb.ae
    i8 30, label %bb.af
    i8 31, label %bb.ag
    i8 32, label %bb.ah
    i8 33, label %bb.ai
    i8 34, label %bb.aj
    i8 35, label %bb.ao
    i8 36, label %bb.ap
    i8 37, label %bb.aq
    i8 38, label %bb.ar
    i8 39, label %bb.as
    i8 40, label %bb.at
  ]

default.unreachable23:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %0, align 8
  br label %bb.au

bb.c:                                             ; preds = %bb.a
  store i8 1, ptr %0, align 8
  br label %bb.au

bb.d:                                             ; preds = %bb.a
  store i8 2, ptr %0, align 8
  br label %bb.au

bb.e:                                             ; preds = %bb.a
  store i8 3, ptr %0, align 8
  br label %bb.au

bb.f:                                             ; preds = %bb.a
  store i8 4, ptr %0, align 8
  br label %bb.au

bb.g:                                             ; preds = %bb.a
  store i8 5, ptr %0, align 8
  br label %bb.au

bb.h:                                             ; preds = %bb.a
  store i8 6, ptr %0, align 8
  br label %bb.au

bb.i:                                             ; preds = %bb.a
  store i8 7, ptr %0, align 8
  br label %bb.au

bb.j:                                             ; preds = %bb.a
  store i8 8, ptr %0, align 8
  br label %bb.au
end_hunk_0
